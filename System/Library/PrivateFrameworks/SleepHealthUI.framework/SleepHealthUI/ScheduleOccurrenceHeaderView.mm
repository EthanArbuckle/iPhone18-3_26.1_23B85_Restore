@interface ScheduleOccurrenceHeaderView
- (_TtC13SleepHealthUI28ScheduleOccurrenceHeaderView)initWithCoder:(id)a3;
- (_TtC13SleepHealthUI28ScheduleOccurrenceHeaderView)initWithFrame:(CGRect)a3;
@end

@implementation ScheduleOccurrenceHeaderView

- (_TtC13SleepHealthUI28ScheduleOccurrenceHeaderView)initWithFrame:(CGRect)a3
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

  v7 = ScheduleOccurrenceHeaderView.init(frame:)(x, y, width, height);

  return v7;
}

- (_TtC13SleepHealthUI28ScheduleOccurrenceHeaderView)initWithCoder:(id)a3
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *(&self->super.super.super.isa + OBJC_IVAR____TtC13SleepHealthUI28ScheduleOccurrenceHeaderView____lazy_storage___titleLabel) = 0;
  result = sub_269D9B100();
  __break(1u);
  return result;
}

@end