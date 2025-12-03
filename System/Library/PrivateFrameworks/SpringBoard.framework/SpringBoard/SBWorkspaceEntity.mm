@interface SBWorkspaceEntity
+ (id)entity;
- (BOOL)isAnalogousToEntity:(id)entity;
- (BOOL)representsSameLayoutElementAsDescriptor:(id)descriptor;
- (SBWorkspaceEntity)initWithIdentifier:(id)identifier displayChangeSettings:(id)settings;
- (id)_generator;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)displayItemRepresentation;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (int64_t)flagForActivationSetting:(unsigned int)setting;
- (int64_t)flagForDeactivationSetting:(unsigned int)setting;
- (unint64_t)layoutAttributes;
- (void)applyActivationSettings:(id)settings;
- (void)applyDeactivationSettings:(id)settings;
- (void)setFlag:(int64_t)flag forActivationSetting:(unsigned int)setting;
- (void)setFlag:(int64_t)flag forDeactivationSetting:(unsigned int)setting;
- (void)setObject:(id)object forActivationSetting:(unsigned int)setting;
- (void)setObject:(id)object forDeactivationSetting:(unsigned int)setting;
@end

@implementation SBWorkspaceEntity

+ (id)entity
{
  v2 = objc_alloc_init(self);

  return v2;
}

- (unint64_t)layoutAttributes
{
  supportsPresentationAtAnySize = [(SBWorkspaceEntity *)self supportsPresentationAtAnySize];
  if ([(SBWorkspaceEntity *)self wantsExclusiveForeground])
  {
    return supportsPresentationAtAnySize | 2;
  }

  else
  {
    return supportsPresentationAtAnySize;
  }
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendObject:self->_identifier withName:@"ID" skipIfNil:1];
  v5 = SBLayoutRoleDescription(self->_layoutRole);
  v6 = [v3 appendObject:v5 withName:@"layoutRole"];

  return v3;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBWorkspaceEntity *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)displayItemRepresentation
{
  if ([(SBWorkspaceEntity *)self isApplicationSceneEntity])
  {
    selfCopy = self;
    application = [(SBWorkspaceEntity *)selfCopy application];
    if ([application isWebApplication])
    {
      uniqueIdentifier = [(SBWorkspaceEntity *)selfCopy uniqueIdentifier];
      v6 = [SBDisplayItem webAppDisplayItemWithWebAppIdentifier:uniqueIdentifier];
    }

    else
    {
      uniqueIdentifier = [application bundleIdentifier];
      uniqueIdentifier2 = [(SBWorkspaceEntity *)selfCopy uniqueIdentifier];
      v6 = [SBDisplayItem applicationDisplayItemWithBundleIdentifier:uniqueIdentifier sceneIdentifier:uniqueIdentifier2];
    }

    goto LABEL_8;
  }

  if ([(SBWorkspaceEntity *)self isAppClipPlaceholderEntity])
  {
    selfCopy = [(SBWorkspaceEntity *)self appClipPlaceholderEntity];
    bundleIdentifier = [(SBWorkspaceEntity *)selfCopy bundleIdentifier];
    futureSceneIdentifier = [(SBWorkspaceEntity *)selfCopy futureSceneIdentifier];
    v6 = [SBDisplayItem applicationDisplayItemWithBundleIdentifier:bundleIdentifier sceneIdentifier:futureSceneIdentifier];

LABEL_8:
    goto LABEL_9;
  }

  if ([(SBWorkspaceEntity *)self isHomeScreenEntity])
  {
    v6 = +[SBDisplayItem homeScreenDisplayItem];
  }

  else
  {
    v6 = 0;
  }

LABEL_9:

  return v6;
}

- (SBWorkspaceEntity)initWithIdentifier:(id)identifier displayChangeSettings:(id)settings
{
  identifierCopy = identifier;
  settingsCopy = settings;
  v16.receiver = self;
  v16.super_class = SBWorkspaceEntity;
  v8 = [(SBWorkspaceEntity *)&v16 init];
  if (v8)
  {
    v9 = [identifierCopy copy];
    identifier = v8->_identifier;
    v8->_identifier = v9;

    copyActivationSettings = [settingsCopy copyActivationSettings];
    activationSettings = v8->_activationSettings;
    v8->_activationSettings = copyActivationSettings;

    copyDeactivationSettings = [settingsCopy copyDeactivationSettings];
    deactivationSettings = v8->_deactivationSettings;
    v8->_deactivationSettings = copyDeactivationSettings;

    v8->_layoutRole = 0;
  }

  return v8;
}

- (void)setFlag:(int64_t)flag forActivationSetting:(unsigned int)setting
{
  v4 = *&setting;
  if (flag != 0x7FFFFFFFFFFFFFFFLL && !self->_activationSettings)
  {
    v7 = objc_alloc_init(SBActivationSettings);
    activationSettings = self->_activationSettings;
    self->_activationSettings = v7;
  }

  v9 = self->_activationSettings;

  [(SBActivationSettings *)v9 setFlag:flag forActivationSetting:v4];
}

- (int64_t)flagForActivationSetting:(unsigned int)setting
{
  activationSettings = self->_activationSettings;
  if (activationSettings)
  {
    return [(SBActivationSettings *)activationSettings flagForActivationSetting:*&setting];
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

- (void)setObject:(id)object forActivationSetting:(unsigned int)setting
{
  v4 = *&setting;
  objectCopy = object;
  v9 = objectCopy;
  if (objectCopy && !self->_activationSettings)
  {
    v7 = objc_alloc_init(SBActivationSettings);
    activationSettings = self->_activationSettings;
    self->_activationSettings = v7;

    objectCopy = v9;
  }

  [(SBActivationSettings *)self->_activationSettings setObject:objectCopy forActivationSetting:v4];
}

- (void)applyActivationSettings:(id)settings
{
  settingsCopy = settings;
  v7 = settingsCopy;
  if (settingsCopy && !self->_activationSettings)
  {
    v5 = objc_alloc_init(SBActivationSettings);
    activationSettings = self->_activationSettings;
    self->_activationSettings = v5;

    settingsCopy = v7;
  }

  [(SBActivationSettings *)self->_activationSettings applyActivationSettings:settingsCopy];
}

- (void)setFlag:(int64_t)flag forDeactivationSetting:(unsigned int)setting
{
  v4 = *&setting;
  if (flag != 0x7FFFFFFFFFFFFFFFLL && !self->_deactivationSettings)
  {
    v7 = objc_alloc_init(SBDeactivationSettings);
    deactivationSettings = self->_deactivationSettings;
    self->_deactivationSettings = v7;
  }

  v9 = self->_deactivationSettings;

  [(SBDeactivationSettings *)v9 setFlag:flag forDeactivationSetting:v4];
}

- (int64_t)flagForDeactivationSetting:(unsigned int)setting
{
  deactivationSettings = self->_deactivationSettings;
  if (deactivationSettings)
  {
    return [(SBDeactivationSettings *)deactivationSettings flagForDeactivationSetting:*&setting];
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

- (void)setObject:(id)object forDeactivationSetting:(unsigned int)setting
{
  v4 = *&setting;
  objectCopy = object;
  v9 = objectCopy;
  if (objectCopy && !self->_deactivationSettings)
  {
    v7 = objc_alloc_init(SBDeactivationSettings);
    deactivationSettings = self->_deactivationSettings;
    self->_deactivationSettings = v7;

    objectCopy = v9;
  }

  [(SBDeactivationSettings *)self->_deactivationSettings setObject:objectCopy forDeactivationSetting:v4];
}

- (void)applyDeactivationSettings:(id)settings
{
  settingsCopy = settings;
  v7 = settingsCopy;
  if (settingsCopy && !self->_deactivationSettings)
  {
    v5 = objc_alloc_init(SBDeactivationSettings);
    deactivationSettings = self->_deactivationSettings;
    self->_deactivationSettings = v5;

    settingsCopy = v7;
  }

  [(SBDeactivationSettings *)self->_deactivationSettings applyDeactivationSettings:settingsCopy];
}

- (BOOL)isAnalogousToEntity:(id)entity
{
  entityCopy = entity;
  if (self == entityCopy)
  {
    v6 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if (v5 == objc_opt_class())
    {
      uniqueIdentifier = [(SBWorkspaceEntity *)self uniqueIdentifier];
      uniqueIdentifier2 = [(SBWorkspaceEntity *)entityCopy uniqueIdentifier];
      v6 = [uniqueIdentifier isEqualToString:uniqueIdentifier2];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (id)_generator
{
  v2 = objc_opt_class();
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __31__SBWorkspaceEntity__generator__block_invoke;
  v6[3] = &__block_descriptor_40_e5__8__0lu32l8;
  v6[4] = v2;
  v3 = MEMORY[0x223D6F7F0](v6);
  v4 = MEMORY[0x223D6F7F0]();

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  uniqueIdentifier = [(SBWorkspaceEntity *)self uniqueIdentifier];
  v6 = [v4 initWithIdentifier:uniqueIdentifier displayChangeSettings:0];

  activationSettings = [(SBWorkspaceEntity *)self activationSettings];
  [v6 applyActivationSettings:activationSettings];

  deactivationSettings = [(SBWorkspaceEntity *)self deactivationSettings];
  [v6 applyDeactivationSettings:deactivationSettings];

  [v6 setLayoutRole:{-[SBWorkspaceEntity layoutRole](self, "layoutRole")}];
  return v6;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBWorkspaceEntity *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  succinctDescriptionBuilder = [(SBWorkspaceEntity *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __59__SBWorkspaceEntity_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_2783A92D8;
  v6 = succinctDescriptionBuilder;
  v10 = v6;
  selfCopy = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v9];

  v7 = v6;
  return v6;
}

uint64_t __59__SBWorkspaceEntity_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) supportedLayoutRoles];
  v4 = [v2 appendObject:v3 withName:@"supportedRoles"];

  v5 = *(a1 + 32);
  v6 = SBLayoutAttributesDescription([*(a1 + 40) layoutAttributes]);
  v7 = [v5 appendObject:v6 withName:@"layoutAttributes"];

  if (([*(*(a1 + 40) + 24) isEmpty] & 1) == 0)
  {
    v8 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 24) withName:@"activation" skipIfNil:1];
  }

  result = [*(*(a1 + 40) + 32) isEmpty];
  if ((result & 1) == 0)
  {
    return [*(a1 + 32) appendObject:*(*(a1 + 40) + 32) withName:@"deactivation" skipIfNil:1];
  }

  return result;
}

- (BOOL)representsSameLayoutElementAsDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  uniqueIdentifier = [(SBWorkspaceEntity *)self uniqueIdentifier];
  uniqueIdentifier2 = [descriptorCopy uniqueIdentifier];

  LOBYTE(descriptorCopy) = [uniqueIdentifier isEqualToString:uniqueIdentifier2];
  return descriptorCopy;
}

@end