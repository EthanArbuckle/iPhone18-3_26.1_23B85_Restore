@interface ScheduleOccurrenceDayPickerTableViewCell
- (_TtC13SleepHealthUI40ScheduleOccurrenceDayPickerTableViewCell)initWithCoder:(id)a3;
- (_TtC13SleepHealthUI40ScheduleOccurrenceDayPickerTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (id)accessibilityDayPicker;
@end

@implementation ScheduleOccurrenceDayPickerTableViewCell

- (_TtC13SleepHealthUI40ScheduleOccurrenceDayPickerTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
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

  v7 = sub_269D90E90(v5, v6);

  return v7;
}

- (_TtC13SleepHealthUI40ScheduleOccurrenceDayPickerTableViewCell)initWithCoder:(id)a3
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = OBJC_IVAR____TtC13SleepHealthUI40ScheduleOccurrenceDayPickerTableViewCell_picker;
  v6 = objc_allocWithZone(MEMORY[0x277CCA968]);
  v7 = a3;
  v8 = [v6 init];
  [v8 setFormattingContext_];
  v9 = objc_allocWithZone(type metadata accessor for SleepScheduleDayPicker());
  v10 = sub_269D750E0(v8, 0, 0);

  *(&self->super.super.super.super.isa + v5) = v10;
  result = sub_269D9B100();
  __break(1u);
  return result;
}

- (id)accessibilityDayPicker
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC13SleepHealthUI40ScheduleOccurrenceDayPickerTableViewCell_picker);

  return v3;
}

@end