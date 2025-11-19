@interface LTOSLogOnboarding
@end

@implementation LTOSLogOnboarding

uint64_t ___LTOSLogOnboarding_block_invoke()
{
  _LTOSLogOnboarding_log = os_log_create("com.apple.Translation", "Onboarding");

  return MEMORY[0x2821F96F8]();
}

@end