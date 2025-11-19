@interface PSUtilitiesLogSharedInstance
@end

@implementation PSUtilitiesLogSharedInstance

os_log_t ____PSUtilitiesLogSharedInstance_block_invoke()
{
  result = os_log_create("com.apple.polaris.utilities", "Polaris.framework");
  sharedInstance = result;
  return result;
}

@end