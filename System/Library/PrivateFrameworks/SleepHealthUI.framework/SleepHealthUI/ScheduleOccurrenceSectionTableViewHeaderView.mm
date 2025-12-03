@interface ScheduleOccurrenceSectionTableViewHeaderView
- (UILabel)textLabel;
- (_TtC13SleepHealthUI44ScheduleOccurrenceSectionTableViewHeaderView)initWithCoder:(id)coder;
- (_TtC13SleepHealthUI44ScheduleOccurrenceSectionTableViewHeaderView)initWithReuseIdentifier:(id)identifier;
@end

@implementation ScheduleOccurrenceSectionTableViewHeaderView

- (UILabel)textLabel
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  return 0;
}

- (_TtC13SleepHealthUI44ScheduleOccurrenceSectionTableViewHeaderView)initWithReuseIdentifier:(id)identifier
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
    v4 = sub_269D9A630();
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  v6 = ScheduleOccurrenceSectionTableViewHeaderView.init(reuseIdentifier:)(v4, v5);

  return v6;
}

- (_TtC13SleepHealthUI44ScheduleOccurrenceSectionTableViewHeaderView)initWithCoder:(id)coder
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

@end