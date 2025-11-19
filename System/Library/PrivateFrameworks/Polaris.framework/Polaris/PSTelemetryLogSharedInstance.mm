@interface PSTelemetryLogSharedInstance
@end

@implementation PSTelemetryLogSharedInstance

os_log_t ____PSTelemetryLogSharedInstance_block_invoke()
{
  result = os_log_create("com.apple.polaris", "telemetry");
  sharedInstance_4 = result;
  return result;
}

@end