@interface SXDebugComponentAssembly
- (void)loadInRegistry:(id)a3;
@end

@implementation SXDebugComponentAssembly

- (void)loadInRegistry:(id)a3
{
  v3 = a3;
  v4 = [v3 callback];
  v5 = TFCallbackScopeAny();
  [v4 whenResolvingProtocol:&unk_1F53E41E0 scope:v5 callbackBlock:&__block_literal_global_104];

  v6 = [v3 callback];
  v7 = TFCallbackScopeAny();
  [v6 whenResolvingProtocol:&unk_1F5415A30 scope:v7 callbackBlock:&__block_literal_global_55_23];

  v8 = [v3 callback];
  v9 = TFCallbackScopeAny();
  [v8 whenResolvingProtocol:&unk_1F53E7178 scope:v9 callbackBlock:&__block_literal_global_68_0];

  v10 = [v3 publicContainer];
  v11 = [v10 registerClass:objc_opt_class() factory:&__block_literal_global_72_0];

  v12 = [v3 publicContainer];
  v13 = [v12 registerClass:objc_opt_class() factory:&__block_literal_global_118_1];

  v15 = [v3 publicContainer];

  v14 = [v15 registerClass:objc_opt_class() factory:&__block_literal_global_121_0];
}

void __43__SXDebugComponentAssembly_loadInRegistry___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [v4 resolveClass:objc_opt_class()];

  [v5 addFactory:v6];
}

void __43__SXDebugComponentAssembly_loadInRegistry___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [v4 resolveClass:objc_opt_class()];

  [v5 addFactory:v6];
}

void __43__SXDebugComponentAssembly_loadInRegistry___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [v4 resolveClass:objc_opt_class()];

  [v5 addInserter:v6];
}

SXDebugComponentViewFactory *__43__SXDebugComponentAssembly_loadInRegistry___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SXDebugComponentViewFactory alloc];
  v4 = [v2 resolveProtocol:&unk_1F53BE580];
  v5 = [v2 resolveClass:objc_opt_class()];
  v6 = [v2 resolveProtocol:&unk_1F5416F50];
  v7 = [v2 resolveProtocol:&unk_1F53E9D88];
  v8 = [v2 resolveProtocol:&unk_1F5417698];

  v9 = [(SXDebugComponentViewFactory *)v3 initWithDOMObjectProvider:v4 viewport:v5 presentationDelegateProvider:v6 componentStyleRendererFactory:v7 invalidator:v8];

  return v9;
}

SXDebugComponentSizerFactory *__43__SXDebugComponentAssembly_loadInRegistry___block_invoke_5()
{
  v0 = objc_alloc_init(SXDebugComponentSizerFactory);

  return v0;
}

SXDebugComponentInserter *__43__SXDebugComponentAssembly_loadInRegistry___block_invoke_6()
{
  v0 = objc_alloc_init(SXDebugComponentInserter);

  return v0;
}

@end