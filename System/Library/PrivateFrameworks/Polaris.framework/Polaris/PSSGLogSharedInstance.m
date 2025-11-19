@interface PSSGLogSharedInstance
@end

@implementation PSSGLogSharedInstance

os_log_t ____PSSGLogSharedInstance_block_invoke()
{
  result = os_log_create("com.apple.polaris", "systemgraph");
  __PSSGLogSharedInstance_sharedInstance = result;
  return result;
}

@end