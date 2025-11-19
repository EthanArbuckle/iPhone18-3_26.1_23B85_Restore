@interface SWCoreAssembly
- (void)loadInRegistry:(id)a3;
@end

@implementation SWCoreAssembly

- (void)loadInRegistry:(id)a3
{
  v3 = a3;
  v4 = [v3 publicContainer];
  v5 = [v4 registerProtocol:&unk_1F5259DE0 factory:&__block_literal_global_6];

  v7 = [v3 publicContainer];

  v6 = [v7 registerProtocol:&unk_1F5259BE8 factory:&__block_literal_global_62];
}

SWLogger *__33__SWCoreAssembly_loadInRegistry___block_invoke()
{
  v0 = objc_alloc_init(SWLogger);

  return v0;
}

SWLocation *__33__SWCoreAssembly_loadInRegistry___block_invoke_2()
{
  v0 = [[SWLocation alloc] initWithContext:@"unknown" URL:0];

  return v0;
}

@end