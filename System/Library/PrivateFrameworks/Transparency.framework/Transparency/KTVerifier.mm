@interface KTVerifier
+ (id)getUIStatusPriority:(unint64_t)a3;
- (BOOL)clearPeerCache:(id)a3 error:(id *)a4;
- (BOOL)ignoreFailure:(id)a3 uuid:(id)a4 error:(id *)a5;
- (BOOL)ignoreFailureForResults:(id)a3 error:(id *)a4;
- (BOOL)markFailureSeenForResults:(id)a3 error:(id *)a4;
- (KTVerifier)initWithApplication:(id)a3;
- (id)urisFromResults:(id)a3;
- (id)validateEnrollmentUri:(id)a3 accountKey:(id)a4 loggableData:(id)a5 queryRequest:(id)a6 insertResponse:(id)a7 error:(id *)a8;
- (id)validatePeerUri:(id)a3 accountKey:(id)a4 loggableDatas:(id)a5 queryRequest:(id)a6 queryResponse:(id)a7 error:(id *)a8;
- (unint64_t)getDisplayStatusForResults:(id)a3 isSelfOptedIn:(BOOL)a4;
- (void)batchQuery:(id)a3 userInitiated:(BOOL)a4 block:(id)a5;
- (void)clearLogClientConfiguration:(id)a3;
- (void)clearPublicKeyStoreState:(id)a3;
- (void)clearState:(id)a3;
- (void)configurationBagFetch:(id)a3;
- (void)convertToSelfRequest:(id)a3 serverDatas:(id)a4 syncedDatas:(id)a5 accountKey:(id)a6 queryRequest:(id)a7 queryResponse:(id)a8 updateCompletionBlock:(id)a9;
- (void)copyApplicationState:(id)a3;
- (void)copyApplicationTranscript:(id)a3;
- (void)copyDaemonState:(id)a3;
- (void)copyDataStoreStatistics:(id)a3;
- (void)copyDeviceStatus:(id)a3 complete:(id)a4;
- (void)copyKeyStoreState:(id)a3;
- (void)copyKeyStoreStateFromDisk:(id)a3;
- (void)copyLogClientConfiguration:(id)a3;
- (void)forceApplicationConfig:(id)a3;
- (void)forceApplicationKeysFetch:(id)a3;
- (void)forceCloudConfigUpdate:(id)a3;
- (void)forceConfigUpdate:(id)a3;
- (void)forceDutyCycle:(id)a3;
- (void)forceValidateUUID:(id)a3 uri:(id)a4 block:(id)a5;
- (void)forceValidateUUID:(id)a3 uri:(id)a4 completionBlock:(id)a5;
- (void)getCachedValidatePeerResults:(id)a3 completionBlock:(id)a4;
- (void)getValidatePeerResult:(id)a3 uuid:(id)a4 fetchNow:(BOOL)a5 completionBlock:(id)a6;
- (void)initiateQueryForUris:(id)a3 completionBlock:(id)a4;
- (void)invokeXPCAsynchronousCallWithBlock:(id)a3 failureBlock:(id)a4;
- (void)invokeXPCSynchronousCallWithBlock:(id)a3 failureBlock:(id)a4;
- (void)resetRequestToPending:(id)a3 block:(id)a4;
- (void)validateEnrollmentResult:(id)a3 uuid:(id)a4 completionBlock:(id)a5;
- (void)validateEnrollmentUri:(id)a3 accountKey:(id)a4 loggableData:(id)a5 insertResponse:(id)a6 promiseCompletionBlock:(id)a7;
- (void)validatePeerResult:(id)a3 uuid:(id)a4 completionBlock:(id)a5;
- (void)validatePeerUri:(id)a3 accountKey:(id)a4 loggableDatas:(id)a5 queryResponse:(id)a6 promiseCompletionBlock:(id)a7;
- (void)validatePeers:(id)a3 completionBlock:(id)a4;
- (void)validatePeers:(id)a3 fetchNow:(BOOL)a4 completionBlock:(id)a5;
- (void)validateSelfResult:(id)a3 uuid:(id)a4 syncedDatas:(id)a5 completionBlock:(id)a6;
@end

@implementation KTVerifier

- (KTVerifier)initWithApplication:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [TransparencyApplication applicationValueForIdentifier:v5];

  if (v6)
  {
    v15.receiver = self;
    v15.super_class = KTVerifier;
    v7 = [(KTVerifier *)&v15 init];
    v8 = v7;
    if (v7)
    {
      objc_storeStrong(&v7->_applicationIdentifier, a3);
      v9 = [[TransparencyApplication alloc] initWithIdentifier:v8->_applicationIdentifier];
      application = v8->_application;
      v8->_application = v9;
    }

    self = v8;
    v11 = self;
  }

  else
  {
    if (TRANSPARENCY_DEFAULT_LOG_BLOCK_7 != -1)
    {
      [KTVerifier initWithApplication:];
    }

    v12 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_7;
    if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v17 = v5;
      _os_log_impl(&dword_1E10DB000, v12, OS_LOG_TYPE_ERROR, "Unknown application identifier: %@", buf, 0xCu);
    }

    v11 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v11;
}

uint64_t __34__KTVerifier_initWithApplication___block_invoke()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_7 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

- (void)invokeXPCAsynchronousCallWithBlock:(id)a3 failureBlock:(id)a4
{
  v5 = a3;
  v6 = a4;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __62__KTVerifier_invokeXPCAsynchronousCallWithBlock_failureBlock___block_invoke;
  v11[3] = &unk_1E8701C68;
  v12 = v6;
  v13 = v5;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __62__KTVerifier_invokeXPCAsynchronousCallWithBlock_failureBlock___block_invoke_12;
  v9[3] = &unk_1E87013C8;
  v10 = v12;
  v7 = v12;
  v8 = v5;
  [TransparencyXPCConnection invokeXPCAsynchronousCallWithBlock:v11 errorHandler:v9];
}

void __62__KTVerifier_invokeXPCAsynchronousCallWithBlock_failureBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    if (TRANSPARENCY_DEFAULT_LOG_BLOCK_7 != -1)
    {
      __62__KTVerifier_invokeXPCAsynchronousCallWithBlock_failureBlock___block_invoke_cold_1();
    }

    v9 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_7;
    if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_7, OS_LOG_TYPE_ERROR))
    {
      v11 = 138412290;
      v12 = v7;
      _os_log_impl(&dword_1E10DB000, v9, OS_LOG_TYPE_ERROR, "Unknown invokeXPCAsynchronousCallWithBlock error: %@", &v11, 0xCu);
    }

    v8 = *(*(a1 + 32) + 16);
  }

  else
  {
    v8 = *(*(a1 + 40) + 16);
  }

  v8();

  v10 = *MEMORY[0x1E69E9840];
}

uint64_t __62__KTVerifier_invokeXPCAsynchronousCallWithBlock_failureBlock___block_invoke_2()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_7 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

- (void)invokeXPCSynchronousCallWithBlock:(id)a3 failureBlock:(id)a4
{
  v5 = a3;
  v6 = a4;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __61__KTVerifier_invokeXPCSynchronousCallWithBlock_failureBlock___block_invoke;
  v11[3] = &unk_1E8701C68;
  v12 = v6;
  v13 = v5;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __61__KTVerifier_invokeXPCSynchronousCallWithBlock_failureBlock___block_invoke_16;
  v9[3] = &unk_1E87013C8;
  v10 = v12;
  v7 = v12;
  v8 = v5;
  [TransparencyXPCConnection invokeXPCSynchronousCallWithBlock:v11 errorHandler:v9];
}

void __61__KTVerifier_invokeXPCSynchronousCallWithBlock_failureBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    if (TRANSPARENCY_DEFAULT_LOG_BLOCK_7 != -1)
    {
      __61__KTVerifier_invokeXPCSynchronousCallWithBlock_failureBlock___block_invoke_cold_1();
    }

    v9 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_7;
    if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_7, OS_LOG_TYPE_ERROR))
    {
      v11 = 138412290;
      v12 = v7;
      _os_log_impl(&dword_1E10DB000, v9, OS_LOG_TYPE_ERROR, "Unknown invokeXPCSynchronousCallWithBlock error: %@", &v11, 0xCu);
    }

    v8 = *(*(a1 + 32) + 16);
  }

  else
  {
    v8 = *(*(a1 + 40) + 16);
  }

  v8();

  v10 = *MEMORY[0x1E69E9840];
}

uint64_t __61__KTVerifier_invokeXPCSynchronousCallWithBlock_failureBlock___block_invoke_2()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_7 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

- (id)validatePeerUri:(id)a3 accountKey:(id)a4 loggableDatas:(id)a5 queryRequest:(id)a6 queryResponse:(id)a7 error:(id *)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v49[0] = 0;
  v49[1] = v49;
  v49[2] = 0x3032000000;
  v49[3] = __Block_byref_object_copy__3;
  v49[4] = __Block_byref_object_dispose__3;
  v50 = self->_applicationIdentifier;
  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = __Block_byref_object_copy__3;
  v47 = __Block_byref_object_dispose__3;
  v48 = 0;
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy__3;
  v41 = __Block_byref_object_dispose__3;
  v42 = 0;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __88__KTVerifier_validatePeerUri_accountKey_loggableDatas_queryRequest_queryResponse_error___block_invoke;
  v28[3] = &unk_1E8701CB8;
  v19 = v14;
  v29 = v19;
  v34 = v49;
  v20 = v15;
  v30 = v20;
  v21 = v16;
  v31 = v21;
  v22 = v17;
  v32 = v22;
  v23 = v18;
  v33 = v23;
  v35 = &v37;
  v36 = &v43;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __88__KTVerifier_validatePeerUri_accountKey_loggableDatas_queryRequest_queryResponse_error___block_invoke_2_22;
  v27[3] = &unk_1E8701788;
  v27[4] = &v37;
  [(KTVerifier *)self invokeXPCSynchronousCallWithBlock:v28 failureBlock:v27];
  if (a8)
  {
    v24 = v38[5];
    if (v24)
    {
      *a8 = v24;
    }
  }

  v25 = v44[5];

  _Block_object_dispose(&v37, 8);
  _Block_object_dispose(&v43, 8);

  _Block_object_dispose(v49, 8);

  return v25;
}

void __88__KTVerifier_validatePeerUri_accountKey_loggableDatas_queryRequest_queryResponse_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (TRANSPARENCY_DEFAULT_LOG_BLOCK_7 != -1)
  {
    __88__KTVerifier_validatePeerUri_accountKey_loggableDatas_queryRequest_queryResponse_error___block_invoke_cold_1();
  }

  v4 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_7;
  if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_7, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1E10DB000, v4, OS_LOG_TYPE_INFO, "Sending synchronous validatePeerUri", buf, 2u);
  }

  v5 = *(a1 + 64);
  v6 = *(*(*(a1 + 72) + 8) + 40);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __88__KTVerifier_validatePeerUri_accountKey_loggableDatas_queryRequest_queryResponse_error___block_invoke_19;
  v11[3] = &unk_1E8701C90;
  v12 = *(a1 + 80);
  [v3 validatePeerUri:v7 application:v6 accountKey:v8 loggableDatas:v9 queryRequest:v10 queryResponse:v5 promiseCompletionBlock:v11];
}

uint64_t __88__KTVerifier_validatePeerUri_accountKey_loggableDatas_queryRequest_queryResponse_error___block_invoke_2()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_7 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

void __88__KTVerifier_validatePeerUri_accountKey_loggableDatas_queryRequest_queryResponse_error___block_invoke_19(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v9 = a4;
  if (v9)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a4);
  }

  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

void __88__KTVerifier_validatePeerUri_accountKey_loggableDatas_queryRequest_queryResponse_error___block_invoke_2_22(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v5 = v4;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    v4 = v5;
  }
}

- (id)validateEnrollmentUri:(id)a3 accountKey:(id)a4 loggableData:(id)a5 queryRequest:(id)a6 insertResponse:(id)a7 error:(id *)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v48[0] = 0;
  v48[1] = v48;
  v48[2] = 0x3032000000;
  v48[3] = __Block_byref_object_copy__3;
  v48[4] = __Block_byref_object_dispose__3;
  v49 = [(KTVerifier *)self applicationIdentifier];
  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = __Block_byref_object_copy__3;
  v46 = __Block_byref_object_dispose__3;
  v47 = 0;
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy__3;
  v40 = __Block_byref_object_dispose__3;
  v41 = 0;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __94__KTVerifier_validateEnrollmentUri_accountKey_loggableData_queryRequest_insertResponse_error___block_invoke;
  v27[3] = &unk_1E8701CB8;
  v19 = v14;
  v28 = v19;
  v33 = v48;
  v20 = v15;
  v29 = v20;
  v21 = v16;
  v30 = v21;
  v22 = v17;
  v31 = v22;
  v23 = v18;
  v32 = v23;
  v34 = &v36;
  v35 = &v42;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __94__KTVerifier_validateEnrollmentUri_accountKey_loggableData_queryRequest_insertResponse_error___block_invoke_2_26;
  v26[3] = &unk_1E8701788;
  v26[4] = &v36;
  [(KTVerifier *)self invokeXPCSynchronousCallWithBlock:v27 failureBlock:v26];
  if (a8)
  {
    *a8 = v37[5];
  }

  v24 = v43[5];

  _Block_object_dispose(&v36, 8);
  _Block_object_dispose(&v42, 8);

  _Block_object_dispose(v48, 8);

  return v24;
}

void __94__KTVerifier_validateEnrollmentUri_accountKey_loggableData_queryRequest_insertResponse_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (TRANSPARENCY_DEFAULT_LOG_BLOCK_7 != -1)
  {
    __94__KTVerifier_validateEnrollmentUri_accountKey_loggableData_queryRequest_insertResponse_error___block_invoke_cold_1();
  }

  v4 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_7;
  if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_7, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1E10DB000, v4, OS_LOG_TYPE_INFO, "Sending synchronous validateEnrollmentUri", buf, 2u);
  }

  v5 = *(a1 + 64);
  v6 = *(*(*(a1 + 72) + 8) + 40);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __94__KTVerifier_validateEnrollmentUri_accountKey_loggableData_queryRequest_insertResponse_error___block_invoke_25;
  v11[3] = &unk_1E8701C90;
  v12 = *(a1 + 80);
  [v3 validateEnrollmentUri:v7 application:v6 accountKey:v8 loggableData:v9 queryRequest:v10 queryResponse:v5 promiseCompletionBlock:v11];
}

uint64_t __94__KTVerifier_validateEnrollmentUri_accountKey_loggableData_queryRequest_insertResponse_error___block_invoke_2()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_7 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

void __94__KTVerifier_validateEnrollmentUri_accountKey_loggableData_queryRequest_insertResponse_error___block_invoke_25(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v9 = a4;
  if (v9)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a4);
  }

  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

void __94__KTVerifier_validateEnrollmentUri_accountKey_loggableData_queryRequest_insertResponse_error___block_invoke_2_26(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v5 = v4;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    v4 = v5;
  }
}

- (void)validatePeerUri:(id)a3 accountKey:(id)a4 loggableDatas:(id)a5 queryResponse:(id)a6 promiseCompletionBlock:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [(KTVerifier *)self applicationIdentifier];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __92__KTVerifier_validatePeerUri_accountKey_loggableDatas_queryResponse_promiseCompletionBlock___block_invoke;
  v27[3] = &unk_1E8701CE0;
  v28 = v12;
  v29 = v17;
  v30 = v13;
  v31 = v14;
  v32 = v15;
  v33 = v16;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __92__KTVerifier_validatePeerUri_accountKey_loggableDatas_queryResponse_promiseCompletionBlock___block_invoke_29;
  v24[3] = &unk_1E8701378;
  v25 = v28;
  v26 = v33;
  v18 = v28;
  v19 = v33;
  v20 = v15;
  v21 = v14;
  v22 = v13;
  v23 = v17;
  [(KTVerifier *)self invokeXPCAsynchronousCallWithBlock:v27 failureBlock:v24];
}

void __92__KTVerifier_validatePeerUri_accountKey_loggableDatas_queryResponse_promiseCompletionBlock___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  if (TRANSPARENCY_DEFAULT_LOG_BLOCK_7 != -1)
  {
    __92__KTVerifier_validatePeerUri_accountKey_loggableDatas_queryResponse_promiseCompletionBlock___block_invoke_cold_1();
  }

  v4 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_7;
  if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_7, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1E10DB000, v4, OS_LOG_TYPE_INFO, "Sending validatePeerUri", buf, 2u);
  }

  [v3 validatePeerUri:a1[4] application:a1[5] accountKey:a1[6] loggableDatas:a1[7] queryRequest:0 queryResponse:a1[8] promiseCompletionBlock:a1[9]];
}

uint64_t __92__KTVerifier_validatePeerUri_accountKey_loggableDatas_queryResponse_promiseCompletionBlock___block_invoke_2()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_7 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

- (void)validatePeerResult:(id)a3 uuid:(id)a4 completionBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __54__KTVerifier_validatePeerResult_uuid_completionBlock___block_invoke;
  v17[3] = &unk_1E8701D30;
  v18 = v8;
  v19 = v9;
  v20 = v10;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __54__KTVerifier_validatePeerResult_uuid_completionBlock___block_invoke_2_34;
  v14[3] = &unk_1E8701378;
  v15 = v18;
  v16 = v20;
  v11 = v18;
  v12 = v20;
  v13 = v9;
  [(KTVerifier *)self invokeXPCAsynchronousCallWithBlock:v17 failureBlock:v14];
}

void __54__KTVerifier_validatePeerResult_uuid_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (TRANSPARENCY_DEFAULT_LOG_BLOCK_7 != -1)
  {
    __54__KTVerifier_validatePeerResult_uuid_completionBlock___block_invoke_cold_1();
  }

  v4 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_7;
  if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_7, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1E10DB000, v4, OS_LOG_TYPE_INFO, "Sending validatePeerResult", buf, 2u);
  }

  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __54__KTVerifier_validatePeerResult_uuid_completionBlock___block_invoke_32;
  v7[3] = &unk_1E8701D08;
  v8 = *(a1 + 48);
  [v3 validatePeerResult:v5 uuid:v6 fetchNow:0 completionBlock:v7];
}

uint64_t __54__KTVerifier_validatePeerResult_uuid_completionBlock___block_invoke_2()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_7 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

void __54__KTVerifier_validatePeerResult_uuid_completionBlock___block_invoke_32(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = a2;
  v10 = [v6 uri];
  v7 = [v6 succeed];
  v8 = [v6 optedIn];
  v9 = [v6 loggableDatas];

  (*(v4 + 16))(v4, v10, v7, v8, v9, v5);
}

- (void)getValidatePeerResult:(id)a3 uuid:(id)a4 fetchNow:(BOOL)a5 completionBlock:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __66__KTVerifier_getValidatePeerResult_uuid_fetchNow_completionBlock___block_invoke;
  v20[3] = &unk_1E8701D58;
  v21 = v10;
  v22 = v11;
  v24 = a5;
  v23 = v12;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __66__KTVerifier_getValidatePeerResult_uuid_fetchNow_completionBlock___block_invoke_37;
  v16[3] = &unk_1E8701D80;
  v18 = self;
  v19 = v23;
  v17 = v21;
  v13 = v21;
  v14 = v23;
  v15 = v11;
  [(KTVerifier *)self invokeXPCAsynchronousCallWithBlock:v20 failureBlock:v16];
}

void __66__KTVerifier_getValidatePeerResult_uuid_fetchNow_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (TRANSPARENCY_DEFAULT_LOG_BLOCK_7 != -1)
  {
    __66__KTVerifier_getValidatePeerResult_uuid_fetchNow_completionBlock___block_invoke_cold_1();
  }

  v4 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_7;
  if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_7, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_1E10DB000, v4, OS_LOG_TYPE_INFO, "Sending validatePeerResult", v5, 2u);
  }

  [v3 validatePeerResult:*(a1 + 32) uuid:*(a1 + 40) fetchNow:*(a1 + 56) completionBlock:*(a1 + 48)];
}

uint64_t __66__KTVerifier_getValidatePeerResult_uuid_fetchNow_completionBlock___block_invoke_2()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_7 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

void __66__KTVerifier_getValidatePeerResult_uuid_fetchNow_completionBlock___block_invoke_37(uint64_t a1, void *a2)
{
  v3 = *(a1 + 48);
  v4 = a2;
  v5 = [KTVerifierResult alloc];
  v6 = *(a1 + 32);
  v8 = [*(a1 + 40) applicationIdentifier];
  v7 = [(KTVerifierResult *)v5 initWithUri:v6 application:v8];
  (*(v3 + 16))(v3, v7, v4);
}

- (void)validateSelfResult:(id)a3 uuid:(id)a4 syncedDatas:(id)a5 completionBlock:(id)a6
{
  v10 = a6;
  v11 = a3;
  v13 = NSStringFromSelector(a2);
  v12 = [(KTVerifier *)self unimplementedError:v13];
  (*(a6 + 2))(v10, v11, 0, 0, 0, v12);
}

- (void)validateEnrollmentUri:(id)a3 accountKey:(id)a4 loggableData:(id)a5 insertResponse:(id)a6 promiseCompletionBlock:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [(KTVerifier *)self applicationIdentifier];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __98__KTVerifier_validateEnrollmentUri_accountKey_loggableData_insertResponse_promiseCompletionBlock___block_invoke;
  v27[3] = &unk_1E8701CE0;
  v28 = v12;
  v29 = v17;
  v30 = v13;
  v31 = v14;
  v32 = v15;
  v33 = v16;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __98__KTVerifier_validateEnrollmentUri_accountKey_loggableData_insertResponse_promiseCompletionBlock___block_invoke_41;
  v24[3] = &unk_1E8701378;
  v25 = v28;
  v26 = v33;
  v18 = v28;
  v19 = v33;
  v20 = v15;
  v21 = v14;
  v22 = v13;
  v23 = v17;
  [(KTVerifier *)self invokeXPCAsynchronousCallWithBlock:v27 failureBlock:v24];
}

void __98__KTVerifier_validateEnrollmentUri_accountKey_loggableData_insertResponse_promiseCompletionBlock___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  if (TRANSPARENCY_DEFAULT_LOG_BLOCK_7 != -1)
  {
    __98__KTVerifier_validateEnrollmentUri_accountKey_loggableData_insertResponse_promiseCompletionBlock___block_invoke_cold_1();
  }

  v4 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_7;
  if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_7, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1E10DB000, v4, OS_LOG_TYPE_INFO, "Sending validateEnrollmentUri", buf, 2u);
  }

  [v3 validateEnrollmentUri:a1[4] application:a1[5] accountKey:a1[6] loggableData:a1[7] queryRequest:0 queryResponse:a1[8] promiseCompletionBlock:a1[9]];
}

uint64_t __98__KTVerifier_validateEnrollmentUri_accountKey_loggableData_insertResponse_promiseCompletionBlock___block_invoke_2()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_7 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

- (void)validateEnrollmentResult:(id)a3 uuid:(id)a4 completionBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __60__KTVerifier_validateEnrollmentResult_uuid_completionBlock___block_invoke;
  v17[3] = &unk_1E8701D30;
  v18 = v8;
  v19 = v9;
  v20 = v10;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __60__KTVerifier_validateEnrollmentResult_uuid_completionBlock___block_invoke_44;
  v14[3] = &unk_1E8701378;
  v15 = v18;
  v16 = v20;
  v11 = v18;
  v12 = v20;
  v13 = v9;
  [(KTVerifier *)self invokeXPCAsynchronousCallWithBlock:v17 failureBlock:v14];
}

void __60__KTVerifier_validateEnrollmentResult_uuid_completionBlock___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  if (TRANSPARENCY_DEFAULT_LOG_BLOCK_7 != -1)
  {
    __60__KTVerifier_validateEnrollmentResult_uuid_completionBlock___block_invoke_cold_1();
  }

  v4 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_7;
  if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_7, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_1E10DB000, v4, OS_LOG_TYPE_INFO, "Sending validateEnrollmentResult", v5, 2u);
  }

  [v3 validateEnrollmentResult:a1[4] uuid:a1[5] completionBlock:a1[6]];
}

uint64_t __60__KTVerifier_validateEnrollmentResult_uuid_completionBlock___block_invoke_2()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_7 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

- (void)convertToSelfRequest:(id)a3 serverDatas:(id)a4 syncedDatas:(id)a5 accountKey:(id)a6 queryRequest:(id)a7 queryResponse:(id)a8 updateCompletionBlock:(id)a9
{
  v12 = a9;
  v13 = a3;
  v15 = NSStringFromSelector(a2);
  v14 = [(KTVerifier *)self unimplementedError:v15];
  (*(a9 + 2))(v12, v13, v14);
}

- (void)forceValidateUUID:(id)a3 uri:(id)a4 block:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __42__KTVerifier_forceValidateUUID_uri_block___block_invoke;
  v16[3] = &unk_1E8701D30;
  v17 = v8;
  v18 = v9;
  v19 = v10;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __42__KTVerifier_forceValidateUUID_uri_block___block_invoke_47;
  v14[3] = &unk_1E87013C8;
  v15 = v19;
  v11 = v19;
  v12 = v9;
  v13 = v8;
  [(KTVerifier *)self invokeXPCAsynchronousCallWithBlock:v16 failureBlock:v14];
}

void __42__KTVerifier_forceValidateUUID_uri_block___block_invoke(void *a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (TRANSPARENCY_DEFAULT_LOG_BLOCK_7 != -1)
  {
    __42__KTVerifier_forceValidateUUID_uri_block___block_invoke_cold_1();
  }

  v4 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_7;
  if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_7, OS_LOG_TYPE_INFO))
  {
    v5 = a1[4];
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_1E10DB000, v4, OS_LOG_TYPE_INFO, "Sending forceValidateUUID(%@)", &v7, 0xCu);
  }

  [v3 forceValidateUUID:a1[4] uri:a1[5] block:a1[6]];

  v6 = *MEMORY[0x1E69E9840];
}

uint64_t __42__KTVerifier_forceValidateUUID_uri_block___block_invoke_2()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_7 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

- (void)forceValidateUUID:(id)a3 uri:(id)a4 completionBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __52__KTVerifier_forceValidateUUID_uri_completionBlock___block_invoke;
  v17[3] = &unk_1E8701D30;
  v18 = v8;
  v19 = v9;
  v20 = v10;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __52__KTVerifier_forceValidateUUID_uri_completionBlock___block_invoke_50;
  v14[3] = &unk_1E8701378;
  v15 = v19;
  v16 = v20;
  v11 = v19;
  v12 = v20;
  v13 = v8;
  [(KTVerifier *)self invokeXPCAsynchronousCallWithBlock:v17 failureBlock:v14];
}

void __52__KTVerifier_forceValidateUUID_uri_completionBlock___block_invoke(void *a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (TRANSPARENCY_DEFAULT_LOG_BLOCK_7 != -1)
  {
    __52__KTVerifier_forceValidateUUID_uri_completionBlock___block_invoke_cold_1();
  }

  v4 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_7;
  if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_7, OS_LOG_TYPE_INFO))
  {
    v5 = a1[4];
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_1E10DB000, v4, OS_LOG_TYPE_INFO, "Sending forceValidateUUID(%@)", &v7, 0xCu);
  }

  [v3 forceValidateUUID:a1[4] uri:a1[5] completionBlock:a1[6]];

  v6 = *MEMORY[0x1E69E9840];
}

uint64_t __52__KTVerifier_forceValidateUUID_uri_completionBlock___block_invoke_2()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_7 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

- (void)resetRequestToPending:(id)a3 block:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __42__KTVerifier_resetRequestToPending_block___block_invoke;
  v12[3] = &unk_1E8701DA8;
  v13 = v6;
  v14 = v7;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __42__KTVerifier_resetRequestToPending_block___block_invoke_53;
  v10[3] = &unk_1E87013C8;
  v11 = v14;
  v8 = v14;
  v9 = v6;
  [(KTVerifier *)self invokeXPCAsynchronousCallWithBlock:v12 failureBlock:v10];
}

void __42__KTVerifier_resetRequestToPending_block___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (TRANSPARENCY_DEFAULT_LOG_BLOCK_7 != -1)
  {
    __42__KTVerifier_resetRequestToPending_block___block_invoke_cold_1();
  }

  v4 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_7;
  if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_7, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_1E10DB000, v4, OS_LOG_TYPE_INFO, "Sending resetRequestToPending(%@)", &v7, 0xCu);
  }

  [v3 resetRequestToPending:*(a1 + 32) block:*(a1 + 40)];

  v6 = *MEMORY[0x1E69E9840];
}

uint64_t __42__KTVerifier_resetRequestToPending_block___block_invoke_2()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_7 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

- (void)clearState:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __25__KTVerifier_clearState___block_invoke;
  v8[3] = &unk_1E8701DA8;
  v8[4] = self;
  v9 = v4;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __25__KTVerifier_clearState___block_invoke_56;
  v6[3] = &unk_1E87013C8;
  v7 = v9;
  v5 = v9;
  [(KTVerifier *)self invokeXPCAsynchronousCallWithBlock:v8 failureBlock:v6];
}

void __25__KTVerifier_clearState___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (TRANSPARENCY_DEFAULT_LOG_BLOCK_7 != -1)
  {
    __25__KTVerifier_clearState___block_invoke_cold_1();
  }

  v4 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_7;
  if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_7, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v6 = v4;
    v7 = [v5 applicationIdentifier];
    v10 = 138543362;
    v11 = v7;
    _os_log_impl(&dword_1E10DB000, v6, OS_LOG_TYPE_INFO, "Sending clearApplicationState(%{public}@)", &v10, 0xCu);
  }

  v8 = [*(a1 + 32) applicationIdentifier];
  [v3 clearApplicationState:v8 completionBlock:*(a1 + 40)];

  v9 = *MEMORY[0x1E69E9840];
}

uint64_t __25__KTVerifier_clearState___block_invoke_2()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_7 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

- (void)forceConfigUpdate:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __32__KTVerifier_forceConfigUpdate___block_invoke;
  v8[3] = &unk_1E8701DD0;
  v9 = v4;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __32__KTVerifier_forceConfigUpdate___block_invoke_59;
  v6[3] = &unk_1E87013C8;
  v7 = v9;
  v5 = v9;
  [(KTVerifier *)self invokeXPCAsynchronousCallWithBlock:v8 failureBlock:v6];
}

void __32__KTVerifier_forceConfigUpdate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (TRANSPARENCY_DEFAULT_LOG_BLOCK_7 != -1)
  {
    __32__KTVerifier_forceConfigUpdate___block_invoke_cold_1();
  }

  v4 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_7;
  if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_7, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_1E10DB000, v4, OS_LOG_TYPE_INFO, "Sending forceConfigUpdate", v5, 2u);
  }

  [v3 forceConfigUpdate:*(a1 + 32)];
}

uint64_t __32__KTVerifier_forceConfigUpdate___block_invoke_2()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_7 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

- (void)configurationBagFetch:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __36__KTVerifier_configurationBagFetch___block_invoke;
  v8[3] = &unk_1E8701DD0;
  v9 = v4;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __36__KTVerifier_configurationBagFetch___block_invoke_62;
  v6[3] = &unk_1E87013C8;
  v7 = v9;
  v5 = v9;
  [(KTVerifier *)self invokeXPCAsynchronousCallWithBlock:v8 failureBlock:v6];
}

void __36__KTVerifier_configurationBagFetch___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (TRANSPARENCY_DEFAULT_LOG_BLOCK_7 != -1)
  {
    __36__KTVerifier_configurationBagFetch___block_invoke_cold_1();
  }

  v4 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_7;
  if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_7, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_1E10DB000, v4, OS_LOG_TYPE_INFO, "Sending configurationBagFetch", v5, 2u);
  }

  [v3 configurationBagFetch:*(a1 + 32)];
}

uint64_t __36__KTVerifier_configurationBagFetch___block_invoke_2()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_7 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

- (void)forceApplicationKeysFetch:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __40__KTVerifier_forceApplicationKeysFetch___block_invoke;
  v8[3] = &unk_1E8701DA8;
  v8[4] = self;
  v9 = v4;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __40__KTVerifier_forceApplicationKeysFetch___block_invoke_65;
  v6[3] = &unk_1E87013C8;
  v7 = v9;
  v5 = v9;
  [(KTVerifier *)self invokeXPCAsynchronousCallWithBlock:v8 failureBlock:v6];
}

void __40__KTVerifier_forceApplicationKeysFetch___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (TRANSPARENCY_DEFAULT_LOG_BLOCK_7 != -1)
  {
    __40__KTVerifier_forceApplicationKeysFetch___block_invoke_cold_1();
  }

  v4 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_7;
  if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_7, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_1E10DB000, v4, OS_LOG_TYPE_INFO, "Sending forceApplicationKeysFetch", v6, 2u);
  }

  v5 = [*(a1 + 32) applicationIdentifier];
  [v3 forceApplicationKeysFetch:v5 block:*(a1 + 40)];
}

uint64_t __40__KTVerifier_forceApplicationKeysFetch___block_invoke_2()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_7 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

- (void)forceApplicationConfig:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __37__KTVerifier_forceApplicationConfig___block_invoke;
  v8[3] = &unk_1E8701DA8;
  v8[4] = self;
  v9 = v4;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __37__KTVerifier_forceApplicationConfig___block_invoke_68;
  v6[3] = &unk_1E87013C8;
  v7 = v9;
  v5 = v9;
  [(KTVerifier *)self invokeXPCAsynchronousCallWithBlock:v8 failureBlock:v6];
}

void __37__KTVerifier_forceApplicationConfig___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (TRANSPARENCY_DEFAULT_LOG_BLOCK_7 != -1)
  {
    __37__KTVerifier_forceApplicationConfig___block_invoke_cold_1();
  }

  v4 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_7;
  if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_7, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_1E10DB000, v4, OS_LOG_TYPE_INFO, "Sending forceApplicationConfig", v6, 2u);
  }

  v5 = [*(a1 + 32) applicationIdentifier];
  [v3 forceApplicationConfig:v5 block:*(a1 + 40)];
}

uint64_t __37__KTVerifier_forceApplicationConfig___block_invoke_2()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_7 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

- (void)copyApplicationState:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __35__KTVerifier_copyApplicationState___block_invoke;
  v8[3] = &unk_1E8701DA8;
  v8[4] = self;
  v9 = v4;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __35__KTVerifier_copyApplicationState___block_invoke_71;
  v6[3] = &unk_1E87013C8;
  v7 = v9;
  v5 = v9;
  [(KTVerifier *)self invokeXPCAsynchronousCallWithBlock:v8 failureBlock:v6];
}

void __35__KTVerifier_copyApplicationState___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (TRANSPARENCY_DEFAULT_LOG_BLOCK_7 != -1)
  {
    __35__KTVerifier_copyApplicationState___block_invoke_cold_1();
  }

  v4 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_7;
  if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_7, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_1E10DB000, v4, OS_LOG_TYPE_INFO, "Sending copyApplicationState", v6, 2u);
  }

  v5 = [*(a1 + 32) applicationIdentifier];
  [v3 copyApplicationState:v5 block:*(a1 + 40)];
}

uint64_t __35__KTVerifier_copyApplicationState___block_invoke_2()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_7 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

- (void)copyDataStoreStatistics:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __38__KTVerifier_copyDataStoreStatistics___block_invoke;
  v8[3] = &unk_1E8701DD0;
  v9 = v4;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __38__KTVerifier_copyDataStoreStatistics___block_invoke_74;
  v6[3] = &unk_1E87013C8;
  v7 = v9;
  v5 = v9;
  [(KTVerifier *)self invokeXPCAsynchronousCallWithBlock:v8 failureBlock:v6];
}

void __38__KTVerifier_copyDataStoreStatistics___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (TRANSPARENCY_DEFAULT_LOG_BLOCK_7 != -1)
  {
    __38__KTVerifier_copyDataStoreStatistics___block_invoke_cold_1();
  }

  v4 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_7;
  if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_7, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_1E10DB000, v4, OS_LOG_TYPE_INFO, "Sending copyDataStoreStatistics", v5, 2u);
  }

  [v3 copyDataStoreStatistics:*(a1 + 32)];
}

uint64_t __38__KTVerifier_copyDataStoreStatistics___block_invoke_2()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_7 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

- (void)copyKeyStoreState:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __32__KTVerifier_copyKeyStoreState___block_invoke;
  v8[3] = &unk_1E8701DD0;
  v9 = v4;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __32__KTVerifier_copyKeyStoreState___block_invoke_77;
  v6[3] = &unk_1E87013C8;
  v7 = v9;
  v5 = v9;
  [(KTVerifier *)self invokeXPCAsynchronousCallWithBlock:v8 failureBlock:v6];
}

void __32__KTVerifier_copyKeyStoreState___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (TRANSPARENCY_DEFAULT_LOG_BLOCK_7 != -1)
  {
    __32__KTVerifier_copyKeyStoreState___block_invoke_cold_1();
  }

  v4 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_7;
  if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_7, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_1E10DB000, v4, OS_LOG_TYPE_INFO, "Sending copyKeyStoreState", v5, 2u);
  }

  [v3 copyKeyStoreState:*(a1 + 32)];
}

uint64_t __32__KTVerifier_copyKeyStoreState___block_invoke_2()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_7 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

- (void)copyKeyStoreStateFromDisk:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __40__KTVerifier_copyKeyStoreStateFromDisk___block_invoke;
  v8[3] = &unk_1E8701DD0;
  v9 = v4;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __40__KTVerifier_copyKeyStoreStateFromDisk___block_invoke_80;
  v6[3] = &unk_1E87013C8;
  v7 = v9;
  v5 = v9;
  [(KTVerifier *)self invokeXPCAsynchronousCallWithBlock:v8 failureBlock:v6];
}

void __40__KTVerifier_copyKeyStoreStateFromDisk___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (TRANSPARENCY_DEFAULT_LOG_BLOCK_7 != -1)
  {
    __40__KTVerifier_copyKeyStoreStateFromDisk___block_invoke_cold_1();
  }

  v4 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_7;
  if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_7, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_1E10DB000, v4, OS_LOG_TYPE_INFO, "Sending copyKeyStoreStateFromDisk", v5, 2u);
  }

  [v3 copyKeyStoreStateFromDisk:*(a1 + 32)];
}

uint64_t __40__KTVerifier_copyKeyStoreStateFromDisk___block_invoke_2()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_7 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

- (void)forceDutyCycle:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __29__KTVerifier_forceDutyCycle___block_invoke;
  v8[3] = &unk_1E8701DD0;
  v9 = v4;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __29__KTVerifier_forceDutyCycle___block_invoke_83;
  v6[3] = &unk_1E87013C8;
  v7 = v9;
  v5 = v9;
  [(KTVerifier *)self invokeXPCAsynchronousCallWithBlock:v8 failureBlock:v6];
}

void __29__KTVerifier_forceDutyCycle___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (TRANSPARENCY_DEFAULT_LOG_BLOCK_7 != -1)
  {
    __29__KTVerifier_forceDutyCycle___block_invoke_cold_1();
  }

  v4 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_7;
  if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_7, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_1E10DB000, v4, OS_LOG_TYPE_INFO, "Sending runDutyCycle", v5, 2u);
  }

  [v3 runDutyCycle:*(a1 + 32)];
}

uint64_t __29__KTVerifier_forceDutyCycle___block_invoke_2()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_7 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

- (void)forceCloudConfigUpdate:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __37__KTVerifier_forceCloudConfigUpdate___block_invoke;
  v8[3] = &unk_1E8701DD0;
  v9 = v4;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __37__KTVerifier_forceCloudConfigUpdate___block_invoke_2_87;
  v6[3] = &unk_1E87013C8;
  v7 = v9;
  v5 = v9;
  [(KTVerifier *)self invokeXPCAsynchronousCallWithBlock:v8 failureBlock:v6];
}

void __37__KTVerifier_forceCloudConfigUpdate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (TRANSPARENCY_DEFAULT_LOG_BLOCK_7 != -1)
  {
    __37__KTVerifier_forceCloudConfigUpdate___block_invoke_cold_1();
  }

  v4 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_7;
  if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_7, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1E10DB000, v4, OS_LOG_TYPE_INFO, "Sending updateCloudConfigurationStore", buf, 2u);
  }

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __37__KTVerifier_forceCloudConfigUpdate___block_invoke_86;
  v5[3] = &unk_1E87013C8;
  v6 = *(a1 + 32);
  [v3 updateCloudConfigurationStore:v5];
}

uint64_t __37__KTVerifier_forceCloudConfigUpdate___block_invoke_2()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_7 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

- (void)copyDeviceStatus:(id)a3 complete:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __40__KTVerifier_copyDeviceStatus_complete___block_invoke;
  v12[3] = &unk_1E8701DA8;
  v13 = v6;
  v14 = v7;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __40__KTVerifier_copyDeviceStatus_complete___block_invoke_2_92;
  v10[3] = &unk_1E87013C8;
  v11 = v14;
  v8 = v14;
  v9 = v6;
  [(KTVerifier *)self invokeXPCAsynchronousCallWithBlock:v12 failureBlock:v10];
}

void __40__KTVerifier_copyDeviceStatus_complete___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (TRANSPARENCY_DEFAULT_LOG_BLOCK_7 != -1)
  {
    __40__KTVerifier_copyDeviceStatus_complete___block_invoke_cold_1();
  }

  v4 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_7;
  if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_7, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    *buf = 138412290;
    v11 = v5;
    _os_log_impl(&dword_1E10DB000, v4, OS_LOG_TYPE_INFO, "Sending copyDeviceStatus for %@", buf, 0xCu);
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __40__KTVerifier_copyDeviceStatus_complete___block_invoke_90;
  v8[3] = &unk_1E8701DF8;
  v6 = *(a1 + 32);
  v9 = *(a1 + 40);
  [v3 copyDeviceStatus:v6 complete:v8];

  v7 = *MEMORY[0x1E69E9840];
}

uint64_t __40__KTVerifier_copyDeviceStatus_complete___block_invoke_2()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_7 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

- (void)copyLogClientConfiguration:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __41__KTVerifier_copyLogClientConfiguration___block_invoke;
  v8[3] = &unk_1E8701DD0;
  v9 = v4;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __41__KTVerifier_copyLogClientConfiguration___block_invoke_95;
  v6[3] = &unk_1E87013C8;
  v7 = v9;
  v5 = v9;
  [(KTVerifier *)self invokeXPCAsynchronousCallWithBlock:v8 failureBlock:v6];
}

void __41__KTVerifier_copyLogClientConfiguration___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (TRANSPARENCY_DEFAULT_LOG_BLOCK_7 != -1)
  {
    __41__KTVerifier_copyLogClientConfiguration___block_invoke_cold_1();
  }

  v4 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_7;
  if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_7, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_1E10DB000, v4, OS_LOG_TYPE_INFO, "Sending copyLogClientConfiguration", v5, 2u);
  }

  [v3 copyLogClientConfiguration:*(a1 + 32)];
}

uint64_t __41__KTVerifier_copyLogClientConfiguration___block_invoke_2()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_7 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

- (void)clearLogClientConfiguration:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __42__KTVerifier_clearLogClientConfiguration___block_invoke;
  v8[3] = &unk_1E8701DD0;
  v9 = v4;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __42__KTVerifier_clearLogClientConfiguration___block_invoke_98;
  v6[3] = &unk_1E87013C8;
  v7 = v9;
  v5 = v9;
  [(KTVerifier *)self invokeXPCAsynchronousCallWithBlock:v8 failureBlock:v6];
}

void __42__KTVerifier_clearLogClientConfiguration___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (TRANSPARENCY_DEFAULT_LOG_BLOCK_7 != -1)
  {
    __42__KTVerifier_clearLogClientConfiguration___block_invoke_cold_1();
  }

  v4 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_7;
  if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_7, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_1E10DB000, v4, OS_LOG_TYPE_INFO, "Sending copyLogClientConfiguration", v5, 2u);
  }

  [v3 clearLogClientConfiguration:*(a1 + 32)];
}

uint64_t __42__KTVerifier_clearLogClientConfiguration___block_invoke_2()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_7 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

- (void)clearPublicKeyStoreState:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __39__KTVerifier_clearPublicKeyStoreState___block_invoke;
  v8[3] = &unk_1E8701DA8;
  v8[4] = self;
  v9 = v4;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __39__KTVerifier_clearPublicKeyStoreState___block_invoke_101;
  v6[3] = &unk_1E87013C8;
  v7 = v9;
  v5 = v9;
  [(KTVerifier *)self invokeXPCAsynchronousCallWithBlock:v8 failureBlock:v6];
}

void __39__KTVerifier_clearPublicKeyStoreState___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (TRANSPARENCY_DEFAULT_LOG_BLOCK_7 != -1)
  {
    __39__KTVerifier_clearPublicKeyStoreState___block_invoke_cold_1();
  }

  v4 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_7;
  if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_7, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_1E10DB000, v4, OS_LOG_TYPE_INFO, "Sending clearPublicKeyStoreState", v6, 2u);
  }

  v5 = [*(a1 + 32) applicationIdentifier];
  [v3 clearPublicKeyStoreState:v5 block:*(a1 + 40)];
}

uint64_t __39__KTVerifier_clearPublicKeyStoreState___block_invoke_2()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_7 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

- (void)copyDaemonState:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __30__KTVerifier_copyDaemonState___block_invoke;
  v8[3] = &unk_1E8701DD0;
  v9 = v4;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __30__KTVerifier_copyDaemonState___block_invoke_104;
  v6[3] = &unk_1E87013C8;
  v7 = v9;
  v5 = v9;
  [(KTVerifier *)self invokeXPCAsynchronousCallWithBlock:v8 failureBlock:v6];
}

void __30__KTVerifier_copyDaemonState___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (TRANSPARENCY_DEFAULT_LOG_BLOCK_7 != -1)
  {
    __30__KTVerifier_copyDaemonState___block_invoke_cold_1();
  }

  v4 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_7;
  if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_7, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_1E10DB000, v4, OS_LOG_TYPE_INFO, "Sending copyDaemonState", v5, 2u);
  }

  [v3 copyDaemonState:*(a1 + 32)];
}

uint64_t __30__KTVerifier_copyDaemonState___block_invoke_2()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_7 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

- (void)copyApplicationTranscript:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __40__KTVerifier_copyApplicationTranscript___block_invoke;
  v8[3] = &unk_1E8701DA8;
  v8[4] = self;
  v9 = v4;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __40__KTVerifier_copyApplicationTranscript___block_invoke_107;
  v6[3] = &unk_1E87013C8;
  v7 = v9;
  v5 = v9;
  [(KTVerifier *)self invokeXPCAsynchronousCallWithBlock:v8 failureBlock:v6];
}

void __40__KTVerifier_copyApplicationTranscript___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (TRANSPARENCY_DEFAULT_LOG_BLOCK_7 != -1)
  {
    __40__KTVerifier_copyApplicationTranscript___block_invoke_cold_1();
  }

  v4 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_7;
  if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_7, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_1E10DB000, v4, OS_LOG_TYPE_INFO, "Sending copyApplicationTranscript", v6, 2u);
  }

  v5 = [*(a1 + 32) applicationIdentifier];
  [v3 copyApplicationTranscript:v5 block:*(a1 + 40)];
}

uint64_t __40__KTVerifier_copyApplicationTranscript___block_invoke_2()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_7 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

- (BOOL)ignoreFailure:(id)a3 uuid:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__3;
  v25 = __Block_byref_object_dispose__3;
  v26 = 0;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __39__KTVerifier_ignoreFailure_uuid_error___block_invoke;
  v17[3] = &unk_1E8701E20;
  v10 = v8;
  v18 = v10;
  v11 = v9;
  v19 = v11;
  v20 = &v21;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __39__KTVerifier_ignoreFailure_uuid_error___block_invoke_2_111;
  v16[3] = &unk_1E8701788;
  v16[4] = &v21;
  [(KTVerifier *)self invokeXPCSynchronousCallWithBlock:v17 failureBlock:v16];
  v12 = v22;
  if (a5)
  {
    v13 = v22[5];
    if (v13)
    {
      *a5 = v13;
      v12 = v22;
    }
  }

  v14 = v12[5] == 0;

  _Block_object_dispose(&v21, 8);
  return v14;
}

void __39__KTVerifier_ignoreFailure_uuid_error___block_invoke(void *a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (TRANSPARENCY_DEFAULT_LOG_BLOCK_7 != -1)
  {
    __39__KTVerifier_ignoreFailure_uuid_error___block_invoke_cold_1();
  }

  v4 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_7;
  if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_7, OS_LOG_TYPE_INFO))
  {
    v5 = a1[4];
    v6 = a1[5];
    *buf = 138412546;
    v12 = v5;
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&dword_1E10DB000, v4, OS_LOG_TYPE_INFO, "Sending synchronous ignoreFailure for %@, request id %@", buf, 0x16u);
  }

  v7 = a1[4];
  v8 = a1[5];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __39__KTVerifier_ignoreFailure_uuid_error___block_invoke_110;
  v10[3] = &unk_1E8701788;
  v10[4] = a1[6];
  [v3 ignoreFailure:v7 uuid:v8 completionBlock:v10];

  v9 = *MEMORY[0x1E69E9840];
}

uint64_t __39__KTVerifier_ignoreFailure_uuid_error___block_invoke_2()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_7 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

void __39__KTVerifier_ignoreFailure_uuid_error___block_invoke_110(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v5 = v4;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    v4 = v5;
  }
}

void __39__KTVerifier_ignoreFailure_uuid_error___block_invoke_2_111(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v5 = v4;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    v4 = v5;
  }
}

- (void)batchQuery:(id)a3 userInitiated:(BOOL)a4 block:(id)a5
{
  v8 = a3;
  v9 = a5;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __45__KTVerifier_batchQuery_userInitiated_block___block_invoke;
  v14[3] = &unk_1E8701D58;
  v15 = v8;
  v16 = self;
  v18 = a4;
  v17 = v9;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __45__KTVerifier_batchQuery_userInitiated_block___block_invoke_2_116;
  v12[3] = &unk_1E87013C8;
  v13 = v17;
  v10 = v17;
  v11 = v8;
  [(KTVerifier *)self invokeXPCAsynchronousCallWithBlock:v14 failureBlock:v12];
}

void __45__KTVerifier_batchQuery_userInitiated_block___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (TRANSPARENCY_DEFAULT_LOG_BLOCK_7 != -1)
  {
    __45__KTVerifier_batchQuery_userInitiated_block___block_invoke_cold_1();
  }

  v4 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_7;
  if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_7, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1E10DB000, v4, OS_LOG_TYPE_INFO, "Sending batchQuery", buf, 2u);
  }

  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) applicationIdentifier];
  v7 = *(a1 + 56);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __45__KTVerifier_batchQuery_userInitiated_block___block_invoke_114;
  v8[3] = &unk_1E8701E48;
  v9 = *(a1 + 48);
  [v3 fetchBatchQuery:v5 application:v6 userInitiated:v7 completionHandler:v8];
}

uint64_t __45__KTVerifier_batchQuery_userInitiated_block___block_invoke_2()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_7 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

- (void)validatePeers:(id)a3 fetchNow:(BOOL)a4 completionBlock:(id)a5
{
  v8 = a3;
  v9 = a5;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __53__KTVerifier_validatePeers_fetchNow_completionBlock___block_invoke;
  v16[3] = &unk_1E8701D58;
  v17 = v8;
  v18 = self;
  v20 = a4;
  v19 = v9;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __53__KTVerifier_validatePeers_fetchNow_completionBlock___block_invoke_122;
  v12[3] = &unk_1E8701E70;
  v13 = v17;
  v14 = self;
  v15 = v19;
  v10 = v19;
  v11 = v17;
  [(KTVerifier *)self invokeXPCAsynchronousCallWithBlock:v16 failureBlock:v12];
}

void __53__KTVerifier_validatePeers_fetchNow_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (TRANSPARENCY_DEFAULT_LOG_BLOCK_7 != -1)
  {
    __53__KTVerifier_validatePeers_fetchNow_completionBlock___block_invoke_cold_1();
  }

  v4 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_7;
  if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_7, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v6 = v4;
    v7 = [v5 allKeys];
    v8 = [v7 componentsJoinedByString:{@", "}];
    v12 = 138412290;
    v13 = v8;
    _os_log_impl(&dword_1E10DB000, v6, OS_LOG_TYPE_INFO, "Sending validatePeers for uris: %@", &v12, 0xCu);
  }

  v9 = *(a1 + 32);
  v10 = [*(a1 + 40) applicationIdentifier];
  [v3 validatePeers:v9 application:v10 fetchNow:*(a1 + 56) completionBlock:*(a1 + 48)];

  v11 = *MEMORY[0x1E69E9840];
}

uint64_t __53__KTVerifier_validatePeers_fetchNow_completionBlock___block_invoke_2()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_7 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

void __53__KTVerifier_validatePeers_fetchNow_completionBlock___block_invoke_122(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = *(a1 + 32);
  v5 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      v8 = 0;
      do
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v15 + 1) + 8 * v8);
        v10 = [KTVerifierResult alloc];
        v11 = [*(a1 + 40) applicationIdentifier];
        v12 = [(KTVerifierResult *)v10 initWithUri:v9 application:v11 failure:v3];
        [v4 addObject:v12];

        ++v8;
      }

      while (v6 != v8);
      v6 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  (*(*(a1 + 48) + 16))();
  v13 = *MEMORY[0x1E69E9840];
}

- (void)validatePeers:(id)a3 completionBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __44__KTVerifier_validatePeers_completionBlock___block_invoke;
  v12[3] = &unk_1E8701DA8;
  v13 = v6;
  v14 = v7;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __44__KTVerifier_validatePeers_completionBlock___block_invoke_126;
  v10[3] = &unk_1E87013C8;
  v11 = v14;
  v8 = v14;
  v9 = v6;
  [(KTVerifier *)self invokeXPCAsynchronousCallWithBlock:v12 failureBlock:v10];
}

void __44__KTVerifier_validatePeers_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (TRANSPARENCY_DEFAULT_LOG_BLOCK_7 != -1)
  {
    __44__KTVerifier_validatePeers_completionBlock___block_invoke_cold_1();
  }

  v4 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_7;
  if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_7, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v6 = v4;
    v7 = [v5 uriToVerificationInfo];
    v8 = [v7 allKeys];
    v9 = [v8 componentsJoinedByString:{@", "}];
    v11 = 138412290;
    v12 = v9;
    _os_log_impl(&dword_1E10DB000, v6, OS_LOG_TYPE_INFO, "Sending validatePeers for uris: %@", &v11, 0xCu);
  }

  [v3 validatePeers:*(a1 + 32) completionBlock:*(a1 + 40)];

  v10 = *MEMORY[0x1E69E9840];
}

uint64_t __44__KTVerifier_validatePeers_completionBlock___block_invoke_2()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_7 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

- (void)getCachedValidatePeerResults:(id)a3 completionBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __59__KTVerifier_getCachedValidatePeerResults_completionBlock___block_invoke;
  v14[3] = &unk_1E8701D30;
  v15 = v6;
  v16 = self;
  v17 = v7;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __59__KTVerifier_getCachedValidatePeerResults_completionBlock___block_invoke_129;
  v10[3] = &unk_1E8701E70;
  v11 = v15;
  v12 = self;
  v13 = v17;
  v8 = v17;
  v9 = v15;
  [(KTVerifier *)self invokeXPCAsynchronousCallWithBlock:v14 failureBlock:v10];
}

void __59__KTVerifier_getCachedValidatePeerResults_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (TRANSPARENCY_DEFAULT_LOG_BLOCK_7 != -1)
  {
    __59__KTVerifier_getCachedValidatePeerResults_completionBlock___block_invoke_cold_1();
  }

  v4 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_7;
  if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_7, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v6 = v4;
    v7 = [v5 componentsJoinedByString:{@", "}];
    v11 = 138412290;
    v12 = v7;
    _os_log_impl(&dword_1E10DB000, v6, OS_LOG_TYPE_INFO, "Sending getCachedValidatePeerResults for uris: %@", &v11, 0xCu);
  }

  v8 = *(a1 + 32);
  v9 = [*(a1 + 40) applicationIdentifier];
  [v3 getCachedValidatePeerResults:v8 application:v9 completionBlock:*(a1 + 48)];

  v10 = *MEMORY[0x1E69E9840];
}

uint64_t __59__KTVerifier_getCachedValidatePeerResults_completionBlock___block_invoke_2()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_7 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

void __59__KTVerifier_getCachedValidatePeerResults_completionBlock___block_invoke_129(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = *(a1 + 32);
  v5 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      v8 = 0;
      do
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v15 + 1) + 8 * v8);
        v10 = [KTVerifierResult alloc];
        v11 = [*(a1 + 40) applicationIdentifier];
        v12 = [(KTVerifierResult *)v10 initWithUri:v9 application:v11 failure:v3];
        [v4 addObject:v12];

        ++v8;
      }

      while (v6 != v8);
      v6 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  (*(*(a1 + 48) + 16))();
  v13 = *MEMORY[0x1E69E9840];
}

- (void)initiateQueryForUris:(id)a3 completionBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __51__KTVerifier_initiateQueryForUris_completionBlock___block_invoke;
    v10[3] = &unk_1E8701D30;
    v11 = v6;
    v12 = self;
    v13 = v7;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __51__KTVerifier_initiateQueryForUris_completionBlock___block_invoke_2_136;
    v8[3] = &unk_1E87013C8;
    v9 = v13;
    [(KTVerifier *)self invokeXPCAsynchronousCallWithBlock:v10 failureBlock:v8];
  }

  else
  {
    (*(v7 + 2))(v7, 0);
  }
}

void __51__KTVerifier_initiateQueryForUris_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (TRANSPARENCY_DEFAULT_LOG_BLOCK_7 != -1)
  {
    __51__KTVerifier_initiateQueryForUris_completionBlock___block_invoke_cold_1();
  }

  v4 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_7;
  if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_7, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v6 = v4;
    v7 = [v5 componentsJoinedByString:{@", "}];
    *buf = 138412290;
    v14 = v7;
    _os_log_impl(&dword_1E10DB000, v6, OS_LOG_TYPE_INFO, "Sending initiateQueryForUris for %@", buf, 0xCu);
  }

  v8 = *(a1 + 32);
  v9 = [*(a1 + 40) applicationIdentifier];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __51__KTVerifier_initiateQueryForUris_completionBlock___block_invoke_135;
  v11[3] = &unk_1E87013C8;
  v12 = *(a1 + 48);
  [v3 initiateQueryForUris:v8 application:v9 completionBlock:v11];

  v10 = *MEMORY[0x1E69E9840];
}

uint64_t __51__KTVerifier_initiateQueryForUris_completionBlock___block_invoke_2()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_7 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

- (id)urisFromResults:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DF70] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v13 + 1) + 8 * i) uri];
        [v4 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x1E69E9840];

  return v4;
}

- (BOOL)markFailureSeenForResults:(id)a3 error:(id *)a4
{
  v6 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__3;
  v20 = __Block_byref_object_dispose__3;
  v21 = 0;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __46__KTVerifier_markFailureSeenForResults_error___block_invoke;
  v13[3] = &unk_1E8701E20;
  v13[4] = self;
  v7 = v6;
  v14 = v7;
  v15 = &v16;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __46__KTVerifier_markFailureSeenForResults_error___block_invoke_2_140;
  v12[3] = &unk_1E8701788;
  v12[4] = &v16;
  [(KTVerifier *)self invokeXPCSynchronousCallWithBlock:v13 failureBlock:v12];
  v8 = v17;
  if (a4)
  {
    v9 = v17[5];
    if (v9)
    {
      *a4 = v9;
      v8 = v17;
    }
  }

  v10 = v8[5] == 0;

  _Block_object_dispose(&v16, 8);
  return v10;
}

void __46__KTVerifier_markFailureSeenForResults_error___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (TRANSPARENCY_DEFAULT_LOG_BLOCK_7 != -1)
  {
    __46__KTVerifier_markFailureSeenForResults_error___block_invoke_cold_1();
  }

  v4 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_7;
  if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_7, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = v4;
    v8 = [v5 urisFromResults:v6];
    v9 = [v8 componentsJoinedByString:{@", "}];
    *buf = 138412290;
    v15 = v9;
    _os_log_impl(&dword_1E10DB000, v7, OS_LOG_TYPE_INFO, "Sending synchronous markFailureSeenForUris for %@", buf, 0xCu);
  }

  v10 = *(a1 + 40);
  v11 = [*(a1 + 32) applicationIdentifier];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __46__KTVerifier_markFailureSeenForResults_error___block_invoke_139;
  v13[3] = &unk_1E8701788;
  v13[4] = *(a1 + 48);
  [v3 markFailureSeenForResults:v10 application:v11 completionBlock:v13];

  v12 = *MEMORY[0x1E69E9840];
}

uint64_t __46__KTVerifier_markFailureSeenForResults_error___block_invoke_2()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_7 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

void __46__KTVerifier_markFailureSeenForResults_error___block_invoke_139(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v5 = v4;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    v4 = v5;
  }
}

void __46__KTVerifier_markFailureSeenForResults_error___block_invoke_2_140(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v5 = v4;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    v4 = v5;
  }
}

- (BOOL)ignoreFailureForResults:(id)a3 error:(id *)a4
{
  v6 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__3;
  v20 = __Block_byref_object_dispose__3;
  v21 = 0;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __44__KTVerifier_ignoreFailureForResults_error___block_invoke;
  v13[3] = &unk_1E8701E20;
  v13[4] = self;
  v7 = v6;
  v14 = v7;
  v15 = &v16;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __44__KTVerifier_ignoreFailureForResults_error___block_invoke_2_144;
  v12[3] = &unk_1E8701788;
  v12[4] = &v16;
  [(KTVerifier *)self invokeXPCSynchronousCallWithBlock:v13 failureBlock:v12];
  v8 = v17;
  if (a4)
  {
    v9 = v17[5];
    if (v9)
    {
      *a4 = v9;
      v8 = v17;
    }
  }

  v10 = v8[5] == 0;

  _Block_object_dispose(&v16, 8);
  return v10;
}

void __44__KTVerifier_ignoreFailureForResults_error___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (TRANSPARENCY_DEFAULT_LOG_BLOCK_7 != -1)
  {
    __44__KTVerifier_ignoreFailureForResults_error___block_invoke_cold_1();
  }

  v4 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_7;
  if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_7, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = v4;
    v8 = [v5 urisFromResults:v6];
    v9 = [v8 componentsJoinedByString:{@", "}];
    *buf = 138412290;
    v15 = v9;
    _os_log_impl(&dword_1E10DB000, v7, OS_LOG_TYPE_INFO, "Sending synchronous ignoreFailureForResults for %@", buf, 0xCu);
  }

  v10 = *(a1 + 40);
  v11 = [*(a1 + 32) applicationIdentifier];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __44__KTVerifier_ignoreFailureForResults_error___block_invoke_143;
  v13[3] = &unk_1E8701788;
  v13[4] = *(a1 + 48);
  [v3 ignoreFailureForResults:v10 application:v11 completionBlock:v13];

  v12 = *MEMORY[0x1E69E9840];
}

uint64_t __44__KTVerifier_ignoreFailureForResults_error___block_invoke_2()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_7 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

void __44__KTVerifier_ignoreFailureForResults_error___block_invoke_143(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v5 = v4;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    v4 = v5;
  }
}

void __44__KTVerifier_ignoreFailureForResults_error___block_invoke_2_144(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v5 = v4;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    v4 = v5;
  }
}

+ (id)getUIStatusPriority:(unint64_t)a3
{
  if (a3 > 0x11)
  {
    return &unk_1F5C03D28;
  }

  else
  {
    return qword_1E8701EB0[a3];
  }
}

- (unint64_t)getDisplayStatusForResults:(id)a3 isSelfOptedIn:(BOOL)a4
{
  v4 = a4;
  v30 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if (v4)
  {
    if ([v5 count])
    {
      v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v6, "count")}];
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v8 = v6;
      v9 = [v8 countByEnumeratingWithState:&v24 objects:v29 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v25;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v25 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(*(*(&v24 + 1) + 8 * i), "uiStatus", v24)}];
            [v7 addObject:v13];
          }

          v10 = [v8 countByEnumeratingWithState:&v24 objects:v29 count:16];
        }

        while (v10);
      }

      v14 = [v7 sortedArrayUsingComparator:&__block_literal_global_186];
      if ([v14 count] >= 2)
      {
        v15 = [v14 objectAtIndexedSubscript:0];
        if ([v15 unsignedIntValue] == 14)
        {

LABEL_20:
          if (TRANSPARENCY_DEFAULT_LOG_BLOCK_7 != -1)
          {
            [KTVerifier getDisplayStatusForResults:isSelfOptedIn:];
          }

          v20 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_7;
          if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_7, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_1E10DB000, v20, OS_LOG_TYPE_INFO, "getDisplayStatusForResults, at least one user in a group message has all devices failing, return unavailable ignored", buf, 2u);
          }

          v16 = 12;
          goto LABEL_26;
        }

        v18 = [v14 objectAtIndexedSubscript:0];
        v19 = [v18 unsignedIntValue];

        if (v19 == 15)
        {
          goto LABEL_20;
        }
      }

      v21 = [v14 objectAtIndexedSubscript:{0, v24}];
      v16 = [v21 unsignedIntValue];

LABEL_26:
      goto LABEL_27;
    }

    if (TRANSPARENCY_DEFAULT_LOG_BLOCK_7 != -1)
    {
      [KTVerifier getDisplayStatusForResults:isSelfOptedIn:];
    }

    v17 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_7;
    if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1E10DB000, v17, OS_LOG_TYPE_ERROR, "Attempting to get display status for results, but no results were provided. Service is therefore unavailable.", buf, 2u);
    }

    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

LABEL_27:

  v22 = *MEMORY[0x1E69E9840];
  return v16;
}

uint64_t __55__KTVerifier_getDisplayStatusForResults_isSelfOptedIn___block_invoke()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_7 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __55__KTVerifier_getDisplayStatusForResults_isSelfOptedIn___block_invoke_183(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = +[KTVerifier getUIStatusPriority:](KTVerifier, "getUIStatusPriority:", [a2 unsignedIntValue]);
  v6 = [v4 unsignedIntValue];

  v7 = [KTVerifier getUIStatusPriority:v6];
  v8 = [v5 compare:v7];

  return v8;
}

uint64_t __55__KTVerifier_getDisplayStatusForResults_isSelfOptedIn___block_invoke_2()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_7 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

- (BOOL)clearPeerCache:(id)a3 error:(id *)a4
{
  v6 = a3;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__3;
  v21 = __Block_byref_object_dispose__3;
  v22 = 0;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __35__KTVerifier_clearPeerCache_error___block_invoke;
  v13[3] = &unk_1E8701E20;
  v7 = v6;
  v14 = v7;
  v15 = self;
  v16 = &v17;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __35__KTVerifier_clearPeerCache_error___block_invoke_2_193;
  v12[3] = &unk_1E8701788;
  v12[4] = &v17;
  [(KTVerifier *)self invokeXPCSynchronousCallWithBlock:v13 failureBlock:v12];
  v8 = v18;
  if (a4)
  {
    v9 = v18[5];
    if (v9)
    {
      *a4 = v9;
      v8 = v18;
    }
  }

  v10 = v8[5] == 0;

  _Block_object_dispose(&v17, 8);
  return v10;
}

void __35__KTVerifier_clearPeerCache_error___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (TRANSPARENCY_DEFAULT_LOG_BLOCK_7 != -1)
  {
    __35__KTVerifier_clearPeerCache_error___block_invoke_cold_1();
  }

  v4 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_7;
  if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_7, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v6 = v4;
    v7 = [v5 componentsJoinedByString:{@", "}];
    *buf = 138412290;
    v13 = v7;
    _os_log_impl(&dword_1E10DB000, v6, OS_LOG_TYPE_INFO, "Sending synchronous clearPeerCache for %@", buf, 0xCu);
  }

  v8 = *(a1 + 32);
  v9 = [*(a1 + 40) applicationIdentifier];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __35__KTVerifier_clearPeerCache_error___block_invoke_192;
  v11[3] = &unk_1E8701788;
  v11[4] = *(a1 + 48);
  [v3 clearPeerCache:v8 application:v9 completionBlock:v11];

  v10 = *MEMORY[0x1E69E9840];
}

uint64_t __35__KTVerifier_clearPeerCache_error___block_invoke_2()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_7 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

void __35__KTVerifier_clearPeerCache_error___block_invoke_192(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v5 = v4;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    v4 = v5;
  }
}

void __35__KTVerifier_clearPeerCache_error___block_invoke_2_193(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v5 = v4;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    v4 = v5;
  }
}

@end