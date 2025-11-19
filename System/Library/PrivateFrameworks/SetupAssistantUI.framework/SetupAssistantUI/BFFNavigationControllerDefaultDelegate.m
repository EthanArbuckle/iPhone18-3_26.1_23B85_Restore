@interface BFFNavigationControllerDefaultDelegate
- (BFFNavigationController)navigationController;
- (BFFNavigationControllerDefaultDelegate)initWithNavigationController:(id)a3 stateContainer:(id)a4;
- (HandlesNavigationControllerState)stateHandler;
- (void)navigationController:(id)a3 didShowViewController:(id)a4 animated:(BOOL)a5;
- (void)navigationController:(id)a3 willShowViewController:(id)a4 animated:(BOOL)a5;
@end

@implementation BFFNavigationControllerDefaultDelegate

- (BFFNavigationControllerDefaultDelegate)initWithNavigationController:(id)a3 stateContainer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = BFFNavigationControllerDefaultDelegate;
  v8 = [(BFFNavigationControllerDefaultDelegate *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_navigationController, v6);
    objc_storeWeak(&v9->_stateHandler, v7);
  }

  return v9;
}

- (void)navigationController:(id)a3 willShowViewController:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v32 = *MEMORY[0x277D85DE8];
  v24 = a3;
  v26 = a4;
  v8 = v5;
  if (v5)
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
  v12 = [v11 observers];

  obj = v12;
  v13 = [v12 countByEnumeratingWithState:&v27 objects:v31 count:16];
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
        v18 = [v17 observer];
        v19 = objc_opt_respondsToSelector();

        v20 = [v17 observer];
        if (v19)
        {
          v21 = [(BFFNavigationControllerDefaultDelegate *)self navigationController];
          v22 = objc_loadWeakRetained(&self->_stateHandler);
          [v20 navigationController:v21 willShowViewController:v26 operation:objc_msgSend(v22 animated:{"pendingShowOperation"), v8}];
        }

        else
        {
          v23 = objc_opt_respondsToSelector();

          if ((v23 & 1) == 0)
          {
            continue;
          }

          v20 = [v17 observer];
          [v20 navigationController:v24 willShowViewController:v26 animated:v8];
        }
      }

      v14 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v14);
  }
}

- (void)navigationController:(id)a3 didShowViewController:(id)a4 animated:(BOOL)a5
{
  v37 = a5;
  v44 = *MEMORY[0x277D85DE8];
  v35 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_stateHandler);
  v36 = [WeakRetained pendingShowOperation];

  v9 = objc_loadWeakRetained(&self->_stateHandler);
  [v9 setPendingShowOperation:0];

  v10 = objc_loadWeakRetained(&self->_stateHandler);
  [v10 setAnimating:0];

  v38 = v7;
  v11 = [MEMORY[0x277CCAE60] valueWithPointer:v7];
  v12 = objc_loadWeakRetained(&self->_stateHandler);
  v13 = [v12 appearanceHandlers];
  v14 = [v13 objectForKeyedSubscript:v11];

  if (v14)
  {
    v15 = objc_loadWeakRetained(&self->_stateHandler);
    v16 = [v15 appearanceHandlers];
    v17 = [v16 objectForKeyedSubscript:v11];
    v17[2]();

    v18 = objc_loadWeakRetained(&self->_stateHandler);
    v19 = [v18 appearanceHandlers];
    [v19 removeObjectForKey:v11];
  }

  v34 = v11;
  v20 = objc_loadWeakRetained(&self->_stateHandler);
  [v20 reapObservers];

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v21 = self;
  v22 = objc_loadWeakRetained(&self->_stateHandler);
  v23 = [v22 observers];

  v24 = [v23 countByEnumeratingWithState:&v39 objects:v43 count:16];
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
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v39 + 1) + 8 * i);
        v29 = [v28 observer];
        v30 = objc_opt_respondsToSelector();

        v31 = [v28 observer];
        if (v30)
        {
          v32 = [(BFFNavigationControllerDefaultDelegate *)v21 navigationController];
          [v31 navigationController:v32 didShowViewController:v38 operation:v36 animated:v37];
        }

        else
        {
          v33 = objc_opt_respondsToSelector();

          if ((v33 & 1) == 0)
          {
            continue;
          }

          v31 = [v28 observer];
          [v31 navigationController:v35 didShowViewController:v38 animated:v37];
        }
      }

      v25 = [v23 countByEnumeratingWithState:&v39 objects:v43 count:16];
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