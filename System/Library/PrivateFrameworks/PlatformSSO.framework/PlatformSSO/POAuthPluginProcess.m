@interface POAuthPluginProcess
- (BOOL)saveCredentialForUserName:(id)a3 passwordContext:(id)a4;
- (void)screenDidUnlockWithCredentialContext:(id)a3 smartCardContext:(id)a4 biometricContext:(id)a5 tokenId:(id)a6 atLogin:(BOOL)a7 tokenUnlock:(BOOL)a8;
- (void)updateLocalAccountPassword:(id)a3 passwordContext:(id)a4 completion:(id)a5;
@end

@implementation POAuthPluginProcess

uint64_t __87__POAuthPluginProcess_performPasswordLogin_passwordContext_updateLocalAccountPassword___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 24);
  v3 = *(a1 + 64);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __87__POAuthPluginProcess_performPasswordLogin_passwordContext_updateLocalAccountPassword___block_invoke_2;
  v6[3] = &unk_279A3A2F0;
  v4 = *(a1 + 48);
  v6[4] = *(a1 + 56);
  return [v2 performPasswordLogin:v1 passwordContext:v4 updateLocalAccountPassword:v3 completion:v6];
}

void __87__POAuthPluginProcess_performPasswordLogin_passwordContext_updateLocalAccountPassword___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = PO_LOG_POAuthPluginProcess();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [MEMORY[0x277D3D1D0] stringForLoginResult:a2];
    v9 = 138543618;
    v10 = v7;
    v11 = 2114;
    v12 = v5;
    _os_log_impl(&dword_25E831000, v6, OS_LOG_TYPE_DEFAULT, "loginResult = %{public}@, error = %{public}@", &v9, 0x16u);
  }

  *(*(*(a1 + 32) + 8) + 24) = a2;
  v8 = *MEMORY[0x277D85DE8];
}

uint64_t __101__POAuthPluginProcess_performPasswordLogin_loginUserName_passwordContext_updateLocalAccountPassword___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 24);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = *(a1 + 72);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __101__POAuthPluginProcess_performPasswordLogin_loginUserName_passwordContext_updateLocalAccountPassword___block_invoke_2;
  v7[3] = &unk_279A3A2F0;
  v7[4] = *(a1 + 64);
  return [v2 performPasswordLogin:v1 loginUserName:v3 passwordContext:v4 updateLocalAccountPassword:v5 completion:v7];
}

void __101__POAuthPluginProcess_performPasswordLogin_loginUserName_passwordContext_updateLocalAccountPassword___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = PO_LOG_POAuthPluginProcess();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [MEMORY[0x277D3D1D0] stringForLoginResult:a2];
    v9 = 138543618;
    v10 = v7;
    v11 = 2114;
    v12 = v5;
    _os_log_impl(&dword_25E831000, v6, OS_LOG_TYPE_DEFAULT, "loginResult = %{public}@, error = %{public}@", &v9, 0x16u);
  }

  *(*(*(a1 + 32) + 8) + 24) = a2;
  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)saveCredentialForUserName:(id)a3 passwordContext:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = PO_LOG_POAuthPluginProcess();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    *&buf[4] = "[POAuthPluginProcess saveCredentialForUserName:passwordContext:]";
    *&buf[12] = 2114;
    *&buf[14] = v6;
    *&buf[22] = 2114;
    v19 = v7;
    v20 = 2112;
    v21 = self;
    _os_log_impl(&dword_25E831000, v8, OS_LOG_TYPE_DEFAULT, "%s userName = %{public}@, passwordContext = %{public}@ on %@", buf, 0x2Au);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  LOBYTE(v19) = 0;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __65__POAuthPluginProcess_saveCredentialForUserName_passwordContext___block_invoke;
  v14[3] = &unk_279A3A368;
  v14[4] = self;
  v15 = v6;
  v16 = v7;
  v17 = buf;
  v9 = v7;
  v10 = v6;
  _os_activity_initiate(&dword_25E831000, "PSSOSaveCredential", OS_ACTIVITY_FLAG_DEFAULT, v14);

  v11 = *(*&buf[8] + 24);
  _Block_object_dispose(buf, 8);
  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t __65__POAuthPluginProcess_saveCredentialForUserName_passwordContext___block_invoke(void *a1)
{
  v1 = a1[5];
  v2 = *(a1[4] + 24);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __65__POAuthPluginProcess_saveCredentialForUserName_passwordContext___block_invoke_2;
  v5[3] = &unk_279A3A240;
  v3 = a1[6];
  v5[4] = a1[7];
  return [v2 saveCredentialForUserName:v1 passwordContext:v3 completion:v5];
}

- (void)screenDidUnlockWithCredentialContext:(id)a3 smartCardContext:(id)a4 biometricContext:(id)a5 tokenId:(id)a6 atLogin:(BOOL)a7 tokenUnlock:(BOOL)a8
{
  v41 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = PO_LOG_POAuthPluginProcess();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136316162;
    v32 = "[POAuthPluginProcess screenDidUnlockWithCredentialContext:smartCardContext:biometricContext:tokenId:atLogin:tokenUnlock:]";
    v33 = 2114;
    v34 = v14;
    v35 = 2114;
    v36 = v15;
    v37 = 2114;
    v38 = v16;
    v39 = 2112;
    v40 = self;
    _os_log_impl(&dword_25E831000, v18, OS_LOG_TYPE_DEFAULT, "%s context = %{public}@, sccontext = %{public}@, bcontext = %{public}@ on %@", buf, 0x34u);
  }

  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __122__POAuthPluginProcess_screenDidUnlockWithCredentialContext_smartCardContext_biometricContext_tokenId_atLogin_tokenUnlock___block_invoke;
  v24[3] = &unk_279A3A390;
  v24[4] = self;
  v25 = v14;
  v26 = v15;
  v27 = v16;
  v28 = v17;
  v29 = a7;
  v30 = a8;
  v19 = v17;
  v20 = v16;
  v21 = v15;
  v22 = v14;
  _os_activity_initiate(&dword_25E831000, "PSSOScreenUnlock", OS_ACTIVITY_FLAG_DEFAULT, v24);

  v23 = *MEMORY[0x277D85DE8];
}

void __122__POAuthPluginProcess_screenDidUnlockWithCredentialContext_smartCardContext_biometricContext_tokenId_atLogin_tokenUnlock___block_invoke_2()
{
  v0 = PO_LOG_POAuthPluginProcess();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_25E831000, v0, OS_LOG_TYPE_DEFAULT, "screenDidUnlock completed", v1, 2u);
  }
}

- (void)updateLocalAccountPassword:(id)a3 passwordContext:(id)a4 completion:(id)a5
{
  v19 = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = PO_LOG_POAuthPluginProcess();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136315394;
    v16 = "[POAuthPluginProcess updateLocalAccountPassword:passwordContext:completion:]";
    v17 = 2112;
    v18 = self;
    _os_log_impl(&dword_25E831000, v11, OS_LOG_TYPE_DEFAULT, "%s  on %@", &v15, 0x16u);
  }

  serviceConnection = self->_serviceConnection;
  v13 = [v9 externalizedContext];

  [(POServiceConnection *)serviceConnection updateLocalAccountPassword:v10 passwordContextData:v13 completion:v8];
  v14 = *MEMORY[0x277D85DE8];
}

- (void)initWithUid:(uint64_t)a1 forLogin:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 136315394;
  v4 = "[POAuthPluginProcess initWithUid:forLogin:]";
  v5 = 2112;
  v6 = a1;
  _os_log_debug_impl(&dword_25E831000, a2, OS_LOG_TYPE_DEBUG, "%s  on %@", &v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

@end