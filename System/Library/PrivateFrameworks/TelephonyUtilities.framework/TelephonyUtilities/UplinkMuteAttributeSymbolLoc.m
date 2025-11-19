@interface UplinkMuteAttributeSymbolLoc
@end

@implementation UplinkMuteAttributeSymbolLoc

void *__getAVSystemController_UplinkMuteAttributeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaExperienceLibrary();
  result = dlsym(v2, "AVSystemController_UplinkMuteAttribute");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVSystemController_UplinkMuteAttributeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end