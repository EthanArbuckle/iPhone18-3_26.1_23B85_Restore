@interface PolarisGSMLogSharedInstance
@end

@implementation PolarisGSMLogSharedInstance

os_log_t ____PolarisGSMLogSharedInstance_block_invoke()
{
  result = os_log_create("com.apple.polaris", "polarisgsm");
  sharedInstance_2 = result;
  return result;
}

@end