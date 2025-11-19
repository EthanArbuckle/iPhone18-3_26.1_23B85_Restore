@interface SXScalableImageComponentViewFactory
- (SXScalableImageComponentViewFactory)initWithDOMObjectProvider:(id)a3 viewport:(id)a4 presentationDelegateProvider:(id)a5 componentStyleRendererFactory:(id)a6 analyticsReportingProvider:(id)a7 appStateMonitor:(id)a8 imageViewFactory:(id)a9 canvasControllerFactory:(id)a10 mediaSharingPolicyProvider:(id)a11;
- (id)componentViewForComponent:(id)a3;
@end

@implementation SXScalableImageComponentViewFactory

- (SXScalableImageComponentViewFactory)initWithDOMObjectProvider:(id)a3 viewport:(id)a4 presentationDelegateProvider:(id)a5 componentStyleRendererFactory:(id)a6 analyticsReportingProvider:(id)a7 appStateMonitor:(id)a8 imageViewFactory:(id)a9 canvasControllerFactory:(id)a10 mediaSharingPolicyProvider:(id)a11
{
  v25 = a7;
  v24 = a8;
  v23 = a9;
  v22 = a10;
  v21 = a11;
  v26.receiver = self;
  v26.super_class = SXScalableImageComponentViewFactory;
  v18 = [(SXComponentViewFactory *)&v26 initWithDOMObjectProvider:a3 viewport:a4 presentationDelegateProvider:a5 componentStyleRendererFactory:a6];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_analyticsReportingProvider, a7);
    objc_storeStrong(&v19->_appStateMonitor, a8);
    objc_storeStrong(&v19->_imageViewFactory, a9);
    objc_storeStrong(&v19->_mediaSharingPolicyProvider, a11);
    objc_storeStrong(&v19->_canvasControllerFactory, a10);
  }

  return v19;
}

- (id)componentViewForComponent:(id)a3
{
  v16 = [SXScalableImageComponentView alloc];
  v15 = [(SXComponentViewFactory *)self DOMObjectProvider];
  v4 = [(SXComponentViewFactory *)self viewport];
  v17 = [(SXComponentViewFactory *)self presentationDelegateProvider];
  v5 = [v17 presentationDelegate];
  v6 = [(SXComponentViewFactory *)self componentStyleRendererFactory];
  v7 = [(SXScalableImageComponentViewFactory *)self analyticsReportingProvider];
  v8 = [v7 analyticsReporting];
  v9 = [(SXScalableImageComponentViewFactory *)self appStateMonitor];
  v10 = [(SXScalableImageComponentViewFactory *)self imageViewFactory];
  v11 = [(SXScalableImageComponentViewFactory *)self canvasControllerFactory];
  v12 = [(SXScalableImageComponentViewFactory *)self mediaSharingPolicyProvider];
  v13 = [(SXScalableImageComponentView *)v16 initWithDOMObjectProvider:v15 viewport:v4 presentationDelegate:v5 componentStyleRendererFactory:v6 analyticsReporting:v8 appStateMonitor:v9 imageViewFactory:v10 canvasControllerFactory:v11 mediaSharingPolicyProvider:v12];

  return v13;
}

@end