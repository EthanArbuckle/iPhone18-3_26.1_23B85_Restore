@interface SXArticleLinkComponentAssembly
- (void)loadInRegistry:(id)registry;
@end

@implementation SXArticleLinkComponentAssembly

- (void)loadInRegistry:(id)registry
{
  registryCopy = registry;
  callback = [registryCopy callback];
  v5 = TFCallbackScopeAny();
  [callback whenResolvingProtocol:&unk_1F53E41E0 scope:v5 callbackBlock:&__block_literal_global_90];

  callback2 = [registryCopy callback];
  v7 = TFCallbackScopeAny();
  [callback2 whenResolvingProtocol:&unk_1F5415A30 scope:v7 callbackBlock:&__block_literal_global_55_20];

  publicContainer = [registryCopy publicContainer];
  v9 = [publicContainer registerClass:objc_opt_class() factory:&__block_literal_global_59_18];

  publicContainer2 = [registryCopy publicContainer];
  v11 = [publicContainer2 registerClass:objc_opt_class() factory:&__block_literal_global_122_1];

  publicContainer3 = [registryCopy publicContainer];

  v12 = [publicContainer3 registerProtocol:&unk_1F540E160 factory:&__block_literal_global_124_1];
}

void __49__SXArticleLinkComponentAssembly_loadInRegistry___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [v4 resolveClass:objc_opt_class()];

  [v5 addFactory:v6];
}

void __49__SXArticleLinkComponentAssembly_loadInRegistry___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [v4 resolveClass:objc_opt_class()];

  [v5 addFactory:v6];
}

SXArticleLinkComponentViewFactory *__49__SXArticleLinkComponentAssembly_loadInRegistry___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v14 = [SXArticleLinkComponentViewFactory alloc];
  v3 = [v2 resolveProtocol:&unk_1F53BE580];
  v4 = [v2 resolveClass:objc_opt_class()];
  v5 = [v2 resolveProtocol:&unk_1F5416F50];
  v6 = [v2 resolveProtocol:&unk_1F53E9D88];
  v7 = [v2 resolveProtocol:&unk_1F53E20B8];
  v8 = [v2 resolveProtocol:&unk_1F53F7820];
  v9 = [v2 resolveProtocol:&unk_1F53D86F0];
  v10 = [v2 resolveProtocol:&unk_1F53E6008];
  v11 = [v2 resolveProtocol:&unk_1F540E160];

  v12 = [(SXArticleLinkComponentViewFactory *)v14 initWithDOMObjectProvider:v3 viewport:v4 presentationDelegateProvider:v5 componentStyleRendererFactory:v6 mediaSharingPolicyProvider:v7 interactionHandlerManager:v8 interactionHandlerFactory:v9 URLActionFactory:v10 articleURLFactory:v11];

  return v12;
}

SXArticleLinkComponentSizerFactory *__49__SXArticleLinkComponentAssembly_loadInRegistry___block_invoke_4()
{
  v0 = objc_alloc_init(SXArticleLinkComponentSizerFactory);

  return v0;
}

SXArticleURLFactory *__49__SXArticleLinkComponentAssembly_loadInRegistry___block_invoke_5()
{
  v0 = objc_alloc_init(SXArticleURLFactory);

  return v0;
}

@end