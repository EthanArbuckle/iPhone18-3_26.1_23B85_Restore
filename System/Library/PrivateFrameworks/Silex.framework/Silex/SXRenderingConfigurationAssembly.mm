@interface SXRenderingConfigurationAssembly
- (void)loadInRegistry:(id)a3;
@end

@implementation SXRenderingConfigurationAssembly

- (void)loadInRegistry:(id)a3
{
  v3 = a3;
  v4 = [v3 publicContainer];
  v5 = [v4 registerProtocol:&unk_1F5416848 factory:&__block_literal_global_22];

  v7 = [v3 privateContainer];

  v6 = [v7 registerClass:objc_opt_class() factory:&__block_literal_global_46];
}

id __51__SXRenderingConfigurationAssembly_loadInRegistry___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 resolveClass:objc_opt_class()];

  return v3;
}

SXRenderingConfigurationOptionsManager *__51__SXRenderingConfigurationAssembly_loadInRegistry___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SXRenderingConfigurationOptionsManager alloc];
  v4 = [v2 resolveProtocol:&unk_1F53E7F88];
  v5 = [v2 resolveProtocol:&unk_1F5438A00];

  v6 = [(SXRenderingConfigurationOptionsManager *)v3 initWithDocumentProvider:v4 configurationProvider:v5];

  return v6;
}

@end