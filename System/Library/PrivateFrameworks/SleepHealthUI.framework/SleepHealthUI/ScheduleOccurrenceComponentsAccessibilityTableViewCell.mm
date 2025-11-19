@interface ScheduleOccurrenceComponentsAccessibilityTableViewCell
- (_TtC13SleepHealthUI54ScheduleOccurrenceComponentsAccessibilityTableViewCell)initWithCoder:(id)a3;
- (_TtC13SleepHealthUI54ScheduleOccurrenceComponentsAccessibilityTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
@end

@implementation ScheduleOccurrenceComponentsAccessibilityTableViewCell

- (_TtC13SleepHealthUI54ScheduleOccurrenceComponentsAccessibilityTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a4)
  {
    v5 = sub_269D9A630();
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v7 = sub_269CF79AC(v5, v6);

  return v7;
}

- (_TtC13SleepHealthUI54ScheduleOccurrenceComponentsAccessibilityTableViewCell)initWithCoder:(id)a3
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = a3;
  sub_269CF8364();
}

@end