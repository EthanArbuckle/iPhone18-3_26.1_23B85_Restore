@interface SXComponentAssembly
- (void)loadInRegistry:(id)a3;
@end

@implementation SXComponentAssembly

- (void)loadInRegistry:(id)a3
{
  v3 = a3;
  v4 = [v3 publicContainer];
  v5 = [v4 registerProtocol:&unk_1F54265E8 factory:&__block_literal_global_5];
  v6 = [v5 withConfiguration:&__block_literal_global_111];

  v7 = [v3 publicContainer];
  v8 = [v7 registerProtocol:&unk_1F53E9D88 factory:&__block_literal_global_124];

  v9 = [v3 publicContainer];
  v10 = [v9 registerProtocol:&unk_1F53E41E0 factory:&__block_literal_global_139];

  v11 = [v3 publicContainer];
  v12 = [v11 registerProtocol:&unk_1F53BE7F0 factory:&__block_literal_global_150];
  v13 = [v12 withConfiguration:&__block_literal_global_154];

  v14 = [v3 publicContainer];
  v15 = [v14 registerProtocol:&unk_1F53FCA00 factory:&__block_literal_global_168];

  v16 = [v3 publicContainer];
  v17 = [v16 registerProtocol:&unk_1F53F7820 factory:&__block_literal_global_184];

  v18 = [v3 publicContainer];
  v19 = [v18 registerClass:objc_opt_class() factory:&__block_literal_global_188_0];

  v20 = [v3 publicContainer];
  v21 = [v20 registerProtocol:&unk_1F53D86F0 factory:&__block_literal_global_199];

  v22 = [v3 publicContainer];
  v23 = [v22 registerProtocol:&unk_1F53BC890 factory:&__block_literal_global_228];

  v24 = [v3 privateContainer];
  v25 = [v24 registerClass:objc_opt_class() factory:&__block_literal_global_232];

  v27 = [v3 publicContainer];

  v26 = [v27 registerProtocol:&unk_1F5416D50 factory:&__block_literal_global_250_0];
}

SXComponentController *__38__SXComponentAssembly_loadInRegistry___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SXComponentController alloc];
  v4 = [v2 resolveClass:objc_opt_class()];
  v5 = [v2 resolveProtocol:&unk_1F53BE580];

  v6 = [(SXComponentController *)v3 initWithViewport:v4 DOMObjectProvider:v5];

  return v6;
}

void __38__SXComponentAssembly_loadInRegistry___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [v5 resolveClass:objc_opt_class()];
  [v4 setHost:v6];

  v7 = [v5 resolveProtocol:&unk_1F53E41E0];

  [v4 setComponentViewEngine:v7];
}

SXComponentStyleRendererFactory *__38__SXComponentAssembly_loadInRegistry___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SXComponentStyleRendererFactory alloc];
  v4 = [v2 resolveProtocol:&unk_1F53C5C48];
  v5 = [v2 resolveProtocol:&unk_1F53EAA10];
  v6 = [v2 resolveProtocol:&unk_1F54051D8];
  v7 = [v2 resolveProtocol:&unk_1F53E5F18];
  v8 = [v2 resolveClass:objc_opt_class()];

  v9 = [(SXComponentStyleRendererFactory *)v3 initWithImageFillViewFactory:v4 videoFillViewFactory:v5 gradientFactory:v6 repeatableImageFillViewFactory:v7 viewport:v8];

  return v9;
}

SXComponentViewEngine *__38__SXComponentAssembly_loadInRegistry___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SXComponentViewEngine alloc];
  v4 = [v2 resolveProtocol:&unk_1F53BE7F0];

  v5 = [(SXComponentViewEngine *)v3 initWithPostProcessorManager:v4];

  return v5;
}

SXComponentViewPostProcessorManager *__38__SXComponentAssembly_loadInRegistry___block_invoke_5()
{
  v0 = objc_alloc_init(SXComponentViewPostProcessorManager);

  return v0;
}

void __38__SXComponentAssembly_loadInRegistry___block_invoke_6(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [v5 resolveClass:objc_opt_class()];
  [v4 addProcessor:v6];

  v7 = [v5 resolveClass:objc_opt_class()];

  [v4 addProcessor:v7];
}

SXComponentInteractionManager *__38__SXComponentAssembly_loadInRegistry___block_invoke_7(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SXComponentInteractionManager alloc];
  v4 = [v2 resolveProtocol:&unk_1F53F7820];
  v5 = [v2 resolveClass:objc_opt_class()];

  v6 = [(SXComponentInteractionManager *)v3 initWithInteractionHandlerManager:v4 viewport:v5];

  return v6;
}

SXComponentInteractionHandlerManager *__38__SXComponentAssembly_loadInRegistry___block_invoke_8(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SXComponentInteractionHandlerManager alloc];
  v4 = [v2 resolveClass:objc_opt_class()];

  v5 = [(SXComponentInteractionHandlerManager *)v3 initWithViewport:v4];

  return v5;
}

SXActionComponentViewPostProcessor *__38__SXComponentAssembly_loadInRegistry___block_invoke_9(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SXActionComponentViewPostProcessor alloc];
  v4 = [v2 resolveProtocol:&unk_1F5407760];
  v5 = [v2 resolveProtocol:&unk_1F53D86F0];
  v6 = [v2 resolveProtocol:&unk_1F53F7820];

  v7 = [(SXActionComponentViewPostProcessor *)v3 initWithActionProvider:v4 interactionHandlerFactory:v5 interactionHandlerManager:v6];

  return v7;
}

SXActionComponentInteractionHandlerFactory *__38__SXComponentAssembly_loadInRegistry___block_invoke_10(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SXActionComponentInteractionHandlerFactory alloc];
  v4 = [v2 resolveProtocol:&unk_1F53A9FB8];
  v5 = [v2 resolveProtocol:&unk_1F53BA8E8];
  v6 = [v2 resolveProtocol:&unk_1F53FB398];

  v7 = [(SXActionComponentInteractionHandlerFactory *)v3 initWithActionManager:v4 actionSerializer:v5 analyticsReportingProvider:v6];

  return v7;
}

SXComponentActionHandler *__38__SXComponentAssembly_loadInRegistry___block_invoke_11(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SXComponentActionHandler alloc];
  v4 = [v2 resolveProtocol:&unk_1F53A9FB8];
  v5 = [v2 resolveProtocol:&unk_1F53BA8E8];
  v6 = [v2 resolveProtocol:&unk_1F53FB398];

  v7 = [(SXComponentActionHandler *)v3 initWithActionManager:v4 actionSerializer:v5 analyticsReportingProvider:v6];

  return v7;
}

SXExposureComponentViewPostProcessor *__38__SXComponentAssembly_loadInRegistry___block_invoke_12(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SXExposureComponentViewPostProcessor alloc];
  v4 = [v2 resolveProtocol:&unk_1F5416D50];
  v5 = [v2 resolveProtocol:&unk_1F53FB398];

  v6 = [(SXExposureComponentViewPostProcessor *)v3 initWithExposureMonitor:v4 analyticsReportingProvider:v5];

  return v6;
}

SXComponentExposureMonitor *__38__SXComponentAssembly_loadInRegistry___block_invoke_13(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SXComponentExposureMonitor alloc];
  v4 = [v2 resolveClass:objc_opt_class()];
  v5 = [v2 resolveProtocol:&unk_1F5438808];
  v6 = [v2 resolveProtocol:&unk_1F54265E8];
  v7 = [v2 resolveProtocol:&unk_1F53C1388];

  v8 = [(SXComponentExposureMonitor *)v3 initWithViewport:v4 appStateMonitor:v5 componentController:v6 host:v7];

  return v8;
}

@end