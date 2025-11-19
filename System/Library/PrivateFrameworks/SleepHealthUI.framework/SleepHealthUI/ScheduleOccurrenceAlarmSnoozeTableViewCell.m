@interface ScheduleOccurrenceAlarmSnoozeTableViewCell
- (_TtC13SleepHealthUI42ScheduleOccurrenceAlarmSnoozeTableViewCell)initWithCoder:(id)a3;
- (_TtC13SleepHealthUI42ScheduleOccurrenceAlarmSnoozeTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
@end

@implementation ScheduleOccurrenceAlarmSnoozeTableViewCell

- (_TtC13SleepHealthUI42ScheduleOccurrenceAlarmSnoozeTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
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
    sub_269D9A630();
    v6 = sub_269D9A5F0();
  }

  else
  {
    v6 = 0;
  }

  v10.receiver = self;
  v10.super_class = type metadata accessor for ScheduleOccurrenceAlarmSnoozeTableViewCell();
  v7 = [(HKSwitchTableViewCell *)&v10 initWithStyle:1 reuseIdentifier:v6];

  v8 = v7;
  sub_269C81C50();

  return v8;
}

- (_TtC13SleepHealthUI42ScheduleOccurrenceAlarmSnoozeTableViewCell)initWithCoder:(id)a3
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