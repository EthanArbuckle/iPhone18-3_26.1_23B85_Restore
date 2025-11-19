@interface SXTangierAssembly
- (void)loadInRegistry:(id)a3;
@end

@implementation SXTangierAssembly

- (void)loadInRegistry:(id)a3
{
  v3 = a3;
  v4 = [v3 publicContainer];
  v5 = [v4 registerClass:objc_opt_class() factory:&__block_literal_global_101];

  v6 = [v3 publicContainer];
  v7 = [v6 registerClass:objc_opt_class() factory:&__block_literal_global_5];

  v8 = [v3 publicContainer];
  v9 = [v8 registerProtocol:&unk_1F5411280 factory:&__block_literal_global_139_0];

  v10 = [v3 publicContainer];
  v11 = [v10 registerClass:objc_opt_class() factory:&__block_literal_global_142];

  v12 = [v3 publicContainer];
  v13 = [v12 registerProtocol:&unk_1F53ABE38 factory:&__block_literal_global_148];

  v15 = [v3 publicContainer];

  v14 = [v15 registerProtocol:&unk_1F53D0140 factory:&__block_literal_global_164_0];
}

SXScrollView *__36__SXTangierAssembly_loadInRegistry___block_invoke()
{
  v0 = objc_alloc_init(SXScrollView);

  return v0;
}

SXTangierController *__36__SXTangierAssembly_loadInRegistry___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v14 = [SXTangierController alloc];
  v3 = [v2 resolveClass:objc_opt_class()];
  v4 = [v2 resolveClass:objc_opt_class()];
  v5 = [v2 resolveProtocol:&unk_1F53BC890];
  v6 = [v2 resolveClass:objc_opt_class()];
  v7 = [v2 resolveProtocol:&unk_1F54265E8];
  v8 = [v2 resolveProtocol:&unk_1F53FCA00];
  v9 = [v2 resolveProtocol:&unk_1F53BE580];
  v10 = [v2 resolveProtocol:&unk_1F53EC3F8];
  v11 = [v2 resolveProtocol:&unk_1F53ACF80];

  v12 = [(SXTangierController *)v14 initWithViewport:v3 scrollView:v4 componentActionHandler:v5 dragItemProvider:v6 componentController:v7 componentInteractionManager:v8 DOMObjectProvider:v9 adIgnorableViewFactory:v10 config:v11];

  return v12;
}

id __36__SXTangierAssembly_loadInRegistry___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 resolveClass:objc_opt_class()];

  return v3;
}

SXTangierDragItemProvider *__36__SXTangierAssembly_loadInRegistry___block_invoke_4()
{
  v0 = objc_alloc_init(SXTangierDragItemProvider);

  return v0;
}

SXSmartFieldFactory *__36__SXTangierAssembly_loadInRegistry___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SXSmartFieldFactory alloc];
  v4 = [v2 resolveProtocol:&unk_1F5407760];
  v5 = [v2 resolveProtocol:&unk_1F53BA8E8];

  v6 = [(SXSmartFieldFactory *)v3 initWithActionProvider:v4 actionSerializer:v5];

  return v6;
}

SXTextSourceFactory *__36__SXTangierAssembly_loadInRegistry___block_invoke_6(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SXTextSourceFactory alloc];
  v4 = [v2 resolveProtocol:&unk_1F53ABE38];
  v5 = [v2 resolveProtocol:&unk_1F53D5B58];
  v6 = [v2 resolveProtocol:&unk_1F53FA528];

  v7 = [(SXTextSourceFactory *)v3 initWithSmartFieldFactory:v4 documentLanguageProvider:v5 fontAttributesConstructor:v6];

  return v7;
}

@end