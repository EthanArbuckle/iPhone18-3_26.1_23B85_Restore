@interface ScheduleOccurrenceViewController
- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path;
- (id)tableView:(id)view viewForFooterInSection:(int64_t)section;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (void)handleSignificantTimeChange;
- (void)saveButtonPressed:(id)pressed;
- (void)switchCellValueChanged:(id)changed value:(BOOL)value;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)tonePickerViewController:(id)controller didDismissVibrationPickerViewController:(id)viewController;
- (void)tonePickerViewController:(id)controller willPresentVibrationPickerViewController:(id)viewController;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation ScheduleOccurrenceViewController

- (void)viewWillDisappear:(BOOL)disappear
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  selfCopy = self;
  sub_269C28A30(disappear);
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
  sub_269C301BC();
  v13 = v12;

  (*(v7 + 8))(v9, v6);

  return v13 & 1;
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
  sub_269C29198(viewCopy);

  (*(v7 + 8))(v9, v6);
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  v8 = sub_269D97870();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_269D97840();
  viewCopy = view;
  cellCopy = cell;
  selfCopy = self;
  sub_269C302BC(cellCopy);

  (*(v9 + 8))(v11, v8);
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
  v9 = sub_269C299F0(viewCopy, section);

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
  v9 = sub_269C3079C(section);

  return v9;
}

- (void)handleSignificantTimeChange
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  selfCopy = self;
  sub_269C2A4DC("[%{public}s] Significant time changed");
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

  if (changed)
  {
    type metadata accessor for ScheduleOccurrenceAlarmEnabledTableViewCell();
    if (swift_dynamicCastClass())
    {
      selfCopy2 = self;
      changedCopy2 = changed;
      ScheduleOccurrenceEditModel.alarmEnabled.setter(value);
      sub_269D4B714();
LABEL_8:

      return;
    }

    type metadata accessor for ScheduleOccurrenceAlarmSnoozeTableViewCell();
    if (swift_dynamicCastClass())
    {
      selfCopy2 = self;
      changedCopy2 = changed;
      ScheduleOccurrenceEditModel.allowsSnooze.setter(value);
      goto LABEL_8;
    }
  }
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
    selfCopy = self;
    viewControllerCopy = viewController;
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

- (void)saveButtonPressed:(id)pressed
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  pressedCopy = pressed;
  selfCopy = self;
  v9.is_nil = selfCopy;
  v7 = selfCopy;
  v9.value.super.super.isa = pressed;
  ScheduleOccurrenceViewController.saveButtonPressed(_:)(v9);
}

@end