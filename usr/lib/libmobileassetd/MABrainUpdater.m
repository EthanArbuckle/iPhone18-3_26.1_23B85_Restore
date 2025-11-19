@interface MABrainUpdater
+ (id)sharedInstance;
- (BOOL)hasAppleConnect;
- (BOOL)writePlist:(id)a3 path:(id)a4 error:(id *)a5;
- (MABrainUpdater)init;
- (void)callback:(id)a3 error:(id)a4;
- (void)commit;
- (void)install:(id)a3 asset:(id)a4 options:(id)a5 completion:(id)a6;
- (void)purge:(id)a3 completion:(id)a4;
- (void)schedule:(BOOL)a3;
- (void)start:(id)a3;
- (void)update:(id)a3 completion:(id)a4;
@end

@implementation MABrainUpdater

+ (id)sharedInstance
{
  if (sharedInstance_pred != -1)
  {
    +[MABrainUpdater sharedInstance];
  }

  v3 = sharedInstance___instance;

  return v3;
}

void __32__MABrainUpdater_sharedInstance__block_invoke(id a1)
{
  v1 = objc_autoreleasePoolPush();
  v2 = objc_alloc_init(MABrainUpdater);
  v3 = sharedInstance___instance;
  sharedInstance___instance = v2;

  objc_autoreleasePoolPop(v1);
}

- (MABrainUpdater)init
{
  v14.receiver = self;
  v14.super_class = MABrainUpdater;
  v2 = [(MABrainUpdater *)&v14 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.MobileAssetBrain-updater", v3);
    updateQueue = v2->_updateQueue;
    v2->_updateQueue = v4;

    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("com.apple.MobileAssetBrain-updater-callback", v6);
    callbackQueue = v2->_callbackQueue;
    v2->_callbackQueue = v7;

    v9 = objc_alloc_init(MABrainScanner);
    scanner = v2->_scanner;
    v2->_scanner = v9;

    stagedRestoreVersion = v2->_stagedRestoreVersion;
    v2->_stagedRestoreVersion = 0;

    *&v2->_relaunchToken = -1;
    waitForAppleConnectAction = v2->_waitForAppleConnectAction;
    v2->_waitForAppleConnectAction = 0;
  }

  return v2;
}

- (void)start:(id)a3
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = __24__MABrainUpdater_start___block_invoke;
  v6[3] = &unk_4B2B18;
  v7 = a3;
  v8 = self;
  v4 = start__pred;
  v5 = v7;
  if (v4 != -1)
  {
    dispatch_once(&start__pred, v6);
  }
}

void __24__MABrainUpdater_start___block_invoke(uint64_t a1)
{
  v2 = _MADLog(@"Brain");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "[MAB] Starting MABrainUpdater...", buf, 2u);
  }

  v3 = objc_autoreleasePoolPush();
  v4 = [*(a1 + 32) mutableCopy];
  v5 = MABrainUtilityGetImageUUID();
  [(__CFString *)v4 setObject:v5 forKeyedSubscript:@"libmobileassetd-uuid"];

  v6 = _MADLog(@"Brain");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v51 = v4;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "[MAB] \ninfo = %@", buf, 0xCu);
  }

  [(__CFString *)v4 setObject:0 forKeyedSubscript:@"commit"];
  [(__CFString *)v4 setObject:0 forKeyedSubscript:@"relaunch-on-unlock"];
  v7 = [NSDictionary dictionaryWithDictionary:v4];
  v8 = *(a1 + 40);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  v10 = [*(a1 + 32) objectForKeyedSubscript:@"_CompatibilityVersion"];

  if (v10)
  {
    v11 = [*(a1 + 32) objectForKeyedSubscript:@"_CompatibilityVersion"];
    v12 = [v11 intValue];
    v13 = [&off_4F8018 intValue];

    if (v12 <= v13)
    {
      v14 = [*(a1 + 32) objectForKeyedSubscript:@"_CompatibilityVersion"];
      [*(*(a1 + 40) + 24) setCompatibilityVersion:v14];
    }

    else
    {
      v14 = _MADLog(@"Brain");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = [*(a1 + 32) objectForKeyedSubscript:@"_CompatibilityVersion"];
        *buf = 138412290;
        v51 = v15;
        _os_log_impl(&dword_0, v14, OS_LOG_TYPE_ERROR, "[MAB] MABrainLoader specified specious compatibility version: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v14 = _MADLog(@"Brain");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_ERROR, "[MAB] MABrainLoader did not specify compatibility version", buf, 2u);
    }
  }

  v16 = [*(a1 + 32) objectForKeyedSubscript:@"bundlePath"];
  v17 = [*(a1 + 32) objectForKeyedSubscript:@"bundleId"];
  if (v16)
  {
    v18 = [[MABrainBundle alloc] initWithPath:v16];
    if (v18)
    {
      v19 = *(a1 + 40);
      v20 = v18;
      v21 = *(v19 + 32);
      *(v19 + 32) = v20;
    }

    else
    {
      v21 = _MADLog(@"Brain");
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v51 = v16;
        _os_log_impl(&dword_0, v21, OS_LOG_TYPE_ERROR, "[MAB] Allocating bundle failed for %@", buf, 0xCu);
      }

      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  v22 = [*(a1 + 32) objectForKeyedSubscript:@"commit"];
  v23 = [v22 BOOLValue];

  v24 = [*(a1 + 32) objectForKeyedSubscript:@"relaunch-on-unlock"];
  v25 = [v24 BOOLValue];

  if (v25)
  {
    v26 = _MADLog(@"Brain");
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v26, OS_LOG_TYPE_DEFAULT, "[MAB] mobileassetd needs to relaunch at next unlock", buf, 2u);
    }

    v27 = +[MABrainBundle proposedTargetPath];
    if (v27)
    {
      v28 = [[MABrainBundle alloc] initWithPath:v27];
      v29 = v28;
      if (v28)
      {
        v30 = [(MABrainBundle *)v28 brainInfo];
        v31 = [v30 objectForKeyedSubscript:@"MobileAssetProperties"];
        v32 = [v31 objectForKeyedSubscript:@"RestoreVersion"];
        v33 = *(a1 + 40);
        v34 = *(v33 + 48);
        *(v33 + 48) = v32;

        v35 = _MADLog(@"Brain");
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          v36 = *(*(a1 + 40) + 48);
          if (!v36)
          {
            v36 = @"nil";
          }

          *buf = 138412290;
          v51 = v36;
          _os_log_impl(&dword_0, v35, OS_LOG_TYPE_DEFAULT, "[MAB] MobileAssetBrain (version: %@) staged for next relaunch", buf, 0xCu);
        }
      }
    }

    MABrainUtilityScheduleDeviceUnlockAction(*(*(a1 + 40) + 8), @"Relaunch mobileassetd", (*(a1 + 40) + 56), &__block_literal_global_1139_0);
  }

  else
  {
    v37 = *(*(a1 + 40) + 8);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __24__MABrainUpdater_start___block_invoke_1141;
    block[3] = &unk_4B3378;
    v49 = v23;
    v38 = v17;
    v39 = *(a1 + 40);
    v47 = v38;
    v48 = v39;
    dispatch_async(v37, block);
    v27 = v47;
  }

  [*(a1 + 40) schedule:MABrainUtilityReleaseTestMode()];
  v40 = [*(*(a1 + 40) + 40) objectForKeyedSubscript:@"built-in"];
  if ([v40 BOOLValue])
  {
  }

  else
  {
    v41 = MABrainUtilityCrashLoopTestMode();

    if (v41)
    {
      v42 = time(0);
      srand(v42);
      v43 = rand() % 20 + 1;
      v44 = _MADLog(@"Brain");
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109120;
        LODWORD(v51) = v43;
        _os_log_impl(&dword_0, v44, OS_LOG_TYPE_DEBUG, "[MAB] Crash loop testing is enabled.  mobileassetd will exit in %d seconds", buf, 8u);
      }

      v45 = dispatch_time(0, 1000000000 * v43);
      dispatch_after(v45, &_dispatch_main_q, &__block_literal_global_1147);
    }
  }

  objc_autoreleasePoolPop(v3);
}

void __24__MABrainUpdater_start___block_invoke_1136(id a1, BOOL a2)
{
  v2 = _MADLog(@"Brain");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "[MAB] Exiting mobileassetd for relaunch...", v4, 2u);
  }

  v3 = +[MABrainRestartManager sharedInstance];
  [v3 quiesceAndRestartMobileAsset];

  exit(1);
}

id __24__MABrainUpdater_start___block_invoke_1141(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    v2 = _MADLog(@"Brain");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 32);
      v5 = 138412290;
      v6 = v3;
      _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "[MAB] MobileAssetBrain bundle %@ needs to be committed as current", &v5, 0xCu);
    }

    [*(a1 + 40) commit];
  }

  return [*(a1 + 40) garbageCollect];
}

void __24__MABrainUpdater_start___block_invoke_1145(id a1)
{
  v1 = _MADLog(@"Brain");
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_0, v1, OS_LOG_TYPE_DEFAULT, "[MAB] Exiting mobileassetd for crash loop testing...", v2, 2u);
  }

  raise(5);
}

- (void)schedule:(BOOL)a3
{
  v5 = [[NSBackgroundActivityScheduler alloc] initWithIdentifier:@"com.apple.mobileassetd-MobileAssetBrain_check"];
  v6 = v5;
  if (v5)
  {
    [v5 setPreregistered:0];
    v7 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_BOOL(v7, XPC_ACTIVITY_ALLOW_BATTERY, 1);
    xpc_dictionary_set_BOOL(v7, XPC_ACTIVITY_REQUIRE_INEXPENSIVE_NETWORK_CONNECTIVITY, 1);
    if (a3)
    {
      *&buf = 0;
      *(&buf + 1) = &buf;
      v26 = 0x2020000000;
      v27 = 1;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = __27__MABrainUpdater_schedule___block_invoke;
      block[3] = &unk_4B4400;
      block[4] = &buf;
      if (schedule__onceToken != -1)
      {
        dispatch_once(&schedule__onceToken, block);
      }

      if (*(*(&buf + 1) + 24))
      {
        v8 = MABrainUtilityReleaseTestModeInterval();
      }

      else
      {
        v10 = _MADLog(@"Brain");
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *v23 = 0;
          _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "[MAB] Release Test Mode is enabled.  Scheduling update on startup...", v23, 2u);
        }

        v8 = 1.0;
      }

      [v6 setTolerance:v8];
      [v6 setQualityOfService:17];
      _Block_object_dispose(&buf, 8);
    }

    else
    {
      [v6 setInterval:MABrainUtilityScanInterval()];
      [v6 setRepeats:1];
    }

    [v6 _setAdditionalXPCActivityProperties:v7];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = __27__MABrainUpdater_schedule___block_invoke_1152;
    v20[3] = &unk_4B3378;
    v20[4] = self;
    v22 = a3;
    v11 = v6;
    v21 = v11;
    v12 = objc_retainBlock(v20);
    [v11 description];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = __27__MABrainUpdater_schedule___block_invoke_1199;
    v15[3] = &unk_4B4EB0;
    v16 = v19 = a3;
    v17 = @"com.apple.mobileassetd-MobileAssetBrain_check";
    v18 = v12;
    v13 = v12;
    v9 = v16;
    [v11 scheduleWithBlock:v15];
    v14 = _MADLog(@"Brain");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v11;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "[MAB] Successfully scheduled %@", &buf, 0xCu);
    }
  }

  else
  {
    v9 = _MADLog(@"Brain");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "[MAB] Allocating scheduler object failed", &buf, 2u);
    }
  }
}

void __27__MABrainUpdater_schedule___block_invoke_1152(uint64_t a1)
{
  v2 = objc_alloc_init(NSMutableDictionary);
  v3 = *(*(a1 + 32) + 48);
  if (v3)
  {
    [v2 setObject:v3 forKeyedSubscript:@"restoreVersion"];
  }

  [v2 setObject:&__kCFBooleanTrue forKeyedSubscript:@"nonDiscetionary"];
  v4 = *(a1 + 32);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = __27__MABrainUpdater_schedule___block_invoke_2;
  v5[3] = &unk_4B4E88;
  v5[4] = v4;
  v7 = *(a1 + 48);
  v6 = *(a1 + 40);
  [v4 update:v2 completion:v5];
}

void __27__MABrainUpdater_schedule___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [@"/private/var/MobileSoftwareUpdate/MobileAsset/MobileAssetBrain" stringByAppendingPathComponent:@"UpdateResult.plist"];
  v5 = objc_alloc_init(NSMutableDictionary);
  v6 = [*(*(a1 + 32) + 40) objectForKeyedSubscript:@"MobileAssetProperties"];
  v7 = [v6 objectForKeyedSubscript:@"RestoreVersion"];

  [v5 setObject:v7 forKeyedSubscript:@"currentRestoreVersion"];
  v8 = +[NSDate date];
  [v5 setObject:v8 forKeyedSubscript:@"eventTime"];

  if (v3)
  {
    v9 = [v3 domain];
    v10 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ %ld", v9, [v3 code]);

    v11 = [v3 description];
    [v5 setObject:v10 forKeyedSubscript:@"result"];
    [v5 setObject:v11 forKeyedSubscript:@"failureReason"];
    v12 = _MADLog(@"Brain");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v38 = v5;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "[MAB] MobileAssetBrain update failed:\n%@", buf, 0xCu);
    }
  }

  else
  {
    [v5 setObject:@"success" forKeyedSubscript:@"result"];
    [v5 setObject:*(*(a1 + 32) + 48) forKeyedSubscript:@"targetRestoreVersion"];
    v10 = _MADLog(@"Brain");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v38 = v5;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "[MAB] MobileAssetBrain update completed successfully:\n%@", buf, 0xCu);
    }
  }

  if (*(a1 + 48) != 1)
  {
    v17 = +[NSFileManager defaultManager];
    v18 = [v17 fileExistsAtPath:v4];

    if (!v18)
    {
      goto LABEL_38;
    }

    v19 = +[NSFileManager defaultManager];
    v34 = 0;
    v20 = [v19 removeItemAtPath:v4 error:&v34];
    v21 = v34;

    v22 = _MADLog(@"Brain");
    v23 = v22;
    if (v20)
    {
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v24 = "[MAB] Removed stale UpdateResult.plist";
        v25 = v23;
        v26 = OS_LOG_TYPE_DEFAULT;
        v27 = 2;
LABEL_36:
        _os_log_impl(&dword_0, v25, v26, v24, buf, v27);
      }
    }

    else if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v38 = v21;
      v24 = "[MAB] Failed to remove stale UpdateResult.plist: %@";
      v25 = v23;
      v26 = OS_LOG_TYPE_ERROR;
      v27 = 12;
      goto LABEL_36;
    }

    goto LABEL_38;
  }

  v13 = [*(*(a1 + 32) + 40) objectForKeyedSubscript:@"built-in"];
  v14 = [v13 BOOLValue];

  if ((v14 & 1) == 0)
  {
    v15 = [v3 domain];
    if ([v15 isEqualToString:@"MobileAssetBrainErrorDomain"])
    {
      v16 = [v3 code];

      if (v16 == &stru_68.segname[2])
      {
        if (v3)
        {
          goto LABEL_38;
        }

        goto LABEL_31;
      }
    }

    else
    {
    }
  }

  v41[0] = NSFileOwnerAccountID;
  v41[1] = NSFileGroupOwnerAccountID;
  v42[0] = &off_4F8030;
  v42[1] = &off_4F8030;
  v41[2] = NSFilePosixPermissions;
  v42[2] = &off_4F8048;
  v28 = [NSDictionary dictionaryWithObjects:v42 forKeys:v41 count:3];
  v29 = [v4 stringByDeletingLastPathComponent];
  if (v29)
  {
    v30 = +[NSFileManager defaultManager];
    v36 = 0;
    v31 = [v30 createDirectoryAtPath:v29 withIntermediateDirectories:1 attributes:v28 error:&v36];
    v32 = v36;

    if (v31)
    {
      goto LABEL_26;
    }

    v33 = _MADLog(@"Brain");
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v38 = v29;
      v39 = 2112;
      v40 = v32;
      _os_log_impl(&dword_0, v33, OS_LOG_TYPE_ERROR, "[MAB] Failed to create directory %@ for UpdateResult.plist: %@", buf, 0x16u);
    }
  }

  else
  {
    v33 = _MADLog(@"Brain");
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v38 = v4;
      _os_log_impl(&dword_0, v33, OS_LOG_TYPE_ERROR, "[MAB] Failed to create directory name from pathname %@", buf, 0xCu);
    }

    v32 = 0;
  }

LABEL_26:
  MABrainUtilityWriteDictionary(v5, v4, 0);
  if (v3)
  {
    [*(a1 + 40) invalidate];
    [*(a1 + 32) schedule:1];
  }

  else
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __27__MABrainUpdater_schedule___block_invoke_1194;
    block[3] = &unk_4B2AA0;
    block[4] = *(a1 + 32);
    if (FROM_LOCATION_GRAFT_REPLY_block_invoke_onceToken != -1)
    {
      dispatch_once(&FROM_LOCATION_GRAFT_REPLY_block_invoke_onceToken, block);
    }
  }

  if (!v3)
  {
LABEL_31:
    if (*(*(a1 + 32) + 48) && ([v7 isEqualToString:?] & 1) == 0)
    {
      dispatch_async(&_dispatch_main_q, &__block_literal_global_1197);
    }
  }

LABEL_38:
}

void __27__MABrainUpdater_schedule___block_invoke_2_1195(id a1)
{
  v1 = _MADLog(@"Brain");
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_0, v1, OS_LOG_TYPE_DEFAULT, "[MAB] Exiting mobileassetd for release testing...", v2, 2u);
  }

  raise(15);
}

void __27__MABrainUpdater_schedule___block_invoke_1199(uint64_t a1, void *a2)
{
  if (*(a1 + 56))
  {
    v3 = "[ReleaseTestMode] ";
  }

  else
  {
    v3 = "";
  }

  v4 = a2;
  v5 = _MADLog(@"Brain");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v11 = 136315650;
    v12 = v3;
    v13 = 2112;
    v14 = v6;
    v15 = 2112;
    v16 = v7;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "[MAB] %sActivity %@ %@ fired.", &v11, 0x20u);
  }

  (*(*(a1 + 48) + 16))();
  v8 = _MADLog(@"Brain");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11 = 136315650;
    v12 = v3;
    v13 = 2112;
    v14 = v9;
    v15 = 2112;
    v16 = v10;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "[MAB] %sActivity %@ %@ will complete asynchronously.", &v11, 0x20u);
  }

  v4[2](v4, 1);
}

- (void)commit
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __24__MABrainUpdater_commit__block_invoke;
  block[3] = &unk_4B2AA0;
  block[4] = self;
  if (commit_onceToke != -1)
  {
    dispatch_once(&commit_onceToke, block);
  }
}

void __24__MABrainUpdater_commit__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 32))
  {
    v3 = [*(v1 + 40) objectForKeyedSubscript:@"bundleId"];
    v4 = *(*(a1 + 32) + 32);
    v13 = 0;
    v5 = [v4 stageCurrent:&v13];
    v6 = v13;
    v7 = _MADLog(@"Brain");
    v8 = v7;
    if (v5)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v15 = v3;
        v9 = "[MAB] Successfully committed MobileAssetBrain bundle %@ as current.";
        v10 = v8;
        v11 = OS_LOG_TYPE_DEFAULT;
        v12 = 12;
LABEL_7:
        _os_log_impl(&dword_0, v10, v11, v9, buf, v12);
      }
    }

    else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v15 = v3;
      v16 = 2112;
      v17 = v6;
      v9 = "[MAB] Error committing MobileAssetBrain bundle %@ as current: %@";
      v10 = v8;
      v11 = OS_LOG_TYPE_ERROR;
      v12 = 22;
      goto LABEL_7;
    }
  }
}

- (BOOL)writePlist:(id)a3 path:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [NSURL fileURLWithPath:v8];
  v21 = 0;
  v10 = [v7 writeToURL:v9 error:&v21];
  v11 = v21;

  v12 = _MADLog(@"Brain");
  v13 = v12;
  if (v10)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v23 = v8;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "[MAB] Successfully wrote %@.", buf, 0xCu);
    }

LABEL_11:
    LOBYTE(v15) = 1;
    goto LABEL_13;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v23 = v8;
    v24 = 2112;
    v25 = v11;
    _os_log_impl(&dword_0, v13, OS_LOG_TYPE_ERROR, "[MAB] Failed to write %@: %@", buf, 0x16u);
  }

  v20 = 0;
  v13 = [NSPropertyListSerialization dataWithPropertyList:v7 format:100 options:0 error:&v20];
  v14 = v20;

  if (!v13)
  {
    LOBYTE(v15) = 0;
    v11 = v14;
    goto LABEL_13;
  }

  v19 = v14;
  v15 = [v13 writeToFile:v8 options:0 error:&v19];
  v11 = v19;

  if (v15)
  {
    v16 = _MADLog(@"Brain");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v23 = v8;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "[MAB] Successfully wrote %@ (using NSData).", buf, 0xCu);
    }

    v11 = 0;
    goto LABEL_11;
  }

LABEL_13:

  if (a5 && v11)
  {
    v17 = v11;
    *a5 = v11;
  }

  return v15;
}

- (BOOL)hasAppleConnect
{
  v2 = MSUSSOIsAvailable(@"177666");
  v3 = _MADLog(@"Brain");
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      v9 = 0;
      v5 = "[MAB] AppleConnect is available in this environment";
      v6 = &v9;
LABEL_6:
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, v5, v6, 2u);
    }
  }

  else if (v4)
  {
    v8 = 0;
    v5 = "[MAB] AppleConnect is not available in this environment";
    v6 = &v8;
    goto LABEL_6;
  }

  return v2;
}

- (void)install:(id)a3 asset:(id)a4 options:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v56 = a5;
  v57 = a6;
  v76 = 0;
  v77 = &v76;
  v78 = 0x3032000000;
  v79 = __Block_byref_object_copy__14;
  v80 = __Block_byref_object_dispose__14;
  v81 = 0;
  v12 = v10;
  v13 = [@"/private/var/MobileSoftwareUpdate/MobileAsset/MobileAssetBrain" stringByAppendingPathComponent:v12];
  v88[0] = NSFileOwnerAccountID;
  v88[1] = NSFileGroupOwnerAccountID;
  v89[0] = &off_4F8030;
  v89[1] = &off_4F8030;
  v88[2] = NSFilePosixPermissions;
  v89[2] = &off_4F8048;
  v55 = [NSDictionary dictionaryWithObjects:v89 forKeys:v88 count:3];
  v14 = _MADLog(@"Brain");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v87 = v11;
    _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "[MAB] MobileAssetBrain install of asset %@ is starting...", buf, 0xCu);
  }

  [v11 refreshState];
  if ([v11 state] == &dword_0 + 2)
  {
    v15 = [MABrainBundle alloc];
    v16 = [v11 getLocalUrl];
    v17 = [v16 path];
    v18 = [(MABrainBundle *)v15 initWithPath:v17];

    MABrainUtilityCancelDeviceUnlockAction(self->_relaunchToken);
    v19 = self;
    objc_sync_enter(v19);
    p_waitForAppleConnectToken = &v19->_waitForAppleConnectToken;
    waitForAppleConnectToken = v19->_waitForAppleConnectToken;
    if (waitForAppleConnectToken != -1)
    {
      MABrainUtilityCancelDeviceUnlockAction(waitForAppleConnectToken);
      waitForAppleConnectAction = v19->_waitForAppleConnectAction;
      v19->_waitForAppleConnectToken = -1;
      v23 = objc_retainBlock(waitForAppleConnectAction);
      v24 = v19->_waitForAppleConnectAction;
      v19->_waitForAppleConnectAction = 0;

      if (v23)
      {
        v23[2](v23, 1);
      }
    }

    objc_sync_exit(v19);

    [(MABrainUpdater *)v19 garbageCollect];
    v25 = +[NSFileManager defaultManager];
    v26 = (v77 + 5);
    obj = v77[5];
    v27 = [v25 createDirectoryAtPath:v13 withIntermediateDirectories:1 attributes:v55 error:&obj];
    objc_storeStrong(v26, obj);

    if (v27)
    {
      v68[0] = _NSConcreteStackBlock;
      v68[1] = 3221225472;
      v68[2] = __51__MABrainUpdater_install_asset_options_completion___block_invoke;
      v68[3] = &unk_4B4ED8;
      v28 = v13;
      v69 = v28;
      v70 = v11;
      v71 = v19;
      v74 = &v76;
      v72 = v12;
      v54 = v57;
      v73 = v54;
      v29 = objc_retainBlock(v68);
      v30 = _MADLog(@"Brain");
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v31 = [v56 objectForKeyedSubscript:@"ssoToken"];
        v32 = " with SSO";
        if (!v31)
        {
          v32 = "";
        }

        *buf = 136315138;
        v87 = v32;
        _os_log_impl(&dword_0, v30, OS_LOG_TYPE_DEFAULT, "[MAB] Personalizing MobileAssetBrain%s...", buf, 0xCu);
      }

      v33 = (v77 + 5);
      v67 = v77[5];
      v34 = [(MABrainBundle *)v18 personalize:v28 options:v56 error:&v67];
      objc_storeStrong(v33, v67);
      if (v34)
      {
        (v29[2])(v29);
LABEL_23:

        goto LABEL_24;
      }

      v53 = v77[5];
      v43 = [v56 objectForKeyedSubscript:@"nonBlocking"];
      v44 = [v43 BOOLValue];

      v45 = [v56 objectForKeyedSubscript:@"ssoToken"];
      if ((v45 != 0) | v44 & 1)
      {
      }

      else if ([(MABrainUpdater *)v19 hasAppleConnect])
      {
        v46 = v29;
        v47 = v44 ^ 1;
        v48 = v19;
        objc_sync_enter(v48);
        v49 = v48[2];
        v58[0] = _NSConcreteStackBlock;
        v58[1] = 3221225472;
        v58[2] = __51__MABrainUpdater_install_asset_options_completion___block_invoke_1247;
        v58[3] = &unk_4B4F00;
        v59 = v56;
        v66 = v47;
        v29 = v46;
        v60 = v18;
        v61 = v28;
        v64 = v46;
        v50 = v49;
        v62 = v50;
        v65 = v54;
        v63 = v53;
        v51 = objc_retainBlock(v58);
        v52 = v48[8];
        v48[8] = v51;

        MABrainUtilityScheduleDeviceUnlockAction(v48[1], @"Copy AppleConnect SSO token", p_waitForAppleConnectToken, v48[8]);
        objc_sync_exit(v48);

LABEL_22:
        goto LABEL_23;
      }

      [(MABrainUpdater *)v19 callback:v54 error:v77[5]];
      goto LABEL_22;
    }

    v82[0] = NSDebugDescriptionErrorKey;
    v82[1] = NSUnderlyingErrorKey;
    v39 = v77[5];
    v83[0] = @"Failed to create MobileAssetBrain install directory";
    v83[1] = v39;
    v82[2] = @"stagingPath";
    v83[2] = v13;
    v40 = [NSDictionary dictionaryWithObjects:v83 forKeys:v82 count:3];
    v41 = [NSError errorWithDomain:@"MobileAssetBrainErrorDomain" code:161 userInfo:v40];
    v42 = v77[5];
    v77[5] = v41;

    [(MABrainUpdater *)v19 callback:v57 error:v77[5]];
  }

  else
  {
    v84[0] = NSDebugDescriptionErrorKey;
    v84[1] = @"asset.state";
    v85[0] = @"Unexpected MABrain asset state";
    v35 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v11 state]);
    v85[1] = v35;
    v36 = [NSDictionary dictionaryWithObjects:v85 forKeys:v84 count:2];
    v37 = [NSError errorWithDomain:@"MobileAssetBrainErrorDomain" code:101 userInfo:v36];
    v38 = v77[5];
    v77[5] = v37;

    [(MABrainUpdater *)self callback:v57 error:v77[5]];
    v18 = 0;
  }

LABEL_24:

  _Block_object_dispose(&v76, 8);
}

void __51__MABrainUpdater_install_asset_options_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) stringByAppendingPathComponent:@"MobileAssetBrain.plist"];
  v3 = +[NSMutableDictionary dictionary];
  v4 = [*(a1 + 40) assetId];
  [v3 setObject:v4 forKeyedSubscript:@"assetId"];

  v5 = [*(a1 + 40) attributes];
  [v3 setObject:v5 forKeyedSubscript:@"MobileAssetProperties"];

  v6 = BootSessionUUID();
  [v3 setObject:v6 forKeyedSubscript:@"boot-session-uuid"];

  v7 = *(a1 + 48);
  v8 = *(*(a1 + 72) + 8);
  obj = *(v8 + 40);
  v9 = [v7 writePlist:v3 path:v2 error:&obj];
  objc_storeStrong((v8 + 40), obj);
  if (!v9)
  {
    v32[0] = NSDebugDescriptionErrorKey;
    v32[1] = NSUnderlyingErrorKey;
    v24 = *(*(*(a1 + 72) + 8) + 40);
    v33[0] = @"Failed to write MobileAssetBrain.plist";
    v33[1] = v24;
    v32[2] = @"brainPlistPath";
    v33[2] = v2;
    v25 = [NSDictionary dictionaryWithObjects:v33 forKeys:v32 count:3];
    v26 = 162;
LABEL_7:
    v28 = [NSError errorWithDomain:@"MobileAssetBrainErrorDomain" code:v26 userInfo:v25];

    [*(a1 + 48) callback:*(a1 + 64) error:v28];
    goto LABEL_11;
  }

  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  v12 = *(*(a1 + 72) + 8);
  v30 = *(v12 + 40);
  v13 = [v10 stage:v11 error:&v30];
  objc_storeStrong((v12 + 40), v30);
  if (!v13)
  {
    v34[0] = NSDebugDescriptionErrorKey;
    v34[1] = NSUnderlyingErrorKey;
    v27 = *(*(*(a1 + 72) + 8) + 40);
    v35[0] = @"Failed to write staging file";
    v35[1] = v27;
    v34[2] = @"stagingName";
    v35[2] = *(a1 + 56);
    v25 = [NSDictionary dictionaryWithObjects:v35 forKeys:v34 count:3];
    v26 = 163;
    goto LABEL_7;
  }

  v14 = *(*(a1 + 72) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = 0;

  v16 = img4_nonce_domain_roll_nonce();
  if (v16)
  {
    v17 = v16;
    v36[0] = NSDebugDescriptionErrorKey;
    v18 = [NSString stringWithFormat:@"Failed to roll the Cryptex1 MobileAssetBrain nonce"];
    v37[0] = v18;
    v36[1] = NSUnderlyingErrorKey;
    v19 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v17 userInfo:0];
    v37[1] = v19;
    v20 = [NSDictionary dictionaryWithObjects:v37 forKeys:v36 count:2];
    v21 = [NSError errorWithDomain:@"MobileAssetBrainErrorDomain" code:109 userInfo:v20];
    v22 = *(*(a1 + 72) + 8);
    v23 = *(v22 + 40);
    *(v22 + 40) = v21;
  }

  else
  {
    v18 = _MADLog(@"Brain");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *v29 = 0;
      _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "[MAB] Successfully rolled the Cryptex1 MobileAssetBrain nonce", v29, 2u);
    }
  }

  [*(a1 + 48) callback:*(a1 + 64) error:*(*(*(a1 + 72) + 8) + 40)];
LABEL_11:
}

void __51__MABrainUpdater_install_asset_options_completion___block_invoke_1247(uint64_t a1, char a2)
{
  if (a2)
  {
    v48 = NSDebugDescriptionErrorKey;
    v3 = [NSString stringWithFormat:@"Operation canceled by superceding request"];
    v49 = v3;
    v4 = [NSDictionary dictionaryWithObjects:&v49 forKeys:&v48 count:1];
    v5 = [NSError errorWithDomain:@"MobileAssetBrainErrorDomain" code:107 userInfo:v4];

    v6 = *(a1 + 56);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __51__MABrainUpdater_install_asset_options_completion___block_invoke_3;
    block[3] = &unk_4B31D8;
    v26 = *(a1 + 80);
    v7 = v5;
    v25 = v7;
    dispatch_async(v6, block);

    v8 = v26;
  }

  else
  {
    v8 = [NSMutableDictionary dictionaryWithDictionary:*(a1 + 32)];
    v9 = *(a1 + 88);
    v42 = 0;
    v43 = &v42;
    v44 = 0x3032000000;
    v45 = __Block_byref_object_copy__14;
    v46 = __Block_byref_object_dispose__14;
    v47 = 0;
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create("com.apple.MobileAssetBrain-update-sso", v10);

    *v35 = _NSConcreteStackBlock;
    v36 = 3221225472;
    v37 = __copySsoToken_block_invoke;
    v38 = &unk_4B5008;
    v41 = v9;
    v40 = &v42;
    v12 = dispatch_semaphore_create(0);
    v39 = v12;
    dispatch_async(v11, v35);
    v13 = _MADLog(@"Brain");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "[MAB] Waiting for AuthenticationServices response...", buf, 2u);
    }

    dispatch_semaphore_wait(v12, 0xFFFFFFFFFFFFFFFFLL);
    v14 = _MADLog(@"Brain");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "[MAB] Waiting for AuthenticationServices completed.", buf, 2u);
    }

    v15 = v39;
    v16 = v43[5];

    _Block_object_dispose(&v42, 8);
    [v8 setObject:v16 forKeyedSubscript:@"ssoToken"];

    v17 = [v8 objectForKeyedSubscript:@"ssoToken"];

    if (v17)
    {
      v18 = _MADLog(@"Brain");
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *v35 = 0;
        _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "[MAB] Personalizing MobileAssetBrain again, this time with AppleConnect SSO...", v35, 2u);
      }

      v19 = *(a1 + 40);
      v20 = *(a1 + 48);
      v33 = 0;
      v21 = [v19 personalize:v20 options:v8 error:&v33];
      v7 = v33;
      if (v21)
      {
        (*(*(a1 + 72) + 16))();
      }

      else
      {
        v23 = *(a1 + 56);
        v30[0] = _NSConcreteStackBlock;
        v30[1] = 3221225472;
        v30[2] = __51__MABrainUpdater_install_asset_options_completion___block_invoke_1248;
        v30[3] = &unk_4B31D8;
        v32 = *(a1 + 80);
        v7 = v7;
        v31 = v7;
        dispatch_async(v23, v30);
      }
    }

    else
    {
      v22 = *(a1 + 56);
      v27[0] = _NSConcreteStackBlock;
      v27[1] = 3221225472;
      v27[2] = __51__MABrainUpdater_install_asset_options_completion___block_invoke_2;
      v27[3] = &unk_4B31D8;
      v29 = *(a1 + 80);
      v28 = *(a1 + 64);
      dispatch_async(v22, v27);

      v7 = 0;
    }
  }
}

- (void)callback:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  callbackQueue = self->_callbackQueue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = __33__MABrainUpdater_callback_error___block_invoke;
  v11[3] = &unk_4B31D8;
  v12 = v7;
  v13 = v6;
  v9 = v7;
  v10 = v6;
  dispatch_async(callbackQueue, v11);
}

- (void)update:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[NSUUID UUID];
  v9 = [v8 UUIDString];

  scanner = self->_scanner;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = __36__MABrainUpdater_update_completion___block_invoke;
  v14[3] = &unk_4B4FC0;
  v14[4] = self;
  v15 = v9;
  v16 = v6;
  v17 = v7;
  v11 = v7;
  v12 = v6;
  v13 = v9;
  [(MABrainScanner *)scanner locateAvailableUpdateBrain:v13 options:v12 completion:v14];
}

void __36__MABrainUpdater_update_completion___block_invoke(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = [(__CFString *)v6 domain];
    if ([v8 isEqualToString:@"MobileAssetBrainErrorDomain"])
    {
      v9 = [(__CFString *)v7 code];

      if (v9 == &stru_68.segname[2])
      {
        v10 = _MADLog(@"Brain");
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v11 = "[MAB] No MobileAssetBrain update found.";
          v12 = v10;
          v13 = OS_LOG_TYPE_DEFAULT;
          v14 = 2;
LABEL_19:
          _os_log_impl(&dword_0, v12, v13, v11, buf, v14);
          goto LABEL_20;
        }

        goto LABEL_20;
      }
    }

    else
    {
    }

    v10 = _MADLog(@"Brain");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v35 = v7;
      v11 = "[MAB] MobileAsset brain scan failed: %@";
      v12 = v10;
      v13 = OS_LOG_TYPE_ERROR;
      v14 = 12;
      goto LABEL_19;
    }

LABEL_20:

    v25 = a1[4];
    v26 = a1[7];
    v27 = v7;
LABEL_21:
    [v25 callback:v26 error:v27];
    goto LABEL_22;
  }

  v15 = _MADLog(@"Brain");
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v35 = v5;
    _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "[MAB] MobileAsset brain scan completed successfully\n MABrain asset: %@", buf, 0xCu);
  }

  if (!v5)
  {
    v28 = _MADLog(@"Brain");
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v28, OS_LOG_TYPE_ERROR, "[MAB] No MobileAssetBrain update found, but no error was reported.", buf, 2u);
    }

    v25 = a1[4];
    v26 = a1[7];
    v27 = 0;
    goto LABEL_21;
  }

  v16 = [(__CFString *)v5 attributes];
  v17 = [v16 objectForKeyedSubscript:@"RestoreVersion"];
  v18 = a1[4];
  v19 = *(v18 + 48);
  *(v18 + 48) = v17;

  v20 = _MADLog(@"Brain");
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = *(a1[4] + 48);
    if (!v21)
    {
      v21 = @"nil";
    }

    *buf = 138412290;
    v35 = v21;
    _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEFAULT, "[MAB] Pending MobileAssetBrain version is now %@", buf, 0xCu);
  }

  if ([(__CFString *)v5 state]== &dword_0 + 2)
  {
    [(__CFString *)v5 purgeSync];
  }

  v22 = [[MABrainDownloader alloc] initWithMAAsset:v5];
  v23 = a1[5];
  v24 = a1[6];
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = __36__MABrainUpdater_update_completion___block_invoke_1263;
  v29[3] = &unk_4B4F98;
  v29[4] = a1[4];
  v30 = v23;
  v31 = v5;
  v32 = a1[6];
  v33 = a1[7];
  [(MABrainDownloader *)v22 download:v30 options:v24 completion:v29];

LABEL_22:
}

void __36__MABrainUpdater_update_completion___block_invoke_1263(id *a1, void *a2)
{
  v3 = a2;
  v4 = _MADLog(@"Brain");
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v22 = v3;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "[MAB] MobileAsset brain download failed: %@", buf, 0xCu);
    }

    v6 = [v3 domain];
    if ([v6 isEqualToString:@"com.apple.MobileAssetError.Download"])
    {
      v7 = [v3 code];

      if (v7 == &stru_20.segname[8])
      {
LABEL_14:
        [a1[4] callback:a1[8] error:v3];
        goto LABEL_15;
      }
    }

    else
    {
    }

    v13 = a1[4];
    v14 = v13[6];
    v13[6] = 0;

    v15 = _MADLog(@"Brain");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "[MAB] Pending MobileAssetBrain version is now nil due to failed download", buf, 2u);
    }

    goto LABEL_14;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "[MAB] MobileAsset brain download completed successfully", buf, 2u);
  }

  block[0] = _NSConcreteStackBlock;
  v16 = *(a1 + 2);
  v8 = *(v16 + 8);
  block[1] = 3221225472;
  block[2] = __36__MABrainUpdater_update_completion___block_invoke_1264;
  block[3] = &unk_4B4F70;
  v9 = *(&v16 + 1);
  v10 = a1[6];
  v11 = a1[7];
  *&v12 = v10;
  *(&v12 + 1) = v11;
  v18 = v16;
  v19 = v12;
  v20 = a1[8];
  dispatch_async(v8, block);

LABEL_15:
}

void __36__MABrainUpdater_update_completion___block_invoke_1264(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = __36__MABrainUpdater_update_completion___block_invoke_2;
  v6[3] = &unk_4B4F48;
  v6[4] = v2;
  v9 = *(a1 + 64);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  [v2 install:v3 asset:v4 options:v5 completion:v6];
}

void __36__MABrainUpdater_update_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (!v3)
  {
    v7 = _MADLog(@"Brain");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(*(a1 + 32) + 48);
      if (!v8)
      {
        v8 = @"nil";
      }

      *v15 = 138412290;
      *&v15[4] = v8;
      v9 = "[MAB] MobileAssetBrain (version: %@) install completed successfully";
      v10 = v7;
      v11 = 12;
      goto LABEL_12;
    }

LABEL_13:

    goto LABEL_14;
  }

  v5 = [v3 domain];
  if (![v5 isEqualToString:@"MobileAssetBrainErrorDomain"])
  {

LABEL_10:
    v12 = *(a1 + 32);
    v13 = *(v12 + 48);
    *(v12 + 48) = 0;

    v7 = _MADLog(@"Brain");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      v9 = "[MAB] Pending MobileAssetBrain version is now nil due to failed install";
      v10 = v7;
      v11 = 2;
LABEL_12:
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, v9, v15, v11);
      goto LABEL_13;
    }

    goto LABEL_13;
  }

  v6 = [v4 code];

  if (v6 != &stru_68.sectname[3])
  {
    goto LABEL_10;
  }

LABEL_14:
  [*(a1 + 32) callback:*(a1 + 56) error:{v4, *v15}];
  [*(a1 + 40) purgeSync];
  if (!v4)
  {
    v14 = [*(a1 + 48) objectForKeyedSubscript:@"relaunchBrain"];
    if (v14)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if ([v14 BOOLValue])
        {
          MABrainUtilityScheduleDeviceUnlockAction(*(*(a1 + 32) + 8), @"Relaunch mobileassetd - brain updated", (*(a1 + 32) + 56), &__block_literal_global_1273);
        }
      }
    }
  }
}

void __36__MABrainUpdater_update_completion___block_invoke_1271(id a1, BOOL a2)
{
  v2 = _MADLog(@"Brain");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "[MAB] Exiting MA brain before relaunching to use newly installed version", v4, 2u);
  }

  v3 = +[MABrainRestartManager sharedInstance];
  [v3 quiesceAndRestartMobileAsset];

  exit(1);
}

- (void)purge:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [a3 objectForKeyedSubscript:@"relaunchBrain"];
  v13 = 0;
  [MABrainBundle destageProposed:&v13];
  v8 = v13;
  v12 = 0;
  [MABrainBundle destageCurrent:&v12];
  v9 = v12;
  v10 = v8;
  v11 = v10;
  if (v9)
  {
    v11 = v9;
  }

  [(MABrainUpdater *)self callback:v6 error:v11];
  [(MABrainUpdater *)self garbageCollect];
  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v7 BOOLValue])
      {
        dispatch_async(self->_updateQueue, &__block_literal_global_1276);
      }
    }
  }
}

void __35__MABrainUpdater_purge_completion___block_invoke(id a1)
{
  v1 = _MADLog(@"Brain");
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_0, v1, OS_LOG_TYPE_DEFAULT, "[MAB] Exiting mobileassetd to revert to built-in MobileAsset brain...", v2, 2u);
  }

  raise(15);
}

@end