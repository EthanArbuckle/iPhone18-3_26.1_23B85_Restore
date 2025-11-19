@interface _UISceneHostingUpdateStomperClientComponent
- (void)scene:(id)a3 willUpdateSettings:(id)a4;
@end

@implementation _UISceneHostingUpdateStomperClientComponent

- (void)scene:(id)a3 willUpdateSettings:(id)a4
{
  v9 = a4;
  v4 = [v9 transitionContext];
  v5 = [v4 animationFence];
  [v5 invalidate];

  [v4 setAnimationFence:0];
  v6 = [v9 settingsDiff];
  v7 = [v6 containsProperty:sel_frame];

  if (v7)
  {
    v8 = [v9 mutableSettings];
    [v8 frame];
    [v8 setFrame:{0.0, 0.0}];
  }
}

@end