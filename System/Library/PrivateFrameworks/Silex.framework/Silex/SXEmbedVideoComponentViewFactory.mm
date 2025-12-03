@interface SXEmbedVideoComponentViewFactory
- (SXEmbedVideoComponentViewFactory)initWithDOMObjectProvider:(id)provider viewport:(id)viewport presentationDelegateProvider:(id)delegateProvider componentStyleRendererFactory:(id)factory analyticsReportingProvider:(id)reportingProvider appStateMonitor:(id)monitor sceneStateMonitor:(id)stateMonitor actionHandler:(id)self0 websiteDataStore:(id)self1 proxyAuthenticationHandler:(id)self2;
- (id)componentViewForComponent:(id)component;
@end

@implementation SXEmbedVideoComponentViewFactory

- (SXEmbedVideoComponentViewFactory)initWithDOMObjectProvider:(id)provider viewport:(id)viewport presentationDelegateProvider:(id)delegateProvider componentStyleRendererFactory:(id)factory analyticsReportingProvider:(id)reportingProvider appStateMonitor:(id)monitor sceneStateMonitor:(id)stateMonitor actionHandler:(id)self0 websiteDataStore:(id)self1 proxyAuthenticationHandler:(id)self2
{
  reportingProviderCopy = reportingProvider;
  monitorCopy = monitor;
  stateMonitorCopy = stateMonitor;
  handlerCopy = handler;
  storeCopy = store;
  authenticationHandlerCopy = authenticationHandler;
  v28.receiver = self;
  v28.super_class = SXEmbedVideoComponentViewFactory;
  v20 = [(SXComponentViewFactory *)&v28 initWithDOMObjectProvider:provider viewport:viewport presentationDelegateProvider:delegateProvider componentStyleRendererFactory:factory];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_analyticsReportingProvider, reportingProvider);
    objc_storeStrong(&v21->_appStateMonitor, monitor);
    objc_storeStrong(&v21->_sceneStateMonitor, stateMonitor);
    objc_storeStrong(&v21->_actionHandler, handler);
    objc_storeStrong(&v21->_dataStore, store);
    objc_storeStrong(&v21->_proxyAuthenticationHandler, authenticationHandler);
  }

  return v21;
}

- (id)componentViewForComponent:(id)component
{
  v16 = [SXEmbedVideoComponentView alloc];
  dOMObjectProvider = [(SXComponentViewFactory *)self DOMObjectProvider];
  viewport = [(SXComponentViewFactory *)self viewport];
  presentationDelegateProvider = [(SXComponentViewFactory *)self presentationDelegateProvider];
  presentationDelegate = [presentationDelegateProvider presentationDelegate];
  componentStyleRendererFactory = [(SXComponentViewFactory *)self componentStyleRendererFactory];
  analyticsReportingProvider = [(SXEmbedVideoComponentViewFactory *)self analyticsReportingProvider];
  analyticsReporting = [analyticsReportingProvider analyticsReporting];
  appStateMonitor = [(SXEmbedVideoComponentViewFactory *)self appStateMonitor];
  sceneStateMonitor = [(SXEmbedVideoComponentViewFactory *)self sceneStateMonitor];
  actionHandler = [(SXEmbedVideoComponentViewFactory *)self actionHandler];
  dataStore = [(SXEmbedVideoComponentViewFactory *)self dataStore];
  proxyAuthenticationHandler = [(SXEmbedVideoComponentViewFactory *)self proxyAuthenticationHandler];
  v13 = [(SXEmbedVideoComponentView *)v16 initWithDOMObjectProvider:dOMObjectProvider viewport:viewport presentationDelegate:presentationDelegate componentStyleRendererFactory:componentStyleRendererFactory analyticsReporting:analyticsReporting appStateMonitor:appStateMonitor sceneStateMonitor:sceneStateMonitor actionHandler:actionHandler websiteDataStore:dataStore proxyAuthenticationHandler:proxyAuthenticationHandler];

  return v13;
}

@end