@interface SXMapComponentViewFactory
- (SXMapComponentViewFactory)initWithDOMObjectProvider:(id)provider viewport:(id)viewport presentationDelegateProvider:(id)delegateProvider componentStyleRendererFactory:(id)factory analyticsReportingProvider:(id)reportingProvider appStateMonitor:(id)monitor documentTitleProvider:(id)titleProvider;
- (id)componentViewForComponent:(id)component;
@end

@implementation SXMapComponentViewFactory

- (SXMapComponentViewFactory)initWithDOMObjectProvider:(id)provider viewport:(id)viewport presentationDelegateProvider:(id)delegateProvider componentStyleRendererFactory:(id)factory analyticsReportingProvider:(id)reportingProvider appStateMonitor:(id)monitor documentTitleProvider:(id)titleProvider
{
  reportingProviderCopy = reportingProvider;
  monitorCopy = monitor;
  titleProviderCopy = titleProvider;
  v22.receiver = self;
  v22.super_class = SXMapComponentViewFactory;
  v18 = [(SXComponentViewFactory *)&v22 initWithDOMObjectProvider:provider viewport:viewport presentationDelegateProvider:delegateProvider componentStyleRendererFactory:factory];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_analyticsReportingProvider, reportingProvider);
    objc_storeStrong(&v19->_appStateMonitor, monitor);
    objc_storeStrong(&v19->_documentTitleProvider, titleProvider);
  }

  return v19;
}

- (id)componentViewForComponent:(id)component
{
  v4 = [SXMapComponentView alloc];
  dOMObjectProvider = [(SXComponentViewFactory *)self DOMObjectProvider];
  viewport = [(SXComponentViewFactory *)self viewport];
  presentationDelegateProvider = [(SXComponentViewFactory *)self presentationDelegateProvider];
  presentationDelegate = [presentationDelegateProvider presentationDelegate];
  componentStyleRendererFactory = [(SXComponentViewFactory *)self componentStyleRendererFactory];
  analyticsReportingProvider = [(SXMapComponentViewFactory *)self analyticsReportingProvider];
  analyticsReporting = [analyticsReportingProvider analyticsReporting];
  appStateMonitor = [(SXMapComponentViewFactory *)self appStateMonitor];
  documentTitleProvider = [(SXMapComponentViewFactory *)self documentTitleProvider];
  v14 = [(SXMapComponentView *)v4 initWithDOMObjectProvider:dOMObjectProvider viewport:viewport presentationDelegate:presentationDelegate componentStyleRendererFactory:componentStyleRendererFactory analyticsReporting:analyticsReporting appStateMonitor:appStateMonitor documentTitleProvider:documentTitleProvider];

  return v14;
}

@end