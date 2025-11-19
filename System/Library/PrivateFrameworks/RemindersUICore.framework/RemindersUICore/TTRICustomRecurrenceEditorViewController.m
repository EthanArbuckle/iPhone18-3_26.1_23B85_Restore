@interface TTRICustomRecurrenceEditorViewController
+ (BOOL)isRecurrenceRuleOrdinal:(id)a3;
- (BOOL)prohibitsMultipleDaysInMonthlyRecurrence;
- (BOOL)prohibitsMultipleMonthsInYearlyRecurrence;
- (CGSize)calculatePreferredContentSize;
- (TTRICustomRecurrenceEditorViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (TTRICustomRecurrenceEditorViewController)initWithStartDate:(id)a3 timeZone:(id)a4;
- (TTRIRecurrenceChooserController)currentChooser;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)_availableRecurrenceFrequencies;
- (id)_chooserForFrequency:(int64_t)a3;
- (id)_localizedEveryStringForFrequency:(int64_t)a3 interval:(int64_t)a4;
- (id)_stringForFrequency:(int64_t)a3;
- (id)_stringForFrequency:(int64_t)a3 interval:(int64_t)a4;
- (id)frequencyTypeMenu;
- (id)recurrenceRule;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4;
- (int64_t)_numberOfRowsForSection:(int64_t)a3;
- (int64_t)_tagForIndexPath:(id)a3;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (void)_createChoosersAndControls;
- (void)_frequencyUpdated;
- (void)_refreshCacheAndPickers;
- (void)_updateCustomPickerView;
- (void)_updateFrequencyRows;
- (void)_updateRecurrenceRule;
- (void)_updateRecurrenceRuleWithoutBatching;
- (void)_updateSummaryLabel;
- (void)_updateTableSectionsFromFrequency:(int64_t)a3 toFrequency:(int64_t)a4;
- (void)_yearOrdinalSwitchChanged:(id)a3;
- (void)didSelectFrequencyType:(int64_t)a3;
- (void)didSelectIntervalType:(int64_t)a3;
- (void)didTapCommit;
- (void)loadView;
- (void)presentationControllerWillDismiss:(id)a3;
- (void)queuePreferredContentSizeRefresh;
- (void)recurrenceChooser:(id)a3 wantsRowReload:(int64_t)a4;
- (void)recurrenceChooserWantsReload:(id)a3;
- (void)setProhibitsHourlyRecurrence:(BOOL)a3;
- (void)setProhibitsMultipleDaysInMonthlyRecurrence:(BOOL)a3;
- (void)setProhibitsMultipleMonthsInYearlyRecurrence:(BOOL)a3;
- (void)setRecurrenceRule:(id)a3 shouldUpdatePickers:(BOOL)a4;
- (void)stopEditingIfNeeded;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation TTRICustomRecurrenceEditorViewController

- (TTRICustomRecurrenceEditorViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v13.receiver = self;
  v13.super_class = TTRICustomRecurrenceEditorViewController;
  v4 = [(TTRICustomRecurrenceEditorViewController *)&v13 initWithNibName:a3 bundle:a4];
  v5 = v4;
  if (v4)
  {
    v4->_cachedFrequency = 0;
    v4->_cachedInterval = 1;
    v6 = [MEMORY[0x277CBEAA8] date];
    startDate = v5->_startDate;
    v5->_startDate = v6;

    v8 = [MEMORY[0x277CBEBB0] systemTimeZone];
    timeZone = v5->_timeZone;
    v5->_timeZone = v8;

    v10 = RemindersUICoreBundleGet();
    v11 = [v10 localizedStringForKey:@"CUSTOM_RECURRENCE_LABEL" value:@"Custom" table:@"Localizable"];
    [(TTRICustomRecurrenceEditorViewController *)v5 setTitle:v11];
  }

  return v5;
}

- (TTRICustomRecurrenceEditorViewController)initWithStartDate:(id)a3 timeZone:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(TTRICustomRecurrenceEditorViewController *)self initWithNibName:0 bundle:0];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_startDate, a3);
    objc_storeStrong(&v10->_timeZone, a4);
    [(TTRICustomRecurrenceEditorViewController *)v10 _createChoosersAndControls];
  }

  return v10;
}

- (void)loadView
{
  v3 = objc_alloc(MEMORY[0x277D75B40]);
  v4 = [v3 initWithFrame:2 style:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [(TTRICustomRecurrenceEditorViewController *)self setTableView:v4];

  v5 = [(TTRICustomRecurrenceEditorViewController *)self tableView];
  [v5 setDelegate:self];

  v6 = [(TTRICustomRecurrenceEditorViewController *)self tableView];
  [v6 setDataSource:self];

  v7 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  [v7 lineHeight];
  v9 = v8;
  v10 = [(TTRICustomRecurrenceEditorViewController *)self tableView];
  [v10 setEstimatedRowHeight:v9];

  v11 = [(TTRICustomRecurrenceEditorViewController *)self tableView];
  [v11 setKeyboardDismissMode:1];

  v12 = [(TTRICustomRecurrenceEditorViewController *)self tableView];
  [(TTRICustomRecurrenceEditorViewController *)self setView:v12];
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = TTRICustomRecurrenceEditorViewController;
  [(TTRICustomRecurrenceEditorViewController *)&v5 viewDidLoad];
  v3 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:self action:sel_didTapCommit];
  v4 = [(TTRICustomRecurrenceEditorViewController *)self navigationItem];
  [v4 setRightBarButtonItem:v3];
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
  v2 = [(TTRICustomRecurrenceEditorViewController *)self tableView];
  [v2 contentSize];
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
  v24 = [(TTRICustomRecurrenceEditorViewController *)self frequencyTypeMenu];
  [(TTRIPopupMenuTableViewCell *)v23 setPopupMenu:v24];

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

- (void)viewWillAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = TTRICustomRecurrenceEditorViewController;
  [(TTRICustomRecurrenceEditorViewController *)&v5 viewWillAppear:a3];
  [(TTRICustomRecurrenceEditorViewController *)self queuePreferredContentSizeRefresh];
  v4 = [(TTRICustomRecurrenceEditorViewController *)self presentationController];
  [v4 setDelegate:self];
}

- (void)setProhibitsHourlyRecurrence:(BOOL)a3
{
  if (self->_prohibitsHourlyRecurrence != a3)
  {
    self->_prohibitsHourlyRecurrence = a3;
    v4 = [(TTRICustomRecurrenceEditorViewController *)self cachedAvailableRecurrenceFrequencies];

    if (v4)
    {
      [(TTRICustomRecurrenceEditorViewController *)self setCachedAvailableRecurrenceFrequencies:0];

      [(TTRICustomRecurrenceEditorViewController *)self _frequencyUpdated];
    }
  }
}

- (void)didTapCommit
{
  [(TTRICustomRecurrenceEditorViewController *)self stopEditingIfNeeded];
  v3 = [(TTRICustomRecurrenceEditorViewController *)self completionBlock];
  v4 = [(TTRICustomRecurrenceEditorViewController *)self recurrenceRule];
  (v3)[2](v3, v4);

  v5 = [(TTRICustomRecurrenceEditorViewController *)self navigationController];
  [v5 dismissViewControllerAnimated:1 completion:0];
}

- (void)stopEditingIfNeeded
{
  objc_opt_class();
  v3 = [(TTRICustomRecurrenceEditorViewController *)self view];
  v4 = [v3 firstResponder];
  v7 = REMDynamicCast();

  v5 = [(TTRICustomRecurrenceEditorViewController *)self view];
  v6 = [v7 isDescendantOfView:v5];

  if (v6)
  {
    [v7 resignFirstResponder];
  }
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(TTRICustomRecurrenceEditorViewController *)self _tagForIndexPath:v5];
  v7 = v6;
  v8 = 0;
  if (v6 > 2)
  {
    if (v6 != 3)
    {
      if (v6 == 4)
      {
        v9 = [(TTRICustomRecurrenceEditorViewController *)self yearlyOrdinalChooser];
      }

      else
      {
        if (v6 != 5)
        {
          goto LABEL_11;
        }

        v9 = [(TTRICustomRecurrenceEditorViewController *)self currentChooser];
      }

      v12 = v9;
      v8 = [v9 cellForRow:{objc_msgSend(v5, "row")}];
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
  v20 = [v19 titleLabel];
  [v20 setText:v18];

  [(TTRICustomRecurrenceEditorIntervalChooserTableViewCell *)v8 setAccessoryView:self->_yearOrdinalSwitch];
LABEL_21:

  return v8;
}

- (void)didSelectFrequencyType:(int64_t)a3
{
  if (self->_cachedFrequency != a3)
  {
    self->_cachedFrequency = a3;
    [(TTRICustomRecurrenceEditorViewController *)self _frequencyUpdated];
  }
}

- (void)didSelectIntervalType:(int64_t)a3
{
  if (self->_cachedInterval != a3)
  {
    self->_cachedInterval = a3;
    [(TTRICustomRecurrenceEditorViewController *)self _frequencyUpdated];
  }
}

- (id)frequencyTypeMenu
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = [(TTRICustomRecurrenceEditorViewController *)self _availableRecurrenceFrequencies];
  objc_initWeak(&location, self);
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = v4;
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

        v8 = [*(*(&v17 + 1) + 8 * i) intValue];
        v9 = [(TTRICustomRecurrenceEditorViewController *)self _stringForFrequency:v8];
        v10 = MEMORY[0x277D750C8];
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = __61__TTRICustomRecurrenceEditorViewController_frequencyTypeMenu__block_invoke;
        v15[3] = &unk_27832D4C0;
        objc_copyWeak(v16, &location);
        v16[1] = v8;
        v11 = [v10 actionWithTitle:v9 image:0 identifier:0 handler:v15];
        [v11 setState:self->_cachedFrequency == v8];
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

- (int64_t)numberOfSectionsInTableView:(id)a3
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

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(TTRICustomRecurrenceEditorViewController *)self _tagForIndexPath:v8];
  if (v9 >= 4)
  {
    if (v9 == 5)
    {
      v11 = [(TTRICustomRecurrenceEditorViewController *)self currentChooser];
    }

    else
    {
      if (v9 != 4)
      {
        goto LABEL_8;
      }

      v11 = [(TTRICustomRecurrenceEditorViewController *)self yearlyOrdinalChooser];
    }

    v12 = v11;
    [v11 heightForRow:{objc_msgSend(v8, "row")}];
    v4 = v13;

    goto LABEL_8;
  }

  [v7 rowHeight];
  v4 = v10;
LABEL_8:

  return v4;
}

- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [a3 cellForRowAtIndexPath:v5];
  if ([v6 selectionStyle])
  {
    v7 = v5;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  return v7;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v7 = a4;
  [a3 deselectRowAtIndexPath:v7 animated:1];
  if ([(TTRICustomRecurrenceEditorViewController *)self _tagForIndexPath:v7]== 5)
  {
    v6 = [(TTRICustomRecurrenceEditorViewController *)self currentChooser];
    [v6 rowTapped:{objc_msgSend(v7, "row")}];
  }
}

- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4
{
  if (a4)
  {
    v6 = 0;
  }

  else
  {
    v6 = [(TTRICustomRecurrenceEditorViewController *)self recurrenceSummaryString:a3];
  }

  return v6;
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v13 = a4;
  v7 = a5;
  if ([v7 section] == 1)
  {
    v8 = [(TTRICustomRecurrenceEditorViewController *)self currentChooser];
    v9 = [v8 drawBackgroundForRow:{objc_msgSend(v7, "row")}];

    if ((v9 & 1) == 0)
    {
      v10 = [MEMORY[0x277D75348] clearColor];
      [v13 setBackgroundColor:v10];

      v11 = [MEMORY[0x277D75348] clearColor];
      v12 = [v13 backgroundView];
      [v12 setBackgroundColor:v11];
    }
  }
}

- (id)_availableRecurrenceFrequencies
{
  v3 = [(TTRICustomRecurrenceEditorViewController *)self cachedAvailableRecurrenceFrequencies];

  if (!v3)
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

- (void)recurrenceChooserWantsReload:(id)a3
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

- (void)recurrenceChooser:(id)a3 wantsRowReload:(int64_t)a4
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __77__TTRICustomRecurrenceEditorViewController_recurrenceChooser_wantsRowReload___block_invoke;
  v4[3] = &unk_27832D4E8;
  v4[4] = self;
  v4[5] = a4;
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

- (void)presentationControllerWillDismiss:(id)a3
{
  v5 = [(TTRICustomRecurrenceEditorViewController *)self completionBlock];
  v4 = [(TTRICustomRecurrenceEditorViewController *)self recurrenceRule];
  v5[2](v5, v4);
}

- (void)_updateRecurrenceRule
{
  v3 = [(TTRICustomRecurrenceEditorViewController *)self tableView];
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
  [v3 performBatchUpdates:v5 completion:v4];
}

- (void)_updateRecurrenceRuleWithoutBatching
{
  cachedFrequency = self->_cachedFrequency;
  cachedInterval = self->_cachedInterval;
  v11 = objc_opt_new();
  v5 = [(TTRICustomRecurrenceEditorViewController *)self currentChooser];
  v6 = v5;
  if (v5)
  {
    cachedFrequency = [v5 frequency];
    [v6 updateRecurrenceRuleBuilder:v11];
  }

  [v11 setFrequency:cachedFrequency];
  [v11 setInterval:cachedInterval];
  v7 = [(TTRICustomRecurrenceEditorViewController *)self yearlyChooser];
  if (v6 == v7)
  {
    v8 = [(TTRICustomRecurrenceEditorViewController *)self yearOrdinalSwitch];
    v9 = [v8 isOn];

    if (!v9)
    {
      goto LABEL_7;
    }

    v7 = [(TTRICustomRecurrenceEditorViewController *)self yearlyOrdinalChooser];
    [v7 updateRecurrenceRuleBuilder:v11];
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

- (void)setRecurrenceRule:(id)a3 shouldUpdatePickers:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  if (self->_cachedRecurrenceRule != v7)
  {
    v8 = v7;
    objc_storeStrong(&self->_cachedRecurrenceRule, a3);
    v7 = v8;
    if (v8)
    {
      [(TTRICustomRecurrenceEditorViewController *)self _updateSummaryLabel];
      v7 = v8;
    }

    if (v4)
    {
      [(TTRICustomRecurrenceEditorViewController *)self _refreshCacheAndPickers];
      v7 = v8;
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
    v4 = [(TTRICustomRecurrenceEditorViewController *)self yearOrdinalSwitch];
    [v4 setOn:v3];
  }
}

+ (BOOL)isRecurrenceRuleOrdinal:(id)a3
{
  v3 = a3;
  v4 = [v3 setPositions];
  v5 = [v4 count];

  if (v5)
  {
    v6 = 1;
  }

  else if ([v3 frequency] == 2 || objc_msgSend(v3, "frequency") == 3)
  {
    v7 = [v3 daysOfTheWeek];
    v6 = [v7 count] != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)prohibitsMultipleDaysInMonthlyRecurrence
{
  v2 = [(TTRICustomRecurrenceEditorViewController *)self monthlyChooser];
  v3 = [v2 prohibitsMultipleDaysInMonthlyRecurrence];

  return v3;
}

- (void)setProhibitsMultipleDaysInMonthlyRecurrence:(BOOL)a3
{
  v3 = a3;
  v4 = [(TTRICustomRecurrenceEditorViewController *)self monthlyChooser];
  [v4 setProhibitsMultipleDaysInMonthlyRecurrence:v3];
}

- (BOOL)prohibitsMultipleMonthsInYearlyRecurrence
{
  v2 = [(TTRICustomRecurrenceEditorViewController *)self yearlyChooser];
  v3 = [v2 prohibitsMultipleMonthsInYearlyRecurrence];

  return v3;
}

- (void)setProhibitsMultipleMonthsInYearlyRecurrence:(BOOL)a3
{
  v3 = a3;
  v4 = [(TTRICustomRecurrenceEditorViewController *)self yearlyChooser];
  [v4 setProhibitsMultipleMonthsInYearlyRecurrence:v3];
}

- (void)_updateSummaryLabel
{
  v3 = MEMORY[0x277D44748];
  v4 = [(TTRICustomRecurrenceEditorViewController *)self recurrenceRule];
  v5 = [(TTRICustomRecurrenceEditorViewController *)self startDate];
  v6 = [v3 naturalLanguageDescriptionForRecurrenceRule:v4 withStartDate:v5];
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
  v3 = [(TTRICustomRecurrenceEditorViewController *)self currentChooser];
  v4 = [v3 frequency];

  v5 = [(TTRICustomRecurrenceEditorViewController *)self _chooserForFrequency:self->_cachedFrequency];
  [(TTRICustomRecurrenceEditorViewController *)self setCurrentChooser:v5];

  v6 = [(TTRICustomRecurrenceEditorViewController *)self currentChooser];
  v7 = [v6 frequency];

  v8 = [(TTRICustomRecurrenceEditorViewController *)self currentChooser];
  [v8 updateFromRecurrenceRule:self->_cachedRecurrenceRule];

  [(TTRICustomRecurrenceEditorViewController *)self _updateTableSectionsFromFrequency:v4 toFrequency:v7];
}

- (void)_updateTableSectionsFromFrequency:(int64_t)a3 toFrequency:(int64_t)a4
{
  v7 = [(TTRICustomRecurrenceEditorViewController *)self tableView];
  [v7 beginUpdates];

  if (a3 == 3 || a4 != 3)
  {
    if (a3 == 3 && a4 != 3)
    {
      v13 = [(TTRICustomRecurrenceEditorViewController *)self tableView];
      v14 = [MEMORY[0x277CCAA78] indexSetWithIndex:2];
      [v13 deleteSections:v14 withRowAnimation:6];

      v10 = a4 != 0;
      goto LABEL_10;
    }
  }

  else
  {
    v8 = [(TTRICustomRecurrenceEditorViewController *)self tableView];
    v9 = [MEMORY[0x277CCAA78] indexSetWithIndex:2];
    [v8 insertSections:v9 withRowAnimation:6];
  }

  v10 = a4 != 0;
  if (!a3 && a4)
  {
    v11 = [(TTRICustomRecurrenceEditorViewController *)self tableView];
    v12 = [MEMORY[0x277CCAA78] indexSetWithIndex:1];
    [v11 insertSections:v12 withRowAnimation:6];
LABEL_13:

    goto LABEL_14;
  }

LABEL_10:
  if (a3 && !a4)
  {
    v11 = [(TTRICustomRecurrenceEditorViewController *)self tableView];
    v12 = [MEMORY[0x277CCAA78] indexSetWithIndex:1];
    [v11 deleteSections:v12 withRowAnimation:6];
    goto LABEL_13;
  }

  v16 = !v10;
  if (a3 == a4)
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
  v15 = [(TTRICustomRecurrenceEditorViewController *)self tableView];
  [v15 endUpdates];
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
  v5 = [(TTRICustomRecurrenceEditorViewController *)self tableView];
  v7[0] = v3;
  v7[1] = v4;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:2];
  [v5 reloadRowsAtIndexPaths:v6 withRowAnimation:5];
}

- (void)_frequencyUpdated
{
  [(TTRICustomRecurrenceEditorViewController *)self _updateCustomPickerView];
  [(TTRICustomRecurrenceEditorViewController *)self _updateRecurrenceRule];
  [(TTRICustomRecurrenceEditorViewController *)self _updateFrequencyRows];
  frequencySummaryCell = self->_frequencySummaryCell;
  v4 = [(TTRICustomRecurrenceEditorViewController *)self frequencyTypeMenu];
  [(TTRIPopupMenuTableViewCell *)frequencySummaryCell setPopupMenu:v4];

  v5 = self->_frequencySummaryCell;
  v6 = [(TTRICustomRecurrenceEditorViewController *)self _stringForFrequency:self->_cachedFrequency];
  [(TTRIPopupMenuTableViewCell *)v5 setAccessoryTitle:v6];

  [(TTRICustomRecurrenceEditorIntervalChooserTableViewCell *)self->_intervalSummaryCell setIntervalValue:self->_cachedInterval];

  [(TTRICustomRecurrenceEditorViewController *)self queuePreferredContentSizeRefresh];
}

- (id)_chooserForFrequency:(int64_t)a3
{
  switch(a3)
  {
    case 3:
      v3 = [(TTRICustomRecurrenceEditorViewController *)self yearlyChooser];
      break;
    case 2:
      v3 = [(TTRICustomRecurrenceEditorViewController *)self monthlyChooser];
      break;
    case 1:
      v3 = [(TTRICustomRecurrenceEditorViewController *)self weeklyChooser];
      break;
    default:
      v3 = 0;
      break;
  }

  return v3;
}

- (void)_yearOrdinalSwitchChanged:(id)a3
{
  v4 = a3;
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
  v5 = [(TTRICustomRecurrenceEditorViewController *)self tableView];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __70__TTRICustomRecurrenceEditorViewController__yearOrdinalSwitchChanged___block_invoke;
  v8[3] = &unk_27832D538;
  v11 = v15;
  v6 = v4;
  v12 = v13;
  v9 = v6;
  v10 = self;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __70__TTRICustomRecurrenceEditorViewController__yearOrdinalSwitchChanged___block_invoke_2;
  v7[3] = &unk_27832D560;
  v7[5] = v15;
  v7[6] = v13;
  v7[4] = self;
  [v5 performBatchUpdates:v8 completion:v7];

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

- (id)_stringForFrequency:(int64_t)a3
{
  if (a3 <= 1)
  {
    if (a3 > 1)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (a3 == 2 || a3 == 3)
  {
LABEL_7:
    v3 = CUIKStringForRepeatType();
    goto LABEL_8;
  }

  if (a3 == 4)
  {
    v4 = RemindersUICoreBundleGet();
    v3 = [v4 localizedStringForKey:@"Hourly" value:@"Hourly" table:@"Localizable"];
  }

LABEL_8:

  return v3;
}

- (id)_stringForFrequency:(int64_t)a3 interval:(int64_t)a4
{
  if (a3 > 4)
  {
    v7 = 0;
  }

  else
  {
    v5 = off_27832D580[a3];
    v6 = RemindersUICoreBundleGet();
    v7 = [v6 localizedStringForKey:v5 value:&stru_282EF0770 table:@"PluralLocalizable"];
  }

  v8 = [MEMORY[0x277CCACA8] stringWithFormat:v7, a4];

  return v8;
}

- (int64_t)_tagForIndexPath:(id)a3
{
  v4 = a3;
  v5 = [v4 row];
  v6 = [v4 section];

  if (v6 == 2)
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

    if (v6)
    {
      v7 = 0;
    }

    if (v6 == 1)
    {
      return 5;
    }

    else
    {
      return v7;
    }
  }
}

- (int64_t)_numberOfRowsForSection:(int64_t)a3
{
  if (a3 == 2)
  {
    if (self->_cachedFrequency != 3)
    {
      return 0;
    }

    v7 = [(TTRICustomRecurrenceEditorViewController *)self yearOrdinalSwitch];
    if ([v7 isOn])
    {
      v3 = 2;
    }

    else
    {
      v3 = 1;
    }

    return v3;
  }

  if (a3 != 1)
  {
    if (a3)
    {
      return 0;
    }

    else
    {
      return 2;
    }
  }

  v5 = [(TTRICustomRecurrenceEditorViewController *)self currentChooser];
  v6 = [v5 numberOfRows];

  return v6;
}

- (id)_localizedEveryStringForFrequency:(int64_t)a3 interval:(int64_t)a4
{
  if (a3 > 4)
  {
    v7 = 0;
  }

  else
  {
    v5 = off_27832D5A8[a3];
    v6 = RemindersUICoreBundleGet();
    v7 = [v6 localizedStringForKey:v5 value:@"Every" table:@"PluralLocalizable"];
  }

  v8 = [MEMORY[0x277CCACA8] localizedStringWithFormat:v7, a4];

  return v8;
}

- (TTRIRecurrenceChooserController)currentChooser
{
  WeakRetained = objc_loadWeakRetained(&self->_currentChooser);

  return WeakRetained;
}

@end