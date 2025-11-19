@interface FBSMutableSceneSettings(PosterBoardUI)
- (uint64_t)prui_setPreferredSwitcherLayoutMode:()PosterBoardUI;
@end

@implementation FBSMutableSceneSettings(PosterBoardUI)

- (uint64_t)prui_setPreferredSwitcherLayoutMode:()PosterBoardUI
{
  v2 = modeFromPRUISwitcherLayoutMode();

  return [a1 pruis_setPreferredSwitcherLayoutMode:v2];
}

@end