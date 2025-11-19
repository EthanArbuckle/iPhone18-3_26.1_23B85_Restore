@interface SXAdAssembly
- (void)loadInRegistry:(id)a3;
@end

@implementation SXAdAssembly

- (void)loadInRegistry:(id)a3
{
  v3 = a3;
  v4 = [v3 publicContainer];
  v5 = [v4 registerProtocol:&unk_1F53EBCA8 factory:&__block_literal_global_70];

  v6 = [v3 publicContainer];
  v7 = [v6 registerProtocol:&unk_1F5424910 factory:&__block_literal_global_56];

  v8 = [v3 publicContainer];
  v9 = [v8 registerProtocol:&unk_1F53EC3F8 factory:&__block_literal_global_62_0];

  v10 = [v3 callback];
  v11 = TFCallbackScopeAny();
  [v10 whenResolvingProtocol:&unk_1F53E7178 scope:v11 callbackBlock:&__block_literal_global_76_1];

  v12 = [v3 publicContainer];
  v13 = [v12 registerClass:objc_opt_class() factory:&__block_literal_global_80];

  v16 = [v3 privateContainer];

  v14 = [v16 registerProtocol:&unk_1F54053A0 name:@"ad-insertion" factory:&__block_literal_global_96];
  v15 = [v14 withConfiguration:&__block_literal_global_100_0];
}

SXAdvertisingSettingsFactory *__31__SXAdAssembly_loadInRegistry___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SXAdvertisingSettingsFactory alloc];
  v4 = [v2 resolveProtocol:&unk_1F53E7F88];
  v5 = [v2 resolveProtocol:&unk_1F5424910];

  v6 = [(SXAdvertisingSettingsFactory *)v3 initWithDocumentProvider:v4 debugSettingsProvider:v5];

  return v6;
}

SXDebugAdvertisementSettingsProvider *__31__SXAdAssembly_loadInRegistry___block_invoke_2()
{
  v0 = [[SXDebugAdvertisementSettingsProvider alloc] initWithDebugSettings:0];

  return v0;
}

SXAdIgnorableViewFactory *__31__SXAdAssembly_loadInRegistry___block_invoke_3()
{
  v0 = objc_alloc_init(SXAdIgnorableViewFactory);

  return v0;
}

void __31__SXAdAssembly_loadInRegistry___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [v4 resolveClass:objc_opt_class()];

  [v5 addInserter:v6];
}

SXAdComponentInserter *__31__SXAdAssembly_loadInRegistry___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SXAdComponentInserter alloc];
  v4 = [v2 resolveProtocol:&unk_1F54053A0 name:@"ad-insertion"];
  v5 = [v2 resolveProtocol:&unk_1F53EBCA8];

  v6 = [(SXAdComponentInserter *)v3 initWithConditionEngine:v4 advertisingSettingsFactory:v5];

  return v6;
}

SXComponentInsertionConditionEngine *__31__SXAdAssembly_loadInRegistry___block_invoke_6()
{
  v0 = objc_alloc_init(SXComponentInsertionConditionEngine);

  return v0;
}

void __31__SXAdAssembly_loadInRegistry___block_invoke_7(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = objc_alloc_init(SXFirstViewportComponentInsertionCondition);
  [v3 addCondition:v4];

  v5 = objc_alloc_init(SXPastBodyComponentInsertionCondition);
  [v3 addCondition:v5];
}

@end