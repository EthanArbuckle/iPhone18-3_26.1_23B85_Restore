@interface SBAlwaysOnPolicySettings
+ (id)settingsControllerModule;
- (NSSet)alwaysOnDisablingFocusSemanticTypes;
- (void)setAlwaysOnDisablingFocusSemanticTypes:(id)types;
- (void)setDefaultValues;
@end

@implementation SBAlwaysOnPolicySettings

- (void)setDefaultValues
{
  v4.receiver = self;
  v4.super_class = SBAlwaysOnPolicySettings;
  [(PTSettings *)&v4 setDefaultValues];
  self->_focusStrategy = 0;
  v3 = [MEMORY[0x277CBEB98] setWithArray:&unk_28336EA18];
  [(SBAlwaysOnPolicySettings *)self setAlwaysOnDisablingFocusSemanticTypes:v3];
}

+ (id)settingsControllerModule
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D431B8] rowWithTitle:@"Strategy" valueKeyPath:@"focusStrategy"];
  v24 = [v3 possibleValues:&unk_28336EA48 titles:&unk_28336EA30];

  array = [MEMORY[0x277CBEB18] array];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  allKeys = [&unk_2833727D8 allKeys];
  v6 = [allKeys sortedArrayUsingSelector:sel_localizedCaseInsensitiveCompare_];

  obj = v6;
  v7 = [v6 countByEnumeratingWithState:&v26 objects:v32 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v27;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v27 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v26 + 1) + 8 * i);
        v12 = MEMORY[0x277D432A8];
        v13 = [self _keyPathForSemanticTypeName:v11];
        v14 = [v12 rowWithTitle:v11 valueKeyPath:v13];
        v15 = [v14 conditionFormat:@"focusStrategy = %@", &unk_283371BB8];

        [array addObject:v15];
      }

      v8 = [obj countByEnumeratingWithState:&v26 objects:v32 count:16];
    }

    while (v8);
  }

  v16 = MEMORY[0x277D43210];
  v31 = v24;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v31 count:1];
  v18 = [v17 arrayByAddingObjectsFromArray:array];
  v19 = [v16 sectionWithRows:v18 title:@"Disabling By Focus Modes"];

  v20 = MEMORY[0x277D43210];
  v30 = v19;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v30 count:1];
  v22 = [v20 moduleWithTitle:@"Always-On Policies" contents:v21];

  return v22;
}

- (NSSet)alwaysOnDisablingFocusSemanticTypes
{
  allKeys = [&unk_283372800 allKeys];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __63__SBAlwaysOnPolicySettings_alwaysOnDisablingFocusSemanticTypes__block_invoke;
  v8[3] = &unk_2783A8B78;
  v8[4] = self;
  v4 = [allKeys bs_filter:v8];
  v5 = [v4 bs_map:&__block_literal_global_329];

  v6 = [MEMORY[0x277CBEB98] setWithArray:v5];

  return v6;
}

uint64_t __63__SBAlwaysOnPolicySettings_alwaysOnDisablingFocusSemanticTypes__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [objc_opt_class() _keyPathForSemanticTypeName:v3];

  v5 = [v2 valueForKey:v4];
  v6 = [v5 BOOLValue];

  return v6;
}

- (void)setAlwaysOnDisablingFocusSemanticTypes:(id)types
{
  v20 = *MEMORY[0x277D85DE8];
  typesCopy = types;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = [&unk_283372850 allKeys];
  v5 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = [&unk_283372878 objectForKeyedSubscript:v9];
        v11 = [typesCopy containsObject:v10];

        v12 = [MEMORY[0x277CCABB0] numberWithBool:v11];
        v13 = [objc_opt_class() _keyPathForSemanticTypeName:v9];
        [(SBAlwaysOnPolicySettings *)self setValue:v12 forKey:v13];
      }

      v6 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }
}

@end