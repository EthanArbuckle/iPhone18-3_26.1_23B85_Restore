@interface SSRRPISamplingXPCService
+ (id)_createConnection;
+ (id)getActiveRequestIdsForLocale:(id)locale date:(id)date error:(id *)error;
+ (id)getAudioIdWithRequestId:(id)id languageCode:(id)code date:(id)date error:(id *)error;
+ (id)getRemoteObjectProxyWithConnection:(id)connection errorHandler:(id)handler;
+ (unint64_t)getEnrollmentSelectionStatusWithLocale:(id)locale error:(id *)error;
+ (void)_invalidateConnection:(id)connection;
+ (void)removeAllSamplingMetaDataWithCompletion:(id)completion;
+ (void)removeMappingOnAndBefore:(id)before completion:(id)completion;
+ (void)removeMappingWithLocale:(id)locale date:(id)date completion:(id)completion;
+ (void)removeRequestIdToAudioIdMappingWithCompletion:(id)completion;
+ (void)updateStatus:(id)status languageCode:(id)code completion:(id)completion;
+ (void)writeIntoMappingWithRequestId:(id)id audioId:(id)audioId date:(id)date locale:(id)locale completion:(id)completion;
@end

@implementation SSRRPISamplingXPCService

+ (id)getRemoteObjectProxyWithConnection:(id)connection errorHandler:(id)handler
{
  v25 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  handlerCopy = handler;
  v8 = handlerCopy;
  if (connectionCopy)
  {
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __76__SSRRPISamplingXPCService_getRemoteObjectProxyWithConnection_errorHandler___block_invoke;
    v19[3] = &unk_278577D88;
    v9 = handlerCopy;
    v21 = v9;
    selfCopy = self;
    v10 = connectionCopy;
    v20 = v10;
    v11 = [v10 remoteObjectProxyWithErrorHandler:v19];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
LABEL_11:

      goto LABEL_12;
    }

    v15 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v24 = "+[SSRRPISamplingXPCService getRemoteObjectProxyWithConnection:errorHandler:]";
      _os_log_error_impl(&dword_225E12000, v15, OS_LOG_TYPE_ERROR, "%s service cannot be created", buf, 0xCu);
      if (!v9)
      {
        goto LABEL_10;
      }
    }

    else if (!v9)
    {
LABEL_10:
      [self _invalidateConnection:v10];
      goto LABEL_11;
    }

    v16 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.speakerrecognition" code:1107 userInfo:&unk_283932FF0];
    (*(v9 + 2))(v9, v16);

    goto LABEL_10;
  }

  if (handlerCopy)
  {
    v14 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.speakerrecognition" code:1107 userInfo:&unk_283932FC8];
    (v8)[2](v8, v14);
  }

  v12 = 0;
LABEL_12:

  v17 = *MEMORY[0x277D85DE8];

  return v12;
}

uint64_t __76__SSRRPISamplingXPCService_getRemoteObjectProxyWithConnection_errorHandler___block_invoke(void *a1, uint64_t a2)
{
  if (a2)
  {
    v3 = a1[5];
    if (v3)
    {
      (*(v3 + 16))();
    }
  }

  v4 = a1[6];
  v5 = a1[4];

  return [v4 _invalidateConnection:v5];
}

+ (id)_createConnection
{
  v2 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.ssr.rpisamplingservice" options:0];
  v3 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_283934D00];
  [v2 setRemoteObjectInterface:v3];

  [v2 setInterruptionHandler:&__block_literal_global_573];
  [v2 setInvalidationHandler:&__block_literal_global_21];
  [v2 resume];

  return v2;
}

void __45__SSRRPISamplingXPCService__createConnection__block_invoke_19()
{
  v4 = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
  {
    v2 = 136315138;
    v3 = "+[SSRRPISamplingXPCService _createConnection]_block_invoke";
    _os_log_error_impl(&dword_225E12000, v0, OS_LOG_TYPE_ERROR, "%s SSRRPISamplingXPC Services Invalidated", &v2, 0xCu);
  }

  v1 = *MEMORY[0x277D85DE8];
}

void __45__SSRRPISamplingXPCService__createConnection__block_invoke()
{
  v4 = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
  {
    v2 = 136315138;
    v3 = "+[SSRRPISamplingXPCService _createConnection]_block_invoke";
    _os_log_error_impl(&dword_225E12000, v0, OS_LOG_TYPE_ERROR, "%s SSRRPISamplingXPC Services Interrupted", &v2, 0xCu);
  }

  v1 = *MEMORY[0x277D85DE8];
}

+ (void)_invalidateConnection:(id)connection
{
  connectionCopy = connection;
  [connectionCopy setInvalidationHandler:0];
  [connectionCopy invalidate];
}

+ (void)removeMappingOnAndBefore:(id)before completion:(id)completion
{
  beforeCopy = before;
  completionCopy = completion;
  _createConnection = [self _createConnection];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __64__SSRRPISamplingXPCService_removeMappingOnAndBefore_completion___block_invoke;
  v15[3] = &unk_278579690;
  v9 = completionCopy;
  v16 = v9;
  v10 = [self getRemoteObjectProxyWithConnection:_createConnection errorHandler:v15];
  if (v10)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __64__SSRRPISamplingXPCService_removeMappingOnAndBefore_completion___block_invoke_2;
    v11[3] = &unk_278577D88;
    v13 = v9;
    selfCopy = self;
    v12 = _createConnection;
    [v10 removeMappingOnAndBefore:beforeCopy completion:v11];
  }
}

uint64_t __64__SSRRPISamplingXPCService_removeMappingOnAndBefore_completion___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      (*(v3 + 16))();
    }
  }

  return MEMORY[0x2821F96F8]();
}

uint64_t __64__SSRRPISamplingXPCService_removeMappingOnAndBefore_completion___block_invoke_2(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = a1[6];
  v4 = a1[4];

  return [v3 _invalidateConnection:v4];
}

+ (id)getActiveRequestIdsForLocale:(id)locale date:(id)date error:(id *)error
{
  localeCopy = locale;
  dateCopy = date;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy_;
  v35 = __Block_byref_object_dispose_;
  v36 = 0;
  _createConnection = [self _createConnection];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __68__SSRRPISamplingXPCService_getActiveRequestIdsForLocale_date_error___block_invoke;
  v30[3] = &unk_278577D38;
  v30[4] = &v31;
  v11 = [self getRemoteObjectProxyWithConnection:_createConnection errorHandler:v30];
  if (v11)
  {
    v24 = 0;
    v25 = &v24;
    v26 = 0x3032000000;
    v27 = __Block_byref_object_copy_;
    v28 = __Block_byref_object_dispose_;
    v29 = 0;
    v12 = dispatch_semaphore_create(0);
    v17 = MEMORY[0x277D85DD0];
    v18 = 3221225472;
    v19 = __68__SSRRPISamplingXPCService_getActiveRequestIdsForLocale_date_error___block_invoke_2;
    v20 = &unk_278577E00;
    v22 = &v24;
    v23 = &v31;
    v13 = v12;
    v21 = v13;
    [v11 getActiveRequestIdsForLocale:localeCopy date:dateCopy completion:&v17];
    v14 = dispatch_time(0, 5000000000);
    if (dispatch_semaphore_wait(v13, v14))
    {
      if (error)
      {
        *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.speakerrecognition" code:1108 userInfo:{&unk_283932FA0, v17, v18, v19, v20}];
      }

      [self _invalidateConnection:{_createConnection, v17, v18, v19, v20}];
      v15 = 0;
    }

    else
    {
      if (error)
      {
        *error = v32[5];
      }

      [self _invalidateConnection:{_createConnection, v17, v18, v19, v20}];
      v15 = v25[5];
    }

    _Block_object_dispose(&v24, 8);
  }

  else
  {
    v15 = 0;
    if (error)
    {
      *error = v32[5];
    }
  }

  _Block_object_dispose(&v31, 8);

  return v15;
}

void __68__SSRRPISamplingXPCService_getActiveRequestIdsForLocale_date_error___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v5 = v4;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    v4 = v5;
  }
}

void __68__SSRRPISamplingXPCService_getActiveRequestIdsForLocale_date_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  v9 = a3;
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
  v8 = v5;

  dispatch_semaphore_signal(*(a1 + 32));
}

+ (void)removeAllSamplingMetaDataWithCompletion:(id)completion
{
  completionCopy = completion;
  _createConnection = [self _createConnection];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __68__SSRRPISamplingXPCService_removeAllSamplingMetaDataWithCompletion___block_invoke;
  v12[3] = &unk_278579690;
  v6 = completionCopy;
  v13 = v6;
  v7 = [self getRemoteObjectProxyWithConnection:_createConnection errorHandler:v12];
  if (v7)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __68__SSRRPISamplingXPCService_removeAllSamplingMetaDataWithCompletion___block_invoke_2;
    v8[3] = &unk_278577DD8;
    v10 = v6;
    selfCopy = self;
    v9 = _createConnection;
    [v7 removeAllSamplingMetaDataWithCompletion:v8];
  }
}

uint64_t __68__SSRRPISamplingXPCService_removeAllSamplingMetaDataWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      (*(v3 + 16))();
    }
  }

  return MEMORY[0x2821F96F8]();
}

uint64_t __68__SSRRPISamplingXPCService_removeAllSamplingMetaDataWithCompletion___block_invoke_2(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    (*(v2 + 16))(v2, 0);
  }

  v3 = a1[6];
  v4 = a1[4];

  return [v3 _invalidateConnection:v4];
}

+ (void)removeRequestIdToAudioIdMappingWithCompletion:(id)completion
{
  completionCopy = completion;
  _createConnection = [self _createConnection];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __74__SSRRPISamplingXPCService_removeRequestIdToAudioIdMappingWithCompletion___block_invoke;
  v12[3] = &unk_278579690;
  v6 = completionCopy;
  v13 = v6;
  v7 = [self getRemoteObjectProxyWithConnection:_createConnection errorHandler:v12];
  if (v7)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __74__SSRRPISamplingXPCService_removeRequestIdToAudioIdMappingWithCompletion___block_invoke_2;
    v8[3] = &unk_278577DD8;
    v10 = v6;
    selfCopy = self;
    v9 = _createConnection;
    [v7 removeRequestIdToAudioIdMappingWithCompletion:v8];
  }
}

uint64_t __74__SSRRPISamplingXPCService_removeRequestIdToAudioIdMappingWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      (*(v3 + 16))();
    }
  }

  return MEMORY[0x2821F96F8]();
}

uint64_t __74__SSRRPISamplingXPCService_removeRequestIdToAudioIdMappingWithCompletion___block_invoke_2(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    (*(v2 + 16))(v2, 0);
  }

  v3 = a1[6];
  v4 = a1[4];

  return [v3 _invalidateConnection:v4];
}

+ (void)removeMappingWithLocale:(id)locale date:(id)date completion:(id)completion
{
  localeCopy = locale;
  dateCopy = date;
  completionCopy = completion;
  _createConnection = [self _createConnection];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __68__SSRRPISamplingXPCService_removeMappingWithLocale_date_completion___block_invoke;
  v18[3] = &unk_278579690;
  v12 = completionCopy;
  v19 = v12;
  v13 = [self getRemoteObjectProxyWithConnection:_createConnection errorHandler:v18];
  if (v13)
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __68__SSRRPISamplingXPCService_removeMappingWithLocale_date_completion___block_invoke_2;
    v14[3] = &unk_278577D88;
    v16 = v12;
    selfCopy = self;
    v15 = _createConnection;
    [v13 removeMappingWithLocale:localeCopy date:dateCopy completion:v14];
  }
}

uint64_t __68__SSRRPISamplingXPCService_removeMappingWithLocale_date_completion___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      (*(v3 + 16))();
    }
  }

  return MEMORY[0x2821F96F8]();
}

uint64_t __68__SSRRPISamplingXPCService_removeMappingWithLocale_date_completion___block_invoke_2(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = a1[6];
  v4 = a1[4];

  return [v3 _invalidateConnection:v4];
}

+ (void)writeIntoMappingWithRequestId:(id)id audioId:(id)audioId date:(id)date locale:(id)locale completion:(id)completion
{
  idCopy = id;
  audioIdCopy = audioId;
  dateCopy = date;
  localeCopy = locale;
  completionCopy = completion;
  _createConnection = [self _createConnection];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __89__SSRRPISamplingXPCService_writeIntoMappingWithRequestId_audioId_date_locale_completion___block_invoke;
  v24[3] = &unk_278579690;
  v18 = completionCopy;
  v25 = v18;
  v19 = [self getRemoteObjectProxyWithConnection:_createConnection errorHandler:v24];
  if (v19)
  {
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __89__SSRRPISamplingXPCService_writeIntoMappingWithRequestId_audioId_date_locale_completion___block_invoke_2;
    v20[3] = &unk_278577D88;
    v22 = v18;
    selfCopy = self;
    v21 = _createConnection;
    [v19 writeIntoMappingWithRequestId:idCopy audioId:audioIdCopy date:dateCopy locale:localeCopy completion:v20];
  }
}

uint64_t __89__SSRRPISamplingXPCService_writeIntoMappingWithRequestId_audioId_date_locale_completion___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      (*(v3 + 16))();
    }
  }

  return MEMORY[0x2821F96F8]();
}

uint64_t __89__SSRRPISamplingXPCService_writeIntoMappingWithRequestId_audioId_date_locale_completion___block_invoke_2(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = a1[6];
  v4 = a1[4];

  return [v3 _invalidateConnection:v4];
}

+ (id)getAudioIdWithRequestId:(id)id languageCode:(id)code date:(id)date error:(id *)error
{
  idCopy = id;
  codeCopy = code;
  dateCopy = date;
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy_;
  v38 = __Block_byref_object_dispose_;
  v39 = 0;
  _createConnection = [self _createConnection];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __76__SSRRPISamplingXPCService_getAudioIdWithRequestId_languageCode_date_error___block_invoke;
  v33[3] = &unk_278577D38;
  v33[4] = &v34;
  v14 = [self getRemoteObjectProxyWithConnection:_createConnection errorHandler:v33];
  if (v14)
  {
    v27 = 0;
    v28 = &v27;
    v29 = 0x3032000000;
    v30 = __Block_byref_object_copy_;
    v31 = __Block_byref_object_dispose_;
    v32 = 0;
    v15 = dispatch_semaphore_create(0);
    v20 = MEMORY[0x277D85DD0];
    v21 = 3221225472;
    v22 = __76__SSRRPISamplingXPCService_getAudioIdWithRequestId_languageCode_date_error___block_invoke_2;
    v23 = &unk_278577DB0;
    v25 = &v34;
    v26 = &v27;
    v16 = v15;
    v24 = v16;
    [v14 getAudioIdWithRequestId:idCopy languageCode:codeCopy date:dateCopy completion:&v20];
    v17 = dispatch_time(0, 5000000000);
    if (dispatch_semaphore_wait(v16, v17))
    {
      if (error)
      {
        *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.speakerrecognition" code:1108 userInfo:{&unk_283932F78, v20, v21, v22, v23}];
      }

      [self _invalidateConnection:{_createConnection, v20, v21, v22, v23}];
      v18 = 0;
    }

    else
    {
      if (error)
      {
        *error = v35[5];
      }

      [self _invalidateConnection:{_createConnection, v20, v21, v22, v23}];
      v18 = v28[5];
    }

    _Block_object_dispose(&v27, 8);
  }

  else
  {
    v18 = 0;
    if (error)
    {
      *error = v35[5];
    }
  }

  _Block_object_dispose(&v34, 8);

  return v18;
}

void __76__SSRRPISamplingXPCService_getAudioIdWithRequestId_languageCode_date_error___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v5 = v4;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    v4 = v5;
  }
}

void __76__SSRRPISamplingXPCService_getAudioIdWithRequestId_languageCode_date_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

+ (void)updateStatus:(id)status languageCode:(id)code completion:(id)completion
{
  statusCopy = status;
  codeCopy = code;
  completionCopy = completion;
  _createConnection = [self _createConnection];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __65__SSRRPISamplingXPCService_updateStatus_languageCode_completion___block_invoke;
  v18[3] = &unk_278579690;
  v12 = completionCopy;
  v19 = v12;
  v13 = [self getRemoteObjectProxyWithConnection:_createConnection errorHandler:v18];
  if (v13)
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __65__SSRRPISamplingXPCService_updateStatus_languageCode_completion___block_invoke_2;
    v14[3] = &unk_278577D88;
    v16 = v12;
    selfCopy = self;
    v15 = _createConnection;
    [v13 updateStatus:statusCopy languageCode:codeCopy completion:v14];
  }
}

uint64_t __65__SSRRPISamplingXPCService_updateStatus_languageCode_completion___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      (*(v3 + 16))();
    }
  }

  return MEMORY[0x2821F96F8]();
}

uint64_t __65__SSRRPISamplingXPCService_updateStatus_languageCode_completion___block_invoke_2(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = a1[6];
  v4 = a1[4];

  return [v3 _invalidateConnection:v4];
}

+ (unint64_t)getEnrollmentSelectionStatusWithLocale:(id)locale error:(id *)error
{
  localeCopy = locale;
  _createConnection = [self _createConnection];
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy_;
  v32 = __Block_byref_object_dispose_;
  v33 = 0;
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __73__SSRRPISamplingXPCService_getEnrollmentSelectionStatusWithLocale_error___block_invoke;
  v27[3] = &unk_278577D38;
  v27[4] = &v28;
  v8 = [self getRemoteObjectProxyWithConnection:_createConnection errorHandler:v27];
  if (v8)
  {
    v21 = 0;
    v22 = &v21;
    v23 = 0x3032000000;
    v24 = __Block_byref_object_copy_;
    v25 = __Block_byref_object_dispose_;
    v26 = 0;
    v9 = dispatch_semaphore_create(0);
    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __73__SSRRPISamplingXPCService_getEnrollmentSelectionStatusWithLocale_error___block_invoke_2;
    v17 = &unk_278577D60;
    v19 = &v28;
    v20 = &v21;
    v10 = v9;
    v18 = v10;
    [v8 getEnrollmentSelectionStatusWithLocale:localeCopy completion:&v14];
    v11 = dispatch_time(0, 5000000000);
    if (dispatch_semaphore_wait(v10, v11))
    {
      if (error)
      {
        *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.speakerrecognition" code:1108 userInfo:{&unk_283932F50, v14, v15, v16, v17}];
      }
    }

    else
    {
      if (error)
      {
        *error = v29[5];
      }

      if (v22[5])
      {
        [self _invalidateConnection:{_createConnection, v14, v15, v16, v17}];
        unsignedIntegerValue = [v22[5] unsignedIntegerValue];
LABEL_13:

        _Block_object_dispose(&v21, 8);
        goto LABEL_14;
      }
    }

    [self _invalidateConnection:{_createConnection, v14, v15, v16, v17}];
    unsignedIntegerValue = 5;
    goto LABEL_13;
  }

  if (error)
  {
    *error = v29[5];
  }

  unsignedIntegerValue = 5;
LABEL_14:

  _Block_object_dispose(&v28, 8);
  return unsignedIntegerValue;
}

void __73__SSRRPISamplingXPCService_getEnrollmentSelectionStatusWithLocale_error___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v5 = v4;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    v4 = v5;
  }
}

void __73__SSRRPISamplingXPCService_getEnrollmentSelectionStatusWithLocale_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

@end