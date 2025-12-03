@interface _UISceneHostingUpdateStomperClientComponent
- (void)scene:(id)scene willUpdateSettings:(id)settings;
@end

@implementation _UISceneHostingUpdateStomperClientComponent

- (void)scene:(id)scene willUpdateSettings:(id)settings
{
  settingsCopy = settings;
  transitionContext = [settingsCopy transitionContext];
  animationFence = [transitionContext animationFence];
  [animationFence invalidate];

  [transitionContext setAnimationFence:0];
  settingsDiff = [settingsCopy settingsDiff];
  v7 = [settingsDiff containsProperty:sel_frame];

  if (v7)
  {
    mutableSettings = [settingsCopy mutableSettings];
    [mutableSettings frame];
    [mutableSettings setFrame:{0.0, 0.0}];
  }
}

@end