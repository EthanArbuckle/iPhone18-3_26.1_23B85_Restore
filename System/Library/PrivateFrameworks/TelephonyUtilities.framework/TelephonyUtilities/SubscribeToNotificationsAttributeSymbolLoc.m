@interface SubscribeToNotificationsAttributeSymbolLoc
@end

@implementation SubscribeToNotificationsAttributeSymbolLoc

void *__getAVSystemController_SubscribeToNotificationsAttributeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaExperienceLibrary();
  result = dlsym(v2, "AVSystemController_SubscribeToNotificationsAttribute");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVSystemController_SubscribeToNotificationsAttributeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end