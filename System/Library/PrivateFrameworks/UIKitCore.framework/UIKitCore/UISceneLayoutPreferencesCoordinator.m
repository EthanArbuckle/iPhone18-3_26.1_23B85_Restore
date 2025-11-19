@interface UISceneLayoutPreferencesCoordinator
@end

@implementation UISceneLayoutPreferencesCoordinator

void __52___UISceneLayoutPreferencesCoordinator_setDelegate___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 24);
  v4 = a2;
  [v4 set_hostObservesLayoutPreferenceChanges:v3 & 1];
  [v4 set_hostSupportsSceneDoubleTap:(*(*(a1 + 32) + 24) >> 1) & 1];
}

@end