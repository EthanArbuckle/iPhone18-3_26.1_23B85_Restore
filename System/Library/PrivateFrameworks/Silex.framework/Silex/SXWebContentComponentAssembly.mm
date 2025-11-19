@interface SXWebContentComponentAssembly
- (void)loadInRegistry:(id)a3;
@end

@implementation SXWebContentComponentAssembly

- (void)loadInRegistry:(id)a3
{
  v3 = a3;
  v4 = [v3 callback];
  v5 = TFCallbackScopeAny();
  [v4 whenResolvingProtocol:&unk_1F53E41E0 scope:v5 callbackBlock:&__block_literal_global_67];

  v6 = [v3 callback];
  v7 = TFCallbackScopeAny();
  [v6 whenResolvingProtocol:&unk_1F5415A30 scope:v7 callbackBlock:&__block_literal_global_55_13];

  v8 = [v3 callback];
  v9 = TFCallbackScopeAny();
  [v8 whenResolvingProtocol:&unk_1F5438B50 scope:v9 callbackBlock:&__block_literal_global_78];

  v10 = [v3 publicContainer];
  v11 = [v10 registerClass:objc_opt_class() factory:&__block_literal_global_84];

  v12 = [v3 publicContainer];
  v13 = [v12 registerClass:objc_opt_class() factory:&__block_literal_global_203];

  v14 = [v3 publicContainer];
  v15 = [v14 registerClass:objc_opt_class() factory:&__block_literal_global_207];

  v16 = [v3 publicContainer];
  v17 = [v16 registerProtocol:&unk_1F53E6850 factory:&__block_literal_global_210_0];

  v18 = [v3 publicContainer];
  v19 = [v18 registerProtocol:&unk_1F5415370 factory:&__block_literal_global_249];

  v20 = [v3 publicContainer];
  v21 = [v20 registerProtocol:&unk_1F5417C40 factory:&__block_literal_global_282];

  v22 = [v3 privateContainer];
  v23 = [v22 registerProtocol:&unk_1F5414EB0 factory:&__block_literal_global_286];

  v24 = [v3 publicContainer];
  v25 = [v24 registerProtocol:&unk_1F53BA7A8 factory:&__block_literal_global_290];

  v26 = [v3 publicContainer];
  v27 = [v26 registerProtocol:&unk_1F53B0438 factory:&__block_literal_global_294];

  v28 = [v3 publicContainer];
  v29 = [v28 registerClass:objc_opt_class() factory:&__block_literal_global_298];

  v31 = [v3 publicContainer];

  v30 = [v31 registerClass:objc_opt_class() factory:&__block_literal_global_321];
}

void __48__SXWebContentComponentAssembly_loadInRegistry___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [v4 resolveClass:objc_opt_class()];

  [v5 addFactory:v6];
}

void __48__SXWebContentComponentAssembly_loadInRegistry___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [v4 resolveClass:objc_opt_class()];

  [v5 addFactory:v6];
}

void __48__SXWebContentComponentAssembly_loadInRegistry___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [v4 resolveClass:objc_opt_class()];
  [v5 registerHandler:v6 scheme:@"action"];

  v7 = [v4 resolveClass:objc_opt_class()];

  [v5 registerHandler:v7];
}

SXWebContentComponentViewFactory *__48__SXWebContentComponentAssembly_loadInRegistry___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  v16 = [SXWebContentComponentViewFactory alloc];
  v22 = [v2 resolveProtocol:&unk_1F53BE580];
  v18 = [v2 resolveClass:objc_opt_class()];
  v15 = [v2 resolveProtocol:&unk_1F5416F50];
  v14 = [v2 resolveProtocol:&unk_1F53E9D88];
  v13 = [v2 resolveClass:objc_opt_class()];
  v21 = [v2 resolveProtocol:&unk_1F53E6850];
  v20 = [v2 resolveProtocol:&unk_1F5438B50];
  v19 = [v2 resolveProtocol:&unk_1F53FB398];
  v12 = [v2 resolveProtocol:&unk_1F5416D50];
  v11 = [v2 resolveProtocol:&unk_1F5415370];
  v10 = [v2 resolveProtocol:&unk_1F5438880];
  v9 = [v2 resolveProtocol:&unk_1F53F79A0];
  v3 = [v2 resolveProtocol:&unk_1F5438BF8];
  v4 = [v2 resolveProtocol:&unk_1F5414EB0];
  v5 = [v2 resolveProtocol:&unk_1F5417698];
  v6 = [v2 resolveProtocol:&unk_1F53BA7A8];
  v7 = [v2 resolveProtocol:&unk_1F53B0438];
  v17 = [(SXWebContentComponentViewFactory *)v16 initWithResolver:v2 DOMObjectProvider:v22 viewport:v18 presentationDelegateProvider:v15 componentStyleRendererFactory:v14 containerViewController:v13 configurationProvider:v21 navigationManager:v20 analyticsReportingProvider:v19 componentExposureMonitor:v12 interactionManagerFactory:v11 reachabilityProvider:v10 resourceDataSourceProvider:v9 loadingPolicyProvider:v3 dataSourceProvider:v4 layoutInvalidator:v5 contentRuleProvider:v6 developerSettingsProvider:v7];

  return v17;
}

SXWebContentComponentSizerFactory *__48__SXWebContentComponentAssembly_loadInRegistry___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SXWebContentComponentSizerFactory alloc];
  v4 = [v2 resolveProtocol:&unk_1F53BE580];
  v5 = [v2 resolveProtocol:&unk_1F5438BF8];

  v6 = [(SXWebContentComponentSizerFactory *)v3 initWithDOMObjectProvider:v4 loadingPolicyProvider:v5];

  return v6;
}

SXFallbackLiveActivityAttributesProvider *__48__SXWebContentComponentAssembly_loadInRegistry___block_invoke_6()
{
  v0 = objc_alloc_init(SXFallbackLiveActivityAttributesProvider);

  return v0;
}

SXWebContentConfigurationProvider *__48__SXWebContentComponentAssembly_loadInRegistry___block_invoke_7(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 resolveOptionalProtocol:&unk_1F5426F88];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [v2 resolveClass:objc_opt_class()];
  }

  v6 = v5;

  v7 = [SXWebContentConfigurationProvider alloc];
  v8 = [v2 resolveProtocol:&unk_1F53E2118];
  v9 = [v2 resolveProtocol:&unk_1F5438C58];
  v10 = [v2 resolveProtocol:&unk_1F5438D00];
  v11 = [v2 resolveProtocol:&unk_1F53E6D98];
  v12 = [MEMORY[0x1E695DF58] currentLocale];
  v13 = [v2 resolveProtocol:&unk_1F5438E08];
  v14 = [(SXWebContentConfigurationProvider *)v7 initWithPresentationAttributesProvider:v8 storeFrontProvider:v9 liveActivityAttributesProvider:v6 feedConfigurationFactory:v10 viewControllerPresentationManager:v11 locale:v12 location:v13];

  return v14;
}

SXWebContentComponentInteractionManagerFactory *__48__SXWebContentComponentAssembly_loadInRegistry___block_invoke_8(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SXWebContentComponentInteractionManagerFactory alloc];
  v4 = [v2 resolveProtocol:&unk_1F5438F58];
  v5 = [v2 resolveProtocol:&unk_1F53F7820];
  v6 = [v2 resolveProtocol:&unk_1F5417C40];

  v7 = [(SXWebContentComponentInteractionManagerFactory *)v3 initWithInteractionProvider:v4 interactionHandlerManager:v5 componentInteractionHandlerFactory:v6];

  return v7;
}

SXWebContentComponentInteractionHandlerFactory *__48__SXWebContentComponentAssembly_loadInRegistry___block_invoke_9()
{
  v0 = objc_alloc_init(SXWebContentComponentInteractionHandlerFactory);

  return v0;
}

SXWebContentDataSourceProvider *__48__SXWebContentComponentAssembly_loadInRegistry___block_invoke_10(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SXWebContentDataSourceProvider alloc];
  v4 = [v2 resolveProtocol:&unk_1F53BE580];
  v5 = [v2 resolveProtocol:&unk_1F53F79A0];

  v6 = [(SXWebContentDataSourceProvider *)v3 initWithDOMObjectProvider:v4 resourceDataSourceProvider:v5];

  return v6;
}

SXWebContentComponentContentRuleProvider *__48__SXWebContentComponentAssembly_loadInRegistry___block_invoke_11()
{
  v0 = objc_alloc_init(SXWebContentComponentContentRuleProvider);

  return v0;
}

SXWebContentComponentDeveloperSettingsProvider *__48__SXWebContentComponentAssembly_loadInRegistry___block_invoke_12()
{
  v0 = objc_alloc_init(SXWebContentComponentDeveloperSettingsProvider);

  return v0;
}

SXWebContentGenericNavigationHandler *__48__SXWebContentComponentAssembly_loadInRegistry___block_invoke_13(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SXWebContentGenericNavigationHandler alloc];
  v4 = [v2 resolveProtocol:&unk_1F53A9FB8];
  v5 = [v2 resolveProtocol:&unk_1F53E6008];

  v6 = [(SXWebContentGenericNavigationHandler *)v3 initWithActionManager:v4 URLActionFactory:v5];

  return v6;
}

SXWebContentActionNavigationHandler *__48__SXWebContentComponentAssembly_loadInRegistry___block_invoke_14(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SXWebContentActionNavigationHandler alloc];
  v4 = [v2 resolveProtocol:&unk_1F5407760];
  v5 = [v2 resolveProtocol:&unk_1F53A9FB8];

  v6 = [(SXWebContentActionNavigationHandler *)v3 initWithActionProvider:v4 actionManager:v5];

  return v6;
}

@end