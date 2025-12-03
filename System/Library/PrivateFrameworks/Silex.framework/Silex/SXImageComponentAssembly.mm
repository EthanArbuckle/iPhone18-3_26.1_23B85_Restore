@interface SXImageComponentAssembly
- (void)loadInRegistry:(id)registry;
@end

@implementation SXImageComponentAssembly

- (void)loadInRegistry:(id)registry
{
  registryCopy = registry;
  callback = [registryCopy callback];
  v5 = TFCallbackScopeAny();
  [callback whenResolvingProtocol:&unk_1F53E41E0 scope:v5 callbackBlock:&__block_literal_global_81];

  callback2 = [registryCopy callback];
  v7 = TFCallbackScopeAny();
  [callback2 whenResolvingProtocol:&unk_1F5415A30 scope:v7 callbackBlock:&__block_literal_global_55_18];

  publicContainer = [registryCopy publicContainer];
  v9 = [publicContainer registerClass:objc_opt_class() factory:&__block_literal_global_59_15];

  publicContainer2 = [registryCopy publicContainer];

  v10 = [publicContainer2 registerClass:objc_opt_class() factory:&__block_literal_global_126_2];
}

void __43__SXImageComponentAssembly_loadInRegistry___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [v4 resolveClass:objc_opt_class()];

  [v5 addFactory:v6];
}

void __43__SXImageComponentAssembly_loadInRegistry___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [v4 resolveClass:objc_opt_class()];

  [v5 addFactory:v6];
}

SXImageComponentViewFactory *__43__SXImageComponentAssembly_loadInRegistry___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SXImageComponentViewFactory alloc];
  v4 = [v2 resolveProtocol:&unk_1F53BE580];
  v5 = [v2 resolveClass:objc_opt_class()];
  v6 = [v2 resolveProtocol:&unk_1F5416F50];
  v7 = [v2 resolveProtocol:&unk_1F53E9D88];
  v8 = [v2 resolveProtocol:&unk_1F53FB398];
  v9 = [v2 resolveProtocol:&unk_1F5438808];
  v10 = [v2 resolveProtocol:&unk_1F53E2E48];
  v11 = [v2 resolveProtocol:&unk_1F53E20B8];

  v12 = [(SXImageComponentViewFactory *)v3 initWithDOMObjectProvider:v4 viewport:v5 presentationDelegateProvider:v6 componentStyleRendererFactory:v7 analyticsReportingProvider:v8 appStateMonitor:v9 imageViewFactory:v10 mediaSharingPolicyProvider:v11];

  return v12;
}

SXImageComponentSizerFactory *__43__SXImageComponentAssembly_loadInRegistry___block_invoke_4()
{
  v0 = objc_alloc_init(SXImageComponentSizerFactory);

  return v0;
}

@end