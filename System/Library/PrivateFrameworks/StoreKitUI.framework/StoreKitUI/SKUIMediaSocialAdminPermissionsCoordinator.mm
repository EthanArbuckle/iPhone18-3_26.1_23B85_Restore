@interface SKUIMediaSocialAdminPermissionsCoordinator
+ (id)sharedCoordinator;
- (NSArray)lastKnownAuthors;
- (NSNumber)lastKnownAdminStatus;
- (SKUIMediaSocialAdminPermissionsCoordinator)init;
- (void)_authenticateOnCompletion:(id)a3;
- (void)_fireResultsBlocksWithAuthors:(id)a3 error:(id)a4;
- (void)_getAuthors;
- (void)_handleOperationResponseWithAuthors:(id)a3 error:(id)a4;
- (void)_queueResultBlock:(id)a3;
- (void)getAdminStatusWithOptions:(id)a3 resultBlock:(id)a4;
- (void)getAuthorsAndWaitWithOptions:(id)a3 authorsBlock:(id)a4;
- (void)getAuthorsWithOptions:(id)a3 authorsBlock:(id)a4;
- (void)init;
- (void)reset;
@end

@implementation SKUIMediaSocialAdminPermissionsCoordinator

- (SKUIMediaSocialAdminPermissionsCoordinator)init
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIMediaSocialAdminPermissionsCoordinator init];
  }

  v11.receiver = self;
  v11.super_class = SKUIMediaSocialAdminPermissionsCoordinator;
  v3 = [(SKUIMediaSocialAdminPermissionsCoordinator *)&v11 init];
  if (v3)
  {
    v4 = dispatch_queue_create("com.apple.StoreKitUI.SKUIMediaSocialAdminPermissionsCoordinator.callback", 0);
    callbackQueue = v3->_callbackQueue;
    v3->_callbackQueue = v4;

    v6 = dispatch_queue_create("com.apple.StoreKitUI.SKUIMediaSocialAdminPermissionsCoordinator", 0);
    dispatchQueue = v3->_dispatchQueue;
    v3->_dispatchQueue = v6;

    lastKnownAuthors = v3->_lastKnownAuthors;
    v3->_lastKnownAuthors = 0;

    lastRequestDate = v3->_lastRequestDate;
    v3->_lastRequestDate = 0;
  }

  return v3;
}

+ (id)sharedCoordinator
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__SKUIMediaSocialAdminPermissionsCoordinator_sharedCoordinator__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedCoordinator_sOnce != -1)
  {
    dispatch_once(&sharedCoordinator_sOnce, block);
  }

  v2 = sharedCoordinator_sCoordinator;

  return v2;
}

uint64_t __63__SKUIMediaSocialAdminPermissionsCoordinator_sharedCoordinator__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedCoordinator_sCoordinator;
  sharedCoordinator_sCoordinator = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

- (void)getAdminStatusWithOptions:(id)a3 resultBlock:(id)a4
{
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [a3 objectForKeyedSubscript:@"SKUIMediaSocialAdminPermissionsOptionIgnoreCache"];
  v7 = v6;
  v8 = MEMORY[0x277CBEC28];
  if (v6)
  {
    v8 = v6;
  }

  v9 = v8;

  v12 = *MEMORY[0x277D6A600];
  v13[0] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v11 = [MEMORY[0x277D69CE0] sharedCoordinator];

  [v11 getAdminStatusWithOptions:v10 resultBlock:v5];
}

- (void)getAuthorsWithOptions:(id)a3 authorsBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __81__SKUIMediaSocialAdminPermissionsCoordinator_getAuthorsWithOptions_authorsBlock___block_invoke;
  block[3] = &unk_2781FC7C8;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(dispatchQueue, block);
}

uint64_t __81__SKUIMediaSocialAdminPermissionsCoordinator_getAuthorsWithOptions_authorsBlock___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKey:@"SKUIMediaSocialAdminPermissionsOptionIgnoreCache"];
  v3 = [v2 BOOLValue];

  v4 = [MEMORY[0x277CBEAA8] date];
  [v4 timeIntervalSinceDate:*(*(a1 + 40) + 32)];
  v6 = v5;

  v7 = *(a1 + 40);
  if (v6 > 30.0)
  {
    v8 = v3;
  }

  else
  {
    v8 = 0;
  }

  if (!v7[3] || (v8 & 1) != 0)
  {
    goto LABEL_10;
  }

  v9 = [v7[3] copy];
  if (!v9)
  {
    v7 = *(a1 + 40);
LABEL_10:
    [v7 _queueResultBlock:*(a1 + 48)];
    v11 = [*(a1 + 40) _getAuthors];
    v10 = 0;
    goto LABEL_11;
  }

  v10 = v9;
  v11 = *(a1 + 48);
  if (v11)
  {
    v13 = v10;
    v11 = (*(v11 + 16))();
    v10 = v13;
  }

LABEL_11:

  return MEMORY[0x2821F96F8](v11, v10);
}

- (void)getAuthorsAndWaitWithOptions:(id)a3 authorsBlock:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = dispatch_semaphore_create(0);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __88__SKUIMediaSocialAdminPermissionsCoordinator_getAuthorsAndWaitWithOptions_authorsBlock___block_invoke;
  v11[3] = &unk_278200090;
  v12 = v8;
  v13 = v6;
  v9 = v8;
  v10 = v6;
  [(SKUIMediaSocialAdminPermissionsCoordinator *)self getAuthorsWithOptions:v7 authorsBlock:v11];

  dispatch_semaphore_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
}

intptr_t __88__SKUIMediaSocialAdminPermissionsCoordinator_getAuthorsAndWaitWithOptions_authorsBlock___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return dispatch_semaphore_signal(v2);
}

- (NSArray)lastKnownAuthors
{
  v2 = [(NSArray *)self->_lastKnownAuthors copy];

  return v2;
}

- (NSNumber)lastKnownAdminStatus
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [MEMORY[0x277D69CE0] sharedCoordinator];
  v4 = [v2 numberWithBool:{objc_msgSend(v3, "isCurrentUserAdmin")}];

  return v4;
}

- (void)reset
{
  lastKnownAuthors = self->_lastKnownAuthors;
  self->_lastKnownAuthors = 0;

  lastRequestDate = self->_lastRequestDate;
  self->_lastRequestDate = 0;

  v5 = [MEMORY[0x277D69CE0] sharedCoordinator];
  [v5 reset];
}

- (void)_authenticateOnCompletion:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277D69A20] defaultStore];
  v5 = [v4 activeAccount];

  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277D69BC8]) initWithAccount:v5];
    [v6 setPromptStyle:1];
    [v6 setShouldCreateNewSession:1];
  }

  else
  {
    v6 = [MEMORY[0x277D69BC8] contextForSignIn];
  }

  v7 = [objc_alloc(MEMORY[0x277D69A50]) initWithAuthenticationContext:v6];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __72__SKUIMediaSocialAdminPermissionsCoordinator__authenticateOnCompletion___block_invoke;
  v9[3] = &unk_2781FE8F8;
  v10 = v3;
  v8 = v3;
  [v7 startWithAuthenticateResponseBlock:v9];
}

void __72__SKUIMediaSocialAdminPermissionsCoordinator__authenticateOnCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __72__SKUIMediaSocialAdminPermissionsCoordinator__authenticateOnCompletion___block_invoke_2;
  v5[3] = &unk_2781F98F0;
  v6 = v3;
  v7 = *(a1 + 32);
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v5);
}

uint64_t __72__SKUIMediaSocialAdminPermissionsCoordinator__authenticateOnCompletion___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) authenticateResponseType];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)_fireResultsBlocksWithAuthors:(id)a3 error:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (v7)
  {
    objc_storeStrong(&self->_lastKnownAuthors, a3);
    v9 = [MEMORY[0x277CBEAA8] date];
    lastRequestDate = self->_lastRequestDate;
    self->_lastRequestDate = v9;
  }

  v11 = [(NSMutableArray *)self->_resultBlocks copy];
  [(NSMutableArray *)self->_resultBlocks removeAllObjects];
  if ([v11 count])
  {
    callbackQueue = self->_callbackQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __82__SKUIMediaSocialAdminPermissionsCoordinator__fireResultsBlocksWithAuthors_error___block_invoke;
    block[3] = &unk_2781F8680;
    v14 = v11;
    v15 = v7;
    v16 = v8;
    dispatch_async(callbackQueue, block);
  }
}

void __82__SKUIMediaSocialAdminPermissionsCoordinator__fireResultsBlocksWithAuthors_error___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v1);
        }

        (*(*(*(&v6 + 1) + 8 * v5) + 16))(*(*(&v6 + 1) + 8 * v5));
        ++v5;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

- (void)_getAuthors
{
  v3 = [MEMORY[0x277D69C90] contextWithBagType:0];
  v4 = SSVDefaultUserAgent();
  [v3 setValue:v4 forHTTPHeaderField:*MEMORY[0x277D6A130]];

  v5 = [(SSURLBag *)[SKUIURLBag alloc] initWithURLBagContext:v3];
  v6 = objc_alloc_init(SKUIMediaSocialAdminPermissionsOperation);
  [(SSVComplexOperation *)v6 configureWithURLBag:v5];
  objc_initWeak(&location, self);
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __57__SKUIMediaSocialAdminPermissionsCoordinator__getAuthors__block_invoke;
  v10 = &unk_2781F9D28;
  objc_copyWeak(&v11, &location);
  [(SKUIMediaSocialAdminPermissionsOperation *)v6 setOutputBlock:&v7];
  [(SKUIMediaSocialAdminPermissionsOperation *)v6 main:v7];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __57__SKUIMediaSocialAdminPermissionsCoordinator__getAuthors__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleOperationResponseWithAuthors:v6 error:v5];
}

- (void)_handleOperationResponseWithAuthors:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __88__SKUIMediaSocialAdminPermissionsCoordinator__handleOperationResponseWithAuthors_error___block_invoke;
  block[3] = &unk_2781F8680;
  v12 = v7;
  v13 = self;
  v14 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(dispatchQueue, block);
}

void __88__SKUIMediaSocialAdminPermissionsCoordinator__handleOperationResponseWithAuthors_error___block_invoke(id *a1)
{
  v2 = [a1[4] domain];
  if ([v2 isEqualToString:@"SKUIErrorDomain"])
  {
    v3 = [a1[4] code];

    if (v3 == 3)
    {
      objc_initWeak(&location, a1[5]);
      v4 = a1[5];
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __88__SKUIMediaSocialAdminPermissionsCoordinator__handleOperationResponseWithAuthors_error___block_invoke_2;
      v8[3] = &unk_2781FE8D0;
      objc_copyWeak(&v11, &location);
      v9 = a1[6];
      v10 = a1[4];
      [v4 _authenticateOnCompletion:v8];

      objc_destroyWeak(&v11);
      objc_destroyWeak(&location);
      return;
    }
  }

  else
  {
  }

  v5 = a1[5];
  v6 = a1[6];
  v7 = a1[4];

  [v5 _fireResultsBlocksWithAuthors:v6 error:v7];
}

void __88__SKUIMediaSocialAdminPermissionsCoordinator__handleOperationResponseWithAuthors_error___block_invoke_2(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (a2)
  {
    [WeakRetained _getAuthors];
  }

  else
  {
    [WeakRetained _fireResultsBlocksWithAuthors:*(a1 + 32) error:*(a1 + 40)];
  }
}

- (void)_queueResultBlock:(id)a3
{
  if (a3)
  {
    v4 = [a3 copy];
    resultBlocks = self->_resultBlocks;
    aBlock = v4;
    if (!resultBlocks)
    {
      v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v7 = self->_resultBlocks;
      self->_resultBlocks = v6;

      v4 = aBlock;
      resultBlocks = self->_resultBlocks;
    }

    v8 = _Block_copy(v4);
    [(NSMutableArray *)resultBlocks addObject:v8];
  }
}

- (void)init
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIMediaSocialAdminPermissionsCoordinator init]";
}

@end