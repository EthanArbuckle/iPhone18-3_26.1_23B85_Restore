@interface NCSupplementaryViewPrototypeRecipe
+ (id)_sharedInstance;
+ (void)registerRecipeWithDelegate:(id)delegate;
- (BOOL)respondsToSelector:(SEL)selector;
- (NCSupplementaryViewPrototypeRecipe)init;
- (NCSupplementaryViewPrototypeRecipeDelegate)delegate;
- (id)_mostRecentDateForGroupingIdentifier:(id)identifier;
- (id)_supplementaryViewsTestRecipeWithDelegate:(id)delegate;
- (int64_t)_compareByAgeForViewController:(id)controller otherViewController:(id)viewController;
- (unint64_t)prototypeRecipeViewController:(id)controller requestsCountForGroupWithIdentifier:(id)identifier;
- (void)_presentSupplementaryViewController;
- (void)_registerRecipeWithDelegate:(id)delegate;
- (void)_setSortComparatorsForContainer:(id)container;
- (void)_updateGroupLastModifiedDateForViewController:(id)controller;
- (void)forwardInvocation:(id)invocation;
- (void)recipeMenuViewController:(id)controller requestsInsertContentViewController:(id)viewController;
- (void)requestsInsertForPrototypeRecipeViewController:(id)controller;
- (void)requestsRemovalForPrototypeRecipeViewController:(id)controller;
- (void)requestsUpdateForPrototypeRecipeViewController:(id)controller;
- (void)requestsUpdatePositionIfNeededForPrototypeRecipeViewController:(id)controller;
@end

@implementation NCSupplementaryViewPrototypeRecipe

- (NCSupplementaryViewPrototypeRecipe)init
{
  v6.receiver = self;
  v6.super_class = NCSupplementaryViewPrototypeRecipe;
  v2 = [(NCSupplementaryViewPrototypeRecipe *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    lastModifiedDatesByGroupingIdentifiers = v2->_lastModifiedDatesByGroupingIdentifiers;
    v2->_lastModifiedDatesByGroupingIdentifiers = v3;
  }

  return v2;
}

+ (id)_sharedInstance
{
  if (_sharedInstance_onceToken != -1)
  {
    +[NCSupplementaryViewPrototypeRecipe _sharedInstance];
  }

  v3 = _sharedInstance___sharedInstance;

  return v3;
}

uint64_t __53__NCSupplementaryViewPrototypeRecipe__sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(NCSupplementaryViewPrototypeRecipe);
  _sharedInstance___sharedInstance = v0;

  return MEMORY[0x2821F96F8](v0);
}

+ (void)registerRecipeWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  _sharedInstance = [objc_opt_class() _sharedInstance];
  [_sharedInstance _registerRecipeWithDelegate:delegateCopy];
}

- (BOOL)respondsToSelector:(SEL)selector
{
  v8.receiver = self;
  v8.super_class = NCSupplementaryViewPrototypeRecipe;
  if ([(NCSupplementaryViewPrototypeRecipe *)&v8 respondsToSelector:?])
  {
    v5 = 1;
  }

  else if ([NCNotificationStructuredListUtilities isNotificationListComponentDelegateMethod:selector])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v5 = objc_opt_respondsToSelector();
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

- (void)forwardInvocation:(id)invocation
{
  invocationCopy = invocation;
  if (+[NCNotificationStructuredListUtilities isNotificationListComponentDelegateMethod:](NCNotificationStructuredListUtilities, "isNotificationListComponentDelegateMethod:", [invocationCopy selector]))
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      [invocationCopy invokeWithTarget:WeakRetained];
    }

    else
    {
      v6.receiver = self;
      v6.super_class = NCSupplementaryViewPrototypeRecipe;
      [(NCSupplementaryViewPrototypeRecipe *)&v6 forwardInvocation:invocationCopy];
    }
  }
}

- (void)requestsRemovalForPrototypeRecipeViewController:(id)controller
{
  controllerCopy = controller;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  testRecipeSupplementaryViewsContainer = [WeakRetained testRecipeSupplementaryViewsContainer];
  [testRecipeSupplementaryViewsContainer removeSupplementaryViewController:controllerCopy];
}

- (void)requestsUpdateForPrototypeRecipeViewController:(id)controller
{
  controllerCopy = controller;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  testRecipeSupplementaryViewsContainer = [WeakRetained testRecipeSupplementaryViewsContainer];
  configuration = [controllerCopy configuration];
  [testRecipeSupplementaryViewsContainer updateSupplementaryViewController:controllerCopy withConfiguration:configuration];
}

- (void)requestsInsertForPrototypeRecipeViewController:(id)controller
{
  controllerCopy = controller;
  [(NCSupplementaryViewPrototypeRecipe *)self _updateGroupLastModifiedDateForViewController:controllerCopy];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  testRecipeSupplementaryViewsContainer = [WeakRetained testRecipeSupplementaryViewsContainer];
  configuration = [controllerCopy configuration];
  [testRecipeSupplementaryViewsContainer insertSupplementaryViewController:controllerCopy withConfiguration:configuration];
}

- (void)requestsUpdatePositionIfNeededForPrototypeRecipeViewController:(id)controller
{
  controllerCopy = controller;
  [(NCSupplementaryViewPrototypeRecipe *)self _updateGroupLastModifiedDateForViewController:controllerCopy];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  testRecipeSupplementaryViewsContainer = [WeakRetained testRecipeSupplementaryViewsContainer];
  [testRecipeSupplementaryViewsContainer updatePositionIfNeededForSupplementaryViewController:controllerCopy];
}

- (unint64_t)prototypeRecipeViewController:(id)controller requestsCountForGroupWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  testRecipeSupplementaryViewsContainer = [WeakRetained testRecipeSupplementaryViewsContainer];
  supplementaryViewControllersByGroupingIdentifiers = [testRecipeSupplementaryViewsContainer supplementaryViewControllersByGroupingIdentifiers];
  v9 = [supplementaryViewControllersByGroupingIdentifiers objectForKey:identifierCopy];

  v10 = [v9 count];
  return v10;
}

- (void)recipeMenuViewController:(id)controller requestsInsertContentViewController:(id)viewController
{
  viewControllerCopy = viewController;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  testRecipeSupplementaryViewsContainer = [WeakRetained testRecipeSupplementaryViewsContainer];
  configuration = [viewControllerCopy configuration];
  [testRecipeSupplementaryViewsContainer insertSupplementaryViewController:viewControllerCopy withConfiguration:configuration];
}

- (void)_registerRecipeWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  [(NCSupplementaryViewPrototypeRecipe *)self setDelegate:delegateCopy];
  v7 = [(NCSupplementaryViewPrototypeRecipe *)self _supplementaryViewsTestRecipeWithDelegate:delegateCopy];

  [(PTDomain *)NCUNUIKitPrototypeDomain registerTestRecipe:v7];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  testRecipeSupplementaryViewsContainer = [WeakRetained testRecipeSupplementaryViewsContainer];
  [(NCSupplementaryViewPrototypeRecipe *)self _setSortComparatorsForContainer:testRecipeSupplementaryViewsContainer];
}

- (void)_setSortComparatorsForContainer:(id)container
{
  containerCopy = container;
  objc_initWeak(&location, self);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __70__NCSupplementaryViewPrototypeRecipe__setSortComparatorsForContainer___block_invoke;
  v7[3] = &unk_278372FC8;
  objc_copyWeak(&v8, &location);
  [containerCopy setViewControllerSortComparator:v7];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __70__NCSupplementaryViewPrototypeRecipe__setSortComparatorsForContainer___block_invoke_2;
  v5[3] = &unk_278372FF0;
  objc_copyWeak(&v6, &location);
  [containerCopy setGroupSortComparator:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

uint64_t __70__NCSupplementaryViewPrototypeRecipe__setSortComparatorsForContainer___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = [WeakRetained _compareByAgeForViewController:v5 otherViewController:v6];

  return v8;
}

uint64_t __70__NCSupplementaryViewPrototypeRecipe__setSortComparatorsForContainer___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v5 isEqualToString:v6])
  {
    v7 = 0;
  }

  else
  {
    v8 = [&unk_283015848 indexOfObject:v5];
    v9 = [&unk_283015848 indexOfObject:v6];
    if (v9 == 0x7FFFFFFFFFFFFFFFLL || v8 != 0x7FFFFFFFFFFFFFFFLL)
    {
      if (v9 == 0x7FFFFFFFFFFFFFFFLL || v8 == 0x7FFFFFFFFFFFFFFFLL)
      {
        if (v8 == 0x7FFFFFFFFFFFFFFFLL)
        {
          WeakRetained = objc_loadWeakRetained((a1 + 32));
          v11 = [WeakRetained lastModifiedDatesByGroupingIdentifiers];
          v12 = [v11 objectForKey:v5];

          v13 = [WeakRetained lastModifiedDatesByGroupingIdentifiers];
          v14 = [v13 objectForKey:v6];

          v7 = [v14 compare:v12];
        }

        else
        {
          v7 = -1;
        }
      }

      else if (v9 < v8)
      {
        v7 = 1;
      }

      else
      {
        v7 = -1;
      }
    }

    else
    {
      v7 = 1;
    }
  }

  return v7;
}

- (id)_mostRecentDateForGroupingIdentifier:(id)identifier
{
  v23 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  testRecipeSupplementaryViewsContainer = [WeakRetained testRecipeSupplementaryViewsContainer];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  supplementaryViewControllersByGroupingIdentifiers = [testRecipeSupplementaryViewsContainer supplementaryViewControllersByGroupingIdentifiers];
  v8 = [supplementaryViewControllersByGroupingIdentifiers objectForKey:identifierCopy];

  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (!v9)
  {

LABEL_14:
    v11 = [MEMORY[0x277CBEAA8] now];
    goto LABEL_15;
  }

  v10 = v9;
  v11 = 0;
  v12 = *v19;
  do
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v19 != v12)
      {
        objc_enumerationMutation(v8);
      }

      dateModified = [*(*(&v18 + 1) + 8 * i) dateModified];
      v15 = dateModified;
      if (!v11 || [dateModified compare:v11] == 1)
      {
        v16 = v15;

        v11 = v16;
      }
    }

    v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  }

  while (v10);

  if (!v11)
  {
    goto LABEL_14;
  }

LABEL_15:

  return v11;
}

- (int64_t)_compareByAgeForViewController:(id)controller otherViewController:(id)viewController
{
  viewControllerCopy = viewController;
  dateModified = [controller dateModified];
  dateModified2 = [viewControllerCopy dateModified];

  v8 = [dateModified compare:dateModified2];
  return v8;
}

- (void)_presentSupplementaryViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  testRecipeSupplementaryViewsContainer = [WeakRetained testRecipeSupplementaryViewsContainer];

  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  supplementaryViewControllers = [testRecipeSupplementaryViewsContainer supplementaryViewControllers];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __73__NCSupplementaryViewPrototypeRecipe__presentSupplementaryViewController__block_invoke;
  v8[3] = &unk_278373018;
  v8[4] = &v9;
  [supplementaryViewControllers enumerateObjectsUsingBlock:v8];

  if ((v10[3] & 1) == 0)
  {
    v6 = objc_alloc_init(NCSupplementaryViewPrototypeRecipeMenuViewController);
    configuration = [(NCSupplementaryViewPrototypeRecipeViewController *)v6 configuration];
    [testRecipeSupplementaryViewsContainer insertSupplementaryViewController:v6 withConfiguration:configuration];

    [(NCSupplementaryViewPrototypeRecipeViewController *)v6 setDelegate:self];
  }

  _Block_object_dispose(&v9, 8);
}

void __73__NCSupplementaryViewPrototypeRecipe__presentSupplementaryViewController__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  *(*(*(a1 + 32) + 8) + 24) = isKindOfClass & 1;
  *a4 = *(*(*(a1 + 32) + 8) + 24);
}

- (void)_updateGroupLastModifiedDateForViewController:(id)controller
{
  controllerCopy = controller;
  configuration = [controllerCopy configuration];
  groupingIdentifier = [configuration groupingIdentifier];

  dateModified = [controllerCopy dateModified];

  if (groupingIdentifier && dateModified)
  {
    v7 = [(NSMutableDictionary *)self->_lastModifiedDatesByGroupingIdentifiers objectForKey:?];
    v8 = dateModified;
    if (v7)
    {
      if ([dateModified compare:v7] == 1)
      {
        v8 = dateModified;
      }

      else
      {
        v8 = v7;
      }
    }

    v9 = v8;

    [(NSMutableDictionary *)self->_lastModifiedDatesByGroupingIdentifiers setObject:v9 forKey:groupingIdentifier];
    dateModified = v9;
  }
}

- (id)_supplementaryViewsTestRecipeWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  objc_initWeak(&location, delegateCopy);
  v5 = MEMORY[0x277D431D0];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __80__NCSupplementaryViewPrototypeRecipe__supplementaryViewsTestRecipeWithDelegate___block_invoke;
  v8[3] = &unk_278370A90;
  objc_copyWeak(&v9, &location);
  v8[4] = self;
  v6 = [v5 recipeWithTitle:@"Add/Remove Supplementary Views in Notifications List" increaseAction:v8 decreaseAction:&__block_literal_global_22];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);

  return v6;
}

void __80__NCSupplementaryViewPrototypeRecipe__supplementaryViewsTestRecipeWithDelegate___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [*(a1 + 32) _presentSupplementaryViewController];
    WeakRetained = v3;
  }
}

- (NCSupplementaryViewPrototypeRecipeDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end