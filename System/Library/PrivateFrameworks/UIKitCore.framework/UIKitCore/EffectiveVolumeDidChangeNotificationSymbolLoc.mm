@interface EffectiveVolumeDidChangeNotificationSymbolLoc
@end

@implementation EffectiveVolumeDidChangeNotificationSymbolLoc

void *__getAVSystemController_EffectiveVolumeDidChangeNotificationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaExperienceLibrary_0();
  result = dlsym(v2, "AVSystemController_EffectiveVolumeDidChangeNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVSystemController_EffectiveVolumeDidChangeNotificationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end