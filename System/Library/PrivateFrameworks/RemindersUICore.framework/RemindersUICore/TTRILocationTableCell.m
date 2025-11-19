@interface TTRILocationTableCell
- (CGPoint)accessibilityActivationPoint;
- (_TtC15RemindersUICore21TTRILocationTableCell)initWithCoder:(id)a3;
- (_TtC15RemindersUICore21TTRILocationTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
@end

@implementation TTRILocationTableCell

- (_TtC15RemindersUICore21TTRILocationTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  if (a4)
  {
    v4 = sub_21DBFA16C();
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  return sub_21DA86454(v4, v5);
}

- (_TtC15RemindersUICore21TTRILocationTableCell)initWithCoder:(id)a3
{
  result = sub_21DBFC31C();
  __break(1u);
  return result;
}

- (CGPoint)accessibilityActivationPoint
{
  [*(&self->super.super.super.super.isa + OBJC_IVAR____TtC15RemindersUICore21TTRILocationTableCell_infoButton) accessibilityActivationPoint];
  result.y = v3;
  result.x = v2;
  return result;
}

@end