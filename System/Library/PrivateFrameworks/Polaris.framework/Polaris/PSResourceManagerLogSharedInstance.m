@interface PSResourceManagerLogSharedInstance
@end

@implementation PSResourceManagerLogSharedInstance

os_log_t ____PSResourceManagerLogSharedInstance_block_invoke()
{
  result = os_log_create("com.apple.polaris.polaris", "PolarisResourceManagement.framework");
  sharedInstance_1 = result;
  return result;
}

@end