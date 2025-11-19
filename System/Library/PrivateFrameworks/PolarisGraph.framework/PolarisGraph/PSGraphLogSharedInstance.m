@interface PSGraphLogSharedInstance
@end

@implementation PSGraphLogSharedInstance

uint64_t ____PSGraphLogSharedInstance_block_invoke()
{
  sharedInstance_0 = os_log_create("com.apple.polaris.polaris", "PolarisGraph.framework");

  return MEMORY[0x2821F96F8]();
}

@end