@interface WFWidgetCache
+ (WFWidgetCache)sharedCache;
- (WFWidgetCache)init;
- (id)widgetWorkflowWithIdentifier:(id)a3;
- (id)widgetWorkflowsInCollectionWithIdentifier:(id)a3 limit:(unint64_t)a4;
- (void)observableResultDidChange:(id)a3;
- (void)queue_getWidgetWorkflowWithIdentifier:(id)a3;
- (void)queue_getWidgetWorkflowsInCollectionWithIdentifier:(id)a3 limit:(unint64_t)a4;
- (void)queue_notifyObserversOfChange:(id)a3 forIdentifier:(id)a4;
- (void)queue_storeAndNotifyWithResult:(id)a3 forIdentifier:(id)a4 resultsLimit:(unint64_t)a5;
@end

@implementation WFWidgetCache

- (WFWidgetCache)init
{
  v15.receiver = self;
  v15.super_class = WFWidgetCache;
  v2 = [(WFWidgetCache *)&v15 init];
  if (v2)
  {
    v3 = objc_opt_new();
    resultsByIdentifier = v2->_resultsByIdentifier;
    v2->_resultsByIdentifier = v3;

    v5 = objc_alloc_init(WFWidgetWorkflowRequestQueue);
    requestQueue = v2->_requestQueue;
    v2->_requestQueue = v5;

    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_attr_make_with_qos_class(v7, QOS_CLASS_USER_INITIATED, 0);

    v9 = dispatch_queue_create("com.apple.shortcuts.widget", v8);
    queue = v2->_queue;
    v2->_queue = v9;

    v11 = os_log_create("com.apple.shortcuts", "WidgetCache");
    log = v2->_log;
    v2->_log = v11;

    v13 = v2;
  }

  return v2;
}

- (void)observableResultDidChange:(id)a3
{
  v4 = a3;
  v5 = [(WFWidgetCache *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __43__WFWidgetCache_observableResultDidChange___block_invoke;
  v7[3] = &unk_1E83086D8;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __43__WFWidgetCache_observableResultDidChange___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = v2;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  v5 = *(a1 + 32);
  if (!v5)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v8 = 0;
LABEL_18:
    v11 = [v4 value];
    v12 = [v11 identifier];
    v13 = 1;
    v6 = v8;
LABEL_19:

    goto LABEL_21;
  }

  v6 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v4)
  {
    goto LABEL_18;
  }

  if (v8)
  {
    v9 = [v8 query];
    if (v9)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = v9;
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;

    v12 = [v11 folderIdentifier];
    v13 = [v11 resultsLimit];
    if (v11)
    {
      v15 = [v11 folderIdentifier];

      if (!v15)
      {
        v16 = @"MyShortcuts";

        v12 = @"MyShortcuts";
      }
    }

    goto LABEL_19;
  }

LABEL_20:
  v6 = 0;
  v13 = 0;
  v12 = 0;
LABEL_21:
  v14 = [*(a1 + 40) log];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412290;
    v18 = v12;
    _os_log_impl(&dword_1C830A000, v14, OS_LOG_TYPE_DEFAULT, "Received observable result change for identifier: %@", &v17, 0xCu);
  }

  [*(a1 + 40) queue_storeAndNotifyWithResult:*(a1 + 32) forIdentifier:v12 resultsLimit:v13];
}

- (void)queue_notifyObserversOfChange:(id)a3 forIdentifier:(id)a4
{
  v26[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(WFWidgetCache *)self queue];
  dispatch_assert_queue_V2(v8);

  v9 = v6;
  if (v9)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;

    v12 = v9;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;

    if (v11)
    {
      v15 = [v11 value];
      v26[0] = v15;
      v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];

      goto LABEL_12;
    }
  }

  else
  {
    v14 = 0;
  }

  v16 = [v14 values];
  v12 = 0;
LABEL_12:
  v17 = [(WFWidgetCache *)self log];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v23 = v16;
    v24 = 2112;
    v25 = v7;
    _os_log_impl(&dword_1C830A000, v17, OS_LOG_TYPE_DEFAULT, "Posting notification with workflows: %@ for identifier: %@", buf, 0x16u);
  }

  v18 = [MEMORY[0x1E696AD88] defaultCenter];
  v20 = @"WFWidgetCacheAssociatedIdentifier";
  v21 = v7;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
  [v18 postNotificationName:@"WFWidgetCacheUpdateNotification" object:v16 userInfo:v19];
}

- (void)queue_storeAndNotifyWithResult:(id)a3 forIdentifier:(id)a4 resultsLimit:(unint64_t)a5
{
  v39 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = [(WFWidgetCache *)self queue];
  dispatch_assert_queue_V2(v10);

  if (!v8 || !v9)
  {
    goto LABEL_42;
  }

  v11 = v8;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v13 = v11;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  v15 = v11;
  objc_opt_class();
  v16 = objc_opt_isKindOfClass();
  if (v16)
  {
    v17 = v15;
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;

  if (isKindOfClass)
  {
    [v15 addResultObserver:self];
    v19 = [(WFWidgetCache *)self resultsByIdentifier];
    [v19 setObject:v15 forKey:v9];

    v20 = [(WFWidgetCache *)self log];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v35 = 138412546;
      v36 = v15;
      v37 = 2112;
      v38 = v9;
      _os_log_impl(&dword_1C830A000, v20, OS_LOG_TYPE_DEFAULT, "Storing single object result: %@ for identifier: %@", &v35, 0x16u);
    }

    goto LABEL_35;
  }

  if (v16)
  {
    v21 = [(WFWidgetCache *)self resultsByIdentifier];
    v22 = [v21 objectForKey:v9];

    if (v22)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v23 = v22;
      }

      else
      {
        v23 = 0;
      }
    }

    else
    {
      v23 = 0;
    }

    v20 = v23;

    v24 = [v20 query];
    if (v24)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v25 = v24;
      }

      else
      {
        v25 = 0;
      }
    }

    else
    {
      v25 = 0;
    }

    v26 = v25;

    v27 = [(WFWidgetCache *)self log];
    v28 = os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);
    if (v20 && v26)
    {
      if (v28)
      {
        v35 = 138412290;
        v36 = v9;
        _os_log_impl(&dword_1C830A000, v27, OS_LOG_TYPE_DEFAULT, "Cached result found for collection with identifier: %@", &v35, 0xCu);
      }

      if ([v26 resultsLimit] >= a5)
      {
        goto LABEL_34;
      }

      v29 = [(WFWidgetCache *)self log];
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v35 = 138412546;
        v36 = v15;
        v37 = 2112;
        v38 = v9;
        _os_log_impl(&dword_1C830A000, v29, OS_LOG_TYPE_DEFAULT, "New results limit is more than cached results limit, removing old cached result and storing the new one: %@, identifier: %@", &v35, 0x16u);
      }

      [v20 removeResultObserver:self];
      v27 = [(WFWidgetCache *)self resultsByIdentifier];
      [v27 removeObjectForKey:v9];
    }

    else if (v28)
    {
      v35 = 138412546;
      v36 = v15;
      v37 = 2112;
      v38 = v9;
      _os_log_impl(&dword_1C830A000, v27, OS_LOG_TYPE_DEFAULT, "No cache hit, storing collection result: %@ for identifier: %@", &v35, 0x16u);
    }

    [v15 addResultObserver:self];
    v30 = [(WFWidgetCache *)self resultsByIdentifier];
    [v30 setObject:v15 forKey:v9];

LABEL_34:
LABEL_35:
  }

  v31 = [(WFWidgetCache *)self resultsByIdentifier];
  v32 = [v31 objectForKey:v9];

  if (v32)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v33 = v32;
    }

    else
    {
      v33 = 0;
    }
  }

  else
  {
    v33 = 0;
  }

  v34 = v33;

  [(WFWidgetCache *)self queue_notifyObserversOfChange:v34 forIdentifier:v9];
LABEL_42:
}

- (void)queue_getWidgetWorkflowsInCollectionWithIdentifier:(id)a3 limit:(unint64_t)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(WFWidgetCache *)self queue];
  dispatch_assert_queue_V2(v7);

  v8 = [(WFWidgetCache *)self log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v15 = v6;
    _os_log_impl(&dword_1C830A000, v8, OS_LOG_TYPE_DEFAULT, "Requesting widget workflow collection with identifier: %@", buf, 0xCu);
  }

  v9 = [(WFWidgetCache *)self requestQueue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __74__WFWidgetCache_queue_getWidgetWorkflowsInCollectionWithIdentifier_limit___block_invoke;
  v11[3] = &unk_1E8308678;
  v11[4] = self;
  v12 = v6;
  v13 = a4;
  v10 = v6;
  [v9 getWidgetWorkflowsInCollectionWithIdentifier:v10 limit:a4 completionHandler:v11];
}

void __74__WFWidgetCache_queue_getWidgetWorkflowsInCollectionWithIdentifier_limit___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 40);
    *buf = 138412546;
    v16 = v3;
    v17 = 2112;
    v18 = v5;
    _os_log_impl(&dword_1C830A000, v4, OS_LOG_TYPE_DEFAULT, "Received result %@ for identifier: %@", buf, 0x16u);
  }

  v6 = [*(a1 + 32) queue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __74__WFWidgetCache_queue_getWidgetWorkflowsInCollectionWithIdentifier_limit___block_invoke_70;
  v11[3] = &unk_1E8308650;
  v7 = *(a1 + 40);
  v11[4] = *(a1 + 32);
  v12 = v3;
  v8 = v7;
  v9 = *(a1 + 48);
  v13 = v8;
  v14 = v9;
  v10 = v3;
  dispatch_async(v6, v11);
}

- (void)queue_getWidgetWorkflowWithIdentifier:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(WFWidgetCache *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(WFWidgetCache *)self log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = v4;
    _os_log_impl(&dword_1C830A000, v6, OS_LOG_TYPE_DEFAULT, "Requesting widget workflow with identifier: %@", buf, 0xCu);
  }

  v7 = [(WFWidgetCache *)self requestQueue];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __55__WFWidgetCache_queue_getWidgetWorkflowWithIdentifier___block_invoke;
  v9[3] = &unk_1E8308628;
  v9[4] = self;
  v10 = v4;
  v8 = v4;
  [v7 getWidgetWorkflowWithIdentifier:v8 completionHandler:v9];
}

void __55__WFWidgetCache_queue_getWidgetWorkflowWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 40);
    *buf = 138412546;
    v13 = v3;
    v14 = 2112;
    v15 = v5;
    _os_log_impl(&dword_1C830A000, v4, OS_LOG_TYPE_DEFAULT, "Received result %@ for identifier: %@", buf, 0x16u);
  }

  v6 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__WFWidgetCache_queue_getWidgetWorkflowWithIdentifier___block_invoke_68;
  block[3] = &unk_1E8308600;
  v7 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v10 = v3;
  v11 = v7;
  v8 = v3;
  dispatch_async(v6, block);
}

- (id)widgetWorkflowsInCollectionWithIdentifier:(id)a3 limit:(unint64_t)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = [(WFWidgetCache *)self log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *&buf[4] = v7;
    *&buf[12] = 2048;
    *&buf[14] = a4;
    _os_log_impl(&dword_1C830A000, v8, OS_LOG_TYPE_DEFAULT, "Requesting widget workflow collection for identifier: %@, limit: %lu", buf, 0x16u);
  }

  if (!v7)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"WFWidgetCache.m" lineNumber:55 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];
  }

  v9 = [(WFWidgetCache *)self queue];
  dispatch_assert_queue_not_V2(v9);

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v20 = __Block_byref_object_copy_;
  v21 = __Block_byref_object_dispose_;
  v22 = 0;
  v10 = [(WFWidgetCache *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__WFWidgetCache_widgetWorkflowsInCollectionWithIdentifier_limit___block_invoke;
  block[3] = &unk_1E83085D8;
  block[4] = self;
  v16 = v7;
  v17 = buf;
  v18 = a4;
  v11 = v7;
  dispatch_sync(v10, block);

  v12 = *(*&buf[8] + 40);
  _Block_object_dispose(buf, 8);

  return v12;
}

void __65__WFWidgetCache_widgetWorkflowsInCollectionWithIdentifier_limit___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) resultsByIdentifier];
  v3 = [v2 objectForKey:*(a1 + 40)];

  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = [v5 query];
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  v9 = [v5 values];
  v10 = v9;
  if (v9 && v8)
  {
    v11 = [v8 resultsLimit];
    v12 = *(a1 + 56);

    if (v11 >= v12)
    {
      v13 = [*(a1 + 32) log];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = *(a1 + 40);
        v20 = 138412290;
        v21 = v14;
        _os_log_impl(&dword_1C830A000, v13, OS_LOG_TYPE_DEFAULT, "Found cached widget workflow collection for id: %@", &v20, 0xCu);
      }

      v15 = [v5 values];
      v16 = *(*(a1 + 48) + 8);
      v17 = *(v16 + 40);
      *(v16 + 40) = v15;

      goto LABEL_21;
    }
  }

  else
  {
  }

  v18 = [*(a1 + 32) log];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = *(a1 + 40);
    v20 = 138412290;
    v21 = v19;
    _os_log_impl(&dword_1C830A000, v18, OS_LOG_TYPE_DEFAULT, "No cached widget workflow collection for %@ found, kicking off a request", &v20, 0xCu);
  }

  [*(a1 + 32) queue_getWidgetWorkflowsInCollectionWithIdentifier:*(a1 + 40) limit:*(a1 + 56)];
LABEL_21:
}

- (id)widgetWorkflowWithIdentifier:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [(WFWidgetCache *)self log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v5;
    _os_log_impl(&dword_1C830A000, v6, OS_LOG_TYPE_DEFAULT, "Requesting widget workflow for identifier: %@", &buf, 0xCu);
  }

  if (!v5)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"WFWidgetCache.m" lineNumber:35 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];
  }

  v7 = [(WFWidgetCache *)self queue];
  dispatch_assert_queue_not_V2(v7);

  *&buf = 0;
  *(&buf + 1) = &buf;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy_;
  v19 = __Block_byref_object_dispose_;
  v20 = 0;
  v8 = [(WFWidgetCache *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__WFWidgetCache_widgetWorkflowWithIdentifier___block_invoke;
  block[3] = &unk_1E83085B0;
  block[4] = self;
  v14 = v5;
  p_buf = &buf;
  v9 = v5;
  dispatch_sync(v8, block);

  v10 = *(*(&buf + 1) + 40);
  _Block_object_dispose(&buf, 8);

  return v10;
}

void __46__WFWidgetCache_widgetWorkflowWithIdentifier___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) resultsByIdentifier];
  v3 = [v2 objectForKey:*(a1 + 40)];

  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [*(a1 + 32) log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 40);
      v11 = 138412290;
      v12 = v5;
      _os_log_impl(&dword_1C830A000, v4, OS_LOG_TYPE_DEFAULT, "Found cached widget workflow for id: %@", &v11, 0xCu);
    }

    v6 = [v3 value];
    v7 = *(*(a1 + 48) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  else
  {

    v9 = [*(a1 + 32) log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 40);
      v11 = 138412290;
      v12 = v10;
      _os_log_impl(&dword_1C830A000, v9, OS_LOG_TYPE_DEFAULT, "No cached widget workflow for %@ found, kicking off a request", &v11, 0xCu);
    }

    [*(a1 + 32) queue_getWidgetWorkflowWithIdentifier:*(a1 + 40)];
  }
}

+ (WFWidgetCache)sharedCache
{
  if (sharedCache_onceToken != -1)
  {
    dispatch_once(&sharedCache_onceToken, &__block_literal_global_4946);
  }

  v3 = sharedCache_cache;

  return v3;
}

uint64_t __28__WFWidgetCache_sharedCache__block_invoke()
{
  sharedCache_cache = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

@end