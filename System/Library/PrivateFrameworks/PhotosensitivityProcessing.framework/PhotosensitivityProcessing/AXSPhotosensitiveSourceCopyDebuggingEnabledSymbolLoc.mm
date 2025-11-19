@interface AXSPhotosensitiveSourceCopyDebuggingEnabledSymbolLoc
@end

@implementation AXSPhotosensitiveSourceCopyDebuggingEnabledSymbolLoc

void *__get_AXSPhotosensitiveSourceCopyDebuggingEnabledSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = libAccessibilityLibrary();
  result = dlsym(v2, "_AXSPhotosensitiveSourceCopyDebuggingEnabled");
  *(*(*(a1 + 32) + 8) + 24) = result;
  get_AXSPhotosensitiveSourceCopyDebuggingEnabledSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end