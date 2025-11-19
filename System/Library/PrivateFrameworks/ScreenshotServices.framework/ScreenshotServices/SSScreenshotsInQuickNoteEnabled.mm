@interface SSScreenshotsInQuickNoteEnabled
@end

@implementation SSScreenshotsInQuickNoteEnabled

uint64_t ___SSScreenshotsInQuickNoteEnabled_block_invoke()
{
  result = _os_feature_enabled_impl();
  _SSScreenshotsInQuickNoteEnabled___SSScreenshotsInQuickNoteEnabled = result;
  return result;
}

@end