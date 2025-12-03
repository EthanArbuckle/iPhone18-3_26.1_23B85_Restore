@interface SYContentItemManager
+ (id)sharedManager;
- (void)_navigateToURL:(id)l completion:(id)completion;
- (void)_navigateToUserActivity:(id)activity completion:(id)completion;
- (void)fetchLinkableContentItemsWithCompletion:(id)completion;
- (void)navigateToContentItem:(id)item completion:(id)completion;
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

- (void)navigateToContentItem:(id)item completion:(id)completion
{
  itemCopy = item;
  completionCopy = completion;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __57__SYContentItemManager_navigateToContentItem_completion___block_invoke;
  v14[3] = &unk_27856B738;
  v15 = completionCopy;
  v8 = completionCopy;
  v9 = MEMORY[0x22AA6A360](v14);
  userActivity = [itemCopy userActivity];

  if (userActivity)
  {
    userActivity2 = [itemCopy userActivity];
    [(SYContentItemManager *)self _navigateToUserActivity:userActivity2 completion:v9];
LABEL_5:

    goto LABEL_6;
  }

  itemURL = [itemCopy itemURL];

  if (itemURL)
  {
    userActivity2 = [itemCopy itemURL];
    [(SYContentItemManager *)self _navigateToURL:userActivity2 completion:v9];
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

- (void)_navigateToUserActivity:(id)activity completion:(id)completion
{
  activityCopy = activity;
  completionCopy = completion;
  if (!activityCopy)
  {
    [SYContentItemManager _navigateToUserActivity:a2 completion:self];
  }

  defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __59__SYContentItemManager__navigateToUserActivity_completion___block_invoke;
  v11[3] = &unk_27856B738;
  v12 = completionCopy;
  v10 = completionCopy;
  [defaultWorkspace openUserActivity:activityCopy usingApplicationRecord:0 configuration:0 completionHandler:v11];
}

- (void)_navigateToURL:(id)l completion:(id)completion
{
  lCopy = l;
  completionCopy = completion;
  if (!lCopy)
  {
    [SYContentItemManager _navigateToURL:a2 completion:self];
  }

  defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __50__SYContentItemManager__navigateToURL_completion___block_invoke;
  v11[3] = &unk_27856C1B8;
  v12 = completionCopy;
  v10 = completionCopy;
  [defaultWorkspace openURL:lCopy configuration:0 completionHandler:v11];
}

- (void)fetchLinkableContentItemsWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = objc_alloc_init(SYLinkableContentItemFinder);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __64__SYContentItemManager_fetchLinkableContentItemsWithCompletion___block_invoke;
  v6[3] = &unk_27856BF68;
  v7 = completionCopy;
  v5 = completionCopy;
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