@interface _UISceneTransitioningHostComponent
- (void)setScene:(id)a3;
@end

@implementation _UISceneTransitioningHostComponent

- (void)setScene:(id)a3
{
  v5.receiver = self;
  v5.super_class = _UISceneTransitioningHostComponent;
  [(FBSSceneComponent *)&v5 setScene:a3];
  v4 = [(FBSSceneComponent *)self hostScene];
  [v4 updateSettings:&__block_literal_global_132];
}

@end