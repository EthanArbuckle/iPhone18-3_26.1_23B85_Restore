@interface DialerAppChangeValidator
- (_TtC26DefaultCallingAppsSettings24DialerAppChangeValidator)init;
@end

@implementation DialerAppChangeValidator

- (_TtC26DefaultCallingAppsSettings24DialerAppChangeValidator)init
{
  sub_18F54();
  sub_18F44();
  sub_18F04();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end