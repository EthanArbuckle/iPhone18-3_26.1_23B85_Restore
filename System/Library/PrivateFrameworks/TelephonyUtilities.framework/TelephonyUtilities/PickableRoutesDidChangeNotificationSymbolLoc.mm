@interface PickableRoutesDidChangeNotificationSymbolLoc
@end

@implementation PickableRoutesDidChangeNotificationSymbolLoc

void *__getAVSystemController_PickableRoutesDidChangeNotificationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaExperienceLibrary();
  result = dlsym(v2, "AVSystemController_PickableRoutesDidChangeNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVSystemController_PickableRoutesDidChangeNotificationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end