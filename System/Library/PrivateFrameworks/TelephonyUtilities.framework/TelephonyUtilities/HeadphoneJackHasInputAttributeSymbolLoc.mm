@interface HeadphoneJackHasInputAttributeSymbolLoc
@end

@implementation HeadphoneJackHasInputAttributeSymbolLoc

void *__getAVSystemController_HeadphoneJackHasInputAttributeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaExperienceLibrary_0();
  result = dlsym(v2, "AVSystemController_HeadphoneJackHasInputAttribute");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVSystemController_HeadphoneJackHasInputAttributeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end