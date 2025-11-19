@interface SKUIFamilyCircleController
+ (id)sharedController;
- (SKUIFamilyCircleController)init;
- (id)profilePictureForFamilyMember:(id)a3;
- (void)_accountStoreDidChange:(id)a3;
- (void)_reloadDataWithPromptStyle:(int64_t)a3;
- (void)_setITunesFamily:(id)a3 error:(id)a4 iCloudFamily:(id)a5 error:(id)a6;
- (void)_setProfilePicture:(id)a3 forMember:(id)a4;
- (void)dealloc;
- (void)init;
- (void)reloadData;
@end

@implementation SKUIFamilyCircleController

+ (id)sharedController
{
  if (sharedController_sOnce_0 != -1)
  {
    +[SKUIFamilyCircleController sharedController];
  }

  v3 = sharedController_sInstance;

  return v3;
}

uint64_t __46__SKUIFamilyCircleController_sharedController__block_invoke()
{
  v0 = objc_alloc_init(SKUIFamilyCircleController);
  v1 = sharedController_sInstance;
  sharedController_sInstance = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (SKUIFamilyCircleController)init
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [SKUIFamilyCircleController init];
  }

  v10.receiver = self;
  v10.super_class = SKUIFamilyCircleController;
  v3 = [(SKUIFamilyCircleController *)&v10 init];
  if (v3)
  {
    v4 = [MEMORY[0x277CCAB98] defaultCenter];
    v5 = *MEMORY[0x277D69D70];
    v6 = [MEMORY[0x277D69A20] defaultStore];
    [v4 addObserver:v3 selector:sel__accountStoreDidChange_ name:v5 object:v6];

    v7 = objc_alloc_init(MEMORY[0x277CBEA78]);
    imageCache = v3->_imageCache;
    v3->_imageCache = v7;

    v3->_reloadPromptStyle = -1;
  }

  return v3;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  v4 = *MEMORY[0x277D69D70];
  v5 = [MEMORY[0x277D69A20] defaultStore];
  [v3 removeObserver:self name:v4 object:v5];

  v6.receiver = self;
  v6.super_class = SKUIFamilyCircleController;
  [(SKUIFamilyCircleController *)&v6 dealloc];
}

- (void)reloadData
{
  if ([(SKUIFamilyCircleController *)self reloadPromptStyle])
  {

    [(SKUIFamilyCircleController *)self _reloadDataWithPromptStyle:0];
  }
}

- (id)profilePictureForFamilyMember:(id)a3
{
  imageCache = self->_imageCache;
  v4 = [a3 iCloudIdentifier];
  v5 = [(NSCache *)imageCache objectForKey:v4];

  return v5;
}

- (void)_accountStoreDidChange:(id)a3
{
  v4 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__SKUIFamilyCircleController__accountStoreDidChange___block_invoke;
  block[3] = &unk_2781F80F0;
  block[4] = self;
  dispatch_async(v4, block);
}

void __53__SKUIFamilyCircleController__accountStoreDidChange___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D69A20] defaultStore];
  v3 = [v2 activeAccount];
  v5 = [v3 uniqueIdentifier];

  v4 = [*(a1 + 32) lastAccountID];
  if (v5 != v4 && ([v5 isEqual:v4] & 1) == 0)
  {
    [*(a1 + 32) _reloadDataWithPromptStyle:1000];
  }
}

- (void)_reloadDataWithPromptStyle:(int64_t)a3
{
  v5 = [MEMORY[0x277D69A20] defaultStore];
  v6 = [v5 activeAccount];
  v7 = [v6 uniqueIdentifier];
  [(SKUIFamilyCircleController *)self setLastAccountID:v7];

  [(SKUIFamilyCircleController *)self setReloadPromptStyle:a3];
  objc_initWeak(&location, self);
  v8 = [(SKUIClientContext *)self->_clientContext URLBag];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __57__SKUIFamilyCircleController__reloadDataWithPromptStyle___block_invoke;
  v9[3] = &unk_2781FF188;
  v10[1] = a3;
  v9[4] = self;
  objc_copyWeak(v10, &location);
  [v8 loadValueForKey:@"shared-purchases-enabled" completionBlock:v9];

  objc_destroyWeak(v10);
  objc_destroyWeak(&location);
}

void __57__SKUIFamilyCircleController__reloadDataWithPromptStyle___block_invoke(uint64_t a1, void *a2)
{
  if ([a2 BOOLValue])
  {
    v3 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __57__SKUIFamilyCircleController__reloadDataWithPromptStyle___block_invoke_2;
    block[3] = &unk_2781F9770;
    v4 = *(a1 + 32);
    v9[1] = *(a1 + 48);
    block[4] = v4;
    v5 = v9;
    objc_copyWeak(v9, (a1 + 40));
    dispatch_async(v3, block);
  }

  else
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __57__SKUIFamilyCircleController__reloadDataWithPromptStyle___block_invoke_4;
    v6[3] = &unk_2781F8230;
    v6[4] = *(a1 + 32);
    v5 = &v7;
    objc_copyWeak(&v7, (a1 + 40));
    dispatch_async(MEMORY[0x277D85CD0], v6);
  }

  objc_destroyWeak(v5);
}

void __57__SKUIFamilyCircleController__reloadDataWithPromptStyle___block_invoke_2(uint64_t a1)
{
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x3032000000;
  v25[3] = __Block_byref_object_copy__75;
  v25[4] = __Block_byref_object_dispose__75;
  v26 = 0;
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x3032000000;
  v23[3] = __Block_byref_object_copy__75;
  v23[4] = __Block_byref_object_dispose__75;
  v24 = 0;
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x3032000000;
  v21[3] = __Block_byref_object_copy__75;
  v21[4] = __Block_byref_object_dispose__75;
  v22 = 0;
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x3032000000;
  v19[3] = __Block_byref_object_copy__75;
  v19[4] = __Block_byref_object_dispose__75;
  v20 = 0;
  v2 = dispatch_semaphore_create(0);
  v3 = dispatch_semaphore_create(0);
  v4 = objc_alloc_init(MEMORY[0x277D69B00]);
  [v4 setAuthenticationPromptStyle:*(a1 + 48)];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __57__SKUIFamilyCircleController__reloadDataWithPromptStyle___block_invoke_52;
  v15[3] = &unk_2781FF110;
  v17 = v25;
  v18 = v23;
  v5 = v2;
  v16 = v5;
  [v4 startWithResponseBlock:v15];
  v6 = SKUIFamilyCircleFramework();
  v7 = objc_alloc_init(SKUIWeakLinkedClassForString(&cfstr_Fafetchfamilyc.isa, v6));
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __57__SKUIFamilyCircleController__reloadDataWithPromptStyle___block_invoke_2_57;
  v11[3] = &unk_2781FF138;
  v13 = v21;
  v14 = v19;
  v8 = v3;
  v12 = v8;
  [v7 startRequestWithCompletionHandler:v11];
  dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
  dispatch_semaphore_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __57__SKUIFamilyCircleController__reloadDataWithPromptStyle___block_invoke_3;
  v9[3] = &unk_2781FF160;
  v9[4] = *(a1 + 32);
  objc_copyWeak(&v10, (a1 + 40));
  v9[5] = v25;
  v9[6] = v23;
  v9[7] = v21;
  v9[8] = v19;
  dispatch_async(MEMORY[0x277D85CD0], v9);
  objc_destroyWeak(&v10);

  _Block_object_dispose(v19, 8);
  _Block_object_dispose(v21, 8);

  _Block_object_dispose(v23, 8);
  _Block_object_dispose(v25, 8);
}

void __57__SKUIFamilyCircleController__reloadDataWithPromptStyle___block_invoke_52(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 familyCircle];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v5;
  v11 = v5;

  dispatch_semaphore_signal(*(a1 + 32));
}

void __57__SKUIFamilyCircleController__reloadDataWithPromptStyle___block_invoke_2_57(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

void __57__SKUIFamilyCircleController__reloadDataWithPromptStyle___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) setReloadPromptStyle:-1];
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  [WeakRetained _setITunesFamily:*(*(*(a1 + 40) + 8) + 40) error:*(*(*(a1 + 48) + 8) + 40) iCloudFamily:*(*(*(a1 + 56) + 8) + 40) error:*(*(*(a1 + 64) + 8) + 40)];
}

void __57__SKUIFamilyCircleController__reloadDataWithPromptStyle___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) setReloadPromptStyle:-1];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _setITunesFamily:0 error:0 iCloudFamily:0 error:0];
}

- (void)_setITunesFamily:(id)a3 error:(id)a4 iCloudFamily:(id)a5 error:(id)a6
{
  v30 = *MEMORY[0x277D85DE8];
  v21 = a3;
  v20 = a5;
  self->_hasLoaded = 1;
  objc_storeStrong(&self->_iTunesFamily, a3);
  objc_storeStrong(&self->_iCloudFamily, a5);
  v9 = [MEMORY[0x277CCAB98] defaultCenter];
  [v9 postNotificationName:@"SKUIFamilyCircleDidChangeNotification" object:self];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v10 = [(SSFamilyCircle *)self->_iTunesFamily familyMembers];
  v11 = [v10 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v26;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v26 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v25 + 1) + 8 * i);
        imageCache = self->_imageCache;
        v17 = [v15 iCloudIdentifier];
        v18 = [(NSCache *)imageCache objectForKey:v17];

        if (!v18)
        {
          objc_initWeak(&location, self);
          v19 = dispatch_get_global_queue(0, 0);
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __72__SKUIFamilyCircleController__setITunesFamily_error_iCloudFamily_error___block_invoke;
          block[3] = &unk_2781F8230;
          block[4] = v15;
          objc_copyWeak(&v23, &location);
          dispatch_async(v19, block);

          objc_destroyWeak(&v23);
          objc_destroyWeak(&location);
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v12);
  }
}

void __72__SKUIFamilyCircleController__setITunesFamily_error_iCloudFamily_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) firstName];
  v3 = [*(a1 + 32) lastName];
  v4 = [*(a1 + 32) iCloudAccountName];
  v5 = [*(a1 + 32) iCloudIdentifier];
  v6 = SKUIGetFamilyMemberImage(v2, v3, v4, v5);

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__SKUIFamilyCircleController__setITunesFamily_error_iCloudFamily_error___block_invoke_2;
  block[3] = &unk_2781FA0C8;
  objc_copyWeak(&v12, (a1 + 40));
  v7 = *(a1 + 32);
  v10 = v6;
  v11 = v7;
  v8 = v6;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v12);
}

void __72__SKUIFamilyCircleController__setITunesFamily_error_iCloudFamily_error___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _setProfilePicture:*(a1 + 32) forMember:*(a1 + 40)];
}

- (void)_setProfilePicture:(id)a3 forMember:(id)a4
{
  imageCache = self->_imageCache;
  v7 = a3;
  v8 = [a4 iCloudIdentifier];
  [(NSCache *)imageCache setObject:v7 forKey:v8];

  v9 = [MEMORY[0x277CCAB98] defaultCenter];
  [v9 postNotificationName:@"SKUIFamilyCircleProfilePictureDidChangeNotification" object:self];
}

- (void)init
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIFamilyCircleController init]";
}

@end