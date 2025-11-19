@interface SSVAppleAccountStore
+ (id)sharedAccountStore;
- (ACAccount)primaryAppleAccount;
- (SSVAppleAccountStore)init;
- (void)_accountStoreDidChangeNotification:(id)a3;
@end

@implementation SSVAppleAccountStore

- (SSVAppleAccountStore)init
{
  v8.receiver = self;
  v8.super_class = SSVAppleAccountStore;
  v2 = [(SSVAppleAccountStore *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.StoreServices.SSVAppleAccountStore", 0);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v3;

    v5 = v2->_dispatchQueue;
    v6 = dispatch_get_global_queue(0, 0);
    dispatch_set_target_queue(v5, v6);
  }

  return v2;
}

+ (id)sharedAccountStore
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__SSVAppleAccountStore_sharedAccountStore__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedAccountStore_sOnce != -1)
  {
    dispatch_once(&sharedAccountStore_sOnce, block);
  }

  v2 = sharedAccountStore_sStore;

  return v2;
}

void __42__SSVAppleAccountStore_sharedAccountStore__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedAccountStore_sStore;
  sharedAccountStore_sStore = v1;
}

- (ACAccount)primaryAppleAccount
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__14;
  v10 = __Block_byref_object_dispose__14;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __43__SSVAppleAccountStore_primaryAppleAccount__block_invoke;
  v5[3] = &unk_1E84ABFD8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __43__SSVAppleAccountStore_primaryAppleAccount__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  if (!v3)
  {
    v4 = *(v2 + 8);
    if (!v4)
    {
      v5 = SSVAccountsFramework();
      v6 = objc_alloc_init(SSVWeakLinkedClassForString(&cfstr_Acaccountstore.isa, v5));
      v7 = *(a1 + 32);
      v8 = *(v7 + 8);
      *(v7 + 8) = v6;

      if (*(*(a1 + 32) + 8))
      {
        v9 = [MEMORY[0x1E696AD88] defaultCenter];
        v10 = SSVAccountsFramework();
        [v9 addObserver:*(a1 + 32) selector:sel__accountStoreDidChangeNotification_ name:*SSVWeakLinkedSymbolForString("ACAccountStoreDidChangeNotification" object:{v10), *(*(a1 + 32) + 8)}];
      }

      SSVAppleAccountFramework();
      v4 = *(*(a1 + 32) + 8);
    }

    v11 = [v4 aa_primaryAppleAccount];
    v12 = *(a1 + 32);
    v13 = *(v12 + 24);
    *(v12 + 24) = v11;

    v3 = *(*(a1 + 32) + 24);
  }

  v14 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v14, v3);
}

- (void)_accountStoreDidChangeNotification:(id)a3
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__SSVAppleAccountStore__accountStoreDidChangeNotification___block_invoke;
  block[3] = &unk_1E84AC050;
  block[4] = self;
  dispatch_barrier_async(dispatchQueue, block);
}

void __59__SSVAppleAccountStore__accountStoreDidChangeNotification___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 24);
  *(v1 + 24) = 0;
}

@end