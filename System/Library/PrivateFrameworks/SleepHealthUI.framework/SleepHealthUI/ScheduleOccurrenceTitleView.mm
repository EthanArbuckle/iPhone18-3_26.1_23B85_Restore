@interface ScheduleOccurrenceTitleView
- (_TtC13SleepHealthUI27ScheduleOccurrenceTitleView)initWithCoder:(id)coder;
- (_TtC13SleepHealthUI27ScheduleOccurrenceTitleView)initWithFrame:(CGRect)frame;
- (void)willMoveToWindow:(id)window;
@end

@implementation ScheduleOccurrenceTitleView

- (_TtC13SleepHealthUI27ScheduleOccurrenceTitleView)initWithCoder:(id)coder
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  coderCopy = coder;
  sub_269D90394();
}

- (void)willMoveToWindow:(id)window
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (window)
  {
    selfCopy = self;
    windowCopy = window;
    [windowCopy bounds];
    sub_269D8FDB4(v6, v7);
  }

  else
  {
  }
}

- (_TtC13SleepHealthUI27ScheduleOccurrenceTitleView)initWithFrame:(CGRect)frame
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end