@interface SXFlexibleSpacerComponentAssembly
- (void)loadInRegistry:(id)a3;
@end

@implementation SXFlexibleSpacerComponentAssembly

- (void)loadInRegistry:(id)a3
{
  v3 = a3;
  v4 = [v3 callback];
  v5 = TFCallbackScopeAny();
  [v4 whenResolvingProtocol:&unk_1F53E41E0 scope:v5 callbackBlock:&__block_literal_global_73];

  v6 = [v3 callback];
  v7 = TFCallbackScopeAny();
  [v6 whenResolvingProtocol:&unk_1F5415A30 scope:v7 callbackBlock:&__block_literal_global_55_16];

  v8 = [v3 publicContainer];
  v9 = [v8 registerClass:objc_opt_class() factory:&__block_literal_global_59_13];

  v11 = [v3 publicContainer];

  v10 = [v11 registerClass:objc_opt_class() factory:&__block_literal_global_104_1];
}

void __52__SXFlexibleSpacerComponentAssembly_loadInRegistry___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [v4 resolveClass:objc_opt_class()];

  [v5 addFactory:v6];
}

void __52__SXFlexibleSpacerComponentAssembly_loadInRegistry___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [v4 resolveClass:objc_opt_class()];

  [v5 addFactory:v6];
}

SXFlexibleSpacerComponentViewFactory *__52__SXFlexibleSpacerComponentAssembly_loadInRegistry___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SXFlexibleSpacerComponentViewFactory alloc];
  v4 = [v2 resolveProtocol:&unk_1F53BE580];
  v5 = [v2 resolveClass:objc_opt_class()];
  v6 = [v2 resolveProtocol:&unk_1F5416F50];
  v7 = [v2 resolveProtocol:&unk_1F53E9D88];

  v8 = [(SXComponentViewFactory *)v3 initWithDOMObjectProvider:v4 viewport:v5 presentationDelegateProvider:v6 componentStyleRendererFactory:v7];

  return v8;
}

SXFlexibleSpacerComponentSizerFactory *__52__SXFlexibleSpacerComponentAssembly_loadInRegistry___block_invoke_4()
{
  v0 = objc_alloc_init(SXFlexibleSpacerComponentSizerFactory);

  return v0;
}

@end