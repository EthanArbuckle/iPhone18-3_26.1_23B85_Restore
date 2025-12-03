@interface SBDisplaySceneControllerComponent
- (SBDisplaySceneControllerComponent)initWithScene:(id)scene;
- (UIScene)_scene;
@end

@implementation SBDisplaySceneControllerComponent

- (SBDisplaySceneControllerComponent)initWithScene:(id)scene
{
  sceneCopy = scene;
  v8.receiver = self;
  v8.super_class = SBDisplaySceneControllerComponent;
  v5 = [(SBDisplaySceneControllerComponent *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_scene, sceneCopy);
  }

  return v6;
}

- (UIScene)_scene
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);

  return WeakRetained;
}

@end