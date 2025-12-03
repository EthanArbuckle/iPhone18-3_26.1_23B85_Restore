@interface SBUISecureRenderingClientComponent
- (void)_updateSecureRenderingTraitsForWindowScene:(id)scene;
- (void)scene:(id)scene didUpdateSettings:(id)settings;
- (void)setScene:(id)scene;
@end

@implementation SBUISecureRenderingClientComponent

- (void)setScene:(id)scene
{
  v7.receiver = self;
  v7.super_class = SBUISecureRenderingClientComponent;
  sceneCopy = scene;
  [(FBSSceneComponent *)&v7 setScene:sceneCopy];
  settings = [sceneCopy settings];
  self->_secureRenderingEnabled = [(SBUISecureRenderingClientComponent *)self _isSecureRenderingEnabledForSceneSettings:settings];

  v6 = [MEMORY[0x1E69DD2F0] _sceneForFBSScene:sceneCopy];

  [(SBUISecureRenderingClientComponent *)self _updateSecureRenderingTraitsForWindowScene:v6];
}

- (void)scene:(id)scene didUpdateSettings:(id)settings
{
  sceneCopy = scene;
  settingsCopy = settings;
  settingsDiff = [settingsCopy settingsDiff];
  v8 = [settingsDiff containsProperty:sel_isSecureRenderingEnabled];

  if (v8)
  {
    settings = [sceneCopy settings];
    self->_secureRenderingEnabled = [(SBUISecureRenderingClientComponent *)self _isSecureRenderingEnabledForSceneSettings:settings];

    v10 = [MEMORY[0x1E69DD2F0] _sceneForFBSScene:sceneCopy];
    transitionContext = [settingsCopy transitionContext];
    animationFence = [transitionContext animationFence];

    if (animationFence)
    {
      [v10 _synchronizeDrawingWithFence:animationFence];
    }

    [(SBUISecureRenderingClientComponent *)self _updateSecureRenderingTraitsForWindowScene:v10];
  }
}

- (void)_updateSecureRenderingTraitsForWindowScene:(id)scene
{
  if (scene)
  {
    traitOverrides = [scene traitOverrides];
    [traitOverrides setNSIntegerValue:self->_secureRenderingEnabled forTrait:objc_opt_class()];
  }
}

@end