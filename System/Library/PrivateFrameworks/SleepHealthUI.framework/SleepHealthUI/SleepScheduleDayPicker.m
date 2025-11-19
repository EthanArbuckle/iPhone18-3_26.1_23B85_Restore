@interface SleepScheduleDayPicker
- (_TtC13SleepHealthUI22SleepScheduleDayPicker)initWithCoder:(id)a3;
- (_TtC13SleepHealthUI22SleepScheduleDayPicker)initWithFrame:(CGRect)a3;
- (id)accessibilityPickerDays;
- (void)didTapDay:(id)a3;
@end

@implementation SleepScheduleDayPicker

- (_TtC13SleepHealthUI22SleepScheduleDayPicker)initWithCoder:(id)a3
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *(&self->super.super.super._responderFlags + OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleDayPicker_alertPresenter) = 0;
  swift_unknownObjectWeakInit();
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleDayPicker_days) = MEMORY[0x277D84F90];
  result = sub_269D9B100();
  __break(1u);
  return result;
}

- (id)accessibilityPickerDays
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  type metadata accessor for SleepScheduleDayPickerDay();

  v2 = sub_269D9A7D0();

  return v2;
}

- (_TtC13SleepHealthUI22SleepScheduleDayPicker)initWithFrame:(CGRect)a3
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

- (void)didTapDay:(id)a3
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = a3;
  v6 = self;
  sub_269D743E8(v5);
}

@end