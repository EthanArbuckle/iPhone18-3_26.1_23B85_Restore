@interface SXTextComponentAssembly
- (void)loadInRegistry:(id)registry;
@end

@implementation SXTextComponentAssembly

- (void)loadInRegistry:(id)registry
{
  registryCopy = registry;
  callback = [registryCopy callback];
  v5 = TFCallbackScopeAny();
  [callback whenResolvingProtocol:&unk_1F53E41E0 scope:v5 callbackBlock:&__block_literal_global_57];

  callback2 = [registryCopy callback];
  v7 = TFCallbackScopeAny();
  [callback2 whenResolvingProtocol:&unk_1F5415A30 scope:v7 callbackBlock:&__block_literal_global_55_10];

  publicContainer = [registryCopy publicContainer];
  v9 = [publicContainer registerClass:objc_opt_class() factory:&__block_literal_global_59_8];

  publicContainer2 = [registryCopy publicContainer];
  v11 = [publicContainer2 registerClass:objc_opt_class() factory:&__block_literal_global_105_0];

  publicContainer3 = [registryCopy publicContainer];
  v13 = [publicContainer3 registerClass:objc_opt_class() factory:&__block_literal_global_113];

  privateContainer = [registryCopy privateContainer];
  v15 = [privateContainer registerClass:objc_opt_class() factory:&__block_literal_global_119];
  v16 = [v15 inScope:2];

  privateContainer2 = [registryCopy privateContainer];
  v18 = [privateContainer2 registerClass:objc_opt_class() factory:&__block_literal_global_122_0];
  v19 = [v18 inScope:2];

  publicContainer4 = [registryCopy publicContainer];

  v20 = [publicContainer4 registerProtocol:&unk_1F53FA528 factory:&__block_literal_global_133];
}

void __42__SXTextComponentAssembly_loadInRegistry___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [v4 resolveClass:objc_opt_class()];

  [v5 addFactory:v6];
}

void __42__SXTextComponentAssembly_loadInRegistry___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [v4 resolveClass:objc_opt_class()];

  [v5 addFactory:v6];
}

SXTextComponentViewFactory *__42__SXTextComponentAssembly_loadInRegistry___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SXTextComponentViewFactory alloc];
  v4 = [v2 resolveProtocol:&unk_1F53BE580];
  v5 = [v2 resolveClass:objc_opt_class()];
  v6 = [v2 resolveProtocol:&unk_1F5416F50];
  v7 = [v2 resolveProtocol:&unk_1F53E9D88];
  v8 = [v2 resolveClass:objc_opt_class()];

  v9 = [(SXTextComponentViewFactory *)v3 initWithDOMObjectProvider:v4 viewport:v5 presentationDelegateProvider:v6 componentStyleRendererFactory:v7 tangierController:v8];

  return v9;
}

SXTextComponentSizerFactory *__42__SXTextComponentAssembly_loadInRegistry___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SXTextComponentSizerFactory alloc];
  v4 = [v2 resolveProtocol:&unk_1F53BE580];
  v5 = [v2 resolveProtocol:&unk_1F5411280];
  v6 = [v2 resolveProtocol:&unk_1F53D0140];

  v7 = [(SXTextComponentSizerFactory *)v3 initWithDOMObjectProvider:v4 textComponentLayoutHosting:v5 textSourceFactory:v6];

  return v7;
}

SXFontIndex *__42__SXTextComponentAssembly_loadInRegistry___block_invoke_5(uint64_t a1, void *a2)
{
  v9[2] = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = [SXFontIndex alloc];
  v4 = [v2 resolveClass:objc_opt_class()];
  v9[0] = v4;
  v5 = [v2 resolveClass:objc_opt_class()];

  v9[1] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
  v7 = [(SXFontIndex *)v3 initWithFontFamilyProviders:v6];

  return v7;
}

SXSystemFontFamilyProvider *__42__SXTextComponentAssembly_loadInRegistry___block_invoke_6()
{
  v0 = objc_alloc_init(SXSystemFontFamilyProvider);

  return v0;
}

SXSanFranciscoFontFamilyProvider *__42__SXTextComponentAssembly_loadInRegistry___block_invoke_7()
{
  v0 = objc_alloc_init(SXSanFranciscoFontFamilyProvider);

  return v0;
}

SXFontAttributesConstructor *__42__SXTextComponentAssembly_loadInRegistry___block_invoke_8(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SXFontAttributesConstructor alloc];
  v4 = [v2 resolveClass:objc_opt_class()];

  v5 = [(SXFontAttributesConstructor *)v3 initWithFontIndex:v4];

  return v5;
}

@end