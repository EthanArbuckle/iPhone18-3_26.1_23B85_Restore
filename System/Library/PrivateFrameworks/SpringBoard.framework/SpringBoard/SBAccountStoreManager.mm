@interface SBAccountStoreManager
- (SBAccountStoreManager)init;
- (void)_queue_updatePrimaryAppleAccount;
- (void)_updatePrimaryAppleAccount;
@end

@implementation SBAccountStoreManager

- (SBAccountStoreManager)init
{
  v9.receiver = self;
  v9.super_class = SBAccountStoreManager;
  v2 = [(SBAccountStoreManager *)&v9 init];
  if (v2)
  {
    v3 = BSDispatchQueueCreateWithQualityOfService();
    queue = v2->_queue;
    v2->_queue = v3;

    v5 = objc_alloc_init(MEMORY[0x277CB8F48]);
    accountStore = v2->_accountStore;
    v2->_accountStore = v5;

    [(SBAccountStoreManager *)v2 _updatePrimaryAppleAccount];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__accountStoreDidChange_ name:*MEMORY[0x277CB8DB8] object:0];
  }

  return v2;
}

- (void)_updatePrimaryAppleAccount
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__SBAccountStoreManager__updatePrimaryAppleAccount__block_invoke;
  block[3] = &unk_2783A8C18;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_queue_updatePrimaryAppleAccount
{
  accountStore = [(SBAccountStoreManager *)self accountStore];
  aa_primaryAppleAccount = [accountStore aa_primaryAppleAccount];

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __57__SBAccountStoreManager__queue_updatePrimaryAppleAccount__block_invoke;
  v6[3] = &unk_2783A92D8;
  v6[4] = self;
  v7 = aa_primaryAppleAccount;
  v5 = aa_primaryAppleAccount;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __57__SBAccountStoreManager__queue_updatePrimaryAppleAccount__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setPrimaryAppleAccount:*(a1 + 40)];
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"SBAccountStoreManagerPrimaryAppleAccountDidChangeNotification" object:*(a1 + 32)];
}

@end