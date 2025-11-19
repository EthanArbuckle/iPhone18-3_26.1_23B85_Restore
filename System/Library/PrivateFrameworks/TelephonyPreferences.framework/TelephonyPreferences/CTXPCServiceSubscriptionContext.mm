@interface CTXPCServiceSubscriptionContext
@end

@implementation CTXPCServiceSubscriptionContext

uint64_t __72__CTXPCServiceSubscriptionContext_TelephonyPreferences__telephonyClient__block_invoke()
{
  v0 = objc_alloc(MEMORY[0x277CC37B0]);
  telephonyClient_telephonyClient = [v0 initWithQueue:MEMORY[0x277D85CD0]];

  return MEMORY[0x2821F96F8]();
}

@end