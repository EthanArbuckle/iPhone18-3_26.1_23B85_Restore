@interface BFFNavigationController
- (BFFNavigationController)init;
- (BOOL)prefersStatusBarHidden;
- (CGSize)forcedPreferredContentSize;
- (CGSize)preferredContentSize;
- (UIColor)backgroundColor;
- (id)initIgnoringDismissals:(BOOL)dismissals;
- (id)observers;
- (id)popToRootViewControllerAnimated:(BOOL)animated;
- (id)popToViewController:(id)controller animated:(BOOL)animated;
- (id)popViewControllerAnimated:(BOOL)animated;
- (int64_t)preferredStatusBarStyle;
- (unint64_t)supportedInterfaceOrientations;
- (void)addDelegateObserver:(id)observer;
- (void)dismissViewControllerAnimated:(BOOL)animated completion:(id)completion;
- (void)dismissViewControllerWithTransition:(int)transition completion:(id)completion;
- (void)popToViewController:(id)controller completion:(id)completion;
- (void)pushViewController:(id)controller animated:(BOOL)animated;
- (void)pushViewController:(id)controller completion:(id)completion;
- (void)pushViewController:(id)controller usingShieldColor:(id)color completion:(id)completion;
- (void)reapObservers;
- (void)removeDelegateObserver:(id)observer;
- (void)setBackgroundColor:(id)color;
- (void)setCustomAnimatorProviderBlock:(id)block;
- (void)setDelegate:(id)delegate;
- (void)setViewControllers:(id)controllers animated:(BOOL)animated;
@end

@implementation BFFNavigationController

- (BFFNavigationController)init
{
  v14.receiver = self;
  v14.super_class = BFFNavigationController;
  v2 = [(BFFNavigationController *)&v14 init];
  if (v2)
  {
    v3 = objc_opt_new();
    observers = v2->_observers;
    v2->_observers = v3;

    v5 = objc_opt_new();
    appearanceHandlers = v2->_appearanceHandlers;
    v2->_appearanceHandlers = v5;

    v2->_pendingShowOperation = 0;
    v7 = [[BFFNavigationControllerDefaultDelegate alloc] initWithNavigationController:v2 stateContainer:v2];
    navigationControllerDelegate = v2->_navigationControllerDelegate;
    v2->_navigationControllerDelegate = v7;

    v9 = objc_opt_new();
    isSolariumEnabled = [v9 isSolariumEnabled];

    if (isSolariumEnabled)
    {
      [(BFFNavigationController *)v2 _setBuiltinTransitionStyle:1];
      [(BFFNavigationController *)v2 _setBuiltinTransitionGap:0.0];
    }

    v11 = v2->_navigationControllerDelegate;
    v13.receiver = v2;
    v13.super_class = BFFNavigationController;
    [(BFFNavigationController *)&v13 setDelegate:v11];
  }

  return v2;
}

- (id)initIgnoringDismissals:(BOOL)dismissals
{
  result = [(BFFNavigationController *)self init];
  if (result)
  {
    *(result + 1490) = dismissals;
  }

  return result;
}

- (unint64_t)supportedInterfaceOrientations
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

- (void)setBackgroundColor:(id)color
{
  colorCopy = color;
  if (self->_backgroundColor != colorCopy)
  {
    v8 = colorCopy;
    objc_storeStrong(&self->_backgroundColor, color);
    view = [(BFFNavigationController *)self view];
    backgroundColor = [(BFFNavigationController *)self backgroundColor];
    [view setBackgroundColor:backgroundColor];

    colorCopy = v8;
  }
}

- (UIColor)backgroundColor
{
  backgroundColor = self->_backgroundColor;
  if (backgroundColor)
  {
    backgroundColor = backgroundColor;
  }

  else
  {
    v4 = +[BFFStyle sharedStyle];
    backgroundColor = [v4 backgroundColor];
  }

  return backgroundColor;
}

- (int64_t)preferredStatusBarStyle
{
  topViewController = [(BFFNavigationController *)self topViewController];
  preferredStatusBarStyle = [topViewController preferredStatusBarStyle];

  if (!preferredStatusBarStyle)
  {
    return 0;
  }

  topViewController2 = [(BFFNavigationController *)self topViewController];
  preferredStatusBarStyle2 = [topViewController2 preferredStatusBarStyle];

  return preferredStatusBarStyle2;
}

- (BOOL)prefersStatusBarHidden
{
  topViewController = [(BFFNavigationController *)self topViewController];
  prefersStatusBarHidden = [topViewController prefersStatusBarHidden];

  return prefersStatusBarHidden;
}

- (CGSize)preferredContentSize
{
  [(BFFNavigationController *)self forcedPreferredContentSize];
  if (v4 == *MEMORY[0x277CBF3A8] && v3 == *(MEMORY[0x277CBF3A8] + 8))
  {
    v8.receiver = self;
    v8.super_class = BFFNavigationController;
    [(BFFNavigationController *)&v8 preferredContentSize];
  }

  else
  {

    [(BFFNavigationController *)self forcedPreferredContentSize];
  }

  result.height = v7;
  result.width = v6;
  return result;
}

- (void)pushViewController:(id)controller animated:(BOOL)animated
{
  animatedCopy = animated;
  v28 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  v7 = +[BFFStyle sharedStyle];
  navigationItem = [controllerCopy navigationItem];
  [v7 applyAutomaticScrollToEdgeBehaviorOnNavigationItem:navigationItem];

  self->_pendingShowOperation = 1;
  backgroundColor = [(BFFNavigationController *)self backgroundColor];

  if (backgroundColor)
  {
    view = [controllerCopy view];
    backgroundColor2 = [(BFFNavigationController *)self backgroundColor];
    [view setBackgroundColor:backgroundColor2];
  }

  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  applicationState = [mEMORY[0x277D75128] applicationState];

  if ([(BFFNavigationController *)self pushWithoutDeferringTransitionsWhileInBackground]&& applicationState)
  {
    v14 = _BYLoggingFacility();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      *buf = 138412290;
      v27 = v16;
      _os_log_impl(&dword_265AC5000, v14, OS_LOG_TYPE_DEFAULT, "Will push %@ without deferring transitions (will not animate)", buf, 0xCu);
    }

    v17 = MEMORY[0x277D75D28];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __55__BFFNavigationController_pushViewController_animated___block_invoke;
    v23[3] = &unk_279BB4A70;
    v24 = controllerCopy;
    selfCopy = self;
    [v17 _performWithoutDeferringTransitions:v23];
  }

  else if (applicationState)
  {
    v18 = _BYLoggingFacility();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = objc_opt_class();
      v20 = NSStringFromClass(v19);
      *buf = 138412290;
      v27 = v20;
      _os_log_impl(&dword_265AC5000, v18, OS_LOG_TYPE_DEFAULT, "Will push %@ in background (will not animate)", buf, 0xCu);
    }

    [(BFFNavigationController *)&v22 pushViewController:controllerCopy animated:0, v21.receiver, v21.super_class, self, BFFNavigationController];
  }

  else
  {
    [(BFFNavigationController *)&v21 pushViewController:controllerCopy animated:animatedCopy, self, BFFNavigationController, v22.receiver, v22.super_class];
  }
}

id __55__BFFNavigationController_pushViewController_animated___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3.receiver = *(a1 + 40);
  v3.super_class = BFFNavigationController;
  return objc_msgSendSuper2(&v3, sel_pushViewController_animated_, v1, 0);
}

- (id)popViewControllerAnimated:(BOOL)animated
{
  self->_pendingShowOperation = 2;
  v5.receiver = self;
  v5.super_class = BFFNavigationController;
  v3 = [(BFFNavigationController *)&v5 popViewControllerAnimated:animated];

  return v3;
}

- (id)popToViewController:(id)controller animated:(BOOL)animated
{
  animatedCopy = animated;
  controllerCopy = controller;
  viewControllers = [(BFFNavigationController *)self viewControllers];
  lastObject = [viewControllers lastObject];

  if (lastObject != controllerCopy)
  {
    self->_pendingShowOperation = 2;
  }

  v11.receiver = self;
  v11.super_class = BFFNavigationController;
  v9 = [(BFFNavigationController *)&v11 popToViewController:controllerCopy animated:animatedCopy];

  return v9;
}

- (id)popToRootViewControllerAnimated:(BOOL)animated
{
  animatedCopy = animated;
  viewControllers = [(BFFNavigationController *)self viewControllers];
  v6 = [viewControllers count];

  if (v6 >= 2)
  {
    self->_pendingShowOperation = 2;
  }

  v9.receiver = self;
  v9.super_class = BFFNavigationController;
  v7 = [(BFFNavigationController *)&v9 popToRootViewControllerAnimated:animatedCopy];

  return v7;
}

- (void)pushViewController:(id)controller completion:(id)completion
{
  aBlock = completion;
  v6 = MEMORY[0x277CCAE60];
  controllerCopy = controller;
  v8 = [v6 valueWithPointer:controllerCopy];
  appearanceHandlers = self->_appearanceHandlers;
  if (aBlock)
  {
    v10 = _Block_copy(aBlock);
    [(NSMutableDictionary *)appearanceHandlers setObject:v10 forKey:v8];
  }

  else
  {
    [(NSMutableDictionary *)appearanceHandlers removeObjectForKey:v8];
  }

  [(BFFNavigationController *)self pushViewController:controllerCopy animated:1];
}

- (void)pushViewController:(id)controller usingShieldColor:(id)color completion:(id)completion
{
  v52 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  colorCopy = color;
  completionCopy = completion;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v7 = _BYLoggingFacility();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v51 = colorCopy;
    _os_log_impl(&dword_265AC5000, v7, OS_LOG_TYPE_DEFAULT, "will transition to shield color %@", buf, 0xCu);
  }

  v8 = objc_alloc_init(MEMORY[0x277D75D18]);
  clearColor = [MEMORY[0x277D75348] clearColor];
  [v8 setBackgroundColor:clearColor];

  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  view = [(BFFNavigationController *)self view];
  [view bounds];
  [v8 setFrame:?];

  view2 = [(BFFNavigationController *)self view];
  [view2 addSubview:v8];

  v29 = MEMORY[0x277CCAAD0];
  topAnchor = [v8 topAnchor];
  view3 = [(BFFNavigationController *)self view];
  topAnchor2 = [view3 topAnchor];
  v35 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v49[0] = v35;
  leftAnchor = [v8 leftAnchor];
  view4 = [(BFFNavigationController *)self view];
  leftAnchor2 = [view4 leftAnchor];
  v31 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
  v49[1] = v31;
  widthAnchor = [v8 widthAnchor];
  view5 = [(BFFNavigationController *)self view];
  widthAnchor2 = [view5 widthAnchor];
  v15 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
  v49[2] = v15;
  heightAnchor = [v8 heightAnchor];
  view6 = [(BFFNavigationController *)self view];
  heightAnchor2 = [view6 heightAnchor];
  v19 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
  v49[3] = v19;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v49 count:4];
  [v29 activateConstraints:v20];

  objc_initWeak(buf, self);
  v21 = MEMORY[0x277D75D18];
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = __74__BFFNavigationController_pushViewController_usingShieldColor_completion___block_invoke;
  v46[3] = &unk_279BB4A70;
  v22 = v8;
  v47 = v22;
  v48 = colorCopy;
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __74__BFFNavigationController_pushViewController_usingShieldColor_completion___block_invoke_2;
  v40[3] = &unk_279BB4EC8;
  v23 = v48;
  v41 = v23;
  objc_copyWeak(&v45, buf);
  v24 = controllerCopy;
  v42 = v24;
  v25 = completionCopy;
  v44 = v25;
  v26 = v22;
  v43 = v26;
  [v21 animateWithDuration:v46 animations:v40 completion:0.5];

  objc_destroyWeak(&v45);
  objc_destroyWeak(buf);
}

void __74__BFFNavigationController_pushViewController_usingShieldColor_completion___block_invoke_2(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = _BYLoggingFacility();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v19 = v3;
    _os_log_impl(&dword_265AC5000, v2, OS_LOG_TYPE_DEFAULT, "did transition to shield color %@", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v5 = [MEMORY[0x277CCAE60] valueWithPointer:*(a1 + 40)];
  v6 = *(a1 + 56);
  v7 = WeakRetained[188];
  if (v6)
  {
    v8 = _Block_copy(v6);
    [v7 setObject:v8 forKey:v5];
  }

  else
  {
    [WeakRetained[188] removeObjectForKey:v5];
  }

  v9 = [WeakRetained viewControllers];
  v10 = [v9 arrayByAddingObject:*(a1 + 40)];
  [WeakRetained setViewControllers:v10];

  v11 = [WeakRetained view];
  [v11 bringSubviewToFront:*(a1 + 48)];

  v12 = MEMORY[0x277D75D18];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __74__BFFNavigationController_pushViewController_usingShieldColor_completion___block_invoke_38;
  v16[3] = &unk_279BB49A8;
  v17 = *(a1 + 48);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __74__BFFNavigationController_pushViewController_usingShieldColor_completion___block_invoke_2_39;
  v13[3] = &unk_279BB4EA0;
  v14 = *(a1 + 32);
  v15 = *(a1 + 48);
  [v12 animateWithDuration:v16 animations:v13 completion:0.5];
}

void __74__BFFNavigationController_pushViewController_usingShieldColor_completion___block_invoke_38(uint64_t a1)
{
  v2 = [MEMORY[0x277D75348] clearColor];
  [*(a1 + 32) setBackgroundColor:v2];
}

uint64_t __74__BFFNavigationController_pushViewController_usingShieldColor_completion___block_invoke_2_39(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = _BYLoggingFacility();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_265AC5000, v2, OS_LOG_TYPE_DEFAULT, "did transition from shield color %@", &v5, 0xCu);
  }

  return [*(a1 + 40) removeFromSuperview];
}

- (void)popToViewController:(id)controller completion:(id)completion
{
  controllerCopy = controller;
  completionCopy = completion;
  v7 = [MEMORY[0x277CCAE60] valueWithPointer:controllerCopy];
  appearanceHandlers = self->_appearanceHandlers;
  if (completionCopy)
  {
    v9 = _Block_copy(completionCopy);
    [(NSMutableDictionary *)appearanceHandlers setObject:v9 forKey:v7];
  }

  else
  {
    [(NSMutableDictionary *)self->_appearanceHandlers removeObjectForKey:v7];
  }

  v10 = [(BFFNavigationController *)self popToViewController:controllerCopy animated:1];
}

- (void)setViewControllers:(id)controllers animated:(BOOL)animated
{
  animatedCopy = animated;
  v37 = *MEMORY[0x277D85DE8];
  controllersCopy = controllers;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v7 = [controllersCopy countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v32;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v32 != v9)
        {
          objc_enumerationMutation(controllersCopy);
        }

        v11 = *(*(&v31 + 1) + 8 * i);
        v12 = +[BFFStyle sharedStyle];
        navigationItem = [v11 navigationItem];
        [v12 applyAutomaticScrollToEdgeBehaviorOnNavigationItem:navigationItem];
      }

      v8 = [controllersCopy countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v8);
  }

  viewControllers = [(BFFNavigationController *)self viewControllers];
  lastObject = [controllersCopy lastObject];
  v16 = [viewControllers containsObject:lastObject];

  if ((v16 & 1) == 0)
  {
    self->_pendingShowOperation = 1;
  }

  backgroundColor = [(BFFNavigationController *)self backgroundColor];

  if (backgroundColor)
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v18 = controllersCopy;
    v19 = [v18 countByEnumeratingWithState:&v27 objects:v35 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v28;
      do
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v28 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v27 + 1) + 8 * j);
          if ([v23 isViewLoaded])
          {
            view = [v23 view];
            backgroundColor2 = [(BFFNavigationController *)self backgroundColor];
            [view setBackgroundColor:backgroundColor2];
          }
        }

        v20 = [v18 countByEnumeratingWithState:&v27 objects:v35 count:16];
      }

      while (v20);
    }
  }

  v26.receiver = self;
  v26.super_class = BFFNavigationController;
  [(BFFNavigationController *)&v26 setViewControllers:controllersCopy animated:animatedCopy];
}

- (void)dismissViewControllerWithTransition:(int)transition completion:(id)completion
{
  v4 = *&transition;
  v12 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  if ([(BFFNavigationController *)self ignoreDismissals]&& ([(BFFNavigationController *)self presentedViewController], v7 = objc_claimAutoreleasedReturnValue(), v7, !v7))
  {
    v8 = _BYLoggingFacility();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_265AC5000, v8, OS_LOG_TYPE_DEFAULT, "Preventing dismissal of %@...", buf, 0xCu);
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }
  }

  else
  {
    v9.receiver = self;
    v9.super_class = BFFNavigationController;
    [(BFFNavigationController *)&v9 dismissViewControllerWithTransition:v4 completion:completionCopy];
  }
}

- (void)dismissViewControllerAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  v12 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  if ([(BFFNavigationController *)self ignoreDismissals]&& ([(BFFNavigationController *)self presentedViewController], v7 = objc_claimAutoreleasedReturnValue(), v7, !v7))
  {
    v8 = _BYLoggingFacility();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_265AC5000, v8, OS_LOG_TYPE_DEFAULT, "Preventing dismissal of %@...", buf, 0xCu);
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }
  }

  else
  {
    v9.receiver = self;
    v9.super_class = BFFNavigationController;
    [(BFFNavigationController *)&v9 dismissViewControllerAnimated:animatedCopy completion:completionCopy];
  }
}

- (void)setDelegate:(id)delegate
{
  if (delegate)
  {
    delegateCopy = delegate;
    [(BFFNavigationController *)self removeDelegateObserver:delegateCopy];
    [(BFFNavigationController *)self addDelegateObserver:delegateCopy];
  }
}

- (void)addDelegateObserver:(id)observer
{
  observers = self->_observers;
  v4 = [BFFNavigationObserver observerWithObserver:observer];
  [(NSMutableArray *)observers addObject:v4];
}

- (void)removeDelegateObserver:(id)observer
{
  observerCopy = observer;
  observers = self->_observers;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __50__BFFNavigationController_removeDelegateObserver___block_invoke;
  v8[3] = &unk_279BB4EF0;
  v6 = observerCopy;
  v9 = v6;
  v7 = [(NSMutableArray *)observers indexOfObjectPassingTest:v8];
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(NSMutableArray *)self->_observers removeObjectAtIndex:v7];
  }
}

BOOL __50__BFFNavigationController_removeDelegateObserver___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 observer];
  v4 = v3 == *(a1 + 32);

  return v4;
}

- (id)observers
{
  v2 = [(NSMutableArray *)self->_observers copy];

  return v2;
}

- (void)reapObservers
{
  v3 = [(NSMutableArray *)self->_observers indexesOfObjectsPassingTest:&__block_literal_global_2];
  [(NSMutableArray *)self->_observers removeObjectsAtIndexes:v3];
}

BOOL __40__BFFNavigationController_reapObservers__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 observer];
  v3 = v2 == 0;

  return v3;
}

- (void)setCustomAnimatorProviderBlock:(id)block
{
  blockCopy = block;
  navigationControllerDelegate = [(BFFNavigationController *)self navigationControllerDelegate];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (blockCopy)
  {
    if (isKindOfClass)
    {
      navigationControllerDelegate2 = [(BFFNavigationController *)self navigationControllerDelegate];
      [navigationControllerDelegate2 setCustomAnimatorBlock:blockCopy];

LABEL_7:
      v8 = 0;
      goto LABEL_11;
    }

    v8 = [(BFFNavigationControllerDefaultDelegate *)[BFFNavigationControllerTransitionDelegate alloc] initWithNavigationController:self stateContainer:self];
    [(BFFNavigationControllerTransitionDelegate *)v8 setCustomAnimatorBlock:blockCopy];
    if (!v8)
    {
      goto LABEL_11;
    }
  }

  else
  {
    if ((isKindOfClass & 1) == 0)
    {
      goto LABEL_7;
    }

    v8 = [[BFFNavigationControllerDefaultDelegate alloc] initWithNavigationController:self stateContainer:self];
    if (!v8)
    {
      goto LABEL_11;
    }
  }

  navigationControllerDelegate3 = [(BFFNavigationController *)self navigationControllerDelegate];

  if (navigationControllerDelegate3 != v8)
  {
    [(BFFNavigationController *)self setNavigationControllerDelegate:v8];
    navigationControllerDelegate4 = [(BFFNavigationController *)self navigationControllerDelegate];
    v11.receiver = self;
    v11.super_class = BFFNavigationController;
    [(BFFNavigationController *)&v11 setDelegate:navigationControllerDelegate4];
  }

LABEL_11:
}

- (CGSize)forcedPreferredContentSize
{
  width = self->_forcedPreferredContentSize.width;
  height = self->_forcedPreferredContentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end