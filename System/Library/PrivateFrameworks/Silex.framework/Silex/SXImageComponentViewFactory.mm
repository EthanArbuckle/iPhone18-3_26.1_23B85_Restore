@interface SXImageComponentViewFactory
- (SXImageComponentViewFactory)initWithDOMObjectProvider:(id)provider viewport:(id)viewport presentationDelegateProvider:(id)delegateProvider componentStyleRendererFactory:(id)factory analyticsReportingProvider:(id)reportingProvider appStateMonitor:(id)monitor imageViewFactory:(id)viewFactory mediaSharingPolicyProvider:(id)self0;
- (id)componentViewForComponent:(id)component;
@end

@implementation SXImageComponentViewFactory

- (SXImageComponentViewFactory)initWithDOMObjectProvider:(id)provider viewport:(id)viewport presentationDelegateProvider:(id)delegateProvider componentStyleRendererFactory:(id)factory analyticsReportingProvider:(id)reportingProvider appStateMonitor:(id)monitor imageViewFactory:(id)viewFactory mediaSharingPolicyProvider:(id)self0
{
  reportingProviderCopy = reportingProvider;
  monitorCopy = monitor;
  viewFactoryCopy = viewFactory;
  policyProviderCopy = policyProvider;
  v24.receiver = self;
  v24.super_class = SXImageComponentViewFactory;
  v18 = [(SXComponentViewFactory *)&v24 initWithDOMObjectProvider:provider viewport:viewport presentationDelegateProvider:delegateProvider componentStyleRendererFactory:factory];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_analyticsReportingProvider, reportingProvider);
    objc_storeStrong(&v19->_appStateMonitor, monitor);
    objc_storeStrong(&v19->_imageViewFactory, viewFactory);
    objc_storeStrong(&v19->_mediaSharingPolicyProvider, policyProvider);
  }

  return v19;
}

- (id)componentViewForComponent:(id)component
{
  v16 = [SXImageComponentView alloc];
  dOMObjectProvider = [(SXComponentViewFactory *)self DOMObjectProvider];
  viewport = [(SXComponentViewFactory *)self viewport];
  presentationDelegateProvider = [(SXComponentViewFactory *)self presentationDelegateProvider];
  presentationDelegate = [presentationDelegateProvider presentationDelegate];
  componentStyleRendererFactory = [(SXComponentViewFactory *)self componentStyleRendererFactory];
  analyticsReportingProvider = [(SXImageComponentViewFactory *)self analyticsReportingProvider];
  analyticsReporting = [analyticsReportingProvider analyticsReporting];
  appStateMonitor = [(SXImageComponentViewFactory *)self appStateMonitor];
  imageViewFactory = [(SXImageComponentViewFactory *)self imageViewFactory];
  mediaSharingPolicyProvider = [(SXImageComponentViewFactory *)self mediaSharingPolicyProvider];
  v13 = [(SXImageComponentView *)v16 initWithDOMObjectProvider:dOMObjectProvider viewport:viewport presentationDelegate:presentationDelegate componentStyleRendererFactory:componentStyleRendererFactory analyticsReporting:analyticsReporting appStateMonitor:appStateMonitor imageViewFactory:imageViewFactory mediaSharingPolicyProvider:mediaSharingPolicyProvider];

  return v13;
}

@end