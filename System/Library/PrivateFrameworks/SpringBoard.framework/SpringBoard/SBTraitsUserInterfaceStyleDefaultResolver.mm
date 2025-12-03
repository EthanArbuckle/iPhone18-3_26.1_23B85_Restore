@interface SBTraitsUserInterfaceStyleDefaultResolver
- (void)resolveStagePreferencesWithContext:(id)context preferencesTree:(id)tree;
@end

@implementation SBTraitsUserInterfaceStyleDefaultResolver

- (void)resolveStagePreferencesWithContext:(id)context preferencesTree:(id)tree
{
  v18 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  acquiredParticipants = [contextCopy acquiredParticipants];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [acquiredParticipants countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(acquiredParticipants);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        v11[0] = MEMORY[0x277D85DD0];
        v11[1] = 3221225472;
        v11[2] = __96__SBTraitsUserInterfaceStyleDefaultResolver_resolveStagePreferencesWithContext_preferencesTree___block_invoke;
        v11[3] = &unk_2783AFBE0;
        v12 = contextCopy;
        [v10 updateUserInterfaceOrientationSettingsWithBlock:v11];

        ++v9;
      }

      while (v7 != v9);
      v7 = [acquiredParticipants countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }
}

void __96__SBTraitsUserInterfaceStyleDefaultResolver_resolveStagePreferencesWithContext_preferencesTree___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v2 validatedInputs];
  v4 = [v5 userInterfaceStyleInputs];
  [v3 setUserInterfaceStyleInputs:v4];
}

@end