@interface SLCollaborationHandshakeController
- (id)_handshakeService;
- (id)_sandboxExtensionIssueFileURL:(id)a3 withAuditToken:(id *)a4;
- (id)taskServiceWithErrorHandler:(id)a3;
- (void)addParticipantHandles:(id)a3 withFileURL:(id)a4 metadata:(id)a5 timeout:(double)a6 completion:(id)a7;
- (void)addParticipantHandles:(id)a3 withMetadata:(id)a4 timeout:(double)a5 completion:(id)a6;
- (void)generateProofForIdentity:(id)a3 collaborationIdentifier:(id)a4 timeout:(double)a5 completion:(id)a6;
- (void)removeParticipantIdentities:(id)a3 withFileURL:(id)a4 metadata:(id)a5 timeout:(double)a6 completion:(id)a7;
- (void)removeParticipantIdentities:(id)a3 withMetadata:(id)a4 timeout:(double)a5 completion:(id)a6;
- (void)startCollaborationWithFileURL:(id)a3 metadata:(id)a4 participants:(id)a5 timeout:(double)a6 completion:(id)a7;
- (void)startCollaborationWithMetadata:(id)a3 participants:(id)a4 timeout:(double)a5 completion:(id)a6;
- (void)verifySourceBundleIdentifierFromMetadata:(id)a3 timeout:(double)a4 completion:(id)a5;
@end

@implementation SLCollaborationHandshakeController

- (void)startCollaborationWithMetadata:(id)a3 participants:(id)a4 timeout:(double)a5 completion:(id)a6
{
  v44 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__2;
  v34 = __Block_byref_object_dispose__2;
  v35 = [MEMORY[0x277CCAD78] UUID];
  v13 = SLFrameworkLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = v31[5];
    *buf = 136315906;
    v37 = "[SLCollaborationHandshakeController startCollaborationWithMetadata:participants:timeout:completion:]";
    v38 = 2112;
    v39 = v10;
    v40 = 2112;
    v41 = v11;
    v42 = 2112;
    v43 = v14;
    _os_log_impl(&dword_231772000, v13, OS_LOG_TYPE_INFO, "%s: Metadata: %@, Participants: %@, requestUUID: %@", buf, 0x2Au);
  }

  v15 = [(SLCollaborationHandshakeController *)self taskManager];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __101__SLCollaborationHandshakeController_startCollaborationWithMetadata_participants_timeout_completion___block_invoke;
  v24[3] = &unk_2789261A0;
  v16 = v10;
  v25 = v16;
  v17 = v11;
  v26 = v17;
  v27 = self;
  v29 = &v30;
  v28 = v12;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __101__SLCollaborationHandshakeController_startCollaborationWithMetadata_participants_timeout_completion___block_invoke_9;
  v22[3] = &unk_2789261C8;
  v23 = v28;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __101__SLCollaborationHandshakeController_startCollaborationWithMetadata_participants_timeout_completion___block_invoke_2_14;
  v20[3] = &unk_2789261F0;
  v18 = v23;
  v21 = v18;
  [v15 startTask:v24 withTimeout:v22 timeoutHandler:v20 errorHandler:a5];

  _Block_object_dispose(&v30, 8);
  v19 = *MEMORY[0x277D85DE8];
}

id __101__SLCollaborationHandshakeController_startCollaborationWithMetadata_participants_timeout_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __101__SLCollaborationHandshakeController_startCollaborationWithMetadata_participants_timeout_completion___block_invoke_2;
  v13[3] = &unk_278926178;
  v13[4] = *(a1 + 48);
  v14 = v5;
  v12 = *(a1 + 56);
  v8 = v12;
  v15 = v12;
  v9 = v5;
  v10 = [a2 startCollaborationWithMetadata:v6 participants:v7 reply:v13];

  return v10;
}

void __101__SLCollaborationHandshakeController_startCollaborationWithMetadata_participants_timeout_completion___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [*(a1 + 32) targetSerialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __101__SLCollaborationHandshakeController_startCollaborationWithMetadata_participants_timeout_completion___block_invoke_3;
  block[3] = &unk_278926150;
  v17 = *(a1 + 40);
  v18 = v9;
  v15 = *(a1 + 48);
  v11 = v15;
  v21 = v15;
  v19 = v7;
  v20 = v8;
  v12 = v8;
  v13 = v7;
  v14 = v9;
  dispatch_async(v10, block);
}

uint64_t __101__SLCollaborationHandshakeController_startCollaborationWithMetadata_participants_timeout_completion___block_invoke_3(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  result = [*(a1 + 32) isValid];
  if (result)
  {
    [*(a1 + 32) suppress];
    v3 = SLFrameworkLogHandle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = *(*(*(a1 + 72) + 8) + 40);
      v5 = *(a1 + 40);
      v10 = 138412546;
      v11 = v4;
      v12 = 2112;
      v13 = v5;
      _os_log_impl(&dword_231772000, v3, OS_LOG_TYPE_INFO, "[SLCollaborationHandshakeController] startCollaborationWithMetadata received response for request UUID: %@, error: %@", &v10, 0x16u);
    }

    v6 = *(a1 + 56);
    v8 = *(a1 + 40);
    v7 = *(a1 + 48);
    result = (*(*(a1 + 64) + 16))();
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

void __101__SLCollaborationHandshakeController_startCollaborationWithMetadata_participants_timeout_completion___block_invoke_9(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.SocialLayer.SLCollaborationHandshakeController" code:2 userInfo:0];
  (*(*(a1 + 32) + 16))();
}

- (void)startCollaborationWithFileURL:(id)a3 metadata:(id)a4 participants:(id)a5 timeout:(double)a6 completion:(id)a7
{
  v52 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = __Block_byref_object_copy__2;
  v46 = __Block_byref_object_dispose__2;
  v47 = [MEMORY[0x277CCAD78] UUID];
  v16 = SLFrameworkLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = v43[5];
    *buf = 136315906;
    *&buf[4] = "[SLCollaborationHandshakeController startCollaborationWithFileURL:metadata:participants:timeout:completion:]";
    *&buf[12] = 2112;
    *&buf[14] = v13;
    *&buf[22] = 2112;
    v49 = v14;
    LOWORD(v50) = 2112;
    *(&v50 + 2) = v17;
    _os_log_impl(&dword_231772000, v16, OS_LOG_TYPE_INFO, "%s: Metadata: %@, Participants: %@, requestUUID: %@", buf, 0x2Au);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x4010000000;
  v49 = "";
  v50 = 0u;
  v51 = 0u;
  v18 = [(SLCollaborationHandshakeController *)self _handshakeService];
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __109__SLCollaborationHandshakeController_startCollaborationWithFileURL_metadata_participants_timeout_completion___block_invoke;
  v41[3] = &unk_278925B78;
  v41[4] = buf;
  [v18 prepareConnectionWithReply:v41];

  v39[0] = 0;
  v39[1] = v39;
  v39[2] = 0x3032000000;
  v39[3] = __Block_byref_object_copy__2;
  v39[4] = __Block_byref_object_dispose__2;
  v19 = *(*&buf[8] + 48);
  v38[0] = *(*&buf[8] + 32);
  v38[1] = v19;
  v40 = [(SLCollaborationHandshakeController *)self _sandboxExtensionIssueFileURL:v12 withAuditToken:v38];
  v20 = [(SLCollaborationHandshakeController *)self taskManager];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __109__SLCollaborationHandshakeController_startCollaborationWithFileURL_metadata_participants_timeout_completion___block_invoke_2;
  v30[3] = &unk_278926218;
  v21 = v12;
  v31 = v21;
  v36 = v39;
  v22 = v13;
  v32 = v22;
  v23 = v14;
  v33 = v23;
  v34 = self;
  v37 = &v42;
  v35 = v15;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __109__SLCollaborationHandshakeController_startCollaborationWithFileURL_metadata_participants_timeout_completion___block_invoke_17;
  v28[3] = &unk_2789261C8;
  v29 = v35;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __109__SLCollaborationHandshakeController_startCollaborationWithFileURL_metadata_participants_timeout_completion___block_invoke_2_18;
  v26[3] = &unk_2789261F0;
  v24 = v29;
  v27 = v24;
  [v20 startTask:v30 withTimeout:v28 timeoutHandler:v26 errorHandler:a6];

  _Block_object_dispose(v39, 8);
  _Block_object_dispose(buf, 8);
  _Block_object_dispose(&v42, 8);

  v25 = *MEMORY[0x277D85DE8];
}

void __109__SLCollaborationHandshakeController_startCollaborationWithFileURL_metadata_participants_timeout_completion___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAE80] currentConnection];
  [v2 auditToken];
  v3 = *(*(a1 + 32) + 8);
  v4 = v6;
  *(v3 + 32) = v5;
  *(v3 + 48) = v4;
}

id __109__SLCollaborationHandshakeController_startCollaborationWithFileURL_metadata_participants_timeout_completion___block_invoke_2(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = *(*(a1[9] + 8) + 40);
  v7 = a1[4];
  v8 = a1[5];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __109__SLCollaborationHandshakeController_startCollaborationWithFileURL_metadata_participants_timeout_completion___block_invoke_3;
  v14[3] = &unk_278926178;
  v9 = a1[6];
  v10 = a1[8];
  v14[4] = a1[7];
  v15 = v5;
  v17 = a1[10];
  v16 = v10;
  v11 = v5;
  v12 = [a2 startCollaborationWithFileURL:v7 sandboxTokenData:v6 metadata:v8 participants:v9 reply:v14];

  return v12;
}

void __109__SLCollaborationHandshakeController_startCollaborationWithFileURL_metadata_participants_timeout_completion___block_invoke_3(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [*(a1 + 32) targetSerialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __109__SLCollaborationHandshakeController_startCollaborationWithFileURL_metadata_participants_timeout_completion___block_invoke_4;
  block[3] = &unk_278926150;
  v17 = *(a1 + 40);
  v18 = v9;
  v15 = *(a1 + 48);
  v11 = v15;
  v21 = v15;
  v19 = v7;
  v20 = v8;
  v12 = v8;
  v13 = v7;
  v14 = v9;
  dispatch_async(v10, block);
}

uint64_t __109__SLCollaborationHandshakeController_startCollaborationWithFileURL_metadata_participants_timeout_completion___block_invoke_4(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  result = [*(a1 + 32) isValid];
  if (result)
  {
    [*(a1 + 32) suppress];
    v3 = SLFrameworkLogHandle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = *(*(*(a1 + 72) + 8) + 40);
      v5 = *(a1 + 40);
      v10 = 138412546;
      v11 = v4;
      v12 = 2112;
      v13 = v5;
      _os_log_impl(&dword_231772000, v3, OS_LOG_TYPE_INFO, "[SLCollaborationHandshakeController] startCollaborationWithFileURL Received response for requestUUID: %@, error: %@", &v10, 0x16u);
    }

    v6 = *(a1 + 56);
    v8 = *(a1 + 40);
    v7 = *(a1 + 48);
    result = (*(*(a1 + 64) + 16))();
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

void __109__SLCollaborationHandshakeController_startCollaborationWithFileURL_metadata_participants_timeout_completion___block_invoke_17(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.SocialLayer.SLCollaborationHandshakeController" code:2 userInfo:0];
  (*(*(a1 + 32) + 16))();
}

- (void)addParticipantHandles:(id)a3 withMetadata:(id)a4 timeout:(double)a5 completion:(id)a6
{
  v43 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__2;
  v35 = __Block_byref_object_dispose__2;
  v36 = [MEMORY[0x277CCAD78] UUID];
  v13 = SLFrameworkLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = v32[5];
    *buf = 136315650;
    v38 = "[SLCollaborationHandshakeController addParticipantHandles:withMetadata:timeout:completion:]";
    v39 = 2112;
    v40 = v11;
    v41 = 2112;
    v42 = v14;
    _os_log_impl(&dword_231772000, v13, OS_LOG_TYPE_INFO, "%s: Metadata: %@, requestUUID: %@", buf, 0x20u);
  }

  v15 = [(SLCollaborationHandshakeController *)self taskManager];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __92__SLCollaborationHandshakeController_addParticipantHandles_withMetadata_timeout_completion___block_invoke;
  v25[3] = &unk_2789261A0;
  v16 = v10;
  v26 = v16;
  v17 = v11;
  v27 = v17;
  v28 = self;
  v30 = &v31;
  v29 = v12;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __92__SLCollaborationHandshakeController_addParticipantHandles_withMetadata_timeout_completion___block_invoke_20;
  v22[3] = &unk_278926290;
  v24 = &v31;
  v23 = v29;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __92__SLCollaborationHandshakeController_addParticipantHandles_withMetadata_timeout_completion___block_invoke_21;
  v20[3] = &unk_2789261F0;
  v18 = v23;
  v21 = v18;
  [v15 startTask:v25 withTimeout:v22 timeoutHandler:v20 errorHandler:a5];

  _Block_object_dispose(&v31, 8);
  v19 = *MEMORY[0x277D85DE8];
}

id __92__SLCollaborationHandshakeController_addParticipantHandles_withMetadata_timeout_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __92__SLCollaborationHandshakeController_addParticipantHandles_withMetadata_timeout_completion___block_invoke_2;
  v13[3] = &unk_278926268;
  v13[4] = *(a1 + 48);
  v14 = v5;
  v12 = *(a1 + 56);
  v8 = v12;
  v15 = v12;
  v9 = v5;
  v10 = [a2 addParticipantHandles:v6 withMetadata:v7 reply:v13];

  return v10;
}

void __92__SLCollaborationHandshakeController_addParticipantHandles_withMetadata_timeout_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) targetSerialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __92__SLCollaborationHandshakeController_addParticipantHandles_withMetadata_timeout_completion___block_invoke_3;
  block[3] = &unk_278926240;
  v13 = *(a1 + 40);
  v14 = v6;
  v11 = *(a1 + 48);
  v8 = v11;
  v16 = v11;
  v15 = v5;
  v9 = v5;
  v10 = v6;
  dispatch_async(v7, block);
}

uint64_t __92__SLCollaborationHandshakeController_addParticipantHandles_withMetadata_timeout_completion___block_invoke_3(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  result = [*(a1 + 32) isValid];
  if (result)
  {
    [*(a1 + 32) suppress];
    v3 = SLFrameworkLogHandle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = *(*(*(a1 + 64) + 8) + 40);
      v5 = *(a1 + 40);
      v9 = 138412546;
      v10 = v4;
      v11 = 2112;
      v12 = v5;
      _os_log_impl(&dword_231772000, v3, OS_LOG_TYPE_INFO, "[SLCollaborationHandshakeController] addParticipantHandles received response for request UUID: %@, error: %@", &v9, 0x16u);
    }

    v6 = *(a1 + 48);
    v7 = *(a1 + 40);
    result = (*(*(a1 + 56) + 16))();
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void __92__SLCollaborationHandshakeController_addParticipantHandles_withMetadata_timeout_completion___block_invoke_20(uint64_t a1)
{
  v2 = SLFrameworkLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __92__SLCollaborationHandshakeController_addParticipantHandles_withMetadata_timeout_completion___block_invoke_20_cold_1(a1);
  }

  v3 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.SocialLayer.SLCollaborationHandshakeController" code:2 userInfo:0];
  (*(*(a1 + 32) + 16))();
}

- (void)addParticipantHandles:(id)a3 withFileURL:(id)a4 metadata:(id)a5 timeout:(double)a6 completion:(id)a7
{
  v53 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = __Block_byref_object_copy__2;
  v47 = __Block_byref_object_dispose__2;
  v48 = [MEMORY[0x277CCAD78] UUID];
  v16 = SLFrameworkLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = v44[5];
    *buf = 136315650;
    *&buf[4] = "[SLCollaborationHandshakeController addParticipantHandles:withFileURL:metadata:timeout:completion:]";
    *&buf[12] = 2112;
    *&buf[14] = v14;
    *&buf[22] = 2112;
    v50 = v17;
    _os_log_impl(&dword_231772000, v16, OS_LOG_TYPE_INFO, "%s: Metadata: %@, requestUUID: %@", buf, 0x20u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x4010000000;
  v50 = "";
  v51 = 0u;
  v52 = 0u;
  v18 = [(SLCollaborationHandshakeController *)self _handshakeService];
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __100__SLCollaborationHandshakeController_addParticipantHandles_withFileURL_metadata_timeout_completion___block_invoke;
  v42[3] = &unk_278925B78;
  v42[4] = buf;
  [v18 prepareConnectionWithReply:v42];

  v40[0] = 0;
  v40[1] = v40;
  v40[2] = 0x3032000000;
  v40[3] = __Block_byref_object_copy__2;
  v40[4] = __Block_byref_object_dispose__2;
  v19 = *(*&buf[8] + 48);
  v39[0] = *(*&buf[8] + 32);
  v39[1] = v19;
  v41 = [(SLCollaborationHandshakeController *)self _sandboxExtensionIssueFileURL:v13 withAuditToken:v39];
  v20 = [(SLCollaborationHandshakeController *)self taskManager];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __100__SLCollaborationHandshakeController_addParticipantHandles_withFileURL_metadata_timeout_completion___block_invoke_2;
  v31[3] = &unk_2789262B8;
  v21 = v12;
  v32 = v21;
  v22 = v13;
  v33 = v22;
  v37 = v40;
  v23 = v14;
  v34 = v23;
  v35 = self;
  v38 = &v43;
  v36 = v15;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __100__SLCollaborationHandshakeController_addParticipantHandles_withFileURL_metadata_timeout_completion___block_invoke_23;
  v28[3] = &unk_278926290;
  v30 = &v43;
  v29 = v36;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __100__SLCollaborationHandshakeController_addParticipantHandles_withFileURL_metadata_timeout_completion___block_invoke_24;
  v26[3] = &unk_2789261F0;
  v24 = v29;
  v27 = v24;
  [v20 startTask:v31 withTimeout:v28 timeoutHandler:v26 errorHandler:a6];

  _Block_object_dispose(v40, 8);
  _Block_object_dispose(buf, 8);
  _Block_object_dispose(&v43, 8);

  v25 = *MEMORY[0x277D85DE8];
}

void __100__SLCollaborationHandshakeController_addParticipantHandles_withFileURL_metadata_timeout_completion___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAE80] currentConnection];
  [v2 auditToken];
  v3 = *(*(a1 + 32) + 8);
  v4 = v6;
  *(v3 + 32) = v5;
  *(v3 + 48) = v4;
}

id __100__SLCollaborationHandshakeController_addParticipantHandles_withFileURL_metadata_timeout_completion___block_invoke_2(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a1[4];
  v7 = a1[5];
  v8 = *(*(a1[9] + 8) + 40);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __100__SLCollaborationHandshakeController_addParticipantHandles_withFileURL_metadata_timeout_completion___block_invoke_3;
  v14[3] = &unk_278926268;
  v9 = a1[6];
  v10 = a1[8];
  v14[4] = a1[7];
  v15 = v5;
  v17 = a1[10];
  v16 = v10;
  v11 = v5;
  v12 = [a2 addParticipantHandles:v6 withFileURL:v7 sandboxTokenData:v8 metadata:v9 reply:v14];

  return v12;
}

void __100__SLCollaborationHandshakeController_addParticipantHandles_withFileURL_metadata_timeout_completion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) targetSerialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __100__SLCollaborationHandshakeController_addParticipantHandles_withFileURL_metadata_timeout_completion___block_invoke_4;
  block[3] = &unk_278926240;
  v13 = *(a1 + 40);
  v14 = v6;
  v11 = *(a1 + 48);
  v8 = v11;
  v16 = v11;
  v15 = v5;
  v9 = v5;
  v10 = v6;
  dispatch_async(v7, block);
}

uint64_t __100__SLCollaborationHandshakeController_addParticipantHandles_withFileURL_metadata_timeout_completion___block_invoke_4(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  result = [*(a1 + 32) isValid];
  if (result)
  {
    [*(a1 + 32) suppress];
    v3 = SLFrameworkLogHandle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = *(*(*(a1 + 64) + 8) + 40);
      v5 = *(a1 + 40);
      v9 = 138412546;
      v10 = v4;
      v11 = 2112;
      v12 = v5;
      _os_log_impl(&dword_231772000, v3, OS_LOG_TYPE_INFO, "[SLCollaborationHandshakeController] addParticipantHandles:withFileURL: received response for request UUID: %@, error: %@", &v9, 0x16u);
    }

    v6 = *(a1 + 48);
    v7 = *(a1 + 40);
    result = (*(*(a1 + 56) + 16))();
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void __100__SLCollaborationHandshakeController_addParticipantHandles_withFileURL_metadata_timeout_completion___block_invoke_23(uint64_t a1)
{
  v2 = SLFrameworkLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __100__SLCollaborationHandshakeController_addParticipantHandles_withFileURL_metadata_timeout_completion___block_invoke_23_cold_1(a1);
  }

  v3 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.SocialLayer.SLCollaborationHandshakeController" code:2 userInfo:0];
  (*(*(a1 + 32) + 16))();
}

- (void)removeParticipantIdentities:(id)a3 withMetadata:(id)a4 timeout:(double)a5 completion:(id)a6
{
  v43 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__2;
  v35 = __Block_byref_object_dispose__2;
  v36 = [MEMORY[0x277CCAD78] UUID];
  v13 = SLFrameworkLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = v32[5];
    *buf = 136315650;
    v38 = "[SLCollaborationHandshakeController removeParticipantIdentities:withMetadata:timeout:completion:]";
    v39 = 2112;
    v40 = v11;
    v41 = 2112;
    v42 = v14;
    _os_log_impl(&dword_231772000, v13, OS_LOG_TYPE_INFO, "%s: Metadata: %@, requestUUID: %@", buf, 0x20u);
  }

  v15 = [(SLCollaborationHandshakeController *)self taskManager];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __98__SLCollaborationHandshakeController_removeParticipantIdentities_withMetadata_timeout_completion___block_invoke;
  v25[3] = &unk_2789261A0;
  v16 = v10;
  v26 = v16;
  v17 = v11;
  v27 = v17;
  v28 = self;
  v30 = &v31;
  v29 = v12;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __98__SLCollaborationHandshakeController_removeParticipantIdentities_withMetadata_timeout_completion___block_invoke_25;
  v22[3] = &unk_278926290;
  v24 = &v31;
  v23 = v29;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __98__SLCollaborationHandshakeController_removeParticipantIdentities_withMetadata_timeout_completion___block_invoke_26;
  v20[3] = &unk_2789261F0;
  v18 = v23;
  v21 = v18;
  [v15 startTask:v25 withTimeout:v22 timeoutHandler:v20 errorHandler:a5];

  _Block_object_dispose(&v31, 8);
  v19 = *MEMORY[0x277D85DE8];
}

id __98__SLCollaborationHandshakeController_removeParticipantIdentities_withMetadata_timeout_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __98__SLCollaborationHandshakeController_removeParticipantIdentities_withMetadata_timeout_completion___block_invoke_2;
  v13[3] = &unk_278926268;
  v13[4] = *(a1 + 48);
  v14 = v5;
  v12 = *(a1 + 56);
  v8 = v12;
  v15 = v12;
  v9 = v5;
  v10 = [a2 removeParticipantIdentities:v6 withMetadata:v7 reply:v13];

  return v10;
}

void __98__SLCollaborationHandshakeController_removeParticipantIdentities_withMetadata_timeout_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) targetSerialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __98__SLCollaborationHandshakeController_removeParticipantIdentities_withMetadata_timeout_completion___block_invoke_3;
  block[3] = &unk_278926240;
  v13 = *(a1 + 40);
  v14 = v6;
  v11 = *(a1 + 48);
  v8 = v11;
  v16 = v11;
  v15 = v5;
  v9 = v5;
  v10 = v6;
  dispatch_async(v7, block);
}

uint64_t __98__SLCollaborationHandshakeController_removeParticipantIdentities_withMetadata_timeout_completion___block_invoke_3(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  result = [*(a1 + 32) isValid];
  if (result)
  {
    [*(a1 + 32) suppress];
    v3 = SLFrameworkLogHandle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = *(*(*(a1 + 64) + 8) + 40);
      v5 = *(a1 + 40);
      v9 = 138412546;
      v10 = v4;
      v11 = 2112;
      v12 = v5;
      _os_log_impl(&dword_231772000, v3, OS_LOG_TYPE_INFO, "[SLCollaborationHandshakeController] removeParticipantIdentities received response for request UUID: %@, error: %@", &v9, 0x16u);
    }

    v6 = *(a1 + 48);
    v7 = *(a1 + 40);
    result = (*(*(a1 + 56) + 16))();
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void __98__SLCollaborationHandshakeController_removeParticipantIdentities_withMetadata_timeout_completion___block_invoke_25(uint64_t a1)
{
  v2 = SLFrameworkLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __98__SLCollaborationHandshakeController_removeParticipantIdentities_withMetadata_timeout_completion___block_invoke_25_cold_1(a1);
  }

  v3 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.SocialLayer.SLCollaborationHandshakeController" code:2 userInfo:0];
  (*(*(a1 + 32) + 16))();
}

- (void)removeParticipantIdentities:(id)a3 withFileURL:(id)a4 metadata:(id)a5 timeout:(double)a6 completion:(id)a7
{
  v53 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = __Block_byref_object_copy__2;
  v47 = __Block_byref_object_dispose__2;
  v48 = [MEMORY[0x277CCAD78] UUID];
  v16 = SLFrameworkLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = v44[5];
    *buf = 136315650;
    *&buf[4] = "[SLCollaborationHandshakeController removeParticipantIdentities:withFileURL:metadata:timeout:completion:]";
    *&buf[12] = 2112;
    *&buf[14] = v14;
    *&buf[22] = 2112;
    v50 = v17;
    _os_log_impl(&dword_231772000, v16, OS_LOG_TYPE_INFO, "%s: Metadata: %@, requestUUID: %@", buf, 0x20u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x4010000000;
  v50 = "";
  v51 = 0u;
  v52 = 0u;
  v18 = [(SLCollaborationHandshakeController *)self _handshakeService];
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __106__SLCollaborationHandshakeController_removeParticipantIdentities_withFileURL_metadata_timeout_completion___block_invoke;
  v42[3] = &unk_278925B78;
  v42[4] = buf;
  [v18 prepareConnectionWithReply:v42];

  v40[0] = 0;
  v40[1] = v40;
  v40[2] = 0x3032000000;
  v40[3] = __Block_byref_object_copy__2;
  v40[4] = __Block_byref_object_dispose__2;
  v19 = *(*&buf[8] + 48);
  v39[0] = *(*&buf[8] + 32);
  v39[1] = v19;
  v41 = [(SLCollaborationHandshakeController *)self _sandboxExtensionIssueFileURL:v13 withAuditToken:v39];
  v20 = [(SLCollaborationHandshakeController *)self taskManager];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __106__SLCollaborationHandshakeController_removeParticipantIdentities_withFileURL_metadata_timeout_completion___block_invoke_2;
  v31[3] = &unk_2789262B8;
  v21 = v12;
  v32 = v21;
  v22 = v13;
  v33 = v22;
  v37 = v40;
  v23 = v14;
  v34 = v23;
  v35 = self;
  v38 = &v43;
  v36 = v15;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __106__SLCollaborationHandshakeController_removeParticipantIdentities_withFileURL_metadata_timeout_completion___block_invoke_28;
  v28[3] = &unk_278926290;
  v30 = &v43;
  v29 = v36;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __106__SLCollaborationHandshakeController_removeParticipantIdentities_withFileURL_metadata_timeout_completion___block_invoke_29;
  v26[3] = &unk_2789261F0;
  v24 = v29;
  v27 = v24;
  [v20 startTask:v31 withTimeout:v28 timeoutHandler:v26 errorHandler:a6];

  _Block_object_dispose(v40, 8);
  _Block_object_dispose(buf, 8);
  _Block_object_dispose(&v43, 8);

  v25 = *MEMORY[0x277D85DE8];
}

void __106__SLCollaborationHandshakeController_removeParticipantIdentities_withFileURL_metadata_timeout_completion___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAE80] currentConnection];
  [v2 auditToken];
  v3 = *(*(a1 + 32) + 8);
  v4 = v6;
  *(v3 + 32) = v5;
  *(v3 + 48) = v4;
}

id __106__SLCollaborationHandshakeController_removeParticipantIdentities_withFileURL_metadata_timeout_completion___block_invoke_2(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a1[4];
  v7 = a1[5];
  v8 = *(*(a1[9] + 8) + 40);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __106__SLCollaborationHandshakeController_removeParticipantIdentities_withFileURL_metadata_timeout_completion___block_invoke_3;
  v14[3] = &unk_278926268;
  v9 = a1[6];
  v10 = a1[8];
  v14[4] = a1[7];
  v15 = v5;
  v17 = a1[10];
  v16 = v10;
  v11 = v5;
  v12 = [a2 removeParticipantIdentities:v6 withFileURL:v7 sandboxTokenData:v8 metadata:v9 reply:v14];

  return v12;
}

void __106__SLCollaborationHandshakeController_removeParticipantIdentities_withFileURL_metadata_timeout_completion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) targetSerialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __106__SLCollaborationHandshakeController_removeParticipantIdentities_withFileURL_metadata_timeout_completion___block_invoke_4;
  block[3] = &unk_278926240;
  v13 = *(a1 + 40);
  v14 = v6;
  v11 = *(a1 + 48);
  v8 = v11;
  v16 = v11;
  v15 = v5;
  v9 = v5;
  v10 = v6;
  dispatch_async(v7, block);
}

uint64_t __106__SLCollaborationHandshakeController_removeParticipantIdentities_withFileURL_metadata_timeout_completion___block_invoke_4(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  result = [*(a1 + 32) isValid];
  if (result)
  {
    [*(a1 + 32) suppress];
    v3 = SLFrameworkLogHandle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = *(*(*(a1 + 64) + 8) + 40);
      v5 = *(a1 + 40);
      v9 = 138412546;
      v10 = v4;
      v11 = 2112;
      v12 = v5;
      _os_log_impl(&dword_231772000, v3, OS_LOG_TYPE_INFO, "[SLCollaborationHandshakeController] removeParticipantIdentities:withFileURL: received response for request UUID: %@, error: %@", &v9, 0x16u);
    }

    v6 = *(a1 + 48);
    v7 = *(a1 + 40);
    result = (*(*(a1 + 56) + 16))();
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void __106__SLCollaborationHandshakeController_removeParticipantIdentities_withFileURL_metadata_timeout_completion___block_invoke_28(uint64_t a1)
{
  v2 = SLFrameworkLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __106__SLCollaborationHandshakeController_removeParticipantIdentities_withFileURL_metadata_timeout_completion___block_invoke_28_cold_1(a1);
  }

  v3 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.SocialLayer.SLCollaborationHandshakeController" code:2 userInfo:0];
  (*(*(a1 + 32) + 16))();
}

- (void)generateProofForIdentity:(id)a3 collaborationIdentifier:(id)a4 timeout:(double)a5 completion:(id)a6
{
  v45 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__2;
  v35 = __Block_byref_object_dispose__2;
  v36 = [MEMORY[0x277CCAD78] UUID];
  v13 = SLFrameworkLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = v32[5];
    *buf = 136315906;
    v38 = "[SLCollaborationHandshakeController generateProofForIdentity:collaborationIdentifier:timeout:completion:]";
    v39 = 2112;
    v40 = v10;
    v41 = 2112;
    v42 = v11;
    v43 = 2112;
    v44 = v14;
    _os_log_impl(&dword_231772000, v13, OS_LOG_TYPE_INFO, "%s: identity: %@ documentIdentifier: %@ uuid: %@", buf, 0x2Au);
  }

  v15 = [(SLCollaborationHandshakeController *)self taskManager];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __106__SLCollaborationHandshakeController_generateProofForIdentity_collaborationIdentifier_timeout_completion___block_invoke;
  v25[3] = &unk_2789261A0;
  v16 = v10;
  v26 = v16;
  v17 = v11;
  v27 = v17;
  v28 = self;
  v30 = &v31;
  v29 = v12;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __106__SLCollaborationHandshakeController_generateProofForIdentity_collaborationIdentifier_timeout_completion___block_invoke_31;
  v22[3] = &unk_278926290;
  v24 = &v31;
  v23 = v29;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __106__SLCollaborationHandshakeController_generateProofForIdentity_collaborationIdentifier_timeout_completion___block_invoke_32;
  v20[3] = &unk_2789261F0;
  v18 = v23;
  v21 = v18;
  [v15 startTask:v25 withTimeout:v22 timeoutHandler:v20 errorHandler:a5];

  _Block_object_dispose(&v31, 8);
  v19 = *MEMORY[0x277D85DE8];
}

id __106__SLCollaborationHandshakeController_generateProofForIdentity_collaborationIdentifier_timeout_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __106__SLCollaborationHandshakeController_generateProofForIdentity_collaborationIdentifier_timeout_completion___block_invoke_2;
  v13[3] = &unk_2789262E0;
  v13[4] = *(a1 + 48);
  v14 = v5;
  v12 = *(a1 + 56);
  v8 = v12;
  v15 = v12;
  v9 = v5;
  v10 = [a2 generateProofForIdentity:v6 collaborationIdentifier:v7 reply:v13];

  return v10;
}

void __106__SLCollaborationHandshakeController_generateProofForIdentity_collaborationIdentifier_timeout_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) targetSerialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __106__SLCollaborationHandshakeController_generateProofForIdentity_collaborationIdentifier_timeout_completion___block_invoke_3;
  block[3] = &unk_278926240;
  v13 = *(a1 + 40);
  v14 = v6;
  v11 = *(a1 + 48);
  v8 = v11;
  v16 = v11;
  v15 = v5;
  v9 = v5;
  v10 = v6;
  dispatch_async(v7, block);
}

uint64_t __106__SLCollaborationHandshakeController_generateProofForIdentity_collaborationIdentifier_timeout_completion___block_invoke_3(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  result = [*(a1 + 32) isValid];
  if (result)
  {
    [*(a1 + 32) suppress];
    v3 = SLFrameworkLogHandle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(*(*(a1 + 64) + 8) + 40);
      v5 = *(a1 + 40);
      v9 = 138412546;
      v10 = v4;
      v11 = 2112;
      v12 = v5;
      _os_log_impl(&dword_231772000, v3, OS_LOG_TYPE_DEFAULT, "[SLCollaborationHandshakeController] generateProofForIdentity:collaborationIdentifier: received response for request UUID: %@, error: %@", &v9, 0x16u);
    }

    v6 = *(a1 + 48);
    v7 = *(a1 + 40);
    result = (*(*(a1 + 56) + 16))();
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void __106__SLCollaborationHandshakeController_generateProofForIdentity_collaborationIdentifier_timeout_completion___block_invoke_31(uint64_t a1)
{
  v2 = SLFrameworkLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __106__SLCollaborationHandshakeController_generateProofForIdentity_collaborationIdentifier_timeout_completion___block_invoke_31_cold_1(a1);
  }

  v3 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.SocialLayer.SLCollaborationHandshakeController" code:2 userInfo:0];
  (*(*(a1 + 32) + 16))();
}

- (void)verifySourceBundleIdentifierFromMetadata:(id)a3 timeout:(double)a4 completion:(id)a5
{
  v39 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__2;
  v31 = __Block_byref_object_dispose__2;
  v32 = [MEMORY[0x277CCAD78] UUID];
  v10 = SLFrameworkLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = [v8 localIdentifier];
    v12 = v28[5];
    *buf = 136315650;
    v34 = "[SLCollaborationHandshakeController verifySourceBundleIdentifierFromMetadata:timeout:completion:]";
    v35 = 2112;
    v36 = v11;
    v37 = 2112;
    v38 = v12;
    _os_log_impl(&dword_231772000, v10, OS_LOG_TYPE_INFO, "%s: local identifier: %@ uuid: %@", buf, 0x20u);
  }

  v13 = [(SLCollaborationHandshakeController *)self taskManager];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __98__SLCollaborationHandshakeController_verifySourceBundleIdentifierFromMetadata_timeout_completion___block_invoke;
  v22[3] = &unk_278926330;
  v14 = v8;
  v23 = v14;
  v24 = self;
  v26 = &v27;
  v25 = v9;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __98__SLCollaborationHandshakeController_verifySourceBundleIdentifierFromMetadata_timeout_completion___block_invoke_34;
  v19[3] = &unk_278926290;
  v21 = &v27;
  v20 = v25;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __98__SLCollaborationHandshakeController_verifySourceBundleIdentifierFromMetadata_timeout_completion___block_invoke_35;
  v17[3] = &unk_2789261F0;
  v15 = v20;
  v18 = v15;
  [v13 startTask:v22 withTimeout:v19 timeoutHandler:v17 errorHandler:a4];

  _Block_object_dispose(&v27, 8);
  v16 = *MEMORY[0x277D85DE8];
}

id __98__SLCollaborationHandshakeController_verifySourceBundleIdentifierFromMetadata_timeout_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __98__SLCollaborationHandshakeController_verifySourceBundleIdentifierFromMetadata_timeout_completion___block_invoke_2;
  v12[3] = &unk_278926308;
  v6 = *(a1 + 32);
  v12[4] = *(a1 + 40);
  v13 = v5;
  v11 = *(a1 + 48);
  v7 = v11;
  v14 = v11;
  v8 = v5;
  v9 = [a2 verifySourceBundleIdentifierFromMetadata:v6 reply:v12];

  return v9;
}

void __98__SLCollaborationHandshakeController_verifySourceBundleIdentifierFromMetadata_timeout_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) targetSerialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __98__SLCollaborationHandshakeController_verifySourceBundleIdentifierFromMetadata_timeout_completion___block_invoke_3;
  block[3] = &unk_278926240;
  v13 = *(a1 + 40);
  v14 = v6;
  v11 = *(a1 + 48);
  v8 = v11;
  v16 = v11;
  v15 = v5;
  v9 = v5;
  v10 = v6;
  dispatch_async(v7, block);
}

uint64_t __98__SLCollaborationHandshakeController_verifySourceBundleIdentifierFromMetadata_timeout_completion___block_invoke_3(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  result = [*(a1 + 32) isValid];
  if (result)
  {
    [*(a1 + 32) suppress];
    v3 = SLFrameworkLogHandle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(*(*(a1 + 64) + 8) + 40);
      v5 = *(a1 + 40);
      v9 = 138412546;
      v10 = v4;
      v11 = 2112;
      v12 = v5;
      _os_log_impl(&dword_231772000, v3, OS_LOG_TYPE_DEFAULT, "[SLCollaborationHandshakeController] verifySourceBundleIdentifierFromMetadata: received response for request UUID: %@, error: %@", &v9, 0x16u);
    }

    v6 = *(a1 + 48);
    v7 = *(a1 + 40);
    result = (*(*(a1 + 56) + 16))();
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void __98__SLCollaborationHandshakeController_verifySourceBundleIdentifierFromMetadata_timeout_completion___block_invoke_34(uint64_t a1)
{
  v2 = SLFrameworkLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __98__SLCollaborationHandshakeController_verifySourceBundleIdentifierFromMetadata_timeout_completion___block_invoke_34_cold_1(a1);
  }

  v3 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.SocialLayer.SLCollaborationHandshakeController" code:2 userInfo:0];
  (*(*(a1 + 32) + 16))();
}

- (id)taskServiceWithErrorHandler:(id)a3
{
  v3 = [(SLDServiceProxy *)self synchronousRemoteServiceWithErrorHandler:a3];
  if (([v3 conformsToProtocol:&unk_2846B99D0] & 1) == 0)
  {

    v3 = 0;
  }

  return v3;
}

- (id)_handshakeService
{
  v2 = [(SLDServiceProxy *)self synchronousRemoteService];
  if (([v2 conformsToProtocol:&unk_2846B99D0] & 1) == 0)
  {

    v2 = 0;
  }

  return v2;
}

- (id)_sandboxExtensionIssueFileURL:(id)a3 withAuditToken:(id *)a4
{
  v5 = a3;
  v6 = [v5 path];
  v7 = [v5 hasDirectoryPath];

  if (v7)
  {
    v8 = [v6 stringByAppendingString:@"/"];

    v6 = v8;
  }

  v9 = *MEMORY[0x277D861C0];
  [v6 fileSystemRepresentation];
  v10 = *MEMORY[0x277D861E8];
  v14 = *a4->var0;
  v15 = *&a4->var0[4];
  v11 = sandbox_extension_issue_file_to_process();
  v12 = v11;
  if (v11)
  {
    v12 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v11 length:strlen(v11) + 1 freeWhenDone:{1, v14, v15}];
  }

  return v12;
}

void __92__SLCollaborationHandshakeController_addParticipantHandles_withMetadata_timeout_completion___block_invoke_20_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_0_6(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_6(&dword_231772000, v1, v2, "[SLCollaborationHandshakeController] addParticipantHandles request with UUID timed out: %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

void __100__SLCollaborationHandshakeController_addParticipantHandles_withFileURL_metadata_timeout_completion___block_invoke_23_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_0_6(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_6(&dword_231772000, v1, v2, "[SLCollaborationHandshakeController] addParticipantHandles:withFileURL: request with UUID timed out: %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

void __98__SLCollaborationHandshakeController_removeParticipantIdentities_withMetadata_timeout_completion___block_invoke_25_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_0_6(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_6(&dword_231772000, v1, v2, "[SLCollaborationHandshakeController] removeParticipantIdentities request with UUID timed out: %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

void __106__SLCollaborationHandshakeController_removeParticipantIdentities_withFileURL_metadata_timeout_completion___block_invoke_28_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_0_6(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_6(&dword_231772000, v1, v2, "[SLCollaborationHandshakeController] removeParticipantIdentities:withFileURL: request with UUID timed out: %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

void __106__SLCollaborationHandshakeController_generateProofForIdentity_collaborationIdentifier_timeout_completion___block_invoke_31_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_0_6(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_6(&dword_231772000, v1, v2, "[SLCollaborationHandshakeController] generateProofForIdentity:collaborationIdentifier: request with UUID timed out: %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

void __98__SLCollaborationHandshakeController_verifySourceBundleIdentifierFromMetadata_timeout_completion___block_invoke_34_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_0_6(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_6(&dword_231772000, v1, v2, "[SLCollaborationHandshakeController] verifySourceBundleIdentifierFromMetadata: request with UUID timed out: %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

@end