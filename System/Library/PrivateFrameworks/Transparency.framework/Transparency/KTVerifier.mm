@interface KTVerifier
+ (id)getUIStatusPriority:(unint64_t)priority;
- (BOOL)clearPeerCache:(id)cache error:(id *)error;
- (BOOL)ignoreFailure:(id)failure uuid:(id)uuid error:(id *)error;
- (BOOL)ignoreFailureForResults:(id)results error:(id *)error;
- (BOOL)markFailureSeenForResults:(id)results error:(id *)error;
- (KTVerifier)initWithApplication:(id)application;
- (id)urisFromResults:(id)results;
- (id)validateEnrollmentUri:(id)uri accountKey:(id)key loggableData:(id)data queryRequest:(id)request insertResponse:(id)response error:(id *)error;
- (id)validatePeerUri:(id)uri accountKey:(id)key loggableDatas:(id)datas queryRequest:(id)request queryResponse:(id)response error:(id *)error;
- (unint64_t)getDisplayStatusForResults:(id)results isSelfOptedIn:(BOOL)in;
- (void)batchQuery:(id)query userInitiated:(BOOL)initiated block:(id)block;
- (void)clearLogClientConfiguration:(id)configuration;
- (void)clearPublicKeyStoreState:(id)state;
- (void)clearState:(id)state;
- (void)configurationBagFetch:(id)fetch;
- (void)convertToSelfRequest:(id)request serverDatas:(id)datas syncedDatas:(id)syncedDatas accountKey:(id)key queryRequest:(id)queryRequest queryResponse:(id)response updateCompletionBlock:(id)block;
- (void)copyApplicationState:(id)state;
- (void)copyApplicationTranscript:(id)transcript;
- (void)copyDaemonState:(id)state;
- (void)copyDataStoreStatistics:(id)statistics;
- (void)copyDeviceStatus:(id)status complete:(id)complete;
- (void)copyKeyStoreState:(id)state;
- (void)copyKeyStoreStateFromDisk:(id)disk;
- (void)copyLogClientConfiguration:(id)configuration;
- (void)forceApplicationConfig:(id)config;
- (void)forceApplicationKeysFetch:(id)fetch;
- (void)forceCloudConfigUpdate:(id)update;
- (void)forceConfigUpdate:(id)update;
- (void)forceDutyCycle:(id)cycle;
- (void)forceValidateUUID:(id)d uri:(id)uri block:(id)block;
- (void)forceValidateUUID:(id)d uri:(id)uri completionBlock:(id)block;
- (void)getCachedValidatePeerResults:(id)results completionBlock:(id)block;
- (void)getValidatePeerResult:(id)result uuid:(id)uuid fetchNow:(BOOL)now completionBlock:(id)block;
- (void)initiateQueryForUris:(id)uris completionBlock:(id)block;
- (void)invokeXPCAsynchronousCallWithBlock:(id)block failureBlock:(id)failureBlock;
- (void)invokeXPCSynchronousCallWithBlock:(id)block failureBlock:(id)failureBlock;
- (void)resetRequestToPending:(id)pending block:(id)block;
- (void)validateEnrollmentResult:(id)result uuid:(id)uuid completionBlock:(id)block;
- (void)validateEnrollmentUri:(id)uri accountKey:(id)key loggableData:(id)data insertResponse:(id)response promiseCompletionBlock:(id)block;
- (void)validatePeerResult:(id)result uuid:(id)uuid completionBlock:(id)block;
- (void)validatePeerUri:(id)uri accountKey:(id)key loggableDatas:(id)datas queryResponse:(id)response promiseCompletionBlock:(id)block;
- (void)validatePeers:(id)peers completionBlock:(id)block;
- (void)validatePeers:(id)peers fetchNow:(BOOL)now completionBlock:(id)block;
- (void)validateSelfResult:(id)result uuid:(id)uuid syncedDatas:(id)datas completionBlock:(id)block;
@end

@implementation KTVerifier

- (KTVerifier)initWithApplication:(id)application
{
  v18 = *MEMORY[0x1E69E9840];
  applicationCopy = application;
  v6 = [TransparencyApplication applicationValueForIdentifier:applicationCopy];

  if (v6)
  {
    v15.receiver = self;
    v15.super_class = KTVerifier;
    v7 = [(KTVerifier *)&v15 init];
    v8 = v7;
    if (v7)
    {
      objc_storeStrong(&v7->_applicationIdentifier, application);
      v9 = [[TransparencyApplication alloc] initWithIdentifier:v8->_applicationIdentifier];
      application = v8->_application;
      v8->_application = v9;
    }

    self = v8;
    selfCopy = self;
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
      v17 = applicationCopy;
      _os_log_impl(&dword_1E10DB000, v12, OS_LOG_TYPE_ERROR, "Unknown application identifier: %@", buf, 0xCu);
    }

    selfCopy = 0;
  }

  v13 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

uint64_t __34__KTVerifier_initWithApplication___block_invoke()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_7 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

- (void)invokeXPCAsynchronousCallWithBlock:(id)block failureBlock:(id)failureBlock
{
  blockCopy = block;
  failureBlockCopy = failureBlock;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __62__KTVerifier_invokeXPCAsynchronousCallWithBlock_failureBlock___block_invoke;
  v11[3] = &unk_1E8701C68;
  v12 = failureBlockCopy;
  v13 = blockCopy;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __62__KTVerifier_invokeXPCAsynchronousCallWithBlock_failureBlock___block_invoke_12;
  v9[3] = &unk_1E87013C8;
  v10 = v12;
  v7 = v12;
  v8 = blockCopy;
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

- (void)invokeXPCSynchronousCallWithBlock:(id)block failureBlock:(id)failureBlock
{
  blockCopy = block;
  failureBlockCopy = failureBlock;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __61__KTVerifier_invokeXPCSynchronousCallWithBlock_failureBlock___block_invoke;
  v11[3] = &unk_1E8701C68;
  v12 = failureBlockCopy;
  v13 = blockCopy;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __61__KTVerifier_invokeXPCSynchronousCallWithBlock_failureBlock___block_invoke_16;
  v9[3] = &unk_1E87013C8;
  v10 = v12;
  v7 = v12;
  v8 = blockCopy;
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

- (id)validatePeerUri:(id)uri accountKey:(id)key loggableDatas:(id)datas queryRequest:(id)request queryResponse:(id)response error:(id *)error
{
  uriCopy = uri;
  keyCopy = key;
  datasCopy = datas;
  requestCopy = request;
  responseCopy = response;
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
  v19 = uriCopy;
  v29 = v19;
  v34 = v49;
  v20 = keyCopy;
  v30 = v20;
  v21 = datasCopy;
  v31 = v21;
  v22 = requestCopy;
  v32 = v22;
  v23 = responseCopy;
  v33 = v23;
  v35 = &v37;
  v36 = &v43;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __88__KTVerifier_validatePeerUri_accountKey_loggableDatas_queryRequest_queryResponse_error___block_invoke_2_22;
  v27[3] = &unk_1E8701788;
  v27[4] = &v37;
  [(KTVerifier *)self invokeXPCSynchronousCallWithBlock:v28 failureBlock:v27];
  if (error)
  {
    v24 = v38[5];
    if (v24)
    {
      *error = v24;
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

- (id)validateEnrollmentUri:(id)uri accountKey:(id)key loggableData:(id)data queryRequest:(id)request insertResponse:(id)response error:(id *)error
{
  uriCopy = uri;
  keyCopy = key;
  dataCopy = data;
  requestCopy = request;
  responseCopy = response;
  v48[0] = 0;
  v48[1] = v48;
  v48[2] = 0x3032000000;
  v48[3] = __Block_byref_object_copy__3;
  v48[4] = __Block_byref_object_dispose__3;
  applicationIdentifier = [(KTVerifier *)self applicationIdentifier];
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
  v19 = uriCopy;
  v28 = v19;
  v33 = v48;
  v20 = keyCopy;
  v29 = v20;
  v21 = dataCopy;
  v30 = v21;
  v22 = requestCopy;
  v31 = v22;
  v23 = responseCopy;
  v32 = v23;
  v34 = &v36;
  v35 = &v42;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __94__KTVerifier_validateEnrollmentUri_accountKey_loggableData_queryRequest_insertResponse_error___block_invoke_2_26;
  v26[3] = &unk_1E8701788;
  v26[4] = &v36;
  [(KTVerifier *)self invokeXPCSynchronousCallWithBlock:v27 failureBlock:v26];
  if (error)
  {
    *error = v37[5];
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

- (void)validatePeerUri:(id)uri accountKey:(id)key loggableDatas:(id)datas queryResponse:(id)response promiseCompletionBlock:(id)block
{
  uriCopy = uri;
  keyCopy = key;
  datasCopy = datas;
  responseCopy = response;
  blockCopy = block;
  applicationIdentifier = [(KTVerifier *)self applicationIdentifier];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __92__KTVerifier_validatePeerUri_accountKey_loggableDatas_queryResponse_promiseCompletionBlock___block_invoke;
  v27[3] = &unk_1E8701CE0;
  v28 = uriCopy;
  v29 = applicationIdentifier;
  v30 = keyCopy;
  v31 = datasCopy;
  v32 = responseCopy;
  v33 = blockCopy;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __92__KTVerifier_validatePeerUri_accountKey_loggableDatas_queryResponse_promiseCompletionBlock___block_invoke_29;
  v24[3] = &unk_1E8701378;
  v25 = v28;
  v26 = v33;
  v18 = v28;
  v19 = v33;
  v20 = responseCopy;
  v21 = datasCopy;
  v22 = keyCopy;
  v23 = applicationIdentifier;
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

- (void)validatePeerResult:(id)result uuid:(id)uuid completionBlock:(id)block
{
  resultCopy = result;
  uuidCopy = uuid;
  blockCopy = block;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __54__KTVerifier_validatePeerResult_uuid_completionBlock___block_invoke;
  v17[3] = &unk_1E8701D30;
  v18 = resultCopy;
  v19 = uuidCopy;
  v20 = blockCopy;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __54__KTVerifier_validatePeerResult_uuid_completionBlock___block_invoke_2_34;
  v14[3] = &unk_1E8701378;
  v15 = v18;
  v16 = v20;
  v11 = v18;
  v12 = v20;
  v13 = uuidCopy;
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

- (void)getValidatePeerResult:(id)result uuid:(id)uuid fetchNow:(BOOL)now completionBlock:(id)block
{
  resultCopy = result;
  uuidCopy = uuid;
  blockCopy = block;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __66__KTVerifier_getValidatePeerResult_uuid_fetchNow_completionBlock___block_invoke;
  v20[3] = &unk_1E8701D58;
  v21 = resultCopy;
  v22 = uuidCopy;
  nowCopy = now;
  v23 = blockCopy;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __66__KTVerifier_getValidatePeerResult_uuid_fetchNow_completionBlock___block_invoke_37;
  v16[3] = &unk_1E8701D80;
  selfCopy = self;
  v19 = v23;
  v17 = v21;
  v13 = v21;
  v14 = v23;
  v15 = uuidCopy;
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

- (void)validateSelfResult:(id)result uuid:(id)uuid syncedDatas:(id)datas completionBlock:(id)block
{
  blockCopy = block;
  resultCopy = result;
  v13 = NSStringFromSelector(a2);
  v12 = [(KTVerifier *)self unimplementedError:v13];
  (*(block + 2))(blockCopy, resultCopy, 0, 0, 0, v12);
}

- (void)validateEnrollmentUri:(id)uri accountKey:(id)key loggableData:(id)data insertResponse:(id)response promiseCompletionBlock:(id)block
{
  uriCopy = uri;
  keyCopy = key;
  dataCopy = data;
  responseCopy = response;
  blockCopy = block;
  applicationIdentifier = [(KTVerifier *)self applicationIdentifier];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __98__KTVerifier_validateEnrollmentUri_accountKey_loggableData_insertResponse_promiseCompletionBlock___block_invoke;
  v27[3] = &unk_1E8701CE0;
  v28 = uriCopy;
  v29 = applicationIdentifier;
  v30 = keyCopy;
  v31 = dataCopy;
  v32 = responseCopy;
  v33 = blockCopy;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __98__KTVerifier_validateEnrollmentUri_accountKey_loggableData_insertResponse_promiseCompletionBlock___block_invoke_41;
  v24[3] = &unk_1E8701378;
  v25 = v28;
  v26 = v33;
  v18 = v28;
  v19 = v33;
  v20 = responseCopy;
  v21 = dataCopy;
  v22 = keyCopy;
  v23 = applicationIdentifier;
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

- (void)validateEnrollmentResult:(id)result uuid:(id)uuid completionBlock:(id)block
{
  resultCopy = result;
  uuidCopy = uuid;
  blockCopy = block;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __60__KTVerifier_validateEnrollmentResult_uuid_completionBlock___block_invoke;
  v17[3] = &unk_1E8701D30;
  v18 = resultCopy;
  v19 = uuidCopy;
  v20 = blockCopy;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __60__KTVerifier_validateEnrollmentResult_uuid_completionBlock___block_invoke_44;
  v14[3] = &unk_1E8701378;
  v15 = v18;
  v16 = v20;
  v11 = v18;
  v12 = v20;
  v13 = uuidCopy;
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

- (void)convertToSelfRequest:(id)request serverDatas:(id)datas syncedDatas:(id)syncedDatas accountKey:(id)key queryRequest:(id)queryRequest queryResponse:(id)response updateCompletionBlock:(id)block
{
  blockCopy = block;
  requestCopy = request;
  v15 = NSStringFromSelector(a2);
  v14 = [(KTVerifier *)self unimplementedError:v15];
  (*(block + 2))(blockCopy, requestCopy, v14);
}

- (void)forceValidateUUID:(id)d uri:(id)uri block:(id)block
{
  dCopy = d;
  uriCopy = uri;
  blockCopy = block;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __42__KTVerifier_forceValidateUUID_uri_block___block_invoke;
  v16[3] = &unk_1E8701D30;
  v17 = dCopy;
  v18 = uriCopy;
  v19 = blockCopy;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __42__KTVerifier_forceValidateUUID_uri_block___block_invoke_47;
  v14[3] = &unk_1E87013C8;
  v15 = v19;
  v11 = v19;
  v12 = uriCopy;
  v13 = dCopy;
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

- (void)forceValidateUUID:(id)d uri:(id)uri completionBlock:(id)block
{
  dCopy = d;
  uriCopy = uri;
  blockCopy = block;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __52__KTVerifier_forceValidateUUID_uri_completionBlock___block_invoke;
  v17[3] = &unk_1E8701D30;
  v18 = dCopy;
  v19 = uriCopy;
  v20 = blockCopy;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __52__KTVerifier_forceValidateUUID_uri_completionBlock___block_invoke_50;
  v14[3] = &unk_1E8701378;
  v15 = v19;
  v16 = v20;
  v11 = v19;
  v12 = v20;
  v13 = dCopy;
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

- (void)resetRequestToPending:(id)pending block:(id)block
{
  pendingCopy = pending;
  blockCopy = block;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __42__KTVerifier_resetRequestToPending_block___block_invoke;
  v12[3] = &unk_1E8701DA8;
  v13 = pendingCopy;
  v14 = blockCopy;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __42__KTVerifier_resetRequestToPending_block___block_invoke_53;
  v10[3] = &unk_1E87013C8;
  v11 = v14;
  v8 = v14;
  v9 = pendingCopy;
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

- (void)clearState:(id)state
{
  stateCopy = state;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __25__KTVerifier_clearState___block_invoke;
  v8[3] = &unk_1E8701DA8;
  v8[4] = self;
  v9 = stateCopy;
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

- (void)forceConfigUpdate:(id)update
{
  updateCopy = update;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __32__KTVerifier_forceConfigUpdate___block_invoke;
  v8[3] = &unk_1E8701DD0;
  v9 = updateCopy;
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

- (void)configurationBagFetch:(id)fetch
{
  fetchCopy = fetch;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __36__KTVerifier_configurationBagFetch___block_invoke;
  v8[3] = &unk_1E8701DD0;
  v9 = fetchCopy;
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

- (void)forceApplicationKeysFetch:(id)fetch
{
  fetchCopy = fetch;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __40__KTVerifier_forceApplicationKeysFetch___block_invoke;
  v8[3] = &unk_1E8701DA8;
  v8[4] = self;
  v9 = fetchCopy;
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

- (void)forceApplicationConfig:(id)config
{
  configCopy = config;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __37__KTVerifier_forceApplicationConfig___block_invoke;
  v8[3] = &unk_1E8701DA8;
  v8[4] = self;
  v9 = configCopy;
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

- (void)copyApplicationState:(id)state
{
  stateCopy = state;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __35__KTVerifier_copyApplicationState___block_invoke;
  v8[3] = &unk_1E8701DA8;
  v8[4] = self;
  v9 = stateCopy;
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

- (void)copyDataStoreStatistics:(id)statistics
{
  statisticsCopy = statistics;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __38__KTVerifier_copyDataStoreStatistics___block_invoke;
  v8[3] = &unk_1E8701DD0;
  v9 = statisticsCopy;
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

- (void)copyKeyStoreState:(id)state
{
  stateCopy = state;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __32__KTVerifier_copyKeyStoreState___block_invoke;
  v8[3] = &unk_1E8701DD0;
  v9 = stateCopy;
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

- (void)copyKeyStoreStateFromDisk:(id)disk
{
  diskCopy = disk;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __40__KTVerifier_copyKeyStoreStateFromDisk___block_invoke;
  v8[3] = &unk_1E8701DD0;
  v9 = diskCopy;
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

- (void)forceDutyCycle:(id)cycle
{
  cycleCopy = cycle;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __29__KTVerifier_forceDutyCycle___block_invoke;
  v8[3] = &unk_1E8701DD0;
  v9 = cycleCopy;
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

- (void)forceCloudConfigUpdate:(id)update
{
  updateCopy = update;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __37__KTVerifier_forceCloudConfigUpdate___block_invoke;
  v8[3] = &unk_1E8701DD0;
  v9 = updateCopy;
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

- (void)copyDeviceStatus:(id)status complete:(id)complete
{
  statusCopy = status;
  completeCopy = complete;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __40__KTVerifier_copyDeviceStatus_complete___block_invoke;
  v12[3] = &unk_1E8701DA8;
  v13 = statusCopy;
  v14 = completeCopy;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __40__KTVerifier_copyDeviceStatus_complete___block_invoke_2_92;
  v10[3] = &unk_1E87013C8;
  v11 = v14;
  v8 = v14;
  v9 = statusCopy;
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

- (void)copyLogClientConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __41__KTVerifier_copyLogClientConfiguration___block_invoke;
  v8[3] = &unk_1E8701DD0;
  v9 = configurationCopy;
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

- (void)clearLogClientConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __42__KTVerifier_clearLogClientConfiguration___block_invoke;
  v8[3] = &unk_1E8701DD0;
  v9 = configurationCopy;
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

- (void)clearPublicKeyStoreState:(id)state
{
  stateCopy = state;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __39__KTVerifier_clearPublicKeyStoreState___block_invoke;
  v8[3] = &unk_1E8701DA8;
  v8[4] = self;
  v9 = stateCopy;
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

- (void)copyDaemonState:(id)state
{
  stateCopy = state;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __30__KTVerifier_copyDaemonState___block_invoke;
  v8[3] = &unk_1E8701DD0;
  v9 = stateCopy;
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

- (void)copyApplicationTranscript:(id)transcript
{
  transcriptCopy = transcript;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __40__KTVerifier_copyApplicationTranscript___block_invoke;
  v8[3] = &unk_1E8701DA8;
  v8[4] = self;
  v9 = transcriptCopy;
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

- (BOOL)ignoreFailure:(id)failure uuid:(id)uuid error:(id *)error
{
  failureCopy = failure;
  uuidCopy = uuid;
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
  v10 = failureCopy;
  v18 = v10;
  v11 = uuidCopy;
  v19 = v11;
  v20 = &v21;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __39__KTVerifier_ignoreFailure_uuid_error___block_invoke_2_111;
  v16[3] = &unk_1E8701788;
  v16[4] = &v21;
  [(KTVerifier *)self invokeXPCSynchronousCallWithBlock:v17 failureBlock:v16];
  v12 = v22;
  if (error)
  {
    v13 = v22[5];
    if (v13)
    {
      *error = v13;
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

- (void)batchQuery:(id)query userInitiated:(BOOL)initiated block:(id)block
{
  queryCopy = query;
  blockCopy = block;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __45__KTVerifier_batchQuery_userInitiated_block___block_invoke;
  v14[3] = &unk_1E8701D58;
  v15 = queryCopy;
  selfCopy = self;
  initiatedCopy = initiated;
  v17 = blockCopy;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __45__KTVerifier_batchQuery_userInitiated_block___block_invoke_2_116;
  v12[3] = &unk_1E87013C8;
  v13 = v17;
  v10 = v17;
  v11 = queryCopy;
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

- (void)validatePeers:(id)peers fetchNow:(BOOL)now completionBlock:(id)block
{
  peersCopy = peers;
  blockCopy = block;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __53__KTVerifier_validatePeers_fetchNow_completionBlock___block_invoke;
  v16[3] = &unk_1E8701D58;
  v17 = peersCopy;
  selfCopy = self;
  nowCopy = now;
  v19 = blockCopy;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __53__KTVerifier_validatePeers_fetchNow_completionBlock___block_invoke_122;
  v12[3] = &unk_1E8701E70;
  v13 = v17;
  selfCopy2 = self;
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

- (void)validatePeers:(id)peers completionBlock:(id)block
{
  peersCopy = peers;
  blockCopy = block;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __44__KTVerifier_validatePeers_completionBlock___block_invoke;
  v12[3] = &unk_1E8701DA8;
  v13 = peersCopy;
  v14 = blockCopy;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __44__KTVerifier_validatePeers_completionBlock___block_invoke_126;
  v10[3] = &unk_1E87013C8;
  v11 = v14;
  v8 = v14;
  v9 = peersCopy;
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

- (void)getCachedValidatePeerResults:(id)results completionBlock:(id)block
{
  resultsCopy = results;
  blockCopy = block;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __59__KTVerifier_getCachedValidatePeerResults_completionBlock___block_invoke;
  v14[3] = &unk_1E8701D30;
  v15 = resultsCopy;
  selfCopy = self;
  v17 = blockCopy;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __59__KTVerifier_getCachedValidatePeerResults_completionBlock___block_invoke_129;
  v10[3] = &unk_1E8701E70;
  v11 = v15;
  selfCopy2 = self;
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

- (void)initiateQueryForUris:(id)uris completionBlock:(id)block
{
  urisCopy = uris;
  blockCopy = block;
  if ([urisCopy count])
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __51__KTVerifier_initiateQueryForUris_completionBlock___block_invoke;
    v10[3] = &unk_1E8701D30;
    v11 = urisCopy;
    selfCopy = self;
    v13 = blockCopy;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __51__KTVerifier_initiateQueryForUris_completionBlock___block_invoke_2_136;
    v8[3] = &unk_1E87013C8;
    v9 = v13;
    [(KTVerifier *)self invokeXPCAsynchronousCallWithBlock:v10 failureBlock:v8];
  }

  else
  {
    (*(blockCopy + 2))(blockCopy, 0);
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

- (id)urisFromResults:(id)results
{
  v18 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  array = [MEMORY[0x1E695DF70] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = resultsCopy;
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
        [array addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x1E69E9840];

  return array;
}

- (BOOL)markFailureSeenForResults:(id)results error:(id *)error
{
  resultsCopy = results;
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
  v7 = resultsCopy;
  v14 = v7;
  v15 = &v16;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __46__KTVerifier_markFailureSeenForResults_error___block_invoke_2_140;
  v12[3] = &unk_1E8701788;
  v12[4] = &v16;
  [(KTVerifier *)self invokeXPCSynchronousCallWithBlock:v13 failureBlock:v12];
  v8 = v17;
  if (error)
  {
    v9 = v17[5];
    if (v9)
    {
      *error = v9;
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

- (BOOL)ignoreFailureForResults:(id)results error:(id *)error
{
  resultsCopy = results;
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
  v7 = resultsCopy;
  v14 = v7;
  v15 = &v16;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __44__KTVerifier_ignoreFailureForResults_error___block_invoke_2_144;
  v12[3] = &unk_1E8701788;
  v12[4] = &v16;
  [(KTVerifier *)self invokeXPCSynchronousCallWithBlock:v13 failureBlock:v12];
  v8 = v17;
  if (error)
  {
    v9 = v17[5];
    if (v9)
    {
      *error = v9;
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

+ (id)getUIStatusPriority:(unint64_t)priority
{
  if (priority > 0x11)
  {
    return &unk_1F5C03D28;
  }

  else
  {
    return qword_1E8701EB0[priority];
  }
}

- (unint64_t)getDisplayStatusForResults:(id)results isSelfOptedIn:(BOOL)in
{
  inCopy = in;
  v30 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  v6 = resultsCopy;
  if (inCopy)
  {
    if ([resultsCopy count])
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

          unsignedIntValue2 = 12;
          goto LABEL_26;
        }

        v18 = [v14 objectAtIndexedSubscript:0];
        unsignedIntValue = [v18 unsignedIntValue];

        if (unsignedIntValue == 15)
        {
          goto LABEL_20;
        }
      }

      v21 = [v14 objectAtIndexedSubscript:{0, v24}];
      unsignedIntValue2 = [v21 unsignedIntValue];

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

    unsignedIntValue2 = 0;
  }

  else
  {
    unsignedIntValue2 = 1;
  }

LABEL_27:

  v22 = *MEMORY[0x1E69E9840];
  return unsignedIntValue2;
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

- (BOOL)clearPeerCache:(id)cache error:(id *)error
{
  cacheCopy = cache;
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
  v7 = cacheCopy;
  v14 = v7;
  selfCopy = self;
  v16 = &v17;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __35__KTVerifier_clearPeerCache_error___block_invoke_2_193;
  v12[3] = &unk_1E8701788;
  v12[4] = &v17;
  [(KTVerifier *)self invokeXPCSynchronousCallWithBlock:v13 failureBlock:v12];
  v8 = v18;
  if (error)
  {
    v9 = v18[5];
    if (v9)
    {
      *error = v9;
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