@interface ScheduleOccurrenceViewController
- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (void)handleSignificantTimeChange;
- (void)saveButtonPressed:(id)a3;
- (void)switchCellValueChanged:(id)a3 value:(BOOL)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)tonePickerViewController:(id)a3 didDismissVibrationPickerViewController:(id)a4;
- (void)tonePickerViewController:(id)a3 willPresentVibrationPickerViewController:(id)a4;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation ScheduleOccurrenceViewController

- (void)viewWillDisappear:(BOOL)a3
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = self;
  sub_269C28A30(a3);
}

- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4
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
  v10 = a3;
  v11 = self;
  sub_269C301BC();
  v13 = v12;

  (*(v7 + 8))(v9, v6);

  return v13 & 1;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
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
  v10 = a3;
  v11 = self;
  sub_269C29198(v10);

  (*(v7 + 8))(v9, v6);
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
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
  v12 = a3;
  v13 = a4;
  v14 = self;
  sub_269C302BC(v13);

  (*(v9 + 8))(v11, v8);
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = a3;
  v8 = self;
  v9 = sub_269C299F0(v7, a4);

  return v9;
}

- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = a3;
  v8 = self;
  v9 = sub_269C3079C(a4);

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

  v3 = self;
  sub_269C2A4DC("[%{public}s] Significant time changed");
}

- (void)switchCellValueChanged:(id)a3 value:(BOOL)a4
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a3)
  {
    type metadata accessor for ScheduleOccurrenceAlarmEnabledTableViewCell();
    if (swift_dynamicCastClass())
    {
      v7 = self;
      v8 = a3;
      ScheduleOccurrenceEditModel.alarmEnabled.setter(a4);
      sub_269D4B714();
LABEL_8:

      return;
    }

    type metadata accessor for ScheduleOccurrenceAlarmSnoozeTableViewCell();
    if (swift_dynamicCastClass())
    {
      v7 = self;
      v8 = a3;
      ScheduleOccurrenceEditModel.allowsSnooze.setter(a4);
      goto LABEL_8;
    }
  }
}

- (void)tonePickerViewController:(id)a3 willPresentVibrationPickerViewController:(id)a4
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a4)
  {
    v7 = self;
    v6 = a4;
    [v6 setShowsEditButtonInNavigationBar_];
    [v6 setDelegate_];
  }

  else
  {
    __break(1u);
  }
}

- (void)tonePickerViewController:(id)a3 didDismissVibrationPickerViewController:(id)a4
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a4)
  {
    [a4 setDelegate_];
  }

  else
  {
    __break(1u);
  }
}

- (void)saveButtonPressed:(id)a3
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
  v9.is_nil = v6;
  v7 = v6;
  v9.value.super.super.isa = a3;
  ScheduleOccurrenceViewController.saveButtonPressed(_:)(v9);
}

@end