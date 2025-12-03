@interface TTRIRemindersListCellInfoButton
- (_TtC15RemindersUICore31TTRIRemindersListCellInfoButton)initWithCoder:(id)coder;
- (_TtC15RemindersUICore31TTRIRemindersListCellInfoButton)initWithFrame:(CGRect)frame;
@end

@implementation TTRIRemindersListCellInfoButton

- (_TtC15RemindersUICore31TTRIRemindersListCellInfoButton)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  return [(TTRIExpandedHitTestButton *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC15RemindersUICore31TTRIRemindersListCellInfoButton)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  coderCopy = coder;
  v5 = [(TTRIExpandedHitTestButton *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end