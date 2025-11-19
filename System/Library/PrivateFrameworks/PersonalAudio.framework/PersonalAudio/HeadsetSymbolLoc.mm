@interface HeadsetSymbolLoc
@end

@implementation HeadsetSymbolLoc

void *__getHURouteKeyAudioRouteName_HeadsetSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = HearingUtilitiesLibrary_0();
  result = dlsym(v2, "HURouteKeyAudioRouteName_Headset");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getHURouteKeyAudioRouteName_HeadsetSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end