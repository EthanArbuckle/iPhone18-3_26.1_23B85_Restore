@interface TTRILocationQuickPickersTableCell
+ (Class)containerViewClass;
- (_TtC15RemindersUICore33TTRILocationQuickPickersTableCell)initWithCoder:(id)coder;
- (_TtC15RemindersUICore33TTRILocationQuickPickersTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
@end

@implementation TTRILocationQuickPickersTableCell

+ (Class)containerViewClass
{
  sub_21D0D8CF0(0, &qword_27CE5BFF8);

  return swift_getObjCClassFromMetadata();
}

- (_TtC15RemindersUICore33TTRILocationQuickPickersTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
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

  return TTRILocationQuickPickersTableCell.init(style:reuseIdentifier:)(style, identifier, v6);
}

- (_TtC15RemindersUICore33TTRILocationQuickPickersTableCell)initWithCoder:(id)coder
{
  result = sub_21DBFC31C();
  __break(1u);
  return result;
}

@end