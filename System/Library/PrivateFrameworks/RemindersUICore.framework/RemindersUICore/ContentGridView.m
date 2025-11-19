@interface ContentGridView
- (_TtC15RemindersUICoreP33_5F83F89EF85FB718FA4DE7CB8B884BCB15ContentGridView)initWithArrangedSubviewRows:(id)a3;
- (_TtC15RemindersUICoreP33_5F83F89EF85FB718FA4DE7CB8B884BCB15ContentGridView)initWithCoder:(id)a3;
- (_TtC15RemindersUICoreP33_5F83F89EF85FB718FA4DE7CB8B884BCB15ContentGridView)initWithFrame:(CGRect)a3;
@end

@implementation ContentGridView

- (_TtC15RemindersUICoreP33_5F83F89EF85FB718FA4DE7CB8B884BCB15ContentGridView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  return [(TTRIRemindersListReminderCellContentView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC15RemindersUICoreP33_5F83F89EF85FB718FA4DE7CB8B884BCB15ContentGridView)initWithArrangedSubviewRows:(id)a3
{
  ObjectType = swift_getObjectType();
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F100);
    sub_21DBFA5EC();
    a3 = sub_21DBFA5DC();
  }

  v8.receiver = self;
  v8.super_class = ObjectType;
  v6 = [(TTRIRemindersListReminderCellContentView *)&v8 initWithArrangedSubviewRows:a3];

  return v6;
}

- (_TtC15RemindersUICoreP33_5F83F89EF85FB718FA4DE7CB8B884BCB15ContentGridView)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = a3;
  v5 = [(TTRIRemindersListReminderCellContentView *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end