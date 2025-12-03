@interface FBSMutableSceneClientSettings(PosterBoardUI)
- (uint64_t)prui_setSwitcherLayoutMode:()PosterBoardUI;
@end

@implementation FBSMutableSceneClientSettings(PosterBoardUI)

- (uint64_t)prui_setSwitcherLayoutMode:()PosterBoardUI
{
  v2 = modeFromPRUISwitcherLayoutMode();

  return [self pruis_setSwitcherLayoutMode:v2];
}

@end