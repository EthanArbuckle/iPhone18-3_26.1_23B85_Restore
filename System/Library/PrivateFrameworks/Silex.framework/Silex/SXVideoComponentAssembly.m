@interface SXVideoComponentAssembly
- (void)loadInRegistry:(id)a3;
@end

@implementation SXVideoComponentAssembly

- (void)loadInRegistry:(id)a3
{
  v3 = a3;
  v4 = [v3 callback];
  v5 = TFCallbackScopeAny();
  [v4 whenResolvingProtocol:&unk_1F53E41E0 scope:v5 callbackBlock:&__block_literal_global_45];

  v6 = [v3 callback];
  v7 = TFCallbackScopeAny();
  [v6 whenResolvingProtocol:&unk_1F5415A30 scope:v7 callbackBlock:&__block_literal_global_55_7];

  v8 = [v3 publicContainer];
  v9 = [v8 registerClass:objc_opt_class() factory:&__block_literal_global_59_5];

  v10 = [v3 publicContainer];
  v11 = [v10 registerProtocol:&unk_1F53C1008 factory:&__block_literal_global_140];

  v12 = [v3 publicContainer];
  v13 = [v12 registerClass:objc_opt_class() factory:&__block_literal_global_144];

  v14 = [v3 publicContainer];
  v15 = [v14 registerClass:objc_opt_class() factory:&__block_literal_global_147];

  v16 = [v3 publicContainer];
  v17 = [v16 registerProtocol:&unk_1F53F9528 factory:&__block_literal_global_149];

  v19 = [v3 publicContainer];

  v18 = [v19 registerClass:objc_opt_class() factory:&__block_literal_global_152];
}

void __43__SXVideoComponentAssembly_loadInRegistry___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [v4 resolveClass:objc_opt_class()];

  [v5 addFactory:v6];
}

void __43__SXVideoComponentAssembly_loadInRegistry___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [v4 resolveClass:objc_opt_class()];

  [v5 addFactory:v6];
}

SXVideoComponentViewFactory *__43__SXVideoComponentAssembly_loadInRegistry___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v15 = [SXVideoComponentViewFactory alloc];
  v18 = [v2 resolveProtocol:&unk_1F53BE580];
  v3 = [v2 resolveClass:objc_opt_class()];
  v4 = [v2 resolveProtocol:&unk_1F5416F50];
  v17 = [v2 resolveProtocol:&unk_1F53E9D88];
  v14 = [v2 resolveProtocol:&unk_1F53FB398];
  v13 = [v2 resolveProtocol:&unk_1F5438808];
  v12 = [v2 resolveProtocol:&unk_1F53C1008];
  v11 = [v2 resolveProtocol:&unk_1F53F79A0];
  v5 = [v2 resolveProtocol:&unk_1F5438880];
  v6 = [v2 resolveProtocol:&unk_1F540E2E0];
  v7 = [v2 resolveClass:objc_opt_class()];
  v8 = [v2 resolveProtocol:&unk_1F53D5C30];
  v9 = [v2 resolveProtocol:&unk_1F53F9528];

  v16 = [(SXVideoComponentViewFactory *)v15 initWithDOMObjectProvider:v18 viewport:v3 presentationDelegateProvider:v4 componentStyleRendererFactory:v17 analyticsReportingProvider:v14 appStateMonitor:v13 sceneStateMonitor:v12 resourceDataSourceProvider:v11 reachabilityProvider:v5 scrollObserverManager:v6 videoPlayerViewControllerManager:v7 bookmarkManager:v8 prerollAdFactory:v9];

  return v16;
}

SXDefaultSceneStateMonitor *__43__SXVideoComponentAssembly_loadInRegistry___block_invoke_4()
{
  v0 = objc_alloc_init(SXDefaultSceneStateMonitor);

  return v0;
}

SXVideoComponentSizerFactory *__43__SXVideoComponentAssembly_loadInRegistry___block_invoke_5()
{
  v0 = objc_alloc_init(SXVideoComponentSizerFactory);

  return v0;
}

SXVideoPlayerViewControllerManager *__43__SXVideoComponentAssembly_loadInRegistry___block_invoke_6()
{
  v0 = objc_alloc_init(SXVideoPlayerViewControllerManager);

  return v0;
}

id __43__SXVideoComponentAssembly_loadInRegistry___block_invoke_7(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 resolveClass:objc_opt_class()];

  return v3;
}

SXLegacyPrerollAdFactory *__43__SXVideoComponentAssembly_loadInRegistry___block_invoke_8(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SXLegacyPrerollAdFactory alloc];
  v4 = [v2 resolveClass:objc_opt_class()];
  v5 = [v2 resolveProtocol:&unk_1F540E2E0];

  v6 = [(SXLegacyPrerollAdFactory *)v3 initWithViewport:v4 scrollObserverManager:v5];

  return v6;
}

@end