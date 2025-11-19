@interface SBSystemApertureTransitionSettings
+ (id)_moduleWithSectionTitle:(id)a3;
+ (id)_rowForKeyPath:(id)a3 title:(id)a4;
- (id)_childSettings;
- (void)_setDefaultValuesForBehaviorSettings:(id)a3;
- (void)setChildBehaviorSettingsNamePrefix:(id)a3;
- (void)setDefaultValues;
@end

@implementation SBSystemApertureTransitionSettings

+ (id)_moduleWithSectionTitle:(id)a3
{
  v28[1] = *MEMORY[0x277D85DE8];
  v22 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v5 = MEMORY[0x277D431B0];
  v6 = [MEMORY[0x277D43240] actionWithSettingsKeyPath:0];
  v7 = [v5 rowWithTitle:@"Restore Defaults" action:v6];

  v8 = MEMORY[0x277D43210];
  v28[0] = v7;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:1];
  v10 = [v8 sectionWithRows:v9];
  [v4 addObject:v10];

  v11 = [a1 _childSettingsKeyPathsToTitles];
  v12 = [v11 keysSortedByValueUsingComparator:&__block_literal_global_281];
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
        v18 = [v11 objectForKey:v17];
        v19 = [a1 _rowForKeyPath:v17 title:v18];

        if (v19)
        {
          [v4 addObject:v19];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v14);
  }

  v20 = [MEMORY[0x277D43210] moduleWithTitle:v22 contents:v4];

  return v20;
}

- (id)_childSettings
{
  v3 = [objc_opt_class() _childSettingsKeyPathsToTitles];
  v4 = [v3 allKeys];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__SBSystemApertureTransitionSettings__childSettings__block_invoke;
  v7[3] = &unk_2783BD920;
  v7[4] = self;
  v5 = [v4 bs_mapNoNulls:v7];

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
  v3 = [(SBSystemApertureTransitionSettings *)self _childSettings];
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v18 count:16];
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
          objc_enumerationMutation(v3);
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
      v5 = [v3 countByEnumeratingWithState:&v13 objects:v18 count:16];
    }

    while (v5);
  }
}

- (void)setChildBehaviorSettingsNamePrefix:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v18 = a3;
  v4 = [objc_opt_class() _childSettingsKeyPathsToTitles];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = [v4 allKeys];
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
          v15 = [v4 objectForKey:v9];
          v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ - (%@)", v18, v15];
          [v14 setName:v16];

          [(SBSystemApertureTransitionSettings *)self _setDefaultValuesForBehaviorSettings:v14];
        }
      }

      v6 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v6);
  }
}

+ (id)_rowForKeyPath:(id)a3 title:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 hasSuffix:@"BehaviorSettings"])
  {
    v7 = MEMORY[0x277D43210];
    v8 = [MEMORY[0x277D65E60] _moduleWithSectionTitle:v6];
    v9 = [v7 submoduleWithModule:v8 childSettingsKeyPath:v5];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_setDefaultValuesForBehaviorSettings:(id)a3
{
  v3 = a3;
  [v3 setDefaultValues];
  [v3 setBehaviorType:2];
  [v3 setDampingRatio:0.816];
  [v3 setResponse:0.512];
  [v3 setRetargetImpulse:0.008];
  [v3 setTrackingDampingRatio:0.456];
  [v3 setTrackingResponse:0.35];
  [v3 setTrackingRetargetImpulse:0.016];
  v5 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [v3 setFrameRateRange:1114137 highFrameRateReason:{*&v5.minimum, *&v5.maximum, *&v5.preferred}];
}

@end