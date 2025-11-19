@interface SNTestAssembly
- (void)loadInRegistry:(id)a3;
@end

@implementation SNTestAssembly

- (void)loadInRegistry:(id)a3
{
  v3 = a3;
  v4 = [v3 publicContainer];
  v5 = [v4 registerProtocol:&unk_287E95D30 factory:&__block_literal_global];

  v6 = [v3 publicContainer];
  v7 = [v6 registerClass:objc_opt_class() factory:&__block_literal_global_49];

  v8 = [v3 publicContainer];
  v9 = [v8 registerClass:objc_opt_class() factory:&__block_literal_global_79];

  v11 = [v3 privateContainer];

  v10 = [v11 registerProtocol:&unk_287E960E0 factory:&__block_literal_global_81];
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