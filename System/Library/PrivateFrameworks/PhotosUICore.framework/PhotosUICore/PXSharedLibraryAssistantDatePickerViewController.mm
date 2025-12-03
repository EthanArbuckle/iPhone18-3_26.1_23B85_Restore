@interface PXSharedLibraryAssistantDatePickerViewController
- (PXAssistantViewControllerDelegate)assistantViewControllerDelegate;
- (PXSharedLibraryAssistantDatePickerViewController)initWithViewModel:(id)model;
- (id)_datePickerCellForTableView:(id)view;
- (id)_startDateCellForTableView:(id)view;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_continueAssistant;
- (void)_datePickerDidChange:(id)change;
- (void)_resetPickerWithDate:(id)date;
- (void)_updateFooterText;
- (void)_updateHeaderText;
- (void)_updateStartDateCell;
- (void)_updateViewModelForStartDate:(id)date completionHandler:(id)handler;
- (void)continueButtonTapped:(id)tapped;
- (void)footerTextWithCompletion:(id)completion;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)resetPickerDate;
- (void)restorePickerDate;
- (void)skipPickedDateAndContinue;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)truncateAndSetPickedDate:(id)date;
- (void)usePickedDateAndContinueWithCompletionHandler:(id)handler;
- (void)viewDidLoad;
@end

@implementation PXSharedLibraryAssistantDatePickerViewController

- (PXAssistantViewControllerDelegate)assistantViewControllerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->assistantViewControllerDelegate);

  return WeakRetained;
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  if ((change & 0x2088) != 0 && PXSharedLibraryAssistantDatePickerViewModelObservationContext == context)
  {
    [(PXSharedLibraryAssistantDatePickerViewController *)self resetPickerDate];
    [(PXSharedLibraryAssistantDatePickerViewController *)self _updateStartDateCell];
    [(PXSharedLibraryAssistantDatePickerViewController *)self _updateFooterText];

    [(PXSharedLibraryAssistantDatePickerViewController *)self _updateHeaderText];
  }
}

- (void)continueButtonTapped:(id)tapped
{
  navigationItem = [(OBBaseWelcomeController *)self navigationItem];
  titleButton = [(PXSharedLibraryAssistantDatePickerViewController *)self titleButton];
  [navigationItem setHidesBackButton:1];
  [titleButton setEnabled:0];
  [titleButton showsBusyIndicator];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __73__PXSharedLibraryAssistantDatePickerViewController_continueButtonTapped___block_invoke;
  v8[3] = &unk_1E774C620;
  v9 = titleButton;
  v10 = navigationItem;
  v6 = navigationItem;
  v7 = titleButton;
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
  viewModel = [(PXSharedLibraryAssistantDatePickerViewController *)self viewModel];
  v5 = [viewModel localizedSelectedPeopleWithAdditionalPeopleCount:&v9];

  v6 = PXSharedLibraryAssistantDateSelectionSubtitle(v5, v9);
  headerView = [(PXSharedLibraryAssistantDatePickerViewController *)self headerView];
  [headerView setTitle:v3];

  headerView2 = [(PXSharedLibraryAssistantDatePickerViewController *)self headerView];
  [headerView2 setDetailText:v6];
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
  valueCellConfiguration = [MEMORY[0x1E69DCC28] valueCellConfiguration];
  v3 = PXLocalizedSharedLibraryString(@"PXSharedLibraryAssistant_DateSelection_PickerDetail");
  [valueCellConfiguration setText:v3];

  pickedDate = [(PXSharedLibraryAssistantDatePickerViewController *)self pickedDate];
  v5 = PXSharedLibraryAssistantCustomizeRulesExcludingFromStartDate(pickedDate);
  [valueCellConfiguration setSecondaryText:v5];

  systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
  secondaryTextProperties = [valueCellConfiguration secondaryTextProperties];
  [secondaryTextProperties setColor:systemBlueColor];

  [(UITableViewCell *)self->_startDateCell setContentConfiguration:valueCellConfiguration];
}

- (void)_datePickerDidChange:(id)change
{
  date = [change date];
  [(PXSharedLibraryAssistantDatePickerViewController *)self truncateAndSetPickedDate:date];

  [(PXSharedLibraryAssistantDatePickerViewController *)self setHasCustomDate:1];
  [(PXSharedLibraryAssistantDatePickerViewController *)self _updateStartDateCell];

  [(PXSharedLibraryAssistantDatePickerViewController *)self _updateFooterText];
}

- (id)_datePickerCellForTableView:(id)view
{
  v28[4] = *MEMORY[0x1E69E9840];
  datePickerCell = self->_datePickerCell;
  if (!datePickerCell)
  {
    v5 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:0 reuseIdentifier:0];
    v6 = self->_datePickerCell;
    self->_datePickerCell = v5;

    secondarySystemBackgroundColor = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
    [(UITableViewCell *)self->_datePickerCell setBackgroundColor:secondarySystemBackgroundColor];

    v8 = objc_alloc_init(MEMORY[0x1E69DC920]);
    datePicker = self->_datePicker;
    self->_datePicker = v8;

    [(UIDatePicker *)self->_datePicker setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIDatePicker *)self->_datePicker _setCustomFontDesign:*MEMORY[0x1E69DB8D8]];
    [(UIDatePicker *)self->_datePicker setDatePickerMode:1];
    [(UIDatePicker *)self->_datePicker setPreferredDatePickerStyle:3];
    pickedDate = [(PXSharedLibraryAssistantDatePickerViewController *)self pickedDate];
    [(UIDatePicker *)self->_datePicker setDate:pickedDate];

    date = [MEMORY[0x1E695DF00] date];
    [(UIDatePicker *)self->_datePicker setMaximumDate:date];

    [(UIDatePicker *)self->_datePicker addTarget:self action:sel__datePickerDidChange_ forControlEvents:4096];
    contentView = [(UITableViewCell *)self->_datePickerCell contentView];
    [contentView addSubview:self->_datePicker];
    v22 = MEMORY[0x1E696ACD8];
    topAnchor = [(UIDatePicker *)self->_datePicker topAnchor];
    topAnchor2 = [contentView topAnchor];
    v25 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v28[0] = v25;
    leadingAnchor = [(UIDatePicker *)self->_datePicker leadingAnchor];
    leadingAnchor2 = [contentView leadingAnchor];
    v21 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v28[1] = v21;
    bottomAnchor = [(UIDatePicker *)self->_datePicker bottomAnchor];
    bottomAnchor2 = [contentView bottomAnchor];
    v15 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v28[2] = v15;
    trailingAnchor = [(UIDatePicker *)self->_datePicker trailingAnchor];
    trailingAnchor2 = [contentView trailingAnchor];
    v18 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v28[3] = v18;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:4];
    [v22 activateConstraints:v19];

    datePickerCell = self->_datePickerCell;
  }

  return datePickerCell;
}

- (id)_startDateCellForTableView:(id)view
{
  startDateCell = self->_startDateCell;
  if (!startDateCell)
  {
    v5 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:1 reuseIdentifier:0];
    v6 = self->_startDateCell;
    self->_startDateCell = v5;

    secondarySystemBackgroundColor = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
    [(UITableViewCell *)self->_startDateCell setBackgroundColor:secondarySystemBackgroundColor];

    [(PXSharedLibraryAssistantDatePickerViewController *)self _updateStartDateCell];
    startDateCell = self->_startDateCell;
  }

  return startDateCell;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v14[1] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  pathCopy = path;
  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
  v8 = [pathCopy row];

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
      [viewCopy deleteRowsAtIndexPaths:v12 withRowAnimation:100];
    }

    else
    {
      v14[0] = v10;
      v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
      [viewCopy insertRowsAtIndexPaths:v12 withRowAnimation:100];
    }
  }
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  item = [pathCopy item];
  if (item == 1)
  {
    v10 = [(PXSharedLibraryAssistantDatePickerViewController *)self _datePickerCellForTableView:viewCopy];
  }

  else
  {
    if (item)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXSharedLibraryAssistantDatePickerViewController+iOS.m" lineNumber:106 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    v10 = [(PXSharedLibraryAssistantDatePickerViewController *)self _startDateCellForTableView:viewCopy];
  }

  v11 = v10;

  return v11;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
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
  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [v4 setBackgroundColor:systemBackgroundColor];

  [v4 setDataSource:self];
  [v4 setDelegate:self];
  [(OBTableWelcomeController *)self setTableView:v4];
  boldButton = [MEMORY[0x1E69B7D00] boldButton];
  titleButton = self->_titleButton;
  self->_titleButton = boldButton;

  v8 = self->_titleButton;
  v9 = PXLocalizedSharedLibraryString(@"PXSharedLibraryAssistant_ButtonTitle_Continue");
  [(OBBoldTrayButton *)v8 setTitle:v9 forState:0];

  [(OBBoldTrayButton *)self->_titleButton addTarget:self action:sel_continueButtonTapped_ forControlEvents:0x2000];
  buttonTray = [(PXSharedLibraryAssistantDatePickerViewController *)self buttonTray];
  [buttonTray addButton:self->_titleButton];

  v11 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:@"\r" modifierFlags:0 action:sel_continueButtonTapped_];
  [(PXSharedLibraryAssistantDatePickerViewController *)self addKeyCommand:v11];

  linkButton = [MEMORY[0x1E69B7D38] linkButton];
  v13 = PXLocalizedSharedLibraryString(@"PXSharedLibraryAssistant_ButtonTitle_Skip");
  [linkButton setTitle:v13 forState:0];

  [linkButton addTarget:self action:sel_skipButtonTapped_ forControlEvents:0x2000];
  buttonTray2 = [(PXSharedLibraryAssistantDatePickerViewController *)self buttonTray];
  [buttonTray2 addButton:linkButton];

  [(PXSharedLibraryAssistantDatePickerViewController *)self _updateFooterText];
}

- (PXSharedLibraryAssistantDatePickerViewController)initWithViewModel:(id)model
{
  modelCopy = model;
  v6 = PXLocalizedSharedLibraryString(@"PXSharedLibraryAssistant_DateSelection_Title");
  v10.receiver = self;
  v10.super_class = PXSharedLibraryAssistantDatePickerViewController;
  v7 = [(OBTableWelcomeController *)&v10 initWithTitle:v6 detailText:0 icon:0 adoptTableViewScrollView:1];

  if (v7)
  {
    objc_storeStrong(&v7->_viewModel, model);
    startDate = [(PXSharedLibraryAssistantViewModel *)v7->_viewModel startDate];

    if (startDate)
    {
      [(PXSharedLibraryAssistantDatePickerViewController *)v7 setHasCustomDate:1];
    }

    [modelCopy registerChangeObserver:v7 context:PXSharedLibraryAssistantDatePickerViewModelObservationContext];
  }

  return v7;
}

- (void)_continueAssistant
{
  v4 = *MEMORY[0x1E69E9840];
  assistantViewControllerDelegate = [(PXSharedLibraryAssistantDatePickerViewController *)self assistantViewControllerDelegate];
  if (!assistantViewControllerDelegate)
  {
    PXAssertGetLog();
  }

  [assistantViewControllerDelegate stepForwardInAssistantForAssistantViewController:self];
}

- (void)_updateViewModelForStartDate:(id)date completionHandler:(id)handler
{
  dateCopy = date;
  handlerCopy = handler;
  viewModel = [(PXSharedLibraryAssistantDatePickerViewController *)self viewModel];
  personUUIDs = [viewModel personUUIDs];
  v10 = personUUIDs;
  if (dateCopy)
  {
    v11 = 2;
  }

  else
  {
    v11 = 2 * ([personUUIDs count] != 0);
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __109__PXSharedLibraryAssistantDatePickerViewController_Internal___updateViewModelForStartDate_completionHandler___block_invoke;
  v13[3] = &unk_1E7746200;
  v14 = dateCopy;
  v15 = v11;
  v12 = dateCopy;
  [viewModel performChanges:v13 shareCountsCompletionHandler:handlerCopy];
}

void __109__PXSharedLibraryAssistantDatePickerViewController_Internal___updateViewModelForStartDate_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setStartDate:v3];
  [v4 setAutoSharePolicy:*(a1 + 40)];
}

- (void)usePickedDateAndContinueWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  pickedDate = [(PXSharedLibraryAssistantDatePickerViewController *)self pickedDate];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __108__PXSharedLibraryAssistantDatePickerViewController_Internal__usePickedDateAndContinueWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E774C2F0;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [(PXSharedLibraryAssistantDatePickerViewController *)self _updateViewModelForStartDate:pickedDate completionHandler:v7];
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

- (void)_resetPickerWithDate:(id)date
{
  dateCopy = date;
  [(PXSharedLibraryAssistantDatePickerViewController *)self truncateAndSetPickedDate:dateCopy];
  datePicker = [(PXSharedLibraryAssistantDatePickerViewController *)self datePicker];
  [datePicker setDate:dateCopy];
}

- (void)resetPickerDate
{
  viewModel = [(PXSharedLibraryAssistantDatePickerViewController *)self viewModel];
  suggestedStartDate = [viewModel suggestedStartDate];
  if (![(PXSharedLibraryAssistantDatePickerViewController *)self hasCustomDate]&& suggestedStartDate)
  {
    [viewModel performChanges:&__block_literal_global_216085];
    [(PXSharedLibraryAssistantDatePickerViewController *)self _resetPickerWithDate:suggestedStartDate];
  }
}

- (void)restorePickerDate
{
  viewModel = [(PXSharedLibraryAssistantDatePickerViewController *)self viewModel];
  startDate = [viewModel startDate];

  if (startDate)
  {
    [(PXSharedLibraryAssistantDatePickerViewController *)self _resetPickerWithDate:startDate];
  }

  else
  {
    [(PXSharedLibraryAssistantDatePickerViewController *)self resetPickerDate];
  }
}

- (void)truncateAndSetPickedDate:(id)date
{
  dateCopy = date;
  if (!dateCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSharedLibraryAssistantDatePickerViewController+Internal.m" lineNumber:53 description:{@"Invalid parameter not satisfying: %@", @"date"}];
  }

  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  v6 = [dateCopy px_dateTruncatedToCalendarUnit:16 calendar:currentCalendar];

  [(PXSharedLibraryAssistantDatePickerViewController *)self setPickedDate:v6];
}

- (void)footerTextWithCompletion:(id)completion
{
  completionCopy = completion;
  if (!completionCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSharedLibraryAssistantDatePickerViewController+Internal.m" lineNumber:23 description:{@"Invalid parameter not satisfying: %@", @"completion"}];
  }

  viewModel = [(PXSharedLibraryAssistantDatePickerViewController *)self viewModel];
  sourceLibraryInfo = [viewModel sourceLibraryInfo];
  pickedDate = [(PXSharedLibraryAssistantDatePickerViewController *)self pickedDate];
  personUUIDs = [viewModel personUUIDs];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __87__PXSharedLibraryAssistantDatePickerViewController_Internal__footerTextWithCompletion___block_invoke;
  v13[3] = &unk_1E77461B8;
  v14 = viewModel;
  selfCopy = self;
  v16 = completionCopy;
  v10 = completionCopy;
  v11 = viewModel;
  [sourceLibraryInfo fetchEstimatedAssetsCountsForStartDate:pickedDate personUUIDs:personUUIDs completion:v13];
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