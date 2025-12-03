@interface SXQuickLookComponentAssembly
- (void)loadInRegistry:(id)registry;
@end

@implementation SXQuickLookComponentAssembly

- (void)loadInRegistry:(id)registry
{
  registryCopy = registry;
  callback = [registryCopy callback];
  v5 = TFCallbackScopeAny();
  [callback whenResolvingProtocol:&unk_1F53E41E0 scope:v5 callbackBlock:&__block_literal_global_55];

  callback2 = [registryCopy callback];
  v7 = TFCallbackScopeAny();
  [callback2 whenResolvingProtocol:&unk_1F5415A30 scope:v7 callbackBlock:&__block_literal_global_55_9];

  publicContainer = [registryCopy publicContainer];
  v9 = [publicContainer registerClass:objc_opt_class() factory:&__block_literal_global_59_7];

  publicContainer2 = [registryCopy publicContainer];
  v11 = [publicContainer2 registerClass:objc_opt_class() factory:&__block_literal_global_125];

  privateContainer = [registryCopy privateContainer];

  v12 = [privateContainer registerProtocol:&unk_1F53EBB78 factory:&__block_literal_global_128_2];
}

void __47__SXQuickLookComponentAssembly_loadInRegistry___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [v4 resolveClass:objc_opt_class()];

  [v5 addFactory:v6];
}

void __47__SXQuickLookComponentAssembly_loadInRegistry___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [v4 resolveClass:objc_opt_class()];

  [v5 addFactory:v6];
}

SXQuickLookComponentViewFactory *__47__SXQuickLookComponentAssembly_loadInRegistry___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SXQuickLookComponentViewFactory alloc];
  v4 = [v2 resolveProtocol:&unk_1F53BE580];
  v5 = [v2 resolveClass:objc_opt_class()];
  v6 = [v2 resolveProtocol:&unk_1F5416F50];
  v7 = [v2 resolveProtocol:&unk_1F53E9D88];
  v8 = [v2 resolveProtocol:&unk_1F53EBB78];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __47__SXQuickLookComponentAssembly_loadInRegistry___block_invoke_4;
  v13[3] = &unk_1E8500A98;
  v14 = v2;
  v9 = v2;
  v10 = [v9 resolveProtocol:&unk_1F5415230 contextBlock:v13];
  v11 = [(SXQuickLookComponentViewFactory *)v3 initWithDOMObjectProvider:v4 viewport:v5 presentationDelegateProvider:v6 componentStyleRendererFactory:v7 fileProvider:v8 quickLookModule:v10];

  return v11;
}

void __47__SXQuickLookComponentAssembly_loadInRegistry___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 resolveProtocol:&unk_1F53E6C20];
  [v3 useObject:v4 forProtocol:&unk_1F53E6C20];
}

SXQuickLookComponentSizerFactory *__47__SXQuickLookComponentAssembly_loadInRegistry___block_invoke_5()
{
  v0 = objc_alloc_init(SXQuickLookComponentSizerFactory);

  return v0;
}

SXQuickLookComponentFileProvider *__47__SXQuickLookComponentAssembly_loadInRegistry___block_invoke_6(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 resolveProtocol:&unk_1F5417968];
  v4 = [v3 documentController];
  v5 = [SXQuickLookComponentFileProvider alloc];
  v6 = [v2 resolveProtocol:&unk_1F53BE580];
  v7 = [v2 resolveProtocol:&unk_1F53F79A0];

  v8 = [(SXQuickLookComponentFileProvider *)v5 initWithDOMObjectProvider:v6 resourceDataSourceProvider:v7 shareURLProvider:v4];

  return v8;
}

@end