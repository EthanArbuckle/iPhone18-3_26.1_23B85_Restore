@interface SBUISystemApertureSceneResizeAction
+ (id)sceneResizeActionWithAnimationParameters:(id)a3;
+ (id)transientLocalResizeSceneActionWithAnimationParameters:(id)a3;
+ (id)userInitiatedSceneResizeActionWithAnimationParameters:(id)a3;
- (SBUISystemApertureAnimationParameters)animationParameters;
- (SBUISystemApertureSceneResizeAction)initWithAnimationParameters:(id)a3;
@end

@implementation SBUISystemApertureSceneResizeAction

- (SBUISystemApertureAnimationParameters)animationParameters
{
  animationParameters = self->_animationParameters;
  if (!animationParameters)
  {
    v4 = [SBUISystemApertureAnimationParameters alloc];
    v5 = [(SBUISystemApertureSceneResizeAction *)self info];
    v6 = [(SBUISystemApertureAnimationParameters *)v4 initWithBSSettingsRepresentation:v5];
    v7 = self->_animationParameters;
    self->_animationParameters = v6;

    animationParameters = self->_animationParameters;
  }

  return animationParameters;
}

+ (id)sceneResizeActionWithAnimationParameters:(id)a3
{
  v3 = a3;
  v4 = [[SBUISystemApertureSceneResizeAction alloc] initWithAnimationParameters:v3];

  return v4;
}

+ (id)transientLocalResizeSceneActionWithAnimationParameters:(id)a3
{
  v3 = a3;
  v4 = [(SBUISystemApertureSceneResizeAction *)[_SBUISystemApertureTransientLocalSceneResizeAction alloc] initWithAnimationParameters:v3];

  return v4;
}

+ (id)userInitiatedSceneResizeActionWithAnimationParameters:(id)a3
{
  v3 = a3;
  v4 = [(SBUISystemApertureSceneResizeAction *)[_SBUISystemApertureUserInitiatedSceneResizeAction alloc] initWithAnimationParameters:v3];

  return v4;
}

- (SBUISystemApertureSceneResizeAction)initWithAnimationParameters:(id)a3
{
  v4 = a3;
  v5 = [(SBUISystemApertureAnimationParameters *)v4 BSSettingsRepresentation];
  v8.receiver = self;
  v8.super_class = SBUISystemApertureSceneResizeAction;
  v6 = [(SBUISystemApertureSceneResizeAction *)&v8 initWithInfo:v5 responder:0];

  if (v6)
  {
    if (!v4)
    {
      v4 = [[SBUISystemApertureAnimationParameters alloc] initWithFluidBehaviorSettings:0 tracking:0 retargeted:0];
    }

    objc_storeStrong(&v6->_animationParameters, v4);
  }

  return v6;
}

@end