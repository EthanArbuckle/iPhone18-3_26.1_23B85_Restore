@interface TTRIReminderCellQuickBarPopoverAnchoringButton
- (_TtC15RemindersUICore46TTRIReminderCellQuickBarPopoverAnchoringButton)initWithCoder:(id)coder;
- (_TtC15RemindersUICore46TTRIReminderCellQuickBarPopoverAnchoringButton)initWithFrame:(CGRect)frame;
@end

@implementation TTRIReminderCellQuickBarPopoverAnchoringButton

- (_TtC15RemindersUICore46TTRIReminderCellQuickBarPopoverAnchoringButton)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  return [(TTRIReminderCellQuickBarPopoverAnchoringButton *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC15RemindersUICore46TTRIReminderCellQuickBarPopoverAnchoringButton)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  coderCopy = coder;
  v5 = [(TTRIReminderCellQuickBarPopoverAnchoringButton *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end