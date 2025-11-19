@interface HeadphoneSymbolLoc
@end

@implementation HeadphoneSymbolLoc

void *__getHURouteKeyAudioRouteName_HeadphoneSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = HearingUtilitiesLibrary_0();
  result = dlsym(v2, "HURouteKeyAudioRouteName_Headphone");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getHURouteKeyAudioRouteName_HeadphoneSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end