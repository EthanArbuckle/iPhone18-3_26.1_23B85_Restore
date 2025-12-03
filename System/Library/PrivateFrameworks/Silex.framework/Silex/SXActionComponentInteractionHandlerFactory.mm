@interface SXActionComponentInteractionHandlerFactory
- (SXActionComponentInteractionHandlerFactory)initWithActionManager:(id)manager actionSerializer:(id)serializer analyticsReportingProvider:(id)provider;
- (id)interactionHandlerForAction:(id)action;
@end

@implementation SXActionComponentInteractionHandlerFactory

- (SXActionComponentInteractionHandlerFactory)initWithActionManager:(id)manager actionSerializer:(id)serializer analyticsReportingProvider:(id)provider
{
  managerCopy = manager;
  serializerCopy = serializer;
  providerCopy = provider;
  v15.receiver = self;
  v15.super_class = SXActionComponentInteractionHandlerFactory;
  v12 = [(SXActionComponentInteractionHandlerFactory *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_actionManager, manager);
    objc_storeStrong(&v13->_actionSerializer, serializer);
    objc_storeStrong(&v13->_analyticsReportingProvider, provider);
  }

  return v13;
}

- (id)interactionHandlerForAction:(id)action
{
  if (action)
  {
    actionCopy = action;
    v5 = [SXActionComponentInteractionHandler alloc];
    actionManager = [(SXActionComponentInteractionHandlerFactory *)self actionManager];
    actionSerializer = [(SXActionComponentInteractionHandlerFactory *)self actionSerializer];
    analyticsReportingProvider = [(SXActionComponentInteractionHandlerFactory *)self analyticsReportingProvider];
    v9 = [(SXActionComponentInteractionHandler *)v5 initWithAction:actionCopy actionManager:actionManager actionSerializer:actionSerializer analyticsReportingProvider:analyticsReportingProvider];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end