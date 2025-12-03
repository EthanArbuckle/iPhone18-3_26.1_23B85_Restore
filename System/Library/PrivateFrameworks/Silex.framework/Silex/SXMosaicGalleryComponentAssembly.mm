@interface SXMosaicGalleryComponentAssembly
- (void)loadInRegistry:(id)registry;
@end

@implementation SXMosaicGalleryComponentAssembly

- (void)loadInRegistry:(id)registry
{
  registryCopy = registry;
  callback = [registryCopy callback];
  v5 = TFCallbackScopeAny();
  [callback whenResolvingProtocol:&unk_1F53E41E0 scope:v5 callbackBlock:&__block_literal_global_84];

  callback2 = [registryCopy callback];
  v7 = TFCallbackScopeAny();
  [callback2 whenResolvingProtocol:&unk_1F5415A30 scope:v7 callbackBlock:&__block_literal_global_55_19];

  publicContainer = [registryCopy publicContainer];
  v9 = [publicContainer registerClass:objc_opt_class() factory:&__block_literal_global_59_17];

  publicContainer2 = [registryCopy publicContainer];
  v11 = [publicContainer2 registerClass:objc_opt_class() factory:&__block_literal_global_124_0];

  privateContainer = [registryCopy privateContainer];

  v12 = [privateContainer registerProtocol:&unk_1F53BD7A8 factory:&__block_literal_global_127];
}

void __51__SXMosaicGalleryComponentAssembly_loadInRegistry___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [v4 resolveClass:objc_opt_class()];

  [v5 addFactory:v6];
}

void __51__SXMosaicGalleryComponentAssembly_loadInRegistry___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [v4 resolveClass:objc_opt_class()];

  [v5 addFactory:v6];
}

SXMosaicGalleryComponentViewFactory *__51__SXMosaicGalleryComponentAssembly_loadInRegistry___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v14 = [SXMosaicGalleryComponentViewFactory alloc];
  v3 = [v2 resolveProtocol:&unk_1F53BE580];
  v4 = [v2 resolveClass:objc_opt_class()];
  v5 = [v2 resolveProtocol:&unk_1F5416F50];
  v6 = [v2 resolveProtocol:&unk_1F53E9D88];
  v7 = [v2 resolveProtocol:&unk_1F53FB398];
  v8 = [v2 resolveProtocol:&unk_1F5438808];
  v9 = [v2 resolveProtocol:&unk_1F53E20B8];
  v10 = [v2 resolveProtocol:&unk_1F53BD7A8];
  v11 = [v2 resolveProtocol:&unk_1F53AD3D0];

  v12 = [(SXMosaicGalleryComponentViewFactory *)v14 initWithDOMObjectProvider:v3 viewport:v4 presentationDelegateProvider:v5 componentStyleRendererFactory:v6 analyticsReportingProvider:v7 appStateMonitor:v8 mediaSharingPolicyProvider:v9 imageViewFactory:v10 canvasControllerFactory:v11];

  return v12;
}

SXMosaicGalleryComponentSizerFactory *__51__SXMosaicGalleryComponentAssembly_loadInRegistry___block_invoke_4()
{
  v0 = objc_alloc_init(SXMosaicGalleryComponentSizerFactory);

  return v0;
}

SXGalleryItemImageViewFactory *__51__SXMosaicGalleryComponentAssembly_loadInRegistry___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SXGalleryItemImageViewFactory alloc];
  v4 = [v2 resolveProtocol:&unk_1F53F79A0];
  v5 = [v2 resolveProtocol:&unk_1F5438880];

  v6 = [(SXGalleryItemImageViewFactory *)v3 initWithResourceDataSourceProvider:v4 reachabilityProvider:v5];

  return v6;
}

@end