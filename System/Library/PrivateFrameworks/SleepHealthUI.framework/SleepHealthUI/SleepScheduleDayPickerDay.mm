@interface SleepScheduleDayPickerDay
- (BOOL)isSelected;
- (_TtC13SleepHealthUI25SleepScheduleDayPickerDay)initWithCoder:(id)a3;
- (_TtC13SleepHealthUI25SleepScheduleDayPickerDay)initWithFrame:(CGRect)a3;
- (id)accessibilityWeekday;
- (void)layoutSubviews;
- (void)setSelected:(BOOL)a3;
- (void)tintColorDidChange;
@end

@implementation SleepScheduleDayPickerDay

- (_TtC13SleepHealthUI25SleepScheduleDayPickerDay)initWithCoder:(id)a3
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = a3;
  sub_269C83648();
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
  sub_269C826B4();
}

- (void)tintColorDidChange
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4.receiver = self;
  v4.super_class = type metadata accessor for SleepScheduleDayPickerDay();
  v3 = self;
  [(SleepScheduleDayPickerDay *)&v4 tintColorDidChange];
  sub_269C82B24();
}

- (BOOL)isSelected
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5.receiver = self;
  v5.super_class = type metadata accessor for SleepScheduleDayPickerDay();
  v3 = [(SleepScheduleDayPickerDay *)&v5 isSelected];

  return v3;
}

- (void)setSelected:(BOOL)a3
{
  v3 = a3;
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6.receiver = self;
  v6.super_class = type metadata accessor for SleepScheduleDayPickerDay();
  v5 = self;
  [(SleepScheduleDayPickerDay *)&v6 setSelected:v3];
  sub_269C82B24();
}

- (id)accessibilityWeekday
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = self;
  v4 = [(SleepScheduleDayPickerDay *)v3 largeContentTitle];
  if (v4 || (v4 = [*(&v3->super.super.super.super.isa + OBJC_IVAR____TtC13SleepHealthUI25SleepScheduleDayPickerDay_dayLabel) text]) != 0)
  {
    v5 = v4;
    sub_269D9A630();

    v6 = sub_269D9A5F0();
  }

  else
  {

    v6 = 0;
  }

  return v6;
}

- (_TtC13SleepHealthUI25SleepScheduleDayPickerDay)initWithFrame:(CGRect)a3
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