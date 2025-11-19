@interface SBDisplaySceneControllerComponent
- (SBDisplaySceneControllerComponent)initWithScene:(id)a3;
- (UIScene)_scene;
@end

@implementation SBDisplaySceneControllerComponent

- (SBDisplaySceneControllerComponent)initWithScene:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SBDisplaySceneControllerComponent;
  v5 = [(SBDisplaySceneControllerComponent *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_scene, v4);
  }

  return v6;
}

- (UIScene)_scene
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);

  return WeakRetained;
}

@end