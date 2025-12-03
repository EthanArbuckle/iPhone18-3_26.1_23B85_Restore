@interface SXActionAssembly
- (void)loadInRegistry:(id)registry;
@end

@implementation SXActionAssembly

- (void)loadInRegistry:(id)registry
{
  registryCopy = registry;
  publicContainer = [registryCopy publicContainer];
  v5 = [publicContainer registerProtocol:&unk_1F53A9FB8 factory:&__block_literal_global_76];

  publicContainer2 = [registryCopy publicContainer];
  v7 = [publicContainer2 registerProtocol:&unk_1F5407760 factory:&__block_literal_global_86_0];

  publicContainer3 = [registryCopy publicContainer];
  v9 = [publicContainer3 registerClass:objc_opt_class() factory:&__block_literal_global_90];
  v10 = [v9 withConfiguration:&__block_literal_global_93_0];

  publicContainer4 = [registryCopy publicContainer];
  v12 = [publicContainer4 registerProtocol:&unk_1F53E6008 factory:&__block_literal_global_121];

  publicContainer5 = [registryCopy publicContainer];
  v14 = [publicContainer5 registerProtocol:&unk_1F53BA8E8 factory:&__block_literal_global_129];

  publicContainer6 = [registryCopy publicContainer];
  v16 = [publicContainer6 registerProtocol:&unk_1F5423530 factory:&__block_literal_global_133_0];
  v17 = [v16 inScope:2];

  privateContainer = [registryCopy privateContainer];
  v19 = [privateContainer registerClass:objc_opt_class() factory:&__block_literal_global_137];
  v20 = [v19 withConfiguration:&__block_literal_global_140_0];

  publicContainer7 = [registryCopy publicContainer];
  v22 = [publicContainer7 registerProtocol:&unk_1F53F8E78 factory:&__block_literal_global_151];
  v23 = [v22 withConfiguration:&__block_literal_global_155_0];

  privateContainer2 = [registryCopy privateContainer];
  v25 = [privateContainer2 registerProtocol:&unk_1F53BE8C8 factory:&__block_literal_global_166];

  privateContainer3 = [registryCopy privateContainer];
  v27 = [privateContainer3 registerClass:objc_opt_class() factory:&__block_literal_global_183];

  privateContainer4 = [registryCopy privateContainer];
  v29 = [privateContainer4 registerClass:objc_opt_class() factory:&__block_literal_global_208];

  privateContainer5 = [registryCopy privateContainer];
  v31 = [privateContainer5 registerClass:objc_opt_class() factory:&__block_literal_global_215];

  publicContainer8 = [registryCopy publicContainer];
  v33 = [publicContainer8 registerClass:objc_opt_class() factory:&__block_literal_global_225];

  publicContainer9 = [registryCopy publicContainer];
  v35 = [publicContainer9 registerClass:objc_opt_class() factory:&__block_literal_global_231];

  publicContainer10 = [registryCopy publicContainer];
  v37 = [publicContainer10 registerClass:objc_opt_class() factory:&__block_literal_global_234];

  publicContainer11 = [registryCopy publicContainer];
  v39 = [publicContainer11 registerClass:objc_opt_class() factory:&__block_literal_global_240];

  publicContainer12 = [registryCopy publicContainer];
  v41 = [publicContainer12 registerClass:objc_opt_class() factory:&__block_literal_global_244];

  publicContainer13 = [registryCopy publicContainer];
  v43 = [publicContainer13 registerProtocol:&unk_1F53E42C8 factory:&__block_literal_global_250_2];

  privateContainer6 = [registryCopy privateContainer];
  v45 = [privateContainer6 registerProtocol:&unk_1F53AAF70 factory:&__block_literal_global_254_1];

  privateContainer7 = [registryCopy privateContainer];
  v47 = [privateContainer7 registerClass:objc_opt_class() factory:&__block_literal_global_259_0];

  privateContainer8 = [registryCopy privateContainer];
  v49 = [privateContainer8 registerClass:objc_opt_class() factory:&__block_literal_global_262];

  privateContainer9 = [registryCopy privateContainer];
  v51 = [privateContainer9 registerClass:objc_opt_class() factory:&__block_literal_global_265];

  privateContainer10 = [registryCopy privateContainer];
  v53 = [privateContainer10 registerClass:objc_opt_class() factory:&__block_literal_global_268_0];

  privateContainer11 = [registryCopy privateContainer];
  v55 = [privateContainer11 registerClass:objc_opt_class() factory:&__block_literal_global_274];

  privateContainer12 = [registryCopy privateContainer];
  v57 = [privateContainer12 registerClass:objc_opt_class() factory:&__block_literal_global_277_0];

  privateContainer13 = [registryCopy privateContainer];
  v59 = [privateContainer13 registerClass:objc_opt_class() factory:&__block_literal_global_280];

  privateContainer14 = [registryCopy privateContainer];
  v61 = [privateContainer14 registerClass:objc_opt_class() factory:&__block_literal_global_283];

  privateContainer15 = [registryCopy privateContainer];
  v63 = [privateContainer15 registerClass:objc_opt_class() factory:&__block_literal_global_286_0];

  privateContainer16 = [registryCopy privateContainer];
  v65 = [privateContainer16 registerClass:objc_opt_class() factory:&__block_literal_global_289];

  privateContainer17 = [registryCopy privateContainer];
  v67 = [privateContainer17 registerClass:objc_opt_class() factory:&__block_literal_global_292_0];

  privateContainer18 = [registryCopy privateContainer];
  v69 = [privateContainer18 registerClass:objc_opt_class() factory:&__block_literal_global_295];

  publicContainer14 = [registryCopy publicContainer];
  v71 = [publicContainer14 registerProtocol:&unk_1F53D6000 factory:&__block_literal_global_298_0];

  privateContainer19 = [registryCopy privateContainer];

  v72 = [privateContainer19 registerClass:objc_opt_class() factory:&__block_literal_global_302];
  v73 = [v72 inScope:2];
}

SXActionManager *__35__SXActionAssembly_loadInRegistry___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SXActionManager alloc];
  v4 = [v2 resolveProtocol:&unk_1F53F8E78];
  v5 = [v2 resolveProtocol:&unk_1F53BE8C8];
  v6 = [v2 resolveProtocol:&unk_1F5423530];

  v7 = [(SXActionManager *)v3 initWithActionActivityManager:v4 viewManager:v5 postActionHandlerManager:v6];

  return v7;
}

id __35__SXActionAssembly_loadInRegistry___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 resolveClass:objc_opt_class()];

  return v3;
}

SXActionEngine *__35__SXActionAssembly_loadInRegistry___block_invoke_3()
{
  v0 = objc_alloc_init(SXActionEngine);

  return v0;
}

void __35__SXActionAssembly_loadInRegistry___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v9 = [v5 resolveClass:objc_opt_class()];
  [v4 registerFactory:v9 URLHost:@"link"];
  [v4 registerFactory:v9 additionType:objc_opt_class()];
  v6 = [v5 resolveClass:objc_opt_class()];
  [v4 registerFactory:v6 URLHost:@"email"];
  [v4 registerFactory:v6 additionType:objc_opt_class()];
  v7 = [v5 resolveClass:objc_opt_class()];
  [v4 registerFactory:v7 URLHost:@"phone-number"];
  [v4 registerFactory:v7 additionType:objc_opt_class()];
  v8 = [v5 resolveClass:objc_opt_class()];

  [v4 registerFactory:v8 URLHost:@"calendar-event"];
  [v4 registerFactory:v8 additionType:objc_opt_class()];
}

SXURLActionFactory *__35__SXActionAssembly_loadInRegistry___block_invoke_5()
{
  v0 = objc_alloc_init(SXURLActionFactory);

  return v0;
}

id __35__SXActionAssembly_loadInRegistry___block_invoke_6(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 resolveClass:objc_opt_class()];

  return v3;
}

SXPostActionHandlerManager *__35__SXActionAssembly_loadInRegistry___block_invoke_7()
{
  v0 = objc_alloc_init(SXPostActionHandlerManager);

  return v0;
}

SXActionSerializationManager *__35__SXActionAssembly_loadInRegistry___block_invoke_8()
{
  v0 = objc_alloc_init(SXActionSerializationManager);

  return v0;
}

void __35__SXActionAssembly_loadInRegistry___block_invoke_9(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [v5 resolveClass:objc_opt_class()];
  [v4 registerSerializer:v6 actionType:@"link"];

  v7 = [v5 resolveClass:objc_opt_class()];
  [v4 registerSerializer:v7 actionType:@"email"];

  v8 = [v5 resolveClass:objc_opt_class()];
  [v4 registerSerializer:v8 actionType:@"phone_number"];

  v9 = [v5 resolveClass:objc_opt_class()];
  [v4 registerSerializer:v9 actionType:@"calendar"];

  v10 = [v5 resolveClass:objc_opt_class()];
  [v4 registerSerializer:v10 actionType:@"webcal"];

  v11 = [v5 resolveClass:objc_opt_class()];
  [v4 registerSerializer:v11 actionType:@"bookmark"];

  v12 = [v5 resolveClass:objc_opt_class()];
  [v4 registerSerializer:v12 actionType:@"subscribe"];

  v13 = [v5 resolveClass:objc_opt_class()];

  [v4 registerSerializer:v13 actionType:@"close"];
}

SXActionActivityManager *__35__SXActionAssembly_loadInRegistry___block_invoke_10()
{
  v0 = objc_alloc_init(SXActionActivityManager);

  return v0;
}

void __35__SXActionAssembly_loadInRegistry___block_invoke_11(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [v5 resolveClass:objc_opt_class()];
  [v4 registerActionActivityProvider:v6 actionType:@"link"];

  v7 = [v5 resolveClass:objc_opt_class()];
  [v4 registerActionActivityProvider:v7 actionType:@"email"];

  v8 = [v5 resolveClass:objc_opt_class()];
  [v4 registerActionActivityProvider:v8 actionType:@"phone_number"];

  v9 = [v5 resolveClass:objc_opt_class()];
  [v4 registerActionActivityProvider:v9 actionType:@"calendar"];

  v10 = [v5 resolveClass:objc_opt_class()];
  [v4 registerActionActivityProvider:v10 actionType:@"webcal"];

  v11 = [v5 resolveClass:objc_opt_class()];
  [v4 registerActionActivityProvider:v11 actionType:@"bookmark"];

  v12 = [v5 resolveClass:objc_opt_class()];
  [v4 registerActionActivityProvider:v12 actionType:@"subscribe"];

  v13 = [v5 resolveClass:objc_opt_class()];

  [v4 registerActionActivityProvider:v13 actionType:@"close"];
}

SXActionViewManager *__35__SXActionAssembly_loadInRegistry___block_invoke_12(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SXActionViewManager alloc];
  v4 = [v2 resolveProtocol:&unk_1F53E6C20];

  v5 = [(SXActionViewManager *)v3 initWithViewControllerPresenting:v4];

  return v5;
}

SXLinkActionActivityProvider *__35__SXActionAssembly_loadInRegistry___block_invoke_13(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SXLinkActionActivityProvider alloc];
  v4 = [v2 resolveProtocol:&unk_1F5439068];
  v5 = [v2 resolveProtocol:&unk_1F5439118];
  v6 = [v2 resolveProtocol:&unk_1F53C1388];
  v7 = [v2 resolveProtocol:&unk_1F53D6000];

  v8 = [(SXLinkActionActivityProvider *)v3 initWithURLHandler:v4 URLPreviewing:v5 host:v6 URLQualifier:v7];

  return v8;
}

SXEmailActionActivityProvider *__35__SXActionAssembly_loadInRegistry___block_invoke_14(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SXEmailActionActivityProvider alloc];
  v4 = [v2 resolveProtocol:&unk_1F54391B8];

  v5 = [(SXEmailActionActivityProvider *)v3 initWithMailPresenter:v4];

  return v5;
}

SXPhoneNumberActionActivityProvider *__35__SXActionAssembly_loadInRegistry___block_invoke_15(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SXPhoneNumberActionActivityProvider alloc];
  v4 = [v2 resolveProtocol:&unk_1F53C1388];
  v5 = [v2 resolveProtocol:&unk_1F5439260];
  v6 = [v2 resolveProtocol:&unk_1F540E6A0];

  v7 = [(SXPhoneNumberActionActivityProvider *)v3 initWithHost:v4 messagePresenter:v5 deviceCapabilities:v6];

  return v7;
}

SXCalendarEventActionActivityProvider *__35__SXActionAssembly_loadInRegistry___block_invoke_16(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SXCalendarEventActionActivityProvider alloc];
  v4 = [v2 resolveProtocol:&unk_1F53AAF70];
  v5 = [v2 resolveProtocol:&unk_1F53C1388];

  v6 = [(SXCalendarEventActionActivityProvider *)v3 initWithCalendarPresenter:v4 host:v5];

  return v6;
}

SXWebCalActionActivityProvider *__35__SXActionAssembly_loadInRegistry___block_invoke_17()
{
  v0 = objc_alloc_init(SXWebCalActionActivityProvider);

  return v0;
}

id *__35__SXActionAssembly_loadInRegistry___block_invoke_18(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SXBookmarkActionActivityProvider alloc];
  v4 = [v2 resolveProtocol:&unk_1F53D5C30];

  v5 = [(SXBookmarkActionActivityProvider *)&v3->super.isa initWithBookmarkManager:v4];

  return v5;
}

SXSubscribeActionActivityProvider *__35__SXActionAssembly_loadInRegistry___block_invoke_19(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SXSubscribeActionActivityProvider alloc];
  v4 = [v2 resolveProtocol:&unk_1F5422C40];
  v5 = [v2 resolveProtocol:&unk_1F53E6C20];
  v6 = [v2 resolveProtocol:&unk_1F53A9FB8];

  v7 = [(SXSubscribeActionActivityProvider *)v3 initWithHandler:v4 viewControllerPresenting:v5 actionManager:v6];

  return v7;
}

id *__35__SXActionAssembly_loadInRegistry___block_invoke_20(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SXCloseActionActivityProvider alloc];
  v4 = [v2 resolveProtocol:&unk_1F53E6C20];
  v5 = [v2 resolveProtocol:&unk_1F53E42C8];

  v6 = [(SXCloseActionActivityProvider *)&v3->super.isa initWithViewControllerPresenting:v4 handler:v5];

  return v6;
}

SXCloseActionHandler *__35__SXActionAssembly_loadInRegistry___block_invoke_21()
{
  v0 = objc_alloc_init(SXCloseActionHandler);

  return v0;
}

SXCalendarPresenter *__35__SXActionAssembly_loadInRegistry___block_invoke_22(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SXCalendarPresenter alloc];
  v4 = [v2 resolveProtocol:&unk_1F53E6C20];
  v5 = [v2 resolveClass:objc_opt_class()];

  v6 = [(SXCalendarPresenter *)v3 initWithViewControllerPresenting:v4 eventStoreProvider:v5];

  return v6;
}

SXLinkActionFactory *__35__SXActionAssembly_loadInRegistry___block_invoke_23(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SXLinkActionFactory alloc];
  v4 = [v2 resolveProtocol:&unk_1F53E6008];

  v5 = [(SXLinkActionFactory *)v3 initWithURLActionFactory:v4];

  return v5;
}

SXEmailActionFactory *__35__SXActionAssembly_loadInRegistry___block_invoke_24()
{
  v0 = objc_alloc_init(SXEmailActionFactory);

  return v0;
}

SXPhoneNumberActionFactory *__35__SXActionAssembly_loadInRegistry___block_invoke_25()
{
  v0 = objc_alloc_init(SXPhoneNumberActionFactory);

  return v0;
}

SXCalendarEventActionFactory *__35__SXActionAssembly_loadInRegistry___block_invoke_26(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SXCalendarEventActionFactory alloc];
  v4 = [v2 resolveProtocol:&unk_1F540FBD0];

  v5 = [(SXCalendarEventActionFactory *)v3 initWithDateParser:v4];

  return v5;
}

SXLinkActionSerializer *__35__SXActionAssembly_loadInRegistry___block_invoke_27()
{
  v0 = objc_alloc_init(SXLinkActionSerializer);

  return v0;
}

SXEmailActionSerializer *__35__SXActionAssembly_loadInRegistry___block_invoke_28()
{
  v0 = objc_alloc_init(SXEmailActionSerializer);

  return v0;
}

SXPhoneNumberActionSerializer *__35__SXActionAssembly_loadInRegistry___block_invoke_29()
{
  v0 = objc_alloc_init(SXPhoneNumberActionSerializer);

  return v0;
}

SXCalendarEventActionSerializer *__35__SXActionAssembly_loadInRegistry___block_invoke_30()
{
  v0 = objc_alloc_init(SXCalendarEventActionSerializer);

  return v0;
}

SXWebCalActionSerializer *__35__SXActionAssembly_loadInRegistry___block_invoke_31()
{
  v0 = objc_alloc_init(SXWebCalActionSerializer);

  return v0;
}

SXBookmarkActionSerializer *__35__SXActionAssembly_loadInRegistry___block_invoke_32()
{
  v0 = objc_alloc_init(SXBookmarkActionSerializer);

  return v0;
}

SXSubscribeActionSerializer *__35__SXActionAssembly_loadInRegistry___block_invoke_33()
{
  v0 = objc_alloc_init(SXSubscribeActionSerializer);

  return v0;
}

SXCloseActionSerializer *__35__SXActionAssembly_loadInRegistry___block_invoke_34()
{
  v0 = objc_alloc_init(SXCloseActionSerializer);

  return v0;
}

SXLinkActionURLQualifier *__35__SXActionAssembly_loadInRegistry___block_invoke_35()
{
  v0 = objc_alloc_init(SXLinkActionURLQualifier);

  return v0;
}

SXEventStoreProvider *__35__SXActionAssembly_loadInRegistry___block_invoke_36()
{
  v0 = objc_alloc_init(SXEventStoreProvider);

  return v0;
}

@end