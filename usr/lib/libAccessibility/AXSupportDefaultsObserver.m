@interface AXSupportDefaultsObserver
- (AXSupportDefaultsObserver)init;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)startObservingPreference:(__CFString *)a3 andPerformBlock:(id)a4;
@end

@implementation AXSupportDefaultsObserver

- (AXSupportDefaultsObserver)init
{
  v15.receiver = self;
  v15.super_class = AXSupportDefaultsObserver;
  v2 = [(AXSupportDefaultsObserver *)&v15 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x1E695E000]);
    v4 = [v3 initWithSuiteName:kAXSAccessibilityPreferenceDomain];
    axDomain = v2->_axDomain;
    v2->_axDomain = v4;

    v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    observedPrefs = v2->_observedPrefs;
    v2->_observedPrefs = v6;

    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    actions = v2->_actions;
    v2->_actions = v8;

    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    actionLastNotifications = v2->_actionLastNotifications;
    v2->_actionLastNotifications = v10;

    v12 = dispatch_queue_create("com.apple.AccessibilitySupport.lastNotificationsQueue", 0);
    lastNotificationsQueue = v2->_lastNotificationsQueue;
    v2->_lastNotificationsQueue = v12;
  }

  return v2;
}

- (void)dealloc
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = self->_observedPrefs;
  v4 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [(NSUserDefaults *)self->_axDomain removeObserver:self forKeyPath:*(*(&v10 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v9.receiver = self;
  v9.super_class = AXSupportDefaultsObserver;
  [(AXSupportDefaultsObserver *)&v9 dealloc];
  v8 = *MEMORY[0x1E69E9840];
}

- (void)startObservingPreference:(__CFString *)a3 andPerformBlock:(id)a4
{
  v6 = a4;
  v7 = objc_autoreleasePoolPush();
  v8 = [MEMORY[0x1E696AF00] currentThread];
  v9 = [v8 isMainThread];

  if ((v9 & 1) == 0)
  {
    v10 = AXSupportLogCommon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [AXSupportDefaultsObserver startObservingPreference:andBroadcastDarwinNotification:postGlobally:];
    }
  }

  observedPrefs = self->_observedPrefs;
  v12 = a3;
  [(NSMutableSet *)observedPrefs addObject:v12];
  v13 = [[AXDefaultsObserverExecuteBlockNotificationAction alloc] initWithBlock:v6];
  [(NSMutableArray *)self->_actions addObject:v13];
  [(NSUserDefaults *)self->_axDomain addObserver:self forKeyPath:v12 options:3 context:v13];

  objc_autoreleasePoolPop(v7);
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (a6)
  {
    v13 = [MEMORY[0x1E696B098] valueWithPointer:a6];
    v27 = 0;
    v28 = &v27;
    v29 = 0x3032000000;
    v30 = __Block_byref_object_copy_;
    v31 = __Block_byref_object_dispose_;
    v32 = 0;
    lastNotificationsQueue = self->_lastNotificationsQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __76__AXSupportDefaultsObserver_observeValueForKeyPath_ofObject_change_context___block_invoke;
    block[3] = &unk_1E6F45468;
    v26 = &v27;
    block[4] = self;
    v15 = v13;
    v25 = v15;
    dispatch_sync(lastNotificationsQueue, block);
    v16 = [v12 objectForKeyedSubscript:*MEMORY[0x1E696A500]];
    v17 = [v12 objectForKeyedSubscript:*MEMORY[0x1E696A4F0]];
    if (([v28[5] isEqual:v12] & 1) == 0 && (objc_msgSend(v16, "isEqual:", v17) & 1) == 0)
    {
      [a6 performForChangedDefault:v10];
      if (v12)
      {
        v18 = [v12 copy];
        v19 = self->_lastNotificationsQueue;
        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 3221225472;
        v21[2] = __76__AXSupportDefaultsObserver_observeValueForKeyPath_ofObject_change_context___block_invoke_2;
        v21[3] = &unk_1E6F45490;
        v21[4] = self;
        v22 = v18;
        v23 = v15;
        v20 = v18;
        dispatch_sync(v19, v21);
      }
    }

    _Block_object_dispose(&v27, 8);
  }
}

void __76__AXSupportDefaultsObserver_observeValueForKeyPath_ofObject_change_context___block_invoke(void *a1)
{
  v5 = [*(a1[4] + 32) objectForKey:a1[5]];
  v2 = [v5 copy];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

@end