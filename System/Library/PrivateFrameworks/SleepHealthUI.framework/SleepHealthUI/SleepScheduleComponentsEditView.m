@interface SleepScheduleComponentsEditView
- (_TtC13SleepHealthUI31SleepScheduleComponentsEditView)initWithCoder:(id)a3;
- (_TtC13SleepHealthUI31SleepScheduleComponentsEditView)initWithFrame:(CGRect)a3;
- (id)accessibilityComponentsHeader;
- (void)clockDidChange:(id)a3;
- (void)layoutSubviews;
- (void)willMoveToWindow:(id)a3;
@end

@implementation SleepScheduleComponentsEditView

- (_TtC13SleepHealthUI31SleepScheduleComponentsEditView)initWithCoder:(id)a3
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = a3;
  sub_269C6BEA0();
}

- (void)willMoveToWindow:(id)a3
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
  sub_269C686E0(a3);
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
  sub_269C68C34();
}

- (void)clockDidChange:(id)a3
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
  sub_269C69B58(v5);
}

- (id)accessibilityComponentsHeader
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC13SleepHealthUI31SleepScheduleComponentsEditView_componentsHeader);

  return v3;
}

- (_TtC13SleepHealthUI31SleepScheduleComponentsEditView)initWithFrame:(CGRect)a3
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