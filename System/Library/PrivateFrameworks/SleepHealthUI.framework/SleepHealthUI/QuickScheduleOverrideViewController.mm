@interface QuickScheduleOverrideViewController
- (BOOL)_canShowWhileLocked;
- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path;
- (_TtC13SleepHealthUI35QuickScheduleOverrideViewController)initWithCoder:(id)coder;
- (_TtC13SleepHealthUI35QuickScheduleOverrideViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC13SleepHealthUI35QuickScheduleOverrideViewController)initWithStyle:(int64_t)style;
- (double)tableView:(id)view estimatedHeightForHeaderInSection:(int64_t)section;
- (id)tableView:(id)view viewForFooterInSection:(int64_t)section;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (void)cancelButtonPressed;
- (void)switchCellValueChanged:(id)changed value:(BOOL)value;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)tonePickerViewController:(id)controller didDismissVibrationPickerViewController:(id)viewController;
- (void)tonePickerViewController:(id)controller willPresentVibrationPickerViewController:(id)viewController;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation QuickScheduleOverrideViewController

- (_TtC13SleepHealthUI35QuickScheduleOverrideViewController)initWithCoder:(id)coder
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  coderCopy = coder;
  sub_269C9205C();
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6.receiver = self;
  v6.super_class = type metadata accessor for QuickScheduleOverrideViewController();
  selfCopy = self;
  [(QuickScheduleOverrideViewController *)&v6 viewWillDisappear:disappearCopy];
  sub_269D4B714();
}

- (BOOL)_canShowWhileLocked
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  return 1;
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  v7 = sub_269D97870();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_269D97840();
  cellCopy = cell;
  selfCopy = self;
  sub_269C8A0C4(cellCopy);

  (*(v8 + 8))(v10, v7);
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v6 = sub_269D97870();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_269D97840();
  viewCopy = view;
  selfCopy = self;
  sub_269C921A0();

  (*(v7 + 8))(v9, v6);
}

- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path
{
  v6 = sub_269D97870();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_269D97840();
  viewCopy = view;
  selfCopy = self;
  sub_269C9238C();
  v13 = v12;

  (*(v7 + 8))(v9, v6);

  return v13 & 1;
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  viewCopy = view;
  selfCopy = self;
  v9 = sub_269C8AAE4(viewCopy, section);

  return v9;
}

- (id)tableView:(id)view viewForFooterInSection:(int64_t)section
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  viewCopy = view;
  selfCopy = self;
  v9 = sub_269C9271C(section);

  return v9;
}

- (double)tableView:(id)view estimatedHeightForHeaderInSection:(int64_t)section
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_dataSource);
  if (v7)
  {
    viewCopy = view;
    selfCopy = self;
    v10 = v7;
    sub_269C92518(section);
    v12 = v11;

    if (v12)
    {

      return 45.0;
    }
  }

  else
  {
  }

  return 10.0;
}

- (_TtC13SleepHealthUI35QuickScheduleOverrideViewController)initWithStyle:(int64_t)style
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

- (_TtC13SleepHealthUI35QuickScheduleOverrideViewController)initWithNibName:(id)name bundle:(id)bundle
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

- (void)cancelButtonPressed
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = self + OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_delegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *(v3 + 1);
    selfCopy = self;
    sub_269C8E164(v5, v6, selfCopy);
    swift_unknownObjectRelease();
    *(v3 + 1) = 0;
    swift_unknownObjectWeakAssign();
  }

  else
  {
  }
}

- (void)switchCellValueChanged:(id)changed value:(BOOL)value
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  changedCopy = changed;
  selfCopy = self;
  sub_269C8FC04(changed, value);
}

- (void)tonePickerViewController:(id)controller willPresentVibrationPickerViewController:(id)viewController
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (viewController)
  {
    v6 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_vibrationPickerStyleProvider);
    selfCopy = self;
    viewControllerCopy = viewController;
    [viewControllerCopy setStyleProvider_];
    [viewControllerCopy setShowsEditButtonInNavigationBar_];
    [viewControllerCopy setDelegate_];
  }

  else
  {
    __break(1u);
  }
}

- (void)tonePickerViewController:(id)controller didDismissVibrationPickerViewController:(id)viewController
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (viewController)
  {
    [viewController setDelegate_];
  }

  else
  {
    __break(1u);
  }
}

@end