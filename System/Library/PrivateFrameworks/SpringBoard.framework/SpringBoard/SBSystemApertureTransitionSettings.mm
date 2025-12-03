@interface SBSystemApertureTransitionSettings
+ (id)_moduleWithSectionTitle:(id)title;
+ (id)_rowForKeyPath:(id)path title:(id)title;
- (id)_childSettings;
- (void)_setDefaultValuesForBehaviorSettings:(id)settings;
- (void)setChildBehaviorSettingsNamePrefix:(id)prefix;
- (void)setDefaultValues;
@end

@implementation SBSystemApertureTransitionSettings

+ (id)_moduleWithSectionTitle:(id)title
{
  v28[1] = *MEMORY[0x277D85DE8];
  titleCopy = title;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v5 = MEMORY[0x277D431B0];
  v6 = [MEMORY[0x277D43240] actionWithSettingsKeyPath:0];
  v7 = [v5 rowWithTitle:@"Restore Defaults" action:v6];

  v8 = MEMORY[0x277D43210];
  v28[0] = v7;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:1];
  v10 = [v8 sectionWithRows:v9];
  [v4 addObject:v10];

  _childSettingsKeyPathsToTitles = [self _childSettingsKeyPathsToTitles];
  v12 = [_childSettingsKeyPathsToTitles keysSortedByValueUsingComparator:&__block_literal_global_281];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v13 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v24;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v24 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v23 + 1) + 8 * i);
        v18 = [_childSettingsKeyPathsToTitles objectForKey:v17];
        v19 = [self _rowForKeyPath:v17 title:v18];

        if (v19)
        {
          [v4 addObject:v19];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v14);
  }

  v20 = [MEMORY[0x277D43210] moduleWithTitle:titleCopy contents:v4];

  return v20;
}

- (id)_childSettings
{
  _childSettingsKeyPathsToTitles = [objc_opt_class() _childSettingsKeyPathsToTitles];
  allKeys = [_childSettingsKeyPathsToTitles allKeys];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__SBSystemApertureTransitionSettings__childSettings__block_invoke;
  v7[3] = &unk_2783BD920;
  v7[4] = self;
  v5 = [allKeys bs_mapNoNulls:v7];

  return v5;
}

- (void)setDefaultValues
{
  v19 = *MEMORY[0x277D85DE8];
  v17.receiver = self;
  v17.super_class = SBSystemApertureTransitionSettings;
  [(PTSettings *)&v17 setDefaultValues];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  _childSettings = [(SBSystemApertureTransitionSettings *)self _childSettings];
  v4 = [_childSettings countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      v7 = 0;
      do
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(_childSettings);
        }

        v8 = *(*(&v13 + 1) + 8 * v7);
        v9 = objc_opt_class();
        v10 = v8;
        if (v9)
        {
          if (objc_opt_isKindOfClass())
          {
            v11 = v10;
          }

          else
          {
            v11 = 0;
          }
        }

        else
        {
          v11 = 0;
        }

        v12 = v11;

        if (v12)
        {
          [(SBSystemApertureTransitionSettings *)self _setDefaultValuesForBehaviorSettings:v12];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [_childSettings countByEnumeratingWithState:&v13 objects:v18 count:16];
    }

    while (v5);
  }
}

- (void)setChildBehaviorSettingsNamePrefix:(id)prefix
{
  v24 = *MEMORY[0x277D85DE8];
  prefixCopy = prefix;
  _childSettingsKeyPathsToTitles = [objc_opt_class() _childSettingsKeyPathsToTitles];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = [_childSettingsKeyPathsToTitles allKeys];
  v5 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v19 + 1) + 8 * i);
        v10 = [(SBSystemApertureTransitionSettings *)self valueForKey:v9];
        v11 = objc_opt_self();
        v12 = v10;
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
          v15 = [_childSettingsKeyPathsToTitles objectForKey:v9];
          v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ - (%@)", prefixCopy, v15];
          [v14 setName:v16];

          [(SBSystemApertureTransitionSettings *)self _setDefaultValuesForBehaviorSettings:v14];
        }
      }

      v6 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v6);
  }
}

+ (id)_rowForKeyPath:(id)path title:(id)title
{
  pathCopy = path;
  titleCopy = title;
  if ([pathCopy hasSuffix:@"BehaviorSettings"])
  {
    v7 = MEMORY[0x277D43210];
    v8 = [MEMORY[0x277D65E60] _moduleWithSectionTitle:titleCopy];
    v9 = [v7 submoduleWithModule:v8 childSettingsKeyPath:pathCopy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_setDefaultValuesForBehaviorSettings:(id)settings
{
  settingsCopy = settings;
  [settingsCopy setDefaultValues];
  [settingsCopy setBehaviorType:2];
  [settingsCopy setDampingRatio:0.816];
  [settingsCopy setResponse:0.512];
  [settingsCopy setRetargetImpulse:0.008];
  [settingsCopy setTrackingDampingRatio:0.456];
  [settingsCopy setTrackingResponse:0.35];
  [settingsCopy setTrackingRetargetImpulse:0.016];
  v5 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [settingsCopy setFrameRateRange:1114137 highFrameRateReason:{*&v5.minimum, *&v5.maximum, *&v5.preferred}];
}

@end