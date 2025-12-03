@interface SBSABasePreferencesProvider
+ (SBSystemApertureSettings)settings;
+ (id)newAnimatedTransitionDescriptionWithBehaviorSettings:(id)settings;
+ (id)newUnanimatedTransitionDescription;
- (SBSABasePreferencesProvider)initWithParentProvider:(id)provider;
- (SBSAStackablePreferencesProviding)parentProvider;
- (SBSystemApertureTransitionSettings)defaultTransitionSettings;
- (id)behaviorSettingsForProperty:(id)property;
- (id)firstChildPreferenceProviderOfClass:(Class)class;
- (id)firstChildPreferenceProviderRespondingToSelector:(SEL)selector;
- (id)newAnimatedTransitionDescriptionForProperty:(id)property animated:(BOOL)animated;
- (id)preferencesFromContext:(id)context;
- (id)stackDepiction;
- (void)removeFromParentProvider;
- (void)setChildProvider:(id)provider;
@end

@implementation SBSABasePreferencesProvider

+ (SBSystemApertureSettings)settings
{
  if (settings_onceToken_0 != -1)
  {
    +[SBSABasePreferencesProvider settings];
  }

  v3 = settings___settings;

  return v3;
}

- (SBSAStackablePreferencesProviding)parentProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_parentProvider);

  return WeakRetained;
}

- (SBSystemApertureTransitionSettings)defaultTransitionSettings
{
  settings = [objc_opt_class() settings];
  defaultInterfaceElementTransitionSettings = [settings defaultInterfaceElementTransitionSettings];

  return defaultInterfaceElementTransitionSettings;
}

- (id)stackDepiction
{
  selfCopy = self;
  parentProvider = [(SBSABasePreferencesProvider *)selfCopy parentProvider];

  parentProvider2 = selfCopy;
  if (parentProvider)
  {
    v5 = selfCopy;
    do
    {
      parentProvider2 = [(SBSABasePreferencesProvider *)v5 parentProvider];

      v4ParentProvider = [(SBSABasePreferencesProvider *)parentProvider2 parentProvider];

      v5 = parentProvider2;
    }

    while (v4ParentProvider);
  }

  v7 = parentProvider2;
  v8 = selfCopy;
  v9 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v10 = v7;
  v11 = v10;
  if (v10)
  {
    v12 = @"@ ";
    v13 = v10;
    while (1)
    {
      descriptionForStackDepiction = [v13 descriptionForStackDepiction];
      v15 = [descriptionForStackDepiction mutableCopy];

      v16 = BSEqualObjects() ? @"* " : v12;
      [v15 insertString:v16 atIndex:0];
      childProvider = [v13 childProvider];

      if (!childProvider)
      {
        break;
      }

      [v15 appendString:@"\n"];
      [v9 appendString:v15];

      v13 = childProvider;
      v12 = @"| ";
    }

    [v9 appendString:v15];
  }

  return v9;
}

- (void)removeFromParentProvider
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  selfCopy = self;
  _os_log_debug_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_DEBUG, "Removing Provider: %@", &v2, 0xCu);
}

void __39__SBSABasePreferencesProvider_settings__block_invoke()
{
  v0 = +[SBSystemApertureDomain rootSettings];
  v1 = settings___settings;
  settings___settings = v0;
}

- (id)behaviorSettingsForProperty:(id)property
{
  propertyCopy = property;
  defaultTransitionSettings = [(SBSABasePreferencesProvider *)self defaultTransitionSettings];
  v6 = objc_opt_class();
  v7 = defaultTransitionSettings;
  if (v6)
  {
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  if (v9)
  {
    if (BSEqualStrings())
    {
      centerBehaviorSettings = [v9 centerBehaviorSettings];
      goto LABEL_28;
    }

    if (BSEqualStrings())
    {
      centerBehaviorSettings = [v9 cornerRadiusBehaviorSettings];
      goto LABEL_28;
    }

    if (BSEqualStrings())
    {
      centerBehaviorSettings = [v9 alphaBehaviorSettings];
      goto LABEL_28;
    }

    if (BSEqualStrings())
    {
      centerBehaviorSettings = [v9 backgroundColorBehaviorSettings];
LABEL_28:
      defaultBehaviorSettings = centerBehaviorSettings;
      if (centerBehaviorSettings)
      {
        goto LABEL_30;
      }
    }

LABEL_29:
    defaultBehaviorSettings = [v7 defaultBehaviorSettings];
    goto LABEL_30;
  }

  v11 = objc_opt_class();
  v12 = v7;
  if (v11)
  {
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  if (v14)
  {
    if (BSEqualStrings())
    {
      sensorObscuringShadowBehaviorSettings = [v14 sensorObscuringShadowBehaviorSettings];
LABEL_25:
      defaultBehaviorSettings = sensorObscuringShadowBehaviorSettings;
      goto LABEL_38;
    }

    if (([propertyCopy hasPrefix:@"leadingView"] & 1) != 0 || (objc_msgSend(propertyCopy, "hasPrefix:", @"trailingView") & 1) != 0 || objc_msgSend(propertyCopy, "hasPrefix:", @"minimalView"))
    {
      sensorObscuringShadowBehaviorSettings = [v14 subcomponentBehaviorSettings];
      goto LABEL_25;
    }

    if ([propertyCopy hasPrefix:@"customContent"])
    {
      sensorObscuringShadowBehaviorSettings = [v14 customContentBehaviorSettings];
      goto LABEL_25;
    }

    if ([propertyCopy hasPrefix:@"snapshotView"])
    {
      sensorObscuringShadowBehaviorSettings = [v14 snapshotBehaviorSettings];
      goto LABEL_25;
    }
  }

  defaultBehaviorSettings = 0;
LABEL_38:

  if (!defaultBehaviorSettings)
  {
    goto LABEL_29;
  }

LABEL_30:

  return defaultBehaviorSettings;
}

+ (id)newAnimatedTransitionDescriptionWithBehaviorSettings:(id)settings
{
  settingsCopy = settings;
  v6 = settingsCopy;
  if (settingsCopy)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __84__SBSABasePreferencesProvider_newAnimatedTransitionDescriptionWithBehaviorSettings___block_invoke;
    v9[3] = &unk_2783ACD90;
    v11 = a2;
    selfCopy = self;
    v10 = settingsCopy;
    v7 = [SBSAAnimatedTransitionDescription instanceWithBlock:v9];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __84__SBSABasePreferencesProvider_newAnimatedTransitionDescriptionWithBehaviorSettings___block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  if (v9)
  {
    v3 = objc_opt_self();
    v4 = v9;
    if (v3)
    {
      if (objc_opt_isKindOfClass())
      {
        v5 = v4;
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;

    if (!v6)
    {
      __84__SBSABasePreferencesProvider_newAnimatedTransitionDescriptionWithBehaviorSettings___block_invoke_cold_1(a1);
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = [MEMORY[0x277CCAD78] UUID];
  [v6 setAnimatedTransitionIdentifier:v7];

  [v6 setBehaviorSettings:*(a1 + 32)];
  v8 = [*(a1 + 48) description];
  [v6 setResponsibleProviderDebugString:v8];
}

+ (id)newUnanimatedTransitionDescription
{
  unanimatedBehaviorSettings = [MEMORY[0x277D65E60] unanimatedBehaviorSettings];
  v4 = [self newAnimatedTransitionDescriptionWithBehaviorSettings:unanimatedBehaviorSettings];

  return v4;
}

- (id)newAnimatedTransitionDescriptionForProperty:(id)property animated:(BOOL)animated
{
  propertyCopy = property;
  v7 = objc_opt_class();
  if (animated)
  {
    [(SBSABasePreferencesProvider *)self behaviorSettingsForProperty:propertyCopy];
  }

  else
  {
    [MEMORY[0x277D65E60] unanimatedBehaviorSettings];
  }
  v8 = ;
  v9 = [v7 newAnimatedTransitionDescriptionWithBehaviorSettings:v8];

  return v9;
}

- (SBSABasePreferencesProvider)initWithParentProvider:(id)provider
{
  providerCopy = provider;
  v7.receiver = self;
  v7.super_class = SBSABasePreferencesProvider;
  v5 = [(SBSABasePreferencesProvider *)&v7 init];
  if (v5)
  {
    [providerCopy setChildProvider:v5];
  }

  return v5;
}

- (void)setChildProvider:(id)provider
{
  providerCopy = provider;
  if (providerCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(SBSABasePreferencesProvider *)a2 setChildProvider:providerCopy];
    }

    v7 = SBLogSystemAperturePreferencesStackMutation();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [(SBSABasePreferencesProvider *)providerCopy setChildProvider:v7];
    }

    selfCopy = self;
    objc_sync_enter(selfCopy);
    childProvider = selfCopy->_childProvider;
    if (childProvider != providerCopy)
    {
      v10 = objc_opt_class();
      v11 = childProvider;
      if (v10)
      {
        if (objc_opt_isKindOfClass())
        {
          v12 = v11;
        }

        else
        {
          v12 = 0;
        }
      }

      else
      {
        v12 = 0;
      }

      v13 = v12;

      objc_storeStrong(&selfCopy->_childProvider, provider);
      v14 = objc_opt_class();
      v15 = providerCopy;
      if (v14)
      {
        if (objc_opt_isKindOfClass())
        {
          v16 = v15;
        }

        else
        {
          v16 = 0;
        }
      }

      else
      {
        v16 = 0;
      }

      v17 = v16;

      objc_storeWeak(v17 + 2, selfCopy);
      objc_storeStrong(v17 + 3, v12);
      if (v13)
      {
        objc_storeWeak(v13 + 2, v17);
      }
    }

    objc_sync_exit(selfCopy);
  }
}

- (id)firstChildPreferenceProviderOfClass:(Class)class
{
  selfCopy = self;
  if (selfCopy)
  {
    v4 = selfCopy;
    while ((objc_opt_isKindOfClass() & 1) == 0)
    {
      childProvider = [v4 childProvider];

      v4 = childProvider;
      if (!childProvider)
      {
        goto LABEL_5;
      }
    }

    v6 = v4;
  }

  else
  {
LABEL_5:
    v6 = 0;
  }

  return v6;
}

- (id)firstChildPreferenceProviderRespondingToSelector:(SEL)selector
{
  selfCopy = self;
  if (selfCopy)
  {
    v4 = selfCopy;
    while ((objc_opt_respondsToSelector() & 1) == 0)
    {
      childProvider = [v4 childProvider];

      v4 = childProvider;
      if (!childProvider)
      {
        goto LABEL_5;
      }
    }

    v6 = v4;
  }

  else
  {
LABEL_5:
    v6 = 0;
  }

  return v6;
}

- (id)preferencesFromContext:(id)context
{
  contextCopy = context;
  childProvider = self->_childProvider;
  if (childProvider)
  {
    preferences = [(SBSAStackablePreferencesProviding *)childProvider preferencesFromContext:contextCopy];
  }

  else
  {
    v7 = objc_opt_class();
    v8 = contextCopy;
    if (v7)
    {
      if (objc_opt_isKindOfClass())
      {
        v9 = v8;
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;

    preferences = [v10 preferences];
  }

  return preferences;
}

void __84__SBSABasePreferencesProvider_newAnimatedTransitionDescriptionWithBehaviorSettings___block_invoke_cold_1(uint64_t a1)
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v3 = *(a1 + 40);
  v2 = *(a1 + 48);
  v4 = NSClassFromString(&cfstr_Sbsaanimatedtr.isa);
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v7 handleFailureInMethod:v3 object:v2 file:@"SBSABasePreferencesProvider.m" lineNumber:78 description:{@"Unexpected class – expected '%@', got '%@'", v4, v6}];
}

- (void)setChildProvider:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
}

- (void)setChildProvider:(os_log_t)log .cold.2(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_debug_impl(&dword_21ED4E000, log, OS_LOG_TYPE_DEBUG, "Inserting Provider: %@ as child of %@", &v3, 0x16u);
}

@end