@interface VCSyncDataHandler
+ (Class)changeClass;
+ (int)messageType;
- (BOOL)applyChanges:(id)changes fromSyncService:(id)service error:(id *)error;
- (BOOL)deleteSyncedData:(id *)data;
- (BOOL)markChangesAsSynced:(id)synced withSyncService:(id)service metadata:(id)metadata error:(id *)error;
- (BOOL)resetSyncStateForService:(id)service error:(id *)error;
- (NSArray)services;
- (VCSyncDataHandler)init;
- (id)unsyncedChangesForSyncService:(id)service metadata:(id *)metadata error:(id *)error;
- (void)deregisterSyncService:(id)service;
- (void)registerSyncService:(id)service;
- (void)requestFullResync;
- (void)requestSync;
@end

@implementation VCSyncDataHandler

- (void)deregisterSyncService:(id)service
{
  serviceCopy = service;
  queue = [(VCSyncDataHandler *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__VCSyncDataHandler_deregisterSyncService___block_invoke;
  v7[3] = &unk_2788FFFC0;
  v7[4] = self;
  v8 = serviceCopy;
  v6 = serviceCopy;
  dispatch_sync(queue, v7);
}

void __43__VCSyncDataHandler_deregisterSyncService___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) servicesTable];
  [v2 removeObject:*(a1 + 40)];
}

- (void)registerSyncService:(id)service
{
  serviceCopy = service;
  if (!serviceCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"VCSyncDataHandler.m" lineNumber:96 description:{@"Invalid parameter not satisfying: %@", @"service"}];
  }

  queue = [(VCSyncDataHandler *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__VCSyncDataHandler_registerSyncService___block_invoke;
  block[3] = &unk_2788FFFC0;
  block[4] = self;
  v10 = serviceCopy;
  v7 = serviceCopy;
  dispatch_sync(queue, block);
}

void __41__VCSyncDataHandler_registerSyncService___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) servicesTable];
  [v2 addObject:*(a1 + 40)];
}

- (BOOL)deleteSyncedData:(id *)data
{
  result = [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"-[VCSyncDataHandler deleteSyncedData:] must be overridden"];
  __break(1u);
  return result;
}

- (BOOL)applyChanges:(id)changes fromSyncService:(id)service error:(id *)error
{
  changesCopy = changes;
  serviceCopy = service;
  result = [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"-[VCSyncDataHandler applyChanges:fromSyncService:error:] must be overridden"];
  __break(1u);
  return result;
}

- (BOOL)resetSyncStateForService:(id)service error:(id *)error
{
  serviceCopy = service;
  result = [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"-[VCSyncDataHandler resetSyncStateForService:error:] must be overridden"];
  __break(1u);
  return result;
}

- (BOOL)markChangesAsSynced:(id)synced withSyncService:(id)service metadata:(id)metadata error:(id *)error
{
  syncedCopy = synced;
  serviceCopy = service;
  metadataCopy = metadata;
  result = [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"-[VCSyncDataHandler markChangesAsSynced:withSyncService:metadata:error:] must be overridden"];
  __break(1u);
  return result;
}

- (id)unsyncedChangesForSyncService:(id)service metadata:(id *)metadata error:(id *)error
{
  serviceCopy = service;
  result = [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"-[VCSyncDataHandler unsyncedChangesForSyncService:metadata:error:] must be overridden"];
  __break(1u);
  return result;
}

- (void)requestFullResync
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  services = [(VCSyncDataHandler *)self services];
  v3 = [services countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(services);
        }

        [*(*(&v8 + 1) + 8 * v6++) requestFullResync];
      }

      while (v4 != v6);
      v4 = [services countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)requestSync
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  services = [(VCSyncDataHandler *)self services];
  v3 = [services countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(services);
        }

        [*(*(&v8 + 1) + 8 * v6++) requestSync];
      }

      while (v4 != v6);
      v4 = [services countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (NSArray)services
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy_;
  v11 = __Block_byref_object_dispose_;
  v12 = 0;
  queue = [(VCSyncDataHandler *)self queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __29__VCSyncDataHandler_services__block_invoke;
  v6[3] = &unk_2789000D0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(queue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __29__VCSyncDataHandler_services__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) servicesTable];
  v2 = [v5 allObjects];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (VCSyncDataHandler)init
{
  v13.receiver = self;
  v13.super_class = VCSyncDataHandler;
  v2 = [(VCSyncDataHandler *)&v13 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_USER_INITIATED, 0);

    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = dispatch_queue_create([v6 UTF8String], v4);
    queue = v2->_queue;
    v2->_queue = v7;

    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    servicesTable = v2->_servicesTable;
    v2->_servicesTable = weakObjectsHashTable;

    v11 = v2;
  }

  return v2;
}

+ (Class)changeClass
{
  messageType = [self messageType];

  return VCSYChangeClassFromMessageType(messageType);
}

+ (int)messageType
{
  result = [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"+[VCSyncDataHandler messageType] must be overridden"];
  __break(1u);
  return result;
}

@end