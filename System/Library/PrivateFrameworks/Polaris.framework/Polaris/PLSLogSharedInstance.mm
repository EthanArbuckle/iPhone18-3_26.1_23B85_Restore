@interface PLSLogSharedInstance
@end

@implementation PLSLogSharedInstance

uint64_t ____PLSLogSharedInstance_block_invoke()
{
  sharedInstance_5 = os_log_create("com.apple.polaris.polaris", "Polaris.framework");

  return MEMORY[0x2821F96F8]();
}

@end