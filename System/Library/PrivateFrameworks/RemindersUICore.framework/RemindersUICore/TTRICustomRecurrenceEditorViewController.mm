@interface TTRICustomRecurrenceEditorViewController
+ (BOOL)isRecurrenceRuleOrdinal:(id)ordinal;
- (BOOL)prohibitsMultipleDaysInMonthlyRecurrence;
- (BOOL)prohibitsMultipleMonthsInYearlyRecurrence;
- (CGSize)calculatePreferredContentSize;
- (TTRICustomRecurrenceEditorViewController)initWithNibName:(id)name bundle:(id)bundle;
- (TTRICustomRecurrenceEditorViewController)initWithStartDate:(id)date timeZone:(id)zone;
- (TTRIRecurrenceChooserController)currentChooser;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)_availableRecurrenceFrequencies;
- (id)_chooserForFrequency:(int64_t)frequency;
- (id)_localizedEveryStringForFrequency:(int64_t)frequency interval:(int64_t)interval;
- (id)_stringForFrequency:(int64_t)frequency;
- (id)_stringForFrequency:(int64_t)frequency interval:(int64_t)interval;
- (id)frequencyTypeMenu;
- (id)recurrenceRule;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForFooterInSection:(int64_t)section;
- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path;
- (int64_t)_numberOfRowsForSection:(int64_t)section;
- (int64_t)_tagForIndexPath:(id)path;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (void)_createChoosersAndControls;
- (void)_frequencyUpdated;
- (void)_refreshCacheAndPickers;
- (void)_updateCustomPickerView;
- (void)_updateFrequencyRows;
- (void)_updateRecurrenceRule;
- (void)_updateRecurrenceRuleWithoutBatching;
- (void)_updateSummaryLabel;
- (void)_updateTableSectionsFromFrequency:(int64_t)frequency toFrequency:(int64_t)toFrequency;
- (void)_yearOrdinalSwitchChanged:(id)changed;
- (void)didSelectFrequencyType:(int64_t)type;
- (void)didSelectIntervalType:(int64_t)type;
- (void)didTapCommit;
- (void)loadView;
- (void)presentationControllerWillDismiss:(id)dismiss;
- (void)queuePreferredContentSizeRefresh;
- (void)recurrenceChooser:(id)chooser wantsRowReload:(int64_t)reload;
- (void)recurrenceChooserWantsReload:(id)reload;
- (void)setProhibitsHourlyRecurrence:(BOOL)recurrence;
- (void)setProhibitsMultipleDaysInMonthlyRecurrence:(BOOL)recurrence;
- (void)setProhibitsMultipleMonthsInYearlyRecurrence:(BOOL)recurrence;
- (void)setRecurrenceRule:(id)rule shouldUpdatePickers:(BOOL)pickers;
- (void)stopEditingIfNeeded;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation TTRICustomRecurrenceEditorViewController

- (TTRICustomRecurrenceEditorViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v13.receiver = self;
  v13.super_class = TTRICustomRecurrenceEditorViewController;
  v4 = [(TTRICustomRecurrenceEditorViewController *)&v13 initWithNibName:name bundle:bundle];
  v5 = v4;
  if (v4)
  {
    v4->_cachedFrequency = 0;
    v4->_cachedInterval = 1;
    date = [MEMORY[0x277CBEAA8] date];
    startDate = v5->_startDate;
    v5->_startDate = date;

    systemTimeZone = [MEMORY[0x277CBEBB0] systemTimeZone];
    timeZone = v5->_timeZone;
    v5->_timeZone = systemTimeZone;

    v10 = RemindersUICoreBundleGet();
    v11 = [v10 localizedStringForKey:@"CUSTOM_RECURRENCE_LABEL" value:@"Custom" table:@"Localizable"];
    [(TTRICustomRecurrenceEditorViewController *)v5 setTitle:v11];
  }

  return v5;
}

- (TTRICustomRecurrenceEditorViewController)initWithStartDate:(id)date timeZone:(id)zone
{
  dateCopy = date;
  zoneCopy = zone;
  v9 = [(TTRICustomRecurrenceEditorViewController *)self initWithNibName:0 bundle:0];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_startDate, date);
    objc_storeStrong(&v10->_timeZone, zone);
    [(TTRICustomRecurrenceEditorViewController *)v10 _createChoosersAndControls];
  }

  return v10;
}

- (void)loadView
{
  v3 = objc_alloc(MEMORY[0x277D75B40]);
  v4 = [v3 initWithFrame:2 style:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [(TTRICustomRecurrenceEditorViewController *)self setTableView:v4];

  tableView = [(TTRICustomRecurrenceEditorViewController *)self tableView];
  [tableView setDelegate:self];

  tableView2 = [(TTRICustomRecurrenceEditorViewController *)self tableView];
  [tableView2 setDataSource:self];

  v7 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  [v7 lineHeight];
  v9 = v8;
  tableView3 = [(TTRICustomRecurrenceEditorViewController *)self tableView];
  [tableView3 setEstimatedRowHeight:v9];

  tableView4 = [(TTRICustomRecurrenceEditorViewController *)self tableView];
  [tableView4 setKeyboardDismissMode:1];

  tableView5 = [(TTRICustomRecurrenceEditorViewController *)self tableView];
  [(TTRICustomRecurrenceEditorViewController *)self setView:tableView5];
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = TTRICustomRecurrenceEditorViewController;
  [(TTRICustomRecurrenceEditorViewController *)&v5 viewDidLoad];
  v3 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:self action:sel_didTapCommit];
  navigationItem = [(TTRICustomRecurrenceEditorViewController *)self navigationItem];
  [navigationItem setRightBarButtonItem:v3];
}

- (void)queuePreferredContentSizeRefresh
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__TTRICustomRecurrenceEditorViewController_queuePreferredContentSizeRefresh__block_invoke;
  block[3] = &unk_27832D498;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __76__TTRICustomRecurrenceEditorViewController_queuePreferredContentSizeRefresh__block_invoke(uint64_t a1)
{
  [*(a1 + 32) calculatePreferredContentSize];
  v2 = *(a1 + 32);

  return [v2 setPreferredContentSize:?];
}

- (CGSize)calculatePreferredContentSize
{
  tableView = [(TTRICustomRecurrenceEditorViewController *)self tableView];
  [tableView contentSize];
  v4 = v3;

  v5 = 320.0;
  v6 = v4;
  result.height = v6;
  result.width = v5;
  return result;
}

- (void)_createChoosersAndControls
{
  v3 = [[TTRIRecurrenceWeekdayChooserController alloc] initWithDate:self->_startDate];
  weeklyChooser = self->_weeklyChooser;
  self->_weeklyChooser = v3;

  [(TTRIRecurrenceChooserController *)self->_weeklyChooser setDelegate:self];
  v5 = [[TTRIRecurrenceMonthlyChooserController alloc] initWithDate:self->_startDate];
  monthlyChooser = self->_monthlyChooser;
  self->_monthlyChooser = v5;

  [(TTRIRecurrenceMonthlyChooserController *)self->_monthlyChooser setDelegate:self];
  v7 = [[TTRIRecurrenceMonthChooserController alloc] initWithDate:self->_startDate];
  yearlyChooser = self->_yearlyChooser;
  self->_yearlyChooser = v7;

  [(TTRIRecurrenceChooserController *)self->_yearlyChooser setDelegate:self];
  v9 = [[TTRIRecurrenceOrdinalChooserController alloc] initWithDate:self->_startDate];
  yearlyOrdinalChooser = self->_yearlyOrdinalChooser;
  self->_yearlyOrdinalChooser = v9;

  [(TTRIRecurrenceChooserController *)self->_yearlyOrdinalChooser setDelegate:self];
  v11 = objc_opt_new();
  yearOrdinalSwitch = self->_yearOrdinalSwitch;
  self->_yearOrdinalSwitch = v11;

  [(UISwitch *)self->_yearOrdinalSwitch addTarget:self action:sel__yearOrdinalSwitchChanged_ forControlEvents:4096];
  v13 = [TTRICustomRecurrenceEditorTableViewCell alloc];
  v14 = *MEMORY[0x277CBF3A0];
  v15 = *(MEMORY[0x277CBF3A0] + 8);
  v16 = *(MEMORY[0x277CBF3A0] + 16);
  v17 = *(MEMORY[0x277CBF3A0] + 24);
  v18 = [(TTRICustomRecurrenceEditorTableViewCell *)v13 initWithFrame:*MEMORY[0x277CBF3A0], v15, v16, v17];
  frequencySummaryCell = self->_frequencySummaryCell;
  self->_frequencySummaryCell = v18;

  v20 = self->_frequencySummaryCell;
  v21 = RemindersUICoreBundleGet();
  v22 = [v21 localizedStringForKey:@"Frequency" value:@"Frequency" table:@"Localizable"];
  [(TTRIPopupMenuTableViewCell *)v20 setTitle:v22];

  v23 = self->_frequencySummaryCell;
  frequencyTypeMenu = [(TTRICustomRecurrenceEditorViewController *)self frequencyTypeMenu];
  [(TTRIPopupMenuTableViewCell *)v23 setPopupMenu:frequencyTypeMenu];

  v25 = self->_frequencySummaryCell;
  v26 = [(TTRICustomRecurrenceEditorViewController *)self _stringForFrequency:self->_cachedFrequency];
  [(TTRIPopupMenuTableViewCell *)v25 setAccessoryTitle:v26];

  v27 = [[TTRICustomRecurrenceEditorIntervalChooserTableViewCell alloc] initWithFrame:v14, v15, v16, v17];
  intervalSummaryCell = self->_intervalSummaryCell;
  self->_intervalSummaryCell = v27;

  [(TTRICustomRecurrenceEditorIntervalChooserTableViewCell *)self->_intervalSummaryCell setIntervalValue:1];
  v29 = self->_intervalSummaryCell;

  [(TTRICustomRecurrenceEditorIntervalChooserTableViewCell *)v29 setDelegate:self];
}

- (void)viewWillAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = TTRICustomRecurrenceEditorViewController;
  [(TTRICustomRecurrenceEditorViewController *)&v5 viewWillAppear:appear];
  [(TTRICustomRecurrenceEditorViewController *)self queuePreferredContentSizeRefresh];
  presentationController = [(TTRICustomRecurrenceEditorViewController *)self presentationController];
  [presentationController setDelegate:self];
}

- (void)setProhibitsHourlyRecurrence:(BOOL)recurrence
{
  if (self->_prohibitsHourlyRecurrence != recurrence)
  {
    self->_prohibitsHourlyRecurrence = recurrence;
    cachedAvailableRecurrenceFrequencies = [(TTRICustomRecurrenceEditorViewController *)self cachedAvailableRecurrenceFrequencies];

    if (cachedAvailableRecurrenceFrequencies)
    {
      [(TTRICustomRecurrenceEditorViewController *)self setCachedAvailableRecurrenceFrequencies:0];

      [(TTRICustomRecurrenceEditorViewController *)self _frequencyUpdated];
    }
  }
}

- (void)didTapCommit
{
  [(TTRICustomRecurrenceEditorViewController *)self stopEditingIfNeeded];
  completionBlock = [(TTRICustomRecurrenceEditorViewController *)self completionBlock];
  recurrenceRule = [(TTRICustomRecurrenceEditorViewController *)self recurrenceRule];
  (completionBlock)[2](completionBlock, recurrenceRule);

  navigationController = [(TTRICustomRecurrenceEditorViewController *)self navigationController];
  [navigationController dismissViewControllerAnimated:1 completion:0];
}

- (void)stopEditingIfNeeded
{
  objc_opt_class();
  view = [(TTRICustomRecurrenceEditorViewController *)self view];
  firstResponder = [view firstResponder];
  v7 = REMDynamicCast();

  view2 = [(TTRICustomRecurrenceEditorViewController *)self view];
  v6 = [v7 isDescendantOfView:view2];

  if (v6)
  {
    [v7 resignFirstResponder];
  }
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v6 = [(TTRICustomRecurrenceEditorViewController *)self _tagForIndexPath:pathCopy];
  v7 = v6;
  v8 = 0;
  if (v6 > 2)
  {
    if (v6 != 3)
    {
      if (v6 == 4)
      {
        yearlyOrdinalChooser = [(TTRICustomRecurrenceEditorViewController *)self yearlyOrdinalChooser];
      }

      else
      {
        if (v6 != 5)
        {
          goto LABEL_11;
        }

        yearlyOrdinalChooser = [(TTRICustomRecurrenceEditorViewController *)self currentChooser];
      }

      v12 = yearlyOrdinalChooser;
      v8 = [yearlyOrdinalChooser cellForRow:{objc_msgSend(pathCopy, "row")}];
      goto LABEL_20;
    }

    goto LABEL_10;
  }

  switch(v6)
  {
    case 0:
LABEL_10:
      v10 = [TTRICustomRecurrenceEditorTableViewCell alloc];
      v8 = [(TTRICustomRecurrenceEditorTableViewCell *)v10 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
      [(TTRICustomRecurrenceEditorIntervalChooserTableViewCell *)v8 setSelectionStyle:0];
      break;
    case 1:
      v8 = self->_frequencySummaryCell;
LABEL_16:
      frequencySummaryCell = self->_frequencySummaryCell;
      v12 = [(TTRICustomRecurrenceEditorViewController *)self _stringForFrequency:self->_cachedFrequency];
      [(TTRIPopupMenuTableViewCell *)frequencySummaryCell setAccessoryTitle:v12];
LABEL_20:

      goto LABEL_21;
    case 2:
      v8 = self->_intervalSummaryCell;
LABEL_19:
      intervalSummaryCell = self->_intervalSummaryCell;
      v14 = [(TTRICustomRecurrenceEditorViewController *)self _stringForFrequency:self->_cachedFrequency interval:self->_cachedInterval];
      [(TTRIPopupMenuTableViewCell *)intervalSummaryCell setAccessoryTitle:v14];

      v15 = self->_intervalSummaryCell;
      v12 = [(TTRICustomRecurrenceEditorViewController *)self _localizedEveryStringForFrequency:self->_cachedFrequency interval:self->_cachedInterval];
      [(TTRIPopupMenuTableViewCell *)v15 setTitle:v12];
      goto LABEL_20;
  }

LABEL_11:
  if (v7 != 3)
  {
    if (v7 == 2)
    {
      goto LABEL_19;
    }

    if (v7 != 1)
    {
      goto LABEL_21;
    }

    goto LABEL_16;
  }

  v17 = RemindersUICoreBundleGet();
  v18 = [v17 localizedStringForKey:@"Days of Week" value:@"Days of Week" table:@"Localizable"];
  objc_opt_class();
  v19 = REMDynamicCast();
  titleLabel = [v19 titleLabel];
  [titleLabel setText:v18];

  [(TTRICustomRecurrenceEditorIntervalChooserTableViewCell *)v8 setAccessoryView:self->_yearOrdinalSwitch];
LABEL_21:

  return v8;
}

- (void)didSelectFrequencyType:(int64_t)type
{
  if (self->_cachedFrequency != type)
  {
    self->_cachedFrequency = type;
    [(TTRICustomRecurrenceEditorViewController *)self _frequencyUpdated];
  }
}

- (void)didSelectIntervalType:(int64_t)type
{
  if (self->_cachedInterval != type)
  {
    self->_cachedInterval = type;
    [(TTRICustomRecurrenceEditorViewController *)self _frequencyUpdated];
  }
}

- (id)frequencyTypeMenu
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  _availableRecurrenceFrequencies = [(TTRICustomRecurrenceEditorViewController *)self _availableRecurrenceFrequencies];
  objc_initWeak(&location, self);
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = _availableRecurrenceFrequencies;
  v5 = [obj countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v5)
  {
    v6 = *v18;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(obj);
        }

        intValue = [*(*(&v17 + 1) + 8 * i) intValue];
        v9 = [(TTRICustomRecurrenceEditorViewController *)self _stringForFrequency:intValue];
        v10 = MEMORY[0x277D750C8];
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = __61__TTRICustomRecurrenceEditorViewController_frequencyTypeMenu__block_invoke;
        v15[3] = &unk_27832D4C0;
        objc_copyWeak(v16, &location);
        v16[1] = intValue;
        v11 = [v10 actionWithTitle:v9 image:0 identifier:0 handler:v15];
        [v11 setState:self->_cachedFrequency == intValue];
        [v3 addObject:v11];

        objc_destroyWeak(v16);
      }

      v5 = [obj countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v5);
  }

  v12 = [MEMORY[0x277D75710] menuWithChildren:v3];
  objc_destroyWeak(&location);

  return v12;
}

void __61__TTRICustomRecurrenceEditorViewController_frequencyTypeMenu__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained didSelectFrequencyType:*(a1 + 40)];
    WeakRetained = v3;
  }
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  v3 = self->_cachedFrequency - 1;
  if (v3 > 2)
  {
    return 1;
  }

  else
  {
    return qword_21DC05F58[v3];
  }
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v9 = [(TTRICustomRecurrenceEditorViewController *)self _tagForIndexPath:pathCopy];
  if (v9 >= 4)
  {
    if (v9 == 5)
    {
      currentChooser = [(TTRICustomRecurrenceEditorViewController *)self currentChooser];
    }

    else
    {
      if (v9 != 4)
      {
        goto LABEL_8;
      }

      currentChooser = [(TTRICustomRecurrenceEditorViewController *)self yearlyOrdinalChooser];
    }

    v12 = currentChooser;
    [currentChooser heightForRow:{objc_msgSend(pathCopy, "row")}];
    v4 = v13;

    goto LABEL_8;
  }

  [viewCopy rowHeight];
  v4 = v10;
LABEL_8:

  return v4;
}

- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  v6 = [view cellForRowAtIndexPath:pathCopy];
  if ([v6 selectionStyle])
  {
    v7 = pathCopy;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  return v7;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  [view deselectRowAtIndexPath:pathCopy animated:1];
  if ([(TTRICustomRecurrenceEditorViewController *)self _tagForIndexPath:pathCopy]== 5)
  {
    currentChooser = [(TTRICustomRecurrenceEditorViewController *)self currentChooser];
    [currentChooser rowTapped:{objc_msgSend(pathCopy, "row")}];
  }
}

- (id)tableView:(id)view titleForFooterInSection:(int64_t)section
{
  if (section)
  {
    v6 = 0;
  }

  else
  {
    v6 = [(TTRICustomRecurrenceEditorViewController *)self recurrenceSummaryString:view];
  }

  return v6;
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  pathCopy = path;
  if ([pathCopy section] == 1)
  {
    currentChooser = [(TTRICustomRecurrenceEditorViewController *)self currentChooser];
    v9 = [currentChooser drawBackgroundForRow:{objc_msgSend(pathCopy, "row")}];

    if ((v9 & 1) == 0)
    {
      clearColor = [MEMORY[0x277D75348] clearColor];
      [cellCopy setBackgroundColor:clearColor];

      clearColor2 = [MEMORY[0x277D75348] clearColor];
      backgroundView = [cellCopy backgroundView];
      [backgroundView setBackgroundColor:clearColor2];
    }
  }
}

- (id)_availableRecurrenceFrequencies
{
  cachedAvailableRecurrenceFrequencies = [(TTRICustomRecurrenceEditorViewController *)self cachedAvailableRecurrenceFrequencies];

  if (!cachedAvailableRecurrenceFrequencies)
  {
    v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:5];
    if (![(TTRICustomRecurrenceEditorViewController *)self prohibitsHourlyRecurrence])
    {
      [v4 addObject:&unk_282F1AEE0];
    }

    [v4 addObject:&unk_282F1AEF8];
    [v4 addObject:&unk_282F1AF10];
    [v4 addObject:&unk_282F1AF28];
    [v4 addObject:&unk_282F1AF40];
    [(TTRICustomRecurrenceEditorViewController *)self setCachedAvailableRecurrenceFrequencies:v4];
  }

  return [(TTRICustomRecurrenceEditorViewController *)self cachedAvailableRecurrenceFrequencies];
}

- (void)recurrenceChooserWantsReload:(id)reload
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __73__TTRICustomRecurrenceEditorViewController_recurrenceChooserWantsReload___block_invoke;
  v3[3] = &unk_27832D498;
  v3[4] = self;
  [MEMORY[0x277D75D18] performWithoutAnimation:v3];
}

void __73__TTRICustomRecurrenceEditorViewController_recurrenceChooserWantsReload___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) tableView];
  v1 = [MEMORY[0x277CCAA78] indexSetWithIndex:1];
  [v2 reloadSections:v1 withRowAnimation:0];
}

- (void)recurrenceChooser:(id)chooser wantsRowReload:(int64_t)reload
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __77__TTRICustomRecurrenceEditorViewController_recurrenceChooser_wantsRowReload___block_invoke;
  v4[3] = &unk_27832D4E8;
  v4[4] = self;
  v4[5] = reload;
  [MEMORY[0x277D75D18] performWithoutAnimation:v4];
}

void __77__TTRICustomRecurrenceEditorViewController_recurrenceChooser_wantsRowReload___block_invoke(uint64_t a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) tableView];
  v3 = [MEMORY[0x277CCAA70] indexPathForRow:*(a1 + 40) inSection:1];
  v5[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  [v2 reloadRowsAtIndexPaths:v4 withRowAnimation:0];
}

- (void)presentationControllerWillDismiss:(id)dismiss
{
  completionBlock = [(TTRICustomRecurrenceEditorViewController *)self completionBlock];
  recurrenceRule = [(TTRICustomRecurrenceEditorViewController *)self recurrenceRule];
  completionBlock[2](completionBlock, recurrenceRule);
}

- (void)_updateRecurrenceRule
{
  tableView = [(TTRICustomRecurrenceEditorViewController *)self tableView];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __65__TTRICustomRecurrenceEditorViewController__updateRecurrenceRule__block_invoke;
  v5[3] = &unk_27832D498;
  v5[4] = self;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __65__TTRICustomRecurrenceEditorViewController__updateRecurrenceRule__block_invoke_2;
  v4[3] = &unk_27832D510;
  v4[4] = self;
  [tableView performBatchUpdates:v5 completion:v4];
}

- (void)_updateRecurrenceRuleWithoutBatching
{
  cachedFrequency = self->_cachedFrequency;
  cachedInterval = self->_cachedInterval;
  v11 = objc_opt_new();
  currentChooser = [(TTRICustomRecurrenceEditorViewController *)self currentChooser];
  v6 = currentChooser;
  if (currentChooser)
  {
    cachedFrequency = [currentChooser frequency];
    [v6 updateRecurrenceRuleBuilder:v11];
  }

  [v11 setFrequency:cachedFrequency];
  [v11 setInterval:cachedInterval];
  yearlyChooser = [(TTRICustomRecurrenceEditorViewController *)self yearlyChooser];
  if (v6 == yearlyChooser)
  {
    yearOrdinalSwitch = [(TTRICustomRecurrenceEditorViewController *)self yearOrdinalSwitch];
    isOn = [yearOrdinalSwitch isOn];

    if (!isOn)
    {
      goto LABEL_7;
    }

    yearlyChooser = [(TTRICustomRecurrenceEditorViewController *)self yearlyOrdinalChooser];
    [yearlyChooser updateRecurrenceRuleBuilder:v11];
  }

LABEL_7:
  v10 = [v11 recurrenceRuleWithFirstDayOfTheWeek:{-[REMRecurrenceRule firstDayOfTheWeek](self->_cachedRecurrenceRule, "firstDayOfTheWeek")}];
  [(TTRICustomRecurrenceEditorViewController *)self setRecurrenceRule:v10 shouldUpdatePickers:0];
}

- (id)recurrenceRule
{
  cachedRecurrenceRule = self->_cachedRecurrenceRule;
  if (!cachedRecurrenceRule)
  {
    [(TTRICustomRecurrenceEditorViewController *)self _updateRecurrenceRule];
    cachedRecurrenceRule = self->_cachedRecurrenceRule;
  }

  return cachedRecurrenceRule;
}

- (void)setRecurrenceRule:(id)rule shouldUpdatePickers:(BOOL)pickers
{
  pickersCopy = pickers;
  ruleCopy = rule;
  if (self->_cachedRecurrenceRule != ruleCopy)
  {
    v8 = ruleCopy;
    objc_storeStrong(&self->_cachedRecurrenceRule, rule);
    ruleCopy = v8;
    if (v8)
    {
      [(TTRICustomRecurrenceEditorViewController *)self _updateSummaryLabel];
      ruleCopy = v8;
    }

    if (pickersCopy)
    {
      [(TTRICustomRecurrenceEditorViewController *)self _refreshCacheAndPickers];
      ruleCopy = v8;
    }
  }
}

- (void)_refreshCacheAndPickers
{
  self->_cachedInterval = [(REMRecurrenceRule *)self->_cachedRecurrenceRule interval];
  self->_cachedFrequency = [(REMRecurrenceRule *)self->_cachedRecurrenceRule frequency];
  v3 = [objc_opt_class() isRecurrenceRuleOrdinal:self->_cachedRecurrenceRule];
  [(TTRICustomRecurrenceEditorViewController *)self _frequencyUpdated];
  if ([(REMRecurrenceRule *)self->_cachedRecurrenceRule frequency]== 3)
  {
    yearOrdinalSwitch = [(TTRICustomRecurrenceEditorViewController *)self yearOrdinalSwitch];
    [yearOrdinalSwitch setOn:v3];
  }
}

+ (BOOL)isRecurrenceRuleOrdinal:(id)ordinal
{
  ordinalCopy = ordinal;
  setPositions = [ordinalCopy setPositions];
  v5 = [setPositions count];

  if (v5)
  {
    v6 = 1;
  }

  else if ([ordinalCopy frequency] == 2 || objc_msgSend(ordinalCopy, "frequency") == 3)
  {
    daysOfTheWeek = [ordinalCopy daysOfTheWeek];
    v6 = [daysOfTheWeek count] != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)prohibitsMultipleDaysInMonthlyRecurrence
{
  monthlyChooser = [(TTRICustomRecurrenceEditorViewController *)self monthlyChooser];
  prohibitsMultipleDaysInMonthlyRecurrence = [monthlyChooser prohibitsMultipleDaysInMonthlyRecurrence];

  return prohibitsMultipleDaysInMonthlyRecurrence;
}

- (void)setProhibitsMultipleDaysInMonthlyRecurrence:(BOOL)recurrence
{
  recurrenceCopy = recurrence;
  monthlyChooser = [(TTRICustomRecurrenceEditorViewController *)self monthlyChooser];
  [monthlyChooser setProhibitsMultipleDaysInMonthlyRecurrence:recurrenceCopy];
}

- (BOOL)prohibitsMultipleMonthsInYearlyRecurrence
{
  yearlyChooser = [(TTRICustomRecurrenceEditorViewController *)self yearlyChooser];
  prohibitsMultipleMonthsInYearlyRecurrence = [yearlyChooser prohibitsMultipleMonthsInYearlyRecurrence];

  return prohibitsMultipleMonthsInYearlyRecurrence;
}

- (void)setProhibitsMultipleMonthsInYearlyRecurrence:(BOOL)recurrence
{
  recurrenceCopy = recurrence;
  yearlyChooser = [(TTRICustomRecurrenceEditorViewController *)self yearlyChooser];
  [yearlyChooser setProhibitsMultipleMonthsInYearlyRecurrence:recurrenceCopy];
}

- (void)_updateSummaryLabel
{
  v3 = MEMORY[0x277D44748];
  recurrenceRule = [(TTRICustomRecurrenceEditorViewController *)self recurrenceRule];
  startDate = [(TTRICustomRecurrenceEditorViewController *)self startDate];
  v6 = [v3 naturalLanguageDescriptionForRecurrenceRule:recurrenceRule withStartDate:startDate];
  [(TTRICustomRecurrenceEditorViewController *)self setRecurrenceSummaryString:v6];

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__TTRICustomRecurrenceEditorViewController__updateSummaryLabel__block_invoke;
  block[3] = &unk_27832D498;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __63__TTRICustomRecurrenceEditorViewController__updateSummaryLabel__block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __63__TTRICustomRecurrenceEditorViewController__updateSummaryLabel__block_invoke_2;
  v2[3] = &unk_27832D498;
  v2[4] = *(a1 + 32);
  return [MEMORY[0x277D75D18] performWithoutAnimation:v2];
}

void __63__TTRICustomRecurrenceEditorViewController__updateSummaryLabel__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) tableView];
  v1 = [MEMORY[0x277CCAA78] indexSetWithIndex:0];
  [v2 reloadSections:v1 withRowAnimation:5];
}

- (void)_updateCustomPickerView
{
  currentChooser = [(TTRICustomRecurrenceEditorViewController *)self currentChooser];
  frequency = [currentChooser frequency];

  v5 = [(TTRICustomRecurrenceEditorViewController *)self _chooserForFrequency:self->_cachedFrequency];
  [(TTRICustomRecurrenceEditorViewController *)self setCurrentChooser:v5];

  currentChooser2 = [(TTRICustomRecurrenceEditorViewController *)self currentChooser];
  frequency2 = [currentChooser2 frequency];

  currentChooser3 = [(TTRICustomRecurrenceEditorViewController *)self currentChooser];
  [currentChooser3 updateFromRecurrenceRule:self->_cachedRecurrenceRule];

  [(TTRICustomRecurrenceEditorViewController *)self _updateTableSectionsFromFrequency:frequency toFrequency:frequency2];
}

- (void)_updateTableSectionsFromFrequency:(int64_t)frequency toFrequency:(int64_t)toFrequency
{
  tableView = [(TTRICustomRecurrenceEditorViewController *)self tableView];
  [tableView beginUpdates];

  if (frequency == 3 || toFrequency != 3)
  {
    if (frequency == 3 && toFrequency != 3)
    {
      tableView2 = [(TTRICustomRecurrenceEditorViewController *)self tableView];
      v14 = [MEMORY[0x277CCAA78] indexSetWithIndex:2];
      [tableView2 deleteSections:v14 withRowAnimation:6];

      v10 = toFrequency != 0;
      goto LABEL_10;
    }
  }

  else
  {
    tableView3 = [(TTRICustomRecurrenceEditorViewController *)self tableView];
    v9 = [MEMORY[0x277CCAA78] indexSetWithIndex:2];
    [tableView3 insertSections:v9 withRowAnimation:6];
  }

  v10 = toFrequency != 0;
  if (!frequency && toFrequency)
  {
    tableView4 = [(TTRICustomRecurrenceEditorViewController *)self tableView];
    v12 = [MEMORY[0x277CCAA78] indexSetWithIndex:1];
    [tableView4 insertSections:v12 withRowAnimation:6];
LABEL_13:

    goto LABEL_14;
  }

LABEL_10:
  if (frequency && !toFrequency)
  {
    tableView4 = [(TTRICustomRecurrenceEditorViewController *)self tableView];
    v12 = [MEMORY[0x277CCAA78] indexSetWithIndex:1];
    [tableView4 deleteSections:v12 withRowAnimation:6];
    goto LABEL_13;
  }

  v16 = !v10;
  if (frequency == toFrequency)
  {
    v16 = 1;
  }

  if ((v16 & 1) == 0)
  {
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __90__TTRICustomRecurrenceEditorViewController__updateTableSectionsFromFrequency_toFrequency___block_invoke;
    v17[3] = &unk_27832D498;
    v17[4] = self;
    [MEMORY[0x277D75D18] performWithoutAnimation:v17];
  }

LABEL_14:
  tableView5 = [(TTRICustomRecurrenceEditorViewController *)self tableView];
  [tableView5 endUpdates];
}

void __90__TTRICustomRecurrenceEditorViewController__updateTableSectionsFromFrequency_toFrequency___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) tableView];
  v1 = [MEMORY[0x277CCAA78] indexSetWithIndex:1];
  [v2 reloadSections:v1 withRowAnimation:0];
}

- (void)_updateFrequencyRows
{
  v7[2] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAA70] indexPathForRow:0 inSection:0];
  v4 = [MEMORY[0x277CCAA70] indexPathForRow:1 inSection:0];
  tableView = [(TTRICustomRecurrenceEditorViewController *)self tableView];
  v7[0] = v3;
  v7[1] = v4;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:2];
  [tableView reloadRowsAtIndexPaths:v6 withRowAnimation:5];
}

- (void)_frequencyUpdated
{
  [(TTRICustomRecurrenceEditorViewController *)self _updateCustomPickerView];
  [(TTRICustomRecurrenceEditorViewController *)self _updateRecurrenceRule];
  [(TTRICustomRecurrenceEditorViewController *)self _updateFrequencyRows];
  frequencySummaryCell = self->_frequencySummaryCell;
  frequencyTypeMenu = [(TTRICustomRecurrenceEditorViewController *)self frequencyTypeMenu];
  [(TTRIPopupMenuTableViewCell *)frequencySummaryCell setPopupMenu:frequencyTypeMenu];

  v5 = self->_frequencySummaryCell;
  v6 = [(TTRICustomRecurrenceEditorViewController *)self _stringForFrequency:self->_cachedFrequency];
  [(TTRIPopupMenuTableViewCell *)v5 setAccessoryTitle:v6];

  [(TTRICustomRecurrenceEditorIntervalChooserTableViewCell *)self->_intervalSummaryCell setIntervalValue:self->_cachedInterval];

  [(TTRICustomRecurrenceEditorViewController *)self queuePreferredContentSizeRefresh];
}

- (id)_chooserForFrequency:(int64_t)frequency
{
  switch(frequency)
  {
    case 3:
      yearlyChooser = [(TTRICustomRecurrenceEditorViewController *)self yearlyChooser];
      break;
    case 2:
      yearlyChooser = [(TTRICustomRecurrenceEditorViewController *)self monthlyChooser];
      break;
    case 1:
      yearlyChooser = [(TTRICustomRecurrenceEditorViewController *)self weeklyChooser];
      break;
    default:
      yearlyChooser = 0;
      break;
  }

  return yearlyChooser;
}

- (void)_yearOrdinalSwitchChanged:(id)changed
{
  changedCopy = changed;
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x3032000000;
  v15[3] = __Block_byref_object_copy_;
  v15[4] = __Block_byref_object_dispose_;
  v16 = 0;
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x2020000000;
  v14 = 0;
  tableView = [(TTRICustomRecurrenceEditorViewController *)self tableView];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __70__TTRICustomRecurrenceEditorViewController__yearOrdinalSwitchChanged___block_invoke;
  v8[3] = &unk_27832D538;
  v11 = v15;
  v6 = changedCopy;
  v12 = v13;
  v9 = v6;
  selfCopy = self;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __70__TTRICustomRecurrenceEditorViewController__yearOrdinalSwitchChanged___block_invoke_2;
  v7[3] = &unk_27832D560;
  v7[5] = v15;
  v7[6] = v13;
  v7[4] = self;
  [tableView performBatchUpdates:v8 completion:v7];

  _Block_object_dispose(v13, 8);
  _Block_object_dispose(v15, 8);
}

uint64_t __70__TTRICustomRecurrenceEditorViewController__yearOrdinalSwitchChanged___block_invoke(uint64_t a1)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAA70] indexPathForRow:1 inSection:2];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if ([*(a1 + 32) isOn])
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
    v5 = [*(a1 + 40) tableView];
    v9[0] = *(*(*(a1 + 48) + 8) + 40);
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
    [v5 insertRowsAtIndexPaths:v6 withRowAnimation:6];
  }

  else
  {
    v5 = [*(a1 + 40) tableView];
    v8 = *(*(*(a1 + 48) + 8) + 40);
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:&v8 count:1];
    [v5 deleteRowsAtIndexPaths:v6 withRowAnimation:6];
  }

  return [*(a1 + 40) _updateRecurrenceRuleWithoutBatching];
}

uint64_t __70__TTRICustomRecurrenceEditorViewController__yearOrdinalSwitchChanged___block_invoke_2(uint64_t a1)
{
  if (*(*(*(a1 + 40) + 8) + 40) && *(*(*(a1 + 48) + 8) + 24) == 1)
  {
    v2 = [*(a1 + 32) tableView];
    [v2 scrollToRowAtIndexPath:*(*(*(a1 + 40) + 8) + 40) atScrollPosition:3 animated:1];
  }

  v3 = *(a1 + 32);

  return [v3 queuePreferredContentSizeRefresh];
}

- (id)_stringForFrequency:(int64_t)frequency
{
  if (frequency <= 1)
  {
    if (frequency > 1)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (frequency == 2 || frequency == 3)
  {
LABEL_7:
    v3 = CUIKStringForRepeatType();
    goto LABEL_8;
  }

  if (frequency == 4)
  {
    v4 = RemindersUICoreBundleGet();
    v3 = [v4 localizedStringForKey:@"Hourly" value:@"Hourly" table:@"Localizable"];
  }

LABEL_8:

  return v3;
}

- (id)_stringForFrequency:(int64_t)frequency interval:(int64_t)interval
{
  if (frequency > 4)
  {
    v7 = 0;
  }

  else
  {
    v5 = off_27832D580[frequency];
    v6 = RemindersUICoreBundleGet();
    v7 = [v6 localizedStringForKey:v5 value:&stru_282EF0770 table:@"PluralLocalizable"];
  }

  interval = [MEMORY[0x277CCACA8] stringWithFormat:v7, interval];

  return interval;
}

- (int64_t)_tagForIndexPath:(id)path
{
  pathCopy = path;
  v5 = [pathCopy row];
  section = [pathCopy section];

  if (section == 2)
  {
    if (self->_cachedFrequency == 3)
    {
      if (v5)
      {
        return 4;
      }

      else
      {
        return self->_cachedFrequency;
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v7 = 1;
    if (v5)
    {
      v7 = 2;
    }

    if (section)
    {
      v7 = 0;
    }

    if (section == 1)
    {
      return 5;
    }

    else
    {
      return v7;
    }
  }
}

- (int64_t)_numberOfRowsForSection:(int64_t)section
{
  if (section == 2)
  {
    if (self->_cachedFrequency != 3)
    {
      return 0;
    }

    yearOrdinalSwitch = [(TTRICustomRecurrenceEditorViewController *)self yearOrdinalSwitch];
    if ([yearOrdinalSwitch isOn])
    {
      v3 = 2;
    }

    else
    {
      v3 = 1;
    }

    return v3;
  }

  if (section != 1)
  {
    if (section)
    {
      return 0;
    }

    else
    {
      return 2;
    }
  }

  currentChooser = [(TTRICustomRecurrenceEditorViewController *)self currentChooser];
  numberOfRows = [currentChooser numberOfRows];

  return numberOfRows;
}

- (id)_localizedEveryStringForFrequency:(int64_t)frequency interval:(int64_t)interval
{
  if (frequency > 4)
  {
    v7 = 0;
  }

  else
  {
    v5 = off_27832D5A8[frequency];
    v6 = RemindersUICoreBundleGet();
    v7 = [v6 localizedStringForKey:v5 value:@"Every" table:@"PluralLocalizable"];
  }

  interval = [MEMORY[0x277CCACA8] localizedStringWithFormat:v7, interval];

  return interval;
}

- (TTRIRecurrenceChooserController)currentChooser
{
  WeakRetained = objc_loadWeakRetained(&self->_currentChooser);

  return WeakRetained;
}

@end