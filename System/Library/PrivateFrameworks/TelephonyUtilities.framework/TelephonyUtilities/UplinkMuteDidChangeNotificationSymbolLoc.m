@interface UplinkMuteDidChangeNotificationSymbolLoc
@end

@implementation UplinkMuteDidChangeNotificationSymbolLoc

void *__getAVSystemController_UplinkMuteDidChangeNotificationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaExperienceLibrary();
  result = dlsym(v2, "AVSystemController_UplinkMuteDidChangeNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVSystemController_UplinkMuteDidChangeNotificationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end