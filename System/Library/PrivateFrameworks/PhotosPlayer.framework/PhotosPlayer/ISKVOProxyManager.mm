@interface ISKVOProxyManager
+ (ISKVOProxyManager)sharedManager;
- (ISKVOProxyManager)init;
- (id)addProxyWithTarget:(id)target queue:(id)queue keyPaths:(id)paths delegate:(id)delegate;
- (void)removeProxyWithIdentifier:(id)identifier;
@end

@implementation ISKVOProxyManager

- (void)removeProxyWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = identifierCopy;
  if (identifierCopy)
  {
    recordsQueue = self->_recordsQueue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __47__ISKVOProxyManager_removeProxyWithIdentifier___block_invoke;
    v7[3] = &unk_279A2A348;
    v7[4] = self;
    v8 = identifierCopy;
    dispatch_async(recordsQueue, v7);
  }
}

void __47__ISKVOProxyManager_removeProxyWithIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:*(a1 + 40)];
  [*(*(a1 + 32) + 8) removeObjectForKey:*(a1 + 40)];
  if (v2)
  {
    v3 = [v2 queue];
    v4 = [v2 proxy];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __47__ISKVOProxyManager_removeProxyWithIdentifier___block_invoke_2;
    block[3] = &unk_279A2A180;
    v7 = v4;
    v5 = v4;
    dispatch_async(v3, block);
  }
}

- (id)addProxyWithTarget:(id)target queue:(id)queue keyPaths:(id)paths delegate:(id)delegate
{
  queueCopy = queue;
  v11 = MEMORY[0x277CCAD78];
  delegateCopy = delegate;
  pathsCopy = paths;
  targetCopy = target;
  uUID = [v11 UUID];
  uUIDString = [uUID UUIDString];

  v17 = [[ISKVOProxy alloc] initWithTarget:targetCopy keyPaths:pathsCopy identifier:uUIDString delegate:delegateCopy];
  v18 = [[ISKVOProxyRecord alloc] initWithProxy:v17 queue:queueCopy];
  recordsQueue = self->_recordsQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__ISKVOProxyManager_addProxyWithTarget_queue_keyPaths_delegate___block_invoke;
  block[3] = &unk_279A29A70;
  block[4] = self;
  v20 = uUIDString;
  v28 = v20;
  v29 = v18;
  v30 = queueCopy;
  v31 = v17;
  v21 = v17;
  v22 = queueCopy;
  v23 = v18;
  dispatch_async(recordsQueue, block);
  v24 = v31;
  v25 = v20;

  return v20;
}

void __64__ISKVOProxyManager_addProxyWithTarget_queue_keyPaths_delegate___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 8) setObject:*(a1 + 48) forKeyedSubscript:*(a1 + 40)];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__ISKVOProxyManager_addProxyWithTarget_queue_keyPaths_delegate___block_invoke_2;
  block[3] = &unk_279A2A180;
  v2 = *(a1 + 56);
  v4 = *(a1 + 64);
  dispatch_async(v2, block);
}

- (ISKVOProxyManager)init
{
  v9.receiver = self;
  v9.super_class = ISKVOProxyManager;
  v2 = [(ISKVOProxyManager *)&v9 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    recordsByIdentifier = v2->_recordsByIdentifier;
    v2->_recordsByIdentifier = v3;

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("com.apple.photosplayer.kvoproxyrecords", v5);
    recordsQueue = v2->_recordsQueue;
    v2->_recordsQueue = v6;
  }

  return v2;
}

+ (ISKVOProxyManager)sharedManager
{
  if (sharedManager_onceToken != -1)
  {
    dispatch_once(&sharedManager_onceToken, &__block_literal_global_655);
  }

  v3 = sharedManager_sharedInstance;

  return v3;
}

uint64_t __34__ISKVOProxyManager_sharedManager__block_invoke()
{
  v0 = objc_alloc_init(ISKVOProxyManager);
  v1 = sharedManager_sharedInstance;
  sharedManager_sharedInstance = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end