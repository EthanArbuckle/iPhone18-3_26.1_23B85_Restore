@interface SLDCollaborationHandshakeService
+ (id)sharedService;
+ (void)setupInterface:(id)interface;
- (BOOL)_connection:(id)_connection hasPermissionForFileURL:(id)l;
- (BOOL)_doesMetadata:(id)metadata containAllOf:(id)of;
- (BOOL)_doesMetadata:(id)metadata containAnyOf:(id)of;
- (BOOL)_fileURLHasFileProvider:(id)provider error:(id *)error;
- (BOOL)allowsConnection:(id)connection;
- (SLDCollaborationHandshakeService)init;
- (id)_removeIdentities:(id)identities fromMetadata:(id)metadata;
- (id)_updateMetadata:(id)metadata withNewIdentities:(id)identities;
- (id)addParticipantHandles:(id)handles withFileURL:(id)l sandboxTokenData:(id)data metadata:(id)metadata reply:(id)reply;
- (id)addParticipantHandles:(id)handles withMetadata:(id)metadata reply:(id)reply;
- (id)generateProofForIdentity:(id)identity collaborationIdentifier:(id)identifier reply:(id)reply;
- (id)removeParticipantIdentities:(id)identities withFileURL:(id)l sandboxTokenData:(id)data metadata:(id)metadata reply:(id)reply;
- (id)removeParticipantIdentities:(id)identities withMetadata:(id)metadata reply:(id)reply;
- (id)startCollaborationWithFileURL:(id)l sandboxTokenData:(id)data metadata:(id)metadata participants:(id)participants reply:(id)reply;
- (id)startCollaborationWithMetadata:(id)metadata participants:(id)participants reply:(id)reply;
- (id)verifySourceBundleIdentifierFromMetadata:(id)metadata reply:(id)reply;
- (int64_t)_acquireSandboxHandleData:(id)data ForFileProviderDocumentURL:(id)l clientConnection:(id)connection error:(id *)error;
- (void)_localPersonIdentityForDocumentIdentifier:(id)identifier completion:(id)completion;
- (void)_personIdentitiesForHandles:(id)handles documentIdentifier:(id)identifier completion:(id)completion;
- (void)_releaseSandboxHandle:(int64_t)handle;
- (void)_sendActionUpdateParticipantsWithFileURL:(id)l metadata:(id)metadata addedIdentities:(id)identities removedIdentities:(id)removedIdentities completion:(id)completion;
- (void)_sendActionUpdateParticipantsWithMetadata:(id)metadata addedIdentities:(id)identities removedIdentities:(id)removedIdentities completion:(id)completion;
@end

@implementation SLDCollaborationHandshakeService

+ (id)sharedService
{
  if (sharedService_onceToken_2 != -1)
  {
    +[SLDCollaborationHandshakeService sharedService];
  }

  v3 = sharedService_sService_2;

  return v3;
}

uint64_t __49__SLDCollaborationHandshakeService_sharedService__block_invoke()
{
  v0 = objc_alloc_init(SLDCollaborationHandshakeService);
  v1 = sharedService_sService_2;
  sharedService_sService_2 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (SLDCollaborationHandshakeService)init
{
  v15.receiver = self;
  v15.super_class = SLDCollaborationHandshakeService;
  v2 = [(SLDCollaborationHandshakeService *)&v15 init];
  if (v2)
  {
    v3 = SLDGlobalWorkloop();
    v4 = dispatch_queue_create_with_target_V2("com.apple.sociallayerd.SLDCollaborationHandshakeService", 0, v3);
    privateSerialQueue = v2->_privateSerialQueue;
    v2->_privateSerialQueue = v4;

    v6 = [[SLDTaskManager alloc] initWithSerialQueue:v2->_privateSerialQueue];
    taskManager = v2->_taskManager;
    v2->_taskManager = v6;

    v8 = [[SLSWActionDispatcher alloc] initWithQueue:v2->_privateSerialQueue];
    actionDispatcher = v2->_actionDispatcher;
    v2->_actionDispatcher = v8;

    v10 = [[SLPersonIdentityGenerator alloc] initWithQueue:v2->_privateSerialQueue];
    personIdentityGenerator = v2->_personIdentityGenerator;
    v2->_personIdentityGenerator = v10;

    v12 = objc_alloc_init(SLDProcessVerifier);
    processVerifier = v2->_processVerifier;
    v2->_processVerifier = v12;
  }

  return v2;
}

- (BOOL)allowsConnection:(id)connection
{
  connectionCopy = connection;
  if (SLDConnectionIsEntitledForCollaborationHandshake(connectionCopy) & 1) != 0 || (SLDConnectionHasLegacyHighlightsEntitlement(connectionCopy))
  {
    v4 = 1;
  }

  else
  {
    v5 = SLDaemonLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [SLDCollaborationHandshakeService allowsConnection:];
    }

    v4 = 0;
  }

  return v4;
}

+ (void)setupInterface:(id)interface
{
  v3 = MEMORY[0x277CBEB98];
  interfaceCopy = interface;
  v5 = objc_opt_class();
  v6 = [v3 setWithObjects:{v5, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v6 forSelector:sel_removeParticipantIdentities_withMetadata_reply_ argumentIndex:0 ofReply:0];

  v7 = MEMORY[0x277CBEB98];
  v8 = objc_opt_class();
  v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v9 forSelector:sel_removeParticipantIdentities_withFileURL_sandboxTokenData_metadata_reply_ argumentIndex:0 ofReply:0];
}

- (id)generateProofForIdentity:(id)identity collaborationIdentifier:(id)identifier reply:(id)reply
{
  v47[1] = *MEMORY[0x277D85DE8];
  identityCopy = identity;
  identifierCopy = identifier;
  replyCopy = reply;
  if (identityCopy && ([identityCopy publicKeys], (v11 = objc_claimAutoreleasedReturnValue()) != 0) && (objc_msgSend(identityCopy, "publicKeys"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "count"), v12, v11, v13))
  {
    v41[0] = 0;
    v41[1] = v41;
    v41[2] = 0x2020000000;
    v42 = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __91__SLDCollaborationHandshakeService_generateProofForIdentity_collaborationIdentifier_reply___block_invoke_2;
    aBlock[3] = &unk_278926780;
    v40 = v41;
    v39 = replyCopy;
    v14 = _Block_copy(aBlock);
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __91__SLDCollaborationHandshakeService_generateProofForIdentity_collaborationIdentifier_reply___block_invoke_3;
    v36[3] = &unk_278926050;
    v15 = v14;
    v37 = v15;
    v16 = _Block_copy(v36);
    v28 = MEMORY[0x277D85DD0];
    v29 = 3221225472;
    v30 = __91__SLDCollaborationHandshakeService_generateProofForIdentity_collaborationIdentifier_reply___block_invoke_38;
    v31 = &unk_2789260F0;
    selfCopy = self;
    v33 = identityCopy;
    v34 = identifierCopy;
    v17 = v15;
    v35 = v17;
    v18 = _Block_copy(&v28);
    v19 = [(SLDCollaborationHandshakeService *)self taskManager:v28];
    v20 = [v19 startAggregateTask:v18 withTimeout:v16 cancellationHandler:15.0];

    _Block_object_dispose(v41, 8);
  }

  else
  {
    v21 = MEMORY[0x277CCA9B8];
    v46 = *MEMORY[0x277CCA068];
    v47[0] = @"Cannot generate proof without an identity or public keys";
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v47 forKeys:&v46 count:1];
    v23 = [v21 errorWithDomain:@"com.apple.sociallayerd.SLDCollaborationHandshakeService" code:2 userInfo:v22];

    privateSerialQueue = [(SLDCollaborationHandshakeService *)self privateSerialQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __91__SLDCollaborationHandshakeService_generateProofForIdentity_collaborationIdentifier_reply___block_invoke;
    block[3] = &unk_2789260C8;
    v44 = v23;
    v45 = replyCopy;
    v25 = v23;
    dispatch_async(privateSerialQueue, block);

    v20 = objc_opt_new();
  }

  v26 = *MEMORY[0x277D85DE8];

  return v20;
}

uint64_t __91__SLDCollaborationHandshakeService_generateProofForIdentity_collaborationIdentifier_reply___block_invoke_2(uint64_t result)
{
  if ((*(*(*(result + 40) + 8) + 24) & 1) == 0)
  {
    v1 = result;
    result = (*(*(result + 32) + 16))();
    *(*(*(v1 + 40) + 8) + 24) = 1;
  }

  return result;
}

void __91__SLDCollaborationHandshakeService_generateProofForIdentity_collaborationIdentifier_reply___block_invoke_3(uint64_t a1, int a2)
{
  v4 = SLDaemonLogHandle();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);
  if (a2)
  {
    if (v5)
    {
      __91__SLDCollaborationHandshakeService_generateProofForIdentity_collaborationIdentifier_reply___block_invoke_3_cold_2();
    }

    v6 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.sociallayerd.SLDCollaborationHandshakeService" code:2 userInfo:0];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    if (v5)
    {
      __91__SLDCollaborationHandshakeService_generateProofForIdentity_collaborationIdentifier_reply___block_invoke_3_cold_1();
    }

    (*(*(a1 + 32) + 16))();
  }
}

void __91__SLDCollaborationHandshakeService_generateProofForIdentity_collaborationIdentifier_reply___block_invoke_38(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v6 = [*(a1 + 32) personIdentityGenerator];
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __91__SLDCollaborationHandshakeService_generateProofForIdentity_collaborationIdentifier_reply___block_invoke_2_39;
  v10[3] = &unk_2789267A8;
  v11 = v5;
  v12 = *(a1 + 56);
  v9 = v5;
  [v6 generateProofForIdentity:v7 documentIdentifier:v8 completionHandler:v10];
}

void __91__SLDCollaborationHandshakeService_generateProofForIdentity_collaborationIdentifier_reply___block_invoke_2_39(uint64_t a1, void *a2, void *a3)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  (*(*(a1 + 32) + 16))();
  if (!v5 || v6)
  {
    v7 = SLDaemonLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __91__SLDCollaborationHandshakeService_generateProofForIdentity_collaborationIdentifier_reply___block_invoke_2_39_cold_1();
    }

    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v9 = MEMORY[0x277CCA9B8];
      v12 = *MEMORY[0x277CCA068];
      v13[0] = @"generating proof with SLPersonIdentityGenerator";
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
      v8 = [v9 errorWithDomain:@"com.apple.sociallayerd.SLDCollaborationHandshakeService" code:2 userInfo:v10];
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (id)verifySourceBundleIdentifierFromMetadata:(id)metadata reply:(id)reply
{
  v49 = *MEMORY[0x277D85DE8];
  metadataCopy = metadata;
  replyCopy = reply;
  v8 = SLDaemonLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v46 = "[SLDCollaborationHandshakeService verifySourceBundleIdentifierFromMetadata:reply:]";
    v47 = 2112;
    v48 = metadataCopy;
    _os_log_impl(&dword_231772000, v8, OS_LOG_TYPE_DEFAULT, "%s metadata: %@", buf, 0x16u);
  }

  sourceProcessData = [metadataCopy sourceProcessData];
  localIdentifier = [metadataCopy localIdentifier];
  v11 = [SLDProcessVerifier tagDataFromString:localIdentifier];

  if (sourceProcessData)
  {
    processVerifier = [(SLDCollaborationHandshakeService *)self processVerifier];
    v40 = 0;
    v13 = [processVerifier verifyData:sourceProcessData tag:v11 error:&v40];
    v14 = v40;

    if (v13)
    {
      actionDispatcher = [(SLDCollaborationHandshakeService *)self actionDispatcher];
      v36 = 0;
      v16 = [actionDispatcher bundleIDForProcess:v13 error:&v36];
      v17 = v36;

      v18 = 0;
      if (!v16)
      {
        if (v17)
        {
          v18 = v17;
        }

        else
        {
          v25 = MEMORY[0x277CCA9B8];
          v41 = *MEMORY[0x277CCA068];
          v42 = @"[SLDCollaborationHandshakeService] verifySourceBundleIdentifierFromMetadata: failed to verify source process.";
          v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
          v18 = [v25 errorWithDomain:@"com.apple.sociallayerd.SLDCollaborationHandshakeService" code:1 userInfo:v31];
        }
      }

      privateSerialQueue = [(SLDCollaborationHandshakeService *)self privateSerialQueue];
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __83__SLDCollaborationHandshakeService_verifySourceBundleIdentifierFromMetadata_reply___block_invoke_2;
      v32[3] = &unk_2789267D0;
      v34 = v18;
      v35 = replyCopy;
      v33 = v16;
      v27 = v18;
      v28 = v16;
      dispatch_async(privateSerialQueue, v32);

      v24 = objc_opt_new();
      goto LABEL_14;
    }
  }

  else
  {
    v14 = 0;
  }

  v19 = SLDaemonLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    [SLDCollaborationHandshakeService verifySourceBundleIdentifierFromMetadata:sourceProcessData reply:metadataCopy];
  }

  v20 = MEMORY[0x277CCA9B8];
  v43 = *MEMORY[0x277CCA068];
  v44 = @"[SLDCollaborationHandshakeService] verifySourceBundleIdentifierFromMetadata: failed to verify source process.";
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v44 forKeys:&v43 count:1];
  v22 = [v20 errorWithDomain:@"com.apple.sociallayerd.SLDCollaborationHandshakeService" code:1 userInfo:v21];

  privateSerialQueue2 = [(SLDCollaborationHandshakeService *)self privateSerialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __83__SLDCollaborationHandshakeService_verifySourceBundleIdentifierFromMetadata_reply___block_invoke;
  block[3] = &unk_2789260C8;
  v38 = v22;
  v39 = replyCopy;
  v13 = v22;
  dispatch_async(privateSerialQueue2, block);

  v24 = objc_opt_new();
  v17 = v39;
LABEL_14:

  v29 = *MEMORY[0x277D85DE8];

  return v24;
}

- (id)startCollaborationWithMetadata:(id)metadata participants:(id)participants reply:(id)reply
{
  v68 = *MEMORY[0x277D85DE8];
  metadataCopy = metadata;
  participantsCopy = participants;
  replyCopy = reply;
  v9 = SLDaemonLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    *&buf[4] = "[SLDCollaborationHandshakeService startCollaborationWithMetadata:participants:reply:]";
    *&buf[12] = 2112;
    *&buf[14] = metadataCopy;
    *&buf[22] = 2112;
    v67 = participantsCopy;
    _os_log_impl(&dword_231772000, v9, OS_LOG_TYPE_DEFAULT, "%s metadata: %@ participants: %@", buf, 0x20u);
  }

  sourceProcessData = [metadataCopy sourceProcessData];
  localIdentifier = [metadataCopy localIdentifier];
  v38 = [SLDProcessVerifier tagDataFromString:localIdentifier];

  if (sourceProcessData)
  {
    processVerifier = [(SLDCollaborationHandshakeService *)self processVerifier];
    v63 = 0;
    v13 = [processVerifier verifyData:sourceProcessData tag:v38 error:&v63];
    v37 = v63;

    if (v13)
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      LOBYTE(v67) = 0;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __86__SLDCollaborationHandshakeService_startCollaborationWithMetadata_participants_reply___block_invoke_2;
      aBlock[3] = &unk_2789267F8;
      v59 = buf;
      v58 = replyCopy;
      v14 = _Block_copy(aBlock);
      v55[0] = MEMORY[0x277D85DD0];
      v55[1] = 3221225472;
      v55[2] = __86__SLDCollaborationHandshakeService_startCollaborationWithMetadata_participants_reply___block_invoke_3;
      v55[3] = &unk_278926050;
      v15 = v14;
      v56 = v15;
      v36 = _Block_copy(v55);
      v53[0] = MEMORY[0x277D85DD0];
      v53[1] = 3221225472;
      v53[2] = __86__SLDCollaborationHandshakeService_startCollaborationWithMetadata_participants_reply___block_invoke_52;
      v53[3] = &unk_278926870;
      v53[4] = self;
      v16 = v15;
      v54 = v16;
      v17 = _Block_copy(v53);
      v50[0] = MEMORY[0x277D85DD0];
      v50[1] = 3221225472;
      v50[2] = __86__SLDCollaborationHandshakeService_startCollaborationWithMetadata_participants_reply___block_invoke_57;
      v50[3] = &unk_2789268E8;
      v50[4] = self;
      v18 = v16;
      v51 = v18;
      v19 = v17;
      v52 = v19;
      v20 = _Block_copy(v50);
      v47[0] = MEMORY[0x277D85DD0];
      v47[1] = 3221225472;
      v47[2] = __86__SLDCollaborationHandshakeService_startCollaborationWithMetadata_participants_reply___block_invoke_65;
      v47[3] = &unk_278926938;
      v47[4] = self;
      v48 = participantsCopy;
      v21 = v20;
      v49 = v21;
      v22 = _Block_copy(v47);
      v41[0] = MEMORY[0x277D85DD0];
      v41[1] = 3221225472;
      v41[2] = __86__SLDCollaborationHandshakeService_startCollaborationWithMetadata_participants_reply___block_invoke_70;
      v41[3] = &unk_2789269B0;
      v42 = metadataCopy;
      v23 = v22;
      v45 = v23;
      v24 = v18;
      v46 = v24;
      selfCopy = self;
      v25 = v13;
      v44 = v25;
      v26 = _Block_copy(v41);
      taskManager = [(SLDCollaborationHandshakeService *)self taskManager];
      v28 = [taskManager startAggregateTask:v26 withTimeout:v36 cancellationHandler:15.0];

      _Block_object_dispose(buf, 8);
      goto LABEL_10;
    }
  }

  else
  {
    v37 = 0;
  }

  v29 = SLDaemonLogHandle();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    [SLDCollaborationHandshakeService startCollaborationWithMetadata:sourceProcessData participants:metadataCopy reply:?];
  }

  v30 = MEMORY[0x277CCA9B8];
  v64 = *MEMORY[0x277CCA068];
  v65 = @"[SLDCollaborationHandshakeService] startCollaborationWithMetadata: failed to verify source process.";
  v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v65 forKeys:&v64 count:1];
  v32 = [v30 errorWithDomain:@"com.apple.sociallayerd.SLDCollaborationHandshakeService" code:1 userInfo:v31];

  privateSerialQueue = [(SLDCollaborationHandshakeService *)self privateSerialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __86__SLDCollaborationHandshakeService_startCollaborationWithMetadata_participants_reply___block_invoke;
  block[3] = &unk_2789260C8;
  v61 = v32;
  v62 = replyCopy;
  v25 = v32;
  dispatch_async(privateSerialQueue, block);

  v28 = objc_opt_new();
LABEL_10:

  v34 = *MEMORY[0x277D85DE8];

  return v28;
}

uint64_t __86__SLDCollaborationHandshakeService_startCollaborationWithMetadata_participants_reply___block_invoke_2(uint64_t result)
{
  if ((*(*(*(result + 40) + 8) + 24) & 1) == 0)
  {
    v1 = result;
    result = (*(*(result + 32) + 16))();
    *(*(*(v1 + 40) + 8) + 24) = 1;
  }

  return result;
}

void __86__SLDCollaborationHandshakeService_startCollaborationWithMetadata_participants_reply___block_invoke_3(uint64_t a1, int a2)
{
  v4 = SLDaemonLogHandle();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);
  if (a2)
  {
    if (v5)
    {
      __86__SLDCollaborationHandshakeService_startCollaborationWithMetadata_participants_reply___block_invoke_3_cold_2();
    }

    v6 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.sociallayerd.SLDCollaborationHandshakeService" code:2 userInfo:0];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    if (v5)
    {
      __86__SLDCollaborationHandshakeService_startCollaborationWithMetadata_participants_reply___block_invoke_3_cold_1();
    }

    (*(*(a1 + 32) + 16))();
  }
}

void __86__SLDCollaborationHandshakeService_startCollaborationWithMetadata_participants_reply___block_invoke_52(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = *(a1 + 32);
  v15 = a6;
  v16 = a5;
  v17 = [v14 taskManager];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __86__SLDCollaborationHandshakeService_startCollaborationWithMetadata_participants_reply___block_invoke_2_53;
  v22[3] = &unk_278926848;
  v18 = *(a1 + 40);
  v22[4] = *(a1 + 32);
  v23 = v13;
  v24 = v11;
  v25 = v12;
  v26 = v18;
  v19 = v12;
  v20 = v11;
  v21 = v13;
  [v17 startSubtask:v22 withProgress:v16 timer:v15];
}

void __86__SLDCollaborationHandshakeService_startCollaborationWithMetadata_participants_reply___block_invoke_2_53(uint64_t a1)
{
  v2 = SLDaemonLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_231772000, v2, OS_LOG_TYPE_DEFAULT, "[SLDCollaborationHandshakeService] startCollaborationWithMetadata: starting _SWUpdateCollaborationParticipantsAction", buf, 2u);
  }

  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = [*(a1 + 48) allValues];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __86__SLDCollaborationHandshakeService_startCollaborationWithMetadata_participants_reply___block_invoke_54;
  v11[3] = &unk_278926820;
  v10 = *(a1 + 32);
  v6 = *(&v10 + 1);
  v7 = *(a1 + 48);
  v14 = *(a1 + 64);
  v8 = *(a1 + 56);
  *&v9 = v7;
  *(&v9 + 1) = v8;
  v12 = v10;
  v13 = v9;
  [v3 _sendActionUpdateParticipantsWithMetadata:v4 addedIdentities:v5 removedIdentities:MEMORY[0x277CBEBF8] completion:v11];
}

void __86__SLDCollaborationHandshakeService_startCollaborationWithMetadata_participants_reply___block_invoke_54(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = SLDaemonLogHandle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_231772000, v3, OS_LOG_TYPE_DEFAULT, "[SLDCollaborationHandshakeService] startCollaborationWithMetadata: success. Replying to client with shareURL and updatedMetadata", v8, 2u);
    }

    v4 = [*(a1 + 32) _updateMetadata:*(a1 + 40) withNewIdentities:*(a1 + 48)];
    v5 = *(a1 + 56);
    (*(*(a1 + 64) + 16))();
  }

  else
  {
    v6 = *(a1 + 64);
    v7 = *(*(a1 + 64) + 16);

    v7();
  }
}

void __86__SLDCollaborationHandshakeService_startCollaborationWithMetadata_participants_reply___block_invoke_57(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = *(a1 + 32);
  v15 = a6;
  v16 = a5;
  v17 = [v14 taskManager];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __86__SLDCollaborationHandshakeService_startCollaborationWithMetadata_participants_reply___block_invoke_2_58;
  v22[3] = &unk_2789268C0;
  v18 = *(a1 + 40);
  v22[4] = *(a1 + 32);
  v23 = v13;
  v26 = v18;
  v24 = v11;
  v27 = *(a1 + 48);
  v25 = v12;
  v19 = v12;
  v20 = v11;
  v21 = v13;
  [v17 startSubtask:v22 withProgress:v16 timer:v15];
}

void __86__SLDCollaborationHandshakeService_startCollaborationWithMetadata_participants_reply___block_invoke_2_58(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = SLDaemonLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_231772000, v10, OS_LOG_TYPE_DEFAULT, "[SLDCollaborationHandshakeService] startCollaborationWithFileURL: starting _localPersonIdentityForDocumentIdentifier", buf, 2u);
  }

  v11 = *(a1 + 32);
  v12 = [*(a1 + 40) collaborationIdentifier];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __86__SLDCollaborationHandshakeService_startCollaborationWithMetadata_participants_reply___block_invoke_59;
  v16[3] = &unk_278926898;
  v22 = v9;
  v17 = *(a1 + 40);
  v23 = *(a1 + 64);
  v18 = *(a1 + 48);
  v24 = *(a1 + 72);
  v19 = *(a1 + 56);
  v20 = v7;
  v21 = v8;
  v13 = v8;
  v14 = v7;
  v15 = v9;
  [v11 _localPersonIdentityForDocumentIdentifier:v12 completion:v16];
}

void __86__SLDCollaborationHandshakeService_startCollaborationWithMetadata_participants_reply___block_invoke_59(void *a1, void *a2, void *a3, void *a4)
{
  v22[1] = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v7 && v8 && !v9)
  {
    v11 = SLDaemonLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v20 = 0;
      _os_log_impl(&dword_231772000, v11, OS_LOG_TYPE_DEFAULT, "[SLDCollaborationHandshakeService] _startCollaborationWithMetadata: Generated local identity.", v20, 2u);
    }

    (*(a1[9] + 16))();
    v10 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:a1[5]];
    [v10 setObject:v7 forKeyedSubscript:v8];
    v12 = a1[4];
    v13 = a1[6];
    v14 = a1[7];
    v15 = a1[8];
    (*(a1[11] + 16))();
  }

  else
  {
    (*(a1[9] + 16))();
    if (!v10)
    {
      v16 = MEMORY[0x277CCA9B8];
      v21 = *MEMORY[0x277CCA068];
      v22[0] = @"Could not generate person identities.";
      v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
      v10 = [v16 errorWithDomain:@"com.apple.sociallayerd.SLDCollaborationHandshakeService" code:1 userInfo:v17];
    }

    v18 = SLDaemonLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      __86__SLDCollaborationHandshakeService_startCollaborationWithMetadata_participants_reply___block_invoke_59_cold_1(a1);
    }

    (*(a1[10] + 16))();
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __86__SLDCollaborationHandshakeService_startCollaborationWithMetadata_participants_reply___block_invoke_65(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = *(a1 + 32);
  v12 = a5;
  v13 = a4;
  v14 = [v11 taskManager];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __86__SLDCollaborationHandshakeService_startCollaborationWithMetadata_participants_reply___block_invoke_2_66;
  v19[3] = &unk_278926848;
  v15 = *(a1 + 40);
  v19[4] = *(a1 + 32);
  v20 = v15;
  v21 = v10;
  v16 = *(a1 + 48);
  v22 = v9;
  v23 = v16;
  v17 = v9;
  v18 = v10;
  [v14 startSubtask:v19 withProgress:v13 timer:v12];
}

void __86__SLDCollaborationHandshakeService_startCollaborationWithMetadata_participants_reply___block_invoke_2_66(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1 + 32);
  v11 = [*(a1 + 40) allObjects];
  v12 = [*(a1 + 48) collaborationIdentifier];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __86__SLDCollaborationHandshakeService_startCollaborationWithMetadata_participants_reply___block_invoke_3_67;
  v16[3] = &unk_278926910;
  v21 = v9;
  v22 = *(a1 + 64);
  v17 = *(a1 + 56);
  v18 = *(a1 + 48);
  v19 = v7;
  v20 = v8;
  v13 = v8;
  v14 = v7;
  v15 = v9;
  [v10 _personIdentitiesForHandles:v11 documentIdentifier:v12 completion:v16];
}

void __86__SLDCollaborationHandshakeService_startCollaborationWithMetadata_participants_reply___block_invoke_3_67(void *a1, void *a2)
{
  v3 = a2;
  v4 = SLDaemonLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_231772000, v4, OS_LOG_TYPE_DEFAULT, "[SLDCollaborationHandshakeService] startCollaborationWithMetadata: Generated remote identities.", v9, 2u);
  }

  (*(a1[8] + 16))();
  v5 = a1[4];
  v6 = a1[5];
  v7 = a1[6];
  v8 = a1[7];
  (*(a1[9] + 16))();
}

void __86__SLDCollaborationHandshakeService_startCollaborationWithMetadata_participants_reply___block_invoke_70(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x3032000000;
  v28[3] = __Block_byref_object_copy__9;
  v28[4] = __Block_byref_object_dispose__9;
  v29 = 0;
  v10 = [MEMORY[0x277CDC708] actionWithMetadata:*(a1 + 32)];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __86__SLDCollaborationHandshakeService_startCollaborationWithMetadata_participants_reply___block_invoke_72;
  v21[3] = &unk_278926960;
  v27 = v28;
  v24 = *(a1 + 56);
  v11 = v7;
  v22 = v11;
  v12 = v8;
  v23 = v12;
  v13 = v9;
  v25 = v13;
  v26 = *(a1 + 64);
  [v10 setResponseHandlerBlock:v21];
  v14 = [*(a1 + 40) actionDispatcher];
  v15 = *(a1 + 48);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __86__SLDCollaborationHandshakeService_startCollaborationWithMetadata_participants_reply___block_invoke_78;
  v17[3] = &unk_278926988;
  v20 = v28;
  v16 = v13;
  v18 = v16;
  v19 = *(a1 + 64);
  [v14 dispatchAction:v10 withAssertionForProcess:v15 completion:v17];

  _Block_object_dispose(v28, 8);
}

void __86__SLDCollaborationHandshakeService_startCollaborationWithMetadata_participants_reply___block_invoke_72(void *a1, void *a2)
{
  v21[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  [*(*(a1[9] + 8) + 40) invalidate];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  if ([v5 success] && (objc_msgSend(v5, "updatedMetadata"), (v6 = objc_claimAutoreleasedReturnValue()) != 0) && (v7 = v6, objc_msgSend(v5, "url"), v8 = objc_claimAutoreleasedReturnValue(), v8, v7, v8))
  {
    v9 = SLDaemonLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v19 = 0;
      _os_log_impl(&dword_231772000, v9, OS_LOG_TYPE_DEFAULT, "[SLDCollaborationHandshakeService] startCollaborationWithMetadata: finished start action, moving on to adding participants.", v19, 2u);
    }

    v10 = a1[6];
    v11 = [v5 url];
    v12 = [v5 updatedMetadata];
    (*(v10 + 16))(v10, v11, v12, a1[4], a1[5]);
  }

  else
  {
    (*(a1[7] + 16))();
    v13 = [v3 error];
    v14 = v13;
    if (v13)
    {
      v11 = v13;
    }

    else
    {
      v15 = MEMORY[0x277CCA9B8];
      v20 = *MEMORY[0x277CCA068];
      v21[0] = @"startCollaborationWithMetadata start action failed.";
      v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
      v11 = [v15 errorWithDomain:@"com.apple.sociallayerd.SLDCollaborationHandshakeService" code:1 userInfo:v16];
    }

    v17 = SLDaemonLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      __86__SLDCollaborationHandshakeService_startCollaborationWithMetadata_participants_reply___block_invoke_72_cold_1();
    }

    (*(a1[8] + 16))();
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __86__SLDCollaborationHandshakeService_startCollaborationWithMetadata_participants_reply___block_invoke_78(void *a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  objc_storeStrong((*(a1[6] + 8) + 40), a2);
  if (v7)
  {
    [*(*(a1[6] + 8) + 40) invalidate];
    (*(a1[4] + 16))();
    (*(a1[5] + 16))();
  }

  else
  {
    v8 = SLDaemonLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v6 isValid];
      v10 = @"NO";
      if (v9)
      {
        v10 = @"YES";
      }

      v12 = 138412546;
      v13 = v6;
      v14 = 2112;
      v15 = v10;
      _os_log_impl(&dword_231772000, v8, OS_LOG_TYPE_DEFAULT, "[SLDCollaborationHandshakeService] action dispatcher successfully sent the start collaboration action to the app. Waiting for our response handler to be called. Assertion: %@ isValid: %@", &v12, 0x16u);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (id)startCollaborationWithFileURL:(id)l sandboxTokenData:(id)data metadata:(id)metadata participants:(id)participants reply:(id)reply
{
  v81[2] = *MEMORY[0x277D85DE8];
  lCopy = l;
  dataCopy = data;
  metadataCopy = metadata;
  participantsCopy = participants;
  replyCopy = reply;
  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  v13 = SLDaemonLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    *&buf[4] = "[SLDCollaborationHandshakeService startCollaborationWithFileURL:sandboxTokenData:metadata:participants:reply:]";
    *&buf[12] = 2112;
    *&buf[14] = metadataCopy;
    *&buf[22] = 2112;
    v79 = participantsCopy;
    _os_log_impl(&dword_231772000, v13, OS_LOG_TYPE_DEFAULT, "%s metadata: %@ participants: %@", buf, 0x20u);
  }

  v14 = objc_opt_new();
  [v14 setTotalUnitCount:1];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v79 = __Block_byref_object_copy__9;
  v80 = __Block_byref_object_dispose__9;
  v81[0] = 0;
  v74 = 0;
  v75 = &v74;
  v76 = 0x2020000000;
  v73 = 0;
  v15 = [(SLDCollaborationHandshakeService *)self _acquireSandboxHandleData:dataCopy ForFileProviderDocumentURL:lCopy clientConnection:currentConnection error:&v73];
  objc_storeStrong(v81, v73);
  v77 = v15;
  if (v75[3] == -1)
  {
    v33 = *&buf[8];
    v34 = *(*&buf[8] + 40);
    if (v34)
    {
      v35 = v34;
      v36 = *(v33 + 40);
      *(v33 + 40) = v35;
    }

    else
    {
      v37 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.sociallayerd.SLDCollaborationHandshakeService" code:3 userInfo:0];
      v36 = *(*&buf[8] + 40);
      *(*&buf[8] + 40) = v37;
    }

    privateSerialQueue = [(SLDCollaborationHandshakeService *)self privateSerialQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __111__SLDCollaborationHandshakeService_startCollaborationWithFileURL_sandboxTokenData_metadata_participants_reply___block_invoke;
    block[3] = &unk_278926610;
    v71 = replyCopy;
    v72 = buf;
    dispatch_async(privateSerialQueue, block);
  }

  else
  {
    v68[0] = 0;
    v68[1] = v68;
    v68[2] = 0x2020000000;
    v69 = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __111__SLDCollaborationHandshakeService_startCollaborationWithFileURL_sandboxTokenData_metadata_participants_reply___block_invoke_2;
    aBlock[3] = &unk_2789269D8;
    aBlock[4] = self;
    v66 = &v74;
    v67 = v68;
    v65 = replyCopy;
    v16 = _Block_copy(aBlock);
    v62[0] = MEMORY[0x277D85DD0];
    v62[1] = 3221225472;
    v62[2] = __111__SLDCollaborationHandshakeService_startCollaborationWithFileURL_sandboxTokenData_metadata_participants_reply___block_invoke_3;
    v62[3] = &unk_278926050;
    v17 = v16;
    v63 = v17;
    v18 = _Block_copy(v62);
    v59[0] = MEMORY[0x277D85DD0];
    v59[1] = 3221225472;
    v59[2] = __111__SLDCollaborationHandshakeService_startCollaborationWithFileURL_sandboxTokenData_metadata_participants_reply___block_invoke_90;
    v59[3] = &unk_278926A50;
    v59[4] = self;
    v19 = lCopy;
    v60 = v19;
    v20 = v17;
    v61 = v20;
    v21 = _Block_copy(v59);
    v56[0] = MEMORY[0x277D85DD0];
    v56[1] = 3221225472;
    v56[2] = __111__SLDCollaborationHandshakeService_startCollaborationWithFileURL_sandboxTokenData_metadata_participants_reply___block_invoke_96;
    v56[3] = &unk_2789268E8;
    v56[4] = self;
    v22 = v20;
    v57 = v22;
    v23 = v21;
    v58 = v23;
    v24 = _Block_copy(v56);
    v52[0] = MEMORY[0x277D85DD0];
    v52[1] = 3221225472;
    v52[2] = __111__SLDCollaborationHandshakeService_startCollaborationWithFileURL_sandboxTokenData_metadata_participants_reply___block_invoke_99;
    v52[3] = &unk_278926AC8;
    v52[4] = self;
    v53 = participantsCopy;
    v25 = v22;
    v54 = v25;
    v26 = v24;
    v55 = v26;
    v27 = _Block_copy(v52);
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __111__SLDCollaborationHandshakeService_startCollaborationWithFileURL_sandboxTokenData_metadata_participants_reply___block_invoke_102;
    v46[3] = &unk_278926B40;
    v47 = metadataCopy;
    v48 = v19;
    selfCopy = self;
    v28 = v27;
    v50 = v28;
    v29 = v25;
    v51 = v29;
    v30 = _Block_copy(v46);
    taskManager = [(SLDCollaborationHandshakeService *)self taskManager];
    v32 = [taskManager startAggregateTask:v30 withTimeout:v18 cancellationHandler:15.0];

    _Block_object_dispose(v68, 8);
    v14 = v32;
  }

  _Block_object_dispose(&v74, 8);
  _Block_object_dispose(buf, 8);

  v39 = *MEMORY[0x277D85DE8];

  return v14;
}

void __111__SLDCollaborationHandshakeService_startCollaborationWithFileURL_sandboxTokenData_metadata_participants_reply___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v9 = a2;
  v7 = a3;
  v8 = a4;
  [*(a1 + 32) _releaseSandboxHandle:*(*(*(a1 + 48) + 8) + 24)];
  if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
  {
    (*(*(a1 + 40) + 16))();
    *(*(*(a1 + 56) + 8) + 24) = 1;
  }
}

void __111__SLDCollaborationHandshakeService_startCollaborationWithFileURL_sandboxTokenData_metadata_participants_reply___block_invoke_3(uint64_t a1, int a2)
{
  v4 = SLDaemonLogHandle();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);
  if (a2)
  {
    if (v5)
    {
      __111__SLDCollaborationHandshakeService_startCollaborationWithFileURL_sandboxTokenData_metadata_participants_reply___block_invoke_3_cold_2();
    }

    v6 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.sociallayerd.SLDCollaborationHandshakeService" code:2 userInfo:0];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    if (v5)
    {
      __111__SLDCollaborationHandshakeService_startCollaborationWithFileURL_sandboxTokenData_metadata_participants_reply___block_invoke_3_cold_1();
    }

    (*(*(a1 + 32) + 16))();
  }
}

void __111__SLDCollaborationHandshakeService_startCollaborationWithFileURL_sandboxTokenData_metadata_participants_reply___block_invoke_90(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = *(a1 + 32);
  v15 = a6;
  v16 = a5;
  v17 = [v14 taskManager];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __111__SLDCollaborationHandshakeService_startCollaborationWithFileURL_sandboxTokenData_metadata_participants_reply___block_invoke_2_91;
  v23[3] = &unk_278926A28;
  v18 = *(a1 + 40);
  v23[4] = *(a1 + 32);
  v24 = v18;
  v25 = v13;
  v26 = v11;
  v19 = *(a1 + 48);
  v27 = v12;
  v28 = v19;
  v20 = v12;
  v21 = v11;
  v22 = v13;
  [v17 startSubtask:v23 withProgress:v16 timer:v15];
}

void __111__SLDCollaborationHandshakeService_startCollaborationWithFileURL_sandboxTokenData_metadata_participants_reply___block_invoke_2_91(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v6 = SLDaemonLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_231772000, v6, OS_LOG_TYPE_DEFAULT, "[SLDCollaborationHandshakeService] startCollaborationWithFileURL: starting _updateParticipantsWithFileURL", buf, 2u);
  }

  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10 = [*(a1 + 56) allValues];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __111__SLDCollaborationHandshakeService_startCollaborationWithFileURL_sandboxTokenData_metadata_participants_reply___block_invoke_92;
  v13[3] = &unk_278926A00;
  v11 = *(a1 + 32);
  v17 = v5;
  v13[4] = v11;
  v14 = *(a1 + 48);
  v15 = *(a1 + 56);
  v18 = *(a1 + 72);
  v16 = *(a1 + 64);
  v12 = v5;
  [v7 _sendActionUpdateParticipantsWithFileURL:v8 metadata:v9 addedIdentities:v10 removedIdentities:MEMORY[0x277CBEBF8] completion:v13];
}

void __111__SLDCollaborationHandshakeService_startCollaborationWithFileURL_sandboxTokenData_metadata_participants_reply___block_invoke_92(uint64_t a1, int a2, void *a3)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  (*(*(a1 + 64) + 16))();
  if (a2)
  {
    v6 = SLDaemonLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&dword_231772000, v6, OS_LOG_TYPE_DEFAULT, "[SLDCollaborationHandshakeService] startCollaborationWithFileURL: success. Replying with shareURL and updatedMetadata", v13, 2u);
    }

    v7 = [*(a1 + 32) _updateMetadata:*(a1 + 40) withNewIdentities:*(a1 + 48)];
    v8 = *(a1 + 56);
    (*(*(a1 + 72) + 16))();
  }

  else
  {
    if (!v5)
    {
      v9 = MEMORY[0x277CCA9B8];
      v14 = *MEMORY[0x277CCA068];
      v15[0] = @"startCollaborationWithFileURL adding participants failed";
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
      v5 = [v9 errorWithDomain:@"com.apple.sociallayerd.SLDCollaborationHandshakeService" code:1 userInfo:v10];
    }

    v11 = SLDaemonLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __111__SLDCollaborationHandshakeService_startCollaborationWithFileURL_sandboxTokenData_metadata_participants_reply___block_invoke_92_cold_1();
    }

    (*(*(a1 + 72) + 16))();
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __111__SLDCollaborationHandshakeService_startCollaborationWithFileURL_sandboxTokenData_metadata_participants_reply___block_invoke_96(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = *(a1 + 32);
  v15 = a6;
  v16 = a5;
  v17 = [v14 taskManager];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __111__SLDCollaborationHandshakeService_startCollaborationWithFileURL_sandboxTokenData_metadata_participants_reply___block_invoke_2_97;
  v22[3] = &unk_2789268C0;
  v18 = *(a1 + 40);
  v22[4] = *(a1 + 32);
  v23 = v13;
  v26 = v18;
  v24 = v11;
  v27 = *(a1 + 48);
  v25 = v12;
  v19 = v12;
  v20 = v11;
  v21 = v13;
  [v17 startSubtask:v22 withProgress:v16 timer:v15];
}

void __111__SLDCollaborationHandshakeService_startCollaborationWithFileURL_sandboxTokenData_metadata_participants_reply___block_invoke_2_97(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = SLDaemonLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_231772000, v10, OS_LOG_TYPE_DEFAULT, "[SLDCollaborationHandshakeService] startCollaborationWithFileURL: starting _localPersonIdentityForDocumentIdentifier", buf, 2u);
  }

  v11 = *(a1 + 32);
  v12 = [*(a1 + 40) collaborationIdentifier];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __111__SLDCollaborationHandshakeService_startCollaborationWithFileURL_sandboxTokenData_metadata_participants_reply___block_invoke_98;
  v16[3] = &unk_278926898;
  v22 = v9;
  v17 = *(a1 + 40);
  v23 = *(a1 + 64);
  v18 = *(a1 + 48);
  v24 = *(a1 + 72);
  v19 = *(a1 + 56);
  v20 = v7;
  v21 = v8;
  v13 = v8;
  v14 = v7;
  v15 = v9;
  [v11 _localPersonIdentityForDocumentIdentifier:v12 completion:v16];
}

void __111__SLDCollaborationHandshakeService_startCollaborationWithFileURL_sandboxTokenData_metadata_participants_reply___block_invoke_98(void *a1, void *a2, void *a3, void *a4)
{
  v22[1] = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v7 && v8 && !v9)
  {
    v11 = SLDaemonLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v20 = 0;
      _os_log_impl(&dword_231772000, v11, OS_LOG_TYPE_DEFAULT, "[SLDCollaborationHandshakeService] _startCollaborationWithFileURL: Generated local identity.", v20, 2u);
    }

    (*(a1[9] + 16))();
    v10 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:a1[5]];
    [v10 setObject:v7 forKeyedSubscript:v8];
    v12 = a1[4];
    v13 = a1[6];
    v14 = a1[7];
    v15 = a1[8];
    (*(a1[11] + 16))();
  }

  else
  {
    (*(a1[9] + 16))();
    if (!v10)
    {
      v16 = MEMORY[0x277CCA9B8];
      v21 = *MEMORY[0x277CCA068];
      v22[0] = @"Could not generate person identities.";
      v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
      v10 = [v16 errorWithDomain:@"com.apple.sociallayerd.SLDCollaborationHandshakeService" code:1 userInfo:v17];
    }

    v18 = SLDaemonLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      __111__SLDCollaborationHandshakeService_startCollaborationWithFileURL_sandboxTokenData_metadata_participants_reply___block_invoke_98_cold_1(a1);
    }

    (*(a1[10] + 16))();
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __111__SLDCollaborationHandshakeService_startCollaborationWithFileURL_sandboxTokenData_metadata_participants_reply___block_invoke_99(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = *(a1 + 32);
  v12 = a5;
  v13 = a4;
  v14 = [v11 taskManager];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __111__SLDCollaborationHandshakeService_startCollaborationWithFileURL_sandboxTokenData_metadata_participants_reply___block_invoke_2_100;
  v18[3] = &unk_278926AA0;
  v15 = *(a1 + 40);
  v18[4] = *(a1 + 32);
  v19 = v15;
  v20 = v10;
  v22 = *(a1 + 48);
  v23 = *(a1 + 56);
  v21 = v9;
  v16 = v9;
  v17 = v10;
  [v14 startSubtask:v18 withProgress:v13 timer:v12];
}

void __111__SLDCollaborationHandshakeService_startCollaborationWithFileURL_sandboxTokenData_metadata_participants_reply___block_invoke_2_100(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1 + 32);
  v11 = [*(a1 + 40) allObjects];
  v12 = [*(a1 + 48) collaborationIdentifier];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __111__SLDCollaborationHandshakeService_startCollaborationWithFileURL_sandboxTokenData_metadata_participants_reply___block_invoke_3_101;
  v16[3] = &unk_278926A78;
  v21 = v9;
  v22 = *(a1 + 64);
  v23 = *(a1 + 72);
  v17 = *(a1 + 56);
  v18 = *(a1 + 48);
  v19 = v7;
  v20 = v8;
  v13 = v8;
  v14 = v7;
  v15 = v9;
  [v10 _personIdentitiesForHandles:v11 documentIdentifier:v12 completion:v16];
}

void __111__SLDCollaborationHandshakeService_startCollaborationWithFileURL_sandboxTokenData_metadata_participants_reply___block_invoke_3_101(void *a1, void *a2, void *a3)
{
  v19[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if ([v5 count])
  {
    v7 = SLDaemonLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v16) = 0;
      _os_log_impl(&dword_231772000, v7, OS_LOG_TYPE_DEFAULT, "[SLDCollaborationHandshakeService] _startCollaborationWithFileURL: Generated remote identities.", &v16, 2u);
    }

    (*(a1[8] + 16))();
    v8 = a1[4];
    v9 = a1[5];
    v10 = a1[6];
    v11 = a1[7];
    (*(a1[10] + 16))();
  }

  else
  {
    (*(a1[8] + 16))();
    if (!v6)
    {
      v12 = MEMORY[0x277CCA9B8];
      v18 = *MEMORY[0x277CCA068];
      v19[0] = @"Could not generate person identities.";
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
      v6 = [v12 errorWithDomain:@"com.apple.sociallayerd.SLDCollaborationHandshakeService" code:1 userInfo:v13];
    }

    v14 = SLDaemonLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412290;
      v17 = v6;
      _os_log_impl(&dword_231772000, v14, OS_LOG_TYPE_DEFAULT, "[SLDCollaborationHandshakeService] _startCollaborationWithFileURL Failed to generate identities. Error: %@", &v16, 0xCu);
    }

    (*(a1[9] + 16))();
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __111__SLDCollaborationHandshakeService_startCollaborationWithFileURL_sandboxTokenData_metadata_participants_reply___block_invoke_102(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [MEMORY[0x277CDC708] actionWithMetadata:*(a1 + 32)];
  v8 = *(a1 + 40);
  v11 = *(a1 + 48);
  v13 = *(a1 + 56);
  v12 = v5;
  v14 = *(a1 + 64);
  v9 = v6;
  v10 = v5;
  SWPerformActionForDocumentURL();
}

void __111__SLDCollaborationHandshakeService_startCollaborationWithFileURL_sandboxTokenData_metadata_participants_reply___block_invoke_2_103(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] privateSerialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __111__SLDCollaborationHandshakeService_startCollaborationWithFileURL_sandboxTokenData_metadata_participants_reply___block_invoke_3_104;
  block[3] = &unk_278926AF0;
  v13 = v3;
  v5 = a1[7];
  v6 = a1[5];
  v7 = a1[6];
  v8 = a1[8];
  *&v9 = v5;
  *(&v9 + 1) = v8;
  *&v10 = v6;
  *(&v10 + 1) = v7;
  v14 = v10;
  v15 = v9;
  v11 = v3;
  dispatch_async(v4, block);
}

void __111__SLDCollaborationHandshakeService_startCollaborationWithFileURL_sandboxTokenData_metadata_participants_reply___block_invoke_3_104(void *a1)
{
  v21[1] = *MEMORY[0x277D85DE8];
  v3 = (a1 + 4);
  v2 = a1[4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = *v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  if ([v5 success] && (objc_msgSend(v5, "url"), (v6 = objc_claimAutoreleasedReturnValue()) != 0) && (v7 = v6, objc_msgSend(v5, "updatedMetadata"), v8 = objc_claimAutoreleasedReturnValue(), v8, v7, v8))
  {
    v9 = SLDaemonLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v19 = 0;
      _os_log_impl(&dword_231772000, v9, OS_LOG_TYPE_DEFAULT, "_SWStartCollaborationAction returned a shareURL and updatedMetadata.", v19, 2u);
    }

    v10 = a1[7];
    v11 = [v5 url];
    v12 = [v5 updatedMetadata];
    (*(v10 + 16))(v10, v11, v12, a1[5], a1[6]);
  }

  else
  {
    v13 = [*v3 error];
    v14 = v13;
    if (v13)
    {
      v11 = v13;
    }

    else
    {
      v15 = MEMORY[0x277CCA9B8];
      v20 = *MEMORY[0x277CCA068];
      v21[0] = @"_SWStartCollaborationAction failed";
      v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
      v11 = [v15 errorWithDomain:@"com.apple.sociallayerd.SLDCollaborationHandshakeService" code:1 userInfo:v16];
    }

    v17 = SLDaemonLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      __111__SLDCollaborationHandshakeService_startCollaborationWithFileURL_sandboxTokenData_metadata_participants_reply___block_invoke_3_104_cold_1(v3, v11, v17);
    }

    (*(a1[8] + 16))();
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (id)addParticipantHandles:(id)handles withMetadata:(id)metadata reply:(id)reply
{
  v80[1] = *MEMORY[0x277D85DE8];
  handlesCopy = handles;
  metadataCopy = metadata;
  replyCopy = reply;
  v11 = SLDaemonLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[SLDCollaborationHandshakeService addParticipantHandles:withMetadata:reply:]";
    _os_log_impl(&dword_231772000, v11, OS_LOG_TYPE_DEFAULT, "%s", &buf, 0xCu);
  }

  if ([handlesCopy count])
  {
    collaborationIdentifier = [metadataCopy collaborationIdentifier];
    v13 = collaborationIdentifier == 0;

    if (v13)
    {
      v37 = SLDaemonLogHandle();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        [(SLDCollaborationHandshakeService *)v37 addParticipantHandles:v38 withMetadata:v39 reply:v40, v41, v42, v43, v44];
      }

      v45 = MEMORY[0x277CCA9B8];
      v77 = *MEMORY[0x277CCA068];
      v78 = @"addParticipantHandles:withMetadata: cannot add participant handles because the metadata did not have a collaboration identifier";
      v46 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v78 forKeys:&v77 count:1];
      v47 = [v45 errorWithDomain:@"com.apple.sociallayerd.SLDCollaborationHandshakeService" code:2 userInfo:v46];

      privateSerialQueue = [(SLDCollaborationHandshakeService *)self privateSerialQueue];
      v68[0] = MEMORY[0x277D85DD0];
      v68[1] = 3221225472;
      v68[2] = __77__SLDCollaborationHandshakeService_addParticipantHandles_withMetadata_reply___block_invoke_115;
      v68[3] = &unk_2789260C8;
      v69 = v47;
      v70 = replyCopy;
      v49 = v47;
      dispatch_async(privateSerialQueue, v68);

      v23 = objc_opt_new();
    }

    else
    {
      *&buf = 0;
      *(&buf + 1) = &buf;
      v75 = 0x2020000000;
      v76 = 0;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __77__SLDCollaborationHandshakeService_addParticipantHandles_withMetadata_reply___block_invoke_2;
      aBlock[3] = &unk_278926B68;
      p_buf = &buf;
      v66 = replyCopy;
      v14 = _Block_copy(aBlock);
      v63[0] = MEMORY[0x277D85DD0];
      v63[1] = 3221225472;
      v63[2] = __77__SLDCollaborationHandshakeService_addParticipantHandles_withMetadata_reply___block_invoke_3;
      v63[3] = &unk_278926050;
      v15 = v14;
      v64 = v15;
      v16 = _Block_copy(v63);
      v61[0] = MEMORY[0x277D85DD0];
      v61[1] = 3221225472;
      v61[2] = __77__SLDCollaborationHandshakeService_addParticipantHandles_withMetadata_reply___block_invoke_117;
      v61[3] = &unk_278926BB8;
      v61[4] = self;
      v17 = v15;
      v62 = v17;
      v18 = _Block_copy(v61);
      v52 = MEMORY[0x277D85DD0];
      v53 = 3221225472;
      v54 = __77__SLDCollaborationHandshakeService_addParticipantHandles_withMetadata_reply___block_invoke_2_121;
      v55 = &unk_278926B40;
      selfCopy = self;
      v57 = handlesCopy;
      v58 = metadataCopy;
      v19 = v18;
      v59 = v19;
      v20 = v17;
      v60 = v20;
      v21 = _Block_copy(&v52);
      v22 = [(SLDCollaborationHandshakeService *)self taskManager:v52];
      v23 = [v22 startAggregateTask:v21 withTimeout:v16 cancellationHandler:15.0];

      _Block_object_dispose(&buf, 8);
    }
  }

  else
  {
    v24 = SLDaemonLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [(SLDCollaborationHandshakeService *)v24 addParticipantHandles:v25 withMetadata:v26 reply:v27, v28, v29, v30, v31];
    }

    v32 = MEMORY[0x277CCA9B8];
    v79 = *MEMORY[0x277CCA068];
    v80[0] = @"addParticipantHandles:withMetadata: cannot add participant handles because no participants were provided.";
    v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v80 forKeys:&v79 count:1];
    v34 = [v32 errorWithDomain:@"com.apple.sociallayerd.SLDCollaborationHandshakeService" code:2 userInfo:v33];

    privateSerialQueue2 = [(SLDCollaborationHandshakeService *)self privateSerialQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __77__SLDCollaborationHandshakeService_addParticipantHandles_withMetadata_reply___block_invoke;
    block[3] = &unk_2789260C8;
    v72 = v34;
    v73 = replyCopy;
    v36 = v34;
    dispatch_async(privateSerialQueue2, block);

    v23 = objc_opt_new();
  }

  v50 = *MEMORY[0x277D85DE8];

  return v23;
}

uint64_t __77__SLDCollaborationHandshakeService_addParticipantHandles_withMetadata_reply___block_invoke_2(uint64_t result)
{
  if ((*(*(*(result + 40) + 8) + 24) & 1) == 0)
  {
    v1 = result;
    result = (*(*(result + 32) + 16))();
    *(*(*(v1 + 40) + 8) + 24) = 1;
  }

  return result;
}

void __77__SLDCollaborationHandshakeService_addParticipantHandles_withMetadata_reply___block_invoke_3(uint64_t a1, int a2)
{
  v4 = SLDaemonLogHandle();
  v5 = v4;
  if (a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __77__SLDCollaborationHandshakeService_addParticipantHandles_withMetadata_reply___block_invoke_3_cold_1();
    }

    v6 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.sociallayerd.SLDCollaborationHandshakeService" code:2 userInfo:0];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_231772000, v5, OS_LOG_TYPE_DEFAULT, "[SLDCollaborationHandshakeService] addParticipantHandles:withMetadata: was cancelled by our client", v7, 2u);
    }

    (*(*(a1 + 32) + 16))();
  }
}

void __77__SLDCollaborationHandshakeService_addParticipantHandles_withMetadata_reply___block_invoke_117(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = *(a1 + 32);
  v12 = a5;
  v13 = a4;
  v14 = [v11 taskManager];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __77__SLDCollaborationHandshakeService_addParticipantHandles_withMetadata_reply___block_invoke_2_118;
  v18[3] = &unk_2789260F0;
  v15 = *(a1 + 40);
  v18[4] = *(a1 + 32);
  v19 = v10;
  v20 = v9;
  v21 = v15;
  v16 = v9;
  v17 = v10;
  [v14 startSubtask:v18 withProgress:v13 timer:v12];
}

void __77__SLDCollaborationHandshakeService_addParticipantHandles_withMetadata_reply___block_invoke_2_118(uint64_t a1)
{
  v2 = SLDaemonLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_231772000, v2, OS_LOG_TYPE_DEFAULT, "[SLDCollaborationHandshakeService] addParticipantHandles:withMetadata: starting _SWUpdateCollaborationParticipantsAction", buf, 2u);
  }

  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = [*(a1 + 48) allValues];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __77__SLDCollaborationHandshakeService_addParticipantHandles_withMetadata_reply___block_invoke_119;
  v11[3] = &unk_278926B90;
  v10 = *(a1 + 32);
  v6 = *(&v10 + 1);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  *&v9 = v7;
  *(&v9 + 1) = v8;
  v12 = v10;
  v13 = v9;
  [v3 _sendActionUpdateParticipantsWithMetadata:v4 addedIdentities:v5 removedIdentities:MEMORY[0x277CBEBF8] completion:v11];
}

void __77__SLDCollaborationHandshakeService_addParticipantHandles_withMetadata_reply___block_invoke_119(uint64_t a1, int a2)
{
  if (a2)
  {
    v5 = [*(a1 + 32) _updateMetadata:*(a1 + 40) withNewIdentities:*(a1 + 48)];
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v3 = *(a1 + 56);
    v4 = *(*(a1 + 56) + 16);

    v4();
  }
}

void __77__SLDCollaborationHandshakeService_addParticipantHandles_withMetadata_reply___block_invoke_2_121(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1 + 32);
  v11 = [*(a1 + 40) allObjects];
  v12 = [*(a1 + 48) collaborationIdentifier];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __77__SLDCollaborationHandshakeService_addParticipantHandles_withMetadata_reply___block_invoke_3_122;
  v16[3] = &unk_278926BE0;
  v20 = v9;
  v21 = *(a1 + 56);
  v17 = *(a1 + 48);
  v18 = v7;
  v19 = v8;
  v22 = *(a1 + 64);
  v13 = v8;
  v14 = v7;
  v15 = v9;
  [v10 _personIdentitiesForHandles:v11 documentIdentifier:v12 completion:v16];
}

void __77__SLDCollaborationHandshakeService_addParticipantHandles_withMetadata_reply___block_invoke_3_122(void *a1, void *a2, void *a3)
{
  v18[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if ([v5 count])
  {
    v7 = SLDaemonLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&dword_231772000, v7, OS_LOG_TYPE_DEFAULT, "[SLDCollaborationHandshakeService] addParticipantHandles:withMetadata: Generated remote identities.", &v15, 2u);
    }

    (*(a1[7] + 16))();
    v8 = a1[4];
    v9 = a1[5];
    v10 = a1[6];
    (*(a1[8] + 16))();
  }

  else
  {
    (*(a1[7] + 16))();
    if (!v6)
    {
      v11 = MEMORY[0x277CCA9B8];
      v17 = *MEMORY[0x277CCA068];
      v18[0] = @"Could not generate person identities.";
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
      v6 = [v11 errorWithDomain:@"com.apple.sociallayerd.SLDCollaborationHandshakeService" code:1 userInfo:v12];
    }

    v13 = SLDaemonLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412290;
      v16 = v6;
      _os_log_impl(&dword_231772000, v13, OS_LOG_TYPE_DEFAULT, "[SLDCollaborationHandshakeService] addParticipantHandles:withMetadata: Failed to generate identities. Error: %@", &v15, 0xCu);
    }

    (*(a1[9] + 16))();
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (id)addParticipantHandles:(id)handles withFileURL:(id)l sandboxTokenData:(id)data metadata:(id)metadata reply:(id)reply
{
  v90[1] = *MEMORY[0x277D85DE8];
  handlesCopy = handles;
  lCopy = l;
  dataCopy = data;
  metadataCopy = metadata;
  replyCopy = reply;
  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  v17 = SLDaemonLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "[SLDCollaborationHandshakeService addParticipantHandles:withFileURL:sandboxTokenData:metadata:reply:]";
    *&buf[12] = 2112;
    *&buf[14] = metadataCopy;
    _os_log_impl(&dword_231772000, v17, OS_LOG_TYPE_DEFAULT, "%s metadata: %@", buf, 0x16u);
  }

  v18 = objc_opt_new();
  [v18 setTotalUnitCount:1];
  collaborationIdentifier = [metadataCopy collaborationIdentifier];
  if (!collaborationIdentifier || ([metadataCopy collaborationIdentifier], v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v20, "length") == 0, v20, collaborationIdentifier, v21))
  {
    v31 = SLDaemonLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      [SLDCollaborationHandshakeService addParticipantHandles:withFileURL:sandboxTokenData:metadata:reply:];
    }

    v32 = MEMORY[0x277CCA9B8];
    v89 = *MEMORY[0x277CCA068];
    v90[0] = @"Missing collaboration identifier on the provided metadata.";
    v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v90 forKeys:&v89 count:1];
    v34 = [v32 errorWithDomain:@"com.apple.sociallayerd.SLDCollaborationHandshakeService" code:1 userInfo:v33];

    privateSerialQueue = [(SLDCollaborationHandshakeService *)self privateSerialQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __102__SLDCollaborationHandshakeService_addParticipantHandles_withFileURL_sandboxTokenData_metadata_reply___block_invoke;
    block[3] = &unk_2789260C8;
    v81 = v34;
    v82 = replyCopy;
    v36 = v34;
    dispatch_async(privateSerialQueue, block);
  }

  else if ([handlesCopy count])
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v84 = __Block_byref_object_copy__9;
    v85 = __Block_byref_object_dispose__9;
    v86 = 0;
    v73 = 0;
    v74 = &v73;
    v75 = 0x2020000000;
    obj = 0;
    v22 = [(SLDCollaborationHandshakeService *)self _acquireSandboxHandleData:dataCopy ForFileProviderDocumentURL:lCopy clientConnection:currentConnection error:&obj];
    objc_storeStrong(&v86, obj);
    v76 = v22;
    if (v74[3] == -1)
    {
      v43 = *&buf[8];
      v44 = *(*&buf[8] + 40);
      if (v44)
      {
        v45 = v44;
        v46 = *(v43 + 40);
        *(v43 + 40) = v45;
      }

      else
      {
        v47 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.sociallayerd.SLDCollaborationHandshakeService" code:3 userInfo:0];
        v46 = *(*&buf[8] + 40);
        *(*&buf[8] + 40) = v47;
      }

      privateSerialQueue2 = [(SLDCollaborationHandshakeService *)self privateSerialQueue];
      v69[0] = MEMORY[0x277D85DD0];
      v69[1] = 3221225472;
      v69[2] = __102__SLDCollaborationHandshakeService_addParticipantHandles_withFileURL_sandboxTokenData_metadata_reply___block_invoke_2;
      v69[3] = &unk_278926610;
      v70 = replyCopy;
      v71 = buf;
      dispatch_async(privateSerialQueue2, v69);
    }

    else
    {
      v67[0] = 0;
      v67[1] = v67;
      v67[2] = 0x2020000000;
      v68 = 0;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __102__SLDCollaborationHandshakeService_addParticipantHandles_withFileURL_sandboxTokenData_metadata_reply___block_invoke_3;
      aBlock[3] = &unk_278926C08;
      aBlock[4] = self;
      v65 = &v73;
      v66 = v67;
      v64 = replyCopy;
      v23 = _Block_copy(aBlock);
      v61[0] = MEMORY[0x277D85DD0];
      v61[1] = 3221225472;
      v61[2] = __102__SLDCollaborationHandshakeService_addParticipantHandles_withFileURL_sandboxTokenData_metadata_reply___block_invoke_4;
      v61[3] = &unk_278926050;
      v24 = v23;
      v62 = v24;
      v51 = _Block_copy(v61);
      v58[0] = MEMORY[0x277D85DD0];
      v58[1] = 3221225472;
      v58[2] = __102__SLDCollaborationHandshakeService_addParticipantHandles_withFileURL_sandboxTokenData_metadata_reply___block_invoke_130;
      v58[3] = &unk_278926C58;
      v58[4] = self;
      v59 = lCopy;
      v25 = v24;
      v60 = v25;
      v26 = _Block_copy(v58);
      taskManager = [(SLDCollaborationHandshakeService *)self taskManager];
      v53[0] = MEMORY[0x277D85DD0];
      v53[1] = 3221225472;
      v53[2] = __102__SLDCollaborationHandshakeService_addParticipantHandles_withFileURL_sandboxTokenData_metadata_reply___block_invoke_136;
      v53[3] = &unk_278926B40;
      v53[4] = self;
      v54 = handlesCopy;
      v55 = metadataCopy;
      v28 = v26;
      v56 = v28;
      v29 = v25;
      v57 = v29;
      v30 = [taskManager startAggregateTask:v53 withTimeout:v51 cancellationHandler:15.0];

      _Block_object_dispose(v67, 8);
      v18 = v30;
    }

    _Block_object_dispose(&v73, 8);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v37 = SLDaemonLogHandle();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      [SLDCollaborationHandshakeService addParticipantHandles:withFileURL:sandboxTokenData:metadata:reply:];
    }

    v38 = MEMORY[0x277CCA9B8];
    v87 = *MEMORY[0x277CCA068];
    v88 = @"There were no provided hashes to remove";
    v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v88 forKeys:&v87 count:1];
    v40 = [v38 errorWithDomain:@"com.apple.sociallayerd.SLDCollaborationHandshakeService" code:1 userInfo:v39];

    privateSerialQueue3 = [(SLDCollaborationHandshakeService *)self privateSerialQueue];
    v77[0] = MEMORY[0x277D85DD0];
    v77[1] = 3221225472;
    v77[2] = __102__SLDCollaborationHandshakeService_addParticipantHandles_withFileURL_sandboxTokenData_metadata_reply___block_invoke_129;
    v77[3] = &unk_2789260C8;
    v78 = v40;
    v79 = replyCopy;
    v42 = v40;
    dispatch_async(privateSerialQueue3, v77);
  }

  v49 = *MEMORY[0x277D85DE8];

  return v18;
}

void __102__SLDCollaborationHandshakeService_addParticipantHandles_withFileURL_sandboxTokenData_metadata_reply___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  [*(a1 + 32) _releaseSandboxHandle:*(*(*(a1 + 48) + 8) + 24)];
  if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
  {
    (*(*(a1 + 40) + 16))();
    *(*(*(a1 + 56) + 8) + 24) = 1;
  }
}

void __102__SLDCollaborationHandshakeService_addParticipantHandles_withFileURL_sandboxTokenData_metadata_reply___block_invoke_4(uint64_t a1, int a2)
{
  v4 = SLDaemonLogHandle();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);
  if (a2)
  {
    if (v5)
    {
      __102__SLDCollaborationHandshakeService_addParticipantHandles_withFileURL_sandboxTokenData_metadata_reply___block_invoke_4_cold_2();
    }

    v6 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.sociallayerd.SLDCollaborationHandshakeService" code:2 userInfo:0];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    if (v5)
    {
      __102__SLDCollaborationHandshakeService_addParticipantHandles_withFileURL_sandboxTokenData_metadata_reply___block_invoke_4_cold_1();
    }

    (*(*(a1 + 32) + 16))();
  }
}

void __102__SLDCollaborationHandshakeService_addParticipantHandles_withFileURL_sandboxTokenData_metadata_reply___block_invoke_130(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = *(a1 + 32);
  v12 = a5;
  v13 = a4;
  v14 = [v11 taskManager];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __102__SLDCollaborationHandshakeService_addParticipantHandles_withFileURL_sandboxTokenData_metadata_reply___block_invoke_2_131;
  v18[3] = &unk_2789260A0;
  v15 = *(a1 + 40);
  v18[4] = *(a1 + 32);
  v19 = v15;
  v20 = v10;
  v21 = v9;
  v22 = *(a1 + 48);
  v16 = v9;
  v17 = v10;
  [v14 startSubtask:v18 withProgress:v13 timer:v12];
}

void __102__SLDCollaborationHandshakeService_addParticipantHandles_withFileURL_sandboxTokenData_metadata_reply___block_invoke_2_131(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v6 = SLDaemonLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_231772000, v6, OS_LOG_TYPE_DEFAULT, "[SLDCollaborationHandshakeService] startCollaborationWithFileURL: starting _updateParticipantsWithFileURL", buf, 2u);
  }

  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10 = [*(a1 + 56) allValues];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __102__SLDCollaborationHandshakeService_addParticipantHandles_withFileURL_sandboxTokenData_metadata_reply___block_invoke_132;
  v13[3] = &unk_278926C30;
  v11 = *(a1 + 32);
  v16 = v5;
  v13[4] = v11;
  v14 = *(a1 + 48);
  v15 = *(a1 + 56);
  v17 = *(a1 + 64);
  v12 = v5;
  [v7 _sendActionUpdateParticipantsWithFileURL:v8 metadata:v9 addedIdentities:v10 removedIdentities:MEMORY[0x277CBEBF8] completion:v13];
}

void __102__SLDCollaborationHandshakeService_addParticipantHandles_withFileURL_sandboxTokenData_metadata_reply___block_invoke_132(uint64_t a1, int a2, void *a3)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  (*(*(a1 + 56) + 16))();
  if (a2)
  {
    v6 = [*(a1 + 32) _updateMetadata:*(a1 + 40) withNewIdentities:*(a1 + 48)];
    v7 = SLDaemonLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_231772000, v7, OS_LOG_TYPE_DEFAULT, "[SLDCollaborationHandshakeService] addCollaborationParticipants: finished adding participants, and the full initiation flow.", v12, 2u);
    }

    (*(*(a1 + 64) + 16))();
  }

  else
  {
    if (!v5)
    {
      v8 = MEMORY[0x277CCA9B8];
      v13 = *MEMORY[0x277CCA068];
      v14[0] = @"addCollaborationParticipants adding participants failed";
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
      v5 = [v8 errorWithDomain:@"com.apple.sociallayerd.SLDCollaborationHandshakeService" code:1 userInfo:v9];
    }

    v10 = SLDaemonLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __102__SLDCollaborationHandshakeService_addParticipantHandles_withFileURL_sandboxTokenData_metadata_reply___block_invoke_132_cold_1();
    }

    (*(*(a1 + 64) + 16))();
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __102__SLDCollaborationHandshakeService_addParticipantHandles_withFileURL_sandboxTokenData_metadata_reply___block_invoke_136(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1 + 32);
  v11 = [*(a1 + 40) allObjects];
  v12 = [*(a1 + 48) collaborationIdentifier];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __102__SLDCollaborationHandshakeService_addParticipantHandles_withFileURL_sandboxTokenData_metadata_reply___block_invoke_2_137;
  v16[3] = &unk_278926BE0;
  v20 = v9;
  v21 = *(a1 + 56);
  v17 = *(a1 + 48);
  v18 = v7;
  v19 = v8;
  v22 = *(a1 + 64);
  v13 = v8;
  v14 = v7;
  v15 = v9;
  [v10 _personIdentitiesForHandles:v11 documentIdentifier:v12 completion:v16];
}

void __102__SLDCollaborationHandshakeService_addParticipantHandles_withFileURL_sandboxTokenData_metadata_reply___block_invoke_2_137(void *a1, void *a2, void *a3)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = SLDaemonLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&dword_231772000, v7, OS_LOG_TYPE_DEFAULT, "[SLDCollaborationHandshakeService] _startCollaborationWithFileURL: Generated identities.", v15, 2u);
    }

    (*(a1[7] + 16))();
    v8 = a1[4];
    v9 = a1[5];
    v10 = a1[6];
    (*(a1[8] + 16))();
  }

  else
  {
    (*(a1[7] + 16))();
    if (!v6)
    {
      v11 = MEMORY[0x277CCA9B8];
      v16 = *MEMORY[0x277CCA068];
      v17[0] = @"Could not generate person identities.";
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
      v6 = [v11 errorWithDomain:@"com.apple.sociallayerd.SLDCollaborationHandshakeService" code:1 userInfo:v12];
    }

    v13 = SLDaemonLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __102__SLDCollaborationHandshakeService_addParticipantHandles_withFileURL_sandboxTokenData_metadata_reply___block_invoke_2_137_cold_1();
    }

    (*(a1[9] + 16))();
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (id)removeParticipantIdentities:(id)identities withMetadata:(id)metadata reply:(id)reply
{
  v70[1] = *MEMORY[0x277D85DE8];
  identitiesCopy = identities;
  metadataCopy = metadata;
  replyCopy = reply;
  v11 = SLDaemonLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[SLDCollaborationHandshakeService removeParticipantIdentities:withMetadata:reply:]";
    _os_log_impl(&dword_231772000, v11, OS_LOG_TYPE_DEFAULT, "%s", &buf, 0xCu);
  }

  if ([identitiesCopy count])
  {
    collaborationIdentifier = [metadataCopy collaborationIdentifier];
    v13 = collaborationIdentifier == 0;

    if (v13)
    {
      v34 = SLDaemonLogHandle();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        [(SLDCollaborationHandshakeService *)v34 removeParticipantIdentities:v35 withMetadata:v36 reply:v37, v38, v39, v40, v41];
      }

      v42 = MEMORY[0x277CCA9B8];
      v67 = *MEMORY[0x277CCA068];
      v68 = @"removeParticipantIdentities:withMetadata: cannot remove participant handles because the metadata did not have a collaboration identifier";
      v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v68 forKeys:&v67 count:1];
      v44 = [v42 errorWithDomain:@"com.apple.sociallayerd.SLDCollaborationHandshakeService" code:2 userInfo:v43];

      privateSerialQueue = [(SLDCollaborationHandshakeService *)self privateSerialQueue];
      v58[0] = MEMORY[0x277D85DD0];
      v58[1] = 3221225472;
      v58[2] = __83__SLDCollaborationHandshakeService_removeParticipantIdentities_withMetadata_reply___block_invoke_144;
      v58[3] = &unk_2789260C8;
      v59 = v44;
      v60 = replyCopy;
      v46 = v44;
      dispatch_async(privateSerialQueue, v58);

      v20 = objc_opt_new();
    }

    else
    {
      *&buf = 0;
      *(&buf + 1) = &buf;
      v65 = 0x2020000000;
      v66 = 0;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __83__SLDCollaborationHandshakeService_removeParticipantIdentities_withMetadata_reply___block_invoke_2;
      aBlock[3] = &unk_278926B68;
      p_buf = &buf;
      v56 = replyCopy;
      v14 = _Block_copy(aBlock);
      v53[0] = MEMORY[0x277D85DD0];
      v53[1] = 3221225472;
      v53[2] = __83__SLDCollaborationHandshakeService_removeParticipantIdentities_withMetadata_reply___block_invoke_3;
      v53[3] = &unk_278926050;
      v15 = v14;
      v54 = v15;
      v16 = _Block_copy(v53);
      v49[0] = MEMORY[0x277D85DD0];
      v49[1] = 3221225472;
      v49[2] = __83__SLDCollaborationHandshakeService_removeParticipantIdentities_withMetadata_reply___block_invoke_145;
      v49[3] = &unk_2789260F0;
      v49[4] = self;
      v50 = metadataCopy;
      v51 = identitiesCopy;
      v17 = v15;
      v52 = v17;
      v18 = _Block_copy(v49);
      taskManager = [(SLDCollaborationHandshakeService *)self taskManager];
      v20 = [taskManager startAggregateTask:v18 withTimeout:v16 cancellationHandler:15.0];

      _Block_object_dispose(&buf, 8);
    }
  }

  else
  {
    v21 = SLDaemonLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [(SLDCollaborationHandshakeService *)v21 removeParticipantIdentities:v22 withMetadata:v23 reply:v24, v25, v26, v27, v28];
    }

    v29 = MEMORY[0x277CCA9B8];
    v69 = *MEMORY[0x277CCA068];
    v70[0] = @"removeParticipantIdentities:withMetadata: cannot remove participant handles because no participants were provided.";
    v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v70 forKeys:&v69 count:1];
    v31 = [v29 errorWithDomain:@"com.apple.sociallayerd.SLDCollaborationHandshakeService" code:2 userInfo:v30];

    privateSerialQueue2 = [(SLDCollaborationHandshakeService *)self privateSerialQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __83__SLDCollaborationHandshakeService_removeParticipantIdentities_withMetadata_reply___block_invoke;
    block[3] = &unk_2789260C8;
    v62 = v31;
    v63 = replyCopy;
    v33 = v31;
    dispatch_async(privateSerialQueue2, block);

    v20 = objc_opt_new();
  }

  v47 = *MEMORY[0x277D85DE8];

  return v20;
}

uint64_t __83__SLDCollaborationHandshakeService_removeParticipantIdentities_withMetadata_reply___block_invoke_2(uint64_t result)
{
  if ((*(*(*(result + 40) + 8) + 24) & 1) == 0)
  {
    v1 = result;
    result = (*(*(result + 32) + 16))();
    *(*(*(v1 + 40) + 8) + 24) = 1;
  }

  return result;
}

void __83__SLDCollaborationHandshakeService_removeParticipantIdentities_withMetadata_reply___block_invoke_3(uint64_t a1, int a2)
{
  v4 = SLDaemonLogHandle();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);
  if (a2)
  {
    if (v5)
    {
      __83__SLDCollaborationHandshakeService_removeParticipantIdentities_withMetadata_reply___block_invoke_3_cold_2();
    }

    v6 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.sociallayerd.SLDCollaborationHandshakeService" code:2 userInfo:0];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    if (v5)
    {
      __83__SLDCollaborationHandshakeService_removeParticipantIdentities_withMetadata_reply___block_invoke_3_cold_1();
    }

    (*(*(a1 + 32) + 16))();
  }
}

void __83__SLDCollaborationHandshakeService_removeParticipantIdentities_withMetadata_reply___block_invoke_145(uint64_t a1)
{
  v2 = SLDaemonLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_231772000, v2, OS_LOG_TYPE_DEFAULT, "[SLDCollaborationHandshakeService] removeParticipantIdentities:withMetadata: starting _SWUpdateCollaborationParticipantsAction", buf, 2u);
  }

  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = [*(a1 + 48) allObjects];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __83__SLDCollaborationHandshakeService_removeParticipantIdentities_withMetadata_reply___block_invoke_146;
  v12[3] = &unk_278926B90;
  v11 = *(a1 + 32);
  v6 = *(a1 + 48);
  v7 = *(a1 + 40);
  v8 = *(a1 + 56);
  *&v9 = v7;
  *(&v9 + 1) = v8;
  *&v10 = v11;
  *(&v10 + 1) = v6;
  v13 = v10;
  v14 = v9;
  [v3 _sendActionUpdateParticipantsWithMetadata:v4 addedIdentities:MEMORY[0x277CBEBF8] removedIdentities:v5 completion:v12];
}

void __83__SLDCollaborationHandshakeService_removeParticipantIdentities_withMetadata_reply___block_invoke_146(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) allObjects];
    v7 = [v3 _removeIdentities:v4 fromMetadata:*(a1 + 48)];

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v5 = *(a1 + 56);
    v6 = *(*(a1 + 56) + 16);

    v6();
  }
}

- (id)removeParticipantIdentities:(id)identities withFileURL:(id)l sandboxTokenData:(id)data metadata:(id)metadata reply:(id)reply
{
  v84[1] = *MEMORY[0x277D85DE8];
  identitiesCopy = identities;
  lCopy = l;
  dataCopy = data;
  metadataCopy = metadata;
  replyCopy = reply;
  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  v17 = SLDaemonLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "[SLDCollaborationHandshakeService removeParticipantIdentities:withFileURL:sandboxTokenData:metadata:reply:]";
    *&buf[12] = 2112;
    *&buf[14] = metadataCopy;
    _os_log_impl(&dword_231772000, v17, OS_LOG_TYPE_DEFAULT, "%s metadata: %@", buf, 0x16u);
  }

  v18 = objc_opt_new();
  [v18 setTotalUnitCount:1];
  collaborationIdentifier = [metadataCopy collaborationIdentifier];
  if (!collaborationIdentifier || ([metadataCopy collaborationIdentifier], v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v20, "length") == 0, v20, collaborationIdentifier, v21))
  {
    v29 = SLDaemonLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      [SLDCollaborationHandshakeService removeParticipantIdentities:withFileURL:sandboxTokenData:metadata:reply:];
    }

    v30 = MEMORY[0x277CCA9B8];
    v83 = *MEMORY[0x277CCA068];
    v84[0] = @"Missing collaboration identifier on the provided metadata.";
    v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v84 forKeys:&v83 count:1];
    v32 = [v30 errorWithDomain:@"com.apple.sociallayerd.SLDCollaborationHandshakeService" code:1 userInfo:v31];

    privateSerialQueue = [(SLDCollaborationHandshakeService *)self privateSerialQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __108__SLDCollaborationHandshakeService_removeParticipantIdentities_withFileURL_sandboxTokenData_metadata_reply___block_invoke;
    block[3] = &unk_2789260C8;
    v75 = v32;
    v76 = replyCopy;
    v34 = v32;
    dispatch_async(privateSerialQueue, block);
  }

  else if ([identitiesCopy count])
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v78 = __Block_byref_object_copy__9;
    v79 = __Block_byref_object_dispose__9;
    v80 = 0;
    v67 = 0;
    v68 = &v67;
    v69 = 0x2020000000;
    obj = 0;
    v22 = [(SLDCollaborationHandshakeService *)self _acquireSandboxHandleData:dataCopy ForFileProviderDocumentURL:lCopy clientConnection:currentConnection error:&obj];
    objc_storeStrong(&v80, obj);
    v70 = v22;
    if (v68[3] == -1)
    {
      v41 = *&buf[8];
      v42 = *(*&buf[8] + 40);
      if (v42)
      {
        v43 = v42;
        v44 = *(v41 + 40);
        *(v41 + 40) = v43;
      }

      else
      {
        v45 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.sociallayerd.SLDCollaborationHandshakeService" code:3 userInfo:0];
        v44 = *(*&buf[8] + 40);
        *(*&buf[8] + 40) = v45;
      }

      privateSerialQueue2 = [(SLDCollaborationHandshakeService *)self privateSerialQueue];
      v63[0] = MEMORY[0x277D85DD0];
      v63[1] = 3221225472;
      v63[2] = __108__SLDCollaborationHandshakeService_removeParticipantIdentities_withFileURL_sandboxTokenData_metadata_reply___block_invoke_2;
      v63[3] = &unk_278926610;
      v64 = replyCopy;
      v65 = buf;
      dispatch_async(privateSerialQueue2, v63);
    }

    else
    {
      v61[0] = 0;
      v61[1] = v61;
      v61[2] = 0x2020000000;
      v62 = 0;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __108__SLDCollaborationHandshakeService_removeParticipantIdentities_withFileURL_sandboxTokenData_metadata_reply___block_invoke_3;
      aBlock[3] = &unk_278926C08;
      aBlock[4] = self;
      v59 = &v67;
      v60 = v61;
      v58 = replyCopy;
      v23 = _Block_copy(aBlock);
      v55[0] = MEMORY[0x277D85DD0];
      v55[1] = 3221225472;
      v55[2] = __108__SLDCollaborationHandshakeService_removeParticipantIdentities_withFileURL_sandboxTokenData_metadata_reply___block_invoke_4;
      v55[3] = &unk_278926050;
      v24 = v23;
      v56 = v24;
      v25 = _Block_copy(v55);
      taskManager = [(SLDCollaborationHandshakeService *)self taskManager];
      v50[0] = MEMORY[0x277D85DD0];
      v50[1] = 3221225472;
      v50[2] = __108__SLDCollaborationHandshakeService_removeParticipantIdentities_withFileURL_sandboxTokenData_metadata_reply___block_invoke_148;
      v50[3] = &unk_2789260A0;
      v50[4] = self;
      v51 = lCopy;
      v52 = metadataCopy;
      v53 = identitiesCopy;
      v27 = v24;
      v54 = v27;
      v28 = [taskManager startAggregateTask:v50 withTimeout:v25 cancellationHandler:15.0];

      _Block_object_dispose(v61, 8);
      v18 = v28;
    }

    _Block_object_dispose(&v67, 8);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v35 = SLDaemonLogHandle();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      [SLDCollaborationHandshakeService removeParticipantIdentities:withFileURL:sandboxTokenData:metadata:reply:];
    }

    v36 = MEMORY[0x277CCA9B8];
    v81 = *MEMORY[0x277CCA068];
    v82 = @"There were no provided hashes to remove";
    v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v82 forKeys:&v81 count:1];
    v38 = [v36 errorWithDomain:@"com.apple.sociallayerd.SLDCollaborationHandshakeService" code:1 userInfo:v37];

    privateSerialQueue3 = [(SLDCollaborationHandshakeService *)self privateSerialQueue];
    v71[0] = MEMORY[0x277D85DD0];
    v71[1] = 3221225472;
    v71[2] = __108__SLDCollaborationHandshakeService_removeParticipantIdentities_withFileURL_sandboxTokenData_metadata_reply___block_invoke_147;
    v71[3] = &unk_2789260C8;
    v72 = v38;
    v73 = replyCopy;
    v40 = v38;
    dispatch_async(privateSerialQueue3, v71);
  }

  v47 = *MEMORY[0x277D85DE8];

  return v18;
}

void __108__SLDCollaborationHandshakeService_removeParticipantIdentities_withFileURL_sandboxTokenData_metadata_reply___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  [*(a1 + 32) _releaseSandboxHandle:*(*(*(a1 + 48) + 8) + 24)];
  if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
  {
    (*(*(a1 + 40) + 16))();
    *(*(*(a1 + 56) + 8) + 24) = 1;
  }
}

void __108__SLDCollaborationHandshakeService_removeParticipantIdentities_withFileURL_sandboxTokenData_metadata_reply___block_invoke_4(uint64_t a1, int a2)
{
  v4 = SLDaemonLogHandle();
  v5 = v4;
  if (a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __108__SLDCollaborationHandshakeService_removeParticipantIdentities_withFileURL_sandboxTokenData_metadata_reply___block_invoke_4_cold_1();
    }

    v6 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.sociallayerd.SLDCollaborationHandshakeService" code:2 userInfo:0];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_231772000, v5, OS_LOG_TYPE_DEFAULT, "[SLDCollaborationHandshakeService] removeParticipantIdentities:withFileURL was cancelled by our client", v7, 2u);
    }

    (*(*(a1 + 32) + 16))();
  }
}

void __108__SLDCollaborationHandshakeService_removeParticipantIdentities_withFileURL_sandboxTokenData_metadata_reply___block_invoke_148(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v6 = SLDaemonLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_231772000, v6, OS_LOG_TYPE_DEFAULT, "[SLDCollaborationHandshakeService] removeParticipantIdentities:withFileURL: starting _updateParticipantsWithFileURL", buf, 2u);
  }

  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10 = [*(a1 + 56) allObjects];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __108__SLDCollaborationHandshakeService_removeParticipantIdentities_withFileURL_sandboxTokenData_metadata_reply___block_invoke_149;
  v13[3] = &unk_278926C30;
  v11 = *(a1 + 32);
  v16 = v5;
  v13[4] = v11;
  v14 = *(a1 + 56);
  v15 = *(a1 + 48);
  v17 = *(a1 + 64);
  v12 = v5;
  [v7 _sendActionUpdateParticipantsWithFileURL:v8 metadata:v9 addedIdentities:MEMORY[0x277CBEBF8] removedIdentities:v10 completion:v13];
}

void __108__SLDCollaborationHandshakeService_removeParticipantIdentities_withFileURL_sandboxTokenData_metadata_reply___block_invoke_149(uint64_t a1, int a2, void *a3)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  (*(*(a1 + 56) + 16))();
  if (a2)
  {
    v6 = SLDaemonLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&dword_231772000, v6, OS_LOG_TYPE_DEFAULT, "[SLDCollaborationHandshakeService] removeParticipantIdentities:withFileURL: finished removing participants.", v14, 2u);
    }

    v7 = *(a1 + 32);
    v8 = [*(a1 + 40) allObjects];
    v9 = [v7 _removeIdentities:v8 fromMetadata:*(a1 + 48)];

    (*(*(a1 + 64) + 16))();
  }

  else
  {
    if (!v5)
    {
      v10 = MEMORY[0x277CCA9B8];
      v15 = *MEMORY[0x277CCA068];
      v16[0] = @"removeParticipantIdentities:withFileURL: removing participants failed";
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
      v5 = [v10 errorWithDomain:@"com.apple.sociallayerd.SLDCollaborationHandshakeService" code:1 userInfo:v11];
    }

    v12 = SLDaemonLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __108__SLDCollaborationHandshakeService_removeParticipantIdentities_withFileURL_sandboxTokenData_metadata_reply___block_invoke_149_cold_1();
    }

    (*(*(a1 + 64) + 16))();
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_sendActionUpdateParticipantsWithMetadata:(id)metadata addedIdentities:(id)identities removedIdentities:(id)removedIdentities completion:(id)completion
{
  v63[1] = *MEMORY[0x277D85DE8];
  metadataCopy = metadata;
  identitiesCopy = identities;
  removedIdentitiesCopy = removedIdentities;
  completionCopy = completion;
  sourceProcessData = [metadataCopy sourceProcessData];
  localIdentifier = [metadataCopy localIdentifier];
  v15 = [SLDProcessVerifier tagDataFromString:localIdentifier];

  if (sourceProcessData)
  {
    processVerifier = [(SLDCollaborationHandshakeService *)self processVerifier];
    v55 = 0;
    v17 = [processVerifier verifyData:sourceProcessData tag:v15 error:&v55];
    v40 = v55;

    if (v17)
    {
      if ([identitiesCopy count] || objc_msgSend(removedIdentitiesCopy, "count"))
      {
        if ([identitiesCopy count] && -[SLDCollaborationHandshakeService _doesMetadata:containAnyOf:](self, "_doesMetadata:containAnyOf:", metadataCopy, identitiesCopy))
        {
          v18 = SLDaemonLogHandle();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            [SLDCollaborationHandshakeService _sendActionUpdateParticipantsWithMetadata:identitiesCopy addedIdentities:metadataCopy removedIdentities:? completion:?];
          }

          v19 = MEMORY[0x277CCA9B8];
          v58 = *MEMORY[0x277CCA068];
          v59 = @"_sendActionUpdateParticipantsWithMetadata: attempted to add identities which already exist in the metadata identity map.";
          v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v59 forKeys:&v58 count:1];
          v21 = [v19 errorWithDomain:@"com.apple.sociallayerd.SLDCollaborationHandshakeService" code:1 userInfo:v20];

          completionCopy[2](completionCopy, 0, v21);
        }

        else if ([removedIdentitiesCopy count] && !-[SLDCollaborationHandshakeService _doesMetadata:containAllOf:](self, "_doesMetadata:containAllOf:", metadataCopy, removedIdentitiesCopy))
        {
          v31 = SLDaemonLogHandle();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            [SLDCollaborationHandshakeService _sendActionUpdateParticipantsWithMetadata:removedIdentitiesCopy addedIdentities:metadataCopy removedIdentities:? completion:?];
          }

          v32 = MEMORY[0x277CCA9B8];
          v56 = *MEMORY[0x277CCA068];
          v57 = @"_sendActionUpdateParticipantsWithMetadata: attempted to remove some identities which do not exist in the metadata identity map.";
          v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v57 forKeys:&v56 count:1];
          v34 = [v32 errorWithDomain:@"com.apple.sociallayerd.SLDCollaborationHandshakeService" code:1 userInfo:v33];

          completionCopy[2](completionCopy, 0, v34);
        }

        else
        {
          v53[0] = 0;
          v53[1] = v53;
          v53[2] = 0x2020000000;
          v54 = 0;
          aBlock[0] = MEMORY[0x277D85DD0];
          aBlock[1] = 3221225472;
          aBlock[2] = __123__SLDCollaborationHandshakeService__sendActionUpdateParticipantsWithMetadata_addedIdentities_removedIdentities_completion___block_invoke;
          aBlock[3] = &unk_278926C80;
          v52 = v53;
          v51 = completionCopy;
          v25 = _Block_copy(aBlock);
          v26 = [metadataCopy copy];
          [v26 setHandleToIdentityMap:MEMORY[0x277CBEC10]];
          v27 = [MEMORY[0x277CDC718] actionWithMetadata:v26 addedIdentities:identitiesCopy removedIdentites:removedIdentitiesCopy];
          v48[0] = 0;
          v48[1] = v48;
          v48[2] = 0x3032000000;
          v48[3] = __Block_byref_object_copy__9;
          v48[4] = __Block_byref_object_dispose__9;
          v49 = 0;
          v45[0] = MEMORY[0x277D85DD0];
          v45[1] = 3221225472;
          v45[2] = __123__SLDCollaborationHandshakeService__sendActionUpdateParticipantsWithMetadata_addedIdentities_removedIdentities_completion___block_invoke_2;
          v45[3] = &unk_278926CA8;
          v47 = v48;
          v28 = v25;
          v46 = v28;
          [v27 setResponseHandlerBlock:v45];
          actionDispatcher = [(SLDCollaborationHandshakeService *)self actionDispatcher];
          v42[0] = MEMORY[0x277D85DD0];
          v42[1] = 3221225472;
          v42[2] = __123__SLDCollaborationHandshakeService__sendActionUpdateParticipantsWithMetadata_addedIdentities_removedIdentities_completion___block_invoke_169;
          v42[3] = &unk_278926CD0;
          v44 = v48;
          v30 = v28;
          v43 = v30;
          [actionDispatcher dispatchAction:v27 withAssertionForProcess:v17 completion:v42];

          _Block_object_dispose(v48, 8);
          _Block_object_dispose(v53, 8);
        }
      }

      else
      {
        v35 = SLDaemonLogHandle();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          [SLDCollaborationHandshakeService _sendActionUpdateParticipantsWithMetadata:addedIdentities:removedIdentities:completion:];
        }

        v36 = MEMORY[0x277CCA9B8];
        v60 = *MEMORY[0x277CCA068];
        v61 = @"_sendActionUpdateParticipantsWithMetadata: there were no provided identities to remove/add.";
        v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v61 forKeys:&v60 count:1];
        v38 = [v36 errorWithDomain:@"com.apple.sociallayerd.SLDCollaborationHandshakeService" code:1 userInfo:v37];

        completionCopy[2](completionCopy, 0, v38);
      }

      goto LABEL_23;
    }
  }

  else
  {
    v40 = 0;
  }

  v22 = SLDaemonLogHandle();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    [SLDCollaborationHandshakeService _sendActionUpdateParticipantsWithMetadata:sourceProcessData addedIdentities:metadataCopy removedIdentities:? completion:?];
  }

  v23 = MEMORY[0x277CCA9B8];
  v62 = *MEMORY[0x277CCA068];
  v63[0] = @"_sendActionUpdateParticipantsWithMetadata: failed to verify source process.";
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v63 forKeys:&v62 count:1];
  v17 = [v23 errorWithDomain:@"com.apple.sociallayerd.SLDCollaborationHandshakeService" code:1 userInfo:v24];

  completionCopy[2](completionCopy, 0, v17);
LABEL_23:

  v39 = *MEMORY[0x277D85DE8];
}

uint64_t __123__SLDCollaborationHandshakeService__sendActionUpdateParticipantsWithMetadata_addedIdentities_removedIdentities_completion___block_invoke(uint64_t result)
{
  if ((*(*(*(result + 40) + 8) + 24) & 1) == 0)
  {
    v1 = result;
    result = (*(*(result + 32) + 16))();
    *(*(*(v1 + 40) + 8) + 24) = 1;
  }

  return result;
}

void __123__SLDCollaborationHandshakeService__sendActionUpdateParticipantsWithMetadata_addedIdentities_removedIdentities_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  [*(*(*(a1 + 40) + 8) + 40) invalidate];
  if ([v3 success])
  {
    v4 = SLDaemonLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_231772000, v4, OS_LOG_TYPE_DEFAULT, "_sendActionUpdateParticipantsWithMetadata: successfully added participants", v12, 2u);
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v5 = [v3 error];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v8 = MEMORY[0x277CCA9B8];
      v13 = *MEMORY[0x277CCA068];
      v14[0] = @"_updateParticipantsWithMetadata adding participants failed";
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
      v7 = [v8 errorWithDomain:@"com.apple.sociallayerd.SLDCollaborationHandshakeService" code:1 userInfo:v9];
    }

    v10 = SLDaemonLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __123__SLDCollaborationHandshakeService__sendActionUpdateParticipantsWithMetadata_addedIdentities_removedIdentities_completion___block_invoke_2_cold_1();
    }

    (*(*(a1 + 32) + 16))();
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __123__SLDCollaborationHandshakeService__sendActionUpdateParticipantsWithMetadata_addedIdentities_removedIdentities_completion___block_invoke_169(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  if (v7)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v8 = SLDaemonLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_231772000, v8, OS_LOG_TYPE_DEFAULT, "_sendActionUpdateParticipantsWithMetadata: action dispatcher successfully sent the update participants action to the app. Waiting for our response handler to be called", v9, 2u);
    }
  }
}

- (void)_sendActionUpdateParticipantsWithFileURL:(id)l metadata:(id)metadata addedIdentities:(id)identities removedIdentities:(id)removedIdentities completion:(id)completion
{
  v34[1] = *MEMORY[0x277D85DE8];
  lCopy = l;
  metadataCopy = metadata;
  identitiesCopy = identities;
  removedIdentitiesCopy = removedIdentities;
  completionCopy = completion;
  if (![identitiesCopy count] && !objc_msgSend(removedIdentitiesCopy, "count"))
  {
    v25 = SLDaemonLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [SLDCollaborationHandshakeService _sendActionUpdateParticipantsWithFileURL:metadata:addedIdentities:removedIdentities:completion:];
    }

    v18 = MEMORY[0x277CCA9B8];
    v33 = *MEMORY[0x277CCA068];
    v34[0] = @"_sendActionUpdateParticipantsWithFileURL: there were no provided identities to remove/add.";
    v19 = MEMORY[0x277CBEAC0];
    v20 = v34;
    v21 = &v33;
    goto LABEL_17;
  }

  if ([identitiesCopy count] && -[SLDCollaborationHandshakeService _doesMetadata:containAnyOf:](self, "_doesMetadata:containAnyOf:", metadataCopy, identitiesCopy))
  {
    v17 = SLDaemonLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [SLDCollaborationHandshakeService _sendActionUpdateParticipantsWithFileURL:identitiesCopy metadata:metadataCopy addedIdentities:? removedIdentities:? completion:?];
    }

    v18 = MEMORY[0x277CCA9B8];
    v31 = *MEMORY[0x277CCA068];
    v32 = @"_sendActionUpdateParticipantsWithFileURL: attempted to add identities which already exist in the metadata identity map.";
    v19 = MEMORY[0x277CBEAC0];
    v20 = &v32;
    v21 = &v31;
LABEL_17:
    v26 = [v19 dictionaryWithObjects:v20 forKeys:v21 count:1];
    v23 = [v18 errorWithDomain:@"com.apple.sociallayerd.SLDCollaborationHandshakeService" code:1 userInfo:v26];

    completionCopy[2](completionCopy, 0, v23);
    goto LABEL_18;
  }

  if ([removedIdentitiesCopy count] && -[SLDCollaborationHandshakeService _doesMetadata:containAllOf:](self, "_doesMetadata:containAllOf:", metadataCopy, removedIdentitiesCopy))
  {
    v22 = SLDaemonLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [SLDCollaborationHandshakeService _sendActionUpdateParticipantsWithFileURL:removedIdentitiesCopy metadata:metadataCopy addedIdentities:? removedIdentities:? completion:?];
    }

    v18 = MEMORY[0x277CCA9B8];
    v29 = *MEMORY[0x277CCA068];
    v30 = @"_sendActionUpdateParticipantsWithFileURL: attempted to remove some identities which do not exist in the metadata identity map.";
    v19 = MEMORY[0x277CBEAC0];
    v20 = &v30;
    v21 = &v29;
    goto LABEL_17;
  }

  v23 = [metadataCopy copy];
  [v23 setHandleToIdentityMap:MEMORY[0x277CBEC10]];
  v24 = [MEMORY[0x277CDC718] actionWithMetadata:v23 addedIdentities:identitiesCopy removedIdentites:removedIdentitiesCopy];
  v28 = completionCopy;
  SWPerformActionForDocumentURL();

LABEL_18:
  v27 = *MEMORY[0x277D85DE8];
}

void __131__SLDCollaborationHandshakeService__sendActionUpdateParticipantsWithFileURL_metadata_addedIdentities_removedIdentities_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) privateSerialQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __131__SLDCollaborationHandshakeService__sendActionUpdateParticipantsWithFileURL_metadata_addedIdentities_removedIdentities_completion___block_invoke_2;
  v6[3] = &unk_2789266B0;
  v7 = v3;
  v8 = *(a1 + 40);
  v5 = v3;
  dispatch_async(v4, v6);
}

void __131__SLDCollaborationHandshakeService__sendActionUpdateParticipantsWithFileURL_metadata_addedIdentities_removedIdentities_completion___block_invoke_2(uint64_t a1)
{
  v12[1] = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) success])
  {
    v2 = SLDaemonLogHandle();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_231772000, v2, OS_LOG_TYPE_DEFAULT, "_SWUpdateCollaborationParticipantsAction with a fileURL returned success.", v10, 2u);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v3 = [*(a1 + 32) error];
    v4 = v3;
    if (v3)
    {
      v5 = v3;
    }

    else
    {
      v6 = MEMORY[0x277CCA9B8];
      v11 = *MEMORY[0x277CCA068];
      v12[0] = @"_SWUpdateCollaborationParticipantsAction (with a fileURL) response was not successful.";
      v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
      v5 = [v6 errorWithDomain:@"com.apple.sociallayerd.SLDCollaborationHandshakeService" code:1 userInfo:v7];
    }

    v8 = SLDaemonLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __131__SLDCollaborationHandshakeService__sendActionUpdateParticipantsWithFileURL_metadata_addedIdentities_removedIdentities_completion___block_invoke_2_cold_1();
    }

    (*(*(a1 + 40) + 16))();
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (id)_updateMetadata:(id)metadata withNewIdentities:(id)identities
{
  identitiesCopy = identities;
  metadataCopy = metadata;
  handleToIdentityMap = [metadataCopy handleToIdentityMap];
  v8 = [handleToIdentityMap mutableCopy];
  v9 = v8;
  if (v8)
  {
    dictionary = v8;
  }

  else
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
  }

  v11 = dictionary;

  [v11 addEntriesFromDictionary:identitiesCopy];
  v12 = [metadataCopy copy];

  v13 = [v11 copy];
  [v12 setHandleToIdentityMap:v13];

  return v12;
}

- (id)_removeIdentities:(id)identities fromMetadata:(id)metadata
{
  v24 = *MEMORY[0x277D85DE8];
  identitiesCopy = identities;
  metadataCopy = metadata;
  v7 = [metadataCopy copy];
  handleToIdentityMap = [metadataCopy handleToIdentityMap];
  v9 = [handleToIdentityMap mutableCopy];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = identitiesCopy;
  v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v20;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [v9 allKeysForObject:{*(*(&v19 + 1) + 8 * i), v19}];
        if ([v15 count])
        {
          [v9 removeObjectsForKeys:v15];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v12);
  }

  v16 = [v9 copy];
  [v7 setHandleToIdentityMap:v16];

  v17 = *MEMORY[0x277D85DE8];

  return v7;
}

- (BOOL)_doesMetadata:(id)metadata containAllOf:(id)of
{
  v21 = *MEMORY[0x277D85DE8];
  ofCopy = of;
  handleToIdentityMap = [metadata handleToIdentityMap];
  allValues = [handleToIdentityMap allValues];

  if ([allValues count])
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = ofCopy;
    v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v8);
          }

          if (![allValues containsObject:{*(*(&v16 + 1) + 8 * i), v16}])
          {
            v13 = 0;
            goto LABEL_12;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v13 = 1;
LABEL_12:
  }

  else
  {
    v13 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

- (BOOL)_doesMetadata:(id)metadata containAnyOf:(id)of
{
  v19 = *MEMORY[0x277D85DE8];
  ofCopy = of;
  handleToIdentityMap = [metadata handleToIdentityMap];
  allValues = [handleToIdentityMap allValues];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = ofCopy;
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = *v15;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v8);
        }

        if ([allValues containsObject:{*(*(&v14 + 1) + 8 * i), v14}])
        {
          LOBYTE(v9) = 1;
          goto LABEL_11;
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v12 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)_localPersonIdentityForDocumentIdentifier:(id)identifier completion:(id)completion
{
  v23[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  completionCopy = completion;
  if (identifierCopy && [identifierCopy length])
  {
    personIdentityGenerator = [(SLDCollaborationHandshakeService *)self personIdentityGenerator];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __89__SLDCollaborationHandshakeService__localPersonIdentityForDocumentIdentifier_completion___block_invoke_2;
    v17[3] = &unk_278926D20;
    v18 = completionCopy;
    v9 = completionCopy;
    [personIdentityGenerator generateLocalIdentityForDocumentIdentifier:identifierCopy completionHandler:v17];

    v10 = v18;
  }

  else
  {
    v11 = SLDaemonLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [SLDCollaborationHandshakeService _localPersonIdentityForDocumentIdentifier:completion:];
    }

    v12 = MEMORY[0x277CCA9B8];
    v22 = *MEMORY[0x277CCA068];
    v23[0] = @"Missing collaboration identifier.";
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];
    v14 = [v12 errorWithDomain:@"com.apple.sociallayerd.SLDCollaborationHandshakeService" code:1 userInfo:v13];

    privateSerialQueue = [(SLDCollaborationHandshakeService *)self privateSerialQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __89__SLDCollaborationHandshakeService__localPersonIdentityForDocumentIdentifier_completion___block_invoke;
    block[3] = &unk_2789260C8;
    v20 = v14;
    v21 = completionCopy;
    v10 = completionCopy;
    v9 = v14;
    dispatch_async(privateSerialQueue, block);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __89__SLDCollaborationHandshakeService__localPersonIdentityForDocumentIdentifier_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  v6 = [v12 allKeys];
  v7 = [v6 count];

  if (v7)
  {
    v8 = [v12 allKeys];
    v9 = [v8 firstObject];

    v10 = *(a1 + 32);
    v11 = [v12 objectForKeyedSubscript:v9];
    (*(v10 + 16))(v10, v11, v9, 0);
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (void)_personIdentitiesForHandles:(id)handles documentIdentifier:(id)identifier completion:(id)completion
{
  v34[1] = *MEMORY[0x277D85DE8];
  handlesCopy = handles;
  identifierCopy = identifier;
  completionCopy = completion;
  if (identifierCopy && [identifierCopy length])
  {
    v28[0] = 0;
    v28[1] = v28;
    v28[2] = 0x3032000000;
    v28[3] = __Block_byref_object_copy__9;
    v28[4] = __Block_byref_object_dispose__9;
    v29 = MEMORY[0x277CBEC10];
    v11 = SLDaemonLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_231772000, v11, OS_LOG_TYPE_DEFAULT, "_personIdentitiesForHandles invoking SLPersonIdentityGenerator to generate identity hashes", buf, 2u);
    }

    v12 = [SLPersonIdentityGenerator alloc];
    privateSerialQueue = [(SLDCollaborationHandshakeService *)self privateSerialQueue];
    v14 = [(SLPersonIdentityGenerator *)v12 initWithQueue:privateSerialQueue];

    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __94__SLDCollaborationHandshakeService__personIdentitiesForHandles_documentIdentifier_completion___block_invoke_185;
    v22[3] = &unk_278926D48;
    v26 = v28;
    v23 = handlesCopy;
    selfCopy = self;
    v25 = completionCopy;
    [(SLPersonIdentityGenerator *)v14 generatePersonIdentitiesForHandles:v23 documentIdentifier:identifierCopy completionHandler:v22];

    _Block_object_dispose(v28, 8);
  }

  else
  {
    v15 = SLDaemonLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [SLDCollaborationHandshakeService _personIdentitiesForHandles:documentIdentifier:completion:];
    }

    v16 = MEMORY[0x277CCA9B8];
    v33 = *MEMORY[0x277CCA068];
    v34[0] = @"Missing collaboration identifier on the provided metadata.";
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:&v33 count:1];
    v18 = [v16 errorWithDomain:@"com.apple.sociallayerd.SLDCollaborationHandshakeService" code:1 userInfo:v17];

    privateSerialQueue2 = [(SLDCollaborationHandshakeService *)self privateSerialQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __94__SLDCollaborationHandshakeService__personIdentitiesForHandles_documentIdentifier_completion___block_invoke;
    block[3] = &unk_2789260C8;
    v31 = v18;
    v32 = completionCopy;
    v20 = v18;
    dispatch_async(privateSerialQueue2, block);
  }

  v21 = *MEMORY[0x277D85DE8];
}

void __94__SLDCollaborationHandshakeService__personIdentitiesForHandles_documentIdentifier_completion___block_invoke_185(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 count];
  if (v4 != [*(a1 + 32) count])
  {
    v5 = SLDaemonLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __94__SLDCollaborationHandshakeService__personIdentitiesForHandles_documentIdentifier_completion___block_invoke_185_cold_1(v3, (a1 + 32));
    }
  }

  v6 = SLDaemonLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_231772000, v6, OS_LOG_TYPE_DEFAULT, "_personIdentitiesForHandles received hashes from SLPersonIdentityGenerator", buf, 2u);
  }

  v7 = *(*(a1 + 56) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v3;
  v9 = v3;

  v10 = [*(a1 + 40) privateSerialQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __94__SLDCollaborationHandshakeService__personIdentitiesForHandles_documentIdentifier_completion___block_invoke_186;
  v13[3] = &unk_278926610;
  v11 = *(a1 + 48);
  v12 = *(a1 + 56);
  v14 = v11;
  v15 = v12;
  dispatch_async(v10, v13);
}

- (int64_t)_acquireSandboxHandleData:(id)data ForFileProviderDocumentURL:(id)l clientConnection:(id)connection error:(id *)error
{
  v31 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  lCopy = l;
  connectionCopy = connection;
  if (![dataCopy length])
  {
    v13 = SLDaemonLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [SLDCloudDocsService _acquireSandboxHandleData:ForFileProviderDocumentURL:clientConnection:error:];
    }

    goto LABEL_7;
  }

  buf[0] = 0;
  [dataCopy getBytes:buf range:{objc_msgSend(dataCopy, "length") - 1, 1}];
  if (buf[0])
  {
    v13 = SLDaemonLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [SLDCloudDocsService _acquireSandboxHandleData:ForFileProviderDocumentURL:clientConnection:error:];
    }

LABEL_7:

LABEL_8:
    v14 = SLDaemonLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [SLDCloudDocsService _acquireSandboxHandleData:ForFileProviderDocumentURL:clientConnection:error:];
    }

    if (error)
    {
      *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.sociallayerd.SLDCollaborationHandshakeService" code:3 userInfo:0];
    }

LABEL_12:
    v15 = -1;
    goto LABEL_13;
  }

  [dataCopy bytes];
  v18 = sandbox_extension_consume();
  if (v18 == -1)
  {
    goto LABEL_8;
  }

  v15 = v18;
  if (![(SLDCollaborationHandshakeService *)self _connection:connectionCopy hasPermissionForFileURL:lCopy])
  {
    v23 = SLDaemonLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218498;
      selfCopy3 = self;
      v27 = 2112;
      v28 = lCopy;
      v29 = 2112;
      v30 = connectionCopy;
      _os_log_error_impl(&dword_231772000, v23, OS_LOG_TYPE_ERROR, "[%p] _acquireSandboxHandleData: acquired a sandbox handle for a file (%@), but the xpc connection (%@) does not have permission to access the file. Releasing sandbox handle.", buf, 0x20u);
    }

    if (error)
    {
      *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.sociallayerd.SLDCollaborationHandshakeService" code:6 userInfo:0];
    }

    [(SLDCollaborationHandshakeService *)self _releaseSandboxHandle:v15];
    goto LABEL_12;
  }

  v24 = 0;
  v19 = [(SLDCollaborationHandshakeService *)self _fileURLHasFileProvider:lCopy error:&v24];
  v20 = v24;
  v21 = SLDaemonLogHandle();
  v22 = v21;
  if (!v19)
  {
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218498;
      selfCopy3 = self;
      v27 = 2112;
      v28 = lCopy;
      v29 = 2112;
      v30 = v20;
      _os_log_error_impl(&dword_231772000, v22, OS_LOG_TYPE_ERROR, "[%p] _acquireSandboxHandleData: acquired a sandbox handle for a file (%@), but could not find a valid FPItem for that file. This file might not be managed by a FileProvider. Releasing sandbox handle. FileProvider error: %@", buf, 0x20u);
    }

    if (error)
    {
      *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.sociallayerd.SLDCollaborationHandshakeService" code:4 userInfo:0];
    }

    [(SLDCollaborationHandshakeService *)self _releaseSandboxHandle:v15];

    goto LABEL_12;
  }

  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    selfCopy3 = self;
    v27 = 2048;
    v28 = v15;
    v29 = 2112;
    v30 = lCopy;
    _os_log_impl(&dword_231772000, v22, OS_LOG_TYPE_DEFAULT, "[%p] _acquireSandboxHandleData: acquired a new handle: %llu for file: %@", buf, 0x20u);
  }

LABEL_13:
  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

- (BOOL)_fileURLHasFileProvider:(id)provider error:(id *)error
{
  v5 = MEMORY[0x277CC6408];
  providerCopy = provider;
  defaultManager = [v5 defaultManager];
  v8 = [defaultManager itemForURL:providerCopy error:error];

  return v8 != 0;
}

- (BOOL)_connection:(id)_connection hasPermissionForFileURL:(id)l
{
  _connectionCopy = _connection;
  lCopy = l;
  if (_connectionCopy && ([_connectionCopy auditToken], objc_msgSend(lCopy, "isFileURL")) && (objc_msgSend(lCopy, "path"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "length"), v7, v8))
  {
    [_connectionCopy auditToken];
    path = [lCopy path];
    [path fileSystemRepresentation];
    v10 = sandbox_check_by_audit_token() == 0;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)_releaseSandboxHandle:(int64_t)handle
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = sandbox_extension_release();
  v6 = SLDaemonLogHandle();
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SLDCollaborationHandshakeService _releaseSandboxHandle:];
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 134218240;
    selfCopy = self;
    v11 = 2048;
    handleCopy = handle;
    _os_log_impl(&dword_231772000, v7, OS_LOG_TYPE_DEFAULT, "[%p] _releaseSandboxHandle: released handle: %lld", &v9, 0x16u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)allowsConnection:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6(&dword_231772000, v0, v1, "[SLDCollaborationHandshakeService] connection does not have the proper entitlement and will not be allowed to access the service: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __91__SLDCollaborationHandshakeService_generateProofForIdentity_collaborationIdentifier_reply___block_invoke_3_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __91__SLDCollaborationHandshakeService_generateProofForIdentity_collaborationIdentifier_reply___block_invoke_3_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_6(&dword_231772000, v0, v1, "[SLDCollaborationHandshakeService] generateIdentityProofForPublicKeys:collaborationIdentifier: timeout timer fired after %f seconds", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __91__SLDCollaborationHandshakeService_generateProofForIdentity_collaborationIdentifier_reply___block_invoke_2_39_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_0(&dword_231772000, v0, v1, "[SLDCollaborationHandshakeService] generateIdentityProofForPublicKeys:collaborationIdentifier: error generating proof with SLPersonIdentityGenerator. proof: %@ error: %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)verifySourceBundleIdentifierFromMetadata:(uint64_t)a1 reply:(void *)a2 .cold.1(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = [a2 localIdentifier];
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)startCollaborationWithMetadata:(uint64_t)a1 participants:(void *)a2 reply:.cold.1(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = [a2 localIdentifier];
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

void __86__SLDCollaborationHandshakeService_startCollaborationWithMetadata_participants_reply___block_invoke_3_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __86__SLDCollaborationHandshakeService_startCollaborationWithMetadata_participants_reply___block_invoke_3_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_6(&dword_231772000, v0, v1, "[SLDCollaborationHandshakeService] performStartCollaborationActionWithMetadata timeout timer fired after %f seconds", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __86__SLDCollaborationHandshakeService_startCollaborationWithMetadata_participants_reply___block_invoke_59_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [*(a1 + 32) collaborationIdentifier];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

void __86__SLDCollaborationHandshakeService_startCollaborationWithMetadata_participants_reply___block_invoke_72_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6(&dword_231772000, v0, v1, "[SLDCollaborationHandshakeService] startCollaborationWithMetadata failed: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __111__SLDCollaborationHandshakeService_startCollaborationWithFileURL_sandboxTokenData_metadata_participants_reply___block_invoke_3_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __111__SLDCollaborationHandshakeService_startCollaborationWithFileURL_sandboxTokenData_metadata_participants_reply___block_invoke_3_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_6(&dword_231772000, v0, v1, "[SLDCollaborationHandshakeService] _startCollaborationWithFileURL timeout timer fired after %f seconds", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __111__SLDCollaborationHandshakeService_startCollaborationWithFileURL_sandboxTokenData_metadata_participants_reply___block_invoke_92_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6(&dword_231772000, v0, v1, "startCollaborationWithFileURL adding participants failed: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __111__SLDCollaborationHandshakeService_startCollaborationWithFileURL_sandboxTokenData_metadata_participants_reply___block_invoke_98_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [*(a1 + 32) collaborationIdentifier];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

void __111__SLDCollaborationHandshakeService_startCollaborationWithFileURL_sandboxTokenData_metadata_participants_reply___block_invoke_3_104_cold_1(void *a1, uint64_t a2, NSObject *a3)
{
  *v4 = 138412546;
  *&v4[4] = *a1;
  *&v4[12] = 2112;
  *&v4[14] = a2;
  OUTLINED_FUNCTION_1_0(&dword_231772000, a2, a3, "_SWStartCollaborationAction failed with response: %@. Error: %@", *v4, *&v4[8], *&v4[16], *MEMORY[0x277D85DE8]);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)addParticipantHandles:(uint64_t)a3 withMetadata:(uint64_t)a4 reply:(uint64_t)a5 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6(&dword_231772000, a1, a3, "%s cannot add participant handles because the metadata did not have a collaboration identifier", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)addParticipantHandles:(uint64_t)a3 withMetadata:(uint64_t)a4 reply:(uint64_t)a5 .cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6(&dword_231772000, a1, a3, "%s cannot add participant handles because no participants were provided.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __77__SLDCollaborationHandshakeService_addParticipantHandles_withMetadata_reply___block_invoke_3_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_6(&dword_231772000, v0, v1, "[SLDCollaborationHandshakeService] addParticipantHandles:withMetadata: timeout timer fired after %f seconds", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)addParticipantHandles:withFileURL:sandboxTokenData:metadata:reply:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6(&dword_231772000, v0, v1, "removeCollaborationParticipantHashes:withFileURL: unable to create SWPersonIdentities from provided hashes, or there were no provided hashes: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)addParticipantHandles:withFileURL:sandboxTokenData:metadata:reply:.cold.2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __102__SLDCollaborationHandshakeService_addParticipantHandles_withFileURL_sandboxTokenData_metadata_reply___block_invoke_4_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __102__SLDCollaborationHandshakeService_addParticipantHandles_withFileURL_sandboxTokenData_metadata_reply___block_invoke_4_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_6(&dword_231772000, v0, v1, "[SLDCollaborationHandshakeService] removeCollaborationParticipantHashes:withFileURL timeout timer fired after %f seconds", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __102__SLDCollaborationHandshakeService_addParticipantHandles_withFileURL_sandboxTokenData_metadata_reply___block_invoke_132_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6(&dword_231772000, v0, v1, "addCollaborationParticipants adding participants failed: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __102__SLDCollaborationHandshakeService_addParticipantHandles_withFileURL_sandboxTokenData_metadata_reply___block_invoke_2_137_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6(&dword_231772000, v0, v1, "[SLDCollaborationHandshakeService] _startCollaborationWithFileURL Failed to generate identities. Error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)removeParticipantIdentities:(uint64_t)a3 withMetadata:(uint64_t)a4 reply:(uint64_t)a5 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6(&dword_231772000, a1, a3, "%s cannot remove participant handles because the metadata did not have a collaboration identifier", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)removeParticipantIdentities:(uint64_t)a3 withMetadata:(uint64_t)a4 reply:(uint64_t)a5 .cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6(&dword_231772000, a1, a3, "%s cannot remove participants because no identities were provided.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __83__SLDCollaborationHandshakeService_removeParticipantIdentities_withMetadata_reply___block_invoke_3_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __83__SLDCollaborationHandshakeService_removeParticipantIdentities_withMetadata_reply___block_invoke_3_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_6(&dword_231772000, v0, v1, "[SLDCollaborationHandshakeService] removeParticipantIdentities:withMetadata: timeout timer fired after %f seconds", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)removeParticipantIdentities:withFileURL:sandboxTokenData:metadata:reply:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)removeParticipantIdentities:withFileURL:sandboxTokenData:metadata:reply:.cold.2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __108__SLDCollaborationHandshakeService_removeParticipantIdentities_withFileURL_sandboxTokenData_metadata_reply___block_invoke_4_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_6(&dword_231772000, v0, v1, "[SLDCollaborationHandshakeService] removeParticipantIdentities:withFileURL timeout timer fired after %f seconds", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __108__SLDCollaborationHandshakeService_removeParticipantIdentities_withFileURL_sandboxTokenData_metadata_reply___block_invoke_149_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6(&dword_231772000, v0, v1, "removeParticipantIdentities:withFileURL: removing participants failed: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_sendActionUpdateParticipantsWithMetadata:(uint64_t)a1 addedIdentities:(void *)a2 removedIdentities:completion:.cold.1(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = [a2 handleToIdentityMap];
  v3 = [v2 allValues];
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_9(&dword_231772000, v4, v5, "_sendActionUpdateParticipantsWithMetadata: attempted to add identities which already exist in the metadata identity map. addedIdentities: %@ metadata identities: %@", v6, v7, v8, v9, 2u);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_sendActionUpdateParticipantsWithMetadata:(uint64_t)a1 addedIdentities:(void *)a2 removedIdentities:completion:.cold.2(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = [a2 handleToIdentityMap];
  v3 = [v2 allValues];
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_9(&dword_231772000, v4, v5, "_sendActionUpdateParticipantsWithMetadata: attempted to remove some identities which do not exist in the metadata identity map. removedIdentities: %@ metadata identities: %@", v6, v7, v8, v9, 2u);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_sendActionUpdateParticipantsWithMetadata:addedIdentities:removedIdentities:completion:.cold.3()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_sendActionUpdateParticipantsWithMetadata:(uint64_t)a1 addedIdentities:(void *)a2 removedIdentities:completion:.cold.4(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = [a2 localIdentifier];
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

void __123__SLDCollaborationHandshakeService__sendActionUpdateParticipantsWithMetadata_addedIdentities_removedIdentities_completion___block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6(&dword_231772000, v0, v1, "_sendActionUpdateParticipantsWithMetadata: adding participants failed: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_sendActionUpdateParticipantsWithFileURL:(uint64_t)a1 metadata:(void *)a2 addedIdentities:removedIdentities:completion:.cold.1(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [a2 handleToIdentityMap];
  v3 = [v2 allValues];
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_sendActionUpdateParticipantsWithFileURL:(uint64_t)a1 metadata:(void *)a2 addedIdentities:removedIdentities:completion:.cold.2(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [a2 handleToIdentityMap];
  v3 = [v2 allValues];
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_sendActionUpdateParticipantsWithFileURL:metadata:addedIdentities:removedIdentities:completion:.cold.3()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __131__SLDCollaborationHandshakeService__sendActionUpdateParticipantsWithFileURL_metadata_addedIdentities_removedIdentities_completion___block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6(&dword_231772000, v0, v1, "_SWUpdateCollaborationParticipantsAction with a fileURL failed. Error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_localPersonIdentityForDocumentIdentifier:completion:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6(&dword_231772000, v0, v1, "_localPersonIdentityForDocumentIdentifier: cannot generate local identity without a document identifier. DocID: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_personIdentitiesForHandles:documentIdentifier:completion:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_0(&dword_231772000, v0, v1, "_personIdentitiesForHandles: cannot generate identities without a document identifier or handles. DocID: %@ handles: %@");
  v2 = *MEMORY[0x277D85DE8];
}

void __94__SLDCollaborationHandshakeService__personIdentitiesForHandles_documentIdentifier_completion___block_invoke_185_cold_1(void *a1, id *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  [a1 count];
  [*a2 count];
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_releaseSandboxHandle:.cold.1()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  WORD2(v4) = 2048;
  HIWORD(v4) = v0;
  OUTLINED_FUNCTION_1_0(&dword_231772000, v0, v1, "[%p] _releaseSandboxHandle: unable to release sandbox extension handle: %lld. Sandbox extensions are a limited resource and this should be investigated!", v3, v4);
  v2 = *MEMORY[0x277D85DE8];
}

@end