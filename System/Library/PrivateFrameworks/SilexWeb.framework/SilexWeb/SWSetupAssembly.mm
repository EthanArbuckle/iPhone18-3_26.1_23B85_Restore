@interface SWSetupAssembly
- (void)loadInRegistry:(id)registry;
@end

@implementation SWSetupAssembly

- (void)loadInRegistry:(id)registry
{
  registryCopy = registry;
  callback = [registryCopy callback];
  v5 = TFCallbackScopeAny();
  [callback whenResolvingProtocol:&unk_1F524FEA0 scope:v5 callbackBlock:&__block_literal_global_4];

  privateContainer = [registryCopy privateContainer];
  v7 = [privateContainer registerClass:objc_opt_class() factory:&__block_literal_global_50];

  privateContainer2 = [registryCopy privateContainer];
  v9 = [privateContainer2 registerClass:objc_opt_class() factory:&__block_literal_global_64];

  privateContainer3 = [registryCopy privateContainer];

  v10 = [privateContainer3 registerClass:objc_opt_class() factory:&__block_literal_global_67];
}

void __34__SWSetupAssembly_loadInRegistry___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v8 = a2;
  v5 = [v4 resolveClass:objc_opt_class()];
  [v8 addTask:v5];

  v6 = [v4 resolveClass:objc_opt_class()];
  [v8 addTask:v6];

  v7 = [v4 resolveClass:objc_opt_class()];

  [v8 addTask:v7];
  [v8 performTasks];
}

SWScriptsSetupTask *__34__SWSetupAssembly_loadInRegistry___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SWScriptsSetupTask alloc];
  v4 = [v2 resolveProtocol:&unk_1F5269C30];

  v5 = [(SWScriptsSetupTask *)v3 initWithScriptsManager:v4];

  return v5;
}

SWDatastoreSetupTask *__34__SWSetupAssembly_loadInRegistry___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SWDatastoreSetupTask alloc];
  v4 = [v2 resolveProtocol:&unk_1F5259348];
  v5 = [v2 resolveProtocol:&unk_1F5269C30];

  v6 = [(SWDatastoreSetupTask *)v3 initWithDatastoreManager:v4 scriptsManager:v5];

  return v6;
}

SWLocalDatastoreSetupTask *__34__SWSetupAssembly_loadInRegistry___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SWLocalDatastoreSetupTask alloc];
  v4 = [v2 resolveProtocol:&unk_1F5259348 name:@"local"];
  v5 = [v2 resolveProtocol:&unk_1F5269C30];

  v6 = [(SWLocalDatastoreSetupTask *)v3 initWithDatastoreManager:v4 scriptsManager:v5];

  return v6;
}

@end