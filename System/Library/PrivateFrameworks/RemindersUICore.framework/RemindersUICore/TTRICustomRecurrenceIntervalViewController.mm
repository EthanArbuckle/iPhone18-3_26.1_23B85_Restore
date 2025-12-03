@interface TTRICustomRecurrenceIntervalViewController
- (TTRICustomRecurrenceIntervalViewController)initWithSelectedInterval:(int64_t)interval frequency:(int64_t)frequency changeBlock:(id)block;
- (id)_pickerViewFrequencyTitleForUnit:(int64_t)unit;
- (id)pickerView;
- (id)pickerView:(id)view accessibilityLabelForComponent:(int64_t)component;
- (id)pickerView:(id)view titleForRow:(int64_t)row forComponent:(int64_t)component;
- (int64_t)pickerView:(id)view numberOfRowsInComponent:(int64_t)component;
- (void)loadView;
- (void)pickerView:(id)view didSelectRow:(int64_t)row inComponent:(int64_t)component;
- (void)setFrequency:(int64_t)frequency;
- (void)setInterval:(int64_t)interval;
- (void)setMaximumInterval:(BOOL)interval;
- (void)viewDidLoad;
@end

@implementation TTRICustomRecurrenceIntervalViewController

- (TTRICustomRecurrenceIntervalViewController)initWithSelectedInterval:(int64_t)interval frequency:(int64_t)frequency changeBlock:(id)block
{
  blockCopy = block;
  v14.receiver = self;
  v14.super_class = TTRICustomRecurrenceIntervalViewController;
  v9 = [(TTRICustomRecurrenceIntervalViewController *)&v14 initWithNibName:0 bundle:0];
  v10 = v9;
  if (v9)
  {
    v9->_frequency = frequency;
    v9->_interval = interval;
    v11 = _Block_copy(blockCopy);
    changeBlock = v10->_changeBlock;
    v10->_changeBlock = v11;
  }

  return v10;
}

- (void)loadView
{
  pickerView = [(TTRICustomRecurrenceIntervalViewController *)self pickerView];
  [(TTRICustomRecurrenceIntervalViewController *)self setView:pickerView];
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = TTRICustomRecurrenceIntervalViewController;
  [(TTRICustomRecurrenceIntervalViewController *)&v4 viewDidLoad];
  pickerView = [(TTRICustomRecurrenceIntervalViewController *)self pickerView];
  [pickerView _setHostsLayoutEngine:0];
}

- (id)pickerView
{
  pickerView = self->_pickerView;
  if (!pickerView)
  {
    v4 = objc_opt_new();
    v5 = self->_pickerView;
    self->_pickerView = v4;

    [(UIPickerView *)self->_pickerView setDelegate:self];
    [(UIPickerView *)self->_pickerView setDataSource:self];
    pickerView = self->_pickerView;
  }

  return pickerView;
}

- (void)setFrequency:(int64_t)frequency
{
  if (self->_frequency != frequency)
  {
    self->_frequency = frequency;
    [(UIPickerView *)self->_pickerView reloadComponent:1];
  }
}

- (void)setInterval:(int64_t)interval
{
  if (self->_interval != interval)
  {
    self->_interval = interval;
    [(UIPickerView *)self->_pickerView selectRow:interval - 1 inComponent:0 animated:0];
  }
}

- (void)setMaximumInterval:(BOOL)interval
{
  if (self->_maximumInterval != interval)
  {
    self->_maximumInterval = interval;
    interval = [(TTRICustomRecurrenceIntervalViewController *)self interval];
    [(UIPickerView *)self->_pickerView reloadComponent:0];
    if ([(TTRICustomRecurrenceIntervalViewController *)self interval]<= self->_maximumInterval)
    {
      maximumInterval = interval;
    }

    else
    {
      maximumInterval = self->_maximumInterval;
    }

    [(TTRICustomRecurrenceIntervalViewController *)self setInterval:maximumInterval];
  }
}

- (int64_t)pickerView:(id)view numberOfRowsInComponent:(int64_t)component
{
  if (component)
  {
    return 1;
  }

  if ([(TTRICustomRecurrenceIntervalViewController *)self maximumInterval])
  {
    return [(TTRICustomRecurrenceIntervalViewController *)self maximumInterval];
  }

  return 999;
}

- (id)pickerView:(id)view titleForRow:(int64_t)row forComponent:(int64_t)component
{
  viewCopy = view;
  v8 = viewCopy;
  if (component == 1)
  {
    v9 = -[TTRICustomRecurrenceIntervalViewController _pickerViewFrequencyTitleForUnit:](self, "_pickerViewFrequencyTitleForUnit:", [viewCopy selectedRowInComponent:0] + 1);
    goto LABEL_5;
  }

  if (!component)
  {
    v9 = CUIKLocalizedStringForInteger();
LABEL_5:
    v10 = v9;
    goto LABEL_7;
  }

  v10 = 0;
LABEL_7:

  return v10;
}

- (void)pickerView:(id)view didSelectRow:(int64_t)row inComponent:(int64_t)component
{
  viewCopy = view;
  v7 = [viewCopy selectedRowInComponent:1];
  v8 = [viewCopy selectedRowInComponent:0];
  changeBlock = [(TTRICustomRecurrenceIntervalViewController *)self changeBlock];
  changeBlock[2](changeBlock, v8 + 1, v7);

  if (!component)
  {
    [viewCopy reloadComponent:1];
  }
}

- (id)pickerView:(id)view accessibilityLabelForComponent:(int64_t)component
{
  viewCopy = view;
  if (component == 1)
  {
    v7 = RemindersUICoreBundleGet();
    v11 = [v7 localizedStringForKey:@"Unit" value:@"Unit" table:@"Localizable"];
    goto LABEL_5;
  }

  if (!component)
  {
    v7 = [(TTRICustomRecurrenceIntervalViewController *)self _pickerViewFrequencyTitleForUnit:2];
    v8 = MEMORY[0x277CCACA8];
    v9 = RemindersUICoreBundleGet();
    v10 = [v9 localizedStringForKey:@"Number of %@" value:@"Number of %@" table:@"Localizable"];
    v11 = [v8 localizedStringWithFormat:v10, v7];

LABEL_5:
    goto LABEL_7;
  }

  v11 = 0;
LABEL_7:

  return v11;
}

- (id)_pickerViewFrequencyTitleForUnit:(int64_t)unit
{
  frequency = self->_frequency;
  if (frequency <= 1)
  {
    if (frequency)
    {
      if (frequency != 1)
      {
        goto LABEL_13;
      }

      v6 = MEMORY[0x277CCACA8];
      v7 = RemindersUICoreBundleGet();
      v8 = v7;
      v9 = @"CUSTOM_RECURRENCE_INTERVAL_LABEL_WEEKS";
      v10 = @"Weeks";
    }

    else
    {
      v6 = MEMORY[0x277CCACA8];
      v7 = RemindersUICoreBundleGet();
      v8 = v7;
      v9 = @"CUSTOM_RECURRENCE_INTERVAL_LABEL_DAYS";
      v10 = @"Days";
    }
  }

  else
  {
    switch(frequency)
    {
      case 2:
        v6 = MEMORY[0x277CCACA8];
        v7 = RemindersUICoreBundleGet();
        v8 = v7;
        v9 = @"CUSTOM_RECURRENCE_INTERVAL_LABEL_MONTHS";
        v10 = @"Months";
        break;
      case 3:
        v6 = MEMORY[0x277CCACA8];
        v7 = RemindersUICoreBundleGet();
        v8 = v7;
        v9 = @"CUSTOM_RECURRENCE_INTERVAL_LABEL_YEARS";
        v10 = @"Years";
        break;
      case 4:
        v6 = MEMORY[0x277CCACA8];
        v7 = RemindersUICoreBundleGet();
        v8 = v7;
        v9 = @"CUSTOM_RECURRENCE_INTERVAL_LABEL_HOURS";
        v10 = @"Hours";
        break;
      default:
        goto LABEL_13;
    }
  }

  v11 = [v7 localizedStringForKey:v9 value:v10 table:@"PluralLocalizable"];
  unit = [v6 localizedStringWithFormat:v11, unit];

LABEL_13:

  return unit;
}

@end