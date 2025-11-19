@interface NCSecureLockscreenListener
+ (BOOL)isSensitiveUIEnabled;
+ (id)_shared;
+ (void)addObserver:(id)a3 changeBlock:(id)a4;
+ (void)removeObserver:(id)a3;
- (id)_init;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
@end

@implementation NCSecureLockscreenListener

+ (BOOL)isSensitiveUIEnabled
{
  if (!os_variant_has_internal_content())
  {
    return 1;
  }

  v3 = [MEMORY[0x277CCA8D8] mainBundle];
  v4 = [v3 bundleIdentifier];
  v5 = [v4 isEqualToString:@"com.apple.internal.NotificationsUITool"];

  if (v5)
  {
    return 1;
  }

  v7 = [a1 _shared];
  v8 = [v7 _sensitiveUIEnabled];

  return v8;
}

+ (void)addObserver:(id)a3 changeBlock:(id)a4
{
  v10 = a3;
  v6 = a4;
  if (os_variant_has_internal_content())
  {
    v7 = [a1 _shared];
    v8 = [v7 observers];
    v9 = _Block_copy(v6);
    [v8 setObject:v9 forKey:v10];
  }
}

+ (void)removeObserver:(id)a3
{
  v6 = a3;
  if (os_variant_has_internal_content())
  {
    v4 = [a1 _shared];
    v5 = [v4 observers];
    [v5 removeObjectForKey:v6];
  }
}

- (id)_init
{
  v15 = *MEMORY[0x277D85DE8];
  v10.receiver = self;
  v10.super_class = NCSecureLockscreenListener;
  v2 = [(NCSecureLockscreenListener *)&v10 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v2->_sensitiveUIEnabled = [v3 BOOLForKey:@"SBSensitiveUIEnabled"];

    v4 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
    {
      sensitiveUIEnabled = v2->_sensitiveUIEnabled;
      *buf = 138543618;
      v12 = @"SBSensitiveUIEnabled";
      v13 = 1024;
      v14 = sensitiveUIEnabled;
      _os_log_impl(&dword_21E77E000, v4, OS_LOG_TYPE_DEFAULT, "Secure Lock Screen: %{public}@ initing to %d", buf, 0x12u);
    }

    v6 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [v6 addObserver:v2 forKeyPath:@"SBSensitiveUIEnabled" options:1 context:0];

    v7 = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    observers = v2->_observers;
    v2->_observers = v7;
  }

  return v2;
}

+ (id)_shared
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__NCSecureLockscreenListener__shared__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (_shared_onceToken != -1)
  {
    dispatch_once(&_shared_onceToken, block);
  }

  v2 = _shared_shared;

  return v2;
}

uint64_t __37__NCSecureLockscreenListener__shared__block_invoke(uint64_t a1)
{
  v1 = [objc_alloc(*(a1 + 32)) _init];
  _shared_shared = v1;

  return MEMORY[0x2821F96F8](v1);
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v37 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if ([v9 isEqualToString:@"SBSensitiveUIEnabled"])
  {
    v25 = [v11 objectForKey:*MEMORY[0x277CCA2F0]];
    v12 = [v25 BOOLValue];
    sensitiveUIEnabled = self->_sensitiveUIEnabled;
    self->_sensitiveUIEnabled = v12;
    v14 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v32 = @"SBSensitiveUIEnabled";
      v33 = 1024;
      v34 = sensitiveUIEnabled;
      v35 = 1024;
      v36 = v12;
      _os_log_impl(&dword_21E77E000, v14, OS_LOG_TYPE_DEFAULT, "Secure Lock Screen: %{public}@ changed from %d to %d", buf, 0x18u);
    }

    v15 = objc_autoreleasePoolPush();
    v16 = [(NSMapTable *)self->_observers objectEnumerator];
    v17 = [v16 allObjects];

    objc_autoreleasePoolPop(v15);
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v18 = v17;
    v19 = [v18 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v27;
      do
      {
        v22 = 0;
        do
        {
          if (*v27 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v26 + 1) + 8 * v22);
          v24 = objc_autoreleasePoolPush();
          (*(v23 + 16))(v23, v12);
          objc_autoreleasePoolPop(v24);
          ++v22;
        }

        while (v20 != v22);
        v20 = [v18 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v20);
    }
  }
}

@end