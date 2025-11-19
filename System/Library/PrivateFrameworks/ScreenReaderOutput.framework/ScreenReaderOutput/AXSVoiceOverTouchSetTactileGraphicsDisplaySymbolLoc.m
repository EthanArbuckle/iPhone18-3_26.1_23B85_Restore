@interface AXSVoiceOverTouchSetTactileGraphicsDisplaySymbolLoc
@end

@implementation AXSVoiceOverTouchSetTactileGraphicsDisplaySymbolLoc

void *__get_AXSVoiceOverTouchSetTactileGraphicsDisplaySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = libAccessibilityLibrary();
  result = dlsym(v2, "_AXSVoiceOverTouchSetTactileGraphicsDisplay");
  *(*(*(a1 + 32) + 8) + 24) = result;
  get_AXSVoiceOverTouchSetTactileGraphicsDisplaySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end