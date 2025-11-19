@interface SXWebContentComponentInteractionManager
- (SXComponentInteractionHandlerManager)interactionHandlerManager;
- (SXComponentView)componentView;
- (SXWebContentComponentInteractionManager)initWithComponentView:(id)a3 interactionProvider:(id)a4 interactionHandlerManager:(id)a5 componentInteractionHandlerFactory:(id)a6;
- (void)manageInteractionHandlerForInteraction:(id)a3;
@end

@implementation SXWebContentComponentInteractionManager

- (SXWebContentComponentInteractionManager)initWithComponentView:(id)a3 interactionProvider:(id)a4 interactionHandlerManager:(id)a5 componentInteractionHandlerFactory:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v21.receiver = self;
  v21.super_class = SXWebContentComponentInteractionManager;
  v14 = [(SXWebContentComponentInteractionManager *)&v21 init];
  v15 = v14;
  if (v14)
  {
    objc_storeWeak(&v14->_componentView, v10);
    objc_storeStrong(&v15->_interactionProvider, a4);
    objc_storeWeak(&v15->_interactionHandlerManager, v12);
    objc_storeStrong(&v15->_componentInteractionHandlerFactory, a6);
    v16 = [v11 interaction];
    [(SXWebContentComponentInteractionManager *)v15 manageInteractionHandlerForInteraction:v16];

    objc_initWeak(&location, v15);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __146__SXWebContentComponentInteractionManager_initWithComponentView_interactionProvider_interactionHandlerManager_componentInteractionHandlerFactory___block_invoke;
    v18[3] = &unk_1E84FFA90;
    objc_copyWeak(&v19, &location);
    [v11 onChange:v18];
    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }

  return v15;
}

void __146__SXWebContentComponentInteractionManager_initWithComponentView_interactionProvider_interactionHandlerManager_componentInteractionHandlerFactory___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained manageInteractionHandlerForInteraction:v3];
}

- (void)manageInteractionHandlerForInteraction:(id)a3
{
  v12 = a3;
  if (v12)
  {
    v4 = [(SXWebContentComponentInteractionManager *)self interactionHandlerManager];
    v5 = [(SXWebContentComponentInteractionManager *)self currentInteractionHandler];
    v6 = [(SXWebContentComponentInteractionManager *)self componentView];
    [v4 removeInteractionHandler:v5 componentView:v6];

    if ([v12 type] == 2)
    {
      v7 = [(SXWebContentComponentInteractionManager *)self componentInteractionHandlerFactory];
      v8 = [v7 componentInteractionHandlerForInteraction:v12];
      [(SXWebContentComponentInteractionManager *)self setCurrentInteractionHandler:v8];

      v9 = [(SXWebContentComponentInteractionManager *)self interactionHandlerManager];
      v10 = [(SXWebContentComponentInteractionManager *)self currentInteractionHandler];
      v11 = [(SXWebContentComponentInteractionManager *)self componentView];
      [v9 addInteractionHandler:v10 componentView:v11 types:2];
    }
  }
}

- (SXComponentView)componentView
{
  WeakRetained = objc_loadWeakRetained(&self->_componentView);

  return WeakRetained;
}

- (SXComponentInteractionHandlerManager)interactionHandlerManager
{
  WeakRetained = objc_loadWeakRetained(&self->_interactionHandlerManager);

  return WeakRetained;
}

@end