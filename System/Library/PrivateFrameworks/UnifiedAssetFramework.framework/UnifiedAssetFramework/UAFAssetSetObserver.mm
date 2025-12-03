@interface UAFAssetSetObserver
+ (id)getConcurrentQueue;
+ (id)getSerialQueue;
+ (id)notificationForAssetSet:(id)set forRoot:(BOOL)root;
+ (int)listenForMAStartupNotification:(id)notification updateHandler:(id)handler;
+ (int)listenForNotification:(id)notification queue:(id)queue updateHandler:(id)handler;
- (UAFAssetSetObserver)initWithAssetSet:(id)set ignoreMobileAssetStartup:(BOOL)startup configurationDirURLs:(id)ls queue:(id)queue updateHandler:(id)handler;
- (void)dealloc;
- (void)invalidate;
@end

@implementation UAFAssetSetObserver

void __41__UAFAssetSetObserver_getConcurrentQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x1E69E96A8], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("UAFAssetSetObserver.Concurrent", v2);
  v1 = qword_1ED7D1090;
  qword_1ED7D1090 = v0;
}

+ (id)getConcurrentQueue
{
  if (_MergedGlobals_2 != -1)
  {
    dispatch_once(&_MergedGlobals_2, &__block_literal_global_3);
  }

  v3 = qword_1ED7D1090;

  return v3;
}

+ (id)getSerialQueue
{
  if (qword_1ED7D1098 != -1)
  {
    dispatch_once(&qword_1ED7D1098, &__block_literal_global_289);
  }

  v3 = qword_1ED7D10A0;

  return v3;
}

void __37__UAFAssetSetObserver_getSerialQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("UAFAssetSetObserver.Serial", v2);
  v1 = qword_1ED7D10A0;
  qword_1ED7D10A0 = v0;
}

+ (id)notificationForAssetSet:(id)set forRoot:(BOOL)root
{
  rootCopy = root;
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", @"com.apple.siri.uaf", set];
  if (rootCopy)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v5, @"root"];

    v5 = v6;
  }

  return v5;
}

+ (int)listenForNotification:(id)notification queue:(id)queue updateHandler:(id)handler
{
  v29 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  handlerCopy = handler;
  out_token = -1;
  v9 = notificationCopy;
  queueCopy = queue;
  uTF8String = [notificationCopy UTF8String];
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __65__UAFAssetSetObserver_listenForNotification_queue_updateHandler___block_invoke;
  handler[3] = &unk_1E7FFD9C0;
  v12 = notificationCopy;
  v20 = v12;
  v21 = handlerCopy;
  v13 = handlerCopy;
  v14 = notify_register_dispatch(uTF8String, &out_token, queueCopy, handler);

  if (v14)
  {
    v15 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v24 = "+[UAFAssetSetObserver listenForNotification:queue:updateHandler:]";
      v25 = 2112;
      v26 = v12;
      v27 = 2048;
      v28 = v14;
      _os_log_error_impl(&dword_1BCF2C000, v15, OS_LOG_TYPE_ERROR, "%s notify_register_dispatch for %@ failed: %lu", buf, 0x20u);
    }
  }

  v16 = out_token;

  v17 = *MEMORY[0x1E69E9840];
  return v16;
}

uint64_t __65__UAFAssetSetObserver_listenForNotification_queue_updateHandler___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = UAFGetLogCategory(&UAFLogContextClient);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 136315394;
    v7 = "+[UAFAssetSetObserver listenForNotification:queue:updateHandler:]_block_invoke";
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&dword_1BCF2C000, v2, OS_LOG_TYPE_DEFAULT, "%s notification %@ received", &v6, 0x16u);
  }

  result = (*(*(a1 + 40) + 16))();
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

+ (int)listenForMAStartupNotification:(id)notification updateHandler:(id)handler
{
  v5 = MEMORY[0x1E69B1900];
  handlerCopy = handler;
  notificationCopy = notification;
  v8 = [v5 notifyRegistrationName:@"STARTUP_ACTIVATED" forAssetType:@"com.apple.MobileAsset.MAAutoAsset"];
  v9 = [UAFAssetSetObserver listenForNotification:v8 queue:notificationCopy updateHandler:handlerCopy];

  return v9;
}

- (UAFAssetSetObserver)initWithAssetSet:(id)set ignoreMobileAssetStartup:(BOOL)startup configurationDirURLs:(id)ls queue:(id)queue updateHandler:(id)handler
{
  startupCopy = startup;
  v50 = *MEMORY[0x1E69E9840];
  setCopy = set;
  lsCopy = ls;
  queueCopy = queue;
  handlerCopy = handler;
  v45.receiver = self;
  v45.super_class = UAFAssetSetObserver;
  v17 = [(UAFAssetSetObserver *)&v45 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_assetSetName, set);
    v19 = +[UAFConfigurationManager defaultManager];
    if (lsCopy)
    {
      v20 = [[UAFConfigurationManager alloc] initWithURLs:lsCopy];

      v19 = v20;
    }

    v21 = objc_autoreleasePoolPush();
    v22 = [v19 getAssetSet:setCopy];
    if (!v22)
    {
      v29 = UAFGetLogCategory(&UAFLogContextClient);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v47 = "[UAFAssetSetObserver initWithAssetSet:ignoreMobileAssetStartup:configurationDirURLs:queue:updateHandler:]";
        v48 = 2114;
        v49 = setCopy;
        _os_log_error_impl(&dword_1BCF2C000, v29, OS_LOG_TYPE_ERROR, "%s Could not init asset set %{public}@ for observer", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v21);
      v28 = 0;
      goto LABEL_24;
    }

    objc_autoreleasePoolPop(v21);
    if (!queueCopy)
    {
      queueCopy = +[UAFAssetSetObserver getConcurrentQueue];
    }

    v23 = MEMORY[0x1BFB33950](handlerCopy);
    updateHandler = v18->_updateHandler;
    v18->_updateHandler = v23;

    objc_initWeak(&location, v18);
    v37 = MEMORY[0x1E69E9820];
    v38 = 3221225472;
    v39 = __106__UAFAssetSetObserver_initWithAssetSet_ignoreMobileAssetStartup_configurationDirURLs_queue_updateHandler___block_invoke;
    v40 = &unk_1E7FFD9E8;
    queueCopy = queueCopy;
    v41 = queueCopy;
    objc_copyWeak(&v43, &location);
    v25 = setCopy;
    v42 = v25;
    v26 = MEMORY[0x1BFB33950](&v37);
    v27 = [UAFAssetSetObserver listenForUAFNotificationsForAssetSet:v25 forRoot:0 queue:queueCopy updateHandler:v26, v37, v38, v39, v40];
    v18->_uafNotifyToken = v27;
    if (v27 == -1)
    {
      v30 = UAFGetLogCategory(&UAFLogContextClient);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v47 = "[UAFAssetSetObserver initWithAssetSet:ignoreMobileAssetStartup:configurationDirURLs:queue:updateHandler:]";
        v48 = 2114;
        v49 = v25;
        _os_log_fault_impl(&dword_1BCF2C000, v30, OS_LOG_TYPE_FAULT, "%s Error registering update handler for %{public}@", buf, 0x16u);
      }

      v31 = UAFGetLogCategory(&UAFLogContextClient);
      UAFFaultCapture(v31, kUAFABCNotifyRegisterFailure, @"dtma", 0);
    }

    else
    {
      if (startupCopy)
      {
        v18->_maStartupNotifyToken = 0;
LABEL_18:
        v28 = v18;
LABEL_23:

        objc_destroyWeak(&v43);
        objc_destroyWeak(&location);
LABEL_24:

        goto LABEL_25;
      }

      v32 = [UAFAssetSetObserver listenForMAStartupNotification:queueCopy updateHandler:v26];
      v18->_maStartupNotifyToken = v32;
      if (v32 != -1)
      {
        goto LABEL_18;
      }

      v33 = UAFGetLogCategory(&UAFLogContextClient);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v47 = "[UAFAssetSetObserver initWithAssetSet:ignoreMobileAssetStartup:configurationDirURLs:queue:updateHandler:]";
        v48 = 2114;
        v49 = v25;
        _os_log_fault_impl(&dword_1BCF2C000, v33, OS_LOG_TYPE_FAULT, "%s Error registering MA update handler for %{public}@", buf, 0x16u);
      }

      v34 = UAFGetLogCategory(&UAFLogContextClient);
      UAFFaultCapture(v34, kUAFABCNotifyRegisterFailure, @"maStartup", 0);
    }

    v28 = 0;
    goto LABEL_23;
  }

  v28 = 0;
LABEL_25:

  v35 = *MEMORY[0x1E69E9840];
  return v28;
}

void __106__UAFAssetSetObserver_initWithAssetSet_ignoreMobileAssetStartup_configurationDirURLs_queue_updateHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __106__UAFAssetSetObserver_initWithAssetSet_ignoreMobileAssetStartup_configurationDirURLs_queue_updateHandler___block_invoke_2;
  v3[3] = &unk_1E7FFD160;
  objc_copyWeak(&v5, (a1 + 48));
  v4 = *(a1 + 40);
  dispatch_async(v2, v3);

  objc_destroyWeak(&v5);
}

void __106__UAFAssetSetObserver_initWithAssetSet_ignoreMobileAssetStartup_configurationDirURLs_queue_updateHandler___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = UAFGetLogCategory(&UAFLogContextClient);
  v4 = v3;
  if (!WeakRetained)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v9 = 136315394;
      v10 = "[UAFAssetSetObserver initWithAssetSet:ignoreMobileAssetStartup:configurationDirURLs:queue:updateHandler:]_block_invoke_2";
      v11 = 2114;
      v12 = v8;
      _os_log_error_impl(&dword_1BCF2C000, v4, OS_LOG_TYPE_ERROR, "%s Self is nil while calling Update notification for %{public}@", &v9, 0x16u);
    }

    goto LABEL_8;
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v9 = 136315394;
    v10 = "[UAFAssetSetObserver initWithAssetSet:ignoreMobileAssetStartup:configurationDirURLs:queue:updateHandler:]_block_invoke";
    v11 = 2114;
    v12 = v5;
    _os_log_impl(&dword_1BCF2C000, v4, OS_LOG_TYPE_DEFAULT, "%s Update notification for %{public}@", &v9, 0x16u);
  }

  v6 = [WeakRetained updateHandler];

  if (v6)
  {
    v4 = [WeakRetained updateHandler];
    (*(v4 + 16))();
LABEL_8:
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)invalidate
{
  obj = self;
  objc_sync_enter(obj);
  v2 = obj;
  uafNotifyToken = obj->_uafNotifyToken;
  if (uafNotifyToken)
  {
    notify_cancel(uafNotifyToken);
    v2 = obj;
    obj->_uafNotifyToken = 0;
  }

  maStartupNotifyToken = v2->_maStartupNotifyToken;
  if (maStartupNotifyToken)
  {
    notify_cancel(maStartupNotifyToken);
    v2 = obj;
    obj->_maStartupNotifyToken = 0;
  }

  objc_sync_exit(v2);
}

- (void)dealloc
{
  [(UAFAssetSetObserver *)self invalidate];
  v3.receiver = self;
  v3.super_class = UAFAssetSetObserver;
  [(UAFAssetSetObserver *)&v3 dealloc];
}

@end