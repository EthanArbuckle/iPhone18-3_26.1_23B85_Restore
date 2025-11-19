@interface SXManagerAssembly
- (void)loadInRegistry:(id)a3;
@end

@implementation SXManagerAssembly

- (void)loadInRegistry:(id)a3
{
  v3 = a3;
  v4 = [v3 publicContainer];
  v5 = [v4 registerProtocol:&unk_1F53EA430 factory:&__block_literal_global_80];
  v6 = [v5 withConfiguration:&__block_literal_global_55_17];

  v7 = [v3 publicContainer];
  v8 = [v7 registerProtocol:&unk_1F53C03A8 factory:&__block_literal_global_62_1];

  v9 = [v3 privateContainer];
  v10 = [v9 registerClass:objc_opt_class() factory:&__block_literal_global_66];

  v12 = [v3 privateContainer];

  v11 = [v12 registerClass:objc_opt_class() factory:&__block_literal_global_83];
}

SXInteractionContextManager *__36__SXManagerAssembly_loadInRegistry___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SXInteractionContextManager alloc];
  v4 = [v2 resolveClass:objc_opt_class()];

  v5 = [(SXInteractionContextManager *)v3 initWithViewport:v4];

  return v5;
}

void __36__SXManagerAssembly_loadInRegistry___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [v5 resolveClass:objc_opt_class()];
  [v4 addProvider:v6];

  v7 = [v5 resolveClass:objc_opt_class()];

  [v4 addProvider:v7];
}

SXLinkHoverStylingManager *__36__SXManagerAssembly_loadInRegistry___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SXLinkHoverStylingManager alloc];
  v4 = [v2 resolveClass:objc_opt_class()];

  v5 = [(SXLinkHoverStylingManager *)v3 initWithTangierController:v4];

  return v5;
}

SXTextInteractionContextProvider *__36__SXManagerAssembly_loadInRegistry___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SXTextInteractionContextProvider alloc];
  v4 = [v2 resolveClass:objc_opt_class()];
  v5 = [v2 resolveProtocol:&unk_1F53A9FB8];

  v6 = [(SXTextInteractionContextProvider *)v3 initWithTangierController:v4 actionManager:v5];

  return v6;
}

SXComponentInteractionContextProvider *__36__SXManagerAssembly_loadInRegistry___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SXComponentInteractionContextProvider alloc];
  v4 = [v2 resolveProtocol:&unk_1F53F7820];
  v5 = [v2 resolveProtocol:&unk_1F53A9FB8];

  v6 = [(SXComponentInteractionContextProvider *)v3 initWithComponentInteractionHandlerManager:v4 actionManager:v5];

  return v6;
}

@end