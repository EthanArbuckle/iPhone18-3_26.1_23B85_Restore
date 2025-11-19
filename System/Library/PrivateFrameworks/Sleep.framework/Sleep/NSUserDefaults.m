@interface NSUserDefaults
@end

@implementation NSUserDefaults

uint64_t __55__NSUserDefaults_HKSPSleep__hksp_analyticsUserDefaults__block_invoke()
{
  qword_280B06998 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.sleep.analytics"];

  return MEMORY[0x2821F96F8]();
}

void __52__NSUserDefaults_HKSPSleep__hksp_sleepdUserDefaults__block_invoke()
{
  v0 = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [v0 bundleIdentifier];

  if ([v3 isEqualToString:@"com.apple.sleepd"])
  {
    v1 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  }

  else
  {
    v1 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.sleepd"];
  }

  v2 = _MergedGlobals_15;
  _MergedGlobals_15 = v1;
}

uint64_t __54__NSUserDefaults_HKSPSleep__hksp_internalUserDefaults__block_invoke()
{
  qword_280B06988 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.internal.sleep"];

  return MEMORY[0x2821F96F8]();
}

uint64_t __57__NSUserDefaults_HKSPSleep__hksp_springBoardUserDefaults__block_invoke()
{
  qword_280B069A8 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.springboard"];

  return MEMORY[0x2821F96F8]();
}

@end