@interface SXWebContentComponentInteractionManager
- (SXComponentInteractionHandlerManager)interactionHandlerManager;
- (SXComponentView)componentView;
- (SXWebContentComponentInteractionManager)initWithComponentView:(id)view interactionProvider:(id)provider interactionHandlerManager:(id)manager componentInteractionHandlerFactory:(id)factory;
- (void)manageInteractionHandlerForInteraction:(id)interaction;
@end

@implementation SXWebContentComponentInteractionManager

- (SXWebContentComponentInteractionManager)initWithComponentView:(id)view interactionProvider:(id)provider interactionHandlerManager:(id)manager componentInteractionHandlerFactory:(id)factory
{
  viewCopy = view;
  providerCopy = provider;
  managerCopy = manager;
  factoryCopy = factory;
  v21.receiver = self;
  v21.super_class = SXWebContentComponentInteractionManager;
  v14 = [(SXWebContentComponentInteractionManager *)&v21 init];
  v15 = v14;
  if (v14)
  {
    objc_storeWeak(&v14->_componentView, viewCopy);
    objc_storeStrong(&v15->_interactionProvider, provider);
    objc_storeWeak(&v15->_interactionHandlerManager, managerCopy);
    objc_storeStrong(&v15->_componentInteractionHandlerFactory, factory);
    interaction = [providerCopy interaction];
    [(SXWebContentComponentInteractionManager *)v15 manageInteractionHandlerForInteraction:interaction];

    objc_initWeak(&location, v15);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __146__SXWebContentComponentInteractionManager_initWithComponentView_interactionProvider_interactionHandlerManager_componentInteractionHandlerFactory___block_invoke;
    v18[3] = &unk_1E84FFA90;
    objc_copyWeak(&v19, &location);
    [providerCopy onChange:v18];
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

- (void)manageInteractionHandlerForInteraction:(id)interaction
{
  interactionCopy = interaction;
  if (interactionCopy)
  {
    interactionHandlerManager = [(SXWebContentComponentInteractionManager *)self interactionHandlerManager];
    currentInteractionHandler = [(SXWebContentComponentInteractionManager *)self currentInteractionHandler];
    componentView = [(SXWebContentComponentInteractionManager *)self componentView];
    [interactionHandlerManager removeInteractionHandler:currentInteractionHandler componentView:componentView];

    if ([interactionCopy type] == 2)
    {
      componentInteractionHandlerFactory = [(SXWebContentComponentInteractionManager *)self componentInteractionHandlerFactory];
      v8 = [componentInteractionHandlerFactory componentInteractionHandlerForInteraction:interactionCopy];
      [(SXWebContentComponentInteractionManager *)self setCurrentInteractionHandler:v8];

      interactionHandlerManager2 = [(SXWebContentComponentInteractionManager *)self interactionHandlerManager];
      currentInteractionHandler2 = [(SXWebContentComponentInteractionManager *)self currentInteractionHandler];
      componentView2 = [(SXWebContentComponentInteractionManager *)self componentView];
      [interactionHandlerManager2 addInteractionHandler:currentInteractionHandler2 componentView:componentView2 types:2];
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