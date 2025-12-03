@interface SXVideoComponentViewFactory
- (SXVideoComponentViewFactory)initWithDOMObjectProvider:(id)provider viewport:(id)viewport presentationDelegateProvider:(id)delegateProvider componentStyleRendererFactory:(id)factory analyticsReportingProvider:(id)reportingProvider appStateMonitor:(id)monitor sceneStateMonitor:(id)stateMonitor resourceDataSourceProvider:(id)self0 reachabilityProvider:(id)self1 scrollObserverManager:(id)self2 videoPlayerViewControllerManager:(id)self3 bookmarkManager:(id)self4 prerollAdFactory:(id)self5;
- (id)componentViewForComponent:(id)component;
@end

@implementation SXVideoComponentViewFactory

- (SXVideoComponentViewFactory)initWithDOMObjectProvider:(id)provider viewport:(id)viewport presentationDelegateProvider:(id)delegateProvider componentStyleRendererFactory:(id)factory analyticsReportingProvider:(id)reportingProvider appStateMonitor:(id)monitor sceneStateMonitor:(id)stateMonitor resourceDataSourceProvider:(id)self0 reachabilityProvider:(id)self1 scrollObserverManager:(id)self2 videoPlayerViewControllerManager:(id)self3 bookmarkManager:(id)self4 prerollAdFactory:(id)self5
{
  reportingProviderCopy = reportingProvider;
  obj = monitor;
  monitorCopy = monitor;
  stateMonitorCopy = stateMonitor;
  sourceProviderCopy = sourceProvider;
  reachabilityProviderCopy = reachabilityProvider;
  managerCopy = manager;
  controllerManagerCopy = controllerManager;
  bookmarkManagerCopy = bookmarkManager;
  adFactoryCopy = adFactory;
  v35.receiver = self;
  v35.super_class = SXVideoComponentViewFactory;
  v21 = [(SXComponentViewFactory *)&v35 initWithDOMObjectProvider:provider viewport:viewport presentationDelegateProvider:delegateProvider componentStyleRendererFactory:factory];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_analyticsReportingProvider, reportingProvider);
    objc_storeStrong(&v22->_resourceDataSourceProvider, sourceProvider);
    objc_storeStrong(&v22->_reachabilityProvider, reachabilityProvider);
    objc_storeStrong(&v22->_appStateMonitor, obj);
    objc_storeStrong(&v22->_sceneStateMonitor, stateMonitor);
    objc_storeStrong(&v22->_scrollObserverManager, manager);
    objc_storeStrong(&v22->_videoPlayerViewControllerManager, controllerManager);
    objc_storeStrong(&v22->_bookmarkManager, bookmarkManager);
    objc_storeStrong(&v22->_prerollAdFactory, adFactory);
  }

  return v22;
}

- (id)componentViewForComponent:(id)component
{
  v16 = [SXVideoComponentView alloc];
  dOMObjectProvider = [(SXComponentViewFactory *)self DOMObjectProvider];
  viewport = [(SXComponentViewFactory *)self viewport];
  presentationDelegateProvider = [(SXComponentViewFactory *)self presentationDelegateProvider];
  presentationDelegate = [presentationDelegateProvider presentationDelegate];
  componentStyleRendererFactory = [(SXComponentViewFactory *)self componentStyleRendererFactory];
  analyticsReportingProvider = [(SXVideoComponentViewFactory *)self analyticsReportingProvider];
  analyticsReporting = [analyticsReportingProvider analyticsReporting];
  appStateMonitor = [(SXVideoComponentViewFactory *)self appStateMonitor];
  sceneStateMonitor = [(SXVideoComponentViewFactory *)self sceneStateMonitor];
  resourceDataSourceProvider = [(SXVideoComponentViewFactory *)self resourceDataSourceProvider];
  resourceDataSource = [resourceDataSourceProvider resourceDataSource];
  reachabilityProvider = [(SXVideoComponentViewFactory *)self reachabilityProvider];
  scrollObserverManager = [(SXVideoComponentViewFactory *)self scrollObserverManager];
  videoPlayerViewControllerManager = [(SXVideoComponentViewFactory *)self videoPlayerViewControllerManager];
  bookmarkManager = [(SXVideoComponentViewFactory *)self bookmarkManager];
  prerollAdFactory = [(SXVideoComponentViewFactory *)self prerollAdFactory];
  v17 = [(SXVideoComponentView *)v16 initWithDOMObjectProvider:dOMObjectProvider viewport:viewport presentationDelegate:presentationDelegate componentStyleRendererFactory:componentStyleRendererFactory analyticsReporting:analyticsReporting appStateMonitor:appStateMonitor sceneStateMonitor:sceneStateMonitor resourceDataSource:resourceDataSource reachabilityProvider:reachabilityProvider scrollObserverManager:scrollObserverManager videoPlayerViewControllerManager:videoPlayerViewControllerManager bookmarkManager:bookmarkManager prerollAdFactory:prerollAdFactory];

  return v17;
}

@end