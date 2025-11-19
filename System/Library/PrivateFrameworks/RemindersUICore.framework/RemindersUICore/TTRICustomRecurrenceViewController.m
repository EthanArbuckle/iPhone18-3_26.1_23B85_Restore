@interface TTRICustomRecurrenceViewController
+ (BOOL)isRecurrenceRuleOrdinal:(id)a3;
- (BOOL)prohibitsMultipleDaysInMonthlyRecurrence;
- (BOOL)prohibitsMultipleMonthsInYearlyRecurrence;
- (CGSize)calculatePreferredContentSize;
- (TTRICustomRecurrenceViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (TTRICustomRecurrenceViewController)initWithStartDate:(id)a3 timeZone:(id)a4;
- (TTRIRecurrenceChooserController)currentChooser;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)_availableRecurrenceFrequencies;
- (id)_chooserForFrequency:(int64_t)a3;
- (id)_localizedEveryStringForFrequency:(int64_t)a3 interval:(int64_t)a4;
- (id)_stringForFrequency:(int64_t)a3;
- (id)_stringForFrequency:(int64_t)a3 interval:(int64_t)a4;
- (id)pickerView:(id)a3 accessibilityLabelForComponent:(int64_t)a4;
- (id)pickerView:(id)a3 titleForRow:(int64_t)a4 forComponent:(int64_t)a5;
- (id)recurrenceRule;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4;
- (int64_t)_numberOfRowsForSection:(int64_t)a3;
- (int64_t)_pickerRowForRecurrenceFrequency:(int64_t)a3;
- (int64_t)_recurrenceFrequencyForPickerRow:(int64_t)a3;
- (int64_t)_tagForIndexPath:(id)a3;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)pickerView:(id)a3 numberOfRowsInComponent:(int64_t)a4;
- (void)_collapseAllPickers;
- (void)_createChoosersAndControls;
- (void)_frequencyPickerViewUpdated;
- (void)_refreshCacheAndPickers;
- (void)_setShowingFrequencyPicker:(BOOL)a3;
- (void)_setShowingIntervalPicker:(BOOL)a3;
- (void)_toggleInlineSpinnerForTag:(int64_t)a3;
- (void)_updateCustomPickerView;
- (void)_updateFrequencyRows;
- (void)_updateIntervalPicker;
- (void)_updateRecurrenceRule;
- (void)_updateSummaryLabel;
- (void)_updateTableSectionsFromFrequency:(int64_t)a3 toFrequency:(int64_t)a4;
- (void)_yearOrdinalSwitchChanged:(id)a3;
- (void)loadView;
- (void)pickerView:(id)a3 didSelectRow:(int64_t)a4 inComponent:(int64_t)a5;
- (void)recurrenceChooser:(id)a3 wantsRowReload:(int64_t)a4;
- (void)recurrenceChooserUpdated:(id)a3;
- (void)recurrenceChooserWantsReload:(id)a3;
- (void)setProhibitsHourlyRecurrence:(BOOL)a3;
- (void)setProhibitsMultipleDaysInMonthlyRecurrence:(BOOL)a3;
- (void)setProhibitsMultipleMonthsInYearlyRecurrence:(BOOL)a3;
- (void)setRecurrenceRule:(id)a3 shouldUpdatePickers:(BOOL)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation TTRICustomRecurrenceViewController

- (TTRICustomRecurrenceViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v13.receiver = self;
  v13.super_class = TTRICustomRecurrenceViewController;
  v4 = [(TTRICustomRecurrenceViewController *)&v13 initWithNibName:a3 bundle:a4];
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
    [(TTRICustomRecurrenceViewController *)v5 setTitle:v11];
  }

  return v5;
}

- (TTRICustomRecurrenceViewController)initWithStartDate:(id)a3 timeZone:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(TTRICustomRecurrenceViewController *)self initWithNibName:0 bundle:0];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_startDate, a3);
    objc_storeStrong(&v10->_timeZone, a4);
    [(TTRICustomRecurrenceViewController *)v10 _createChoosersAndControls];
  }

  return v10;
}

- (void)loadView
{
  v3 = objc_alloc(MEMORY[0x277D75B40]);
  v4 = [v3 initWithFrame:2 style:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [(TTRICustomRecurrenceViewController *)self setTableView:v4];

  v5 = [(TTRICustomRecurrenceViewController *)self tableView];
  [v5 setDelegate:self];

  v6 = [(TTRICustomRecurrenceViewController *)self tableView];
  [v6 setDataSource:self];

  v7 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  [v7 lineHeight];
  v9 = v8;
  v10 = [(TTRICustomRecurrenceViewController *)self tableView];
  [v10 setEstimatedRowHeight:v9];

  v11 = [(TTRICustomRecurrenceViewController *)self tableView];
  [(TTRICustomRecurrenceViewController *)self setView:v11];
}

- (CGSize)calculatePreferredContentSize
{
  v2 = *MEMORY[0x277CBF3A8];
  v3 = *(MEMORY[0x277CBF3A8] + 8);
  result.height = v3;
  result.width = v2;
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
  v13 = objc_alloc(MEMORY[0x277D75840]);
  v14 = [v13 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  frequencyPickerView = self->_frequencyPickerView;
  self->_frequencyPickerView = v14;

  [(UIPickerView *)self->_frequencyPickerView setDelegate:self];
  [(UIPickerView *)self->_frequencyPickerView setDataSource:self];
  [(UIPickerView *)self->_frequencyPickerView setTranslatesAutoresizingMaskIntoConstraints:0];
  objc_initWeak(&location, self);
  v16 = [TTRICustomRecurrenceIntervalViewController alloc];
  v27 = MEMORY[0x277D85DD0];
  v28 = 3221225472;
  v29 = __64__TTRICustomRecurrenceViewController__createChoosersAndControls__block_invoke;
  v30 = &unk_27832D6A8;
  objc_copyWeak(&v31, &location);
  v17 = [(TTRICustomRecurrenceIntervalViewController *)v16 initWithSelectedInterval:1 frequency:0 changeBlock:&v27];
  intervalPickerViewController = self->_intervalPickerViewController;
  self->_intervalPickerViewController = v17;

  v19 = [TTRICustomRecurrenceTableViewCell alloc];
  v20 = [(TTRICustomRecurrenceTableViewCell *)v19 initWithStyle:1 reuseIdentifier:0, v27, v28, v29, v30];
  frequencySummaryCell = self->_frequencySummaryCell;
  self->_frequencySummaryCell = v20;

  v22 = RemindersUICoreBundleGet();
  v23 = [v22 localizedStringForKey:@"Frequency" value:@"Frequency" table:@"Localizable"];
  v24 = [(UITableViewCell *)self->_frequencySummaryCell textLabel];
  [v24 setText:v23];

  v25 = [[TTRICustomRecurrenceTableViewCell alloc] initWithStyle:1 reuseIdentifier:0];
  intervalSummaryCell = self->_intervalSummaryCell;
  self->_intervalSummaryCell = &v25->super;

  objc_destroyWeak(&v31);
  objc_destroyWeak(&location);
}

void __64__TTRICustomRecurrenceViewController__createChoosersAndControls__block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && WeakRetained[125] != a2)
  {
    WeakRetained[125] = a2;
    v4 = WeakRetained;
    [WeakRetained _frequencyPickerViewUpdated];
    WeakRetained = v4;
  }
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = TTRICustomRecurrenceViewController;
  [(TTRICustomRecurrenceViewController *)&v3 viewDidLoad];
  [(TTRICustomRecurrenceViewController *)self _updateSummaryLabel];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  if (([(TTRICustomRecurrenceViewController *)self isBeingDismissed]& 1) != 0 || [(TTRICustomRecurrenceViewController *)self isMovingFromParentViewController])
  {
    v5 = [(TTRICustomRecurrenceViewController *)self completionBlock];
    v6 = [(TTRICustomRecurrenceViewController *)self recurrenceRule];
    (v5)[2](v5, v6);
  }

  v7.receiver = self;
  v7.super_class = TTRICustomRecurrenceViewController;
  [(TTRICustomRecurrenceViewController *)&v7 viewWillDisappear:v3];
}

- (void)setProhibitsHourlyRecurrence:(BOOL)a3
{
  if (self->_prohibitsHourlyRecurrence != a3)
  {
    self->_prohibitsHourlyRecurrence = a3;
    v4 = [(TTRICustomRecurrenceViewController *)self cachedAvailableRecurrenceFrequencies];

    if (v4)
    {
      [(TTRICustomRecurrenceViewController *)self setCachedAvailableRecurrenceFrequencies:0];
      v5 = [(TTRICustomRecurrenceViewController *)self frequencyPickerView];
      [v5 reloadAllComponents];
    }
  }
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(TTRICustomRecurrenceViewController *)self _tagForIndexPath:v5];
  v7 = v6;
  v8 = 0;
  if (v6 > 3)
  {
    if ((v6 - 4) >= 2)
    {
      if (v6 == 6)
      {
        v9 = [(TTRICustomRecurrenceViewController *)self yearlyOrdinalChooser];
      }

      else
      {
        if (v6 != 7)
        {
          goto LABEL_13;
        }

        v9 = [(TTRICustomRecurrenceViewController *)self currentChooser];
      }

      v24 = v9;
      v8 = [v9 cellForRow:{objc_msgSend(v5, "row")}];
      goto LABEL_26;
    }

    goto LABEL_12;
  }

  if (v6 > 1)
  {
    if (v6 != 2)
    {
      v8 = self->_intervalSummaryCell;
      goto LABEL_21;
    }

    goto LABEL_12;
  }

  if (!v6)
  {
LABEL_12:
    v8 = [[TTRICustomRecurrenceTableViewCell alloc] initWithStyle:0 reuseIdentifier:0];
    [(TTRICustomRecurrenceTableViewCell *)v8 setSelectionStyle:0];
    goto LABEL_13;
  }

  if (v6 == 1)
  {
    v8 = self->_frequencySummaryCell;
LABEL_22:
    v24 = [(TTRICustomRecurrenceViewController *)self _stringForFrequency:self->_cachedFrequency];
    v25 = [(TTRICustomRecurrenceTableViewCell *)v8 detailTextLabel];
    goto LABEL_23;
  }

LABEL_13:
  if (v7 > 2)
  {
    if (v7 != 3)
    {
      if (v7 == 4)
      {
        v28 = [(TTRICustomRecurrenceViewController *)self intervalPickerViewController];
        v29 = [v28 view];

        [v29 setTranslatesAutoresizingMaskIntoConstraints:0];
        v30 = [(TTRICustomRecurrenceTableViewCell *)v8 contentView];
        [v30 addSubview:v29];

        v31 = [(TTRICustomRecurrenceTableViewCell *)v8 contentView];
        v32 = MEMORY[0x277CCAAD0];
        v33 = _NSDictionaryOfVariableBindings(&cfstr_Pickerview.isa, v29, 0);
        v34 = [v32 constraintsWithVisualFormat:@"H:|[pickerView]|" options:0 metrics:0 views:v33];
        [v31 addConstraints:v34];

        v35 = [(TTRICustomRecurrenceTableViewCell *)v8 contentView];
        v36 = MEMORY[0x277CCAAD0];
        v37 = _NSDictionaryOfVariableBindings(&cfstr_Pickerview.isa, v29, 0);
        v38 = [v36 constraintsWithVisualFormat:@"V:|[pickerView]|" options:0 metrics:0 views:v37];
        [v35 addConstraints:v38];

        cachedFrequency = self->_cachedFrequency;
        v40 = [(TTRICustomRecurrenceViewController *)self intervalPickerViewController];
        [v40 setFrequency:cachedFrequency];

        cachedInterval = self->_cachedInterval;
        v42 = [(TTRICustomRecurrenceViewController *)self intervalPickerViewController];
        [v42 setInterval:cachedInterval];

        v43 = [(TTRICustomRecurrenceViewController *)self prohibitsYearlyRecurrenceInterval]&& self->_cachedFrequency == 3;
        v44 = [(TTRICustomRecurrenceViewController *)self intervalPickerViewController];
        [v44 setMaximumInterval:v43];
      }

      else if (v7 == 5)
      {
        v10 = RemindersUICoreBundleGet();
        v11 = [v10 localizedStringForKey:@"Days of Week" value:@"Days of Week" table:@"Localizable"];
        v12 = [(TTRICustomRecurrenceTableViewCell *)v8 textLabel];
        [v12 setText:v11];

        [(TTRICustomRecurrenceTableViewCell *)v8 setAccessoryView:self->_yearOrdinalSwitch];
      }

      goto LABEL_27;
    }

LABEL_21:
    v22 = [(TTRICustomRecurrenceViewController *)self _stringForFrequency:self->_cachedFrequency interval:self->_cachedInterval];
    v23 = [(TTRICustomRecurrenceTableViewCell *)v8 detailTextLabel];
    [v23 setText:v22];

    v24 = [(TTRICustomRecurrenceViewController *)self _localizedEveryStringForFrequency:self->_cachedFrequency interval:self->_cachedInterval];
    v25 = [(TTRICustomRecurrenceTableViewCell *)v8 textLabel];
LABEL_23:
    v26 = v25;
    [v25 setText:v24];

LABEL_26:
    goto LABEL_27;
  }

  if (v7 == 1)
  {
    goto LABEL_22;
  }

  if (v7 == 2)
  {
    v13 = [(TTRICustomRecurrenceTableViewCell *)v8 contentView];
    [v13 addSubview:self->_frequencyPickerView];

    v14 = [(TTRICustomRecurrenceTableViewCell *)v8 contentView];
    v15 = MEMORY[0x277CCAAD0];
    v16 = _NSDictionaryOfVariableBindings(&cfstr_Frequencypicke.isa, self->_frequencyPickerView, 0);
    v17 = [v15 constraintsWithVisualFormat:@"H:|[_frequencyPickerView]|" options:0 metrics:0 views:v16];
    [v14 addConstraints:v17];

    v18 = [(TTRICustomRecurrenceTableViewCell *)v8 contentView];
    v19 = MEMORY[0x277CCAAD0];
    v20 = _NSDictionaryOfVariableBindings(&cfstr_Frequencypicke.isa, self->_frequencyPickerView, 0);
    v21 = [v19 constraintsWithVisualFormat:@"V:|[_frequencyPickerView]|" options:0 metrics:0 views:v20];
    [v18 addConstraints:v21];

    [(UIPickerView *)self->_frequencyPickerView selectRow:[(TTRICustomRecurrenceViewController *)self _pickerRowForRecurrenceFrequency:self->_cachedFrequency] inComponent:0 animated:0];
  }

LABEL_27:

  return v8;
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
    return qword_21DC06030[v3];
  }
}

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(TTRICustomRecurrenceViewController *)self _tagForIndexPath:v8];
  if (v9 > 3)
  {
    if (v9 > 5)
    {
      if (v9 == 7)
      {
        v11 = [(TTRICustomRecurrenceViewController *)self currentChooser];
      }

      else
      {
        if (v9 != 6)
        {
          goto LABEL_17;
        }

        v11 = [(TTRICustomRecurrenceViewController *)self yearlyOrdinalChooser];
      }

      v12 = v11;
      [v11 heightForRow:{objc_msgSend(v8, "row")}];
      v4 = v15;
      goto LABEL_16;
    }

    if (v9 == 4)
    {
      v12 = [(TTRICustomRecurrenceViewController *)self intervalPickerViewController];
      v13 = [v12 view];
      [v13 systemLayoutSizeFittingSize:{*MEMORY[0x277D76C78], *(MEMORY[0x277D76C78] + 8)}];
      v4 = v14;

      goto LABEL_16;
    }
  }

  else if (v9 >= 2)
  {
    if (v9 != 2)
    {
      if (v9 != 3)
      {
        goto LABEL_17;
      }

      goto LABEL_8;
    }

    v12 = [(TTRICustomRecurrenceViewController *)self frequencyPickerView];
    [v12 systemLayoutSizeFittingSize:{*MEMORY[0x277D76C78], *(MEMORY[0x277D76C78] + 8)}];
    v4 = v16;
LABEL_16:

    goto LABEL_17;
  }

LABEL_8:
  [v7 rowHeight];
  v4 = v10;
LABEL_17:

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
  v8 = a4;
  [a3 deselectRowAtIndexPath:v8 animated:1];
  v6 = [(TTRICustomRecurrenceViewController *)self _tagForIndexPath:v8];
  if (v6 == 1 || v6 == 3)
  {
    [(TTRICustomRecurrenceViewController *)self _toggleInlineSpinnerForTag:v6];
  }

  else if (v6 == 7)
  {
    v7 = [(TTRICustomRecurrenceViewController *)self currentChooser];
    [v7 rowTapped:{objc_msgSend(v8, "row")}];
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
    v6 = [(TTRICustomRecurrenceViewController *)self recurrenceSummaryString:a3];
  }

  return v6;
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v13 = a4;
  v7 = a5;
  if ([v7 section] == 1)
  {
    v8 = [(TTRICustomRecurrenceViewController *)self currentChooser];
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

- (int64_t)pickerView:(id)a3 numberOfRowsInComponent:(int64_t)a4
{
  v4 = [(TTRICustomRecurrenceViewController *)self _availableRecurrenceFrequencies:a3];
  v5 = [v4 count];

  return v5;
}

- (id)pickerView:(id)a3 titleForRow:(int64_t)a4 forComponent:(int64_t)a5
{
  v6 = [(TTRICustomRecurrenceViewController *)self _recurrenceFrequencyForPickerRow:a4];

  return [(TTRICustomRecurrenceViewController *)self _stringForFrequency:v6];
}

- (void)pickerView:(id)a3 didSelectRow:(int64_t)a4 inComponent:(int64_t)a5
{
  v6 = [(TTRICustomRecurrenceViewController *)self _recurrenceFrequencyForPickerRow:a4];
  if (self->_cachedFrequency != v6)
  {
    self->_cachedFrequency = v6;
    [(TTRICustomRecurrenceViewController *)self _frequencyPickerViewUpdated];

    [(TTRICustomRecurrenceViewController *)self _updateIntervalPicker];
  }
}

- (id)pickerView:(id)a3 accessibilityLabelForComponent:(int64_t)a4
{
  if (a4)
  {
    v4 = 0;
  }

  else
  {
    v5 = RemindersUICoreBundleGet();
    v4 = [v5 localizedStringForKey:@"Frequency Option" value:@"Frequency Option" table:@"Localizable"];
  }

  return v4;
}

- (int64_t)_pickerRowForRecurrenceFrequency:(int64_t)a3
{
  v4 = [(TTRICustomRecurrenceViewController *)self _availableRecurrenceFrequencies];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v6 = [v4 indexOfObject:v5];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

- (int64_t)_recurrenceFrequencyForPickerRow:(int64_t)a3
{
  v4 = [(TTRICustomRecurrenceViewController *)self _availableRecurrenceFrequencies];
  v5 = [v4 objectAtIndexedSubscript:a3];
  v6 = [v5 integerValue];

  return v6;
}

- (id)_availableRecurrenceFrequencies
{
  v3 = [(TTRICustomRecurrenceViewController *)self cachedAvailableRecurrenceFrequencies];

  if (!v3)
  {
    v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:5];
    if (![(TTRICustomRecurrenceViewController *)self prohibitsHourlyRecurrence])
    {
      [v4 addObject:&unk_282F1B0D8];
    }

    [v4 addObject:&unk_282F1B0F0];
    [v4 addObject:&unk_282F1B108];
    [v4 addObject:&unk_282F1B120];
    [v4 addObject:&unk_282F1B138];
    [(TTRICustomRecurrenceViewController *)self setCachedAvailableRecurrenceFrequencies:v4];
  }

  return [(TTRICustomRecurrenceViewController *)self cachedAvailableRecurrenceFrequencies];
}

- (void)recurrenceChooserUpdated:(id)a3
{
  [(TTRICustomRecurrenceViewController *)self _updateRecurrenceRule];

  [(TTRICustomRecurrenceViewController *)self _collapseAllPickers];
}

- (void)recurrenceChooserWantsReload:(id)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __67__TTRICustomRecurrenceViewController_recurrenceChooserWantsReload___block_invoke;
  v3[3] = &unk_27832D498;
  v3[4] = self;
  [MEMORY[0x277D75D18] performWithoutAnimation:v3];
}

void __67__TTRICustomRecurrenceViewController_recurrenceChooserWantsReload___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) tableView];
  v1 = [MEMORY[0x277CCAA78] indexSetWithIndex:1];
  [v2 reloadSections:v1 withRowAnimation:0];
}

- (void)recurrenceChooser:(id)a3 wantsRowReload:(int64_t)a4
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __71__TTRICustomRecurrenceViewController_recurrenceChooser_wantsRowReload___block_invoke;
  v4[3] = &unk_27832D4E8;
  v4[4] = self;
  v4[5] = a4;
  [MEMORY[0x277D75D18] performWithoutAnimation:v4];
}

void __71__TTRICustomRecurrenceViewController_recurrenceChooser_wantsRowReload___block_invoke(uint64_t a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) tableView];
  v3 = [MEMORY[0x277CCAA70] indexPathForRow:*(a1 + 40) inSection:1];
  v5[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  [v2 reloadRowsAtIndexPaths:v4 withRowAnimation:0];
}

- (void)_updateRecurrenceRule
{
  cachedFrequency = self->_cachedFrequency;
  cachedInterval = self->_cachedInterval;
  v11 = objc_opt_new();
  v5 = [(TTRICustomRecurrenceViewController *)self currentChooser];
  v6 = v5;
  if (v5)
  {
    cachedFrequency = [v5 frequency];
    [v6 updateRecurrenceRuleBuilder:v11];
  }

  [v11 setFrequency:cachedFrequency];
  [v11 setInterval:cachedInterval];
  v7 = [(TTRICustomRecurrenceViewController *)self yearlyChooser];
  if (v6 == v7)
  {
    v8 = [(TTRICustomRecurrenceViewController *)self yearOrdinalSwitch];
    v9 = [v8 isOn];

    if (!v9)
    {
      goto LABEL_7;
    }

    v7 = [(TTRICustomRecurrenceViewController *)self yearlyOrdinalChooser];
    [v7 updateRecurrenceRuleBuilder:v11];
  }

LABEL_7:
  v10 = [v11 recurrenceRuleWithFirstDayOfTheWeek:{-[REMRecurrenceRule firstDayOfTheWeek](self->_cachedRecurrenceRule, "firstDayOfTheWeek")}];
  [(TTRICustomRecurrenceViewController *)self setRecurrenceRule:v10 shouldUpdatePickers:0];
}

- (id)recurrenceRule
{
  cachedRecurrenceRule = self->_cachedRecurrenceRule;
  if (!cachedRecurrenceRule)
  {
    [(TTRICustomRecurrenceViewController *)self _updateRecurrenceRule];
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
      [(TTRICustomRecurrenceViewController *)self _updateSummaryLabel];
      v7 = v8;
    }

    if (v4)
    {
      [(TTRICustomRecurrenceViewController *)self _refreshCacheAndPickers];
      v7 = v8;
    }
  }
}

- (void)_refreshCacheAndPickers
{
  self->_cachedInterval = [(REMRecurrenceRule *)self->_cachedRecurrenceRule interval];
  self->_cachedFrequency = [(REMRecurrenceRule *)self->_cachedRecurrenceRule frequency];
  v3 = [objc_opt_class() isRecurrenceRuleOrdinal:self->_cachedRecurrenceRule];
  [(TTRICustomRecurrenceViewController *)self _updateCustomPickerView];
  if ([(REMRecurrenceRule *)self->_cachedRecurrenceRule frequency]== 3)
  {
    v4 = [(TTRICustomRecurrenceViewController *)self yearOrdinalSwitch];
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
  v2 = [(TTRICustomRecurrenceViewController *)self monthlyChooser];
  v3 = [v2 prohibitsMultipleDaysInMonthlyRecurrence];

  return v3;
}

- (void)setProhibitsMultipleDaysInMonthlyRecurrence:(BOOL)a3
{
  v3 = a3;
  v4 = [(TTRICustomRecurrenceViewController *)self monthlyChooser];
  [v4 setProhibitsMultipleDaysInMonthlyRecurrence:v3];
}

- (BOOL)prohibitsMultipleMonthsInYearlyRecurrence
{
  v2 = [(TTRICustomRecurrenceViewController *)self yearlyChooser];
  v3 = [v2 prohibitsMultipleMonthsInYearlyRecurrence];

  return v3;
}

- (void)setProhibitsMultipleMonthsInYearlyRecurrence:(BOOL)a3
{
  v3 = a3;
  v4 = [(TTRICustomRecurrenceViewController *)self yearlyChooser];
  [v4 setProhibitsMultipleMonthsInYearlyRecurrence:v3];
}

- (void)_updateSummaryLabel
{
  v3 = MEMORY[0x277D44748];
  v4 = [(TTRICustomRecurrenceViewController *)self recurrenceRule];
  v5 = [(TTRICustomRecurrenceViewController *)self startDate];
  v6 = [v3 naturalLanguageDescriptionForRecurrenceRule:v4 withStartDate:v5];
  [(TTRICustomRecurrenceViewController *)self setRecurrenceSummaryString:v6];

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__TTRICustomRecurrenceViewController__updateSummaryLabel__block_invoke;
  v7[3] = &unk_27832D498;
  v7[4] = self;
  [MEMORY[0x277D75D18] performWithoutAnimation:v7];
}

void __57__TTRICustomRecurrenceViewController__updateSummaryLabel__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) tableView];
  v1 = [MEMORY[0x277CCAA78] indexSetWithIndex:0];
  [v2 reloadSections:v1 withRowAnimation:5];
}

- (void)_updateCustomPickerView
{
  v3 = [(TTRICustomRecurrenceViewController *)self currentChooser];
  v4 = [v3 frequency];

  v5 = [(TTRICustomRecurrenceViewController *)self _chooserForFrequency:self->_cachedFrequency];
  [(TTRICustomRecurrenceViewController *)self setCurrentChooser:v5];

  v6 = [(TTRICustomRecurrenceViewController *)self currentChooser];
  v7 = [v6 frequency];

  v8 = [(TTRICustomRecurrenceViewController *)self currentChooser];
  [v8 updateFromRecurrenceRule:self->_cachedRecurrenceRule];

  [(TTRICustomRecurrenceViewController *)self _updateTableSectionsFromFrequency:v4 toFrequency:v7];
}

- (void)_updateTableSectionsFromFrequency:(int64_t)a3 toFrequency:(int64_t)a4
{
  v7 = [(TTRICustomRecurrenceViewController *)self tableView];
  [v7 beginUpdates];

  if (a3 == 3 || a4 != 3)
  {
    if (a3 == 3 && a4 != 3)
    {
      v13 = [(TTRICustomRecurrenceViewController *)self tableView];
      v14 = [MEMORY[0x277CCAA78] indexSetWithIndex:2];
      [v13 deleteSections:v14 withRowAnimation:6];

      v10 = a4 != 0;
      goto LABEL_10;
    }
  }

  else
  {
    v8 = [(TTRICustomRecurrenceViewController *)self tableView];
    v9 = [MEMORY[0x277CCAA78] indexSetWithIndex:2];
    [v8 insertSections:v9 withRowAnimation:6];
  }

  v10 = a4 != 0;
  if (!a3 && a4)
  {
    v11 = [(TTRICustomRecurrenceViewController *)self tableView];
    v12 = [MEMORY[0x277CCAA78] indexSetWithIndex:1];
    [v11 insertSections:v12 withRowAnimation:6];
LABEL_13:

    goto LABEL_14;
  }

LABEL_10:
  if (a3 && !a4)
  {
    v11 = [(TTRICustomRecurrenceViewController *)self tableView];
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
    v17[2] = __84__TTRICustomRecurrenceViewController__updateTableSectionsFromFrequency_toFrequency___block_invoke;
    v17[3] = &unk_27832D498;
    v17[4] = self;
    [MEMORY[0x277D75D18] performWithoutAnimation:v17];
  }

LABEL_14:
  v15 = [(TTRICustomRecurrenceViewController *)self tableView];
  [v15 endUpdates];

  [(TTRICustomRecurrenceViewController *)self calculatePreferredContentSize];
  [(TTRICustomRecurrenceViewController *)self setPreferredContentSize:?];
}

void __84__TTRICustomRecurrenceViewController__updateTableSectionsFromFrequency_toFrequency___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) tableView];
  v1 = [MEMORY[0x277CCAA78] indexSetWithIndex:1];
  [v2 reloadSections:v1 withRowAnimation:0];
}

- (void)_updateFrequencyRows
{
  v8[2] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAA70] indexPathForRow:0 inSection:0];
  if (self->_showingFrequencyPicker)
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  v5 = [MEMORY[0x277CCAA70] indexPathForRow:v4 inSection:0];
  v6 = [(TTRICustomRecurrenceViewController *)self tableView];
  v8[0] = v3;
  v8[1] = v5;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:2];
  [v6 reloadRowsAtIndexPaths:v7 withRowAnimation:5];
}

- (void)_frequencyPickerViewUpdated
{
  [(TTRICustomRecurrenceViewController *)self _updateCustomPickerView];
  [(TTRICustomRecurrenceViewController *)self _updateRecurrenceRule];

  [(TTRICustomRecurrenceViewController *)self _updateFrequencyRows];
}

- (void)_updateIntervalPicker
{
  cachedFrequency = self->_cachedFrequency;
  v4 = [(TTRICustomRecurrenceViewController *)self intervalPickerViewController];
  [v4 setFrequency:cachedFrequency];

  cachedInterval = self->_cachedInterval;
  v6 = [(TTRICustomRecurrenceViewController *)self intervalPickerViewController];
  [v6 setInterval:cachedInterval];
}

- (id)_chooserForFrequency:(int64_t)a3
{
  switch(a3)
  {
    case 3:
      v3 = [(TTRICustomRecurrenceViewController *)self yearlyChooser];
      break;
    case 2:
      v3 = [(TTRICustomRecurrenceViewController *)self monthlyChooser];
      break;
    case 1:
      v3 = [(TTRICustomRecurrenceViewController *)self weeklyChooser];
      break;
    default:
      v3 = 0;
      break;
  }

  return v3;
}

- (void)_yearOrdinalSwitchChanged:(id)a3
{
  v12[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCAA70];
  v5 = a3;
  v6 = [v4 indexPathForRow:1 inSection:2];
  v7 = [v5 isOn];

  v8 = [(TTRICustomRecurrenceViewController *)self tableView];
  if (v7)
  {
    v12[0] = v6;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
    [v8 insertRowsAtIndexPaths:v9 withRowAnimation:6];

    v8 = [(TTRICustomRecurrenceViewController *)self tableView];
    [v8 scrollToRowAtIndexPath:v6 atScrollPosition:3 animated:1];
  }

  else
  {
    v11 = v6;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v11 count:1];
    [v8 deleteRowsAtIndexPaths:v10 withRowAnimation:6];
  }

  [(TTRICustomRecurrenceViewController *)self _collapseAllPickers];
  [(TTRICustomRecurrenceViewController *)self _updateRecurrenceRule];
  [(TTRICustomRecurrenceViewController *)self calculatePreferredContentSize];
  [(TTRICustomRecurrenceViewController *)self setPreferredContentSize:?];
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
    v5 = off_27832D6C8[a3];
    v6 = RemindersUICoreBundleGet();
    v7 = [v6 localizedStringForKey:v5 value:&stru_282EF0770 table:@"PluralLocalizable"];
  }

  v8 = [MEMORY[0x277CCACA8] localizedStringWithFormat:v7, a4];

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
        return 6;
      }

      else
      {
        return 5;
      }
    }

    return 0;
  }

  if (v6 == 1)
  {
    return 7;
  }

  if (v6)
  {
    return 0;
  }

  if (!v5)
  {
    return 1;
  }

  if (v5 == 2)
  {
    if (self->_showingIntervalPicker)
    {
      return 4;
    }
  }

  else if (v5 == 1 && self->_showingFrequencyPicker)
  {
    return 2;
  }

  return 3;
}

- (int64_t)_numberOfRowsForSection:(int64_t)a3
{
  if (a3 == 2)
  {
    if (self->_cachedFrequency == 3)
    {
      v7 = [(TTRICustomRecurrenceViewController *)self yearOrdinalSwitch];
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

    return 0;
  }

  if (a3 == 1)
  {
    v4 = [(TTRICustomRecurrenceViewController *)self currentChooser];
    v5 = [v4 numberOfRows];

    return v5;
  }

  if (a3)
  {
    return 0;
  }

  return self->_showingIntervalPicker + self->_showingFrequencyPicker + 2;
}

- (void)_toggleInlineSpinnerForTag:(int64_t)a3
{
  v5 = [(TTRICustomRecurrenceViewController *)self tableView];
  [v5 beginUpdates];

  if (a3 == 3)
  {
    [(TTRICustomRecurrenceViewController *)self _setShowingIntervalPicker:!self->_showingIntervalPicker];
  }

  else if (a3 == 1)
  {
    [(TTRICustomRecurrenceViewController *)self _setShowingFrequencyPicker:!self->_showingFrequencyPicker];
  }

  v6 = [(TTRICustomRecurrenceViewController *)self tableView];
  [v6 endUpdates];

  [(TTRICustomRecurrenceViewController *)self calculatePreferredContentSize];

  [(TTRICustomRecurrenceViewController *)self setPreferredContentSize:?];
}

- (void)_collapseAllPickers
{
  [(TTRICustomRecurrenceViewController *)self _setShowingFrequencyPicker:0];

  [(TTRICustomRecurrenceViewController *)self _setShowingIntervalPicker:0];
}

- (void)_setShowingFrequencyPicker:(BOOL)a3
{
  v12[1] = *MEMORY[0x277D85DE8];
  if (self->_showingFrequencyPicker == a3)
  {
    return;
  }

  v3 = a3;
  self->_showingFrequencyPicker = a3;
  v5 = [MEMORY[0x277CCAA70] indexPathForRow:1 inSection:0];
  showingFrequencyPicker = self->_showingFrequencyPicker;
  v7 = [(TTRICustomRecurrenceViewController *)self tableView];
  if (!showingFrequencyPicker)
  {
    v11 = v5;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v11 count:1];
    [v7 deleteRowsAtIndexPaths:v8 withRowAnimation:6];

    if (!v3)
    {
      goto LABEL_4;
    }

LABEL_6:
    v8 = [(TTRICustomRecurrenceViewController *)self view];
    v9 = [v8 tintColor];
    goto LABEL_7;
  }

  v12[0] = v5;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  [v7 insertRowsAtIndexPaths:v8 withRowAnimation:6];

  [(TTRICustomRecurrenceViewController *)self _setShowingIntervalPicker:0];
  if (v3)
  {
    goto LABEL_6;
  }

LABEL_4:
  v9 = [MEMORY[0x277D75348] tableCellGrayTextColor];
LABEL_7:
  v10 = [(UITableViewCell *)self->_frequencySummaryCell detailTextLabel];
  [v10 setTextColor:v9];

  if (v3)
  {

    v9 = v8;
  }

  [(TTRICustomRecurrenceViewController *)self calculatePreferredContentSize];
  [(TTRICustomRecurrenceViewController *)self setPreferredContentSize:?];
}

- (void)_setShowingIntervalPicker:(BOOL)a3
{
  v12[1] = *MEMORY[0x277D85DE8];
  if (self->_showingIntervalPicker == a3)
  {
    return;
  }

  v3 = a3;
  self->_showingIntervalPicker = a3;
  v5 = [MEMORY[0x277CCAA70] indexPathForRow:2 inSection:0];
  showingIntervalPicker = self->_showingIntervalPicker;
  v7 = [(TTRICustomRecurrenceViewController *)self tableView];
  if (!showingIntervalPicker)
  {
    v11 = v5;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v11 count:1];
    [v7 deleteRowsAtIndexPaths:v8 withRowAnimation:6];

    if (!v3)
    {
      goto LABEL_4;
    }

LABEL_6:
    v8 = [(TTRICustomRecurrenceViewController *)self view];
    v9 = [v8 tintColor];
    goto LABEL_7;
  }

  v12[0] = v5;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  [v7 insertRowsAtIndexPaths:v8 withRowAnimation:6];

  [(TTRICustomRecurrenceViewController *)self _setShowingFrequencyPicker:0];
  if (v3)
  {
    goto LABEL_6;
  }

LABEL_4:
  v9 = [MEMORY[0x277D75348] tableCellGrayTextColor];
LABEL_7:
  v10 = [(UITableViewCell *)self->_intervalSummaryCell detailTextLabel];
  [v10 setTextColor:v9];

  if (v3)
  {

    v9 = v8;
  }

  [(TTRICustomRecurrenceViewController *)self calculatePreferredContentSize];
  [(TTRICustomRecurrenceViewController *)self setPreferredContentSize:?];
}

- (id)_localizedEveryStringForFrequency:(int64_t)a3 interval:(int64_t)a4
{
  if (a3 > 4)
  {
    v7 = 0;
  }

  else
  {
    v5 = off_27832D6F0[a3];
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