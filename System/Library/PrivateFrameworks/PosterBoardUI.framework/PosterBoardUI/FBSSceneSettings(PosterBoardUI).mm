@interface FBSSceneSettings(PosterBoardUI)
- (uint64_t)prui_preferredSwitcherLayoutMode;
@end

@implementation FBSSceneSettings(PosterBoardUI)

- (uint64_t)prui_preferredSwitcherLayoutMode
{
  v1 = [a1 pruis_preferredSwitcherLayoutMode];

  return MEMORY[0x28219FC98](v1);
}

@end