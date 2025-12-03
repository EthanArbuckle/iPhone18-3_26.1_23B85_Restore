@interface SLDCollaborationSigningService
+ (id)sharedService;
- (BOOL)allowsConnection:(id)connection;
- (SLDCollaborationSigningService)init;
- (id)signData:(id)data forCollaborationIdentifier:(id)identifier trackingPreventionSalt:(id)salt reply:(id)reply;
- (id)signSourceProcessWithMetadata:(id)metadata reply:(id)reply;
@end

@implementation SLDCollaborationSigningService

+ (id)sharedService
{
  if (sharedService_onceToken_0 != -1)
  {
    +[SLDCollaborationSigningService sharedService];
  }

  v3 = sharedService_sService_0;

  return v3;
}

uint64_t __47__SLDCollaborationSigningService_sharedService__block_invoke()
{
  v0 = objc_alloc_init(SLDCollaborationSigningService);
  v1 = sharedService_sService_0;
  sharedService_sService_0 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (SLDCollaborationSigningService)init
{
  v11.receiver = self;
  v11.super_class = SLDCollaborationSigningService;
  v2 = [(SLDCollaborationSigningService *)&v11 init];
  if (v2)
  {
    v3 = SLDGlobalWorkloop();
    v4 = dispatch_queue_create_with_target_V2("com.apple.sociallayerd.SLDCollaborationSigningService", 0, v3);
    privateSerialQueue = v2->_privateSerialQueue;
    v2->_privateSerialQueue = v4;

    v6 = [[SLDTaskManager alloc] initWithSerialQueue:v2->_privateSerialQueue];
    taskManager = v2->_taskManager;
    v2->_taskManager = v6;

    v8 = [[SLPersonIdentityGenerator alloc] initWithQueue:v2->_privateSerialQueue];
    personIdentityGenerator = v2->_personIdentityGenerator;
    v2->_personIdentityGenerator = v8;
  }

  return v2;
}

- (BOOL)allowsConnection:(id)connection
{
  connectionCopy = connection;
  if (SLDConnectionIsEntitledForCollaborationHandshake(connectionCopy) & 1) != 0 || (SLDConnectionHasPublicEntitlement(connectionCopy) & 1) != 0 || (SLDConnectionHasLegacyHighlightsEntitlement(connectionCopy))
  {
    v4 = 1;
  }

  else
  {
    v6 = SLDaemonLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(SLDCollaborationSigningService *)connectionCopy allowsConnection:v6, v7, v8, v9, v10, v11, v12];
    }

    v4 = 0;
  }

  return v4;
}

- (id)signData:(id)data forCollaborationIdentifier:(id)identifier trackingPreventionSalt:(id)salt reply:(id)reply
{
  v44 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  identifierCopy = identifier;
  saltCopy = salt;
  replyCopy = reply;
  v14 = SLDaemonLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "[SLDCollaborationSigningService signData:forCollaborationIdentifier:trackingPreventionSalt:reply:]";
    *&buf[12] = 2112;
    *&buf[14] = identifierCopy;
    _os_log_impl(&dword_231772000, v14, OS_LOG_TYPE_DEFAULT, "%s collaborationIdentifier: %@", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v43 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __99__SLDCollaborationSigningService_signData_forCollaborationIdentifier_trackingPreventionSalt_reply___block_invoke;
  aBlock[3] = &unk_278926028;
  v41 = buf;
  v15 = replyCopy;
  v40 = v15;
  v16 = _Block_copy(aBlock);
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __99__SLDCollaborationSigningService_signData_forCollaborationIdentifier_trackingPreventionSalt_reply___block_invoke_2;
  v37[3] = &unk_278926050;
  v17 = v16;
  v38 = v17;
  v18 = _Block_copy(v37);
  v28 = MEMORY[0x277D85DD0];
  v29 = 3221225472;
  v30 = __99__SLDCollaborationSigningService_signData_forCollaborationIdentifier_trackingPreventionSalt_reply___block_invoke_13;
  v31 = &unk_2789260A0;
  selfCopy = self;
  v19 = dataCopy;
  v33 = v19;
  v20 = identifierCopy;
  v34 = v20;
  v21 = saltCopy;
  v35 = v21;
  v22 = v17;
  v36 = v22;
  v23 = _Block_copy(&v28);
  v24 = [(SLDCollaborationSigningService *)self taskManager:v28];
  v25 = [v24 startAggregateTask:v23 withTimeout:v18 cancellationHandler:15.0];

  _Block_object_dispose(buf, 8);
  v26 = *MEMORY[0x277D85DE8];

  return v25;
}

uint64_t __99__SLDCollaborationSigningService_signData_forCollaborationIdentifier_trackingPreventionSalt_reply___block_invoke(uint64_t result)
{
  if ((*(*(*(result + 40) + 8) + 24) & 1) == 0)
  {
    v1 = result;
    result = (*(*(result + 32) + 16))();
    *(*(*(v1 + 40) + 8) + 24) = 1;
  }

  return result;
}

void __99__SLDCollaborationSigningService_signData_forCollaborationIdentifier_trackingPreventionSalt_reply___block_invoke_2(uint64_t a1, int a2)
{
  v4 = SLDaemonLogHandle();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);
  if (a2)
  {
    if (v5)
    {
      __99__SLDCollaborationSigningService_signData_forCollaborationIdentifier_trackingPreventionSalt_reply___block_invoke_2_cold_2(v4, v6, v7, v8, v9, v10, v11, v12);
    }

    v13 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.sociallayerd.SLDCollaborationSigningService" code:2 userInfo:0];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    if (v5)
    {
      __99__SLDCollaborationSigningService_signData_forCollaborationIdentifier_trackingPreventionSalt_reply___block_invoke_2_cold_1(v4);
    }

    (*(*(a1 + 32) + 16))();
  }
}

void __99__SLDCollaborationSigningService_signData_forCollaborationIdentifier_trackingPreventionSalt_reply___block_invoke_13(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v6 = [*(a1 + 32) personIdentityGenerator];
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __99__SLDCollaborationSigningService_signData_forCollaborationIdentifier_trackingPreventionSalt_reply___block_invoke_2_14;
  v11[3] = &unk_278926078;
  v12 = v5;
  v9 = *(a1 + 56);
  v13 = *(a1 + 64);
  v10 = v5;
  [v6 signData:v7 documentIdentifier:v8 trackingPreventionSalt:v9 completionHandler:v11];
}

void __99__SLDCollaborationSigningService_signData_forCollaborationIdentifier_trackingPreventionSalt_reply___block_invoke_2_14(uint64_t a1, void *a2, void *a3)
{
  v19[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  (*(*(a1 + 32) + 16))();
  if (!v5 || v6)
  {
    v7 = SLDaemonLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __99__SLDCollaborationSigningService_signData_forCollaborationIdentifier_trackingPreventionSalt_reply___block_invoke_2_14_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    }

    v14 = MEMORY[0x277CCA9B8];
    v18 = *MEMORY[0x277CCA068];
    v19[0] = @"Error signing data with SLPersonIdentityGenerator";
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    v16 = [v14 errorWithDomain:@"com.apple.sociallayerd.SLDCollaborationSigningService" code:2 userInfo:v15];

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (id)signSourceProcessWithMetadata:(id)metadata reply:(id)reply
{
  v79 = *MEMORY[0x277D85DE8];
  metadataCopy = metadata;
  replyCopy = reply;
  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  v7 = SLDaemonLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    localIdentifier = [metadataCopy localIdentifier];
    *buf = 136315650;
    *&buf[4] = "[SLDCollaborationSigningService signSourceProcessWithMetadata:reply:]";
    *&buf[12] = 2112;
    *&buf[14] = currentConnection;
    *&buf[22] = 2112;
    *&buf[24] = localIdentifier;
    _os_log_impl(&dword_231772000, v7, OS_LOG_TYPE_DEFAULT, "%s connection: %@, metadata identifier: %@", buf, 0x20u);
  }

  v9 = MEMORY[0x277D46F48];
  v10 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(currentConnection, "processIdentifier")}];
  v73 = 0;
  v11 = [v9 handleForIdentifier:v10 error:&v73];
  v12 = v73;

  identity = [v11 identity];
  if (identity && !v12)
  {
    if (currentConnection)
    {
      [currentConnection auditToken];
      if (v11)
      {
LABEL_7:
        [v11 auditToken];
        goto LABEL_13;
      }
    }

    else
    {
      memset(buf, 0, 32);
      if (v11)
      {
        goto LABEL_7;
      }
    }

    memset(v69, 0, 32);
LABEL_13:
    if (SLDAuditTokensAreEqual(buf, v69))
    {
      localIdentifier2 = [metadataCopy localIdentifier];
      v22 = localIdentifier2 == 0;

      if (v22)
      {
        v23 = SLDaemonLogHandle();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          [(SLDCollaborationSigningService *)v23 signSourceProcessWithMetadata:v24 reply:v25, v26, v27, v28, v29, v30];
        }
      }

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      buf[24] = 0;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __70__SLDCollaborationSigningService_signSourceProcessWithMetadata_reply___block_invoke_31;
      aBlock[3] = &unk_278926028;
      v65 = buf;
      v64 = replyCopy;
      v31 = _Block_copy(aBlock);
      v61[0] = MEMORY[0x277D85DD0];
      v61[1] = 3221225472;
      v61[2] = __70__SLDCollaborationSigningService_signSourceProcessWithMetadata_reply___block_invoke_2;
      v61[3] = &unk_278926050;
      v32 = v31;
      v62 = v32;
      v33 = _Block_copy(v61);
      v34 = objc_alloc_init(SLDProcessVerifier);
      v56[0] = MEMORY[0x277D85DD0];
      v56[1] = 3221225472;
      v56[2] = __70__SLDCollaborationSigningService_signSourceProcessWithMetadata_reply___block_invoke_33;
      v56[3] = &unk_2789260F0;
      v57 = metadataCopy;
      v35 = v34;
      v58 = v35;
      v59 = identity;
      v36 = v32;
      v60 = v36;
      v37 = _Block_copy(v56);
      taskManager = [(SLDCollaborationSigningService *)self taskManager];
      v20 = [taskManager startAggregateTask:v37 withTimeout:v33 cancellationHandler:15.0];

      _Block_object_dispose(buf, 8);
    }

    else
    {
      v39 = SLDaemonLogHandle();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        [(SLDCollaborationSigningService *)v39 signSourceProcessWithMetadata:v40 reply:v41, v42, v43, v44, v45, v46];
      }

      v47 = MEMORY[0x277CCA9B8];
      v74 = *MEMORY[0x277CCA068];
      v75 = @"signSourceProcessForMetadata: the audit token of the xpc connection does not match the audit token of the created process handle. Failing to sign the source process.";
      v48 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v75 forKeys:&v74 count:1];
      v49 = [v47 errorWithDomain:@"com.apple.sociallayerd.SLDCollaborationSigningService" code:2 userInfo:v48];

      privateSerialQueue = [(SLDCollaborationSigningService *)self privateSerialQueue];
      v66[0] = MEMORY[0x277D85DD0];
      v66[1] = 3221225472;
      v66[2] = __70__SLDCollaborationSigningService_signSourceProcessWithMetadata_reply___block_invoke_30;
      v66[3] = &unk_2789260C8;
      v67 = v49;
      v68 = replyCopy;
      v51 = v49;
      dispatch_async(privateSerialQueue, v66);

      v20 = objc_opt_new();
    }

    goto LABEL_22;
  }

  v14 = SLDaemonLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    [SLDCollaborationSigningService signSourceProcessWithMetadata:v12 reply:v14];
  }

  v15 = MEMORY[0x277CCA9B8];
  v76 = *MEMORY[0x277CCA068];
  v77 = @"signSourceProcessForMetadata could not retrieve an RBSProcessHandle for NSXPCConnection";
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v77 forKeys:&v76 count:1];
  v17 = [v15 errorWithDomain:@"com.apple.sociallayerd.SLDCollaborationSigningService" code:2 userInfo:v16];

  privateSerialQueue2 = [(SLDCollaborationSigningService *)self privateSerialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__SLDCollaborationSigningService_signSourceProcessWithMetadata_reply___block_invoke;
  block[3] = &unk_2789260C8;
  v71 = v17;
  v72 = replyCopy;
  v19 = v17;
  dispatch_async(privateSerialQueue2, block);

  v20 = objc_opt_new();
LABEL_22:

  v52 = *MEMORY[0x277D85DE8];

  return v20;
}

uint64_t __70__SLDCollaborationSigningService_signSourceProcessWithMetadata_reply___block_invoke_31(uint64_t result)
{
  if ((*(*(*(result + 40) + 8) + 24) & 1) == 0)
  {
    v1 = result;
    result = (*(*(result + 32) + 16))();
    *(*(*(v1 + 40) + 8) + 24) = 1;
  }

  return result;
}

void __70__SLDCollaborationSigningService_signSourceProcessWithMetadata_reply___block_invoke_2(uint64_t a1, int a2)
{
  v4 = SLDaemonLogHandle();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);
  if (a2)
  {
    if (v5)
    {
      __70__SLDCollaborationSigningService_signSourceProcessWithMetadata_reply___block_invoke_2_cold_2(v4, v6, v7, v8, v9, v10, v11, v12);
    }

    v13 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.sociallayerd.SLDCollaborationSigningService" code:2 userInfo:0];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    if (v5)
    {
      __70__SLDCollaborationSigningService_signSourceProcessWithMetadata_reply___block_invoke_2_cold_1(v4);
    }

    (*(*(a1 + 32) + 16))();
  }
}

void __70__SLDCollaborationSigningService_signSourceProcessWithMetadata_reply___block_invoke_33(uint64_t a1)
{
  v27[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) localIdentifier];
  v3 = [SLDProcessVerifier tagDataFromString:v2];

  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v23 = 0;
  v6 = [v4 signProcess:v5 tag:v3 error:&v23];
  v7 = v23;
  v8 = SLDaemonLogHandle();
  v9 = v8;
  if (v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = v6 == 0;
  }

  if (v10)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __70__SLDCollaborationSigningService_signSourceProcessWithMetadata_reply___block_invoke_33_cold_1(v7, v9, v11, v12, v13, v14, v15, v16);
    }

    v17 = MEMORY[0x277CCA9B8];
    v26 = *MEMORY[0x277CCA068];
    v27[0] = @"Error signing source process with SLDProcessVerifier";
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:&v26 count:1];
    v19 = [v17 errorWithDomain:@"com.apple.sociallayerd.SLDCollaborationSigningService" code:2 userInfo:v18];

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v21 = [*(a1 + 32) localIdentifier];
      *buf = 138412290;
      v25 = v21;
      _os_log_impl(&dword_231772000, v9, OS_LOG_TYPE_DEFAULT, "[SLDCollaborationSigningService] signSourceProcessForMetadata: successfully signed source process with collaboration local identifier: %@", buf, 0xCu);
    }

    (*(*(a1 + 56) + 16))();
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)allowsConnection:(uint64_t)a3 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6(&dword_231772000, a2, a3, "[SLDCollaborationSigningService] connection does not have the proper entitlement and will not be allowed to access the service: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __99__SLDCollaborationSigningService_signData_forCollaborationIdentifier_trackingPreventionSalt_reply___block_invoke_2_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6(&dword_231772000, a1, a3, "[SLDCollaborationSigningService] signData:forCollaborationIdentifier: timeout timer fired after %f seconds", a5, a6, a7, a8, 0);
  v8 = *MEMORY[0x277D85DE8];
}

void __99__SLDCollaborationSigningService_signData_forCollaborationIdentifier_trackingPreventionSalt_reply___block_invoke_2_14_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6(&dword_231772000, a2, a3, "[SLDCollaborationSigningService] signData:forCollaborationIdentifier: error signing data with SLPersonIdentityGenerator %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)signSourceProcessWithMetadata:(uint64_t)a3 reply:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6(&dword_231772000, a1, a3, "%s The audit token of the xpc connection does not match the audit token of the created process handle. Failing to sign the source process.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)signSourceProcessWithMetadata:(uint64_t)a3 reply:(uint64_t)a4 .cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6(&dword_231772000, a1, a3, "%s SWCollaborationMetadata's localIdentifier was nil. We can still sign the source process, but without a tag, which decreases uniqueness.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)signSourceProcessWithMetadata:(uint64_t)a1 reply:(NSObject *)a2 .cold.3(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 136315394;
  v4 = "[SLDCollaborationSigningService signSourceProcessWithMetadata:reply:]";
  v5 = 2112;
  v6 = a1;
  _os_log_error_impl(&dword_231772000, a2, OS_LOG_TYPE_ERROR, "%s cannot sign source process, because RBSProcessIdentity could not be created. error: %@", &v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

void __70__SLDCollaborationSigningService_signSourceProcessWithMetadata_reply___block_invoke_2_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6(&dword_231772000, a1, a3, "[SLDCollaborationSigningService] signSourceProcessForMetadata: timeout timer fired after %f seconds", a5, a6, a7, a8, 0);
  v8 = *MEMORY[0x277D85DE8];
}

void __70__SLDCollaborationSigningService_signSourceProcessWithMetadata_reply___block_invoke_33_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6(&dword_231772000, a2, a3, "[SLDCollaborationSigningService] signSourceProcessForMetadata: error signing source process: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

@end