@interface FBSSceneClientSettings(PosterBoardUI)
- (uint64_t)prui_switcherLayoutMode;
@end

@implementation FBSSceneClientSettings(PosterBoardUI)

- (uint64_t)prui_switcherLayoutMode
{
  v1 = [a1 pruis_switcherLayoutMode];

  return MEMORY[0x28219FC98](v1);
}

@end