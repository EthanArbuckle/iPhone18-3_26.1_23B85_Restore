@interface SRResources
- (BOOL)BOOLeanForKey:(id)key didFailWithError:(id *)error;
- (BOOL)hasUpdates;
- (NSLocale)locale;
- (NSString)description;
- (SRResources)initWithClient:(id)client locale:(id)locale options:(id)options;
- (double)doubleForKey:(id)key;
- (double)doubleForKey:(id)key didFailWithError:(id *)error;
- (id)assetPathsForContentType:(id)type;
- (id)fetchBooleanParameter:(id)parameter;
- (id)fetchDoubleParameter:(id)parameter;
- (id)fetchFilePathParameter:(id)parameter;
- (id)fetchLongParameter:(id)parameter;
- (id)fetchParameter:(id)parameter checkForPositive:(BOOL)positive;
- (id)fetchStringParameter:(id)parameter;
- (id)filePathArrayForKey:(id)key;
- (id)filePathArrayForKey:(id)key didFailWithError:(id *)error;
- (id)filePathForKey:(id)key;
- (id)filePathForKey:(id)key didFailWithError:(id *)error;
- (id)getTrialExperimentId;
- (id)getTrialNamespaceId;
- (id)getTrialRolloutId;
- (id)getTrialTreatmentId;
- (id)objectForKey:(id)key;
- (id)objectForKey:(id)key didFailWithError:(id *)error;
- (id)objectForKey:(id)key withType:(int64_t *)type didFailWithError:(id *)error;
- (id)stringForKey:(id)key;
- (id)stringForKey:(id)key didFailWithError:(id *)error;
- (id)updateWithNewOptions:(id)options;
- (int)getTrialExperimentDeploymentId;
- (int)getTrialRolloutDeploymentId;
- (int64_t)longForKey:(id)key didFailWithError:(id *)error;
- (void)dealloc;
- (void)didUpdateDefaultsWithBundleVersions:(id)versions trial:(BOOL)trial;
- (void)logForTrigger:(id)trigger queryID:(int64_t)d;
- (void)refreshTrial;
- (void)setLocale:(id)locale;
- (void)updateLocale;
@end

@implementation SRResources

- (id)getTrialTreatmentId
{
  currentExperimentTrialManager = [(SRResources *)self currentExperimentTrialManager];
  v3 = currentExperimentTrialManager;
  if (currentExperimentTrialManager)
  {
    treatmentId = [currentExperimentTrialManager treatmentId];
  }

  else
  {
    treatmentId = 0;
  }

  return treatmentId;
}

- (id)getTrialExperimentId
{
  currentExperimentTrialManager = [(SRResources *)self currentExperimentTrialManager];
  v3 = currentExperimentTrialManager;
  if (currentExperimentTrialManager)
  {
    experimentId = [currentExperimentTrialManager experimentId];
  }

  else
  {
    experimentId = 0;
  }

  return experimentId;
}

- (SRResources)initWithClient:(id)client locale:(id)locale options:(id)options
{
  v48 = *MEMORY[0x1E69E9840];
  clientCopy = client;
  localeCopy = locale;
  optionsCopy = options;
  v12 = SRLogCategoryGeneral();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    localeIdentifier = [localeCopy localeIdentifier];
    *buf = 138412802;
    v43 = clientCopy;
    v44 = 2112;
    v45 = localeIdentifier;
    v46 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_1AE58E000, v12, OS_LOG_TYPE_DEFAULT, "SRResources init (%@, %@): %p", buf, 0x20u);
  }

  v41.receiver = self;
  v41.super_class = SRResources;
  v14 = [(SRResources *)&v41 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_client, client);
    if (optionsCopy)
    {
      v16 = [optionsCopy mutableCopy];
    }

    else
    {
      v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    options = v15->_options;
    v15->_options = v16;

    v18 = [(NSMutableDictionary *)v15->_options objectForKey:@"forceLoad"];
    v15->_forceLoad = [v18 BOOLValue];

    data = [MEMORY[0x1E695DF88] data];
    feedbackData = v15->_feedbackData;
    v15->_feedbackData = data;

    experimentNamespaceId = v15->_experimentNamespaceId;
    v15->_experimentNamespaceId = 0;

    experimentId = v15->_experimentId;
    v15->_experimentId = 0;

    experimentTreatmentId = v15->_experimentTreatmentId;
    v15->_experimentTreatmentId = 0;

    v15->_hasUpdates = 0;
    localeIdentifier2 = [localeCopy localeIdentifier];
    v25 = normalizedLocaleForIdentifier(localeIdentifier2);
    locale = v15->_locale;
    v15->_locale = v25;

    overrides = v15->_overrides;
    v15->_overrides = 0;

    if (SRIsAppleInternalInstall() && sUsingOverrides == 1)
    {
      v28 = [sOverrideList objectForKeyedSubscript:clientCopy];
      v29 = v15->_overrides;
      v15->_overrides = v28;
    }

    v30 = +[SRDefaultsManager sharedDefaultsManager];
    [v30 registerDelegate:v15];

    v31 = +[SRDefaultsManager sharedDefaultsManager];
    v32 = [v31 assetBundleForLocale:v15->_locale client:v15->_client force:v15->_forceLoad];
    liveAssetBundle = v15->_liveAssetBundle;
    v15->_liveAssetBundle = v32;

    if (optionsCopy)
    {
      v34 = [optionsCopy objectForKeyedSubscript:@"autoUpdateLocale"];
      if (v34)
      {
        v35 = v34;
        v36 = [optionsCopy objectForKeyedSubscript:@"autoUpdateLocale"];
        bOOLValue = [v36 BOOLValue];

        if (bOOLValue)
        {
          defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
          [defaultCenter addObserver:v15 selector:sel_updateLocale name:*MEMORY[0x1E695D8F0] object:0];
        }
      }
    }
  }

  v39 = *MEMORY[0x1E69E9840];
  return v15;
}

- (NSLocale)locale
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(NSLocale *)selfCopy->_locale copy];
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)setLocale:(id)locale
{
  localeCopy = locale;
  obj = self;
  objc_sync_enter(obj);
  locale = obj->_locale;
  obj->_locale = localeCopy;

  objc_sync_exit(obj);
}

- (void)updateLocale
{
  v9 = *MEMORY[0x1E69E9840];
  currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  [(SRResources *)self setLocale:currentLocale];
  v4 = SRLogCategoryAssets();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    localeIdentifier = [currentLocale localeIdentifier];
    v7 = 138412290;
    v8 = localeIdentifier;
    _os_log_impl(&dword_1AE58E000, v4, OS_LOG_TYPE_DEFAULT, "updating locale to %@", &v7, 0xCu);
  }

  [(SRResources *)self didUpdateDefaultsWithBundleVersions:0 trial:0];
  v6 = *MEMORY[0x1E69E9840];
}

- (BOOL)hasUpdates
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  hasUpdates = selfCopy->_hasUpdates;
  selfCopy->_hasUpdates = 0;
  objc_sync_exit(selfCopy);

  return hasUpdates;
}

- (void)didUpdateDefaultsWithBundleVersions:(id)versions trial:(BOOL)trial
{
  trialCopy = trial;
  v39 = *MEMORY[0x1E69E9840];
  versionsCopy = versions;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (trialCopy)
  {
    v8 = SRLogCategoryTrial();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      liveAssetBundle = selfCopy->_liveAssetBundle;
      client = selfCopy->_client;
      v24 = languageCodeForLocale(selfCopy->_locale);
      *buf = 134218498;
      v34 = liveAssetBundle;
      v35 = 2112;
      v36 = client;
      v37 = 2112;
      v38 = v24;
      _os_log_debug_impl(&dword_1AE58E000, v8, OS_LOG_TYPE_DEBUG, "Trial update for resource (%p, %@, %@)", buf, 0x20u);
    }

    selfCopy->_hasUpdates = 1;
  }

  else if (!versionsCopy || [(SRAssetBundle *)selfCopy->_liveAssetBundle shouldUpdateForBundleVersions:versionsCopy])
  {
    v9 = SRLogCategoryAssets();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v25 = selfCopy->_liveAssetBundle;
      v26 = selfCopy->_client;
      v27 = languageCodeForLocale(selfCopy->_locale);
      *buf = 134218498;
      v34 = v25;
      v35 = 2112;
      v36 = v26;
      v37 = 2112;
      v38 = v27;
      _os_log_debug_impl(&dword_1AE58E000, v9, OS_LOG_TYPE_DEBUG, "Assets update for resource (%p, %@, %@)", buf, 0x20u);
    }

    selfCopy->_hasUpdates = 1;
    v10 = +[SRDefaultsManager sharedDefaultsManager];
    v11 = [v10 assetBundleForLocale:selfCopy->_locale client:selfCopy->_client force:0];
    v12 = selfCopy->_liveAssetBundle;
    selfCopy->_liveAssetBundle = v11;
  }

  if (selfCopy->_hasUpdates)
  {
    contentTypes = [(SRAssetBundle *)selfCopy->_liveAssetBundle contentTypes];
    parameterUpdates = [(SRResources *)selfCopy parameterUpdates];

    if (parameterUpdates)
    {
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v15 = contentTypes;
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
            parameterUpdates2 = [(SRResources *)selfCopy parameterUpdates];
            parameterUpdates2[2](parameterUpdates2, v19);

            ++v18;
          }

          while (v16 != v18);
          v16 = [v15 countByEnumeratingWithState:&v28 objects:v32 count:16];
        }

        while (v16);
      }
    }
  }

  objc_sync_exit(selfCopy);

  v21 = *MEMORY[0x1E69E9840];
}

- (id)assetPathsForContentType:(id)type
{
  typeCopy = type;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(SRAssetBundle *)selfCopy->_liveAssetBundle assetsWithContentType:typeCopy];
  objc_sync_exit(selfCopy);

  return v6;
}

- (id)fetchParameter:(id)parameter checkForPositive:(BOOL)positive
{
  positiveCopy = positive;
  v65 = *MEMORY[0x1E69E9840];
  parameterCopy = parameter;
  v6 = trialFlagsForProcess();
  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v8 = +[SRDefaultsManager sharedDefaultsManager];
  client = [(SRResources *)self client];
  v10 = [v8 parametersOfNamespaceWithName:parameterCopy client:client];
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

  allValues = [v11 allValues];
  v13 = [allValues objectAtIndex:0];

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

  flag = [v13 flag];
  v15 = flag;
  v48 = flag;
  if ((flag & 2) != 0)
  {
    if ((flag & 0x10) != 0)
    {
      os_unfair_lock_lock(&sUserDefaultsParameterListLock);
      v18 = [sUserDefaultsParameterList objectForKeyedSubscript:parameterCopy];

      if (v18)
      {
        v19 = [sUserDefaultsParameterList objectForKeyedSubscript:parameterCopy];
        v16 = [v19 copy];

        v20 = SRLogCategoryTrial();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          [SRResources fetchParameter:checkForPositive:];
        }

        os_unfair_lock_unlock(&sUserDefaultsParameterListLock);
        if (v16 && ([v16 isNil] & 1) == 0 && (!objc_msgSend(v16, "isLong") || !positiveCopy || (objc_msgSend(v16, "isPositiveLong") & 1) != 0))
        {
          goto LABEL_61;
        }

LABEL_23:
        if ((v15 & 4) == 0)
        {
          goto LABEL_33;
        }

        client2 = [(SRResources *)self client];
        v22 = [SSTrialManager currentTrialManagerForClient:client2];

        if (v22)
        {
          namespaceId = [v22 namespaceId];
          os_unfair_lock_lock(&sTrialParameterListLock);
          v24 = [sTrialParameterList objectForKeyedSubscript:namespaceId];
          v25 = [v24 objectForKeyedSubscript:parameterCopy];

          if ([v25 hasValueFromTrial])
          {
            parameter = [v25 parameter];
            v27 = [parameter copy];

            v28 = SRLogCategoryTrial();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
            {
              [SRResources fetchParameter:checkForPositive:];
            }

            v16 = v27;
          }

          os_unfair_lock_unlock(&sTrialParameterListLock);
          if (v16 && ([v16 isNil] & 1) == 0 && (!objc_msgSend(v16, "isLong") || !positiveCopy || (objc_msgSend(v16, "isPositiveLong") & 1) != 0))
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
        v36 = parameterCopy;
        v37 = [v35 objectForKeyedSubscript:parameterCopy];

        if ([v37 hasValueFromTrial])
        {
          parameter2 = [v37 parameter];
          v39 = [parameter2 copy];

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
        if (v34 && ([v34 isNil] & 1) == 0 && (!objc_msgSend(v34, "isLong") || !positiveCopy || (objc_msgSend(v34, "isPositiveLong") & 1) != 0))
        {
          v17 = v34;

          v16 = v17;
          parameterCopy = v36;
          v13 = v49;
          v11 = v50;
          goto LABEL_60;
        }

        v41 = [v29 objectForKeyedSubscript:v33];
        v16 = [v41 copy];

        parameterCopy = v36;
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
    v42 = [sUserDefaultsParameterList objectForKeyedSubscript:parameterCopy];

    v11 = v50;
    if (v42)
    {
      v43 = [sUserDefaultsParameterList objectForKeyedSubscript:parameterCopy];
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
    if (v16 && ([v16 isNil] & 1) == 0 && objc_msgSend(v16, "isLong") && positiveCopy)
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

- (id)fetchBooleanParameter:(id)parameter
{
  v3 = [(SRResources *)self fetchParameter:parameter checkForPositive:0];
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

- (id)fetchLongParameter:(id)parameter
{
  v3 = [(SRResources *)self fetchParameter:parameter checkForPositive:1];
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

- (id)fetchDoubleParameter:(id)parameter
{
  v3 = [(SRResources *)self fetchParameter:parameter checkForPositive:0];
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

- (id)fetchStringParameter:(id)parameter
{
  v3 = [(SRResources *)self fetchParameter:parameter checkForPositive:0];
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

- (id)fetchFilePathParameter:(id)parameter
{
  v3 = [(SRResources *)self fetchParameter:parameter checkForPositive:0];
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

- (BOOL)BOOLeanForKey:(id)key didFailWithError:(id *)error
{
  v21 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  if (SRIsAppleInternalInstall() && sUsingOverrides == 1)
  {
    v7 = [(NSDictionary *)self->_overrides objectForKeyedSubscript:keyCopy];
    v8 = v7;
    if (v7)
    {
      if ([v7 isBool])
      {
        getBooleanValue = [v8 getBooleanValue];
        if (getBooleanValue)
        {
          v10 = getBooleanValue;
          v11 = SRLogCategoryTrial();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
          {
            [SRResources BOOLeanForKey:didFailWithError:];
          }

          *error = 0;
          bOOLValue = [v10 BOOLValue];

          goto LABEL_17;
        }
      }
    }
  }

  v13 = [(SRResources *)self fetchBooleanParameter:keyCopy];
  v8 = v13;
  if (v13 && [v13 isBool] && (objc_msgSend(v8, "getBooleanValue"), (v14 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v15 = v14;
    *error = 0;
    bOOLValue = [v14 BOOLValue];
  }

  else
  {
    *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"SpotlightResourcesErrorDomain" code:-1 userInfo:0];
    v16 = SRLogCategoryTrial();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138412290;
      v20 = keyCopy;
      _os_log_impl(&dword_1AE58E000, v16, OS_LOG_TYPE_DEFAULT, "SpotlightResources could not find BOOLean parameter %@", &v19, 0xCu);
    }

    bOOLValue = 0;
  }

LABEL_17:

  v17 = *MEMORY[0x1E69E9840];
  return bOOLValue;
}

- (int64_t)longForKey:(id)key didFailWithError:(id *)error
{
  v21 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  if (SRIsAppleInternalInstall() && sUsingOverrides == 1)
  {
    v7 = [(NSDictionary *)self->_overrides objectForKeyedSubscript:keyCopy];
    v8 = v7;
    if (v7)
    {
      if ([v7 isLong])
      {
        getLongValue = [v8 getLongValue];
        if (getLongValue)
        {
          v10 = getLongValue;
          v11 = SRLogCategoryTrial();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
          {
            [SRResources BOOLeanForKey:didFailWithError:];
          }

          *error = 0;
          longValue = [v10 longValue];

          goto LABEL_17;
        }
      }
    }
  }

  v13 = [(SRResources *)self fetchLongParameter:keyCopy];
  v8 = v13;
  if (v13 && [v13 isLong] && (objc_msgSend(v8, "getLongValue"), (v14 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v15 = v14;
    *error = 0;
    longValue = [v14 longValue];
  }

  else
  {
    *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"SpotlightResourcesErrorDomain" code:-1 userInfo:0];
    v16 = SRLogCategoryTrial();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138412290;
      v20 = keyCopy;
      _os_log_impl(&dword_1AE58E000, v16, OS_LOG_TYPE_DEFAULT, "SpotlightResources could not find long parameter %@", &v19, 0xCu);
    }

    longValue = 0;
  }

LABEL_17:

  v17 = *MEMORY[0x1E69E9840];
  return longValue;
}

- (double)doubleForKey:(id)key didFailWithError:(id *)error
{
  v23 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  if (SRIsAppleInternalInstall() && sUsingOverrides == 1)
  {
    v7 = [(NSDictionary *)self->_overrides objectForKeyedSubscript:keyCopy];
    v8 = v7;
    if (v7)
    {
      if ([v7 isDouble])
      {
        getDoubleValue = [v8 getDoubleValue];
        if (getDoubleValue)
        {
          v10 = getDoubleValue;
          v11 = SRLogCategoryTrial();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
          {
            [SRResources BOOLeanForKey:didFailWithError:];
          }

          *error = 0;
          [v10 doubleValue];
          v13 = v12;

          goto LABEL_17;
        }
      }
    }
  }

  v14 = [(SRResources *)self fetchDoubleParameter:keyCopy];
  v8 = v14;
  if (v14 && [v14 isDouble] && (objc_msgSend(v8, "getDoubleValue"), (v15 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v16 = v15;
    *error = 0;
    [v15 doubleValue];
    v13 = v17;
  }

  else
  {
    *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"SpotlightResourcesErrorDomain" code:-1 userInfo:0];
    v18 = SRLogCategoryTrial();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 138412290;
      v22 = keyCopy;
      _os_log_impl(&dword_1AE58E000, v18, OS_LOG_TYPE_DEFAULT, "SpotlightResources could not find double parameter %@", &v21, 0xCu);
    }

    v13 = 2.22507386e-308;
  }

LABEL_17:

  v19 = *MEMORY[0x1E69E9840];
  return v13;
}

- (double)doubleForKey:(id)key
{
  v4 = 0;
  [(SRResources *)self doubleForKey:key didFailWithError:&v4];
  return result;
}

- (id)stringForKey:(id)key didFailWithError:(id *)error
{
  v19 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  if (SRIsAppleInternalInstall() && sUsingOverrides == 1)
  {
    v7 = [(NSDictionary *)self->_overrides objectForKeyedSubscript:keyCopy];
    v8 = v7;
    if (v7)
    {
      if ([v7 isString])
      {
        getStringValue = [v8 getStringValue];
        if (getStringValue)
        {
          v10 = getStringValue;
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

  v12 = [(SRResources *)self fetchStringParameter:keyCopy];
  v8 = v12;
  if (v12)
  {
    if ([v12 isString])
    {
      getStringValue2 = [v8 getStringValue];
      if (getStringValue2)
      {
        v10 = getStringValue2;
LABEL_14:
        *error = 0;
        goto LABEL_18;
      }
    }
  }

  *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"SpotlightResourcesErrorDomain" code:-1 userInfo:0];
  v14 = SRLogCategoryTrial();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412290;
    v18 = keyCopy;
    _os_log_impl(&dword_1AE58E000, v14, OS_LOG_TYPE_DEFAULT, "SpotlightResources could not find string parameter %@", &v17, 0xCu);
  }

  v10 = 0;
LABEL_18:

  v15 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)stringForKey:(id)key
{
  v5 = 0;
  v3 = [(SRResources *)self stringForKey:key didFailWithError:&v5];

  return v3;
}

- (id)filePathForKey:(id)key didFailWithError:(id *)error
{
  keyCopy = key;
  if (SRIsAppleInternalInstall() && sUsingOverrides == 1)
  {
    v7 = [(NSDictionary *)self->_overrides objectForKeyedSubscript:keyCopy];
    v8 = v7;
    if (v7)
    {
      if ([v7 isFilePath])
      {
        getFilePathValue = [v8 getFilePathValue];
        if (getFilePathValue)
        {
          firstObject = getFilePathValue;
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

  v12 = [(SRResources *)self fetchFilePathParameter:keyCopy];
  v8 = v12;
  if (v12)
  {
    if ([v12 isFilePath])
    {
      getFilePathValue2 = [v8 getFilePathValue];
      if (getFilePathValue2)
      {
        firstObject = getFilePathValue2;
LABEL_14:
        *error = 0;
        goto LABEL_21;
      }
    }
  }

  v14 = [(SRResources *)self assetPathsForContentType:keyCopy];
  if ([v14 count])
  {
    *error = 0;
    firstObject = [v14 firstObject];
  }

  else
  {
    *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"SpotlightResourcesErrorDomain" code:-1 userInfo:0];
    v15 = SRLogCategoryTrial();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [SRResources filePathForKey:didFailWithError:];
    }

    firstObject = 0;
  }

LABEL_21:

  return firstObject;
}

- (id)filePathForKey:(id)key
{
  v5 = 0;
  v3 = [(SRResources *)self filePathForKey:key didFailWithError:&v5];

  return v3;
}

- (id)filePathArrayForKey:(id)key didFailWithError:(id *)error
{
  v23[1] = *MEMORY[0x1E69E9840];
  keyCopy = key;
  if (SRIsAppleInternalInstall() && sUsingOverrides == 1)
  {
    v7 = [(NSDictionary *)self->_overrides objectForKeyedSubscript:keyCopy];
    v8 = v7;
    if (v7)
    {
      if ([v7 isFilePath])
      {
        getFilePathValue = [v8 getFilePathValue];
        if (getFilePathValue)
        {
          getFilePathValue2 = getFilePathValue;
          v11 = SRLogCategoryTrial();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
          {
            [SRResources BOOLeanForKey:didFailWithError:];
          }

          *error = 0;
          v23[0] = getFilePathValue2;
          v12 = MEMORY[0x1E695DEC8];
          v13 = v23;
          goto LABEL_19;
        }
      }
    }
  }

  v14 = [(SRResources *)self fetchFilePathParameter:keyCopy];
  v8 = v14;
  if (v14 && [v14 isFilePath] && (objc_msgSend(v8, "isNil") & 1) == 0)
  {
    *error = 0;
    getFilePathValue2 = [v8 getFilePathValue];
    v22 = getFilePathValue2;
    v12 = MEMORY[0x1E695DEC8];
    v13 = &v22;
LABEL_19:
    v15 = [v12 arrayWithObjects:v13 count:1];
    goto LABEL_20;
  }

  getFilePathValue2 = [(SRResources *)self assetPathsForContentType:keyCopy];
  if ([getFilePathValue2 count])
  {
    *error = 0;
    v15 = getFilePathValue2;
    getFilePathValue2 = v15;
LABEL_20:
    v17 = v15;
    goto LABEL_21;
  }

  *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"SpotlightResourcesErrorDomain" code:-1 userInfo:0];
  v16 = SRLogCategoryGeneral();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 138412290;
    v21 = keyCopy;
    _os_log_impl(&dword_1AE58E000, v16, OS_LOG_TYPE_DEFAULT, "SpotlightResources could not find file paths parameter %@", &v20, 0xCu);
  }

  v17 = 0;
LABEL_21:

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

- (id)filePathArrayForKey:(id)key
{
  v5 = 0;
  v3 = [(SRResources *)self filePathArrayForKey:key didFailWithError:&v5];

  return v3;
}

- (id)objectForKey:(id)key withType:(int64_t *)type didFailWithError:(id *)error
{
  keyCopy = key;
  if (!SRIsAppleInternalInstall() || sUsingOverrides != 1)
  {
LABEL_9:
    v14 = [(SRResources *)self fetchBooleanParameter:keyCopy];
    v10 = v14;
    *error = 0;
    if (v14 && [v14 isBool] && (objc_msgSend(v10, "isNil") & 1) == 0)
    {
      *type = 0;
LABEL_32:
      value = [v10 value];
      goto LABEL_33;
    }

    v15 = [(SRResources *)self fetchLongParameter:keyCopy];

    if (v15 && [v15 isLong] && (objc_msgSend(v15, "isNil") & 1) == 0)
    {
      v16 = 1;
    }

    else
    {
      v10 = [(SRResources *)self fetchDoubleParameter:keyCopy];

      if (v10 && [v10 isDouble] && (objc_msgSend(v10, "isNil") & 1) == 0)
      {
        v17 = 2;
LABEL_31:
        *type = v17;
        goto LABEL_32;
      }

      v15 = [(SRResources *)self fetchStringParameter:keyCopy];

      if (!v15 || ![v15 isString] || (objc_msgSend(v15, "isNil") & 1) != 0)
      {
        v10 = [(SRResources *)self fetchFilePathParameter:keyCopy];

        if (!v10 || ![v10 isFilePath] || (objc_msgSend(v10, "isNil") & 1) != 0)
        {
          [MEMORY[0x1E696ABC0] errorWithDomain:@"SpotlightResourcesErrorDomain" code:-1 userInfo:0];
          *error = value = 0;
          *type = -1;
          goto LABEL_33;
        }

        v17 = 4;
        goto LABEL_31;
      }

      v16 = 3;
    }

    *type = v16;
    value = [v15 value];
    v10 = v15;
    goto LABEL_33;
  }

  v9 = [(NSDictionary *)self->_overrides objectForKeyedSubscript:keyCopy];
  v10 = v9;
  if (!v9 || ([v9 value], (v11 = objc_claimAutoreleasedReturnValue()) == 0))
  {

    goto LABEL_9;
  }

  value = v11;
  v13 = SRLogCategoryTrial();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [SRResources BOOLeanForKey:didFailWithError:];
  }

  *error = 0;
LABEL_33:

  return value;
}

- (id)objectForKey:(id)key didFailWithError:(id *)error
{
  v6 = -1;
  v4 = [(SRResources *)self objectForKey:key withType:&v6 didFailWithError:error];

  return v4;
}

- (id)objectForKey:(id)key
{
  v5 = 0;
  v3 = [(SRResources *)self objectForKey:key didFailWithError:&v5];

  return v3;
}

- (id)getTrialNamespaceId
{
  currentExperimentTrialManager = [(SRResources *)self currentExperimentTrialManager];
  v3 = currentExperimentTrialManager;
  if (currentExperimentTrialManager)
  {
    namespaceId = [currentExperimentTrialManager namespaceId];
  }

  else
  {
    namespaceId = 0;
  }

  return namespaceId;
}

- (id)getTrialRolloutId
{
  currentExperimentTrialManager = [(SRResources *)self currentExperimentTrialManager];
  v3 = currentExperimentTrialManager;
  if (currentExperimentTrialManager)
  {
    rolloutId = [currentExperimentTrialManager rolloutId];
  }

  else
  {
    rolloutId = 0;
  }

  return rolloutId;
}

- (int)getTrialExperimentDeploymentId
{
  currentExperimentTrialManager = [(SRResources *)self currentExperimentTrialManager];
  v3 = currentExperimentTrialManager;
  if (currentExperimentTrialManager)
  {
    experimentDeploymentId = [currentExperimentTrialManager experimentDeploymentId];
  }

  else
  {
    experimentDeploymentId = -1;
  }

  return experimentDeploymentId;
}

- (int)getTrialRolloutDeploymentId
{
  currentExperimentTrialManager = [(SRResources *)self currentExperimentTrialManager];
  v3 = currentExperimentTrialManager;
  if (currentExperimentTrialManager)
  {
    rolloutDeploymentId = [currentExperimentTrialManager rolloutDeploymentId];
  }

  else
  {
    rolloutDeploymentId = -1;
  }

  return rolloutDeploymentId;
}

- (void)refreshTrial
{
  v3 = +[SRResourcesManager sharedResourcesManager];
  [v3 refreshTrialForClient:self->_client];
}

- (id)updateWithNewOptions:(id)options
{
  if (options)
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
    localeIdentifier = [(NSLocale *)self->_locale localeIdentifier];
    *buf = 138412802;
    v21 = client;
    v22 = 2112;
    v23 = localeIdentifier;
    v24 = 2048;
    selfCopy = self;
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
    uTF8String = [(NSString *)self->_client UTF8String];
    locale = self->_locale;
    if (locale)
    {
      localeIdentifier2 = [(NSLocale *)self->_locale localeIdentifier];
      uTF8String2 = [localeIdentifier2 UTF8String];
      if (v9)
      {
LABEL_10:
        uTF8String3 = [v9 UTF8String];
        goto LABEL_13;
      }
    }

    else
    {
      uTF8String2 = "none";
      if (v9)
      {
        goto LABEL_10;
      }
    }

    uTF8String3 = "unknown";
LABEL_13:
    *buf = 136315650;
    v21 = uTF8String;
    v22 = 2080;
    v23 = uTF8String2;
    v24 = 2080;
    selfCopy = uTF8String3;
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

- (void)logForTrigger:(id)trigger queryID:(int64_t)d
{
  v36 = *MEMORY[0x1E69E9840];
  triggerCopy = trigger;
  if (+[SRResourcesManager parsecEnabled]&& ([(NSString *)self->_client isEqualToString:@"Spotlight"]|| [(NSString *)self->_client isEqualToString:@"Mail"]|| [(NSString *)self->_client isEqualToString:@"Parser"]))
  {
    v7 = SRLogCategoryTrial();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      uUIDString = [triggerCopy UUIDString];
      client = self->_client;
      *buf = 138412802;
      v31 = uUIDString;
      v32 = 2048;
      dCopy3 = d;
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

    if (triggerCopy)
    {
      if (v10)
      {
        uppercaseString = [v10 uppercaseString];
        uUIDString2 = [triggerCopy UUIDString];
        v14 = [uppercaseString containsString:uUIDString2];

        if (v14)
        {
          v15 = SRLogCategoryTrial();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            uUIDString3 = [triggerCopy UUIDString];
            *buf = 138412546;
            v31 = uUIDString3;
            v32 = 2048;
            dCopy3 = d;
            _os_log_impl(&dword_1AE58E000, v15, OS_LOG_TYPE_DEFAULT, "Emitting trigger for codepathID: %@, queryID:%lld", buf, 0x16u);
          }

          v17 = objc_alloc_init(MEMORY[0x1E69CA098]);
          [v17 setQueryId:d];
          [v17 setCodepathId:triggerCopy];
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
            uUIDString4 = [triggerCopy UUIDString];
            uTF8String = [uUIDString4 UTF8String];
            *buf = 136315394;
            v31 = uTF8String;
            v32 = 2048;
            dCopy3 = d;
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

  client = [MEMORY[0x1E696AD60] stringWithFormat:@"SRResources: { client = %@", client];
  locale = self->_locale;
  if (locale)
  {
    localeIdentifier = [(NSLocale *)locale localeIdentifier];
    [client appendFormat:@", locale = %@", localeIdentifier];
  }

  else
  {
    [client appendFormat:@", locale = %@", @"none"];
  }

  options = self->_options;
  if (options)
  {
    v8 = [(NSMutableDictionary *)options objectForKeyedSubscript:@"SRResourcesOwner"];

    if (v8)
    {
      v9 = [(NSMutableDictionary *)self->_options objectForKeyedSubscript:@"SRResourcesOwner"];
      [client appendFormat:@", owner = %@", v9];
    }
  }

  [client appendString:@" }"];
  v10 = [MEMORY[0x1E696AEC0] stringWithString:client];

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