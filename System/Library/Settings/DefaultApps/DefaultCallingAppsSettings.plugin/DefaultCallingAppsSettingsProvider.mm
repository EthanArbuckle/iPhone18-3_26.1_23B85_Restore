@interface DefaultCallingAppsSettingsProvider
- (_TtC26DefaultCallingAppsSettings34DefaultCallingAppsSettingsProvider)init;
- (void)handleModelUpdated;
@end

@implementation DefaultCallingAppsSettingsProvider

- (_TtC26DefaultCallingAppsSettings34DefaultCallingAppsSettingsProvider)init
{
  ObjectType = swift_getObjectType();
  sub_18F54();
  sub_18F44();
  sub_18F04();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = objc_allocWithZone(ObjectType);
  v4 = DefaultCallingAppsSettingsProvider.init(for:)(0, 0);
  swift_getObjectType();
  swift_deallocPartialClassInstance();

  return v4;
}

- (void)handleModelUpdated
{
  sub_18F54();
  sub_18F44();
  sub_18F04();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  selfCopy = self;
  sub_EA88();
}

@end