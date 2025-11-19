@interface SSSpringBoardUtility
+ (BOOL)_getProcessID:(int *)a3 forApplicationIdentifier:(id)a4;
+ (BOOL)launchApplicationWithIdentifier:(id)a3 options:(id)a4 error:(id *)a5;
+ (id)_applicationStateMonitor;
+ (id)_dispatchQueue;
+ (id)_dispatchQueueNotifications;
+ (id)_dispatchQueueSpringBoard;
+ (id)_getApplicationInfoForIdentifier:(id)a3 key:(id)a4;
+ (id)_stateCache;
+ (void)_setApplicationState:(unsigned int)a3 forClientID:(id)a4;
+ (void)wakeAppUsingRequest:(id)a3;
@end

@implementation SSSpringBoardUtility

+ (BOOL)launchApplicationWithIdentifier:(id)a3 options:(id)a4 error:(id *)a5
{
  v52 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = __Block_byref_object_copy__17;
  v46 = __Block_byref_object_dispose__17;
  v47 = 0;
  v9 = dispatch_semaphore_create(0);
  v10 = SSVFrontBoardServicesFramework();
  v11 = [SSVWeakLinkedClassForString(&cfstr_Fbssystemservi.isa v10)];
  v36 = MEMORY[0x1E69E9820];
  v37 = 3221225472;
  v38 = __70__SSSpringBoardUtility_launchApplicationWithIdentifier_options_error___block_invoke;
  v39 = &unk_1E84ADE80;
  v41 = &v42;
  v12 = v9;
  v40 = v12;
  [v11 openApplication:v7 options:v8 withResult:&v36];

  v13 = dispatch_time(0, 30000000000);
  if (dispatch_semaphore_wait(v12, v13))
  {
    v14 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v14)
    {
      v14 = +[SSLogConfig sharedConfig];
    }

    v15 = [v14 shouldLog];
    v16 = [v14 shouldLogToDisk];
    v17 = [v14 OSLogObject];
    v18 = v17;
    if (v16)
    {
      v15 |= 2u;
    }

    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v15 &= 2u;
    }

    if (v15)
    {
      v19 = objc_opt_class();
      v48 = 138543618;
      v49 = v19;
      v50 = 2114;
      v51 = v7;
      v20 = v19;
      LODWORD(v35) = 22;
      v21 = _os_log_send_and_compose_impl();

      if (!v21)
      {
LABEL_12:

        goto LABEL_13;
      }

      v18 = [MEMORY[0x1E696AEC0] stringWithCString:v21 encoding:{4, &v48, v35, v36, v37, v38, v39}];
      free(v21);
      SSFileLog(v14, @"%@", v22, v23, v24, v25, v26, v27, v18);
    }

    goto LABEL_12;
  }

LABEL_13:
  v28 = SSVFrontBoardServicesFramework();
  v29 = SSVWeakLinkedStringConstantForString("FBSOpenApplicationErrorDomain", v28);
  v30 = [v43[5] domain];
  v31 = [v30 isEqualToString:v29];

  v32 = v43[5];
  if (v31)
  {
    v32 = [v32 code];
  }

  v33 = v32 == 0;
  if (a5 && v32)
  {
    *a5 = v43[5];
  }

  _Block_object_dispose(&v42, 8);
  return v33;
}

void __70__SSSpringBoardUtility_launchApplicationWithIdentifier_options_error___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

+ (void)wakeAppUsingRequest:(id)a3
{
  v4 = a3;
  v5 = [a1 _dispatchQueueSpringBoard];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__SSSpringBoardUtility_wakeAppUsingRequest___block_invoke;
  v7[3] = &unk_1E84ADDB8;
  v8 = v4;
  v9 = a1;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __44__SSSpringBoardUtility_wakeAppUsingRequest___block_invoke(uint64_t a1)
{
  v92 = *MEMORY[0x1E69E9840];
  v2 = +[SSTransactionStore defaultStore];
  [v2 takeKeepAliveWithTransactionID:@"com.apple.storeservices.wakeAppTransactionIdentifier"];

  v3 = [*(a1 + 32) appIdentifier];
  if ([*(a1 + 32) shouldLaunchApp])
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v5 = SSVFrontBoardServicesFramework();
    v6 = SSVWeakLinkedStringConstantForString("FBSOpenApplicationOptionKeyActivateSuspended", v5);
    [v4 setObject:MEMORY[0x1E695E118] forKeyedSubscript:v6];

    v7 = [*(a1 + 32) launchOptions];
    if (v7)
    {
      v8 = SSVFrontBoardServicesFramework();
      v9 = SSVWeakLinkedStringConstantForString("FBSOpenApplicationOptionKeyPayloadOptions", v8);
      [v4 setObject:v7 forKeyedSubscript:v9];
    }

    v10 = *(a1 + 40);
    v83 = 0;
    v11 = [v10 launchApplicationWithIdentifier:v3 options:v4 error:&v83];
    v12 = v83;
    v13 = v12;
    if (v11)
    {

      goto LABEL_6;
    }

    v44 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v44)
    {
      v44 = +[SSLogConfig sharedConfig];
    }

    v45 = [v44 shouldLog];
    if ([v44 shouldLogToDisk])
    {
      v46 = v45 | 2;
    }

    else
    {
      v46 = v45;
    }

    v47 = [v44 OSLogObject];
    if (!os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      v46 &= 2u;
    }

    if (v46)
    {
      v48 = objc_opt_class();
      v84 = 138543874;
      v85 = v48;
      v86 = 2114;
      v87 = v3;
      v88 = 2114;
      v89 = *&v13;
      v49 = v48;
      LODWORD(v77) = 32;
      v50 = _os_log_send_and_compose_impl();

      if (!v50)
      {
LABEL_44:

        goto LABEL_45;
      }

      v47 = [MEMORY[0x1E696AEC0] stringWithCString:v50 encoding:{4, &v84, v77}];
      free(v50);
      SSFileLog(v44, @"%@", v51, v52, v53, v54, v55, v56, v47);
    }

    goto LABEL_44;
  }

LABEL_6:
  v82 = 0;
  if ([*(a1 + 40) _getProcessID:&v82 forApplicationIdentifier:v3])
  {
    v14 = [*(a1 + 32) processAssertionIdentifier];
    [*(a1 + 32) processAssertionInterval];
    v16 = v15;
    v17 = [*(a1 + 32) processAssertionReason];
    v18 = v17;
    if (!v14 || !v17 || v16 <= 2.22044605e-16)
    {
      v58 = +[SSTransactionStore defaultStore];
      [v58 releaseKeepAliveWithTransactionID:@"com.apple.storeservices.wakeAppTransactionIdentifier"];
LABEL_66:

      goto LABEL_67;
    }

    v19 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v19)
    {
      v19 = +[SSLogConfig sharedConfig];
    }

    v20 = [v19 shouldLog];
    if ([v19 shouldLogToDisk])
    {
      v21 = v20 | 2;
    }

    else
    {
      v21 = v20;
    }

    v22 = [v19 OSLogObject];
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v21 &= 2u;
    }

    if (v21)
    {
      v23 = objc_opt_class();
      v84 = 138544130;
      v85 = v23;
      v86 = 2114;
      v87 = v14;
      v88 = 2050;
      v89 = v16;
      v90 = 2114;
      v91 = v18;
      v24 = v23;
      LODWORD(v77) = 42;
      v76 = &v84;
      v25 = _os_log_send_and_compose_impl();

      if (!v25)
      {
        goto LABEL_21;
      }

      v22 = [MEMORY[0x1E696AEC0] stringWithCString:v25 encoding:{4, &v84, v77}];
      free(v25);
      SSFileLog(v19, @"%@", v26, v27, v28, v29, v30, v31, v22);
    }

LABEL_21:
    if ([v18 isEqualToString:@"ProcessAssertionReasonBackgroundDownload"])
    {
      v32 = 10;
    }

    else if ([v18 isEqualToString:@"ProcessAssertionReasonTaskCompletion"])
    {
      v32 = 4;
    }

    else
    {
      v32 = 0;
    }

    v59 = objc_alloc(MEMORY[0x1E698D038]);
    v58 = [v59 initWithPID:v82 flags:1 reason:v32 name:v14];
    if ([v58 valid])
    {
      v60 = dispatch_time(0, (v16 * 1000000000.0));
      v61 = [*(a1 + 40) _dispatchQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __44__SSSpringBoardUtility_wakeAppUsingRequest___block_invoke_18;
      block[3] = &unk_1E84AD6E0;
      v81 = *(a1 + 40);
      v79 = v14;
      v80 = v58;
      dispatch_after(v60, v61, block);

      v62 = v79;
LABEL_65:

      goto LABEL_66;
    }

    v63 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v63)
    {
      v63 = +[SSLogConfig sharedConfig];
    }

    v64 = [v63 shouldLog];
    if ([v63 shouldLogToDisk])
    {
      v65 = v64 | 2;
    }

    else
    {
      v65 = v64;
    }

    v66 = [v63 OSLogObject];
    if (!os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
    {
      v65 &= 2u;
    }

    if (v65)
    {
      v67 = objc_opt_class();
      v84 = 138543618;
      v85 = v67;
      v86 = 2114;
      v87 = v14;
      v68 = v67;
      LODWORD(v77) = 22;
      v69 = _os_log_send_and_compose_impl();

      if (!v69)
      {
LABEL_64:

        v62 = +[SSTransactionStore defaultStore];
        [v62 releaseKeepAliveWithTransactionID:@"com.apple.storeservices.wakeAppTransactionIdentifier"];
        goto LABEL_65;
      }

      v66 = [MEMORY[0x1E696AEC0] stringWithCString:v69 encoding:{4, &v84, v77}];
      free(v69);
      SSFileLog(v63, @"%@", v70, v71, v72, v73, v74, v75, v66);
    }

    goto LABEL_64;
  }

  v4 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v4)
  {
    v4 = +[SSLogConfig sharedConfig];
  }

  v33 = [v4 shouldLog];
  if ([v4 shouldLogToDisk])
  {
    v34 = v33 | 2;
  }

  else
  {
    v34 = v33;
  }

  v7 = [v4 OSLogObject];
  if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v34 &= 2u;
  }

  if (!v34)
  {
    goto LABEL_45;
  }

  v35 = objc_opt_class();
  v84 = 138543618;
  v85 = v35;
  v86 = 2114;
  v87 = v3;
  v36 = v35;
  LODWORD(v77) = 22;
  v37 = _os_log_send_and_compose_impl();

  if (v37)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithCString:v37 encoding:{4, &v84, v77}];
    free(v37);
    SSFileLog(v4, @"%@", v38, v39, v40, v41, v42, v43, v7);
LABEL_45:
  }

  v57 = +[SSTransactionStore defaultStore];
  [v57 releaseKeepAliveWithTransactionID:@"com.apple.storeservices.wakeAppTransactionIdentifier"];

LABEL_67:
}

void __44__SSSpringBoardUtility_wakeAppUsingRequest___block_invoke_18(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = +[SSLogConfig sharedDaemonConfig];
  if (!v2)
  {
    v2 = +[SSLogConfig sharedConfig];
  }

  v3 = [v2 shouldLog];
  if ([v2 shouldLogToDisk])
  {
    v4 = v3 | 2;
  }

  else
  {
    v4 = v3;
  }

  v5 = [v2 OSLogObject];
  if (!os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v4 &= 2u;
  }

  if (!v4)
  {
    goto LABEL_11;
  }

  v6 = objc_opt_class();
  v7 = *(a1 + 32);
  *v18 = 138543618;
  *&v18[4] = v6;
  *&v18[12] = 2112;
  *&v18[14] = v7;
  v8 = v6;
  LODWORD(v17) = 22;
  v9 = _os_log_send_and_compose_impl();

  if (v9)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithCString:v9 encoding:{4, v18, v17, *v18, *&v18[16]}];
    free(v9);
    SSFileLog(v2, @"%@", v10, v11, v12, v13, v14, v15, v5);
LABEL_11:
  }

  [*(a1 + 40) invalidate];
  v16 = +[SSTransactionStore defaultStore];
  [v16 releaseKeepAliveWithTransactionID:@"com.apple.storeservices.wakeAppTransactionIdentifier"];
}

+ (id)_applicationStateMonitor
{
  v3 = [a1 _dispatchQueueSpringBoard];
  dispatch_assert_queue_V2(v3);

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__SSSpringBoardUtility__applicationStateMonitor__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (_applicationStateMonitor_onceToken != -1)
  {
    dispatch_once(&_applicationStateMonitor_onceToken, block);
  }

  v4 = _applicationStateMonitor_sApplicationStateMonitor;

  return v4;
}

void __48__SSSpringBoardUtility__applicationStateMonitor__block_invoke(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x1E698D028]) initWithBundleIDs:0 states:0];
  v3 = _applicationStateMonitor_sApplicationStateMonitor;
  _applicationStateMonitor_sApplicationStateMonitor = v2;

  objc_initWeak(&location, *(a1 + 32));
  v4 = _applicationStateMonitor_sApplicationStateMonitor;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __48__SSSpringBoardUtility__applicationStateMonitor__block_invoke_2;
  v5[3] = &unk_1E84AE568;
  objc_copyWeak(&v6, &location);
  [v4 setHandler:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __48__SSSpringBoardUtility__applicationStateMonitor__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x1E698D010]];
  v5 = [v4 unsignedIntValue];
  v6 = [v3 objectForKeyedSubscript:*MEMORY[0x1E698CFF8]];

  [WeakRetained _setApplicationState:v5 forClientID:v6];
}

+ (id)_dispatchQueue
{
  if (_dispatchQueue_onceToken != -1)
  {
    +[SSSpringBoardUtility _dispatchQueue];
  }

  v3 = _dispatchQueue_sDispatchQueue;

  return v3;
}

void __38__SSSpringBoardUtility__dispatchQueue__block_invoke()
{
  v0 = dispatch_queue_create("com.apple.StoreServices.SSSpringBoardUtility", 0);
  v1 = _dispatchQueue_sDispatchQueue;
  _dispatchQueue_sDispatchQueue = v0;
}

+ (id)_dispatchQueueNotifications
{
  if (_dispatchQueueNotifications_onceToken != -1)
  {
    +[SSSpringBoardUtility _dispatchQueueNotifications];
  }

  v3 = _dispatchQueueNotifications_sDispatchQueue;

  return v3;
}

void __51__SSSpringBoardUtility__dispatchQueueNotifications__block_invoke()
{
  v0 = dispatch_queue_create("com.apple.StoreServices.SSSpringBoardUtility.Notifications", 0);
  v1 = _dispatchQueueNotifications_sDispatchQueue;
  _dispatchQueueNotifications_sDispatchQueue = v0;
}

+ (id)_dispatchQueueSpringBoard
{
  if (_dispatchQueueSpringBoard_onceToken != -1)
  {
    +[SSSpringBoardUtility _dispatchQueueSpringBoard];
  }

  v3 = _dispatchQueueSpringBoard_sDispatchQueueSpringBoard;

  return v3;
}

void __49__SSSpringBoardUtility__dispatchQueueSpringBoard__block_invoke()
{
  v0 = dispatch_queue_create("com.apple.StoreServices.SSSpringBoardUtility.SpringBoard", 0);
  v1 = _dispatchQueueSpringBoard_sDispatchQueueSpringBoard;
  _dispatchQueueSpringBoard_sDispatchQueueSpringBoard = v0;
}

+ (id)_getApplicationInfoForIdentifier:(id)a3 key:(id)a4
{
  v47 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [a1 _dispatchQueueSpringBoard];
  dispatch_assert_queue_V2(v8);

  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__17;
  v39 = __Block_byref_object_dispose__17;
  v40 = 0;
  v9 = [a1 _applicationStateMonitor];
  v10 = dispatch_semaphore_create(0);
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __61__SSSpringBoardUtility__getApplicationInfoForIdentifier_key___block_invoke;
  v31[3] = &unk_1E84AE590;
  v34 = &v35;
  v11 = v7;
  v32 = v11;
  v12 = v10;
  v33 = v12;
  [v9 applicationInfoForApplication:v6 completion:v31];
  v13 = dispatch_time(0, 30000000000);
  if (dispatch_semaphore_wait(v12, v13))
  {
    v14 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v14)
    {
      v14 = +[SSLogConfig sharedConfig];
    }

    v15 = [v14 shouldLog];
    v16 = [v14 shouldLogToDisk];
    v17 = [v14 OSLogObject];
    v18 = v17;
    if (v16)
    {
      v15 |= 2u;
    }

    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v15 &= 2u;
    }

    if (v15)
    {
      v19 = objc_opt_class();
      v41 = 138412802;
      v42 = v19;
      v43 = 2114;
      v44 = v6;
      v45 = 2114;
      v46 = v11;
      v20 = v19;
      LODWORD(v30) = 32;
      v21 = _os_log_send_and_compose_impl();

      if (!v21)
      {
LABEL_12:

        goto LABEL_13;
      }

      v18 = [MEMORY[0x1E696AEC0] stringWithCString:v21 encoding:{4, &v41, v30}];
      free(v21);
      SSFileLog(v14, @"%@", v22, v23, v24, v25, v26, v27, v18);
    }

    goto LABEL_12;
  }

LABEL_13:
  v28 = v36[5];

  _Block_object_dispose(&v35, 8);

  return v28;
}

void __61__SSSpringBoardUtility__getApplicationInfoForIdentifier_key___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v6 objectForKey:*(a1 + 32)];
    v4 = *(*(a1 + 48) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

+ (BOOL)_getProcessID:(int *)a3 forApplicationIdentifier:(id)a4
{
  v6 = a4;
  v7 = [a1 _dispatchQueueSpringBoard];
  dispatch_assert_queue_V2(v7);

  v8 = [a1 _getApplicationInfoForIdentifier:v6 key:*MEMORY[0x1E698D018]];

  v9 = objc_opt_respondsToSelector();
  v10 = v9;
  if (a3 && (v9 & 1) != 0)
  {
    *a3 = [v8 intValue];
  }

  return v10 & 1;
}

+ (void)_setApplicationState:(unsigned int)a3 forClientID:(id)a4
{
  v6 = a4;
  v7 = [a1 _dispatchQueueSpringBoard];
  dispatch_assert_queue_V2(v7);

  v8 = [a1 _dispatchQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__SSSpringBoardUtility__setApplicationState_forClientID___block_invoke;
  block[3] = &unk_1E84AE5B8;
  v13 = a3;
  v11 = v6;
  v12 = a1;
  v9 = v6;
  dispatch_async(v8, block);
}

void __57__SSSpringBoardUtility__setApplicationState_forClientID___block_invoke(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInteger:*(a1 + 48)];
  v3 = [*(a1 + 40) _stateCache];
  [v3 setObject:v2 forKey:*(a1 + 32)];

  v4 = [*(a1 + 40) _dispatchQueueNotifications];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__SSSpringBoardUtility__setApplicationState_forClientID___block_invoke_2;
  block[3] = &unk_1E84AD6E0;
  v7 = *(a1 + 32);
  v8 = v2;
  v9 = *(a1 + 40);
  v5 = v2;
  dispatch_async(v4, block);
}

void __57__SSSpringBoardUtility__setApplicationState_forClientID___block_invoke_2(void *a1)
{
  v7[2] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E698D010];
  v6[0] = *MEMORY[0x1E698CFF8];
  v6[1] = v2;
  v3 = a1[5];
  v7[0] = a1[4];
  v7[1] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:2];
  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  [v5 postNotificationName:@"SSSpringBoardUtilityApplicationStateChangeNotification" object:a1[6] userInfo:v4];
}

+ (id)_stateCache
{
  if (_stateCache_onceToken != -1)
  {
    +[SSSpringBoardUtility _stateCache];
  }

  v3 = _stateCache_sStateCache;

  return v3;
}

void __35__SSSpringBoardUtility__stateCache__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v1 = _stateCache_sStateCache;
  _stateCache_sStateCache = v0;
}

@end