@interface SXTextComponentAssembly
- (void)loadInRegistry:(id)a3;
@end

@implementation SXTextComponentAssembly

- (void)loadInRegistry:(id)a3
{
  v3 = a3;
  v4 = [v3 callback];
  v5 = TFCallbackScopeAny();
  [v4 whenResolvingProtocol:&unk_1F53E41E0 scope:v5 callbackBlock:&__block_literal_global_57];

  v6 = [v3 callback];
  v7 = TFCallbackScopeAny();
  [v6 whenResolvingProtocol:&unk_1F5415A30 scope:v7 callbackBlock:&__block_literal_global_55_10];

  v8 = [v3 publicContainer];
  v9 = [v8 registerClass:objc_opt_class() factory:&__block_literal_global_59_8];

  v10 = [v3 publicContainer];
  v11 = [v10 registerClass:objc_opt_class() factory:&__block_literal_global_105_0];

  v12 = [v3 publicContainer];
  v13 = [v12 registerClass:objc_opt_class() factory:&__block_literal_global_113];

  v14 = [v3 privateContainer];
  v15 = [v14 registerClass:objc_opt_class() factory:&__block_literal_global_119];
  v16 = [v15 inScope:2];

  v17 = [v3 privateContainer];
  v18 = [v17 registerClass:objc_opt_class() factory:&__block_literal_global_122_0];
  v19 = [v18 inScope:2];

  v21 = [v3 publicContainer];

  v20 = [v21 registerProtocol:&unk_1F53FA528 factory:&__block_literal_global_133];
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