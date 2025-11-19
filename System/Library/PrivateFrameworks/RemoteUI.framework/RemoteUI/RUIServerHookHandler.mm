@interface RUIServerHookHandler
- (BOOL)isUserCancelError:(id)a3;
- (RUIServerHookHandler)initWithRemoteUIController:(id)a3 hooks:(id)a4;
- (RUIServerHookHandlerDelegate)delegate;
- (id)_refreshRequestWithInfo:(id)a3 initiatingObjectModel:(id)a4 attributes:(id)a5;
- (id)_responseDataForResult:(BOOL)a3 withError:(id)a4;
- (id)currentPresenter;
- (void)_handleResponseForHook:(id)a3 success:(BOOL)a4 error:(id)a5 attributes:(id)a6 objectModel:(id)a7 completion:(id)a8;
- (void)_rebuildServerHookHandlers;
- (void)_reloadUIWithInfo:(id)a3 attributes:(id)a4 initiatingObjectModel:(id)a5 completion:(id)a6;
- (void)dismissObjectModelsAnimated:(BOOL)a3 completion:(id)a4;
- (void)processObjectModel:(id)a3 isModal:(BOOL)a4 completion:(id)a5;
- (void)processServerResponse:(id)a3;
- (void)refreshWithRequest:(id)a3 completion:(id)a4;
- (void)setServerHooks:(id)a3;
@end

@implementation RUIServerHookHandler

- (RUIServerHookHandler)initWithRemoteUIController:(id)a3 hooks:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RUIServerHookHandler *)self init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_remoteUIController, v6);
    v10 = [v7 copy];
    serverHooks = v9->_serverHooks;
    v9->_serverHooks = v10;

    v12 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSArray count](v9->_serverHooks, "count")}];
    hookIdentifiers = v9->_hookIdentifiers;
    v9->_hookIdentifiers = v12;

    [(RUIServerHookHandler *)v9 _rebuildServerHookHandlers];
  }

  return v9;
}

- (void)_rebuildServerHookHandlers
{
  v31 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_remoteUIController);
  if (_isInternalInstall())
  {
    v3 = _RUILoggingFacility();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21B93D000, v3, OS_LOG_TYPE_DEFAULT, "Rebuilding server hook handlers", buf, 2u);
    }
  }

  if ([(NSMutableArray *)self->_hookIdentifiers count])
  {
    hookIdentifiers = self->_hookIdentifiers;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __50__RUIServerHookHandler__rebuildServerHookHandlers__block_invoke;
    v24[3] = &unk_2782E7FC8;
    v25 = WeakRetained;
    [(NSMutableArray *)hookIdentifiers enumerateObjectsUsingBlock:v24];
    [(NSMutableArray *)self->_hookIdentifiers removeAllObjects];
    if (_isInternalInstall())
    {
      v5 = _RUILoggingFacility();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_21B93D000, v5, OS_LOG_TYPE_DEFAULT, "Cleared existing server hook handlers", buf, 2u);
      }
    }
  }

  objc_initWeak(&location, self);
  v22 = 0u;
  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  obj = self->_serverHooks;
  v6 = [(NSArray *)obj countByEnumeratingWithState:&v19 objects:v30 count:16];
  if (v6)
  {
    v8 = *v20;
    *&v7 = 138412546;
    v13 = v7;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        [v10 setDelegate:{self, v13}];
        v18[0] = MEMORY[0x277D85DD0];
        v18[1] = 3221225472;
        v18[2] = __50__RUIServerHookHandler__rebuildServerHookHandlers__block_invoke_38;
        v18[3] = &unk_2782E7FF0;
        v18[4] = v10;
        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = __50__RUIServerHookHandler__rebuildServerHookHandlers__block_invoke_2;
        v16[3] = &unk_2782E8068;
        v16[4] = v10;
        objc_copyWeak(&v17, &location);
        v11 = [WeakRetained setHandlerForElementsMatching:v18 handler:v16];
        [(NSMutableArray *)self->_hookIdentifiers addObject:v11];
        if (_isInternalInstall())
        {
          v12 = _RUILoggingFacility();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v13;
            v27 = v10;
            v28 = 2112;
            v29 = v11;
            _os_log_impl(&dword_21B93D000, v12, OS_LOG_TYPE_DEFAULT, "Created a handler for hook: %@ with identifier %@", buf, 0x16u);
          }
        }

        objc_destroyWeak(&v17);
      }

      v6 = [(NSArray *)obj countByEnumeratingWithState:&v19 objects:v30 count:16];
    }

    while (v6);
  }

  objc_destroyWeak(&location);
}

void __50__RUIServerHookHandler__rebuildServerHookHandlers__block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v32 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (_isInternalInstall())
  {
    v10 = _RUILoggingFacility();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v8 name];
      *buf = 138412546;
      v29 = v11;
      v30 = 2112;
      v31 = v9;
      _os_log_impl(&dword_21B93D000, v10, OS_LOG_TYPE_DEFAULT, "Starting to process element %@ with attributes: %@", buf, 0x16u);
    }
  }

  if (objc_opt_respondsToSelector())
  {
    [*(a1 + 32) setObjectModel:v7];
  }

  v12 = [v7 telemetryDelegate];
  v13 = [RUITelemetryElement alloc];
  v14 = [v8 sourceXMLElement];
  v15 = [v7 sourceURL];
  v16 = [(RUITelemetryElement *)v13 initWithXMLElement:v14 url:v15];
  [v12 willProcessHook:v16];

  v18 = *(a1 + 32);
  v17 = (a1 + 32);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __50__RUIServerHookHandler__rebuildServerHookHandlers__block_invoke_41;
  v22[3] = &unk_2782E8040;
  v19 = v8;
  v23 = v19;
  objc_copyWeak(&v27, v17 + 1);
  v24 = *v17;
  v20 = v9;
  v25 = v20;
  v21 = v7;
  v26 = v21;
  [v18 processElement:v19 attributes:v20 objectModel:v21 completion:v22];

  objc_destroyWeak(&v27);
}

void __50__RUIServerHookHandler__rebuildServerHookHandlers__block_invoke_41(uint64_t a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (_isInternalInstall())
  {
    v6 = _RUILoggingFacility();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [*(a1 + 32) name];
      *buf = 138412290;
      v15 = v7;
      _os_log_impl(&dword_21B93D000, v6, OS_LOG_TYPE_DEFAULT, "Finished processing element: %@", buf, 0xCu);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    v9 = *(a1 + 40);
    v10 = *(a1 + 48);
    v11 = *(a1 + 56);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __50__RUIServerHookHandler__rebuildServerHookHandlers__block_invoke_42;
    v12[3] = &unk_2782E8018;
    v13 = *(a1 + 32);
    [WeakRetained _handleResponseForHook:v9 success:a2 error:v5 attributes:v10 objectModel:v11 completion:v12];
  }
}

void __50__RUIServerHookHandler__rebuildServerHookHandlers__block_invoke_42(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  if (_isInternalInstall())
  {
    v2 = _RUILoggingFacility();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = [*(a1 + 32) name];
      v4 = 138412290;
      v5 = v3;
      _os_log_impl(&dword_21B93D000, v2, OS_LOG_TYPE_DEFAULT, "Finished reloading UI in response to element: %@", &v4, 0xCu);
    }
  }
}

- (void)setServerHooks:(id)a3
{
  v4 = [a3 copy];
  serverHooks = self->_serverHooks;
  self->_serverHooks = v4;

  [(RUIServerHookHandler *)self _rebuildServerHookHandlers];
}

- (void)_handleResponseForHook:(id)a3 success:(BOOL)a4 error:(id)a5 attributes:(id)a6 objectModel:(id)a7 completion:(id)a8
{
  v12 = a4;
  v29 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  if (objc_opt_respondsToSelector())
  {
    v19 = [v14 serverHookResponse];
  }

  else
  {
    v19 = 0;
  }

  if (_isInternalInstall())
  {
    v20 = _RUILoggingFacility();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = [v17 serverInfo];
      v25 = 138412546;
      v26 = v17;
      v27 = 2112;
      v28 = v21;
      _os_log_impl(&dword_21B93D000, v20, OS_LOG_TYPE_DEFAULT, "Attempting to reload with originating OM: %@ - %@", &v25, 0x16u);
    }
  }

  v22 = [v19 continuationRequest];

  if (v22)
  {
    v23 = [v19 continuationRequest];
    [(RUIServerHookHandler *)self refreshWithRequest:v23 completion:v18];
  }

  else
  {
    v23 = [(RUIServerHookHandler *)self _responseDataForResult:v12 withError:v15];
    if (v19)
    {
      v24 = [v19 additionalPayload];
      if (v24)
      {
        [v23 addEntriesFromDictionary:v24];
      }
    }

    [(RUIServerHookHandler *)self _reloadUIWithInfo:v23 attributes:v16 initiatingObjectModel:v17 completion:v18];
  }
}

- (void)processObjectModel:(id)a3 isModal:(BOOL)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a5;
  if (_isInternalInstall())
  {
    v9 = _RUILoggingFacility();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21B93D000, v9, OS_LOG_TYPE_DEFAULT, "Processing object model to detect hook handler matches...", buf, 2u);
    }
  }

  objc_initWeak(&location, self);
  *buf = 0;
  v19 = buf;
  v20 = 0x2020000000;
  v21 = 0;
  serverHooks = self->_serverHooks;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __62__RUIServerHookHandler_processObjectModel_isModal_completion___block_invoke;
  v13[3] = &unk_2782E80E0;
  v11 = v7;
  v14 = v11;
  v16 = buf;
  objc_copyWeak(&v17, &location);
  v12 = v8;
  v15 = v12;
  [(NSArray *)serverHooks enumerateObjectsUsingBlock:v13];
  if (v12 && (v19[24] & 1) == 0)
  {
    (*(v12 + 2))(v12, 0, 0);
  }

  objc_destroyWeak(&v17);
  _Block_object_dispose(buf, 8);
  objc_destroyWeak(&location);
}

void __62__RUIServerHookHandler_processObjectModel_isModal_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = [v6 shouldMatchModel:*(a1 + 32)];
  isInternalInstall = _isInternalInstall();
  if (v7)
  {
    if (isInternalInstall)
    {
      v9 = _RUILoggingFacility();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v22 = v6;
        _os_log_impl(&dword_21B93D000, v9, OS_LOG_TYPE_DEFAULT, "Matched %@, starting processing...", buf, 0xCu);
      }
    }

    *(*(*(a1 + 48) + 8) + 24) = 1;
    if (objc_opt_respondsToSelector())
    {
      [v6 setObjectModel:*(a1 + 32)];
    }

    v10 = *(a1 + 32);
    v11 = [v10 clientInfo];
    v12 = [v10 elementForActivityIndicatorWithAttributes:v11];

    [v12 startActivityIndicator];
    v13 = *(a1 + 32);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __62__RUIServerHookHandler_processObjectModel_isModal_completion___block_invoke_47;
    v15[3] = &unk_2782E80B8;
    objc_copyWeak(&v20, (a1 + 56));
    v16 = v6;
    v17 = *(a1 + 32);
    v19 = *(a1 + 40);
    v14 = v12;
    v18 = v14;
    [v16 processObjectModel:v13 completion:v15];
    if (a4)
    {
      *a4 = 1;
    }

    objc_destroyWeak(&v20);
LABEL_14:

    goto LABEL_15;
  }

  if (isInternalInstall)
  {
    v14 = _RUILoggingFacility();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v22 = v6;
      _os_log_impl(&dword_21B93D000, v14, OS_LOG_TYPE_DEFAULT, "Did not match, skipping %@ ...", buf, 0xCu);
    }

    goto LABEL_14;
  }

LABEL_15:
}

void __62__RUIServerHookHandler_processObjectModel_isModal_completion___block_invoke_47(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    v7 = *(a1 + 32);
    v8 = [*(a1 + 40) clientInfo];
    v9 = *(a1 + 40);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __62__RUIServerHookHandler_processObjectModel_isModal_completion___block_invoke_2;
    v10[3] = &unk_2782E8090;
    v12 = *(a1 + 56);
    v11 = *(a1 + 48);
    [WeakRetained _handleResponseForHook:v7 success:a2 error:v5 attributes:v8 objectModel:v9 completion:v10];
  }
}

uint64_t __62__RUIServerHookHandler_processObjectModel_isModal_completion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);

  return [v3 stopActivityIndicator];
}

- (void)processServerResponse:(id)a3
{
  v4 = a3;
  if (_isInternalInstall())
  {
    v5 = _RUILoggingFacility();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21B93D000, v5, OS_LOG_TYPE_DEFAULT, "Harvesting data from response", buf, 2u);
    }
  }

  serverHooks = self->_serverHooks;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __46__RUIServerHookHandler_processServerResponse___block_invoke;
  v8[3] = &unk_2782E8108;
  v9 = v4;
  v7 = v4;
  [(NSArray *)serverHooks enumerateObjectsUsingBlock:v8];
}

void __46__RUIServerHookHandler_processServerResponse___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 harvestDataFromResponse:*(a1 + 32)];
  }
}

- (id)currentPresenter
{
  WeakRetained = objc_loadWeakRetained(&self->_remoteUIController);
  v3 = [WeakRetained currentPresentationContext];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [MEMORY[0x277D75418] currentDevice];
    v5 = [v4 userInterfaceIdiom];

    if (!v5)
    {
      if (_isInternalInstall())
      {
        v6 = _RUILoggingFacility();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *v8 = 0;
          _os_log_impl(&dword_21B93D000, v6, OS_LOG_TYPE_DEFAULT, "RUI nav controller detected, suppressing rotation views", v8, 2u);
        }
      }

      [v3 setSupportedInterfaceOrientations:2];
    }
  }

  return v3;
}

- (void)dismissObjectModelsAnimated:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_remoteUIController);
  v7 = [WeakRetained dismissObjectModelsAnimated:v4 completion:v8];
}

- (BOOL)isUserCancelError:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  LOBYTE(self) = [WeakRetained serverHookHandler:self isUserCancelError:v4];

  return self;
}

- (id)_responseDataForResult:(BOOL)a3 withError:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CBEB38] dictionary];
  v8 = [v6 domain];

  if (v8)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v6, "code")}];
    [v7 setObject:v9 forKeyedSubscript:@"errorCode"];

    v10 = [v6 domain];
    [v7 setObject:v10 forKeyedSubscript:@"errorDomain"];

    if ([(RUIServerHookHandler *)self isUserCancelError:v6])
    {
      [v7 setObject:@"cancel" forKeyedSubscript:@"action"];
    }
  }

  if (v4)
  {
    v11 = @"1";
  }

  else
  {
    v11 = @"0";
  }

  [v7 setObject:v11 forKeyedSubscript:@"success"];

  return v7;
}

- (void)refreshWithRequest:(id)a3 completion:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (_isInternalInstall())
  {
    v8 = _RUILoggingFacility();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v14 = v6;
      _os_log_impl(&dword_21B93D000, v8, OS_LOG_TYPE_DEFAULT, "Attempting to refresh with request: %@", buf, 0xCu);
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_remoteUIController);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __54__RUIServerHookHandler_refreshWithRequest_completion___block_invoke;
  v11[3] = &unk_2782E8158;
  v12 = v7;
  v10 = v7;
  [WeakRetained loadRequest:v6 completion:v11];
}

void __54__RUIServerHookHandler_refreshWithRequest_completion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (_isInternalInstall())
  {
    v6 = _RUILoggingFacility();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v14 = v5;
      _os_log_impl(&dword_21B93D000, v6, OS_LOG_TYPE_DEFAULT, "Finished loading: %@", buf, 0xCu);
    }
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__RUIServerHookHandler_refreshWithRequest_completion___block_invoke_61;
  block[3] = &unk_2782E8130;
  v7 = *(a1 + 32);
  v12 = a2;
  v10 = v5;
  v11 = v7;
  v8 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __54__RUIServerHookHandler_refreshWithRequest_completion___block_invoke_61(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 48), *(a1 + 32));
  }

  return result;
}

- (void)_reloadUIWithInfo:(id)a3 attributes:(id)a4 initiatingObjectModel:(id)a5 completion:(id)a6
{
  v10 = a6;
  v11 = [(RUIServerHookHandler *)self _refreshRequestWithInfo:a3 initiatingObjectModel:a5 attributes:a4];
  if (v11)
  {
    [(RUIServerHookHandler *)self refreshWithRequest:v11 completion:v10];
  }

  else
  {
    if (_isInternalInstall())
    {
      v12 = _RUILoggingFacility();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_21B93D000, v12, OS_LOG_TYPE_DEFAULT, "No refresh URL; skipping reload", buf, 2u);
      }
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __86__RUIServerHookHandler__reloadUIWithInfo_attributes_initiatingObjectModel_completion___block_invoke;
    block[3] = &unk_2782E8180;
    v14 = v10;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

uint64_t __86__RUIServerHookHandler__reloadUIWithInfo_attributes_initiatingObjectModel_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1, 0);
  }

  return result;
}

- (id)_refreshRequestWithInfo:(id)a3 initiatingObjectModel:(id)a4 attributes:(id)a5
{
  v25 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (_isInternalInstall())
  {
    v10 = _RUILoggingFacility();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 138412290;
      v24 = v9;
      _os_log_impl(&dword_21B93D000, v10, OS_LOG_TYPE_DEFAULT, "Refreshing server UI with attributes %@", &v23, 0xCu);
    }
  }

  v11 = [v9 objectForKeyedSubscript:@"refreshUrl"];
  v12 = [v9 objectForKeyedSubscript:@"refreshHttpMethod"];
  if (v11)
  {
    v13 = objc_alloc(MEMORY[0x277CCAB70]);
    v14 = MEMORY[0x277CBEBC0];
    v15 = [v8 sourceURL];
    v16 = [v14 URLWithString:v11 relativeToURL:v15];
    v17 = [v13 initWithURL:v16];

    if ([v12 isEqualToString:@"POST"])
    {
      v18 = [v7 mutableCopy];
      v19 = [v8 serverInfo];
      if (v19)
      {
        [v18 addEntriesFromDictionary:v19];
      }

      if (_isInternalInstall())
      {
        v20 = _RUILoggingFacility();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v23 = 138412290;
          v24 = v18;
          _os_log_impl(&dword_21B93D000, v20, OS_LOG_TYPE_DEFAULT, "Responding to server with info: %@", &v23, 0xCu);
        }
      }

      v21 = [MEMORY[0x277CCAC58] dataWithPropertyList:v18 format:100 options:0 error:0];
      [v17 setHTTPBody:v21];
      [v17 setHTTPMethod:@"POST"];
      [v17 setValue:@"application/x-plist" forHTTPHeaderField:@"Content-Type"];
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (RUIServerHookHandlerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end