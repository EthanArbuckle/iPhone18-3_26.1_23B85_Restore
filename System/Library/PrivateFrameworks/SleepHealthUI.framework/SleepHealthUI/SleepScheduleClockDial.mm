@interface SleepScheduleClockDial
- (_TtC13SleepHealthUI22SleepScheduleClockDial)initWithCoder:(id)a3;
- (_TtC13SleepHealthUI22SleepScheduleClockDial)initWithFrame:(CGRect)a3;
- (void)drawRect:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation SleepScheduleClockDial

- (_TtC13SleepHealthUI22SleepScheduleClockDial)initWithCoder:(id)a3
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = sub_269D9B100();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = self;
  sub_269CE9214();
}

- (void)drawRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = self;
  sub_269CE94D0(x, y, width, height);
}

- (_TtC13SleepHealthUI22SleepScheduleClockDial)initWithFrame:(CGRect)a3
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