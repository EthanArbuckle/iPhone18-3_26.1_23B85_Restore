@interface SYContentItemManager
+ (id)sharedManager;
- (void)_navigateToURL:(id)a3 completion:(id)a4;
- (void)_navigateToUserActivity:(id)a3 completion:(id)a4;
- (void)fetchLinkableContentItemsWithCompletion:(id)a3;
- (void)navigateToContentItem:(id)a3 completion:(id)a4;
@end

@implementation SYContentItemManager

+ (id)sharedManager
{
  if (sharedManager_onceToken != -1)
  {
    +[SYContentItemManager sharedManager];
  }

  v3 = sharedManager_sharedManager;

  return v3;
}

uint64_t __37__SYContentItemManager_sharedManager__block_invoke()
{
  sharedManager_sharedManager = objc_alloc_init(SYContentItemManager);

  return MEMORY[0x2821F96F8]();
}

- (void)navigateToContentItem:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __57__SYContentItemManager_navigateToContentItem_completion___block_invoke;
  v14[3] = &unk_27856B738;
  v15 = v7;
  v8 = v7;
  v9 = MEMORY[0x22AA6A360](v14);
  v10 = [v6 userActivity];

  if (v10)
  {
    v11 = [v6 userActivity];
    [(SYContentItemManager *)self _navigateToUserActivity:v11 completion:v9];
LABEL_5:

    goto LABEL_6;
  }

  v12 = [v6 itemURL];

  if (v12)
  {
    v11 = [v6 itemURL];
    [(SYContentItemManager *)self _navigateToURL:v11 completion:v9];
    goto LABEL_5;
  }

  v13 = os_log_create("com.apple.synapse", "ContentItemManager");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    [SYContentItemManager navigateToContentItem:v13 completion:?];
  }

  v9[2](v9, 0, 0);
LABEL_6:
}

void __57__SYContentItemManager_navigateToContentItem_completion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __57__SYContentItemManager_navigateToContentItem_completion___block_invoke_2;
    block[3] = &unk_27856C6C8;
    v10 = v6;
    v11 = a2;
    v9 = v5;
    dispatch_async(v7, block);
  }
}

- (void)_navigateToUserActivity:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    [SYContentItemManager _navigateToUserActivity:a2 completion:self];
  }

  v9 = [MEMORY[0x277CC1E80] defaultWorkspace];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __59__SYContentItemManager__navigateToUserActivity_completion___block_invoke;
  v11[3] = &unk_27856B738;
  v12 = v8;
  v10 = v8;
  [v9 openUserActivity:v7 usingApplicationRecord:0 configuration:0 completionHandler:v11];
}

- (void)_navigateToURL:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    [SYContentItemManager _navigateToURL:a2 completion:self];
  }

  v9 = [MEMORY[0x277CC1E80] defaultWorkspace];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __50__SYContentItemManager__navigateToURL_completion___block_invoke;
  v11[3] = &unk_27856C1B8;
  v12 = v8;
  v10 = v8;
  [v9 openURL:v7 configuration:0 completionHandler:v11];
}

- (void)fetchLinkableContentItemsWithCompletion:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(SYLinkableContentItemFinder);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __64__SYContentItemManager_fetchLinkableContentItemsWithCompletion___block_invoke;
  v6[3] = &unk_27856BF68;
  v7 = v3;
  v5 = v3;
  [(SYLinkableContentItemFinder *)v4 fetchLinkableContentItemsExcludingActivities:0 completion:v6];
}

- (void)_navigateToUserActivity:(uint64_t)a1 completion:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SYContentItemManager.m" lineNumber:62 description:{@"Invalid parameter not satisfying: %@", @"userActivity"}];
}

- (void)_navigateToURL:(uint64_t)a1 completion:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SYContentItemManager.m" lineNumber:72 description:{@"Invalid parameter not satisfying: %@", @"targetURL"}];
}

@end