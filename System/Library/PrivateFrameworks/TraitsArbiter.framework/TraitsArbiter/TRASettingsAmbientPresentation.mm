@interface TRASettingsAmbientPresentation
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToAmbientPresentationSettings:(id)settings;
- (TRASettingsAmbientPresentation)initWithAmbientPresentationInputs:(id)inputs;
- (TRASettingsAmbientPresentation)initWithAmbientPresentationSettings:(id)settings;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
@end

@implementation TRASettingsAmbientPresentation

- (TRASettingsAmbientPresentation)initWithAmbientPresentationInputs:(id)inputs
{
  inputsCopy = inputs;
  v9.receiver = self;
  v9.super_class = TRASettingsAmbientPresentation;
  v6 = [(TRASettingsAmbientPresentation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_ambientPresentationInputs, inputs);
  }

  return v7;
}

- (TRASettingsAmbientPresentation)initWithAmbientPresentationSettings:(id)settings
{
  ambientPresentationInputs = [settings ambientPresentationInputs];
  v5 = [(TRASettingsAmbientPresentation *)self initWithAmbientPresentationInputs:ambientPresentationInputs];

  return v5;
}

- (BOOL)isEqualToAmbientPresentationSettings:(id)settings
{
  settingsCopy = settings;
  if (settingsCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [TRASettingsAmbientPresentation isEqualToAmbientPresentationSettings:];
    }

    if (self == settingsCopy)
    {
      v7 = 1;
    }

    else
    {
      ambientPresentationInputs = self->_ambientPresentationInputs;
      ambientPresentationInputs = [(TRASettingsAmbientPresentation *)settingsCopy ambientPresentationInputs];
      v7 = [(TRAArbitrationAmbientPresentationInputs *)ambientPresentationInputs isEqual:ambientPresentationInputs];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [TRAMutableSettingsAmbientPresentation allocWithZone:zone];

  return [(TRASettingsAmbientPresentation *)v4 initWithAmbientPresentationSettings:self];
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TRASettingsAmbientPresentation *)self isEqualToAmbientPresentationSettings:equalCopy];
  }

  return v5;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(TRASettingsAmbientPresentation *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendInteger:-[TRAArbitrationAmbientPresentationInputs ambientDisplayStyle](self->_ambientPresentationInputs withName:{"ambientDisplayStyle"), @"ambientDisplayStyle"}];
  v5 = [v3 appendBool:-[TRAArbitrationAmbientPresentationInputs isAmbientPresented](self->_ambientPresentationInputs withName:{"isAmbientPresented"), @"isAmbientPresented"}];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(TRASettingsAmbientPresentation *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (void)isEqualToAmbientPresentationSettings:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"ambientPresentationSettings == nil || [ambientPresentationSettings isKindOfClass:[TRASettingsAmbientPresentation class]]" object:? file:? lineNumber:? description:?];
}

@end