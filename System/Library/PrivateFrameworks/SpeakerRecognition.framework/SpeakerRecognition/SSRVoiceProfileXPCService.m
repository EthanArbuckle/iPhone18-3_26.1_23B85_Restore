@interface SSRVoiceProfileXPCService
+ (id)sharedService;
- (SSRVoiceProfileXPCService)init;
- (id)_createXPCClientConnectionIfNeeded:(id)a3;
- (void)_teardownXPCClientIfNeeded;
- (void)fetchEnrollmentStatusForSiriProfileId:(id)a3 forLanguageCode:(id)a4 completion:(id)a5;
- (void)ssrVoiceProfileXPCClient:(id)a3 didDisconnect:(BOOL)a4;
@end

@implementation SSRVoiceProfileXPCService

- (void)_teardownXPCClientIfNeeded
{
  v9 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  xpcClient = self->_xpcClient;
  if (xpcClient)
  {
    v4 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315138;
      v8 = "[SSRVoiceProfileXPCService _teardownXPCClientIfNeeded]";
      _os_log_impl(&dword_225E12000, v4, OS_LOG_TYPE_DEFAULT, "%s ", &v7, 0xCu);
      xpcClient = self->_xpcClient;
    }

    [(SSRVoiceProfileXPCClient *)xpcClient setDelegate:0];
    v5 = self->_xpcClient;
    self->_xpcClient = 0;
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)ssrVoiceProfileXPCClient:(id)a3 didDisconnect:(BOOL)a4
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__SSRVoiceProfileXPCService_ssrVoiceProfileXPCClient_didDisconnect___block_invoke;
  block[3] = &unk_2785797A8;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __68__SSRVoiceProfileXPCService_ssrVoiceProfileXPCClient_didDisconnect___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[SSRVoiceProfileXPCService ssrVoiceProfileXPCClient:didDisconnect:]_block_invoke";
    _os_log_impl(&dword_225E12000, v2, OS_LOG_TYPE_DEFAULT, "%s reset xpcClient since it disconnected", &v5, 0xCu);
  }

  result = [*(a1 + 32) _teardownXPCClientIfNeeded];
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)_createXPCClientConnectionIfNeeded:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  if (v4)
  {
    v5 = v4;
LABEL_6:
    v9 = v5;
    goto LABEL_7;
  }

  xpcClient = self->_xpcClient;
  if (xpcClient || (v7 = objc_alloc_init(SSRVoiceProfileXPCClient), v8 = self->_xpcClient, self->_xpcClient = v7, v8, [(SSRVoiceProfileXPCClient *)self->_xpcClient setDelegate:self], [(SSRVoiceProfileXPCClient *)self->_xpcClient connect], (xpcClient = self->_xpcClient) != 0))
  {
    v5 = xpcClient;
    goto LABEL_6;
  }

  v12 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
  {
    v13 = 136315138;
    v14 = "[SSRVoiceProfileXPCService _createXPCClientConnectionIfNeeded:]";
    _os_log_error_impl(&dword_225E12000, v12, OS_LOG_TYPE_ERROR, "%s voiceProfileXPC client doesn't exist", &v13, 0xCu);
  }

  v9 = 0;
LABEL_7:

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)fetchEnrollmentStatusForSiriProfileId:(id)a3 forLanguageCode:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  queue = self->_queue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __94__SSRVoiceProfileXPCService_fetchEnrollmentStatusForSiriProfileId_forLanguageCode_completion___block_invoke;
  v15[3] = &unk_278579508;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(queue, v15);
}

void __94__SSRVoiceProfileXPCService_fetchEnrollmentStatusForSiriProfileId_forLanguageCode_completion___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[SSRVoiceProfileXPCService fetchEnrollmentStatusForSiriProfileId:forLanguageCode:completion:]_block_invoke";
    _os_log_impl(&dword_225E12000, v2, OS_LOG_TYPE_DEFAULT, "%s ", &v5, 0xCu);
  }

  v3 = [*(a1 + 32) _createXPCClientConnectionIfNeeded:0];
  [v3 fetchEnrollmentStatusForSiriProfileId:*(a1 + 40) forLanguageCode:*(a1 + 48) completion:*(a1 + 56)];

  v4 = *MEMORY[0x277D85DE8];
}

- (SSRVoiceProfileXPCService)init
{
  v6.receiver = self;
  v6.super_class = SSRVoiceProfileXPCService;
  v2 = [(SSRVoiceProfileXPCService *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("SSRVoiceProfileXPCService Queue", 0);
    queue = v2->_queue;
    v2->_queue = v3;
  }

  return v2;
}

+ (id)sharedService
{
  if (sharedService_onceToken != -1)
  {
    dispatch_once(&sharedService_onceToken, &__block_literal_global_5991);
  }

  v3 = sharedService_sharedInstance;

  return v3;
}

uint64_t __42__SSRVoiceProfileXPCService_sharedService__block_invoke()
{
  sharedService_sharedInstance = objc_alloc_init(SSRVoiceProfileXPCService);

  return MEMORY[0x2821F96F8]();
}

@end