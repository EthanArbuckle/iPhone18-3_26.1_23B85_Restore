@interface SSScreenshotsRedesign2025Enabled
@end

@implementation SSScreenshotsRedesign2025Enabled

uint64_t ___SSScreenshotsRedesign2025Enabled_block_invoke()
{
  result = _UISolariumEnabled();
  if (result)
  {
    result = _os_feature_enabled_impl();
  }

  _SSScreenshotsRedesign2025Enabled___SSScreenshotsRedesign2025Enabled = result;
  return result;
}

@end