@interface SBPhysicalButtonZStackPolicyAssistant
- (BOOL)_sceneHasFullFidelityEventsEntitlement:(uint64_t)a1;
- (id)observedSceneSettings;
- (int64_t)resolveProposedPoliciesForForegroundScenes:(id)a3;
- (uint64_t)captureButtonFullFidelityEventRequestingScenes;
- (uint64_t)foregroundCaptureSceneTargets;
- (uint64_t)physicalButtonSceneTargets;
@end

@implementation SBPhysicalButtonZStackPolicyAssistant

- (uint64_t)captureButtonFullFidelityEventRequestingScenes
{
  if (result)
  {
    return *(result + 56);
  }

  return result;
}

- (uint64_t)foregroundCaptureSceneTargets
{
  if (result)
  {
    return *(result + 64);
  }

  return result;
}

- (uint64_t)physicalButtonSceneTargets
{
  if (result)
  {
    return *(result + 48);
  }

  return result;
}

- (id)observedSceneSettings
{
  v5[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAE60] valueWithPointer:sel_physicalButtonConfigurations];
  v5[0] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];

  return v3;
}

- (int64_t)resolveProposedPoliciesForForegroundScenes:(id)a3
{
  v43 = *MEMORY[0x277D85DE8];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = a3;
  v33 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
  v3 = 0;
  v4 = 0;
  if (v33)
  {
    v34 = 0;
    v31 = *v39;
    v32 = 0;
    do
    {
      for (i = 0; i != v33; ++i)
      {
        if (*v39 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v38 + 1) + 8 * i);
        v7 = [v6 clientSettings];
        v8 = objc_opt_self();
        v9 = v7;
        if (v8)
        {
          if (objc_opt_isKindOfClass())
          {
            v10 = v9;
          }

          else
          {
            v10 = 0;
          }
        }

        else
        {
          v10 = 0;
        }

        v11 = v10;

        v35 = v11;
        v12 = [v11 physicalButtonConfigurations];
        if ([v12 _count])
        {
          v13 = [MEMORY[0x277D65F00] targetWithScene:v6];
          v36[0] = MEMORY[0x277D85DD0];
          v36[1] = 3221225472;
          v36[2] = __84__SBPhysicalButtonZStackPolicyAssistant_resolveProposedPoliciesForForegroundScenes___block_invoke;
          v36[3] = &unk_2783AF628;
          v14 = v13;
          v37 = v14;
          [v12 _enumerateConfigurationsWithBlock:v36];
          v15 = v34;
          if (!v34)
          {
            v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
          }

          v34 = v15;
          [v15 addObject:v14];
        }

        if (!v4)
        {
          v4 = [MEMORY[0x277CCABB0] numberWithBool:{-[SBPhysicalButtonZStackPolicyAssistant _sceneHasFullFidelityEventsEntitlement:](self, v6)}];
        }

        if ([v4 BOOLValue])
        {
          if (!v32)
          {
            v32 = objc_alloc_init(MEMORY[0x277CBEB18]);
          }

          v16 = [v12 _configurationForButton:5];
          if (v16)
          {
            [v32 addObject:v6];
          }
        }

        v17 = +[SBCaptureApplicationCenter sharedInstance];
        v18 = [v6 clientHandle];
        v19 = [v18 processHandle];
        v20 = [v19 bundle];
        v21 = [v20 identifier];

        v22 = [v17 captureApplicationForBundleIdentifier:v21];
        if (v22 || ([v17 captureApplicationForExtensionIdentifier:v21], (v22 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v23 = v22;
          if (!v3)
          {
            v3 = [MEMORY[0x277CBEB18] array];
          }

          v24 = [[SBCaptureIntentSceneTarget alloc] initWithScene:v6 andCaptureApplication:v23];
          [v3 addObject:v24];
        }
      }

      v33 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
    }

    while (v33);
  }

  else
  {
    v32 = 0;
    v34 = 0;
  }

  if (BSEqualArrays())
  {
    v25 = 0;
  }

  else
  {
    v26 = [v34 copy];
    physicalButtonSceneTargets = self->_physicalButtonSceneTargets;
    self->_physicalButtonSceneTargets = v26;

    v25 = 1;
  }

  if ((BSEqualArrays() & 1) == 0)
  {
    objc_storeStrong(&self->_captureButtonFullFidelityEventRequestingScenes, v32);
    v25 = 1;
  }

  if ((BSEqualArrays() & 1) == 0)
  {
    objc_storeStrong(&self->_foregroundCaptureSceneTargets, v3);
    v25 = 1;
  }

  return v25;
}

void __84__SBPhysicalButtonZStackPolicyAssistant_resolveProposedPoliciesForForegroundScenes___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D65F10];
  v4 = a2;
  v5 = [v4 _button];
  v6 = [v4 _generation];
  v7 = [v4 _auditToken];

  v8 = [v3 targetWithPhysicalButton:v5 generation:v6 auditToken:v7];

  [*(a1 + 32) addButtonTarget:v8];
}

- (BOOL)_sceneHasFullFidelityEventsEntitlement:(uint64_t)a1
{
  if (!a1)
  {
    return 0;
  }

  v2 = [a2 clientHandle];
  v3 = [v2 processHandle];

  v4 = 0;
  if (v3)
  {
    [v3 auditToken];
    if ((BSAuditTokenTaskHasEntitlement() & 1) != 0 || BSAuditTokenTaskHasEntitlement())
    {
      v4 = 1;
    }
  }

  return v4;
}

@end