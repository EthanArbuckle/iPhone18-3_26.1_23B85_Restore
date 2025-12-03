@interface SBSARecombinationTransitionProvider
- (id)preferencesFromContext:(id)context;
@end

@implementation SBSARecombinationTransitionProvider

- (id)preferencesFromContext:(id)context
{
  contextCopy = context;
  if (contextCopy)
  {
    v6 = objc_opt_self();
    v7 = contextCopy;
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

    if (!v9)
    {
      [(SBSARecombinationTransitionProvider *)v7 preferencesFromContext:a2, self];
    }
  }

  else
  {
    v9 = 0;
  }

  preferences = [v9 preferences];
  if (preferences)
  {
    v11 = objc_opt_self();
    v12 = preferences;
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

    if (!v14)
    {
      [(SBSARecombinationTransitionProvider *)v12 preferencesFromContext:a2, self];
    }
  }

  else
  {
    v14 = 0;
  }

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __62__SBSARecombinationTransitionProvider_preferencesFromContext___block_invoke;
  v23[3] = &unk_2783A93E8;
  v23[4] = self;
  v23[5] = a2;
  v15 = [v14 copyWithBlock:v23];

  v16 = [v9 copyByUpdatingPreferences:v15];
  v22.receiver = self;
  v22.super_class = SBSARecombinationTransitionProvider;
  v17 = [(SBSABasePreferencesProvider *)&v22 preferencesFromContext:v16];
  v18 = objc_opt_class();
  v19 = v17;
  if (v18)
  {
    if (objc_opt_isKindOfClass())
    {
      v18 = v19;
    }

    else
    {
      v18 = 0;
    }
  }

  v20 = v18;

  return v18;
}

void __62__SBSARecombinationTransitionProvider_preferencesFromContext___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v24 = v2;
  if (v2)
  {
    v3 = objc_opt_self();
    v4 = v24;
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

    v2 = v24;
    if (!v6)
    {
      __62__SBSARecombinationTransitionProvider_preferencesFromContext___block_invoke_cold_1(a1);
      v2 = v24;
    }
  }

  else
  {
    v6 = 0;
  }

  [v6 setBlobEnabled:1];
  v7 = [v6 containerViewDescriptions];
  if ([v7 count])
  {
    v8 = 0;
    do
    {
      if (v8)
      {
        v9 = [v7 objectAtIndex:v8];
        v10 = [objc_opt_class() settings];
        v11 = [v10 inertInterfaceElementTransitionSettings];
        v12 = [v11 boundsBehaviorSettings];

        v13 = [objc_opt_class() settings];
        v14 = [v13 recombinationSecondaryBoundsYSettings];

        v15 = [objc_opt_class() newAnimatedTransitionDescriptionWithBehaviorSettings:v12];
        v16 = [v15 copyBySettingAuxillaryBehaviorSettings:v14 forKeyPath:@"size.height"];

        v17 = [SBSAInterfaceElementPropertyIdentity alloc];
        v18 = [v9 interfaceElementIdentifier];
        v19 = [(SBSAInterfaceElementPropertyIdentity *)v17 initWithAssociatedInterfaceElementIdentifier:v18 andProperty:@"bounds"];

        [v6 setAnimatedTransitionDescription:v16 forProperty:v19 withMilestones:0];
        v20 = [SBSAInterfaceElementPropertyIdentity alloc];
        [v9 interfaceElementIdentifier];
        v22 = v21 = v6;
        v23 = [(SBSAInterfaceElementPropertyIdentity *)v20 initWithAssociatedInterfaceElementIdentifier:v22 andProperty:@"contentBounds"];

        v6 = v21;
        [v21 associateAnimatedTransitionDescriptionOfProperty:v19 withProperty:v23 withMilestones:0];
      }

      ++v8;
    }

    while (v8 < [v7 count]);
  }
}

- (void)preferencesFromContext:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSClassFromString(&cfstr_Sbsacontext.isa);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [v8 handleFailureInMethod:a2 object:a3 file:@"SBSARecombinationTransitionProvider.m" lineNumber:21 description:{@"Unexpected class – expected '%@', got '%@'", v5, v7}];
}

- (void)preferencesFromContext:(uint64_t)a3 .cold.2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSClassFromString(&cfstr_Sbsapreference.isa);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [v8 handleFailureInMethod:a2 object:a3 file:@"SBSARecombinationTransitionProvider.m" lineNumber:22 description:{@"Unexpected class – expected '%@', got '%@'", v5, v7}];
}

void __62__SBSARecombinationTransitionProvider_preferencesFromContext___block_invoke_cold_1(uint64_t a1)
{
  v8 = [MEMORY[0x277CCA890] currentHandler];
  v4 = a1 + 32;
  v2 = *(a1 + 32);
  v3 = *(v4 + 8);
  v5 = NSClassFromString(&cfstr_Sbsapreference_0.isa);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [v8 handleFailureInMethod:v3 object:v2 file:@"SBSARecombinationTransitionProvider.m" lineNumber:24 description:{@"Unexpected class – expected '%@', got '%@'", v5, v7}];
}

@end