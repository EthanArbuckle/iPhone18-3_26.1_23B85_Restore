@interface MABrainScanner
- (MABrainScanner)init;
- (void)locateAvailableUpdateBrain:(id)brain options:(id)options completion:(id)completion;
@end

@implementation MABrainScanner

- (MABrainScanner)init
{
  v13.receiver = self;
  v13.super_class = MABrainScanner;
  v2 = [(MABrainScanner *)&v13 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.MobileAssetBrain-scanner", v3);
    scanQueue = v2->_scanQueue;
    v2->_scanQueue = v4;

    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("com.apple.MobileAssetBrain-scanner-callback", v6);
    callbackQueue = v2->_callbackQueue;
    v2->_callbackQueue = v7;

    lastCheck = v2->_lastCheck;
    v2->_lastCheck = 0;

    lastAsset = v2->_lastAsset;
    v2->_lastAsset = 0;

    compatibilityVersion = v2->_compatibilityVersion;
    v2->_compatibilityVersion = 0;
  }

  return v2;
}

- (void)locateAvailableUpdateBrain:(id)brain options:(id)options completion:(id)completion
{
  brainCopy = brain;
  optionsCopy = options;
  completionCopy = completion;
  v11 = [optionsCopy objectForKeyedSubscript:@"restoreVersion"];
  if (v11)
  {
    restoreVersion = v11;
  }

  else
  {
    v13 = +[MABrainUpdater sharedInstance];
    info = [v13 info];
    v15 = [info objectForKeyedSubscript:@"MobileAssetProperties"];
    restoreVersion = [v15 objectForKeyedSubscript:@"RestoreVersion"];

    if (!restoreVersion)
    {
      v16 = +[SUCoreDevice sharedDevice];
      restoreVersion = [v16 restoreVersion];
    }
  }

  scanQueue = self->_scanQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __64__MABrainScanner_locateAvailableUpdateBrain_options_completion___block_invoke;
  block[3] = &unk_4B3BD8;
  block[4] = self;
  v23 = restoreVersion;
  v25 = brainCopy;
  v26 = completionCopy;
  v24 = optionsCopy;
  v18 = brainCopy;
  v19 = completionCopy;
  v20 = optionsCopy;
  v21 = restoreVersion;
  dispatch_async(scanQueue, block);
}

void __64__MABrainScanner_locateAvailableUpdateBrain_options_completion___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 40);
  if (!v2)
  {
    v2 = &off_4F7838;
  }

  v3 = v2;
  v4 = [v3 stringValue];
  v5 = +[SUCoreDevice sharedDevice];
  v6 = [v5 productType];

  v7 = +[NSNull null];
  v29[0] = v7;
  v8 = v6;
  if (!v6)
  {
    v8 = +[NSNull null];
  }

  v29[1] = v8;
  v9 = [NSArray arrayWithObjects:v29 count:2];
  v10 = [v9 mutableCopy];

  if (!v6)
  {
  }

  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = __64__MABrainScanner_locateAvailableUpdateBrain_options_completion___block_invoke_382;
  v23[3] = &unk_4B3B88;
  v23[4] = *(a1 + 32);
  v11 = v4;
  v24 = v11;
  v12 = v10;
  v25 = v12;
  v26 = *(a1 + 40);
  v27 = *(a1 + 48);
  v28 = *(a1 + 64);
  v13 = objc_retainBlock(v23);
  v14 = *(a1 + 32);
  v15 = *(v14 + 24);
  if (v15 && *(v14 + 32) && ([v15 timeIntervalSinceNow], v16 > -30.0))
  {
    (v13[2])(v13, 0, 0);
  }

  else
  {
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = __64__MABrainScanner_locateAvailableUpdateBrain_options_completion___block_invoke_3;
    v17[3] = &unk_4B3BB0;
    v18 = *(a1 + 56);
    v19 = v11;
    v20 = *(a1 + 40);
    v21 = *(a1 + 48);
    v22 = v13;
    [MAAsset cancelCatalogDownload:@"com.apple.MobileAsset.MobileAssetBrain" then:v17];
  }
}

void __64__MABrainScanner_locateAvailableUpdateBrain_options_completion___block_invoke_382(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
    v29[0] = NSDebugDescriptionErrorKey;
    v6 = [NSString stringWithFormat:@"MobileAssetBrain catalog download failed"];
    v29[1] = NSUnderlyingErrorKey;
    v30[0] = v6;
    v30[1] = v5;
    v7 = [NSDictionary dictionaryWithObjects:v30 forKeys:v29 count:2];
    v8 = [NSError errorWithDomain:@"MobileAssetBrainErrorDomain" code:121 userInfo:v7];

    v9 = *(*(a1 + 32) + 16);
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = __64__MABrainScanner_locateAvailableUpdateBrain_options_completion___block_invoke_2_406;
    v20[3] = &unk_4B31D8;
    v10 = &v22;
    v11 = *(a1 + 72);
    v12 = &v21;
    v21 = v8;
    v22 = v11;
    v13 = v8;
    dispatch_async(v9, v20);
LABEL_5:

    goto LABEL_6;
  }

  v14 = +[NSDate now];
  v15 = *(a1 + 32);
  v16 = *(v15 + 24);
  *(v15 + 24) = v14;

  v17 = [[MAAssetQuery alloc] initWithType:@"com.apple.MobileAsset.MobileAssetBrain" andPurpose:0];
  v13 = v17;
  if (v17)
  {
    [v17 addKeyValuePair:@"_CompatibilityVersion" with:*(a1 + 40)];
    [v13 addKeyValueArray:@"SupportedDevices" with:*(a1 + 48)];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = __64__MABrainScanner_locateAvailableUpdateBrain_options_completion___block_invoke_2;
    v23[3] = &unk_4B3B60;
    v10 = &v24;
    v13 = v13;
    v24 = v13;
    v12 = &v25;
    v25 = *(a1 + 56);
    v18 = *(a1 + 64);
    v19 = *(a1 + 32);
    v26 = v18;
    v27 = v19;
    v28 = *(a1 + 72);
    [v13 queryMetaDataWithError:v23];

    goto LABEL_5;
  }

LABEL_6:
}

void __64__MABrainScanner_locateAvailableUpdateBrain_options_completion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (!v4)
  {
    v14 = [*(a1 + 32) results];
    v15 = [v14 count];

    if (!v15)
    {
      goto LABEL_44;
    }

    v16 = [*(a1 + 32) results];
    v6 = [v16 objectAtIndexedSubscript:0];

    v17 = *(a1 + 40);
    v18 = [v6 attributes];
    v19 = [v18 objectForKeyedSubscript:@"RestoreVersion"];

    if (v17)
    {
      v20 = [[SUCoreRestoreVersion alloc] initWithRestoreVersion:v17];
      if (v19)
      {
LABEL_9:
        v21 = [[SUCoreRestoreVersion alloc] initWithRestoreVersion:v19];
        v22 = v21;
        if (v20 && v21)
        {
          if ([v20 isComparable:v21])
          {
            v23 = [v20 compare:v22];
            if (v23 == &dword_0 + 1 || !v23 && !MABrainUtilityAllowSameVersionBrain())
            {
              goto LABEL_30;
            }
          }

          else if ((MABrainUtilityAllowCrossBuildGroupBrain() & 1) == 0)
          {
LABEL_30:

            v6 = 0;
            goto LABEL_31;
          }
        }

LABEL_18:
        if (v6)
        {
          v24 = [*(a1 + 48) objectForKeyedSubscript:@"requiredFeatures"];
          v25 = v24;
          if (v24 && [v24 count])
          {
            v26 = [v6 attributes];
            v27 = [v26 objectForKeyedSubscript:@"SupportedFeatures"];

            v28 = _MADLog(@"Brain");
            v29 = v28;
            if (v27)
            {
              if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v48 = v27;
                _os_log_impl(&dword_0, v29, OS_LOG_TYPE_DEFAULT, "[MAB] New brain features: %@", buf, 0xCu);
              }

              v41 = 0;
              v42 = 0;
              v35 = v27;
              v30 = [v25 areRequirementsMetByBrainFeatures:v27 missingRequirements:&v42 error:&v41];
              v36 = v42;
              v5 = v41;
              v31 = _MADLog(@"Brain");
              v32 = v31;
              if (v30)
              {
                if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&dword_0, v32, OS_LOG_TYPE_DEFAULT, "[MAB] New brain meets asset requirements - going forward with the update", buf, 2u);
                }

                v27 = v35;
                v33 = v32;
              }

              else
              {
                if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v48 = v36;
                  _os_log_impl(&dword_0, v32, OS_LOG_TYPE_ERROR, "[MAB] New brain doesn't meet requirements: %@", buf, 0xCu);
                }

                v33 = v6;
                v6 = 0;
                v27 = v35;
              }

              v34 = v36;
            }

            else
            {
              if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v48 = v25;
                _os_log_impl(&dword_0, v29, OS_LOG_TYPE_ERROR, "[MAB] Available brain doesn't have any declared features.  Asset requires: %@", buf, 0xCu);
              }

              v5 = 0;
              v33 = v29;
              v34 = v6;
              v6 = 0;
            }
          }

          else
          {
            v5 = 0;
          }

          goto LABEL_41;
        }

LABEL_31:
        v5 = 0;
LABEL_41:

        if (v5)
        {
          goto LABEL_3;
        }

        if (v6)
        {
          v9 = 0;
          goto LABEL_5;
        }

LABEL_44:
        v43 = NSDebugDescriptionErrorKey;
        v7 = [NSString stringWithFormat:@"No MobileAssetBrain update was found"];
        v44 = v7;
        v8 = [NSDictionary dictionaryWithObjects:&v44 forKeys:&v43 count:1];
        v9 = [NSError errorWithDomain:@"MobileAssetBrainErrorDomain" code:122 userInfo:v8];
        v6 = 0;
        goto LABEL_4;
      }
    }

    else
    {
      v20 = 0;
      if (v19)
      {
        goto LABEL_9;
      }
    }

    v22 = 0;
    goto LABEL_18;
  }

  v5 = v4;
  v6 = 0;
LABEL_3:
  v45[0] = NSDebugDescriptionErrorKey;
  v7 = [NSString stringWithFormat:@"MobileAssetBrain scan failed"];
  v45[1] = NSUnderlyingErrorKey;
  v46[0] = v7;
  v46[1] = v5;
  v8 = [NSDictionary dictionaryWithObjects:v46 forKeys:v45 count:2];
  v9 = [NSError errorWithDomain:@"MobileAssetBrainErrorDomain" code:120 userInfo:v8];

LABEL_4:
LABEL_5:
  objc_storeStrong((*(a1 + 56) + 32), v6);
  v10 = *(*(a1 + 56) + 16);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __64__MABrainScanner_locateAvailableUpdateBrain_options_completion___block_invoke_400;
  block[3] = &unk_4B3098;
  v11 = *(a1 + 64);
  v39 = v9;
  v40 = v11;
  v38 = v6;
  v12 = v9;
  v13 = v6;
  dispatch_async(v10, block);
}

void __64__MABrainScanner_locateAvailableUpdateBrain_options_completion___block_invoke_3(uint64_t a1)
{
  v2 = MABrainUtilityAllowSameVersionBrain();
  v12 = objc_alloc_init(MAMsuDownloadOptions);
  v3 = objc_alloc_init(NSMutableDictionary);
  [v12 setAdditionalServerParams:v3];

  [v12 setSessionId:*(a1 + 32)];
  [v12 setDiscretionary:0];
  if ((objc_opt_respondsToSelector() & 1) != 0 && __isPlatformVersionAtLeast(2, 17, 0, 0))
  {
    [v12 setDisableUI:1];
  }

  [v12 setAllowsCellularAccess:1];
  [v12 setAllowsExpensiveAccess:1];
  [v12 setRequiresPowerPluggedIn:0];
  [v12 setCanUseLocalCacheServer:0];
  [v12 setPrefersInfraWiFi:1];
  [v12 setLiveServerCatalogOnly:0];
  [v12 setTimeoutIntervalForResource:90];
  v4 = *(a1 + 40);
  v5 = [v12 additionalServerParams];
  [v5 setObject:v4 forKeyedSubscript:@"CompatibilityVersion"];

  v6 = *(a1 + 48);
  v7 = [v12 additionalServerParams];
  [v7 setObject:v6 forKeyedSubscript:@"RestoreVersion"];

  v8 = @"false";
  if (v2)
  {
    v8 = @"true";
  }

  v9 = v8;
  v10 = [v12 additionalServerParams];
  [v10 setObject:v9 forKeyedSubscript:@"AllowSameRestoreVersion"];

  v11 = [*(a1 + 56) objectForKeyedSubscript:@"dawHeader"];
  [v12 setDownloadAuthorizationHeader:v11];

  [MAAsset startCatalogDownload:@"com.apple.MobileAsset.MobileAssetBrain" options:v12 completionWithError:*(a1 + 64)];
}

@end