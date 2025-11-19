@interface TTRAutoCompleteReminderStackedImagesView.TTRFlippedImageView
- (_TtCC15RemindersUICore40TTRAutoCompleteReminderStackedImagesViewP33_7D16EBB5E7E79D207D11AC8A78C0B96F19TTRFlippedImageView)initWithCoder:(id)a3;
- (_TtCC15RemindersUICore40TTRAutoCompleteReminderStackedImagesViewP33_7D16EBB5E7E79D207D11AC8A78C0B96F19TTRFlippedImageView)initWithFrame:(CGRect)a3;
- (_TtCC15RemindersUICore40TTRAutoCompleteReminderStackedImagesViewP33_7D16EBB5E7E79D207D11AC8A78C0B96F19TTRFlippedImageView)initWithImage:(id)a3;
- (_TtCC15RemindersUICore40TTRAutoCompleteReminderStackedImagesViewP33_7D16EBB5E7E79D207D11AC8A78C0B96F19TTRFlippedImageView)initWithImage:(id)a3 highlightedImage:(id)a4;
@end

@implementation TTRAutoCompleteReminderStackedImagesView.TTRFlippedImageView

- (_TtCC15RemindersUICore40TTRAutoCompleteReminderStackedImagesViewP33_7D16EBB5E7E79D207D11AC8A78C0B96F19TTRFlippedImageView)initWithImage:(id)a3
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for TTRAutoCompleteReminderStackedImagesView.TTRFlippedImageView();
  return [(TTRAutoCompleteReminderStackedImagesView.TTRFlippedImageView *)&v5 initWithImage:a3];
}

- (_TtCC15RemindersUICore40TTRAutoCompleteReminderStackedImagesViewP33_7D16EBB5E7E79D207D11AC8A78C0B96F19TTRFlippedImageView)initWithImage:(id)a3 highlightedImage:(id)a4
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for TTRAutoCompleteReminderStackedImagesView.TTRFlippedImageView();
  return [(TTRAutoCompleteReminderStackedImagesView.TTRFlippedImageView *)&v7 initWithImage:a3 highlightedImage:a4];
}

- (_TtCC15RemindersUICore40TTRAutoCompleteReminderStackedImagesViewP33_7D16EBB5E7E79D207D11AC8A78C0B96F19TTRFlippedImageView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for TTRAutoCompleteReminderStackedImagesView.TTRFlippedImageView();
  return [(TTRAutoCompleteReminderStackedImagesView.TTRFlippedImageView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtCC15RemindersUICore40TTRAutoCompleteReminderStackedImagesViewP33_7D16EBB5E7E79D207D11AC8A78C0B96F19TTRFlippedImageView)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for TTRAutoCompleteReminderStackedImagesView.TTRFlippedImageView();
  v4 = a3;
  v5 = [(TTRAutoCompleteReminderStackedImagesView.TTRFlippedImageView *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end