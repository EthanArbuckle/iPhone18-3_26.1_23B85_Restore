@interface _UISceneTransitioningHostComponent
- (void)setScene:(id)scene;
@end

@implementation _UISceneTransitioningHostComponent

- (void)setScene:(id)scene
{
  v5.receiver = self;
  v5.super_class = _UISceneTransitioningHostComponent;
  [(FBSSceneComponent *)&v5 setScene:scene];
  hostScene = [(FBSSceneComponent *)self hostScene];
  [hostScene updateSettings:&__block_literal_global_132];
}

@end