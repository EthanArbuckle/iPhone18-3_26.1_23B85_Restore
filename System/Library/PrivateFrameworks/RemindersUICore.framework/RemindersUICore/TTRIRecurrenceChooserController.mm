@interface TTRIRecurrenceChooserController
+ (int)dayFromNumber:(int64_t)number;
- (TTRIRecurrenceChooserController)initWithDate:(id)date;
- (TTRIRecurrenceChooserControllerDelegate)delegate;
- (id)cellForRow:(int64_t)row;
- (id)startDateComponents:(unint64_t)components;
- (int64_t)frequency;
- (void)notifyDelegate;
@end

@implementation TTRIRecurrenceChooserController

- (TTRIRecurrenceChooserController)initWithDate:(id)date
{
  dateCopy = date;
  v5 = [(TTRIRecurrenceChooserController *)self init];
  v6 = v5;
  if (v5)
  {
    [(TTRIRecurrenceChooserController *)v5 setDate:dateCopy];
  }

  return v6;
}

+ (int)dayFromNumber:(int64_t)number
{
  if ((number - 1) > 6)
  {
    return 0;
  }

  else
  {
    return dword_21DC05FF0[number - 1];
  }
}

- (id)startDateComponents:(unint64_t)components
{
  date = [(TTRIRecurrenceChooserController *)self date];
  if (date)
  {
    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
    v6 = [currentCalendar components:components fromDate:date];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)notifyDelegate
{
  delegate = [(TTRIRecurrenceChooserController *)self delegate];
  [delegate recurrenceChooserUpdated:self];
}

- (TTRIRecurrenceChooserControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (int64_t)frequency
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return -1;
}

- (id)cellForRow:(int64_t)row
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  v3 = [[TTRICustomRecurrenceTableViewCell alloc] initWithStyle:0 reuseIdentifier:0];

  return v3;
}

@end