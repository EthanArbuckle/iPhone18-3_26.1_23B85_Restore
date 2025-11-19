@interface TRASettingsActuationContext
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToSettingsActuationContext:(id)a3;
- (TRASettingsActuationContext)initWithAnimationSettings:(id)a3 drawingFence:(id)a4 preventTouchCancellation:(BOOL)a5;
- (TRASettingsActuationContext)initWithSettingsActuationContext:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (void)setAnimationSettings:(id)a3;
@end

@implementation TRASettingsActuationContext

- (TRASettingsActuationContext)initWithAnimationSettings:(id)a3 drawingFence:(id)a4 preventTouchCancellation:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v13.receiver = self;
  v13.super_class = TRASettingsActuationContext;
  v10 = [(TRASettingsActuationContext *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_preventTouchCancellation = a5;
    [(TRASettingsActuationContext *)v10 setAnimationSettings:v8];
    objc_storeStrong(&v11->_drawingFence, a4);
  }

  return v11;
}

- (TRASettingsActuationContext)initWithSettingsActuationContext:(id)a3
{
  v4 = a3;
  v5 = [v4 animationSettings];
  v6 = v5;
  if (!v5)
  {
    v6 = [MEMORY[0x277CF0B70] settingsWithDuration:0.0];
  }

  v7 = [v4 drawingFence];
  v8 = [v4 preventTouchCancellation];

  v9 = [(TRASettingsActuationContext *)self initWithAnimationSettings:v6 drawingFence:v7 preventTouchCancellation:v8];
  if (!v5)
  {
  }

  return v9;
}

- (BOOL)isEqualToSettingsActuationContext:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [TRASettingsActuationContext isEqualToSettingsActuationContext:];
  }

  if (self == v4)
  {
    v10 = 1;
    goto LABEL_10;
  }

  animationSettings = self->_animationSettings;
  v6 = [(TRASettingsActuationContext *)v4 animationSettings];
  LODWORD(animationSettings) = [(BSAnimationSettings *)animationSettings isEqual:v6];

  if (!animationSettings)
  {
    goto LABEL_8;
  }

  drawingFence = self->_drawingFence;
  v8 = [(TRASettingsActuationContext *)v4 drawingFence];
  LODWORD(drawingFence) = [drawingFence isEqual:v8];

  if (drawingFence)
  {
    preventTouchCancellation = self->_preventTouchCancellation;
    v10 = preventTouchCancellation == [(TRASettingsActuationContext *)v4 preventTouchCancellation];
  }

  else
  {
LABEL_8:
    v10 = 0;
  }

LABEL_10:

  return v10;
}

- (void)setAnimationSettings:(id)a3
{
  v4 = a3;
  if (v4)
  {
    if (self->_animationSettings == v4)
    {
      goto LABEL_6;
    }

    v7 = v4;
    v5 = [(BSAnimationSettings *)v4 copy];
  }

  else
  {
    v7 = 0;
    v5 = [MEMORY[0x277CF0B70] settingsWithDuration:0.0];
  }

  animationSettings = self->_animationSettings;
  self->_animationSettings = v5;

  v4 = v7;
LABEL_6:
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TRASettingsActuationContext *)self isEqualToSettingsActuationContext:v4];
  }

  return v5;
}

- (id)succinctDescription
{
  v2 = [(TRASettingsActuationContext *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  [(BSAnimationSettings *)self->_animationSettings duration];
  v4 = [v3 appendFloat:@"animation duration" withName:1 decimalPrecision:?];
  v5 = [v3 appendObject:self->_drawingFence withName:@"drawing fence"];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(TRASettingsActuationContext *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (void)isEqualToSettingsActuationContext:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"settingsActuationContext == nil || [settingsActuationContext isKindOfClass:[TRASettingsActuationContext class]]" object:? file:? lineNumber:? description:?];
}

@end