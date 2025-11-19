@interface SXImageComponentViewFactory
- (SXImageComponentViewFactory)initWithDOMObjectProvider:(id)a3 viewport:(id)a4 presentationDelegateProvider:(id)a5 componentStyleRendererFactory:(id)a6 analyticsReportingProvider:(id)a7 appStateMonitor:(id)a8 imageViewFactory:(id)a9 mediaSharingPolicyProvider:(id)a10;
- (id)componentViewForComponent:(id)a3;
@end

@implementation SXImageComponentViewFactory

- (SXImageComponentViewFactory)initWithDOMObjectProvider:(id)a3 viewport:(id)a4 presentationDelegateProvider:(id)a5 componentStyleRendererFactory:(id)a6 analyticsReportingProvider:(id)a7 appStateMonitor:(id)a8 imageViewFactory:(id)a9 mediaSharingPolicyProvider:(id)a10
{
  v23 = a7;
  v22 = a8;
  v21 = a9;
  v17 = a10;
  v24.receiver = self;
  v24.super_class = SXImageComponentViewFactory;
  v18 = [(SXComponentViewFactory *)&v24 initWithDOMObjectProvider:a3 viewport:a4 presentationDelegateProvider:a5 componentStyleRendererFactory:a6];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_analyticsReportingProvider, a7);
    objc_storeStrong(&v19->_appStateMonitor, a8);
    objc_storeStrong(&v19->_imageViewFactory, a9);
    objc_storeStrong(&v19->_mediaSharingPolicyProvider, a10);
  }

  return v19;
}

- (id)componentViewForComponent:(id)a3
{
  v16 = [SXImageComponentView alloc];
  v15 = [(SXComponentViewFactory *)self DOMObjectProvider];
  v4 = [(SXComponentViewFactory *)self viewport];
  v5 = [(SXComponentViewFactory *)self presentationDelegateProvider];
  v6 = [v5 presentationDelegate];
  v7 = [(SXComponentViewFactory *)self componentStyleRendererFactory];
  v8 = [(SXImageComponentViewFactory *)self analyticsReportingProvider];
  v9 = [v8 analyticsReporting];
  v10 = [(SXImageComponentViewFactory *)self appStateMonitor];
  v11 = [(SXImageComponentViewFactory *)self imageViewFactory];
  v12 = [(SXImageComponentViewFactory *)self mediaSharingPolicyProvider];
  v13 = [(SXImageComponentView *)v16 initWithDOMObjectProvider:v15 viewport:v4 presentationDelegate:v6 componentStyleRendererFactory:v7 analyticsReporting:v9 appStateMonitor:v10 imageViewFactory:v11 mediaSharingPolicyProvider:v12];

  return v13;
}

@end