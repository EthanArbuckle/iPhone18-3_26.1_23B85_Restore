@interface PSSysHealthLogSharedInstance
@end

@implementation PSSysHealthLogSharedInstance

os_log_t ____PSSysHealthLogSharedInstance_block_invoke()
{
  result = os_log_create("com.apple.polaris", "systemhealth");
  sharedInstance = result;
  return result;
}

@end