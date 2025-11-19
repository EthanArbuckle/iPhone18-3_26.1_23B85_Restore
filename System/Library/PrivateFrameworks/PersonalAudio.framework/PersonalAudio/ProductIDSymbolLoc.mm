@interface ProductIDSymbolLoc
@end

@implementation ProductIDSymbolLoc

void *__getHURouteKeyBTDetails_ProductIDSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = HearingUtilitiesLibrary_0();
  result = dlsym(v2, "HURouteKeyBTDetails_ProductID");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getHURouteKeyBTDetails_ProductIDSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end