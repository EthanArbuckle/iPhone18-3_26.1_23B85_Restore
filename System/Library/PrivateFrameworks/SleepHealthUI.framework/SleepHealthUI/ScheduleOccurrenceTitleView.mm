@interface ScheduleOccurrenceTitleView
- (_TtC13SleepHealthUI27ScheduleOccurrenceTitleView)initWithCoder:(id)a3;
- (_TtC13SleepHealthUI27ScheduleOccurrenceTitleView)initWithFrame:(CGRect)a3;
- (void)willMoveToWindow:(id)a3;
@end

@implementation ScheduleOccurrenceTitleView

- (_TtC13SleepHealthUI27ScheduleOccurrenceTitleView)initWithCoder:(id)a3
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = a3;
  sub_269D90394();
}

- (void)willMoveToWindow:(id)a3
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a3)
  {
    v8 = self;
    v5 = a3;
    [v5 bounds];
    sub_269D8FDB4(v6, v7);
  }

  else
  {
  }
}

- (_TtC13SleepHealthUI27ScheduleOccurrenceTitleView)initWithFrame:(CGRect)a3
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