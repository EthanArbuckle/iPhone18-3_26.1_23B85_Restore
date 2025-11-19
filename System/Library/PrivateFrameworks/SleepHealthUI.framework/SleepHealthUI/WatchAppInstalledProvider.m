@interface WatchAppInstalledProvider
- (_TtC13SleepHealthUI25WatchAppInstalledProvider)init;
@end

@implementation WatchAppInstalledProvider

- (_TtC13SleepHealthUI25WatchAppInstalledProvider)init
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = WatchAppInstalledProvider.init()();

  return v2;
}

@end