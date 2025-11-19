@interface PSExecutorLogSharedInstance
@end

@implementation PSExecutorLogSharedInstance

uint64_t ____PSExecutorLogSharedInstance_block_invoke()
{
  sharedInstance_0 = os_log_create("com.apple.polaris.polaris", "PolarisExecutor.framework");

  return MEMORY[0x2821F96F8]();
}

@end