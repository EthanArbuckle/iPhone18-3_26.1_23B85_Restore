@interface ScheduleOccurrenceComponentsAndDayAccessibilityTableViewCell
- (_TtC13SleepHealthUI60ScheduleOccurrenceComponentsAndDayAccessibilityTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
@end

@implementation ScheduleOccurrenceComponentsAndDayAccessibilityTableViewCell

- (_TtC13SleepHealthUI60ScheduleOccurrenceComponentsAndDayAccessibilityTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
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
    v6 = sub_269D9A630();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = ScheduleOccurrenceComponentsAndDayAccessibilityTableViewCell.init(style:reuseIdentifier:)(a3, v6, v8);

  return v9;
}

@end