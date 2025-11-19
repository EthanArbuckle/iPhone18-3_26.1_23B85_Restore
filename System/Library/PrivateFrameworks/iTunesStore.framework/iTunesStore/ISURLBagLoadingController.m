@interface ISURLBagLoadingController
+ (id)sharedBagLoadingController;
- (ISURLBagLoadingController)init;
- (NSDictionary)bagDictionary;
- (void)_didCompleteLoadingBagDictionary:(id)a3 withError:(id)a4;
- (void)_handleAccountStoreDidChangeNotification:(id)a3;
- (void)_handleNetworkReachabilityFlagsDidChangeNotification:(id)a3;
- (void)_handleStoreFrontDidChangeNotification:(id)a3;
- (void)_reloadURLBagAllowingUpdateUsingExistingBagDictionary:(BOOL)a3;
- (void)_updateBagWithDictionary:(id)a3 error:(id)a4;
- (void)addBagObserver:(id)a3;
- (void)dealloc;
- (void)reloadBag;
- (void)removeBagObserver:(id)a3;
- (void)requestAccessToBagUsingBlock:(id)a3;
@end

@implementation ISURLBagLoadingController

+ (id)sharedBagLoadingController
{
  if (sharedBagLoadingController_sOnceToken != -1)
  {
    +[ISURLBagLoadingController sharedBagLoadingController];
  }

  v3 = sharedBagLoadingController_sSharedController;

  return v3;
}

uint64_t __55__ISURLBagLoadingController_sharedBagLoadingController__block_invoke()
{
  sharedBagLoadingController_sSharedController = objc_alloc_init(ISURLBagLoadingController);

  return MEMORY[0x2821F96F8]();
}

- (ISURLBagLoadingController)init
{
  __ISRecordSPIClassUsage(self);
  v19.receiver = self;
  v19.super_class = ISURLBagLoadingController;
  v3 = [(ISURLBagLoadingController *)&v19 init];
  if (v3)
  {
    v4 = dispatch_queue_create("com.apple.iTunesStore.ISURLBagLoadingController.accessQueue", MEMORY[0x277D85CD8]);
    accessQueue = v3->_accessQueue;
    v3->_accessQueue = v4;

    v6 = dispatch_queue_create("com.apple.iTunesStore.ISURLBagLoadingController.notificationQueue", 0);
    notificationQueue = v3->_notificationQueue;
    v3->_notificationQueue = v6;

    v8 = v3->_accessQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __33__ISURLBagLoadingController_init__block_invoke;
    block[3] = &unk_27A670818;
    v9 = v3;
    v18 = v9;
    dispatch_barrier_sync(v8, block);
    v10 = [MEMORY[0x277CCAB98] defaultCenter];
    v11 = +[ISNetworkObserver sharedInstance];
    [v10 addObserver:v9 selector:sel__handleNetworkReachabilityFlagsDidChangeNotification_ name:@"ISNetworkReachabilityFlagsChangedNotification" object:v11];

    v12 = *MEMORY[0x277D69D70];
    v13 = [MEMORY[0x277D69A20] defaultStore];
    [v10 addObserver:v9 selector:sel__handleAccountStoreDidChangeNotification_ name:v12 object:v13];

    v14 = *MEMORY[0x277D69E18];
    v15 = [MEMORY[0x277D69A80] currentDevice];
    [v10 addObserver:v9 selector:sel__handleStoreFrontDidChangeNotification_ name:v14 object:v15];
  }

  return v3;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  v4 = +[ISNetworkObserver sharedInstance];
  [v3 removeObserver:self name:@"ISNetworkReachabilityFlagsChangedNotification" object:v4];

  v5 = *MEMORY[0x277D69D70];
  v6 = [MEMORY[0x277D69A20] defaultStore];
  [v3 removeObserver:self name:v5 object:v6];

  v7 = *MEMORY[0x277D69E18];
  v8 = [MEMORY[0x277D69A80] currentDevice];
  [v3 removeObserver:self name:v7 object:v8];

  v9.receiver = self;
  v9.super_class = ISURLBagLoadingController;
  [(ISURLBagLoadingController *)&v9 dealloc];
}

- (NSDictionary)bagDictionary
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__1;
  v10 = __Block_byref_object_dispose__1;
  v11 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __42__ISURLBagLoadingController_bagDictionary__block_invoke;
  v5[3] = &unk_27A6708C0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)addBagObserver:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    accessQueue = self->_accessQueue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __44__ISURLBagLoadingController_addBagObserver___block_invoke;
    v7[3] = &unk_27A670868;
    v7[4] = self;
    v8 = v4;
    dispatch_barrier_sync(accessQueue, v7);
  }
}

uint64_t __44__ISURLBagLoadingController_addBagObserver___block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 56) containsObject:*(a1 + 40)];
  if ((result & 1) == 0)
  {
    v3 = *(*(a1 + 32) + 56);
    if (!v3)
    {
      v4 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
      v5 = *(a1 + 32);
      v6 = *(v5 + 56);
      *(v5 + 56) = v4;

      v3 = *(*(a1 + 32) + 56);
    }

    v7 = *(a1 + 40);

    return [v3 addObject:v7];
  }

  return result;
}

- (void)removeBagObserver:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    accessQueue = self->_accessQueue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __47__ISURLBagLoadingController_removeBagObserver___block_invoke;
    v7[3] = &unk_27A670868;
    v7[4] = self;
    v8 = v4;
    dispatch_barrier_sync(accessQueue, v7);
  }
}

uint64_t __47__ISURLBagLoadingController_removeBagObserver___block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 56) containsObject:*(a1 + 40)];
  if (result)
  {
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 32) + 56);

    return [v4 removeObject:v3];
  }

  return result;
}

- (void)requestAccessToBagUsingBlock:(id)a3
{
  v4 = a3;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__1;
  v21 = __Block_byref_object_dispose__1;
  v22 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__1;
  v15 = __Block_byref_object_dispose__1;
  v16 = 0;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__ISURLBagLoadingController_requestAccessToBagUsingBlock___block_invoke;
  v7[3] = &unk_27A6708E8;
  v9 = &v17;
  v10 = &v11;
  v7[4] = self;
  v6 = v4;
  v8 = v6;
  dispatch_barrier_sync(accessQueue, v7);
  if (v18[5] | v12[5])
  {
    v6[2](v6);
  }

  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(&v17, 8);
}

void __58__ISURLBagLoadingController_requestAccessToBagUsingBlock___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), *(*(a1 + 32) + 32));
  objc_storeStrong((*(*(a1 + 56) + 8) + 40), *(*(a1 + 32) + 48));
  if (!*(*(*(a1 + 48) + 8) + 40) && !*(*(*(a1 + 56) + 8) + 40))
  {
    v2 = *(*(a1 + 32) + 40);
    if (!v2)
    {
      v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v4 = *(a1 + 32);
      v5 = *(v4 + 40);
      *(v4 + 40) = v3;

      v2 = *(*(a1 + 32) + 40);
    }

    v7 = [*(a1 + 40) copy];
    v6 = MEMORY[0x277C8C270]();
    [v2 addObject:v6];
  }
}

- (void)reloadBag
{
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__ISURLBagLoadingController_reloadBag__block_invoke;
  block[3] = &unk_27A670818;
  block[4] = self;
  dispatch_barrier_sync(accessQueue, block);
}

- (void)_handleAccountStoreDidChangeNotification:(id)a3
{
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__ISURLBagLoadingController__handleAccountStoreDidChangeNotification___block_invoke;
  block[3] = &unk_27A670818;
  block[4] = self;
  dispatch_barrier_async(accessQueue, block);
}

- (void)_handleNetworkReachabilityFlagsDidChangeNotification:(id)a3
{
  v4 = +[ISNetworkObserver sharedInstance];
  v5 = +[ISNetworkObserver isLikelyToReachRemoteServerWithReachabilityFlags:](ISNetworkObserver, "isLikelyToReachRemoteServerWithReachabilityFlags:", [v4 networkReachabilityFlags]);

  if (v5)
  {
    accessQueue = self->_accessQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __82__ISURLBagLoadingController__handleNetworkReachabilityFlagsDidChangeNotification___block_invoke;
    block[3] = &unk_27A670818;
    block[4] = self;
    dispatch_barrier_async(accessQueue, block);
  }
}

_BYTE *__82__ISURLBagLoadingController__handleNetworkReachabilityFlagsDidChangeNotification___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if ((result[24] & 1) == 0)
  {
    return [result _reloadURLBagAllowingUpdateUsingExistingBagDictionary:0];
  }

  return result;
}

- (void)_handleStoreFrontDidChangeNotification:(id)a3
{
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__ISURLBagLoadingController__handleStoreFrontDidChangeNotification___block_invoke;
  block[3] = &unk_27A670818;
  block[4] = self;
  dispatch_barrier_async(accessQueue, block);
}

- (void)_didCompleteLoadingBagDictionary:(id)a3 withError:(id)a4
{
  v6 = a3;
  v7 = a4;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__ISURLBagLoadingController__didCompleteLoadingBagDictionary_withError___block_invoke;
  block[3] = &unk_27A670890;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_barrier_async(accessQueue, block);
}

void __72__ISURLBagLoadingController__didCompleteLoadingBagDictionary_withError___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 72) = 0;
  [*(a1 + 32) _updateBagWithDictionary:*(a1 + 40) error:*(a1 + 48)];
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__ISURLBagLoadingController__didCompleteLoadingBagDictionary_withError___block_invoke_2;
  block[3] = &unk_27A670818;
  block[4] = v2;
  dispatch_async(v3, block);
}

void __72__ISURLBagLoadingController__didCompleteLoadingBagDictionary_withError___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"ISURLBagLoadingControllerIsLoadingBagDidChangeNotification" object:*(a1 + 32)];
}

- (void)_reloadURLBagAllowingUpdateUsingExistingBagDictionary:(BOOL)a3
{
  v3 = a3;
  v5 = [MEMORY[0x277D69C90] contextWithBagType:0];
  v6 = [[ISSSURLBag alloc] initWithURLBagContext:v5];
  URLBag = self->_URLBag;
  self->_URLBag = &v6->super;

  if (v3)
  {
    v8 = [(SSURLBag *)self->_URLBag existingBagDictionary];
    [(ISURLBagLoadingController *)self _updateBagWithDictionary:v8 error:0];
  }

  self->_loadingBag = 1;
  notificationQueue = self->_notificationQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __83__ISURLBagLoadingController__reloadURLBagAllowingUpdateUsingExistingBagDictionary___block_invoke;
  block[3] = &unk_27A670818;
  block[4] = self;
  dispatch_async(notificationQueue, block);
  v10 = [MEMORY[0x277CCAE60] valueWithWeakObject:self];
  v11 = self->_URLBag;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __83__ISURLBagLoadingController__reloadURLBagAllowingUpdateUsingExistingBagDictionary___block_invoke_2;
  v13[3] = &unk_27A670910;
  v14 = v10;
  v12 = v10;
  [(SSURLBag *)v11 loadWithCompletionBlock:v13];
}

void __83__ISURLBagLoadingController__reloadURLBagAllowingUpdateUsingExistingBagDictionary___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"ISURLBagLoadingControllerIsLoadingBagDidChangeNotification" object:*(a1 + 32)];
}

void __83__ISURLBagLoadingController__reloadURLBagAllowingUpdateUsingExistingBagDictionary___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = a2;
  v7 = [v4 weakObjectValue];
  [v7 _didCompleteLoadingBagDictionary:v6 withError:v5];
}

- (void)_updateBagWithDictionary:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(NSDictionary *)self->_bagDictionary copy];
  bagDictionary = self->_bagDictionary;
  if (bagDictionary == v6 || [(NSDictionary *)bagDictionary isEqualToDictionary:v6])
  {
    v10 = 0;
  }

  else
  {
    v11 = [(NSDictionary *)v6 copy];

    objc_storeStrong(&self->_bagDictionary, v11);
    v10 = [(NSHashTable *)self->_bagObservers allObjects];
    v8 = v11;
  }

  objc_storeStrong(&self->_bagLoadingError, a4);
  v12 = [(NSMutableArray *)self->_bagAccessRequestBlocks copy];
  bagAccessRequestBlocks = self->_bagAccessRequestBlocks;
  self->_bagAccessRequestBlocks = 0;

  v14 = dispatch_get_global_queue(0, 0);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __60__ISURLBagLoadingController__updateBagWithDictionary_error___block_invoke;
  v19[3] = &unk_27A670938;
  v20 = v12;
  v21 = v8;
  v22 = v7;
  v23 = v10;
  v15 = v10;
  v16 = v7;
  v17 = v8;
  v18 = v12;
  dispatch_async(v14, v19);
}

void __60__ISURLBagLoadingController__updateBagWithDictionary_error___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v20;
    do
    {
      v6 = 0;
      do
      {
        if (*v20 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(a1 + 40);
        v8 = *(a1 + 48);
        (*(*(*(&v19 + 1) + 8 * v6++) + 16))();
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v4);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v9 = *(a1 + 56);
  v10 = [v9 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    do
    {
      v13 = 0;
      do
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [*(*(&v15 + 1) + 8 * v13++) bagDidChange:{*(a1 + 40), v15}];
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v11);
  }

  v14 = *MEMORY[0x277D85DE8];
}

@end