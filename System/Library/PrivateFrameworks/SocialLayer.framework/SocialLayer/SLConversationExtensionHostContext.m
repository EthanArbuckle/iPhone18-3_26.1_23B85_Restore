@interface SLConversationExtensionHostContext
+ (id)_extensionAuxiliaryHostProtocol;
+ (id)_extensionAuxiliaryVendorProtocol;
- (id)createURLWithMessageGUIDForCurrentURL:(id)a3;
- (void)openURL:(id)a3 completionHandler:(id)a4;
- (void)requestDismissal;
@end

@implementation SLConversationExtensionHostContext

+ (id)_extensionAuxiliaryVendorProtocol
{
  if (_extensionAuxiliaryVendorProtocol_onceToken != -1)
  {
    +[SLConversationExtensionHostContext _extensionAuxiliaryVendorProtocol];
  }

  v3 = _extensionAuxiliaryVendorProtocol_interface;

  return v3;
}

uint64_t __71__SLConversationExtensionHostContext__extensionAuxiliaryVendorProtocol__block_invoke()
{
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28469C538];
  v1 = _extensionAuxiliaryVendorProtocol_interface;
  _extensionAuxiliaryVendorProtocol_interface = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (id)_extensionAuxiliaryHostProtocol
{
  if (_extensionAuxiliaryHostProtocol_onceToken != -1)
  {
    +[SLConversationExtensionHostContext _extensionAuxiliaryHostProtocol];
  }

  v3 = _extensionAuxiliaryHostProtocol_interface;

  return v3;
}

uint64_t __69__SLConversationExtensionHostContext__extensionAuxiliaryHostProtocol__block_invoke()
{
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2846AF890];
  v1 = _extensionAuxiliaryHostProtocol_interface;
  _extensionAuxiliaryHostProtocol_interface = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (void)requestDismissal
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__SLConversationExtensionHostContext_requestDismissal__block_invoke;
  block[3] = &unk_278925D90;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __54__SLConversationExtensionHostContext_requestDismissal__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) dismissalRequestHandler];

  if (v2)
  {
    v3 = [*(a1 + 32) dismissalRequestHandler];
    v3[2]();
  }
}

- (void)openURL:(id)a3 completionHandler:(id)a4
{
  v4 = [(SLConversationExtensionHostContext *)self createURLWithMessageGUIDForCurrentURL:a3, a4];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__SLConversationExtensionHostContext_openURL_completionHandler___block_invoke;
  block[3] = &unk_278925D90;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __64__SLConversationExtensionHostContext_openURL_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D75128] sharedApplication];
  [v2 openURL:*(a1 + 32) options:MEMORY[0x277CBEC10] completionHandler:0];
}

- (id)createURLWithMessageGUIDForCurrentURL:(id)a3
{
  v4 = [MEMORY[0x277CCACE0] componentsWithURL:a3 resolvingAgainstBaseURL:0];
  v5 = MEMORY[0x277CBEB18];
  v6 = [v4 queryItems];
  v7 = [v5 arrayWithArray:v6];

  v8 = MEMORY[0x277CCAD18];
  v9 = [(SLConversationExtensionHostContext *)self messageGUID];
  v10 = [v8 queryItemWithName:@"message-guid" value:v9];
  [v7 addObject:v10];

  v11 = [MEMORY[0x277CCAD18] queryItemWithName:@"overlay" value:@"1"];
  [v7 addObject:v11];

  [v4 setQueryItems:v7];
  v12 = [v4 URL];

  return v12;
}

@end