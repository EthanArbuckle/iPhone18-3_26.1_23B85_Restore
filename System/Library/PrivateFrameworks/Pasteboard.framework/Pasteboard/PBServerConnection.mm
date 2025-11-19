@interface PBServerConnection
+ (id)defaultConnection;
+ (unint64_t)beginListeningToPasteboardChangeNotifications;
+ (void)simulateCrashReportForAuthorizationWithAuthenticationMessage:(id)a3;
- (NSXPCConnection)serverConnection;
- (PBServerConnection)init;
- (id)localGeneralPasteboardWithAuthenticationBlock:(id)a3 dataOwnerBlock:(id)a4 error:(id *)a5;
- (id)remoteContentForLayerContextWithId:(unint64_t)a3 slotStyle:(id)a4 pasteButtonTag:(id)a5 error:(id *)a6;
- (id)requestSecurePasteAuthenticationMessageWithContext:(unint64_t)a3 forClientVersionedPID:(int64_t)a4 error:(id *)a5;
- (id)savePasteboard:(id)a3 dataProviderEndpoint:(id)a4 error:(id *)a5;
- (unint64_t)deletePersistentPasteboardWithName:(id)a3 error:(id *)a4;
- (void)deletePersistentPasteboardWithName:(id)a3 completionBlock:(id)a4;
- (void)didPastePasteboard:(id)a3;
- (void)getAllPasteboardsCompletionBlock:(id)a3;
- (void)helloCompletionBlock:(id)a3;
- (void)localGeneralPasteboardWithAuthenticationBlock:(id)a3 dataOwnerBlock:(id)a4 completionBlock:(id)a5;
- (void)performJanitorialTasksCompletionBlock:(id)a3;
- (void)requestItemFromPasteboardWithName:(id)a3 UUID:(id)a4 authenticationMessage:(id)a5 itemIndex:(unint64_t)a6 typeIdentifier:(id)a7 dataOwner:(int64_t)a8 loadContext:(id)a9 completionBlock:(id)a10;
- (void)requestPatternDetectionsFromPasteboardWithName:(id)a3 UUID:(id)a4 authenticationMessage:(id)a5 itemIndex:(unint64_t)a6 patterns:(id)a7 needValues:(BOOL)a8 dataOwner:(int64_t)a9 completionBlock:(id)a10;
- (void)savePasteboard:(id)a3 dataProviderEndpoint:(id)a4 completionBlock:(id)a5;
@end

@implementation PBServerConnection

+ (id)defaultConnection
{
  if (qword_280AEA828 != -1)
  {
    dispatch_once(&qword_280AEA828, &__block_literal_global_0);
  }

  v3 = _MergedGlobals_0;

  return v3;
}

uint64_t __39__PBServerConnection_defaultConnection__block_invoke()
{
  _MergedGlobals_0 = objc_alloc_init(PBServerConnection);

  return MEMORY[0x2821F96F8]();
}

- (PBServerConnection)init
{
  v6.receiver = self;
  v6.super_class = PBServerConnection;
  v2 = [(PBServerConnection *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.Pasteboard.PBServerConnection-member-queue", 0);
    memberQueue = v2->_memberQueue;
    v2->_memberQueue = v3;
  }

  return v2;
}

+ (unint64_t)beginListeningToPasteboardChangeNotifications
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v2 = _notificationQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__PBServerConnection_beginListeningToPasteboardChangeNotifications__block_invoke;
  block[3] = &unk_279A06978;
  block[4] = &v6;
  dispatch_sync(v2, block);

  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __67__PBServerConnection_beginListeningToPasteboardChangeNotifications__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  if (_notificationQueue_token < 0)
  {
    v2 = [@"com.apple.pasteboard.notify.changed" UTF8String];
    v3 = _notificationQueue();
    v4 = notify_register_dispatch(v2, &_notificationQueue_token, v3, &__block_literal_global_34);

    v5 = _PBLog();
    v6 = v5;
    if (v4)
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v9[0] = 67109120;
        v9[1] = v4;
        _os_log_error_impl(&dword_25E138000, v6, OS_LOG_TYPE_ERROR, "Could not register for global pasteboard change notifications. Error: %d", v9, 8u);
      }
    }

    else if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      LOWORD(v9[0]) = 0;
      _os_log_impl(&dword_25E138000, v6, OS_LOG_TYPE_INFO, "Began listening to global pasteboard change notifications.", v9, 2u);
    }
  }

  result = _notificationQueue_getState();
  *(*(*(a1 + 32) + 8) + 24) = result;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (NSXPCConnection)serverConnection
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__0;
  v11 = __Block_byref_object_dispose__0;
  v12 = 0;
  v3 = [(PBServerConnection *)self memberQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __38__PBServerConnection_serverConnection__block_invoke;
  v6[3] = &unk_279A066F0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __38__PBServerConnection_serverConnection__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) memberQ_serverConnection];

  if (!v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.pasteboard.pasted" options:4096];
    v4 = PBNewClientToServerXPCInterface();
    [v3 setRemoteObjectInterface:v4];

    [*(a1 + 32) setMemberQ_serverConnection:v3];
    [v3 resume];
  }

  v5 = [*(a1 + 32) memberQ_serverConnection];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  return MEMORY[0x2821F96F8]();
}

+ (void)simulateCrashReportForAuthorizationWithAuthenticationMessage:(id)a3
{
  v4 = _PBLog();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT);
  if (a3)
  {
    if (v5)
    {
      v8 = 0;
      v6 = "This application is not expected to prompt for paste authorization. A paste authentication message was sent, but rejected by pasted. Consult the logs from pasted to see why paste authentication was rejected.";
      v7 = &v8;
LABEL_7:
      _os_log_fault_impl(&dword_25E138000, v4, OS_LOG_TYPE_FAULT, v6, v7, 2u);
    }
  }

  else if (v5)
  {
    *buf = 0;
    v6 = "This application is not expected to prompt for paste authorization. Please adopt secure paste controls instead.";
    v7 = buf;
    goto LABEL_7;
  }
}

- (void)helloCompletionBlock:(id)a3
{
  v4 = a3;
  v5 = [(PBServerConnection *)self serverConnection];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __43__PBServerConnection_helloCompletionBlock___block_invoke;
  v9[3] = &unk_279A06718;
  v10 = v4;
  v6 = v4;
  v7 = _loggingErrorHandler("[PBServerConnection helloCompletionBlock:]", v9);
  v8 = [v5 remoteObjectProxyWithErrorHandler:v7];

  [v8 helloCompletionBlock:v6];
}

uint64_t __43__PBServerConnection_helloCompletionBlock___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __107__PBServerConnection_pasteboardWithName_createIfNeeded_authenticationBlock_dataOwnerBlock_completionBlock___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = PBCannotConnectToServerError(0);
    (*(v1 + 16))(v1, 0, v2);
  }
}

void __107__PBServerConnection_pasteboardWithName_createIfNeeded_authenticationBlock_dataOwnerBlock_completionBlock___block_invoke_5(void *a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = _PBLog();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v12 = a1[4];
      v13 = 138412546;
      v14 = v12;
      v15 = 2112;
      v16 = v6;
      _os_log_error_impl(&dword_25E138000, v8, OS_LOG_TYPE_ERROR, "...retrieving pasteboard named %@ failed with error: %@", &v13, 0x16u);
    }
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = a1[4];
      v13 = 138412290;
      v14 = v9;
      _os_log_impl(&dword_25E138000, v8, OS_LOG_TYPE_DEFAULT, "...retrieving pasteboard named %@ completed successfully.", &v13, 0xCu);
    }

    [v5 setUsesServerConnectionToLoadDataWithAuthenticationBlock:a1[5] dataOwnerBlock:a1[6]];
  }

  v10 = a1[7];
  if (v10)
  {
    (*(v10 + 16))(v10, v5, v6);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)localGeneralPasteboardWithAuthenticationBlock:(id)a3 dataOwnerBlock:(id)a4 completionBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(PBServerConnection *)self serverConnection];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __99__PBServerConnection_localGeneralPasteboardWithAuthenticationBlock_dataOwnerBlock_completionBlock___block_invoke;
  v24[3] = &unk_279A06718;
  v12 = v10;
  v25 = v12;
  v13 = _loggingErrorHandler("[PBServerConnection localGeneralPasteboardWithAuthenticationBlock:dataOwnerBlock:completionBlock:]", v24);
  v14 = [v11 remoteObjectProxyWithErrorHandler:v13];

  v15 = _PBLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_25E138000, v15, OS_LOG_TYPE_INFO, "Retrieving local-only general pasteboard.", buf, 2u);
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __99__PBServerConnection_localGeneralPasteboardWithAuthenticationBlock_dataOwnerBlock_completionBlock___block_invoke_7;
  v19[3] = &unk_279A06768;
  v20 = v8;
  v21 = v9;
  v22 = v12;
  v16 = v12;
  v17 = v9;
  v18 = v8;
  [v14 localGeneralPasteboardCompletionBlock:v19];
}

void __99__PBServerConnection_localGeneralPasteboardWithAuthenticationBlock_dataOwnerBlock_completionBlock___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = PBCannotConnectToServerError(0);
    (*(v1 + 16))(v1, 0, v2);
  }
}

void __99__PBServerConnection_localGeneralPasteboardWithAuthenticationBlock_dataOwnerBlock_completionBlock___block_invoke_7(void *a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = _PBLog();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v11 = 138412290;
      v12 = v6;
      _os_log_error_impl(&dword_25E138000, v8, OS_LOG_TYPE_ERROR, "...retrieving local-only general pasteboard failed with error: %@", &v11, 0xCu);
    }
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&dword_25E138000, v8, OS_LOG_TYPE_INFO, "...retrieving local-only general pasteboard completed successfully.", &v11, 2u);
    }

    [v5 setUsesServerConnectionToLoadDataWithAuthenticationBlock:a1[4] dataOwnerBlock:a1[5]];
  }

  v9 = a1[6];
  if (v9)
  {
    (*(v9 + 16))(v9, v5, v6);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)savePasteboard:(id)a3 dataProviderEndpoint:(id)a4 completionBlock:(id)a5
{
  v27 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = [(PBServerConnection *)self serverConnection];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __74__PBServerConnection_savePasteboard_dataProviderEndpoint_completionBlock___block_invoke;
  v23[3] = &unk_279A06718;
  v12 = v9;
  v24 = v12;
  v13 = _loggingErrorHandler("[PBServerConnection savePasteboard:dataProviderEndpoint:completionBlock:]", v23);
  v14 = [v11 remoteObjectProxyWithErrorHandler:v13];

  v15 = _PBLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [v8 name];
    *buf = 138412290;
    v26 = v16;
    _os_log_impl(&dword_25E138000, v15, OS_LOG_TYPE_DEFAULT, "Saving pasteboard name %@", buf, 0xCu);
  }

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __74__PBServerConnection_savePasteboard_dataProviderEndpoint_completionBlock___block_invoke_8;
  v20[3] = &unk_279A06790;
  v21 = v8;
  v22 = v12;
  v17 = v12;
  v18 = v8;
  [v14 savePasteboard:v18 dataProviderEndpoint:v10 completionBlock:v20];

  v19 = *MEMORY[0x277D85DE8];
}

void __74__PBServerConnection_savePasteboard_dataProviderEndpoint_completionBlock___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = PBCannotConnectToServerError(0);
    (*(v1 + 16))(v1, 0, v2);
  }
}

void __74__PBServerConnection_savePasteboard_dataProviderEndpoint_completionBlock___block_invoke_8(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = _PBLog();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v11 = 138412290;
      v12 = v6;
      _os_log_error_impl(&dword_25E138000, v8, OS_LOG_TYPE_ERROR, "...saving pasteboard failed with error: %@", &v11, 0xCu);
    }
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&dword_25E138000, v8, OS_LOG_TYPE_DEFAULT, "...saving pasteboard completed successfully.", &v11, 2u);
    }

    [*(a1 + 32) setChangeCount:{objc_msgSend(v5, "changeCount")}];
    v8 = [v5 sharingToken];
    [*(a1 + 32) setSharingToken:v8];
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    (*(v9 + 16))(v9, v5, v6);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)requestItemFromPasteboardWithName:(id)a3 UUID:(id)a4 authenticationMessage:(id)a5 itemIndex:(unint64_t)a6 typeIdentifier:(id)a7 dataOwner:(int64_t)a8 loadContext:(id)a9 completionBlock:(id)a10
{
  v43 = *MEMORY[0x277D85DE8];
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a7;
  v19 = a10;
  v20 = a9;
  v21 = [(PBServerConnection *)self serverConnection];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __146__PBServerConnection_requestItemFromPasteboardWithName_UUID_authenticationMessage_itemIndex_typeIdentifier_dataOwner_loadContext_completionBlock___block_invoke;
  v33[3] = &unk_279A06718;
  v22 = v19;
  v34 = v22;
  v23 = _loggingErrorHandler("[PBServerConnection requestItemFromPasteboardWithName:UUID:authenticationMessage:itemIndex:typeIdentifier:dataOwner:loadContext:completionBlock:]", v33);
  v24 = [v21 remoteObjectProxyWithErrorHandler:v23];

  v25 = _PBLog();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109890;
    v36 = a6;
    v37 = 2112;
    v38 = v18;
    v39 = 2112;
    v40 = v15;
    v41 = 2112;
    v42 = v16;
    _os_log_impl(&dword_25E138000, v25, OS_LOG_TYPE_DEFAULT, "Requesting item %u of type %@ from pasteboard named %@, UUID %@", buf, 0x26u);
  }

  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __146__PBServerConnection_requestItemFromPasteboardWithName_UUID_authenticationMessage_itemIndex_typeIdentifier_dataOwner_loadContext_completionBlock___block_invoke_10;
  v30[3] = &unk_279A067B8;
  v31 = v17;
  v32 = v22;
  v26 = v22;
  v27 = v17;
  [v24 requestItemFromPasteboardWithName:v15 UUID:v16 authenticationMessage:v27 itemIndex:a6 typeIdentifier:v18 dataOwner:a8 loadContext:v20 completionBlock:v30];

  v28 = *MEMORY[0x277D85DE8];
}

void __146__PBServerConnection_requestItemFromPasteboardWithName_UUID_authenticationMessage_itemIndex_typeIdentifier_dataOwner_loadContext_completionBlock___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = PBCannotConnectToServerError(0);
    (*(v1 + 16))(v1, 0, 0, 0, v2);
  }
}

void __146__PBServerConnection_requestItemFromPasteboardWithName_UUID_authenticationMessage_itemIndex_typeIdentifier_dataOwner_loadContext_completionBlock___block_invoke_10(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v19 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = _PBLog();
  v14 = v13;
  if (v12)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v17 = 138412290;
      v18 = v12;
      _os_log_error_impl(&dword_25E138000, v14, OS_LOG_TYPE_ERROR, "...requesting item failed with error: %@", &v17, 0xCu);
    }
  }

  else if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v17) = 0;
    _os_log_impl(&dword_25E138000, v14, OS_LOG_TYPE_DEFAULT, "...requesting item completed successfully.", &v17, 2u);
  }

  if ([v11 isAuthorizationAdmonished])
  {
    [PBServerConnection simulateCrashReportForAuthorizationWithAuthenticationMessage:*(a1 + 32)];
  }

  v15 = *(a1 + 40);
  if (v15)
  {
    (*(v15 + 16))(v15, v9, v10, v11, v12);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)requestPatternDetectionsFromPasteboardWithName:(id)a3 UUID:(id)a4 authenticationMessage:(id)a5 itemIndex:(unint64_t)a6 patterns:(id)a7 needValues:(BOOL)a8 dataOwner:(int64_t)a9 completionBlock:(id)a10
{
  v27 = a8;
  v40 = *MEMORY[0x277D85DE8];
  v15 = a3;
  v16 = a4;
  v17 = a7;
  v18 = a10;
  v19 = a5;
  v20 = [(PBServerConnection *)self serverConnection];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __152__PBServerConnection_requestPatternDetectionsFromPasteboardWithName_UUID_authenticationMessage_itemIndex_patterns_needValues_dataOwner_completionBlock___block_invoke;
  v30[3] = &unk_279A06718;
  v21 = v18;
  v31 = v21;
  v22 = _loggingErrorHandler("[PBServerConnection requestPatternDetectionsFromPasteboardWithName:UUID:authenticationMessage:itemIndex:patterns:needValues:dataOwner:completionBlock:]", v30);
  v23 = [v20 remoteObjectProxyWithErrorHandler:v22];

  v24 = _PBLog();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    v33 = v17;
    v34 = 2048;
    v35 = a6;
    v36 = 2112;
    v37 = v15;
    v38 = 2112;
    v39 = v16;
    _os_log_impl(&dword_25E138000, v24, OS_LOG_TYPE_DEFAULT, "Requesting detection of patterns %@ from item %lu of pasteboard named %@, UUID %@", buf, 0x2Au);
  }

  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __152__PBServerConnection_requestPatternDetectionsFromPasteboardWithName_UUID_authenticationMessage_itemIndex_patterns_needValues_dataOwner_completionBlock___block_invoke_12;
  v28[3] = &unk_279A067E0;
  v29 = v21;
  v25 = v21;
  [v23 requestPatternDetectionsFromPasteboardWithName:v15 UUID:v16 authenticationMessage:v19 itemIndex:a6 patterns:v17 needValues:v27 dataOwner:a9 completionBlock:v28];

  v26 = *MEMORY[0x277D85DE8];
}

void __152__PBServerConnection_requestPatternDetectionsFromPasteboardWithName_UUID_authenticationMessage_itemIndex_patterns_needValues_dataOwner_completionBlock___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = PBCannotConnectToServerError(0);
    (*(v1 + 16))(v1, 0, v2);
  }
}

void __152__PBServerConnection_requestPatternDetectionsFromPasteboardWithName_UUID_authenticationMessage_itemIndex_patterns_needValues_dataOwner_completionBlock___block_invoke_12(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = _PBLog();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v11 = 138412290;
      v12 = v6;
      _os_log_error_impl(&dword_25E138000, v8, OS_LOG_TYPE_ERROR, "...requesting pattern detection failed with error: %@", &v11, 0xCu);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v11) = 0;
    _os_log_impl(&dword_25E138000, v8, OS_LOG_TYPE_DEFAULT, "...requesting pattern detection completed successfully.", &v11, 2u);
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    (*(v9 + 16))(v9, v5, v6);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)deletePersistentPasteboardWithName:(id)a3 completionBlock:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(PBServerConnection *)self serverConnection];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __73__PBServerConnection_deletePersistentPasteboardWithName_completionBlock___block_invoke;
  v17[3] = &unk_279A06718;
  v9 = v7;
  v18 = v9;
  v10 = _loggingErrorHandler("[PBServerConnection deletePersistentPasteboardWithName:completionBlock:]", v17);
  v11 = [v8 remoteObjectProxyWithErrorHandler:v10];

  v12 = _PBLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v20 = v6;
    _os_log_impl(&dword_25E138000, v12, OS_LOG_TYPE_DEFAULT, "Deleting persistent pasteboard named %@", buf, 0xCu);
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __73__PBServerConnection_deletePersistentPasteboardWithName_completionBlock___block_invoke_14;
  v15[3] = &unk_279A06808;
  v16 = v9;
  v13 = v9;
  [v11 deletePersistentPasteboardWithName:v6 completionBlock:v15];

  v14 = *MEMORY[0x277D85DE8];
}

void __73__PBServerConnection_deletePersistentPasteboardWithName_completionBlock___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = PBCannotConnectToServerError(0);
    (*(v1 + 16))(v1, 0, v2);
  }
}

void __73__PBServerConnection_deletePersistentPasteboardWithName_completionBlock___block_invoke_14(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = _PBLog();
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412290;
      v11 = v5;
      _os_log_error_impl(&dword_25E138000, v7, OS_LOG_TYPE_ERROR, "...deleting persistent pasteboard failed with error: %@", &v10, 0xCu);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v10) = 0;
    _os_log_impl(&dword_25E138000, v7, OS_LOG_TYPE_DEFAULT, "...deleting persistent pasteboard completed successfully.", &v10, 2u);
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, a2, v5);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)didPastePasteboard:(id)a3
{
  v4 = a3;
  v5 = [(PBServerConnection *)self serverConnection];
  v6 = [v5 remoteObjectProxy];

  v7 = _PBLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *v10 = 0;
    _os_log_impl(&dword_25E138000, v7, OS_LOG_TYPE_INFO, "Notifying pasted of a paste event.", v10, 2u);
  }

  v8 = [v4 name];
  v9 = [v4 UUID];

  [v6 didPasteContentsFromPasteboardWithName:v8 UUID:v9 completionBlock:&__block_literal_global_17];
}

- (void)performJanitorialTasksCompletionBlock:(id)a3
{
  v4 = a3;
  v5 = [(PBServerConnection *)self serverConnection];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __60__PBServerConnection_performJanitorialTasksCompletionBlock___block_invoke;
  v14[3] = &unk_279A06718;
  v6 = v4;
  v15 = v6;
  v7 = _loggingErrorHandler("[PBServerConnection performJanitorialTasksCompletionBlock:]", v14);
  v8 = [v5 remoteObjectProxyWithErrorHandler:v7];

  v9 = _PBLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_25E138000, v9, OS_LOG_TYPE_INFO, "Performing janitorial tasks.", buf, 2u);
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __60__PBServerConnection_performJanitorialTasksCompletionBlock___block_invoke_18;
  v11[3] = &unk_279A063F0;
  v12 = v6;
  v10 = v6;
  [v8 performJanitorialTasksCompletionBlock:v11];
}

uint64_t __60__PBServerConnection_performJanitorialTasksCompletionBlock___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __60__PBServerConnection_performJanitorialTasksCompletionBlock___block_invoke_18(uint64_t a1)
{
  v2 = _PBLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_25E138000, v2, OS_LOG_TYPE_INFO, "...janitorial tasks complete.", v4, 2u);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)getAllPasteboardsCompletionBlock:(id)a3
{
  v4 = a3;
  v5 = [(PBServerConnection *)self serverConnection];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __55__PBServerConnection_getAllPasteboardsCompletionBlock___block_invoke;
  v14[3] = &unk_279A06718;
  v6 = v4;
  v15 = v6;
  v7 = _loggingErrorHandler("[PBServerConnection getAllPasteboardsCompletionBlock:]", v14);
  v8 = [v5 remoteObjectProxyWithErrorHandler:v7];

  v9 = _PBLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_25E138000, v9, OS_LOG_TYPE_INFO, "Enumerating pasteboards.", buf, 2u);
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __55__PBServerConnection_getAllPasteboardsCompletionBlock___block_invoke_19;
  v11[3] = &unk_279A06830;
  v12 = v6;
  v10 = v6;
  [v8 getAllPasteboardsCompletionBlock:v11];
}

uint64_t __55__PBServerConnection_getAllPasteboardsCompletionBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

void __55__PBServerConnection_getAllPasteboardsCompletionBlock___block_invoke_19(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v5);
          }

          [*(*(&v13 + 1) + 8 * i) setUsesServerConnectionToLoadDataWithAuthenticationBlock:0 dataOwnerBlock:0];
        }

        v8 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }
  }

  v11 = *(a1 + 32);
  if (v11)
  {
    (*(v11 + 16))(v11, v5, v6);
  }

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __97__PBServerConnection_pasteboardWithName_createIfNeeded_authenticationBlock_dataOwnerBlock_error___block_invoke(uint64_t a1)
{
  v2 = PBCannotConnectToServerError(0);
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

void __97__PBServerConnection_pasteboardWithName_createIfNeeded_authenticationBlock_dataOwnerBlock_error___block_invoke_21(void *a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = _PBLog();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = a1[4];
      v17 = 138412546;
      v18 = v9;
      v19 = 2112;
      v20 = v6;
      _os_log_error_impl(&dword_25E138000, v8, OS_LOG_TYPE_ERROR, "...retrieving pasteboard named %@ failed with error: %@", &v17, 0x16u);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = a1[4];
    v17 = 138412290;
    v18 = v10;
    _os_log_impl(&dword_25E138000, v8, OS_LOG_TYPE_DEFAULT, "...retrieving pasteboard named %@ completed successfully.", &v17, 0xCu);
  }

  v11 = *(a1[5] + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v5;
  v13 = v5;

  v14 = *(a1[6] + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v6;

  v16 = *MEMORY[0x277D85DE8];
}

- (id)localGeneralPasteboardWithAuthenticationBlock:(id)a3 dataOwnerBlock:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__0;
  v30 = __Block_byref_object_dispose__0;
  v31 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__0;
  v24 = __Block_byref_object_dispose__0;
  v25 = 0;
  v10 = [(PBServerConnection *)self serverConnection];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __89__PBServerConnection_localGeneralPasteboardWithAuthenticationBlock_dataOwnerBlock_error___block_invoke;
  v19[3] = &unk_279A06858;
  v19[4] = &v26;
  v11 = _loggingErrorHandler("[PBServerConnection localGeneralPasteboardWithAuthenticationBlock:dataOwnerBlock:error:]", v19);
  v12 = [v10 synchronousRemoteObjectProxyWithErrorHandler:v11];

  v13 = _PBLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_25E138000, v13, OS_LOG_TYPE_INFO, "Retrieving local-only general pasteboard.", buf, 2u);
  }

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __89__PBServerConnection_localGeneralPasteboardWithAuthenticationBlock_dataOwnerBlock_error___block_invoke_22;
  v17[3] = &unk_279A068A8;
  v17[4] = &v20;
  v17[5] = &v26;
  [v12 localGeneralPasteboardCompletionBlock:v17];
  v14 = v27[5];
  if (v14)
  {
    if (a5)
    {
      *a5 = v14;
    }
  }

  else
  {
    [v21[5] setUsesServerConnectionToLoadDataWithAuthenticationBlock:v8 dataOwnerBlock:v9];
  }

  v15 = v21[5];

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v26, 8);

  return v15;
}

uint64_t __89__PBServerConnection_localGeneralPasteboardWithAuthenticationBlock_dataOwnerBlock_error___block_invoke(uint64_t a1)
{
  v2 = PBCannotConnectToServerError(0);
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

void __89__PBServerConnection_localGeneralPasteboardWithAuthenticationBlock_dataOwnerBlock_error___block_invoke_22(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = _PBLog();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v15 = 138412290;
      v16 = v6;
      _os_log_error_impl(&dword_25E138000, v8, OS_LOG_TYPE_ERROR, "...retrieving local-only general pasteboard failed with error: %@", &v15, 0xCu);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    LOWORD(v15) = 0;
    _os_log_impl(&dword_25E138000, v8, OS_LOG_TYPE_INFO, "...retrieving local-only general pasteboard completed successfully.", &v15, 2u);
  }

  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v5;
  v11 = v5;

  v12 = *(*(a1 + 40) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v6;

  v14 = *MEMORY[0x277D85DE8];
}

- (id)savePasteboard:(id)a3 dataProviderEndpoint:(id)a4 error:(id *)a5
{
  v39 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__0;
  v35 = __Block_byref_object_dispose__0;
  v36 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__0;
  v29 = __Block_byref_object_dispose__0;
  v30 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v10 = [(PBServerConnection *)self serverConnection];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __64__PBServerConnection_savePasteboard_dataProviderEndpoint_error___block_invoke;
  v20[3] = &unk_279A06858;
  v20[4] = &v31;
  v11 = _loggingErrorHandler("[PBServerConnection savePasteboard:dataProviderEndpoint:error:]", v20);
  v12 = [v10 synchronousRemoteObjectProxyWithErrorHandler:v11];

  v13 = _PBLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [v8 name];
    *buf = 138412290;
    v38 = v14;
    _os_log_impl(&dword_25E138000, v13, OS_LOG_TYPE_DEFAULT, "Saving pasteboard name %@", buf, 0xCu);
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __64__PBServerConnection_savePasteboard_dataProviderEndpoint_error___block_invoke_23;
  v19[3] = &unk_279A068D0;
  v19[4] = &v21;
  v19[5] = &v31;
  v19[6] = &v25;
  [v12 savePasteboard:v8 dataProviderEndpoint:v9 completionBlock:v19];
  v15 = v32[5];
  if (v15)
  {
    if (a5)
    {
      *a5 = v15;
    }
  }

  else
  {
    [v8 setChangeCount:v22[3]];
  }

  v16 = v26[5];

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v25, 8);

  _Block_object_dispose(&v31, 8);
  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

uint64_t __64__PBServerConnection_savePasteboard_dataProviderEndpoint_error___block_invoke(uint64_t a1)
{
  v2 = PBCannotConnectToServerError(0);
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

void __64__PBServerConnection_savePasteboard_dataProviderEndpoint_error___block_invoke_23(void *a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = _PBLog();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v15 = 138412290;
      v16 = v6;
      _os_log_error_impl(&dword_25E138000, v8, OS_LOG_TYPE_ERROR, "...saving pasteboard failed with error: %@", &v15, 0xCu);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v15) = 0;
    _os_log_impl(&dword_25E138000, v8, OS_LOG_TYPE_DEFAULT, "...saving pasteboard completed successfully.", &v15, 2u);
  }

  *(*(a1[4] + 8) + 24) = [v5 changeCount];
  v9 = *(a1[5] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  v12 = *(a1[6] + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v5;

  v14 = *MEMORY[0x277D85DE8];
}

- (unint64_t)deletePersistentPasteboardWithName:(id)a3 error:(id *)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__0;
  v24 = __Block_byref_object_dispose__0;
  v25 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v7 = [(PBServerConnection *)self serverConnection];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __63__PBServerConnection_deletePersistentPasteboardWithName_error___block_invoke;
  v15[3] = &unk_279A06858;
  v15[4] = &v20;
  v8 = _loggingErrorHandler("[PBServerConnection deletePersistentPasteboardWithName:error:]", v15);
  v9 = [v7 synchronousRemoteObjectProxyWithErrorHandler:v8];

  v10 = _PBLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v27 = v6;
    _os_log_impl(&dword_25E138000, v10, OS_LOG_TYPE_DEFAULT, "Deleting persistent pasteboard named %@", buf, 0xCu);
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __63__PBServerConnection_deletePersistentPasteboardWithName_error___block_invoke_24;
  v14[3] = &unk_279A068F8;
  v14[4] = &v16;
  v14[5] = &v20;
  [v9 deletePersistentPasteboardWithName:v6 completionBlock:v14];
  if (a4)
  {
    *a4 = v21[5];
  }

  v11 = v17[3];

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v20, 8);

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t __63__PBServerConnection_deletePersistentPasteboardWithName_error___block_invoke(uint64_t a1)
{
  v2 = PBCannotConnectToServerError(0);
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

void __63__PBServerConnection_deletePersistentPasteboardWithName_error___block_invoke_24(uint64_t a1, uint64_t a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = _PBLog();
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v11 = 138412290;
      v12 = v5;
      _os_log_error_impl(&dword_25E138000, v7, OS_LOG_TYPE_ERROR, "...deleting persistent pasteboard failed with error: %@", &v11, 0xCu);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v11) = 0;
    _os_log_impl(&dword_25E138000, v7, OS_LOG_TYPE_DEFAULT, "...deleting persistent pasteboard completed successfully.", &v11, 2u);
  }

  *(*(*(a1 + 32) + 8) + 24) = a2;
  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v5;

  v10 = *MEMORY[0x277D85DE8];
}

- (id)remoteContentForLayerContextWithId:(unint64_t)a3 slotStyle:(id)a4 pasteButtonTag:(id)a5 error:(id *)a6
{
  v10 = a4;
  v11 = a5;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__0;
  v29 = __Block_byref_object_dispose__0;
  v30 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__0;
  v23 = __Block_byref_object_dispose__0;
  v24 = 0;
  v12 = [(PBServerConnection *)self serverConnection];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __88__PBServerConnection_remoteContentForLayerContextWithId_slotStyle_pasteButtonTag_error___block_invoke;
  v18[3] = &unk_279A06858;
  v18[4] = &v25;
  v13 = _loggingErrorHandler("[PBServerConnection remoteContentForLayerContextWithId:slotStyle:pasteButtonTag:error:]", v18);
  v14 = [v12 synchronousRemoteObjectProxyWithErrorHandler:v13];

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __88__PBServerConnection_remoteContentForLayerContextWithId_slotStyle_pasteButtonTag_error___block_invoke_2;
  v17[3] = &unk_279A06920;
  v17[4] = &v19;
  v17[5] = &v25;
  [v14 getRemoteContentForLayerContextWithId:a3 slotStyle:v10 pasteButtonTag:v11 completionBlock:v17];
  if (a6)
  {
    *a6 = v26[5];
  }

  v15 = v20[5];

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v25, 8);

  return v15;
}

uint64_t __88__PBServerConnection_remoteContentForLayerContextWithId_slotStyle_pasteButtonTag_error___block_invoke(uint64_t a1)
{
  v2 = PBCannotConnectToServerError(0);
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

void __88__PBServerConnection_remoteContentForLayerContextWithId_slotStyle_pasteButtonTag_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void __67__PBServerConnection_beginListeningToPasteboardChangeNotifications__block_invoke_2()
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = @"state";
  v0 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:_notificationQueue_getState()];
  v5[0] = v0;
  v1 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"com.apple.pasteboard.changed" object:0 userInfo:v1];

  v3 = *MEMORY[0x277D85DE8];
}

- (id)requestSecurePasteAuthenticationMessageWithContext:(unint64_t)a3 forClientVersionedPID:(int64_t)a4 error:(id *)a5
{
  v35 = *MEMORY[0x277D85DE8];
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__0;
  v31 = __Block_byref_object_dispose__0;
  v32 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__0;
  v25 = __Block_byref_object_dispose__0;
  v26 = 0;
  v8 = [(PBServerConnection *)self serverConnection];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __101__PBServerConnection_requestSecurePasteAuthenticationMessageWithContext_forClientVersionedPID_error___block_invoke;
  v20[3] = &unk_279A06858;
  v20[4] = &v21;
  v9 = _loggingErrorHandler("[PBServerConnection requestSecurePasteAuthenticationMessageWithContext:forClientVersionedPID:error:]", v20);
  v10 = [v8 synchronousRemoteObjectProxyWithErrorHandler:v9];

  v11 = _PBLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_25E138000, v11, OS_LOG_TYPE_INFO, "Requesting authentication message for secure paste", buf, 2u);
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __101__PBServerConnection_requestSecurePasteAuthenticationMessageWithContext_forClientVersionedPID_error___block_invoke_38;
  v19[3] = &unk_279A069A0;
  v19[4] = &v27;
  v19[5] = &v21;
  [v10 requestSecurePasteAuthenticationMessageWithContext:a3 forClientVersionedPID:a4 completionBlock:v19];
  v12 = v28[5];
  v13 = _PBLog();
  v14 = v13;
  if (v12)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_25E138000, v14, OS_LOG_TYPE_INFO, "Successfully generated authentication message.", buf, 2u);
    }
  }

  else if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v18 = v22[5];
    *buf = 138412290;
    v34 = v18;
    _os_log_error_impl(&dword_25E138000, v14, OS_LOG_TYPE_ERROR, "Authentication message was not generated: %@", buf, 0xCu);
  }

  if (a5)
  {
    *a5 = v22[5];
  }

  v15 = v28[5];

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v27, 8);

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

uint64_t __101__PBServerConnection_requestSecurePasteAuthenticationMessageWithContext_forClientVersionedPID_error___block_invoke(uint64_t a1)
{
  v2 = PBCannotConnectToServerError(0);
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

void __101__PBServerConnection_requestSecurePasteAuthenticationMessageWithContext_forClientVersionedPID_error___block_invoke_38(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

@end