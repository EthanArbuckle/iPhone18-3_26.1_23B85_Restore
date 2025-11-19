@interface SBTraitsZOrderDefaultResolver
- (void)resolveStagePreferencesWithContext:(id)a3 preferencesTree:(id)a4;
@end

@implementation SBTraitsZOrderDefaultResolver

- (void)resolveStagePreferencesWithContext:(id)a3 preferencesTree:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = [a3 acquiredParticipants];
  v5 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        v10 = [v9 zOrderLevelPreferences];
        [v10 preferredZOrderLevel];
        v12 = v11;

        v13 = [v9 zOrderLevelPreferences];
        if (v13)
        {
          v14 = v13;
          [v9 currentZOrderLevel];
          v16 = v15;

          if (v16 != v12)
          {
            v17[0] = MEMORY[0x277D85DD0];
            v17[1] = 3221225472;
            v17[2] = __84__SBTraitsZOrderDefaultResolver_resolveStagePreferencesWithContext_preferencesTree___block_invoke;
            v17[3] = &__block_descriptor_40_e39_v16__0__TRAMutableSettingsZOrderLevel_8l;
            *&v17[4] = v12;
            [v9 updateZOrderLevelSettingsWithBlock:v17];
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }
}

@end