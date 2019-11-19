require "application_system_test_case"

class ImageCommentsTest < ApplicationSystemTestCase
  setup do
    @image_comment = image_comments(:one)
  end

  test "visiting the index" do
    visit image_comments_url
    assert_selector "h1", text: "Image Comments"
  end

  test "creating a Image comment" do
    visit image_comments_url
    click_on "New Image Comment"

    fill_in "Comment", with: @image_comment.comment
    fill_in "Image", with: @image_comment.image_id
    fill_in "User", with: @image_comment.user_id
    click_on "Create Image comment"

    assert_text "Image comment was successfully created"
    click_on "Back"
  end

  test "updating a Image comment" do
    visit image_comments_url
    click_on "Edit", match: :first

    fill_in "Comment", with: @image_comment.comment
    fill_in "Image", with: @image_comment.image_id
    fill_in "User", with: @image_comment.user_id
    click_on "Update Image comment"

    assert_text "Image comment was successfully updated"
    click_on "Back"
  end

  test "destroying a Image comment" do
    visit image_comments_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Image comment was successfully destroyed"
  end
end
