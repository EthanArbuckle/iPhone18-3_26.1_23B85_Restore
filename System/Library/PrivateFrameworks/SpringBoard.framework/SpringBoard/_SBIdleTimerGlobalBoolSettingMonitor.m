@interface _SBIdleTimerGlobalBoolSettingMonitor
- (BOOL)BOOLValue;
- (_SBIdleTimerGlobalBoolSettingMonitor)initWithLabel:(id)a3 delegate:(id)a4 updatingForNotification:(id)a5 fetchingWith:(id)a6;
- (id)formattedValue;
@end

@implementation _SBIdleTimerGlobalBoolSettingMonitor

- (BOOL)BOOLValue
{
  v2 = [(_SBIdleTimerGlobalNumericSettingMonitor *)self numericValue];
  v3 = [v2 BOOLValue];

  return v3;
}

- (_SBIdleTimerGlobalBoolSettingMonitor)initWithLabel:(id)a3 delegate:(id)a4 updatingForNotification:(id)a5 fetchingWith:(id)a6
{
  v10 = a6;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __100___SBIdleTimerGlobalBoolSettingMonitor_initWithLabel_delegate_updatingForNotification_fetchingWith___block_invoke;
  v15[3] = &unk_2783C1C48;
  v16 = v10;
  v14.receiver = self;
  v14.super_class = _SBIdleTimerGlobalBoolSettingMonitor;
  v11 = v10;
  v12 = [(_SBIdleTimerGlobalNumericSettingMonitor *)&v14 initWithLabel:a3 delegate:a4 updatingForNotification:a5 fetchingWith:v15];

  return v12;
}

- (id)formattedValue
{
  v2 = [MEMORY[0x277CCABB0] numberWithBool:{-[_SBIdleTimerGlobalBoolSettingMonitor BOOLValue](self, "BOOLValue")}];
  v3 = [v2 description];

  return v3;
}

@end