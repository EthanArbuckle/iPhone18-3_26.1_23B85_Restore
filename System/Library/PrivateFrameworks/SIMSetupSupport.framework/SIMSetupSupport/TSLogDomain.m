@interface TSLogDomain
@end

@implementation TSLogDomain

uint64_t ___TSLogDomain_block_invoke()
{
  _TSLogDomain_oslog = os_log_create("com.apple.SIMSetupSupport", "log");

  return MEMORY[0x2821F96F8]();
}

@end