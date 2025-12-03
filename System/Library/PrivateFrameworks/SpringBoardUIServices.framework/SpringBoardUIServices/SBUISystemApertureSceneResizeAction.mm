@interface SBUISystemApertureSceneResizeAction
+ (id)sceneResizeActionWithAnimationParameters:(id)parameters;
+ (id)transientLocalResizeSceneActionWithAnimationParameters:(id)parameters;
+ (id)userInitiatedSceneResizeActionWithAnimationParameters:(id)parameters;
- (SBUISystemApertureAnimationParameters)animationParameters;
- (SBUISystemApertureSceneResizeAction)initWithAnimationParameters:(id)parameters;
@end

@implementation SBUISystemApertureSceneResizeAction

- (SBUISystemApertureAnimationParameters)animationParameters
{
  animationParameters = self->_animationParameters;
  if (!animationParameters)
  {
    v4 = [SBUISystemApertureAnimationParameters alloc];
    info = [(SBUISystemApertureSceneResizeAction *)self info];
    v6 = [(SBUISystemApertureAnimationParameters *)v4 initWithBSSettingsRepresentation:info];
    v7 = self->_animationParameters;
    self->_animationParameters = v6;

    animationParameters = self->_animationParameters;
  }

  return animationParameters;
}

+ (id)sceneResizeActionWithAnimationParameters:(id)parameters
{
  parametersCopy = parameters;
  v4 = [[SBUISystemApertureSceneResizeAction alloc] initWithAnimationParameters:parametersCopy];

  return v4;
}

+ (id)transientLocalResizeSceneActionWithAnimationParameters:(id)parameters
{
  parametersCopy = parameters;
  v4 = [(SBUISystemApertureSceneResizeAction *)[_SBUISystemApertureTransientLocalSceneResizeAction alloc] initWithAnimationParameters:parametersCopy];

  return v4;
}

+ (id)userInitiatedSceneResizeActionWithAnimationParameters:(id)parameters
{
  parametersCopy = parameters;
  v4 = [(SBUISystemApertureSceneResizeAction *)[_SBUISystemApertureUserInitiatedSceneResizeAction alloc] initWithAnimationParameters:parametersCopy];

  return v4;
}

- (SBUISystemApertureSceneResizeAction)initWithAnimationParameters:(id)parameters
{
  parametersCopy = parameters;
  bSSettingsRepresentation = [(SBUISystemApertureAnimationParameters *)parametersCopy BSSettingsRepresentation];
  v8.receiver = self;
  v8.super_class = SBUISystemApertureSceneResizeAction;
  v6 = [(SBUISystemApertureSceneResizeAction *)&v8 initWithInfo:bSSettingsRepresentation responder:0];

  if (v6)
  {
    if (!parametersCopy)
    {
      parametersCopy = [[SBUISystemApertureAnimationParameters alloc] initWithFluidBehaviorSettings:0 tracking:0 retargeted:0];
    }

    objc_storeStrong(&v6->_animationParameters, parametersCopy);
  }

  return v6;
}

@end