@interface SXContainerComponentAssembly
- (void)loadInRegistry:(id)a3;
@end

@implementation SXContainerComponentAssembly

- (void)loadInRegistry:(id)a3
{
  v3 = a3;
  v4 = [v3 callback];
  v5 = TFCallbackScopeAny();
  [v4 whenResolvingProtocol:&unk_1F53E41E0 scope:v5 callbackBlock:&__block_literal_global_9];

  v6 = [v3 callback];
  v7 = TFCallbackScopeAny();
  [v6 whenResolvingProtocol:&unk_1F5415A30 scope:v7 callbackBlock:&__block_literal_global_55_0];

  v8 = [v3 publicContainer];
  v9 = [v8 registerClass:objc_opt_class() factory:&__block_literal_global_59_0];

  v11 = [v3 publicContainer];

  v10 = [v11 registerClass:objc_opt_class() factory:&__block_literal_global_108];
}

void __47__SXContainerComponentAssembly_loadInRegistry___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [v4 resolveClass:objc_opt_class()];

  [v5 addFactory:v6];
}

void __47__SXContainerComponentAssembly_loadInRegistry___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [v4 resolveClass:objc_opt_class()];

  [v5 addFactory:v6];
}

SXContainerComponentViewFactory *__47__SXContainerComponentAssembly_loadInRegistry___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SXContainerComponentViewFactory alloc];
  v4 = [v2 resolveProtocol:&unk_1F53BE580];
  v5 = [v2 resolveClass:objc_opt_class()];
  v6 = [v2 resolveProtocol:&unk_1F5416F50];
  v7 = [v2 resolveProtocol:&unk_1F53E9D88];
  v8 = [v2 resolveProtocol:&unk_1F53E20B8];

  v9 = [(SXContainerComponentViewFactory *)v3 initWithDOMObjectProvider:v4 viewport:v5 presentationDelegateProvider:v6 componentStyleRendererFactory:v7 mediaSharingPolicyProvider:v8];

  return v9;
}

SXContainerComponentSizerFactory *__47__SXContainerComponentAssembly_loadInRegistry___block_invoke_4()
{
  v0 = objc_alloc_init(SXContainerComponentSizerFactory);

  return v0;
}

@end