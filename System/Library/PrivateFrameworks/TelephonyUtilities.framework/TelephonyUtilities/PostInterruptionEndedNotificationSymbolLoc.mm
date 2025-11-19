@interface PostInterruptionEndedNotificationSymbolLoc
@end

@implementation PostInterruptionEndedNotificationSymbolLoc

void *__getAVSystemController_PostInterruptionEndedNotificationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaExperienceLibrary();
  result = dlsym(v2, "AVSystemController_PostInterruptionEndedNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVSystemController_PostInterruptionEndedNotificationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end