@interface ConfirmationFeatureView
- (_TtC13SleepHealthUI23ConfirmationFeatureView)initWithCoder:(id)coder;
@end

@implementation ConfirmationFeatureView

- (_TtC13SleepHealthUI23ConfirmationFeatureView)initWithCoder:(id)coder
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = self + OBJC_IVAR____TtC13SleepHealthUI23ConfirmationFeatureView_viewModel;
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 2) = 0u;
  *(v4 + 3) = 0u;
  *(v4 + 4) = 0u;
  *(v4 + 5) = 0u;
  *(v4 + 12) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC13SleepHealthUI23ConfirmationFeatureView_currentConstraints) = 0;
  result = sub_269D9B100();
  __break(1u);
  return result;
}

@end