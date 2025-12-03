@interface MCCSecretAgentController
- (MCCSecretAgentController)initWithAgentXPCEndpoint:(id)endpoint;
- (MCCSecretAgentController)initWithCallbackListener:(id)listener;
- (void)canSendSecureMessageFrom:(id)from to:(id)to completion:(id)completion;
- (void)clearAllUserOverridesWithTimestamp:(double)timestamp completion:(id)completion;
- (void)decryptedDataFromContentData:(id)data senderEmail:(id)email recipientEmail:(id)recipientEmail completion:(id)completion;
- (void)encryptedDataFromContentData:(id)data senderEmail:(id)email recipientEmails:(id)emails completion:(id)completion;
- (void)generateSSCertificateWithContext:(id)context completion:(id)completion;
- (void)getBlackPearlVersionWithCompletion:(id)completion;
- (void)getIABCategoryID:(id)d completion:(id)completion;
- (void)getIsSecureEmailEnabledForEmail:(id)email completion:(id)completion;
- (void)getPKCategoryForDomain:(id)domain completion:(id)completion;
- (void)invokeModelDownloadWithCompletion:(id)completion;
- (void)isCategorizationSupportedForLocale:(id)locale completion:(id)completion;
- (void)isModelReadyWithCompletion:(id)completion;
- (void)isPersonalDomain:(id)domain completion:(id)completion;
- (void)listSecItemsWithContext:(id)context completion:(id)completion;
- (void)notifyFullSyncCategoryOverrides:(id)overrides;
- (void)notifyNewOldCategoryChange:(id)change timestamp:(double)timestamp;
- (void)notifyWebRule:(id)rule;
- (void)pingWithcompletion:(id)withcompletion;
- (void)predictCommerceEmailWithContext:(id)context completion:(id)completion;
- (void)registerCategoryRulesCallbackListener:(id)listener notificationTypes:(unint64_t)types completion:(id)completion;
- (void)registerCategoryRulesCallbackWithNotificationTypes:(unint64_t)types;
- (void)signedDataFromContentData:(id)data senderEmail:(id)email recipientEmails:(id)emails completion:(id)completion;
- (void)storeSecItemsWithContext:(id)context completion:(id)completion;
- (void)syncNewOldCategoryTimestamps:(id)timestamps;
- (void)syncRecategorizationRules:(id)rules completion:(id)completion;
@end

@implementation MCCSecretAgentController

- (MCCSecretAgentController)initWithCallbackListener:(id)listener
{
  listenerCopy = listener;
  v6 = [(MCCSecretAgentController *)self initWithAgentXPCEndpoint:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_callbackListener, listener);
    [(NSXPCListener *)v7->_callbackListener resume];
  }

  return v7;
}

- (MCCSecretAgentController)initWithAgentXPCEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  v11.receiver = self;
  v11.super_class = MCCSecretAgentController;
  v5 = [(MCCSecretAgentController *)&v11 init];
  if (v5)
  {
    v6 = [[MCCSecretAgentConnection alloc] initWithListenerEndpoint:endpointCopy];
    agentConnection = v5->_agentConnection;
    v5->_agentConnection = v6;

    v8 = objc_opt_new();
    domainHelperInterface = v5->_domainHelperInterface;
    v5->_domainHelperInterface = v8;
  }

  return v5;
}

- (void)getIsSecureEmailEnabledForEmail:(id)email completion:(id)completion
{
  emailCopy = email;
  completionCopy = completion;
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x3032000000;
  v22[3] = __Block_byref_object_copy_;
  v22[4] = __Block_byref_object_dispose_;
  selfCopy = self;
  v23 = selfCopy;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __71__MCCSecretAgentController_getIsSecureEmailEnabledForEmail_completion___block_invoke;
  aBlock[3] = &unk_1E84581B8;
  v21 = v22;
  v9 = completionCopy;
  v20 = v9;
  v10 = _Block_copy(aBlock);
  agentConnection = selfCopy->_agentConnection;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __71__MCCSecretAgentController_getIsSecureEmailEnabledForEmail_completion___block_invoke_2;
  v17[3] = &unk_1E84581E0;
  v12 = v10;
  v18 = v12;
  v13 = [(MCCSecretAgentConnection *)agentConnection remoteObjectProxyWithErrorHandler:v17];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __71__MCCSecretAgentController_getIsSecureEmailEnabledForEmail_completion___block_invoke_58;
  v15[3] = &unk_1E8458208;
  v14 = v12;
  v16 = v14;
  [v13 getIsSecureEmailEnabledForEmail:emailCopy completion:v15];

  _Block_object_dispose(v22, 8);
}

void __71__MCCSecretAgentController_getIsSecureEmailEnabledForEmail_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = a3;
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, a2, v8);
  }
}

void __71__MCCSecretAgentController_getIsSecureEmailEnabledForEmail_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _MCCLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __71__MCCSecretAgentController_getIsSecureEmailEnabledForEmail_completion___block_invoke_2_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __71__MCCSecretAgentController_getIsSecureEmailEnabledForEmail_completion___block_invoke_58(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = _MCCLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __71__MCCSecretAgentController_getIsSecureEmailEnabledForEmail_completion___block_invoke_58_cold_1(a2, v5, v6);
    }
  }

  (*(*(a1 + 32) + 16))();
}

void __72__MCCSecretAgentController_setIsSecureEmailEnabled_forEmail_completion___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v6);
  }
}

void __72__MCCSecretAgentController_setIsSecureEmailEnabled_forEmail_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _MCCLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __72__MCCSecretAgentController_setIsSecureEmailEnabled_forEmail_completion___block_invoke_2_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __72__MCCSecretAgentController_setIsSecureEmailEnabled_forEmail_completion___block_invoke_59(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = _MCCLogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __72__MCCSecretAgentController_setIsSecureEmailEnabled_forEmail_completion___block_invoke_59_cold_1();
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)canSendSecureMessageFrom:(id)from to:(id)to completion:(id)completion
{
  fromCopy = from;
  toCopy = to;
  completionCopy = completion;
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x3032000000;
  v25[3] = __Block_byref_object_copy_;
  v25[4] = __Block_byref_object_dispose_;
  selfCopy = self;
  v26 = selfCopy;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __67__MCCSecretAgentController_canSendSecureMessageFrom_to_completion___block_invoke;
  aBlock[3] = &unk_1E84581B8;
  v24 = v25;
  v12 = completionCopy;
  v23 = v12;
  v13 = _Block_copy(aBlock);
  agentConnection = selfCopy->_agentConnection;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __67__MCCSecretAgentController_canSendSecureMessageFrom_to_completion___block_invoke_2;
  v20[3] = &unk_1E84581E0;
  v15 = v13;
  v21 = v15;
  v16 = [(MCCSecretAgentConnection *)agentConnection remoteObjectProxyWithErrorHandler:v20];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __67__MCCSecretAgentController_canSendSecureMessageFrom_to_completion___block_invoke_60;
  v18[3] = &unk_1E8458208;
  v17 = v15;
  v19 = v17;
  [v16 canSendSecureMessageFrom:fromCopy to:toCopy completion:v18];

  _Block_object_dispose(v25, 8);
}

void __67__MCCSecretAgentController_canSendSecureMessageFrom_to_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = a3;
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, a2, v8);
  }
}

void __67__MCCSecretAgentController_canSendSecureMessageFrom_to_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _MCCLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __67__MCCSecretAgentController_canSendSecureMessageFrom_to_completion___block_invoke_2_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __67__MCCSecretAgentController_canSendSecureMessageFrom_to_completion___block_invoke_60(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = _MCCLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __67__MCCSecretAgentController_canSendSecureMessageFrom_to_completion___block_invoke_60_cold_1();
    }
  }

  (*(*(a1 + 32) + 16))();
}

void __78__MCCSecretAgentController_setCanSendSecureMessageFrom_to_canSend_completion___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v6);
  }
}

void __78__MCCSecretAgentController_setCanSendSecureMessageFrom_to_canSend_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _MCCLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __78__MCCSecretAgentController_setCanSendSecureMessageFrom_to_canSend_completion___block_invoke_2_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __78__MCCSecretAgentController_setCanSendSecureMessageFrom_to_canSend_completion___block_invoke_61(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = _MCCLogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __78__MCCSecretAgentController_setCanSendSecureMessageFrom_to_canSend_completion___block_invoke_61_cold_1();
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)listSecItemsWithContext:(id)context completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x3032000000;
  v22[3] = __Block_byref_object_copy_;
  v22[4] = __Block_byref_object_dispose_;
  selfCopy = self;
  v23 = selfCopy;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __63__MCCSecretAgentController_listSecItemsWithContext_completion___block_invoke;
  aBlock[3] = &unk_1E8458258;
  v21 = v22;
  v9 = completionCopy;
  v20 = v9;
  v10 = _Block_copy(aBlock);
  agentConnection = selfCopy->_agentConnection;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __63__MCCSecretAgentController_listSecItemsWithContext_completion___block_invoke_2;
  v17[3] = &unk_1E84581E0;
  v12 = v10;
  v18 = v12;
  v13 = [(MCCSecretAgentConnection *)agentConnection remoteObjectProxyWithErrorHandler:v17];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __63__MCCSecretAgentController_listSecItemsWithContext_completion___block_invoke_63;
  v15[3] = &unk_1E8458280;
  v14 = v12;
  v16 = v14;
  [v13 listSecItemsWithContext:contextCopy completion:v15];

  _Block_object_dispose(v22, 8);
}

void __63__MCCSecretAgentController_listSecItemsWithContext_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = 0;

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, v9, v5);
  }
}

void __63__MCCSecretAgentController_listSecItemsWithContext_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _MCCLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __63__MCCSecretAgentController_listSecItemsWithContext_completion___block_invoke_2_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __63__MCCSecretAgentController_listSecItemsWithContext_completion___block_invoke_63(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = _MCCLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    v10 = v5;
    v11 = 2114;
    v12 = v6;
    _os_log_impl(&dword_1D3703000, v7, OS_LOG_TYPE_DEFAULT, "Remote secret agent listSecItems call results %@ with error: %{public}@", &v9, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
  v8 = *MEMORY[0x1E69E9840];
}

- (void)storeSecItemsWithContext:(id)context completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x3032000000;
  v22[3] = __Block_byref_object_copy_;
  v22[4] = __Block_byref_object_dispose_;
  selfCopy = self;
  v23 = selfCopy;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __64__MCCSecretAgentController_storeSecItemsWithContext_completion___block_invoke;
  aBlock[3] = &unk_1E8458230;
  v21 = v22;
  v9 = completionCopy;
  v20 = v9;
  v10 = _Block_copy(aBlock);
  agentConnection = selfCopy->_agentConnection;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __64__MCCSecretAgentController_storeSecItemsWithContext_completion___block_invoke_2;
  v17[3] = &unk_1E84581E0;
  v12 = v10;
  v18 = v12;
  v13 = [(MCCSecretAgentConnection *)agentConnection remoteObjectProxyWithErrorHandler:v17];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __64__MCCSecretAgentController_storeSecItemsWithContext_completion___block_invoke_64;
  v15[3] = &unk_1E84581E0;
  v14 = v12;
  v16 = v14;
  [v13 storeSecItemsWithContext:contextCopy completion:v15];

  _Block_object_dispose(v22, 8);
}

void __64__MCCSecretAgentController_storeSecItemsWithContext_completion___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v6);
  }
}

void __64__MCCSecretAgentController_storeSecItemsWithContext_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _MCCLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __64__MCCSecretAgentController_storeSecItemsWithContext_completion___block_invoke_2_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __64__MCCSecretAgentController_storeSecItemsWithContext_completion___block_invoke_64(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = _MCCLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&dword_1D3703000, v4, OS_LOG_TYPE_DEFAULT, "Remote secret agent storeSecItems call with error: %{public}@", &v6, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
  v5 = *MEMORY[0x1E69E9840];
}

- (void)generateSSCertificateWithContext:(id)context completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x3032000000;
  v22[3] = __Block_byref_object_copy_;
  v22[4] = __Block_byref_object_dispose_;
  selfCopy = self;
  v23 = selfCopy;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __72__MCCSecretAgentController_generateSSCertificateWithContext_completion___block_invoke;
  aBlock[3] = &unk_1E8458230;
  v21 = v22;
  v9 = completionCopy;
  v20 = v9;
  v10 = _Block_copy(aBlock);
  agentConnection = selfCopy->_agentConnection;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __72__MCCSecretAgentController_generateSSCertificateWithContext_completion___block_invoke_2;
  v17[3] = &unk_1E84581E0;
  v12 = v10;
  v18 = v12;
  v13 = [(MCCSecretAgentConnection *)agentConnection remoteObjectProxyWithErrorHandler:v17];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __72__MCCSecretAgentController_generateSSCertificateWithContext_completion___block_invoke_65;
  v15[3] = &unk_1E84581E0;
  v14 = v12;
  v16 = v14;
  [v13 generateSSCertificateWithContext:contextCopy completion:v15];

  _Block_object_dispose(v22, 8);
}

void __72__MCCSecretAgentController_generateSSCertificateWithContext_completion___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v6);
  }
}

void __72__MCCSecretAgentController_generateSSCertificateWithContext_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _MCCLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __72__MCCSecretAgentController_generateSSCertificateWithContext_completion___block_invoke_2_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __72__MCCSecretAgentController_generateSSCertificateWithContext_completion___block_invoke_65(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = _MCCLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&dword_1D3703000, v4, OS_LOG_TYPE_DEFAULT, "Remote secret agent genenrateSSCertificate call with error: %{public}@", &v6, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
  v5 = *MEMORY[0x1E69E9840];
}

- (void)signedDataFromContentData:(id)data senderEmail:(id)email recipientEmails:(id)emails completion:(id)completion
{
  dataCopy = data;
  emailCopy = email;
  emailsCopy = emails;
  completionCopy = completion;
  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x3032000000;
  v28[3] = __Block_byref_object_copy_;
  v28[4] = __Block_byref_object_dispose_;
  selfCopy = self;
  v29 = selfCopy;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __93__MCCSecretAgentController_signedDataFromContentData_senderEmail_recipientEmails_completion___block_invoke;
  aBlock[3] = &unk_1E84582A8;
  v27 = v28;
  v15 = completionCopy;
  v26 = v15;
  v16 = _Block_copy(aBlock);
  agentConnection = selfCopy->_agentConnection;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __93__MCCSecretAgentController_signedDataFromContentData_senderEmail_recipientEmails_completion___block_invoke_2;
  v23[3] = &unk_1E84581E0;
  v18 = v16;
  v24 = v18;
  v19 = [(MCCSecretAgentConnection *)agentConnection remoteObjectProxyWithErrorHandler:v23];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __93__MCCSecretAgentController_signedDataFromContentData_senderEmail_recipientEmails_completion___block_invoke_67;
  v21[3] = &unk_1E84582D0;
  v20 = v18;
  v22 = v20;
  [v19 signedDataFromContentData:dataCopy senderEmail:emailCopy recipientEmails:emailsCopy completion:v21];

  _Block_object_dispose(v28, 8);
}

void __93__MCCSecretAgentController_signedDataFromContentData_senderEmail_recipientEmails_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = 0;

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, v9, v5);
  }
}

void __93__MCCSecretAgentController_signedDataFromContentData_senderEmail_recipientEmails_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _MCCLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __93__MCCSecretAgentController_signedDataFromContentData_senderEmail_recipientEmails_completion___block_invoke_2_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __93__MCCSecretAgentController_signedDataFromContentData_senderEmail_recipientEmails_completion___block_invoke_67(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a2;
  v7 = _MCCLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543362;
    v10 = v5;
    _os_log_impl(&dword_1D3703000, v7, OS_LOG_TYPE_DEFAULT, "Remote secret agent signedDataFromContentData call with error: %{public}@", &v9, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
  v8 = *MEMORY[0x1E69E9840];
}

- (void)encryptedDataFromContentData:(id)data senderEmail:(id)email recipientEmails:(id)emails completion:(id)completion
{
  dataCopy = data;
  emailCopy = email;
  emailsCopy = emails;
  completionCopy = completion;
  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x3032000000;
  v28[3] = __Block_byref_object_copy_;
  v28[4] = __Block_byref_object_dispose_;
  selfCopy = self;
  v29 = selfCopy;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __96__MCCSecretAgentController_encryptedDataFromContentData_senderEmail_recipientEmails_completion___block_invoke;
  aBlock[3] = &unk_1E84582A8;
  v27 = v28;
  v15 = completionCopy;
  v26 = v15;
  v16 = _Block_copy(aBlock);
  agentConnection = selfCopy->_agentConnection;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __96__MCCSecretAgentController_encryptedDataFromContentData_senderEmail_recipientEmails_completion___block_invoke_2;
  v23[3] = &unk_1E84581E0;
  v18 = v16;
  v24 = v18;
  v19 = [(MCCSecretAgentConnection *)agentConnection remoteObjectProxyWithErrorHandler:v23];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __96__MCCSecretAgentController_encryptedDataFromContentData_senderEmail_recipientEmails_completion___block_invoke_68;
  v21[3] = &unk_1E84582D0;
  v20 = v18;
  v22 = v20;
  [v19 encryptedDataFromContentData:dataCopy senderEmail:emailCopy recipientEmails:emailsCopy completion:v21];

  _Block_object_dispose(v28, 8);
}

void __96__MCCSecretAgentController_encryptedDataFromContentData_senderEmail_recipientEmails_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = 0;

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, v9, v5);
  }
}

void __96__MCCSecretAgentController_encryptedDataFromContentData_senderEmail_recipientEmails_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _MCCLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __96__MCCSecretAgentController_encryptedDataFromContentData_senderEmail_recipientEmails_completion___block_invoke_2_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __96__MCCSecretAgentController_encryptedDataFromContentData_senderEmail_recipientEmails_completion___block_invoke_68(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a2;
  v7 = _MCCLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543362;
    v10 = v5;
    _os_log_impl(&dword_1D3703000, v7, OS_LOG_TYPE_DEFAULT, "Remote secret agent encryptedDataFromContentData call with error: %{public}@", &v9, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
  v8 = *MEMORY[0x1E69E9840];
}

- (void)decryptedDataFromContentData:(id)data senderEmail:(id)email recipientEmail:(id)recipientEmail completion:(id)completion
{
  dataCopy = data;
  emailCopy = email;
  recipientEmailCopy = recipientEmail;
  completionCopy = completion;
  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x3032000000;
  v28[3] = __Block_byref_object_copy_;
  v28[4] = __Block_byref_object_dispose_;
  selfCopy = self;
  v29 = selfCopy;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __95__MCCSecretAgentController_decryptedDataFromContentData_senderEmail_recipientEmail_completion___block_invoke;
  aBlock[3] = &unk_1E84582A8;
  v27 = v28;
  v15 = completionCopy;
  v26 = v15;
  v16 = _Block_copy(aBlock);
  agentConnection = selfCopy->_agentConnection;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __95__MCCSecretAgentController_decryptedDataFromContentData_senderEmail_recipientEmail_completion___block_invoke_2;
  v23[3] = &unk_1E84581E0;
  v18 = v16;
  v24 = v18;
  v19 = [(MCCSecretAgentConnection *)agentConnection remoteObjectProxyWithErrorHandler:v23];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __95__MCCSecretAgentController_decryptedDataFromContentData_senderEmail_recipientEmail_completion___block_invoke_69;
  v21[3] = &unk_1E84582D0;
  v20 = v18;
  v22 = v20;
  [v19 decryptedDataFromContentData:dataCopy senderEmail:emailCopy recipientEmail:recipientEmailCopy completion:v21];

  _Block_object_dispose(v28, 8);
}

void __95__MCCSecretAgentController_decryptedDataFromContentData_senderEmail_recipientEmail_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = 0;

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, v9, v5);
  }
}

void __95__MCCSecretAgentController_decryptedDataFromContentData_senderEmail_recipientEmail_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _MCCLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __95__MCCSecretAgentController_decryptedDataFromContentData_senderEmail_recipientEmail_completion___block_invoke_2_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __95__MCCSecretAgentController_decryptedDataFromContentData_senderEmail_recipientEmail_completion___block_invoke_69(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a2;
  v7 = _MCCLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543362;
    v10 = v5;
    _os_log_impl(&dword_1D3703000, v7, OS_LOG_TYPE_DEFAULT, "Remote secret agent decryptedDataFromContentData call with error: %{public}@", &v9, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
  v8 = *MEMORY[0x1E69E9840];
}

- (void)predictCommerceEmailWithContext:(id)context completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x3032000000;
  v22[3] = __Block_byref_object_copy_;
  v22[4] = __Block_byref_object_dispose_;
  selfCopy = self;
  v23 = selfCopy;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __71__MCCSecretAgentController_predictCommerceEmailWithContext_completion___block_invoke;
  aBlock[3] = &unk_1E84582F8;
  v21 = v22;
  v9 = completionCopy;
  v20 = v9;
  v10 = _Block_copy(aBlock);
  agentConnection = selfCopy->_agentConnection;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __71__MCCSecretAgentController_predictCommerceEmailWithContext_completion___block_invoke_2;
  v17[3] = &unk_1E84581E0;
  v12 = v10;
  v18 = v12;
  v13 = [(MCCSecretAgentConnection *)agentConnection synchronousRemoteObjectProxyWithErrorHandler:v17];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __71__MCCSecretAgentController_predictCommerceEmailWithContext_completion___block_invoke_71;
  v15[3] = &unk_1E8458320;
  v14 = v12;
  v16 = v14;
  [v13 predictCommerceEmailWithContext:contextCopy completion:v15];

  _Block_object_dispose(v22, 8);
}

void __71__MCCSecretAgentController_predictCommerceEmailWithContext_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = 0;

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, v9, v5);
  }
}

void __71__MCCSecretAgentController_predictCommerceEmailWithContext_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _MCCLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __71__MCCSecretAgentController_predictCommerceEmailWithContext_completion___block_invoke_2_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __71__MCCSecretAgentController_predictCommerceEmailWithContext_completion___block_invoke_71(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    v7 = _MCCLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __71__MCCSecretAgentController_predictCommerceEmailWithContext_completion___block_invoke_71_cold_1();
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)registerCategoryRulesCallbackWithNotificationTypes:(unint64_t)types
{
  endpoint = [(NSXPCListener *)self->_callbackListener endpoint];
  [(MCCSecretAgentController *)self registerCategoryRulesCallbackListener:endpoint notificationTypes:types completion:&__block_literal_global_0];
}

void __79__MCCSecretAgentController_registerCategoryRulesCallbackWithNotificationTypes___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  if (v3)
  {
    v4 = _MCCLogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __79__MCCSecretAgentController_registerCategoryRulesCallbackWithNotificationTypes___block_invoke_cold_1();
    }
  }
}

- (void)registerCategoryRulesCallbackListener:(id)listener notificationTypes:(unint64_t)types completion:(id)completion
{
  listenerCopy = listener;
  completionCopy = completion;
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x3032000000;
  v24[3] = __Block_byref_object_copy_;
  v24[4] = __Block_byref_object_dispose_;
  selfCopy = self;
  v25 = selfCopy;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __95__MCCSecretAgentController_registerCategoryRulesCallbackListener_notificationTypes_completion___block_invoke;
  aBlock[3] = &unk_1E84581B8;
  v23 = v24;
  v11 = completionCopy;
  v22 = v11;
  v12 = _Block_copy(aBlock);
  agentConnection = selfCopy->_agentConnection;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __95__MCCSecretAgentController_registerCategoryRulesCallbackListener_notificationTypes_completion___block_invoke_2;
  v19[3] = &unk_1E84581E0;
  v14 = v12;
  v20 = v14;
  v15 = [(MCCSecretAgentConnection *)agentConnection remoteObjectProxyWithErrorHandler:v19];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __95__MCCSecretAgentController_registerCategoryRulesCallbackListener_notificationTypes_completion___block_invoke_72;
  v17[3] = &unk_1E8458208;
  v16 = v14;
  v18 = v16;
  [v15 registerCategoryRulesCallbackListener:listenerCopy notificationTypes:types completion:v17];

  _Block_object_dispose(v24, 8);
}

void __95__MCCSecretAgentController_registerCategoryRulesCallbackListener_notificationTypes_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = a3;
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, a2, v8);
  }
}

void __95__MCCSecretAgentController_registerCategoryRulesCallbackListener_notificationTypes_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _MCCLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __95__MCCSecretAgentController_registerCategoryRulesCallbackListener_notificationTypes_completion___block_invoke_2_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __95__MCCSecretAgentController_registerCategoryRulesCallbackListener_notificationTypes_completion___block_invoke_72(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = _MCCLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __95__MCCSecretAgentController_registerCategoryRulesCallbackListener_notificationTypes_completion___block_invoke_72_cold_1();
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)syncRecategorizationRules:(id)rules completion:(id)completion
{
  rulesCopy = rules;
  completionCopy = completion;
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x3032000000;
  v22[3] = __Block_byref_object_copy_;
  v22[4] = __Block_byref_object_dispose_;
  selfCopy = self;
  v23 = selfCopy;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __65__MCCSecretAgentController_syncRecategorizationRules_completion___block_invoke;
  aBlock[3] = &unk_1E84581B8;
  v21 = v22;
  v9 = completionCopy;
  v20 = v9;
  v10 = _Block_copy(aBlock);
  agentConnection = selfCopy->_agentConnection;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __65__MCCSecretAgentController_syncRecategorizationRules_completion___block_invoke_2;
  v17[3] = &unk_1E84581E0;
  v12 = v10;
  v18 = v12;
  v13 = [(MCCSecretAgentConnection *)agentConnection remoteObjectProxyWithErrorHandler:v17];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __65__MCCSecretAgentController_syncRecategorizationRules_completion___block_invoke_73;
  v15[3] = &unk_1E8458208;
  v14 = v12;
  v16 = v14;
  [v13 syncRecategorizationRules:rulesCopy completion:v15];

  _Block_object_dispose(v22, 8);
}

void __65__MCCSecretAgentController_syncRecategorizationRules_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = a3;
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, a2, v8);
  }
}

void __65__MCCSecretAgentController_syncRecategorizationRules_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _MCCLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __65__MCCSecretAgentController_syncRecategorizationRules_completion___block_invoke_2_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __65__MCCSecretAgentController_syncRecategorizationRules_completion___block_invoke_73(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = _MCCLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __65__MCCSecretAgentController_syncRecategorizationRules_completion___block_invoke_73_cold_1();
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)isModelReadyWithCompletion:(id)completion
{
  completionCopy = completion;
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x3032000000;
  v19[3] = __Block_byref_object_copy_;
  v19[4] = __Block_byref_object_dispose_;
  selfCopy = self;
  v20 = selfCopy;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __55__MCCSecretAgentController_isModelReadyWithCompletion___block_invoke;
  aBlock[3] = &unk_1E84581B8;
  v18 = v19;
  v6 = completionCopy;
  v17 = v6;
  v7 = _Block_copy(aBlock);
  agentConnection = selfCopy->_agentConnection;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __55__MCCSecretAgentController_isModelReadyWithCompletion___block_invoke_2;
  v14[3] = &unk_1E84581E0;
  v9 = v7;
  v15 = v9;
  v10 = [(MCCSecretAgentConnection *)agentConnection remoteObjectProxyWithErrorHandler:v14];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __55__MCCSecretAgentController_isModelReadyWithCompletion___block_invoke_74;
  v12[3] = &unk_1E8458208;
  v11 = v9;
  v13 = v11;
  [v10 isModelReadyWithCompletion:v12];

  _Block_object_dispose(v19, 8);
}

void __55__MCCSecretAgentController_isModelReadyWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = a3;
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, a2, v8);
  }
}

void __55__MCCSecretAgentController_isModelReadyWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _MCCLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __55__MCCSecretAgentController_isModelReadyWithCompletion___block_invoke_2_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __55__MCCSecretAgentController_isModelReadyWithCompletion___block_invoke_74(uint64_t a1, int a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v6 = _MCCLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8[0] = 67109378;
      v8[1] = a2;
      v9 = 2114;
      v10 = v5;
      _os_log_impl(&dword_1D3703000, v6, OS_LOG_TYPE_DEFAULT, "Remote secret agent listCertificates call results %d with error: %{public}@", v8, 0x12u);
    }
  }

  (*(*(a1 + 32) + 16))();

  v7 = *MEMORY[0x1E69E9840];
}

- (void)invokeModelDownloadWithCompletion:(id)completion
{
  completionCopy = completion;
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x3032000000;
  v19[3] = __Block_byref_object_copy_;
  v19[4] = __Block_byref_object_dispose_;
  selfCopy = self;
  v20 = selfCopy;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __62__MCCSecretAgentController_invokeModelDownloadWithCompletion___block_invoke;
  aBlock[3] = &unk_1E84581B8;
  v18 = v19;
  v6 = completionCopy;
  v17 = v6;
  v7 = _Block_copy(aBlock);
  agentConnection = selfCopy->_agentConnection;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __62__MCCSecretAgentController_invokeModelDownloadWithCompletion___block_invoke_2;
  v14[3] = &unk_1E84581E0;
  v9 = v7;
  v15 = v9;
  v10 = [(MCCSecretAgentConnection *)agentConnection remoteObjectProxyWithErrorHandler:v14];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __62__MCCSecretAgentController_invokeModelDownloadWithCompletion___block_invoke_75;
  v12[3] = &unk_1E8458208;
  v11 = v9;
  v13 = v11;
  [v10 invokeModelDownloadWithCompletion:v12];

  _Block_object_dispose(v19, 8);
}

void __62__MCCSecretAgentController_invokeModelDownloadWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = a3;
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, a2, v8);
  }
}

void __62__MCCSecretAgentController_invokeModelDownloadWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _MCCLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __55__MCCSecretAgentController_isModelReadyWithCompletion___block_invoke_2_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __62__MCCSecretAgentController_invokeModelDownloadWithCompletion___block_invoke_75(uint64_t a1, int a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v6 = _MCCLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8[0] = 67109378;
      v8[1] = a2;
      v9 = 2114;
      v10 = v5;
      _os_log_impl(&dword_1D3703000, v6, OS_LOG_TYPE_DEFAULT, "Remote secret agent listCertificates call results %d with error: %{public}@", v8, 0x12u);
    }
  }

  (*(*(a1 + 32) + 16))();

  v7 = *MEMORY[0x1E69E9840];
}

- (void)getIABCategoryID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x3032000000;
  v21[3] = __Block_byref_object_copy_;
  v21[4] = __Block_byref_object_dispose_;
  selfCopy = self;
  v22 = selfCopy;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __56__MCCSecretAgentController_getIABCategoryID_completion___block_invoke;
  aBlock[3] = &unk_1E8458368;
  v20 = v21;
  v9 = completionCopy;
  v19 = v9;
  v10 = _Block_copy(aBlock);
  agentConnection = selfCopy->_agentConnection;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __56__MCCSecretAgentController_getIABCategoryID_completion___block_invoke_2;
  v16[3] = &unk_1E84581E0;
  v12 = v10;
  v17 = v12;
  v13 = [(MCCSecretAgentConnection *)agentConnection synchronousRemoteObjectProxyWithErrorHandler:v16];
  if (v13)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __56__MCCSecretAgentController_getIABCategoryID_completion___block_invoke_77;
    v14[3] = &unk_1E8458390;
    v15 = v12;
    [v13 getIABCategoryID:dCopy completion:v14];
  }

  _Block_object_dispose(v21, 8);
}

void __56__MCCSecretAgentController_getIABCategoryID_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = a3;
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, a2, v8);
  }
}

void __56__MCCSecretAgentController_getIABCategoryID_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _MCCLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __56__MCCSecretAgentController_getIABCategoryID_completion___block_invoke_2_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __56__MCCSecretAgentController_getIABCategoryID_completion___block_invoke_77(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = _MCCLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __56__MCCSecretAgentController_getIABCategoryID_completion___block_invoke_77_cold_1();
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)getPKCategoryForDomain:(id)domain completion:(id)completion
{
  domainHelperInterface = self->_domainHelperInterface;
  completionCopy = completion;
  completionCopy[2](completionCopy, [(DomainHelperInterface *)domainHelperInterface getPKCategoryForDomain:domain], 0);
}

- (void)isPersonalDomain:(id)domain completion:(id)completion
{
  domainCopy = domain;
  completionCopy = completion;
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x3032000000;
  v21[3] = __Block_byref_object_copy_;
  v21[4] = __Block_byref_object_dispose_;
  selfCopy = self;
  v22 = selfCopy;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __56__MCCSecretAgentController_isPersonalDomain_completion___block_invoke;
  aBlock[3] = &unk_1E84581B8;
  v20 = v21;
  v9 = completionCopy;
  v19 = v9;
  v10 = _Block_copy(aBlock);
  agentConnection = selfCopy->_agentConnection;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __56__MCCSecretAgentController_isPersonalDomain_completion___block_invoke_2;
  v16[3] = &unk_1E84581E0;
  v12 = v10;
  v17 = v12;
  v13 = [(MCCSecretAgentConnection *)agentConnection remoteObjectProxyWithErrorHandler:v16];
  if (v13)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __56__MCCSecretAgentController_isPersonalDomain_completion___block_invoke_78;
    v14[3] = &unk_1E8458208;
    v15 = v12;
    [v13 isPersonalDomain:domainCopy completion:v14];
  }

  _Block_object_dispose(v21, 8);
}

void __56__MCCSecretAgentController_isPersonalDomain_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = a3;
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, a2, v8);
  }
}

void __56__MCCSecretAgentController_isPersonalDomain_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _MCCLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __56__MCCSecretAgentController_isPersonalDomain_completion___block_invoke_2_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __56__MCCSecretAgentController_isPersonalDomain_completion___block_invoke_78(uint64_t a1, int a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v6 = _MCCLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8[0] = 67109378;
      v8[1] = a2;
      v9 = 2114;
      v10 = v5;
      _os_log_impl(&dword_1D3703000, v6, OS_LOG_TYPE_DEFAULT, "Remote secret agent isPersonalDomain call results %d with error: %{public}@", v8, 0x12u);
    }
  }

  (*(*(a1 + 32) + 16))();

  v7 = *MEMORY[0x1E69E9840];
}

- (void)getBlackPearlVersionWithCompletion:(id)completion
{
  completionCopy = completion;
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x3032000000;
  v19[3] = __Block_byref_object_copy_;
  v19[4] = __Block_byref_object_dispose_;
  selfCopy = self;
  v20 = selfCopy;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __63__MCCSecretAgentController_getBlackPearlVersionWithCompletion___block_invoke;
  aBlock[3] = &unk_1E84582F8;
  v18 = v19;
  v6 = completionCopy;
  v17 = v6;
  v7 = _Block_copy(aBlock);
  agentConnection = selfCopy->_agentConnection;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __63__MCCSecretAgentController_getBlackPearlVersionWithCompletion___block_invoke_2;
  v14[3] = &unk_1E84581E0;
  v9 = v7;
  v15 = v9;
  v10 = [(MCCSecretAgentConnection *)agentConnection synchronousRemoteObjectProxyWithErrorHandler:v14];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __63__MCCSecretAgentController_getBlackPearlVersionWithCompletion___block_invoke_79;
  v12[3] = &unk_1E8458320;
  v11 = v9;
  v13 = v11;
  [v10 getBlackPearlVersionWithCompletion:v12];

  _Block_object_dispose(v19, 8);
}

void __63__MCCSecretAgentController_getBlackPearlVersionWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = 0;

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, v9, v5);
  }
}

void __63__MCCSecretAgentController_getBlackPearlVersionWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _MCCLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __71__MCCSecretAgentController_predictCommerceEmailWithContext_completion___block_invoke_2_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __63__MCCSecretAgentController_getBlackPearlVersionWithCompletion___block_invoke_79(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    v7 = _MCCLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __63__MCCSecretAgentController_getBlackPearlVersionWithCompletion___block_invoke_79_cold_1();
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)isCategorizationSupportedForLocale:(id)locale completion:(id)completion
{
  v10 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v6 = [_TtC12icloudMCCKit23LanguageDetectionHelper isCategorizationSupportedFor:locale];
  v7 = _MCCLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9[0] = 67109120;
    v9[1] = v6;
    _os_log_impl(&dword_1D3703000, v7, OS_LOG_TYPE_DEFAULT, "isCategorizationSupportedForLocale: %d", v9, 8u);
  }

  completionCopy[2](completionCopy, v6, 0);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)pingWithcompletion:(id)withcompletion
{
  withcompletionCopy = withcompletion;
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x3032000000;
  v19[3] = __Block_byref_object_copy_;
  v19[4] = __Block_byref_object_dispose_;
  selfCopy = self;
  v20 = selfCopy;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __47__MCCSecretAgentController_pingWithcompletion___block_invoke;
  aBlock[3] = &unk_1E84581B8;
  v18 = v19;
  v6 = withcompletionCopy;
  v17 = v6;
  v7 = _Block_copy(aBlock);
  agentConnection = selfCopy->_agentConnection;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __47__MCCSecretAgentController_pingWithcompletion___block_invoke_2;
  v14[3] = &unk_1E84581E0;
  v9 = v7;
  v15 = v9;
  v10 = [(MCCSecretAgentConnection *)agentConnection synchronousRemoteObjectProxyWithErrorHandler:v14];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __47__MCCSecretAgentController_pingWithcompletion___block_invoke_81;
  v12[3] = &unk_1E8458208;
  v11 = v9;
  v13 = v11;
  [v10 pingWithcompletion:v12];

  _Block_object_dispose(v19, 8);
}

void __47__MCCSecretAgentController_pingWithcompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = a3;
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, a2, v8);
  }
}

void __47__MCCSecretAgentController_pingWithcompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _MCCLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __47__MCCSecretAgentController_pingWithcompletion___block_invoke_2_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __47__MCCSecretAgentController_pingWithcompletion___block_invoke_81(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = _MCCLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138543362;
      v8 = v4;
      _os_log_impl(&dword_1D3703000, v5, OS_LOG_TYPE_DEFAULT, "Remote secret agent ping gave error: %{public}@", &v7, 0xCu);
    }
  }

  (*(*(a1 + 32) + 16))();

  v6 = *MEMORY[0x1E69E9840];
}

- (void)clearAllUserOverridesWithTimestamp:(double)timestamp completion:(id)completion
{
  completionCopy = completion;
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x3032000000;
  v21[3] = __Block_byref_object_copy_;
  v21[4] = __Block_byref_object_dispose_;
  selfCopy = self;
  v22 = selfCopy;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __74__MCCSecretAgentController_clearAllUserOverridesWithTimestamp_completion___block_invoke;
  aBlock[3] = &unk_1E84581B8;
  v20 = v21;
  v8 = completionCopy;
  v19 = v8;
  v9 = _Block_copy(aBlock);
  agentConnection = selfCopy->_agentConnection;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __74__MCCSecretAgentController_clearAllUserOverridesWithTimestamp_completion___block_invoke_2;
  v16[3] = &unk_1E84581E0;
  v11 = v9;
  v17 = v11;
  v12 = [(MCCSecretAgentConnection *)agentConnection remoteObjectProxyWithErrorHandler:v16];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __74__MCCSecretAgentController_clearAllUserOverridesWithTimestamp_completion___block_invoke_82;
  v14[3] = &unk_1E8458208;
  v13 = v11;
  v15 = v13;
  [v12 clearAllUserOverridesWithTimestamp:v14 completion:timestamp];

  _Block_object_dispose(v21, 8);
}

void __74__MCCSecretAgentController_clearAllUserOverridesWithTimestamp_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = a3;
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, a2, v8);
  }
}

void __74__MCCSecretAgentController_clearAllUserOverridesWithTimestamp_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _MCCLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __74__MCCSecretAgentController_clearAllUserOverridesWithTimestamp_completion___block_invoke_2_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __74__MCCSecretAgentController_clearAllUserOverridesWithTimestamp_completion___block_invoke_82(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = _MCCLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __74__MCCSecretAgentController_clearAllUserOverridesWithTimestamp_completion___block_invoke_82_cold_1();
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)syncNewOldCategoryTimestamps:(id)timestamps
{
  agentConnection = self->_agentConnection;
  timestampsCopy = timestamps;
  v5 = [(MCCSecretAgentConnection *)agentConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_84];
  [v5 syncNewOldCategoryTimestamps:timestampsCopy];
}

void __57__MCCSecretAgentController_syncNewOldCategoryTimestamps___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = _MCCLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __57__MCCSecretAgentController_syncNewOldCategoryTimestamps___block_invoke_cold_1();
  }
}

- (void)notifyWebRule:(id)rule
{
  agentConnection = self->_agentConnection;
  ruleCopy = rule;
  v5 = [(MCCSecretAgentConnection *)agentConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_86];
  [v5 notifyWebRule:ruleCopy];
}

void __42__MCCSecretAgentController_notifyWebRule___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = _MCCLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __42__MCCSecretAgentController_notifyWebRule___block_invoke_cold_1();
  }
}

- (void)notifyFullSyncCategoryOverrides:(id)overrides
{
  agentConnection = self->_agentConnection;
  overridesCopy = overrides;
  v5 = [(MCCSecretAgentConnection *)agentConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_88];
  [v5 notifyFullSyncCategoryOverrides:overridesCopy];
}

void __60__MCCSecretAgentController_notifyFullSyncCategoryOverrides___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = _MCCLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __60__MCCSecretAgentController_notifyFullSyncCategoryOverrides___block_invoke_cold_1();
  }
}

- (void)notifyNewOldCategoryChange:(id)change timestamp:(double)timestamp
{
  agentConnection = self->_agentConnection;
  changeCopy = change;
  v7 = [(MCCSecretAgentConnection *)agentConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_90];
  [v7 notifyNewOldCategoryChange:changeCopy timestamp:timestamp];
}

void __65__MCCSecretAgentController_notifyNewOldCategoryChange_timestamp___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = _MCCLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __65__MCCSecretAgentController_notifyNewOldCategoryChange_timestamp___block_invoke_cold_1();
  }
}

void __71__MCCSecretAgentController_getIsSecureEmailEnabledForEmail_completion___block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_1D3703000, v0, v1, "Initiation of remote secret agent service to get getIsSecureEmailEnabled returned an error: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __71__MCCSecretAgentController_getIsSecureEmailEnabledForEmail_completion___block_invoke_58_cold_1(char a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 67109378;
  v4[1] = a1 & 1;
  v5 = 2114;
  v6 = a2;
  _os_log_error_impl(&dword_1D3703000, log, OS_LOG_TYPE_ERROR, "Remote secret agent getIsSecureEmailEnabled results %d with error: %{public}@", v4, 0x12u);
  v3 = *MEMORY[0x1E69E9840];
}

void __72__MCCSecretAgentController_setIsSecureEmailEnabled_forEmail_completion___block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_1D3703000, v0, v1, "Initiation of remote secret agent service to set set setIsSecureEmailEnabled returned an error: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __72__MCCSecretAgentController_setIsSecureEmailEnabled_forEmail_completion___block_invoke_59_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_1D3703000, v0, v1, "Remote secret agent setIsSecureEmailEnabled call with error: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __67__MCCSecretAgentController_canSendSecureMessageFrom_to_completion___block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_1D3703000, v0, v1, "Initiation of remote secret agent service to get Recipient status returned an error: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __67__MCCSecretAgentController_canSendSecureMessageFrom_to_completion___block_invoke_60_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_1D3703000, v0, v1, "Remote secret agent canSendSecureMessageFrom call error: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __78__MCCSecretAgentController_setCanSendSecureMessageFrom_to_canSend_completion___block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_1D3703000, v0, v1, "Initiation of remote secret agent service to set Recipient status returned an error: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __78__MCCSecretAgentController_setCanSendSecureMessageFrom_to_canSend_completion___block_invoke_61_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_1D3703000, v0, v1, "Remote secret agent setRecipientStatusForSenderEmail call with error: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __63__MCCSecretAgentController_listSecItemsWithContext_completion___block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_1D3703000, v0, v1, "Initiation of remote secret agent service to listSecItems returned an error: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __64__MCCSecretAgentController_storeSecItemsWithContext_completion___block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_1D3703000, v0, v1, "Initiation of remote secret agent service to storeSecItems returned an error: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __72__MCCSecretAgentController_generateSSCertificateWithContext_completion___block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_1D3703000, v0, v1, "Initiation of remote secret agent service to generate SSCert returned an error: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __93__MCCSecretAgentController_signedDataFromContentData_senderEmail_recipientEmails_completion___block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_1D3703000, v0, v1, "Initiation of remote secret agent service to signedDataFromContentData returned an error: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __96__MCCSecretAgentController_encryptedDataFromContentData_senderEmail_recipientEmails_completion___block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_1D3703000, v0, v1, "Initiation of remote secret agent service to encryptedDataFromContentData returned an error: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __95__MCCSecretAgentController_decryptedDataFromContentData_senderEmail_recipientEmail_completion___block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_1D3703000, v0, v1, "Initiation of remote secret agent service to decryptedDataFromContentData returned an error: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __71__MCCSecretAgentController_predictCommerceEmailWithContext_completion___block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_1D3703000, v0, v1, "Predict commercial email: Initiation of remote secret agent service to predice commerce email returned an error: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __71__MCCSecretAgentController_predictCommerceEmailWithContext_completion___block_invoke_71_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_1D3703000, v0, v1, "Remote secret agent predict commerce call with error: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __79__MCCSecretAgentController_registerCategoryRulesCallbackWithNotificationTypes___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_1D3703000, v0, v1, "Remote secret agent register for rules callback with error: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __95__MCCSecretAgentController_registerCategoryRulesCallbackListener_notificationTypes_completion___block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_1D3703000, v0, v1, "Failed to register rules callback with error: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __95__MCCSecretAgentController_registerCategoryRulesCallbackListener_notificationTypes_completion___block_invoke_72_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_1D3703000, v0, v1, "Remote register-rules callback listener with error: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __65__MCCSecretAgentController_syncRecategorizationRules_completion___block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_1D3703000, v0, v1, "Failed to add recategorization sync-rule with error: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __65__MCCSecretAgentController_syncRecategorizationRules_completion___block_invoke_73_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_1D3703000, v0, v1, "Remote recategorization sync-rule with error: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __55__MCCSecretAgentController_isModelReadyWithCompletion___block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_1D3703000, v0, v1, "Initiation of remote secret agent service to list certificates returned an error: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __56__MCCSecretAgentController_getIABCategoryID_completion___block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_1D3703000, v0, v1, "Get IAB category domain: Initiation of remote secret agent service getIABCategoryID returned an error: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __56__MCCSecretAgentController_getIABCategoryID_completion___block_invoke_77_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_1D3703000, v0, v1, "Remote secret agent get IAB category call with error: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __56__MCCSecretAgentController_isPersonalDomain_completion___block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_1D3703000, v0, v1, "Initiation of remote secret agent service to check is personal domain returned an error: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __63__MCCSecretAgentController_getBlackPearlVersionWithCompletion___block_invoke_79_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_1D3703000, v0, v1, "Remote secret agent get blackpearl version call with error: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __47__MCCSecretAgentController_pingWithcompletion___block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_1D3703000, v0, v1, "Tried to ping, returned an error: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __74__MCCSecretAgentController_clearAllUserOverridesWithTimestamp_completion___block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_1D3703000, v0, v1, "Failed to clearAllUserOverrides with error: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __74__MCCSecretAgentController_clearAllUserOverridesWithTimestamp_completion___block_invoke_82_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_1D3703000, v0, v1, "Remote clearAllUserOverrides with error: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __57__MCCSecretAgentController_syncNewOldCategoryTimestamps___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_1D3703000, v0, v1, "Failed to syncNewOldCategoryTimestamps with error: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __42__MCCSecretAgentController_notifyWebRule___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_1D3703000, v0, v1, "Failed to notify web rule with error: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __60__MCCSecretAgentController_notifyFullSyncCategoryOverrides___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_1D3703000, v0, v1, "Failed to notify full sync with error: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __65__MCCSecretAgentController_notifyNewOldCategoryChange_timestamp___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_1D3703000, v0, v1, "Failed to notify new/old category change with error: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end