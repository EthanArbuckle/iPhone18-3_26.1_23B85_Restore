@interface SXEmbedVideoComponentViewFactory
- (SXEmbedVideoComponentViewFactory)initWithDOMObjectProvider:(id)a3 viewport:(id)a4 presentationDelegateProvider:(id)a5 componentStyleRendererFactory:(id)a6 analyticsReportingProvider:(id)a7 appStateMonitor:(id)a8 sceneStateMonitor:(id)a9 actionHandler:(id)a10 websiteDataStore:(id)a11 proxyAuthenticationHandler:(id)a12;
- (id)componentViewForComponent:(id)a3;
@end

@implementation SXEmbedVideoComponentViewFactory

- (SXEmbedVideoComponentViewFactory)initWithDOMObjectProvider:(id)a3 viewport:(id)a4 presentationDelegateProvider:(id)a5 componentStyleRendererFactory:(id)a6 analyticsReportingProvider:(id)a7 appStateMonitor:(id)a8 sceneStateMonitor:(id)a9 actionHandler:(id)a10 websiteDataStore:(id)a11 proxyAuthenticationHandler:(id)a12
{
  v27 = a7;
  v26 = a8;
  v25 = a9;
  v24 = a10;
  v18 = a11;
  v19 = a12;
  v28.receiver = self;
  v28.super_class = SXEmbedVideoComponentViewFactory;
  v20 = [(SXComponentViewFactory *)&v28 initWithDOMObjectProvider:a3 viewport:a4 presentationDelegateProvider:a5 componentStyleRendererFactory:a6];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_analyticsReportingProvider, a7);
    objc_storeStrong(&v21->_appStateMonitor, a8);
    objc_storeStrong(&v21->_sceneStateMonitor, a9);
    objc_storeStrong(&v21->_actionHandler, a10);
    objc_storeStrong(&v21->_dataStore, a11);
    objc_storeStrong(&v21->_proxyAuthenticationHandler, a12);
  }

  return v21;
}

- (id)componentViewForComponent:(id)a3
{
  v16 = [SXEmbedVideoComponentView alloc];
  v15 = [(SXComponentViewFactory *)self DOMObjectProvider];
  v4 = [(SXComponentViewFactory *)self viewport];
  v18 = [(SXComponentViewFactory *)self presentationDelegateProvider];
  v5 = [v18 presentationDelegate];
  v6 = [(SXComponentViewFactory *)self componentStyleRendererFactory];
  v17 = [(SXEmbedVideoComponentViewFactory *)self analyticsReportingProvider];
  v7 = [v17 analyticsReporting];
  v8 = [(SXEmbedVideoComponentViewFactory *)self appStateMonitor];
  v9 = [(SXEmbedVideoComponentViewFactory *)self sceneStateMonitor];
  v10 = [(SXEmbedVideoComponentViewFactory *)self actionHandler];
  v11 = [(SXEmbedVideoComponentViewFactory *)self dataStore];
  v12 = [(SXEmbedVideoComponentViewFactory *)self proxyAuthenticationHandler];
  v13 = [(SXEmbedVideoComponentView *)v16 initWithDOMObjectProvider:v15 viewport:v4 presentationDelegate:v5 componentStyleRendererFactory:v6 analyticsReporting:v7 appStateMonitor:v8 sceneStateMonitor:v9 actionHandler:v10 websiteDataStore:v11 proxyAuthenticationHandler:v12];

  return v13;
}

@end