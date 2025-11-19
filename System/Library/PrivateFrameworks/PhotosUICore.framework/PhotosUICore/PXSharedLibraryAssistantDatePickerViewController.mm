@interface PXSharedLibraryAssistantDatePickerViewController
- (PXAssistantViewControllerDelegate)assistantViewControllerDelegate;
- (PXSharedLibraryAssistantDatePickerViewController)initWithViewModel:(id)a3;
- (id)_datePickerCellForTableView:(id)a3;
- (id)_startDateCellForTableView:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_continueAssistant;
- (void)_datePickerDidChange:(id)a3;
- (void)_resetPickerWithDate:(id)a3;
- (void)_updateFooterText;
- (void)_updateHeaderText;
- (void)_updateStartDateCell;
- (void)_updateViewModelForStartDate:(id)a3 completionHandler:(id)a4;
- (void)continueButtonTapped:(id)a3;
- (void)footerTextWithCompletion:(id)a3;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)resetPickerDate;
- (void)restorePickerDate;
- (void)skipPickedDateAndContinue;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)truncateAndSetPickedDate:(id)a3;
- (void)usePickedDateAndContinueWithCompletionHandler:(id)a3;
- (void)viewDidLoad;
@end

@implementation PXSharedLibraryAssistantDatePickerViewController

- (PXAssistantViewControllerDelegate)assistantViewControllerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->assistantViewControllerDelegate);

  return WeakRetained;
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  if ((a4 & 0x2088) != 0 && PXSharedLibraryAssistantDatePickerViewModelObservationContext == a5)
  {
    [(PXSharedLibraryAssistantDatePickerViewController *)self resetPickerDate];
    [(PXSharedLibraryAssistantDatePickerViewController *)self _updateStartDateCell];
    [(PXSharedLibraryAssistantDatePickerViewController *)self _updateFooterText];

    [(PXSharedLibraryAssistantDatePickerViewController *)self _updateHeaderText];
  }
}

- (void)continueButtonTapped:(id)a3
{
  v4 = [(OBBaseWelcomeController *)self navigationItem];
  v5 = [(PXSharedLibraryAssistantDatePickerViewController *)self titleButton];
  [v4 setHidesBackButton:1];
  [v5 setEnabled:0];
  [v5 showsBusyIndicator];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __73__PXSharedLibraryAssistantDatePickerViewController_continueButtonTapped___block_invoke;
  v8[3] = &unk_1E774C620;
  v9 = v5;
  v10 = v4;
  v6 = v4;
  v7 = v5;
  [(PXSharedLibraryAssistantDatePickerViewController *)self usePickedDateAndContinueWithCompletionHandler:v8];
}

uint64_t __73__PXSharedLibraryAssistantDatePickerViewController_continueButtonTapped___block_invoke(uint64_t a1)
{
  [*(a1 + 32) hidesBusyIndicator];
  [*(a1 + 32) setEnabled:1];
  v2 = *(a1 + 40);

  return [v2 setHidesBackButton:0];
}

- (void)_updateHeaderText
{
  v3 = PXLocalizedSharedLibraryString(@"PXSharedLibraryAssistant_DateSelection_Title");
  v9 = 0;
  v4 = [(PXSharedLibraryAssistantDatePickerViewController *)self viewModel];
  v5 = [v4 localizedSelectedPeopleWithAdditionalPeopleCount:&v9];

  v6 = PXSharedLibraryAssistantDateSelectionSubtitle(v5, v9);
  v7 = [(PXSharedLibraryAssistantDatePickerViewController *)self headerView];
  [v7 setTitle:v3];

  v8 = [(PXSharedLibraryAssistantDatePickerViewController *)self headerView];
  [v8 setDetailText:v6];
}

- (void)_updateFooterText
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __69__PXSharedLibraryAssistantDatePickerViewController__updateFooterText__block_invoke;
  v2[3] = &unk_1E774BE48;
  v2[4] = self;
  [(PXSharedLibraryAssistantDatePickerViewController *)self footerTextWithCompletion:v2];
}

void __69__PXSharedLibraryAssistantDatePickerViewController__updateFooterText__block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(a1 + 32) + 1304), a2);
  v4 = a2;
  v5 = [*(a1 + 32) tableView];

  [v5 reloadData];
}

- (void)_updateStartDateCell
{
  v8 = [MEMORY[0x1E69DCC28] valueCellConfiguration];
  v3 = PXLocalizedSharedLibraryString(@"PXSharedLibraryAssistant_DateSelection_PickerDetail");
  [v8 setText:v3];

  v4 = [(PXSharedLibraryAssistantDatePickerViewController *)self pickedDate];
  v5 = PXSharedLibraryAssistantCustomizeRulesExcludingFromStartDate(v4);
  [v8 setSecondaryText:v5];

  v6 = [MEMORY[0x1E69DC888] systemBlueColor];
  v7 = [v8 secondaryTextProperties];
  [v7 setColor:v6];

  [(UITableViewCell *)self->_startDateCell setContentConfiguration:v8];
}

- (void)_datePickerDidChange:(id)a3
{
  v4 = [a3 date];
  [(PXSharedLibraryAssistantDatePickerViewController *)self truncateAndSetPickedDate:v4];

  [(PXSharedLibraryAssistantDatePickerViewController *)self setHasCustomDate:1];
  [(PXSharedLibraryAssistantDatePickerViewController *)self _updateStartDateCell];

  [(PXSharedLibraryAssistantDatePickerViewController *)self _updateFooterText];
}

- (id)_datePickerCellForTableView:(id)a3
{
  v28[4] = *MEMORY[0x1E69E9840];
  datePickerCell = self->_datePickerCell;
  if (!datePickerCell)
  {
    v5 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:0 reuseIdentifier:0];
    v6 = self->_datePickerCell;
    self->_datePickerCell = v5;

    v7 = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
    [(UITableViewCell *)self->_datePickerCell setBackgroundColor:v7];

    v8 = objc_alloc_init(MEMORY[0x1E69DC920]);
    datePicker = self->_datePicker;
    self->_datePicker = v8;

    [(UIDatePicker *)self->_datePicker setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIDatePicker *)self->_datePicker _setCustomFontDesign:*MEMORY[0x1E69DB8D8]];
    [(UIDatePicker *)self->_datePicker setDatePickerMode:1];
    [(UIDatePicker *)self->_datePicker setPreferredDatePickerStyle:3];
    v10 = [(PXSharedLibraryAssistantDatePickerViewController *)self pickedDate];
    [(UIDatePicker *)self->_datePicker setDate:v10];

    v11 = [MEMORY[0x1E695DF00] date];
    [(UIDatePicker *)self->_datePicker setMaximumDate:v11];

    [(UIDatePicker *)self->_datePicker addTarget:self action:sel__datePickerDidChange_ forControlEvents:4096];
    v12 = [(UITableViewCell *)self->_datePickerCell contentView];
    [v12 addSubview:self->_datePicker];
    v22 = MEMORY[0x1E696ACD8];
    v27 = [(UIDatePicker *)self->_datePicker topAnchor];
    v26 = [v12 topAnchor];
    v25 = [v27 constraintEqualToAnchor:v26];
    v28[0] = v25;
    v24 = [(UIDatePicker *)self->_datePicker leadingAnchor];
    v23 = [v12 leadingAnchor];
    v21 = [v24 constraintEqualToAnchor:v23];
    v28[1] = v21;
    v13 = [(UIDatePicker *)self->_datePicker bottomAnchor];
    v14 = [v12 bottomAnchor];
    v15 = [v13 constraintEqualToAnchor:v14];
    v28[2] = v15;
    v16 = [(UIDatePicker *)self->_datePicker trailingAnchor];
    v17 = [v12 trailingAnchor];
    v18 = [v16 constraintEqualToAnchor:v17];
    v28[3] = v18;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:4];
    [v22 activateConstraints:v19];

    datePickerCell = self->_datePickerCell;
  }

  return datePickerCell;
}

- (id)_startDateCellForTableView:(id)a3
{
  startDateCell = self->_startDateCell;
  if (!startDateCell)
  {
    v5 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:1 reuseIdentifier:0];
    v6 = self->_startDateCell;
    self->_startDateCell = v5;

    v7 = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
    [(UITableViewCell *)self->_startDateCell setBackgroundColor:v7];

    [(PXSharedLibraryAssistantDatePickerViewController *)self _updateStartDateCell];
    startDateCell = self->_startDateCell;
  }

  return startDateCell;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v14[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  [v6 deselectRowAtIndexPath:v7 animated:1];
  v8 = [v7 row];

  if (!v8)
  {
    isShowingFullPicker = self->_isShowingFullPicker;
    self->_isShowingFullPicker = !isShowingFullPicker;
    v10 = [MEMORY[0x1E696AC88] indexPathForRow:1 inSection:0];
    v11 = v10;
    if (isShowingFullPicker)
    {
      v13 = v10;
      v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:1];
      [v6 deleteRowsAtIndexPaths:v12 withRowAnimation:100];
    }

    else
    {
      v14[0] = v10;
      v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
      [v6 insertRowsAtIndexPaths:v12 withRowAnimation:100];
    }
  }
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [v8 item];
  if (v9 == 1)
  {
    v10 = [(PXSharedLibraryAssistantDatePickerViewController *)self _datePickerCellForTableView:v7];
  }

  else
  {
    if (v9)
    {
      v13 = [MEMORY[0x1E696AAA8] currentHandler];
      [v13 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryAssistantDatePickerViewController+iOS.m" lineNumber:106 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    v10 = [(PXSharedLibraryAssistantDatePickerViewController *)self _startDateCellForTableView:v7];
  }

  v11 = v10;

  return v11;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  if (self->_isShowingFullPicker)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (void)viewDidLoad
{
  v15.receiver = self;
  v15.super_class = PXSharedLibraryAssistantDatePickerViewController;
  [(OBTableWelcomeController *)&v15 viewDidLoad];
  [(PXSharedLibraryAssistantDatePickerViewController *)self restorePickerDate];
  [(PXSharedLibraryAssistantDatePickerViewController *)self _updateHeaderText];
  v3 = objc_alloc(MEMORY[0x1E69DD020]);
  v4 = [v3 initWithFrame:2 style:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [v4 setBackgroundColor:v5];

  [v4 setDataSource:self];
  [v4 setDelegate:self];
  [(OBTableWelcomeController *)self setTableView:v4];
  v6 = [MEMORY[0x1E69B7D00] boldButton];
  titleButton = self->_titleButton;
  self->_titleButton = v6;

  v8 = self->_titleButton;
  v9 = PXLocalizedSharedLibraryString(@"PXSharedLibraryAssistant_ButtonTitle_Continue");
  [(OBBoldTrayButton *)v8 setTitle:v9 forState:0];

  [(OBBoldTrayButton *)self->_titleButton addTarget:self action:sel_continueButtonTapped_ forControlEvents:0x2000];
  v10 = [(PXSharedLibraryAssistantDatePickerViewController *)self buttonTray];
  [v10 addButton:self->_titleButton];

  v11 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:@"\r" modifierFlags:0 action:sel_continueButtonTapped_];
  [(PXSharedLibraryAssistantDatePickerViewController *)self addKeyCommand:v11];

  v12 = [MEMORY[0x1E69B7D38] linkButton];
  v13 = PXLocalizedSharedLibraryString(@"PXSharedLibraryAssistant_ButtonTitle_Skip");
  [v12 setTitle:v13 forState:0];

  [v12 addTarget:self action:sel_skipButtonTapped_ forControlEvents:0x2000];
  v14 = [(PXSharedLibraryAssistantDatePickerViewController *)self buttonTray];
  [v14 addButton:v12];

  [(PXSharedLibraryAssistantDatePickerViewController *)self _updateFooterText];
}

- (PXSharedLibraryAssistantDatePickerViewController)initWithViewModel:(id)a3
{
  v5 = a3;
  v6 = PXLocalizedSharedLibraryString(@"PXSharedLibraryAssistant_DateSelection_Title");
  v10.receiver = self;
  v10.super_class = PXSharedLibraryAssistantDatePickerViewController;
  v7 = [(OBTableWelcomeController *)&v10 initWithTitle:v6 detailText:0 icon:0 adoptTableViewScrollView:1];

  if (v7)
  {
    objc_storeStrong(&v7->_viewModel, a3);
    v8 = [(PXSharedLibraryAssistantViewModel *)v7->_viewModel startDate];

    if (v8)
    {
      [(PXSharedLibraryAssistantDatePickerViewController *)v7 setHasCustomDate:1];
    }

    [v5 registerChangeObserver:v7 context:PXSharedLibraryAssistantDatePickerViewModelObservationContext];
  }

  return v7;
}

- (void)_continueAssistant
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = [(PXSharedLibraryAssistantDatePickerViewController *)self assistantViewControllerDelegate];
  if (!v3)
  {
    PXAssertGetLog();
  }

  [v3 stepForwardInAssistantForAssistantViewController:self];
}

- (void)_updateViewModelForStartDate:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PXSharedLibraryAssistantDatePickerViewController *)self viewModel];
  v9 = [v8 personUUIDs];
  v10 = v9;
  if (v6)
  {
    v11 = 2;
  }

  else
  {
    v11 = 2 * ([v9 count] != 0);
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __109__PXSharedLibraryAssistantDatePickerViewController_Internal___updateViewModelForStartDate_completionHandler___block_invoke;
  v13[3] = &unk_1E7746200;
  v14 = v6;
  v15 = v11;
  v12 = v6;
  [v8 performChanges:v13 shareCountsCompletionHandler:v7];
}

void __109__PXSharedLibraryAssistantDatePickerViewController_Internal___updateViewModelForStartDate_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setStartDate:v3];
  [v4 setAutoSharePolicy:*(a1 + 40)];
}

- (void)usePickedDateAndContinueWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(PXSharedLibraryAssistantDatePickerViewController *)self pickedDate];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __108__PXSharedLibraryAssistantDatePickerViewController_Internal__usePickedDateAndContinueWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E774C2F0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(PXSharedLibraryAssistantDatePickerViewController *)self _updateViewModelForStartDate:v5 completionHandler:v7];
}

uint64_t __108__PXSharedLibraryAssistantDatePickerViewController_Internal__usePickedDateAndContinueWithCompletionHandler___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 _continueAssistant];
}

- (void)skipPickedDateAndContinue
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __87__PXSharedLibraryAssistantDatePickerViewController_Internal__skipPickedDateAndContinue__block_invoke;
  v2[3] = &unk_1E774C648;
  v2[4] = self;
  [(PXSharedLibraryAssistantDatePickerViewController *)self _updateViewModelForStartDate:0 completionHandler:v2];
}

- (void)_resetPickerWithDate:(id)a3
{
  v4 = a3;
  [(PXSharedLibraryAssistantDatePickerViewController *)self truncateAndSetPickedDate:v4];
  v5 = [(PXSharedLibraryAssistantDatePickerViewController *)self datePicker];
  [v5 setDate:v4];
}

- (void)resetPickerDate
{
  v4 = [(PXSharedLibraryAssistantDatePickerViewController *)self viewModel];
  v3 = [v4 suggestedStartDate];
  if (![(PXSharedLibraryAssistantDatePickerViewController *)self hasCustomDate]&& v3)
  {
    [v4 performChanges:&__block_literal_global_216085];
    [(PXSharedLibraryAssistantDatePickerViewController *)self _resetPickerWithDate:v3];
  }
}

- (void)restorePickerDate
{
  v3 = [(PXSharedLibraryAssistantDatePickerViewController *)self viewModel];
  v4 = [v3 startDate];

  if (v4)
  {
    [(PXSharedLibraryAssistantDatePickerViewController *)self _resetPickerWithDate:v4];
  }

  else
  {
    [(PXSharedLibraryAssistantDatePickerViewController *)self resetPickerDate];
  }
}

- (void)truncateAndSetPickedDate:(id)a3
{
  v8 = a3;
  if (!v8)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryAssistantDatePickerViewController+Internal.m" lineNumber:53 description:{@"Invalid parameter not satisfying: %@", @"date"}];
  }

  v5 = [MEMORY[0x1E695DEE8] currentCalendar];
  v6 = [v8 px_dateTruncatedToCalendarUnit:16 calendar:v5];

  [(PXSharedLibraryAssistantDatePickerViewController *)self setPickedDate:v6];
}

- (void)footerTextWithCompletion:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryAssistantDatePickerViewController+Internal.m" lineNumber:23 description:{@"Invalid parameter not satisfying: %@", @"completion"}];
  }

  v6 = [(PXSharedLibraryAssistantDatePickerViewController *)self viewModel];
  v7 = [v6 sourceLibraryInfo];
  v8 = [(PXSharedLibraryAssistantDatePickerViewController *)self pickedDate];
  v9 = [v6 personUUIDs];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __87__PXSharedLibraryAssistantDatePickerViewController_Internal__footerTextWithCompletion___block_invoke;
  v13[3] = &unk_1E77461B8;
  v14 = v6;
  v15 = self;
  v16 = v5;
  v10 = v5;
  v11 = v6;
  [v7 fetchEstimatedAssetsCountsForStartDate:v8 personUUIDs:v9 completion:v13];
}

void __87__PXSharedLibraryAssistantDatePickerViewController_Internal__footerTextWithCompletion___block_invoke(uint64_t a1, __int128 *a2)
{
  if (*a2 == 0x7FFFFFFFFFFFFFFFLL || *(a2 + 1) == 0x7FFFFFFFFFFFFFFFLL || *(a2 + 2) == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = 0;
  }

  else
  {
    v12 = 0;
    v6 = [*(a1 + 32) localizedSelectedPeopleWithAdditionalPeopleCount:&v12];
    v7 = v12;
    v8 = [*(a1 + 40) hasCustomDate];
    v10 = *a2;
    v11 = *(a2 + 2);
    v9 = PXSharedLibraryAssistantDateSelectionFooter(&v10, v6, v7, v8 ^ 1);
  }

  (*(*(a1 + 48) + 16))();
}

@end