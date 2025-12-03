@interface TTRICustomRecurrenceViewController
+ (BOOL)isRecurrenceRuleOrdinal:(id)ordinal;
- (BOOL)prohibitsMultipleDaysInMonthlyRecurrence;
- (BOOL)prohibitsMultipleMonthsInYearlyRecurrence;
- (CGSize)calculatePreferredContentSize;
- (TTRICustomRecurrenceViewController)initWithNibName:(id)name bundle:(id)bundle;
- (TTRICustomRecurrenceViewController)initWithStartDate:(id)date timeZone:(id)zone;
- (TTRIRecurrenceChooserController)currentChooser;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)_availableRecurrenceFrequencies;
- (id)_chooserForFrequency:(int64_t)frequency;
- (id)_localizedEveryStringForFrequency:(int64_t)frequency interval:(int64_t)interval;
- (id)_stringForFrequency:(int64_t)frequency;
- (id)_stringForFrequency:(int64_t)frequency interval:(int64_t)interval;
- (id)pickerView:(id)view accessibilityLabelForComponent:(int64_t)component;
- (id)pickerView:(id)view titleForRow:(int64_t)row forComponent:(int64_t)component;
- (id)recurrenceRule;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForFooterInSection:(int64_t)section;
- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path;
- (int64_t)_numberOfRowsForSection:(int64_t)section;
- (int64_t)_pickerRowForRecurrenceFrequency:(int64_t)frequency;
- (int64_t)_recurrenceFrequencyForPickerRow:(int64_t)row;
- (int64_t)_tagForIndexPath:(id)path;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)pickerView:(id)view numberOfRowsInComponent:(int64_t)component;
- (void)_collapseAllPickers;
- (void)_createChoosersAndControls;
- (void)_frequencyPickerViewUpdated;
- (void)_refreshCacheAndPickers;
- (void)_setShowingFrequencyPicker:(BOOL)picker;
- (void)_setShowingIntervalPicker:(BOOL)picker;
- (void)_toggleInlineSpinnerForTag:(int64_t)tag;
- (void)_updateCustomPickerView;
- (void)_updateFrequencyRows;
- (void)_updateIntervalPicker;
- (void)_updateRecurrenceRule;
- (void)_updateSummaryLabel;
- (void)_updateTableSectionsFromFrequency:(int64_t)frequency toFrequency:(int64_t)toFrequency;
- (void)_yearOrdinalSwitchChanged:(id)changed;
- (void)loadView;
- (void)pickerView:(id)view didSelectRow:(int64_t)row inComponent:(int64_t)component;
- (void)recurrenceChooser:(id)chooser wantsRowReload:(int64_t)reload;
- (void)recurrenceChooserUpdated:(id)updated;
- (void)recurrenceChooserWantsReload:(id)reload;
- (void)setProhibitsHourlyRecurrence:(BOOL)recurrence;
- (void)setProhibitsMultipleDaysInMonthlyRecurrence:(BOOL)recurrence;
- (void)setProhibitsMultipleMonthsInYearlyRecurrence:(BOOL)recurrence;
- (void)setRecurrenceRule:(id)rule shouldUpdatePickers:(BOOL)pickers;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation TTRICustomRecurrenceViewController

- (TTRICustomRecurrenceViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v13.receiver = self;
  v13.super_class = TTRICustomRecurrenceViewController;
  v4 = [(TTRICustomRecurrenceViewController *)&v13 initWithNibName:name bundle:bundle];
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
    [(TTRICustomRecurrenceViewController *)v5 setTitle:v11];
  }

  return v5;
}

- (TTRICustomRecurrenceViewController)initWithStartDate:(id)date timeZone:(id)zone
{
  dateCopy = date;
  zoneCopy = zone;
  v9 = [(TTRICustomRecurrenceViewController *)self initWithNibName:0 bundle:0];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_startDate, date);
    objc_storeStrong(&v10->_timeZone, zone);
    [(TTRICustomRecurrenceViewController *)v10 _createChoosersAndControls];
  }

  return v10;
}

- (void)loadView
{
  v3 = objc_alloc(MEMORY[0x277D75B40]);
  v4 = [v3 initWithFrame:2 style:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [(TTRICustomRecurrenceViewController *)self setTableView:v4];

  tableView = [(TTRICustomRecurrenceViewController *)self tableView];
  [tableView setDelegate:self];

  tableView2 = [(TTRICustomRecurrenceViewController *)self tableView];
  [tableView2 setDataSource:self];

  v7 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  [v7 lineHeight];
  v9 = v8;
  tableView3 = [(TTRICustomRecurrenceViewController *)self tableView];
  [tableView3 setEstimatedRowHeight:v9];

  tableView4 = [(TTRICustomRecurrenceViewController *)self tableView];
  [(TTRICustomRecurrenceViewController *)self setView:tableView4];
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
  textLabel = [(UITableViewCell *)self->_frequencySummaryCell textLabel];
  [textLabel setText:v23];

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

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  if (([(TTRICustomRecurrenceViewController *)self isBeingDismissed]& 1) != 0 || [(TTRICustomRecurrenceViewController *)self isMovingFromParentViewController])
  {
    completionBlock = [(TTRICustomRecurrenceViewController *)self completionBlock];
    recurrenceRule = [(TTRICustomRecurrenceViewController *)self recurrenceRule];
    (completionBlock)[2](completionBlock, recurrenceRule);
  }

  v7.receiver = self;
  v7.super_class = TTRICustomRecurrenceViewController;
  [(TTRICustomRecurrenceViewController *)&v7 viewWillDisappear:disappearCopy];
}

- (void)setProhibitsHourlyRecurrence:(BOOL)recurrence
{
  if (self->_prohibitsHourlyRecurrence != recurrence)
  {
    self->_prohibitsHourlyRecurrence = recurrence;
    cachedAvailableRecurrenceFrequencies = [(TTRICustomRecurrenceViewController *)self cachedAvailableRecurrenceFrequencies];

    if (cachedAvailableRecurrenceFrequencies)
    {
      [(TTRICustomRecurrenceViewController *)self setCachedAvailableRecurrenceFrequencies:0];
      frequencyPickerView = [(TTRICustomRecurrenceViewController *)self frequencyPickerView];
      [frequencyPickerView reloadAllComponents];
    }
  }
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v6 = [(TTRICustomRecurrenceViewController *)self _tagForIndexPath:pathCopy];
  v7 = v6;
  v8 = 0;
  if (v6 > 3)
  {
    if ((v6 - 4) >= 2)
    {
      if (v6 == 6)
      {
        yearlyOrdinalChooser = [(TTRICustomRecurrenceViewController *)self yearlyOrdinalChooser];
      }

      else
      {
        if (v6 != 7)
        {
          goto LABEL_13;
        }

        yearlyOrdinalChooser = [(TTRICustomRecurrenceViewController *)self currentChooser];
      }

      v24 = yearlyOrdinalChooser;
      v8 = [yearlyOrdinalChooser cellForRow:{objc_msgSend(pathCopy, "row")}];
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
    detailTextLabel = [(TTRICustomRecurrenceTableViewCell *)v8 detailTextLabel];
    goto LABEL_23;
  }

LABEL_13:
  if (v7 > 2)
  {
    if (v7 != 3)
    {
      if (v7 == 4)
      {
        intervalPickerViewController = [(TTRICustomRecurrenceViewController *)self intervalPickerViewController];
        view = [intervalPickerViewController view];

        [view setTranslatesAutoresizingMaskIntoConstraints:0];
        contentView = [(TTRICustomRecurrenceTableViewCell *)v8 contentView];
        [contentView addSubview:view];

        contentView2 = [(TTRICustomRecurrenceTableViewCell *)v8 contentView];
        v32 = MEMORY[0x277CCAAD0];
        v33 = _NSDictionaryOfVariableBindings(&cfstr_Pickerview.isa, view, 0);
        v34 = [v32 constraintsWithVisualFormat:@"H:|[pickerView]|" options:0 metrics:0 views:v33];
        [contentView2 addConstraints:v34];

        contentView3 = [(TTRICustomRecurrenceTableViewCell *)v8 contentView];
        v36 = MEMORY[0x277CCAAD0];
        v37 = _NSDictionaryOfVariableBindings(&cfstr_Pickerview.isa, view, 0);
        v38 = [v36 constraintsWithVisualFormat:@"V:|[pickerView]|" options:0 metrics:0 views:v37];
        [contentView3 addConstraints:v38];

        cachedFrequency = self->_cachedFrequency;
        intervalPickerViewController2 = [(TTRICustomRecurrenceViewController *)self intervalPickerViewController];
        [intervalPickerViewController2 setFrequency:cachedFrequency];

        cachedInterval = self->_cachedInterval;
        intervalPickerViewController3 = [(TTRICustomRecurrenceViewController *)self intervalPickerViewController];
        [intervalPickerViewController3 setInterval:cachedInterval];

        v43 = [(TTRICustomRecurrenceViewController *)self prohibitsYearlyRecurrenceInterval]&& self->_cachedFrequency == 3;
        intervalPickerViewController4 = [(TTRICustomRecurrenceViewController *)self intervalPickerViewController];
        [intervalPickerViewController4 setMaximumInterval:v43];
      }

      else if (v7 == 5)
      {
        v10 = RemindersUICoreBundleGet();
        v11 = [v10 localizedStringForKey:@"Days of Week" value:@"Days of Week" table:@"Localizable"];
        textLabel = [(TTRICustomRecurrenceTableViewCell *)v8 textLabel];
        [textLabel setText:v11];

        [(TTRICustomRecurrenceTableViewCell *)v8 setAccessoryView:self->_yearOrdinalSwitch];
      }

      goto LABEL_27;
    }

LABEL_21:
    v22 = [(TTRICustomRecurrenceViewController *)self _stringForFrequency:self->_cachedFrequency interval:self->_cachedInterval];
    detailTextLabel2 = [(TTRICustomRecurrenceTableViewCell *)v8 detailTextLabel];
    [detailTextLabel2 setText:v22];

    v24 = [(TTRICustomRecurrenceViewController *)self _localizedEveryStringForFrequency:self->_cachedFrequency interval:self->_cachedInterval];
    detailTextLabel = [(TTRICustomRecurrenceTableViewCell *)v8 textLabel];
LABEL_23:
    v26 = detailTextLabel;
    [detailTextLabel setText:v24];

LABEL_26:
    goto LABEL_27;
  }

  if (v7 == 1)
  {
    goto LABEL_22;
  }

  if (v7 == 2)
  {
    contentView4 = [(TTRICustomRecurrenceTableViewCell *)v8 contentView];
    [contentView4 addSubview:self->_frequencyPickerView];

    contentView5 = [(TTRICustomRecurrenceTableViewCell *)v8 contentView];
    v15 = MEMORY[0x277CCAAD0];
    v16 = _NSDictionaryOfVariableBindings(&cfstr_Frequencypicke.isa, self->_frequencyPickerView, 0);
    v17 = [v15 constraintsWithVisualFormat:@"H:|[_frequencyPickerView]|" options:0 metrics:0 views:v16];
    [contentView5 addConstraints:v17];

    contentView6 = [(TTRICustomRecurrenceTableViewCell *)v8 contentView];
    v19 = MEMORY[0x277CCAAD0];
    v20 = _NSDictionaryOfVariableBindings(&cfstr_Frequencypicke.isa, self->_frequencyPickerView, 0);
    v21 = [v19 constraintsWithVisualFormat:@"V:|[_frequencyPickerView]|" options:0 metrics:0 views:v20];
    [contentView6 addConstraints:v21];

    [(UIPickerView *)self->_frequencyPickerView selectRow:[(TTRICustomRecurrenceViewController *)self _pickerRowForRecurrenceFrequency:self->_cachedFrequency] inComponent:0 animated:0];
  }

LABEL_27:

  return v8;
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
    return qword_21DC06030[v3];
  }
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v9 = [(TTRICustomRecurrenceViewController *)self _tagForIndexPath:pathCopy];
  if (v9 > 3)
  {
    if (v9 > 5)
    {
      if (v9 == 7)
      {
        currentChooser = [(TTRICustomRecurrenceViewController *)self currentChooser];
      }

      else
      {
        if (v9 != 6)
        {
          goto LABEL_17;
        }

        currentChooser = [(TTRICustomRecurrenceViewController *)self yearlyOrdinalChooser];
      }

      intervalPickerViewController = currentChooser;
      [currentChooser heightForRow:{objc_msgSend(pathCopy, "row")}];
      v4 = v15;
      goto LABEL_16;
    }

    if (v9 == 4)
    {
      intervalPickerViewController = [(TTRICustomRecurrenceViewController *)self intervalPickerViewController];
      view = [intervalPickerViewController view];
      [view systemLayoutSizeFittingSize:{*MEMORY[0x277D76C78], *(MEMORY[0x277D76C78] + 8)}];
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

    intervalPickerViewController = [(TTRICustomRecurrenceViewController *)self frequencyPickerView];
    [intervalPickerViewController systemLayoutSizeFittingSize:{*MEMORY[0x277D76C78], *(MEMORY[0x277D76C78] + 8)}];
    v4 = v16;
LABEL_16:

    goto LABEL_17;
  }

LABEL_8:
  [viewCopy rowHeight];
  v4 = v10;
LABEL_17:

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
  v6 = [(TTRICustomRecurrenceViewController *)self _tagForIndexPath:pathCopy];
  if (v6 == 1 || v6 == 3)
  {
    [(TTRICustomRecurrenceViewController *)self _toggleInlineSpinnerForTag:v6];
  }

  else if (v6 == 7)
  {
    currentChooser = [(TTRICustomRecurrenceViewController *)self currentChooser];
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
    v6 = [(TTRICustomRecurrenceViewController *)self recurrenceSummaryString:view];
  }

  return v6;
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  pathCopy = path;
  if ([pathCopy section] == 1)
  {
    currentChooser = [(TTRICustomRecurrenceViewController *)self currentChooser];
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

- (int64_t)pickerView:(id)view numberOfRowsInComponent:(int64_t)component
{
  v4 = [(TTRICustomRecurrenceViewController *)self _availableRecurrenceFrequencies:view];
  v5 = [v4 count];

  return v5;
}

- (id)pickerView:(id)view titleForRow:(int64_t)row forComponent:(int64_t)component
{
  v6 = [(TTRICustomRecurrenceViewController *)self _recurrenceFrequencyForPickerRow:row];

  return [(TTRICustomRecurrenceViewController *)self _stringForFrequency:v6];
}

- (void)pickerView:(id)view didSelectRow:(int64_t)row inComponent:(int64_t)component
{
  v6 = [(TTRICustomRecurrenceViewController *)self _recurrenceFrequencyForPickerRow:row];
  if (self->_cachedFrequency != v6)
  {
    self->_cachedFrequency = v6;
    [(TTRICustomRecurrenceViewController *)self _frequencyPickerViewUpdated];

    [(TTRICustomRecurrenceViewController *)self _updateIntervalPicker];
  }
}

- (id)pickerView:(id)view accessibilityLabelForComponent:(int64_t)component
{
  if (component)
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

- (int64_t)_pickerRowForRecurrenceFrequency:(int64_t)frequency
{
  _availableRecurrenceFrequencies = [(TTRICustomRecurrenceViewController *)self _availableRecurrenceFrequencies];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:frequency];
  v6 = [_availableRecurrenceFrequencies indexOfObject:v5];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

- (int64_t)_recurrenceFrequencyForPickerRow:(int64_t)row
{
  _availableRecurrenceFrequencies = [(TTRICustomRecurrenceViewController *)self _availableRecurrenceFrequencies];
  v5 = [_availableRecurrenceFrequencies objectAtIndexedSubscript:row];
  integerValue = [v5 integerValue];

  return integerValue;
}

- (id)_availableRecurrenceFrequencies
{
  cachedAvailableRecurrenceFrequencies = [(TTRICustomRecurrenceViewController *)self cachedAvailableRecurrenceFrequencies];

  if (!cachedAvailableRecurrenceFrequencies)
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

- (void)recurrenceChooserUpdated:(id)updated
{
  [(TTRICustomRecurrenceViewController *)self _updateRecurrenceRule];

  [(TTRICustomRecurrenceViewController *)self _collapseAllPickers];
}

- (void)recurrenceChooserWantsReload:(id)reload
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

- (void)recurrenceChooser:(id)chooser wantsRowReload:(int64_t)reload
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __71__TTRICustomRecurrenceViewController_recurrenceChooser_wantsRowReload___block_invoke;
  v4[3] = &unk_27832D4E8;
  v4[4] = self;
  v4[5] = reload;
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
  currentChooser = [(TTRICustomRecurrenceViewController *)self currentChooser];
  v6 = currentChooser;
  if (currentChooser)
  {
    cachedFrequency = [currentChooser frequency];
    [v6 updateRecurrenceRuleBuilder:v11];
  }

  [v11 setFrequency:cachedFrequency];
  [v11 setInterval:cachedInterval];
  yearlyChooser = [(TTRICustomRecurrenceViewController *)self yearlyChooser];
  if (v6 == yearlyChooser)
  {
    yearOrdinalSwitch = [(TTRICustomRecurrenceViewController *)self yearOrdinalSwitch];
    isOn = [yearOrdinalSwitch isOn];

    if (!isOn)
    {
      goto LABEL_7;
    }

    yearlyChooser = [(TTRICustomRecurrenceViewController *)self yearlyOrdinalChooser];
    [yearlyChooser updateRecurrenceRuleBuilder:v11];
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
      [(TTRICustomRecurrenceViewController *)self _updateSummaryLabel];
      ruleCopy = v8;
    }

    if (pickersCopy)
    {
      [(TTRICustomRecurrenceViewController *)self _refreshCacheAndPickers];
      ruleCopy = v8;
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
    yearOrdinalSwitch = [(TTRICustomRecurrenceViewController *)self yearOrdinalSwitch];
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
  monthlyChooser = [(TTRICustomRecurrenceViewController *)self monthlyChooser];
  prohibitsMultipleDaysInMonthlyRecurrence = [monthlyChooser prohibitsMultipleDaysInMonthlyRecurrence];

  return prohibitsMultipleDaysInMonthlyRecurrence;
}

- (void)setProhibitsMultipleDaysInMonthlyRecurrence:(BOOL)recurrence
{
  recurrenceCopy = recurrence;
  monthlyChooser = [(TTRICustomRecurrenceViewController *)self monthlyChooser];
  [monthlyChooser setProhibitsMultipleDaysInMonthlyRecurrence:recurrenceCopy];
}

- (BOOL)prohibitsMultipleMonthsInYearlyRecurrence
{
  yearlyChooser = [(TTRICustomRecurrenceViewController *)self yearlyChooser];
  prohibitsMultipleMonthsInYearlyRecurrence = [yearlyChooser prohibitsMultipleMonthsInYearlyRecurrence];

  return prohibitsMultipleMonthsInYearlyRecurrence;
}

- (void)setProhibitsMultipleMonthsInYearlyRecurrence:(BOOL)recurrence
{
  recurrenceCopy = recurrence;
  yearlyChooser = [(TTRICustomRecurrenceViewController *)self yearlyChooser];
  [yearlyChooser setProhibitsMultipleMonthsInYearlyRecurrence:recurrenceCopy];
}

- (void)_updateSummaryLabel
{
  v3 = MEMORY[0x277D44748];
  recurrenceRule = [(TTRICustomRecurrenceViewController *)self recurrenceRule];
  startDate = [(TTRICustomRecurrenceViewController *)self startDate];
  v6 = [v3 naturalLanguageDescriptionForRecurrenceRule:recurrenceRule withStartDate:startDate];
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
  currentChooser = [(TTRICustomRecurrenceViewController *)self currentChooser];
  frequency = [currentChooser frequency];

  v5 = [(TTRICustomRecurrenceViewController *)self _chooserForFrequency:self->_cachedFrequency];
  [(TTRICustomRecurrenceViewController *)self setCurrentChooser:v5];

  currentChooser2 = [(TTRICustomRecurrenceViewController *)self currentChooser];
  frequency2 = [currentChooser2 frequency];

  currentChooser3 = [(TTRICustomRecurrenceViewController *)self currentChooser];
  [currentChooser3 updateFromRecurrenceRule:self->_cachedRecurrenceRule];

  [(TTRICustomRecurrenceViewController *)self _updateTableSectionsFromFrequency:frequency toFrequency:frequency2];
}

- (void)_updateTableSectionsFromFrequency:(int64_t)frequency toFrequency:(int64_t)toFrequency
{
  tableView = [(TTRICustomRecurrenceViewController *)self tableView];
  [tableView beginUpdates];

  if (frequency == 3 || toFrequency != 3)
  {
    if (frequency == 3 && toFrequency != 3)
    {
      tableView2 = [(TTRICustomRecurrenceViewController *)self tableView];
      v14 = [MEMORY[0x277CCAA78] indexSetWithIndex:2];
      [tableView2 deleteSections:v14 withRowAnimation:6];

      v10 = toFrequency != 0;
      goto LABEL_10;
    }
  }

  else
  {
    tableView3 = [(TTRICustomRecurrenceViewController *)self tableView];
    v9 = [MEMORY[0x277CCAA78] indexSetWithIndex:2];
    [tableView3 insertSections:v9 withRowAnimation:6];
  }

  v10 = toFrequency != 0;
  if (!frequency && toFrequency)
  {
    tableView4 = [(TTRICustomRecurrenceViewController *)self tableView];
    v12 = [MEMORY[0x277CCAA78] indexSetWithIndex:1];
    [tableView4 insertSections:v12 withRowAnimation:6];
LABEL_13:

    goto LABEL_14;
  }

LABEL_10:
  if (frequency && !toFrequency)
  {
    tableView4 = [(TTRICustomRecurrenceViewController *)self tableView];
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
    v17[2] = __84__TTRICustomRecurrenceViewController__updateTableSectionsFromFrequency_toFrequency___block_invoke;
    v17[3] = &unk_27832D498;
    v17[4] = self;
    [MEMORY[0x277D75D18] performWithoutAnimation:v17];
  }

LABEL_14:
  tableView5 = [(TTRICustomRecurrenceViewController *)self tableView];
  [tableView5 endUpdates];

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
  tableView = [(TTRICustomRecurrenceViewController *)self tableView];
  v8[0] = v3;
  v8[1] = v5;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:2];
  [tableView reloadRowsAtIndexPaths:v7 withRowAnimation:5];
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
  intervalPickerViewController = [(TTRICustomRecurrenceViewController *)self intervalPickerViewController];
  [intervalPickerViewController setFrequency:cachedFrequency];

  cachedInterval = self->_cachedInterval;
  intervalPickerViewController2 = [(TTRICustomRecurrenceViewController *)self intervalPickerViewController];
  [intervalPickerViewController2 setInterval:cachedInterval];
}

- (id)_chooserForFrequency:(int64_t)frequency
{
  switch(frequency)
  {
    case 3:
      yearlyChooser = [(TTRICustomRecurrenceViewController *)self yearlyChooser];
      break;
    case 2:
      yearlyChooser = [(TTRICustomRecurrenceViewController *)self monthlyChooser];
      break;
    case 1:
      yearlyChooser = [(TTRICustomRecurrenceViewController *)self weeklyChooser];
      break;
    default:
      yearlyChooser = 0;
      break;
  }

  return yearlyChooser;
}

- (void)_yearOrdinalSwitchChanged:(id)changed
{
  v12[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCAA70];
  changedCopy = changed;
  v6 = [v4 indexPathForRow:1 inSection:2];
  isOn = [changedCopy isOn];

  tableView = [(TTRICustomRecurrenceViewController *)self tableView];
  if (isOn)
  {
    v12[0] = v6;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
    [tableView insertRowsAtIndexPaths:v9 withRowAnimation:6];

    tableView = [(TTRICustomRecurrenceViewController *)self tableView];
    [tableView scrollToRowAtIndexPath:v6 atScrollPosition:3 animated:1];
  }

  else
  {
    v11 = v6;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v11 count:1];
    [tableView deleteRowsAtIndexPaths:v10 withRowAnimation:6];
  }

  [(TTRICustomRecurrenceViewController *)self _collapseAllPickers];
  [(TTRICustomRecurrenceViewController *)self _updateRecurrenceRule];
  [(TTRICustomRecurrenceViewController *)self calculatePreferredContentSize];
  [(TTRICustomRecurrenceViewController *)self setPreferredContentSize:?];
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
    v5 = off_27832D6C8[frequency];
    v6 = RemindersUICoreBundleGet();
    v7 = [v6 localizedStringForKey:v5 value:&stru_282EF0770 table:@"PluralLocalizable"];
  }

  interval = [MEMORY[0x277CCACA8] localizedStringWithFormat:v7, interval];

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
        return 6;
      }

      else
      {
        return 5;
      }
    }

    return 0;
  }

  if (section == 1)
  {
    return 7;
  }

  if (section)
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

- (int64_t)_numberOfRowsForSection:(int64_t)section
{
  if (section == 2)
  {
    if (self->_cachedFrequency == 3)
    {
      yearOrdinalSwitch = [(TTRICustomRecurrenceViewController *)self yearOrdinalSwitch];
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

    return 0;
  }

  if (section == 1)
  {
    currentChooser = [(TTRICustomRecurrenceViewController *)self currentChooser];
    numberOfRows = [currentChooser numberOfRows];

    return numberOfRows;
  }

  if (section)
  {
    return 0;
  }

  return self->_showingIntervalPicker + self->_showingFrequencyPicker + 2;
}

- (void)_toggleInlineSpinnerForTag:(int64_t)tag
{
  tableView = [(TTRICustomRecurrenceViewController *)self tableView];
  [tableView beginUpdates];

  if (tag == 3)
  {
    [(TTRICustomRecurrenceViewController *)self _setShowingIntervalPicker:!self->_showingIntervalPicker];
  }

  else if (tag == 1)
  {
    [(TTRICustomRecurrenceViewController *)self _setShowingFrequencyPicker:!self->_showingFrequencyPicker];
  }

  tableView2 = [(TTRICustomRecurrenceViewController *)self tableView];
  [tableView2 endUpdates];

  [(TTRICustomRecurrenceViewController *)self calculatePreferredContentSize];

  [(TTRICustomRecurrenceViewController *)self setPreferredContentSize:?];
}

- (void)_collapseAllPickers
{
  [(TTRICustomRecurrenceViewController *)self _setShowingFrequencyPicker:0];

  [(TTRICustomRecurrenceViewController *)self _setShowingIntervalPicker:0];
}

- (void)_setShowingFrequencyPicker:(BOOL)picker
{
  v12[1] = *MEMORY[0x277D85DE8];
  if (self->_showingFrequencyPicker == picker)
  {
    return;
  }

  pickerCopy = picker;
  self->_showingFrequencyPicker = picker;
  v5 = [MEMORY[0x277CCAA70] indexPathForRow:1 inSection:0];
  showingFrequencyPicker = self->_showingFrequencyPicker;
  tableView = [(TTRICustomRecurrenceViewController *)self tableView];
  if (!showingFrequencyPicker)
  {
    v11 = v5;
    view = [MEMORY[0x277CBEA60] arrayWithObjects:&v11 count:1];
    [tableView deleteRowsAtIndexPaths:view withRowAnimation:6];

    if (!pickerCopy)
    {
      goto LABEL_4;
    }

LABEL_6:
    view = [(TTRICustomRecurrenceViewController *)self view];
    tintColor = [view tintColor];
    goto LABEL_7;
  }

  v12[0] = v5;
  view = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  [tableView insertRowsAtIndexPaths:view withRowAnimation:6];

  [(TTRICustomRecurrenceViewController *)self _setShowingIntervalPicker:0];
  if (pickerCopy)
  {
    goto LABEL_6;
  }

LABEL_4:
  tintColor = [MEMORY[0x277D75348] tableCellGrayTextColor];
LABEL_7:
  detailTextLabel = [(UITableViewCell *)self->_frequencySummaryCell detailTextLabel];
  [detailTextLabel setTextColor:tintColor];

  if (pickerCopy)
  {

    tintColor = view;
  }

  [(TTRICustomRecurrenceViewController *)self calculatePreferredContentSize];
  [(TTRICustomRecurrenceViewController *)self setPreferredContentSize:?];
}

- (void)_setShowingIntervalPicker:(BOOL)picker
{
  v12[1] = *MEMORY[0x277D85DE8];
  if (self->_showingIntervalPicker == picker)
  {
    return;
  }

  pickerCopy = picker;
  self->_showingIntervalPicker = picker;
  v5 = [MEMORY[0x277CCAA70] indexPathForRow:2 inSection:0];
  showingIntervalPicker = self->_showingIntervalPicker;
  tableView = [(TTRICustomRecurrenceViewController *)self tableView];
  if (!showingIntervalPicker)
  {
    v11 = v5;
    view = [MEMORY[0x277CBEA60] arrayWithObjects:&v11 count:1];
    [tableView deleteRowsAtIndexPaths:view withRowAnimation:6];

    if (!pickerCopy)
    {
      goto LABEL_4;
    }

LABEL_6:
    view = [(TTRICustomRecurrenceViewController *)self view];
    tintColor = [view tintColor];
    goto LABEL_7;
  }

  v12[0] = v5;
  view = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  [tableView insertRowsAtIndexPaths:view withRowAnimation:6];

  [(TTRICustomRecurrenceViewController *)self _setShowingFrequencyPicker:0];
  if (pickerCopy)
  {
    goto LABEL_6;
  }

LABEL_4:
  tintColor = [MEMORY[0x277D75348] tableCellGrayTextColor];
LABEL_7:
  detailTextLabel = [(UITableViewCell *)self->_intervalSummaryCell detailTextLabel];
  [detailTextLabel setTextColor:tintColor];

  if (pickerCopy)
  {

    tintColor = view;
  }

  [(TTRICustomRecurrenceViewController *)self calculatePreferredContentSize];
  [(TTRICustomRecurrenceViewController *)self setPreferredContentSize:?];
}

- (id)_localizedEveryStringForFrequency:(int64_t)frequency interval:(int64_t)interval
{
  if (frequency > 4)
  {
    v7 = 0;
  }

  else
  {
    v5 = off_27832D6F0[frequency];
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