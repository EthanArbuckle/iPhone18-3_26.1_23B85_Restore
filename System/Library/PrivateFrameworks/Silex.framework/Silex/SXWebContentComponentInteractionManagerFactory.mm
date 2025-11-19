@interface SXWebContentComponentInteractionManagerFactory
- (SXWebContentComponentInteractionManagerFactory)initWithInteractionProvider:(id)a3 interactionHandlerManager:(id)a4 componentInteractionHandlerFactory:(id)a5;
- (id)interactionManagerForComponentView:(id)a3;
@end

@implementation SXWebContentComponentInteractionManagerFactory

- (SXWebContentComponentInteractionManagerFactory)initWithInteractionProvider:(id)a3 interactionHandlerManager:(id)a4 componentInteractionHandlerFactory:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = SXWebContentComponentInteractionManagerFactory;
  v12 = [(SXWebContentComponentInteractionManagerFactory *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_interactionProvider, a3);
    objc_storeStrong(&v13->_interactionHandlerManager, a4);
    objc_storeStrong(&v13->_componentInteractionHandlerFactory, a5);
  }

  return v13;
}

- (id)interactionManagerForComponentView:(id)a3
{
  v4 = a3;
  v5 = [SXWebContentComponentInteractionManager alloc];
  v6 = [(SXWebContentComponentInteractionManagerFactory *)self interactionProvider];
  v7 = [(SXWebContentComponentInteractionManagerFactory *)self interactionHandlerManager];
  v8 = [(SXWebContentComponentInteractionManagerFactory *)self componentInteractionHandlerFactory];
  v9 = [(SXWebContentComponentInteractionManager *)v5 initWithComponentView:v4 interactionProvider:v6 interactionHandlerManager:v7 componentInteractionHandlerFactory:v8];

  return v9;
}

@end