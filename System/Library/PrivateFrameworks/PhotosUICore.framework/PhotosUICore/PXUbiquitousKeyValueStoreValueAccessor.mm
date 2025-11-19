@interface PXUbiquitousKeyValueStoreValueAccessor
+ (id)_defaultQueue;
- (PXUbiquitousKeyValueStoreValueAccessor)init;
- (PXUbiquitousKeyValueStoreValueAccessor)initWithUbiquitousKeyValueStore:(id)a3 key:(id)a4 defaultValueFuture:(id)a5 valueFilter:(id)a6 changeHandler:(id)a7;
- (id)_currentValueLoadIfNeeded:(BOOL)a3;
- (id)description;
- (void)_keyValueStoreDidChangeExternally:(id)a3;
- (void)_setCurrentValue:(id)a3 updateUbiquitousKeyValueStore:(BOOL)a4 notifyChange:(BOOL)a5;
- (void)_storeQueue_handleLoadValueAsync;
- (void)loadValueAsyncIfNeeded;
@end

@implementation PXUbiquitousKeyValueStoreValueAccessor

void __55__PXUbiquitousKeyValueStoreValueAccessor__defaultQueue__block_invoke(uint64_t a1)
{
  v7 = NSStringFromClass(*(a1 + 32));
  v1 = v7;
  v2 = [v7 UTF8String];
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_BACKGROUND, 0);
  v5 = dispatch_queue_create(v2, v4);
  v6 = _defaultQueue_defaultQueue;
  _defaultQueue_defaultQueue = v5;
}

+ (id)_defaultQueue
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__PXUbiquitousKeyValueStoreValueAccessor__defaultQueue__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (_defaultQueue_onceToken != -1)
  {
    dispatch_once(&_defaultQueue_onceToken, block);
  }

  v2 = _defaultQueue_defaultQueue;

  return v2;
}

- (void)loadValueAsyncIfNeeded
{
  v3 = [(PXUbiquitousKeyValueStoreValueAccessor *)self currentValueIfLoaded];

  if (!v3)
  {
    v4 = self;
    v5 = [(PXUbiquitousKeyValueStoreValueAccessor *)v4 storeQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __64__PXUbiquitousKeyValueStoreValueAccessor_loadValueAsyncIfNeeded__block_invoke;
    block[3] = &unk_1E774C648;
    block[4] = v4;
    dispatch_async(v5, block);
  }
}

- (void)_storeQueue_handleLoadValueAsync
{
  v3 = [(PXUbiquitousKeyValueStoreValueAccessor *)self _currentValueLoadIfNeeded:1];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __74__PXUbiquitousKeyValueStoreValueAccessor__storeQueue_handleLoadValueAsync__block_invoke;
  block[3] = &unk_1E774C648;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __74__PXUbiquitousKeyValueStoreValueAccessor__storeQueue_handleLoadValueAsync__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1[3];
  v3 = [v1 currentValue];
  (*(v2 + 16))(v2, v3);
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(PXUbiquitousKeyValueStoreValueAccessor *)self key];
  v7 = [v3 initWithFormat:@"<%@: %p, key: %@>", v5, self, v6];

  return v7;
}

- (void)_keyValueStoreDidChangeExternally:(id)a3
{
  v4 = [a3 userInfo];
  v8 = [v4 objectForKeyedSubscript:*MEMORY[0x1E696A9E0]];

  v5 = [(PXUbiquitousKeyValueStoreValueAccessor *)self key];
  if ([v8 containsObject:v5])
  {
    v6 = [(PXUbiquitousKeyValueStoreValueAccessor *)self ubiquitousKeyValueStore];
    v7 = [v6 objectForKey:v5];
    if (v7)
    {
      [(PXUbiquitousKeyValueStoreValueAccessor *)self _setCurrentValue:v7 updateUbiquitousKeyValueStore:0 notifyChange:1];
    }

    else
    {
      NSLog(&cfstr_UnexpectedlyRe_0.isa, v6, v5);
    }
  }
}

- (void)_setCurrentValue:(id)a3 updateUbiquitousKeyValueStore:(BOOL)a4 notifyChange:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v9 = a3;
  if (!v9)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"PXUbiquitousKeyValueStoreValueAccessor.m" lineNumber:111 description:{@"Invalid parameter not satisfying: %@", @"currentValue != nil"}];
  }

  v10 = self;
  objc_sync_enter(v10);
  v11 = [(PXUbiquitousKeyValueStoreValueAccessor *)v10 cachedValue];
  if (v11 && !(*(v10->_valueFilter + 2))())
  {

    objc_sync_exit(v10);
  }

  else
  {
    [(PXUbiquitousKeyValueStoreValueAccessor *)v10 setCachedValue:v9];
    if (v6)
    {
      v12 = [(PXUbiquitousKeyValueStoreValueAccessor *)v10 storeQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __102__PXUbiquitousKeyValueStoreValueAccessor__setCurrentValue_updateUbiquitousKeyValueStore_notifyChange___block_invoke;
      block[3] = &unk_1E774C620;
      block[4] = v10;
      v15 = v9;
      dispatch_async(v12, block);
    }

    objc_sync_exit(v10);
    if (v5)
    {
      v9;
      px_dispatch_on_main_queue();
    }
  }
}

void __102__PXUbiquitousKeyValueStoreValueAccessor__setCurrentValue_updateUbiquitousKeyValueStore_notifyChange___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) ubiquitousKeyValueStore];
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) key];
  [v4 setObject:v2 forKey:v3];
}

- (id)_currentValueLoadIfNeeded:(BOOL)a3
{
  v3 = a3;
  v6 = [(PXUbiquitousKeyValueStoreValueAccessor *)self cachedValue];
  if (!v6 && v3)
  {
    v7 = self;
    objc_sync_enter(v7);
    v8 = [(PXUbiquitousKeyValueStoreValueAccessor *)v7 cachedValue];

    if (!v8)
    {
      v9 = [(PXUbiquitousKeyValueStoreValueAccessor *)v7 ubiquitousKeyValueStore];
      v10 = [(PXUbiquitousKeyValueStoreValueAccessor *)v7 key];
      v11 = [v9 objectForKey:v10];
      [(PXUbiquitousKeyValueStoreValueAccessor *)v7 setCachedValue:v11];

      v12 = [(PXUbiquitousKeyValueStoreValueAccessor *)v7 cachedValue];

      if (!v12)
      {
        v13 = (*(v7->_defaultValueFuture + 2))();
        [(PXUbiquitousKeyValueStoreValueAccessor *)v7 _setCurrentValue:v13 updateUbiquitousKeyValueStore:1 notifyChange:0];
        defaultValueFuture = v7->_defaultValueFuture;
        v7->_defaultValueFuture = 0;
      }

      v15 = [(PXUbiquitousKeyValueStoreValueAccessor *)v7 cachedValue];

      if (!v15)
      {
        v17 = [MEMORY[0x1E696AAA8] currentHandler];
        [v17 handleFailureInMethod:a2 object:v7 file:@"PXUbiquitousKeyValueStoreValueAccessor.m" lineNumber:97 description:{@"Invalid parameter not satisfying: %@", @"self.cachedValue != nil"}];
      }
    }

    v6 = [(PXUbiquitousKeyValueStoreValueAccessor *)v7 cachedValue];
    objc_sync_exit(v7);
  }

  return v6;
}

- (PXUbiquitousKeyValueStoreValueAccessor)initWithUbiquitousKeyValueStore:(id)a3 key:(id)a4 defaultValueFuture:(id)a5 valueFilter:(id)a6 changeHandler:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v32.receiver = self;
  v32.super_class = PXUbiquitousKeyValueStoreValueAccessor;
  v18 = [(PXUbiquitousKeyValueStoreValueAccessor *)&v32 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_ubiquitousKeyValueStore, a3);
    v20 = [v14 copy];
    key = v19->_key;
    v19->_key = v20;

    v22 = [v15 copy];
    defaultValueFuture = v19->_defaultValueFuture;
    v19->_defaultValueFuture = v22;

    v24 = [v16 copy];
    valueFilter = v19->_valueFilter;
    v19->_valueFilter = v24;

    v26 = [v17 copy];
    changeHandler = v19->_changeHandler;
    v19->_changeHandler = v26;

    v28 = [objc_opt_class() _defaultQueue];
    storeQueue = v19->_storeQueue;
    v19->_storeQueue = v28;

    v30 = [MEMORY[0x1E696AD88] defaultCenter];
    [v30 addObserver:v19 selector:sel__keyValueStoreDidChangeExternally_ name:*MEMORY[0x1E696A9E8] object:v19->_ubiquitousKeyValueStore];
  }

  return v19;
}

- (PXUbiquitousKeyValueStoreValueAccessor)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXUbiquitousKeyValueStoreValueAccessor.m" lineNumber:26 description:{@"%s is not available as initializer", "-[PXUbiquitousKeyValueStoreValueAccessor init]"}];

  abort();
}

@end