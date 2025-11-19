@interface SBWorkspaceEntity
+ (id)entity;
- (BOOL)isAnalogousToEntity:(id)a3;
- (BOOL)representsSameLayoutElementAsDescriptor:(id)a3;
- (SBWorkspaceEntity)initWithIdentifier:(id)a3 displayChangeSettings:(id)a4;
- (id)_generator;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)displayItemRepresentation;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (int64_t)flagForActivationSetting:(unsigned int)a3;
- (int64_t)flagForDeactivationSetting:(unsigned int)a3;
- (unint64_t)layoutAttributes;
- (void)applyActivationSettings:(id)a3;
- (void)applyDeactivationSettings:(id)a3;
- (void)setFlag:(int64_t)a3 forActivationSetting:(unsigned int)a4;
- (void)setFlag:(int64_t)a3 forDeactivationSetting:(unsigned int)a4;
- (void)setObject:(id)a3 forActivationSetting:(unsigned int)a4;
- (void)setObject:(id)a3 forDeactivationSetting:(unsigned int)a4;
@end

@implementation SBWorkspaceEntity

+ (id)entity
{
  v2 = objc_alloc_init(a1);

  return v2;
}

- (unint64_t)layoutAttributes
{
  v3 = [(SBWorkspaceEntity *)self supportsPresentationAtAnySize];
  if ([(SBWorkspaceEntity *)self wantsExclusiveForeground])
  {
    return v3 | 2;
  }

  else
  {
    return v3;
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
  v2 = [(SBWorkspaceEntity *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)displayItemRepresentation
{
  if ([(SBWorkspaceEntity *)self isApplicationSceneEntity])
  {
    v3 = self;
    v4 = [(SBWorkspaceEntity *)v3 application];
    if ([v4 isWebApplication])
    {
      v5 = [(SBWorkspaceEntity *)v3 uniqueIdentifier];
      v6 = [SBDisplayItem webAppDisplayItemWithWebAppIdentifier:v5];
    }

    else
    {
      v5 = [v4 bundleIdentifier];
      v9 = [(SBWorkspaceEntity *)v3 uniqueIdentifier];
      v6 = [SBDisplayItem applicationDisplayItemWithBundleIdentifier:v5 sceneIdentifier:v9];
    }

    goto LABEL_8;
  }

  if ([(SBWorkspaceEntity *)self isAppClipPlaceholderEntity])
  {
    v3 = [(SBWorkspaceEntity *)self appClipPlaceholderEntity];
    v7 = [(SBWorkspaceEntity *)v3 bundleIdentifier];
    v8 = [(SBWorkspaceEntity *)v3 futureSceneIdentifier];
    v6 = [SBDisplayItem applicationDisplayItemWithBundleIdentifier:v7 sceneIdentifier:v8];

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

- (SBWorkspaceEntity)initWithIdentifier:(id)a3 displayChangeSettings:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16.receiver = self;
  v16.super_class = SBWorkspaceEntity;
  v8 = [(SBWorkspaceEntity *)&v16 init];
  if (v8)
  {
    v9 = [v6 copy];
    identifier = v8->_identifier;
    v8->_identifier = v9;

    v11 = [v7 copyActivationSettings];
    activationSettings = v8->_activationSettings;
    v8->_activationSettings = v11;

    v13 = [v7 copyDeactivationSettings];
    deactivationSettings = v8->_deactivationSettings;
    v8->_deactivationSettings = v13;

    v8->_layoutRole = 0;
  }

  return v8;
}

- (void)setFlag:(int64_t)a3 forActivationSetting:(unsigned int)a4
{
  v4 = *&a4;
  if (a3 != 0x7FFFFFFFFFFFFFFFLL && !self->_activationSettings)
  {
    v7 = objc_alloc_init(SBActivationSettings);
    activationSettings = self->_activationSettings;
    self->_activationSettings = v7;
  }

  v9 = self->_activationSettings;

  [(SBActivationSettings *)v9 setFlag:a3 forActivationSetting:v4];
}

- (int64_t)flagForActivationSetting:(unsigned int)a3
{
  activationSettings = self->_activationSettings;
  if (activationSettings)
  {
    return [(SBActivationSettings *)activationSettings flagForActivationSetting:*&a3];
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

- (void)setObject:(id)a3 forActivationSetting:(unsigned int)a4
{
  v4 = *&a4;
  v6 = a3;
  v9 = v6;
  if (v6 && !self->_activationSettings)
  {
    v7 = objc_alloc_init(SBActivationSettings);
    activationSettings = self->_activationSettings;
    self->_activationSettings = v7;

    v6 = v9;
  }

  [(SBActivationSettings *)self->_activationSettings setObject:v6 forActivationSetting:v4];
}

- (void)applyActivationSettings:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (v4 && !self->_activationSettings)
  {
    v5 = objc_alloc_init(SBActivationSettings);
    activationSettings = self->_activationSettings;
    self->_activationSettings = v5;

    v4 = v7;
  }

  [(SBActivationSettings *)self->_activationSettings applyActivationSettings:v4];
}

- (void)setFlag:(int64_t)a3 forDeactivationSetting:(unsigned int)a4
{
  v4 = *&a4;
  if (a3 != 0x7FFFFFFFFFFFFFFFLL && !self->_deactivationSettings)
  {
    v7 = objc_alloc_init(SBDeactivationSettings);
    deactivationSettings = self->_deactivationSettings;
    self->_deactivationSettings = v7;
  }

  v9 = self->_deactivationSettings;

  [(SBDeactivationSettings *)v9 setFlag:a3 forDeactivationSetting:v4];
}

- (int64_t)flagForDeactivationSetting:(unsigned int)a3
{
  deactivationSettings = self->_deactivationSettings;
  if (deactivationSettings)
  {
    return [(SBDeactivationSettings *)deactivationSettings flagForDeactivationSetting:*&a3];
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

- (void)setObject:(id)a3 forDeactivationSetting:(unsigned int)a4
{
  v4 = *&a4;
  v6 = a3;
  v9 = v6;
  if (v6 && !self->_deactivationSettings)
  {
    v7 = objc_alloc_init(SBDeactivationSettings);
    deactivationSettings = self->_deactivationSettings;
    self->_deactivationSettings = v7;

    v6 = v9;
  }

  [(SBDeactivationSettings *)self->_deactivationSettings setObject:v6 forDeactivationSetting:v4];
}

- (void)applyDeactivationSettings:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (v4 && !self->_deactivationSettings)
  {
    v5 = objc_alloc_init(SBDeactivationSettings);
    deactivationSettings = self->_deactivationSettings;
    self->_deactivationSettings = v5;

    v4 = v7;
  }

  [(SBDeactivationSettings *)self->_deactivationSettings applyDeactivationSettings:v4];
}

- (BOOL)isAnalogousToEntity:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if (v5 == objc_opt_class())
    {
      v7 = [(SBWorkspaceEntity *)self uniqueIdentifier];
      v8 = [(SBWorkspaceEntity *)v4 uniqueIdentifier];
      v6 = [v7 isEqualToString:v8];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(SBWorkspaceEntity *)self uniqueIdentifier];
  v6 = [v4 initWithIdentifier:v5 displayChangeSettings:0];

  v7 = [(SBWorkspaceEntity *)self activationSettings];
  [v6 applyActivationSettings:v7];

  v8 = [(SBWorkspaceEntity *)self deactivationSettings];
  [v6 applyDeactivationSettings:v8];

  [v6 setLayoutRole:{-[SBWorkspaceEntity layoutRole](self, "layoutRole")}];
  return v6;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBWorkspaceEntity *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = a3;
  v5 = [(SBWorkspaceEntity *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __59__SBWorkspaceEntity_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_2783A92D8;
  v6 = v5;
  v10 = v6;
  v11 = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:v4 block:v9];

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

- (BOOL)representsSameLayoutElementAsDescriptor:(id)a3
{
  v4 = a3;
  v5 = [(SBWorkspaceEntity *)self uniqueIdentifier];
  v6 = [v4 uniqueIdentifier];

  LOBYTE(v4) = [v5 isEqualToString:v6];
  return v4;
}

@end