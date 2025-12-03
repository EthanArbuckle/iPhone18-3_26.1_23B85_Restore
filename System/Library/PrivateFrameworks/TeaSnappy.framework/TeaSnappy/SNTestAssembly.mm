@interface SNTestAssembly
- (void)loadInRegistry:(id)registry;
@end

@implementation SNTestAssembly

- (void)loadInRegistry:(id)registry
{
  registryCopy = registry;
  publicContainer = [registryCopy publicContainer];
  v5 = [publicContainer registerProtocol:&unk_287E95D30 factory:&__block_literal_global];

  publicContainer2 = [registryCopy publicContainer];
  v7 = [publicContainer2 registerClass:objc_opt_class() factory:&__block_literal_global_49];

  publicContainer3 = [registryCopy publicContainer];
  v9 = [publicContainer3 registerClass:objc_opt_class() factory:&__block_literal_global_79];

  privateContainer = [registryCopy privateContainer];

  v10 = [privateContainer registerProtocol:&unk_287E960E0 factory:&__block_literal_global_81];
}

id __33__SNTestAssembly_loadInRegistry___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 resolveClass:objc_opt_class()];

  return v3;
}

SNTestRunner *__33__SNTestAssembly_loadInRegistry___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SNTestRunner alloc];
  v4 = [MEMORY[0x277D75128] sharedApplication];
  v5 = [v2 resolveProtocol:&unk_287E960E0];
  v6 = [v2 resolveClass:objc_opt_class()];

  v7 = [(SNTestRunner *)v3 initWithApplication:v4 testCoordinator:v5 testStore:v6];

  return v7;
}

SNTestStore *__33__SNTestAssembly_loadInRegistry___block_invoke_3()
{
  v0 = objc_alloc_init(SNTestStore);

  return v0;
}

SNTestCoordinator *__33__SNTestAssembly_loadInRegistry___block_invoke_4()
{
  v0 = [SNTestCoordinator alloc];
  v1 = [MEMORY[0x277D75128] sharedApplication];
  v2 = [(SNTestCoordinator *)v0 initWithApplication:v1];

  return v2;
}

@end