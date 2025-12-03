@interface WBSSearchHelperConnectionManager
+ (id)sharedManager;
- (WBSSearchHelperConnectionManager)init;
- (id)searchHelperConnectionRequestedByClient:(id)client;
- (void)removeClient:(id)client;
@end

@implementation WBSSearchHelperConnectionManager

+ (id)sharedManager
{
  {
    v3 = +[WBSSearchHelperConnectionManager sharedManager]::manager;
  }

  else
  {
    v3 = objc_alloc_init(WBSSearchHelperConnectionManager);
    +[WBSSearchHelperConnectionManager sharedManager]::manager = v3;
  }

  return v3;
}

- (WBSSearchHelperConnectionManager)init
{
  v7.receiver = self;
  v7.super_class = WBSSearchHelperConnectionManager;
  v2 = [(WBSSearchHelperConnectionManager *)&v7 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DFA8] set];
    clients = v2->_clients;
    v2->_clients = v3;

    v5 = v2;
  }

  return v2;
}

- (id)searchHelperConnectionRequestedByClient:(id)client
{
  v17[4] = *MEMORY[0x1E69E9840];
  [(NSMutableSet *)self->_clients addObject:client];
  searchHelperConnection = self->_searchHelperConnection;
  if (searchHelperConnection)
  {
    v5 = searchHelperConnection;
  }

  else
  {
    objc_initWeak(&location, self);
    v6 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithServiceName:@"com.apple.Safari.SearchHelper"];
    v7 = self->_searchHelperConnection;
    self->_searchHelperConnection = v6;

    v8 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F3AE75F8];
    v9 = MEMORY[0x1E695DFD8];
    v17[0] = objc_opt_class();
    v17[1] = objc_opt_class();
    v17[2] = objc_opt_class();
    v17[3] = objc_opt_class();
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:4];
    v11 = [v9 setWithArray:v10];
    [v8 setClasses:v11 forSelector:sel_fetchOpenSearchDescriptionWithURL_completionHandler_ argumentIndex:0 ofReply:1];

    v12 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
    [v8 setClasses:v12 forSelector:sel_updateSuggestionsRequestWithSearchTerms_suggestionsURLTemplate_userAgentString_completionHandler_ argumentIndex:0 ofReply:1];

    [(NSXPCConnection *)self->_searchHelperConnection setRemoteObjectInterface:v8];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __76__WBSSearchHelperConnectionManager_searchHelperConnectionRequestedByClient___block_invoke;
    v14[3] = &unk_1E7FB8948;
    objc_copyWeak(&v15, &location);
    [(NSXPCConnection *)self->_searchHelperConnection setInvalidationHandler:v14];
    [(NSXPCConnection *)self->_searchHelperConnection resume];
    v5 = self->_searchHelperConnection;
    objc_destroyWeak(&v15);

    objc_destroyWeak(&location);
  }

  return v5;
}

void __76__WBSSearchHelperConnectionManager_searchHelperConnectionRequestedByClient___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76__WBSSearchHelperConnectionManager_searchHelperConnectionRequestedByClient___block_invoke_2;
  block[3] = &unk_1E7FB8948;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v2);
}

void __76__WBSSearchHelperConnectionManager_searchHelperConnectionRequestedByClient___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setSearchHelperConnection:0];
}

- (void)removeClient:(id)client
{
  clientCopy = client;
  [(NSMutableSet *)self->_clients removeObject:?];
  if (![(NSMutableSet *)self->_clients count])
  {
    [(NSXPCConnection *)self->_searchHelperConnection invalidate];
  }
}

@end