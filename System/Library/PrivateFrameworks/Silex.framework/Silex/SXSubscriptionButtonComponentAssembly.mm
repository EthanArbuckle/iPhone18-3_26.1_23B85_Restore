@interface SXSubscriptionButtonComponentAssembly
- (void)loadInRegistry:(id)registry;
@end

@implementation SXSubscriptionButtonComponentAssembly

- (void)loadInRegistry:(id)registry
{
  registryCopy = registry;
  publicContainer = [registryCopy publicContainer];
  v5 = [publicContainer registerClass:objc_opt_class() factory:&__block_literal_global_83];
  v6 = [v5 withConfiguration:&__block_literal_global_4_1];

  callback = [registryCopy callback];
  v8 = TFCallbackScopeAny();
  [callback whenResolvingProtocol:&unk_1F5415A30 scope:v8 callbackBlock:&__block_literal_global_56_0];

  privateContainer = [registryCopy privateContainer];
  v10 = [privateContainer registerClass:objc_opt_class() factory:&__block_literal_global_59_16];

  publicContainer2 = [registryCopy publicContainer];

  v11 = [publicContainer2 registerProtocol:&unk_1F53E0338 factory:&__block_literal_global_66_0];
}

SXSubscriptionButtonComponentSizerFactory *__56__SXSubscriptionButtonComponentAssembly_loadInRegistry___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SXSubscriptionButtonComponentSizerFactory alloc];
  v4 = [v2 resolveClass:objc_opt_class()];
  v5 = [v2 resolveProtocol:&unk_1F53D0140];

  v6 = [(SXButtonComponentSizerFactory *)v3 initWithTextProvider:v4 textSourceFactory:v5];

  return v6;
}

void __56__SXSubscriptionButtonComponentAssembly_loadInRegistry___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 resolveProtocol:&unk_1F5411280];
  [v4 setTextComponentLayoutHosting:v5];
}

void __56__SXSubscriptionButtonComponentAssembly_loadInRegistry___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [v4 resolveClass:objc_opt_class()];

  [v5 addFactory:v6];
}

SXSubscriptionButtonComponentTextProvider *__56__SXSubscriptionButtonComponentAssembly_loadInRegistry___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SXSubscriptionButtonComponentTextProvider alloc];
  v4 = [v2 resolveProtocol:&unk_1F53E0338];

  v5 = [(SXSubscriptionButtonComponentTextProvider *)v3 initWithTextProvider:v4];

  return v5;
}

SXSubscriptionButtonTextProvider *__56__SXSubscriptionButtonComponentAssembly_loadInRegistry___block_invoke_5()
{
  v0 = [SXSubscriptionButtonTextProvider alloc];
  v1 = SXBundle();
  v2 = [v1 localizedStringForKey:@"Subscribe" value:&stru_1F532F6C0 table:0];
  v3 = [(SXSubscriptionButtonTextProvider *)v0 initWithTitle:v2];

  return v3;
}

@end