@interface SWContentRuleManager
- (SWContentRuleManager)initWithUserContentController:(id)a3;
- (id)configureContentRules;
- (void)addContentRuleList:(id)a3 identifier:(id)a4;
- (void)removeContentListForIdentifier:(id)a3;
@end

@implementation SWContentRuleManager

- (SWContentRuleManager)initWithUserContentController:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = SWContentRuleManager;
  v6 = [(SWContentRuleManager *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_userContentController, a3);
    v8 = dispatch_group_create();
    dispatchGroup = v7->_dispatchGroup;
    v7->_dispatchGroup = v8;
  }

  return v7;
}

- (void)addContentRuleList:(id)a3 identifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SWContentRuleManager *)self dispatchGroup];
  dispatch_group_enter(v8);

  v9 = [MEMORY[0x1E6985310] defaultStore];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __54__SWContentRuleManager_addContentRuleList_identifier___block_invoke;
  v10[3] = &unk_1E84DB460;
  v10[4] = self;
  [v9 compileContentRuleListForIdentifier:v6 encodedContentRuleList:v7 completionHandler:v10];
}

void __54__SWContentRuleManager_addContentRuleList_identifier___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = a2;
    v5 = [v3 userContentController];
    [v5 addContentRuleList:v4];
  }

  v6 = [*(a1 + 32) dispatchGroup];
  dispatch_group_leave(v6);
}

- (void)removeContentListForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(SWContentRuleManager *)self dispatchGroup];
  dispatch_group_enter(v5);

  v6 = [MEMORY[0x1E6985310] defaultStore];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __55__SWContentRuleManager_removeContentListForIdentifier___block_invoke;
  v7[3] = &unk_1E84DB460;
  v7[4] = self;
  [v6 lookUpContentRuleListForIdentifier:v4 completionHandler:v7];
}

void __55__SWContentRuleManager_removeContentListForIdentifier___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = a2;
    v5 = [v3 userContentController];
    [v5 removeContentRuleList:v4];
  }

  v6 = [*(a1 + 32) dispatchGroup];
  dispatch_group_leave(v6);
}

- (id)configureContentRules
{
  v3 = objc_alloc(MEMORY[0x1E69B68F8]);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __45__SWContentRuleManager_configureContentRules__block_invoke;
  v6[3] = &unk_1E84DB488;
  v6[4] = self;
  v4 = [v3 initWithResolver:v6];

  return v4;
}

void __45__SWContentRuleManager_configureContentRules__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) dispatchGroup];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__SWContentRuleManager_configureContentRules__block_invoke_2;
  block[3] = &unk_1E84DB408;
  v7 = v3;
  v5 = v3;
  dispatch_group_notify(v4, MEMORY[0x1E69E96A0], block);
}

@end