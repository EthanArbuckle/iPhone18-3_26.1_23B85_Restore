@interface TTRIQuickReminderMainGridView
- (_TtC15RemindersUICore29TTRIQuickReminderMainGridView)initWithArrangedSubviewRows:(id)rows;
@end

@implementation TTRIQuickReminderMainGridView

- (_TtC15RemindersUICore29TTRIQuickReminderMainGridView)initWithArrangedSubviewRows:(id)rows
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
  v6 = [(TTRNoAnimationContainerGridView *)&v8 initWithArrangedSubviewRows:rows];

  return v6;
}

@end