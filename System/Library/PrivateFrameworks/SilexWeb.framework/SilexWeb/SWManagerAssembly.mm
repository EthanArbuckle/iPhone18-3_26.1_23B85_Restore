@interface SWManagerAssembly
- (void)loadInRegistry:(id)registry;
@end

@implementation SWManagerAssembly

- (void)loadInRegistry:(id)registry
{
  registryCopy = registry;
  publicContainer = [registryCopy publicContainer];
  v5 = [publicContainer registerProtocol:&unk_1F5269960 factory:&__block_literal_global_1];

  privateContainer = [registryCopy privateContainer];
  v7 = [privateContainer registerProtocol:&unk_1F524FCD0 factory:&__block_literal_global_74];

  publicContainer2 = [registryCopy publicContainer];
  v9 = [publicContainer2 registerProtocol:&unk_1F524FE10 factory:&__block_literal_global_81];

  publicContainer3 = [registryCopy publicContainer];
  v11 = [publicContainer3 registerProtocol:&unk_1F524F1C8 factory:&__block_literal_global_90];

  publicContainer4 = [registryCopy publicContainer];
  v13 = [publicContainer4 registerProtocol:&unk_1F524DC18 factory:&__block_literal_global_103];

  publicContainer5 = [registryCopy publicContainer];
  v15 = [publicContainer5 registerProtocol:&unk_1F524DCD0 factory:&__block_literal_global_111];

  privateContainer2 = [registryCopy privateContainer];
  v17 = [privateContainer2 registerClass:objc_opt_class() factory:&__block_literal_global_114];

  publicContainer6 = [registryCopy publicContainer];
  v19 = [publicContainer6 registerProtocol:&unk_1F52591F0 factory:&__block_literal_global_129];

  publicContainer7 = [registryCopy publicContainer];
  v21 = [publicContainer7 registerProtocol:&unk_1F5259268 factory:&__block_literal_global_136];

  privateContainer3 = [registryCopy privateContainer];
  v23 = [privateContainer3 registerClass:objc_opt_class() factory:&__block_literal_global_139];

  publicContainer8 = [registryCopy publicContainer];
  v25 = [publicContainer8 registerProtocol:&unk_1F52681B8 factory:&__block_literal_global_152];

  privateContainer4 = [registryCopy privateContainer];
  v27 = [privateContainer4 registerClass:objc_opt_class() factory:&__block_literal_global_156];

  publicContainer9 = [registryCopy publicContainer];
  v29 = [publicContainer9 registerProtocol:&unk_1F52697D8 factory:&__block_literal_global_159];
  v30 = [v29 withConfiguration:&__block_literal_global_163];

  privateContainer5 = [registryCopy privateContainer];
  v32 = [privateContainer5 registerClass:objc_opt_class() factory:&__block_literal_global_167];

  publicContainer10 = [registryCopy publicContainer];
  v34 = [publicContainer10 registerProtocol:&unk_1F524EDB0 factory:&__block_literal_global_188];

  publicContainer11 = [registryCopy publicContainer];
  v36 = [publicContainer11 registerProtocol:&unk_1F524E0D8 factory:&__block_literal_global_220];

  publicContainer12 = [registryCopy publicContainer];
  v38 = [publicContainer12 registerProtocol:&unk_1F5269C30 factory:&__block_literal_global_224];

  publicContainer13 = [registryCopy publicContainer];
  v40 = [publicContainer13 registerProtocol:&unk_1F524D9F8 factory:&__block_literal_global_232];

  privateContainer6 = [registryCopy privateContainer];
  v42 = [privateContainer6 registerProtocol:&unk_1F524E8C8 factory:&__block_literal_global_240];

  publicContainer14 = [registryCopy publicContainer];
  v44 = [publicContainer14 registerProtocol:&unk_1F526A040 factory:&__block_literal_global_244];

  publicContainer15 = [registryCopy publicContainer];
  v46 = [publicContainer15 registerProtocol:&unk_1F5269560 factory:&__block_literal_global_252];

  publicContainer16 = [registryCopy publicContainer];
  v48 = [publicContainer16 registerProtocol:&unk_1F526A278 factory:&__block_literal_global_268];
  v49 = [v48 withConfiguration:&__block_literal_global_275];

  publicContainer17 = [registryCopy publicContainer];
  v51 = [publicContainer17 registerProtocol:&unk_1F5259348 factory:&__block_literal_global_287];
  v52 = [v51 inScope:2];

  privateContainer7 = [registryCopy privateContainer];
  v54 = [privateContainer7 registerProtocol:&unk_1F524F550 factory:&__block_literal_global_290];

  publicContainer18 = [registryCopy publicContainer];
  v56 = [publicContainer18 registerProtocol:&unk_1F5259348 name:@"local" factory:&__block_literal_global_293];

  publicContainer19 = [registryCopy publicContainer];
  v58 = [publicContainer19 registerProtocol:&unk_1F524FEA0 factory:&__block_literal_global_299];

  publicContainer20 = [registryCopy publicContainer];
  v60 = [publicContainer20 registerProtocol:&unk_1F5259528 factory:&__block_literal_global_307];

  callback = [registryCopy callback];
  v62 = objc_opt_class();
  v63 = TFCallbackScopeName();
  [callback whenResolvingClass:v62 scope:v63 callbackBlock:&__block_literal_global_312];

  publicContainer21 = [registryCopy publicContainer];
  v65 = [publicContainer21 registerProtocol:&unk_1F524E5D8 factory:&__block_literal_global_320];

  publicContainer22 = [registryCopy publicContainer];
  v67 = [publicContainer22 registerProtocol:&unk_1F524E458 factory:&__block_literal_global_326];

  publicContainer23 = [registryCopy publicContainer];

  v68 = [publicContainer23 registerProtocol:&unk_1F524EA58 factory:&__block_literal_global_337];
}

SWConfigurationManager *__36__SWManagerAssembly_loadInRegistry___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SWConfigurationManager alloc];
  v4 = [v2 resolveProtocol:&unk_1F5269C30];
  v5 = [v2 resolveProtocol:&unk_1F5259DE0];
  v6 = [v2 resolveProtocol:&unk_1F524FCD0];

  v7 = [(SWConfigurationManager *)v3 initWithWebContentScriptsManager:v4 logger:v5 serializer:v6];

  return v7;
}

SWConfigurationSerializer *__36__SWManagerAssembly_loadInRegistry___block_invoke_2()
{
  v0 = objc_alloc_init(SWConfigurationSerializer);

  return v0;
}

SWFeedConfigurationFactory *__36__SWManagerAssembly_loadInRegistry___block_invoke_3()
{
  v0 = objc_alloc_init(SWFeedConfigurationFactory);

  return v0;
}

SWContentRuleManager *__36__SWManagerAssembly_loadInRegistry___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SWContentRuleManager alloc];
  v4 = [v2 resolveClass:objc_opt_class() name:@"web-content"];

  v5 = [(SWContentRuleManager *)v3 initWithUserContentController:v4];

  return v5;
}

id __36__SWManagerAssembly_loadInRegistry___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 resolveClass:objc_opt_class()];

  return v3;
}

id __36__SWManagerAssembly_loadInRegistry___block_invoke_6(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 resolveClass:objc_opt_class()];

  return v3;
}

SWDocumentStateManager *__36__SWManagerAssembly_loadInRegistry___block_invoke_7(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SWDocumentStateManager alloc];
  v4 = [v2 resolveClass:objc_opt_class() name:@"web-content"];

  v5 = [(SWDocumentStateManager *)v3 initWithUserContentController:v4];

  return v5;
}

id __36__SWManagerAssembly_loadInRegistry___block_invoke_8(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 resolveClass:objc_opt_class()];

  return v3;
}

id __36__SWManagerAssembly_loadInRegistry___block_invoke_9(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 resolveClass:objc_opt_class()];

  return v3;
}

SWErrorManager *__36__SWManagerAssembly_loadInRegistry___block_invoke_10(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SWErrorManager alloc];
  v4 = [v2 resolveProtocol:&unk_1F52697D8];
  v5 = [v2 resolveProtocol:&unk_1F526A040];
  v6 = [v2 resolveProtocol:&unk_1F5259DE0];

  v7 = [(SWErrorManager *)v3 initWithMessageHandlerManager:v4 timeoutManager:v5 logger:v6];

  return v7;
}

id __36__SWManagerAssembly_loadInRegistry___block_invoke_11(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 resolveClass:objc_opt_class()];

  return v3;
}

SWFailureManager *__36__SWManagerAssembly_loadInRegistry___block_invoke_12(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SWFailureManager alloc];
  v4 = [v2 resolveProtocol:&unk_1F52697D8];
  v5 = [v2 resolveProtocol:&unk_1F5259DE0];

  v6 = [(SWFailureManager *)v3 initWithMessageHandlerManager:v4 logger:v5];

  return v6;
}

SWMessageHandlerManager *__36__SWManagerAssembly_loadInRegistry___block_invoke_13(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SWMessageHandlerManager alloc];
  v4 = [v2 resolveClass:objc_opt_class() name:@"web-content"];
  v5 = [v2 resolveProtocol:&unk_1F5259DE0];

  v6 = [(SWMessageHandlerManager *)v3 initWithUserContentController:v4 logger:v5];

  return v6;
}

void __36__SWManagerAssembly_loadInRegistry___block_invoke_14(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [v5 resolveClass:objc_opt_class()];

  [v4 addMessageHandler:v6 name:@"log"];
}

SWLogMessageHandler *__36__SWManagerAssembly_loadInRegistry___block_invoke_15(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SWLogMessageHandler alloc];
  v4 = [v2 resolveProtocol:&unk_1F5259DE0];

  v5 = [(SWLogMessageHandler *)v3 initWithLogger:v4];

  return v5;
}

SWNavigationManager *__36__SWManagerAssembly_loadInRegistry___block_invoke_16()
{
  v0 = objc_alloc_init(SWNavigationManager);

  return v0;
}

SWPresentationManager *__36__SWManagerAssembly_loadInRegistry___block_invoke_17(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SWPresentationManager alloc];
  v4 = [v2 resolveProtocol:&unk_1F5269C30];
  v5 = [v2 resolveProtocol:&unk_1F52697D8];
  v6 = [v2 resolveProtocol:&unk_1F524DC18];
  v7 = [v2 resolveProtocol:&unk_1F5259DE0];

  v8 = [(SWPresentationManager *)v3 initWithWebContentScriptsManager:v4 messageHandlerManager:v5 documentStateProvider:v6 logger:v7];

  return v8;
}

SWScriptsManager *__36__SWManagerAssembly_loadInRegistry___block_invoke_18(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SWScriptsManager alloc];
  v4 = [v2 resolveClass:objc_opt_class() name:@"web-content"];
  v5 = [v2 resolveProtocol:&unk_1F524DC18];
  v6 = [v2 resolveProtocol:&unk_1F5259DE0];

  v7 = [(SWScriptsManager *)v3 initWithWebView:v4 documentStateProvider:v5 logger:v6];

  return v7;
}

SWProcessTerminationManager *__36__SWManagerAssembly_loadInRegistry___block_invoke_19(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SWProcessTerminationManager alloc];
  v4 = [v2 resolveProtocol:&unk_1F524E8C8];
  v5 = [v2 resolveProtocol:&unk_1F5259268];

  v6 = [(SWProcessTerminationManager *)v3 initWithTerminationThrottler:v4 errorReporter:v5];

  return v6;
}

SWCrashRetryThrottler *__36__SWManagerAssembly_loadInRegistry___block_invoke_20()
{
  v0 = objc_alloc_init(SWCrashRetryThrottler);

  return v0;
}

SWTimeoutManager *__36__SWManagerAssembly_loadInRegistry___block_invoke_21(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SWTimeoutManager alloc];
  v4 = [v2 resolveProtocol:&unk_1F52697D8];
  v5 = [v2 resolveProtocol:&unk_1F524DC18];

  v6 = [(SWTimeoutManager *)v3 initWithTimeout:v4 messageHandlerManager:v5 documentStateProvider:60.0];

  return v6;
}

SWSessionManager *__36__SWManagerAssembly_loadInRegistry___block_invoke_22(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SWSessionManager alloc];
  v4 = [v2 resolveProtocol:&unk_1F5269C30];
  v5 = [v2 resolveProtocol:&unk_1F5259DE0];

  v6 = [(SWSessionManager *)v3 initWithScriptsManager:v4 logger:v5];

  return v6;
}

SWDatastoreSynchronizationManager *__36__SWManagerAssembly_loadInRegistry___block_invoke_23(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SWDatastoreSynchronizationManager alloc];
  v4 = [v2 resolveProtocol:&unk_1F524F550];
  v5 = [v2 resolveProtocol:&unk_1F5269C30];
  v6 = [v2 resolveProtocol:&unk_1F52697D8];
  v7 = [v2 resolveProtocol:&unk_1F5269560];
  v8 = [v2 resolveProtocol:&unk_1F5259DE0];

  v9 = [(SWDatastoreSynchronizationManager *)v3 initWithSettingsFactory:v4 scriptsManager:v5 messageHandlerManager:v6 sessionManager:v7 logger:v8];

  return v9;
}

void __36__SWManagerAssembly_loadInRegistry___block_invoke_24(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [v5 resolveProtocol:&unk_1F5259348];
  [v4 setDatastoreManager:v6];

  v7 = [v5 resolveProtocol:&unk_1F5259348 name:@"local"];

  [v4 setLocalDatastoreManager:v7];
}

SWDatastoreManager *__36__SWManagerAssembly_loadInRegistry___block_invoke_25(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SWDatastoreManager alloc];
  v4 = [v2 resolveProtocol:&unk_1F5259DE0];
  v5 = [v2 resolveProtocol:&unk_1F524DC18];
  v6 = [v2 resolveProtocol:&unk_1F526A278];

  v7 = [(SWDatastoreManager *)v3 initWithLogger:v4 documentStateProvider:v5 datastoreSynchronizationManager:v6];

  return v7;
}

SWDatastoreFactory *__36__SWManagerAssembly_loadInRegistry___block_invoke_26(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SWDatastoreFactory alloc];
  v4 = [v2 resolveProtocol:&unk_1F5259DE0];

  v5 = [(SWDatastoreFactory *)v3 initWithLogger:v4];

  return v5;
}

SWDatastoreManager *__36__SWManagerAssembly_loadInRegistry___block_invoke_27(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SWDatastoreManager alloc];
  v4 = [v2 resolveProtocol:&unk_1F5259DE0];
  v5 = [v2 resolveProtocol:&unk_1F524DC18];
  v6 = [v2 resolveProtocol:&unk_1F526A278];

  v7 = [(SWDatastoreManager *)v3 initWithLogger:v4 documentStateProvider:v5 datastoreSynchronizationManager:v6];

  return v7;
}

SWSetupManager *__36__SWManagerAssembly_loadInRegistry___block_invoke_28(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SWSetupManager alloc];
  v4 = [v2 resolveProtocol:&unk_1F5259DE0];

  v5 = [(SWSetupManager *)v3 initWithLogger:v4];

  return v5;
}

SWURLSchemeHandlerManager *__36__SWManagerAssembly_loadInRegistry___block_invoke_29(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SWURLSchemeHandlerManager alloc];
  v4 = [v2 resolveClass:objc_opt_class() name:@"web-content"];
  v5 = [v2 resolveProtocol:&unk_1F5259DE0];

  v6 = [(SWURLSchemeHandlerManager *)v3 initWithConfiguration:v4 logger:v5];

  return v6;
}

SWScaleManager *__36__SWManagerAssembly_loadInRegistry___block_invoke_31(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SWScaleManager alloc];
  v4 = [v2 resolveClass:objc_opt_class() name:@"web-content"];

  v5 = [(SWScaleManager *)v3 initWithWebView:v4 scale:1.0];

  return v5;
}

SWSnapshotManager *__36__SWManagerAssembly_loadInRegistry___block_invoke_32(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SWSnapshotManager alloc];
  v4 = [v2 resolveClass:objc_opt_class() name:@"web-content"];
  v5 = [v2 resolveProtocol:&unk_1F5269960];

  v6 = [(SWSnapshotManager *)v3 initWithWebView:v4 configurationManager:v5];

  return v6;
}

SWPreferredSizeManager *__36__SWManagerAssembly_loadInRegistry___block_invoke_33(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SWPreferredSizeManager alloc];
  v4 = [v2 resolveProtocol:&unk_1F52697D8];
  v5 = [v2 resolveProtocol:&unk_1F5259DE0];

  v6 = [(SWPreferredSizeManager *)v3 initWithMessageHandlerManager:v4 logger:v5];

  return v6;
}

@end