@interface FBScene(SpringBoardScenes)
- (uint64_t)sb_isSpringBoardRootScene;
@end

@implementation FBScene(SpringBoardScenes)

- (uint64_t)sb_isSpringBoardRootScene
{
  definition = [self definition];
  specification = [definition specification];

  clientProcess = [self clientProcess];
  if ([clientProcess isCurrentProcess])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      isKindOfClass = 1;
    }

    else
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
    }
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

@end