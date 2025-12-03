@interface SWProviderAssembly
- (void)loadInRegistry:(id)registry;
@end

@implementation SWProviderAssembly

- (void)loadInRegistry:(id)registry
{
  registryCopy = registry;
  publicContainer = [registryCopy publicContainer];
  v5 = [publicContainer registerProtocol:&unk_1F524D7B8 factory:&__block_literal_global_3];

  privateContainer = [registryCopy privateContainer];
  v7 = [privateContainer registerProtocol:&unk_1F524FF30 factory:&__block_literal_global_56_0];

  publicContainer2 = [registryCopy publicContainer];
  v9 = [publicContainer2 registerProtocol:&unk_1F5269F40 factory:&__block_literal_global_75];

  privateContainer2 = [registryCopy privateContainer];
  v11 = [privateContainer2 registerProtocol:&unk_1F524F4A0 factory:&__block_literal_global_83_0];

  publicContainer3 = [registryCopy publicContainer];
  v13 = [publicContainer3 registerProtocol:&unk_1F5259AD0 factory:&__block_literal_global_89_0];

  publicContainer4 = [registryCopy publicContainer];

  v14 = [publicContainer4 registerProtocol:&unk_1F526B978 factory:&__block_literal_global_99];
}

SWActionProvider *__37__SWProviderAssembly_loadInRegistry___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SWActionProvider alloc];
  v4 = [v2 resolveProtocol:&unk_1F52697D8];
  v5 = [v2 resolveProtocol:&unk_1F524FF30];
  v6 = [v2 resolveProtocol:&unk_1F5259DE0];

  v7 = [(SWActionProvider *)v3 initWithMessageHandlerManager:v4 actionFactory:v5 logger:v6];

  return v7;
}

SWActionFactory *__37__SWProviderAssembly_loadInRegistry___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SWActionFactory alloc];
  v4 = [v2 resolveProtocol:&unk_1F524EDB0];

  v5 = [(SWActionFactory *)v3 initWithNavigationManager:v4];

  return v5;
}

SWInteractionProvider *__37__SWProviderAssembly_loadInRegistry___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SWInteractionProvider alloc];
  v4 = [v2 resolveProtocol:&unk_1F52697D8];
  v5 = [v2 resolveProtocol:&unk_1F524DC18];
  v6 = [v2 resolveProtocol:&unk_1F524F4A0];
  v7 = [v2 resolveProtocol:&unk_1F5259DE0];

  v8 = [(SWInteractionProvider *)v3 initWithMessageHandlerManager:v4 documentStateProvider:v5 interactionFactory:v6 logger:v7];

  return v8;
}

SWInteractionFactory *__37__SWProviderAssembly_loadInRegistry___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SWInteractionFactory alloc];
  v4 = [v2 resolveProtocol:&unk_1F524EDB0];

  v5 = [(SWInteractionFactory *)v3 initWithNavigationManager:v4];

  return v5;
}

SWLoadingPolicyProvider *__37__SWProviderAssembly_loadInRegistry___block_invoke_5()
{
  v0 = objc_alloc_init(SWLoadingPolicyProvider);

  return v0;
}

SWNavigationBarConfigurationManager *__37__SWProviderAssembly_loadInRegistry___block_invoke_6(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SWNavigationBarConfigurationManager alloc];
  v4 = [v2 resolveProtocol:&unk_1F52697D8];
  v5 = [v2 resolveProtocol:&unk_1F5259DE0];

  v6 = [(SWNavigationBarConfigurationManager *)v3 initWithMessageHandlerManager:v4 logger:v5];

  return v6;
}

@end