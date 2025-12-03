@interface SBDeactivationSettings
- (SBDeactivationSettings)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)keyDescriptionForSetting:(unint64_t)setting;
- (id)succinctDescription;
- (void)applyDeactivationSettings:(id)settings;
- (void)dealloc;
@end

@implementation SBDeactivationSettings

- (SBDeactivationSettings)init
{
  v6.receiver = self;
  v6.super_class = SBDeactivationSettings;
  v2 = [(SBDeactivationSettings *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CF0C80]);
    settings = v2->_settings;
    v2->_settings = v3;

    [(BSMutableSettings *)v2->_settings setDescriptionProvider:v2];
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 applyDeactivationSettings:self];
  return v4;
}

- (void)dealloc
{
  [(BSMutableSettings *)self->_settings setDescriptionProvider:0];
  v3.receiver = self;
  v3.super_class = SBDeactivationSettings;
  [(SBDeactivationSettings *)&v3 dealloc];
}

- (void)applyDeactivationSettings:(id)settings
{
  if (settings)
  {
    [(BSMutableSettings *)self->_settings applySettings:*(settings + 1)];
  }
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBDeactivationSettings *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBDeactivationSettings *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  succinctDescriptionBuilder = [(SBDeactivationSettings *)self succinctDescriptionBuilder];
  settings = self->_settings;
  if (settings && ([(BSMutableSettings *)settings isEmpty]& 1) == 0)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __64__SBDeactivationSettings_descriptionBuilderWithMultilinePrefix___block_invoke;
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
  if (setting > 9)
  {
    return 0;
  }

  else
  {
    return off_2783B7E38[setting];
  }
}

@end