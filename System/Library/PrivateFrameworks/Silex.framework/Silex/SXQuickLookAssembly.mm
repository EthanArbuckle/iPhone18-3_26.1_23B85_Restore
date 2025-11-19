@interface SXQuickLookAssembly
- (void)loadInRegistry:(id)a3;
@end

@implementation SXQuickLookAssembly

- (void)loadInRegistry:(id)a3
{
  v3 = a3;
  v4 = [v3 publicContainer];
  v5 = [v4 registerProtocol:&unk_1F5415230 factory:&__block_literal_global_31];

  v6 = [v3 publicContainer];
  v7 = [v6 registerProtocol:&unk_1F5426260 factory:&__block_literal_global_50];

  v8 = [v3 privateContainer];
  v9 = [v8 registerClass:objc_opt_class() factory:&__block_literal_global_55_5];

  v10 = [v3 privateContainer];
  v11 = [v10 registerProtocol:&unk_1F53A7F48 factory:&__block_literal_global_72];

  v12 = [v3 privateContainer];
  v13 = [v12 registerClass:objc_opt_class() factory:&__block_literal_global_76_0];
  v14 = [v13 withConfiguration:&__block_literal_global_88];

  v15 = [v3 privateContainer];
  v16 = [v15 registerProtocol:&unk_1F54262E0 factory:&__block_literal_global_91];
  v17 = [v16 withConfiguration:&__block_literal_global_100];

  v18 = [v3 privateContainer];
  v19 = [v18 registerProtocol:&unk_1F53C5D08 factory:&__block_literal_global_103];

  v20 = [v3 privateContainer];
  v21 = [v20 registerProtocol:&unk_1F5410BD8 factory:&__block_literal_global_107];

  v22 = [v3 privateContainer];
  v23 = [v22 registerProtocol:&unk_1F54292B0 factory:&__block_literal_global_111_0];

  v25 = [v3 privateContainer];

  v24 = [v25 registerProtocol:&unk_1F53C09B8 factory:&__block_literal_global_118_0];
}

SXQuickLookModule *__38__SXQuickLookAssembly_loadInRegistry___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[SXQuickLookModule alloc] initWithResolver:v2];

  return v3;
}

SXQuickLookPreviewViewControllerFactory *__38__SXQuickLookAssembly_loadInRegistry___block_invoke_2()
{
  v0 = objc_alloc_init(SXQuickLookPreviewViewControllerFactory);

  return v0;
}

SXQuickLookViewController *__38__SXQuickLookAssembly_loadInRegistry___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SXQuickLookViewController alloc];
  v4 = [v2 resolveProtocol:&unk_1F53A7F48];
  v5 = [v2 resolveProtocol:&unk_1F54292B0];

  v6 = [(SXQuickLookViewController *)v3 initWithEventHandler:v4 renderer:v5];

  return v6;
}

id __38__SXQuickLookAssembly_loadInRegistry___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 resolveClass:objc_opt_class()];

  return v3;
}

SXQuickLookEventHandler *__38__SXQuickLookAssembly_loadInRegistry___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SXQuickLookEventHandler alloc];
  v4 = [v2 resolveProtocol:&unk_1F54262E0];
  v5 = [v2 resolveProtocol:&unk_1F53C5D08];

  v6 = [(SXQuickLookEventHandler *)v3 initWithInteractor:v4 router:v5];

  return v6;
}

void __38__SXQuickLookAssembly_loadInRegistry___block_invoke_6(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [v5 resolveClass:objc_opt_class()];

  [v4 setDelegate:v6];
}

SXQuickLookInteractor *__38__SXQuickLookAssembly_loadInRegistry___block_invoke_7(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SXQuickLookInteractor alloc];
  v4 = [v2 resolveClass:objc_opt_class()];
  v5 = [v2 resolveProtocol:&unk_1F5410BD8];

  v6 = [(SXQuickLookInteractor *)v3 initWithFile:v4 service:v5];

  return v6;
}

void __38__SXQuickLookAssembly_loadInRegistry___block_invoke_8(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 resolveProtocol:&unk_1F53A7F48];
  [v4 setDelegate:v5];
}

SXQuickLookRouter *__38__SXQuickLookAssembly_loadInRegistry___block_invoke_9(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[SXQuickLookRouter alloc] initWithResolver:v2];

  return v3;
}

SXQuickLookService *__38__SXQuickLookAssembly_loadInRegistry___block_invoke_10()
{
  v0 = objc_alloc_init(SXQuickLookService);

  return v0;
}

SXQuickLookRenderer *__38__SXQuickLookAssembly_loadInRegistry___block_invoke_11(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SXQuickLookRenderer alloc];
  v4 = [v2 resolveProtocol:&unk_1F53C09B8];

  v5 = [(SXQuickLookRenderer *)v3 initWithStyler:v4];

  return v5;
}

SXQuickLookStyler *__38__SXQuickLookAssembly_loadInRegistry___block_invoke_12()
{
  v0 = objc_alloc_init(SXQuickLookStyler);

  return v0;
}

@end