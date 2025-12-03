@interface SXLayoutAssembly
- (void)loadInRegistry:(id)registry;
@end

@implementation SXLayoutAssembly

- (void)loadInRegistry:(id)registry
{
  registryCopy = registry;
  publicContainer = [registryCopy publicContainer];
  v5 = [publicContainer registerProtocol:&unk_1F53FD888 factory:&__block_literal_global_24];

  publicContainer2 = [registryCopy publicContainer];
  v7 = [publicContainer2 registerProtocol:&unk_1F54235B0 factory:&__block_literal_global_109_1];

  publicContainer3 = [registryCopy publicContainer];
  v9 = [publicContainer3 registerProtocol:&unk_1F5417698 factory:&__block_literal_global_112];

  publicContainer4 = [registryCopy publicContainer];
  v11 = [publicContainer4 registerProtocol:&unk_1F53D0C40 factory:&__block_literal_global_122];

  privateContainer = [registryCopy privateContainer];
  v13 = [privateContainer registerProtocol:&unk_1F54176F8 factory:&__block_literal_global_126_0];

  publicContainer5 = [registryCopy publicContainer];
  v15 = [publicContainer5 registerProtocol:&unk_1F53AC020 factory:&__block_literal_global_130_0];

  privateContainer2 = [registryCopy privateContainer];
  v17 = [privateContainer2 registerProtocol:&unk_1F54264C8 factory:&__block_literal_global_141];

  privateContainer3 = [registryCopy privateContainer];
  v19 = [privateContainer3 registerProtocol:&unk_1F54165F0 factory:&__block_literal_global_173_1];

  privateContainer4 = [registryCopy privateContainer];
  v21 = [privateContainer4 registerProtocol:&unk_1F53F7900 factory:&__block_literal_global_187];

  privateContainer5 = [registryCopy privateContainer];
  v23 = [privateContainer5 registerProtocol:&unk_1F5417310 factory:&__block_literal_global_195];

  privateContainer6 = [registryCopy privateContainer];
  v25 = [privateContainer6 registerProtocol:&unk_1F5415A30 factory:&__block_literal_global_206];

  privateContainer7 = [registryCopy privateContainer];
  v27 = [privateContainer7 registerProtocol:&unk_1F53C5368 factory:&__block_literal_global_210];

  privateContainer8 = [registryCopy privateContainer];
  v29 = [privateContainer8 registerClass:objc_opt_class() factory:&__block_literal_global_214];

  privateContainer9 = [registryCopy privateContainer];
  v31 = [privateContainer9 registerProtocol:&unk_1F54152B0 factory:&__block_literal_global_217];

  privateContainer10 = [registryCopy privateContainer];
  v33 = [privateContainer10 registerClass:objc_opt_class() factory:&__block_literal_global_222];

  publicContainer6 = [registryCopy publicContainer];
  v35 = [publicContainer6 registerProtocol:&unk_1F53BCFB0 factory:&__block_literal_global_246];

  privateContainer11 = [registryCopy privateContainer];
  v37 = [privateContainer11 registerProtocol:&unk_1F53E4518 factory:&__block_literal_global_250_1];

  publicContainer7 = [registryCopy publicContainer];
  v39 = [publicContainer7 registerProtocol:&unk_1F53E43B0 factory:&__block_literal_global_254_0];

  privateContainer12 = [registryCopy privateContainer];
  v41 = [privateContainer12 registerClass:objc_opt_class() factory:&__block_literal_global_258];

  privateContainer13 = [registryCopy privateContainer];

  v42 = [privateContainer13 registerProtocol:&unk_1F53B02D0 factory:&__block_literal_global_261_0];
}

SXLayoutCoordinator *__35__SXLayoutAssembly_loadInRegistry___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v14 = [SXLayoutCoordinator alloc];
  v3 = [v2 resolveProtocol:&unk_1F53AC020];
  v4 = [v2 resolveProtocol:&unk_1F54264C8];
  v5 = [v2 resolveProtocol:&unk_1F54152B0];
  v6 = [v2 resolveProtocol:&unk_1F54176F8];
  v7 = [v2 resolveClass:objc_opt_class()];
  v8 = [v2 resolveClass:objc_opt_class()];
  v9 = [v2 resolveClass:objc_opt_class()];
  v10 = [v2 resolveProtocol:&unk_1F53E7F88];
  v11 = [v2 resolveProtocol:&unk_1F53B02D0];

  v12 = [(SXLayoutCoordinator *)v14 initWithPipeline:v3 integrator:v4 instructionFactory:v5 invalidationManager:v6 blueprintProvider:v7 DOMObjectProvider:v8 layoutParametersManager:v9 documentProvider:v10 layoutPolicyManager:v11];

  return v12;
}

id __35__SXLayoutAssembly_loadInRegistry___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 resolveClass:objc_opt_class()];

  return v3;
}

SXColumnCalculator *__35__SXLayoutAssembly_loadInRegistry___block_invoke_4()
{
  v0 = objc_alloc_init(SXColumnCalculator);

  return v0;
}

SXLayoutInvalidationManager *__35__SXLayoutAssembly_loadInRegistry___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SXLayoutInvalidationManager alloc];
  v4 = [v2 resolveProtocol:&unk_1F54235B0];

  v5 = [(SXLayoutInvalidationManager *)v3 initWithBlueprintProvider:v4];

  return v5;
}

SXLayoutPipeline *__35__SXLayoutAssembly_loadInRegistry___block_invoke_6(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SXLayoutPipeline alloc];
  v4 = [v2 resolveProtocol:&unk_1F5417310];
  v5 = [v2 resolveProtocol:&unk_1F53E5E68];
  v6 = [(SXLayoutPipeline *)v3 initWithLayoutOperationFactory:v4 DOMObjectProviderFactory:v5];

  v7 = [v2 resolveClass:objc_opt_class()];

  [(SXLayoutPipeline *)v6 addProcessor:v7 type:1];

  return v6;
}

SXLayouterFactory *__35__SXLayoutAssembly_loadInRegistry___block_invoke_8(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SXLayouterFactory alloc];
  v4 = [v2 resolveProtocol:&unk_1F53D0C40];
  v5 = [v2 resolveProtocol:&unk_1F53E4518];
  v6 = [v2 resolveProtocol:&unk_1F53E43B0];

  v7 = [(SXLayouterFactory *)v3 initWithColumnCalculator:v4 layoutContextFactory:v5 unitConverterFactory:v6];

  return v7;
}

SXLayoutBlueprintFactory *__35__SXLayoutAssembly_loadInRegistry___block_invoke_9(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SXLayoutBlueprintFactory alloc];
  v4 = [v2 resolveProtocol:&unk_1F53C5368];
  v5 = [v2 resolveProtocol:&unk_1F53E43B0];

  v6 = [(SXLayoutBlueprintFactory *)v3 initWithComponentBlueprintFactory:v4 unitConverterFactory:v5];

  return v6;
}

SXLayoutOperationFactory *__35__SXLayoutAssembly_loadInRegistry___block_invoke_10(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SXLayoutOperationFactory alloc];
  v4 = [v2 resolveProtocol:&unk_1F5415A30];
  v5 = [v2 resolveProtocol:&unk_1F53F7900];
  v6 = [v2 resolveProtocol:&unk_1F54165F0];
  v7 = [v2 resolveProtocol:&unk_1F53E4518];
  v8 = [v2 resolveProtocol:&unk_1F53E43B0];

  v9 = [(SXLayoutOperationFactory *)v3 initWithComponentSizerEngine:v4 layoutBlueprintFactory:v5 layouterFactory:v6 layoutContextFactory:v7 unitConverterFactory:v8];

  return v9;
}

SXComponentSizerEngine *__35__SXLayoutAssembly_loadInRegistry___block_invoke_11()
{
  v0 = objc_alloc_init(SXComponentSizerEngine);

  return v0;
}

SXComponentBlueprintFactory *__35__SXLayoutAssembly_loadInRegistry___block_invoke_12()
{
  v0 = objc_alloc_init(SXComponentBlueprintFactory);

  return v0;
}

SXLayoutBlueprintProvider *__35__SXLayoutAssembly_loadInRegistry___block_invoke_13()
{
  v0 = objc_alloc_init(SXLayoutBlueprintProvider);

  return v0;
}

SXLayoutInstructionFactory *__35__SXLayoutAssembly_loadInRegistry___block_invoke_14(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SXLayoutInstructionFactory alloc];
  v4 = [v2 resolveProtocol:&unk_1F53E2118];

  v5 = [(SXLayoutInstructionFactory *)v3 initWithPresentationAttributesProvider:v4];

  return v5;
}

SXLayoutFinalizationProcessor *__35__SXLayoutAssembly_loadInRegistry___block_invoke_15(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SXLayoutFinalizationProcessor alloc];
  v4 = [v2 resolveProtocol:&unk_1F53E43B0];

  v5 = [(SXLayoutFinalizationProcessor *)v3 initWithUnitConverterFactory:v4];

  return v5;
}

SXDebugLayoutOptionsProvider *__35__SXLayoutAssembly_loadInRegistry___block_invoke_16()
{
  v0 = objc_alloc_init(SXDebugLayoutOptionsProvider);

  return v0;
}

SXLayoutContextFactory *__35__SXLayoutAssembly_loadInRegistry___block_invoke_17()
{
  v0 = objc_alloc_init(SXLayoutContextFactory);

  return v0;
}

SXUnitConverterFactory *__35__SXLayoutAssembly_loadInRegistry___block_invoke_18()
{
  v0 = objc_alloc_init(SXUnitConverterFactory);

  return v0;
}

SXLayoutParametersManager *__35__SXLayoutAssembly_loadInRegistry___block_invoke_19()
{
  v0 = objc_alloc_init(SXLayoutParametersManager);

  return v0;
}

SXLayoutPolicyManager *__35__SXLayoutAssembly_loadInRegistry___block_invoke_20(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SXLayoutPolicyManager alloc];
  v4 = [v2 resolveProtocol:&unk_1F53E7F88];
  v5 = [v2 resolveProtocol:&unk_1F5416848];

  v6 = [(SXLayoutPolicyManager *)v3 initWithDocumentProvider:v4 hintsConfigurationOptionProvider:v5];

  return v6;
}

@end