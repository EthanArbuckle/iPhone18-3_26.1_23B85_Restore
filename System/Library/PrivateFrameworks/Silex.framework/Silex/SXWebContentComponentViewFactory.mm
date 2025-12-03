@interface SXWebContentComponentViewFactory
- (SXWebContentComponentViewFactory)initWithResolver:(id)resolver DOMObjectProvider:(id)provider viewport:(id)viewport presentationDelegateProvider:(id)delegateProvider componentStyleRendererFactory:(id)factory containerViewController:(id)controller configurationProvider:(id)configurationProvider navigationManager:(id)self0 analyticsReportingProvider:(id)self1 componentExposureMonitor:(id)self2 interactionManagerFactory:(id)self3 reachabilityProvider:(id)self4 resourceDataSourceProvider:(id)self5 loadingPolicyProvider:(id)self6 dataSourceProvider:(id)self7 layoutInvalidator:(id)self8 contentRuleProvider:(id)self9 developerSettingsProvider:(id)settingsProvider;
- (id)componentViewForComponent:(id)component;
@end

@implementation SXWebContentComponentViewFactory

- (SXWebContentComponentViewFactory)initWithResolver:(id)resolver DOMObjectProvider:(id)provider viewport:(id)viewport presentationDelegateProvider:(id)delegateProvider componentStyleRendererFactory:(id)factory containerViewController:(id)controller configurationProvider:(id)configurationProvider navigationManager:(id)self0 analyticsReportingProvider:(id)self1 componentExposureMonitor:(id)self2 interactionManagerFactory:(id)self3 reachabilityProvider:(id)self4 resourceDataSourceProvider:(id)self5 loadingPolicyProvider:(id)self6 dataSourceProvider:(id)self7 layoutInvalidator:(id)self8 contentRuleProvider:(id)self9 developerSettingsProvider:(id)settingsProvider
{
  resolverCopy = resolver;
  controllerCopy = controller;
  configurationProviderCopy = configurationProvider;
  managerCopy = manager;
  reportingProviderCopy = reportingProvider;
  monitorCopy = monitor;
  managerFactoryCopy = managerFactory;
  reachabilityProviderCopy = reachabilityProvider;
  sourceProviderCopy = sourceProvider;
  policyProviderCopy = policyProvider;
  dataSourceProviderCopy = dataSourceProvider;
  invalidatorCopy = invalidator;
  ruleProviderCopy = ruleProvider;
  settingsProviderCopy = settingsProvider;
  v44.receiver = self;
  v44.super_class = SXWebContentComponentViewFactory;
  v26 = [(SXComponentViewFactory *)&v44 initWithDOMObjectProvider:provider viewport:viewport presentationDelegateProvider:delegateProvider componentStyleRendererFactory:factory];
  v27 = v26;
  if (v26)
  {
    objc_storeStrong(&v26->_resolver, resolver);
    objc_storeStrong(&v27->_containerViewController, controller);
    objc_storeStrong(&v27->_configurationProvider, configurationProvider);
    objc_storeStrong(&v27->_componentExposureMonitor, monitor);
    objc_storeStrong(&v27->_navigationManager, manager);
    objc_storeStrong(&v27->_analyticsReportingProvider, reportingProvider);
    objc_storeStrong(&v27->_interactionManagerFactory, managerFactory);
    objc_storeStrong(&v27->_reachabilityProvider, reachabilityProvider);
    objc_storeStrong(&v27->_resourceDataSourceProvider, sourceProvider);
    objc_storeStrong(&v27->_loadingPolicyProvider, policyProvider);
    objc_storeStrong(&v27->_dataSourceProvider, dataSourceProvider);
    objc_storeStrong(&v27->_layoutInvalidator, invalidator);
    objc_storeStrong(&v27->_contentRuleProvider, ruleProvider);
    objc_storeStrong(&v27->_developerSettingsProvider, settingsProvider);
  }

  return v27;
}

- (id)componentViewForComponent:(id)component
{
  contentRuleProvider = [(SXWebContentComponentViewFactory *)self contentRuleProvider];
  contentRules = [contentRuleProvider contentRules];

  resolver = [(SXWebContentComponentViewFactory *)self resolver];
  v6 = [resolver resolveClass:objc_opt_class()];

  [v6 addContentRuleList:contentRules identifier:@"com.apple.news.webcontent"];
  developerSettingsProvider = [(SXWebContentComponentViewFactory *)self developerSettingsProvider];
  developerSettings = [developerSettingsProvider developerSettings];
  [v6 setDeveloperSettings:developerSettings];

  [v6 setFocusShouldStartInputSession:1];
  v23 = [SXWebContentComponentView alloc];
  dOMObjectProvider = [(SXComponentViewFactory *)self DOMObjectProvider];
  viewport = [(SXComponentViewFactory *)self viewport];
  presentationDelegateProvider = [(SXComponentViewFactory *)self presentationDelegateProvider];
  presentationDelegate = [presentationDelegateProvider presentationDelegate];
  componentStyleRendererFactory = [(SXComponentViewFactory *)self componentStyleRendererFactory];
  configurationProvider = [(SXWebContentComponentViewFactory *)self configurationProvider];
  navigationManager = [(SXWebContentComponentViewFactory *)self navigationManager];
  analyticsReportingProvider = [(SXWebContentComponentViewFactory *)self analyticsReportingProvider];
  analyticsReporting = [analyticsReportingProvider analyticsReporting];
  componentExposureMonitor = [(SXWebContentComponentViewFactory *)self componentExposureMonitor];
  interactionManagerFactory = [(SXWebContentComponentViewFactory *)self interactionManagerFactory];
  reachabilityProvider = [(SXWebContentComponentViewFactory *)self reachabilityProvider];
  resourceDataSourceProvider = [(SXWebContentComponentViewFactory *)self resourceDataSourceProvider];
  resourceDataSource = [resourceDataSourceProvider resourceDataSource];
  loadingPolicyProvider = [(SXWebContentComponentViewFactory *)self loadingPolicyProvider];
  dataSourceProvider = [(SXWebContentComponentViewFactory *)self dataSourceProvider];
  layoutInvalidator = [(SXWebContentComponentViewFactory *)self layoutInvalidator];
  v24 = [(SXWebContentComponentView *)v23 initWithDOMObjectProvider:dOMObjectProvider viewport:viewport presentationDelegate:presentationDelegate componentStyleRendererFactory:componentStyleRendererFactory containerViewController:v6 configurationProvider:configurationProvider navigationManager:navigationManager analyticsReporting:analyticsReporting componentExposureMonitor:componentExposureMonitor interactionManagerFactory:interactionManagerFactory reachabilityProvider:reachabilityProvider resourceDataSource:resourceDataSource loadingPolicyProvider:loadingPolicyProvider dataSourceProvider:dataSourceProvider layoutInvalidator:layoutInvalidator];

  return v24;
}

@end