@interface TRAnisetteDataProvider
- (TRAnisetteDataProvider)initWithSession:(id)session;
- (void)eraseAnisetteWithCompletion:(id)completion;
- (void)legacyAnisetteDataForDSID:(id)d withCompletion:(id)completion;
- (void)provisionAnisetteWithCompletion:(id)completion;
- (void)syncAnisetteWithSIMData:(id)data completion:(id)completion;
@end

@implementation TRAnisetteDataProvider

- (TRAnisetteDataProvider)initWithSession:(id)session
{
  sessionCopy = session;
  v9.receiver = self;
  v9.super_class = TRAnisetteDataProvider;
  v6 = [(TRAnisetteDataProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_session, session);
  }

  return v7;
}

- (void)provisionAnisetteWithCompletion:(id)completion
{
  v14 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  if (_TRLogEnabled == 1)
  {
    v5 = TRLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v13 = "[TRAnisetteDataProvider provisionAnisetteWithCompletion:]";
      _os_log_impl(&dword_26F2A2000, v5, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
    }
  }

  v6 = objc_alloc_init(TRProvisionAnisetteDataRequest);
  session = self->_session;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __58__TRAnisetteDataProvider_provisionAnisetteWithCompletion___block_invoke;
  v10[3] = &unk_279DCF318;
  v11 = completionCopy;
  v8 = completionCopy;
  [(TRSession *)session sendRequest:v6 withResponseHandler:v10];

  v9 = *MEMORY[0x277D85DE8];
}

void __58__TRAnisetteDataProvider_provisionAnisetteWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (_TRLogEnabled == 1)
  {
    v7 = TRLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315650;
      v10 = "[TRAnisetteDataProvider provisionAnisetteWithCompletion:]_block_invoke";
      v11 = 2112;
      v12 = v6;
      v13 = 2112;
      v14 = v5;
      _os_log_impl(&dword_26F2A2000, v7, OS_LOG_TYPE_DEFAULT, "%s: response %@, error %@", &v9, 0x20u);
    }
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32), [v6 didSucceed], v5);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)syncAnisetteWithSIMData:(id)data completion:(id)completion
{
  v17 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  completionCopy = completion;
  if (_TRLogEnabled == 1)
  {
    v8 = TRLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v16 = "[TRAnisetteDataProvider syncAnisetteWithSIMData:completion:]";
      _os_log_impl(&dword_26F2A2000, v8, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
    }
  }

  v9 = objc_alloc_init(TRSyncAnisetteDataRequest);
  [(TRSyncAnisetteDataRequest *)v9 setSimData:dataCopy];
  session = self->_session;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __61__TRAnisetteDataProvider_syncAnisetteWithSIMData_completion___block_invoke;
  v13[3] = &unk_279DCF318;
  v14 = completionCopy;
  v11 = completionCopy;
  [(TRSession *)session sendRequest:v9 withResponseHandler:v13];

  v12 = *MEMORY[0x277D85DE8];
}

void __61__TRAnisetteDataProvider_syncAnisetteWithSIMData_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (_TRLogEnabled == 1)
  {
    v7 = TRLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315650;
      v10 = "[TRAnisetteDataProvider syncAnisetteWithSIMData:completion:]_block_invoke";
      v11 = 2112;
      v12 = v6;
      v13 = 2112;
      v14 = v5;
      _os_log_impl(&dword_26F2A2000, v7, OS_LOG_TYPE_DEFAULT, "%s: response %@, error %@", &v9, 0x20u);
    }
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32), [v6 didSucceed], v5);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)eraseAnisetteWithCompletion:(id)completion
{
  v14 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  if (_TRLogEnabled == 1)
  {
    v5 = TRLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v13 = "[TRAnisetteDataProvider eraseAnisetteWithCompletion:]";
      _os_log_impl(&dword_26F2A2000, v5, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
    }
  }

  v6 = objc_alloc_init(TREraseAnisetteDataRequest);
  session = self->_session;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __54__TRAnisetteDataProvider_eraseAnisetteWithCompletion___block_invoke;
  v10[3] = &unk_279DCF318;
  v11 = completionCopy;
  v8 = completionCopy;
  [(TRSession *)session sendRequest:v6 withResponseHandler:v10];

  v9 = *MEMORY[0x277D85DE8];
}

void __54__TRAnisetteDataProvider_eraseAnisetteWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (_TRLogEnabled == 1)
  {
    v7 = TRLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315650;
      v10 = "[TRAnisetteDataProvider eraseAnisetteWithCompletion:]_block_invoke";
      v11 = 2112;
      v12 = v6;
      v13 = 2112;
      v14 = v5;
      _os_log_impl(&dword_26F2A2000, v7, OS_LOG_TYPE_DEFAULT, "%s: response %@, error %@", &v9, 0x20u);
    }
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32), [v6 didSucceed], v5);

  v8 = *MEMORY[0x277D85DE8];
}

void __82__TRAnisetteDataProvider_fetchAnisetteDataAndProvisionIfNecessary_withCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (_TRLogEnabled == 1)
  {
    v7 = TRLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v17 = "[TRAnisetteDataProvider fetchAnisetteDataAndProvisionIfNecessary:withCompletion:]_block_invoke";
      v18 = 2112;
      v19 = v6;
      v20 = 2112;
      v21 = v5;
      _os_log_impl(&dword_26F2A2000, v7, OS_LOG_TYPE_DEFAULT, "%s: response %@, error %@", buf, 0x20u);
    }
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __82__TRAnisetteDataProvider_fetchAnisetteDataAndProvisionIfNecessary_withCompletion___block_invoke_4;
  v12[3] = &unk_279DCF340;
  v8 = *(a1 + 40);
  v12[4] = *(a1 + 32);
  v14 = v5;
  v15 = v8;
  v13 = v6;
  v9 = v6;
  v10 = v5;
  dispatch_async(MEMORY[0x277D85CD0], v12);

  v11 = *MEMORY[0x277D85DE8];
}

void __82__TRAnisetteDataProvider_fetchAnisetteDataAndProvisionIfNecessary_withCompletion___block_invoke_4(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  if (*(v1 + 8) == 1)
  {
    if (_TRLogEnabled == 1)
    {
      v3 = TRLogHandle();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v7 = 136315138;
        v8 = "[TRAnisetteDataProvider fetchAnisetteDataAndProvisionIfNecessary:withCompletion:]_block_invoke";
        _os_log_impl(&dword_26F2A2000, v3, OS_LOG_TYPE_DEFAULT, "%s: Completing without timeout", &v7, 0xCu);
      }

      v1 = *(a1 + 32);
    }

    *(v1 + 8) = 0;
    v4 = *(a1 + 56);
    v5 = [*(a1 + 40) anisetteData];
    (*(v4 + 16))(v4, v5, *(a1 + 48));
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __82__TRAnisetteDataProvider_fetchAnisetteDataAndProvisionIfNecessary_withCompletion___block_invoke_7(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  if (*(v1 + 8) == 1)
  {
    *(v1 + 8) = 0;
    if (_TRLogEnabled == 1)
    {
      v3 = TRLogHandle();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v6 = 136315138;
        v7 = "[TRAnisetteDataProvider fetchAnisetteDataAndProvisionIfNecessary:withCompletion:]_block_invoke";
        _os_log_impl(&dword_26F2A2000, v3, OS_LOG_TYPE_DEFAULT, "%s: Timed out", &v6, 0xCu);
      }
    }

    v4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TRNearbyDeviceErrorDomain" code:-12003 userInfo:0];
    (*(*(a1 + 40) + 16))();
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)legacyAnisetteDataForDSID:(id)d withCompletion:(id)completion
{
  v17 = *MEMORY[0x277D85DE8];
  dCopy = d;
  completionCopy = completion;
  if (_TRLogEnabled == 1)
  {
    v8 = TRLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v16 = "[TRAnisetteDataProvider legacyAnisetteDataForDSID:withCompletion:]";
      _os_log_impl(&dword_26F2A2000, v8, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
    }
  }

  v9 = objc_alloc_init(TRLegacyAnisetteDataRequest);
  [(TRLegacyAnisetteDataRequest *)v9 setDsid:dCopy];
  session = self->_session;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __67__TRAnisetteDataProvider_legacyAnisetteDataForDSID_withCompletion___block_invoke;
  v13[3] = &unk_279DCF318;
  v14 = completionCopy;
  v11 = completionCopy;
  [(TRSession *)session sendRequest:v9 withResponseHandler:v13];

  v12 = *MEMORY[0x277D85DE8];
}

void __67__TRAnisetteDataProvider_legacyAnisetteDataForDSID_withCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (_TRLogEnabled == 1)
  {
    v7 = TRLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315650;
      v12 = "[TRAnisetteDataProvider legacyAnisetteDataForDSID:withCompletion:]_block_invoke";
      v13 = 2112;
      v14 = v6;
      v15 = 2112;
      v16 = v5;
      _os_log_impl(&dword_26F2A2000, v7, OS_LOG_TYPE_DEFAULT, "%s: response %@, error %@", &v11, 0x20u);
    }
  }

  v8 = *(a1 + 32);
  v9 = [v6 anisetteData];
  (*(v8 + 16))(v8, v9, v5);

  v10 = *MEMORY[0x277D85DE8];
}

@end