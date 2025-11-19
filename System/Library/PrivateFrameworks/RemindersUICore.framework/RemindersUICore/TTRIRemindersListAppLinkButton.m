@interface TTRIRemindersListAppLinkButton
- (_TtC15RemindersUICore30TTRIRemindersListAppLinkButton)initWithCoder:(id)a3;
- (_TtC15RemindersUICore30TTRIRemindersListAppLinkButton)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation TTRIRemindersListAppLinkButton

- (void)layoutSubviews
{
  v2 = self;
  sub_21D5EBD30();
}

- (_TtC15RemindersUICore30TTRIRemindersListAppLinkButton)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC15RemindersUICore30TTRIRemindersListAppLinkButton_currentOriginalImage) = 0;
  v9 = self + OBJC_IVAR____TtC15RemindersUICore30TTRIRemindersListAppLinkButton_currentImageSize;
  *v9 = 0;
  v9[8] = 1;
  v11.receiver = self;
  v11.super_class = ObjectType;
  return [(TTRIExpandedHitTestButton *)&v11 initWithFrame:x, y, width, height];
}

- (_TtC15RemindersUICore30TTRIRemindersListAppLinkButton)initWithCoder:(id)a3
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC15RemindersUICore30TTRIRemindersListAppLinkButton_currentOriginalImage) = 0;
  v6 = self + OBJC_IVAR____TtC15RemindersUICore30TTRIRemindersListAppLinkButton_currentImageSize;
  *v6 = 0;
  v6[8] = 1;
  v10.receiver = self;
  v10.super_class = ObjectType;
  v7 = a3;
  v8 = [(TTRIExpandedHitTestButton *)&v10 initWithCoder:v7];

  if (v8)
  {
  }

  return v8;
}

@end