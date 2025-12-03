@interface SXScalableImageComponentViewFactory
- (SXScalableImageComponentViewFactory)initWithDOMObjectProvider:(id)provider viewport:(id)viewport presentationDelegateProvider:(id)delegateProvider componentStyleRendererFactory:(id)factory analyticsReportingProvider:(id)reportingProvider appStateMonitor:(id)monitor imageViewFactory:(id)viewFactory canvasControllerFactory:(id)self0 mediaSharingPolicyProvider:(id)self1;
- (id)componentViewForComponent:(id)component;
@end

@implementation SXScalableImageComponentViewFactory

- (SXScalableImageComponentViewFactory)initWithDOMObjectProvider:(id)provider viewport:(id)viewport presentationDelegateProvider:(id)delegateProvider componentStyleRendererFactory:(id)factory analyticsReportingProvider:(id)reportingProvider appStateMonitor:(id)monitor imageViewFactory:(id)viewFactory canvasControllerFactory:(id)self0 mediaSharingPolicyProvider:(id)self1
{
  reportingProviderCopy = reportingProvider;
  monitorCopy = monitor;
  viewFactoryCopy = viewFactory;
  controllerFactoryCopy = controllerFactory;
  policyProviderCopy = policyProvider;
  v26.receiver = self;
  v26.super_class = SXScalableImageComponentViewFactory;
  v18 = [(SXComponentViewFactory *)&v26 initWithDOMObjectProvider:provider viewport:viewport presentationDelegateProvider:delegateProvider componentStyleRendererFactory:factory];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_analyticsReportingProvider, reportingProvider);
    objc_storeStrong(&v19->_appStateMonitor, monitor);
    objc_storeStrong(&v19->_imageViewFactory, viewFactory);
    objc_storeStrong(&v19->_mediaSharingPolicyProvider, policyProvider);
    objc_storeStrong(&v19->_canvasControllerFactory, controllerFactory);
  }

  return v19;
}

- (id)componentViewForComponent:(id)component
{
  v16 = [SXScalableImageComponentView alloc];
  dOMObjectProvider = [(SXComponentViewFactory *)self DOMObjectProvider];
  viewport = [(SXComponentViewFactory *)self viewport];
  presentationDelegateProvider = [(SXComponentViewFactory *)self presentationDelegateProvider];
  presentationDelegate = [presentationDelegateProvider presentationDelegate];
  componentStyleRendererFactory = [(SXComponentViewFactory *)self componentStyleRendererFactory];
  analyticsReportingProvider = [(SXScalableImageComponentViewFactory *)self analyticsReportingProvider];
  analyticsReporting = [analyticsReportingProvider analyticsReporting];
  appStateMonitor = [(SXScalableImageComponentViewFactory *)self appStateMonitor];
  imageViewFactory = [(SXScalableImageComponentViewFactory *)self imageViewFactory];
  canvasControllerFactory = [(SXScalableImageComponentViewFactory *)self canvasControllerFactory];
  mediaSharingPolicyProvider = [(SXScalableImageComponentViewFactory *)self mediaSharingPolicyProvider];
  v13 = [(SXScalableImageComponentView *)v16 initWithDOMObjectProvider:dOMObjectProvider viewport:viewport presentationDelegate:presentationDelegate componentStyleRendererFactory:componentStyleRendererFactory analyticsReporting:analyticsReporting appStateMonitor:appStateMonitor imageViewFactory:imageViewFactory canvasControllerFactory:canvasControllerFactory mediaSharingPolicyProvider:mediaSharingPolicyProvider];

  return v13;
}

@end