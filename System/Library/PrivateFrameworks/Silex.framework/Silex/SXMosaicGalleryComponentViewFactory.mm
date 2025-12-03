@interface SXMosaicGalleryComponentViewFactory
- (SXMosaicGalleryComponentViewFactory)initWithDOMObjectProvider:(id)provider viewport:(id)viewport presentationDelegateProvider:(id)delegateProvider componentStyleRendererFactory:(id)factory analyticsReportingProvider:(id)reportingProvider appStateMonitor:(id)monitor mediaSharingPolicyProvider:(id)policyProvider imageViewFactory:(id)self0 canvasControllerFactory:(id)self1;
- (id)componentViewForComponent:(id)component;
@end

@implementation SXMosaicGalleryComponentViewFactory

- (SXMosaicGalleryComponentViewFactory)initWithDOMObjectProvider:(id)provider viewport:(id)viewport presentationDelegateProvider:(id)delegateProvider componentStyleRendererFactory:(id)factory analyticsReportingProvider:(id)reportingProvider appStateMonitor:(id)monitor mediaSharingPolicyProvider:(id)policyProvider imageViewFactory:(id)self0 canvasControllerFactory:(id)self1
{
  reportingProviderCopy = reportingProvider;
  monitorCopy = monitor;
  policyProviderCopy = policyProvider;
  viewFactoryCopy = viewFactory;
  controllerFactoryCopy = controllerFactory;
  v26.receiver = self;
  v26.super_class = SXMosaicGalleryComponentViewFactory;
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
  v16 = [SXMosaicGalleryComponentView alloc];
  dOMObjectProvider = [(SXComponentViewFactory *)self DOMObjectProvider];
  viewport = [(SXComponentViewFactory *)self viewport];
  presentationDelegateProvider = [(SXComponentViewFactory *)self presentationDelegateProvider];
  presentationDelegate = [presentationDelegateProvider presentationDelegate];
  componentStyleRendererFactory = [(SXComponentViewFactory *)self componentStyleRendererFactory];
  analyticsReportingProvider = [(SXMosaicGalleryComponentViewFactory *)self analyticsReportingProvider];
  analyticsReporting = [analyticsReportingProvider analyticsReporting];
  appStateMonitor = [(SXMosaicGalleryComponentViewFactory *)self appStateMonitor];
  mediaSharingPolicyProvider = [(SXMosaicGalleryComponentViewFactory *)self mediaSharingPolicyProvider];
  imageViewFactory = [(SXMosaicGalleryComponentViewFactory *)self imageViewFactory];
  canvasControllerFactory = [(SXMosaicGalleryComponentViewFactory *)self canvasControllerFactory];
  v13 = [(SXMosaicGalleryComponentView *)v16 initWithDOMObjectProvider:dOMObjectProvider viewport:viewport presentationDelegate:presentationDelegate componentStyleRendererFactory:componentStyleRendererFactory analyticsReporting:analyticsReporting appStateMonitor:appStateMonitor mediaSharingPolicyProvider:mediaSharingPolicyProvider imageViewFactory:imageViewFactory canvasControllerFactory:canvasControllerFactory];

  return v13;
}

@end