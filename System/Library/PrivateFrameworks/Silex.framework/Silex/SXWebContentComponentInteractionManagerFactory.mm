@interface SXWebContentComponentInteractionManagerFactory
- (SXWebContentComponentInteractionManagerFactory)initWithInteractionProvider:(id)provider interactionHandlerManager:(id)manager componentInteractionHandlerFactory:(id)factory;
- (id)interactionManagerForComponentView:(id)view;
@end

@implementation SXWebContentComponentInteractionManagerFactory

- (SXWebContentComponentInteractionManagerFactory)initWithInteractionProvider:(id)provider interactionHandlerManager:(id)manager componentInteractionHandlerFactory:(id)factory
{
  providerCopy = provider;
  managerCopy = manager;
  factoryCopy = factory;
  v15.receiver = self;
  v15.super_class = SXWebContentComponentInteractionManagerFactory;
  v12 = [(SXWebContentComponentInteractionManagerFactory *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_interactionProvider, provider);
    objc_storeStrong(&v13->_interactionHandlerManager, manager);
    objc_storeStrong(&v13->_componentInteractionHandlerFactory, factory);
  }

  return v13;
}

- (id)interactionManagerForComponentView:(id)view
{
  viewCopy = view;
  v5 = [SXWebContentComponentInteractionManager alloc];
  interactionProvider = [(SXWebContentComponentInteractionManagerFactory *)self interactionProvider];
  interactionHandlerManager = [(SXWebContentComponentInteractionManagerFactory *)self interactionHandlerManager];
  componentInteractionHandlerFactory = [(SXWebContentComponentInteractionManagerFactory *)self componentInteractionHandlerFactory];
  v9 = [(SXWebContentComponentInteractionManager *)v5 initWithComponentView:viewCopy interactionProvider:interactionProvider interactionHandlerManager:interactionHandlerManager componentInteractionHandlerFactory:componentInteractionHandlerFactory];

  return v9;
}

@end