@interface SleepScheduleComponentsEditView
- (_TtC13SleepHealthUI31SleepScheduleComponentsEditView)initWithCoder:(id)coder;
- (_TtC13SleepHealthUI31SleepScheduleComponentsEditView)initWithFrame:(CGRect)frame;
- (id)accessibilityComponentsHeader;
- (void)clockDidChange:(id)change;
- (void)layoutSubviews;
- (void)willMoveToWindow:(id)window;
@end

@implementation SleepScheduleComponentsEditView

- (_TtC13SleepHealthUI31SleepScheduleComponentsEditView)initWithCoder:(id)coder
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  coderCopy = coder;
  sub_269C6BEA0();
}

- (void)willMoveToWindow:(id)window
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  windowCopy = window;
  selfCopy = self;
  sub_269C686E0(window);
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
  sub_269C68C34();
}

- (void)clockDidChange:(id)change
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  changeCopy = change;
  selfCopy = self;
  sub_269C69B58(changeCopy);
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

- (_TtC13SleepHealthUI31SleepScheduleComponentsEditView)initWithFrame:(CGRect)frame
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