@interface SBUISecureRenderingClientComponent
- (void)_updateSecureRenderingTraitsForWindowScene:(id)a3;
- (void)scene:(id)a3 didUpdateSettings:(id)a4;
- (void)setScene:(id)a3;
@end

@implementation SBUISecureRenderingClientComponent

- (void)setScene:(id)a3
{
  v7.receiver = self;
  v7.super_class = SBUISecureRenderingClientComponent;
  v4 = a3;
  [(FBSSceneComponent *)&v7 setScene:v4];
  v5 = [v4 settings];
  self->_secureRenderingEnabled = [(SBUISecureRenderingClientComponent *)self _isSecureRenderingEnabledForSceneSettings:v5];

  v6 = [MEMORY[0x1E69DD2F0] _sceneForFBSScene:v4];

  [(SBUISecureRenderingClientComponent *)self _updateSecureRenderingTraitsForWindowScene:v6];
}

- (void)scene:(id)a3 didUpdateSettings:(id)a4
{
  v13 = a3;
  v6 = a4;
  v7 = [v6 settingsDiff];
  v8 = [v7 containsProperty:sel_isSecureRenderingEnabled];

  if (v8)
  {
    v9 = [v13 settings];
    self->_secureRenderingEnabled = [(SBUISecureRenderingClientComponent *)self _isSecureRenderingEnabledForSceneSettings:v9];

    v10 = [MEMORY[0x1E69DD2F0] _sceneForFBSScene:v13];
    v11 = [v6 transitionContext];
    v12 = [v11 animationFence];

    if (v12)
    {
      [v10 _synchronizeDrawingWithFence:v12];
    }

    [(SBUISecureRenderingClientComponent *)self _updateSecureRenderingTraitsForWindowScene:v10];
  }
}

- (void)_updateSecureRenderingTraitsForWindowScene:(id)a3
{
  if (a3)
  {
    v4 = [a3 traitOverrides];
    [v4 setNSIntegerValue:self->_secureRenderingEnabled forTrait:objc_opt_class()];
  }
}

@end