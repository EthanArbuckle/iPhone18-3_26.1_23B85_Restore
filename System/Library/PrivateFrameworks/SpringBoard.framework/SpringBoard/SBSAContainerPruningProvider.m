@interface SBSAContainerPruningProvider
- (id)preferencesFromContext:(id)a3;
@end

@implementation SBSAContainerPruningProvider

- (id)preferencesFromContext:(id)a3
{
  v52 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    v6 = objc_opt_self();
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

    if (!v9)
    {
      [(SBSAContainerPruningProvider *)v7 preferencesFromContext:a2, self];
    }
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    v10 = [v9 preferences];
    v11 = [v9 containsAnyOfSignals:3];
    v12 = [v9 flags] & 3;
    v13 = [v10 isCollisionImminent];
    v14 = v13;
    if (!v11 || v12 || (v13 & 1) != 0)
    {
      if (!v11)
      {
LABEL_44:

        goto LABEL_45;
      }

      v15 = SBLogSystemAperturePreferencesStackPruning();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v38 = [v9 queryIteration];
        v39 = &stru_283094718;
        v40 = @" Pressing or Resizing,";
        if (!v12)
        {
          v40 = &stru_283094718;
        }

        *buf = 134349570;
        v47 = v38;
        v48 = 2112;
        v49 = v40;
        if (v14)
        {
          v39 = @" Collision Imminent";
        }

        v50 = 2112;
        v51 = v39;
        _os_log_debug_impl(&dword_21ED4E000, v15, OS_LOG_TYPE_DEBUG, "[%{public}lu] Deferring pruning because:%@%@", buf, 0x20u);
      }
    }

    else
    {
      v41 = v10;
      v42 = self;
      v15 = [v10 containerViewDescriptions];
      v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v17 = [v9 elementContexts];
      v18 = [v9 minimumNumberOfContainers];
      v19 = [v17 count];
      if (v18 <= v19)
      {
        v20 = v19;
      }

      else
      {
        v20 = v18;
      }

      v21 = [v9 maximumNumberOfElements];
      if (v20 >= v21)
      {
        v22 = v21;
      }

      else
      {
        v22 = v20;
      }

      if (v22)
      {
        for (i = 0; v22 != i; ++i)
        {
          if (i >= v18)
          {
            if (i >= [v17 count])
            {
              continue;
            }

            v25 = [v17 objectAtIndexedSubscript:i];
            if (!v25)
            {
              continue;
            }

            v44[0] = MEMORY[0x277D85DD0];
            v44[1] = 3221225472;
            v44[2] = __55__SBSAContainerPruningProvider_preferencesFromContext___block_invoke;
            v44[3] = &unk_2783B0210;
            v45 = v25;
            v24 = v25;
            v26 = [v15 bs_firstObjectPassingTest:v44];
            if (v26)
            {
              [v16 addObject:v26];
            }
          }

          else
          {
            if (i >= [v15 count])
            {
              v24 = 0;
            }

            else
            {
              v24 = [v15 objectAtIndexedSubscript:i];
            }

            [v16 addObject:v24];
          }
        }
      }

      v27 = SBLogSystemAperturePreferencesStackPruning();
      v28 = os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG);

      if (v28)
      {
        v29 = [v9 containerViewDescriptions];
        v30 = [v29 bs_compactMap:&__block_literal_global_154];

        v31 = [v16 bs_compactMap:&__block_literal_global_154];
        v32 = [v30 bs_differenceWithArray:v31];
        if ([v32 count])
        {
          v33 = SBLogSystemAperturePreferencesStackPruning();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
          {
            [(SBSAContainerPruningProvider *)v9 preferencesFromContext:v32, v33];
          }
        }
      }

      v34 = [v41 copyByUpdatingContainerViewDescriptions:v16];

      v35 = [v9 copyByUpdatingPreferences:v34];
      v10 = v34;
      v9 = v35;
      self = v42;
    }

    goto LABEL_44;
  }

LABEL_45:
  v43.receiver = self;
  v43.super_class = SBSAContainerPruningProvider;
  v36 = [(SBSABasePreferencesProvider *)&v43 preferencesFromContext:v9];

  return v36;
}

uint64_t __55__SBSAContainerPruningProvider_preferencesFromContext___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 associatedSystemApertureElementIdentity];
  v3 = SAElementIdentityEqualToIdentity();

  return v3;
}

- (void)preferencesFromContext:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSClassFromString(&cfstr_Sbsacontext.isa);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [v8 handleFailureInMethod:a2 object:a3 file:@"SBSAContainerPruningProvider.m" lineNumber:26 description:{@"Unexpected class – expected '%@', got '%@'", v5, v7}];
}

- (void)preferencesFromContext:(NSObject *)a3 .cold.2(void *a1, void *a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = [a1 queryIteration];
  v6 = [a2 description];
  v7 = 134349314;
  v8 = v5;
  v9 = 2112;
  v10 = v6;
  _os_log_debug_impl(&dword_21ED4E000, a3, OS_LOG_TYPE_DEBUG, "[%{public}lu] Performing pruning and removing container with identifier: %@", &v7, 0x16u);
}

@end