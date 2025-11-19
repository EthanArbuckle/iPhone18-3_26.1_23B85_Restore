@interface SBIdleTimerGlobalBoolSettingMonitor
@end

@implementation SBIdleTimerGlobalBoolSettingMonitor

uint64_t __100___SBIdleTimerGlobalBoolSettingMonitor_initWithLabel_delegate_updatingForNotification_fetchingWith___block_invoke(uint64_t a1)
{
  v1 = (*(*(a1 + 32) + 16))();
  v2 = MEMORY[0x277CCABB0];

  return [v2 numberWithBool:v1];
}

@end