@interface ContentGridView
- (_TtC15RemindersUICoreP33_5F83F89EF85FB718FA4DE7CB8B884BCB15ContentGridView)initWithArrangedSubviewRows:(id)rows;
- (_TtC15RemindersUICoreP33_5F83F89EF85FB718FA4DE7CB8B884BCB15ContentGridView)initWithCoder:(id)coder;
- (_TtC15RemindersUICoreP33_5F83F89EF85FB718FA4DE7CB8B884BCB15ContentGridView)initWithFrame:(CGRect)frame;
@end

@implementation ContentGridView

- (_TtC15RemindersUICoreP33_5F83F89EF85FB718FA4DE7CB8B884BCB15ContentGridView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  return [(TTRIRemindersListReminderCellContentView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC15RemindersUICoreP33_5F83F89EF85FB718FA4DE7CB8B884BCB15ContentGridView)initWithArrangedSubviewRows:(id)rows
{
  ObjectType = swift_getObjectType();
  if (rows)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F100);
    sub_21DBFA5EC();
    rows = sub_21DBFA5DC();
  }

  v8.receiver = self;
  v8.super_class = ObjectType;
  v6 = [(TTRIRemindersListReminderCellContentView *)&v8 initWithArrangedSubviewRows:rows];

  return v6;
}

- (_TtC15RemindersUICoreP33_5F83F89EF85FB718FA4DE7CB8B884BCB15ContentGridView)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  coderCopy = coder;
  v5 = [(TTRIRemindersListReminderCellContentView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end