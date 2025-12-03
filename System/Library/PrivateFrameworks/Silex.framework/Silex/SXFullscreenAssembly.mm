@interface SXFullscreenAssembly
- (void)loadInRegistry:(id)registry;
@end

@implementation SXFullscreenAssembly

- (void)loadInRegistry:(id)registry
{
  registryCopy = registry;
  publicContainer = [registryCopy publicContainer];
  v5 = [publicContainer registerProtocol:&unk_1F53AD3D0 factory:&__block_literal_global_17];

  publicContainer2 = [registryCopy publicContainer];

  v6 = [publicContainer2 registerProtocol:&unk_1F53D8668 factory:&__block_literal_global_62];
}

SXFullscreenCanvasControllerFactory *__39__SXFullscreenAssembly_loadInRegistry___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SXFullscreenCanvasControllerFactory alloc];
  v4 = [v2 resolveProtocol:&unk_1F53D8668];
  v5 = [v2 resolveProtocol:&unk_1F53E2118];
  v6 = [v2 resolveProtocol:&unk_1F53E20B8];

  v7 = [(SXFullscreenCanvasControllerFactory *)v3 initWithCaptionViewFactory:v4 presentationAttributesProvider:v5 mediaSharingPolicyProvider:v6];

  return v7;
}

SXFullscreenCaptionViewFactory *__39__SXFullscreenAssembly_loadInRegistry___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SXFullscreenCaptionViewFactory alloc];
  v4 = [v2 resolveProtocol:&unk_1F53D0140];
  v5 = [v2 resolveProtocol:&unk_1F53BC890];

  v6 = [(SXFullscreenCaptionViewFactory *)v3 initWithTextSourceFactory:v4 actionHandler:v5];

  return v6;
}

@end