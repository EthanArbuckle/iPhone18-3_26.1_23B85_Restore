@interface SLCollaborationSigningController
- (id)taskServiceWithErrorHandler:(id)a3;
- (void)signData:(id)a3 forCollaborationIdentifier:(id)a4 trackingPreventionSalt:(id)a5 timeout:(double)a6 completion:(id)a7;
- (void)signSourceProcessWithMetadata:(id)a3 timeout:(double)a4 completion:(id)a5;
@end

@implementation SLCollaborationSigningController

- (void)signData:(id)a3 forCollaborationIdentifier:(id)a4 trackingPreventionSalt:(id)a5 timeout:(double)a6 completion:(id)a7
{
  v48 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy__6;
  v40 = __Block_byref_object_dispose__6;
  v41 = [MEMORY[0x277CCAD78] UUID];
  v16 = SLFrameworkLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = v37[5];
    *buf = 136315650;
    v43 = "[SLCollaborationSigningController signData:forCollaborationIdentifier:trackingPreventionSalt:timeout:completion:]";
    v44 = 2112;
    v45 = v13;
    v46 = 2112;
    v47 = v17;
    _os_log_impl(&dword_231772000, v16, OS_LOG_TYPE_INFO, "%s: identifier: %@ uuid: %@", buf, 0x20u);
  }

  v18 = [(SLCollaborationSigningController *)self taskManager];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __114__SLCollaborationSigningController_signData_forCollaborationIdentifier_trackingPreventionSalt_timeout_completion___block_invoke;
  v29[3] = &unk_278926540;
  v19 = v12;
  v30 = v19;
  v20 = v13;
  v31 = v20;
  v21 = v14;
  v32 = v21;
  v33 = self;
  v35 = &v36;
  v34 = v15;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __114__SLCollaborationSigningController_signData_forCollaborationIdentifier_trackingPreventionSalt_timeout_completion___block_invoke_9;
  v26[3] = &unk_278926290;
  v28 = &v36;
  v27 = v34;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __114__SLCollaborationSigningController_signData_forCollaborationIdentifier_trackingPreventionSalt_timeout_completion___block_invoke_14;
  v24[3] = &unk_2789261F0;
  v22 = v27;
  v25 = v22;
  [v18 startTask:v29 withTimeout:v26 timeoutHandler:v24 errorHandler:a6];

  _Block_object_dispose(&v36, 8);
  v23 = *MEMORY[0x277D85DE8];
}

id __114__SLCollaborationSigningController_signData_forCollaborationIdentifier_trackingPreventionSalt_timeout_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __114__SLCollaborationSigningController_signData_forCollaborationIdentifier_trackingPreventionSalt_timeout_completion___block_invoke_2;
  v14[3] = &unk_278926518;
  v8 = *(a1 + 48);
  v14[4] = *(a1 + 56);
  v15 = v5;
  v13 = *(a1 + 64);
  v9 = v13;
  v16 = v13;
  v10 = v5;
  v11 = [a2 signData:v6 forCollaborationIdentifier:v7 trackingPreventionSalt:v8 reply:v14];

  return v11;
}

void __114__SLCollaborationSigningController_signData_forCollaborationIdentifier_trackingPreventionSalt_timeout_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) targetSerialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __114__SLCollaborationSigningController_signData_forCollaborationIdentifier_trackingPreventionSalt_timeout_completion___block_invoke_3;
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

uint64_t __114__SLCollaborationSigningController_signData_forCollaborationIdentifier_trackingPreventionSalt_timeout_completion___block_invoke_3(uint64_t a1)
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
      _os_log_impl(&dword_231772000, v3, OS_LOG_TYPE_DEFAULT, "[SLCollaborationSigningController] signData:forCollaborationIdentifier: received response for request UUID: %@, error: %@", &v9, 0x16u);
    }

    v6 = *(a1 + 48);
    v7 = *(a1 + 40);
    result = (*(*(a1 + 56) + 16))();
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void __114__SLCollaborationSigningController_signData_forCollaborationIdentifier_trackingPreventionSalt_timeout_completion___block_invoke_9(uint64_t a1)
{
  v2 = SLFrameworkLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __114__SLCollaborationSigningController_signData_forCollaborationIdentifier_trackingPreventionSalt_timeout_completion___block_invoke_9_cold_1(a1);
  }

  v3 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.SocialLayer.SLCollaborationSigningController" code:2 userInfo:0];
  (*(*(a1 + 32) + 16))();
}

- (void)signSourceProcessWithMetadata:(id)a3 timeout:(double)a4 completion:(id)a5
{
  v39 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__6;
  v31 = __Block_byref_object_dispose__6;
  v32 = [MEMORY[0x277CCAD78] UUID];
  v10 = SLFrameworkLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = [v8 localIdentifier];
    v12 = v28[5];
    *buf = 136315650;
    v34 = "[SLCollaborationSigningController signSourceProcessWithMetadata:timeout:completion:]";
    v35 = 2112;
    v36 = v11;
    v37 = 2112;
    v38 = v12;
    _os_log_impl(&dword_231772000, v10, OS_LOG_TYPE_INFO, "%s: metadata local identifier: %@ uuid: %@", buf, 0x20u);
  }

  v13 = [(SLCollaborationSigningController *)self taskManager];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __85__SLCollaborationSigningController_signSourceProcessWithMetadata_timeout_completion___block_invoke;
  v22[3] = &unk_2789265B8;
  v14 = v8;
  v23 = v14;
  v24 = self;
  v26 = &v27;
  v25 = v9;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __85__SLCollaborationSigningController_signSourceProcessWithMetadata_timeout_completion___block_invoke_16;
  v19[3] = &unk_278926290;
  v21 = &v27;
  v20 = v25;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __85__SLCollaborationSigningController_signSourceProcessWithMetadata_timeout_completion___block_invoke_17;
  v17[3] = &unk_2789261F0;
  v15 = v20;
  v18 = v15;
  [v13 startTask:v22 withTimeout:v19 timeoutHandler:v17 errorHandler:a4];

  _Block_object_dispose(&v27, 8);
  v16 = *MEMORY[0x277D85DE8];
}

id __85__SLCollaborationSigningController_signSourceProcessWithMetadata_timeout_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __85__SLCollaborationSigningController_signSourceProcessWithMetadata_timeout_completion___block_invoke_2;
  v10[3] = &unk_278926590;
  v6 = *(a1 + 32);
  v10[4] = *(a1 + 40);
  v11 = v5;
  v14 = *(a1 + 56);
  v12 = v6;
  v13 = *(a1 + 48);
  v7 = v5;
  v8 = [a2 signSourceProcessWithMetadata:v6 reply:v10];

  return v8;
}

void __85__SLCollaborationSigningController_signSourceProcessWithMetadata_timeout_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) targetSerialQueue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __85__SLCollaborationSigningController_signSourceProcessWithMetadata_timeout_completion___block_invoke_3;
  v10[3] = &unk_278926568;
  v11 = *(a1 + 40);
  v12 = v5;
  v16 = *(a1 + 64);
  v13 = *(a1 + 48);
  v14 = v6;
  v15 = *(a1 + 56);
  v8 = v6;
  v9 = v5;
  dispatch_async(v7, v10);
}

uint64_t __85__SLCollaborationSigningController_signSourceProcessWithMetadata_timeout_completion___block_invoke_3(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  result = [*(a1 + 32) isValid];
  if (result)
  {
    [*(a1 + 32) suppress];
    v3 = *(a1 + 40);
    v4 = SLFrameworkLogHandle();
    v5 = v4;
    if (v3)
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(*(*(a1 + 72) + 8) + 40);
        v7 = *(a1 + 56);
        v11 = 138412546;
        v12 = v6;
        v13 = 2112;
        v14 = v7;
        _os_log_impl(&dword_231772000, v5, OS_LOG_TYPE_DEFAULT, "[SLCollaborationSigningController] signSourceProcessWithMetadata: received response for request UUID: %@, error: %@", &v11, 0x16u);
      }
    }

    else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __85__SLCollaborationSigningController_signSourceProcessWithMetadata_timeout_completion___block_invoke_3_cold_1(a1, v5);
    }

    v8 = *(a1 + 40);
    v9 = *(a1 + 56);
    result = (*(*(a1 + 64) + 16))();
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

void __85__SLCollaborationSigningController_signSourceProcessWithMetadata_timeout_completion___block_invoke_16(uint64_t a1)
{
  v2 = SLFrameworkLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __85__SLCollaborationSigningController_signSourceProcessWithMetadata_timeout_completion___block_invoke_16_cold_1(a1);
  }

  v3 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.SocialLayer.SLCollaborationSigningController" code:2 userInfo:0];
  (*(*(a1 + 32) + 16))();
}

- (id)taskServiceWithErrorHandler:(id)a3
{
  v3 = [(SLDServiceProxy *)self synchronousRemoteServiceWithErrorHandler:a3];
  if (([v3 conformsToProtocol:&unk_2846AF048] & 1) == 0)
  {

    v3 = 0;
  }

  return v3;
}

void __114__SLCollaborationSigningController_signData_forCollaborationIdentifier_trackingPreventionSalt_timeout_completion___block_invoke_9_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_0_6(a1, *MEMORY[0x277D85DE8]);
  v4 = 138412290;
  v5 = v1;
  _os_log_error_impl(&dword_231772000, v2, OS_LOG_TYPE_ERROR, "[SLCollaborationSigningController] signData:forCollaborationIdentifier: request with UUID timed out: %@", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

void __85__SLCollaborationSigningController_signSourceProcessWithMetadata_timeout_completion___block_invoke_3_cold_1(uint64_t a1, NSObject *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = *(*(*(a1 + 72) + 8) + 40);
  v5 = [*(a1 + 48) localIdentifier];
  v6 = *(a1 + 56);
  v8 = 138412802;
  v9 = v4;
  v10 = 2112;
  v11 = v5;
  v12 = 2112;
  v13 = v6;
  _os_log_error_impl(&dword_231772000, a2, OS_LOG_TYPE_ERROR, "[SLCollaborationSigningController] signSourceProcessWithMetadata: returned nil for request UUID: %@. This will prevent verification of the source process for collaboration identifier: %@, error: %@", &v8, 0x20u);

  v7 = *MEMORY[0x277D85DE8];
}

void __85__SLCollaborationSigningController_signSourceProcessWithMetadata_timeout_completion___block_invoke_16_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_0_6(a1, *MEMORY[0x277D85DE8]);
  v4 = 138412290;
  v5 = v1;
  _os_log_error_impl(&dword_231772000, v2, OS_LOG_TYPE_ERROR, "[SLCollaborationSigningController] signSourceProcessWithMetadata: request with UUID timed out: %@", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

@end