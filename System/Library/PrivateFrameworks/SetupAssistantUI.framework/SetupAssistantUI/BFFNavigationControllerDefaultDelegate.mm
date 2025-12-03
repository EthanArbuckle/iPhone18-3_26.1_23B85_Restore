@interface BFFNavigationControllerDefaultDelegate
- (BFFNavigationController)navigationController;
- (BFFNavigationControllerDefaultDelegate)initWithNavigationController:(id)controller stateContainer:(id)container;
- (HandlesNavigationControllerState)stateHandler;
- (void)navigationController:(id)controller didShowViewController:(id)viewController animated:(BOOL)animated;
- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated;
@end

@implementation BFFNavigationControllerDefaultDelegate

- (BFFNavigationControllerDefaultDelegate)initWithNavigationController:(id)controller stateContainer:(id)container
{
  controllerCopy = controller;
  containerCopy = container;
  v11.receiver = self;
  v11.super_class = BFFNavigationControllerDefaultDelegate;
  v8 = [(BFFNavigationControllerDefaultDelegate *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_navigationController, controllerCopy);
    objc_storeWeak(&v9->_stateHandler, containerCopy);
  }

  return v9;
}

- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated
{
  animatedCopy = animated;
  v32 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  viewControllerCopy = viewController;
  v8 = animatedCopy;
  if (animatedCopy)
  {
    WeakRetained = objc_loadWeakRetained(&self->_stateHandler);
    [WeakRetained setAnimating:1];
  }

  v10 = objc_loadWeakRetained(&self->_stateHandler);
  [v10 reapObservers];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v11 = objc_loadWeakRetained(&self->_stateHandler);
  observers = [v11 observers];

  obj = observers;
  v13 = [observers countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v28;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v28 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v27 + 1) + 8 * i);
        observer = [v17 observer];
        v19 = objc_opt_respondsToSelector();

        observer2 = [v17 observer];
        if (v19)
        {
          navigationController = [(BFFNavigationControllerDefaultDelegate *)self navigationController];
          v22 = objc_loadWeakRetained(&self->_stateHandler);
          [observer2 navigationController:navigationController willShowViewController:viewControllerCopy operation:objc_msgSend(v22 animated:{"pendingShowOperation"), v8}];
        }

        else
        {
          v23 = objc_opt_respondsToSelector();

          if ((v23 & 1) == 0)
          {
            continue;
          }

          observer2 = [v17 observer];
          [observer2 navigationController:controllerCopy willShowViewController:viewControllerCopy animated:v8];
        }
      }

      v14 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v14);
  }
}

- (void)navigationController:(id)controller didShowViewController:(id)viewController animated:(BOOL)animated
{
  animatedCopy = animated;
  v44 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  viewControllerCopy = viewController;
  WeakRetained = objc_loadWeakRetained(&self->_stateHandler);
  pendingShowOperation = [WeakRetained pendingShowOperation];

  v9 = objc_loadWeakRetained(&self->_stateHandler);
  [v9 setPendingShowOperation:0];

  v10 = objc_loadWeakRetained(&self->_stateHandler);
  [v10 setAnimating:0];

  v38 = viewControllerCopy;
  v11 = [MEMORY[0x277CCAE60] valueWithPointer:viewControllerCopy];
  v12 = objc_loadWeakRetained(&self->_stateHandler);
  appearanceHandlers = [v12 appearanceHandlers];
  v14 = [appearanceHandlers objectForKeyedSubscript:v11];

  if (v14)
  {
    v15 = objc_loadWeakRetained(&self->_stateHandler);
    appearanceHandlers2 = [v15 appearanceHandlers];
    v17 = [appearanceHandlers2 objectForKeyedSubscript:v11];
    v17[2]();

    v18 = objc_loadWeakRetained(&self->_stateHandler);
    appearanceHandlers3 = [v18 appearanceHandlers];
    [appearanceHandlers3 removeObjectForKey:v11];
  }

  v34 = v11;
  v20 = objc_loadWeakRetained(&self->_stateHandler);
  [v20 reapObservers];

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  selfCopy = self;
  v22 = objc_loadWeakRetained(&self->_stateHandler);
  observers = [v22 observers];

  v24 = [observers countByEnumeratingWithState:&v39 objects:v43 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v40;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v40 != v26)
        {
          objc_enumerationMutation(observers);
        }

        v28 = *(*(&v39 + 1) + 8 * i);
        observer = [v28 observer];
        v30 = objc_opt_respondsToSelector();

        observer2 = [v28 observer];
        if (v30)
        {
          navigationController = [(BFFNavigationControllerDefaultDelegate *)selfCopy navigationController];
          [observer2 navigationController:navigationController didShowViewController:v38 operation:pendingShowOperation animated:animatedCopy];
        }

        else
        {
          v33 = objc_opt_respondsToSelector();

          if ((v33 & 1) == 0)
          {
            continue;
          }

          observer2 = [v28 observer];
          [observer2 navigationController:controllerCopy didShowViewController:v38 animated:animatedCopy];
        }
      }

      v25 = [observers countByEnumeratingWithState:&v39 objects:v43 count:16];
    }

    while (v25);
  }
}

- (BFFNavigationController)navigationController
{
  WeakRetained = objc_loadWeakRetained(&self->_navigationController);

  return WeakRetained;
}

- (HandlesNavigationControllerState)stateHandler
{
  WeakRetained = objc_loadWeakRetained(&self->_stateHandler);

  return WeakRetained;
}

@end