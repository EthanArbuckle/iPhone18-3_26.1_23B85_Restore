@interface HUDSignpostInsightsMetricsHandle
@end

@implementation HUDSignpostInsightsMetricsHandle

void ___HUDSignpostInsightsMetricsHandle_block_invoke(id a1)
{
  v1 = os_log_create("com.apple.metal.hud", "Metrics");
  v2 = _HUDSignpostInsightsMetricsHandle_handle;
  _HUDSignpostInsightsMetricsHandle_handle = v1;

  _objc_release_x1(v1, v2);
}

@end