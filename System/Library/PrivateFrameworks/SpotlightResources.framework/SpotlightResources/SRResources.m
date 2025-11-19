@interface SRResources
- (BOOL)BOOLeanForKey:(id)a3 didFailWithError:(id *)a4;
- (BOOL)hasUpdates;
- (NSLocale)locale;
- (NSString)description;
- (SRResources)initWithClient:(id)a3 locale:(id)a4 options:(id)a5;
- (double)doubleForKey:(id)a3;
- (double)doubleForKey:(id)a3 didFailWithError:(id *)a4;
- (id)assetPathsForContentType:(id)a3;
- (id)fetchBooleanParameter:(id)a3;
- (id)fetchDoubleParameter:(id)a3;
- (id)fetchFilePathParameter:(id)a3;
- (id)fetchLongParameter:(id)a3;
- (id)fetchParameter:(id)a3 checkForPositive:(BOOL)a4;
- (id)fetchStringParameter:(id)a3;
- (id)filePathArrayForKey:(id)a3;
- (id)filePathArrayForKey:(id)a3 didFailWithError:(id *)a4;
- (id)filePathForKey:(id)a3;
- (id)filePathForKey:(id)a3 didFailWithError:(id *)a4;
- (id)getTrialExperimentId;
- (id)getTrialNamespaceId;
- (id)getTrialRolloutId;
- (id)getTrialTreatmentId;
- (id)objectForKey:(id)a3;
- (id)objectForKey:(id)a3 didFailWithError:(id *)a4;
- (id)objectForKey:(id)a3 withType:(int64_t *)a4 didFailWithError:(id *)a5;
- (id)stringForKey:(id)a3;
- (id)stringForKey:(id)a3 didFailWithError:(id *)a4;
- (id)updateWithNewOptions:(id)a3;
- (int)getTrialExperimentDeploymentId;
- (int)getTrialRolloutDeploymentId;
- (int64_t)longForKey:(id)a3 didFailWithError:(id *)a4;
- (void)dealloc;
- (void)didUpdateDefaultsWithBundleVersions:(id)a3 trial:(BOOL)a4;
- (void)logForTrigger:(id)a3 queryID:(int64_t)a4;
- (void)refreshTrial;
- (void)setLocale:(id)a3;
- (void)updateLocale;
@end

@implementation SRResources

- (id)getTrialTreatmentId
{
  v2 = [(SRResources *)self currentExperimentTrialManager];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 treatmentId];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)getTrialExperimentId
{
  v2 = [(SRResources *)self currentExperimentTrialManager];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 experimentId];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (SRResources)initWithClient:(id)a3 locale:(id)a4 options:(id)a5
{
  v48 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = SRLogCategoryGeneral();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [v10 localeIdentifier];
    *buf = 138412802;
    v43 = v9;
    v44 = 2112;
    v45 = v13;
    v46 = 2048;
    v47 = self;
    _os_log_impl(&dword_1AE58E000, v12, OS_LOG_TYPE_DEFAULT, "SRResources init (%@, %@): %p", buf, 0x20u);
  }

  v41.receiver = self;
  v41.super_class = SRResources;
  v14 = [(SRResources *)&v41 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_client, a3);
    if (v11)
    {
      v16 = [v11 mutableCopy];
    }

    else
    {
      v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    options = v15->_options;
    v15->_options = v16;

    v18 = [(NSMutableDictionary *)v15->_options objectForKey:@"forceLoad"];
    v15->_forceLoad = [v18 BOOLValue];

    v19 = [MEMORY[0x1E695DF88] data];
    feedbackData = v15->_feedbackData;
    v15->_feedbackData = v19;

    experimentNamespaceId = v15->_experimentNamespaceId;
    v15->_experimentNamespaceId = 0;

    experimentId = v15->_experimentId;
    v15->_experimentId = 0;

    experimentTreatmentId = v15->_experimentTreatmentId;
    v15->_experimentTreatmentId = 0;

    v15->_hasUpdates = 0;
    v24 = [v10 localeIdentifier];
    v25 = normalizedLocaleForIdentifier(v24);
    locale = v15->_locale;
    v15->_locale = v25;

    overrides = v15->_overrides;
    v15->_overrides = 0;

    if (SRIsAppleInternalInstall() && sUsingOverrides == 1)
    {
      v28 = [sOverrideList objectForKeyedSubscript:v9];
      v29 = v15->_overrides;
      v15->_overrides = v28;
    }

    v30 = +[SRDefaultsManager sharedDefaultsManager];
    [v30 registerDelegate:v15];

    v31 = +[SRDefaultsManager sharedDefaultsManager];
    v32 = [v31 assetBundleForLocale:v15->_locale client:v15->_client force:v15->_forceLoad];
    liveAssetBundle = v15->_liveAssetBundle;
    v15->_liveAssetBundle = v32;

    if (v11)
    {
      v34 = [v11 objectForKeyedSubscript:@"autoUpdateLocale"];
      if (v34)
      {
        v35 = v34;
        v36 = [v11 objectForKeyedSubscript:@"autoUpdateLocale"];
        v37 = [v36 BOOLValue];

        if (v37)
        {
          v38 = [MEMORY[0x1E696AD88] defaultCenter];
          [v38 addObserver:v15 selector:sel_updateLocale name:*MEMORY[0x1E695D8F0] object:0];
        }
      }
    }
  }

  v39 = *MEMORY[0x1E69E9840];
  return v15;
}

- (NSLocale)locale
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NSLocale *)v2->_locale copy];
  objc_sync_exit(v2);

  return v3;
}

- (void)setLocale:(id)a3
{
  v4 = a3;
  obj = self;
  objc_sync_enter(obj);
  locale = obj->_locale;
  obj->_locale = v4;

  objc_sync_exit(obj);
}

- (void)updateLocale
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF58] currentLocale];
  [(SRResources *)self setLocale:v3];
  v4 = SRLogCategoryAssets();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 localeIdentifier];
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_1AE58E000, v4, OS_LOG_TYPE_DEFAULT, "updating locale to %@", &v7, 0xCu);
  }

  [(SRResources *)self didUpdateDefaultsWithBundleVersions:0 trial:0];
  v6 = *MEMORY[0x1E69E9840];
}

- (BOOL)hasUpdates
{
  v2 = self;
  objc_sync_enter(v2);
  hasUpdates = v2->_hasUpdates;
  v2->_hasUpdates = 0;
  objc_sync_exit(v2);

  return hasUpdates;
}

- (void)didUpdateDefaultsWithBundleVersions:(id)a3 trial:(BOOL)a4
{
  v4 = a4;
  v39 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = self;
  objc_sync_enter(v7);
  if (v4)
  {
    v8 = SRLogCategoryTrial();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      liveAssetBundle = v7->_liveAssetBundle;
      client = v7->_client;
      v24 = languageCodeForLocale(v7->_locale);
      *buf = 134218498;
      v34 = liveAssetBundle;
      v35 = 2112;
      v36 = client;
      v37 = 2112;
      v38 = v24;
      _os_log_debug_impl(&dword_1AE58E000, v8, OS_LOG_TYPE_DEBUG, "Trial update for resource (%p, %@, %@)", buf, 0x20u);
    }

    v7->_hasUpdates = 1;
  }

  else if (!v6 || [(SRAssetBundle *)v7->_liveAssetBundle shouldUpdateForBundleVersions:v6])
  {
    v9 = SRLogCategoryAssets();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v25 = v7->_liveAssetBundle;
      v26 = v7->_client;
      v27 = languageCodeForLocale(v7->_locale);
      *buf = 134218498;
      v34 = v25;
      v35 = 2112;
      v36 = v26;
      v37 = 2112;
      v38 = v27;
      _os_log_debug_impl(&dword_1AE58E000, v9, OS_LOG_TYPE_DEBUG, "Assets update for resource (%p, %@, %@)", buf, 0x20u);
    }

    v7->_hasUpdates = 1;
    v10 = +[SRDefaultsManager sharedDefaultsManager];
    v11 = [v10 assetBundleForLocale:v7->_locale client:v7->_client force:0];
    v12 = v7->_liveAssetBundle;
    v7->_liveAssetBundle = v11;
  }

  if (v7->_hasUpdates)
  {
    v13 = [(SRAssetBundle *)v7->_liveAssetBundle contentTypes];
    v14 = [(SRResources *)v7 parameterUpdates];

    if (v14)
    {
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v15 = v13;
      v16 = [v15 countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (v16)
      {
        v17 = *v29;
        do
        {
          v18 = 0;
          do
          {
            if (*v29 != v17)
            {
              objc_enumerationMutation(v15);
            }

            v19 = *(*(&v28 + 1) + 8 * v18);
            v20 = [(SRResources *)v7 parameterUpdates];
            v20[2](v20, v19);

            ++v18;
          }

          while (v16 != v18);
          v16 = [v15 countByEnumeratingWithState:&v28 objects:v32 count:16];
        }

        while (v16);
      }
    }
  }

  objc_sync_exit(v7);

  v21 = *MEMORY[0x1E69E9840];
}

- (id)assetPathsForContentType:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(SRAssetBundle *)v5->_liveAssetBundle assetsWithContentType:v4];
  objc_sync_exit(v5);

  return v6;
}

- (id)fetchParameter:(id)a3 checkForPositive:(BOOL)a4
{
  v51 = a4;
  v65 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = trialFlagsForProcess();
  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v8 = +[SRDefaultsManager sharedDefaultsManager];
  v9 = [(SRResources *)self client];
  v10 = [v8 parametersOfNamespaceWithName:v5 client:v9];
  v57[0] = MEMORY[0x1E69E9820];
  v57[1] = 3221225472;
  v57[2] = __47__SRResources_fetchParameter_checkForPositive___block_invoke;
  v57[3] = &unk_1E7A2AFC8;
  v59 = v6;
  v11 = v7;
  v58 = v11;
  [v10 enumerateKeysAndObjectsUsingBlock:v57];

  if (![v11 count])
  {
    v13 = SRLogCategoryTrial();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [SRResources fetchParameter:checkForPositive:];
    }

    v16 = 0;
    goto LABEL_61;
  }

  v12 = [v11 allValues];
  v13 = [v12 objectAtIndex:0];

  if (!v13)
  {
    v17 = SRLogCategoryTrial();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      [SRResources fetchParameter:checkForPositive:];
    }

    v16 = 0;
    goto LABEL_60;
  }

  v14 = [v13 flag];
  v15 = v14;
  v48 = v14;
  if ((v14 & 2) != 0)
  {
    if ((v14 & 0x10) != 0)
    {
      os_unfair_lock_lock(&sUserDefaultsParameterListLock);
      v18 = [sUserDefaultsParameterList objectForKeyedSubscript:v5];

      if (v18)
      {
        v19 = [sUserDefaultsParameterList objectForKeyedSubscript:v5];
        v16 = [v19 copy];

        v20 = SRLogCategoryTrial();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          [SRResources fetchParameter:checkForPositive:];
        }

        os_unfair_lock_unlock(&sUserDefaultsParameterListLock);
        if (v16 && ([v16 isNil] & 1) == 0 && (!objc_msgSend(v16, "isLong") || !v51 || (objc_msgSend(v16, "isPositiveLong") & 1) != 0))
        {
          goto LABEL_61;
        }

LABEL_23:
        if ((v15 & 4) == 0)
        {
          goto LABEL_33;
        }

        v21 = [(SRResources *)self client];
        v22 = [SSTrialManager currentTrialManagerForClient:v21];

        if (v22)
        {
          v23 = [v22 namespaceId];
          os_unfair_lock_lock(&sTrialParameterListLock);
          v24 = [sTrialParameterList objectForKeyedSubscript:v23];
          v25 = [v24 objectForKeyedSubscript:v5];

          if ([v25 hasValueFromTrial])
          {
            v26 = [v25 parameter];
            v27 = [v26 copy];

            v28 = SRLogCategoryTrial();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
            {
              [SRResources fetchParameter:checkForPositive:];
            }

            v16 = v27;
          }

          os_unfair_lock_unlock(&sTrialParameterListLock);
          if (v16 && ([v16 isNil] & 1) == 0 && (!objc_msgSend(v16, "isLong") || !v51 || (objc_msgSend(v16, "isPositiveLong") & 1) != 0))
          {
            v17 = v16;

            v16 = v17;
LABEL_60:

            goto LABEL_61;
          }
        }

        goto LABEL_33;
      }

      os_unfair_lock_unlock(&sUserDefaultsParameterListLock);
    }

    v16 = 0;
    goto LABEL_23;
  }

  v16 = 0;
LABEL_33:
  v49 = v13;
  v50 = v11;
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v29 = v11;
  v30 = [v29 countByEnumeratingWithState:&v53 objects:v64 count:16];
  if (v30)
  {
    v31 = v30;
    v52 = *v54;
    while (2)
    {
      for (i = 0; i != v31; ++i)
      {
        if (*v54 != v52)
        {
          objc_enumerationMutation(v29);
        }

        v33 = *(*(&v53 + 1) + 8 * i);
        v34 = [v29 objectForKeyedSubscript:v33];

        os_unfair_lock_lock(&sTrialParameterListLock);
        v35 = [sTrialParameterList objectForKeyedSubscript:v33];
        v36 = v5;
        v37 = [v35 objectForKeyedSubscript:v5];

        if ([v37 hasValueFromTrial])
        {
          v38 = [v37 parameter];
          v39 = [v38 copy];

          v40 = SRLogCategoryTrial();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412546;
            v61 = v36;
            v62 = 2112;
            v63 = v33;
            _os_log_debug_impl(&dword_1AE58E000, v40, OS_LOG_TYPE_DEBUG, "Parameter %@ has value from Trial namespace %@", buf, 0x16u);
          }

          v34 = v39;
        }

        os_unfair_lock_unlock(&sTrialParameterListLock);
        if (v34 && ([v34 isNil] & 1) == 0 && (!objc_msgSend(v34, "isLong") || !v51 || (objc_msgSend(v34, "isPositiveLong") & 1) != 0))
        {
          v17 = v34;

          v16 = v17;
          v5 = v36;
          v13 = v49;
          v11 = v50;
          goto LABEL_60;
        }

        v41 = [v29 objectForKeyedSubscript:v33];
        v16 = [v41 copy];

        v5 = v36;
      }

      v31 = [v29 countByEnumeratingWithState:&v53 objects:v64 count:16];
      if (v31)
      {
        continue;
      }

      break;
    }
  }

  if ((~v48 & 0xA) != 0)
  {
    v13 = v49;
    v11 = v50;
  }

  else
  {
    os_unfair_lock_lock(&sUserDefaultsParameterListLock);
    v42 = [sUserDefaultsParameterList objectForKeyedSubscript:v5];

    v11 = v50;
    if (v42)
    {
      v43 = [sUserDefaultsParameterList objectForKeyedSubscript:v5];
      v44 = [v43 copy];

      v45 = SRLogCategoryTrial();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
      {
        [SRResources fetchParameter:checkForPositive:];
      }

      v16 = v44;
    }

    v13 = v49;
    os_unfair_lock_unlock(&sUserDefaultsParameterListLock);
    if (v16 && ([v16 isNil] & 1) == 0 && objc_msgSend(v16, "isLong") && v51)
    {
      [v16 isPositiveLong];
    }
  }

LABEL_61:

  v46 = *MEMORY[0x1E69E9840];

  return v16;
}

void __47__SRResources_fetchParameter_checkForPositive___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if ([v8 isEqualToString:@"337"])
  {
    if ((*(a1 + 40) & 4) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v6 = [v8 isEqualToString:@"336"];
  v7 = *(a1 + 40);
  if (v6)
  {
    if ((v7 & 2) == 0)
    {
      goto LABEL_4;
    }

LABEL_3:
    [*(a1 + 32) setObject:v5 forKeyedSubscript:v8];
    goto LABEL_4;
  }

  if (v7)
  {
    goto LABEL_3;
  }

LABEL_4:
}

- (id)fetchBooleanParameter:(id)a3
{
  v3 = [(SRResources *)self fetchParameter:a3 checkForPositive:0];
  v4 = v3;
  if (v3 && [v3 isBool])
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)fetchLongParameter:(id)a3
{
  v3 = [(SRResources *)self fetchParameter:a3 checkForPositive:1];
  v4 = v3;
  if (v3 && [v3 isLong])
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)fetchDoubleParameter:(id)a3
{
  v3 = [(SRResources *)self fetchParameter:a3 checkForPositive:0];
  v4 = v3;
  if (v3 && [v3 isDouble])
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)fetchStringParameter:(id)a3
{
  v3 = [(SRResources *)self fetchParameter:a3 checkForPositive:0];
  v4 = v3;
  if (v3 && [v3 isString])
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)fetchFilePathParameter:(id)a3
{
  v3 = [(SRResources *)self fetchParameter:a3 checkForPositive:0];
  v4 = v3;
  if (v3 && [v3 isFilePath])
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)BOOLeanForKey:(id)a3 didFailWithError:(id *)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (SRIsAppleInternalInstall() && sUsingOverrides == 1)
  {
    v7 = [(NSDictionary *)self->_overrides objectForKeyedSubscript:v6];
    v8 = v7;
    if (v7)
    {
      if ([v7 isBool])
      {
        v9 = [v8 getBooleanValue];
        if (v9)
        {
          v10 = v9;
          v11 = SRLogCategoryTrial();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
          {
            [SRResources BOOLeanForKey:didFailWithError:];
          }

          *a4 = 0;
          v12 = [v10 BOOLValue];

          goto LABEL_17;
        }
      }
    }
  }

  v13 = [(SRResources *)self fetchBooleanParameter:v6];
  v8 = v13;
  if (v13 && [v13 isBool] && (objc_msgSend(v8, "getBooleanValue"), (v14 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v15 = v14;
    *a4 = 0;
    v12 = [v14 BOOLValue];
  }

  else
  {
    *a4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"SpotlightResourcesErrorDomain" code:-1 userInfo:0];
    v16 = SRLogCategoryTrial();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138412290;
      v20 = v6;
      _os_log_impl(&dword_1AE58E000, v16, OS_LOG_TYPE_DEFAULT, "SpotlightResources could not find BOOLean parameter %@", &v19, 0xCu);
    }

    v12 = 0;
  }

LABEL_17:

  v17 = *MEMORY[0x1E69E9840];
  return v12;
}

- (int64_t)longForKey:(id)a3 didFailWithError:(id *)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (SRIsAppleInternalInstall() && sUsingOverrides == 1)
  {
    v7 = [(NSDictionary *)self->_overrides objectForKeyedSubscript:v6];
    v8 = v7;
    if (v7)
    {
      if ([v7 isLong])
      {
        v9 = [v8 getLongValue];
        if (v9)
        {
          v10 = v9;
          v11 = SRLogCategoryTrial();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
          {
            [SRResources BOOLeanForKey:didFailWithError:];
          }

          *a4 = 0;
          v12 = [v10 longValue];

          goto LABEL_17;
        }
      }
    }
  }

  v13 = [(SRResources *)self fetchLongParameter:v6];
  v8 = v13;
  if (v13 && [v13 isLong] && (objc_msgSend(v8, "getLongValue"), (v14 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v15 = v14;
    *a4 = 0;
    v12 = [v14 longValue];
  }

  else
  {
    *a4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"SpotlightResourcesErrorDomain" code:-1 userInfo:0];
    v16 = SRLogCategoryTrial();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138412290;
      v20 = v6;
      _os_log_impl(&dword_1AE58E000, v16, OS_LOG_TYPE_DEFAULT, "SpotlightResources could not find long parameter %@", &v19, 0xCu);
    }

    v12 = 0;
  }

LABEL_17:

  v17 = *MEMORY[0x1E69E9840];
  return v12;
}

- (double)doubleForKey:(id)a3 didFailWithError:(id *)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (SRIsAppleInternalInstall() && sUsingOverrides == 1)
  {
    v7 = [(NSDictionary *)self->_overrides objectForKeyedSubscript:v6];
    v8 = v7;
    if (v7)
    {
      if ([v7 isDouble])
      {
        v9 = [v8 getDoubleValue];
        if (v9)
        {
          v10 = v9;
          v11 = SRLogCategoryTrial();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
          {
            [SRResources BOOLeanForKey:didFailWithError:];
          }

          *a4 = 0;
          [v10 doubleValue];
          v13 = v12;

          goto LABEL_17;
        }
      }
    }
  }

  v14 = [(SRResources *)self fetchDoubleParameter:v6];
  v8 = v14;
  if (v14 && [v14 isDouble] && (objc_msgSend(v8, "getDoubleValue"), (v15 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v16 = v15;
    *a4 = 0;
    [v15 doubleValue];
    v13 = v17;
  }

  else
  {
    *a4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"SpotlightResourcesErrorDomain" code:-1 userInfo:0];
    v18 = SRLogCategoryTrial();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 138412290;
      v22 = v6;
      _os_log_impl(&dword_1AE58E000, v18, OS_LOG_TYPE_DEFAULT, "SpotlightResources could not find double parameter %@", &v21, 0xCu);
    }

    v13 = 2.22507386e-308;
  }

LABEL_17:

  v19 = *MEMORY[0x1E69E9840];
  return v13;
}

- (double)doubleForKey:(id)a3
{
  v4 = 0;
  [(SRResources *)self doubleForKey:a3 didFailWithError:&v4];
  return result;
}

- (id)stringForKey:(id)a3 didFailWithError:(id *)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (SRIsAppleInternalInstall() && sUsingOverrides == 1)
  {
    v7 = [(NSDictionary *)self->_overrides objectForKeyedSubscript:v6];
    v8 = v7;
    if (v7)
    {
      if ([v7 isString])
      {
        v9 = [v8 getStringValue];
        if (v9)
        {
          v10 = v9;
          v11 = SRLogCategoryTrial();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
          {
            [SRResources BOOLeanForKey:didFailWithError:];
          }

          goto LABEL_14;
        }
      }
    }
  }

  v12 = [(SRResources *)self fetchStringParameter:v6];
  v8 = v12;
  if (v12)
  {
    if ([v12 isString])
    {
      v13 = [v8 getStringValue];
      if (v13)
      {
        v10 = v13;
LABEL_14:
        *a4 = 0;
        goto LABEL_18;
      }
    }
  }

  *a4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"SpotlightResourcesErrorDomain" code:-1 userInfo:0];
  v14 = SRLogCategoryTrial();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412290;
    v18 = v6;
    _os_log_impl(&dword_1AE58E000, v14, OS_LOG_TYPE_DEFAULT, "SpotlightResources could not find string parameter %@", &v17, 0xCu);
  }

  v10 = 0;
LABEL_18:

  v15 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)stringForKey:(id)a3
{
  v5 = 0;
  v3 = [(SRResources *)self stringForKey:a3 didFailWithError:&v5];

  return v3;
}

- (id)filePathForKey:(id)a3 didFailWithError:(id *)a4
{
  v6 = a3;
  if (SRIsAppleInternalInstall() && sUsingOverrides == 1)
  {
    v7 = [(NSDictionary *)self->_overrides objectForKeyedSubscript:v6];
    v8 = v7;
    if (v7)
    {
      if ([v7 isFilePath])
      {
        v9 = [v8 getFilePathValue];
        if (v9)
        {
          v10 = v9;
          v11 = SRLogCategoryTrial();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
          {
            [SRResources BOOLeanForKey:didFailWithError:];
          }

          goto LABEL_14;
        }
      }
    }
  }

  v12 = [(SRResources *)self fetchFilePathParameter:v6];
  v8 = v12;
  if (v12)
  {
    if ([v12 isFilePath])
    {
      v13 = [v8 getFilePathValue];
      if (v13)
      {
        v10 = v13;
LABEL_14:
        *a4 = 0;
        goto LABEL_21;
      }
    }
  }

  v14 = [(SRResources *)self assetPathsForContentType:v6];
  if ([v14 count])
  {
    *a4 = 0;
    v10 = [v14 firstObject];
  }

  else
  {
    *a4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"SpotlightResourcesErrorDomain" code:-1 userInfo:0];
    v15 = SRLogCategoryTrial();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [SRResources filePathForKey:didFailWithError:];
    }

    v10 = 0;
  }

LABEL_21:

  return v10;
}

- (id)filePathForKey:(id)a3
{
  v5 = 0;
  v3 = [(SRResources *)self filePathForKey:a3 didFailWithError:&v5];

  return v3;
}

- (id)filePathArrayForKey:(id)a3 didFailWithError:(id *)a4
{
  v23[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (SRIsAppleInternalInstall() && sUsingOverrides == 1)
  {
    v7 = [(NSDictionary *)self->_overrides objectForKeyedSubscript:v6];
    v8 = v7;
    if (v7)
    {
      if ([v7 isFilePath])
      {
        v9 = [v8 getFilePathValue];
        if (v9)
        {
          v10 = v9;
          v11 = SRLogCategoryTrial();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
          {
            [SRResources BOOLeanForKey:didFailWithError:];
          }

          *a4 = 0;
          v23[0] = v10;
          v12 = MEMORY[0x1E695DEC8];
          v13 = v23;
          goto LABEL_19;
        }
      }
    }
  }

  v14 = [(SRResources *)self fetchFilePathParameter:v6];
  v8 = v14;
  if (v14 && [v14 isFilePath] && (objc_msgSend(v8, "isNil") & 1) == 0)
  {
    *a4 = 0;
    v10 = [v8 getFilePathValue];
    v22 = v10;
    v12 = MEMORY[0x1E695DEC8];
    v13 = &v22;
LABEL_19:
    v15 = [v12 arrayWithObjects:v13 count:1];
    goto LABEL_20;
  }

  v10 = [(SRResources *)self assetPathsForContentType:v6];
  if ([v10 count])
  {
    *a4 = 0;
    v15 = v10;
    v10 = v15;
LABEL_20:
    v17 = v15;
    goto LABEL_21;
  }

  *a4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"SpotlightResourcesErrorDomain" code:-1 userInfo:0];
  v16 = SRLogCategoryGeneral();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 138412290;
    v21 = v6;
    _os_log_impl(&dword_1AE58E000, v16, OS_LOG_TYPE_DEFAULT, "SpotlightResources could not find file paths parameter %@", &v20, 0xCu);
  }

  v17 = 0;
LABEL_21:

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

- (id)filePathArrayForKey:(id)a3
{
  v5 = 0;
  v3 = [(SRResources *)self filePathArrayForKey:a3 didFailWithError:&v5];

  return v3;
}

- (id)objectForKey:(id)a3 withType:(int64_t *)a4 didFailWithError:(id *)a5
{
  v8 = a3;
  if (!SRIsAppleInternalInstall() || sUsingOverrides != 1)
  {
LABEL_9:
    v14 = [(SRResources *)self fetchBooleanParameter:v8];
    v10 = v14;
    *a5 = 0;
    if (v14 && [v14 isBool] && (objc_msgSend(v10, "isNil") & 1) == 0)
    {
      *a4 = 0;
LABEL_32:
      v12 = [v10 value];
      goto LABEL_33;
    }

    v15 = [(SRResources *)self fetchLongParameter:v8];

    if (v15 && [v15 isLong] && (objc_msgSend(v15, "isNil") & 1) == 0)
    {
      v16 = 1;
    }

    else
    {
      v10 = [(SRResources *)self fetchDoubleParameter:v8];

      if (v10 && [v10 isDouble] && (objc_msgSend(v10, "isNil") & 1) == 0)
      {
        v17 = 2;
LABEL_31:
        *a4 = v17;
        goto LABEL_32;
      }

      v15 = [(SRResources *)self fetchStringParameter:v8];

      if (!v15 || ![v15 isString] || (objc_msgSend(v15, "isNil") & 1) != 0)
      {
        v10 = [(SRResources *)self fetchFilePathParameter:v8];

        if (!v10 || ![v10 isFilePath] || (objc_msgSend(v10, "isNil") & 1) != 0)
        {
          [MEMORY[0x1E696ABC0] errorWithDomain:@"SpotlightResourcesErrorDomain" code:-1 userInfo:0];
          *a5 = v12 = 0;
          *a4 = -1;
          goto LABEL_33;
        }

        v17 = 4;
        goto LABEL_31;
      }

      v16 = 3;
    }

    *a4 = v16;
    v12 = [v15 value];
    v10 = v15;
    goto LABEL_33;
  }

  v9 = [(NSDictionary *)self->_overrides objectForKeyedSubscript:v8];
  v10 = v9;
  if (!v9 || ([v9 value], (v11 = objc_claimAutoreleasedReturnValue()) == 0))
  {

    goto LABEL_9;
  }

  v12 = v11;
  v13 = SRLogCategoryTrial();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [SRResources BOOLeanForKey:didFailWithError:];
  }

  *a5 = 0;
LABEL_33:

  return v12;
}

- (id)objectForKey:(id)a3 didFailWithError:(id *)a4
{
  v6 = -1;
  v4 = [(SRResources *)self objectForKey:a3 withType:&v6 didFailWithError:a4];

  return v4;
}

- (id)objectForKey:(id)a3
{
  v5 = 0;
  v3 = [(SRResources *)self objectForKey:a3 didFailWithError:&v5];

  return v3;
}

- (id)getTrialNamespaceId
{
  v2 = [(SRResources *)self currentExperimentTrialManager];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 namespaceId];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)getTrialRolloutId
{
  v2 = [(SRResources *)self currentExperimentTrialManager];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 rolloutId];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)getTrialExperimentDeploymentId
{
  v2 = [(SRResources *)self currentExperimentTrialManager];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 experimentDeploymentId];
  }

  else
  {
    v4 = -1;
  }

  return v4;
}

- (int)getTrialRolloutDeploymentId
{
  v2 = [(SRResources *)self currentExperimentTrialManager];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 rolloutDeploymentId];
  }

  else
  {
    v4 = -1;
  }

  return v4;
}

- (void)refreshTrial
{
  v3 = +[SRResourcesManager sharedResourcesManager];
  [v3 refreshTrialForClient:self->_client];
}

- (id)updateWithNewOptions:(id)a3
{
  if (a3)
  {
    v4 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:?];
    options = self->_options;
    self->_options = v4;
  }

  return self;
}

- (void)dealloc
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = SRLogCategoryGeneral();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    client = self->_client;
    v6 = [(NSLocale *)self->_locale localeIdentifier];
    *buf = 138412802;
    v21 = client;
    v22 = 2112;
    v23 = v6;
    v24 = 2048;
    v25 = self;
    _os_log_impl(&dword_1AE58E000, v4, OS_LOG_TYPE_DEFAULT, "SRResources dealloc (%@, %@): %p", buf, 0x20u);
  }

  v7 = +[SRDefaultsManager sharedDefaultsManager];
  [v7 unregisterDelegate:self];

  options = self->_options;
  if (options)
  {
    v9 = [(NSMutableDictionary *)options objectForKeyedSubscript:@"SRResourcesOwner"];
  }

  else
  {
    v9 = 0;
  }

  v10 = SRLogCategoryLifeCycle();
  v11 = v10;
  v12 = dealloc_index;
  v13 = ++dealloc_index;
  if (v12 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    v14 = [(NSString *)self->_client UTF8String];
    locale = self->_locale;
    if (locale)
    {
      v2 = [(NSLocale *)self->_locale localeIdentifier];
      v16 = [v2 UTF8String];
      if (v9)
      {
LABEL_10:
        v17 = [v9 UTF8String];
        goto LABEL_13;
      }
    }

    else
    {
      v16 = "none";
      if (v9)
      {
        goto LABEL_10;
      }
    }

    v17 = "unknown";
LABEL_13:
    *buf = 136315650;
    v21 = v14;
    v22 = 2080;
    v23 = v16;
    v24 = 2080;
    v25 = v17;
    _os_signpost_emit_with_name_impl(&dword_1AE58E000, v11, OS_SIGNPOST_EVENT, v13, "SRResourcesDestroy", "client=%s, locale=%s, caller=%s", buf, 0x20u);
    if (locale)
    {
    }
  }

  v19.receiver = self;
  v19.super_class = SRResources;
  [(SRResources *)&v19 dealloc];
  v18 = *MEMORY[0x1E69E9840];
}

- (void)logForTrigger:(id)a3 queryID:(int64_t)a4
{
  v36 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (+[SRResourcesManager parsecEnabled]&& ([(NSString *)self->_client isEqualToString:@"Spotlight"]|| [(NSString *)self->_client isEqualToString:@"Mail"]|| [(NSString *)self->_client isEqualToString:@"Parser"]))
  {
    v7 = SRLogCategoryTrial();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v6 UUIDString];
      client = self->_client;
      *buf = 138412802;
      v31 = v8;
      v32 = 2048;
      v33 = a4;
      v34 = 2112;
      v35 = client;
      _os_log_impl(&dword_1AE58E000, v7, OS_LOG_TYPE_DEFAULT, "logForTrigger:%@ queryID:%lld client:%@", buf, 0x20u);
    }

    v10 = [(SRResources *)self stringForKey:@"codepathIDs"];
    v11 = SRLogCategoryTrial();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [SRResources logForTrigger:queryID:];
    }

    if (v6)
    {
      if (v10)
      {
        v12 = [v10 uppercaseString];
        v13 = [v6 UUIDString];
        v14 = [v12 containsString:v13];

        if (v14)
        {
          v15 = SRLogCategoryTrial();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            v16 = [v6 UUIDString];
            *buf = 138412546;
            v31 = v16;
            v32 = 2048;
            v33 = a4;
            _os_log_impl(&dword_1AE58E000, v15, OS_LOG_TYPE_DEFAULT, "Emitting trigger for codepathID: %@, queryID:%lld", buf, 0x16u);
          }

          v17 = objc_alloc_init(MEMORY[0x1E69CA098]);
          [v17 setQueryId:a4];
          [v17 setCodepathId:v6];
          options = self->_options;
          if (options)
          {
            [(NSMutableDictionary *)options objectForKeyedSubscript:@"SRResourcesOwner"];
          }

          v19 = SRLogCategoryTrial();
          v20 = v19;
          v21 = logForTrigger_queryID__index;
          v22 = ++logForTrigger_queryID__index;
          if (v21 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
          {
            v23 = [v6 UUIDString];
            v24 = [v23 UTF8String];
            *buf = 136315394;
            v31 = v24;
            v32 = 2048;
            v33 = a4;
            _os_signpost_emit_with_name_impl(&dword_1AE58E000, v20, OS_SIGNPOST_EVENT, v22, "SRResourcesLogForTrigger", "uuid=%s, queryID=%lld", buf, 0x16u);
          }

          v25 = dispatch_get_global_queue(25, 0);
          v28[0] = MEMORY[0x1E69E9820];
          v28[1] = 3221225472;
          v28[2] = __37__SRResources_logForTrigger_queryID___block_invoke;
          v28[3] = &unk_1E7A2AFF0;
          v28[4] = self;
          v29 = v17;
          v26 = v17;
          dispatch_async(v25, v28);
        }
      }
    }
  }

  v27 = *MEMORY[0x1E69E9840];
}

void __37__SRResources_logForTrigger_queryID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) client];
  v3 = [SRPARSession spotlightResourcesPARSessionForClient:v2 flags:trialFlagsForProcess()];

  if (v3)
  {
    v4 = [*(a1 + 32) experimentNamespaceId];
    v5 = [v3 configuration];
    [v5 setExperimentNamespaceId:v4];

    v6 = [*(a1 + 32) experimentId];
    v7 = [v3 configuration];
    [v7 setExperimentId:v6];

    v8 = [*(a1 + 32) experimentTreatmentId];
    v9 = [v3 configuration];
    [v9 setExperimentTreatmentId:v8];

    v10 = [*(a1 + 32) experimentDeploymentId];
    v11 = [v3 configuration];
    [v11 setExperimentDeploymentId:v10];

    v12 = [*(a1 + 32) experimentVersion];
    v13 = [v3 configuration];
    [v13 setExperimentVersion:v12];

    [v3 reportEvent:*(a1 + 40)];
  }

  else
  {
    v14 = SRLogCategoryTrial();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      __37__SRResources_logForTrigger_queryID___block_invoke_cold_1(v14);
    }
  }
}

- (NSString)description
{
  client = self->_client;
  if (!client)
  {
    client = @"none";
  }

  v4 = [MEMORY[0x1E696AD60] stringWithFormat:@"SRResources: { client = %@", client];
  locale = self->_locale;
  if (locale)
  {
    v6 = [(NSLocale *)locale localeIdentifier];
    [v4 appendFormat:@", locale = %@", v6];
  }

  else
  {
    [v4 appendFormat:@", locale = %@", @"none"];
  }

  options = self->_options;
  if (options)
  {
    v8 = [(NSMutableDictionary *)options objectForKeyedSubscript:@"SRResourcesOwner"];

    if (v8)
    {
      v9 = [(NSMutableDictionary *)self->_options objectForKeyedSubscript:@"SRResourcesOwner"];
      [v4 appendFormat:@", owner = %@", v9];
    }
  }

  [v4 appendString:@" }"];
  v10 = [MEMORY[0x1E696AEC0] stringWithString:v4];

  return v10;
}

- (void)fetchParameter:checkForPositive:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_0(&dword_1AE58E000, v0, v1, "Parameter %@ has value from user defaults", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)fetchParameter:checkForPositive:.cold.2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_0(&dword_1AE58E000, v0, v1, "Parameter %@ has value from Trial namespace %@");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)fetchParameter:checkForPositive:.cold.4()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_0(&dword_1AE58E000, v0, v1, "Default parameter for %@ is nil", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)fetchParameter:checkForPositive:.cold.5()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_0(&dword_1AE58E000, v0, v1, "Parameter %@ not found in defaults manager", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)BOOLeanForKey:didFailWithError:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_0(&dword_1AE58E000, v0, v1, "Overriding value of parameter %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)filePathForKey:didFailWithError:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_1AE58E000, v0, v1, "SpotlightResources could not find file path parameter %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)logForTrigger:queryID:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_0(&dword_1AE58E000, v0, v1, "logForTrigger got codepathIDs %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end