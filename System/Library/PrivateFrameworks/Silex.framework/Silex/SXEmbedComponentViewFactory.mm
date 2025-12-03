@interface SXEmbedComponentViewFactory
- (SXEmbedComponentViewFactory)initWithDOMObjectProvider:(id)provider viewport:(id)viewport presentationDelegateProvider:(id)delegateProvider componentStyleRendererFactory:(id)factory reachabilityProvider:(id)reachabilityProvider embedDataProvider:(id)dataProvider actionHandler:(id)handler layoutInvalidator:(id)self0 websiteDataStore:(id)self1 processPoolCache:(id)self2 proxyAuthenticationHandler:(id)self3 sceneStateMonitor:(id)self4 analyticsReportingProvider:(id)self5;
- (id)componentViewForComponent:(id)component;
@end

@implementation SXEmbedComponentViewFactory

- (SXEmbedComponentViewFactory)initWithDOMObjectProvider:(id)provider viewport:(id)viewport presentationDelegateProvider:(id)delegateProvider componentStyleRendererFactory:(id)factory reachabilityProvider:(id)reachabilityProvider embedDataProvider:(id)dataProvider actionHandler:(id)handler layoutInvalidator:(id)self0 websiteDataStore:(id)self1 processPoolCache:(id)self2 proxyAuthenticationHandler:(id)self3 sceneStateMonitor:(id)self4 analyticsReportingProvider:(id)self5
{
  reachabilityProviderCopy = reachabilityProvider;
  dataProviderCopy = dataProvider;
  handlerCopy = handler;
  invalidatorCopy = invalidator;
  storeCopy = store;
  cacheCopy = cache;
  authenticationHandlerCopy = authenticationHandler;
  monitorCopy = monitor;
  reportingProviderCopy = reportingProvider;
  v34.receiver = self;
  v34.super_class = SXEmbedComponentViewFactory;
  v21 = [(SXComponentViewFactory *)&v34 initWithDOMObjectProvider:provider viewport:viewport presentationDelegateProvider:delegateProvider componentStyleRendererFactory:factory];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_reachabilityProvider, reachabilityProvider);
    objc_storeStrong(&v22->_embedDataProvider, dataProvider);
    objc_storeStrong(&v22->_actionHandler, handler);
    objc_storeStrong(&v22->_layoutInvalidator, invalidator);
    objc_storeStrong(&v22->_dataStore, store);
    objc_storeStrong(&v22->_processPoolCache, cache);
    objc_storeStrong(&v22->_proxyAuthenticationHandler, authenticationHandler);
    objc_storeStrong(&v22->_sceneStateMonitor, monitor);
    objc_storeStrong(&v22->_analyticsReportingProvider, reportingProvider);
  }

  return v22;
}

- (id)componentViewForComponent:(id)component
{
  componentCopy = component;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v5 = off_1E84FD1F0;
  }

  else
  {
    v5 = off_1E84FCC58;
  }

  v20 = objc_alloc(*v5);
  dOMObjectProvider = [(SXComponentViewFactory *)self DOMObjectProvider];
  viewport = [(SXComponentViewFactory *)self viewport];
  presentationDelegateProvider = [(SXComponentViewFactory *)self presentationDelegateProvider];
  presentationDelegate = [presentationDelegateProvider presentationDelegate];
  componentStyleRendererFactory = [(SXComponentViewFactory *)self componentStyleRendererFactory];
  reachabilityProvider = [(SXEmbedComponentViewFactory *)self reachabilityProvider];
  embedDataProvider = [(SXEmbedComponentViewFactory *)self embedDataProvider];
  actionHandler = [(SXEmbedComponentViewFactory *)self actionHandler];
  layoutInvalidator = [(SXEmbedComponentViewFactory *)self layoutInvalidator];
  dataStore = [(SXEmbedComponentViewFactory *)self dataStore];
  processPoolCache = [(SXEmbedComponentViewFactory *)self processPoolCache];
  proxyAuthenticationHandler = [(SXEmbedComponentViewFactory *)self proxyAuthenticationHandler];
  sceneStateMonitor = [(SXEmbedComponentViewFactory *)self sceneStateMonitor];
  analyticsReportingProvider = [(SXEmbedComponentViewFactory *)self analyticsReportingProvider];
  analyticsReporting = [analyticsReportingProvider analyticsReporting];
  v21 = [v20 initWithDOMObjectProvider:dOMObjectProvider viewport:viewport presentationDelegate:presentationDelegate componentStyleRendererFactory:componentStyleRendererFactory reachabilityProvider:reachabilityProvider embedDataProvider:embedDataProvider actionHandler:actionHandler layoutInvalidator:layoutInvalidator websiteDataStore:dataStore processPoolCache:processPoolCache proxyAuthenticationHandler:proxyAuthenticationHandler sceneStateMonitor:sceneStateMonitor analyticsReporting:analyticsReporting];

  return v21;
}

@end