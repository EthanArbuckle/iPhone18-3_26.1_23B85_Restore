@interface NCBannerTransitionBlockingPrototypeRecipe
- (NCBannerTransitionBlockingPrototypeRecipe)initWithNotificationAlertDestination:(id)destination;
- (NCNotificationAlertDestinationPrototyping)notificationAlertDestination;
- (void)_popTopAssertion;
- (void)_pushNewAssertion;
@end

@implementation NCBannerTransitionBlockingPrototypeRecipe

- (NCBannerTransitionBlockingPrototypeRecipe)initWithNotificationAlertDestination:(id)destination
{
  destinationCopy = destination;
  v15.receiver = self;
  v15.super_class = NCBannerTransitionBlockingPrototypeRecipe;
  v5 = [(NCBannerTransitionBlockingPrototypeRecipe *)&v15 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_notificationAlertDestination, destinationCopy);
    objc_initWeak(&location, v6);
    v7 = MEMORY[0x277D431D0];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __82__NCBannerTransitionBlockingPrototypeRecipe_initWithNotificationAlertDestination___block_invoke;
    v12[3] = &unk_27836F498;
    objc_copyWeak(&v13, &location);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __82__NCBannerTransitionBlockingPrototypeRecipe_initWithNotificationAlertDestination___block_invoke_2;
    v10[3] = &unk_27836F498;
    objc_copyWeak(&v11, &location);
    v8 = [v7 recipeWithTitle:@"Block Banner Transitions" increaseAction:v12 decreaseAction:v10];
    [(PTDomain *)NCUNUIKitPrototypeDomain registerTestRecipe:v8];

    objc_destroyWeak(&v11);
    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  return v6;
}

void __82__NCBannerTransitionBlockingPrototypeRecipe_initWithNotificationAlertDestination___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _pushNewAssertion];
}

void __82__NCBannerTransitionBlockingPrototypeRecipe_initWithNotificationAlertDestination___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _popTopAssertion];
}

- (void)_pushNewAssertion
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_assertions)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    assertions = selfCopy->_assertions;
    selfCopy->_assertions = v3;
  }

  WeakRetained = objc_loadWeakRetained(&selfCopy->_notificationAlertDestination);
  activeNotificationRequestPresenter = [WeakRetained activeNotificationRequestPresenter];

  if (activeNotificationRequestPresenter)
  {
    objc_initWeak(&location, selfCopy);
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"transitionBlockingPrototypeRecipe-%ld", -[NSMutableArray count](selfCopy->_assertions, "count")];
    v8 = [activeNotificationRequestPresenter requestTransitionBlockingAssertionWithReason:v7];

    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __62__NCBannerTransitionBlockingPrototypeRecipe__pushNewAssertion__block_invoke;
    v9[3] = &unk_27836F450;
    objc_copyWeak(&v10, &location);
    [v8 addInvalidationBlock:v9];
    if (v8)
    {
      [(NSMutableArray *)selfCopy->_assertions addObject:v8];
    }

    objc_destroyWeak(&v10);

    objc_destroyWeak(&location);
  }

  objc_sync_exit(selfCopy);
}

void __62__NCBannerTransitionBlockingPrototypeRecipe__pushNewAssertion__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = WeakRetained;
    objc_sync_enter(v8);
    [v8[1] removeObject:v9];
    objc_sync_exit(v8);
  }
}

- (void)_popTopAssertion
{
  obj = self;
  objc_sync_enter(obj);
  lastObject = [(NSMutableArray *)obj->_assertions lastObject];
  [(NSMutableArray *)obj->_assertions removeLastObject];
  [lastObject invalidateWithReason:@"popTopAssertion"];

  objc_sync_exit(obj);
}

- (NCNotificationAlertDestinationPrototyping)notificationAlertDestination
{
  WeakRetained = objc_loadWeakRetained(&self->_notificationAlertDestination);

  return WeakRetained;
}

@end