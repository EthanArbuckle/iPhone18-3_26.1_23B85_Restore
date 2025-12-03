@interface SXAudioComponentViewFactory
- (SXAudioComponentViewFactory)initWithDOMObjectProvider:(id)provider viewport:(id)viewport presentationDelegateProvider:(id)delegateProvider componentStyleRendererFactory:(id)factory analyticsReportingProvider:(id)reportingProvider appStateMonitor:(id)monitor resourceDataSourceProvider:(id)sourceProvider host:(id)self0;
- (id)componentViewForComponent:(id)component;
@end

@implementation SXAudioComponentViewFactory

- (SXAudioComponentViewFactory)initWithDOMObjectProvider:(id)provider viewport:(id)viewport presentationDelegateProvider:(id)delegateProvider componentStyleRendererFactory:(id)factory analyticsReportingProvider:(id)reportingProvider appStateMonitor:(id)monitor resourceDataSourceProvider:(id)sourceProvider host:(id)self0
{
  reportingProviderCopy = reportingProvider;
  monitorCopy = monitor;
  sourceProviderCopy = sourceProvider;
  hostCopy = host;
  v24.receiver = self;
  v24.super_class = SXAudioComponentViewFactory;
  v18 = [(SXComponentViewFactory *)&v24 initWithDOMObjectProvider:provider viewport:viewport presentationDelegateProvider:delegateProvider componentStyleRendererFactory:factory];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_analyticsReportingProvider, reportingProvider);
    objc_storeStrong(&v19->_appStateMonitor, monitor);
    objc_storeStrong(&v19->_resourceDataSourceProvider, sourceProvider);
    objc_storeStrong(&v19->_host, host);
  }

  return v19;
}

- (id)componentViewForComponent:(id)component
{
  v16 = [SXAudioComponentView alloc];
  dOMObjectProvider = [(SXComponentViewFactory *)self DOMObjectProvider];
  viewport = [(SXComponentViewFactory *)self viewport];
  presentationDelegateProvider = [(SXComponentViewFactory *)self presentationDelegateProvider];
  presentationDelegate = [presentationDelegateProvider presentationDelegate];
  componentStyleRendererFactory = [(SXComponentViewFactory *)self componentStyleRendererFactory];
  analyticsReportingProvider = [(SXAudioComponentViewFactory *)self analyticsReportingProvider];
  analyticsReporting = [analyticsReportingProvider analyticsReporting];
  appStateMonitor = [(SXAudioComponentViewFactory *)self appStateMonitor];
  resourceDataSourceProvider = [(SXAudioComponentViewFactory *)self resourceDataSourceProvider];
  resourceDataSource = [resourceDataSourceProvider resourceDataSource];
  host = [(SXAudioComponentViewFactory *)self host];
  v13 = [(SXAudioComponentView *)v16 initWithDOMObjectProvider:dOMObjectProvider viewport:viewport presentationDelegate:presentationDelegate componentStyleRendererFactory:componentStyleRendererFactory analyticsReporting:analyticsReporting appStateMonitor:appStateMonitor resourceDataSource:resourceDataSource host:host];

  return v13;
}

@end