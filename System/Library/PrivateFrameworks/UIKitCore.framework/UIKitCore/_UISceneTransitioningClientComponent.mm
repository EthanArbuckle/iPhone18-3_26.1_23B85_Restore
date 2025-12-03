@interface _UISceneTransitioningClientComponent
- (BOOL)allowedAsMorphTransitionSource;
@end

@implementation _UISceneTransitioningClientComponent

- (BOOL)allowedAsMorphTransitionSource
{
  clientScene = [(FBSSceneComponent *)self clientScene];
  settings = [clientScene settings];

  if ([settings conformsToProtocol:&unk_1F016C5D0])
  {
    allowedAsMorphTransitionSource = [settings allowedAsMorphTransitionSource];
  }

  else
  {
    allowedAsMorphTransitionSource = 0;
  }

  return allowedAsMorphTransitionSource;
}

@end