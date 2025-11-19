@interface SBIconController(AXStagingHack)
+ (void)sharedInstance;
@end

@implementation SBIconController(AXStagingHack)

+ (void)sharedInstance
{
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end