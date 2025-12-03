@interface SBActivationSettings
- (BOOL)_settingsAreValidToMoveContentToNewScene;
- (BOOL)isEqual:(id)equal;
- (SBActivationSettings)init;
- (id)copyActivationSettingsPassingFilter:(id)filter;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)keyDescriptionForSetting:(unint64_t)setting;
- (id)succinctDescription;
- (void)applyActivationSettings:(id)settings;
- (void)dealloc;
@end

@implementation SBActivationSettings

- (SBActivationSettings)init
{
  v6.receiver = self;
  v6.super_class = SBActivationSettings;
  v2 = [(SBActivationSettings *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CF0C80]);
    settings = v2->_settings;
    v2->_settings = v3;

    [(BSMutableSettings *)v2->_settings setDescriptionProvider:v2];
  }

  return v2;
}

- (void)dealloc
{
  [(BSMutableSettings *)self->_settings setDescriptionProvider:0];
  v3.receiver = self;
  v3.super_class = SBActivationSettings;
  [(SBActivationSettings *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 applyActivationSettings:self];
  return v4;
}

- (id)copyActivationSettingsPassingFilter:(id)filter
{
  filterCopy = filter;
  v5 = objc_alloc_init(SBActivationSettings);
  settings = self->_settings;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __60__SBActivationSettings_copyActivationSettingsPassingFilter___block_invoke;
  v18[3] = &unk_2783BDF78;
  v7 = filterCopy;
  v20 = v7;
  v8 = v5;
  v19 = v8;
  [(BSMutableSettings *)settings enumerateFlagsWithBlock:v18];
  v9 = self->_settings;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __60__SBActivationSettings_copyActivationSettingsPassingFilter___block_invoke_2;
  v15[3] = &unk_2783BDFA0;
  v17 = v7;
  v10 = v8;
  v16 = v10;
  v11 = v7;
  [(BSMutableSettings *)v9 enumerateObjectsWithBlock:v15];
  v12 = v16;
  v13 = v10;

  return v13;
}

uint64_t __60__SBActivationSettings_copyActivationSettingsPassingFilter___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 40);
  if (!v6 || (result = (*(v6 + 16))(v6, a2), result))
  {
    v8 = *(a1 + 32);

    return [v8 setFlag:a3 forActivationSetting:a2];
  }

  return result;
}

uint64_t __60__SBActivationSettings_copyActivationSettingsPassingFilter___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 40);
  v9 = v5;
  if (!v6 || (v7 = (*(v6 + 16))(v6, a2), v7))
  {
    v7 = [*(a1 + 32) setObject:v9 forActivationSetting:a2];
  }

  return MEMORY[0x2821F9730](v7);
}

- (void)applyActivationSettings:(id)settings
{
  if (settings)
  {
    [(BSMutableSettings *)self->_settings applySettings:*(settings + 1)];
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(BSMutableSettings *)self->_settings isEqual:equalCopy->_settings];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBActivationSettings *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBActivationSettings *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  succinctDescriptionBuilder = [(SBActivationSettings *)self succinctDescriptionBuilder];
  settings = self->_settings;
  if (settings && ([(BSMutableSettings *)settings isEmpty]& 1) == 0)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __62__SBActivationSettings_descriptionBuilderWithMultilinePrefix___block_invoke;
    v9[3] = &unk_2783A92D8;
    v10 = succinctDescriptionBuilder;
    selfCopy = self;
    [v10 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v9];
  }

  else
  {
    v7 = [succinctDescriptionBuilder appendObject:@"(empty)" withName:0];
  }

  return succinctDescriptionBuilder;
}

- (id)keyDescriptionForSetting:(unint64_t)setting
{
  if (setting > 0x4B)
  {
    return 0;
  }

  else
  {
    return off_2783BDFC0[setting];
  }
}

- (BOOL)_settingsAreValidToMoveContentToNewScene
{
  v3 = [(SBActivationSettings *)self BOOLForActivationSetting:67];
  v4 = [(SBActivationSettings *)self BOOLForActivationSetting:68];
  return (v3 && v4) & [(SBActivationSettings *)self BOOLForActivationSetting:31];
}

@end