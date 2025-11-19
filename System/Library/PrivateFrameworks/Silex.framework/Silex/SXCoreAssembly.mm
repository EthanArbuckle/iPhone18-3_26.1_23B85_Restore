@interface SXCoreAssembly
- (void)loadInRegistry:(id)a3;
@end

@implementation SXCoreAssembly

- (void)loadInRegistry:(id)a3
{
  v3 = a3;
  v4 = [v3 publicContainer];
  v5 = [v4 registerClass:objc_opt_class() factory:&__block_literal_global_0];

  v6 = [v3 publicContainer];
  v7 = [v6 registerProtocol:&unk_1F53E6C20 factory:&__block_literal_global_239];

  v8 = [v3 publicContainer];
  v9 = [v8 registerClass:objc_opt_class() factory:&__block_literal_global_242];

  v10 = [v3 publicContainer];
  v11 = [v10 registerProtocol:&unk_1F53E6D98 factory:&__block_literal_global_250];

  v12 = [v3 publicContainer];
  v13 = [v12 registerClass:objc_opt_class() factory:&__block_literal_global_253];

  v14 = [v3 publicContainer];
  v15 = [v14 registerProtocol:&unk_1F53E2118 factory:&__block_literal_global_256];

  v16 = [v3 publicContainer];
  v17 = [v16 registerProtocol:&unk_1F53E2198 factory:&__block_literal_global_259];

  v18 = [v3 publicContainer];
  v19 = [v18 registerProtocol:&unk_1F53E2E48 factory:&__block_literal_global_268];

  v20 = [v3 publicContainer];
  v21 = [v20 registerProtocol:&unk_1F5423328 factory:&__block_literal_global_277];

  v22 = [v3 publicContainer];
  v23 = [v22 registerProtocol:&unk_1F53A6760 factory:&__block_literal_global_281];

  v24 = [v3 publicContainer];
  v25 = [v24 registerProtocol:&unk_1F5410610 factory:&__block_literal_global_287];

  v26 = [v3 publicContainer];
  v27 = [v26 registerProtocol:&unk_1F53E2F18 factory:&__block_literal_global_291];
  v28 = [v27 inScope:3];

  v29 = [v3 privateContainer];
  v30 = [v29 registerProtocol:&unk_1F5405548 factory:&__block_literal_global_301];
  v31 = [v30 inScope:3];

  v32 = [v3 publicContainer];
  v33 = [v32 registerProtocol:&unk_1F5417968 factory:&__block_literal_global_305];

  v34 = [v3 publicContainer];
  v35 = [v34 registerProtocol:&unk_1F54179F0 factory:&__block_literal_global_308];

  v36 = [v3 publicContainer];
  v37 = [v36 registerProtocol:&unk_1F53FB398 factory:&__block_literal_global_312];

  v38 = [v3 publicContainer];
  v39 = [v38 registerProtocol:&unk_1F53FB420 factory:&__block_literal_global_315];

  v40 = [v3 publicContainer];
  v41 = [v40 registerProtocol:&unk_1F53F79A0 factory:&__block_literal_global_319];

  v42 = [v3 publicContainer];
  v43 = [v42 registerProtocol:&unk_1F53F7A28 factory:&__block_literal_global_322];

  v44 = [v3 publicContainer];
  v45 = [v44 registerProtocol:&unk_1F5416F50 factory:&__block_literal_global_326];

  v46 = [v3 publicContainer];
  v47 = [v46 registerProtocol:&unk_1F5416FD8 factory:&__block_literal_global_329];

  v48 = [v3 publicContainer];
  v49 = [v48 registerProtocol:&unk_1F540FBD0 factory:&__block_literal_global_336];

  v50 = [v3 publicContainer];
  v51 = [v50 registerProtocol:&unk_1F540E6A0 factory:&__block_literal_global_343];

  v52 = [v3 publicContainer];
  v53 = [v52 registerProtocol:&unk_1F540E380 factory:&__block_literal_global_347];

  v54 = [v3 publicContainer];
  v55 = [v54 registerProtocol:&unk_1F540E2E0 factory:&__block_literal_global_355];

  v56 = [v3 privateContainer];
  v57 = [v56 registerClass:objc_opt_class() factory:&__block_literal_global_358];

  v58 = [v3 publicContainer];
  v59 = [v58 registerProtocol:&unk_1F53E20B8 factory:&__block_literal_global_361];

  v60 = [v3 privateContainer];
  v61 = [v60 registerProtocol:&unk_1F540FC88 factory:&__block_literal_global_365];

  v63 = [v3 publicContainer];

  v62 = [v63 registerProtocol:&unk_1F53ACF80 factory:&__block_literal_global_384];
}

SXScrollViewController *__33__SXCoreAssembly_loadInRegistry___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v17 = [SXScrollViewController alloc];
  v30 = [v2 resolveClass:objc_opt_class()];
  v29 = [v2 resolveProtocol:&unk_1F54179F0];
  v28 = [v2 resolveProtocol:&unk_1F53F7A28];
  v27 = [v2 resolveProtocol:&unk_1F53FB420];
  v25 = [v2 resolveProtocol:&unk_1F5416FD8];
  v24 = [v2 resolveProtocol:&unk_1F53E2198];
  v26 = [v2 resolveClass:objc_opt_class()];
  v23 = [v2 resolveClass:objc_opt_class()];
  v22 = [v2 resolveProtocol:&unk_1F54265E8];
  v21 = [v2 resolveProtocol:&unk_1F53D6B20];
  v16 = [v2 resolveProtocol:&unk_1F5438808];
  v20 = [v2 resolveClass:objc_opt_class()];
  v15 = [v2 resolveProtocol:&unk_1F5423328];
  v19 = [v2 resolveProtocol:&unk_1F53E79A0];
  v14 = [v2 resolveProtocol:&unk_1F53FCA00];
  v12 = [v2 resolveProtocol:&unk_1F53EA430];
  v13 = [v2 resolveProtocol:&unk_1F53C03A8];
  v11 = [v2 resolveProtocol:&unk_1F540E380];
  v10 = [v2 resolveClass:objc_opt_class()];
  v3 = [v2 resolveProtocol:&unk_1F53E20B8];
  v4 = [v2 resolveClass:objc_opt_class()];
  v5 = [v2 resolveClass:objc_opt_class()];
  v6 = [v2 resolveProtocol:&unk_1F540FC88];
  v7 = [v2 resolveProtocol:&unk_1F53BE580];
  v8 = [v2 resolveProtocol:&unk_1F53E2F18];

  v18 = [(SXScrollViewController *)v17 initWithScrollView:v30 documentControllerContainer:v29 resourceDataSourceContainer:v28 analyticsReportingContainer:v27 presentationDelegateContainer:v25 presentationAttributeManager:v24 viewport:v26 tangierController:v23 componentController:v22 interactor:v21 appStateMonitor:v16 viewControllerPresentingManager:v20 scrollPositionManager:v15 documentStyleRenderer:v19 componentInteractionManager:v14 interactionContextManager:v12 hoverStyleManager:v13 scrollReporter:v11 videoPlayerViewControllerManager:v10 mediaSharingPolicyProvider:v3 fontIndex:v4 documentProvider:v5 transitionDataSourceProvider:v6 DOMObjectProvider:v7 experimentationManager:v8];

  return v18;
}

id __33__SXCoreAssembly_loadInRegistry___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 resolveClass:objc_opt_class()];

  return v3;
}

SXViewControllerPresentingManager *__33__SXCoreAssembly_loadInRegistry___block_invoke_3()
{
  v0 = objc_alloc_init(SXViewControllerPresentingManager);

  return v0;
}

id __33__SXCoreAssembly_loadInRegistry___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 resolveClass:objc_opt_class()];

  return v3;
}

SXViewport *__33__SXCoreAssembly_loadInRegistry___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SXViewport alloc];
  v4 = [v2 resolveClass:objc_opt_class()];

  v5 = [(SXViewport *)v3 initWithView:v4];

  return v5;
}

SXPresentationAttributesManager *__33__SXCoreAssembly_loadInRegistry___block_invoke_7()
{
  v0 = objc_alloc_init(SXPresentationAttributesManager);

  return v0;
}

SXImageViewFactory *__33__SXCoreAssembly_loadInRegistry___block_invoke_8(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SXImageViewFactory alloc];
  v4 = [v2 resolveProtocol:&unk_1F53F79A0];
  v5 = [v2 resolveProtocol:&unk_1F5438880];

  v6 = [(SXImageViewFactory *)v3 initWithResourceDataSourceProvider:v4 reachabilityProvider:v5];

  return v6;
}

SXScrollPositionManager *__33__SXCoreAssembly_loadInRegistry___block_invoke_9()
{
  v0 = objc_alloc_init(SXScrollPositionManager);

  return v0;
}

SXProxyAuthenticationKeyProvider *__33__SXCoreAssembly_loadInRegistry___block_invoke_11()
{
  v0 = objc_alloc_init(SXProxyAuthenticationKeyProvider);

  return v0;
}

SXExperimentationManager *__33__SXCoreAssembly_loadInRegistry___block_invoke_12(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SXExperimentationManager alloc];
  v4 = [v2 resolveProtocol:&unk_1F5405548];

  v5 = [(SXExperimentationManager *)v3 initWithStore:v4];

  return v5;
}

SXExperimentationStore *__33__SXCoreAssembly_loadInRegistry___block_invoke_13()
{
  v0 = objc_alloc_init(SXExperimentationStore);

  return v0;
}

SXDocumentControllerContainer *__33__SXCoreAssembly_loadInRegistry___block_invoke_15()
{
  v0 = objc_alloc_init(SXDocumentControllerContainer);

  return v0;
}

SXAnalyticsReportingContainer *__33__SXCoreAssembly_loadInRegistry___block_invoke_17()
{
  v0 = objc_alloc_init(SXAnalyticsReportingContainer);

  return v0;
}

SXResourceDataSourceContainer *__33__SXCoreAssembly_loadInRegistry___block_invoke_19()
{
  v0 = objc_alloc_init(SXResourceDataSourceContainer);

  return v0;
}

SXPresentationDelegateContainer *__33__SXCoreAssembly_loadInRegistry___block_invoke_21()
{
  v0 = objc_alloc_init(SXPresentationDelegateContainer);

  return v0;
}

SXDateParser *__33__SXCoreAssembly_loadInRegistry___block_invoke_22()
{
  v0 = objc_alloc_init(SXDateParser);

  return v0;
}

SXDeviceCapabilities *__33__SXCoreAssembly_loadInRegistry___block_invoke_23()
{
  v0 = objc_alloc_init(SXDeviceCapabilities);

  return v0;
}

id __33__SXCoreAssembly_loadInRegistry___block_invoke_24(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 resolveClass:objc_opt_class()];

  return v3;
}

id __33__SXCoreAssembly_loadInRegistry___block_invoke_25(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 resolveClass:objc_opt_class()];

  return v3;
}

SXScrollObserverManager *__33__SXCoreAssembly_loadInRegistry___block_invoke_26()
{
  v0 = objc_alloc_init(SXScrollObserverManager);

  return v0;
}

SXMediaSharingPolicyProvider *__33__SXCoreAssembly_loadInRegistry___block_invoke_27()
{
  v0 = objc_alloc_init(SXMediaSharingPolicyProvider);

  return v0;
}

SXTransitionDataSourceProvider *__33__SXCoreAssembly_loadInRegistry___block_invoke_28(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SXTransitionDataSourceProvider alloc];
  v4 = [v2 resolveProtocol:&unk_1F54265E8];
  v5 = [v2 resolveClass:objc_opt_class()];
  v6 = [v2 resolveProtocol:&unk_1F53D5A80];

  v7 = [(SXTransitionDataSourceProvider *)v3 initWithComponentController:v4 scrollView:v5 documentMetadataProvider:v6];

  return v7;
}

SXFeatures *__33__SXCoreAssembly_loadInRegistry___block_invoke_29()
{
  v0 = [[SXFeatures alloc] initWithNewAdsEnabled:0 limitTextSelectionEnabled:0 textSelectionLimit:200 writingToolsDisabled:0];

  return v0;
}

@end