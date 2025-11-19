@interface AXSPhotosensitiveMitigationEnabledSymbolLoc
@end

@implementation AXSPhotosensitiveMitigationEnabledSymbolLoc

void *__get_AXSPhotosensitiveMitigationEnabledSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = libAccessibilityLibrary();
  result = dlsym(v2, "_AXSPhotosensitiveMitigationEnabled");
  *(*(*(a1 + 32) + 8) + 24) = result;
  get_AXSPhotosensitiveMitigationEnabledSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end