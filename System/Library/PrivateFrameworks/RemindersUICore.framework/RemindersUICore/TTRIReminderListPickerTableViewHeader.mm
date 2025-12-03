@interface TTRIReminderListPickerTableViewHeader
- (_TtC15RemindersUICore37TTRIReminderListPickerTableViewHeader)initWithCoder:(id)coder;
- (_TtC15RemindersUICore37TTRIReminderListPickerTableViewHeader)initWithReuseIdentifier:(id)identifier;
@end

@implementation TTRIReminderListPickerTableViewHeader

- (_TtC15RemindersUICore37TTRIReminderListPickerTableViewHeader)initWithReuseIdentifier:(id)identifier
{
  if (identifier)
  {
    v3 = sub_21DBFA16C();
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  return sub_21D1B2B68(v3, v4);
}

- (_TtC15RemindersUICore37TTRIReminderListPickerTableViewHeader)initWithCoder:(id)coder
{
  result = sub_21DBFC31C();
  __break(1u);
  return result;
}

@end