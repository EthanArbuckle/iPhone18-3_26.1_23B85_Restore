@interface SXScalableImageComponentAssembly
- (void)loadInRegistry:(id)a3;
@end

@implementation SXScalableImageComponentAssembly

- (void)loadInRegistry:(id)a3
{
  v3 = a3;
  v4 = [v3 callback];
  v5 = TFCallbackScopeAny();
  [v4 whenResolvingProtocol:&unk_1F53E41E0 scope:v5 callbackBlock:&__block_literal_global_91];

  v6 = [v3 callback];
  v7 = TFCallbackScopeAny();
  [v6 whenResolvingProtocol:&unk_1F5415A30 scope:v7 callbackBlock:&__block_literal_global_55_21];

  v8 = [v3 publicContainer];
  v9 = [v8 registerClass:objc_opt_class() factory:&__block_literal_global_59_19];

  v11 = [v3 publicContainer];

  v10 = [v11 registerClass:objc_opt_class() factory:&__block_literal_global_129_0];
}

void __51__SXScalableImageComponentAssembly_loadInRegistry___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [v4 resolveClass:objc_opt_class()];

  [v5 addFactory:v6];
}

void __51__SXScalableImageComponentAssembly_loadInRegistry___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [v4 resolveClass:objc_opt_class()];

  [v5 addFactory:v6];
}

SXScalableImageComponentViewFactory *__51__SXScalableImageComponentAssembly_loadInRegistry___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v14 = [SXScalableImageComponentViewFactory alloc];
  v3 = [v2 resolveProtocol:&unk_1F53BE580];
  v4 = [v2 resolveClass:objc_opt_class()];
  v5 = [v2 resolveProtocol:&unk_1F5416F50];
  v6 = [v2 resolveProtocol:&unk_1F53E9D88];
  v7 = [v2 resolveProtocol:&unk_1F53FB398];
  v8 = [v2 resolveProtocol:&unk_1F5438808];
  v9 = [v2 resolveProtocol:&unk_1F53E2E48];
  v10 = [v2 resolveProtocol:&unk_1F53AD3D0];
  v11 = [v2 resolveProtocol:&unk_1F53E20B8];

  v12 = [(SXScalableImageComponentViewFactory *)v14 initWithDOMObjectProvider:v3 viewport:v4 presentationDelegateProvider:v5 componentStyleRendererFactory:v6 analyticsReportingProvider:v7 appStateMonitor:v8 imageViewFactory:v9 canvasControllerFactory:v10 mediaSharingPolicyProvider:v11];

  return v12;
}

SXScalableImageComponentSizerFactory *__51__SXScalableImageComponentAssembly_loadInRegistry___block_invoke_4()
{
  v0 = objc_alloc_init(SXScalableImageComponentSizerFactory);

  return v0;
}

@end