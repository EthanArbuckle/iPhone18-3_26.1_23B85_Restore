@interface BFFFlow
+ (unint64_t)applicableDispositions;
- (BFFFlow)initWithNavigationController:(id)a3 flowDelegate:(id)a4 flowStarter:(id)a5 dependencyInjector:(id)a6;
- (BFFFlowDelegate)delegate;
- (BFFFlowItemDelegate)flowItemDelegate;
- (BFFFlowStarter)starter;
- (BFFNavigationController)navigationController;
- (BFFNavigationFlowDelegate)navigationFlowDelegate;
- (BOOL)controllerNeedsToRunForClass:(Class)a3;
- (BOOL)isFlowItemOnTop:(id)a3;
- (BOOL)responsibleForViewController:(id)a3;
- (id)_viewControllerForBuddyController:(id)a3;
- (id)controllerFollowingControllerClass:(Class)a3 requestedNext:(Class)a4;
- (id)createConditionalFlowItemForClass:(Class)a3;
- (id)createFlowItem:(Class)a3;
- (id)firstItem;
- (id)popToBuddyControllerWithClass:(Class)a3 animated:(BOOL)a4;
- (id)popToBuddyControllerWithClass:(Class)a3 withOffset:(unint64_t)a4 animated:(BOOL)a5;
- (id)precedingItems;
- (id)viewControllers;
- (void)configureFlowItem:(id)a3;
- (void)dealloc;
- (void)flowItemCancelled:(id)a3;
- (void)flowItemDone:(id)a3 nextItem:(id)a4;
- (void)flowItemDone:(id)a3 nextItemClass:(Class)a4;
- (void)markFlowItemDone:(id)a3;
- (void)navigationController:(id)a3 didShowViewController:(id)a4 animated:(BOOL)a5;
- (void)presentWiFiPaneForFlow:(id)a3;
- (void)pushFlowItem:(id)a3 inFlow:(id)a4 withExtendedInitialization:(BOOL)a5 animated:(BOOL)a6;
- (void)pushFlowItem:(id)a3 inFlow:(id)a4 withExtendedInitialization:(BOOL)a5 animated:(BOOL)a6 willPushFlowItem:(id)a7;
- (void)removeViewControllersOnNextPush:(id)a3;
- (void)startFlowAnimated:(BOOL)a3;
- (void)startFlowWithAllFlowItems;
@end

@implementation BFFFlow

- (BFFFlow)initWithNavigationController:(id)a3 flowDelegate:(id)a4 flowStarter:(id)a5 dependencyInjector:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v22.receiver = self;
  v22.super_class = BFFFlow;
  v14 = [(BFFFlow *)&v22 init];
  v15 = v14;
  if (v14)
  {
    objc_storeWeak(&v14->_navigationController, v10);
    objc_storeWeak(&v15->_navigationFlowDelegate, v11);
    objc_storeWeak(&v15->_starter, v12);
    v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
    controllers = v15->_controllers;
    v15->_controllers = v16;

    v18 = [v13 copy];
    injector = v15->_injector;
    v15->_injector = v18;

    WeakRetained = objc_loadWeakRetained(&v15->_navigationController);
    [WeakRetained addDelegateObserver:v15];
  }

  return v15;
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_navigationController);
  [WeakRetained removeDelegateObserver:self];

  v4.receiver = self;
  v4.super_class = BFFFlow;
  [(BFFFlow *)&v4 dealloc];
}

- (void)startFlowAnimated:(BOOL)a3
{
  v3 = a3;
  v16 = *MEMORY[0x277D85DE8];
  v5 = [(BFFFlow *)self precedingItems];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(BFFFlow *)self pushFlowItem:*(*(&v11 + 1) + 8 * v9++) inFlow:self withExtendedInitialization:0 animated:0];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = [(BFFFlow *)self firstItem];
  [(BFFFlow *)self pushFlowItem:v10 inFlow:self animated:v3];
}

- (void)startFlowWithAllFlowItems
{
  v20 = *MEMORY[0x277D85DE8];
  controllers = self->_controllers;
  v4 = [(BFFFlow *)self precedingItems];
  [(NSMutableArray *)controllers addObjectsFromArray:v4];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(BFFFlow *)self classList];
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      v9 = 0;
      do
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * v9);
        v11 = [(BFFFlow *)self precedingItemsClasses];
        v12 = [v11 containsObject:v10];

        if ((v12 & 1) == 0)
        {
          v13 = [(BFFFlow *)self createConditionalFlowItemForClass:v10];
          if (v13)
          {
            v14 = [(BFFFlow *)self firstController];

            if (!v14)
            {
              [(BFFFlow *)self setFirstController:v13];
            }

            [(NSMutableArray *)self->_controllers addObject:v13];
          }
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }
}

- (id)precedingItems
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = [(BFFFlow *)self precedingItemsClasses];
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v19;
    *&v7 = 138412546;
    v17 = v7;
    do
    {
      v10 = 0;
      do
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v18 + 1) + 8 * v10);
        v12 = [(BFFFlow *)self starter:v17];
        v13 = [v12 controllerNeedsToRunForClass:v11];

        if ((v13 & 1) == 0)
        {
          v14 = _BYLoggingFacility();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
          {
            *buf = v17;
            v23 = v11;
            v24 = 2112;
            v25 = self;
            _os_log_fault_impl(&dword_265AC5000, v14, OS_LOG_TYPE_FAULT, "Preceding flow item %@ for flow %@ does not need to run. This is invalid.", buf, 0x16u);
          }
        }

        v15 = [(BFFFlow *)self createFlowItem:v11];
        [v4 addObject:v15];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v5 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v8);
  }

  return v4;
}

- (id)firstItem
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = [(BFFFlow *)self firstController];
  v4 = [v3 navigationController];
  if (!v4)
  {

    goto LABEL_5;
  }

  v5 = v4;
  v6 = [(BFFFlow *)self firstController];
  v7 = [v6 navigationController];
  v8 = [v7 viewControllers];
  v9 = [(BFFFlow *)self firstController];
  v10 = [v8 containsObject:v9];

  if ((v10 & 1) == 0)
  {
LABEL_5:
    [(BFFFlow *)self setFirstController:0];
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v11 = [(BFFFlow *)self classList];
  v12 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v24;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v24 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v23 + 1) + 8 * i);
        v17 = [(BFFFlow *)self precedingItemsClasses];
        v18 = [v17 containsObject:v16];

        if ((v18 & 1) == 0)
        {
          v19 = [(BFFFlow *)self createConditionalFlowItemForClass:v16];
          if (v19)
          {
            v20 = v19;
            [(BFFFlow *)self setFirstController:v19];

            goto LABEL_17;
          }
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

LABEL_17:

  v21 = [(BFFFlow *)self firstController];

  return v21;
}

- (id)controllerFollowingControllerClass:(Class)a3 requestedNext:(Class)a4
{
  if (!a4 || (-[BFFFlow starter](self, "starter"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 controllerNeedsToRunForClass:a4], v7, !v8) || (-[BFFFlow createConditionalFlowItemForClass:](self, "createConditionalFlowItemForClass:", a4), (v9 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v10 = [(BFFFlow *)self classList];
    v11 = [v10 indexOfObject:a3];

    if (v11 != 0x7FFFFFFFFFFFFFFFLL)
    {
      while (1)
      {
        ++v11;
        v13 = [(BFFFlow *)self classList];
        v14 = [v13 count];

        if (v11 >= v14)
        {
          break;
        }

        v15 = [(BFFFlow *)self classList];
        v16 = [v15 objectAtIndexedSubscript:v11];

        v9 = [(BFFFlow *)self createConditionalFlowItemForClass:v16];
        if (v9)
        {
          goto LABEL_6;
        }
      }
    }

    v9 = 0;
  }

LABEL_6:

  return v9;
}

- (id)createConditionalFlowItemForClass:(Class)a3
{
  v5 = [(BFFFlow *)self starter];
  v6 = [v5 controllerNeedsToRunForClass:a3];

  if (v6)
  {
    v7 = [(BFFFlow *)self createFlowItem:a3];
    v8 = [(BFFFlow *)self starter];
    v9 = [v8 controllerNeedsToRunForFlowItem:v7];

    if (v9)
    {
      goto LABEL_7;
    }

    if (objc_opt_respondsToSelector())
    {
      [v7 controllerWillNotRun];
    }
  }

  v7 = 0;
LABEL_7:

  return v7;
}

- (id)createFlowItem:(Class)a3
{
  if ([(objc_class *)a3 isSubclassOfClass:objc_opt_class()])
  {
    v5 = [a3 alloc];
    v6 = [(BFFFlow *)self navigationController];
    v7 = [(BFFFlow *)self navigationFlowDelegate];
    v8 = [(BFFFlow *)self starter];
    v9 = [(BFFFlow *)self injector];
    v10 = [v5 initWithNavigationController:v6 flowDelegate:v7 flowStarter:v8 dependencyInjector:v9];
  }

  else
  {
    v10 = objc_alloc_init(a3);
  }

  [(BFFFlow *)self configureFlowItem:v10];

  return v10;
}

- (void)configureFlowItem:(id)a3
{
  v11 = a3;
  v4 = [(BFFFlow *)self injector];
  v5 = (v4)[2](v4, v11);

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (-[BFFFlow precedingItemsClasses](self, "precedingItemsClasses"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 containsObject:objc_opt_class()], v6, -[BFFFlow classList](self, "classList"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "containsObject:", objc_opt_class()), v8, !v7) || (v9)
  {
    [v11 setDelegate:self];
  }

  else
  {
    v10 = [(BFFFlow *)self flowItemDelegate];
    [v11 setDelegate:v10];
  }
}

- (id)viewControllers
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(BFFFlow *)self controllers];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [(BFFFlow *)self _viewControllerForBuddyController:*(*(&v11 + 1) + 8 * i)];
        if (v9)
        {
          [v3 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)_viewControllerForBuddyController:(id)a3
{
  v3 = a3;
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 viewController];
LABEL_5:
    v5 = v4;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    goto LABEL_5;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

- (void)presentWiFiPaneForFlow:(id)a3
{
  v4 = [(BFFFlow *)self delegate];
  [v4 presentWiFiPaneForFlow:self];
}

+ (unint64_t)applicableDispositions
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [objc_opt_class() allowedFlowItems];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v10;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v5 |= [*(*(&v9 + 1) + 8 * i) applicableDispositions];
      }

      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)responsibleForViewController:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(BFFFlow *)self controllers];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if (objc_opt_respondsToSelector() & 1) != 0 && ([v10 responsibleForViewController:v4])
        {
          v11 = 1;
          goto LABEL_12;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v5 = [(BFFFlow *)self viewControllers];
  v11 = [v5 containsObject:v4];
LABEL_12:

  return v11;
}

- (void)flowItemDone:(id)a3 nextItem:(id)a4
{
  v8 = a3;
  v6 = a4;
  if (self != v8)
  {
    [(BFFFlow *)self markFlowItemDone:v8];
  }

  if (v6)
  {
    [(BFFFlow *)self configureFlowItem:v6];
    [(BFFFlow *)self pushFlowItem:v6 inFlow:self animated:1];
  }

  else
  {
    v7 = [(BFFFlow *)self delegate];
    [v7 flow:self finishedWithLastItem:v8 nextItem:0];
  }
}

- (void)flowItemDone:(id)a3 nextItemClass:(Class)a4
{
  v6 = a3;
  v7 = [(BFFFlow *)self controllerFollowingControllerClass:objc_opt_class() requestedNext:a4];
  [(BFFFlow *)self flowItemDone:v6 nextItem:v7];
}

- (void)flowItemCancelled:(id)a3
{
  v4 = a3;
  v5 = [(BFFFlow *)self flowItemDelegate];
  [v5 flowItemCancelled:v4];
}

- (BOOL)controllerNeedsToRunForClass:(Class)a3
{
  v4 = [(BFFFlow *)self navigationFlowDelegate];
  LOBYTE(a3) = [v4 controllerNeedsToRunForClass:a3];

  return a3;
}

- (void)markFlowItemDone:(id)a3
{
  v4 = a3;
  v5 = [(BFFFlow *)self navigationFlowDelegate];
  [v5 markFlowItemDone:v4];
}

- (BOOL)isFlowItemOnTop:(id)a3
{
  v4 = a3;
  v5 = [(BFFFlow *)self navigationFlowDelegate];
  v6 = [v5 isFlowItemOnTop:v4];

  return v6;
}

- (id)popToBuddyControllerWithClass:(Class)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = [(BFFFlow *)self navigationFlowDelegate];
  v7 = [v6 popToBuddyControllerWithClass:a3 animated:v4];

  return v7;
}

- (id)popToBuddyControllerWithClass:(Class)a3 withOffset:(unint64_t)a4 animated:(BOOL)a5
{
  v5 = a5;
  v8 = [(BFFFlow *)self navigationFlowDelegate];
  v9 = [v8 popToBuddyControllerWithClass:a3 withOffset:a4 animated:v5];

  return v9;
}

- (void)pushFlowItem:(id)a3 inFlow:(id)a4 withExtendedInitialization:(BOOL)a5 animated:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v10 = a3;
  v11 = a4;
  v12 = [(BFFFlow *)self navigationFlowDelegate];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __67__BFFFlow_pushFlowItem_inFlow_withExtendedInitialization_animated___block_invoke;
  v14[3] = &unk_279BB4EA0;
  v15 = v10;
  v16 = self;
  v13 = v10;
  [v12 pushFlowItem:v13 inFlow:v11 withExtendedInitialization:v7 animated:v6 willPushFlowItem:v14];
}

uint64_t __67__BFFFlow_pushFlowItem_inFlow_withExtendedInitialization_animated___block_invoke(uint64_t result, int a2)
{
  if (a2)
  {
    if (*(result + 32))
    {
      return [*(*(result + 40) + 56) addObject:?];
    }
  }

  return result;
}

- (void)pushFlowItem:(id)a3 inFlow:(id)a4 withExtendedInitialization:(BOOL)a5 animated:(BOOL)a6 willPushFlowItem:(id)a7
{
  v8 = a6;
  v9 = a5;
  v12 = a3;
  v13 = a7;
  v14 = a4;
  v15 = [(BFFFlow *)self navigationFlowDelegate];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __84__BFFFlow_pushFlowItem_inFlow_withExtendedInitialization_animated_willPushFlowItem___block_invoke;
  v18[3] = &unk_279BB4F38;
  v19 = v12;
  v20 = self;
  v21 = v13;
  v16 = v13;
  v17 = v12;
  [v15 pushFlowItem:v17 inFlow:v14 withExtendedInitialization:v9 animated:v8 willPushFlowItem:v18];
}

uint64_t __84__BFFFlow_pushFlowItem_inFlow_withExtendedInitialization_animated_willPushFlowItem___block_invoke(void *a1, int a2)
{
  if (a2 && a1[4])
  {
    [*(a1[5] + 56) addObject:?];
  }

  result = a1[6];
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

- (void)removeViewControllersOnNextPush:(id)a3
{
  v4 = a3;
  v5 = [(BFFFlow *)self navigationFlowDelegate];
  [v5 removeViewControllersOnNextPush:v4];
}

- (void)navigationController:(id)a3 didShowViewController:(id)a4 animated:(BOOL)a5
{
  v15 = a4;
  v6 = [(BFFFlow *)self controllers];
  v7 = [v6 count];
  v8 = v7 - 1;

  if (((v7 - 1) & 0x8000000000000000) == 0)
  {
    v9 = 0;
    while (1)
    {
      v10 = [(BFFFlow *)self controllers];
      v11 = [v10 objectAtIndexedSubscript:v9];

      v12 = [(BFFFlow *)self _viewControllerForBuddyController:v11];

      if (v12 == v15)
      {
        break;
      }

      if (v7 == ++v9)
      {
        goto LABEL_11;
      }
    }

    if (v9 != 0x7FFFFFFFFFFFFFFFLL && v8 > v9)
    {
      do
      {
        v13 = [(BFFFlow *)self controllers];
        v14 = [v13 lastObject];

        if (objc_opt_respondsToSelector())
        {
          [v14 controllerWasPopped];
        }

        [(NSMutableArray *)self->_controllers removeLastObject];

        --v8;
      }

      while (v8 > v9);
    }
  }

LABEL_11:
}

- (BFFNavigationController)navigationController
{
  WeakRetained = objc_loadWeakRetained(&self->_navigationController);

  return WeakRetained;
}

- (BFFNavigationFlowDelegate)navigationFlowDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_navigationFlowDelegate);

  return WeakRetained;
}

- (BFFFlowItemDelegate)flowItemDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_flowItemDelegate);

  return WeakRetained;
}

- (BFFFlowDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BFFFlowStarter)starter
{
  WeakRetained = objc_loadWeakRetained(&self->_starter);

  return WeakRetained;
}

@end