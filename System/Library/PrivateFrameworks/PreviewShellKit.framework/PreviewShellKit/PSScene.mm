@interface PSScene
- (PSScene)initWithScene:(id)scene;
- (PSSceneSettings)sceneSettings;
- (void)updateSceneSettings:(id)settings with:(id)with;
@end

@implementation PSScene

- (PSScene)initWithScene:(id)scene
{
  sceneCopy = scene;
  v9.receiver = self;
  v9.super_class = PSScene;
  v6 = [(PSScene *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_scene, scene);
  }

  return v7;
}

- (PSSceneSettings)sceneSettings
{
  settings = [(FBScene *)self->_scene settings];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v3 = [objc_alloc(MEMORY[0x277D41080]) initWithSettings:settings];

    settings = v3;
  }

  v4 = [[PSSceneSettings alloc] initWithSettings:settings];

  return v4;
}

- (void)updateSceneSettings:(id)settings with:(id)with
{
  withCopy = with;
  settings = [settings settings];
  copyResettingInterruptionPolicy = [settings copyResettingInterruptionPolicy];

  [(FBScene *)self->_scene updateSettings:copyResettingInterruptionPolicy withTransitionContext:withCopy];
}

@end