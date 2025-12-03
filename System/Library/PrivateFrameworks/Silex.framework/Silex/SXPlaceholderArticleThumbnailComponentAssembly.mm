@interface SXPlaceholderArticleThumbnailComponentAssembly
- (void)loadInRegistry:(id)registry;
@end

@implementation SXPlaceholderArticleThumbnailComponentAssembly

- (void)loadInRegistry:(id)registry
{
  registryCopy = registry;
  callback = [registryCopy callback];
  v5 = TFCallbackScopeAny();
  [callback whenResolvingProtocol:&unk_1F53E41E0 scope:v5 callbackBlock:&__block_literal_global_100];

  callback2 = [registryCopy callback];
  v7 = TFCallbackScopeAny();
  [callback2 whenResolvingProtocol:&unk_1F5415A30 scope:v7 callbackBlock:&__block_literal_global_55_22];

  publicContainer = [registryCopy publicContainer];
  v9 = [publicContainer registerClass:objc_opt_class() factory:&__block_literal_global_59_21];

  publicContainer2 = [registryCopy publicContainer];

  v10 = [publicContainer2 registerClass:objc_opt_class() factory:&__block_literal_global_103_1];
}

void __65__SXPlaceholderArticleThumbnailComponentAssembly_loadInRegistry___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [v4 resolveClass:objc_opt_class()];

  [v5 addFactory:v6];
}

void __65__SXPlaceholderArticleThumbnailComponentAssembly_loadInRegistry___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [v4 resolveClass:objc_opt_class()];

  [v5 addFactory:v6];
}

SXPlaceholderArticleThumbnailComponentViewFactory *__65__SXPlaceholderArticleThumbnailComponentAssembly_loadInRegistry___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SXPlaceholderArticleThumbnailComponentViewFactory alloc];
  v4 = [v2 resolveProtocol:&unk_1F53BE580];
  v5 = [v2 resolveClass:objc_opt_class()];
  v6 = [v2 resolveProtocol:&unk_1F5416F50];
  v7 = [v2 resolveProtocol:&unk_1F53E9D88];

  v8 = [(SXComponentViewFactory *)v3 initWithDOMObjectProvider:v4 viewport:v5 presentationDelegateProvider:v6 componentStyleRendererFactory:v7];

  return v8;
}

SXPlaceholderArticleThumbnailComponentSizerFactory *__65__SXPlaceholderArticleThumbnailComponentAssembly_loadInRegistry___block_invoke_4()
{
  v0 = objc_alloc_init(SXPlaceholderArticleThumbnailComponentSizerFactory);

  return v0;
}

@end