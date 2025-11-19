@interface SBProcessSettings
- (SBProcessSettings)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)keyDescriptionForSetting:(unint64_t)a3;
- (id)succinctDescription;
- (void)applyProcessSettings:(id)a3;
- (void)dealloc;
@end

@implementation SBProcessSettings

- (SBProcessSettings)init
{
  v6.receiver = self;
  v6.super_class = SBProcessSettings;
  v2 = [(SBProcessSettings *)&v6 init];
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
  v3.super_class = SBProcessSettings;
  [(SBProcessSettings *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 applyProcessSettings:self];
  return v4;
}

- (void)applyProcessSettings:(id)a3
{
  if (a3)
  {
    [(BSMutableSettings *)self->_settings applySettings:*(a3 + 1)];
  }
}

- (id)succinctDescription
{
  v2 = [(SBProcessSettings *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBProcessSettings *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = a3;
  v5 = [(SBProcessSettings *)self succinctDescriptionBuilder];
  settings = self->_settings;
  if (settings && ([(BSMutableSettings *)settings isEmpty]& 1) == 0)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __59__SBProcessSettings_descriptionBuilderWithMultilinePrefix___block_invoke;
    v9[3] = &unk_2783A92D8;
    v10 = v5;
    v11 = self;
    [v10 appendBodySectionWithName:0 multilinePrefix:v4 block:v9];
  }

  else
  {
    v7 = [v5 appendObject:@"(empty)" withName:0];
  }

  return v5;
}

- (id)keyDescriptionForSetting:(unint64_t)a3
{
  if (a3 > 9)
  {
    return 0;
  }

  else
  {
    return off_2783BAAE0[a3];
  }
}

@end