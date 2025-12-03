@interface TTRISubtaskListAddSubtaskCell
- (_TtC15RemindersUICore29TTRISubtaskListAddSubtaskCell)initWithCoder:(id)coder;
- (_TtC15RemindersUICore29TTRISubtaskListAddSubtaskCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)layoutSubviews;
@end

@implementation TTRISubtaskListAddSubtaskCell

- (_TtC15RemindersUICore29TTRISubtaskListAddSubtaskCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  if (identifier)
  {
    identifier = sub_21DBFA16C();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return sub_21D3149DC(style, identifier, v6);
}

- (_TtC15RemindersUICore29TTRISubtaskListAddSubtaskCell)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC15RemindersUICore29TTRISubtaskListAddSubtaskCell_isForGroceries) = 0;
  result = sub_21DBFC31C();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_21D314CCC();
}

@end