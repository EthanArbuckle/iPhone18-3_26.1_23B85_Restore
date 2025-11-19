@interface SMBClientManager
+ (id)newManager;
- (id)addVolume:(id)a3 atServer:(id)a4 credentialType:(int64_t)a5 credential:(id)a6;
- (id)forgetVolume:(id)a3;
- (id)listenerForVolume:(id)a3 error:(id *)a4;
- (id)sharesAtServer:(id)a3 credentialType:(int64_t)a4 credential:(id)a5 error:(id *)a6;
- (id)volumes:(id *)a3;
- (void)addSMBServerOrShare:(id)a3 completionHandler:(id)a4;
- (void)addVolumes:(id)a3 atServer:(id)a4 credentialType:(int64_t)a5 credential:(id)a6 completionHandler:(id)a7;
- (void)credentialTypesForServer:(id)a3 completionHandler:(id)a4;
- (void)listenerForVolume:(id)a3 completionHandler:(id)a4;
- (void)sharesAtServer:(id)a3 credentialType:(int64_t)a4 credential:(id)a5 completionHandler:(id)a6;
- (void)volumesWithCompletionHandler:(id)a3;
@end

@implementation SMBClientManager

+ (id)newManager
{
  v2 = [a1 newConnectionForService:@"machp://com.apple.filesystems.smbclientd"];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2875C1120];
    [*&v2[*MEMORY[0x277D23DC8]] setRemoteObjectInterface:v3];
  }

  return v2;
}

- (id)volumes:(id *)a3
{
  v5.receiver = self;
  v5.super_class = SMBClientManager;
  v3 = [(LiveFSClient *)&v5 volumes:a3];

  return v3;
}

- (void)volumesWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = *(&self->super.super.isa + *MEMORY[0x277D23DC8]);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __49__SMBClientManager_volumesWithCompletionHandler___block_invoke;
  v11[3] = &unk_279B50BA0;
  v6 = v4;
  v12 = v6;
  v7 = [v5 remoteObjectProxyWithErrorHandler:v11];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __49__SMBClientManager_volumesWithCompletionHandler___block_invoke_2;
  v9[3] = &unk_279B50BC8;
  v10 = v6;
  v8 = v6;
  [v7 listVolumes:v9];
}

- (id)listenerForVolume:(id)a3 error:(id *)a4
{
  v6.receiver = self;
  v6.super_class = SMBClientManager;
  v4 = [(LiveFSClient *)&v6 listenerForVolume:a3 error:a4];

  return v4;
}

- (void)listenerForVolume:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = *(&self->super.super.isa + *MEMORY[0x277D23DC8]);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __56__SMBClientManager_listenerForVolume_completionHandler___block_invoke;
  v14[3] = &unk_279B50BA0;
  v8 = v6;
  v15 = v8;
  v9 = a3;
  v10 = [v7 remoteObjectProxyWithErrorHandler:v14];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __56__SMBClientManager_listenerForVolume_completionHandler___block_invoke_2;
  v12[3] = &unk_279B50BF0;
  v13 = v8;
  v11 = v8;
  [v10 listenerForVolume:v9 reply:v12];
}

- (id)forgetVolume:(id)a3
{
  v5.receiver = self;
  v5.super_class = SMBClientManager;
  v3 = [(LiveFSClient *)&v5 forgetVolume:a3 withFlags:3];

  return v3;
}

- (id)addVolume:(id)a3 atServer:(id)a4 credentialType:(int64_t)a5 credential:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy_;
  v23 = __Block_byref_object_dispose_;
  v24 = 0;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [SMBClientManager addVolume:atServer:credentialType:credential:];
  }

  v13 = *(&self->super.super.isa + *MEMORY[0x277D23DC8]);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __65__SMBClientManager_addVolume_atServer_credentialType_credential___block_invoke;
  v18[3] = &unk_279B50C18;
  v18[4] = &v19;
  v14 = [v13 synchronousRemoteObjectProxyWithErrorHandler:v18];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __65__SMBClientManager_addVolume_atServer_credentialType_credential___block_invoke_2;
  v17[3] = &unk_279B50C18;
  v17[4] = &v19;
  [v14 addVolume:v10 atServer:v11 credentialType:a5 credential:v12 reply:v17];
  v15 = v20[5];
  _Block_object_dispose(&v19, 8);

  return v15;
}

- (void)addSMBServerOrShare:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = *(&self->super.super.isa + *MEMORY[0x277D23DC8]);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __58__SMBClientManager_addSMBServerOrShare_completionHandler___block_invoke;
  v11[3] = &unk_279B50BA0;
  v12 = v6;
  v8 = v6;
  v9 = a3;
  v10 = [v7 remoteObjectProxyWithErrorHandler:v11];
  [v10 addSMBServerOrShare:v9 completionHandler:v8];
}

- (void)addVolumes:(id)a3 atServer:(id)a4 credentialType:(int64_t)a5 credential:(id)a6 completionHandler:(id)a7
{
  v73 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v32 = a4;
  v33 = a6;
  v12 = a7;
  v66 = 0;
  v67 = &v66;
  v68 = 0x2020000000;
  v69 = 0;
  v62 = 0;
  v63 = &v62;
  v64 = 0x2020000000;
  v29 = v11;
  v65 = [v11 count];
  v56 = 0;
  v57 = &v56;
  v58 = 0x3032000000;
  v59 = __Block_byref_object_copy_;
  v60 = __Block_byref_object_dispose_;
  v61 = 0;
  v50 = 0;
  v51 = &v50;
  v52 = 0x3032000000;
  v53 = __Block_byref_object_copy__41;
  v54 = __Block_byref_object_dispose__42;
  v27 = v12;
  v55 = MEMORY[0x266734E60](v12);
  v13 = objc_opt_new();
  v14 = objc_opt_new();
  v28 = objc_opt_new();
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [SMBClientManager addVolumes:atServer:credentialType:credential:completionHandler:];
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [SMBClientManager addVolumes:atServer:credentialType:credential:completionHandler:];
  }

  if ([v11 count] < 0)
  {
    v23 = v51[5];
    v17 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:34 userInfo:0];
    (*(v23 + 16))(v23, v14, v13, v17);
  }

  else
  {
    if (!*(v63 + 6))
    {
      (*(v51[5] + 16))();
      goto LABEL_25;
    }

    v15 = *(&self->super.super.isa + *MEMORY[0x277D23DC8]);
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __84__SMBClientManager_addVolumes_atServer_credentialType_credential_completionHandler___block_invoke;
    v46[3] = &unk_279B50C40;
    v16 = v28;
    v47 = v16;
    v48 = &v66;
    v49 = &v56;
    v17 = [v15 remoteObjectProxyWithErrorHandler:v46];
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    obj = v11;
    v18 = [obj countByEnumeratingWithState:&v42 objects:v72 count:16];
    if (v18)
    {
      v19 = MEMORY[0x277D86220];
      v20 = *v43;
      while (2)
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v43 != v20)
          {
            objc_enumerationMutation(obj);
          }

          v22 = *(*(&v42 + 1) + 8 * i);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            [SMBClientManager addVolumes:buf atServer:v22 credentialType:&v71 credential:? completionHandler:?];
          }

          [v16 lock];
          if (*(v67 + 6))
          {
            v24 = v51[5];
            if (v24)
            {
              (*(v24 + 16))(v24, v14, v13, v57[5]);
              v25 = v51[5];
              v51[5] = 0;
            }

            [v16 unlock];
            goto LABEL_22;
          }

          [v16 unlock];
          v34[0] = MEMORY[0x277D85DD0];
          v34[1] = 3221225472;
          v34[2] = __84__SMBClientManager_addVolumes_atServer_credentialType_credential_completionHandler___block_invoke_47;
          v34[3] = &unk_279B50C68;
          v34[4] = v22;
          v38 = &v62;
          v35 = v16;
          v39 = &v66;
          v40 = &v50;
          v36 = v14;
          v37 = v13;
          v41 = &v56;
          [v17 addVolume:v22 atServer:v32 credentialType:a5 credential:v33 reply:v34];
        }

        v18 = [obj countByEnumeratingWithState:&v42 objects:v72 count:16];
        if (v18)
        {
          continue;
        }

        break;
      }
    }

LABEL_22:
  }

LABEL_25:
  _Block_object_dispose(&v50, 8);

  _Block_object_dispose(&v56, 8);
  _Block_object_dispose(&v62, 8);
  _Block_object_dispose(&v66, 8);

  v26 = *MEMORY[0x277D85DE8];
}

void __84__SMBClientManager_addVolumes_atServer_credentialType_credential_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  [*(a1 + 32) lock];
  *(*(*(a1 + 40) + 8) + 24) = 1;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __84__SMBClientManager_addVolumes_atServer_credentialType_credential_completionHandler___block_invoke_cold_1();
  }

  [*(a1 + 32) unlock];
}

void __84__SMBClientManager_addVolumes_atServer_credentialType_credential_completionHandler___block_invoke_47(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __84__SMBClientManager_addVolumes_atServer_credentialType_credential_completionHandler___block_invoke_47_cold_1(v3, a1);
  }

  [*(a1 + 40) lock];
  if (*(*(*(a1 + 72) + 8) + 24))
  {
    goto LABEL_4;
  }

  if (v3)
  {
    [*(a1 + 56) setObject:v3 forKey:*(a1 + 32)];
  }

  else
  {
    [*(a1 + 48) addObject:*(a1 + 32)];
  }

  v7 = *(*(a1 + 64) + 8);
  v8 = *(v7 + 24) - 1;
  *(v7 + 24) = v8;
  if (!v8)
  {
LABEL_4:
    v4 = *(*(*(a1 + 80) + 8) + 40);
    if (v4)
    {
      (*(v4 + 16))(v4, *(a1 + 48), *(a1 + 56), *(*(*(a1 + 88) + 8) + 40));
      v5 = *(*(a1 + 80) + 8);
      v6 = *(v5 + 40);
      *(v5 + 40) = 0;
    }
  }

  [*(a1 + 40) unlock];
}

- (id)sharesAtServer:(id)a3 credentialType:(int64_t)a4 credential:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a5;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy_;
  v28 = __Block_byref_object_dispose_;
  v29 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy_;
  v22 = __Block_byref_object_dispose_;
  v23 = 0;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [SMBClientManager sharesAtServer:credentialType:credential:error:];
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [SMBClientManager sharesAtServer:credentialType:credential:error:];
  }

  v12 = *(&self->super.super.isa + *MEMORY[0x277D23DC8]);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __67__SMBClientManager_sharesAtServer_credentialType_credential_error___block_invoke;
  v17[3] = &unk_279B50C18;
  v17[4] = &v24;
  v13 = [v12 synchronousRemoteObjectProxyWithErrorHandler:v17];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __67__SMBClientManager_sharesAtServer_credentialType_credential_error___block_invoke_2;
  v16[3] = &unk_279B50C90;
  v16[4] = &v18;
  v16[5] = &v24;
  [v13 sharesAtServer:v10 credentialType:a4 credential:v11 reply:v16];
  if (a6)
  {
    *a6 = v25[5];
  }

  v14 = v19[5];
  _Block_object_dispose(&v18, 8);

  _Block_object_dispose(&v24, 8);

  return v14;
}

void __67__SMBClientManager_sharesAtServer_credentialType_credential_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
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

- (void)sharesAtServer:(id)a3 credentialType:(int64_t)a4 credential:(id)a5 completionHandler:(id)a6
{
  v10 = a6;
  v11 = *(&self->super.super.isa + *MEMORY[0x277D23DC8]);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __79__SMBClientManager_sharesAtServer_credentialType_credential_completionHandler___block_invoke;
  v19[3] = &unk_279B50BA0;
  v12 = v10;
  v20 = v12;
  v13 = a5;
  v14 = a3;
  v15 = [v11 remoteObjectProxyWithErrorHandler:v19];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __79__SMBClientManager_sharesAtServer_credentialType_credential_completionHandler___block_invoke_2;
  v17[3] = &unk_279B50CB8;
  v18 = v12;
  v16 = v12;
  [v15 sharesAtServer:v14 credentialType:a4 credential:v13 reply:v17];
}

- (void)credentialTypesForServer:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = *(&self->super.super.isa + *MEMORY[0x277D23DC8]);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __63__SMBClientManager_credentialTypesForServer_completionHandler___block_invoke;
  v11[3] = &unk_279B50BA0;
  v12 = v6;
  v8 = v6;
  v9 = a3;
  v10 = [v7 remoteObjectProxyWithErrorHandler:v11];
  [v10 SMBClientProtocolCredentialsForServer:v9 completionHandler:v8];
}

- (void)addVolume:atServer:credentialType:credential:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)addVolumes:atServer:credentialType:credential:completionHandler:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)addVolumes:(void *)a3 atServer:credentialType:credential:completionHandler:.cold.3(uint8_t *buf, uint64_t a2, void *a3)
{
  *buf = 138412290;
  *a3 = a2;
  _os_log_error_impl(&dword_2642CF000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Iteration: '%@'", buf, 0xCu);
}

void __84__SMBClientManager_addVolumes_atServer_credentialType_credential_completionHandler___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __84__SMBClientManager_addVolumes_atServer_credentialType_credential_completionHandler___block_invoke_47_cold_1(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v8 = *(a2 + 32);
  v9 = *(*(*(a2 + 64) + 8) + 24);
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)sharesAtServer:credentialType:credential:error:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)sharesAtServer:credentialType:credential:error:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

@end