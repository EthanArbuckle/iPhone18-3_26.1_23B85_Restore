@interface RTIInputSystemServiceSession
+ (id)sessionWithConnection:(id)a3;
- (NSXPCConnection)connection;
- (RTIDataPayload)currentDataPayload;
- (RTIDocumentRequest)defaultRequest;
- (RTIInputSystemServiceSession)initWithConnection:(id)a3;
- (id)bundleIdentifier;
- (id)documentStateAfterModifyAndFlushTextOperations:(id)a3;
- (id)documentStateAfterModifyAndFlushTextOperations:(id)a3 resultHandler:(id)a4;
- (id)valueForEntitlement:(id)a3;
- (int)pid;
- (void)_flushOperationsImpl;
- (void)_flushOperationsImplWithResultHandler:(id)a3;
- (void)_killConnectionWithCallback;
- (void)_queue_sessionWithID:(id)a3 didAddRTISupplementalLexicon:(id)a4;
- (void)_queue_sessionWithID:(id)a3 didAddSupplementalLexicon:(id)a4;
- (void)_updateAppIdsFromConnectionOnInternalQueueWithCompletionHandler:(id)a3;
- (void)beginOptionsSafeAccess:(id)a3;
- (void)beginRemoteTextInputSessionWithID:(id)a3 options:(id)a4 documentTraits:(id)a5 initialDocumentState:(id)a6;
- (void)bundleIdentifier;
- (void)dealloc;
- (void)documentStateSafeAccess:(id)a3;
- (void)documentTraitsSafeAccess:(id)a3;
- (void)endRemoteTextInputSessionWithID:(id)a3 options:(id)a4 completion:(id)a5;
- (void)flushOperations;
- (void)flushOperationsWithResultHandler:(id)a3;
- (void)handleTextActionPayload:(id)a3;
- (void)modifyAndFlushTextOperations:(id)a3;
- (void)modifyAndFlushTextOperations:(id)a3 resultHandler:(id)a4;
- (void)performDocumentRequest:(id)a3 completion:(id)a4;
- (void)remoteTextInputSessionWithID:(id)a3 didAddRTISupplementalLexicon:(id)a4;
- (void)remoteTextInputSessionWithID:(id)a3 didAddSupplementalLexicon:(id)a4;
- (void)remoteTextInputSessionWithID:(id)a3 didChangePause:(BOOL)a4 withReason:(id)a5;
- (void)remoteTextInputSessionWithID:(id)a3 didRemoveRTISupplementalLexiconWithIdentifier:(unint64_t)a4;
- (void)remoteTextInputSessionWithID:(id)a3 didRemoveSupplementalLexiconWithIdentifier:(unint64_t)a4;
- (void)remoteTextInputSessionWithID:(id)a3 documentDidChange:(id)a4;
- (void)remoteTextInputSessionWithID:(id)a3 documentTraitsDidChange:(id)a4;
- (void)remoteTextInputSessionWithID:(id)a3 performInputOperation:(id)a4;
- (void)remoteTextInputSessionWithID:(id)a3 performInputOperation:(id)a4 withResponse:(id)a5;
- (void)remoteTextInputSessionWithID:(id)a3 textSuggestionsChanged:(id)a4;
- (void)setDefaultRequest:(id)a3;
- (void)textOperationsSafeAccess:(id)a3;
- (void)uuidSafeAccess:(id)a3;
@end

@implementation RTIInputSystemServiceSession

- (void)_killConnectionWithCallback
{
  objc_initWeak(&location, self);
  internalQueue = self->_internalQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __59__RTIInputSystemServiceSession__killConnectionWithCallback__block_invoke;
  v4[3] = &unk_1E7514078;
  objc_copyWeak(&v5, &location);
  dispatch_async(internalQueue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __59__RTIInputSystemServiceSession__killConnectionWithCallback__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __59__RTIInputSystemServiceSession__killConnectionWithCallback__block_invoke_2;
    v3[3] = &unk_1E7513FA8;
    v3[4] = WeakRetained;
    [WeakRetained enumerateSessionDelegatesUsingBlock:v3];
  }
}

void __59__RTIInputSystemServiceSession__killConnectionWithCallback__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 inputSessionDidDie:*(a1 + 32)];
  }
}

- (void)dealloc
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

+ (id)sessionWithConnection:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithConnection:v4];

  return v5;
}

- (RTIInputSystemServiceSession)initWithConnection:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = RTIInputSystemServiceSession;
  v5 = [(RTIInputSystemServiceSession *)&v22 init];
  v6 = v5;
  if (v5)
  {
    v5->_payloadVersion = 1;
    objc_storeWeak(&v5->_connection, v4);
    v7 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v8 = dispatch_queue_create("com.apple.RemoteTextInput.RTIInputSystemServiceSession.Internal", v7);
    internalQueue = v6->_internalQueue;
    v6->_internalQueue = v8;

    v10 = dispatch_queue_create("com.apple.RemoteTextInput.RTIInputSystemServiceSession.External", v7);
    externalOperationsQueue = v6->_externalOperationsQueue;
    v6->_externalOperationsQueue = v10;

    v6->_lifecycleDispatchState = 0;
    v12 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F0DA58F8];
    [v4 setExportedInterface:v12];

    v13 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F0DA6A28];
    [v4 setRemoteObjectInterface:v13];

    [v4 setExportedObject:v6];
    objc_initWeak(&location, v6);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __51__RTIInputSystemServiceSession_initWithConnection___block_invoke;
    v19[3] = &unk_1E7514078;
    objc_copyWeak(&v20, &location);
    v14 = MEMORY[0x19A8FDFF0](v19);
    [v4 setInterruptionHandler:v14];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __51__RTIInputSystemServiceSession_initWithConnection___block_invoke_93;
    v17[3] = &unk_1E7514078;
    objc_copyWeak(&v18, &location);
    v15 = MEMORY[0x19A8FDFF0](v17);
    [v4 setInvalidationHandler:v15];
    [(RTIInputSystemServiceSession *)v6 didInitializeWithConnection:v4];

    objc_destroyWeak(&v18);
    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }

  return v6;
}

void __51__RTIInputSystemServiceSession_initWithConnection___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = RTIInputSessionChangeLogFacility();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __51__RTIInputSystemServiceSession_initWithConnection___block_invoke_cold_1();
    }

    [WeakRetained _killConnectionWithCallback];
  }
}

void __51__RTIInputSystemServiceSession_initWithConnection___block_invoke_93(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = RTIInputSessionChangeLogFacility();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136315394;
      v5 = "[RTIInputSystemServiceSession initWithConnection:]_block_invoke";
      v6 = 2112;
      v7 = WeakRetained;
      _os_log_impl(&dword_19A2A6000, v2, OS_LOG_TYPE_DEFAULT, "%s  service session connection was invalidated: %@", &v4, 0x16u);
    }

    [WeakRetained _killConnectionWithCallback];
  }

  v3 = *MEMORY[0x1E69E9840];
}

- (int)pid
{
  WeakRetained = objc_loadWeakRetained(&self->_connection);
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained auditToken];
    v4 = audit_token_to_pid(&v6);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)bundleIdentifier
{
  WeakRetained = objc_loadWeakRetained(&self->_connection);
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained auditToken];
    CPCopyBundleIdentifierAndTeamFromAuditToken();
  }

  else
  {
    v4 = RTIInputSessionChangeLogFacility();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [RTIInputSystemServiceSession bundleIdentifier];
    }
  }

  return 0;
}

- (id)valueForEntitlement:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_connection);
  v6 = WeakRetained;
  if (!WeakRetained)
  {
    v11 = RTIInputSessionChangeLogFacility();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [RTIInputSystemServiceSession valueForEntitlement:];
    }

    goto LABEL_11;
  }

  [WeakRetained auditToken];
  v7 = SecTaskCreateWithAuditToken(0, &cf);
  if (!v7)
  {
LABEL_11:
    v9 = 0;
    goto LABEL_12;
  }

  v8 = v7;
  *cf.val = 0;
  v9 = SecTaskCopyValueForEntitlement(v7, v4, &cf);
  if (*cf.val)
  {
    v10 = RTILogFacility();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [RTIInputSystemServiceSession valueForEntitlement:?];
    }

    CFRelease(*cf.val);
  }

  CFRelease(v8);
LABEL_12:

  return v9;
}

- (void)uuidSafeAccess:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_not_V2(self->_internalQueue);
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __47__RTIInputSystemServiceSession_uuidSafeAccess___block_invoke;
  v7[3] = &unk_1E75140A0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(internalQueue, v7);
}

void __47__RTIInputSystemServiceSession_uuidSafeAccess___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) uuid];
  (*(v1 + 16))(v1, v2);
}

- (void)beginOptionsSafeAccess:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_not_V2(self->_internalQueue);
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __55__RTIInputSystemServiceSession_beginOptionsSafeAccess___block_invoke;
  v7[3] = &unk_1E75140A0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(internalQueue, v7);
}

void __55__RTIInputSystemServiceSession_beginOptionsSafeAccess___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) beginOptions];
  (*(v1 + 16))(v1, v2);
}

- (void)documentTraitsSafeAccess:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_not_V2(self->_internalQueue);
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__RTIInputSystemServiceSession_documentTraitsSafeAccess___block_invoke;
  v7[3] = &unk_1E75140A0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(internalQueue, v7);
}

void __57__RTIInputSystemServiceSession_documentTraitsSafeAccess___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) documentTraits];
  (*(v1 + 16))(v1, v2);
}

- (void)documentStateSafeAccess:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_not_V2(self->_internalQueue);
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __56__RTIInputSystemServiceSession_documentStateSafeAccess___block_invoke;
  v7[3] = &unk_1E75140A0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(internalQueue, v7);
}

void __56__RTIInputSystemServiceSession_documentStateSafeAccess___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) documentState];
  (*(v1 + 16))(v1, v2);
}

- (void)textOperationsSafeAccess:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_not_V2(self->_internalQueue);
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__RTIInputSystemServiceSession_textOperationsSafeAccess___block_invoke;
  v7[3] = &unk_1E75140A0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(internalQueue, v7);
}

void __57__RTIInputSystemServiceSession_textOperationsSafeAccess___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) textOperations];
  (*(v1 + 16))(v1, v2);
}

- (void)flushOperations
{
  dispatch_assert_queue_not_V2(self->_internalQueue);
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__RTIInputSystemServiceSession_flushOperations__block_invoke;
  block[3] = &unk_1E75140C8;
  block[4] = self;
  dispatch_sync(internalQueue, block);
}

- (void)_flushOperationsImpl
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)flushOperationsWithResultHandler:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_not_V2(self->_internalQueue);
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __65__RTIInputSystemServiceSession_flushOperationsWithResultHandler___block_invoke;
  v7[3] = &unk_1E75140F0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(internalQueue, v7);
}

- (void)_flushOperationsImplWithResultHandler:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_internalQueue);
  WeakRetained = objc_loadWeakRetained(&self->_connection);
  if (WeakRetained)
  {
    v6 = [(RTIInputSystemSession *)self textOperations];

    if (v6)
    {
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __70__RTIInputSystemServiceSession__flushOperationsImplWithResultHandler___block_invoke;
      v13[3] = &unk_1E7514118;
      v7 = v4;
      v14 = v7;
      v8 = [WeakRetained remoteObjectProxyWithErrorHandler:v13];
      v9 = [(RTIInputSystemSession *)self textOperations];
      [v8 performTextOperations:v9 resultHandler:v7];

      v10 = [(RTIInputSystemSession *)self textOperations];
      v11 = [(RTIInputSystemSession *)self documentState];
      [(RTIInputSystemSession *)self _applyLocalTextOperations:v10 toDocumentState:v11];

      [(RTIInputSystemSession *)self setTextOperations:0];
    }
  }

  else
  {
    v12 = RTIInputSessionChangeLogFacility();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [RTIInputSystemServiceSession _flushOperationsImplWithResultHandler:];
    }

    if (v4)
    {
      (*(v4 + 2))(v4, 0);
    }
  }
}

void __70__RTIInputSystemServiceSession__flushOperationsImplWithResultHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = RTIInputSessionChangeLogFacility();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __70__RTIInputSystemServiceSession__flushOperationsImplWithResultHandler___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0);
  }
}

- (id)documentStateAfterModifyAndFlushTextOperations:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_not_V2(self->_internalQueue);
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  internalQueue = self->_internalQueue;
  v16 = __Block_byref_object_dispose_;
  v17 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __79__RTIInputSystemServiceSession_documentStateAfterModifyAndFlushTextOperations___block_invoke;
  block[3] = &unk_1E7514140;
  block[4] = self;
  v10 = v4;
  v11 = &v12;
  v6 = v4;
  dispatch_sync(internalQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __79__RTIInputSystemServiceSession_documentStateAfterModifyAndFlushTextOperations___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = [*(a1 + 32) textOperations];
    (*(v2 + 16))(v2, v3);
  }

  [*(a1 + 32) _flushOperationsImpl];
  v7 = [*(a1 + 32) documentState];
  v4 = [v7 copy];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (id)documentStateAfterModifyAndFlushTextOperations:(id)a3 resultHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_not_V2(self->_internalQueue);
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy_;
  v21 = __Block_byref_object_dispose_;
  v22 = 0;
  internalQueue = self->_internalQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __93__RTIInputSystemServiceSession_documentStateAfterModifyAndFlushTextOperations_resultHandler___block_invoke;
  v13[3] = &unk_1E7514168;
  v13[4] = self;
  v14 = v6;
  v15 = v7;
  v16 = &v17;
  v9 = v7;
  v10 = v6;
  dispatch_sync(internalQueue, v13);
  v11 = v18[5];

  _Block_object_dispose(&v17, 8);

  return v11;
}

void __93__RTIInputSystemServiceSession_documentStateAfterModifyAndFlushTextOperations_resultHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = [*(a1 + 32) textOperations];
    (*(v2 + 16))(v2, v3);
  }

  [*(a1 + 32) _flushOperationsImplWithResultHandler:*(a1 + 48)];
  v7 = [*(a1 + 32) documentState];
  v4 = [v7 copy];
  v5 = *(*(a1 + 56) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (void)modifyAndFlushTextOperations:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_not_V2(self->_internalQueue);
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61__RTIInputSystemServiceSession_modifyAndFlushTextOperations___block_invoke;
  v7[3] = &unk_1E75140A0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(internalQueue, v7);
}

uint64_t __61__RTIInputSystemServiceSession_modifyAndFlushTextOperations___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = [*(a1 + 32) textOperations];
    (*(v2 + 16))(v2, v3);
  }

  v4 = *(a1 + 32);

  return [v4 _flushOperationsImpl];
}

- (void)modifyAndFlushTextOperations:(id)a3 resultHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_not_V2(self->_internalQueue);
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __75__RTIInputSystemServiceSession_modifyAndFlushTextOperations_resultHandler___block_invoke;
  block[3] = &unk_1E7514190;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_sync(internalQueue, block);
}

uint64_t __75__RTIInputSystemServiceSession_modifyAndFlushTextOperations_resultHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = [*(a1 + 32) textOperations];
    (*(v2 + 16))(v2, v3);
  }

  v4 = *(a1 + 32);
  v5 = *(a1 + 48);

  return [v4 _flushOperationsImplWithResultHandler:v5];
}

- (RTIDocumentRequest)defaultRequest
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy_;
  v11 = __Block_byref_object_dispose_;
  v12 = 0;
  dispatch_assert_queue_not_V2(self->_internalQueue);
  internalQueue = self->_internalQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __46__RTIInputSystemServiceSession_defaultRequest__block_invoke;
  v6[3] = &unk_1E75141B8;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(internalQueue, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)setDefaultRequest:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_not_V2(self->_internalQueue);
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__RTIInputSystemServiceSession_setDefaultRequest___block_invoke;
  v7[3] = &unk_1E75141E0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(internalQueue, v7);
}

void __50__RTIInputSystemServiceSession_setDefaultRequest___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 120), *(a1 + 40));
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 136));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained remoteObjectProxy];
    [v4 updateDefaultDocumentRequest:*(*(a1 + 32) + 120)];
  }

  else
  {
    v5 = RTIInputSessionChangeLogFacility();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __50__RTIInputSystemServiceSession_setDefaultRequest___block_invoke_cold_1();
    }
  }
}

- (void)performDocumentRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_not_V2(self->_internalQueue);
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__RTIInputSystemServiceSession_performDocumentRequest_completion___block_invoke;
  block[3] = &unk_1E7514208;
  v12 = v6;
  v13 = v7;
  block[4] = self;
  v9 = v6;
  v10 = v7;
  dispatch_sync(internalQueue, block);
}

void __66__RTIInputSystemServiceSession_performDocumentRequest_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 136));
  if (WeakRetained)
  {
    v3 = *(a1 + 40);
    if (!v3)
    {
      v3 = *(*(a1 + 32) + 120);
    }

    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __66__RTIInputSystemServiceSession_performDocumentRequest_completion___block_invoke_100;
    v8[3] = &unk_1E7514118;
    v9 = *(a1 + 48);
    v4 = v3;
    v5 = [WeakRetained remoteObjectProxyWithErrorHandler:v8];
    [v5 performDocumentRequest:v4 completion:*(a1 + 48)];
  }

  else
  {
    v6 = RTIInputSessionChangeLogFacility();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __66__RTIInputSystemServiceSession_performDocumentRequest_completion___block_invoke_cold_1();
    }

    v7 = *(a1 + 48);
    if (v7)
    {
      (*(v7 + 16))(v7, 0);
    }
  }
}

void __66__RTIInputSystemServiceSession_performDocumentRequest_completion___block_invoke_100(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = RTIInputSessionChangeLogFacility();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __66__RTIInputSystemServiceSession_performDocumentRequest_completion___block_invoke_100_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0);
  }
}

- (void)_updateAppIdsFromConnectionOnInternalQueueWithCompletionHandler:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_internalQueue);
  v5 = [(RTIInputSystemServiceSession *)self bundleIdentifier];
  v6 = [(RTIInputSystemServiceSession *)self pid];
  v7 = [(RTIInputSystemServiceSession *)self valueForEntitlement:@"application-identifier"];
  v22 = 0;
  v23 = &v22;
  v24 = 0x2050000000;
  v8 = getLSApplicationProxyClass_softClass;
  v25 = getLSApplicationProxyClass_softClass;
  if (!getLSApplicationProxyClass_softClass)
  {
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __getLSApplicationProxyClass_block_invoke;
    v21[3] = &unk_1E75144B0;
    v21[4] = &v22;
    __getLSApplicationProxyClass_block_invoke(v21);
    v8 = v23[3];
  }

  v9 = v8;
  _Block_object_dispose(&v22, 8);
  v10 = [v8 applicationProxyForIdentifier:v5];
  v11 = [v10 localizedName];
  v12 = *MEMORY[0x1E695E120];
  v13 = [MEMORY[0x1E695DFD8] setWithObject:*MEMORY[0x1E695E120]];
  v14 = [v10 objectsForInfoDictionaryKeys:v13];
  v15 = [v14 stringForKey:v12];

  v16 = [(RTIInputSystemSession *)self documentTraits];
  [v16 setAppId:v7];

  v17 = [(RTIInputSystemSession *)self documentTraits];
  [v17 setBundleId:v5];

  v18 = [(RTIInputSystemSession *)self documentTraits];
  [v18 setAppName:v15];

  v19 = [(RTIInputSystemSession *)self documentTraits];
  [v19 setLocalizedAppName:v11];

  v20 = [(RTIInputSystemSession *)self documentTraits];
  [v20 setProcessId:v6];

  v4[2](v4);
}

- (RTIDataPayload)currentDataPayload
{
  dispatch_assert_queue_not_V2(self->_internalQueue);
  v3 = [RTIInputSystemDataPayload payloadWithData:0 version:[(RTIInputSystemServiceSession *)self payloadVersion]];
  internalQueue = self->_internalQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __50__RTIInputSystemServiceSession_currentDataPayload__block_invoke;
  v8[3] = &unk_1E75141E0;
  v5 = v3;
  v9 = v5;
  v10 = self;
  dispatch_sync(internalQueue, v8);
  v6 = v5;

  return v5;
}

uint64_t __50__RTIInputSystemServiceSession_currentDataPayload__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) documentTraits];
  [*(a1 + 32) setDocumentTraits:v2];

  v3 = [*(a1 + 40) documentState];
  [*(a1 + 32) setDocumentState:v3];

  v4 = [*(a1 + 40) _textOperations];
  [*(a1 + 32) setTextOperations:v4];

  v5 = [*(a1 + 40) uuid];
  [*(a1 + 32) setSessionUUID:v5];

  v6 = *(a1 + 32);

  return [v6 updateData];
}

- (void)beginRemoteTextInputSessionWithID:(id)a3 options:(id)a4 documentTraits:(id)a5 initialDocumentState:(id)a6
{
  v34 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = RTIInputSessionChangeLogFacility();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v31 = "[RTIInputSystemServiceSession beginRemoteTextInputSessionWithID:options:documentTraits:initialDocumentState:]";
    v32 = 2112;
    v33 = v10;
    _os_log_impl(&dword_19A2A6000, v14, OS_LOG_TYPE_DEFAULT, "%s  Begin input session: %@", buf, 0x16u);
  }

  externalOperationsQueue = self->_externalOperationsQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __110__RTIInputSystemServiceSession_beginRemoteTextInputSessionWithID_options_documentTraits_initialDocumentState___block_invoke;
  block[3] = &unk_1E75141E0;
  block[4] = self;
  v16 = v11;
  v29 = v16;
  dispatch_async(externalOperationsQueue, block);
  self->_lifecycleDispatchState = 1;
  internalQueue = self->_internalQueue;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __110__RTIInputSystemServiceSession_beginRemoteTextInputSessionWithID_options_documentTraits_initialDocumentState___block_invoke_3;
  v23[3] = &unk_1E75142A8;
  v23[4] = self;
  v24 = v10;
  v25 = v16;
  v26 = v12;
  v27 = v13;
  v18 = v13;
  v19 = v12;
  v20 = v16;
  v21 = v10;
  dispatch_async(internalQueue, v23);

  v22 = *MEMORY[0x1E69E9840];
}

void __110__RTIInputSystemServiceSession_beginRemoteTextInputSessionWithID_options_documentTraits_initialDocumentState___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __110__RTIInputSystemServiceSession_beginRemoteTextInputSessionWithID_options_documentTraits_initialDocumentState___block_invoke_2;
  v2[3] = &unk_1E7514230;
  v2[4] = v1;
  v3 = *(a1 + 40);
  [v1 enumerateSessionDelegatesUsingBlock:v2];
}

void __110__RTIInputSystemServiceSession_beginRemoteTextInputSessionWithID_options_documentTraits_initialDocumentState___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 prepareForInputSession:*(a1 + 32) options:*(a1 + 40)];
  }
}

void __110__RTIInputSystemServiceSession_beginRemoteTextInputSessionWithID_options_documentTraits_initialDocumentState___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) setUuid:*(a1 + 40)];
  [*(a1 + 32) setBeginOptions:*(a1 + 48)];
  [*(a1 + 32) setDocumentTraits:*(a1 + 56)];
  [*(a1 + 32) setDocumentState:*(a1 + 64)];
  v2 = *(a1 + 32);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __110__RTIInputSystemServiceSession_beginRemoteTextInputSessionWithID_options_documentTraits_initialDocumentState___block_invoke_4;
  v15[3] = &unk_1E75141E0;
  v15[4] = v2;
  v16 = *(a1 + 48);
  [v2 _updateAppIdsFromConnectionOnInternalQueueWithCompletionHandler:v15];
  v3 = *(a1 + 32);
  v4 = *(v3 + 88);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __110__RTIInputSystemServiceSession_beginRemoteTextInputSessionWithID_options_documentTraits_initialDocumentState___block_invoke_6;
  v14[3] = &unk_1E7514258;
  v14[4] = v3;
  [v4 enumerateKeysAndObjectsUsingBlock:v14];
  [*(*(a1 + 32) + 88) removeAllObjects];
  v5 = *(a1 + 32);
  v6 = *(v5 + 96);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __110__RTIInputSystemServiceSession_beginRemoteTextInputSessionWithID_options_documentTraits_initialDocumentState___block_invoke_7;
  v13[3] = &unk_1E7514280;
  v13[4] = v5;
  [v6 enumerateKeysAndObjectsUsingBlock:v13];
  [*(*(a1 + 32) + 96) removeAllObjects];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 136));
  v8 = [WeakRetained remoteObjectProxy];
  v9 = *(a1 + 40);
  v10 = objc_loadWeakRetained((*(a1 + 32) + 136));
  v11 = [v10 serviceName];
  v12 = [RTIServiceOptions defaultServiceOptionsForService:v11];
  [v8 remoteTextInputSessionWithID:v9 didUpdateServiceOptions:v12];
}

void __110__RTIInputSystemServiceSession_beginRemoteTextInputSessionWithID_options_documentTraits_initialDocumentState___block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __110__RTIInputSystemServiceSession_beginRemoteTextInputSessionWithID_options_documentTraits_initialDocumentState___block_invoke_5;
  v2[3] = &unk_1E7514230;
  v2[4] = v1;
  v3 = *(a1 + 40);
  [v1 enumerateSessionDelegatesUsingBlock:v2];
}

void __110__RTIInputSystemServiceSession_beginRemoteTextInputSessionWithID_options_documentTraits_initialDocumentState___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 inputSessionDidBegin:*(a1 + 32) options:*(a1 + 40)];
  }

  else if (objc_opt_respondsToSelector())
  {
    [v3 inputSessionDidBegin:*(a1 + 32)];
  }
}

- (void)remoteTextInputSessionWithID:(id)a3 documentDidChange:(id)a4
{
  v6 = a3;
  v7 = a4;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __79__RTIInputSystemServiceSession_remoteTextInputSessionWithID_documentDidChange___block_invoke;
  block[3] = &unk_1E75142D0;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(internalQueue, block);
}

void __79__RTIInputSystemServiceSession_remoteTextInputSessionWithID_documentDidChange___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) uuid];
  v3 = [v2 isEqual:*(a1 + 40)];

  if (v3)
  {
    v9 = 0;
    if (*(a1 + 48))
    {
      v4 = [*(a1 + 32) documentState];
      v5 = [*(a1 + 48) copy];
      v6 = [v4 documentStateByMergingInDocumentState:v5 mergeResultOut:&v9];
      [*(a1 + 32) setDocumentState:v6];

      if (v9)
      {
        v7 = *(a1 + 32);
        v8[0] = MEMORY[0x1E69E9820];
        v8[1] = 3221225472;
        v8[2] = __79__RTIInputSystemServiceSession_remoteTextInputSessionWithID_documentDidChange___block_invoke_2;
        v8[3] = &unk_1E7513FD0;
        v8[4] = v7;
        v8[5] = v9;
        [v7 enumerateSessionDelegatesUsingBlock:v8];
      }
    }
  }
}

void __79__RTIInputSystemServiceSession_remoteTextInputSessionWithID_documentDidChange___block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = *(a1 + 32);
    v4 = [v3 documentState];
    [v6 inputSession:v3 documentStateDidChange:v4 withMergeResult:*(a1 + 40)];
  }

  else
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      goto LABEL_6;
    }

    v5 = *(a1 + 32);
    v4 = [v5 documentState];
    [v6 inputSession:v5 documentStateDidChange:v4];
  }

LABEL_6:
}

- (void)endRemoteTextInputSessionWithID:(id)a3 options:(id)a4 completion:(id)a5
{
  v27 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = RTIInputSessionChangeLogFacility();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v24 = "[RTIInputSystemServiceSession endRemoteTextInputSessionWithID:options:completion:]";
    v25 = 2112;
    v26 = v8;
    _os_log_impl(&dword_19A2A6000, v11, OS_LOG_TYPE_DEFAULT, "%s  End input session: %@", buf, 0x16u);
  }

  v12 = [(RTIInputSystemSession *)self uuid];
  v13 = [v12 isEqual:v8];

  if (v13)
  {
    self->_lifecycleDispatchState = 2;
  }

  internalQueue = self->_internalQueue;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __83__RTIInputSystemServiceSession_endRemoteTextInputSessionWithID_options_completion___block_invoke;
  v19[3] = &unk_1E7514320;
  v19[4] = self;
  v20 = v8;
  v21 = v9;
  v22 = v10;
  v15 = v9;
  v16 = v10;
  v17 = v8;
  dispatch_async(internalQueue, v19);

  v18 = *MEMORY[0x1E69E9840];
}

void __83__RTIInputSystemServiceSession_endRemoteTextInputSessionWithID_options_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) uuid];
  v3 = [v2 isEqual:*(a1 + 40)];

  if (v3)
  {
    v4 = dispatch_group_create();
    v5 = dispatch_time(0, 2100000000);
    v6 = *(a1 + 32);
    v21 = MEMORY[0x1E69E9820];
    v22 = 3221225472;
    v23 = __83__RTIInputSystemServiceSession_endRemoteTextInputSessionWithID_options_completion___block_invoke_2;
    v24 = &unk_1E75142F8;
    v28 = *(a1 + 56);
    v7 = v4;
    v8 = *(a1 + 32);
    v25 = v7;
    v26 = v8;
    v27 = *(a1 + 48);
    [v6 enumerateSessionDelegatesUsingBlock:&v21];
    if (*(a1 + 56))
    {
      if (dispatch_group_wait(v7, v5))
      {
        v14 = RTIInputSessionChangeLogFacility();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          __83__RTIInputSystemServiceSession_endRemoteTextInputSessionWithID_options_completion___block_invoke_cold_1((a1 + 40));
        }
      }

      (*(*(a1 + 56) + 16))(*(a1 + 56), v9, v10, v11, v12, v13);
    }

    v15 = [*(a1 + 32) documentTraits];
    v16 = [v15 textInputTraits];
    v17 = [v16 secureTextEntry];

    if (v17)
    {
      v18 = objc_alloc_init(RTIDocumentState);
      [*(a1 + 32) setDocumentState:v18];
    }
  }

  else
  {
    v19 = *(a1 + 56);
    if (v19)
    {
      v20 = *(v19 + 16);

      v20();
    }
  }
}

void __83__RTIInputSystemServiceSession_endRemoteTextInputSessionWithID_options_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 56) && (objc_opt_respondsToSelector() & 1) != 0)
  {
    dispatch_group_enter(*(a1 + 32));
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __83__RTIInputSystemServiceSession_endRemoteTextInputSessionWithID_options_completion___block_invoke_3;
    v6[3] = &unk_1E75140C8;
    v7 = *(a1 + 32);
    [v3 inputSessionDidEnd:v4 options:v5 completion:v6];
  }

  else if (objc_opt_respondsToSelector())
  {
    [v3 inputSessionDidEnd:*(a1 + 40) options:*(a1 + 48)];
  }

  else if (objc_opt_respondsToSelector())
  {
    [v3 inputSessionDidEnd:*(a1 + 40)];
  }
}

- (void)remoteTextInputSessionWithID:(id)a3 documentTraitsDidChange:(id)a4
{
  v6 = a3;
  v7 = a4;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __85__RTIInputSystemServiceSession_remoteTextInputSessionWithID_documentTraitsDidChange___block_invoke;
  block[3] = &unk_1E75142D0;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(internalQueue, block);
}

void __85__RTIInputSystemServiceSession_remoteTextInputSessionWithID_documentTraitsDidChange___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) uuid];
  v3 = [v2 isEqual:*(a1 + 40)];

  if (v3)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __85__RTIInputSystemServiceSession_remoteTextInputSessionWithID_documentTraitsDidChange___block_invoke_2;
    v10[3] = &unk_1E75140C8;
    v10[4] = *(a1 + 32);
    v4 = MEMORY[0x19A8FDFF0](v10);
    v5 = [*(a1 + 32) documentTraits];

    if (v5)
    {
      v6 = [*(a1 + 32) documentTraits];
      [v6 copyContextualPropertiesFromDocumentTraits:*(a1 + 48)];

      v4[2](v4);
    }

    else
    {
      [*(a1 + 32) setDocumentTraits:*(a1 + 48)];
      v7 = *(a1 + 32);
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __85__RTIInputSystemServiceSession_remoteTextInputSessionWithID_documentTraitsDidChange___block_invoke_4;
      v8[3] = &unk_1E7514348;
      v9 = v4;
      [v7 _updateAppIdsFromConnectionOnInternalQueueWithCompletionHandler:v8];
    }
  }
}

uint64_t __85__RTIInputSystemServiceSession_remoteTextInputSessionWithID_documentTraitsDidChange___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __85__RTIInputSystemServiceSession_remoteTextInputSessionWithID_documentTraitsDidChange___block_invoke_3;
  v3[3] = &unk_1E7513FA8;
  v3[4] = v1;
  return [v1 enumerateSessionDelegatesUsingBlock:v3];
}

void __85__RTIInputSystemServiceSession_remoteTextInputSessionWithID_documentTraitsDidChange___block_invoke_3(uint64_t a1, void *a2)
{
  v5 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = *(a1 + 32);
    v4 = [v3 documentTraits];
    [v5 inputSession:v3 documentTraitsDidChange:v4];
  }
}

- (void)remoteTextInputSessionWithID:(id)a3 didChangePause:(BOOL)a4 withReason:(id)a5
{
  v6 = a4;
  v25 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = RTILogFacility();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v20 = "[RTIInputSystemServiceSession remoteTextInputSessionWithID:didChangePause:withReason:]";
    v21 = 2112;
    v22 = v8;
    v23 = 1024;
    v24 = v6;
    _os_log_impl(&dword_19A2A6000, v10, OS_LOG_TYPE_DEFAULT, "%s  Input session: %@ did change pause: %d", buf, 0x1Cu);
  }

  internalQueue = self->_internalQueue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __87__RTIInputSystemServiceSession_remoteTextInputSessionWithID_didChangePause_withReason___block_invoke;
  v15[3] = &unk_1E7514398;
  v15[4] = self;
  v16 = v8;
  v18 = v6;
  v17 = v9;
  v12 = v9;
  v13 = v8;
  dispatch_async(internalQueue, v15);

  v14 = *MEMORY[0x1E69E9840];
}

void __87__RTIInputSystemServiceSession_remoteTextInputSessionWithID_didChangePause_withReason___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) uuid];
  v3 = [v2 isEqual:*(a1 + 40)];

  if (v3)
  {
    [*(a1 + 32) setIsPaused:*(a1 + 56)];
    v4 = *(a1 + 32);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __87__RTIInputSystemServiceSession_remoteTextInputSessionWithID_didChangePause_withReason___block_invoke_2;
    v5[3] = &unk_1E7514370;
    v5[4] = v4;
    v7 = *(a1 + 56);
    v6 = *(a1 + 48);
    [v4 enumerateSessionDelegatesUsingBlock:v5];
  }
}

void __87__RTIInputSystemServiceSession_remoteTextInputSessionWithID_didChangePause_withReason___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 inputSession:*(a1 + 32) didChangePause:*(a1 + 48) withReason:*(a1 + 40)];
  }
}

- (void)remoteTextInputSessionWithID:(id)a3 textSuggestionsChanged:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = RTILogFacility();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v17 = "[RTIInputSystemServiceSession remoteTextInputSessionWithID:textSuggestionsChanged:]";
    v18 = 2112;
    v19 = v6;
    _os_log_impl(&dword_19A2A6000, v8, OS_LOG_TYPE_DEFAULT, "%s  Input session: %@ text suggestions changed", buf, 0x16u);
  }

  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __84__RTIInputSystemServiceSession_remoteTextInputSessionWithID_textSuggestionsChanged___block_invoke;
  block[3] = &unk_1E75142D0;
  block[4] = self;
  v14 = v6;
  v15 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_async(internalQueue, block);

  v12 = *MEMORY[0x1E69E9840];
}

void __84__RTIInputSystemServiceSession_remoteTextInputSessionWithID_textSuggestionsChanged___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) uuid];
  v3 = [v2 isEqual:*(a1 + 40)];

  if (v3)
  {
    v4 = *(a1 + 32);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __84__RTIInputSystemServiceSession_remoteTextInputSessionWithID_textSuggestionsChanged___block_invoke_2;
    v5[3] = &unk_1E7514230;
    v5[4] = v4;
    v6 = *(a1 + 48);
    [v4 enumerateSessionDelegatesUsingBlock:v5];
  }
}

void __84__RTIInputSystemServiceSession_remoteTextInputSessionWithID_textSuggestionsChanged___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 inputSession:*(a1 + 32) textSuggestionsChanged:*(a1 + 40)];
  }
}

- (void)remoteTextInputSessionWithID:(id)a3 didAddSupplementalLexicon:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = RTILogFacility();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v17 = "[RTIInputSystemServiceSession remoteTextInputSessionWithID:didAddSupplementalLexicon:]";
    v18 = 2112;
    v19 = v6;
    _os_log_impl(&dword_19A2A6000, v8, OS_LOG_TYPE_DEFAULT, "%s  Input session: %@ didAddSupplementalLexicon", buf, 0x16u);
  }

  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __87__RTIInputSystemServiceSession_remoteTextInputSessionWithID_didAddSupplementalLexicon___block_invoke;
  block[3] = &unk_1E75142D0;
  block[4] = self;
  v14 = v7;
  v15 = v6;
  v10 = v6;
  v11 = v7;
  dispatch_async(internalQueue, block);

  v12 = *MEMORY[0x1E69E9840];
}

uint64_t __87__RTIInputSystemServiceSession_remoteTextInputSessionWithID_didAddSupplementalLexicon___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) uuid];

  v3 = *(a1 + 32);
  if (v2)
  {
    v5 = *(a1 + 40);
    v4 = *(a1 + 48);

    return [v3 _queue_sessionWithID:v4 didAddSupplementalLexicon:v5];
  }

  else
  {
    v7 = v3[11];
    if (!v7)
    {
      v8 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:1];
      v9 = *(a1 + 32);
      v10 = *(v9 + 88);
      *(v9 + 88) = v8;

      v7 = *(*(a1 + 32) + 88);
    }

    v11 = *(a1 + 40);
    v12 = *(a1 + 48);

    return [v7 setObject:v11 forKey:v12];
  }
}

- (void)_queue_sessionWithID:(id)a3 didAddSupplementalLexicon:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(RTIInputSystemSession *)self uuid];
  v9 = [v8 isEqual:v7];

  if (v9)
  {
    supplementalLexicons = self->_supplementalLexicons;
    if (!supplementalLexicons)
    {
      v11 = [MEMORY[0x1E695DFA8] setWithCapacity:1];
      v12 = self->_supplementalLexicons;
      self->_supplementalLexicons = v11;

      supplementalLexicons = self->_supplementalLexicons;
    }

    [(NSMutableSet *)supplementalLexicons addObject:v6];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __79__RTIInputSystemServiceSession__queue_sessionWithID_didAddSupplementalLexicon___block_invoke;
    v13[3] = &unk_1E7514230;
    v13[4] = self;
    v14 = v6;
    [(RTIInputSystemSession *)self enumerateSessionDelegatesUsingBlock:v13];
  }
}

void __79__RTIInputSystemServiceSession__queue_sessionWithID_didAddSupplementalLexicon___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 inputSession:*(a1 + 32) didAddSupplementalLexicon:*(a1 + 40)];
  }
}

- (void)remoteTextInputSessionWithID:(id)a3 didAddRTISupplementalLexicon:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = RTILogFacility();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v17 = "[RTIInputSystemServiceSession remoteTextInputSessionWithID:didAddRTISupplementalLexicon:]";
    v18 = 2112;
    v19 = v6;
    _os_log_impl(&dword_19A2A6000, v8, OS_LOG_TYPE_DEFAULT, "%s  Input session: %@ didAddRTISupplementalLexicon", buf, 0x16u);
  }

  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __90__RTIInputSystemServiceSession_remoteTextInputSessionWithID_didAddRTISupplementalLexicon___block_invoke;
  block[3] = &unk_1E75142D0;
  block[4] = self;
  v14 = v7;
  v15 = v6;
  v10 = v6;
  v11 = v7;
  dispatch_async(internalQueue, block);

  v12 = *MEMORY[0x1E69E9840];
}

uint64_t __90__RTIInputSystemServiceSession_remoteTextInputSessionWithID_didAddRTISupplementalLexicon___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) uuid];

  v3 = *(a1 + 32);
  if (v2)
  {
    v5 = *(a1 + 40);
    v4 = *(a1 + 48);

    return [v3 _queue_sessionWithID:v4 didAddRTISupplementalLexicon:v5];
  }

  else
  {
    v7 = v3[12];
    if (!v7)
    {
      v8 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:1];
      v9 = *(a1 + 32);
      v10 = *(v9 + 96);
      *(v9 + 96) = v8;

      v7 = *(*(a1 + 32) + 96);
    }

    v11 = *(a1 + 40);
    v12 = *(a1 + 48);

    return [v7 setObject:v11 forKey:v12];
  }
}

- (void)_queue_sessionWithID:(id)a3 didAddRTISupplementalLexicon:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(RTIInputSystemSession *)self uuid];
  v9 = [v8 isEqual:v7];

  if (v9)
  {
    rtiSupplementalLexicons = self->_rtiSupplementalLexicons;
    if (!rtiSupplementalLexicons)
    {
      v11 = [MEMORY[0x1E695DFA8] setWithCapacity:1];
      v12 = self->_rtiSupplementalLexicons;
      self->_rtiSupplementalLexicons = v11;

      rtiSupplementalLexicons = self->_rtiSupplementalLexicons;
    }

    [(NSMutableSet *)rtiSupplementalLexicons addObject:v6];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __82__RTIInputSystemServiceSession__queue_sessionWithID_didAddRTISupplementalLexicon___block_invoke;
    v13[3] = &unk_1E7514230;
    v13[4] = self;
    v14 = v6;
    [(RTIInputSystemSession *)self enumerateSessionDelegatesUsingBlock:v13];
  }
}

void __82__RTIInputSystemServiceSession__queue_sessionWithID_didAddRTISupplementalLexicon___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 inputSession:*(a1 + 32) didAddRTISupplementalLexicon:*(a1 + 40)];
  }
}

- (void)remoteTextInputSessionWithID:(id)a3 didRemoveSupplementalLexiconWithIdentifier:(unint64_t)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = RTILogFacility();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v15 = "[RTIInputSystemServiceSession remoteTextInputSessionWithID:didRemoveSupplementalLexiconWithIdentifier:]";
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&dword_19A2A6000, v7, OS_LOG_TYPE_DEFAULT, "%s  Input session: %@ didRemoveSupplementalLexiconWithIdentifier", buf, 0x16u);
  }

  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __104__RTIInputSystemServiceSession_remoteTextInputSessionWithID_didRemoveSupplementalLexiconWithIdentifier___block_invoke;
  block[3] = &unk_1E7514410;
  block[4] = self;
  v12 = v6;
  v13 = a4;
  v9 = v6;
  dispatch_async(internalQueue, block);

  v10 = *MEMORY[0x1E69E9840];
}

void __104__RTIInputSystemServiceSession_remoteTextInputSessionWithID_didRemoveSupplementalLexiconWithIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) uuid];
  v3 = [v2 isEqual:*(a1 + 40)];

  if (v3)
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x3032000000;
    v12 = __Block_byref_object_copy_;
    v13 = __Block_byref_object_dispose_;
    v14 = 0;
    v4 = *(*(a1 + 32) + 72);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __104__RTIInputSystemServiceSession_remoteTextInputSessionWithID_didRemoveSupplementalLexiconWithIdentifier___block_invoke_2;
    v8[3] = &unk_1E75143C0;
    v5 = *(a1 + 48);
    v8[4] = &v9;
    v8[5] = v5;
    [v4 enumerateObjectsUsingBlock:v8];
    if (v10[5])
    {
      [*(*(a1 + 32) + 72) removeObject:?];
      v6 = *(a1 + 32);
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __104__RTIInputSystemServiceSession_remoteTextInputSessionWithID_didRemoveSupplementalLexiconWithIdentifier___block_invoke_3;
      v7[3] = &unk_1E75143E8;
      v7[4] = v6;
      v7[5] = &v9;
      [v6 enumerateSessionDelegatesUsingBlock:v7];
    }

    _Block_object_dispose(&v9, 8);
  }
}

void __104__RTIInputSystemServiceSession_remoteTextInputSessionWithID_didRemoveSupplementalLexiconWithIdentifier___block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  v6 = a2;
  if ([v6 identifier] == *(a1 + 40))
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a3 = 1;
  }
}

void __104__RTIInputSystemServiceSession_remoteTextInputSessionWithID_didRemoveSupplementalLexiconWithIdentifier___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 inputSession:*(a1 + 32) didRemoveSupplementalLexicon:*(*(*(a1 + 40) + 8) + 40)];
  }
}

- (void)remoteTextInputSessionWithID:(id)a3 didRemoveRTISupplementalLexiconWithIdentifier:(unint64_t)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = RTILogFacility();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v15 = "[RTIInputSystemServiceSession remoteTextInputSessionWithID:didRemoveRTISupplementalLexiconWithIdentifier:]";
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&dword_19A2A6000, v7, OS_LOG_TYPE_DEFAULT, "%s  Input session: %@ didRemoveRTISupplementalLexiconWithIdentifier", buf, 0x16u);
  }

  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __107__RTIInputSystemServiceSession_remoteTextInputSessionWithID_didRemoveRTISupplementalLexiconWithIdentifier___block_invoke;
  block[3] = &unk_1E7514410;
  block[4] = self;
  v12 = v6;
  v13 = a4;
  v9 = v6;
  dispatch_async(internalQueue, block);

  v10 = *MEMORY[0x1E69E9840];
}

void __107__RTIInputSystemServiceSession_remoteTextInputSessionWithID_didRemoveRTISupplementalLexiconWithIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) uuid];
  v3 = [v2 isEqual:*(a1 + 40)];

  if (v3)
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x3032000000;
    v12 = __Block_byref_object_copy_;
    v13 = __Block_byref_object_dispose_;
    v14 = 0;
    v4 = *(*(a1 + 32) + 80);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __107__RTIInputSystemServiceSession_remoteTextInputSessionWithID_didRemoveRTISupplementalLexiconWithIdentifier___block_invoke_2;
    v8[3] = &unk_1E7514438;
    v5 = *(a1 + 48);
    v8[4] = &v9;
    v8[5] = v5;
    [v4 enumerateObjectsUsingBlock:v8];
    if (v10[5])
    {
      [*(*(a1 + 32) + 80) removeObject:?];
      v6 = *(a1 + 32);
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __107__RTIInputSystemServiceSession_remoteTextInputSessionWithID_didRemoveRTISupplementalLexiconWithIdentifier___block_invoke_3;
      v7[3] = &unk_1E75143E8;
      v7[4] = v6;
      v7[5] = &v9;
      [v6 enumerateSessionDelegatesUsingBlock:v7];
    }

    _Block_object_dispose(&v9, 8);
  }
}

void __107__RTIInputSystemServiceSession_remoteTextInputSessionWithID_didRemoveRTISupplementalLexiconWithIdentifier___block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  v6 = a2;
  if ([v6 identifier] == *(a1 + 40))
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a3 = 1;
  }
}

void __107__RTIInputSystemServiceSession_remoteTextInputSessionWithID_didRemoveRTISupplementalLexiconWithIdentifier___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 inputSession:*(a1 + 32) didRemoveRTISupplementalLexicon:*(*(*(a1 + 40) + 8) + 40)];
  }
}

- (void)remoteTextInputSessionWithID:(id)a3 performInputOperation:(id)a4
{
  v6 = a3;
  v7 = a4;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __83__RTIInputSystemServiceSession_remoteTextInputSessionWithID_performInputOperation___block_invoke;
  block[3] = &unk_1E75142D0;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(internalQueue, block);
}

void __83__RTIInputSystemServiceSession_remoteTextInputSessionWithID_performInputOperation___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) uuid];
  v3 = [v2 isEqual:*(a1 + 40)];

  if (v3)
  {
    v4 = *(a1 + 32);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __83__RTIInputSystemServiceSession_remoteTextInputSessionWithID_performInputOperation___block_invoke_2;
    v5[3] = &unk_1E7514230;
    v5[4] = v4;
    v6 = *(a1 + 48);
    [v4 enumerateSessionDelegatesUsingBlock:v5];
  }
}

void __83__RTIInputSystemServiceSession_remoteTextInputSessionWithID_performInputOperation___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 inputSession:*(a1 + 32) performInputOperation:*(a1 + 40)];
  }
}

- (void)remoteTextInputSessionWithID:(id)a3 performInputOperation:(id)a4 withResponse:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  internalQueue = self->_internalQueue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __96__RTIInputSystemServiceSession_remoteTextInputSessionWithID_performInputOperation_withResponse___block_invoke;
  v15[3] = &unk_1E7514320;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v9;
  v13 = v10;
  v14 = v8;
  dispatch_async(internalQueue, v15);
}

void __96__RTIInputSystemServiceSession_remoteTextInputSessionWithID_performInputOperation_withResponse___block_invoke(id *a1)
{
  v2 = [a1[4] uuid];
  v3 = [v2 isEqual:a1[5]];

  if (v3)
  {
    v15[0] = 0;
    v15[1] = v15;
    v15[2] = 0x2020000000;
    v16 = 0;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __96__RTIInputSystemServiceSession_remoteTextInputSessionWithID_performInputOperation_withResponse___block_invoke_2;
    v11[3] = &unk_1E7514460;
    v4 = a1[4];
    v5 = a1[6];
    v6 = a1[7];
    v14 = v15;
    *&v7 = a1[5];
    *(&v7 + 1) = v6;
    *&v8 = v4;
    *(&v8 + 1) = v5;
    v12 = v8;
    v13 = v7;
    [v4 enumerateSessionDelegatesUsingBlock:v11];

    _Block_object_dispose(v15, 8);
  }

  else
  {
    v9 = a1[7];
    if (v9)
    {
      v10 = *(v9 + 2);

      v10();
    }
  }
}

void __96__RTIInputSystemServiceSession_remoteTextInputSessionWithID_performInputOperation_withResponse___block_invoke_2(void *a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 inputSession:a1[4] performInputOperation:a1[5] withResponse:a1[7]];
    *(*(a1[8] + 8) + 24) = 1;
  }

  if ((*(*(a1[8] + 8) + 24) & 1) == 0 && a1[7])
  {
    v4 = RTILogFacility();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __96__RTIInputSystemServiceSession_remoteTextInputSessionWithID_performInputOperation_withResponse___block_invoke_2_cold_1(a1);
    }

    (*(a1[7] + 16))();
  }
}

- (void)handleTextActionPayload:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v6 = [v4 data];
    v5 = +[RTIInputSystemDataPayload payloadWithData:version:](RTIInputSystemDataPayload, "payloadWithData:version:", v6, [v4 version]);
  }

  payloadVersion = self->_payloadVersion;
  v8 = [v4 version];
  if (payloadVersion >= v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = payloadVersion;
  }

  self->_payloadVersion = v9;
  WeakRetained = objc_loadWeakRetained(&self->_connection);
  if (WeakRetained)
  {
    if ([v5 version] == 1)
    {
      v11 = [v5 textOperations];

      if (v11)
      {
        v12 = [WeakRetained remoteObjectProxy];
        v13 = [v5 textOperations];
        [v12 performTextOperations:v13];

        objc_initWeak(&location, self);
        internalQueue = self->_internalQueue;
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __56__RTIInputSystemServiceSession_handleTextActionPayload___block_invoke;
        block[3] = &unk_1E7514488;
        objc_copyWeak(&v18, &location);
        v17 = v5;
        dispatch_async(internalQueue, block);

        objc_destroyWeak(&v18);
        objc_destroyWeak(&location);
      }
    }
  }

  else
  {
    v15 = RTIInputSessionChangeLogFacility();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [RTIInputSystemServiceSession handleTextActionPayload:];
    }
  }
}

void __56__RTIInputSystemServiceSession_handleTextActionPayload___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v3 = [*(a1 + 32) textOperations];
    v4 = [v5 documentState];
    [v5 _applyLocalTextOperations:v3 toDocumentState:v4];

    WeakRetained = v5;
  }
}

- (NSXPCConnection)connection
{
  WeakRetained = objc_loadWeakRetained(&self->_connection);

  return WeakRetained;
}

void __51__RTIInputSystemServiceSession_initWithConnection___block_invoke_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)bundleIdentifier
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)valueForEntitlement:(uint64_t *)a1 .cold.1(uint64_t *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)valueForEntitlement:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_flushOperationsImplWithResultHandler:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __70__RTIInputSystemServiceSession__flushOperationsImplWithResultHandler___block_invoke_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void __50__RTIInputSystemServiceSession_setDefaultRequest___block_invoke_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __66__RTIInputSystemServiceSession_performDocumentRequest_completion___block_invoke_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __66__RTIInputSystemServiceSession_performDocumentRequest_completion___block_invoke_100_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void __83__RTIInputSystemServiceSession_endRemoteTextInputSessionWithID_options_completion___block_invoke_cold_1(uint64_t *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x1E69E9840];
}

void __96__RTIInputSystemServiceSession_remoteTextInputSessionWithID_performInputOperation_withResponse___block_invoke_2_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 48);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)handleTextActionPayload:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

@end