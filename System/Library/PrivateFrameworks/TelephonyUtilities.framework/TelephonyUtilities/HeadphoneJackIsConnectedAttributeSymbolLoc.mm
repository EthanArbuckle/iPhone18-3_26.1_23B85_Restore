@interface HeadphoneJackIsConnectedAttributeSymbolLoc
@end

@implementation HeadphoneJackIsConnectedAttributeSymbolLoc

void *__getAVSystemController_HeadphoneJackIsConnectedAttributeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaExperienceLibrary_0();
  result = dlsym(v2, "AVSystemController_HeadphoneJackIsConnectedAttribute");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVSystemController_HeadphoneJackIsConnectedAttributeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end