@interface TTRIRemindersListCellContentStackView
- (_TtC15RemindersUICore37TTRIRemindersListCellContentStackView)initWithArrangedSubviews:(id)subviews;
- (_TtC15RemindersUICore37TTRIRemindersListCellContentStackView)initWithFrame:(CGRect)frame;
@end

@implementation TTRIRemindersListCellContentStackView

- (_TtC15RemindersUICore37TTRIRemindersListCellContentStackView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC15RemindersUICore37TTRIRemindersListCellContentStackView_superviewBottomLayoutMarginToCompensate) = 0;
  v9 = OBJC_IVAR____TtC15RemindersUICore37TTRIRemindersListCellContentStackView_subviewInfos;
  *(&self->super.super.super.super.super.super.isa + v9) = sub_21D442368(0, 0, 0, 0, 11);
  v10 = OBJC_IVAR____TtC15RemindersUICore37TTRIRemindersListCellContentStackView_subviewUpdates;
  *(&self->super.super.super.super.super.super.isa + v10) = sub_21D442424(1, 0, 0, 0, 11);
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC15RemindersUICore37TTRIRemindersListCellContentStackView_isPerformingSubviewUpdates) = 0;
  v12.receiver = self;
  v12.super_class = ObjectType;
  return [(TTRNoAnimationContainerStackView *)&v12 initWithFrame:x, y, width, height];
}

- (_TtC15RemindersUICore37TTRIRemindersListCellContentStackView)initWithArrangedSubviews:(id)subviews
{
  if (subviews)
  {
    sub_21D114EC8();
    v3 = sub_21DBFA5EC();
  }

  else
  {
    v3 = 0;
  }

  return sub_21D6A529C(v3);
}

@end