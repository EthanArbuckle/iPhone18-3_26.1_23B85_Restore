@interface SWFactoryAssembly
- (void)loadInRegistry:(id)registry;
@end

@implementation SWFactoryAssembly

- (void)loadInRegistry:(id)registry
{
  registryCopy = registry;
  publicContainer = [registryCopy publicContainer];
  v5 = [publicContainer registerProtocol:&unk_1F524F030 name:@"web-content" factory:&__block_literal_global_0];
  v6 = [v5 inScope:2];

  publicContainer2 = [registryCopy publicContainer];
  v8 = [publicContainer2 registerProtocol:&unk_1F526A378 factory:&__block_literal_global_51];

  privateContainer = [registryCopy privateContainer];
  v10 = [privateContainer registerClass:objc_opt_class() name:@"web-content" factory:&__block_literal_global_56];
  v11 = [v10 inScope:2];

  privateContainer2 = [registryCopy privateContainer];
  v13 = [privateContainer2 registerClass:objc_opt_class() name:@"web-content" factory:&__block_literal_global_60];
  v14 = [v13 inScope:2];
  v15 = [v14 withConfiguration:&__block_literal_global_63];

  privateContainer3 = [registryCopy privateContainer];
  v17 = [privateContainer3 registerClass:objc_opt_class() name:@"web-content" factory:&__block_literal_global_66];
  v18 = [v17 withConfiguration:&__block_literal_global_69];

  publicContainer3 = [registryCopy publicContainer];
  v20 = [publicContainer3 registerClass:objc_opt_class() name:@"web-content" factory:&__block_literal_global_73];

  privateContainer4 = [registryCopy privateContainer];
  v22 = [privateContainer4 registerProtocol:&unk_1F5259CB8 name:@"web-content" factory:&__block_literal_global_79];
  v23 = [v22 inScope:2];

  publicContainer4 = [registryCopy publicContainer];
  v25 = [publicContainer4 registerClass:objc_opt_class() name:@"web-content" factory:&__block_literal_global_83];

  publicContainer5 = [registryCopy publicContainer];
  v27 = [publicContainer5 registerClass:objc_opt_class() factory:&__block_literal_global_86];

  publicContainer6 = [registryCopy publicContainer];

  v28 = [publicContainer6 registerClass:objc_opt_class() factory:&__block_literal_global_89];
}

SWWebViewFactory *__36__SWFactoryAssembly_loadInRegistry___block_invoke()
{
  v0 = objc_alloc_init(SWWebViewFactory);

  return v0;
}

SWProcessConfiguration *__36__SWFactoryAssembly_loadInRegistry___block_invoke_2()
{
  v0 = [[SWProcessConfiguration alloc] initWithBackgroundPriority:1];

  return v0;
}

id __36__SWFactoryAssembly_loadInRegistry___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E6985340];
  v3 = a2;
  v4 = [v2 alloc];
  v5 = [v3 resolveClass:objc_opt_class() name:@"web-content"];

  v6 = [v4 _initWithConfiguration:v5];

  return v6;
}

id __36__SWFactoryAssembly_loadInRegistry___block_invoke_6()
{
  v0 = objc_alloc_init(MEMORY[0x1E69853F0]);

  return v0;
}

void __36__SWFactoryAssembly_loadInRegistry___block_invoke_7(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 resolveProtocol:&unk_1F526A378];
  [v4 setAlwaysRunsAtBackgroundPriority:{objc_msgSend(v5, "shouldRunAtBackgroundPriority")}];
  [v4 setUsesSingleWebProcess:1];
}

id __36__SWFactoryAssembly_loadInRegistry___block_invoke_8()
{
  v0 = objc_alloc_init(MEMORY[0x1E6985350]);

  return v0;
}

SWWebViewConfigurationFactory *__36__SWFactoryAssembly_loadInRegistry___block_invoke_9(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SWWebViewConfigurationFactory alloc];
  v4 = [v2 resolveClass:objc_opt_class() name:@"web-content"];
  v5 = [v2 resolveClass:objc_opt_class() name:@"web-content"];

  v6 = [(SWWebViewConfigurationFactory *)v3 initWithProcessPool:v4 websiteDataStore:v5];

  return v6;
}

id __36__SWFactoryAssembly_loadInRegistry___block_invoke_10(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 resolveClass:objc_opt_class() name:@"web-content"];
  v4 = [v2 resolveClass:objc_opt_class()];
  v5 = [v2 resolveProtocol:&unk_1F5259CB8 name:@"web-content"];

  v6 = [v5 createWebViewConfigurationWithUserContentController:v3 mediaSettings:v4];

  return v6;
}

SWMediaSettings *__36__SWFactoryAssembly_loadInRegistry___block_invoke_11()
{
  v0 = [[SWMediaSettings alloc] initWithMediaTypesRequiringUserActionForPlayback:1 fullScreenEnabled:0];

  return v0;
}

SWScrollSettings *__36__SWFactoryAssembly_loadInRegistry___block_invoke_12()
{
  v0 = [[SWScrollSettings alloc] initWithScrollEnabled:0 scrollsToTop:0 showsVerticalScrollIndicator:0];

  return v0;
}

@end