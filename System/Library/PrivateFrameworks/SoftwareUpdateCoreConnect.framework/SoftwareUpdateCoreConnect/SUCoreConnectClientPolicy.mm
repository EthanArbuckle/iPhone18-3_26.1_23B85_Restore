@interface SUCoreConnectClientPolicy
+ (id)_getAllowlistedClassesForKey:(id)a3;
+ (id)_getSharedClientAccessQueue;
+ (id)_getSharedClientAllowlistedClasses;
+ (id)getAllowlistedClassesForKey:(id)a3;
+ (void)clearAllowlistedClasses;
+ (void)setAllowlistedClass:(Class)a3 forKey:(id)a4;
+ (void)setAllowlistedClasses:(id)a3 forKey:(id)a4;
+ (void)setAllowlistedClasses:(id)a3 forKeys:(id)a4;
- (NSString)description;
- (SUCoreConnectClientDelegate)clientDelegate;
- (id)initForServiceName:(id)a3 delegate:(id)a4;
- (id)initForServiceName:(id)a3 delegate:(id)a4 clientID:(id)a5;
- (void)setProxyObjectClasses:(id)a3;
@end

@implementation SUCoreConnectClientPolicy

+ (id)_getSharedClientAccessQueue
{
  if (_getSharedClientAccessQueue_sharedClientAccessQueueOnceToken != -1)
  {
    +[SUCoreConnectClientPolicy _getSharedClientAccessQueue];
  }

  v3 = _getSharedClientAccessQueue_sharedClientAccessQueue;

  return v3;
}

+ (id)_getSharedClientAllowlistedClasses
{
  v2 = +[SUCoreConnectClientPolicy _getSharedClientAccessQueue];
  dispatch_assert_queue_V2(v2);

  if (_getSharedClientAllowlistedClasses_sharedClientAllowlistedClassesOnceToken != -1)
  {
    +[SUCoreConnectClientPolicy _getSharedClientAllowlistedClasses];
  }

  v3 = _getSharedClientAllowlistedClasses_sharedClientAllowlistedClasses;

  return v3;
}

- (id)initForServiceName:(id)a3 delegate:(id)a4
{
  v5 = [MEMORY[0x277D64428] sharedDiag];
  [v5 trackAnomaly:@"SUCoreConnectClientPolicy" forReason:@"initForServiceName:delegate: is deprecated withResult:use initForServiceName:delegate:clientID instead" withError:{8123, 0}];

  return 0;
}

- (id)initForServiceName:(id)a3 delegate:(id)a4 clientID:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v20.receiver = self;
  v20.super_class = SUCoreConnectClientPolicy;
  v12 = [(SUCoreConnectClientPolicy *)&v20 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_serviceName, a3);
    objc_storeWeak(&v13->_clientDelegate, v10);
    v14 = MEMORY[0x277CCACA8];
    v15 = [MEMORY[0x277CCAC38] processInfo];
    v16 = [v14 stringWithFormat:@"%@.<%d>", v11, objc_msgSend(v15, "processIdentifier")];
    clientID = v13->_clientID;
    v13->_clientID = v16;

    objc_storeStrong(&v13->_clientIDRaw, a5);
    v18 = [MEMORY[0x277CCAC38] processInfo];
    v13->_clientProcessIdentifier = [v18 processIdentifier];

    v13->_usesPersistentXPCConnections = 0;
  }

  return v13;
}

- (void)setProxyObjectClasses:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277D64460] sharedLogger];
  v6 = [v5 oslog];

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543362;
    v10 = v4;
    _os_log_impl(&dword_22E2D6000, v6, OS_LOG_TYPE_DEFAULT, "[SUCoreConnectClientPolicy] Setting proxy object classes: %{public}@", &v9, 0xCu);
  }

  proxyObjectClasses = self->_proxyObjectClasses;
  self->_proxyObjectClasses = v4;

  v8 = *MEMORY[0x277D85DE8];
}

void __56__SUCoreConnectClientPolicy__getSharedClientAccessQueue__block_invoke()
{
  v0 = [@"com.apple.SUCoreConnect.ClientAllowlistAccessQueue" UTF8String];
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create(v0, v3);
  v2 = _getSharedClientAccessQueue_sharedClientAccessQueue;
  _getSharedClientAccessQueue_sharedClientAccessQueue = v1;
}

uint64_t __63__SUCoreConnectClientPolicy__getSharedClientAllowlistedClasses__block_invoke()
{
  _getSharedClientAllowlistedClasses_sharedClientAllowlistedClasses = objc_alloc_init(MEMORY[0x277CBEB38]);

  return MEMORY[0x2821F96F8]();
}

+ (id)_getAllowlistedClassesForKey:(id)a3
{
  v3 = a3;
  v4 = +[SUCoreConnectClientPolicy _getSharedClientAccessQueue];
  dispatch_assert_queue_V2(v4);

  if (v3)
  {
    v5 = +[SUCoreConnectClientPolicy _getSharedClientAllowlistedClasses];
    v6 = [v5 safeObjectForKey:v3 ofClass:objc_opt_class()];
  }

  else
  {
    v7 = [MEMORY[0x277D64460] sharedLogger];
    v8 = [v7 oslog];

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [SUCoreConnectClientPolicy _getAllowlistedClassesForKey:v8];
    }

    v6 = 0;
  }

  return v6;
}

+ (id)getAllowlistedClassesForKey:(id)a3
{
  v3 = a3;
  v4 = +[SUCoreConnectClientPolicy _getSharedClientAccessQueue];
  dispatch_assert_queue_not_V2(v4);

  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v17 = 0;
  v5 = +[SUCoreConnectClientPolicy _getSharedClientAccessQueue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __57__SUCoreConnectClientPolicy_getAllowlistedClassesForKey___block_invoke;
  v9[3] = &unk_2787BC968;
  v10 = v3;
  v11 = &v12;
  v6 = v3;
  dispatch_sync(v5, v9);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

uint64_t __57__SUCoreConnectClientPolicy_getAllowlistedClassesForKey___block_invoke(uint64_t a1)
{
  v2 = [SUCoreConnectClientPolicy _getAllowlistedClassesForKey:*(a1 + 32)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

+ (void)setAllowlistedClass:(Class)a3 forKey:(id)a4
{
  v5 = MEMORY[0x277CBEB98];
  v6 = a4;
  v8 = [v5 setWithObject:a3];
  v7 = [MEMORY[0x277CBEB98] setWithObject:v6];

  [SUCoreConnectClientPolicy setAllowlistedClasses:v8 forKeys:v7];
}

+ (void)setAllowlistedClasses:(id)a3 forKey:(id)a4
{
  v5 = MEMORY[0x277CBEB98];
  v6 = a3;
  v7 = [v5 setWithObject:a4];
  [SUCoreConnectClientPolicy setAllowlistedClasses:v6 forKeys:v7];
}

+ (void)setAllowlistedClasses:(id)a3 forKeys:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[SUCoreConnectClientPolicy _getSharedClientAccessQueue];
  dispatch_assert_queue_not_V2(v7);

  if (!v6 || ![v6 count])
  {
    v9 = [MEMORY[0x277D64428] sharedDiag];
    [v9 trackAnomaly:@"SUCoreConnectClientPolicy" forReason:@"Cannot set allowlisted classes for a nil/empty NSSet of keys" withResult:8102 withError:0];
LABEL_8:

    goto LABEL_9;
  }

  if (!v5 || ![v5 count])
  {
    v9 = [MEMORY[0x277D64428] sharedDiag];
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Cannot set nil/empty NSSet of classes for keys %@", v6];
    [v9 trackAnomaly:@"SUCoreConnectClientPolicy" forReason:v10 withResult:8102 withError:0];

    goto LABEL_8;
  }

  v8 = +[SUCoreConnectClientPolicy _getSharedClientAccessQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__SUCoreConnectClientPolicy_setAllowlistedClasses_forKeys___block_invoke;
  block[3] = &unk_2787BC990;
  v12 = v6;
  v13 = v5;
  dispatch_sync(v8, block);

LABEL_9:
}

void __59__SUCoreConnectClientPolicy_setAllowlistedClasses_forKeys___block_invoke(uint64_t a1)
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

        v11 = [SUCoreConnectClientPolicy _getAllowlistedClassesForKey:v6];
        if (v11)
        {
          v12 = [v10 setByAddingObjectsFromSet:v11];

          v10 = v12;
        }

        v13 = [v10 setByAddingObjectsFromSet:*(a1 + 40)];

        v14 = +[SUCoreConnectClientPolicy _getSharedClientAllowlistedClasses];
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
  v2 = +[SUCoreConnectClientPolicy _getSharedClientAccessQueue];
  dispatch_assert_queue_not_V2(v2);

  v3 = +[SUCoreConnectClientPolicy _getSharedClientAccessQueue];
  dispatch_sync(v3, &__block_literal_global_27);
}

void __52__SUCoreConnectClientPolicy_clearAllowlistedClasses__block_invoke()
{
  v0 = +[SUCoreConnectClientPolicy _getSharedClientAllowlistedClasses];
  [v0 removeAllObjects];

  v1 = [MEMORY[0x277D64460] sharedLogger];
  v2 = [v1 oslog];

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_22E2D6000, v2, OS_LOG_TYPE_DEFAULT, "[SUCoreConnectClientPolicy] All entries removed from allowlisted classes dictionary", v3, 2u);
  }
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(SUCoreConnectClientPolicy *)self serviceName];
  v5 = [(SUCoreConnectClientPolicy *)self clientID];
  v6 = [v3 stringWithFormat:@"SUCoreConnectClientPolicy(serviceName:%@|clientID:%@)", v4, v5];

  return v6;
}

- (SUCoreConnectClientDelegate)clientDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_clientDelegate);

  return WeakRetained;
}

@end