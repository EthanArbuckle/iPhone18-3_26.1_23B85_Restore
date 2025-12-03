@interface TTRAutoCompleteReminderStackedImagesView.TTRFlippedImageView
- (_TtCC15RemindersUICore40TTRAutoCompleteReminderStackedImagesViewP33_7D16EBB5E7E79D207D11AC8A78C0B96F19TTRFlippedImageView)initWithCoder:(id)coder;
- (_TtCC15RemindersUICore40TTRAutoCompleteReminderStackedImagesViewP33_7D16EBB5E7E79D207D11AC8A78C0B96F19TTRFlippedImageView)initWithFrame:(CGRect)frame;
- (_TtCC15RemindersUICore40TTRAutoCompleteReminderStackedImagesViewP33_7D16EBB5E7E79D207D11AC8A78C0B96F19TTRFlippedImageView)initWithImage:(id)image;
- (_TtCC15RemindersUICore40TTRAutoCompleteReminderStackedImagesViewP33_7D16EBB5E7E79D207D11AC8A78C0B96F19TTRFlippedImageView)initWithImage:(id)image highlightedImage:(id)highlightedImage;
@end

@implementation TTRAutoCompleteReminderStackedImagesView.TTRFlippedImageView

- (_TtCC15RemindersUICore40TTRAutoCompleteReminderStackedImagesViewP33_7D16EBB5E7E79D207D11AC8A78C0B96F19TTRFlippedImageView)initWithImage:(id)image
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for TTRAutoCompleteReminderStackedImagesView.TTRFlippedImageView();
  return [(TTRAutoCompleteReminderStackedImagesView.TTRFlippedImageView *)&v5 initWithImage:image];
}

- (_TtCC15RemindersUICore40TTRAutoCompleteReminderStackedImagesViewP33_7D16EBB5E7E79D207D11AC8A78C0B96F19TTRFlippedImageView)initWithImage:(id)image highlightedImage:(id)highlightedImage
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for TTRAutoCompleteReminderStackedImagesView.TTRFlippedImageView();
  return [(TTRAutoCompleteReminderStackedImagesView.TTRFlippedImageView *)&v7 initWithImage:image highlightedImage:highlightedImage];
}

- (_TtCC15RemindersUICore40TTRAutoCompleteReminderStackedImagesViewP33_7D16EBB5E7E79D207D11AC8A78C0B96F19TTRFlippedImageView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for TTRAutoCompleteReminderStackedImagesView.TTRFlippedImageView();
  return [(TTRAutoCompleteReminderStackedImagesView.TTRFlippedImageView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtCC15RemindersUICore40TTRAutoCompleteReminderStackedImagesViewP33_7D16EBB5E7E79D207D11AC8A78C0B96F19TTRFlippedImageView)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for TTRAutoCompleteReminderStackedImagesView.TTRFlippedImageView();
  coderCopy = coder;
  v5 = [(TTRAutoCompleteReminderStackedImagesView.TTRFlippedImageView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end