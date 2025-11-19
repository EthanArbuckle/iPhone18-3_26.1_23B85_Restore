@interface PPFeatureRedactor
- (PPFeatureRedactor)initWithTrialWrapper:(id)a3 namespaceName:(id)a4;
- (void)transformFeaturesInPlace:(id)a3;
@end

@implementation PPFeatureRedactor

- (void)transformFeaturesInPlace:(id)a3
{
  v4 = a3;
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x2020000000;
  v11 = 0;
  lock = self->_lock;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46__PPFeatureRedactor_transformFeaturesInPlace___block_invoke;
  v7[3] = &unk_2789775D8;
  v6 = v4;
  v8 = v6;
  v9 = v10;
  [(_PASLock *)lock runWithLockAcquired:v7];

  _Block_object_dispose(v10, 8);
}

void __46__PPFeatureRedactor_transformFeaturesInPlace___block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [MEMORY[0x277D42590] isInternalBuild];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = [*(a1 + 32) allKeys];
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v20;
    v10 = v4 ^ 1;
    *&v7 = 138739971;
    v18 = v7;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        v13 = [v3[1] objectForKeyedSubscript:{v12, v18}];
        if ([v13 length])
        {
          if (*(v3 + 17) != 1)
          {
            goto LABEL_18;
          }

          v14 = [*(a1 + 32) objectForKeyedSubscript:v12];
          [*(a1 + 32) setObject:v14 forKeyedSubscript:v13];

LABEL_10:
          [*(a1 + 32) removeObjectForKey:v12];
          goto LABEL_18;
        }

        if ((*(v3 + 16) | v10))
        {
          goto LABEL_10;
        }

        if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
        {
          v15 = pp_default_log_handle();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_23224A000, v15, OS_LOG_TYPE_DEFAULT, "Feature redaction is disabled and features not in the allow list are present", buf, 2u);
          }

          *(*(*(a1 + 40) + 8) + 24) = 1;
        }

        v16 = pp_default_log_handle();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          *buf = v18;
          v24 = v12;
          _os_log_debug_impl(&dword_23224A000, v16, OS_LOG_TYPE_DEBUG, "Feature %{sensitive}@ not redacted!", buf, 0xCu);
        }

LABEL_18:
      }

      v8 = [v5 countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v8);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (PPFeatureRedactor)initWithTrialWrapper:(id)a3 namespaceName:(id)a4
{
  v7 = a3;
  v8 = a4;
  v21.receiver = self;
  v21.super_class = PPFeatureRedactor;
  v9 = [(PPFeatureRedactor *)&v21 init];
  if (v9)
  {
    v10 = objc_alloc(MEMORY[0x277D425F8]);
    v11 = objc_opt_new();
    v12 = [v10 initWithGuardedData:v11];
    lock = v9->_lock;
    v9->_lock = v12;

    objc_storeStrong(&v9->_trialWrapper, a3);
    v14 = [(PPTrialWrapper *)v9->_trialWrapper plistForFactorName:@"FeatureRedactorConfiguration.plist" namespaceName:v8];
    v15 = v14;
    if (v14)
    {
      v16 = v14;
      v17 = v9->_lock;
      *buf = MEMORY[0x277D85DD0];
      v23 = 3221225472;
      v24 = __40__PPFeatureRedactor__loadWithAssetData___block_invoke;
      v25 = &unk_2789775B0;
      v18 = v16;
      v26 = v18;
      [(_PASLock *)v17 runWithLockAcquired:buf];
    }

    else
    {
      v19 = pp_default_log_handle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_23224A000, v19, OS_LOG_TYPE_ERROR, "No asset data found for feature redactor.", buf, 2u);
      }
    }
  }

  return v9;
}

void __40__PPFeatureRedactor__loadWithAssetData___block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = [v4 objectForKeyedSubscript:@"ShouldRedact"];
    if (!v5 || (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v7 = v5, (isKindOfClass & 1) == 0))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v21 = 138412290;
        v22 = @"ShouldRedact";
        _os_log_error_impl(&dword_23224A000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Param key not found: %@", &v21, 0xCu);
      }

      v7 = &unk_284786130;
    }

    v8 = v7;

    v9 = [v8 BOOLValue];
    v3[16] = v9;
    v10 = [*(a1 + 32) objectForKeyedSubscript:@"ShouldTranslate"];
    if (!v10 || (objc_opt_class(), v11 = objc_opt_isKindOfClass(), v12 = v10, (v11 & 1) == 0))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v21 = 138412290;
        v22 = @"ShouldTranslate";
        _os_log_error_impl(&dword_23224A000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Param key not found: %@", &v21, 0xCu);
      }

      v12 = &unk_284786130;
    }

    v13 = v12;

    v14 = [v13 BOOLValue];
    v3[17] = v14;
    v15 = [*(a1 + 32) objectForKeyedSubscript:@"Translations"];
    if (!v15 || (objc_opt_class(), v16 = objc_opt_isKindOfClass(), v17 = v15, (v16 & 1) == 0))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v21 = 138412290;
        v22 = @"Translations";
        _os_log_error_impl(&dword_23224A000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Param key not found: %@", &v21, 0xCu);
      }

      v17 = MEMORY[0x277CBEC10];
    }

    v18 = v17;

    v19 = *(v3 + 1);
    *(v3 + 1) = v18;
  }

  v20 = *MEMORY[0x277D85DE8];
}

@end