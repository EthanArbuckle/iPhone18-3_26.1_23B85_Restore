@interface SleepScheduleDayPickerDay
- (BOOL)isSelected;
- (_TtC13SleepHealthUI25SleepScheduleDayPickerDay)initWithCoder:(id)coder;
- (_TtC13SleepHealthUI25SleepScheduleDayPickerDay)initWithFrame:(CGRect)frame;
- (id)accessibilityWeekday;
- (void)layoutSubviews;
- (void)setSelected:(BOOL)selected;
- (void)tintColorDidChange;
@end

@implementation SleepScheduleDayPickerDay

- (_TtC13SleepHealthUI25SleepScheduleDayPickerDay)initWithCoder:(id)coder
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  coderCopy = coder;
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

  selfCopy = self;
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
  selfCopy = self;
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
  isSelected = [(SleepScheduleDayPickerDay *)&v5 isSelected];

  return isSelected;
}

- (void)setSelected:(BOOL)selected
{
  selectedCopy = selected;
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6.receiver = self;
  v6.super_class = type metadata accessor for SleepScheduleDayPickerDay();
  selfCopy = self;
  [(SleepScheduleDayPickerDay *)&v6 setSelected:selectedCopy];
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

  selfCopy = self;
  largeContentTitle = [(SleepScheduleDayPickerDay *)selfCopy largeContentTitle];
  if (largeContentTitle || (largeContentTitle = [*(&selfCopy->super.super.super.super.isa + OBJC_IVAR____TtC13SleepHealthUI25SleepScheduleDayPickerDay_dayLabel) text]) != 0)
  {
    v5 = largeContentTitle;
    sub_269D9A630();

    v6 = sub_269D9A5F0();
  }

  else
  {

    v6 = 0;
  }

  return v6;
}

- (_TtC13SleepHealthUI25SleepScheduleDayPickerDay)initWithFrame:(CGRect)frame
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