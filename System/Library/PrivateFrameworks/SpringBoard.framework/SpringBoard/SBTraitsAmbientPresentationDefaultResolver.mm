@interface SBTraitsAmbientPresentationDefaultResolver
- (SBTraitsAmbientPresentationDefaultResolver)initWithThresholdRole:(id)role componentOrder:(id)order;
- (void)resolveStagePreferencesWithContext:(id)context preferencesTree:(id)tree;
@end

@implementation SBTraitsAmbientPresentationDefaultResolver

- (SBTraitsAmbientPresentationDefaultResolver)initWithThresholdRole:(id)role componentOrder:(id)order
{
  roleCopy = role;
  v11.receiver = self;
  v11.super_class = SBTraitsAmbientPresentationDefaultResolver;
  v8 = [(SBTraitsAmbientPresentationStageComponent *)&v11 initWithComponentOrder:order];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_thresholdRole, role);
  }

  return v9;
}

- (void)resolveStagePreferencesWithContext:(id)context preferencesTree:(id)tree
{
  v26 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  acquiredParticipants = [contextCopy acquiredParticipants];
  v7 = [acquiredParticipants sortedArrayUsingComparator:&__block_literal_global_87];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = v7;
  v8 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v22;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v21 + 1) + 8 * i);
        role = [v13 role];
        v15 = [role isEqualToString:self->_thresholdRole];

        v10 |= v15;
        if (v10)
        {
          v16 = 0;
        }

        else
        {
          if ([v13 currentAmbientPresentedFlag] == 0x7FFFFFFFFFFFFFFFLL)
          {
            continue;
          }

          v16 = 1;
        }

        v18[0] = MEMORY[0x277D85DD0];
        v18[1] = 3221225472;
        v18[2] = __97__SBTraitsAmbientPresentationDefaultResolver_resolveStagePreferencesWithContext_preferencesTree___block_invoke_2;
        v18[3] = &unk_2783B0C40;
        v20 = v16;
        v19 = contextCopy;
        [v13 updateAmbientPresentationSettingsWithBlock:v18];
      }

      v9 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v9);
  }
}

uint64_t __97__SBTraitsAmbientPresentationDefaultResolver_resolveStagePreferencesWithContext_preferencesTree___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a3;
  [a2 currentZOrderLevel];
  v6 = [v4 numberWithDouble:?];
  v7 = MEMORY[0x277CCABB0];
  [v5 currentZOrderLevel];
  v9 = v8;

  v10 = [v7 numberWithDouble:v9];
  v11 = [v6 compare:v10];

  return v11;
}

void __97__SBTraitsAmbientPresentationDefaultResolver_resolveStagePreferencesWithContext_preferencesTree___block_invoke_2(uint64_t a1, void *a2)
{
  if (*(a1 + 40) == 1)
  {
    v5 = a2;
    [v5 setAmbientPresentationInputs:0];
  }

  else
  {
    v2 = *(a1 + 32);
    v3 = a2;
    v5 = [v2 validatedInputs];
    v4 = [v5 ambientPresentationInputs];
    [v3 setAmbientPresentationInputs:v4];
  }
}

@end