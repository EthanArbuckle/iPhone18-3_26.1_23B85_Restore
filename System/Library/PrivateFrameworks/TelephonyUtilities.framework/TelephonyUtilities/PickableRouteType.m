@interface PickableRouteType
@end

@implementation PickableRouteType

void *__getAVSystemController_PickableRouteType_WirelessSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaExperienceLibrary_0();
  result = dlsym(v2, "AVSystemController_PickableRouteType_Wireless");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVSystemController_PickableRouteType_WirelessSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAVSystemController_PickableRouteType_DefaultSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaExperienceLibrary_0();
  result = dlsym(v2, "AVSystemController_PickableRouteType_Default");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVSystemController_PickableRouteType_DefaultSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end