@interface SUCoreConnectServerPolicy
+ (id)_getAllowlistedClassesForKey:(id)key;
+ (id)_getSharedServerAccessQueue;
+ (id)_getSharedServerAllowlistedClasses;
+ (id)getAllowlistedClassesForKey:(id)key;
+ (void)clearAllowlistedClasses;
+ (void)setAllowlistedClass:(Class)class forKey:(id)key;
+ (void)setAllowlistedClasses:(id)classes forKey:(id)key;
+ (void)setAllowlistedClasses:(id)classes forKeys:(id)keys;
- (NSString)description;
- (SUCoreConnectServerDelegate)serverDelegate;
- (SUCoreConnectServerPolicy)initWithServiceName:(id)name entitlements:(id)entitlements serverDelegate:(id)delegate;
@end

@implementation SUCoreConnectServerPolicy

- (SUCoreConnectServerDelegate)serverDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_serverDelegate);

  return WeakRetained;
}

+ (id)_getSharedServerAccessQueue
{
  if (_getSharedServerAccessQueue_sharedServerAccessQueueOnceToken != -1)
  {
    +[SUCoreConnectServerPolicy _getSharedServerAccessQueue];
  }

  v3 = _getSharedServerAccessQueue_sharedServerAccessQueue;

  return v3;
}

+ (id)_getSharedServerAllowlistedClasses
{
  v2 = +[SUCoreConnectServerPolicy _getSharedServerAccessQueue];
  dispatch_assert_queue_V2(v2);

  if (_getSharedServerAllowlistedClasses_sharedServerAllowlistedClassesOnceToken != -1)
  {
    +[SUCoreConnectServerPolicy _getSharedServerAllowlistedClasses];
  }

  v3 = _getSharedServerAllowlistedClasses_sharedServerAllowlistedClasses;

  return v3;
}

- (SUCoreConnectServerPolicy)initWithServiceName:(id)name entitlements:(id)entitlements serverDelegate:(id)delegate
{
  nameCopy = name;
  entitlementsCopy = entitlements;
  delegateCopy = delegate;
  v23.receiver = self;
  v23.super_class = SUCoreConnectServerPolicy;
  v12 = [(SUCoreConnectServerPolicy *)&v23 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_serviceName, name);
    objc_storeStrong(&v13->_entitlements, entitlements);
    objc_storeWeak(&v13->_serverDelegate, delegateCopy);
    uTF8String = [@"com.apple.SUCoreConnect.ConnectionQueue" UTF8String];
    v15 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v16 = dispatch_queue_create(uTF8String, v15);
    connectionQueue = v13->_connectionQueue;
    v13->_connectionQueue = v16;

    uTF8String2 = [@"com.apple.SUCoreConnect.ServerDelegateQueue" UTF8String];
    v19 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v20 = dispatch_queue_create(uTF8String2, v19);
    delegateQueue = v13->_delegateQueue;
    v13->_delegateQueue = v20;
  }

  return v13;
}

void __56__SUCoreConnectServerPolicy__getSharedServerAccessQueue__block_invoke()
{
  v0 = [@"com.apple.SUCoreConnect.ServerAllowlistAccessQueue" UTF8String];
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create(v0, v3);
  v2 = _getSharedServerAccessQueue_sharedServerAccessQueue;
  _getSharedServerAccessQueue_sharedServerAccessQueue = v1;
}

uint64_t __63__SUCoreConnectServerPolicy__getSharedServerAllowlistedClasses__block_invoke()
{
  _getSharedServerAllowlistedClasses_sharedServerAllowlistedClasses = objc_alloc_init(MEMORY[0x277CBEB38]);

  return MEMORY[0x2821F96F8]();
}

+ (id)_getAllowlistedClassesForKey:(id)key
{
  keyCopy = key;
  v4 = +[SUCoreConnectServerPolicy _getSharedServerAccessQueue];
  dispatch_assert_queue_V2(v4);

  if (keyCopy)
  {
    v5 = +[SUCoreConnectServerPolicy _getSharedServerAllowlistedClasses];
    v6 = [v5 safeObjectForKey:keyCopy ofClass:objc_opt_class()];
  }

  else
  {
    mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
    oslog = [mEMORY[0x277D64460] oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_22E2D6000, oslog, OS_LOG_TYPE_DEFAULT, "[SUCoreConnectServerPolicy] Cannot get allowlisted for a nil key, returning no allowlisted classes", v10, 2u);
    }

    v6 = 0;
  }

  return v6;
}

+ (id)getAllowlistedClassesForKey:(id)key
{
  keyCopy = key;
  v4 = +[SUCoreConnectServerPolicy _getSharedServerAccessQueue];
  dispatch_assert_queue_not_V2(v4);

  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__1;
  v16 = __Block_byref_object_dispose__1;
  v17 = 0;
  v5 = +[SUCoreConnectServerPolicy _getSharedServerAccessQueue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __57__SUCoreConnectServerPolicy_getAllowlistedClassesForKey___block_invoke;
  v9[3] = &unk_2787BC968;
  v10 = keyCopy;
  v11 = &v12;
  v6 = keyCopy;
  dispatch_sync(v5, v9);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

uint64_t __57__SUCoreConnectServerPolicy_getAllowlistedClassesForKey___block_invoke(uint64_t a1)
{
  v2 = [SUCoreConnectServerPolicy _getAllowlistedClassesForKey:*(a1 + 32)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

+ (void)setAllowlistedClass:(Class)class forKey:(id)key
{
  v5 = MEMORY[0x277CBEB98];
  keyCopy = key;
  v8 = [v5 setWithObject:class];
  v7 = [MEMORY[0x277CBEB98] setWithObject:keyCopy];

  [SUCoreConnectServerPolicy setAllowlistedClasses:v8 forKeys:v7];
}

+ (void)setAllowlistedClasses:(id)classes forKey:(id)key
{
  v5 = MEMORY[0x277CBEB98];
  classesCopy = classes;
  v7 = [v5 setWithObject:key];
  [SUCoreConnectServerPolicy setAllowlistedClasses:classesCopy forKeys:v7];
}

+ (void)setAllowlistedClasses:(id)classes forKeys:(id)keys
{
  classesCopy = classes;
  keysCopy = keys;
  v7 = +[SUCoreConnectServerPolicy _getSharedServerAccessQueue];
  dispatch_assert_queue_not_V2(v7);

  if (!keysCopy || ![keysCopy count])
  {
    mEMORY[0x277D64428] = [MEMORY[0x277D64428] sharedDiag];
    [mEMORY[0x277D64428] trackAnomaly:@"SUCoreConnectServerPolicy" forReason:@"Cannot set allowlisted classes for a nil/empty NSSet of keys" withResult:8102 withError:0];
LABEL_8:

    goto LABEL_9;
  }

  if (!classesCopy || ![classesCopy count])
  {
    mEMORY[0x277D64428] = [MEMORY[0x277D64428] sharedDiag];
    keysCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Cannot set nil/empty NSSet of classes for keys %@", keysCopy];
    [mEMORY[0x277D64428] trackAnomaly:@"SUCoreConnectServerPolicy" forReason:keysCopy withResult:8102 withError:0];

    goto LABEL_8;
  }

  v8 = +[SUCoreConnectServerPolicy _getSharedServerAccessQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__SUCoreConnectServerPolicy_setAllowlistedClasses_forKeys___block_invoke;
  block[3] = &unk_2787BC990;
  v12 = keysCopy;
  v13 = classesCopy;
  dispatch_sync(v8, block);

LABEL_9:
}

void __59__SUCoreConnectServerPolicy_setAllowlistedClasses_forKeys___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v18;
    do
    {
      v5 = 0;
      do
      {
        if (*v18 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v17 + 1) + 8 * v5);
        v7 = objc_autoreleasePoolPush();
        v8 = MEMORY[0x277CBEB98];
        v9 = +[SUCoreConnectConstants defaultClasses];
        v10 = [v8 setWithArray:v9];

        v11 = [SUCoreConnectServerPolicy _getAllowlistedClassesForKey:v6];
        if (v11)
        {
          v12 = [v10 setByAddingObjectsFromSet:v11];

          v10 = v12;
        }

        v13 = [v10 setByAddingObjectsFromSet:*(a1 + 40)];

        v14 = +[SUCoreConnectServerPolicy _getSharedServerAllowlistedClasses];
        [v14 setSafeObject:v13 forKey:v6];

        objc_autoreleasePoolPop(v7);
        ++v5;
      }

      while (v3 != v5);
      v3 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v3);
  }

  v15 = *MEMORY[0x277D85DE8];
}

+ (void)clearAllowlistedClasses
{
  v2 = +[SUCoreConnectServerPolicy _getSharedServerAccessQueue];
  dispatch_assert_queue_not_V2(v2);

  v3 = +[SUCoreConnectServerPolicy _getSharedServerAccessQueue];
  dispatch_sync(v3, &__block_literal_global_26);
}

void __52__SUCoreConnectServerPolicy_clearAllowlistedClasses__block_invoke()
{
  v0 = +[SUCoreConnectServerPolicy _getSharedServerAllowlistedClasses];
  [v0 removeAllObjects];

  v1 = [MEMORY[0x277D64460] sharedLogger];
  v2 = [v1 oslog];

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_22E2D6000, v2, OS_LOG_TYPE_DEFAULT, "[SUCoreConnectServerPolicy] All entries removed from allowlisted classes dictionary", v3, 2u);
  }
}

- (NSString)description
{
  v2 = MEMORY[0x277CCACA8];
  serviceName = [(SUCoreConnectServerPolicy *)self serviceName];
  v4 = [v2 stringWithFormat:@"SUCoreConnectServerPolicy(serviceName:%@)", serviceName];

  return v4;
}

@end