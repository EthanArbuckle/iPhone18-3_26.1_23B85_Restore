@interface UAFAssetUtilities
- (BOOL)_networkIsExpensiveForPath:(id)a3;
- (BOOL)assistantEnabled;
- (BOOL)hasSufficientDiskSpaceForClient:(unint64_t)a3;
- (BOOL)hasSufficientDiskSpaceForDownload;
- (BOOL)understandingOnDeviceAssetsAvailable;
- (NSDictionary)assistantUODStatus;
- (NSString)siriLanguage;
- (UAFAssetStatus)assetStatus;
- (UAFAssetUtilities)init;
- (UAFAssetUtilitiesDelegate)delegate;
- (UAFRetryState)retryState;
- (id)_createConnection;
- (id)currentAssetStatus;
- (id)getAssistantLanguageIfAvailableSync;
- (id)getDiskSpaceNeededInBytesForLanguage:(id)a3 forClient:(unint64_t)a4;
- (unint64_t)_checkFreeSpaceNeededForLanguage:(id)a3 forClient:(unint64_t)a4;
- (void)_assistantLanguageUpdate;
- (void)_assistantPreferencesUpdate;
- (void)_downloadSiriAssetsOverCellular:(BOOL)a3;
- (void)_downloadSiriAssetsRetry;
- (void)_downloadSiriAssetsWithDelay:(double)a3;
- (void)_handleNetworkPathUpdate:(id)a3;
- (void)_stopObservers;
- (void)_triggerDelegateAssetStatusUpdated;
- (void)_updateDelegateForUODAvailable:(BOOL)a3 uodStatus:(id)a4;
- (void)assetsAreAvailableForLanguage:(id)a3 completion:(id)a4;
- (void)dealloc;
- (void)downloadSiriAssets;
- (void)downloadSiriAssetsIfNeeded;
- (void)downloadSiriAssetsOverCellular;
- (void)refreshUAFAssetStatusAsync;
- (void)refreshUnderstandingOnDeviceAssetsAvailableAsync;
- (void)setRetryState:(id)a3;
- (void)startObserversWithOptions:(unint64_t)a3;
@end

@implementation UAFAssetUtilities

- (void)refreshUAFAssetStatusAsync
{
  v3 = [(UAFAssetUtilities *)self assistantQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__UAFAssetUtilities_refreshUAFAssetStatusAsync__block_invoke;
  block[3] = &unk_1E7FFCFD0;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)refreshUnderstandingOnDeviceAssetsAvailableAsync
{
  v3 = [(UAFAssetUtilities *)self assistantGroup];
  v4 = [(UAFAssetUtilities *)self assistantQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__UAFAssetUtilities_refreshUnderstandingOnDeviceAssetsAvailableAsync__block_invoke;
  block[3] = &unk_1E7FFCFD0;
  block[4] = self;
  dispatch_group_async(v3, v4, block);
}

void __47__UAFAssetUtilities_refreshUAFAssetStatusAsync__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _createConnection];
  objc_initWeak(&location, *(a1 + 32));
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __47__UAFAssetUtilities_refreshUAFAssetStatusAsync__block_invoke_2;
  v4[3] = &unk_1E7FFD0C0;
  objc_copyWeak(&v6, &location);
  v3 = v2;
  v5 = v3;
  [v3 checkAssetStatus:v4];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

- (id)_createConnection
{
  v2 = [[UAFXPCConnection alloc] initWithUserService];

  return v2;
}

void __69__UAFAssetUtilities_refreshUnderstandingOnDeviceAssetsAvailableAsync__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) getAssistantLanguageIfAvailableSync];
  [*(a1 + 32) assetsAreAvailableForLanguage:v2 completion:0];
}

- (id)getAssistantLanguageIfAvailableSync
{
  if (+[UAFCommonUtilities isAssistantEnabled])
  {
    v2 = +[UAFCommonUtilities currentAssistantLanguage];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void __47__UAFAssetUtilities_refreshUAFAssetStatusAsync__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    if (v6)
    {
      v9 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v19 = "[UAFAssetUtilities refreshUAFAssetStatusAsync]_block_invoke";
        v20 = 2112;
        v21 = v6;
        _os_log_error_impl(&dword_1BCF2C000, v9, OS_LOG_TYPE_ERROR, "%s #settings checkAssetStatus error: %@", buf, 0x16u);
      }
    }

    else if (v5)
    {
      v10 = [WeakRetained statusQueue];
      v12 = MEMORY[0x1E69E9820];
      v13 = 3221225472;
      v14 = __47__UAFAssetUtilities_refreshUAFAssetStatusAsync__block_invoke_3;
      v15 = &unk_1E7FFD098;
      v16 = v8;
      v17 = v5;
      dispatch_async(v10, &v12);
    }

    [*(a1 + 32) invalidate];
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __47__UAFAssetUtilities_refreshUAFAssetStatusAsync__block_invoke_3(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 8);
  v3 = nw_path_evaluator_copy_path();
  if (![*(a1 + 40) state] && (objc_msgSend(*(a1 + 32), "_networkIsExpensiveForPath:", v3) & 1) == 0)
  {
    v4 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315138;
      v11 = "[UAFAssetUtilities refreshUAFAssetStatusAsync]_block_invoke_3";
      _os_log_impl(&dword_1BCF2C000, v4, OS_LOG_TYPE_DEFAULT, "%s #settings Forcing unknown server state to not started until WiFi gets enabled", &v10, 0xCu);
    }

    [*(a1 + 40) setState:2];
  }

  [*(a1 + 32) setAssetStatus:*(a1 + 40)];
  v5 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = +[UAFAssetStatus stringFromUAFAssetState:](UAFAssetStatus, "stringFromUAFAssetState:", [*(a1 + 40) state]);
    v7 = [*(a1 + 40) value];
    v8 = [v7 unsignedIntegerValue];
    v10 = 136315650;
    v11 = "[UAFAssetUtilities refreshUAFAssetStatusAsync]_block_invoke";
    v12 = 2112;
    v13 = v6;
    v14 = 1024;
    v15 = v8;
    _os_log_impl(&dword_1BCF2C000, v5, OS_LOG_TYPE_DEFAULT, "%s #settings Refresh server side asset state %@ with value %d", &v10, 0x1Cu);
  }

  [*(a1 + 32) _triggerDelegateAssetStatusUpdated];
  v9 = *MEMORY[0x1E69E9840];
}

- (void)_triggerDelegateAssetStatusUpdated
{
  v3 = [(UAFAssetUtilities *)self statusQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(UAFAssetUtilities *)self delegateQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__UAFAssetUtilities__triggerDelegateAssetStatusUpdated__block_invoke;
  block[3] = &unk_1E7FFCFD0;
  block[4] = self;
  dispatch_async(v4, block);
}

void __55__UAFAssetUtilities__triggerDelegateAssetStatusUpdated__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[UAFAssetUtilities _triggerDelegateAssetStatusUpdated]_block_invoke";
    _os_log_impl(&dword_1BCF2C000, v2, OS_LOG_TYPE_DEFAULT, "%s #settings asset status update requested", &v8, 0xCu);
  }

  v3 = [*(a1 + 32) delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315138;
      v9 = "[UAFAssetUtilities _triggerDelegateAssetStatusUpdated]_block_invoke";
      _os_log_impl(&dword_1BCF2C000, v5, OS_LOG_TYPE_DEFAULT, "%s #settings asset status delegate", &v8, 0xCu);
    }

    v6 = [*(a1 + 32) delegate];
    [v6 handleAssetStatusUpdated];
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (id)currentAssetStatus
{
  v42 = *MEMORY[0x1E69E9840];
  v3 = [(UAFAssetUtilities *)self assetStatus];
  v4 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = +[UAFAssetStatus stringFromUAFAssetState:](UAFAssetStatus, "stringFromUAFAssetState:", [v3 state]);
    v6 = [v3 value];
    *buf = 136315650;
    v33 = "[UAFAssetUtilities currentAssetStatus]";
    v34 = 2112;
    v35 = v5;
    v36 = 1024;
    v37 = [v6 unsignedIntegerValue];
    _os_log_impl(&dword_1BCF2C000, v4, OS_LOG_TYPE_DEFAULT, "%s #settings Current asset state %@ with value %d", buf, 0x1Cu);
  }

  v7 = +[UAFCommonUtilities isAssistantEnabled];
  v8 = +[UAFCommonUtilities deviceSupportAndUseHybridASR];
  v9 = +[UAFCommonUtilities deviceSupportFullUOD];
  if (![v3 state] || objc_msgSend(v3, "state") == 2 || objc_msgSend(v3, "state") == 4)
  {
    v10 = 0;
    if (!v7)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v10 = [v3 state] != 6;
    if (!v7)
    {
      goto LABEL_13;
    }
  }

  if ([(UAFAssetUtilities *)self autoRetryEnabled]&& self->_networkSatisfied && !self->_networkExpensive && !v10 && (v8 || v9))
  {
    objc_initWeak(buf, self);
    v11 = [(UAFAssetUtilities *)self assistantQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __39__UAFAssetUtilities_currentAssetStatus__block_invoke;
    block[3] = &unk_1E7FFD110;
    objc_copyWeak(&v31, buf);
    dispatch_async(v11, block);

    objc_destroyWeak(&v31);
    objc_destroyWeak(buf);
  }

LABEL_13:
  v12 = [(UAFAssetUtilities *)self showHybridAsUnsupported];
  v13 = v9 || v8;
  if (v12)
  {
    v13 = v9;
  }

  if ((v7 & v13 & 1) == 0)
  {
    [v3 setState:1];
    v14 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v16 = +[UAFAssetStatus stringFromUAFAssetState:](UAFAssetStatus, "stringFromUAFAssetState:", [v3 state]);
      *buf = 136316162;
      v33 = "[UAFAssetUtilities currentAssetStatus]";
      v34 = 2112;
      v35 = v16;
      v36 = 1024;
      v37 = v7;
      v38 = 1024;
      v39 = v8;
      v40 = 1024;
      v41 = v9;
      _os_log_impl(&dword_1BCF2C000, v14, OS_LOG_TYPE_DEFAULT, "%s #settings Forcing display state to %@ (enabled:%d, hybridUOD:%d, fullUOD:%d)", buf, 0x28u);
    }

    goto LABEL_22;
  }

  if (v9 && [(UAFAssetUtilities *)self understandingOnDeviceAssetsAvailable])
  {
    [v3 setState:5];
    v14 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = +[UAFAssetStatus stringFromUAFAssetState:](UAFAssetStatus, "stringFromUAFAssetState:", [v3 state]);
      *buf = 136315394;
      v33 = "[UAFAssetUtilities currentAssetStatus]";
      v34 = 2112;
      v35 = v15;
      _os_log_impl(&dword_1BCF2C000, v14, OS_LOG_TYPE_DEFAULT, "%s #settings Forcing display state to %@ due to UOD available", buf, 0x16u);
    }

LABEL_22:
  }

  v17 = +[UAFAssetStatus mockAssetStatus];
  v18 = v17;
  if (v17)
  {
    [v3 setState:{objc_msgSend(v17, "state")}];
    v19 = [v18 value];
    [v3 setValue:v19];

    v20 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = +[UAFAssetStatus stringFromUAFAssetState:](UAFAssetStatus, "stringFromUAFAssetState:", [v3 state]);
      v22 = [v3 value];
      v23 = [v22 unsignedIntegerValue];
      *buf = 136315650;
      v33 = "[UAFAssetUtilities currentAssetStatus]";
      v34 = 2112;
      v35 = v21;
      v36 = 1024;
      v37 = v23;
      _os_log_impl(&dword_1BCF2C000, v20, OS_LOG_TYPE_DEFAULT, "%s #settings Using mock asset state %@ with value %d", buf, 0x1Cu);
    }
  }

  v24 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = +[UAFAssetStatus stringFromUAFAssetState:](UAFAssetStatus, "stringFromUAFAssetState:", [v3 state]);
    v26 = [v3 value];
    v27 = [v26 unsignedIntegerValue];
    *buf = 136315650;
    v33 = "[UAFAssetUtilities currentAssetStatus]";
    v34 = 2112;
    v35 = v25;
    v36 = 1024;
    v37 = v27;
    _os_log_impl(&dword_1BCF2C000, v24, OS_LOG_TYPE_DEFAULT, "%s #settings Returning state %@ with value %d", buf, 0x1Cu);
  }

  v28 = *MEMORY[0x1E69E9840];

  return v3;
}

- (UAFAssetStatus)assetStatus
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [(UAFAssetUtilities *)self assistantGroup];
  [(UAFAssetUtilities *)self assetAvailableCheckTimeout];
  v5 = dispatch_time(0, (v4 * 1000000000.0));
  v6 = dispatch_group_wait(v3, v5);

  if (v6)
  {
    v7 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "[UAFAssetUtilities assetStatus]";
      _os_log_error_impl(&dword_1BCF2C000, v7, OS_LOG_TYPE_ERROR, "%s #settings Failed to check UAF asset status due to timeout", &buf, 0xCu);
    }
  }

  v8 = [(UAFAssetUtilities *)self statusQueue];
  dispatch_assert_queue_not_V2(v8);

  *&buf = 0;
  *(&buf + 1) = &buf;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy_;
  v17 = __Block_byref_object_dispose_;
  v18 = 0;
  v9 = [(UAFAssetUtilities *)self statusQueue];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __32__UAFAssetUtilities_assetStatus__block_invoke;
  v13[3] = &unk_1E7FFD0E8;
  v13[4] = self;
  v13[5] = &buf;
  dispatch_sync(v9, v13);

  v10 = *(*(&buf + 1) + 40);
  _Block_object_dispose(&buf, 8);

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (UAFAssetUtilitiesDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __32__UAFAssetUtilities_assetStatus__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 96);
  if (!v2)
  {
    v3 = objc_alloc_init(UAFAssetStatus);
    v4 = *(a1 + 32);
    v5 = *(v4 + 96);
    *(v4 + 96) = v3;

    v2 = *(*(a1 + 32) + 96);
  }

  v6 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v6, v2);
}

- (BOOL)understandingOnDeviceAssetsAvailable
{
  v20 = *MEMORY[0x1E69E9840];
  if (!self->_understandingOnDeviceAssetsAvailable)
  {
    v3 = [(UAFAssetUtilities *)self assistantGroup];
    [(UAFAssetUtilities *)self assetAvailableCheckTimeout];
    v5 = dispatch_time(0, (v4 * 1000000000.0));
    v6 = dispatch_group_wait(v3, v5);

    if (v6)
    {
      v7 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        LODWORD(v17) = 136315138;
        *(&v17 + 4) = "[UAFAssetUtilities understandingOnDeviceAssetsAvailable]";
        _os_log_error_impl(&dword_1BCF2C000, v7, OS_LOG_TYPE_ERROR, "%s #settings Failed to check assistant UOD availability due to timeout", &v17, 0xCu);
      }
    }
  }

  v8 = [(UAFAssetUtilities *)self statusQueue];
  dispatch_assert_queue_not_V2(v8);

  *&v17 = 0;
  *(&v17 + 1) = &v17;
  v18 = 0x2020000000;
  v19 = 0;
  v9 = [(UAFAssetUtilities *)self statusQueue];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __57__UAFAssetUtilities_understandingOnDeviceAssetsAvailable__block_invoke;
  v14[3] = &unk_1E7FFD070;
  v14[4] = self;
  v14[5] = &v17;
  dispatch_sync(v9, v14);

  if (*(*(&v17 + 1) + 24))
  {
    v10 = 1;
  }

  else
  {
    v11 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v16 = "[UAFAssetUtilities understandingOnDeviceAssetsAvailable]";
      _os_log_error_impl(&dword_1BCF2C000, v11, OS_LOG_TYPE_ERROR, "%s #settings NO returned for UOD", buf, 0xCu);
    }

    v10 = *(*(&v17 + 1) + 24);
  }

  _Block_object_dispose(&v17, 8);
  v12 = *MEMORY[0x1E69E9840];
  return v10 & 1;
}

- (NSDictionary)assistantUODStatus
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [(UAFAssetUtilities *)self assistantGroup];
  [(UAFAssetUtilities *)self assetAvailableCheckTimeout];
  v5 = dispatch_time(0, (v4 * 1000000000.0));
  v6 = dispatch_group_wait(v3, v5);

  if (v6)
  {
    v7 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "[UAFAssetUtilities assistantUODStatus]";
      _os_log_error_impl(&dword_1BCF2C000, v7, OS_LOG_TYPE_ERROR, "%s #settings Failed to check assistant UOD status due to timeout", &buf, 0xCu);
    }
  }

  v8 = [(UAFAssetUtilities *)self statusQueue];
  dispatch_assert_queue_not_V2(v8);

  *&buf = 0;
  *(&buf + 1) = &buf;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy_;
  v17 = __Block_byref_object_dispose_;
  v18 = 0;
  v9 = [(UAFAssetUtilities *)self statusQueue];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __39__UAFAssetUtilities_assistantUODStatus__block_invoke;
  v13[3] = &unk_1E7FFD070;
  v13[4] = self;
  v13[5] = &buf;
  dispatch_sync(v9, v13);

  v10 = *(*(&buf + 1) + 40);
  _Block_object_dispose(&buf, 8);

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (UAFAssetUtilities)init
{
  v19.receiver = self;
  v19.super_class = UAFAssetUtilities;
  v2 = [(UAFAssetUtilities *)&v19 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.UAF.AssetUtilities.DownloadQueue", v3);
    v5 = *(v2 + 14);
    *(v2 + 14) = v4;

    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("com.apple.UAF.AssetUtilities.StatusQueue", v6);
    v8 = *(v2 + 15);
    *(v2 + 15) = v7;

    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create("com.apple.UAF.AssetUtilities.DelegateQueue", v9);
    v11 = *(v2 + 16);
    *(v2 + 16) = v10;

    v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v13 = dispatch_queue_create("com.apple.UAF.AssetUtilities.AssistantQueue", v12);
    v14 = *(v2 + 17);
    *(v2 + 17) = v13;

    v15 = dispatch_group_create();
    v16 = *(v2 + 18);
    *(v2 + 18) = v15;

    v17 = *(v2 + 1);
    *(v2 + 1) = 0;

    *(v2 + 8) = 3;
    *(v2 + 72) = xmmword_1BCFAC470;
    *(v2 + 56) = xmmword_1BCFAC480;
    v2[29] = 1;
  }

  return v2;
}

- (void)dealloc
{
  [(UAFAssetUtilities *)self _stopObservers];
  v3.receiver = self;
  v3.super_class = UAFAssetUtilities;
  [(UAFAssetUtilities *)&v3 dealloc];
}

- (void)startObserversWithOptions:(unint64_t)a3
{
  v5 = [(UAFAssetUtilities *)self assistantGroup];
  v6 = [(UAFAssetUtilities *)self assistantQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __47__UAFAssetUtilities_startObserversWithOptions___block_invoke;
  v7[3] = &unk_1E7FFCFA8;
  v7[4] = self;
  v7[5] = a3;
  dispatch_group_async(v5, v6, v7);
}

void __47__UAFAssetUtilities_startObserversWithOptions___block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  v2 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v31 = "[UAFAssetUtilities startObserversWithOptions:]_block_invoke";
    _os_log_impl(&dword_1BCF2C000, v2, OS_LOG_TYPE_DEFAULT, "%s #settings Start observers", buf, 0xCu);
  }

  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  if ((v4 & 4) == 0 && (*(a1 + 40) & 4) != 0)
  {
    v5 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v31 = "[UAFAssetUtilities startObserversWithOptions:]_block_invoke";
      _os_log_impl(&dword_1BCF2C000, v5, OS_LOG_TYPE_DEFAULT, "%s #settings Start preferences observer", buf, 0xCu);
    }

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    v7 = *(a1 + 32);
    v8 = getkAFPreferencesDidChangeDarwinNotification();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v7, _AFPreferencesDidChangeCallback, v8, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

    [*(a1 + 32) _assistantPreferencesUpdate];
    v3 = *(a1 + 32);
    v4 = *(v3 + 16);
  }

  if ((v4 & 2) == 0 && (*(a1 + 40) & 2) != 0)
  {
    v9 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v31 = "[UAFAssetUtilities startObserversWithOptions:]_block_invoke";
      _os_log_impl(&dword_1BCF2C000, v9, OS_LOG_TYPE_DEFAULT, "%s #settings Start language observer", buf, 0xCu);
    }

    v10 = CFNotificationCenterGetDarwinNotifyCenter();
    v11 = *(a1 + 32);
    v12 = getAFLanguageCodeDidChangeDarwinNotification();
    CFNotificationCenterAddObserver(v10, v11, _AFLanguageDidChangeCallback, v12, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

    [*(a1 + 32) _assistantLanguageUpdate];
    v3 = *(a1 + 32);
    v4 = *(v3 + 16);
  }

  if (v4 & 1) == 0 && (*(a1 + 40))
  {
    v13 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v31 = "[UAFAssetUtilities startObserversWithOptions:]_block_invoke";
      _os_log_impl(&dword_1BCF2C000, v13, OS_LOG_TYPE_DEFAULT, "%s #settings Start UOD observer", buf, 0xCu);
    }

    v14 = CFNotificationCenterGetDarwinNotifyCenter();
    v15 = *(a1 + 32);
    v16 = getAFSiriXAssetDidChangeDarwinNotification();
    CFNotificationCenterAddObserver(v14, v15, _SiriXAssetDidChangeCallback, v16, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

    [*(a1 + 32) refreshUnderstandingOnDeviceAssetsAvailableAsync];
    v3 = *(a1 + 32);
    v4 = *(v3 + 16);
  }

  if ((v4 & 8) == 0 && (*(a1 + 40) & 8) != 0)
  {
    v17 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v31 = "[UAFAssetUtilities startObserversWithOptions:]_block_invoke";
      _os_log_impl(&dword_1BCF2C000, v17, OS_LOG_TYPE_DEFAULT, "%s #settings Start network observer", buf, 0xCu);
    }

    default_evaluator = nw_path_create_default_evaluator();
    v19 = *(a1 + 32);
    v20 = *(v19 + 8);
    *(v19 + 8) = default_evaluator;

    v3 = *(a1 + 32);
    if (*(v3 + 8))
    {
      v21 = nw_path_evaluator_copy_path();
      v22 = a1 + 32;
      *(*v22 + 27) = [*(a1 + 32) _networkIsSatisfiedForPath:v21];
      *(*v22 + 28) = [*(a1 + 32) _networkIsExpensiveForPath:v21];
      objc_initWeak(buf, *(a1 + 32));
      v23 = *(*(a1 + 32) + 8);
      v24 = [*(a1 + 32) statusQueue];
      objc_copyWeak(&v29, buf);
      nw_path_evaluator_set_update_handler();

      objc_destroyWeak(&v29);
      objc_destroyWeak(buf);

      v3 = *(a1 + 32);
    }
  }

  v25 = *(v3 + 16);
  if ((v25 & 0x10) == 0 && (*(a1 + 40) & 0x10) != 0)
  {
    v26 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v31 = "[UAFAssetUtilities startObserversWithOptions:]_block_invoke_2";
      _os_log_impl(&dword_1BCF2C000, v26, OS_LOG_TYPE_DEFAULT, "%s #settings Start UAFAssetStatus observer", buf, 0xCu);
    }

    v27 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v27, *(a1 + 32), _UAFAssetStatusDidChangeCallback, @"kUAFAssetStatusDidChangeDarwinNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    [*(a1 + 32) refreshUAFAssetStatusAsync];
    v3 = *(a1 + 32);
    v25 = *(v3 + 16);
  }

  *(v3 + 16) = *(a1 + 40) | v25;
  v28 = *MEMORY[0x1E69E9840];
}

void __47__UAFAssetUtilities_startObserversWithOptions___block_invoke_292(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _handleNetworkPathUpdate:v5];
  }
}

- (void)_stopObservers
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136315138;
    v15 = "[UAFAssetUtilities _stopObservers]";
    _os_log_impl(&dword_1BCF2C000, v3, OS_LOG_TYPE_DEFAULT, "%s #settings Stop observers", &v14, 0xCu);
  }

  if (self->_pathEvaluator)
  {
    nw_path_evaluator_cancel();
    pathEvaluator = self->_pathEvaluator;
    self->_pathEvaluator = 0;
  }

  observerOptions = self->_observerOptions;
  if ((observerOptions & 2) != 0)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    v9 = getAFLanguageCodeDidChangeDarwinNotification();
    CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, v9, 0);

    observerOptions = self->_observerOptions;
    if ((observerOptions & 4) == 0)
    {
LABEL_7:
      if ((observerOptions & 1) == 0)
      {
        goto LABEL_8;
      }

LABEL_13:
      v12 = CFNotificationCenterGetDarwinNotifyCenter();
      v13 = getAFSiriXAssetDidChangeDarwinNotification();
      CFNotificationCenterRemoveObserver(v12, self, v13, 0);

      if ((self->_observerOptions & 0x10) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else if ((observerOptions & 4) == 0)
  {
    goto LABEL_7;
  }

  v10 = CFNotificationCenterGetDarwinNotifyCenter();
  v11 = getkAFPreferencesDidChangeDarwinNotification();
  CFNotificationCenterRemoveObserver(v10, self, v11, 0);

  observerOptions = self->_observerOptions;
  if (observerOptions)
  {
    goto LABEL_13;
  }

LABEL_8:
  if ((observerOptions & 0x10) != 0)
  {
LABEL_9:
    v6 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterRemoveObserver(v6, self, @"kUAFAssetStatusDidChangeDarwinNotification", 0);
  }

LABEL_10:
  self->_observerOptions = 0;
  v7 = *MEMORY[0x1E69E9840];
}

- (void)assetsAreAvailableForLanguage:(id)a3 completion:(id)a4
{
  v43 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = +[UAFCommonUtilities deviceSupportFullUOD];
    v9 = +[UAFCommonUtilities deviceSupportAndUseHybridASR];
    if (v8 || v9)
    {
      v17 = [v6 stringByReplacingOccurrencesOfString:@"_" withString:@"-"];
      location = 0;
      p_location = &location;
      v34 = 0x2050000000;
      v18 = getAFSettingsConnectionClass_softClass;
      v35 = getAFSettingsConnectionClass_softClass;
      if (!getAFSettingsConnectionClass_softClass)
      {
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&buf[16] = __getAFSettingsConnectionClass_block_invoke;
        v41 = &unk_1E7FFD1D8;
        v42 = &location;
        __getAFSettingsConnectionClass_block_invoke(buf);
        v18 = p_location[3];
      }

      v19 = v18;
      _Block_object_dispose(&location, 8);
      v20 = objc_alloc_init(v18);
      objc_initWeak(&location, self);
      v21 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "[UAFAssetUtilities assetsAreAvailableForLanguage:completion:]";
        *&buf[12] = 2114;
        *&buf[14] = v6;
        _os_log_impl(&dword_1BCF2C000, v21, OS_LOG_TYPE_DEFAULT, "%s #settings UOD check for language %{public}@", buf, 0x16u);
      }

      v22 = [(UAFAssetUtilities *)self assistantGroup];
      dispatch_group_enter(v22);

      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __62__UAFAssetUtilities_assetsAreAvailableForLanguage_completion___block_invoke;
      v25[3] = &unk_1E7FFCFF8;
      v23 = v20;
      v26 = v23;
      objc_copyWeak(&v30, &location);
      v29 = v7;
      v27 = self;
      v31 = v8;
      v13 = v17;
      v28 = v13;
      [v23 getAssetStatusForLanguage:v13 completionHandler:v25];

      objc_destroyWeak(&v30);
      objc_destroyWeak(&location);
    }

    else
    {
      v10 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        *&buf[4] = "[UAFAssetUtilities assetsAreAvailableForLanguage:completion:]";
        _os_log_impl(&dword_1BCF2C000, v10, OS_LOG_TYPE_DEFAULT, "%s #settings Assets not available due to no UOD support. Return NO.", buf, 0xCu);
      }

      [(UAFAssetUtilities *)self _updateDelegateForUODAvailable:0 uodStatus:0];
      v11 = MEMORY[0x1E696ABC0];
      v36 = *MEMORY[0x1E696A578];
      v37 = @"UOD not supported";
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
      v13 = [v11 errorWithDomain:@"com.apple.UnifiedAssetFramework" code:5000 userInfo:v12];

      if (v7)
      {
        (*(v7 + 2))(v7, 0, v13);
      }
    }
  }

  else
  {
    v14 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      *&buf[4] = "[UAFAssetUtilities assetsAreAvailableForLanguage:completion:]";
      _os_log_error_impl(&dword_1BCF2C000, v14, OS_LOG_TYPE_ERROR, "%s #settings Failed to check assets availability due to nil language. Return NO", buf, 0xCu);
    }

    v15 = MEMORY[0x1E696ABC0];
    v38 = *MEMORY[0x1E696A578];
    v39 = @"nil language";
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
    v13 = [v15 errorWithDomain:@"com.apple.UnifiedAssetFramework" code:5000 userInfo:v16];

    if (v7)
    {
      (*(v7 + 2))(v7, 0, v13);
    }
  }

  v24 = *MEMORY[0x1E69E9840];
}

void __62__UAFAssetUtilities_assetsAreAvailableForLanguage_completion___block_invoke(uint64_t a1, void *a2)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    v6 = *(a1 + 48);
    if (*(a1 + 72) == 1)
    {
      v7 = [UAFCommonUtilities isFullUODSupportedForStatus:v3 language:v6];
    }

    else
    {
      v7 = [UAFCommonUtilities isHybridUODSupportedForStatus:v3 language:v6];
    }

    v13 = v7;
    v14 = *(a1 + 56);
    if (v14)
    {
      (*(v14 + 16))(v14, v13, 0);
    }

    [WeakRetained _updateDelegateForUODAvailable:v13 uodStatus:v3];
    v15 = [*(a1 + 40) assistantGroup];
    dispatch_group_leave(v15);
  }

  else
  {
    v8 = MEMORY[0x1E696ABC0];
    v17 = *MEMORY[0x1E696A578];
    v18[0] = @"self is nil";
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    v10 = [v8 errorWithDomain:@"com.apple.UnifiedAssetFramework" code:5000 userInfo:v9];

    v11 = *(a1 + 56);
    if (v11)
    {
      (*(v11 + 16))(v11, 0, v10);
    }

    v12 = [*(a1 + 40) assistantGroup];
    dispatch_group_leave(v12);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)_updateDelegateForUODAvailable:(BOOL)a3 uodStatus:(id)a4
{
  v6 = a4;
  v7 = [(UAFAssetUtilities *)self assistantGroup];
  v8 = [(UAFAssetUtilities *)self statusQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__UAFAssetUtilities__updateDelegateForUODAvailable_uodStatus___block_invoke;
  block[3] = &unk_1E7FFD048;
  block[4] = self;
  v11 = v6;
  v12 = a3;
  v9 = v6;
  dispatch_group_async(v7, v8, block);
}

void __62__UAFAssetUtilities__updateDelegateForUODAvailable_uodStatus___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) setAssistantUODStatus:*(a1 + 40)];
  v2 = [*(a1 + 32) delegateQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__UAFAssetUtilities__updateDelegateForUODAvailable_uodStatus___block_invoke_2;
  block[3] = &unk_1E7FFCFD0;
  block[4] = *(a1 + 32);
  dispatch_async(v2, block);

  v3 = *(*(a1 + 32) + 26);
  v4 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 48);
    *buf = 136315650;
    v12 = "[UAFAssetUtilities _updateDelegateForUODAvailable:uodStatus:]_block_invoke";
    v13 = 1024;
    v14 = v5;
    v15 = 1024;
    v16 = v3;
    _os_log_impl(&dword_1BCF2C000, v4, OS_LOG_TYPE_DEFAULT, "%s #settings UOD check available:%d prev:%d", buf, 0x18u);
  }

  if (v3 != *(a1 + 48))
  {
    [*(a1 + 32) setUnderstandingOnDeviceAssetsAvailable:?];
    v6 = [*(a1 + 32) delegateQueue];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __62__UAFAssetUtilities__updateDelegateForUODAvailable_uodStatus___block_invoke_317;
    v8[3] = &unk_1E7FFD020;
    v8[4] = *(a1 + 32);
    v9 = *(a1 + 48);
    dispatch_async(v6, v8);
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __62__UAFAssetUtilities__updateDelegateForUODAvailable_uodStatus___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 siriUODStatusDidChange];
  }
}

void __62__UAFAssetUtilities__updateDelegateForUODAvailable_uodStatus___block_invoke_317(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 40);
      v8 = 136315394;
      v9 = "[UAFAssetUtilities _updateDelegateForUODAvailable:uodStatus:]_block_invoke";
      v10 = 1024;
      v11 = v5;
      _os_log_impl(&dword_1BCF2C000, v4, OS_LOG_TYPE_DEFAULT, "%s #settings siriUODAvailabilityDidChange delegate available:%d", &v8, 0x12u);
    }

    v6 = [*(a1 + 32) delegate];
    [v6 siriUODAvailabilityDidChange:*(a1 + 40)];
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __39__UAFAssetUtilities_currentAssetStatus__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _downloadSiriAssetsRetry];
    WeakRetained = v2;
  }
}

- (BOOL)_networkIsExpensiveForPath:(id)a3
{
  if (a3)
  {
    JUMPOUT(0x1BFB33690);
  }

  return 0;
}

- (void)_handleNetworkPathUpdate:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(UAFAssetUtilities *)self statusQueue];
  dispatch_assert_queue_V2(v5);

  networkSatisfied = self->_networkSatisfied;
  networkExpensive = self->_networkExpensive;
  self->_networkSatisfied = [(UAFAssetUtilities *)self _networkIsSatisfiedForPath:v4];
  self->_networkExpensive = [(UAFAssetUtilities *)self _networkIsExpensiveForPath:v4];
  v8 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = self->_networkSatisfied;
    v10 = self->_networkExpensive;
    *buf = 136315650;
    v27 = "[UAFAssetUtilities _handleNetworkPathUpdate:]";
    v28 = 1024;
    v29 = v9;
    v30 = 1024;
    v31 = v10;
    _os_log_impl(&dword_1BCF2C000, v8, OS_LOG_TYPE_DEFAULT, "%s #settings Primary network (satisfied:%d, expensive: %d)", buf, 0x18u);
  }

  v11 = self->_networkSatisfied;
  if (networkSatisfied != v11)
  {
    v12 = [(UAFAssetStatus *)self->_assetStatus state];
    if (v11)
    {
      if (v12 == 4)
      {
        v13 = [(UAFAssetStatus *)self->_assetStatus value];
        v14 = [v13 isEqualToNumber:&unk_1F3B73110];

        if (v14)
        {
          [(UAFAssetUtilities *)self refreshUAFAssetStatusAsync];
        }
      }
    }

    else if (v12 == 3)
    {
      [(UAFAssetStatus *)self->_assetStatus setState:4];
      [(UAFAssetStatus *)self->_assetStatus setValue:&unk_1F3B73110];
      v15 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v27 = "[UAFAssetUtilities _handleNetworkPathUpdate:]";
        _os_log_impl(&dword_1BCF2C000, v15, OS_LOG_TYPE_DEFAULT, "%s #settings Forcing downloading state to failed", buf, 0xCu);
      }

      [(UAFAssetUtilities *)self _triggerDelegateAssetStatusUpdated];
    }

    if (networkSatisfied != self->_networkSatisfied)
    {
      goto LABEL_19;
    }
  }

  if (networkExpensive == self->_networkExpensive)
  {
    v16 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v27 = "[UAFAssetUtilities _handleNetworkPathUpdate:]";
      _os_log_impl(&dword_1BCF2C000, v16, OS_LOG_TYPE_DEFAULT, "%s #settings Network path nothing changed", buf, 0xCu);
    }
  }

  else
  {
LABEL_19:
    if ([(UAFAssetUtilities *)self autoRetryEnabled]&& self->_networkSatisfied && !self->_networkExpensive)
    {
      objc_initWeak(buf, self);
      v17 = [(UAFAssetUtilities *)self assistantQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __46__UAFAssetUtilities__handleNetworkPathUpdate___block_invoke;
      block[3] = &unk_1E7FFD110;
      objc_copyWeak(&v25, buf);
      dispatch_async(v17, block);

      objc_destroyWeak(&v25);
      objc_destroyWeak(buf);
    }

    v18 = [(UAFAssetUtilities *)self delegate];
    v19 = objc_opt_respondsToSelector();

    if (v19)
    {
      objc_initWeak(buf, self);
      v20 = [(UAFAssetUtilities *)self delegateQueue];
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __46__UAFAssetUtilities__handleNetworkPathUpdate___block_invoke_328;
      v22[3] = &unk_1E7FFD110;
      objc_copyWeak(&v23, buf);
      dispatch_async(v20, v22);

      objc_destroyWeak(&v23);
      objc_destroyWeak(buf);
    }
  }

  v21 = *MEMORY[0x1E69E9840];
}

void __46__UAFAssetUtilities__handleNetworkPathUpdate___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315138;
      v6 = "[UAFAssetUtilities _handleNetworkPathUpdate:]_block_invoke";
      _os_log_impl(&dword_1BCF2C000, v2, OS_LOG_TYPE_DEFAULT, "%s #settings Auto retry download on network change", &v5, 0xCu);
    }

    v3 = [WeakRetained retryState];
    [v3 setCancelled:1];

    [WeakRetained setRetryState:0];
    [WeakRetained autoRetryDelayOnSettingsChanged];
    [WeakRetained _downloadSiriAssetsWithDelay:?];
  }

  v4 = *MEMORY[0x1E69E9840];
}

void __46__UAFAssetUtilities__handleNetworkPathUpdate___block_invoke_328(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained delegate];
    [v2 networkPathChangeSatisfied:v3[27] isExpensive:v3[28]];

    WeakRetained = v3;
  }
}

- (void)downloadSiriAssetsIfNeeded
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v9 = "[UAFAssetUtilities downloadSiriAssetsIfNeeded]";
    _os_log_impl(&dword_1BCF2C000, v3, OS_LOG_TYPE_DEFAULT, "%s #settings Download API call", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v4 = [(UAFAssetUtilities *)self downloadQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __47__UAFAssetUtilities_downloadSiriAssetsIfNeeded__block_invoke;
  v6[3] = &unk_1E7FFD160;
  objc_copyWeak(&v7, buf);
  v6[4] = self;
  dispatch_async(v4, v6);

  objc_destroyWeak(&v7);
  objc_destroyWeak(buf);
  v5 = *MEMORY[0x1E69E9840];
}

void __47__UAFAssetUtilities_downloadSiriAssetsIfNeeded__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained getAssistantLanguageIfAvailableSync];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __47__UAFAssetUtilities_downloadSiriAssetsIfNeeded__block_invoke_2;
    v5[3] = &unk_1E7FFD138;
    v5[4] = *(a1 + 32);
    v5[5] = v3;
    [v3 assetsAreAvailableForLanguage:v4 completion:v5];
  }
}

void __47__UAFAssetUtilities_downloadSiriAssetsIfNeeded__block_invoke_2(uint64_t a1, char a2)
{
  v4 = [*(a1 + 32) downloadQueue];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __47__UAFAssetUtilities_downloadSiriAssetsIfNeeded__block_invoke_3;
  v5[3] = &unk_1E7FFD020;
  v6 = a2;
  v5[4] = *(a1 + 40);
  dispatch_async(v4, v5);
}

void __47__UAFAssetUtilities_downloadSiriAssetsIfNeeded__block_invoke_3(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if (*(a1 + 40))
  {
    v1 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315138;
      v6 = "[UAFAssetUtilities downloadSiriAssetsIfNeeded]_block_invoke_3";
      _os_log_impl(&dword_1BCF2C000, v1, OS_LOG_TYPE_DEFAULT, "%s #settings Skip download due to assets available already", &v5, 0xCu);
    }

    v2 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v3 = *(a1 + 32);
    v4 = *MEMORY[0x1E69E9840];

    [v3 _downloadSiriAssetsOverCellular:0];
  }
}

- (void)downloadSiriAssets
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v10 = "[UAFAssetUtilities downloadSiriAssets]";
    _os_log_impl(&dword_1BCF2C000, v3, OS_LOG_TYPE_DEFAULT, "%s #settings Download API call", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v4 = [(UAFAssetUtilities *)self assistantGroup];
  v5 = [(UAFAssetUtilities *)self downloadQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__UAFAssetUtilities_downloadSiriAssets__block_invoke;
  block[3] = &unk_1E7FFD110;
  objc_copyWeak(&v8, buf);
  dispatch_group_notify(v4, v5, block);

  objc_destroyWeak(&v8);
  objc_destroyWeak(buf);
  v6 = *MEMORY[0x1E69E9840];
}

void __39__UAFAssetUtilities_downloadSiriAssets__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _downloadSiriAssetsOverCellular:0];
}

- (void)downloadSiriAssetsOverCellular
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v10 = "[UAFAssetUtilities downloadSiriAssetsOverCellular]";
    _os_log_impl(&dword_1BCF2C000, v3, OS_LOG_TYPE_DEFAULT, "%s #settings Download API call", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v4 = [(UAFAssetUtilities *)self assistantGroup];
  v5 = [(UAFAssetUtilities *)self downloadQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__UAFAssetUtilities_downloadSiriAssetsOverCellular__block_invoke;
  block[3] = &unk_1E7FFD110;
  objc_copyWeak(&v8, buf);
  dispatch_group_notify(v4, v5, block);

  objc_destroyWeak(&v8);
  objc_destroyWeak(buf);
  v6 = *MEMORY[0x1E69E9840];
}

void __51__UAFAssetUtilities_downloadSiriAssetsOverCellular__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _downloadSiriAssetsOverCellular:1];
}

- (void)_downloadSiriAssetsRetry
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = [(UAFAssetUtilities *)self assistantQueue];
  dispatch_assert_queue_V2(v3);

  if (![(UAFAssetUtilities *)self autoRetryEnabled])
  {
    v4 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "[UAFAssetUtilities _downloadSiriAssetsRetry]";
      _os_log_impl(&dword_1BCF2C000, v4, OS_LOG_TYPE_DEFAULT, "%s #settings Auto retry is disabled", &buf, 0xCu);
    }

    goto LABEL_9;
  }

  if (self->_networkSatisfied && !self->_networkExpensive)
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v29 = 0x3032000000;
    v30 = __Block_byref_object_copy_;
    v31 = __Block_byref_object_dispose_;
    v32 = [(UAFAssetUtilities *)self retryState];
    v6 = [*(*(&buf + 1) + 40) retryCount];
    if (v6 >= [(UAFAssetUtilities *)self autoRetryLimit])
    {
      v7 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v24 = 136315394;
        v25 = "[UAFAssetUtilities _downloadSiriAssetsRetry]";
        v26 = 1024;
        v27 = v6;
        v8 = "%s #settings Skip retry after hitting limit %d";
        v9 = v7;
        v10 = 18;
        goto LABEL_17;
      }
    }

    else
    {
      if (![*(*(&buf + 1) + 40) pending])
      {
        [*(*(&buf + 1) + 40) setPending:1];
        v11 = [(UAFAssetUtilities *)self autoRetryLimit];
        v12 = v11 - v6;
        if (v11 != v6)
        {
          v13 = 0;
          do
          {
            [(UAFAssetUtilities *)self autoRetryDelayOnFailure];
            v15 = v14;
            [(UAFAssetUtilities *)self autoRetryDelayOnFailureIncrement];
            v17 = v16;
            objc_initWeak(v24, self);
            v18 = dispatch_time(0, ((v15 + v13 * v17) * 1000000000.0));
            v19 = [(UAFAssetUtilities *)self assistantQueue];
            block[0] = MEMORY[0x1E69E9820];
            block[1] = 3221225472;
            block[2] = __45__UAFAssetUtilities__downloadSiriAssetsRetry__block_invoke;
            block[3] = &unk_1E7FFD188;
            objc_copyWeak(&v21, v24);
            block[4] = &buf;
            v22 = v13;
            v23 = v12;
            dispatch_after(v18, v19, block);

            objc_destroyWeak(&v21);
            objc_destroyWeak(v24);
            ++v13;
          }

          while (v12 != v13);
        }

        goto LABEL_19;
      }

      v7 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v24 = 136315138;
        v25 = "[UAFAssetUtilities _downloadSiriAssetsRetry]";
        v8 = "%s #settings Skip retry attempt on pending execution";
        v9 = v7;
        v10 = 12;
LABEL_17:
        _os_log_impl(&dword_1BCF2C000, v9, OS_LOG_TYPE_DEFAULT, v8, v24, v10);
      }
    }

LABEL_19:
    _Block_object_dispose(&buf, 8);

    goto LABEL_10;
  }

  v4 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[UAFAssetUtilities _downloadSiriAssetsRetry]";
    _os_log_impl(&dword_1BCF2C000, v4, OS_LOG_TYPE_DEFAULT, "%s #settings Auto retry skipped due to need for inexpensive network", &buf, 0xCu);
  }

LABEL_9:

LABEL_10:
  v5 = *MEMORY[0x1E69E9840];
}

void __45__UAFAssetUtilities__downloadSiriAssetsRetry__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained assetStatus];
    if (![v3 autoRetryEnabled] || (objc_msgSend(*(*(*(a1 + 32) + 8) + 40), "cancelled") & 1) != 0 || v3[27] != 1 || (v3[28] & 1) != 0 || (v5 = objc_msgSend(*(*(*(a1 + 32) + 8) + 40), "retryCount"), v5 >= objc_msgSend(v3, "autoRetryLimit")) || objc_msgSend(v4, "state") == 5 || objc_msgSend(v4, "state") == 3)
    {
      v6 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(a1 + 48);
        v11 = 136315394;
        v12 = "[UAFAssetUtilities _downloadSiriAssetsRetry]_block_invoke";
        v13 = 1024;
        v14 = v7;
        _os_log_impl(&dword_1BCF2C000, v6, OS_LOG_TYPE_DEFAULT, "%s #settings Retry attempt %d skipped", &v11, 0x12u);
      }

      [*(*(*(a1 + 32) + 8) + 40) setPending:0];
    }

    else
    {
      [*(*(*(a1 + 32) + 8) + 40) setRetryCount:{objc_msgSend(*(*(*(a1 + 32) + 8) + 40), "retryCount") + 1}];
      v9 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(a1 + 48);
        v11 = 136315394;
        v12 = "[UAFAssetUtilities _downloadSiriAssetsRetry]_block_invoke";
        v13 = 1024;
        v14 = v10;
        _os_log_impl(&dword_1BCF2C000, v9, OS_LOG_TYPE_DEFAULT, "%s #settings Retry attempt %d", &v11, 0x12u);
      }

      [v3 downloadSiriAssets];
    }

    if (*(a1 + 48) + 1 == *(a1 + 52))
    {
      [*(*(*(a1 + 32) + 8) + 40) setPending:0];
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_downloadSiriAssetsWithDelay:(double)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v12 = "[UAFAssetUtilities _downloadSiriAssetsWithDelay:]";
    _os_log_impl(&dword_1BCF2C000, v5, OS_LOG_TYPE_DEFAULT, "%s #settings Download API call", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v6 = dispatch_time(0, (a3 * 1000000000.0));
  v7 = [(UAFAssetUtilities *)self downloadQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__UAFAssetUtilities__downloadSiriAssetsWithDelay___block_invoke;
  block[3] = &unk_1E7FFD110;
  objc_copyWeak(&v10, buf);
  dispatch_after(v6, v7, block);

  objc_destroyWeak(&v10);
  objc_destroyWeak(buf);
  v8 = *MEMORY[0x1E69E9840];
}

void __50__UAFAssetUtilities__downloadSiriAssetsWithDelay___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _downloadSiriAssetsOverCellular:0];
}

- (void)_downloadSiriAssetsOverCellular:(BOOL)a3
{
  v3 = a3;
  v28 = *MEMORY[0x1E69E9840];
  v5 = [(UAFAssetUtilities *)self downloadQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(UAFAssetUtilities *)self getAssistantLanguageIfAvailableSync];
  if (v6)
  {
    v7 = [(UAFAssetUtilities *)self _checkFreeSpaceNeededForLanguage:v6 forClient:0];
    if (v7)
    {
      v8 = v7;
      v9 = [(UAFAssetUtilities *)self statusQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __53__UAFAssetUtilities__downloadSiriAssetsOverCellular___block_invoke;
      block[3] = &unk_1E7FFCFA8;
      block[4] = self;
      block[5] = v8;
      dispatch_async(v9, block);

      goto LABEL_21;
    }

    pathEvaluator = self->_pathEvaluator;
    v12 = nw_path_evaluator_copy_path();
    v13 = [(UAFAssetUtilities *)self _networkIsSatisfiedForPath:v12];
    if (v3 || !v13)
    {
      if (v13)
      {
        goto LABEL_10;
      }
    }

    else if (![(UAFAssetUtilities *)self _networkIsExpensiveForPath:v12])
    {
LABEL_10:
      v14 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v23 = "[UAFAssetUtilities _downloadSiriAssetsOverCellular:]";
        v24 = 2114;
        v25 = v6;
        v26 = 1024;
        v27 = v3;
        _os_log_impl(&dword_1BCF2C000, v14, OS_LOG_TYPE_DEFAULT, "%s #settings Download requested for language (%{public}@) (cellular:%d)", buf, 0x1Cu);
      }

      v15 = [(UAFAssetUtilities *)self _createConnection];
      v16 = v15;
      if (v3)
      {
        [v15 downloadSiriAssetsOverCellular];
      }

      else
      {
        [v15 downloadSiriAssets];
      }

LABEL_20:
      goto LABEL_21;
    }

    v17 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v23 = "[UAFAssetUtilities _downloadSiriAssetsOverCellular:]";
      _os_log_impl(&dword_1BCF2C000, v17, OS_LOG_TYPE_DEFAULT, "%s #settings Skip download due to network path", buf, 0xCu);
    }

    v18 = [(UAFAssetUtilities *)self statusQueue];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __53__UAFAssetUtilities__downloadSiriAssetsOverCellular___block_invoke_331;
    v20[3] = &unk_1E7FFCFD0;
    v20[4] = self;
    dispatch_async(v18, v20);

    goto LABEL_20;
  }

  v10 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v23 = "[UAFAssetUtilities _downloadSiriAssetsOverCellular:]";
    _os_log_impl(&dword_1BCF2C000, v10, OS_LOG_TYPE_DEFAULT, "%s #settings Skip download due to nil language", buf, 0xCu);
  }

LABEL_21:
  v19 = *MEMORY[0x1E69E9840];
}

uint64_t __53__UAFAssetUtilities__downloadSiriAssetsOverCellular___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 96) setState:6];
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(a1 + 40)];
  [*(*(a1 + 32) + 96) setValue:v2];

  v3 = *(a1 + 32);

  return [v3 _triggerDelegateAssetStatusUpdated];
}

uint64_t __53__UAFAssetUtilities__downloadSiriAssetsOverCellular___block_invoke_331(uint64_t a1)
{
  [*(*(a1 + 32) + 96) setState:2];
  v2 = *(a1 + 32);

  return [v2 _triggerDelegateAssetStatusUpdated];
}

- (id)getDiskSpaceNeededInBytesForLanguage:(id)a3 forClient:(unint64_t)a4
{
  v39 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!v6)
  {
    v13 = &unk_1F3B73128;
    goto LABEL_14;
  }

  v7 = dispatch_semaphore_create(0);
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy_;
  v33 = __Block_byref_object_dispose_;
  v34 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy_;
  v27 = __Block_byref_object_dispose_;
  v28 = 0;
  v8 = [(UAFAssetUtilities *)self _createConnection];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __68__UAFAssetUtilities_getDiskSpaceNeededInBytesForLanguage_forClient___block_invoke;
  v19[3] = &unk_1E7FFD1B0;
  v21 = &v29;
  v22 = &v23;
  v9 = v7;
  v20 = v9;
  [v8 diskSpaceNeededInBytesForLanguage:v6 forClient:a4 completion:v19];
  [(UAFAssetUtilities *)self assetAvailableCheckTimeout];
  v11 = dispatch_time(0, (v10 * 1000000000.0));
  if (dispatch_semaphore_wait(v9, v11))
  {
    v12 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v36 = "[UAFAssetUtilities getDiskSpaceNeededInBytesForLanguage:forClient:]";
      _os_log_error_impl(&dword_1BCF2C000, v12, OS_LOG_TYPE_ERROR, "%s #settings Failed to check size due to timeout", buf, 0xCu);
    }

    if (!v24[5])
    {
      goto LABEL_12;
    }
  }

  else if (!v24[5])
  {
    v15 = (v30 + 5);
    goto LABEL_13;
  }

  v14 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v18 = v24[5];
    *buf = 136315394;
    v36 = "[UAFAssetUtilities getDiskSpaceNeededInBytesForLanguage:forClient:]";
    v37 = 2112;
    v38 = v18;
    _os_log_error_impl(&dword_1BCF2C000, v14, OS_LOG_TYPE_ERROR, "%s #settings Failed to check size due to error %@", buf, 0x16u);
  }

LABEL_12:
  v15 = &kUAFSiriDefaultDiskSpaceNeededSize;
LABEL_13:
  v13 = *v15;

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v29, 8);

LABEL_14:
  v16 = *MEMORY[0x1E69E9840];

  return v13;
}

void __68__UAFAssetUtilities_getDiskSpaceNeededInBytesForLanguage_forClient___block_invoke(uint64_t a1, void *a2, void *a3)
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

- (unint64_t)_checkFreeSpaceNeededForLanguage:(id)a3 forClient:(unint64_t)a4
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = [(UAFAssetUtilities *)self getDiskSpaceNeededInBytesForLanguage:a3 forClient:a4];
  v5 = [v4 unsignedIntegerValue];

  if (v5)
  {
    v6 = *MEMORY[0x1E69E9840];

    return [UAFCommonUtilities getFreeDiskSpaceNeededInBytes:v5];
  }

  else
  {
    v8 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315138;
      v11 = "[UAFAssetUtilities _checkFreeSpaceNeededForLanguage:forClient:]";
      _os_log_error_impl(&dword_1BCF2C000, v8, OS_LOG_TYPE_ERROR, "%s #settings Returning enough space for assets even with an unknown size requested", &v10, 0xCu);
    }

    v9 = *MEMORY[0x1E69E9840];
    return 0;
  }
}

- (BOOL)hasSufficientDiskSpaceForDownload
{
  v3 = [(UAFAssetUtilities *)self getAssistantLanguageIfAvailableSync];
  if (v3)
  {
    v4 = [(UAFAssetUtilities *)self _checkFreeSpaceNeededForLanguage:v3 forClient:0]== 0;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (BOOL)hasSufficientDiskSpaceForClient:(unint64_t)a3
{
  v5 = [(UAFAssetUtilities *)self getAssistantLanguageIfAvailableSync];
  if (v5)
  {
    v6 = [(UAFAssetUtilities *)self _checkFreeSpaceNeededForLanguage:v5 forClient:a3]== 0;
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (NSString)siriLanguage
{
  v3 = [(UAFAssetUtilities *)self assistantQueue];
  dispatch_assert_queue_not_V2(v3);

  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy_;
  v12 = __Block_byref_object_dispose_;
  v13 = 0;
  v4 = [(UAFAssetUtilities *)self assistantQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __33__UAFAssetUtilities_siriLanguage__block_invoke;
  v7[3] = &unk_1E7FFD070;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(v4, v7);

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (BOOL)assistantEnabled
{
  v2 = self;
  v3 = [(UAFAssetUtilities *)self assistantQueue];
  dispatch_assert_queue_not_V2(v3);

  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v4 = [(UAFAssetUtilities *)v2 assistantQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __37__UAFAssetUtilities_assistantEnabled__block_invoke;
  v6[3] = &unk_1E7FFD070;
  v6[4] = v2;
  v6[5] = &v7;
  dispatch_sync(v4, v6);

  LOBYTE(v2) = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v2;
}

- (UAFRetryState)retryState
{
  v3 = [(UAFAssetUtilities *)self assistantQueue];
  dispatch_assert_queue_V2(v3);

  retryState = self->_retryState;
  if (!retryState)
  {
    v5 = objc_alloc_init(UAFRetryState);
    v6 = self->_retryState;
    self->_retryState = v5;

    retryState = self->_retryState;
  }

  return retryState;
}

- (void)setRetryState:(id)a3
{
  v4 = a3;
  v5 = [(UAFAssetUtilities *)self assistantQueue];
  dispatch_assert_queue_V2(v5);

  retryState = self->_retryState;
  self->_retryState = v4;
}

- (void)_assistantLanguageUpdate
{
  v3 = [(UAFAssetUtilities *)self assistantQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__UAFAssetUtilities__assistantLanguageUpdate__block_invoke;
  block[3] = &unk_1E7FFCFD0;
  block[4] = self;
  dispatch_async(v3, block);
}

void __45__UAFAssetUtilities__assistantLanguageUpdate__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 88);
  v3 = [*(a1 + 32) getAssistantLanguageIfAvailableSync];
  if (([v3 isEqualToString:v2] & 1) == 0)
  {
    v4 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v14 = "[UAFAssetUtilities _assistantLanguageUpdate]_block_invoke";
      v15 = 2114;
      v16 = v3;
      _os_log_impl(&dword_1BCF2C000, v4, OS_LOG_TYPE_DEFAULT, "%s #settings Siri language changed to : %{public}@", buf, 0x16u);
    }

    [*(a1 + 32) setSiriLanguage:v3];
    v5 = [*(a1 + 32) autoRetryEnabled];
    if (v3 && v5)
    {
      v6 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v14 = "[UAFAssetUtilities _assistantLanguageUpdate]_block_invoke";
        v15 = 2114;
        v16 = v3;
        _os_log_impl(&dword_1BCF2C000, v6, OS_LOG_TYPE_DEFAULT, "%s #settings Auto retry download on language change, language = %{public}@", buf, 0x16u);
      }

      v7 = [*(a1 + 32) retryState];
      [v7 setCancelled:1];

      [*(a1 + 32) setRetryState:0];
      v8 = *(a1 + 32);
      [v8 autoRetryDelayOnSettingsChanged];
      [v8 _downloadSiriAssetsWithDelay:?];
    }

    v9 = [*(a1 + 32) delegateQueue];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __45__UAFAssetUtilities__assistantLanguageUpdate__block_invoke_336;
    v11[3] = &unk_1E7FFD098;
    v11[4] = *(a1 + 32);
    v12 = v3;
    dispatch_async(v9, v11);
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __45__UAFAssetUtilities__assistantLanguageUpdate__block_invoke_336(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 40);
      v8 = 136315394;
      v9 = "[UAFAssetUtilities _assistantLanguageUpdate]_block_invoke";
      v10 = 2114;
      v11 = v5;
      _os_log_impl(&dword_1BCF2C000, v4, OS_LOG_TYPE_DEFAULT, "%s #settings Calling delegate assistantLanguageDidChange : %{public}@", &v8, 0x16u);
    }

    v6 = [*(a1 + 32) delegate];
    [v6 assistantLanguageDidChange:*(a1 + 40)];
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_assistantPreferencesUpdate
{
  v3 = [(UAFAssetUtilities *)self assistantQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__UAFAssetUtilities__assistantPreferencesUpdate__block_invoke;
  block[3] = &unk_1E7FFCFD0;
  block[4] = self;
  dispatch_async(v3, block);
}

void __48__UAFAssetUtilities__assistantPreferencesUpdate__block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 25);
  v3 = +[UAFCommonUtilities isAssistantEnabled];
  if (v2 != v3)
  {
    v4 = v3;
    v5 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = "disabled";
      if (v4)
      {
        v6 = "enabled";
      }

      *buf = 136315394;
      v16 = "[UAFAssetUtilities _assistantPreferencesUpdate]_block_invoke";
      v17 = 2080;
      v18 = v6;
      _os_log_impl(&dword_1BCF2C000, v5, OS_LOG_TYPE_DEFAULT, "%s #settings Assistant preferences changed to : %s", buf, 0x16u);
    }

    [*(a1 + 32) setAssistantEnabled:v4];
    v7 = [*(a1 + 32) autoRetryEnabled];
    if (v4 && v7)
    {
      v8 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v16 = "[UAFAssetUtilities _assistantPreferencesUpdate]_block_invoke";
        _os_log_impl(&dword_1BCF2C000, v8, OS_LOG_TYPE_DEFAULT, "%s #settings Auto retry download on enablement change", buf, 0xCu);
      }

      v9 = [*(a1 + 32) retryState];
      [v9 setCancelled:1];

      [*(a1 + 32) setRetryState:0];
      v10 = *(a1 + 32);
      [v10 autoRetryDelayOnSettingsChanged];
      [v10 _downloadSiriAssetsWithDelay:?];
    }

    v11 = [*(a1 + 32) delegateQueue];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __48__UAFAssetUtilities__assistantPreferencesUpdate__block_invoke_341;
    v13[3] = &unk_1E7FFD020;
    v13[4] = *(a1 + 32);
    v14 = v4;
    dispatch_async(v11, v13);
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __48__UAFAssetUtilities__assistantPreferencesUpdate__block_invoke_341(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = UAFGetLogCategory(&UAFLogContextAssetUtilities);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = "disabled";
      if (*(a1 + 40))
      {
        v5 = "enabled";
      }

      v8 = 136315394;
      v9 = "[UAFAssetUtilities _assistantPreferencesUpdate]_block_invoke";
      v10 = 2080;
      v11 = v5;
      _os_log_impl(&dword_1BCF2C000, v4, OS_LOG_TYPE_DEFAULT, "%s #settings Calling delegate assistantEnabledDidChange : %s", &v8, 0x16u);
    }

    v6 = [*(a1 + 32) delegate];
    [v6 assistantEnabledDidChange:*(a1 + 40)];
  }

  v7 = *MEMORY[0x1E69E9840];
}

@end