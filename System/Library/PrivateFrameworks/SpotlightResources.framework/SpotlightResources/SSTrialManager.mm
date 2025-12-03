@interface SSTrialManager
+ (BOOL)didAllNamespacesLoadForClient:(id)client;
+ (BOOL)isValidNamespace:(unsigned int)namespace forClient:(id)client;
+ (id)currentTrialManagerForClient:(id)client;
+ (id)getTTRLogsForClient:(id)client;
+ (id)resolveMultipleSpotlightExperiments;
+ (id)sharedSpotlightKnowledgeTrialClient;
+ (id)sharedSpotlightKnowledgeTrialManager;
+ (id)sharedSpotlightMailTrialManager;
+ (id)sharedSpotlightModelTrialManager;
+ (id)sharedSpotlightPolicyTrialManager;
+ (id)sharedSpotlightRankingTrialManager;
+ (id)sharedSpotlightTrialClient;
+ (id)sharedSpotlightUITrialManager;
+ (id)trialManagerForNamespaceId:(id)id;
+ (void)resolveMultipleSpotlightExperiments;
+ (void)setTrialOverridePath;
+ (void)setTrialUpdateHandler:(id)handler;
- (id)description;
- (id)getFactorDictionary;
- (id)getLevelForFactor:(id)factor;
- (void)loadWithUpdateHandler:(id)handler;
@end

@implementation SSTrialManager

void __38__SSTrialManager_setTrialOverridePath__block_invoke()
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  v6 = [v0 stringForKey:@"com.apple.triald.namespacedescriptor.path"];

  v1 = MEMORY[0x1E696AEC0];
  if (v6)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/devOverride/", v6];
    v3 = sTrialOverrideDirectoryPath;
    sTrialOverrideDirectoryPath = v2;
  }

  else
  {
    v3 = NSHomeDirectory();
    v4 = [v1 stringWithFormat:@"%@/Library/Trial/NamespaceDescriptors/devOverride/", v3];
    v5 = sTrialOverrideDirectoryPath;
    sTrialOverrideDirectoryPath = v4;
  }
}

+ (void)setTrialOverridePath
{
  if (setTrialOverridePath_onceToken != -1)
  {
    +[SSTrialManager setTrialOverridePath];
  }
}

+ (id)sharedSpotlightRankingTrialManager
{
  if (sharedSpotlightRankingTrialManager_onceToken != -1)
  {
    +[SSTrialManager sharedSpotlightRankingTrialManager];
  }

  v3 = sharedSpotlightRankingTrialManager_trialRankingManager;

  return v3;
}

uint64_t __52__SSTrialManager_sharedSpotlightRankingTrialManager__block_invoke()
{
  result = trialFlagsForProcess();
  if (result)
  {
    sharedSpotlightRankingTrialManager_trialRankingManager = [[SSTrialManager alloc] initWithNameSpace:334 forClient:@"Spotlight"];

    return MEMORY[0x1EEE66BB8]();
  }

  return result;
}

+ (id)sharedSpotlightModelTrialManager
{
  if (sharedSpotlightModelTrialManager_onceToken != -1)
  {
    +[SSTrialManager sharedSpotlightModelTrialManager];
  }

  v3 = sharedSpotlightModelTrialManager_trialModelManager;

  return v3;
}

uint64_t __50__SSTrialManager_sharedSpotlightModelTrialManager__block_invoke()
{
  result = trialFlagsForProcess();
  if (result)
  {
    sharedSpotlightModelTrialManager_trialModelManager = [[SSTrialManager alloc] initWithNameSpace:332 forClient:@"Spotlight"];

    return MEMORY[0x1EEE66BB8]();
  }

  return result;
}

+ (id)sharedSpotlightTrialClient
{
  if (sharedSpotlightTrialClient_onceToken != -1)
  {
    +[SSTrialManager sharedSpotlightTrialClient];
  }

  v3 = sharedSpotlightTrialClient_trialClient;

  return v3;
}

uint64_t __44__SSTrialManager_sharedSpotlightTrialClient__block_invoke()
{
  result = trialFlagsForProcess();
  if ((result & 5) != 0)
  {
    sharedSpotlightTrialClient_trialClient = [MEMORY[0x1E69DB518] clientWithIdentifier:232];

    return MEMORY[0x1EEE66BB8]();
  }

  return result;
}

+ (id)sharedSpotlightUITrialManager
{
  if (sharedSpotlightUITrialManager_onceToken != -1)
  {
    +[SSTrialManager sharedSpotlightUITrialManager];
  }

  v3 = sharedSpotlightUITrialManager_trialUIManager;

  return v3;
}

uint64_t __47__SSTrialManager_sharedSpotlightUITrialManager__block_invoke()
{
  result = trialFlagsForProcess();
  if (result)
  {
    sharedSpotlightUITrialManager_trialUIManager = [[SSTrialManager alloc] initWithNameSpace:333 forClient:@"Spotlight"];

    return MEMORY[0x1EEE66BB8]();
  }

  return result;
}

+ (id)sharedSpotlightMailTrialManager
{
  if (sharedSpotlightMailTrialManager_onceToken != -1)
  {
    +[SSTrialManager sharedSpotlightMailTrialManager];
  }

  v3 = sharedSpotlightMailTrialManager_trialMailManager;

  return v3;
}

uint64_t __49__SSTrialManager_sharedSpotlightMailTrialManager__block_invoke()
{
  result = trialFlagsForProcess();
  if ((result & 4) != 0)
  {
    sharedSpotlightMailTrialManager_trialMailManager = [[SSTrialManager alloc] initWithNameSpace:337 forClient:@"Mail"];

    return MEMORY[0x1EEE66BB8]();
  }

  return result;
}

+ (id)resolveMultipleSpotlightExperiments
{
  v26 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&sTrialLock);
  if (sCurrentActiveTrialManagers)
  {
    if ([sCurrentActiveTrialManagers count] >= 2)
    {
      v2 = SRLogCategoryTrial();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        +[(SSTrialManager *)v2];
      }
    }

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v3 = [&unk_1F2427BD8 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v21;
      while (2)
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v21 != v5)
          {
            objc_enumerationMutation(&unk_1F2427BD8);
          }

          v7 = *(*(&v20 + 1) + 8 * i);
          v8 = [sCurrentActiveTrialManagers objectForKeyedSubscript:v7];
          if (v8)
          {
            v9 = v8;
            v10 = SRLogCategoryTrial();
            if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
            {
              [(SSTrialManager *)v7 resolveMultipleSpotlightExperiments:v10];
            }

            goto LABEL_18;
          }
        }

        v4 = [&unk_1F2427BD8 countByEnumeratingWithState:&v20 objects:v25 count:16];
        if (v4)
        {
          continue;
        }

        break;
      }
    }

    v9 = 0;
LABEL_18:
    os_unfair_lock_unlock(&sTrialLock);
  }

  else
  {
    os_unfair_lock_unlock(&sTrialLock);
    v17 = SRLogCategoryTrial();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1AE58E000, v17, OS_LOG_TYPE_INFO, "No active Spotlight experiment on device", buf, 2u);
    }

    v9 = 0;
  }

  v18 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (void)setTrialUpdateHandler:(id)handler
{
  sTrialUpdateHandler_0 = MEMORY[0x1B2704E40](handler, a2);

  MEMORY[0x1EEE66BB8]();
}

+ (id)sharedSpotlightKnowledgeTrialClient
{
  if (sharedSpotlightKnowledgeTrialClient_onceToken != -1)
  {
    +[SSTrialManager sharedSpotlightKnowledgeTrialClient];
  }

  v3 = sharedSpotlightKnowledgeTrialClient_trialClient;

  return v3;
}

uint64_t __53__SSTrialManager_sharedSpotlightKnowledgeTrialClient__block_invoke()
{
  result = trialFlagsForProcess();
  if ((result & 2) != 0)
  {
    sharedSpotlightKnowledgeTrialClient_trialClient = [MEMORY[0x1E69DB518] clientWithIdentifier:268];

    return MEMORY[0x1EEE66BB8]();
  }

  return result;
}

+ (BOOL)isValidNamespace:(unsigned int)namespace forClient:(id)client
{
  clientCopy = client;
  if ([clientCopy isEqualToString:@"Spotlight"])
  {
    v6 = (namespace & 0xFFFFFFFC) == 332;
    goto LABEL_5;
  }

  if ([clientCopy isEqualToString:@"SpotlightKnowledge"])
  {
    v6 = namespace == 336;
LABEL_5:
    v7 = v6;
    goto LABEL_11;
  }

  v8 = [clientCopy isEqualToString:@"Mail"];
  if (namespace == 337)
  {
    v7 = v8;
  }

  else
  {
    v7 = 0;
  }

LABEL_11:

  return v7;
}

void __46__SSTrialManager_initWithNameSpace_forClient___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (!sTrialUpdateHandler_0)
  {
    v2 = SRLogCategoryTrial();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __46__SSTrialManager_initWithNameSpace_forClient___block_invoke_cold_1(WeakRetained, v2);
    }
  }

  [WeakRetained loadWithUpdateHandler:?];
}

+ (id)sharedSpotlightPolicyTrialManager
{
  if (sharedSpotlightPolicyTrialManager_onceToken != -1)
  {
    +[SSTrialManager sharedSpotlightPolicyTrialManager];
  }

  v3 = sharedSpotlightPolicyTrialManager_trialPolicyManager;

  return v3;
}

uint64_t __51__SSTrialManager_sharedSpotlightPolicyTrialManager__block_invoke()
{
  result = trialFlagsForProcess();
  if (result)
  {
    sharedSpotlightPolicyTrialManager_trialPolicyManager = [[SSTrialManager alloc] initWithNameSpace:335 forClient:@"Spotlight"];

    return MEMORY[0x1EEE66BB8]();
  }

  return result;
}

+ (id)sharedSpotlightKnowledgeTrialManager
{
  if (sharedSpotlightKnowledgeTrialManager_onceToken != -1)
  {
    +[SSTrialManager sharedSpotlightKnowledgeTrialManager];
  }

  v3 = sharedSpotlightKnowledgeTrialManager_trialKnowledgeManager;

  return v3;
}

uint64_t __54__SSTrialManager_sharedSpotlightKnowledgeTrialManager__block_invoke()
{
  result = trialFlagsForProcess();
  if ((result & 2) != 0)
  {
    sharedSpotlightKnowledgeTrialManager_trialKnowledgeManager = [[SSTrialManager alloc] initWithNameSpace:336 forClient:@"SpotlightKnowledge"];

    return MEMORY[0x1EEE66BB8]();
  }

  return result;
}

+ (id)currentTrialManagerForClient:(id)client
{
  clientCopy = client;
  if ([clientCopy isEqualToString:@"Spotlight"])
  {
    v4 = +[SSTrialManager resolveMultipleSpotlightExperiments];
  }

  else if ([clientCopy isEqualToString:@"Mail"])
  {
    v4 = +[SSTrialManager sharedSpotlightMailTrialManager];
  }

  else
  {
    if (![clientCopy isEqualToString:@"SpotlightKnowledge"])
    {
      v7 = SRLogCategoryTrial();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [SSTrialManager currentTrialManagerForClient:v7];
      }

      v5 = 0;
      goto LABEL_14;
    }

    v4 = +[SSTrialManager sharedSpotlightKnowledgeTrialManager];
  }

  v5 = v4;
  if (!v4)
  {
LABEL_14:
    v6 = 0;
    goto LABEL_15;
  }

  if ([v4 hasActiveExperiment])
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

LABEL_15:
  v8 = v6;

  return v6;
}

- (id)getFactorDictionary
{
  pthread_rwlock_wrlock(&sTrialCacheLock);
  v3 = [(NSDictionary *)self->_cachedValuesForFactor copy];
  pthread_rwlock_unlock(&sTrialCacheLock);

  return v3;
}

- (id)description
{
  v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:5];
  v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"client=%@", self->_client];
  [v3 addObject:v4];

  v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"namespace=%@", self->_namespaceId];
  [v3 addObject:v5];

  v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"experiment id=%@", self->_experimentId];
  [v3 addObject:v6];

  v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"treatment id=%@", self->_treatmentId];
  [v3 addObject:v7];

  v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"rollout id=%@", self->_rolloutId];
  [v3 addObject:v8];

  v9 = objc_alloc(MEMORY[0x1E696AEC0]);
  getFactorDictionary = [(SSTrialManager *)self getFactorDictionary];
  v11 = [v9 initWithFormat:@"factor dictionary=%@", getFactorDictionary];
  [v3 addObject:v11];

  v12 = objc_alloc(MEMORY[0x1E696AEC0]);
  v13 = objc_opt_class();
  v14 = [v3 componentsJoinedByString:{@", "}];
  v15 = [v12 initWithFormat:@"<%@:%p; %@>", v13, self, v14];

  return v15;
}

+ (id)getTTRLogsForClient:(id)client
{
  v20 = *MEMORY[0x1E69E9840];
  clientCopy = client;
  os_unfair_lock_lock(&sTrialLock);
  if (sTrialManagerInstances)
  {
    v4 = [sTrialManagerInstances objectForKeyedSubscript:clientCopy];

    if (v4)
    {
      v5 = [sTrialManagerInstances objectForKeyedSubscript:clientCopy];
      v4 = [v5 copy];
    }
  }

  else
  {
    v4 = 0;
  }

  os_unfair_lock_unlock(&sTrialLock);
  if ([v4 count])
  {
    v6 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"\nTrial A/B info:\n"];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = v4;
    v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v15 + 1) + 8 * i) description];
          [v6 appendFormat:@"%@\n", v12];
        }

        v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }
  }

  else
  {
    v6 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)getLevelForFactor:(id)factor
{
  factorCopy = factor;
  if ([factorCopy isEqualToString:@"codepathIDs"])
  {
    v5 = SRLogCategoryTrial();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [SSTrialManager getLevelForFactor:?];
    }
  }

  if (self->_hasActiveExperiment || self->_hasRollout || self->_hasOverride)
  {
    pthread_rwlock_rdlock(&sTrialCacheLock);
    v6 = [(NSDictionary *)self->_cachedValuesForFactor objectForKey:factorCopy];
    pthread_rwlock_unlock(&sTrialCacheLock);
    if (v6)
    {
      goto LABEL_13;
    }

    v7 = SRLogCategoryTrial();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [(SSTrialManager *)factorCopy getLevelForFactor:v7, v8, v9, v10, v11, v12, v13];
    }
  }

  v6 = 0;
LABEL_13:

  return v6;
}

- (void)loadWithUpdateHandler:(id)handler
{
  v81 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  [(TRIClient *)self->_trialClient refresh];
  v5 = SRLogCategoryTrial();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [SSTrialManager loadWithUpdateHandler:?];
  }

  v6 = SRLogCategoryTrial();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [(SSTrialManager *)self loadWithUpdateHandler:v6];
  }

  v7 = [(TRIClient *)self->_trialClient experimentIdentifiersWithNamespaceName:self->_namespaceName];
  v61 = v7;
  if (v7)
  {
    v8 = v7;
    self->_hasActiveExperiment = 1;
    experimentId = [v7 experimentId];
    experimentId = self->_experimentId;
    self->_experimentId = experimentId;

    treatmentId = [v8 treatmentId];
    treatmentId = self->_treatmentId;
    self->_treatmentId = treatmentId;

    self->_experimentDeploymentId = [v8 deploymentId];
    if (![(NSString *)self->_client isEqualToString:@"Spotlight"])
    {
      goto LABEL_16;
    }

    os_unfair_lock_lock(&sTrialLock);
    v13 = sCurrentActiveTrialManagers;
    if (!sCurrentActiveTrialManagers)
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      v15 = sCurrentActiveTrialManagers;
      sCurrentActiveTrialManagers = dictionary;

      v13 = sCurrentActiveTrialManagers;
    }

    v16 = [v13 objectForKeyedSubscript:self->_namespaceId];

    if (!v16)
    {
      [sCurrentActiveTrialManagers setObject:self forKey:self->_namespaceId];
    }
  }

  else
  {
    self->_hasActiveExperiment = 0;
    v17 = self->_experimentId;
    self->_experimentId = 0;

    v18 = self->_treatmentId;
    self->_treatmentId = 0;

    self->_experimentDeploymentId = -1;
    if (![(NSString *)self->_client isEqualToString:@"Spotlight"])
    {
      goto LABEL_16;
    }

    os_unfair_lock_lock(&sTrialLock);
    if (sCurrentActiveTrialManagers)
    {
      v19 = [sCurrentActiveTrialManagers objectForKeyedSubscript:self->_namespaceId];

      if (v19)
      {
        [sCurrentActiveTrialManagers removeObjectForKey:self->_namespaceId];
      }
    }
  }

  os_unfair_lock_unlock(&sTrialLock);
LABEL_16:
  v20 = [(TRIClient *)self->_trialClient factorLevelsWithNamespaceName:self->_namespaceName];
  v21 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v20, "count")}];
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v22 = v20;
  v23 = [v22 countByEnumeratingWithState:&v67 objects:v80 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v68;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v68 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = *(*(&v67 + 1) + 8 * i);
        factor = [v27 factor];
        name = [factor name];

        level = [v27 level];
        [v21 setObject:level forKey:name];
      }

      v24 = [v22 countByEnumeratingWithState:&v67 objects:v80 count:16];
    }

    while (v24);
  }

  pthread_rwlock_wrlock(&sTrialCacheLock);
  v31 = [v21 copy];
  cachedValuesForFactor = self->_cachedValuesForFactor;
  self->_cachedValuesForFactor = v31;

  pthread_rwlock_unlock(&sTrialCacheLock);
  v33 = [(TRIClient *)self->_trialClient rolloutIdentifiersWithNamespaceName:self->_namespaceName];
  v34 = v33;
  if (v33)
  {
    self->_hasRollout = 1;
    rolloutId = [v33 rolloutId];
    rolloutId = self->_rolloutId;
    self->_rolloutId = rolloutId;

    deploymentId = [v34 deploymentId];
  }

  else
  {
    self->_hasRollout = 0;
    v38 = self->_rolloutId;
    self->_rolloutId = 0;

    deploymentId = -1;
  }

  self->_rolloutDeploymentId = deploymentId;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v66 = 0;
  v40 = [defaultManager contentsOfDirectoryAtPath:sTrialOverrideDirectoryPath error:&v66];
  v41 = v66;

  if (!v41)
  {
    v59 = v40;
    v60 = v34;
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v42 = v40;
    v43 = [v42 countByEnumeratingWithState:&v62 objects:v79 count:16];
    if (v43)
    {
      v44 = v43;
      v45 = *v63;
      while (2)
      {
        for (j = 0; j != v44; ++j)
        {
          if (*v63 != v45)
          {
            objc_enumerationMutation(v42);
          }

          v47 = *(*(&v62 + 1) + 8 * j);
          v48 = [MEMORY[0x1E696AEC0] stringWithFormat:@"factor-%@.pb", self->_namespaceName];
          LODWORD(v47) = [v47 isEqualToString:v48];

          if (v47)
          {
            self->_hasOverride = 1;
            goto LABEL_37;
          }
        }

        v44 = [v42 countByEnumeratingWithState:&v62 objects:v79 count:16];
        if (v44)
        {
          continue;
        }

        break;
      }
    }

LABEL_37:

    v34 = v60;
    v41 = 0;
    v40 = v59;
  }

  v49 = SRLogCategoryLifeCycle();
  v50 = v49;
  v51 = loadWithUpdateHandler__updateCount;
  v52 = ++loadWithUpdateHandler__updateCount;
  if (v51 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v49))
  {
    namespaceId = self->_namespaceId;
    if (namespaceId)
    {
      uTF8String = [(NSString *)namespaceId UTF8String];
    }

    else
    {
      uTF8String = "?";
    }

    hasActiveExperiment = self->_hasActiveExperiment;
    hasRollout = self->_hasRollout;
    hasOverride = self->_hasOverride;
    *buf = 136315906;
    v72 = uTF8String;
    v73 = 1024;
    v74 = hasActiveExperiment;
    v75 = 1024;
    v76 = hasRollout;
    v77 = 1024;
    v78 = hasOverride;
    _os_signpost_emit_with_name_impl(&dword_1AE58E000, v50, OS_SIGNPOST_EVENT, v52, "SRResourcesTrialUpdate", "ns:%s, exp:%d, ro:%d, over:%d", buf, 0x1Eu);
  }

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, self->_client, self->_namespaceId, self);
  }

  v58 = *MEMORY[0x1E69E9840];
}

+ (BOOL)didAllNamespacesLoadForClient:(id)client
{
  clientCopy = client;
  if (![clientCopy isEqualToString:@"Spotlight"])
  {
    if ([clientCopy isEqualToString:@"SpotlightKnowledge"])
    {
      if ((trialFlagsForProcess() & 2) == 0)
      {
        goto LABEL_19;
      }

      v12 = +[SSTrialManager sharedSpotlightKnowledgeTrialManager];
    }

    else
    {
      if (![clientCopy isEqualToString:@"Mail"] || (trialFlagsForProcess() & 4) == 0)
      {
        goto LABEL_19;
      }

      v12 = +[SSTrialManager sharedSpotlightMailTrialManager];
    }

    v8 = v12;
    wasLoadedSinceLaunch = [v12 wasLoadedSinceLaunch];
LABEL_25:

    goto LABEL_26;
  }

  v4 = SRLogCategoryTrial();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    +[SSTrialManager didAllNamespacesLoadForClient:];
  }

  v5 = SRLogCategoryTrial();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    +[SSTrialManager didAllNamespacesLoadForClient:];
  }

  v6 = SRLogCategoryTrial();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    +[SSTrialManager didAllNamespacesLoadForClient:];
  }

  v7 = SRLogCategoryTrial();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    +[SSTrialManager didAllNamespacesLoadForClient:];
  }

  if (trialFlagsForProcess())
  {
    v8 = +[SSTrialManager sharedSpotlightModelTrialManager];
    if ([v8 wasLoadedSinceLaunch])
    {
      v9 = +[SSTrialManager sharedSpotlightUITrialManager];
      if ([v9 wasLoadedSinceLaunch])
      {
        v10 = +[SSTrialManager sharedSpotlightRankingTrialManager];
        wasLoadedSinceLaunch = [v10 wasLoadedSinceLaunch];
      }

      else
      {
        wasLoadedSinceLaunch = 0;
      }
    }

    else
    {
      wasLoadedSinceLaunch = 0;
    }

    goto LABEL_25;
  }

LABEL_19:
  wasLoadedSinceLaunch = 0;
LABEL_26:

  return wasLoadedSinceLaunch;
}

+ (id)trialManagerForNamespaceId:(id)id
{
  idCopy = id;
  if ([idCopy isEqualToString:@"332"])
  {
    v4 = +[SSTrialManager sharedSpotlightModelTrialManager];
LABEL_13:
    v5 = v4;
    goto LABEL_14;
  }

  if ([idCopy isEqualToString:@"333"])
  {
    v4 = +[SSTrialManager sharedSpotlightUITrialManager];
    goto LABEL_13;
  }

  if ([idCopy isEqualToString:@"334"])
  {
    v4 = +[SSTrialManager sharedSpotlightRankingTrialManager];
    goto LABEL_13;
  }

  if ([idCopy isEqualToString:@"335"])
  {
    v4 = +[SSTrialManager sharedSpotlightPolicyTrialManager];
    goto LABEL_13;
  }

  if ([idCopy isEqualToString:@"336"])
  {
    v4 = +[SSTrialManager sharedSpotlightKnowledgeTrialManager];
    goto LABEL_13;
  }

  if ([idCopy isEqualToString:@"337"])
  {
    v4 = +[SSTrialManager sharedSpotlightMailTrialManager];
    goto LABEL_13;
  }

  v5 = 0;
LABEL_14:

  return v5;
}

- (void)initWithNameSpace:(uint64_t)a1 forClient:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1AE58E000, a2, OS_LOG_TYPE_ERROR, "Process not on whitelist for client %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void __46__SSTrialManager_initWithNameSpace_forClient___block_invoke_cold_1(void *a1, NSObject *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = [a1 namespaceId];
  v5 = [a1 client];
  v7 = 138412546;
  v8 = v4;
  v9 = 2112;
  v10 = v5;
  _os_log_error_impl(&dword_1AE58E000, a2, OS_LOG_TYPE_ERROR, "Trial update handler is not set when initializing Trial manager for namespace %@ and client %@", &v7, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)getLevelForFactor:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 16);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2_0(&dword_1AE58E000, v2, v3, "Fetching codepathIDs from namespace %@", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)getLevelForFactor:(uint64_t)a3 .cold.2(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_0(&dword_1AE58E000, a2, a3, "Factor not in protobuf: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)loadWithUpdateHandler:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 16);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2_0(&dword_1AE58E000, v2, v3, "Loading Trial namespace %@", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)loadWithUpdateHandler:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 16);
  v3 = @"NO";
  if (*(a1 + 32))
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  v5 = *(a1 + 34);
  if (*(a1 + 33))
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  v8 = 138413058;
  if (v5)
  {
    v3 = @"YES";
  }

  v9 = v2;
  v10 = 2112;
  v11 = v4;
  v12 = 2112;
  v13 = v6;
  v14 = 2112;
  v15 = v3;
  _os_log_debug_impl(&dword_1AE58E000, a2, OS_LOG_TYPE_DEBUG, "Before loading namespace %@: _hasActiveExperiment = %@, _hasRollout = %@, _hasOverride = %@", &v8, 0x2Au);
  v7 = *MEMORY[0x1E69E9840];
}

+ (void)resolveMultipleSpotlightExperiments
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_0(&dword_1AE58E000, a2, a3, "Setting current trial manager to %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

+ (void)didAllNamespacesLoadForClient:.cold.1()
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = +[SSTrialManager sharedSpotlightModelTrialManager];
  [v0 wasLoadedSinceLaunch];
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_0_1(&dword_1AE58E000, v1, v2, "SPOLIGHT_BLENDING_MODEL = %@", v3, v4, v5, v6, v8);

  v7 = *MEMORY[0x1E69E9840];
}

+ (void)didAllNamespacesLoadForClient:.cold.2()
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = +[SSTrialManager sharedSpotlightUITrialManager];
  [v0 wasLoadedSinceLaunch];
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_0_1(&dword_1AE58E000, v1, v2, "SPOLIGHT_UI = %@", v3, v4, v5, v6, v8);

  v7 = *MEMORY[0x1E69E9840];
}

+ (void)didAllNamespacesLoadForClient:.cold.3()
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = +[SSTrialManager sharedSpotlightRankingTrialManager];
  [v0 wasLoadedSinceLaunch];
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_0_1(&dword_1AE58E000, v1, v2, "SPOLIGHT_RANKING_RULES = %@", v3, v4, v5, v6, v8);

  v7 = *MEMORY[0x1E69E9840];
}

+ (void)didAllNamespacesLoadForClient:.cold.4()
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = +[SSTrialManager sharedSpotlightPolicyTrialManager];
  [v0 wasLoadedSinceLaunch];
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_0_1(&dword_1AE58E000, v1, v2, "SPOLIGHT_RANKING_POLICY = %@", v3, v4, v5, v6, v8);

  v7 = *MEMORY[0x1E69E9840];
}

@end