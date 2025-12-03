@interface BFFFlow
+ (unint64_t)applicableDispositions;
- (BFFFlow)initWithNavigationController:(id)controller flowDelegate:(id)delegate flowStarter:(id)starter dependencyInjector:(id)injector;
- (BFFFlowDelegate)delegate;
- (BFFFlowItemDelegate)flowItemDelegate;
- (BFFFlowStarter)starter;
- (BFFNavigationController)navigationController;
- (BFFNavigationFlowDelegate)navigationFlowDelegate;
- (BOOL)controllerNeedsToRunForClass:(Class)class;
- (BOOL)isFlowItemOnTop:(id)top;
- (BOOL)responsibleForViewController:(id)controller;
- (id)_viewControllerForBuddyController:(id)controller;
- (id)controllerFollowingControllerClass:(Class)class requestedNext:(Class)next;
- (id)createConditionalFlowItemForClass:(Class)class;
- (id)createFlowItem:(Class)item;
- (id)firstItem;
- (id)popToBuddyControllerWithClass:(Class)class animated:(BOOL)animated;
- (id)popToBuddyControllerWithClass:(Class)class withOffset:(unint64_t)offset animated:(BOOL)animated;
- (id)precedingItems;
- (id)viewControllers;
- (void)configureFlowItem:(id)item;
- (void)dealloc;
- (void)flowItemCancelled:(id)cancelled;
- (void)flowItemDone:(id)done nextItem:(id)item;
- (void)flowItemDone:(id)done nextItemClass:(Class)class;
- (void)markFlowItemDone:(id)done;
- (void)navigationController:(id)controller didShowViewController:(id)viewController animated:(BOOL)animated;
- (void)presentWiFiPaneForFlow:(id)flow;
- (void)pushFlowItem:(id)item inFlow:(id)flow withExtendedInitialization:(BOOL)initialization animated:(BOOL)animated;
- (void)pushFlowItem:(id)item inFlow:(id)flow withExtendedInitialization:(BOOL)initialization animated:(BOOL)animated willPushFlowItem:(id)flowItem;
- (void)removeViewControllersOnNextPush:(id)push;
- (void)startFlowAnimated:(BOOL)animated;
- (void)startFlowWithAllFlowItems;
@end

@implementation BFFFlow

- (BFFFlow)initWithNavigationController:(id)controller flowDelegate:(id)delegate flowStarter:(id)starter dependencyInjector:(id)injector
{
  controllerCopy = controller;
  delegateCopy = delegate;
  starterCopy = starter;
  injectorCopy = injector;
  v22.receiver = self;
  v22.super_class = BFFFlow;
  v14 = [(BFFFlow *)&v22 init];
  v15 = v14;
  if (v14)
  {
    objc_storeWeak(&v14->_navigationController, controllerCopy);
    objc_storeWeak(&v15->_navigationFlowDelegate, delegateCopy);
    objc_storeWeak(&v15->_starter, starterCopy);
    v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
    controllers = v15->_controllers;
    v15->_controllers = v16;

    v18 = [injectorCopy copy];
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

- (void)startFlowAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v16 = *MEMORY[0x277D85DE8];
  precedingItems = [(BFFFlow *)self precedingItems];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [precedingItems countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(precedingItems);
        }

        [(BFFFlow *)self pushFlowItem:*(*(&v11 + 1) + 8 * v9++) inFlow:self withExtendedInitialization:0 animated:0];
      }

      while (v7 != v9);
      v7 = [precedingItems countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  firstItem = [(BFFFlow *)self firstItem];
  [(BFFFlow *)self pushFlowItem:firstItem inFlow:self animated:animatedCopy];
}

- (void)startFlowWithAllFlowItems
{
  v20 = *MEMORY[0x277D85DE8];
  controllers = self->_controllers;
  precedingItems = [(BFFFlow *)self precedingItems];
  [(NSMutableArray *)controllers addObjectsFromArray:precedingItems];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  classList = [(BFFFlow *)self classList];
  v6 = [classList countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(classList);
        }

        v10 = *(*(&v15 + 1) + 8 * v9);
        precedingItemsClasses = [(BFFFlow *)self precedingItemsClasses];
        v12 = [precedingItemsClasses containsObject:v10];

        if ((v12 & 1) == 0)
        {
          v13 = [(BFFFlow *)self createConditionalFlowItemForClass:v10];
          if (v13)
          {
            firstController = [(BFFFlow *)self firstController];

            if (!firstController)
            {
              [(BFFFlow *)self setFirstController:v13];
            }

            [(NSMutableArray *)self->_controllers addObject:v13];
          }
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [classList countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }
}

- (id)precedingItems
{
  v27 = *MEMORY[0x277D85DE8];
  precedingItemsClasses = [(BFFFlow *)self precedingItemsClasses];
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = precedingItemsClasses;
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
            selfCopy = self;
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
  firstController = [(BFFFlow *)self firstController];
  navigationController = [firstController navigationController];
  if (!navigationController)
  {

    goto LABEL_5;
  }

  v5 = navigationController;
  firstController2 = [(BFFFlow *)self firstController];
  navigationController2 = [firstController2 navigationController];
  viewControllers = [navigationController2 viewControllers];
  firstController3 = [(BFFFlow *)self firstController];
  v10 = [viewControllers containsObject:firstController3];

  if ((v10 & 1) == 0)
  {
LABEL_5:
    [(BFFFlow *)self setFirstController:0];
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  classList = [(BFFFlow *)self classList];
  v12 = [classList countByEnumeratingWithState:&v23 objects:v27 count:16];
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
          objc_enumerationMutation(classList);
        }

        v16 = *(*(&v23 + 1) + 8 * i);
        precedingItemsClasses = [(BFFFlow *)self precedingItemsClasses];
        v18 = [precedingItemsClasses containsObject:v16];

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

      v13 = [classList countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

LABEL_17:

  firstController4 = [(BFFFlow *)self firstController];

  return firstController4;
}

- (id)controllerFollowingControllerClass:(Class)class requestedNext:(Class)next
{
  if (!next || (-[BFFFlow starter](self, "starter"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 controllerNeedsToRunForClass:next], v7, !v8) || (-[BFFFlow createConditionalFlowItemForClass:](self, "createConditionalFlowItemForClass:", next), (v9 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    classList = [(BFFFlow *)self classList];
    v11 = [classList indexOfObject:class];

    if (v11 != 0x7FFFFFFFFFFFFFFFLL)
    {
      while (1)
      {
        ++v11;
        classList2 = [(BFFFlow *)self classList];
        v14 = [classList2 count];

        if (v11 >= v14)
        {
          break;
        }

        classList3 = [(BFFFlow *)self classList];
        v16 = [classList3 objectAtIndexedSubscript:v11];

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

- (id)createConditionalFlowItemForClass:(Class)class
{
  starter = [(BFFFlow *)self starter];
  v6 = [starter controllerNeedsToRunForClass:class];

  if (v6)
  {
    v7 = [(BFFFlow *)self createFlowItem:class];
    starter2 = [(BFFFlow *)self starter];
    v9 = [starter2 controllerNeedsToRunForFlowItem:v7];

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

- (id)createFlowItem:(Class)item
{
  if ([(objc_class *)item isSubclassOfClass:objc_opt_class()])
  {
    v5 = [item alloc];
    navigationController = [(BFFFlow *)self navigationController];
    navigationFlowDelegate = [(BFFFlow *)self navigationFlowDelegate];
    starter = [(BFFFlow *)self starter];
    injector = [(BFFFlow *)self injector];
    v10 = [v5 initWithNavigationController:navigationController flowDelegate:navigationFlowDelegate flowStarter:starter dependencyInjector:injector];
  }

  else
  {
    v10 = objc_alloc_init(item);
  }

  [(BFFFlow *)self configureFlowItem:v10];

  return v10;
}

- (void)configureFlowItem:(id)item
{
  itemCopy = item;
  injector = [(BFFFlow *)self injector];
  v5 = (injector)[2](injector, itemCopy);

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (-[BFFFlow precedingItemsClasses](self, "precedingItemsClasses"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 containsObject:objc_opt_class()], v6, -[BFFFlow classList](self, "classList"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "containsObject:", objc_opt_class()), v8, !v7) || (v9)
  {
    [itemCopy setDelegate:self];
  }

  else
  {
    flowItemDelegate = [(BFFFlow *)self flowItemDelegate];
    [itemCopy setDelegate:flowItemDelegate];
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
  controllers = [(BFFFlow *)self controllers];
  v5 = [controllers countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(controllers);
        }

        v9 = [(BFFFlow *)self _viewControllerForBuddyController:*(*(&v11 + 1) + 8 * i)];
        if (v9)
        {
          [v3 addObject:v9];
        }
      }

      v6 = [controllers countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)_viewControllerForBuddyController:(id)controller
{
  controllerCopy = controller;
  if (objc_opt_respondsToSelector())
  {
    viewController = [controllerCopy viewController];
LABEL_5:
    v5 = viewController;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    viewController = controllerCopy;
    goto LABEL_5;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

- (void)presentWiFiPaneForFlow:(id)flow
{
  delegate = [(BFFFlow *)self delegate];
  [delegate presentWiFiPaneForFlow:self];
}

+ (unint64_t)applicableDispositions
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  allowedFlowItems = [objc_opt_class() allowedFlowItems];
  v3 = [allowedFlowItems countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(allowedFlowItems);
        }

        v5 |= [*(*(&v9 + 1) + 8 * i) applicableDispositions];
      }

      v4 = [allowedFlowItems countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)responsibleForViewController:(id)controller
{
  v18 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  controllers = [(BFFFlow *)self controllers];
  v6 = [controllers countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(controllers);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if (objc_opt_respondsToSelector() & 1) != 0 && ([v10 responsibleForViewController:controllerCopy])
        {
          v11 = 1;
          goto LABEL_12;
        }
      }

      v7 = [controllers countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  controllers = [(BFFFlow *)self viewControllers];
  v11 = [controllers containsObject:controllerCopy];
LABEL_12:

  return v11;
}

- (void)flowItemDone:(id)done nextItem:(id)item
{
  doneCopy = done;
  itemCopy = item;
  if (self != doneCopy)
  {
    [(BFFFlow *)self markFlowItemDone:doneCopy];
  }

  if (itemCopy)
  {
    [(BFFFlow *)self configureFlowItem:itemCopy];
    [(BFFFlow *)self pushFlowItem:itemCopy inFlow:self animated:1];
  }

  else
  {
    delegate = [(BFFFlow *)self delegate];
    [delegate flow:self finishedWithLastItem:doneCopy nextItem:0];
  }
}

- (void)flowItemDone:(id)done nextItemClass:(Class)class
{
  doneCopy = done;
  v7 = [(BFFFlow *)self controllerFollowingControllerClass:objc_opt_class() requestedNext:class];
  [(BFFFlow *)self flowItemDone:doneCopy nextItem:v7];
}

- (void)flowItemCancelled:(id)cancelled
{
  cancelledCopy = cancelled;
  flowItemDelegate = [(BFFFlow *)self flowItemDelegate];
  [flowItemDelegate flowItemCancelled:cancelledCopy];
}

- (BOOL)controllerNeedsToRunForClass:(Class)class
{
  navigationFlowDelegate = [(BFFFlow *)self navigationFlowDelegate];
  LOBYTE(class) = [navigationFlowDelegate controllerNeedsToRunForClass:class];

  return class;
}

- (void)markFlowItemDone:(id)done
{
  doneCopy = done;
  navigationFlowDelegate = [(BFFFlow *)self navigationFlowDelegate];
  [navigationFlowDelegate markFlowItemDone:doneCopy];
}

- (BOOL)isFlowItemOnTop:(id)top
{
  topCopy = top;
  navigationFlowDelegate = [(BFFFlow *)self navigationFlowDelegate];
  v6 = [navigationFlowDelegate isFlowItemOnTop:topCopy];

  return v6;
}

- (id)popToBuddyControllerWithClass:(Class)class animated:(BOOL)animated
{
  animatedCopy = animated;
  navigationFlowDelegate = [(BFFFlow *)self navigationFlowDelegate];
  v7 = [navigationFlowDelegate popToBuddyControllerWithClass:class animated:animatedCopy];

  return v7;
}

- (id)popToBuddyControllerWithClass:(Class)class withOffset:(unint64_t)offset animated:(BOOL)animated
{
  animatedCopy = animated;
  navigationFlowDelegate = [(BFFFlow *)self navigationFlowDelegate];
  v9 = [navigationFlowDelegate popToBuddyControllerWithClass:class withOffset:offset animated:animatedCopy];

  return v9;
}

- (void)pushFlowItem:(id)item inFlow:(id)flow withExtendedInitialization:(BOOL)initialization animated:(BOOL)animated
{
  animatedCopy = animated;
  initializationCopy = initialization;
  itemCopy = item;
  flowCopy = flow;
  navigationFlowDelegate = [(BFFFlow *)self navigationFlowDelegate];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __67__BFFFlow_pushFlowItem_inFlow_withExtendedInitialization_animated___block_invoke;
  v14[3] = &unk_279BB4EA0;
  v15 = itemCopy;
  selfCopy = self;
  v13 = itemCopy;
  [navigationFlowDelegate pushFlowItem:v13 inFlow:flowCopy withExtendedInitialization:initializationCopy animated:animatedCopy willPushFlowItem:v14];
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

- (void)pushFlowItem:(id)item inFlow:(id)flow withExtendedInitialization:(BOOL)initialization animated:(BOOL)animated willPushFlowItem:(id)flowItem
{
  animatedCopy = animated;
  initializationCopy = initialization;
  itemCopy = item;
  flowItemCopy = flowItem;
  flowCopy = flow;
  navigationFlowDelegate = [(BFFFlow *)self navigationFlowDelegate];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __84__BFFFlow_pushFlowItem_inFlow_withExtendedInitialization_animated_willPushFlowItem___block_invoke;
  v18[3] = &unk_279BB4F38;
  v19 = itemCopy;
  selfCopy = self;
  v21 = flowItemCopy;
  v16 = flowItemCopy;
  v17 = itemCopy;
  [navigationFlowDelegate pushFlowItem:v17 inFlow:flowCopy withExtendedInitialization:initializationCopy animated:animatedCopy willPushFlowItem:v18];
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

- (void)removeViewControllersOnNextPush:(id)push
{
  pushCopy = push;
  navigationFlowDelegate = [(BFFFlow *)self navigationFlowDelegate];
  [navigationFlowDelegate removeViewControllersOnNextPush:pushCopy];
}

- (void)navigationController:(id)controller didShowViewController:(id)viewController animated:(BOOL)animated
{
  viewControllerCopy = viewController;
  controllers = [(BFFFlow *)self controllers];
  v7 = [controllers count];
  v8 = v7 - 1;

  if (((v7 - 1) & 0x8000000000000000) == 0)
  {
    v9 = 0;
    while (1)
    {
      controllers2 = [(BFFFlow *)self controllers];
      v11 = [controllers2 objectAtIndexedSubscript:v9];

      v12 = [(BFFFlow *)self _viewControllerForBuddyController:v11];

      if (v12 == viewControllerCopy)
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
        controllers3 = [(BFFFlow *)self controllers];
        lastObject = [controllers3 lastObject];

        if (objc_opt_respondsToSelector())
        {
          [lastObject controllerWasPopped];
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