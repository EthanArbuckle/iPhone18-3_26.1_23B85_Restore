@interface PSScene
- (PSScene)initWithScene:(id)a3;
- (PSSceneSettings)sceneSettings;
- (void)updateSceneSettings:(id)a3 with:(id)a4;
@end

@implementation PSScene

- (PSScene)initWithScene:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PSScene;
  v6 = [(PSScene *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_scene, a3);
  }

  return v7;
}

- (PSSceneSettings)sceneSettings
{
  v2 = [(FBScene *)self->_scene settings];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v3 = [objc_alloc(MEMORY[0x277D41080]) initWithSettings:v2];

    v2 = v3;
  }

  v4 = [[PSSceneSettings alloc] initWithSettings:v2];

  return v4;
}

- (void)updateSceneSettings:(id)a3 with:(id)a4
{
  v6 = a4;
  v7 = [a3 settings];
  v8 = [v7 copyResettingInterruptionPolicy];

  [(FBScene *)self->_scene updateSettings:v8 withTransitionContext:v6];
}

@end