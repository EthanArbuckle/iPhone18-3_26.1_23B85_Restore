@interface TTRICustomRecurrenceIntervalViewController
- (TTRICustomRecurrenceIntervalViewController)initWithSelectedInterval:(int64_t)a3 frequency:(int64_t)a4 changeBlock:(id)a5;
- (id)_pickerViewFrequencyTitleForUnit:(int64_t)a3;
- (id)pickerView;
- (id)pickerView:(id)a3 accessibilityLabelForComponent:(int64_t)a4;
- (id)pickerView:(id)a3 titleForRow:(int64_t)a4 forComponent:(int64_t)a5;
- (int64_t)pickerView:(id)a3 numberOfRowsInComponent:(int64_t)a4;
- (void)loadView;
- (void)pickerView:(id)a3 didSelectRow:(int64_t)a4 inComponent:(int64_t)a5;
- (void)setFrequency:(int64_t)a3;
- (void)setInterval:(int64_t)a3;
- (void)setMaximumInterval:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation TTRICustomRecurrenceIntervalViewController

- (TTRICustomRecurrenceIntervalViewController)initWithSelectedInterval:(int64_t)a3 frequency:(int64_t)a4 changeBlock:(id)a5
{
  v8 = a5;
  v14.receiver = self;
  v14.super_class = TTRICustomRecurrenceIntervalViewController;
  v9 = [(TTRICustomRecurrenceIntervalViewController *)&v14 initWithNibName:0 bundle:0];
  v10 = v9;
  if (v9)
  {
    v9->_frequency = a4;
    v9->_interval = a3;
    v11 = _Block_copy(v8);
    changeBlock = v10->_changeBlock;
    v10->_changeBlock = v11;
  }

  return v10;
}

- (void)loadView
{
  v3 = [(TTRICustomRecurrenceIntervalViewController *)self pickerView];
  [(TTRICustomRecurrenceIntervalViewController *)self setView:v3];
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = TTRICustomRecurrenceIntervalViewController;
  [(TTRICustomRecurrenceIntervalViewController *)&v4 viewDidLoad];
  v3 = [(TTRICustomRecurrenceIntervalViewController *)self pickerView];
  [v3 _setHostsLayoutEngine:0];
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

- (void)setFrequency:(int64_t)a3
{
  if (self->_frequency != a3)
  {
    self->_frequency = a3;
    [(UIPickerView *)self->_pickerView reloadComponent:1];
  }
}

- (void)setInterval:(int64_t)a3
{
  if (self->_interval != a3)
  {
    self->_interval = a3;
    [(UIPickerView *)self->_pickerView selectRow:a3 - 1 inComponent:0 animated:0];
  }
}

- (void)setMaximumInterval:(BOOL)a3
{
  if (self->_maximumInterval != a3)
  {
    self->_maximumInterval = a3;
    v4 = [(TTRICustomRecurrenceIntervalViewController *)self interval];
    [(UIPickerView *)self->_pickerView reloadComponent:0];
    if ([(TTRICustomRecurrenceIntervalViewController *)self interval]<= self->_maximumInterval)
    {
      maximumInterval = v4;
    }

    else
    {
      maximumInterval = self->_maximumInterval;
    }

    [(TTRICustomRecurrenceIntervalViewController *)self setInterval:maximumInterval];
  }
}

- (int64_t)pickerView:(id)a3 numberOfRowsInComponent:(int64_t)a4
{
  if (a4)
  {
    return 1;
  }

  if ([(TTRICustomRecurrenceIntervalViewController *)self maximumInterval])
  {
    return [(TTRICustomRecurrenceIntervalViewController *)self maximumInterval];
  }

  return 999;
}

- (id)pickerView:(id)a3 titleForRow:(int64_t)a4 forComponent:(int64_t)a5
{
  v7 = a3;
  v8 = v7;
  if (a5 == 1)
  {
    v9 = -[TTRICustomRecurrenceIntervalViewController _pickerViewFrequencyTitleForUnit:](self, "_pickerViewFrequencyTitleForUnit:", [v7 selectedRowInComponent:0] + 1);
    goto LABEL_5;
  }

  if (!a5)
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

- (void)pickerView:(id)a3 didSelectRow:(int64_t)a4 inComponent:(int64_t)a5
{
  v10 = a3;
  v7 = [v10 selectedRowInComponent:1];
  v8 = [v10 selectedRowInComponent:0];
  v9 = [(TTRICustomRecurrenceIntervalViewController *)self changeBlock];
  v9[2](v9, v8 + 1, v7);

  if (!a5)
  {
    [v10 reloadComponent:1];
  }
}

- (id)pickerView:(id)a3 accessibilityLabelForComponent:(int64_t)a4
{
  v6 = a3;
  if (a4 == 1)
  {
    v7 = RemindersUICoreBundleGet();
    v11 = [v7 localizedStringForKey:@"Unit" value:@"Unit" table:@"Localizable"];
    goto LABEL_5;
  }

  if (!a4)
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

- (id)_pickerViewFrequencyTitleForUnit:(int64_t)a3
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
  v3 = [v6 localizedStringWithFormat:v11, a3];

LABEL_13:

  return v3;
}

@end