@interface TTRIRemindersListAppLinkButton
- (_TtC15RemindersUICore30TTRIRemindersListAppLinkButton)initWithCoder:(id)coder;
- (_TtC15RemindersUICore30TTRIRemindersListAppLinkButton)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation TTRIRemindersListAppLinkButton

- (void)layoutSubviews
{
  selfCopy = self;
  sub_21D5EBD30();
}

- (_TtC15RemindersUICore30TTRIRemindersListAppLinkButton)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC15RemindersUICore30TTRIRemindersListAppLinkButton_currentOriginalImage) = 0;
  v9 = self + OBJC_IVAR____TtC15RemindersUICore30TTRIRemindersListAppLinkButton_currentImageSize;
  *v9 = 0;
  v9[8] = 1;
  v11.receiver = self;
  v11.super_class = ObjectType;
  return [(TTRIExpandedHitTestButton *)&v11 initWithFrame:x, y, width, height];
}

- (_TtC15RemindersUICore30TTRIRemindersListAppLinkButton)initWithCoder:(id)coder
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC15RemindersUICore30TTRIRemindersListAppLinkButton_currentOriginalImage) = 0;
  v6 = self + OBJC_IVAR____TtC15RemindersUICore30TTRIRemindersListAppLinkButton_currentImageSize;
  *v6 = 0;
  v6[8] = 1;
  v10.receiver = self;
  v10.super_class = ObjectType;
  coderCopy = coder;
  v8 = [(TTRIExpandedHitTestButton *)&v10 initWithCoder:coderCopy];

  if (v8)
  {
  }

  return v8;
}

@end