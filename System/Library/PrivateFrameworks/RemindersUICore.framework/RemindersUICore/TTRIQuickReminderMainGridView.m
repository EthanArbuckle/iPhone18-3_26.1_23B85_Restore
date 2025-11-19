@interface TTRIQuickReminderMainGridView
- (_TtC15RemindersUICore29TTRIQuickReminderMainGridView)initWithArrangedSubviewRows:(id)a3;
@end

@implementation TTRIQuickReminderMainGridView

- (_TtC15RemindersUICore29TTRIQuickReminderMainGridView)initWithArrangedSubviewRows:(id)a3
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
  v6 = [(TTRNoAnimationContainerGridView *)&v8 initWithArrangedSubviewRows:a3];

  return v6;
}

@end