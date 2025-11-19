@interface SXEmbedComponentViewFactory
- (SXEmbedComponentViewFactory)initWithDOMObjectProvider:(id)a3 viewport:(id)a4 presentationDelegateProvider:(id)a5 componentStyleRendererFactory:(id)a6 reachabilityProvider:(id)a7 embedDataProvider:(id)a8 actionHandler:(id)a9 layoutInvalidator:(id)a10 websiteDataStore:(id)a11 processPoolCache:(id)a12 proxyAuthenticationHandler:(id)a13 sceneStateMonitor:(id)a14 analyticsReportingProvider:(id)a15;
- (id)componentViewForComponent:(id)a3;
@end

@implementation SXEmbedComponentViewFactory

- (SXEmbedComponentViewFactory)initWithDOMObjectProvider:(id)a3 viewport:(id)a4 presentationDelegateProvider:(id)a5 componentStyleRendererFactory:(id)a6 reachabilityProvider:(id)a7 embedDataProvider:(id)a8 actionHandler:(id)a9 layoutInvalidator:(id)a10 websiteDataStore:(id)a11 processPoolCache:(id)a12 proxyAuthenticationHandler:(id)a13 sceneStateMonitor:(id)a14 analyticsReportingProvider:(id)a15
{
  v33 = a7;
  v32 = a8;
  v31 = a9;
  v30 = a10;
  v29 = a11;
  v28 = a12;
  v18 = a13;
  v19 = a14;
  v20 = a15;
  v34.receiver = self;
  v34.super_class = SXEmbedComponentViewFactory;
  v21 = [(SXComponentViewFactory *)&v34 initWithDOMObjectProvider:a3 viewport:a4 presentationDelegateProvider:a5 componentStyleRendererFactory:a6];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_reachabilityProvider, a7);
    objc_storeStrong(&v22->_embedDataProvider, a8);
    objc_storeStrong(&v22->_actionHandler, a9);
    objc_storeStrong(&v22->_layoutInvalidator, a10);
    objc_storeStrong(&v22->_dataStore, a11);
    objc_storeStrong(&v22->_processPoolCache, a12);
    objc_storeStrong(&v22->_proxyAuthenticationHandler, a13);
    objc_storeStrong(&v22->_sceneStateMonitor, a14);
    objc_storeStrong(&v22->_analyticsReportingProvider, a15);
  }

  return v22;
}

- (id)componentViewForComponent:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v5 = off_1E84FD1F0;
  }

  else
  {
    v5 = off_1E84FCC58;
  }

  v20 = objc_alloc(*v5);
  v23 = [(SXComponentViewFactory *)self DOMObjectProvider];
  v6 = [(SXComponentViewFactory *)self viewport];
  v22 = [(SXComponentViewFactory *)self presentationDelegateProvider];
  v7 = [v22 presentationDelegate];
  v19 = [(SXComponentViewFactory *)self componentStyleRendererFactory];
  v18 = [(SXEmbedComponentViewFactory *)self reachabilityProvider];
  v17 = [(SXEmbedComponentViewFactory *)self embedDataProvider];
  v16 = [(SXEmbedComponentViewFactory *)self actionHandler];
  v15 = [(SXEmbedComponentViewFactory *)self layoutInvalidator];
  v14 = [(SXEmbedComponentViewFactory *)self dataStore];
  v8 = [(SXEmbedComponentViewFactory *)self processPoolCache];
  v9 = [(SXEmbedComponentViewFactory *)self proxyAuthenticationHandler];
  v10 = [(SXEmbedComponentViewFactory *)self sceneStateMonitor];
  v11 = [(SXEmbedComponentViewFactory *)self analyticsReportingProvider];
  v12 = [v11 analyticsReporting];
  v21 = [v20 initWithDOMObjectProvider:v23 viewport:v6 presentationDelegate:v7 componentStyleRendererFactory:v19 reachabilityProvider:v18 embedDataProvider:v17 actionHandler:v16 layoutInvalidator:v15 websiteDataStore:v14 processPoolCache:v8 proxyAuthenticationHandler:v9 sceneStateMonitor:v10 analyticsReporting:v12];

  return v21;
}

@end