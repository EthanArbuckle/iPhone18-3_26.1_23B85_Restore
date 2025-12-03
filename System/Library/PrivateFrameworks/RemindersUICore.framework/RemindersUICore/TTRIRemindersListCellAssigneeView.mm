@interface TTRIRemindersListCellAssigneeView
- (CGSize)sizeThatFits:(CGSize)result;
- (void)layoutSubviews;
@end

@implementation TTRIRemindersListCellAssigneeView

- (void)layoutSubviews
{
  selfCopy = self;
  TTRIRemindersListCellAssigneeView.layoutSubviews()();
}

- (CGSize)sizeThatFits:(CGSize)result
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC15RemindersUICore33TTRIRemindersListCellAssigneeView_stackView);
  if (v3)
  {
    [v3 sizeThatFits_];
  }

  else
  {
    __break(1u);
  }

  return result;
}

@end