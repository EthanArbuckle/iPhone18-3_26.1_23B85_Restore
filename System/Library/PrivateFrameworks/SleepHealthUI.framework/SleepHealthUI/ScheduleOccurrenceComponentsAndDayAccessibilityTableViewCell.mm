@interface ScheduleOccurrenceComponentsAndDayAccessibilityTableViewCell
- (_TtC13SleepHealthUI60ScheduleOccurrenceComponentsAndDayAccessibilityTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
@end

@implementation ScheduleOccurrenceComponentsAndDayAccessibilityTableViewCell

- (_TtC13SleepHealthUI60ScheduleOccurrenceComponentsAndDayAccessibilityTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
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
    v6 = sub_269D9A630();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = ScheduleOccurrenceComponentsAndDayAccessibilityTableViewCell.init(style:reuseIdentifier:)(style, v6, v8);

  return v9;
}

@end