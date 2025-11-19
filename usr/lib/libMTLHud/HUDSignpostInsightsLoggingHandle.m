@interface HUDSignpostInsightsLoggingHandle
@end

@implementation HUDSignpostInsightsLoggingHandle

void ___HUDSignpostInsightsLoggingHandle_block_invoke(id a1)
{
  v1 = os_log_create("com.apple.metal.hud", "Insights");
  v2 = _HUDSignpostInsightsLoggingHandle_handle;
  _HUDSignpostInsightsLoggingHandle_handle = v1;

  _objc_release_x1(v1, v2);
}

@end