@interface FBSSceneClientSettings(PosterBoardUI)
- (uint64_t)prui_switcherLayoutMode;
@end

@implementation FBSSceneClientSettings(PosterBoardUI)

- (uint64_t)prui_switcherLayoutMode
{
  pruis_switcherLayoutMode = [self pruis_switcherLayoutMode];

  return MEMORY[0x28219FC98](pruis_switcherLayoutMode);
}

@end