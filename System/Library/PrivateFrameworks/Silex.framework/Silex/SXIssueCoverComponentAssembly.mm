@interface SXIssueCoverComponentAssembly
- (void)loadInRegistry:(id)a3;
@end

@implementation SXIssueCoverComponentAssembly

- (void)loadInRegistry:(id)a3
{
  v3 = a3;
  v4 = [v3 callback];
  v5 = TFCallbackScopeAny();
  [v4 whenResolvingProtocol:&unk_1F53E41E0 scope:v5 callbackBlock:&__block_literal_global_53];

  v6 = [v3 callback];
  v7 = TFCallbackScopeAny();
  [v6 whenResolvingProtocol:&unk_1F5415A30 scope:v7 callbackBlock:&__block_literal_global_55_8];

  v8 = [v3 publicContainer];
  v9 = [v8 registerClass:objc_opt_class() factory:&__block_literal_global_59_6];

  v10 = [v3 publicContainer];
  v11 = [v10 registerClass:objc_opt_class() factory:&__block_literal_global_110];

  v12 = [v3 publicContainer];
  v13 = [v12 registerProtocol:&unk_1F5417BA8 factory:&__block_literal_global_116];

  v15 = [v3 publicContainer];

  v14 = [v15 registerProtocol:&unk_1F53FCD40 factory:&__block_literal_global_120_1];
}

void __48__SXIssueCoverComponentAssembly_loadInRegistry___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [v4 resolveClass:objc_opt_class()];

  [v5 addFactory:v6];
}

void __48__SXIssueCoverComponentAssembly_loadInRegistry___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [v4 resolveClass:objc_opt_class()];

  [v5 addFactory:v6];
}

SXIssueCoverComponentViewFactory *__48__SXIssueCoverComponentAssembly_loadInRegistry___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SXIssueCoverComponentViewFactory alloc];
  v4 = [v2 resolveProtocol:&unk_1F53BE580];
  v5 = [v2 resolveClass:objc_opt_class()];
  v6 = [v2 resolveProtocol:&unk_1F5416F50];
  v7 = [v2 resolveProtocol:&unk_1F53E9D88];
  v8 = [v2 resolveProtocol:&unk_1F5417BA8];

  v9 = [(SXIssueCoverComponentViewFactory *)v3 initWithDOMObjectProvider:v4 viewport:v5 presentationDelegateProvider:v6 componentStyleRendererFactory:v7 viewProvider:v8];

  return v9;
}

SXIssueCoverComponentSizerFactory *__48__SXIssueCoverComponentAssembly_loadInRegistry___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SXIssueCoverComponentSizerFactory alloc];
  v4 = [v2 resolveProtocol:&unk_1F53FCD40];

  v5 = [(SXIssueCoverComponentSizerFactory *)v3 initWithLayoutAttributesFactory:v4];

  return v5;
}

SXIssueCoverViewProvider *__48__SXIssueCoverComponentAssembly_loadInRegistry___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SXIssueCoverViewProvider alloc];
  v4 = [v2 resolveProtocol:&unk_1F53FCD40];

  v5 = [(SXIssueCoverViewProvider *)v3 initWithLayoutAttributesFactory:v4];

  return v5;
}

SXIssueCoverLayoutAttributesFactory *__48__SXIssueCoverComponentAssembly_loadInRegistry___block_invoke_6()
{
  v0 = objc_alloc_init(SXIssueCoverLayoutAttributesFactory);

  return v0;
}

@end