@interface SUSpace
+ (BOOL)_isOffloadUnusedAppsOn;
+ (id)hasSufficientSpaceWithOptions:(id)options error:(id *)error;
+ (unint64_t)currentFreeSpaceForVolume:(id)volume;
+ (unint64_t)maxPreSUStagingOptionalSpaceForUpdate:(id)update;
+ (void)_checkPurgeableAppOffload:(id)offload results:(id)results completion:(id)completion;
+ (void)_checkPurgeableCacheDelete:(id)delete results:(id)results completion:(id)completion;
+ (void)_checkPurgeableMASuspend:(id)suspend results:(id)results completion:(id)completion;
+ (void)_purgeAppOffloadIfNeeded:(BOOL)needed neededBytes:(unint64_t)bytes urgency:(int64_t)urgency completion:(id)completion;
+ (void)_purgeMASuspendIfNeeded:(BOOL)needed neededBytes:(unint64_t)bytes completion:(id)completion;
+ (void)_runGetOffTestingIfNecessary:(BOOL)necessary handler:(id)handler;
+ (void)_showPurgingAlertIfNecessary:(id)necessary results:(id)results completion:(id)completion;
+ (void)hasSufficientSpaceWithOptions:(id)options withCompletion:(id)completion;
+ (void)makeRoomForUpdate:(id)update completion:(id)completion;
+ (void)mobileAssetResumeFromSuspension;
@end

@implementation SUSpace

+ (void)_checkPurgeableCacheDelete:(id)delete results:(id)results completion:(id)completion
{
  deleteCopy = delete;
  resultsCopy = results;
  completionCopy = completion;
  if ([deleteCopy enableCacheDelete])
  {
    v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@] Purgeable: enabled", @"CacheDelete"];
    SULogInfo(@"[SPACE] %s: %@", v11, v12, v13, v14, v15, v16, v17, "+[SUSpace _checkPurgeableCacheDelete:results:completion:]");

    v18 = MEMORY[0x277D641E8];
    neededBytes = [deleteCopy neededBytes];
    cacheDeleteUrgency = [deleteCopy cacheDeleteUrgency];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __57__SUSpace__checkPurgeableCacheDelete_results_completion___block_invoke;
    v30[3] = &unk_279CAB020;
    selfCopy = self;
    v31 = resultsCopy;
    v32 = deleteCopy;
    v33 = completionCopy;
    [v18 checkPurgeableSpaceCacheDelete:neededBytes cacheDeleteUrgency:cacheDeleteUrgency withCompletionQueue:0 completion:v30];
  }

  else
  {
    v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@] Purgeable: disabled", @"CacheDelete"];
    SULogInfo(@"[SPACE] %s: %@", v21, v22, v23, v24, v25, v26, v27, "+[SUSpace _checkPurgeableCacheDelete:results:completion:]");

    [resultsCopy setAdditionalBytesRequired:{objc_msgSend(deleteCopy, "neededBytes")}];
    [resultsCopy setHasSufficientFreeSpace:{objc_msgSend(resultsCopy, "additionalBytesRequired") == 0}];
    (*(completionCopy + 2))(completionCopy, 0);
  }
}

void __57__SUSpace__checkPurgeableCacheDelete_results_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = *(a1 + 56);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = a4;
  v19 = [v7 _processForPhase:@"CacheDelete" results:v8 neededBytes:objc_msgSend(v9 haveEnoushSpace:"neededBytes") availableBytes:a2 error:{a3, v10}];

  v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@] Purgeable: haveEnoughSpace = %d, needed = %llu, available = %llu, error = %@", @"CacheDelete", a2, objc_msgSend(*(a1 + 40), "neededBytes"), a3, v19];
  SULogInfo(@"[SPACE] %s: %@", v11, v12, v13, v14, v15, v16, v17, "+[SUSpace _checkPurgeableCacheDelete:results:completion:]_block_invoke");

  (*(*(a1 + 48) + 16))();
}

+ (BOOL)_isOffloadUnusedAppsOn
{
  v2 = CFPreferencesCopyValue(@"OffloadUnusedApps", @"com.apple.appstored", @"mobile", *MEMORY[0x277CBF010]);
  v3 = v2;
  v4 = @"off";
  if (v2)
  {
    Value = CFBooleanGetValue(v2);
    CFRelease(v3);
    LOBYTE(v3) = Value != 0;
    if (Value)
    {
      v4 = @"on";
    }
  }

  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"'Offload Unused Apps' is %@", v4];
  SULogInfo(@"[SPACE] %s: %@", v6, v7, v8, v9, v10, v11, v12, "+[SUSpace _isOffloadUnusedAppsOn]");

  return v3;
}

+ (void)_checkPurgeableAppOffload:(id)offload results:(id)results completion:(id)completion
{
  offloadCopy = offload;
  resultsCopy = results;
  completionCopy = completion;
  enableAppOffload = [offloadCopy enableAppOffload];
  if ([resultsCopy needsCacheDelete])
  {
    _isOffloadUnusedAppsOn = [self _isOffloadUnusedAppsOn];
  }

  else
  {
    _isOffloadUnusedAppsOn = 0;
  }

  if (enableAppOffload)
  {
    v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@] Purgeable: enabled", @"AppOffload"];
    SULogInfo(@"[SPACE] %s: %@", v13, v14, v15, v16, v17, v18, v19, "+[SUSpace _checkPurgeableAppOffload:results:completion:]");

    v20 = MEMORY[0x277D641E8];
    neededBytes = [offloadCopy neededBytes];
    appOffloadUrgency = [offloadCopy appOffloadUrgency];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __56__SUSpace__checkPurgeableAppOffload_results_completion___block_invoke;
    v32[3] = &unk_279CAB020;
    selfCopy = self;
    v33 = resultsCopy;
    v34 = offloadCopy;
    v35 = completionCopy;
    [v20 checkPurgeableSpaceOffloadApps:neededBytes cacheDeleteUrgency:appOffloadUrgency onlyAvailableBySkippingLaunchCheck:_isOffloadUnusedAppsOn withCompletionQueue:0 completion:v32];
  }

  else
  {
    v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@] Purgeable: disabled", @"AppOffload"];
    SULogInfo(@"[SPACE] %s: %@", v23, v24, v25, v26, v27, v28, v29, "+[SUSpace _checkPurgeableAppOffload:results:completion:]");

    [resultsCopy setAdditionalBytesRequired:{objc_msgSend(offloadCopy, "neededBytes")}];
    [resultsCopy setHasSufficientFreeSpace:{objc_msgSend(resultsCopy, "additionalBytesRequired") == 0}];
    (*(completionCopy + 2))(completionCopy, 0);
  }
}

void __56__SUSpace__checkPurgeableAppOffload_results_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = *(a1 + 56);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = a4;
  v19 = [v7 _processForPhase:@"AppOffload" results:v8 neededBytes:objc_msgSend(v9 haveEnoushSpace:"neededBytes") availableBytes:a2 error:{a3, v10}];

  v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@] Purgeable: haveEnoughSpace = %d, needed = %llu, available = %llu, error = %@", @"AppOffload", a2, objc_msgSend(*(a1 + 40), "neededBytes"), a3, v19];
  SULogInfo(@"[SPACE] %s: %@", v11, v12, v13, v14, v15, v16, v17, "+[SUSpace _checkPurgeableAppOffload:results:completion:]_block_invoke");

  (*(*(a1 + 48) + 16))();
}

+ (void)_checkPurgeableMASuspend:(id)suspend results:(id)results completion:(id)completion
{
  suspendCopy = suspend;
  resultsCopy = results;
  completionCopy = completion;
  if ([suspendCopy enableMobileAssetSuspend])
  {
    v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@] Purgeable: enabled", @"MobileAssetSuspend"];
    SULogInfo(@"[SPACE] %s: %@", v11, v12, v13, v14, v15, v16, v17, "+[SUSpace _checkPurgeableMASuspend:results:completion:]");

    v18 = MEMORY[0x277D641E8];
    neededBytes = [suspendCopy neededBytes];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __55__SUSpace__checkPurgeableMASuspend_results_completion___block_invoke;
    v29[3] = &unk_279CAB020;
    selfCopy = self;
    v30 = resultsCopy;
    v31 = suspendCopy;
    v32 = completionCopy;
    [v18 mobileAssetEstimateEvictable:neededBytes completionQueue:0 completion:v29];
  }

  else
  {
    v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@] Purgeable: disabled", @"MobileAssetSuspend"];
    SULogInfo(@"[SPACE] %s: %@", v20, v21, v22, v23, v24, v25, v26, "+[SUSpace _checkPurgeableMASuspend:results:completion:]");

    [resultsCopy setAdditionalBytesRequired:{objc_msgSend(suspendCopy, "neededBytes")}];
    [resultsCopy setHasSufficientFreeSpace:{objc_msgSend(resultsCopy, "additionalBytesRequired") == 0}];
    (*(completionCopy + 2))(completionCopy, 0);
  }
}

void __55__SUSpace__checkPurgeableMASuspend_results_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = *(a1 + 56);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = a4;
  v19 = [v7 _processForPhase:@"MobileAssetSuspend" results:v8 neededBytes:objc_msgSend(v9 haveEnoushSpace:"neededBytes") availableBytes:a2 error:{a3, v10}];

  v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@] Purgeable: haveEnoughSpace = %d, needed = %llu, available = %llu, error = %@", @"MobileAssetSuspend", a2, objc_msgSend(*(a1 + 40), "neededBytes"), a3, v19];
  SULogInfo(@"[SPACE] %s: %@", v11, v12, v13, v14, v15, v16, v17, "+[SUSpace _checkPurgeableMASuspend:results:completion:]_block_invoke");

  (*(*(a1 + 48) + 16))();
}

+ (void)hasSufficientSpaceWithOptions:(id)options withCompletion:(id)completion
{
  optionsCopy = options;
  completionCopy = completion;
  optionsCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"options = %@", optionsCopy];
  SULogDebug(@"[SPACE] %s: %@", v8, v9, v10, v11, v12, v13, v14, "+[SUSpace hasSufficientSpaceWithOptions:withCompletion:]");

  if (completionCopy)
  {
    mEMORY[0x277D64400] = [MEMORY[0x277D64400] sharedCore];
    completionQueue = [optionsCopy completionQueue];
    v17 = [mEMORY[0x277D64400] selectCompletionQueue:completionQueue];

    v85[0] = MEMORY[0x277D85DD0];
    v85[1] = 3221225472;
    v85[2] = __56__SUSpace_hasSufficientSpaceWithOptions_withCompletion___block_invoke;
    v85[3] = &unk_279CAB070;
    v18 = v17;
    v86 = v18;
    v87 = completionCopy;
    v19 = MEMORY[0x26D668B30](v85);
    v20 = objc_alloc_init(SUSpaceCheckResults);
    if (optionsCopy)
    {
      if (+[SUUtility currentReleaseTypeIsInternal](SUUtility, "currentReleaseTypeIsInternal") && (+[SUPreferences sharedInstance](SUPreferences, "sharedInstance"), v21 = objc_claimAutoreleasedReturnValue(), v22 = [v21 useSpaceOverrides], v21, v22))
      {
        if ([optionsCopy enableCacheDelete])
        {
          v23 = +[SUPreferences sharedInstance];
          -[SUSpaceCheckResults setNeedsCacheDelete:](v20, "setNeedsCacheDelete:", [v23 spaceOverrideNeedCacheDelete]);
        }

        else
        {
          [(SUSpaceCheckResults *)v20 setNeedsCacheDelete:0];
        }

        if ([optionsCopy enableAppOffload])
        {
          v62 = +[SUPreferences sharedInstance];
          -[SUSpaceCheckResults setNeedsAppOffload:](v20, "setNeedsAppOffload:", [v62 spaceOverrideNeedAppOffload]);
        }

        else
        {
          [(SUSpaceCheckResults *)v20 setNeedsAppOffload:0];
        }

        if ([optionsCopy enableMobileAssetSuspend])
        {
          v63 = +[SUPreferences sharedInstance];
          -[SUSpaceCheckResults setNeedsMobileAssetSuspend:](v20, "setNeedsMobileAssetSuspend:", [v63 spaceOverrideNeedMobileAssetSuspend]);
        }

        else
        {
          [(SUSpaceCheckResults *)v20 setNeedsMobileAssetSuspend:0];
        }

        v64 = +[SUPreferences sharedInstance];
        spaceOverrideHaveEnoughSpace = [v64 spaceOverrideHaveEnoughSpace];

        if (spaceOverrideHaveEnoughSpace)
        {
          [(SUSpaceCheckResults *)v20 setHasSufficientFreeSpace:1];
          [(SUSpaceCheckResults *)v20 setAdditionalBytesRequired:0];
          v66 = 0;
        }

        else
        {
          [(SUSpaceCheckResults *)v20 setHasSufficientFreeSpace:0];
          [(SUSpaceCheckResults *)v20 setAdditionalBytesRequired:10485760];
          v66 = [SUUtility errorWithCode:109];
        }

        v79 = [MEMORY[0x277CCACA8] stringWithFormat:@"[PREFERENCES] Spoofing with result: %@", v20, optionsCopy];
        SULogDebug(@"[SPACE] %s: %@", v67, v68, v69, v70, v71, v72, v73, "+[SUSpace hasSufficientSpaceWithOptions:withCompletion:]");

        (v19)[2](v19, v20, v66);
      }

      else
      {
        v31 = [optionsCopy copy];

        v32 = [self currentFreeSpaceForVolume:@"/"];
        v75 = [MEMORY[0x277CCACA8] stringWithFormat:@"Current free space without purging: %llu", v32, optionsCopy];
        SULogInfo(@"[SPACE] %s: %@", v33, v34, v35, v36, v37, v38, v39, "+[SUSpace hasSufficientSpaceWithOptions:withCompletion:]");

        v76 = [MEMORY[0x277CCACA8] stringWithFormat:@"Needed bytes: %llu", objc_msgSend(v31, "neededBytes"), v75];
        SULogInfo(@"[SPACE] %s: %@", v40, v41, v42, v43, v44, v45, v46, "+[SUSpace hasSufficientSpaceWithOptions:withCompletion:]");

        if (v32 >= [v31 neededBytes])
        {
          v78 = [MEMORY[0x277CCACA8] stringWithFormat:@"device already has enough free space"];
          SULogInfo(@"[SPACE] %s: %@", v55, v56, v57, v58, v59, v60, v61, "+[SUSpace hasSufficientSpaceWithOptions:withCompletion:]");

          [(SUSpaceCheckResults *)v20 setHasSufficientFreeSpace:1];
          (v19)[2](v19, v20, 0);
          optionsCopy = v31;
        }

        else
        {
          [v31 setNeededBytes:{objc_msgSend(v31, "neededBytes") - v32}];
          v80[0] = MEMORY[0x277D85DD0];
          v80[1] = 3221225472;
          v80[2] = __56__SUSpace_hasSufficientSpaceWithOptions_withCompletion___block_invoke_3;
          v80[3] = &unk_279CAB0C0;
          v81 = v20;
          v83 = v19;
          optionsCopy = v31;
          v82 = optionsCopy;
          selfCopy = self;
          [self _checkPurgeableCacheDelete:optionsCopy results:v81 completion:v80];
        }
      }
    }

    else
    {
      v77 = [MEMORY[0x277CCACA8] stringWithFormat:@"no options provided"];
      SULogError(@"[SPACE] %s: %@", v47, v48, v49, v50, v51, v52, v53, "+[SUSpace hasSufficientSpaceWithOptions:withCompletion:]");

      v54 = [SUUtility errorWithCode:22];
      (v19)[2](v19, v20, v54);

      optionsCopy = 0;
    }
  }

  else
  {
    v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"No completion provided"];
    SULogError(@"[SPACE] %s: %@", v24, v25, v26, v27, v28, v29, v30, "+[SUSpace hasSufficientSpaceWithOptions:withCompletion:]");
  }
}

void __56__SUSpace_hasSufficientSpaceWithOptions_withCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (([v5 hasSufficientFreeSpace] & 1) == 0)
  {
    v7 = [MEMORY[0x277CCA9B8] spaceErrorWithAdditionalSpaceRequired:objc_msgSend(v5 originalError:{"additionalBytesRequired"), v6}];

    v6 = v7;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__SUSpace_hasSufficientSpaceWithOptions_withCompletion___block_invoke_2;
  block[3] = &unk_279CAB048;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v14 = v6;
  v15 = v9;
  v13 = v5;
  v10 = v6;
  v11 = v5;
  dispatch_async(v8, block);
}

void __56__SUSpace_hasSufficientSpaceWithOptions_withCompletion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3 || [*(a1 + 32) hasSufficientFreeSpace])
  {
    v4 = *(a1 + 32);
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    [*(a1 + 40) setNeededBytes:{objc_msgSend(*(a1 + 32), "additionalBytesRequired")}];
    v5 = *(a1 + 56);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __56__SUSpace_hasSufficientSpaceWithOptions_withCompletion___block_invoke_4;
    v12[3] = &unk_279CAB0C0;
    v6 = *(a1 + 40);
    v7 = *(a1 + 32);
    v8 = *(a1 + 48);
    v9 = *(a1 + 40);
    *&v10 = v7;
    *(&v10 + 1) = v9;
    *&v11 = v8;
    *(&v11 + 1) = *(a1 + 56);
    v13 = v10;
    v14 = v11;
    [v5 _checkPurgeableAppOffload:v6 results:v7 completion:v12];
  }
}

void __56__SUSpace_hasSufficientSpaceWithOptions_withCompletion___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3 || [*(a1 + 32) hasSufficientFreeSpace])
  {
    v4 = *(a1 + 32);
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    [*(a1 + 40) setNeededBytes:{objc_msgSend(*(a1 + 32), "additionalBytesRequired")}];
    v6 = *(a1 + 32);
    v5 = *(a1 + 40);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __56__SUSpace_hasSufficientSpaceWithOptions_withCompletion___block_invoke_5;
    v8[3] = &unk_279CAB098;
    v7 = *(a1 + 56);
    v10 = *(a1 + 48);
    v9 = *(a1 + 32);
    [v7 _checkPurgeableMASuspend:v5 results:v6 completion:v8];
  }
}

+ (id)hasSufficientSpaceWithOptions:(id)options error:(id *)error
{
  optionsCopy = options;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__2;
  v35 = __Block_byref_object_dispose__2;
  v36 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__2;
  v29 = __Block_byref_object_dispose__2;
  v30 = 0;
  v7 = dispatch_semaphore_create(0);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __47__SUSpace_hasSufficientSpaceWithOptions_error___block_invoke;
  v21[3] = &unk_279CAB0E8;
  v23 = &v31;
  v24 = &v25;
  v8 = v7;
  v22 = v8;
  [self hasSufficientSpaceWithOptions:optionsCopy withCompletion:v21];
  v9 = dispatch_time(0, 300000000000);
  if (dispatch_semaphore_wait(v8, v9))
  {
    v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"call to hasSufficientSpaceWithOptions has timed out"];
    SULogError(@"[SPACE] %s: %@", v10, v11, v12, v13, v14, v15, v16, "+[SUSpace hasSufficientSpaceWithOptions:error:]");

    v17 = objc_opt_new();
    v18 = [SUUtility errorWithCode:110];
    if (!error)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v17 = v32[5];
  v18 = v26[5];
  if (error)
  {
LABEL_3:
    v18 = v18;
    *error = v18;
  }

LABEL_4:

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v31, 8);

  return v17;
}

void __47__SUSpace_hasSufficientSpaceWithOptions_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

+ (void)_showPurgingAlertIfNecessary:(id)necessary results:(id)results completion:(id)completion
{
  necessaryCopy = necessary;
  resultsCopy = results;
  completionCopy = completion;
  if (([resultsCopy needsMobileAssetSuspend] & 1) != 0 || objc_msgSend(resultsCopy, "needsAppOffload"))
  {
    needsMobileAssetSuspend = [resultsCopy needsMobileAssetSuspend];
    v11 = @"Apps";
    if (needsMobileAssetSuspend)
    {
      v11 = @"Apps and AI";
    }

    v12 = MEMORY[0x277CCACA8];
    v13 = v11;
    v24 = [v12 stringWithFormat:@"Device needs to offload %@ to make suffience space for download", v13];
    SULogInfo(@"[SPACE] %s: %@", v14, v15, v16, v17, v18, v19, v20, "+[SUSpace _showPurgingAlertIfNecessary:results:completion:]");

    v21 = +[SUAlertPresentationManager sharedInstance];
    [v21 dismissAlertsOfClass:objc_opt_class() animated:1];
    v22 = [SUAppPurgingAlertItem alloc];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __59__SUSpace__showPurgingAlertIfNecessary_results_completion___block_invoke;
    v25[3] = &unk_279CAB110;
    v25[4] = v13;
    v26 = completionCopy;
    v23 = -[SUAppPurgingAlertItem initWithHandler:bytesNeeded:includingAppleIntelligence:](v22, "initWithHandler:bytesNeeded:includingAppleIntelligence:", v25, [necessaryCopy neededBytes], objc_msgSend(resultsCopy, "needsMobileAssetSuspend"));
    [v21 presentAlert:v23 animated:1];
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }
}

void __59__SUSpace__showPurgingAlertIfNecessary_results_completion___block_invoke(uint64_t a1, int a2)
{
  v3 = *(a1 + 32);
  if (a2 == 1)
  {
    v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"Offload %@ accepted by user", *(a1 + 32)];
    SULogInfo(@"[SPACE] %s: %@", v4, v5, v6, v7, v8, v9, v10, "+[SUSpace _showPurgingAlertIfNecessary:results:completion:]_block_invoke");

    v11 = *(*(a1 + 40) + 16);

    v11();
  }

  else
  {
    v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"Offload %@ declined by user", *(a1 + 32)];
    SULogInfo(@"[SPACE] %s: %@", v12, v13, v14, v15, v16, v17, v18, "+[SUSpace _showPurgingAlertIfNecessary:results:completion:]_block_invoke");

    v19 = *(a1 + 40);
    v22 = [SUUtility errorWithCode:44];
    (*(v19 + 16))(v19, v22);
  }
}

void __68__SUSpace__purgeCacheDeleteIfNeeded_neededBytes_urgency_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = [*(a1 + 40) _checkPurgeResultForPhase:@"CacheDelete" neededBytes:*(a1 + 48) haveEnoushSpace:a2 availableBytes:a3 error:a4];
  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@] Purge: haveEnoughSpace = %d, needed = %llu, available = %llu, error = %@", @"CacheDelete", a2, *(a1 + 48), a3, v15];
  SULogInfo(@"[SPACE] %s: %@", v7, v8, v9, v10, v11, v12, v13, "+[SUSpace _purgeCacheDeleteIfNeeded:neededBytes:urgency:completion:]_block_invoke");

  (*(*(a1 + 32) + 16))();
}

+ (void)_purgeAppOffloadIfNeeded:(BOOL)needed neededBytes:(unint64_t)bytes urgency:(int64_t)urgency completion:(id)completion
{
  neededCopy = needed;
  completionCopy = completion;
  v11 = completionCopy;
  if (neededCopy)
  {
    v12 = MEMORY[0x277D641E8];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __67__SUSpace__purgeAppOffloadIfNeeded_neededBytes_urgency_completion___block_invoke;
    v21[3] = &unk_279CAB138;
    selfCopy = self;
    bytesCopy = bytes;
    v22 = completionCopy;
    [v12 offloadAppsPurge:bytes cacheDeleteUrgency:urgency withCompletionQueue:0 completion:v21];
  }

  else
  {
    v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@] Purge: not needed", @"AppOffload"];
    SULogInfo(@"[SPACE] %s: %@", v13, v14, v15, v16, v17, v18, v19, "+[SUSpace _purgeAppOffloadIfNeeded:neededBytes:urgency:completion:]");

    (v11)[2](v11, bytes == 0, 0, 0);
  }
}

void __67__SUSpace__purgeAppOffloadIfNeeded_neededBytes_urgency_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = [*(a1 + 40) _checkPurgeResultForPhase:@"AppOffload" neededBytes:*(a1 + 48) haveEnoushSpace:a2 availableBytes:a3 error:a4];
  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@] Purge: haveEnoughSpace = %d, needed = %llu, available = %llu, error = %@", @"AppOffload", a2, *(a1 + 48), a3, v15];
  SULogInfo(@"[SPACE] %s: %@", v7, v8, v9, v10, v11, v12, v13, "+[SUSpace _purgeAppOffloadIfNeeded:neededBytes:urgency:completion:]_block_invoke");

  (*(*(a1 + 32) + 16))();
}

+ (void)_purgeMASuspendIfNeeded:(BOOL)needed neededBytes:(unint64_t)bytes completion:(id)completion
{
  neededCopy = needed;
  completionCopy = completion;
  v9 = completionCopy;
  if (neededCopy)
  {
    v10 = MEMORY[0x277D641E8];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __58__SUSpace__purgeMASuspendIfNeeded_neededBytes_completion___block_invoke;
    v19[3] = &unk_279CAB138;
    selfCopy = self;
    bytesCopy = bytes;
    v20 = completionCopy;
    [v10 mobileAssetSuspend:bytes completionQueue:0 completion:v19];
  }

  else
  {
    v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@] Purge: not needed", @"MobileAssetSuspend"];
    SULogInfo(@"[SPACE] %s: %@", v11, v12, v13, v14, v15, v16, v17, "+[SUSpace _purgeMASuspendIfNeeded:neededBytes:completion:]");

    (v9)[2](v9, bytes == 0, 0, 0);
  }
}

void __58__SUSpace__purgeMASuspendIfNeeded_neededBytes_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = [*(a1 + 40) _checkPurgeResultForPhase:@"MobileAssetSuspend" neededBytes:*(a1 + 48) haveEnoushSpace:a2 availableBytes:a3 error:a4];
  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@] Purge: haveEnoughSpace = %d, needed = %llu, available = %llu, error = %@", @"MobileAssetSuspend", a2, *(a1 + 48), a3, v15];
  SULogInfo(@"[SPACE] %s: %@", v7, v8, v9, v10, v11, v12, v13, "+[SUSpace _purgeMASuspendIfNeeded:neededBytes:completion:]_block_invoke");

  (*(*(a1 + 32) + 16))();
}

+ (void)mobileAssetResumeFromSuspension
{
  if (+[SUUtility currentReleaseTypeIsInternal](SUUtility, "currentReleaseTypeIsInternal") && (+[SUPreferences sharedInstance](SUPreferences, "sharedInstance"), v2 = objc_claimAutoreleasedReturnValue(), v3 = [v2 useSpaceOverrides], v2, v3))
  {
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"[PREFERENCES] Using space overrides skip ma resuming"];;
    SULogDebug(@"[SPACE] %s: %@", v4, v5, v6, v7, v8, v9, v10, "+[SUSpace mobileAssetResumeFromSuspension]");
  }

  else
  {
    v11 = MEMORY[0x277D641E8];

    [v11 mobileAssetResumeWithCompletionQueue:0 completion:&__block_literal_global_3];
  }
}

void __42__SUSpace_mobileAssetResumeFromSuspension__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"MA resume: success = %d, error = %@", a2, a3];
  SULogInfo(@"[SPACE] %s: %@", v3, v4, v5, v6, v7, v8, v9, "+[SUSpace mobileAssetResumeFromSuspension]_block_invoke");
}

+ (void)_runGetOffTestingIfNecessary:(BOOL)necessary handler:(id)handler
{
  necessaryCopy = necessary;
  handlerCopy = handler;
  if (!necessaryCopy || !+[SUUtility currentReleaseTypeIsInternal])
  {
    goto LABEL_7;
  }

  v6 = [SUUtility randomIntWithMinVal:1 maxVal:100];
  v7 = +[SUPreferences sharedInstance];
  if (v6 > [v7 testGetOffSampleRate])
  {

LABEL_7:
    handlerCopy[2](handlerCopy);
    goto LABEL_8;
  }

  wasEverAvailable = [MEMORY[0x277D0E530] wasEverAvailable];

  if (!wasEverAvailable)
  {
    goto LABEL_7;
  }

  v9 = MEMORY[0x277D641E8];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __48__SUSpace__runGetOffTestingIfNecessary_handler___block_invoke;
  v10[3] = &unk_279CAB180;
  v11 = handlerCopy;
  [v9 mobileAssetEstimateEvictable:0x2540BE3FFLL completionQueue:0 completion:v10];

LABEL_8:
}

void __48__SUSpace__runGetOffTestingIfNecessary_handler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v5 = +[SUAlertPresentationManager sharedInstance];
    [v5 dismissAlertsOfClass:objc_opt_class() animated:1];
    v6 = [SUGetOffTestingAlertItem alloc];
    v10 = MEMORY[0x277D85DD0];
    v11 = 3221225472;
    v12 = __48__SUSpace__runGetOffTestingIfNecessary_handler___block_invoke_2;
    v13 = &unk_279CAB1A8;
    v15 = a3;
    v14 = *(a1 + 32);
    v7 = [(SUGetOffTestingAlertItem *)v6 initWithHandler:&v10];
    [v5 presentAlert:v7 animated:{1, v10, v11, v12, v13}];
  }

  else
  {
    v8 = *(a1 + 32);
    v9 = *(*(a1 + 32) + 16);

    v9();
  }
}

void __48__SUSpace__runGetOffTestingIfNecessary_handler___block_invoke_2(uint64_t a1, int a2)
{
  if (a2 == 1)
  {
    v3 = MEMORY[0x277D641E8];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __48__SUSpace__runGetOffTestingIfNecessary_handler___block_invoke_3;
    v15[3] = &unk_279CAB180;
    v4 = *(a1 + 40);
    v16 = *(a1 + 32);
    [v3 mobileAssetSuspend:v4 completionQueue:0 completion:v15];
  }

  else
  {
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"the user declined disabling get-off testing"];;
    SULogInfo(@"[SPACE] %s: %@", v5, v6, v7, v8, v9, v10, v11, "+[SUSpace _runGetOffTestingIfNecessary:handler:]_block_invoke_2");

    v12 = +[SUPreferences sharedInstance];
    [v12 setTestGetOffSampleRate:0xFFFFFFFFLL];

    v13 = *(*(a1 + 32) + 16);

    v13();
  }
}

uint64_t __48__SUSpace__runGetOffTestingIfNecessary_handler___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"mobileAssetSuspend failed with %@ disabling get-off testing", a4];;
    SULogError(@"[SPACE] %s: %@", v5, v6, v7, v8, v9, v10, v11, "+[SUSpace _runGetOffTestingIfNecessary:handler:]_block_invoke_3");

    v12 = +[SUPreferences sharedInstance];
    [v12 setTestGetOffSampleRate:0xFFFFFFFFLL];
  }

  v13 = *(*(a1 + 32) + 16);

  return v13();
}

+ (void)makeRoomForUpdate:(id)update completion:(id)completion
{
  updateCopy = update;
  completionCopy = completion;
  updateCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"options = %@", updateCopy];
  SULogDebug(@"[SPACE] %s: %@", v8, v9, v10, v11, v12, v13, v14, "+[SUSpace makeRoomForUpdate:completion:]");

  mEMORY[0x277D64400] = [MEMORY[0x277D64400] sharedCore];
  completionQueue = [updateCopy completionQueue];
  v17 = [mEMORY[0x277D64400] selectCompletionQueue:completionQueue];

  v40[0] = 0;
  v40[1] = v40;
  v40[2] = 0x2020000000;
  v41 = 0;
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __40__SUSpace_makeRoomForUpdate_completion___block_invoke;
  v36[3] = &unk_279CAB1F8;
  v18 = completionCopy;
  v38 = v18;
  v19 = v17;
  v37 = v19;
  v39 = v40;
  v20 = MEMORY[0x26D668B30](v36);
  if (updateCopy)
  {
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __40__SUSpace_makeRoomForUpdate_completion___block_invoke_3;
    v31[3] = &unk_279CAB2E8;
    selfCopy = self;
    v32 = updateCopy;
    v33 = v20;
    v34 = v40;
    [self hasSufficientSpaceWithOptions:v32 withCompletion:v31];

    v21 = v32;
  }

  else
  {
    v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"no options provided"];
    SULogError(@"[SPACE] %s: %@", v22, v23, v24, v25, v26, v27, v28, "+[SUSpace makeRoomForUpdate:completion:]");

    v21 = [SUUtility errorWithCode:22];
    (v20)[2](v20, 0, v21);
  }

  _Block_object_dispose(v40, 8);
}

void __40__SUSpace_makeRoomForUpdate_completion___block_invoke(void *a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = [MEMORY[0x277CCA9B8] spaceErrorWithAdditionalSpaceRequired:0 originalError:v5];

    v5 = v6;
  }

  v7 = a1[5];
  if (v7)
  {
    v8 = a1[4];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __40__SUSpace_makeRoomForUpdate_completion___block_invoke_2;
    v11[3] = &unk_279CAB1D0;
    v9 = v7;
    v15 = a2;
    v10 = a1[6];
    v13 = v9;
    v14 = v10;
    v12 = v5;
    dispatch_async(v8, v11);
  }
}

void __40__SUSpace_makeRoomForUpdate_completion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 hasSufficientFreeSpace];
  if (v6 || !v7)
  {
    v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"device cannot provide enough space: %@", v6];
    SULogError(@"[SPACE] %s: %@", v15, v16, v17, v18, v19, v20, v21, "+[SUSpace makeRoomForUpdate:completion:]_block_invoke_3");

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if ([v5 needsCacheDelete] & 1) != 0 || (objc_msgSend(v5, "needsAppOffload") & 1) != 0 || (objc_msgSend(v5, "needsMobileAssetSuspend"))
    {
      v8 = *(a1 + 56);
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __40__SUSpace_makeRoomForUpdate_completion___block_invoke_5;
      v33[3] = &unk_279CAB2C0;
      v9 = *(a1 + 32);
      v36 = *(a1 + 40);
      v10 = *(a1 + 32);
      v11 = *(a1 + 56);
      v34 = v10;
      v38 = v11;
      v12 = v5;
      v13 = *(a1 + 48);
      v35 = v12;
      v37 = v13;
      [v8 _showPurgingAlertIfNecessary:v9 results:v12 completion:v33];

      v14 = v36;
    }

    else
    {
      v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"device has enough free space, no purging needed"];
      SULogInfo(@"[SPACE] %s: %@", v22, v23, v24, v25, v26, v27, v28, "+[SUSpace makeRoomForUpdate:completion:]_block_invoke_3");

      v29 = *(a1 + 56);
      v30 = [*(a1 + 32) enableMobileAssetSuspend];
      v39[0] = MEMORY[0x277D85DD0];
      v39[1] = 3221225472;
      v39[2] = __40__SUSpace_makeRoomForUpdate_completion___block_invoke_4;
      v39[3] = &unk_279CAB220;
      v40 = *(a1 + 40);
      [v29 _runGetOffTestingIfNecessary:v30 handler:v39];
      v14 = v40;
    }
  }
}

void __40__SUSpace_makeRoomForUpdate_completion___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = *(*(a1 + 48) + 16);
LABEL_3:
    v4();
    goto LABEL_12;
  }

  if (+[SUUtility currentReleaseTypeIsInternal])
  {
    v5 = +[SUPreferences sharedInstance];
    v6 = [v5 useSpaceOverrides];

    if (v6)
    {
      v7 = +[SUPreferences sharedInstance];
      v8 = [v7 spaceOverrideCleanupTime];

      v39 = [MEMORY[0x277CCACA8] stringWithFormat:@"[PREFERENCES] spaceOverrideCleanupTime is %d", v8];
      SULogDebug(@"[SPACE] %s: %@", v9, v10, v11, v12, v13, v14, v15, "+[SUSpace makeRoomForUpdate:completion:]_block_invoke_5");

      [MEMORY[0x277CCACC8] sleepForTimeInterval:v8 + 0.1];
      if (v8)
      {
        v41 = [MEMORY[0x277CCACA8] stringWithFormat:@"[PREFERENCES] cleanup failed"];
        SULogDebug(@"[SPACE] %s: %@", v30, v31, v32, v33, v34, v35, v36, "+[SUSpace makeRoomForUpdate:completion:]_block_invoke_5");

        v37 = *(a1 + 48);
        v38 = [SUUtility errorWithCode:109];
        (*(v37 + 16))(v37, 0, v38);

        goto LABEL_12;
      }

      v40 = [MEMORY[0x277CCACA8] stringWithFormat:@"[PREFERENCES] cleanup succeeded"];
      SULogDebug(@"[SPACE] %s: %@", v16, v17, v18, v19, v20, v21, v22, "+[SUSpace makeRoomForUpdate:completion:]_block_invoke_5");

      v4 = *(*(a1 + 48) + 16);
      goto LABEL_3;
    }
  }

  v49 = 0;
  v50 = &v49;
  v51 = 0x2020000000;
  v52 = [*(a1 + 32) neededBytes];
  v23 = [*(a1 + 64) currentFreeSpaceForVolume:@"/"];
  if (v23 >= [*(a1 + 32) neededBytes])
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v50[3] -= v23;
    v24 = *(a1 + 64);
    v25 = [*(a1 + 40) needsCacheDelete];
    v26 = v50[3];
    v27 = [*(a1 + 32) cacheDeleteUrgency];
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __40__SUSpace_makeRoomForUpdate_completion___block_invoke_6;
    v43[3] = &unk_279CAB298;
    v42 = *(a1 + 48);
    v28 = v42;
    v46 = v42;
    v29 = *(a1 + 64);
    v47 = &v49;
    v48 = v29;
    v44 = *(a1 + 40);
    v45 = *(a1 + 32);
    [v24 _purgeCacheDeleteIfNeeded:v25 neededBytes:v26 urgency:v27 completion:v43];
  }

  _Block_object_dispose(&v49, 8);
LABEL_12:
}

void __40__SUSpace_makeRoomForUpdate_completion___block_invoke_6(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  *(*(*(a1 + 56) + 8) + 24) = 1;
  if (a4 || a2)
  {
    v11 = *(a1 + 48);
    v12 = *(*(a1 + 48) + 16);

    v12();
  }

  else
  {
    *(*(*(a1 + 64) + 8) + 24) -= a3;
    v5 = *(a1 + 72);
    v6 = [*(a1 + 32) needsAppOffload];
    v7 = *(*(*(a1 + 64) + 8) + 24);
    v8 = [*(a1 + 40) appOffloadUrgency];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __40__SUSpace_makeRoomForUpdate_completion___block_invoke_7;
    v14[3] = &unk_279CAB270;
    v13 = *(a1 + 48);
    v9 = v13;
    v10 = *(a1 + 64);
    v16 = v13;
    v17 = v10;
    v15 = *(a1 + 32);
    [v5 _purgeAppOffloadIfNeeded:v6 neededBytes:v7 urgency:v8 completion:v14];
  }
}

void __40__SUSpace_makeRoomForUpdate_completion___block_invoke_7(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  *(*(*(a1 + 48) + 8) + 24) = 2;
  if (a4 || a2)
  {
    v9 = *(a1 + 40);
    v10 = *(*(a1 + 40) + 16);

    v10();
  }

  else
  {
    *(*(*(a1 + 56) + 8) + 24) -= a3;
    v5 = *(a1 + 64);
    v6 = [*(a1 + 32) needsMobileAssetSuspend];
    v7 = *(*(*(a1 + 56) + 8) + 24);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __40__SUSpace_makeRoomForUpdate_completion___block_invoke_8;
    v12[3] = &unk_279CAB248;
    v11 = *(a1 + 40);
    v8 = v11;
    v13 = v11;
    [v5 _purgeMASuspendIfNeeded:v6 neededBytes:v7 completion:v12];
  }
}

+ (unint64_t)currentFreeSpaceForVolume:(id)volume
{
  volumeCopy = volume;
  if (volumeCopy)
  {
    v4 = volumeCopy;
  }

  else
  {
    v4 = @"/";
  }

  v5 = [MEMORY[0x277D641E8] getFreeSpaceAvailableForSoftwareUpdate:v4];

  return v5;
}

+ (unint64_t)maxPreSUStagingOptionalSpaceForUpdate:(id)update
{
  updateCopy = update;
  if (+[SUUtility currentReleaseTypeIsInternal])
  {
    v4 = +[SUPreferences sharedInstance];
    useSpaceOverrides = [v4 useSpaceOverrides];

    if (useSpaceOverrides)
    {
      v43 = [MEMORY[0x277CCACA8] stringWithFormat:@"[PREFERENCES] using space overrides"];
      SULogDebug(@"[SPACE] %s: %@", v6, v7, v8, v9, v10, v11, v12, "+[SUSpace maxPreSUStagingOptionalSpaceForUpdate:]");

      productBuildVersion = +[SUPreferences sharedInstance];
      spaceOverrideMaxPSUSOptionalSize = [productBuildVersion spaceOverrideMaxPSUSOptionalSize];
      goto LABEL_13;
    }
  }

  if (!updateCopy)
  {
    productBuildVersion = [MEMORY[0x277CCACA8] stringWithFormat:@"no update provided"];
    SULogInfo(@"[SPACE] %s: %@", v27, v28, v29, v30, v31, v32, v33, "+[SUSpace maxPreSUStagingOptionalSpaceForUpdate:]");
LABEL_12:
    spaceOverrideMaxPSUSOptionalSize = 0;
    goto LABEL_13;
  }

  if (![updateCopy preSUStagingOptionalSize])
  {
    v34 = MEMORY[0x277CCACA8];
    productBuildVersion = [updateCopy productBuildVersion];
    v45 = [v34 stringWithFormat:@"no optional assets to stage for %@", productBuildVersion];
    SULogInfo(@"[SPACE] %s: %@", v35, v36, v37, v38, v39, v40, v41, "+[SUSpace maxPreSUStagingOptionalSpaceForUpdate:]");

    goto LABEL_12;
  }

  v15 = [SUSpace currentFreeSpaceForVolume:@"/"];
  v16 = ([SUUtility totalDiskSpaceForUpdate:updateCopy]* 1.05);
  minFreeSpacePostStageOptionalAssets = [updateCopy minFreeSpacePostStageOptionalAssets];
  v18 = minFreeSpacePostStageOptionalAssets + v16;
  if (v15 >= minFreeSpacePostStageOptionalAssets + v16)
  {
    spaceOverrideMaxPSUSOptionalSize = v15 - (minFreeSpacePostStageOptionalAssets + v16);
  }

  else
  {
    spaceOverrideMaxPSUSOptionalSize = 0;
  }

  v19 = MEMORY[0x277CCACA8];
  productBuildVersion = [updateCopy productBuildVersion];
  v44 = [v19 stringWithFormat:@"[%@] availableFreeSpace:%lld, totalSpaceNeededIncludingBuffer(buffer:5%%):%lld, allowedSpaceForOptionalAssets:%lld", productBuildVersion, v15, v18, spaceOverrideMaxPSUSOptionalSize];
  SULogDebug(@"[SPACE] %s: %@", v20, v21, v22, v23, v24, v25, v26, "+[SUSpace maxPreSUStagingOptionalSpaceForUpdate:]");

LABEL_13:
  return spaceOverrideMaxPSUSOptionalSize;
}

@end