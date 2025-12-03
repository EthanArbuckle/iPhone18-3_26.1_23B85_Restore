@interface TILinguisticAssetDownloadClient
+ (id)_dispatchQueue;
+ (id)_internalAssertionRequestHandlerForHandler:(id)handler connection:(id)connection;
+ (id)_internalFetchAssetUpdateStatusRequestHandler:(id)handler connection:(id)connection;
+ (id)_internalHandlerForHandler:(id)handler connection:(id)connection;
+ (id)_internalUpdateAssetRequestHandler:(id)handler connection:(id)connection;
- (id)_newXPCConnection;
- (void)addLinguisticAssetsAssertionForLanguage:(id)language assertionID:(id)d region:(id)region clientID:(id)iD withHandler:(id)handler;
- (void)fetchAssetUpdateStatusForInputModeIdentifier:(id)identifier callback:(id)callback;
- (void)removeLinguisticAssetsAssertionWithIdentifier:(id)identifier forClientID:(id)d withHandler:(id)handler;
- (void)requestLinguisticAssetsForLanguage:(id)language completion:(id)completion;
- (void)updateAssetForInputModeIdentifier:(id)identifier callback:(id)callback;
@end

@implementation TILinguisticAssetDownloadClient

- (id)_newXPCConnection
{
  v2 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.TextInput.rdt" options:4096];
  v3 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1EF7E9248];
  [v2 setRemoteObjectInterface:v3];

  v4 = +[TILinguisticAssetDownloadClient _dispatchQueue];
  [v2 _setQueue:v4];

  [v2 resume];
  return v2;
}

+ (id)_dispatchQueue
{
  if (_dispatchQueue_onceToken != -1)
  {
    dispatch_once(&_dispatchQueue_onceToken, &__block_literal_global_6883);
  }

  v3 = _dispatchQueue_queue;

  return v3;
}

- (void)updateAssetForInputModeIdentifier:(id)identifier callback:(id)callback
{
  identifierCopy = identifier;
  callbackCopy = callback;
  v8 = +[TILinguisticAssetDownloadClient _dispatchQueue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __78__TILinguisticAssetDownloadClient_updateAssetForInputModeIdentifier_callback___block_invoke;
  v11[3] = &unk_1E6F4CC80;
  v12 = identifierCopy;
  v13 = callbackCopy;
  v11[4] = self;
  v9 = identifierCopy;
  v10 = callbackCopy;
  TIDispatchAsync(v8, v11);
}

void __78__TILinguisticAssetDownloadClient_updateAssetForInputModeIdentifier_callback___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _newXPCConnection];
  v3 = [TILinguisticAssetDownloadClient _internalUpdateAssetRequestHandler:*(a1 + 48) connection:v2];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __78__TILinguisticAssetDownloadClient_updateAssetForInputModeIdentifier_callback___block_invoke_2;
  v7[3] = &unk_1E6F4CD38;
  v4 = v3;
  v8 = v4;
  v5 = [v2 remoteObjectProxyWithErrorHandler:v7];
  v6 = v5;
  if (v5)
  {
    [v5 updateAssetForInputModeIdentifier:*(a1 + 40) callback:v4];
  }
}

- (void)fetchAssetUpdateStatusForInputModeIdentifier:(id)identifier callback:(id)callback
{
  identifierCopy = identifier;
  callbackCopy = callback;
  v8 = +[TILinguisticAssetDownloadClient _dispatchQueue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __89__TILinguisticAssetDownloadClient_fetchAssetUpdateStatusForInputModeIdentifier_callback___block_invoke;
  v11[3] = &unk_1E6F4CC80;
  v12 = identifierCopy;
  v13 = callbackCopy;
  v11[4] = self;
  v9 = identifierCopy;
  v10 = callbackCopy;
  TIDispatchAsync(v8, v11);
}

void __89__TILinguisticAssetDownloadClient_fetchAssetUpdateStatusForInputModeIdentifier_callback___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _newXPCConnection];
  v3 = [TILinguisticAssetDownloadClient _internalFetchAssetUpdateStatusRequestHandler:*(a1 + 48) connection:v2];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __89__TILinguisticAssetDownloadClient_fetchAssetUpdateStatusForInputModeIdentifier_callback___block_invoke_2;
  v7[3] = &unk_1E6F4CD38;
  v4 = v3;
  v8 = v4;
  v5 = [v2 remoteObjectProxyWithErrorHandler:v7];
  v6 = v5;
  if (v5)
  {
    [v5 fetchAssetUpdateStatusForInputModeIdentifier:*(a1 + 40) callback:v4];
  }
}

- (void)removeLinguisticAssetsAssertionWithIdentifier:(id)identifier forClientID:(id)d withHandler:(id)handler
{
  identifierCopy = identifier;
  dCopy = d;
  handlerCopy = handler;
  v11 = +[TILinguisticAssetDownloadClient _dispatchQueue];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __105__TILinguisticAssetDownloadClient_removeLinguisticAssetsAssertionWithIdentifier_forClientID_withHandler___block_invoke;
  v15[3] = &unk_1E6F4CA20;
  v15[4] = self;
  v16 = identifierCopy;
  v17 = dCopy;
  v18 = handlerCopy;
  v12 = dCopy;
  v13 = identifierCopy;
  v14 = handlerCopy;
  TIDispatchAsync(v11, v15);
}

void __105__TILinguisticAssetDownloadClient_removeLinguisticAssetsAssertionWithIdentifier_forClientID_withHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _newXPCConnection];
  v3 = [TILinguisticAssetDownloadClient _internalAssertionRequestHandlerForHandler:*(a1 + 56) connection:v2];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __105__TILinguisticAssetDownloadClient_removeLinguisticAssetsAssertionWithIdentifier_forClientID_withHandler___block_invoke_2;
  v7[3] = &unk_1E6F4CD38;
  v4 = v3;
  v8 = v4;
  v5 = [v2 remoteObjectProxyWithErrorHandler:v7];
  v6 = v5;
  if (v5)
  {
    [v5 removeLinguisticAssetsAssertionWithIdentifier:*(a1 + 40) forClientID:*(a1 + 48) withHandler:v4];
  }

  else
  {
    (*(v4 + 2))(v4, 0);
  }
}

- (void)addLinguisticAssetsAssertionForLanguage:(id)language assertionID:(id)d region:(id)region clientID:(id)iD withHandler:(id)handler
{
  languageCopy = language;
  dCopy = d;
  regionCopy = region;
  iDCopy = iD;
  handlerCopy = handler;
  v17 = +[TILinguisticAssetDownloadClient _dispatchQueue];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __115__TILinguisticAssetDownloadClient_addLinguisticAssetsAssertionForLanguage_assertionID_region_clientID_withHandler___block_invoke;
  v23[3] = &unk_1E6F4C9F8;
  v23[4] = self;
  v24 = languageCopy;
  v25 = dCopy;
  v26 = regionCopy;
  v27 = iDCopy;
  v28 = handlerCopy;
  v18 = iDCopy;
  v19 = regionCopy;
  v20 = dCopy;
  v21 = languageCopy;
  v22 = handlerCopy;
  TIDispatchAsync(v17, v23);
}

void __115__TILinguisticAssetDownloadClient_addLinguisticAssetsAssertionForLanguage_assertionID_region_clientID_withHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _newXPCConnection];
  v3 = [TILinguisticAssetDownloadClient _internalAssertionRequestHandlerForHandler:*(a1 + 72) connection:v2];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __115__TILinguisticAssetDownloadClient_addLinguisticAssetsAssertionForLanguage_assertionID_region_clientID_withHandler___block_invoke_2;
  v7[3] = &unk_1E6F4CD38;
  v4 = v3;
  v8 = v4;
  v5 = [v2 remoteObjectProxyWithErrorHandler:v7];
  v6 = v5;
  if (v5)
  {
    [v5 addLinguisticAssetsAssertionForLanguage:*(a1 + 40) assertionID:*(a1 + 48) region:*(a1 + 56) clientID:*(a1 + 64) withHandler:v4];
  }

  else
  {
    (*(v4 + 2))(v4, 0);
  }
}

- (void)requestLinguisticAssetsForLanguage:(id)language completion:(id)completion
{
  languageCopy = language;
  completionCopy = completion;
  if (completionCopy)
  {
    v8 = +[TILinguisticAssetDownloadClient _dispatchQueue];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __81__TILinguisticAssetDownloadClient_requestLinguisticAssetsForLanguage_completion___block_invoke;
    v9[3] = &unk_1E6F4CC80;
    v9[4] = self;
    v11 = completionCopy;
    v10 = languageCopy;
    TIDispatchAsync(v8, v9);
  }
}

void __81__TILinguisticAssetDownloadClient_requestLinguisticAssetsForLanguage_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _newXPCConnection];
  v3 = [TILinguisticAssetDownloadClient _internalHandlerForHandler:*(a1 + 48) connection:v2];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __81__TILinguisticAssetDownloadClient_requestLinguisticAssetsForLanguage_completion___block_invoke_2;
  v9[3] = &unk_1E6F4CD38;
  v4 = v3;
  v10 = v4;
  v5 = [v2 remoteObjectProxyWithErrorHandler:v9];
  if (v5)
  {
    v6 = *(a1 + 40);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __81__TILinguisticAssetDownloadClient_requestLinguisticAssetsForLanguage_completion___block_invoke_3;
    v7[3] = &unk_1E6F4C9D0;
    v8 = v4;
    [v5 requestLinguisticAssetsForLanguage:v6 completion:v7];
  }

  else
  {
    (*(v4 + 2))(v4, -1, 0);
  }
}

+ (id)_internalUpdateAssetRequestHandler:(id)handler connection:(id)connection
{
  handlerCopy = handler;
  objc_initWeak(&location, connection);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __81__TILinguisticAssetDownloadClient__internalUpdateAssetRequestHandler_connection___block_invoke;
  v10[3] = &unk_1E6F4C9A8;
  v11 = handlerCopy;
  v6 = handlerCopy;
  objc_copyWeak(&v12, &location);
  v7 = MEMORY[0x1866068F0](v10);
  v8 = [v7 copy];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);

  return v8;
}

void __81__TILinguisticAssetDownloadClient__internalUpdateAssetRequestHandler_connection___block_invoke(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained invalidate];
}

+ (id)_internalFetchAssetUpdateStatusRequestHandler:(id)handler connection:(id)connection
{
  handlerCopy = handler;
  objc_initWeak(&location, connection);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __92__TILinguisticAssetDownloadClient__internalFetchAssetUpdateStatusRequestHandler_connection___block_invoke;
  v10[3] = &unk_1E6F4C980;
  v11 = handlerCopy;
  v6 = handlerCopy;
  objc_copyWeak(&v12, &location);
  v7 = MEMORY[0x1866068F0](v10);
  v8 = [v7 copy];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);

  return v8;
}

void __92__TILinguisticAssetDownloadClient__internalFetchAssetUpdateStatusRequestHandler_connection___block_invoke(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained invalidate];
}

+ (id)_internalAssertionRequestHandlerForHandler:(id)handler connection:(id)connection
{
  handlerCopy = handler;
  objc_initWeak(&location, connection);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __89__TILinguisticAssetDownloadClient__internalAssertionRequestHandlerForHandler_connection___block_invoke;
  v10[3] = &unk_1E6F4D3D0;
  v11 = handlerCopy;
  v6 = handlerCopy;
  objc_copyWeak(&v12, &location);
  v7 = MEMORY[0x1866068F0](v10);
  v8 = [v7 copy];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);

  return v8;
}

void __89__TILinguisticAssetDownloadClient__internalAssertionRequestHandlerForHandler_connection___block_invoke(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained invalidate];
}

+ (id)_internalHandlerForHandler:(id)handler connection:(id)connection
{
  handlerCopy = handler;
  objc_initWeak(&location, connection);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __73__TILinguisticAssetDownloadClient__internalHandlerForHandler_connection___block_invoke;
  v10[3] = &unk_1E6F4C980;
  v11 = handlerCopy;
  v6 = handlerCopy;
  objc_copyWeak(&v12, &location);
  v7 = MEMORY[0x1866068F0](v10);
  v8 = [v7 copy];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);

  return v8;
}

void __73__TILinguisticAssetDownloadClient__internalHandlerForHandler_connection___block_invoke(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained invalidate];
}

void __49__TILinguisticAssetDownloadClient__dispatchQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
  v0 = dispatch_queue_create("com.apple.TextInput.linguistic-asset-download-client", v2);
  v1 = _dispatchQueue_queue;
  _dispatchQueue_queue = v0;
}

@end