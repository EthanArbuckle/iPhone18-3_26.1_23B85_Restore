@interface TTRIButtonCellTableCell
- (_TtC15RemindersUICore23TTRIButtonCellTableCell)initWithCoder:(id)a3;
- (_TtC15RemindersUICore23TTRIButtonCellTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
@end

@implementation TTRIButtonCellTableCell

- (_TtC15RemindersUICore23TTRIButtonCellTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
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

  return TTRIButtonCellTableCell.init(style:reuseIdentifier:)(a3, a4, v6);
}

- (_TtC15RemindersUICore23TTRIButtonCellTableCell)initWithCoder:(id)a3
{
  result = sub_21DBFC31C();
  __break(1u);
  return result;
}

@end