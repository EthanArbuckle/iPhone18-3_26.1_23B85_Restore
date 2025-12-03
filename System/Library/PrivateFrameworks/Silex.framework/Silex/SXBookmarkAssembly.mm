@interface SXBookmarkAssembly
- (void)loadInRegistry:(id)registry;
@end

@implementation SXBookmarkAssembly

- (void)loadInRegistry:(id)registry
{
  registryCopy = registry;
  publicContainer = [registryCopy publicContainer];
  v5 = [publicContainer registerProtocol:&unk_1F53D5C30 factory:&__block_literal_global_21];
  v6 = [v5 withConfiguration:&__block_literal_global_4];

  publicContainer2 = [registryCopy publicContainer];

  v7 = [publicContainer2 registerClass:objc_opt_class() factory:&__block_literal_global_9];
}

SXBookmarkManager *__37__SXBookmarkAssembly_loadInRegistry___block_invoke()
{
  v0 = objc_alloc_init(SXBookmarkManager);

  return v0;
}

void __37__SXBookmarkAssembly_loadInRegistry___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [v5 resolveClass:objc_opt_class()];

  [v4 registerApplicator:v6 bookmarkType:objc_opt_class()];
}

SXComponentBookmarkApplicator *__37__SXBookmarkAssembly_loadInRegistry___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SXComponentBookmarkApplicator alloc];
  v4 = [v2 resolveProtocol:&unk_1F53A6760];

  v5 = [(SXComponentBookmarkApplicator *)v3 initWithScrollPositionRestoring:v4];

  return v5;
}

@end