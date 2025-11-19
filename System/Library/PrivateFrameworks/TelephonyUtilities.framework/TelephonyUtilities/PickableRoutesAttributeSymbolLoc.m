@interface PickableRoutesAttributeSymbolLoc
@end

@implementation PickableRoutesAttributeSymbolLoc

void *__getAVSystemController_PickableRoutesAttributeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaExperienceLibrary();
  result = dlsym(v2, "AVSystemController_PickableRoutesAttribute");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVSystemController_PickableRoutesAttributeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end