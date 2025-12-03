@interface SXStyleAssembly
- (void)loadInRegistry:(id)registry;
@end

@implementation SXStyleAssembly

- (void)loadInRegistry:(id)registry
{
  registryCopy = registry;
  publicContainer = [registryCopy publicContainer];
  v5 = [publicContainer registerProtocol:&unk_1F53E79A0 factory:&__block_literal_global_99];

  publicContainer2 = [registryCopy publicContainer];
  v7 = [publicContainer2 registerProtocol:&unk_1F54051D8 factory:&__block_literal_global_51_0];

  publicContainer3 = [registryCopy publicContainer];
  v9 = [publicContainer3 registerProtocol:&unk_1F53C5C48 factory:&__block_literal_global_59_20];

  publicContainer4 = [registryCopy publicContainer];
  v11 = [publicContainer4 registerProtocol:&unk_1F53EAA10 factory:&__block_literal_global_104_2];

  publicContainer5 = [registryCopy publicContainer];

  v12 = [publicContainer5 registerProtocol:&unk_1F53E5F18 factory:&__block_literal_global_111_2];
}

SXDocumentStyleRenderer *__34__SXStyleAssembly_loadInRegistry___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SXDocumentStyleRenderer alloc];
  v4 = [v2 resolveClass:objc_opt_class()];
  v5 = [v2 resolveProtocol:&unk_1F54051D8];

  v6 = [(SXDocumentStyleRenderer *)v3 initWithViewport:v4 gradientFactory:v5];

  return v6;
}

SXGradientFactory *__34__SXStyleAssembly_loadInRegistry___block_invoke_2()
{
  v0 = objc_alloc_init(SXGradientFactory);

  return v0;
}

SXImageFillViewFactory *__34__SXStyleAssembly_loadInRegistry___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SXImageFillViewFactory alloc];
  v4 = [v2 resolveProtocol:&unk_1F53BE580];
  v5 = [v2 resolveProtocol:&unk_1F53E2E48];

  v6 = [(SXImageFillViewFactory *)v3 initWithDOMObjectProvider:v4 imageViewFactory:v5];

  return v6;
}

SXVideoFillViewFactory *__34__SXStyleAssembly_loadInRegistry___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SXVideoFillViewFactory alloc];
  v4 = [v2 resolveProtocol:&unk_1F53BE580];
  v5 = [v2 resolveProtocol:&unk_1F53E2E48];

  v6 = [(SXVideoFillViewFactory *)v3 initWithDOMObjectProvider:v4 imageViewFactory:v5];

  return v6;
}

SXRepeatableImageFillViewFactory *__34__SXStyleAssembly_loadInRegistry___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SXRepeatableImageFillViewFactory alloc];
  v4 = [v2 resolveProtocol:&unk_1F53BE580];
  v5 = [v2 resolveProtocol:&unk_1F53E2E48];

  v6 = [(SXRepeatableImageFillViewFactory *)v3 initWithDOMObjectProvider:v4 imageViewFactory:v5];

  return v6;
}

@end