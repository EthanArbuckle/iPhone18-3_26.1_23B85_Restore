@interface SXStyleAssembly
- (void)loadInRegistry:(id)a3;
@end

@implementation SXStyleAssembly

- (void)loadInRegistry:(id)a3
{
  v3 = a3;
  v4 = [v3 publicContainer];
  v5 = [v4 registerProtocol:&unk_1F53E79A0 factory:&__block_literal_global_99];

  v6 = [v3 publicContainer];
  v7 = [v6 registerProtocol:&unk_1F54051D8 factory:&__block_literal_global_51_0];

  v8 = [v3 publicContainer];
  v9 = [v8 registerProtocol:&unk_1F53C5C48 factory:&__block_literal_global_59_20];

  v10 = [v3 publicContainer];
  v11 = [v10 registerProtocol:&unk_1F53EAA10 factory:&__block_literal_global_104_2];

  v13 = [v3 publicContainer];

  v12 = [v13 registerProtocol:&unk_1F53E5F18 factory:&__block_literal_global_111_2];
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