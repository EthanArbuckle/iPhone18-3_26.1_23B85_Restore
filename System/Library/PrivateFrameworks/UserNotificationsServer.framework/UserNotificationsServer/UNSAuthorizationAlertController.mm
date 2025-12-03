@interface UNSAuthorizationAlertController
- (UNSAuthorizationAlertController)initWithQueue:(id)queue;
- (void)_presentAuthorizationAlertForBundleIdentifier:(id)identifier displayName:(id)name usageDescription:(id)description withResult:(id)result;
- (void)_queue_addResultBlock:(id)block forBundleIdentifier:(id)identifier;
- (void)_queue_sendResponse:(int64_t)response forBundleIdentifier:(id)identifier;
- (void)requestAuthorizationForBundleIdentifier:(id)identifier displayName:(id)name usageDescription:(id)description withResult:(id)result;
@end

@implementation UNSAuthorizationAlertController

- (UNSAuthorizationAlertController)initWithQueue:(id)queue
{
  queueCopy = queue;
  v13.receiver = self;
  v13.super_class = UNSAuthorizationAlertController;
  v6 = [(UNSAuthorizationAlertController *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, queue);
    v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
    bundleIdentifersForActiveAlerts = v7->_bundleIdentifersForActiveAlerts;
    v7->_bundleIdentifersForActiveAlerts = v8;

    v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
    bundleIdentifiersToResultBlocks = v7->_bundleIdentifiersToResultBlocks;
    v7->_bundleIdentifiersToResultBlocks = v10;
  }

  return v7;
}

- (void)requestAuthorizationForBundleIdentifier:(id)identifier displayName:(id)name usageDescription:(id)description withResult:(id)result
{
  identifierCopy = identifier;
  nameCopy = name;
  descriptionCopy = description;
  resultCopy = result;
  dispatch_assert_queue_V2(self->_queue);
  v14 = [MEMORY[0x277CEBE80] applicationWithBundleIdentifier:identifierCopy];
  isHidden = [v14 isHidden];

  if (isHidden)
  {
    v16 = *MEMORY[0x277CE2070];
    if (os_log_type_enabled(*MEMORY[0x277CE2070], OS_LOG_TYPE_DEBUG))
    {
      [UNSAuthorizationAlertController requestAuthorizationForBundleIdentifier:identifierCopy displayName:v16 usageDescription:? withResult:?];
    }

    resultCopy[2](resultCopy, -1);
  }

  else
  {
    [(UNSAuthorizationAlertController *)self _queue_addResultBlock:resultCopy forBundleIdentifier:identifierCopy];
    if (![(UNSAuthorizationAlertController *)self _queue_isAlertActiveForBundleIdentifier:identifierCopy])
    {
      [(UNSAuthorizationAlertController *)self _queue_addAlertActiveForBundleIdentifier:identifierCopy];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __115__UNSAuthorizationAlertController_requestAuthorizationForBundleIdentifier_displayName_usageDescription_withResult___block_invoke;
      block[3] = &unk_279E10598;
      block[4] = self;
      v18 = identifierCopy;
      v19 = nameCopy;
      v20 = descriptionCopy;
      v21 = resultCopy;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }
  }
}

- (void)_presentAuthorizationAlertForBundleIdentifier:(id)identifier displayName:(id)name usageDescription:(id)description withResult:(id)result
{
  identifierCopy = identifier;
  nameCopy = name;
  descriptionCopy = description;
  resultCopy = result;
  objc_initWeak(&location, self);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __121__UNSAuthorizationAlertController__presentAuthorizationAlertForBundleIdentifier_displayName_usageDescription_withResult___block_invoke;
  v15[3] = &unk_279E105E8;
  v15[4] = self;
  objc_copyWeak(&v17, &location);
  v14 = identifierCopy;
  v16 = v14;
  [(UNSAuthorizationAlertController *)self presentAuthorizationAlertForBundleIdentifier:v14 displayName:nameCopy usageDescription:descriptionCopy withResult:v15];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

void __121__UNSAuthorizationAlertController__presentAuthorizationAlertForBundleIdentifier_displayName_usageDescription_withResult___block_invoke(uint64_t a1, void *a2)
{
  v4 = *(*(a1 + 32) + 8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __121__UNSAuthorizationAlertController__presentAuthorizationAlertForBundleIdentifier_displayName_usageDescription_withResult___block_invoke_2;
  block[3] = &unk_279E105C0;
  objc_copyWeak(v7, (a1 + 48));
  v6 = *(a1 + 40);
  v7[1] = a2;
  dispatch_async(v4, block);

  objc_destroyWeak(v7);
}

void __121__UNSAuthorizationAlertController__presentAuthorizationAlertForBundleIdentifier_displayName_usageDescription_withResult___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _queue_removeAlertActiveForBundleIdentifier:*(a1 + 32)];

  v3 = objc_loadWeakRetained((a1 + 40));
  [v3 _queue_sendResponse:*(a1 + 48) forBundleIdentifier:*(a1 + 32)];
}

- (void)_queue_addResultBlock:(id)block forBundleIdentifier:(id)identifier
{
  blockCopy = block;
  identifierCopy = identifier;
  array = [(NSMutableDictionary *)self->_bundleIdentifiersToResultBlocks objectForKey:identifierCopy];
  if (!array)
  {
    array = [MEMORY[0x277CBEB18] array];
    [(NSMutableDictionary *)self->_bundleIdentifiersToResultBlocks setObject:array forKey:identifierCopy];
  }

  v8 = [blockCopy copy];
  v9 = _Block_copy(v8);
  [array addObject:v9];
}

- (void)_queue_sendResponse:(int64_t)response forBundleIdentifier:(id)identifier
{
  v17 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v6 = [(NSMutableDictionary *)self->_bundleIdentifiersToResultBlocks objectForKey:identifierCopy];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        (*(*(*(&v12 + 1) + 8 * v10++) + 16))();
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  [(NSMutableDictionary *)self->_bundleIdentifiersToResultBlocks removeObjectForKey:identifierCopy];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)requestAuthorizationForBundleIdentifier:(uint64_t)a1 displayName:(NSObject *)a2 usageDescription:withResult:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_270AA8000, a2, OS_LOG_TYPE_DEBUG, "%@ is hidden by appprotection, blocking alert", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end