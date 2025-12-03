@interface SXDataTableComponentAssembly
- (void)loadInRegistry:(id)registry;
@end

@implementation SXDataTableComponentAssembly

- (void)loadInRegistry:(id)registry
{
  registryCopy = registry;
  callback = [registryCopy callback];
  v5 = TFCallbackScopeAny();
  [callback whenResolvingProtocol:&unk_1F53E41E0 scope:v5 callbackBlock:&__block_literal_global];

  callback2 = [registryCopy callback];
  v7 = TFCallbackScopeAny();
  [callback2 whenResolvingProtocol:&unk_1F5415A30 scope:v7 callbackBlock:&__block_literal_global_55];

  publicContainer = [registryCopy publicContainer];
  v9 = [publicContainer registerClass:objc_opt_class() factory:&__block_literal_global_59];

  publicContainer2 = [registryCopy publicContainer];
  v11 = [publicContainer2 registerClass:objc_opt_class() factory:&__block_literal_global_163];

  privateContainer = [registryCopy privateContainer];
  v13 = [privateContainer registerProtocol:&unk_1F53F7AC8 factory:&__block_literal_global_173];

  privateContainer2 = [registryCopy privateContainer];

  v14 = [privateContainer2 registerProtocol:&unk_1F53AEB40 factory:&__block_literal_global_192];
}

void __47__SXDataTableComponentAssembly_loadInRegistry___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [v4 resolveClass:objc_opt_class()];

  [v5 addFactory:v6];
}

void __47__SXDataTableComponentAssembly_loadInRegistry___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [v4 resolveClass:objc_opt_class()];

  [v5 addFactory:v6];
}

SXDataTableComponentViewFactory *__47__SXDataTableComponentAssembly_loadInRegistry___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SXDataTableComponentViewFactory alloc];
  v4 = [v2 resolveProtocol:&unk_1F53BE580];
  v5 = [v2 resolveClass:objc_opt_class()];
  v6 = [v2 resolveProtocol:&unk_1F5416F50];
  v15 = [v2 resolveProtocol:&unk_1F53E9D88];
  v14 = [v2 resolveProtocol:&unk_1F53E2E48];
  v7 = [v2 resolveProtocol:&unk_1F53BC890];
  v8 = [v2 resolveProtocol:&unk_1F5411280];
  v9 = [v2 resolveProtocol:&unk_1F54265E8];
  v10 = [v2 resolveProtocol:&unk_1F53EC3F8];
  v11 = [v2 resolveProtocol:&unk_1F53ACF80];

  v13 = [(SXDataTableComponentViewFactory *)v3 initWithDOMObjectProvider:v4 viewport:v5 presentationDelegateProvider:v6 componentStyleRendererFactory:v15 imageViewFactory:v14 componentActionHandler:v7 textComponentLayoutHosting:v8 componentController:v9 adIgnorableViewFactory:v10 config:v11];

  return v13;
}

SXDataTableComponentSizerFactory *__47__SXDataTableComponentAssembly_loadInRegistry___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SXDataTableComponentSizerFactory alloc];
  v4 = [v2 resolveProtocol:&unk_1F53BE580];
  v5 = [v2 resolveProtocol:&unk_1F5411280];
  v6 = [v2 resolveProtocol:&unk_1F53F7AC8];
  v7 = [v2 resolveProtocol:&unk_1F53AEB40];

  v8 = [(SXDataTableComponentSizerFactory *)v3 initWithDOMObjectProvider:v4 textComponentLayoutHosting:v5 textSourceFactory:v6 recordValueTransformerFactory:v7];

  return v8;
}

SXDataTableTextSourceFactory *__47__SXDataTableComponentAssembly_loadInRegistry___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SXDataTableTextSourceFactory alloc];
  v4 = [v2 resolveProtocol:&unk_1F53ABE38];
  v5 = [v2 resolveProtocol:&unk_1F53D5B58];
  v6 = [v2 resolveProtocol:&unk_1F53FA528];

  v7 = [(SXDataTableTextSourceFactory *)v3 initWithSmartFieldFactory:v4 documentLanguageProvider:v5 fontAttributesConstructor:v6];

  return v7;
}

SXDataRecordValueTransformerFactory *__47__SXDataTableComponentAssembly_loadInRegistry___block_invoke_6(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SXDataRecordValueTransformerFactory alloc];
  v4 = [v2 resolveProtocol:&unk_1F53BE580];

  v5 = [(SXDataRecordValueTransformerFactory *)v3 initWithDOMObjectProvider:v4];

  return v5;
}

@end