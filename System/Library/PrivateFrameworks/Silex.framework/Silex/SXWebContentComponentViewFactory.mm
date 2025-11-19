@interface SXWebContentComponentViewFactory
- (SXWebContentComponentViewFactory)initWithResolver:(id)a3 DOMObjectProvider:(id)a4 viewport:(id)a5 presentationDelegateProvider:(id)a6 componentStyleRendererFactory:(id)a7 containerViewController:(id)a8 configurationProvider:(id)a9 navigationManager:(id)a10 analyticsReportingProvider:(id)a11 componentExposureMonitor:(id)a12 interactionManagerFactory:(id)a13 reachabilityProvider:(id)a14 resourceDataSourceProvider:(id)a15 loadingPolicyProvider:(id)a16 dataSourceProvider:(id)a17 layoutInvalidator:(id)a18 contentRuleProvider:(id)a19 developerSettingsProvider:(id)a20;
- (id)componentViewForComponent:(id)a3;
@end

@implementation SXWebContentComponentViewFactory

- (SXWebContentComponentViewFactory)initWithResolver:(id)a3 DOMObjectProvider:(id)a4 viewport:(id)a5 presentationDelegateProvider:(id)a6 componentStyleRendererFactory:(id)a7 containerViewController:(id)a8 configurationProvider:(id)a9 navigationManager:(id)a10 analyticsReportingProvider:(id)a11 componentExposureMonitor:(id)a12 interactionManagerFactory:(id)a13 reachabilityProvider:(id)a14 resourceDataSourceProvider:(id)a15 loadingPolicyProvider:(id)a16 dataSourceProvider:(id)a17 layoutInvalidator:(id)a18 contentRuleProvider:(id)a19 developerSettingsProvider:(id)a20
{
  v43 = a3;
  v42 = a8;
  v41 = a9;
  v40 = a10;
  v39 = a11;
  v38 = a12;
  v37 = a13;
  v36 = a14;
  v35 = a15;
  v21 = a16;
  v22 = a17;
  v23 = a18;
  v24 = a19;
  v25 = a20;
  v44.receiver = self;
  v44.super_class = SXWebContentComponentViewFactory;
  v26 = [(SXComponentViewFactory *)&v44 initWithDOMObjectProvider:a4 viewport:a5 presentationDelegateProvider:a6 componentStyleRendererFactory:a7];
  v27 = v26;
  if (v26)
  {
    objc_storeStrong(&v26->_resolver, a3);
    objc_storeStrong(&v27->_containerViewController, a8);
    objc_storeStrong(&v27->_configurationProvider, a9);
    objc_storeStrong(&v27->_componentExposureMonitor, a12);
    objc_storeStrong(&v27->_navigationManager, a10);
    objc_storeStrong(&v27->_analyticsReportingProvider, a11);
    objc_storeStrong(&v27->_interactionManagerFactory, a13);
    objc_storeStrong(&v27->_reachabilityProvider, a14);
    objc_storeStrong(&v27->_resourceDataSourceProvider, a15);
    objc_storeStrong(&v27->_loadingPolicyProvider, a16);
    objc_storeStrong(&v27->_dataSourceProvider, a17);
    objc_storeStrong(&v27->_layoutInvalidator, a18);
    objc_storeStrong(&v27->_contentRuleProvider, a19);
    objc_storeStrong(&v27->_developerSettingsProvider, a20);
  }

  return v27;
}

- (id)componentViewForComponent:(id)a3
{
  v4 = [(SXWebContentComponentViewFactory *)self contentRuleProvider];
  v27 = [v4 contentRules];

  v5 = [(SXWebContentComponentViewFactory *)self resolver];
  v6 = [v5 resolveClass:objc_opt_class()];

  [v6 addContentRuleList:v27 identifier:@"com.apple.news.webcontent"];
  v7 = [(SXWebContentComponentViewFactory *)self developerSettingsProvider];
  v8 = [v7 developerSettings];
  [v6 setDeveloperSettings:v8];

  [v6 setFocusShouldStartInputSession:1];
  v23 = [SXWebContentComponentView alloc];
  v29 = [(SXComponentViewFactory *)self DOMObjectProvider];
  v28 = [(SXComponentViewFactory *)self viewport];
  v26 = [(SXComponentViewFactory *)self presentationDelegateProvider];
  v22 = [v26 presentationDelegate];
  v21 = [(SXComponentViewFactory *)self componentStyleRendererFactory];
  v20 = [(SXWebContentComponentViewFactory *)self configurationProvider];
  v19 = [(SXWebContentComponentViewFactory *)self navigationManager];
  v25 = [(SXWebContentComponentViewFactory *)self analyticsReportingProvider];
  v18 = [v25 analyticsReporting];
  v17 = [(SXWebContentComponentViewFactory *)self componentExposureMonitor];
  v9 = [(SXWebContentComponentViewFactory *)self interactionManagerFactory];
  v10 = [(SXWebContentComponentViewFactory *)self reachabilityProvider];
  v11 = [(SXWebContentComponentViewFactory *)self resourceDataSourceProvider];
  v12 = [v11 resourceDataSource];
  v13 = [(SXWebContentComponentViewFactory *)self loadingPolicyProvider];
  v14 = [(SXWebContentComponentViewFactory *)self dataSourceProvider];
  v15 = [(SXWebContentComponentViewFactory *)self layoutInvalidator];
  v24 = [(SXWebContentComponentView *)v23 initWithDOMObjectProvider:v29 viewport:v28 presentationDelegate:v22 componentStyleRendererFactory:v21 containerViewController:v6 configurationProvider:v20 navigationManager:v19 analyticsReporting:v18 componentExposureMonitor:v17 interactionManagerFactory:v9 reachabilityProvider:v10 resourceDataSource:v12 loadingPolicyProvider:v13 dataSourceProvider:v14 layoutInvalidator:v15];

  return v24;
}

@end