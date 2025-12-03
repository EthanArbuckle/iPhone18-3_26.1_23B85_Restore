@interface TTRIRemindersListImageAttachmentsHiddenByAlphaImageView
- (BOOL)isHidden;
- (_TtC15RemindersUICore55TTRIRemindersListImageAttachmentsHiddenByAlphaImageView)initWithImage:(id)image;
- (_TtC15RemindersUICore55TTRIRemindersListImageAttachmentsHiddenByAlphaImageView)initWithImage:(id)image highlightedImage:(id)highlightedImage;
- (void)setHidden:(BOOL)hidden;
@end

@implementation TTRIRemindersListImageAttachmentsHiddenByAlphaImageView

- (BOOL)isHidden
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(TTRIRemindersListImageAttachmentsHiddenByAlphaImageView *)&v3 isHidden];
}

- (void)setHidden:(BOOL)hidden
{
  v3 = 1.0;
  if (hidden)
  {
    v3 = 0.0;
  }

  [(TTRIRemindersListImageAttachmentsHiddenByAlphaImageView *)self setAlpha:v3];
}

- (_TtC15RemindersUICore55TTRIRemindersListImageAttachmentsHiddenByAlphaImageView)initWithImage:(id)image
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  return [(TTRIRemindersListImageAttachmentsHiddenByAlphaImageView *)&v5 initWithImage:image];
}

- (_TtC15RemindersUICore55TTRIRemindersListImageAttachmentsHiddenByAlphaImageView)initWithImage:(id)image highlightedImage:(id)highlightedImage
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  return [(TTRIRemindersListImageAttachmentsHiddenByAlphaImageView *)&v7 initWithImage:image highlightedImage:highlightedImage];
}

@end