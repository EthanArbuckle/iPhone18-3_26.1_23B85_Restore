@interface PAProcessStateMonitor
+ (id)sharedInstance;
- (id)startMonitoringVisibilityStateForBundleIdentifiers:(id)a3 onQueue:(id)a4 withDelegate:(id)a5;
@end

@implementation PAProcessStateMonitor

+ (id)sharedInstance
{
  if (sharedInstance_once != -1)
  {
    +[PAProcessStateMonitor sharedInstance];
  }

  v3 = sharedInstance_instance_0;

  return v3;
}

uint64_t __39__PAProcessStateMonitor_sharedInstance__block_invoke()
{
  sharedInstance_instance_0 = objc_alloc_init(PAProcessStateMonitor);

  return MEMORY[0x1EEE66BB8]();
}

- (id)startMonitoringVisibilityStateForBundleIdentifiers:(id)a3 onQueue:(id)a4 withDelegate:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if ([v7 count])
  {
    objc_initWeak(&location, v9);
    v10 = MEMORY[0x1E69C75F8];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __97__PAProcessStateMonitor_startMonitoringVisibilityStateForBundleIdentifiers_onQueue_withDelegate___block_invoke;
    v13[3] = &unk_1E86ABE40;
    v14 = v7;
    v15 = v8;
    objc_copyWeak(&v16, &location);
    v11 = [v10 monitorWithConfiguration:v13];
    objc_destroyWeak(&v16);

    objc_destroyWeak(&location);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

void __97__PAProcessStateMonitor_startMonitoringVisibilityStateForBundleIdentifiers_onQueue_withDelegate___block_invoke(uint64_t a1, void *a2)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [MEMORY[0x1E69C7610] predicateMatchingBundleIdentifiers:*(a1 + 32)];
  v13[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  [v3 setPredicates:v5];

  v6 = [MEMORY[0x1E69C7630] descriptor];
  v12 = @"com.apple.frontboard.visibility";
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v12 count:1];
  [v6 setEndowmentNamespaces:v7];

  [v3 setStateDescriptor:v6];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __97__PAProcessStateMonitor_startMonitoringVisibilityStateForBundleIdentifiers_onQueue_withDelegate___block_invoke_2;
  v9[3] = &unk_1E86ABE18;
  v10 = *(a1 + 40);
  objc_copyWeak(&v11, (a1 + 48));
  [v3 setUpdateHandler:v9];
  objc_destroyWeak(&v11);

  v8 = *MEMORY[0x1E69E9840];
}

void __97__PAProcessStateMonitor_startMonitoringVisibilityStateForBundleIdentifiers_onQueue_withDelegate___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a4;
  v7 = [a3 bundle];
  v8 = [v7 identifier];

  if (v8)
  {
    v9 = [v6 state];
    v10 = [v9 endowmentNamespaces];
    v11 = [v10 containsObject:@"com.apple.frontboard.visibility"];

    if (v11)
    {
      v12 = 2;
    }

    else
    {
      v12 = 1;
    }

    v13 = *(a1 + 32);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __97__PAProcessStateMonitor_startMonitoringVisibilityStateForBundleIdentifiers_onQueue_withDelegate___block_invoke_3;
    block[3] = &unk_1E86ABDF0;
    objc_copyWeak(v16, (a1 + 40));
    v16[1] = v12;
    v15 = v8;
    dispatch_async(v13, block);

    objc_destroyWeak(v16);
  }
}

void __97__PAProcessStateMonitor_startMonitoringVisibilityStateForBundleIdentifiers_onQueue_withDelegate___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setVisibilityState:*(a1 + 48) forBundleID:*(a1 + 32)];
}

@end