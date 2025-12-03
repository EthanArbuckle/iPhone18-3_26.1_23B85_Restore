@interface SleepScheduleClockCaption
- (_TtC13SleepHealthUI25SleepScheduleClockCaption)initWithCoder:(id)coder;
- (_TtC13SleepHealthUI25SleepScheduleClockCaption)initWithFrame:(CGRect)frame;
- (id)accessibilityClockCaptionMessage;
@end

@implementation SleepScheduleClockCaption

- (_TtC13SleepHealthUI25SleepScheduleClockCaption)initWithCoder:(id)coder
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *(&self->super.super.super.isa + OBJC_IVAR____TtC13SleepHealthUI25SleepScheduleClockCaption_message) = 6;
  result = sub_269D9B100();
  __break(1u);
  return result;
}

- (id)accessibilityClockCaptionMessage
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC13SleepHealthUI25SleepScheduleClockCaption_message);
  if (v3 == 6)
  {

    v4 = 0;
  }

  else
  {
    sub_269C85F54(v3);
    v5 = sub_269D9A5F0();

    v4 = v5;
  }

  return v4;
}

- (_TtC13SleepHealthUI25SleepScheduleClockCaption)initWithFrame:(CGRect)frame
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