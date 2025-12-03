@interface TimeDurationPicker
- (_TtC13SleepHealthUI18TimeDurationPicker)initWithCoder:(id)coder;
- (_TtC13SleepHealthUI18TimeDurationPicker)initWithFrame:(CGRect)frame;
- (id)accessibilityDurationLabel;
- (void)decrease;
- (void)increase;
@end

@implementation TimeDurationPicker

- (_TtC13SleepHealthUI18TimeDurationPicker)initWithCoder:(id)coder
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  coderCopy = coder;
  sub_269D73304();
}

- (void)decrease
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC13SleepHealthUI18TimeDurationPicker_selectedIndex);
  if (v3)
  {
    v4 = __OFSUB__(v3, 1);
    v5 = (v3 - 1);
    if (v4)
    {
      __break(1u);
    }

    else
    {
      *(&self->super.super.super.isa + OBJC_IVAR____TtC13SleepHealthUI18TimeDurationPicker_selectedIndex) = v5;
      selfCopy = self;
      sub_269D7258C();
    }
  }

  else
  {
  }
}

- (void)increase
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  selfCopy = self;
  sub_269D72D3C();
}

- (id)accessibilityDurationLabel
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC13SleepHealthUI18TimeDurationPicker_durationLabel);

  return v3;
}

- (_TtC13SleepHealthUI18TimeDurationPicker)initWithFrame:(CGRect)frame
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