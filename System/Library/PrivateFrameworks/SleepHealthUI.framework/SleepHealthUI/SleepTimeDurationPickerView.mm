@interface SleepTimeDurationPickerView
- (_TtC13SleepHealthUI27SleepTimeDurationPickerView)initWithCoder:(id)coder;
- (_TtC13SleepHealthUI27SleepTimeDurationPickerView)initWithFrame:(CGRect)frame;
@end

@implementation SleepTimeDurationPickerView

- (_TtC13SleepHealthUI27SleepTimeDurationPickerView)initWithCoder:(id)coder
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = (self + OBJC_IVAR____TtC13SleepHealthUI27SleepTimeDurationPickerView_viewModel);
  *v4 = 0u;
  v4[1] = 0u;
  v4[2] = 0u;
  result = sub_269D9B100();
  __break(1u);
  return result;
}

- (_TtC13SleepHealthUI27SleepTimeDurationPickerView)initWithFrame:(CGRect)frame
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