@interface SXEmbedVideoComponentAssembly
- (void)loadInRegistry:(id)a3;
@end

@implementation SXEmbedVideoComponentAssembly

- (void)loadInRegistry:(id)a3
{
  v3 = a3;
  v4 = [v3 callback];
  v5 = TFCallbackScopeAny();
  [v4 whenResolvingProtocol:&unk_1F53E41E0 scope:v5 callbackBlock:&__block_literal_global_36];

  v6 = [v3 callback];
  v7 = TFCallbackScopeAny();
  [v6 whenResolvingProtocol:&unk_1F5415A30 scope:v7 callbackBlock:&__block_literal_global_55_6];

  v8 = [v3 publicContainer];
  v9 = [v8 registerClass:objc_opt_class() factory:&__block_literal_global_59_4];

  v11 = [v3 publicContainer];

  v10 = [v11 registerClass:objc_opt_class() factory:&__block_literal_global_128_1];
}

void __48__SXEmbedVideoComponentAssembly_loadInRegistry___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [v4 resolveClass:objc_opt_class()];

  [v5 addFactory:v6];
}

void __48__SXEmbedVideoComponentAssembly_loadInRegistry___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [v4 resolveClass:objc_opt_class()];

  [v5 addFactory:v6];
}

SXEmbedVideoComponentViewFactory *__48__SXEmbedVideoComponentAssembly_loadInRegistry___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SXEmbedVideoComponentViewFactory alloc];
  v4 = [v2 resolveProtocol:&unk_1F53BE580];
  v5 = [v2 resolveClass:objc_opt_class()];
  v6 = [v2 resolveProtocol:&unk_1F5416F50];
  v7 = [v2 resolveProtocol:&unk_1F53E9D88];
  v15 = [v2 resolveProtocol:&unk_1F53FB398];
  v14 = [v2 resolveProtocol:&unk_1F5438808];
  v8 = [v2 resolveProtocol:&unk_1F53C1008];
  v9 = [v2 resolveProtocol:&unk_1F53BC890];
  v10 = [v2 resolveClass:objc_opt_class()];
  v11 = [v2 resolveProtocol:&unk_1F53DD6C0];

  v13 = [(SXEmbedVideoComponentViewFactory *)v3 initWithDOMObjectProvider:v4 viewport:v5 presentationDelegateProvider:v6 componentStyleRendererFactory:v7 analyticsReportingProvider:v15 appStateMonitor:v14 sceneStateMonitor:v8 actionHandler:v9 websiteDataStore:v10 proxyAuthenticationHandler:v11];

  return v13;
}

SXEmbedVideoComponentSizerFactory *__48__SXEmbedVideoComponentAssembly_loadInRegistry___block_invoke_4()
{
  v0 = objc_alloc_init(SXEmbedVideoComponentSizerFactory);

  return v0;
}

@end