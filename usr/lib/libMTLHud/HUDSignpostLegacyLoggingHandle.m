@interface HUDSignpostLegacyLoggingHandle
@end

@implementation HUDSignpostLegacyLoggingHandle

void ___HUDSignpostLegacyLoggingHandle_block_invoke(id a1)
{
  v1 = os_log_create("com.apple.metal.hud", "Logging");
  v2 = _HUDSignpostLegacyLoggingHandle_handle;
  _HUDSignpostLegacyLoggingHandle_handle = v1;

  _objc_release_x1(v1, v2);
}

@end