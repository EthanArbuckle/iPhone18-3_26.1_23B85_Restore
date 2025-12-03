@interface ScheduleOccurrenceHeaderView
- (_TtC13SleepHealthUI28ScheduleOccurrenceHeaderView)initWithCoder:(id)coder;
- (_TtC13SleepHealthUI28ScheduleOccurrenceHeaderView)initWithFrame:(CGRect)frame;
@end

@implementation ScheduleOccurrenceHeaderView

- (_TtC13SleepHealthUI28ScheduleOccurrenceHeaderView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
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

- (_TtC13SleepHealthUI28ScheduleOccurrenceHeaderView)initWithCoder:(id)coder
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