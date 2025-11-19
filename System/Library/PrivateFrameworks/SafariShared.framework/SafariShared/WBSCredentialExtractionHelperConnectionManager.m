@interface WBSCredentialExtractionHelperConnectionManager
+ (id)sharedManager;
- (WBSCredentialExtractionHelperConnectionManager)init;
- (id)credentialExtractionHelperConnectionRequestedByClient:(id)a3;
- (void)removeClient:(id)a3;
@end

@implementation WBSCredentialExtractionHelperConnectionManager

+ (id)sharedManager
{
  if (sharedManager_onceToken_1 != -1)
  {
    +[WBSCredentialExtractionHelperConnectionManager sharedManager];
  }

  v3 = sharedManager_manager_0;

  return v3;
}

void __63__WBSCredentialExtractionHelperConnectionManager_sharedManager__block_invoke()
{
  v0 = objc_alloc_init(WBSCredentialExtractionHelperConnectionManager);
  v1 = sharedManager_manager_0;
  sharedManager_manager_0 = v0;
}

- (WBSCredentialExtractionHelperConnectionManager)init
{
  v7.receiver = self;
  v7.super_class = WBSCredentialExtractionHelperConnectionManager;
  v2 = [(WBSCredentialExtractionHelperConnectionManager *)&v7 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DFA8] set];
    clients = v2->_clients;
    v2->_clients = v3;

    v5 = v2;
  }

  return v2;
}

- (id)credentialExtractionHelperConnectionRequestedByClient:(id)a3
{
  v25[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(NSMutableSet *)self->_clients addObject:v4];
  credentialExtractionHelperConnection = self->_credentialExtractionHelperConnection;
  if (credentialExtractionHelperConnection)
  {
    v6 = credentialExtractionHelperConnection;
  }

  else
  {
    v7 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithServiceName:@"com.apple.Safari.CredentialExtractionHelper"];
    v8 = self->_credentialExtractionHelperConnection;
    self->_credentialExtractionHelperConnection = v7;

    v9 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F3AE7478];
    v10 = MEMORY[0x1E695DFD8];
    v25[0] = objc_opt_class();
    v25[1] = objc_opt_class();
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];
    v12 = [v10 setWithArray:v11];
    [v9 setClasses:v12 forSelector:sel_fetchExtractedCredentialsFromCSVFile_sandboxExtension_completionHandler_ argumentIndex:0 ofReply:1];

    v13 = MEMORY[0x1E695DFD8];
    v24 = objc_opt_class();
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v24 count:1];
    v15 = [v13 setWithArray:v14];
    [v9 setClasses:v15 forSelector:sel_fetchExtractedCredentialsFromCSVFile_sandboxExtension_completionHandler_ argumentIndex:0 ofReply:0];

    v16 = MEMORY[0x1E695DFD8];
    v23 = objc_opt_class();
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v23 count:1];
    v18 = [v16 setWithArray:v17];
    [v9 setClasses:v18 forSelector:sel_fetchExtractedCredentialsFromCSVFile_sandboxExtension_completionHandler_ argumentIndex:1 ofReply:0];

    [(NSXPCConnection *)self->_credentialExtractionHelperConnection setRemoteObjectInterface:v9];
    objc_initWeak(&location, self);
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __104__WBSCredentialExtractionHelperConnectionManager_credentialExtractionHelperConnectionRequestedByClient___block_invoke;
    v20[3] = &unk_1E7FB86B8;
    objc_copyWeak(&v21, &location);
    [(NSXPCConnection *)self->_credentialExtractionHelperConnection setInvalidationHandler:v20];
    [(NSXPCConnection *)self->_credentialExtractionHelperConnection resume];
    v6 = self->_credentialExtractionHelperConnection;
    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }

  return v6;
}

void __104__WBSCredentialExtractionHelperConnectionManager_credentialExtractionHelperConnectionRequestedByClient___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __104__WBSCredentialExtractionHelperConnectionManager_credentialExtractionHelperConnectionRequestedByClient___block_invoke_2;
  block[3] = &unk_1E7FB86B8;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v2);
}

void __104__WBSCredentialExtractionHelperConnectionManager_credentialExtractionHelperConnectionRequestedByClient___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setCredentialExtractionHelperConnection:0];
}

- (void)removeClient:(id)a3
{
  [(NSMutableSet *)self->_clients removeObject:a3];
  if (![(NSMutableSet *)self->_clients count])
  {
    credentialExtractionHelperConnection = self->_credentialExtractionHelperConnection;

    [(NSXPCConnection *)credentialExtractionHelperConnection invalidate];
  }
}

@end