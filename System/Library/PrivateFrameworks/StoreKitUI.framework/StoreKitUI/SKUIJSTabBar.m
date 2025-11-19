@interface SKUIJSTabBar
- (SKUIJSTabBar)initWithAppContext:(id)a3 controller:(id)a4;
- (SKUIJSTabBarItem)selectedTab;
- (id)_selectedTabBarItemForIndex:(int64_t)a3;
- (void)_reloadTabBarItemsWithPreludeMainThreadWork:(id)a3;
- (void)sendOnNeedsContentForTabBarItem:(id)a3;
- (void)sendOnUpdate;
- (void)sendOnUpdateWithCompletion:(id)a3;
- (void)setSelectedTab:(id)a3;
@end

@implementation SKUIJSTabBar

- (SKUIJSTabBar)initWithAppContext:(id)a3 controller:(id)a4
{
  v6 = a3;
  objc_initWeak(&location, a4);
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [SKUIJSTabBar initWithAppContext:controller:];
  }

  v10.receiver = self;
  v10.super_class = SKUIJSTabBar;
  v7 = [(IKJSObject *)&v10 initWithAppContext:v6];
  if (v7)
  {
    v8 = objc_loadWeakRetained(&location);
    objc_storeWeak(&v7->_applicationController, v8);

    [(SKUIJSTabBar *)v7 _reloadTabBarItemsWithPreludeMainThreadWork:0];
  }

  objc_destroyWeak(&location);

  return v7;
}

- (void)sendOnNeedsContentForTabBarItem:(id)a3
{
  v4 = a3;
  v5 = [(IKJSObject *)self appContext];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__SKUIJSTabBar_sendOnNeedsContentForTabBarItem___block_invoke;
  v7[3] = &unk_2781F9618;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 evaluate:v7 completionBlock:0];
}

void __48__SKUIJSTabBar_sendOnNeedsContentForTabBarItem___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v2 = *(*(a1 + 32) + 32);
  v3 = [v2 countByEnumeratingWithState:&v16 objects:v25 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v17;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v17 != v5)
      {
        objc_enumerationMutation(v2);
      }

      v7 = *(*(&v16 + 1) + 8 * v6);
      v8 = [v7 tabBarItem];
      v9 = *(a1 + 40);

      if (v8 == v9)
      {
        break;
      }

      if (v4 == ++v6)
      {
        v4 = [v2 countByEnumeratingWithState:&v16 objects:v25 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        goto LABEL_12;
      }
    }

    v10 = v7;

    if (!v10)
    {
      return;
    }

    v22 = v10;
    v23[0] = @"type";
    v23[1] = @"detail";
    v24[0] = @"needscontent";
    v21 = @"tab";
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    v24[1] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:2];

    v13 = *(a1 + 32);
    v20 = v12;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v20 count:1];
    v15 = [v13 invokeMethod:@"onNeedsContent" withArguments:v14];

    v2 = v10;
  }

LABEL_12:
}

- (void)sendOnUpdate
{
  v3 = [(IKJSObject *)self appContext];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __28__SKUIJSTabBar_sendOnUpdate__block_invoke;
  v4[3] = &unk_2781FAE18;
  v4[4] = self;
  [v3 evaluate:v4 completionBlock:0];
}

- (void)sendOnUpdateWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(IKJSObject *)self appContext];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __43__SKUIJSTabBar_sendOnUpdateWithCompletion___block_invoke;
  v9[3] = &unk_2781FAE18;
  v9[4] = self;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__SKUIJSTabBar_sendOnUpdateWithCompletion___block_invoke_2;
  v7[3] = &unk_2781F85B8;
  v8 = v4;
  v6 = v4;
  [v5 evaluate:v9 completionBlock:v7];
}

void __43__SKUIJSTabBar_sendOnUpdateWithCompletion___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 32))
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __43__SKUIJSTabBar_sendOnUpdateWithCompletion___block_invoke_3;
    block[3] = &unk_2781F9990;
    v2 = *(a1 + 32);
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

- (SKUIJSTabBarItem)selectedTab
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0x7FFFFFFFFFFFFFFFLL;
  v3 = [(IKJSObject *)self appContext];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __27__SKUIJSTabBar_selectedTab__block_invoke;
  v6[3] = &unk_2781FFFA0;
  v6[4] = self;
  v6[5] = &v7;
  [v3 evaluateDelegateBlockSync:v6];

  v4 = [(SKUIJSTabBar *)self _selectedTabBarItemForIndex:v8[3]];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __27__SKUIJSTabBar_selectedTab__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
  *(*(*(a1 + 40) + 8) + 24) = [WeakRetained _selectedTabBarIndex];
}

- (void)setSelectedTab:(id)a3
{
  v4 = a3;
  v5 = [(IKJSObject *)self appContext];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __31__SKUIJSTabBar_setSelectedTab___block_invoke;
  v7[3] = &unk_2781FAD00;
  v8 = v4;
  v9 = self;
  v6 = v4;
  [v5 evaluateDelegateBlockSync:v7];
}

void __31__SKUIJSTabBar_setSelectedTab___block_invoke(uint64_t a1)
{
  v9 = [*(a1 + 32) tabBarItem];
  v2 = [v9 tabIdentifier];
  v3 = [v2 isEqualToString:@"transient"];

  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 24));
  v5 = WeakRetained;
  if (v3)
  {
    v6 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = [WeakRetained tabBarItems];
    v8 = [v7 indexOfObject:v9];

    if (v8 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_6;
    }

    WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 24));
    v5 = WeakRetained;
    v6 = v8;
  }

  [WeakRetained _setSelectedTabBarIndex:v6];

LABEL_6:
}

- (void)_reloadTabBarItemsWithPreludeMainThreadWork:(id)a3
{
  v4 = a3;
  v5 = [(IKJSObject *)self appContext];
  v39[0] = 0;
  v39[1] = v39;
  v39[2] = 0x3032000000;
  v39[3] = __Block_byref_object_copy__89;
  v39[4] = __Block_byref_object_dispose__89;
  v40 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__89;
  v37 = __Block_byref_object_dispose__89;
  v38 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__89;
  v31 = __Block_byref_object_dispose__89;
  v32 = 0;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __60__SKUIJSTabBar__reloadTabBarItemsWithPreludeMainThreadWork___block_invoke;
  v22[3] = &unk_2781FFFC8;
  v6 = v4;
  v22[4] = self;
  v23 = v6;
  v24 = v39;
  v25 = &v33;
  v26 = &v27;
  [v5 evaluateDelegateBlockSync:v22];
  v7 = objc_alloc(MEMORY[0x277CBEB18]);
  v8 = [v7 initWithCapacity:{objc_msgSend(v34[5], "count")}];
  v9 = v34[5];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __60__SKUIJSTabBar__reloadTabBarItemsWithPreludeMainThreadWork___block_invoke_2;
  v18[3] = &unk_2781FFFF0;
  v21 = v39;
  v18[4] = self;
  v10 = v5;
  v19 = v10;
  v11 = v8;
  v20 = v11;
  [v9 enumerateObjectsUsingBlock:v18];
  v12 = [v11 copy];
  tabs = self->_tabs;
  self->_tabs = v12;

  v14 = [[SKUITabBarItem alloc] initWithTabIdentifier:@"transient"];
  v15 = [SKUIJSTabBarItem alloc];
  v16 = [(SKUIJSTabBarItem *)v15 initWithAppContext:v10 navigationController:v28[5] tabBarItem:v14 owner:self];
  transientTab = self->_transientTab;
  self->_transientTab = v16;

  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v33, 8);

  _Block_object_dispose(v39, 8);
}

void __60__SKUIJSTabBar__reloadTabBarItemsWithPreludeMainThreadWork___block_invoke(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    (*(v2 + 16))();
  }

  WeakRetained = objc_loadWeakRetained((a1[4] + 24));
  v4 = [WeakRetained _navigationControllers];
  v5 = [v4 copy];
  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = objc_loadWeakRetained((a1[4] + 24));
  v9 = [v8 tabBarItems];
  v10 = [v9 copy];
  v11 = *(a1[7] + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  v16 = objc_loadWeakRetained((a1[4] + 24));
  v13 = [v16 _transientNavigationController];
  v14 = *(a1[8] + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v13;
}

void __60__SKUIJSTabBar__reloadTabBarItemsWithPreludeMainThreadWork___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v13 = a2;
  v5 = [*(*(*(a1 + 56) + 8) + 40) objectAtIndexedSubscript:a3];
  v6 = [MEMORY[0x277CBEB68] null];

  if (v5 == v6)
  {

    v5 = 0;
  }

  v7 = [v13 customRootViewController];
  v8 = v7;
  if (!v5)
  {
    if ([v7 conformsToProtocol:&unk_2829AEDF8])
    {
      v5 = [v8 appNavigationController];
    }

    else
    {
      v5 = 0;
    }
  }

  if (objc_opt_respondsToSelector())
  {
    v9 = [v5 clientContext];

    if (!v9)
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      NSLog(&cfstr_NilClientConte.isa, v11, v13);
    }
  }

  v12 = [[SKUIJSTabBarItem alloc] initWithAppContext:*(a1 + 40) navigationController:v5 tabBarItem:v13 owner:*(a1 + 32)];
  [*(a1 + 48) addObject:v12];
}

- (id)_selectedTabBarItemForIndex:(int64_t)a3
{
  if (a3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = self->_transientTab;
  }

  else if (a3 < 0 || [(NSArray *)self->_tabs count]<= a3)
  {
    v4 = 0;
  }

  else
  {
    v4 = [(NSArray *)self->_tabs objectAtIndexedSubscript:a3];
  }

  return v4;
}

- (void)initWithAppContext:controller:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIJSTabBar initWithAppContext:controller:]";
}

@end