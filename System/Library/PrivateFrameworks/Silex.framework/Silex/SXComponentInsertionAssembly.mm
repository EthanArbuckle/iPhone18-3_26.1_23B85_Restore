@interface SXComponentInsertionAssembly
- (void)loadInRegistry:(id)registry;
@end

@implementation SXComponentInsertionAssembly

- (void)loadInRegistry:(id)registry
{
  registryCopy = registry;
  callback = [registryCopy callback];
  v5 = TFCallbackScopeAny();
  [callback whenResolvingProtocol:&unk_1F53AC020 scope:v5 callbackBlock:&__block_literal_global_82];

  publicContainer = [registryCopy publicContainer];
  v7 = [publicContainer registerClass:objc_opt_class() factory:&__block_literal_global_58];

  privateContainer = [registryCopy privateContainer];
  v9 = [privateContainer registerProtocol:&unk_1F54290C0 factory:&__block_literal_global_65];

  privateContainer2 = [registryCopy privateContainer];
  v11 = [privateContainer2 registerProtocol:&unk_1F53E70E8 factory:&__block_literal_global_96_0];

  publicContainer2 = [registryCopy publicContainer];
  v13 = [publicContainer2 registerProtocol:&unk_1F53E7178 factory:&__block_literal_global_99];

  publicContainer3 = [registryCopy publicContainer];
  v15 = [publicContainer3 registerProtocol:&unk_1F54053A0 name:@"general" factory:&__block_literal_global_103_0];
  v16 = [v15 withConfiguration:&__block_literal_global_107_0];

  privateContainer3 = [registryCopy privateContainer];

  v17 = [privateContainer3 registerProtocol:&unk_1F53D06D8 factory:&__block_literal_global_111_1];
}

void __47__SXComponentInsertionAssembly_loadInRegistry___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [v4 resolveClass:objc_opt_class()];

  [v5 addProcessor:v6 type:1];
}

SXComponentInsertionLayoutProcessor *__47__SXComponentInsertionAssembly_loadInRegistry___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SXComponentInsertionLayoutProcessor alloc];
  v4 = [v2 resolveProtocol:&unk_1F54290C0];

  v5 = [(SXComponentInsertionLayoutProcessor *)v3 initWithComponentInsertionManager:v4];

  return v5;
}

SXComponentInsertionManager *__47__SXComponentInsertionAssembly_loadInRegistry___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SXComponentInsertionManager alloc];
  v4 = [v2 resolveProtocol:&unk_1F53E7178];
  v5 = [v2 resolveProtocol:&unk_1F54053A0 name:@"general"];
  v6 = [v2 resolveProtocol:&unk_1F53D06D8];
  v7 = [v2 resolveProtocol:&unk_1F53E43B0];

  v8 = [(SXComponentInsertionManager *)v3 initWithComponentInserterManager:v4 conditionEngine:v5 blueprintAnalyzer:v6 unitConverterFactory:v7];

  return v8;
}

SXComponentInserterManager *__47__SXComponentInsertionAssembly_loadInRegistry___block_invoke_5()
{
  v0 = objc_alloc_init(SXComponentInserterManager);

  return v0;
}

SXComponentInsertionConditionEngine *__47__SXComponentInsertionAssembly_loadInRegistry___block_invoke_6()
{
  v0 = objc_alloc_init(SXComponentInsertionConditionEngine);

  return v0;
}

void __47__SXComponentInsertionAssembly_loadInRegistry___block_invoke_7(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = objc_alloc_init(SXNeighbouringComponentsPlacementCondition);
  [v3 addCondition:v4];
}

SXBlueprintAnalyzer *__47__SXComponentInsertionAssembly_loadInRegistry___block_invoke_8()
{
  v0 = objc_alloc_init(SXBlueprintAnalyzer);

  return v0;
}

@end