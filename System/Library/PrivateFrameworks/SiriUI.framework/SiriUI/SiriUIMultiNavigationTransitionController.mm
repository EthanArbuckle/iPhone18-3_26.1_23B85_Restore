@interface SiriUIMultiNavigationTransitionController
- (NSArray)additionalCoordinationControllers;
- (SiriUIMultiNavigationTransitionController)initWithPrimaryTransitionController:(id)controller;
- (UINavigationController)_navigationController;
- (UIViewControllerAnimatedTransitioning)animationController;
- (id)interactionControllerForAnimationController:(id)controller;
- (void)addAdditionalCoordinationController:(id)controller;
- (void)configureWithNavigationController:(id)controller;
- (void)coordinateAdditionalTransitionsWithTransitionCoordinator:(id)coordinator;
- (void)setOperation:(int64_t)operation;
@end

@implementation SiriUIMultiNavigationTransitionController

- (SiriUIMultiNavigationTransitionController)initWithPrimaryTransitionController:(id)controller
{
  controllerCopy = controller;
  v11.receiver = self;
  v11.super_class = SiriUIMultiNavigationTransitionController;
  v6 = [(SiriUIMultiNavigationTransitionController *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_primaryTransitionController, controller);
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    mutableAdditionalCoordinationControllers = v7->_mutableAdditionalCoordinationControllers;
    v7->_mutableAdditionalCoordinationControllers = v8;
  }

  return v7;
}

- (NSArray)additionalCoordinationControllers
{
  _mutableAdditionalCoordinationControllers = [(SiriUIMultiNavigationTransitionController *)self _mutableAdditionalCoordinationControllers];
  v3 = [_mutableAdditionalCoordinationControllers copy];

  return v3;
}

- (void)addAdditionalCoordinationController:(id)controller
{
  controllerCopy = controller;
  [(NSMutableArray *)self->_mutableAdditionalCoordinationControllers addObject:?];
  _navigationController = [(SiriUIMultiNavigationTransitionController *)self _navigationController];
  if (_navigationController)
  {
    [controllerCopy configureWithNavigationController:_navigationController];
  }

  operation = [(SiriUIMultiNavigationTransitionController *)self operation];
  if (objc_opt_respondsToSelector())
  {
    [controllerCopy setOperation:operation];
  }
}

- (void)setOperation:(int64_t)operation
{
  v17 = *MEMORY[0x277D85DE8];
  if (self->_operation != operation)
  {
    self->_operation = operation;
    primaryTransitionController = [(SiriUIMultiNavigationTransitionController *)self primaryTransitionController];
    if (objc_opt_respondsToSelector())
    {
      [primaryTransitionController setOperation:operation];
    }

    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    additionalCoordinationControllers = [(SiriUIMultiNavigationTransitionController *)self additionalCoordinationControllers];
    v7 = [additionalCoordinationControllers countByEnumeratingWithState:&v12 objects:v16 count:16];
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
            objc_enumerationMutation(additionalCoordinationControllers);
          }

          v11 = *(*(&v12 + 1) + 8 * v10);
          if (objc_opt_respondsToSelector())
          {
            [v11 setOperation:operation];
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [additionalCoordinationControllers countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }
  }
}

- (void)configureWithNavigationController:(id)controller
{
  v17 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  primaryTransitionController = [(SiriUIMultiNavigationTransitionController *)self primaryTransitionController];
  if (objc_opt_respondsToSelector())
  {
    [primaryTransitionController configureWithNavigationController:controllerCopy];
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  additionalCoordinationControllers = [(SiriUIMultiNavigationTransitionController *)self additionalCoordinationControllers];
  v7 = [additionalCoordinationControllers countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(additionalCoordinationControllers);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          [v11 configureWithNavigationController:controllerCopy];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [additionalCoordinationControllers countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  [(SiriUIMultiNavigationTransitionController *)self _setNavigationController:controllerCopy];
}

- (UIViewControllerAnimatedTransitioning)animationController
{
  primaryTransitionController = [(SiriUIMultiNavigationTransitionController *)self primaryTransitionController];
  if (objc_opt_respondsToSelector())
  {
    animationController = [primaryTransitionController animationController];
  }

  else
  {
    animationController = 0;
  }

  return animationController;
}

- (id)interactionControllerForAnimationController:(id)controller
{
  controllerCopy = controller;
  primaryTransitionController = [(SiriUIMultiNavigationTransitionController *)self primaryTransitionController];
  if (objc_opt_respondsToSelector())
  {
    v6 = [primaryTransitionController interactionControllerForAnimationController:controllerCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)coordinateAdditionalTransitionsWithTransitionCoordinator:(id)coordinator
{
  v17 = *MEMORY[0x277D85DE8];
  coordinatorCopy = coordinator;
  primaryTransitionController = [(SiriUIMultiNavigationTransitionController *)self primaryTransitionController];
  if (objc_opt_respondsToSelector())
  {
    [primaryTransitionController coordinateAdditionalTransitionsWithTransitionCoordinator:coordinatorCopy];
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  additionalCoordinationControllers = [(SiriUIMultiNavigationTransitionController *)self additionalCoordinationControllers];
  v7 = [additionalCoordinationControllers countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(additionalCoordinationControllers);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          [v11 coordinateAdditionalTransitionsWithTransitionCoordinator:coordinatorCopy];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [additionalCoordinationControllers countByEnumeratingWithState:&v12 objects:v16 count:16];
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