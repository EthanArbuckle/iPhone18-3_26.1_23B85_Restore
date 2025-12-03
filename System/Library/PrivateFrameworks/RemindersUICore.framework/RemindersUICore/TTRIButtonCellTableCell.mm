@interface TTRIButtonCellTableCell
- (_TtC15RemindersUICore23TTRIButtonCellTableCell)initWithCoder:(id)coder;
- (_TtC15RemindersUICore23TTRIButtonCellTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
@end

@implementation TTRIButtonCellTableCell

- (_TtC15RemindersUICore23TTRIButtonCellTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
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

  return TTRIButtonCellTableCell.init(style:reuseIdentifier:)(style, identifier, v6);
}

- (_TtC15RemindersUICore23TTRIButtonCellTableCell)initWithCoder:(id)coder
{
  result = sub_21DBFC31C();
  __break(1u);
  return result;
}

@end