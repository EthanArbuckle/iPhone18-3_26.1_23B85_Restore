@interface TRASettingsActuationContext
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToSettingsActuationContext:(id)context;
- (TRASettingsActuationContext)initWithAnimationSettings:(id)settings drawingFence:(id)fence preventTouchCancellation:(BOOL)cancellation;
- (TRASettingsActuationContext)initWithSettingsActuationContext:(id)context;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (void)setAnimationSettings:(id)settings;
@end

@implementation TRASettingsActuationContext

- (TRASettingsActuationContext)initWithAnimationSettings:(id)settings drawingFence:(id)fence preventTouchCancellation:(BOOL)cancellation
{
  settingsCopy = settings;
  fenceCopy = fence;
  v13.receiver = self;
  v13.super_class = TRASettingsActuationContext;
  v10 = [(TRASettingsActuationContext *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_preventTouchCancellation = cancellation;
    [(TRASettingsActuationContext *)v10 setAnimationSettings:settingsCopy];
    objc_storeStrong(&v11->_drawingFence, fence);
  }

  return v11;
}

- (TRASettingsActuationContext)initWithSettingsActuationContext:(id)context
{
  contextCopy = context;
  animationSettings = [contextCopy animationSettings];
  v6 = animationSettings;
  if (!animationSettings)
  {
    v6 = [MEMORY[0x277CF0B70] settingsWithDuration:0.0];
  }

  drawingFence = [contextCopy drawingFence];
  preventTouchCancellation = [contextCopy preventTouchCancellation];

  v9 = [(TRASettingsActuationContext *)self initWithAnimationSettings:v6 drawingFence:drawingFence preventTouchCancellation:preventTouchCancellation];
  if (!animationSettings)
  {
  }

  return v9;
}

- (BOOL)isEqualToSettingsActuationContext:(id)context
{
  contextCopy = context;
  if (!contextCopy)
  {
    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [TRASettingsActuationContext isEqualToSettingsActuationContext:];
  }

  if (self == contextCopy)
  {
    v10 = 1;
    goto LABEL_10;
  }

  animationSettings = self->_animationSettings;
  animationSettings = [(TRASettingsActuationContext *)contextCopy animationSettings];
  LODWORD(animationSettings) = [(BSAnimationSettings *)animationSettings isEqual:animationSettings];

  if (!animationSettings)
  {
    goto LABEL_8;
  }

  drawingFence = self->_drawingFence;
  drawingFence = [(TRASettingsActuationContext *)contextCopy drawingFence];
  LODWORD(drawingFence) = [drawingFence isEqual:drawingFence];

  if (drawingFence)
  {
    preventTouchCancellation = self->_preventTouchCancellation;
    v10 = preventTouchCancellation == [(TRASettingsActuationContext *)contextCopy preventTouchCancellation];
  }

  else
  {
LABEL_8:
    v10 = 0;
  }

LABEL_10:

  return v10;
}

- (void)setAnimationSettings:(id)settings
{
  settingsCopy = settings;
  if (settingsCopy)
  {
    if (self->_animationSettings == settingsCopy)
    {
      goto LABEL_6;
    }

    v7 = settingsCopy;
    v5 = [(BSAnimationSettings *)settingsCopy copy];
  }

  else
  {
    v7 = 0;
    v5 = [MEMORY[0x277CF0B70] settingsWithDuration:0.0];
  }

  animationSettings = self->_animationSettings;
  self->_animationSettings = v5;

  settingsCopy = v7;
LABEL_6:
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TRASettingsActuationContext *)self isEqualToSettingsActuationContext:equalCopy];
  }

  return v5;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(TRASettingsActuationContext *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  [(BSAnimationSettings *)self->_animationSettings duration];
  v4 = [v3 appendFloat:@"animation duration" withName:1 decimalPrecision:?];
  v5 = [v3 appendObject:self->_drawingFence withName:@"drawing fence"];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(TRASettingsActuationContext *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (void)isEqualToSettingsActuationContext:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"settingsActuationContext == nil || [settingsActuationContext isKindOfClass:[TRASettingsActuationContext class]]" object:? file:? lineNumber:? description:?];
}

@end