@interface PXUbiquitousKeyValueStoreValueAccessor
+ (id)_defaultQueue;
- (PXUbiquitousKeyValueStoreValueAccessor)init;
- (PXUbiquitousKeyValueStoreValueAccessor)initWithUbiquitousKeyValueStore:(id)store key:(id)key defaultValueFuture:(id)future valueFilter:(id)filter changeHandler:(id)handler;
- (id)_currentValueLoadIfNeeded:(BOOL)needed;
- (id)description;
- (void)_keyValueStoreDidChangeExternally:(id)externally;
- (void)_setCurrentValue:(id)value updateUbiquitousKeyValueStore:(BOOL)store notifyChange:(BOOL)change;
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
  block[4] = self;
  if (_defaultQueue_onceToken != -1)
  {
    dispatch_once(&_defaultQueue_onceToken, block);
  }

  v2 = _defaultQueue_defaultQueue;

  return v2;
}

- (void)loadValueAsyncIfNeeded
{
  currentValueIfLoaded = [(PXUbiquitousKeyValueStoreValueAccessor *)self currentValueIfLoaded];

  if (!currentValueIfLoaded)
  {
    selfCopy = self;
    storeQueue = [(PXUbiquitousKeyValueStoreValueAccessor *)selfCopy storeQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __64__PXUbiquitousKeyValueStoreValueAccessor_loadValueAsyncIfNeeded__block_invoke;
    block[3] = &unk_1E774C648;
    block[4] = selfCopy;
    dispatch_async(storeQueue, block);
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

- (void)_keyValueStoreDidChangeExternally:(id)externally
{
  userInfo = [externally userInfo];
  v8 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E696A9E0]];

  v5 = [(PXUbiquitousKeyValueStoreValueAccessor *)self key];
  if ([v8 containsObject:v5])
  {
    ubiquitousKeyValueStore = [(PXUbiquitousKeyValueStoreValueAccessor *)self ubiquitousKeyValueStore];
    v7 = [ubiquitousKeyValueStore objectForKey:v5];
    if (v7)
    {
      [(PXUbiquitousKeyValueStoreValueAccessor *)self _setCurrentValue:v7 updateUbiquitousKeyValueStore:0 notifyChange:1];
    }

    else
    {
      NSLog(&cfstr_UnexpectedlyRe_0.isa, ubiquitousKeyValueStore, v5);
    }
  }
}

- (void)_setCurrentValue:(id)value updateUbiquitousKeyValueStore:(BOOL)store notifyChange:(BOOL)change
{
  changeCopy = change;
  storeCopy = store;
  valueCopy = value;
  if (!valueCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXUbiquitousKeyValueStoreValueAccessor.m" lineNumber:111 description:{@"Invalid parameter not satisfying: %@", @"currentValue != nil"}];
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  cachedValue = [(PXUbiquitousKeyValueStoreValueAccessor *)selfCopy cachedValue];
  if (cachedValue && !(*(selfCopy->_valueFilter + 2))())
  {

    objc_sync_exit(selfCopy);
  }

  else
  {
    [(PXUbiquitousKeyValueStoreValueAccessor *)selfCopy setCachedValue:valueCopy];
    if (storeCopy)
    {
      storeQueue = [(PXUbiquitousKeyValueStoreValueAccessor *)selfCopy storeQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __102__PXUbiquitousKeyValueStoreValueAccessor__setCurrentValue_updateUbiquitousKeyValueStore_notifyChange___block_invoke;
      block[3] = &unk_1E774C620;
      block[4] = selfCopy;
      v15 = valueCopy;
      dispatch_async(storeQueue, block);
    }

    objc_sync_exit(selfCopy);
    if (changeCopy)
    {
      valueCopy;
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

- (id)_currentValueLoadIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  cachedValue = [(PXUbiquitousKeyValueStoreValueAccessor *)self cachedValue];
  if (!cachedValue && neededCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    cachedValue2 = [(PXUbiquitousKeyValueStoreValueAccessor *)selfCopy cachedValue];

    if (!cachedValue2)
    {
      ubiquitousKeyValueStore = [(PXUbiquitousKeyValueStoreValueAccessor *)selfCopy ubiquitousKeyValueStore];
      v10 = [(PXUbiquitousKeyValueStoreValueAccessor *)selfCopy key];
      v11 = [ubiquitousKeyValueStore objectForKey:v10];
      [(PXUbiquitousKeyValueStoreValueAccessor *)selfCopy setCachedValue:v11];

      cachedValue3 = [(PXUbiquitousKeyValueStoreValueAccessor *)selfCopy cachedValue];

      if (!cachedValue3)
      {
        v13 = (*(selfCopy->_defaultValueFuture + 2))();
        [(PXUbiquitousKeyValueStoreValueAccessor *)selfCopy _setCurrentValue:v13 updateUbiquitousKeyValueStore:1 notifyChange:0];
        defaultValueFuture = selfCopy->_defaultValueFuture;
        selfCopy->_defaultValueFuture = 0;
      }

      cachedValue4 = [(PXUbiquitousKeyValueStoreValueAccessor *)selfCopy cachedValue];

      if (!cachedValue4)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:selfCopy file:@"PXUbiquitousKeyValueStoreValueAccessor.m" lineNumber:97 description:{@"Invalid parameter not satisfying: %@", @"self.cachedValue != nil"}];
      }
    }

    cachedValue = [(PXUbiquitousKeyValueStoreValueAccessor *)selfCopy cachedValue];
    objc_sync_exit(selfCopy);
  }

  return cachedValue;
}

- (PXUbiquitousKeyValueStoreValueAccessor)initWithUbiquitousKeyValueStore:(id)store key:(id)key defaultValueFuture:(id)future valueFilter:(id)filter changeHandler:(id)handler
{
  storeCopy = store;
  keyCopy = key;
  futureCopy = future;
  filterCopy = filter;
  handlerCopy = handler;
  v32.receiver = self;
  v32.super_class = PXUbiquitousKeyValueStoreValueAccessor;
  v18 = [(PXUbiquitousKeyValueStoreValueAccessor *)&v32 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_ubiquitousKeyValueStore, store);
    v20 = [keyCopy copy];
    key = v19->_key;
    v19->_key = v20;

    v22 = [futureCopy copy];
    defaultValueFuture = v19->_defaultValueFuture;
    v19->_defaultValueFuture = v22;

    v24 = [filterCopy copy];
    valueFilter = v19->_valueFilter;
    v19->_valueFilter = v24;

    v26 = [handlerCopy copy];
    changeHandler = v19->_changeHandler;
    v19->_changeHandler = v26;

    _defaultQueue = [objc_opt_class() _defaultQueue];
    storeQueue = v19->_storeQueue;
    v19->_storeQueue = _defaultQueue;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v19 selector:sel__keyValueStoreDidChangeExternally_ name:*MEMORY[0x1E696A9E8] object:v19->_ubiquitousKeyValueStore];
  }

  return v19;
}

- (PXUbiquitousKeyValueStoreValueAccessor)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXUbiquitousKeyValueStoreValueAccessor.m" lineNumber:26 description:{@"%s is not available as initializer", "-[PXUbiquitousKeyValueStoreValueAccessor init]"}];

  abort();
}

@end