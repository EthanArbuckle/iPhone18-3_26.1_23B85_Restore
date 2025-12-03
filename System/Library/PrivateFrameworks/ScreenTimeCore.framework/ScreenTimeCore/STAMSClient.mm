@interface STAMSClient
+ (id)_makeGlobalQueryParamsFor:(id)for;
+ (id)makeAMSMediaTaskForApps:(id)apps isGlobal:(BOOL)global;
+ (void)_handleLoadMediaTaskForResult:(id)result error:(id)error withCompletionHandler:(id)handler;
+ (void)loadMediaForTask:(id)task withCompletionHandler:(id)handler;
@end

@implementation STAMSClient

+ (id)makeAMSMediaTaskForApps:(id)apps isGlobal:(BOOL)global
{
  globalCopy = global;
  v32 = *MEMORY[0x1E69E9840];
  appsCopy = apps;
  if ([appsCopy count])
  {
    v23 = globalCopy;
    v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(appsCopy, "count")}];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v8 = appsCopy;
    v9 = [v8 countByEnumeratingWithState:&v24 objects:v31 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v25;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v25 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%llu", objc_msgSend(*(*(&v24 + 1) + 8 * i), "adamID")];
          [v7 addObject:v13];
        }

        v10 = [v8 countByEnumeratingWithState:&v24 objects:v31 count:16];
      }

      while (v10);
    }

    createScreenTimeBag = [self createScreenTimeBag];
    v15 = objc_alloc(MEMORY[0x1E698C9E0]);
    if (v23)
    {
      v16 = [v15 initWithType:7 clientIdentifier:@"com.apple.ScreenTimeSettingsUI" clientVersion:@"1" bag:createScreenTimeBag];
      v17 = [STAMSClient _makeGlobalQueryParamsFor:v8];
      [v16 setAdditionalQueryParams:v17];

      v18 = +[STLog appInfo];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v19 = "AMSMediaTask created with type: AMSMediaTaskTypeAppDistribution";
LABEL_17:
        _os_log_impl(&dword_1B831F000, v18, OS_LOG_TYPE_DEFAULT, v19, buf, 2u);
      }
    }

    else
    {
      v16 = [v15 initWithType:0 clientIdentifier:@"com.apple.ScreenTimeSettingsUI" clientVersion:@"1" bag:createScreenTimeBag];
      v29[0] = @"extend";
      v29[1] = @"additionalPlatforms";
      v30[0] = @"shortName";
      v30[1] = @"iphone,ipad,mac,appletv,watch,web";
      v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:2];
      [v16 setAdditionalQueryParams:v20];

      v18 = +[STLog appInfo];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v19 = "AMSMediaTask created with type: AMSMediaTaskTypeApp";
        goto LABEL_17;
      }
    }

    [v16 setItemIdentifiers:v7];
    goto LABEL_19;
  }

  v7 = +[STLog appInfo];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B831F000, v7, OS_LOG_TYPE_DEFAULT, "AMSMediaTask requested for an empty array of STAppInfos. Returning nil", buf, 2u);
  }

  v16 = 0;
LABEL_19:

  v21 = *MEMORY[0x1E69E9840];

  return v16;
}

+ (void)loadMediaForTask:(id)task withCompletionHandler:(id)handler
{
  taskCopy = task;
  handlerCopy = handler;
  v7 = [taskCopy bag];
  v8 = [v7 BOOLForKey:@"enable-app-distribution-account-personalization"];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __54__STAMSClient_loadMediaForTask_withCompletionHandler___block_invoke;
  v11[3] = &unk_1E7CE7530;
  v12 = taskCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = taskCopy;
  [v8 valueWithCompletion:v11];
}

void __54__STAMSClient_loadMediaForTask_withCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  if ([a2 BOOLValue])
  {
    v3 = [MEMORY[0x1E6959A48] ams_sharedAccountStore];
    v4 = [v3 ams_activeiTunesAccount];
    [*(a1 + 32) setAccount:v4];

    v5 = +[STLog appInfo];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B831F000, v5, OS_LOG_TYPE_DEFAULT, "Adding account info to media task", buf, 2u);
    }
  }

  v6 = [*(a1 + 32) perform];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __54__STAMSClient_loadMediaForTask_withCompletionHandler___block_invoke_32;
  v7[3] = &unk_1E7CE7508;
  v8 = *(a1 + 40);
  [v6 addFinishBlock:v7];
}

+ (void)_handleLoadMediaTaskForResult:(id)result error:(id)error withCompletionHandler:(id)handler
{
  v102 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  errorCopy = error;
  handlerCopy = handler;
  if (os_variant_has_internal_content())
  {
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    v9 = [standardUserDefaults BOOLForKey:@"STAppInfoCacheForcingAMSNilResponse"];
  }

  else
  {
    v9 = 0;
  }

  if (!resultCopy || (v9 & 1) != 0)
  {
    v59 = errorCopy;
    handlerCopy[2](handlerCopy, errorCopy, 0);
    goto LABEL_70;
  }

  v65 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  obj = [resultCopy responseDataItems];
  v67 = [obj countByEnumeratingWithState:&v81 objects:v99 count:16];
  if (!v67)
  {
    goto LABEL_68;
  }

  v66 = *v82;
  v64 = handlerCopy;
  do
  {
    v10 = 0;
    do
    {
      if (*v82 != v66)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v81 + 1) + 8 * v10);
      v12 = [v11 objectForKeyedSubscript:@"attributes"];
      if (v12)
      {
        v13 = [v11 objectForKeyedSubscript:@"attributes"];
        v14 = [v13 objectForKeyedSubscript:@"platformAttributes"];
        v15 = [v14 objectForKeyedSubscript:@"ios"];

        v16 = [v11 objectForKeyedSubscript:@"attributes"];
        v17 = [v16 objectForKeyedSubscript:@"platformAttributes"];
        v79 = [v17 objectForKeyedSubscript:@"osx"];

        v18 = [v11 objectForKeyedSubscript:@"attributes"];
        v19 = [v18 objectForKeyedSubscript:@"platformAttributes"];
        v20 = [v19 objectForKeyedSubscript:@"appletvos"];

        v21 = [v11 objectForKeyedSubscript:@"attributes"];
        v22 = [v21 objectForKeyedSubscript:@"platformAttributes"];
        v23 = [v22 objectForKeyedSubscript:@"xros"];

        v24 = v15;
        v69 = v23;
        v71 = v20;
        if (v15 || (v24 = v79) != 0 || (v24 = v20) != 0)
        {
          v25 = v24;
LABEL_16:
          v77 = v10;
          v26 = [v25 objectForKeyedSubscript:@"bundleId"];
          v27 = [v25 objectForKeyedSubscript:@"seller"];
          v75 = [v12 objectForKeyedSubscript:@"name"];
          v68 = v12;
          v28 = [v12 objectForKeyedSubscript:@"contentRatingsBySystem"];
          v29 = [v28 objectForKeyedSubscript:@"appsApple"];
          v73 = [v29 objectForKeyedSubscript:@"name"];

          v30 = [v25 objectForKeyedSubscript:@"artwork"];
          v31 = [objc_alloc(MEMORY[0x1E698C9B0]) initWithDictionary:v30];
          v32 = [v31 URLWithSize:{72.0, 72.0}];
          v33 = v32;
          if (v26 && v32)
          {
            v34 = @"mac-software";
            if (!v79)
            {
              v34 = &stru_1F3040980;
            }

            if (v15)
            {
              v35 = @"software";
            }

            else
            {
              v35 = v34;
            }

            v36 = v27;
            v37 = [[STAppMetadata alloc] initWithBundleIdentifier:v26 displayName:v75 artworkURL:v32 vendorName:v27 ratingLabel:v73 software:v35];
            v38 = +[STLog appInfo];
            if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
            {
              *buf = 138543362;
              v101 = v75;
              _os_log_impl(&dword_1B831F000, v38, OS_LOG_TYPE_INFO, "STAppMetadata parsing success for app name: %{public}@", buf, 0xCu);
            }
          }

          else
          {
            v36 = v27;
            v38 = +[STLog appInfo];
            if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
            {
              [STAMSClient _handleLoadMediaTaskForResult:v86 error:? withCompletionHandler:?];
            }

            v37 = 0;
          }

          handlerCopy = v64;
          v10 = v77;
          v12 = v68;
        }

        else
        {
          v25 = v23;
          if (v25)
          {
            goto LABEL_16;
          }

          v25 = +[STLog appInfo];
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            [STAMSClient _handleLoadMediaTaskForResult:v88 error:? withCompletionHandler:?];
          }

          v37 = 0;
        }

        goto LABEL_34;
      }

      v15 = +[STLog appInfo];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [STAMSClient _handleLoadMediaTaskForResult:v90 error:? withCompletionHandler:?];
      }

      v37 = 0;
LABEL_34:

      if (v37)
      {
        goto LABEL_58;
      }

      v39 = v11;
      v40 = [v39 objectForKeyedSubscript:@"attributes"];
      v41 = v40;
      if (v40)
      {
        v78 = v10;
        v42 = [v40 objectForKeyedSubscript:@"bundleId"];
        v80 = [v41 objectForKeyedSubscript:@"developerName"];
        v43 = [v39 objectForKeyedSubscript:@"attributes"];
        v44 = [v43 objectForKeyedSubscript:@"platformAttributes"];
        v45 = [v44 objectForKeyedSubscript:@"ios"];
        v46 = [v45 objectForKeyedSubscript:@"versionAttributes"];

        allKeys = [v46 allKeys];
        v48 = [allKeys objectAtIndexedSubscript:0];

        if (v48)
        {
          v49 = [v46 objectForKeyedSubscript:v48];
          v50 = [v49 objectForKeyedSubscript:@"shortName"];
          v51 = [v41 objectForKeyedSubscript:@"contentRatingsBySystem"];
          v52 = [v51 objectForKeyedSubscript:@"appsApple"];
          v76 = [v52 objectForKeyedSubscript:@"name"];

          v74 = v50;
          if (v42)
          {
            v53 = [v49 objectForKeyedSubscript:@"artwork"];
            v72 = [objc_alloc(MEMORY[0x1E698C9B0]) initWithDictionary:v53];
            v54 = [v72 URLWithSize:{72.0, 72.0}];
            if (v54)
            {
              v70 = v53;
              v55 = v50;
              v37 = [[STAppMetadata alloc] initWithBundleIdentifier:v42 displayName:v50 artworkURL:v54 vendorName:v80 ratingLabel:v76 software:@"software"];
              v56 = +[STLog appInfo];
              if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
              {
                *buf = 138543362;
                v101 = v55;
                _os_log_impl(&dword_1B831F000, v56, OS_LOG_TYPE_INFO, "STAppMetadata (global) parsing success for app name: %{public}@", buf, 0xCu);
              }

              v53 = v70;
            }

            else
            {
              v56 = +[STLog appInfo];
              if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
              {
                [STAMSClient _handleLoadMediaTaskForResult:v92 error:? withCompletionHandler:?];
              }

              v37 = 0;
            }

            handlerCopy = v64;
          }

          else
          {
            v53 = +[STLog appInfo];
            if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
            {
              [STAMSClient _handleLoadMediaTaskForResult:v94 error:? withCompletionHandler:?];
            }

            v37 = 0;
          }
        }

        else
        {
          v49 = +[STLog appInfo];
          if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
          {
            [STAMSClient _handleLoadMediaTaskForResult:v96 error:? withCompletionHandler:?];
          }

          v37 = 0;
        }

        v10 = v78;
      }

      else
      {
        v42 = +[STLog appInfo];
        if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
          [STAMSClient _handleLoadMediaTaskForResult:v98 error:? withCompletionHandler:?];
        }

        v37 = 0;
      }

      if (v37)
      {
LABEL_58:
        [v65 addObject:v37];
      }

      else
      {
        v37 = +[STLog appInfo];
        if (os_log_type_enabled(&v37->super, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v101 = v39;
          _os_log_error_impl(&dword_1B831F000, &v37->super, OS_LOG_TYPE_ERROR, "Error parsing response item: %@", buf, 0xCu);
        }
      }

      ++v10;
    }

    while (v67 != v10);
    v57 = [obj countByEnumeratingWithState:&v81 objects:v99 count:16];
    v67 = v57;
  }

  while (v57);
LABEL_68:

  v58 = [v65 copy];
  (handlerCopy)[2](handlerCopy, 0, v58);

  v59 = errorCopy;
LABEL_70:

  v60 = *MEMORY[0x1E69E9840];
}

+ (id)_makeGlobalQueryParamsFor:(id)for
{
  v23 = *MEMORY[0x1E69E9840];
  forCopy = for;
  v4 = objc_opt_new();
  [v4 setObject:@"shortName forKey:{allowedDistributorIds", @"extend"}];
  [v4 setObject:@"additionalVersions" forKey:@"with"];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = forCopy;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        if ([v10 versionIdentifier])
        {
          v11 = MEMORY[0x1E696AEC0];
          versionIdentifier = [v10 versionIdentifier];
        }

        else
        {
          if (![v10 betaVersionIdentifier])
          {
            continue;
          }

          v11 = MEMORY[0x1E696AEC0];
          versionIdentifier = [v10 betaVersionIdentifier];
        }

        v13 = [v11 stringWithFormat:@"%llu", versionIdentifier];
        if (v13)
        {
          v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"version[apps:%llu]", objc_msgSend(v10, "adamID")];
          [v4 setObject:v13 forKey:v14];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  v15 = [v4 copy];
  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

@end