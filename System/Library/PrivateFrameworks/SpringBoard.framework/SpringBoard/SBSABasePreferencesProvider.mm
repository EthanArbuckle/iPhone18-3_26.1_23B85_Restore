@interface SBSABasePreferencesProvider
+ (SBSystemApertureSettings)settings;
+ (id)newAnimatedTransitionDescriptionWithBehaviorSettings:(id)a3;
+ (id)newUnanimatedTransitionDescription;
- (SBSABasePreferencesProvider)initWithParentProvider:(id)a3;
- (SBSAStackablePreferencesProviding)parentProvider;
- (SBSystemApertureTransitionSettings)defaultTransitionSettings;
- (id)behaviorSettingsForProperty:(id)a3;
- (id)firstChildPreferenceProviderOfClass:(Class)a3;
- (id)firstChildPreferenceProviderRespondingToSelector:(SEL)a3;
- (id)newAnimatedTransitionDescriptionForProperty:(id)a3 animated:(BOOL)a4;
- (id)preferencesFromContext:(id)a3;
- (id)stackDepiction;
- (void)removeFromParentProvider;
- (void)setChildProvider:(id)a3;
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
  v2 = [objc_opt_class() settings];
  v3 = [v2 defaultInterfaceElementTransitionSettings];

  return v3;
}

- (id)stackDepiction
{
  v2 = self;
  v3 = [(SBSABasePreferencesProvider *)v2 parentProvider];

  v4 = v2;
  if (v3)
  {
    v5 = v2;
    do
    {
      v4 = [(SBSABasePreferencesProvider *)v5 parentProvider];

      v6 = [(SBSABasePreferencesProvider *)v4 parentProvider];

      v5 = v4;
    }

    while (v6);
  }

  v7 = v4;
  v8 = v2;
  v9 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v10 = v7;
  v11 = v10;
  if (v10)
  {
    v12 = @"@ ";
    v13 = v10;
    while (1)
    {
      v14 = [v13 descriptionForStackDepiction];
      v15 = [v14 mutableCopy];

      v16 = BSEqualObjects() ? @"* " : v12;
      [v15 insertString:v16 atIndex:0];
      v17 = [v13 childProvider];

      if (!v17)
      {
        break;
      }

      [v15 appendString:@"\n"];
      [v9 appendString:v15];

      v13 = v17;
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
  v3 = a1;
  _os_log_debug_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_DEBUG, "Removing Provider: %@", &v2, 0xCu);
}

void __39__SBSABasePreferencesProvider_settings__block_invoke()
{
  v0 = +[SBSystemApertureDomain rootSettings];
  v1 = settings___settings;
  settings___settings = v0;
}

- (id)behaviorSettingsForProperty:(id)a3
{
  v4 = a3;
  v5 = [(SBSABasePreferencesProvider *)self defaultTransitionSettings];
  v6 = objc_opt_class();
  v7 = v5;
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
      v10 = [v9 centerBehaviorSettings];
      goto LABEL_28;
    }

    if (BSEqualStrings())
    {
      v10 = [v9 cornerRadiusBehaviorSettings];
      goto LABEL_28;
    }

    if (BSEqualStrings())
    {
      v10 = [v9 alphaBehaviorSettings];
      goto LABEL_28;
    }

    if (BSEqualStrings())
    {
      v10 = [v9 backgroundColorBehaviorSettings];
LABEL_28:
      v16 = v10;
      if (v10)
      {
        goto LABEL_30;
      }
    }

LABEL_29:
    v16 = [v7 defaultBehaviorSettings];
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
      v15 = [v14 sensorObscuringShadowBehaviorSettings];
LABEL_25:
      v16 = v15;
      goto LABEL_38;
    }

    if (([v4 hasPrefix:@"leadingView"] & 1) != 0 || (objc_msgSend(v4, "hasPrefix:", @"trailingView") & 1) != 0 || objc_msgSend(v4, "hasPrefix:", @"minimalView"))
    {
      v15 = [v14 subcomponentBehaviorSettings];
      goto LABEL_25;
    }

    if ([v4 hasPrefix:@"customContent"])
    {
      v15 = [v14 customContentBehaviorSettings];
      goto LABEL_25;
    }

    if ([v4 hasPrefix:@"snapshotView"])
    {
      v15 = [v14 snapshotBehaviorSettings];
      goto LABEL_25;
    }
  }

  v16 = 0;
LABEL_38:

  if (!v16)
  {
    goto LABEL_29;
  }

LABEL_30:

  return v16;
}

+ (id)newAnimatedTransitionDescriptionWithBehaviorSettings:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __84__SBSABasePreferencesProvider_newAnimatedTransitionDescriptionWithBehaviorSettings___block_invoke;
    v9[3] = &unk_2783ACD90;
    v11 = a2;
    v12 = a1;
    v10 = v5;
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
  v3 = [MEMORY[0x277D65E60] unanimatedBehaviorSettings];
  v4 = [a1 newAnimatedTransitionDescriptionWithBehaviorSettings:v3];

  return v4;
}

- (id)newAnimatedTransitionDescriptionForProperty:(id)a3 animated:(BOOL)a4
{
  v6 = a3;
  v7 = objc_opt_class();
  if (a4)
  {
    [(SBSABasePreferencesProvider *)self behaviorSettingsForProperty:v6];
  }

  else
  {
    [MEMORY[0x277D65E60] unanimatedBehaviorSettings];
  }
  v8 = ;
  v9 = [v7 newAnimatedTransitionDescriptionWithBehaviorSettings:v8];

  return v9;
}

- (SBSABasePreferencesProvider)initWithParentProvider:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = SBSABasePreferencesProvider;
  v5 = [(SBSABasePreferencesProvider *)&v7 init];
  if (v5)
  {
    [v4 setChildProvider:v5];
  }

  return v5;
}

- (void)setChildProvider:(id)a3
{
  v6 = a3;
  if (v6)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(SBSABasePreferencesProvider *)a2 setChildProvider:v6];
    }

    v7 = SBLogSystemAperturePreferencesStackMutation();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [(SBSABasePreferencesProvider *)v6 setChildProvider:v7];
    }

    v8 = self;
    objc_sync_enter(v8);
    childProvider = v8->_childProvider;
    if (childProvider != v6)
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

      objc_storeStrong(&v8->_childProvider, a3);
      v14 = objc_opt_class();
      v15 = v6;
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

      objc_storeWeak(v17 + 2, v8);
      objc_storeStrong(v17 + 3, v12);
      if (v13)
      {
        objc_storeWeak(v13 + 2, v17);
      }
    }

    objc_sync_exit(v8);
  }
}

- (id)firstChildPreferenceProviderOfClass:(Class)a3
{
  v3 = self;
  if (v3)
  {
    v4 = v3;
    while ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v5 = [v4 childProvider];

      v4 = v5;
      if (!v5)
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

- (id)firstChildPreferenceProviderRespondingToSelector:(SEL)a3
{
  v3 = self;
  if (v3)
  {
    v4 = v3;
    while ((objc_opt_respondsToSelector() & 1) == 0)
    {
      v5 = [v4 childProvider];

      v4 = v5;
      if (!v5)
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

- (id)preferencesFromContext:(id)a3
{
  v4 = a3;
  childProvider = self->_childProvider;
  if (childProvider)
  {
    v6 = [(SBSAStackablePreferencesProviding *)childProvider preferencesFromContext:v4];
  }

  else
  {
    v7 = objc_opt_class();
    v8 = v4;
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

    v6 = [v10 preferences];
  }

  return v6;
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