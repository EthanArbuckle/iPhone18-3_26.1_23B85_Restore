@interface AXSPhotosensitiveVisualDebuggingEnabledSymbolLoc
@end

@implementation AXSPhotosensitiveVisualDebuggingEnabledSymbolLoc

void *__get_AXSPhotosensitiveVisualDebuggingEnabledSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = libAccessibilityLibrary();
  result = dlsym(v2, "_AXSPhotosensitiveVisualDebuggingEnabled");
  *(*(*(a1 + 32) + 8) + 24) = result;
  get_AXSPhotosensitiveVisualDebuggingEnabledSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end