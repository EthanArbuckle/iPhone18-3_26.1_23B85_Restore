@interface TRASettingsAmbientPresentation
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToAmbientPresentationSettings:(id)a3;
- (TRASettingsAmbientPresentation)initWithAmbientPresentationInputs:(id)a3;
- (TRASettingsAmbientPresentation)initWithAmbientPresentationSettings:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
@end

@implementation TRASettingsAmbientPresentation

- (TRASettingsAmbientPresentation)initWithAmbientPresentationInputs:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = TRASettingsAmbientPresentation;
  v6 = [(TRASettingsAmbientPresentation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_ambientPresentationInputs, a3);
  }

  return v7;
}

- (TRASettingsAmbientPresentation)initWithAmbientPresentationSettings:(id)a3
{
  v4 = [a3 ambientPresentationInputs];
  v5 = [(TRASettingsAmbientPresentation *)self initWithAmbientPresentationInputs:v4];

  return v5;
}

- (BOOL)isEqualToAmbientPresentationSettings:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [TRASettingsAmbientPresentation isEqualToAmbientPresentationSettings:];
    }

    if (self == v4)
    {
      v7 = 1;
    }

    else
    {
      ambientPresentationInputs = self->_ambientPresentationInputs;
      v6 = [(TRASettingsAmbientPresentation *)v4 ambientPresentationInputs];
      v7 = [(TRAArbitrationAmbientPresentationInputs *)ambientPresentationInputs isEqual:v6];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [TRAMutableSettingsAmbientPresentation allocWithZone:a3];

  return [(TRASettingsAmbientPresentation *)v4 initWithAmbientPresentationSettings:self];
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TRASettingsAmbientPresentation *)self isEqualToAmbientPresentationSettings:v4];
  }

  return v5;
}

- (id)succinctDescription
{
  v2 = [(TRASettingsAmbientPresentation *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendInteger:-[TRAArbitrationAmbientPresentationInputs ambientDisplayStyle](self->_ambientPresentationInputs withName:{"ambientDisplayStyle"), @"ambientDisplayStyle"}];
  v5 = [v3 appendBool:-[TRAArbitrationAmbientPresentationInputs isAmbientPresented](self->_ambientPresentationInputs withName:{"isAmbientPresented"), @"isAmbientPresented"}];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(TRASettingsAmbientPresentation *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (void)isEqualToAmbientPresentationSettings:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"ambientPresentationSettings == nil || [ambientPresentationSettings isKindOfClass:[TRASettingsAmbientPresentation class]]" object:? file:? lineNumber:? description:?];
}

@end