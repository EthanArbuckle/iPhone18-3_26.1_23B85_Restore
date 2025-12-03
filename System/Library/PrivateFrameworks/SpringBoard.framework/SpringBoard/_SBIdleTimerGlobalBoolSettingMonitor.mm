@interface _SBIdleTimerGlobalBoolSettingMonitor
- (BOOL)BOOLValue;
- (_SBIdleTimerGlobalBoolSettingMonitor)initWithLabel:(id)label delegate:(id)delegate updatingForNotification:(id)notification fetchingWith:(id)with;
- (id)formattedValue;
@end

@implementation _SBIdleTimerGlobalBoolSettingMonitor

- (BOOL)BOOLValue
{
  numericValue = [(_SBIdleTimerGlobalNumericSettingMonitor *)self numericValue];
  bOOLValue = [numericValue BOOLValue];

  return bOOLValue;
}

- (_SBIdleTimerGlobalBoolSettingMonitor)initWithLabel:(id)label delegate:(id)delegate updatingForNotification:(id)notification fetchingWith:(id)with
{
  withCopy = with;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __100___SBIdleTimerGlobalBoolSettingMonitor_initWithLabel_delegate_updatingForNotification_fetchingWith___block_invoke;
  v15[3] = &unk_2783C1C48;
  v16 = withCopy;
  v14.receiver = self;
  v14.super_class = _SBIdleTimerGlobalBoolSettingMonitor;
  v11 = withCopy;
  v12 = [(_SBIdleTimerGlobalNumericSettingMonitor *)&v14 initWithLabel:label delegate:delegate updatingForNotification:notification fetchingWith:v15];

  return v12;
}

- (id)formattedValue
{
  v2 = [MEMORY[0x277CCABB0] numberWithBool:{-[_SBIdleTimerGlobalBoolSettingMonitor BOOLValue](self, "BOOLValue")}];
  v3 = [v2 description];

  return v3;
}

@end