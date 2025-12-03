@interface SXEmbedComponentAssembly
- (void)loadInRegistry:(id)registry;
@end

@implementation SXEmbedComponentAssembly

- (void)loadInRegistry:(id)registry
{
  registryCopy = registry;
  callback = [registryCopy callback];
  v5 = TFCallbackScopeAny();
  [callback whenResolvingProtocol:&unk_1F53E41E0 scope:v5 callbackBlock:&__block_literal_global_68];

  callback2 = [registryCopy callback];
  v7 = TFCallbackScopeAny();
  [callback2 whenResolvingProtocol:&unk_1F5415A30 scope:v7 callbackBlock:&__block_literal_global_55_14];

  publicContainer = [registryCopy publicContainer];
  v9 = [publicContainer registerClass:objc_opt_class() factory:&__block_literal_global_59_11];

  publicContainer2 = [registryCopy publicContainer];
  v11 = [publicContainer2 registerClass:objc_opt_class() factory:&__block_literal_global_152_0];

  publicContainer3 = [registryCopy publicContainer];
  v13 = [publicContainer3 registerClass:objc_opt_class() factory:&__block_literal_global_155];
  v14 = [v13 inScope:2];

  privateContainer = [registryCopy privateContainer];
  v16 = [privateContainer registerProtocol:&unk_1F540E588 factory:&__block_literal_global_160_0];

  publicContainer4 = [registryCopy publicContainer];
  v18 = [publicContainer4 registerClass:objc_opt_class() factory:&__block_literal_global_172];
  v19 = [v18 inScope:2];

  publicContainer5 = [registryCopy publicContainer];
  v21 = [publicContainer5 registerProtocol:&unk_1F53E40B8 factory:&__block_literal_global_174];

  publicContainer6 = [registryCopy publicContainer];
  v23 = [publicContainer6 registerProtocol:&unk_1F53DD6C0 factory:&__block_literal_global_177];

  privateContainer2 = [registryCopy privateContainer];

  v24 = [privateContainer2 registerProtocol:&unk_1F5422960 factory:&__block_literal_global_184_0];
}

void __43__SXEmbedComponentAssembly_loadInRegistry___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [v4 resolveClass:objc_opt_class()];

  [v5 addFactory:v6];
}

void __43__SXEmbedComponentAssembly_loadInRegistry___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [v4 resolveClass:objc_opt_class()];

  [v5 addFactory:v6];
}

SXEmbedComponentViewFactory *__43__SXEmbedComponentAssembly_loadInRegistry___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v15 = [SXEmbedComponentViewFactory alloc];
  v18 = [v2 resolveProtocol:&unk_1F53BE580];
  v12 = [v2 resolveClass:objc_opt_class()];
  v3 = [v2 resolveProtocol:&unk_1F5416F50];
  v17 = [v2 resolveProtocol:&unk_1F53E9D88];
  v14 = [v2 resolveProtocol:&unk_1F5438880];
  v13 = [v2 resolveProtocol:&unk_1F5438FB8];
  v11 = [v2 resolveProtocol:&unk_1F53BC890];
  v10 = [v2 resolveProtocol:&unk_1F5417698];
  v4 = [v2 resolveClass:objc_opt_class()];
  v5 = [v2 resolveClass:objc_opt_class()];
  v6 = [v2 resolveProtocol:&unk_1F53DD6C0];
  v7 = [v2 resolveProtocol:&unk_1F53C1008];
  v8 = [v2 resolveProtocol:&unk_1F53FB398];

  v16 = [(SXEmbedComponentViewFactory *)v15 initWithDOMObjectProvider:v18 viewport:v12 presentationDelegateProvider:v3 componentStyleRendererFactory:v17 reachabilityProvider:v14 embedDataProvider:v13 actionHandler:v11 layoutInvalidator:v10 websiteDataStore:v4 processPoolCache:v5 proxyAuthenticationHandler:v6 sceneStateMonitor:v7 analyticsReportingProvider:v8];

  return v16;
}

SXEmbedComponentSizerFactory *__43__SXEmbedComponentAssembly_loadInRegistry___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SXEmbedComponentSizerFactory alloc];
  v4 = [v2 resolveProtocol:&unk_1F53BE580];
  v5 = [v2 resolveProtocol:&unk_1F5438FB8];

  v6 = [(SXEmbedComponentSizerFactory *)v3 initWithDOMObjectProvider:v4 embedDataProvider:v5];

  return v6;
}

id __43__SXEmbedComponentAssembly_loadInRegistry___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = [a2 resolveProtocol:&unk_1F540E588];
  v3 = [v2 createWebsiteDataStore];

  return v3;
}

SXWebsiteDataStoreFactory *__43__SXEmbedComponentAssembly_loadInRegistry___block_invoke_6(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SXWebsiteDataStoreFactory alloc];
  v4 = [v2 resolveProtocol:&unk_1F53E40B8];

  v5 = [(SXWebsiteDataStoreFactory *)v3 initWithProxyConfiguration:v4];

  return v5;
}

SXWebProcessPoolCache *__43__SXEmbedComponentAssembly_loadInRegistry___block_invoke_7()
{
  v0 = objc_alloc_init(SXWebProcessPoolCache);

  return v0;
}

SXProxyAuthenticationHandler *__43__SXEmbedComponentAssembly_loadInRegistry___block_invoke_9(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SXProxyAuthenticationHandler alloc];
  v4 = [v2 resolveProtocol:&unk_1F5422960];
  v5 = [v2 resolveProtocol:&unk_1F53E40B8];

  v6 = [(SXProxyAuthenticationHandler *)v3 initWithCredentialFactory:v4 proxyConfiguration:v5 retryCount:1];

  return v6;
}

SXProxyAuthenticationCredentialFactory *__43__SXEmbedComponentAssembly_loadInRegistry___block_invoke_10(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SXProxyAuthenticationCredentialFactory alloc];
  v4 = [v2 resolveProtocol:&unk_1F5410610];

  v5 = [(SXProxyAuthenticationCredentialFactory *)v3 initWithKeyProvider:v4];

  return v5;
}

@end