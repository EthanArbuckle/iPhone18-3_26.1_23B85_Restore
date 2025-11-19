@interface UIPrintServiceExtensionContext
- (UIPrintServiceExtensionContext)init;
- (void)_apOp:(id)a3 reply:(id)a4;
- (void)_authenticatedRequestForRequest:(id)a3 challengeResponse:(id)a4 reply:(id)a5;
- (void)_gatherPrintersForPrintInfo:(id)a3 reply:(id)a4;
- (void)dealloc;
@end

@implementation UIPrintServiceExtensionContext

- (UIPrintServiceExtensionContext)init
{
  v3.receiver = self;
  v3.super_class = UIPrintServiceExtensionContext;
  return [(UIPrintServiceExtensionContext *)&v3 init];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = UIPrintServiceExtensionContext;
  [(UIPrintServiceExtensionContext *)&v2 dealloc];
}

- (void)_gatherPrintersForPrintInfo:(id)a3 reply:(id)a4
{
  v6 = a4;
  v7 = [UIPrintInfo printInfoWithDictionary:a3];
  v8 = [(UIPrintServiceExtensionContext *)self _principalObject];
  v9 = objc_opt_respondsToSelector();

  if ((v9 & 1) != 0 && (-[UIPrintServiceExtensionContext _principalObject](self, "_principalObject"), v10 = objc_claimAutoreleasedReturnValue(), [v10 printerDestinationsForPrintInfo:v7], v11 = objc_claimAutoreleasedReturnValue(), v10, v11))
  {
    v12 = objc_opt_new();
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __68__UIPrintServiceExtensionContext__gatherPrintersForPrintInfo_reply___block_invoke;
    v14[3] = &unk_279A9CDB8;
    v15 = v12;
    v13 = v12;
    [v11 enumerateObjectsUsingBlock:v14];
    v6[2](v6, v13);
  }

  else
  {
    v6[2](v6, MEMORY[0x277CBEBF8]);
  }
}

void __68__UIPrintServiceExtensionContext__gatherPrintersForPrintInfo_reply___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 dictionaryRepresentation];
  [v2 addObject:v3];
}

- (void)_authenticatedRequestForRequest:(id)a3 challengeResponse:(id)a4 reply:(id)a5
{
  v11 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(UIPrintServiceExtensionContext *)self _principalObject];
  if (v10 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v10 _authenticatedRequestForRequest:v11 challengeResponse:v8 reply:v9];
  }

  else
  {
    v9[2](v9, 0);
  }
}

- (void)_apOp:(id)a3 reply:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(UIPrintServiceExtensionContext *)self _principalObject];
  if (v7 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v7 _apOp:v8 reply:v6];
  }

  else
  {
    v6[2](v6, 0);
  }
}

@end