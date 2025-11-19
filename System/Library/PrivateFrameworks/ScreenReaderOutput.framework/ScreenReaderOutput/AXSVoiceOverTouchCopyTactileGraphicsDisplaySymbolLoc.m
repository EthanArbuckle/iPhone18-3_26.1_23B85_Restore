@interface AXSVoiceOverTouchCopyTactileGraphicsDisplaySymbolLoc
@end

@implementation AXSVoiceOverTouchCopyTactileGraphicsDisplaySymbolLoc

void *__get_AXSVoiceOverTouchCopyTactileGraphicsDisplaySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = libAccessibilityLibrary();
  result = dlsym(v2, "_AXSVoiceOverTouchCopyTactileGraphicsDisplay");
  *(*(*(a1 + 32) + 8) + 24) = result;
  get_AXSVoiceOverTouchCopyTactileGraphicsDisplaySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__get_AXSVoiceOverTouchCopyTactileGraphicsDisplaySymbolLoc_block_invoke_0(uint64_t a1)
{
  v2 = libAccessibilityLibrary_0();
  result = dlsym(v2, "_AXSVoiceOverTouchCopyTactileGraphicsDisplay");
  *(*(*(a1 + 32) + 8) + 24) = result;
  get_AXSVoiceOverTouchCopyTactileGraphicsDisplaySymbolLoc_ptr_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end