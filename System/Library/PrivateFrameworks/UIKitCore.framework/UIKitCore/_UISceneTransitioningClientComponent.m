@interface _UISceneTransitioningClientComponent
- (BOOL)allowedAsMorphTransitionSource;
@end

@implementation _UISceneTransitioningClientComponent

- (BOOL)allowedAsMorphTransitionSource
{
  v2 = [(FBSSceneComponent *)self clientScene];
  v3 = [v2 settings];

  if ([v3 conformsToProtocol:&unk_1F016C5D0])
  {
    v4 = [v3 allowedAsMorphTransitionSource];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end