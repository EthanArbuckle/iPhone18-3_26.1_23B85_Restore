@interface TTRILocationQuickPickersTableCell
+ (Class)containerViewClass;
- (_TtC15RemindersUICore33TTRILocationQuickPickersTableCell)initWithCoder:(id)a3;
- (_TtC15RemindersUICore33TTRILocationQuickPickersTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
@end

@implementation TTRILocationQuickPickersTableCell

+ (Class)containerViewClass
{
  sub_21D0D8CF0(0, &qword_27CE5BFF8);

  return swift_getObjCClassFromMetadata();
}

- (_TtC15RemindersUICore33TTRILocationQuickPickersTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
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

  return TTRILocationQuickPickersTableCell.init(style:reuseIdentifier:)(a3, a4, v6);
}

- (_TtC15RemindersUICore33TTRILocationQuickPickersTableCell)initWithCoder:(id)a3
{
  result = sub_21DBFC31C();
  __break(1u);
  return result;
}

@end