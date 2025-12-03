@interface SBStatusBarSettings
- (BOOL)isEqual:(id)equal;
- (NSNumber)alpha;
- (NSSet)backgroundActivitiesToSuppress;
- (SBStatusBarSettings)init;
- (id)_initWithBSSettings:(id)settings;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)keyDescriptionForSetting:(unint64_t)setting;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (id)valueDescriptionForFlag:(int64_t)flag object:(id)object ofSetting:(unint64_t)setting;
- (int64_t)style;
- (unint64_t)hash;
- (unint64_t)hiddenParts;
- (void)dealloc;
@end

@implementation SBStatusBarSettings

- (NSSet)backgroundActivitiesToSuppress
{
  v2 = [(BSMutableSettings *)self->_settings objectForSetting:5];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = [MEMORY[0x277CBEB98] set];
  }

  v5 = v4;

  return v5;
}

- (int64_t)style
{
  v2 = [(BSMutableSettings *)self->_settings objectForSetting:2];
  v3 = v2;
  if (v2)
  {
    integerValue = [v2 integerValue];
  }

  else
  {
    integerValue = -1;
  }

  return integerValue;
}

- (void)dealloc
{
  [(BSMutableSettings *)self->_settings setDescriptionProvider:0];
  v3.receiver = self;
  v3.super_class = SBStatusBarSettings;
  [(SBStatusBarSettings *)&v3 dealloc];
}

- (NSNumber)alpha
{
  v2 = [(BSMutableSettings *)self->_settings objectForSetting:1];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = &unk_283371EA0;
  }

  v5 = v4;

  return v4;
}

- (unint64_t)hiddenParts
{
  v2 = [(BSMutableSettings *)self->_settings objectForSetting:3];
  v3 = v2;
  if (v2)
  {
    integerValue = [v2 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  return integerValue;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __49__SBStatusBarSettings_succinctDescriptionBuilder__block_invoke;
  v8[3] = &unk_2783A92D8;
  v4 = v3;
  v9 = v4;
  selfCopy = self;
  v5 = [v4 modifyProem:v8];
  v6 = v4;

  return v4;
}

void __49__SBStatusBarSettings_succinctDescriptionBuilder__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = [*(a1 + 40) alpha];
  v2 = [v1 appendObject:v3 withName:@"alpha" skipIfNil:1];
}

- (SBStatusBarSettings)init
{
  v3 = objc_alloc_init(MEMORY[0x277CF0CD8]);
  v4 = [(SBStatusBarSettings *)self _initWithBSSettings:v3];

  return v4;
}

- (id)_initWithBSSettings:(id)settings
{
  settingsCopy = settings;
  v10.receiver = self;
  v10.super_class = SBStatusBarSettings;
  v5 = [(SBStatusBarSettings *)&v10 init];
  if (v5)
  {
    v6 = [settingsCopy mutableCopy];
    settings = v5->_settings;
    v5->_settings = v6;

    v8 = [(BSMutableSettings *)v5->_settings objectForSetting:3];

    if (!v8)
    {
      [(BSMutableSettings *)v5->_settings setObject:&unk_283371E88 forSetting:3];
    }

    [(BSMutableSettings *)v5->_settings setDescriptionProvider:v5];
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v20 = 1;
  }

  else
  {
    v5 = [MEMORY[0x277CF0C20] builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
    alpha = [(SBStatusBarSettings *)self alpha];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __31__SBStatusBarSettings_isEqual___block_invoke;
    v30[3] = &unk_2783A91C8;
    v7 = equalCopy;
    v31 = v7;
    v8 = [v5 appendObject:alpha counterpart:v30];

    style = [(SBStatusBarSettings *)self style];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __31__SBStatusBarSettings_isEqual___block_invoke_2;
    v28[3] = &unk_2783ACDE0;
    v10 = v7;
    v29 = v10;
    v11 = [v5 appendInteger:style counterpart:v28];
    hiddenParts = [(SBStatusBarSettings *)self hiddenParts];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __31__SBStatusBarSettings_isEqual___block_invoke_3;
    v26[3] = &unk_2783A9500;
    v13 = v10;
    v27 = v13;
    v14 = [v5 appendUnsignedInteger:hiddenParts counterpart:v26];
    legibilitySettings = [(SBStatusBarSettings *)self legibilitySettings];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __31__SBStatusBarSettings_isEqual___block_invoke_4;
    v24[3] = &unk_2783A91C8;
    v16 = v13;
    v25 = v16;
    v17 = [v5 appendObject:legibilitySettings counterpart:v24];

    backgroundActivitiesToSuppress = [(SBStatusBarSettings *)self backgroundActivitiesToSuppress];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __31__SBStatusBarSettings_isEqual___block_invoke_5;
    v22[3] = &unk_2783A91C8;
    v23 = v16;
    v19 = [v5 appendObject:backgroundActivitiesToSuppress counterpart:v22];

    v20 = [v5 isEqual];
  }

  return v20;
}

- (unint64_t)hash
{
  v23 = *MEMORY[0x277D85DE8];
  builder = [MEMORY[0x277CF0C40] builder];
  alpha = [(SBStatusBarSettings *)self alpha];
  v5 = [builder appendObject:alpha];

  v6 = [builder appendInteger:{-[SBStatusBarSettings style](self, "style")}];
  v7 = [builder appendUnsignedInteger:{-[SBStatusBarSettings hiddenParts](self, "hiddenParts")}];
  legibilitySettings = [(SBStatusBarSettings *)self legibilitySettings];
  v9 = [builder appendObject:legibilitySettings];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  backgroundActivitiesToSuppress = [(SBStatusBarSettings *)self backgroundActivitiesToSuppress];
  v11 = [backgroundActivitiesToSuppress countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
    do
    {
      v14 = 0;
      do
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(backgroundActivitiesToSuppress);
        }

        v15 = [builder appendObject:*(*(&v18 + 1) + 8 * v14++)];
      }

      while (v12 != v14);
      v12 = [backgroundActivitiesToSuppress countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v12);
  }

  v16 = [builder hash];
  return v16;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBStatusBarSettings *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBStatusBarSettings *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  succinctDescriptionBuilder = [(SBStatusBarSettings *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __61__SBStatusBarSettings_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_2783A92D8;
  v6 = succinctDescriptionBuilder;
  v10 = v6;
  selfCopy = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v9];

  v7 = v6;
  return v6;
}

void __61__SBStatusBarSettings_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277D75128] stringForStatusBarStyle:{objc_msgSend(*(a1 + 40), "style")}];
  [v2 appendString:v3 withName:@"style" skipIfEmpty:1];

  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) hiddenParts];
  if (v5 > 0xA)
  {
    v6 = @"(unknown)";
  }

  else
  {
    v6 = off_2783BFF80[v5];
  }

  [v4 appendString:v6 withName:@"hiddenParts" skipIfEmpty:1];
  v7 = *(a1 + 32);
  v8 = [*(a1 + 40) legibilitySettings];
  v9 = [v7 appendObject:v8 withName:@"legibilitySettings" skipIfNil:1];

  v10 = *(a1 + 32);
  v12 = [*(a1 + 40) backgroundActivitiesToSuppress];
  v11 = STBackgroundActivityIdentifiersDescription();
  [v10 appendString:v11 withName:@"backgroundActivitiesToSuppress" skipIfEmpty:1];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [SBStatusBarSettings alloc];
  settings = self->_settings;

  return [(SBStatusBarSettings *)v4 _initWithBSSettings:settings];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [SBMutableStatusBarSettings alloc];
  settings = self->_settings;

  return [(SBStatusBarSettings *)v4 _initWithBSSettings:settings];
}

- (id)keyDescriptionForSetting:(unint64_t)setting
{
  if (setting - 1 > 4)
  {
    return 0;
  }

  else
  {
    return off_2783BFF58[setting - 1];
  }
}

- (id)valueDescriptionForFlag:(int64_t)flag object:(id)object ofSetting:(unint64_t)setting
{
  objectCopy = object;
  v8 = objectCopy;
  v9 = 0;
  if (setting <= 2)
  {
    if (setting == 1)
    {
      sb_description = [objectCopy description];
    }

    else
    {
      if (setting != 2)
      {
        goto LABEL_14;
      }

      sb_description = [MEMORY[0x277D75128] stringForStatusBarStyle:{objc_msgSend(objectCopy, "integerValue")}];
    }

    goto LABEL_13;
  }

  switch(setting)
  {
    case 3uLL:
      unsignedIntegerValue = [objectCopy unsignedIntegerValue];
      if (unsignedIntegerValue > 0xA)
      {
        v9 = @"(unknown)";
      }

      else
      {
        v9 = off_2783BFF80[unsignedIntegerValue];
      }

      break;
    case 4uLL:
      sb_description = [objectCopy sb_description];
LABEL_13:
      v9 = sb_description;
      break;
    case 5uLL:
      backgroundActivitiesToSuppress = [(SBStatusBarSettings *)self backgroundActivitiesToSuppress];
      v9 = STBackgroundActivityIdentifiersDescription();

      break;
  }

LABEL_14:

  return v9;
}

@end