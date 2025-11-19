@interface TTRISubtaskListAddSubtaskCell
- (_TtC15RemindersUICore29TTRISubtaskListAddSubtaskCell)initWithCoder:(id)a3;
- (_TtC15RemindersUICore29TTRISubtaskListAddSubtaskCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)layoutSubviews;
@end

@implementation TTRISubtaskListAddSubtaskCell

- (_TtC15RemindersUICore29TTRISubtaskListAddSubtaskCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  if (a4)
  {
    a4 = sub_21DBFA16C();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return sub_21D3149DC(a3, a4, v6);
}

- (_TtC15RemindersUICore29TTRISubtaskListAddSubtaskCell)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC15RemindersUICore29TTRISubtaskListAddSubtaskCell_isForGroceries) = 0;
  result = sub_21DBFC31C();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_21D314CCC();
}

@end