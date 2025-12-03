@interface UIPrintServiceExtensionContext
- (UIPrintServiceExtensionContext)init;
- (void)_apOp:(id)op reply:(id)reply;
- (void)_authenticatedRequestForRequest:(id)request challengeResponse:(id)response reply:(id)reply;
- (void)_gatherPrintersForPrintInfo:(id)info reply:(id)reply;
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

- (void)_gatherPrintersForPrintInfo:(id)info reply:(id)reply
{
  replyCopy = reply;
  v7 = [UIPrintInfo printInfoWithDictionary:info];
  _principalObject = [(UIPrintServiceExtensionContext *)self _principalObject];
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
    replyCopy[2](replyCopy, v13);
  }

  else
  {
    replyCopy[2](replyCopy, MEMORY[0x277CBEBF8]);
  }
}

void __68__UIPrintServiceExtensionContext__gatherPrintersForPrintInfo_reply___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 dictionaryRepresentation];
  [v2 addObject:v3];
}

- (void)_authenticatedRequestForRequest:(id)request challengeResponse:(id)response reply:(id)reply
{
  requestCopy = request;
  responseCopy = response;
  replyCopy = reply;
  _principalObject = [(UIPrintServiceExtensionContext *)self _principalObject];
  if (_principalObject && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [_principalObject _authenticatedRequestForRequest:requestCopy challengeResponse:responseCopy reply:replyCopy];
  }

  else
  {
    replyCopy[2](replyCopy, 0);
  }
}

- (void)_apOp:(id)op reply:(id)reply
{
  opCopy = op;
  replyCopy = reply;
  _principalObject = [(UIPrintServiceExtensionContext *)self _principalObject];
  if (_principalObject && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [_principalObject _apOp:opCopy reply:replyCopy];
  }

  else
  {
    replyCopy[2](replyCopy, 0);
  }
}

@end