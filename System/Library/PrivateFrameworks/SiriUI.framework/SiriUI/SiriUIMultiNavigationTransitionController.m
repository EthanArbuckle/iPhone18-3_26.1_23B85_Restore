@interface SiriUIMultiNavigationTransitionController
- (NSArray)additionalCoordinationControllers;
- (SiriUIMultiNavigationTransitionController)initWithPrimaryTransitionController:(id)a3;
- (UINavigationController)_navigationController;
- (UIViewControllerAnimatedTransitioning)animationController;
- (id)interactionControllerForAnimationController:(id)a3;
- (void)addAdditionalCoordinationController:(id)a3;
- (void)configureWithNavigationController:(id)a3;
- (void)coordinateAdditionalTransitionsWithTransitionCoordinator:(id)a3;
- (void)setOperation:(int64_t)a3;
@end

@implementation SiriUIMultiNavigationTransitionController

- (SiriUIMultiNavigationTransitionController)initWithPrimaryTransitionController:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = SiriUIMultiNavigationTransitionController;
  v6 = [(SiriUIMultiNavigationTransitionController *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_primaryTransitionController, a3);
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    mutableAdditionalCoordinationControllers = v7->_mutableAdditionalCoordinationControllers;
    v7->_mutableAdditionalCoordinationControllers = v8;
  }

  return v7;
}

- (NSArray)additionalCoordinationControllers
{
  v2 = [(SiriUIMultiNavigationTransitionController *)self _mutableAdditionalCoordinationControllers];
  v3 = [v2 copy];

  return v3;
}

- (void)addAdditionalCoordinationController:(id)a3
{
  v6 = a3;
  [(NSMutableArray *)self->_mutableAdditionalCoordinationControllers addObject:?];
  v4 = [(SiriUIMultiNavigationTransitionController *)self _navigationController];
  if (v4)
  {
    [v6 configureWithNavigationController:v4];
  }

  v5 = [(SiriUIMultiNavigationTransitionController *)self operation];
  if (objc_opt_respondsToSelector())
  {
    [v6 setOperation:v5];
  }
}

- (void)setOperation:(int64_t)a3
{
  v17 = *MEMORY[0x277D85DE8];
  if (self->_operation != a3)
  {
    self->_operation = a3;
    v5 = [(SiriUIMultiNavigationTransitionController *)self primaryTransitionController];
    if (objc_opt_respondsToSelector())
    {
      [v5 setOperation:a3];
    }

    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = [(SiriUIMultiNavigationTransitionController *)self additionalCoordinationControllers];
    v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        v10 = 0;
        do
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v12 + 1) + 8 * v10);
          if (objc_opt_respondsToSelector())
          {
            [v11 setOperation:a3];
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }
  }
}

- (void)configureWithNavigationController:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SiriUIMultiNavigationTransitionController *)self primaryTransitionController];
  if (objc_opt_respondsToSelector())
  {
    [v5 configureWithNavigationController:v4];
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [(SiriUIMultiNavigationTransitionController *)self additionalCoordinationControllers];
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          [v11 configureWithNavigationController:v4];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  [(SiriUIMultiNavigationTransitionController *)self _setNavigationController:v4];
}

- (UIViewControllerAnimatedTransitioning)animationController
{
  v2 = [(SiriUIMultiNavigationTransitionController *)self primaryTransitionController];
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 animationController];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)interactionControllerForAnimationController:(id)a3
{
  v4 = a3;
  v5 = [(SiriUIMultiNavigationTransitionController *)self primaryTransitionController];
  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 interactionControllerForAnimationController:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)coordinateAdditionalTransitionsWithTransitionCoordinator:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SiriUIMultiNavigationTransitionController *)self primaryTransitionController];
  if (objc_opt_respondsToSelector())
  {
    [v5 coordinateAdditionalTransitionsWithTransitionCoordinator:v4];
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [(SiriUIMultiNavigationTransitionController *)self additionalCoordinationControllers];
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          [v11 coordinateAdditionalTransitionsWithTransitionCoordinator:v4];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (UINavigationController)_navigationController
{
  WeakRetained = objc_loadWeakRetained(&self->_navigationController);

  return WeakRetained;
}

@end