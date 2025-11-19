@interface SSRVTUITrainingMessageHandler
- (SSRVTUITrainingMessageHandler)initWithAudioProvidingSelector:(id)a3;
- (void)audioSourceWithCompletion:(id)a3;
- (void)cancelTrainingViaXPCForID:(int64_t)a3;
- (void)cleanupViaXPCWithCompletion:(id)a3;
- (void)setupWithLocaleID:(id)a3 appDomain:(id)a4 siriSharedUserId:(id)a5;
- (void)voiceProfileWithCompletion:(id)a3;
- (void)vtuiTrainingXPCDisconnected;
@end

@implementation SSRVTUITrainingMessageHandler

- (void)audioSourceWithCompletion:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SSRVTUITrainingManager *)self->_trainingManager audioSource];
  v6 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[SSRVTUITrainingMessageHandler audioSourceWithCompletion:]";
    v10 = 2048;
    v11 = v5;
    _os_log_impl(&dword_225E12000, v6, OS_LOG_TYPE_DEFAULT, "%s audioSource : %lu", &v8, 0x16u);
  }

  if (v4)
  {
    v4[2](v4, v5);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)voiceProfileWithCompletion:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[SSRVTUITrainingMessageHandler voiceProfileWithCompletion:]";
    _os_log_impl(&dword_225E12000, v5, OS_LOG_TYPE_DEFAULT, "%s ", &v8, 0xCu);
  }

  v6 = [(SSRVTUITrainingManager *)self->_trainingManager voiceProfile];
  if (v4)
  {
    v4[2](v4, v6);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)cancelTrainingViaXPCForID:(int64_t)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[SSRVTUITrainingMessageHandler cancelTrainingViaXPCForID:]";
    _os_log_impl(&dword_225E12000, v5, OS_LOG_TYPE_DEFAULT, "%s ", &v7, 0xCu);
  }

  [(SSRVTUITrainingManager *)self->_trainingManager cancelTrainingForID:a3];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)cleanupViaXPCWithCompletion:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[SSRVTUITrainingMessageHandler cleanupViaXPCWithCompletion:]";
    _os_log_impl(&dword_225E12000, v5, OS_LOG_TYPE_DEFAULT, "%s ", &v8, 0xCu);
  }

  v6 = [(SSRVTUITrainingManager *)self->_trainingManager cleanupWithCompletion:v4];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)vtuiTrainingXPCDisconnected
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[SSRVTUITrainingMessageHandler vtuiTrainingXPCDisconnected]";
    _os_log_impl(&dword_225E12000, v3, OS_LOG_TYPE_DEFAULT, "%s end training and clean up", &v6, 0xCu);
  }

  [(SSRVTUITrainingManager *)self->_trainingManager cancelTrainingForID:0];
  v4 = [(SSRVTUITrainingManager *)self->_trainingManager cleanupWithCompletion:0];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)setupWithLocaleID:(id)a3 appDomain:(id)a4 siriSharedUserId:(id)a5
{
  v32 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v25 = "[SSRVTUITrainingMessageHandler setupWithLocaleID:appDomain:siriSharedUserId:]";
    v26 = 2114;
    v27 = v8;
    v28 = 2114;
    v29 = v9;
    v30 = 2112;
    v31 = v10;
    _os_log_impl(&dword_225E12000, v11, OS_LOG_TYPE_DEFAULT, "%s localeIdentifier : %{public}@, appDomain : %{public}@, siriSharedUserId: %@", buf, 0x2Au);
  }

  objc_storeStrong(&self->_siriSharedUserId, a5);
  trainingManager = self->_trainingManager;
  if (trainingManager)
  {
    [(SSRVTUITrainingManager *)trainingManager setDelegate:0];
    v13 = dispatch_group_create();
    dispatch_group_enter(v13);
    v14 = self->_trainingManager;
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __78__SSRVTUITrainingMessageHandler_setupWithLocaleID_appDomain_siriSharedUserId___block_invoke;
    v22[3] = &unk_2785797A8;
    v23 = v13;
    v15 = v13;
    v16 = [(SSRVTUITrainingManager *)v14 cleanupWithCompletion:v22];
    v17 = dispatch_time(0, 5000000000);
    dispatch_group_wait(v15, v17);

    v18 = self->_trainingManager;
  }

  else
  {
    v18 = 0;
  }

  self->_trainingManager = 0;

  v19 = [[SSRVTUITrainingManager alloc] initWithLocaleIdentifier:v8 withAppDomain:v9 withSiriSharedUserId:self->_siriSharedUserId withAudioProviderSelector:self->_audioProviderSelector shouldTrainViaXPC:0];
  v20 = self->_trainingManager;
  self->_trainingManager = v19;

  [(SSRVTUITrainingManager *)self->_trainingManager setDelegate:self];
  v21 = *MEMORY[0x277D85DE8];
}

- (SSRVTUITrainingMessageHandler)initWithAudioProvidingSelector:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SSRVTUITrainingMessageHandler;
  v6 = [(SSRVTUITrainingMessageHandler *)&v9 init];
  if (v6)
  {
    SSRLogInitIfNeeded();
    trainingManager = v6->_trainingManager;
    v6->_trainingManager = 0;

    objc_storeStrong(&v6->_audioProviderSelector, a3);
  }

  return v6;
}

@end