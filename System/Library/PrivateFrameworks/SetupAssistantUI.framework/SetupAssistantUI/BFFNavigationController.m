@interface BFFNavigationController
- (BFFNavigationController)init;
- (BOOL)prefersStatusBarHidden;
- (CGSize)forcedPreferredContentSize;
- (CGSize)preferredContentSize;
- (UIColor)backgroundColor;
- (id)initIgnoringDismissals:(BOOL)a3;
- (id)observers;
- (id)popToRootViewControllerAnimated:(BOOL)a3;
- (id)popToViewController:(id)a3 animated:(BOOL)a4;
- (id)popViewControllerAnimated:(BOOL)a3;
- (int64_t)preferredStatusBarStyle;
- (unint64_t)supportedInterfaceOrientations;
- (void)addDelegateObserver:(id)a3;
- (void)dismissViewControllerAnimated:(BOOL)a3 completion:(id)a4;
- (void)dismissViewControllerWithTransition:(int)a3 completion:(id)a4;
- (void)popToViewController:(id)a3 completion:(id)a4;
- (void)pushViewController:(id)a3 animated:(BOOL)a4;
- (void)pushViewController:(id)a3 completion:(id)a4;
- (void)pushViewController:(id)a3 usingShieldColor:(id)a4 completion:(id)a5;
- (void)reapObservers;
- (void)removeDelegateObserver:(id)a3;
- (void)setBackgroundColor:(id)a3;
- (void)setCustomAnimatorProviderBlock:(id)a3;
- (void)setDelegate:(id)a3;
- (void)setViewControllers:(id)a3 animated:(BOOL)a4;
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
    v10 = [v9 isSolariumEnabled];

    if (v10)
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

- (id)initIgnoringDismissals:(BOOL)a3
{
  result = [(BFFNavigationController *)self init];
  if (result)
  {
    *(result + 1490) = a3;
  }

  return result;
}

- (unint64_t)supportedInterfaceOrientations
{
  v2 = [MEMORY[0x277D75418] currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if (v3 == 1)
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

- (void)setBackgroundColor:(id)a3
{
  v5 = a3;
  if (self->_backgroundColor != v5)
  {
    v8 = v5;
    objc_storeStrong(&self->_backgroundColor, a3);
    v6 = [(BFFNavigationController *)self view];
    v7 = [(BFFNavigationController *)self backgroundColor];
    [v6 setBackgroundColor:v7];

    v5 = v8;
  }
}

- (UIColor)backgroundColor
{
  backgroundColor = self->_backgroundColor;
  if (backgroundColor)
  {
    v3 = backgroundColor;
  }

  else
  {
    v4 = +[BFFStyle sharedStyle];
    v3 = [v4 backgroundColor];
  }

  return v3;
}

- (int64_t)preferredStatusBarStyle
{
  v3 = [(BFFNavigationController *)self topViewController];
  v4 = [v3 preferredStatusBarStyle];

  if (!v4)
  {
    return 0;
  }

  v5 = [(BFFNavigationController *)self topViewController];
  v6 = [v5 preferredStatusBarStyle];

  return v6;
}

- (BOOL)prefersStatusBarHidden
{
  v2 = [(BFFNavigationController *)self topViewController];
  v3 = [v2 prefersStatusBarHidden];

  return v3;
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

- (void)pushViewController:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = +[BFFStyle sharedStyle];
  v8 = [v6 navigationItem];
  [v7 applyAutomaticScrollToEdgeBehaviorOnNavigationItem:v8];

  self->_pendingShowOperation = 1;
  v9 = [(BFFNavigationController *)self backgroundColor];

  if (v9)
  {
    v10 = [v6 view];
    v11 = [(BFFNavigationController *)self backgroundColor];
    [v10 setBackgroundColor:v11];
  }

  v12 = [MEMORY[0x277D75128] sharedApplication];
  v13 = [v12 applicationState];

  if ([(BFFNavigationController *)self pushWithoutDeferringTransitionsWhileInBackground]&& v13)
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
    v24 = v6;
    v25 = self;
    [v17 _performWithoutDeferringTransitions:v23];
  }

  else if (v13)
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

    [(BFFNavigationController *)&v22 pushViewController:v6 animated:0, v21.receiver, v21.super_class, self, BFFNavigationController];
  }

  else
  {
    [(BFFNavigationController *)&v21 pushViewController:v6 animated:v4, self, BFFNavigationController, v22.receiver, v22.super_class];
  }
}

id __55__BFFNavigationController_pushViewController_animated___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3.receiver = *(a1 + 40);
  v3.super_class = BFFNavigationController;
  return objc_msgSendSuper2(&v3, sel_pushViewController_animated_, v1, 0);
}

- (id)popViewControllerAnimated:(BOOL)a3
{
  self->_pendingShowOperation = 2;
  v5.receiver = self;
  v5.super_class = BFFNavigationController;
  v3 = [(BFFNavigationController *)&v5 popViewControllerAnimated:a3];

  return v3;
}

- (id)popToViewController:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(BFFNavigationController *)self viewControllers];
  v8 = [v7 lastObject];

  if (v8 != v6)
  {
    self->_pendingShowOperation = 2;
  }

  v11.receiver = self;
  v11.super_class = BFFNavigationController;
  v9 = [(BFFNavigationController *)&v11 popToViewController:v6 animated:v4];

  return v9;
}

- (id)popToRootViewControllerAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(BFFNavigationController *)self viewControllers];
  v6 = [v5 count];

  if (v6 >= 2)
  {
    self->_pendingShowOperation = 2;
  }

  v9.receiver = self;
  v9.super_class = BFFNavigationController;
  v7 = [(BFFNavigationController *)&v9 popToRootViewControllerAnimated:v3];

  return v7;
}

- (void)pushViewController:(id)a3 completion:(id)a4
{
  aBlock = a4;
  v6 = MEMORY[0x277CCAE60];
  v7 = a3;
  v8 = [v6 valueWithPointer:v7];
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

  [(BFFNavigationController *)self pushViewController:v7 animated:1];
}

- (void)pushViewController:(id)a3 usingShieldColor:(id)a4 completion:(id)a5
{
  v52 = *MEMORY[0x277D85DE8];
  v28 = a3;
  v30 = a4;
  v27 = a5;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v7 = _BYLoggingFacility();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v51 = v30;
    _os_log_impl(&dword_265AC5000, v7, OS_LOG_TYPE_DEFAULT, "will transition to shield color %@", buf, 0xCu);
  }

  v8 = objc_alloc_init(MEMORY[0x277D75D18]);
  v9 = [MEMORY[0x277D75348] clearColor];
  [v8 setBackgroundColor:v9];

  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  v10 = [(BFFNavigationController *)self view];
  [v10 bounds];
  [v8 setFrame:?];

  v11 = [(BFFNavigationController *)self view];
  [v11 addSubview:v8];

  v29 = MEMORY[0x277CCAAD0];
  v37 = [v8 topAnchor];
  v38 = [(BFFNavigationController *)self view];
  v36 = [v38 topAnchor];
  v35 = [v37 constraintEqualToAnchor:v36];
  v49[0] = v35;
  v33 = [v8 leftAnchor];
  v34 = [(BFFNavigationController *)self view];
  v32 = [v34 leftAnchor];
  v31 = [v33 constraintEqualToAnchor:v32];
  v49[1] = v31;
  v12 = [v8 widthAnchor];
  v13 = [(BFFNavigationController *)self view];
  v14 = [v13 widthAnchor];
  v15 = [v12 constraintEqualToAnchor:v14];
  v49[2] = v15;
  v16 = [v8 heightAnchor];
  v17 = [(BFFNavigationController *)self view];
  v18 = [v17 heightAnchor];
  v19 = [v16 constraintEqualToAnchor:v18];
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
  v48 = v30;
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __74__BFFNavigationController_pushViewController_usingShieldColor_completion___block_invoke_2;
  v40[3] = &unk_279BB4EC8;
  v23 = v48;
  v41 = v23;
  objc_copyWeak(&v45, buf);
  v24 = v28;
  v42 = v24;
  v25 = v27;
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

- (void)popToViewController:(id)a3 completion:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CCAE60] valueWithPointer:v11];
  appearanceHandlers = self->_appearanceHandlers;
  if (v6)
  {
    v9 = _Block_copy(v6);
    [(NSMutableDictionary *)appearanceHandlers setObject:v9 forKey:v7];
  }

  else
  {
    [(NSMutableDictionary *)self->_appearanceHandlers removeObjectForKey:v7];
  }

  v10 = [(BFFNavigationController *)self popToViewController:v11 animated:1];
}

- (void)setViewControllers:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v37 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v31 objects:v36 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v31 + 1) + 8 * i);
        v12 = +[BFFStyle sharedStyle];
        v13 = [v11 navigationItem];
        [v12 applyAutomaticScrollToEdgeBehaviorOnNavigationItem:v13];
      }

      v8 = [v6 countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v8);
  }

  v14 = [(BFFNavigationController *)self viewControllers];
  v15 = [v6 lastObject];
  v16 = [v14 containsObject:v15];

  if ((v16 & 1) == 0)
  {
    self->_pendingShowOperation = 1;
  }

  v17 = [(BFFNavigationController *)self backgroundColor];

  if (v17)
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v18 = v6;
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
            v24 = [v23 view];
            v25 = [(BFFNavigationController *)self backgroundColor];
            [v24 setBackgroundColor:v25];
          }
        }

        v20 = [v18 countByEnumeratingWithState:&v27 objects:v35 count:16];
      }

      while (v20);
    }
  }

  v26.receiver = self;
  v26.super_class = BFFNavigationController;
  [(BFFNavigationController *)&v26 setViewControllers:v6 animated:v4];
}

- (void)dismissViewControllerWithTransition:(int)a3 completion:(id)a4
{
  v4 = *&a3;
  v12 = *MEMORY[0x277D85DE8];
  v6 = a4;
  if ([(BFFNavigationController *)self ignoreDismissals]&& ([(BFFNavigationController *)self presentedViewController], v7 = objc_claimAutoreleasedReturnValue(), v7, !v7))
  {
    v8 = _BYLoggingFacility();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v11 = self;
      _os_log_impl(&dword_265AC5000, v8, OS_LOG_TYPE_DEFAULT, "Preventing dismissal of %@...", buf, 0xCu);
    }

    if (v6)
    {
      v6[2](v6);
    }
  }

  else
  {
    v9.receiver = self;
    v9.super_class = BFFNavigationController;
    [(BFFNavigationController *)&v9 dismissViewControllerWithTransition:v4 completion:v6];
  }
}

- (void)dismissViewControllerAnimated:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v12 = *MEMORY[0x277D85DE8];
  v6 = a4;
  if ([(BFFNavigationController *)self ignoreDismissals]&& ([(BFFNavigationController *)self presentedViewController], v7 = objc_claimAutoreleasedReturnValue(), v7, !v7))
  {
    v8 = _BYLoggingFacility();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v11 = self;
      _os_log_impl(&dword_265AC5000, v8, OS_LOG_TYPE_DEFAULT, "Preventing dismissal of %@...", buf, 0xCu);
    }

    if (v6)
    {
      v6[2](v6);
    }
  }

  else
  {
    v9.receiver = self;
    v9.super_class = BFFNavigationController;
    [(BFFNavigationController *)&v9 dismissViewControllerAnimated:v4 completion:v6];
  }
}

- (void)setDelegate:(id)a3
{
  if (a3)
  {
    v4 = a3;
    [(BFFNavigationController *)self removeDelegateObserver:v4];
    [(BFFNavigationController *)self addDelegateObserver:v4];
  }
}

- (void)addDelegateObserver:(id)a3
{
  observers = self->_observers;
  v4 = [BFFNavigationObserver observerWithObserver:a3];
  [(NSMutableArray *)observers addObject:v4];
}

- (void)removeDelegateObserver:(id)a3
{
  v4 = a3;
  observers = self->_observers;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __50__BFFNavigationController_removeDelegateObserver___block_invoke;
  v8[3] = &unk_279BB4EF0;
  v6 = v4;
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

- (void)setCustomAnimatorProviderBlock:(id)a3
{
  v4 = a3;
  v5 = [(BFFNavigationController *)self navigationControllerDelegate];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (v4)
  {
    if (isKindOfClass)
    {
      v7 = [(BFFNavigationController *)self navigationControllerDelegate];
      [v7 setCustomAnimatorBlock:v4];

LABEL_7:
      v8 = 0;
      goto LABEL_11;
    }

    v8 = [(BFFNavigationControllerDefaultDelegate *)[BFFNavigationControllerTransitionDelegate alloc] initWithNavigationController:self stateContainer:self];
    [(BFFNavigationControllerTransitionDelegate *)v8 setCustomAnimatorBlock:v4];
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

  v9 = [(BFFNavigationController *)self navigationControllerDelegate];

  if (v9 != v8)
  {
    [(BFFNavigationController *)self setNavigationControllerDelegate:v8];
    v10 = [(BFFNavigationController *)self navigationControllerDelegate];
    v11.receiver = self;
    v11.super_class = BFFNavigationController;
    [(BFFNavigationController *)&v11 setDelegate:v10];
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