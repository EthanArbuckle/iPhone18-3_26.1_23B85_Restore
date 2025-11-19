@interface RBSLaunchContext(RBLaunchChecks)
- (BOOL)_deviceIsEligibleForDomain:()RBLaunchChecks bundleID:;
- (id)_applicationRecordForLaunchCheck;
- (id)_sharedPreflightManager;
- (uint64_t)_launchAllowedBySystemState:()RBLaunchChecks error:;
- (uint64_t)_needsEligibilityCheck;
- (uint64_t)_passesEligibilityCheck;
- (uint64_t)_passesRegulatoryChecksWithError:()RBLaunchChecks;
- (uint64_t)_recordPassesEligibilityChecks:()RBLaunchChecks;
- (uint64_t)_requiresPreflightCheck;
- (void)_applicationRecordForLaunchCheck;
- (void)_passesEligibilityCheck;
- (void)_requiresPreflightCheck;
@end

@implementation RBSLaunchContext(RBLaunchChecks)

- (uint64_t)_requiresPreflightCheck
{
  v40 = *MEMORY[0x277D85DE8];
  v2 = [a1 _sharedPreflightManager];
  if (v2)
  {
    v3 = [a1 identity];
    v4 = [a1 appID];
    if (!(v4 | v3))
    {
      v5 = rbs_process_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        [RBSLaunchContext(RBLaunchChecks) _requiresPreflightCheck];
      }

      goto LABEL_41;
    }

    v5 = v4;
    if ([v3 isApplication])
    {
      if (v5)
      {
LABEL_5:
        v6 = [v2 requiresPreflightForApplication:v5];
        v7 = rbs_process_log();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v8 = @"ALLOWED";
          if (v6)
          {
            v8 = @"DISALLOWED";
          }

          *buf = 138543618;
          v36 = a1;
          v37 = 2114;
          v38 = v8;
          _os_log_impl(&dword_262485000, v7, OS_LOG_TYPE_DEFAULT, "preflightManager for %{public}@ -> %{public}@", buf, 0x16u);
        }

        goto LABEL_42;
      }

      v10 = [a1 bundleIdentifier];
      if (!v10)
      {
        if (![v3 isExtension] || (objc_msgSend(v3, "xpcServiceIdentifier"), (v10 = objc_claimAutoreleasedReturnValue()) == 0))
        {
          v5 = rbs_process_log();
          if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
          {
            [RBSLaunchContext(RBLaunchChecks) _requiresPreflightCheck];
          }

          goto LABEL_41;
        }
      }

      v9 = v10;
      v34 = 0;
      v11 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:v10 allowPlaceholder:0 error:&v34];
      v5 = v34;
      if (v11)
      {
        v26 = v11;
        v27 = v9;
        v29 = v3;
        v32 = 0u;
        v33 = 0u;
        v30 = 0u;
        v31 = 0u;
        obj = [v11 identities];
        v12 = [obj countByEnumeratingWithState:&v30 objects:v39 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v31;
LABEL_19:
          v15 = 0;
          while (1)
          {
            if (*v31 != v14)
            {
              objc_enumerationMutation(obj);
            }

            v16 = *(*(&v30 + 1) + 8 * v15);
            v17 = [v16 personaUniqueString];
            v18 = [v29 personaString];
            v19 = [v17 isEqualToString:v18];

            if (v19)
            {
              break;
            }

            if (v13 == ++v15)
            {
              v13 = [obj countByEnumeratingWithState:&v30 objects:v39 count:16];
              if (v13)
              {
                goto LABEL_19;
              }

              goto LABEL_25;
            }
          }

          v20 = v16;

          if (!v20)
          {
            goto LABEL_32;
          }

          v3 = v29;
          v11 = v26;
          v21 = v27;
          goto LABEL_34;
        }

LABEL_25:

LABEL_32:
        v11 = v26;
        v22 = [v26 identities];
        v20 = [v22 firstObject];

        v3 = v29;
        if (v20)
        {
          v21 = v27;
LABEL_34:

          v5 = v20;
          goto LABEL_5;
        }

        v23 = rbs_process_log();
        v9 = v27;
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          [RBSLaunchContext(RBLaunchChecks) _requiresPreflightCheck];
        }
      }

      else
      {
        v23 = rbs_process_log();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          [RBSLaunchContext(RBLaunchChecks) _requiresPreflightCheck];
        }
      }
    }

    else
    {
      v9 = rbs_process_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v36 = a1;
        _os_log_impl(&dword_262485000, v9, OS_LOG_TYPE_DEFAULT, "Skipping preflight as %{public}@ is not an app", buf, 0xCu);
      }
    }

LABEL_41:
    v6 = 0;
LABEL_42:

    goto LABEL_43;
  }

  v6 = 0;
LABEL_43:

  v24 = *MEMORY[0x277D85DE8];
  return v6;
}

- (id)_sharedPreflightManager
{
  if (_sharedPreflightManager_onceToken != -1)
  {
    [RBSLaunchContext(RBLaunchChecks) _sharedPreflightManager];
  }

  v1 = _sharedPreflightManager_preflightManager;

  return v1;
}

- (uint64_t)_passesEligibilityCheck
{
  if (![a1 _needsEligibilityCheck])
  {
    return 1;
  }

  v2 = [a1 identity];
  if ([v2 isApplication])
  {
    v3 = [a1 _applicationRecordForLaunchCheck];
    if (v3)
    {
      v4 = [a1 _recordPassesEligibilityChecks:v3];
    }

    else
    {
      v5 = rbs_process_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        [RBSLaunchContext(RBLaunchChecks) _passesEligibilityCheck];
      }

      v4 = 1;
    }
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (id)_applicationRecordForLaunchCheck
{
  v2 = [a1 appID];
  v3 = v2;
  if (!v2)
  {
    v6 = [a1 bundleIdentifier];
    if (v6)
    {
      v9 = 0;
      v4 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:v6 allowPlaceholder:0 error:&v9];
      v5 = v9;
      if (v4)
      {
        goto LABEL_13;
      }

      v7 = rbs_process_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [RBSLaunchContext(RBLaunchChecks) _applicationRecordForLaunchCheck];
      }
    }

    else
    {
      v7 = rbs_process_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [RBSLaunchContext(RBLaunchChecks) _applicationRecordForLaunchCheck];
      }

      v5 = 0;
      v4 = 0;
    }

    goto LABEL_13;
  }

  v10 = 0;
  v4 = [v2 findApplicationRecordWithError:&v10];
  v5 = v10;
  if (v4)
  {
    goto LABEL_14;
  }

  v6 = rbs_process_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [RBSLaunchContext(RBLaunchChecks) _applicationRecordForLaunchCheck];
  }

LABEL_13:

LABEL_14:

  return v4;
}

- (uint64_t)_needsEligibilityCheck
{
  if (_needsEligibilityCheck_onceToken != -1)
  {
    [RBSLaunchContext(RBLaunchChecks) _needsEligibilityCheck];
  }

  v2 = _needsEligibilityCheck_allowed;
  v3 = [a1 bundleIdentifier];
  LODWORD(v2) = [v2 containsObject:v3];

  return v2 ^ 1;
}

- (BOOL)_deviceIsEligibleForDomain:()RBLaunchChecks bundleID:
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a4;
  if (v6)
  {
    v7 = [a3 unsignedLongLongValue];
    v8 = [a1 identity];
    v9 = [v8 personaString];

    v10 = rbs_process_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218498;
      v22 = v7;
      v23 = 2112;
      v24 = v6;
      v25 = 2112;
      v26 = v9;
      _os_log_impl(&dword_262485000, v10, OS_LOG_TYPE_DEFAULT, "Making eligibility query with domain: %llu, bundle ID: %@, persona: %@", buf, 0x20u);
    }

    v11 = objc_alloc(MEMORY[0x277D36CB0]);
    v12 = [a1 identity];
    v13 = [v12 personaString];
    v20 = 0;
    v14 = [v11 initWithDomain:v7 bundleID:v6 persona:v13 error:&v20];
    v15 = v20;

    if (v14)
    {
      v16 = [v14 answer] == 4;
    }

    else
    {
      v17 = rbs_process_log();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [(RBSLaunchContext(RBLaunchChecks) *)v15 _deviceIsEligibleForDomain:v7 bundleID:v17];
      }

      v16 = 0;
    }
  }

  else
  {
    v15 = rbs_process_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [RBSLaunchContext(RBLaunchChecks) _deviceIsEligibleForDomain:v15 bundleID:?];
    }

    v16 = 1;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v16;
}

- (uint64_t)_recordPassesEligibilityChecks:()RBLaunchChecks
{
  v4 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 1;
  v5 = [v4 entitlements];
  v6 = [v4 bundleIdentifier];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __67__RBSLaunchContext_RBLaunchChecks___recordPassesEligibilityChecks___block_invoke;
  v11[3] = &unk_279B33B78;
  v7 = v5;
  v12 = v7;
  v13 = a1;
  v8 = v6;
  v14 = v8;
  v15 = &v16;
  [&unk_28751B298 enumerateKeysAndObjectsUsingBlock:v11];
  v9 = *(v17 + 24);

  _Block_object_dispose(&v16, 8);
  return v9;
}

- (uint64_t)_passesRegulatoryChecksWithError:()RBLaunchChecks
{
  if ([a1 _requiresPreflightCheck])
  {
    if (a3)
    {
      v5 = @"Launch prevented due to user approval regulatory requirements";
      v6 = 8;
LABEL_8:
      v8 = *MEMORY[0x277D47088];
      v9 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:2];
      [v9 setObject:v5 forKey:*MEMORY[0x277CCA470]];
      v10 = [MEMORY[0x277CCA9B8] errorWithDomain:v8 code:v6 userInfo:v9];

      v11 = v10;
      result = 0;
      *a3 = v10;
      return result;
    }
  }

  else
  {
    if ([a1 _passesEligibilityCheck])
    {
      return 1;
    }

    if (a3)
    {
      v5 = @"Launch prevented due to device eligibility requirements";
      v6 = 9;
      goto LABEL_8;
    }
  }

  return 0;
}

- (uint64_t)_launchAllowedBySystemState:()RBLaunchChecks error:
{
  v46 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [v6 preventLaunch];
  v8 = [v6 preventLaunchPredicates];
  v9 = [v6 allowLaunchPredicates];
  v10 = [objc_alloc(MEMORY[0x277D46F48]) initWithLaunchContext:a1];
  v11 = rbs_process_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v10 executablePath];
    *buf = 67109890;
    *v41 = v7;
    *&v41[4] = 2114;
    *&v41[6] = v12;
    v42 = 2114;
    v43 = v8;
    v44 = 2114;
    v45 = v9;
    _os_log_impl(&dword_262485000, v11, OS_LOG_TYPE_DEFAULT, "Checking PreventLaunch: global:%d exPath:%{public}@ predicates:%{public}@ allow:%{public}@", buf, 0x26u);
  }

  if (v7)
  {
LABEL_16:
    if ([v9 count])
    {
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v19 = [v6 allowLaunchPredicates];
      v18 = [v19 countByEnumeratingWithState:&v30 objects:v38 count:16];
      if (v18)
      {
        v20 = *v31;
        while (2)
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v31 != v20)
            {
              objc_enumerationMutation(v19);
            }

            v22 = *(*(&v30 + 1) + 8 * i);
            if ([v22 matchesProcess:v10])
            {
              v23 = rbs_process_log();
              if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543362;
                *v41 = v22;
                _os_log_impl(&dword_262485000, v23, OS_LOG_TYPE_DEFAULT, "PreventLaunch overriden by Predicate: %{public}@", buf, 0xCu);
              }

              v18 = 1;
              goto LABEL_29;
            }
          }

          v18 = [v19 countByEnumeratingWithState:&v30 objects:v38 count:16];
          if (v18)
          {
            continue;
          }

          break;
        }
      }

LABEL_29:

      if (!a4)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v18 = 0;
      if (!a4)
      {
        goto LABEL_34;
      }
    }

    if ((v18 & 1) == 0)
    {
      v24 = *MEMORY[0x277D47088];
      v25 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:2];
      [v25 setObject:@"Launch prevented due to prevent launch assertion" forKey:*MEMORY[0x277CCA470]];
      v26 = [MEMORY[0x277CCA9B8] errorWithDomain:v24 code:7 userInfo:v25];

      v27 = v26;
      v18 = 0;
      *a4 = v26;
    }

    goto LABEL_34;
  }

  if ([v8 count])
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v13 = [v6 preventLaunchPredicates];
    v14 = [v13 countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v35;
      while (2)
      {
        for (j = 0; j != v15; ++j)
        {
          if (*v35 != v16)
          {
            objc_enumerationMutation(v13);
          }

          if ([*(*(&v34 + 1) + 8 * j) matchesProcess:v10])
          {

            goto LABEL_16;
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v34 objects:v39 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }
    }
  }

  v18 = 1;
LABEL_34:

  v28 = *MEMORY[0x277D85DE8];
  return v18;
}

- (void)_requiresPreflightCheck
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_2(&dword_262485000, v0, v1, "Skipping preflight as %{public}@ has no bundle ID", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_deviceIsEligibleForDomain:()RBLaunchChecks bundleID:.cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v4 = 134218242;
  *&v4[4] = a2;
  *&v4[12] = 2112;
  *&v4[14] = a1;
  OUTLINED_FUNCTION_4(&dword_262485000, a2, a3, "failure getting eligibility info for domain %qu with error: %@", *v4, *&v4[8], *&v4[16], *MEMORY[0x277D85DE8]);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)_applicationRecordForLaunchCheck
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_2(&dword_262485000, v0, v1, "Could not get bundle ID from %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_passesEligibilityCheck
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_2(&dword_262485000, v0, v1, "Could not find LS record for %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end