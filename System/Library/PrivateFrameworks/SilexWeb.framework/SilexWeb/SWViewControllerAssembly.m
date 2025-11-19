@interface SWViewControllerAssembly
- (void)loadInRegistry:(id)a3;
@end

@implementation SWViewControllerAssembly

- (void)loadInRegistry:(id)a3
{
  v3 = a3;
  v4 = [v3 publicContainer];
  v5 = [v4 registerClass:objc_opt_class() factory:&__block_literal_global_2];

  v6 = [v3 publicContainer];
  v7 = [v6 registerClass:objc_opt_class() factory:&__block_literal_global_13];

  v9 = [v3 publicContainer];

  v8 = [v9 registerClass:objc_opt_class() name:@"web-content" factory:&__block_literal_global_81_0];
}

SWContainerViewController *__43__SWViewControllerAssembly_loadInRegistry___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SWContainerViewController alloc];
  v4 = [v2 resolveClass:objc_opt_class()];
  v5 = [v2 resolveProtocol:&unk_1F524D7B8];
  v6 = [v2 resolveProtocol:&unk_1F5269F40];
  v16 = [v2 resolveProtocol:&unk_1F52591F0];
  v15 = [v2 resolveProtocol:&unk_1F52681B8];
  v14 = [v2 resolveProtocol:&unk_1F526B978];
  v12 = [v2 resolveProtocol:&unk_1F5269960];
  v7 = [v2 resolveProtocol:&unk_1F524E0D8];
  v8 = [v2 resolveProtocol:&unk_1F524E5D8];
  v9 = [v2 resolveProtocol:&unk_1F524E458];
  v10 = [v2 resolveProtocol:&unk_1F524EA58];

  v13 = [(SWContainerViewController *)v3 initWithWebContentViewController:v4 actionProvider:v5 interactionProvider:v6 errorProvider:v16 failureProvider:v15 navigationBarConfigurationProvider:v14 configurationManager:v12 presentationManager:v7 scaleManager:v8 snapshotManager:v9 preferredSizeManager:v10];

  return v13;
}

SWViewController *__43__SWViewControllerAssembly_loadInRegistry___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v15 = [SWViewController alloc];
  v21 = [v2 resolveClass:objc_opt_class() name:@"web-content"];
  v12 = [v2 resolveProtocol:&unk_1F524FEA0];
  v18 = [v2 resolveProtocol:&unk_1F5269C30];
  v17 = [v2 resolveProtocol:&unk_1F52697D8];
  v14 = [v2 resolveProtocol:&unk_1F524EDB0];
  v13 = [v2 resolveProtocol:&unk_1F5259268];
  v20 = [v2 resolveProtocol:&unk_1F524DCD0];
  v19 = [v2 resolveProtocol:&unk_1F526A040];
  v11 = [v2 resolveProtocol:&unk_1F524D9F8];
  v10 = [v2 resolveProtocol:&unk_1F524F1C8];
  v9 = [v2 resolveProtocol:&unk_1F526B9D8];
  v3 = [v2 resolveProtocol:&unk_1F5259DE0];
  v4 = [v2 resolveProtocol:&unk_1F5269560];
  v5 = [v2 resolveProtocol:&unk_1F526A278];
  v6 = [v2 resolveProtocol:&unk_1F5259348 name:@"local"];
  v7 = [v2 resolveProtocol:&unk_1F5259528];

  v16 = [(SWViewController *)v15 initWithWebView:v21 setupManager:v12 scriptsManager:v18 messageHandlerManager:v17 navigationManager:v14 errorReporter:v13 documentStateReporter:v20 timeoutManager:v19 terminationManager:v11 contentRuleManager:v10 reachabilityProvider:v9 logger:v3 sessionManager:v4 datastoreSynchronizationManager:v5 localDatastoreManager:v6 URLSchemeHandlerManager:v7];

  return v16;
}

id __43__SWViewControllerAssembly_loadInRegistry___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 resolveClass:objc_opt_class() name:@"web-content"];
  v4 = [v2 resolveClass:objc_opt_class()];
  v5 = [v2 resolveProtocol:&unk_1F524F030 name:@"web-content"];

  v6 = [v5 createWebViewWithWebViewConfiguration:v3 scrollSettings:v4];

  return v6;
}

@end