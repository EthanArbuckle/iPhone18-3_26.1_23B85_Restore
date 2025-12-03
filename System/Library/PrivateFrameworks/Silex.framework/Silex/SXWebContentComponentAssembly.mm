@interface SXWebContentComponentAssembly
- (void)loadInRegistry:(id)registry;
@end

@implementation SXWebContentComponentAssembly

- (void)loadInRegistry:(id)registry
{
  registryCopy = registry;
  callback = [registryCopy callback];
  v5 = TFCallbackScopeAny();
  [callback whenResolvingProtocol:&unk_1F53E41E0 scope:v5 callbackBlock:&__block_literal_global_67];

  callback2 = [registryCopy callback];
  v7 = TFCallbackScopeAny();
  [callback2 whenResolvingProtocol:&unk_1F5415A30 scope:v7 callbackBlock:&__block_literal_global_55_13];

  callback3 = [registryCopy callback];
  v9 = TFCallbackScopeAny();
  [callback3 whenResolvingProtocol:&unk_1F5438B50 scope:v9 callbackBlock:&__block_literal_global_78];

  publicContainer = [registryCopy publicContainer];
  v11 = [publicContainer registerClass:objc_opt_class() factory:&__block_literal_global_84];

  publicContainer2 = [registryCopy publicContainer];
  v13 = [publicContainer2 registerClass:objc_opt_class() factory:&__block_literal_global_203];

  publicContainer3 = [registryCopy publicContainer];
  v15 = [publicContainer3 registerClass:objc_opt_class() factory:&__block_literal_global_207];

  publicContainer4 = [registryCopy publicContainer];
  v17 = [publicContainer4 registerProtocol:&unk_1F53E6850 factory:&__block_literal_global_210_0];

  publicContainer5 = [registryCopy publicContainer];
  v19 = [publicContainer5 registerProtocol:&unk_1F5415370 factory:&__block_literal_global_249];

  publicContainer6 = [registryCopy publicContainer];
  v21 = [publicContainer6 registerProtocol:&unk_1F5417C40 factory:&__block_literal_global_282];

  privateContainer = [registryCopy privateContainer];
  v23 = [privateContainer registerProtocol:&unk_1F5414EB0 factory:&__block_literal_global_286];

  publicContainer7 = [registryCopy publicContainer];
  v25 = [publicContainer7 registerProtocol:&unk_1F53BA7A8 factory:&__block_literal_global_290];

  publicContainer8 = [registryCopy publicContainer];
  v27 = [publicContainer8 registerProtocol:&unk_1F53B0438 factory:&__block_literal_global_294];

  publicContainer9 = [registryCopy publicContainer];
  v29 = [publicContainer9 registerClass:objc_opt_class() factory:&__block_literal_global_298];

  publicContainer10 = [registryCopy publicContainer];

  v30 = [publicContainer10 registerClass:objc_opt_class() factory:&__block_literal_global_321];
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