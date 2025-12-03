@interface ScheduleOccurrenceDeleteTableViewCell
- (_TtC13SleepHealthUI37ScheduleOccurrenceDeleteTableViewCell)initWithCoder:(id)coder;
- (_TtC13SleepHealthUI37ScheduleOccurrenceDeleteTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
@end

@implementation ScheduleOccurrenceDeleteTableViewCell

- (_TtC13SleepHealthUI37ScheduleOccurrenceDeleteTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (identifier)
  {
    v5 = sub_269D9A630();
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v7 = sub_269D5EA54(v5, v6);

  return v7;
}

- (_TtC13SleepHealthUI37ScheduleOccurrenceDeleteTableViewCell)initWithCoder:(id)coder
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC13SleepHealthUI37ScheduleOccurrenceDeleteTableViewCell_model) = 0;
  result = sub_269D9B100();
  __break(1u);
  return result;
}

@end