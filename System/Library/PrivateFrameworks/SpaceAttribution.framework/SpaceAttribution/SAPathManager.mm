@interface SAPathManager
+ (SAPathManager)defaultManager;
- (BOOL)validatePaths:(id)paths;
- (id)checkForDuplicatePathsWithDifferentExclusivity:(id)exclusivity;
- (id)checkUnAllowedBundleIDs:(id)ds;
- (id)checkUnAllowedPaths:(id)paths;
- (void)registerPaths:(id)paths completionHandler:(id)handler;
- (void)registerPaths:(id)paths forBundleID:(id)d completionHandler:(id)handler;
- (void)unregisterPaths:(id)paths completionHandler:(id)handler;
- (void)unregisterURLs:(id)ls forBundleID:(id)d completionHandler:(id)handler;
@end

@implementation SAPathManager

+ (SAPathManager)defaultManager
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__SAPathManager_defaultManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (defaultManager_once != -1)
  {
    dispatch_once(&defaultManager_once, block);
  }

  v2 = defaultManager__self;

  return v2;
}

uint64_t __31__SAPathManager_defaultManager__block_invoke(uint64_t a1)
{
  defaultManager__self = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

- (id)checkUnAllowedBundleIDs:(id)ds
{
  v25[4] = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  v25[0] = @"com.apple.fakeapp.System";
  v25[1] = @"com.apple.fakeapp.SystemData";
  v25[2] = @"com.apple.fakeapp.SoftwareUpdate";
  v25[3] = @"com.apple.fakeapp.SoftwareUpdateReserve";
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:4];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = dsCopy;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v6)
  {
    v7 = *v19;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        v10 = objc_autoreleasePoolPush();
        bundleID = [v9 bundleID];
        if ([v4 containsObject:bundleID])
        {
          v12 = MEMORY[0x277CCA9B8];
          v13 = *MEMORY[0x277CCA5B8];
          v22 = *MEMORY[0x277CCA450];
          v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"Un-allowed bundleID"];
          v23 = v14;
          v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
          v6 = [v12 errorWithDomain:v13 code:22 userInfo:v15];

          objc_autoreleasePoolPop(v10);
          goto LABEL_11;
        }

        objc_autoreleasePoolPop(v10);
      }

      v6 = [v5 countByEnumeratingWithState:&v18 objects:v24 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v16 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)checkUnAllowedPaths:(id)paths
{
  pathsCopy = paths;
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__2;
  v11 = __Block_byref_object_dispose__2;
  v12 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __37__SAPathManager_checkUnAllowedPaths___block_invoke;
  v6[3] = &unk_279CD6E80;
  v6[4] = &v7;
  [pathsCopy enumerateObjectsUsingBlock:v6];
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __37__SAPathManager_checkUnAllowedPaths___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v40[1] = *MEMORY[0x277D85DE8];
  v6 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v6 url];
    v8 = [v7 path];
    v9 = [&unk_287BCCB80 containsObject:v8];

    if (v9)
    {
      v10 = MEMORY[0x277CCA9B8];
      v11 = *MEMORY[0x277CCA5B8];
      v37 = *MEMORY[0x277CCA450];
      v12 = MEMORY[0x277CCACA8];
      v13 = [v6 url];
      v14 = [v6 bundleID];
      v15 = [v12 stringWithFormat:@"Path (%@) is not permitted to be registered for bundle (%@)", v13, v14];
      v38 = v15;
      v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
      v17 = [v10 errorWithDomain:v11 code:1 userInfo:v16];
      v18 = *(*(a1 + 32) + 8);
      v19 = *(v18 + 40);
      *(v18 + 40) = v17;
    }

    else
    {
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __37__SAPathManager_checkUnAllowedPaths___block_invoke_2;
      v34[3] = &unk_279CD6E58;
      v26 = v6;
      v27 = *(a1 + 32);
      v35 = v26;
      v36 = v27;
      [&unk_287BCCB98 enumerateObjectsUsingBlock:v34];
      if (!*(*(*(a1 + 32) + 8) + 40))
      {
        v31[0] = MEMORY[0x277D85DD0];
        v31[1] = 3221225472;
        v31[2] = __37__SAPathManager_checkUnAllowedPaths___block_invoke_3;
        v31[3] = &unk_279CD6E58;
        v28 = v26;
        v29 = *(a1 + 32);
        v32 = v28;
        v33 = v29;
        [&unk_287BCCBB0 enumerateObjectsUsingBlock:v31];
      }

      v13 = v35;
    }
  }

  else
  {
    v20 = MEMORY[0x277CCA9B8];
    v21 = *MEMORY[0x277CCA5B8];
    v39 = *MEMORY[0x277CCA450];
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid paths input, not all objects in the paths array are of type SAPathInfo"];
    v40[0] = v13;
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:&v39 count:1];
    v23 = [v20 errorWithDomain:v21 code:22 userInfo:v22];
    v24 = *(*(a1 + 32) + 8);
    v25 = *(v24 + 40);
    *(v24 + 40) = v23;
  }

  if (*(*(*(a1 + 32) + 8) + 40))
  {
    *a4 = 1;
  }

  v30 = *MEMORY[0x277D85DE8];
}

void __37__SAPathManager_checkUnAllowedPaths___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v19[1] = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = [*(a1 + 32) url];
  v8 = [v7 path];
  v9 = [v8 hasPrefix:v6];

  if (v9)
  {
    v10 = MEMORY[0x277CCA9B8];
    v11 = *MEMORY[0x277CCA5B8];
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Registering paths under %@ is not permitted", v6, *MEMORY[0x277CCA450]];
    v19[0] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    v14 = [v10 errorWithDomain:v11 code:1 userInfo:v13];
    v15 = *(*(a1 + 40) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;

    *a4 = 1;
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __37__SAPathManager_checkUnAllowedPaths___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v19[1] = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 32);
  v7 = a2;
  v8 = [v6 url];
  v9 = [v8 path];
  v10 = [v9 containsString:v7];

  if (v10)
  {
    v11 = MEMORY[0x277CCA9B8];
    v12 = *MEMORY[0x277CCA5B8];
    v18 = *MEMORY[0x277CCA450];
    v19[0] = @"Registering paths with reference to current/parent directory is not allowed";
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    v14 = [v11 errorWithDomain:v12 code:1 userInfo:v13];
    v15 = *(*(a1 + 40) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;

    *a4 = 1;
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (id)checkForDuplicatePathsWithDifferentExclusivity:(id)exclusivity
{
  v36 = *MEMORY[0x277D85DE8];
  exclusivityCopy = exclusivity;
  v4 = objc_opt_new();
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = exclusivityCopy;
  v5 = [obj countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (!v5)
  {
    v27 = 0;
    goto LABEL_16;
  }

  v6 = v5;
  v27 = 0;
  v28 = *v30;
  v25 = *MEMORY[0x277CCA050];
  v24 = *MEMORY[0x277CCA470];
  do
  {
    for (i = 0; i != v6; ++i)
    {
      if (*v30 != v28)
      {
        objc_enumerationMutation(obj);
      }

      v8 = *(*(&v29 + 1) + 8 * i);
      v9 = objc_autoreleasePoolPush();
      v10 = [v8 url];
      v11 = [v4 objectForKeyedSubscript:v10];

      if (!v11)
      {
        [v4 setObject:v8 forKeyedSubscript:v10];
        goto LABEL_12;
      }

      v12 = [v4 objectForKeyedSubscript:v10];
      exclusive = [v12 exclusive];
      if (exclusive == [v8 exclusive])
      {
        v14 = [v4 objectForKeyedSubscript:v10];
        bundleID = [v14 bundleID];
        bundleID2 = [v8 bundleID];
        v17 = [bundleID isEqual:bundleID2];

        if (v17)
        {
          goto LABEL_12;
        }
      }

      else
      {
      }

      v18 = MEMORY[0x277CCA9B8];
      v33 = v24;
      v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"Path %@ is supplied more than once with different exclusivity OR multiple bundles", v10];
      v34 = v19;
      v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
      v21 = [v18 errorWithDomain:v25 code:1024 userInfo:v20];

      v27 = v21;
LABEL_12:

      objc_autoreleasePoolPop(v9);
    }

    v6 = [obj countByEnumeratingWithState:&v29 objects:v35 count:16];
  }

  while (v6);
LABEL_16:

  v22 = *MEMORY[0x277D85DE8];

  return v27;
}

- (BOOL)validatePaths:(id)paths
{
  v20 = *MEMORY[0x277D85DE8];
  pathsCopy = paths;
  v4 = pathsCopy;
  if (pathsCopy && [pathsCopy count])
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v5);
          }

          bundleID = [*(*(&v15 + 1) + 8 * i) bundleID];
          v11 = bundleID;
          if (!bundleID || ![bundleID length])
          {

            v12 = 0;
            goto LABEL_16;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
        v12 = 1;
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v12 = 1;
    }

LABEL_16:
  }

  else
  {
    v12 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

- (void)registerPaths:(id)paths forBundleID:(id)d completionHandler:(id)handler
{
  v23 = *MEMORY[0x277D85DE8];
  pathsCopy = paths;
  dCopy = d;
  handlerCopy = handler;
  v11 = [(SAPathManager *)self checkUnAllowedPaths:pathsCopy];
  if (v11)
  {
    handlerCopy[2](handlerCopy, v11);
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v12 = pathsCopy;
    v13 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v19;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v19 != v15)
          {
            objc_enumerationMutation(v12);
          }

          [*(*(&v18 + 1) + 8 * i) setBundleID:{dCopy, v18}];
        }

        v14 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v14);
    }

    [(SAPathManager *)self registerPaths:v12 completionHandler:handlerCopy];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)registerPaths:(id)paths completionHandler:(id)handler
{
  pathsCopy = paths;
  handlerCopy = handler;
  if (handlerCopy)
  {
    if ([(SAPathManager *)self validatePaths:pathsCopy])
    {
      v8 = [(SAPathManager *)self checkUnAllowedBundleIDs:pathsCopy];
      if (!v8)
      {
        v9 = [(SAPathManager *)self checkUnAllowedPaths:pathsCopy];
        if (v9)
        {
          handlerCopy[2](handlerCopy, v9);
        }

        else
        {
          v10 = [MEMORY[0x277CBEB98] setWithArray:pathsCopy];
          allObjects = [v10 allObjects];

          v12 = [(SAPathManager *)self checkForDuplicatePathsWithDifferentExclusivity:allObjects];
          if (v12)
          {
            handlerCopy[2](handlerCopy, v12);
          }

          else
          {
            v22 = 0;
            v23 = &v22;
            v24 = 0x3032000000;
            v25 = __Block_byref_object_copy__2;
            v26 = __Block_byref_object_dispose__2;
            v27 = [SADaemonXPC newWithInvalidationHandler:0];
            v13 = v23[5];
            v19[0] = MEMORY[0x277D85DD0];
            v19[1] = 3221225472;
            v19[2] = __49__SAPathManager_registerPaths_completionHandler___block_invoke;
            v19[3] = &unk_279CD6EA8;
            v14 = handlerCopy;
            v20 = v14;
            v21 = &v22;
            v15 = [v13 remoteObjectProxyWithErrorHandler:v19];
            v16[0] = MEMORY[0x277D85DD0];
            v16[1] = 3221225472;
            v16[2] = __49__SAPathManager_registerPaths_completionHandler___block_invoke_2;
            v16[3] = &unk_279CD6EA8;
            v17 = v14;
            v18 = &v22;
            [v15 registerPaths:allObjects reply:v16];

            _Block_object_dispose(&v22, 8);
          }

          pathsCopy = allObjects;
        }

        goto LABEL_10;
      }
    }

    else
    {
      v8 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:1024 userInfo:0];
    }

    handlerCopy[2](handlerCopy, v8);
    goto LABEL_10;
  }

  v8 = SALog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [SAPathManager registerPaths:completionHandler:];
  }

LABEL_10:
}

uint64_t __49__SAPathManager_registerPaths_completionHandler___block_invoke(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(*(a1 + 40) + 8) + 40);

  return [v2 invalidate];
}

void __49__SAPathManager_registerPaths_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = SALog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138412290;
      v7 = v3;
      _os_log_impl(&dword_26B26B000, v4, OS_LOG_TYPE_DEFAULT, "registerPaths returned err %@", &v6, 0xCu);
    }
  }

  (*(*(a1 + 32) + 16))();
  [*(*(*(a1 + 40) + 8) + 40) invalidate];

  v5 = *MEMORY[0x277D85DE8];
}

- (void)unregisterPaths:(id)paths completionHandler:(id)handler
{
  pathsCopy = paths;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v11 = SALog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [SAPathManager unregisterPaths:completionHandler:];
    }

    goto LABEL_9;
  }

  if (![(SAPathManager *)self validatePaths:pathsCopy])
  {
    v12 = SALog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [SAPathManager unregisterPaths:completionHandler:];
    }

    v11 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:1024 userInfo:0];
    handlerCopy[2](handlerCopy, v11);
LABEL_9:

    goto LABEL_10;
  }

  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__2;
  v23 = __Block_byref_object_dispose__2;
  v24 = [SADaemonXPC newWithInvalidationHandler:0];
  v8 = v20[5];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __51__SAPathManager_unregisterPaths_completionHandler___block_invoke;
  v16[3] = &unk_279CD6EA8;
  v9 = handlerCopy;
  v17 = v9;
  v18 = &v19;
  v10 = [v8 remoteObjectProxyWithErrorHandler:v16];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __51__SAPathManager_unregisterPaths_completionHandler___block_invoke_180;
  v13[3] = &unk_279CD6EA8;
  v14 = v9;
  v15 = &v19;
  [v10 unregisterPaths:pathsCopy reply:v13];

  _Block_object_dispose(&v19, 8);
LABEL_10:
}

uint64_t __51__SAPathManager_unregisterPaths_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = SALog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __51__SAPathManager_unregisterPaths_completionHandler___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
  return [*(*(*(a1 + 40) + 8) + 40) invalidate];
}

void __51__SAPathManager_unregisterPaths_completionHandler___block_invoke_180(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = SALog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __51__SAPathManager_unregisterPaths_completionHandler___block_invoke_180_cold_1();
    }
  }

  (*(*(a1 + 32) + 16))();
  [*(*(*(a1 + 40) + 8) + 40) invalidate];
}

- (void)unregisterURLs:(id)ls forBundleID:(id)d completionHandler:(id)handler
{
  v24 = *MEMORY[0x277D85DE8];
  lsCopy = ls;
  dCopy = d;
  handlerCopy = handler;
  v11 = objc_opt_new();
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v12 = lsCopy;
  v13 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v20;
    do
    {
      v16 = 0;
      do
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [SAPathInfo pathInfoWithURL:*(*(&v19 + 1) + 8 * v16) bundleID:dCopy, v19];
        [v11 addObject:v17];

        ++v16;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v14);
  }

  [(SAPathManager *)self unregisterPaths:v11 completionHandler:handlerCopy];
  v18 = *MEMORY[0x277D85DE8];
}

- (void)registerPaths:completionHandler:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)unregisterPaths:completionHandler:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)unregisterPaths:completionHandler:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __51__SAPathManager_unregisterPaths_completionHandler___block_invoke_180_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end