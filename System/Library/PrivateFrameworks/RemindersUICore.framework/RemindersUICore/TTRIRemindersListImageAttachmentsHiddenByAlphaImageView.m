@interface TTRIRemindersListImageAttachmentsHiddenByAlphaImageView
- (BOOL)isHidden;
- (_TtC15RemindersUICore55TTRIRemindersListImageAttachmentsHiddenByAlphaImageView)initWithImage:(id)a3;
- (_TtC15RemindersUICore55TTRIRemindersListImageAttachmentsHiddenByAlphaImageView)initWithImage:(id)a3 highlightedImage:(id)a4;
- (void)setHidden:(BOOL)a3;
@end

@implementation TTRIRemindersListImageAttachmentsHiddenByAlphaImageView

- (BOOL)isHidden
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(TTRIRemindersListImageAttachmentsHiddenByAlphaImageView *)&v3 isHidden];
}

- (void)setHidden:(BOOL)a3
{
  v3 = 1.0;
  if (a3)
  {
    v3 = 0.0;
  }

  [(TTRIRemindersListImageAttachmentsHiddenByAlphaImageView *)self setAlpha:v3];
}

- (_TtC15RemindersUICore55TTRIRemindersListImageAttachmentsHiddenByAlphaImageView)initWithImage:(id)a3
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  return [(TTRIRemindersListImageAttachmentsHiddenByAlphaImageView *)&v5 initWithImage:a3];
}

- (_TtC15RemindersUICore55TTRIRemindersListImageAttachmentsHiddenByAlphaImageView)initWithImage:(id)a3 highlightedImage:(id)a4
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  return [(TTRIRemindersListImageAttachmentsHiddenByAlphaImageView *)&v7 initWithImage:a3 highlightedImage:a4];
}

@end