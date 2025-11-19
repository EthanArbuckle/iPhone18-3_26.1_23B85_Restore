@interface SBSAPopTransitionProvider
- (id)preferencesFromContext:(id)a3;
@end

@implementation SBSAPopTransitionProvider

- (id)preferencesFromContext:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = v3;
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v8 = [v7 elementContexts];
  v30.receiver = self;
  v30.super_class = SBSAPopTransitionProvider;
  v9 = [(SBSABasePreferencesProvider *)&v30 preferencesFromContext:v7];
  v10 = objc_opt_class();
  v11 = v9;
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

  v22 = v5;
  v13 = v12;

  v14 = [v13 containerViewDescriptions];
  v15 = [v14 mutableCopy];

  if ([v8 count])
  {
    v16 = 0;
    do
    {
      if ([v15 count] <= v16)
      {
        [(SBSAPopTransitionProvider *)a2 preferencesFromContext:v16, v15];
      }

      v17 = [v15 objectAtIndexedSubscript:v16];
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __52__SBSAPopTransitionProvider_preferencesFromContext___block_invoke;
      v25[3] = &unk_2783B0690;
      v25[4] = self;
      v26 = v17;
      v28 = a2;
      v29 = v16;
      v18 = v8;
      v27 = v18;
      v19 = v17;
      v20 = [v13 copyWithBlock:v25];

      ++v16;
      v13 = v20;
    }

    while (v16 < [v18 count]);
  }

  else
  {
    v20 = v13;
  }

  return v20;
}

void __52__SBSAPopTransitionProvider_preferencesFromContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v39 = v3;
  if (v3)
  {
    v4 = objc_opt_self();
    v5 = v39;
    if (v4)
    {
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;

    v3 = v39;
    if (!v7)
    {
      __52__SBSAPopTransitionProvider_preferencesFromContext___block_invoke_cold_1(a1);
      v3 = v39;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = [objc_opt_class() settings];
  v9 = [v8 popToCustomInterfaceElementTransitionSettings];
  v10 = [v9 centerBehaviorSettings];

  v11 = [objc_opt_class() settings];
  v12 = [v11 popToCustomInterfaceElementTransitionSettings];
  v13 = [v12 boundsBehaviorSettings];

  v14 = [SBSAInterfaceElementPropertyIdentity alloc];
  v15 = [*(a1 + 40) interfaceElementIdentifier];
  v16 = [(SBSAInterfaceElementPropertyIdentity *)v14 initWithAssociatedInterfaceElementIdentifier:v15 andProperty:@"bounds"];

  v17 = [SBSABasePreferencesProvider newAnimatedTransitionDescriptionWithBehaviorSettings:v10];
  [v7 setAnimatedTransitionDescription:v17 forProperty:v16 withMilestones:0];

  v18 = [SBSAInterfaceElementPropertyIdentity alloc];
  v19 = [*(a1 + 40) interfaceElementIdentifier];
  v20 = [(SBSAInterfaceElementPropertyIdentity *)v18 initWithAssociatedInterfaceElementIdentifier:v19 andProperty:@"center"];

  v21 = [SBSABasePreferencesProvider newAnimatedTransitionDescriptionWithBehaviorSettings:v13];
  [v7 setAnimatedTransitionDescription:v21 forProperty:v20 withMilestones:0];

  v22 = [v7 indicatorContainerViewDescription];
  v23 = *(a1 + 64);
  if (v23 == [*(a1 + 48) count] - 1 && v22)
  {
    v38 = v10;
    v24 = [SBSAInterfaceElementPropertyIdentity alloc];
    v25 = [*(a1 + 40) interfaceElementIdentifier];
    v26 = [(SBSAInterfaceElementPropertyIdentity *)v24 initWithAssociatedInterfaceElementIdentifier:v25 andProperty:@"bounds"];
    v27 = [SBSAInterfaceElementPropertyIdentity alloc];
    [v22 interfaceElementIdentifier];
    v28 = v37 = v13;
    v29 = [(SBSAInterfaceElementPropertyIdentity *)v27 initWithAssociatedInterfaceElementIdentifier:v28 andProperty:@"bounds"];
    [v7 associateAnimatedTransitionDescriptionOfProperty:v26 withProperty:v29 withMilestones:0];

    v30 = [SBSAInterfaceElementPropertyIdentity alloc];
    v31 = [*(a1 + 40) interfaceElementIdentifier];
    v32 = [(SBSAInterfaceElementPropertyIdentity *)v30 initWithAssociatedInterfaceElementIdentifier:v31 andProperty:@"center"];
    v33 = [SBSAInterfaceElementPropertyIdentity alloc];
    v34 = [v22 interfaceElementIdentifier];
    v35 = v33;
    v10 = v38;
    v36 = [(SBSAInterfaceElementPropertyIdentity *)v35 initWithAssociatedInterfaceElementIdentifier:v34 andProperty:@"center"];
    [v7 associateAnimatedTransitionDescriptionOfProperty:v32 withProperty:v36 withMilestones:0];

    v13 = v37;
  }
}

- (void)preferencesFromContext:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = [MEMORY[0x277CCA890] currentHandler];
  [v8 handleFailureInMethod:a1 object:a2 file:@"SBSAPopTransitionProvider.m" lineNumber:25 description:{@"No container view description at index '%lu': %@", a3, a4}];
}

void __52__SBSAPopTransitionProvider_preferencesFromContext___block_invoke_cold_1(uint64_t a1)
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v2 = *(a1 + 56);
  v3 = *(a1 + 32);
  v4 = NSClassFromString(&cfstr_Sbsapreference_0.isa);
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v7 handleFailureInMethod:v2 object:v3 file:@"SBSAPopTransitionProvider.m" lineNumber:28 description:{@"Unexpected class – expected '%@', got '%@'", v4, v6}];
}

@end