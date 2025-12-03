@interface SXButtonComponentAssembly
- (void)loadInRegistry:(id)registry;
@end

@implementation SXButtonComponentAssembly

- (void)loadInRegistry:(id)registry
{
  registryCopy = registry;
  publicContainer = [registryCopy publicContainer];
  v5 = [publicContainer registerClass:objc_opt_class() factory:&__block_literal_global_18];

  publicContainer2 = [registryCopy publicContainer];
  v7 = [publicContainer2 registerClass:objc_opt_class() factory:&__block_literal_global_104];
  v8 = [v7 withConfiguration:&__block_literal_global_109_0];

  callback = [registryCopy callback];
  v10 = TFCallbackScopeAny();
  [callback whenResolvingProtocol:&unk_1F53E41E0 scope:v10 callbackBlock:&__block_literal_global_120_0];

  callback2 = [registryCopy callback];
  v12 = TFCallbackScopeAny();
  [callback2 whenResolvingProtocol:&unk_1F5415A30 scope:v12 callbackBlock:&__block_literal_global_128];

  privateContainer = [registryCopy privateContainer];

  v13 = [privateContainer registerClass:objc_opt_class() factory:&__block_literal_global_131];
}

SXButtonComponentViewFactory *__44__SXButtonComponentAssembly_loadInRegistry___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SXButtonComponentViewFactory alloc];
  v4 = [v2 resolveProtocol:&unk_1F53BE580];
  v5 = [v2 resolveClass:objc_opt_class()];
  v6 = [v2 resolveProtocol:&unk_1F5416F50];
  v7 = [v2 resolveProtocol:&unk_1F53E9D88];
  v8 = [v2 resolveProtocol:&unk_1F53D86F0];
  v9 = [v2 resolveProtocol:&unk_1F53F7820];

  v10 = [(SXButtonComponentViewFactory *)v3 initWithDOMObjectProvider:v4 viewport:v5 presentationDelegateProvider:v6 componentStyleRendererFactory:v7 interactionHandlerFactory:v8 interactionHandlerManager:v9];

  return v10;
}

SXButtonComponentSizerFactory *__44__SXButtonComponentAssembly_loadInRegistry___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SXButtonComponentSizerFactory alloc];
  v4 = [v2 resolveClass:objc_opt_class()];
  v5 = [v2 resolveProtocol:&unk_1F53D0140];

  v6 = [(SXButtonComponentSizerFactory *)v3 initWithTextProvider:v4 textSourceFactory:v5];

  return v6;
}

void __44__SXButtonComponentAssembly_loadInRegistry___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 resolveProtocol:&unk_1F5411280];
  [v4 setTextComponentLayoutHosting:v5];
}

void __44__SXButtonComponentAssembly_loadInRegistry___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [v4 resolveClass:objc_opt_class()];

  [v5 addFactory:v6];
}

void __44__SXButtonComponentAssembly_loadInRegistry___block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [v4 resolveClass:objc_opt_class()];

  [v5 addFactory:v6];
}

SXButtonComponentTextProvider *__44__SXButtonComponentAssembly_loadInRegistry___block_invoke_6()
{
  v0 = objc_alloc_init(SXButtonComponentTextProvider);

  return v0;
}

@end