@interface SWCoreAssembly
- (void)loadInRegistry:(id)registry;
@end

@implementation SWCoreAssembly

- (void)loadInRegistry:(id)registry
{
  registryCopy = registry;
  publicContainer = [registryCopy publicContainer];
  v5 = [publicContainer registerProtocol:&unk_1F5259DE0 factory:&__block_literal_global_6];

  publicContainer2 = [registryCopy publicContainer];

  v6 = [publicContainer2 registerProtocol:&unk_1F5259BE8 factory:&__block_literal_global_62];
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