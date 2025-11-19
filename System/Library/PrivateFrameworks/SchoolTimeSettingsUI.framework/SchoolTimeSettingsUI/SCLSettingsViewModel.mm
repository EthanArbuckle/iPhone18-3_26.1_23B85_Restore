@interface SCLSettingsViewModel
- (SCLSettingsViewModel)init;
@end

@implementation SCLSettingsViewModel

- (SCLSettingsViewModel)init
{
  v10.receiver = self;
  v10.super_class = SCLSettingsViewModel;
  v2 = [(SCLSettingsViewModel *)&v10 init];
  v3 = v2;
  if (v2)
  {
    historyItems = v2->_historyItems;
    v5 = MEMORY[0x277CBEBF8];
    v2->_historyItems = MEMORY[0x277CBEBF8];

    timeIntervals = v3->_timeIntervals;
    v3->_timeIntervals = v5;

    v7 = [objc_alloc(MEMORY[0x277D4B738]) initWithRecurrences:v5];
    customSchedule = v3->_customSchedule;
    v3->_customSchedule = v7;
  }

  return v3;
}

@end