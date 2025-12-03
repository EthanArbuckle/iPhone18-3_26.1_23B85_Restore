@interface FBSSceneSettings(PosterBoardUI)
- (uint64_t)prui_preferredSwitcherLayoutMode;
@end

@implementation FBSSceneSettings(PosterBoardUI)

- (uint64_t)prui_preferredSwitcherLayoutMode
{
  pruis_preferredSwitcherLayoutMode = [self pruis_preferredSwitcherLayoutMode];

  return MEMORY[0x28219FC98](pruis_preferredSwitcherLayoutMode);
}

@end