@interface SSRVoiceProfileManagerXPCClient
+ (id)createVoiceProfileManagerXPCConnection;
+ (id)sharedClient;
- (SSRVoiceProfileManagerXPCClient)init;
- (void)importVoiceProfile:(id)a3 appDomain:(id)a4 withSharedUserId:(id)a5 withPersonaId:(id)a6 withLocale:(id)a7 withAsset:(id)a8 trainWithPayload:(BOOL)a9 withCompletion:(id)a10;
- (void)markSATEnrollmentSuccessForVoiceProfile:(id)a3 completion:(id)a4;
@end

@implementation SSRVoiceProfileManagerXPCClient

- (void)importVoiceProfile:(id)a3 appDomain:(id)a4 withSharedUserId:(id)a5 withPersonaId:(id)a6 withLocale:(id)a7 withAsset:(id)a8 trainWithPayload:(BOOL)a9 withCompletion:(id)a10
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a10;
  queue = self->_queue;
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __148__SSRVoiceProfileManagerXPCClient_importVoiceProfile_appDomain_withSharedUserId_withPersonaId_withLocale_withAsset_trainWithPayload_withCompletion___block_invoke;
  v31[3] = &unk_278579640;
  v37 = v21;
  v38 = v22;
  v32 = v16;
  v33 = v17;
  v34 = v18;
  v35 = v19;
  v36 = v20;
  v39 = a9;
  v24 = v21;
  v25 = v20;
  v26 = v19;
  v27 = v18;
  v28 = v17;
  v29 = v16;
  v30 = v22;
  dispatch_async(queue, v31);
}

void __148__SSRVoiceProfileManagerXPCClient_importVoiceProfile_appDomain_withSharedUserId_withPersonaId_withLocale_withAsset_trainWithPayload_withCompletion___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D01970];
  v3 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v25 = "[SSRVoiceProfileManagerXPCClient importVoiceProfile:appDomain:withSharedUserId:withPersonaId:withLocale:withAsset:trainWithPayload:withCompletion:]_block_invoke";
    _os_log_impl(&dword_225E12000, v3, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __148__SSRVoiceProfileManagerXPCClient_importVoiceProfile_appDomain_withSharedUserId_withPersonaId_withLocale_withAsset_trainWithPayload_withCompletion___block_invoke_70;
  v22[3] = &unk_278579690;
  v23 = *(a1 + 80);
  v4 = MEMORY[0x22AA71400](v22);
  v5 = +[SSRVoiceProfileManagerXPCClient createVoiceProfileManagerXPCConnection];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __148__SSRVoiceProfileManagerXPCClient_importVoiceProfile_appDomain_withSharedUserId_withPersonaId_withLocale_withAsset_trainWithPayload_withCompletion___block_invoke_71;
  v20[3] = &unk_2785795F0;
  v6 = v4;
  v21 = v6;
  [v5 setInvalidationHandler:v20];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __148__SSRVoiceProfileManagerXPCClient_importVoiceProfile_appDomain_withSharedUserId_withPersonaId_withLocale_withAsset_trainWithPayload_withCompletion___block_invoke_76;
  v18[3] = &unk_2785795F0;
  v7 = v6;
  v19 = v7;
  [v5 setInterruptionHandler:v18];
  [v5 resume];
  v8 = *v2;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v25 = "[SSRVoiceProfileManagerXPCClient importVoiceProfile:appDomain:withSharedUserId:withPersonaId:withLocale:withAsset:trainWithPayload:withCompletion:]_block_invoke";
    _os_log_impl(&dword_225E12000, v8, OS_LOG_TYPE_DEFAULT, "%s XPC connection established", buf, 0xCu);
  }

  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __148__SSRVoiceProfileManagerXPCClient_importVoiceProfile_appDomain_withSharedUserId_withPersonaId_withLocale_withAsset_trainWithPayload_withCompletion___block_invoke_81;
  v16 = &unk_278579690;
  v17 = v7;
  v9 = v7;
  v10 = [v5 remoteObjectProxyWithErrorHandler:&v13];
  LOBYTE(v12) = *(a1 + 88);
  [v10 importVoiceProfile:*(a1 + 32) appDomain:*(a1 + 40) withSharedUserId:*(a1 + 48) withPersonaId:*(a1 + 56) withLocale:*(a1 + 64) withAsset:*(a1 + 72) trainWithPayload:v12 withCompletion:{v9, v13, v14, v15, v16}];

  v11 = *MEMORY[0x277D85DE8];
}

void __148__SSRVoiceProfileManagerXPCClient_importVoiceProfile_appDomain_withSharedUserId_withPersonaId_withLocale_withAsset_trainWithPayload_withCompletion___block_invoke_70(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[SSRVoiceProfileManagerXPCClient importVoiceProfile:appDomain:withSharedUserId:withPersonaId:withLocale:withAsset:trainWithPayload:withCompletion:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_225E12000, v4, OS_LOG_TYPE_DEFAULT, "%s Completion called with error: %@", &v7, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __148__SSRVoiceProfileManagerXPCClient_importVoiceProfile_appDomain_withSharedUserId_withPersonaId_withLocale_withAsset_trainWithPayload_withCompletion___block_invoke_71(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.speakerrecognition" code:1106 userInfo:&unk_2839338B0];
  v3 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[SSRVoiceProfileManagerXPCClient importVoiceProfile:appDomain:withSharedUserId:withPersonaId:withLocale:withAsset:trainWithPayload:withCompletion:]_block_invoke";
    v7 = 2112;
    v8 = v2;
    _os_log_error_impl(&dword_225E12000, v3, OS_LOG_TYPE_ERROR, "%s %@", &v5, 0x16u);
  }

  (*(*(a1 + 32) + 16))();

  v4 = *MEMORY[0x277D85DE8];
}

void __148__SSRVoiceProfileManagerXPCClient_importVoiceProfile_appDomain_withSharedUserId_withPersonaId_withLocale_withAsset_trainWithPayload_withCompletion___block_invoke_76(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.speakerrecognition" code:1105 userInfo:&unk_2839338D8];
  v3 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[SSRVoiceProfileManagerXPCClient importVoiceProfile:appDomain:withSharedUserId:withPersonaId:withLocale:withAsset:trainWithPayload:withCompletion:]_block_invoke";
    v7 = 2112;
    v8 = v2;
    _os_log_error_impl(&dword_225E12000, v3, OS_LOG_TYPE_ERROR, "%s %@", &v5, 0x16u);
  }

  (*(*(a1 + 32) + 16))();

  v4 = *MEMORY[0x277D85DE8];
}

void __148__SSRVoiceProfileManagerXPCClient_importVoiceProfile_appDomain_withSharedUserId_withPersonaId_withLocale_withAsset_trainWithPayload_withCompletion___block_invoke_81(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[SSRVoiceProfileManagerXPCClient importVoiceProfile:appDomain:withSharedUserId:withPersonaId:withLocale:withAsset:trainWithPayload:withCompletion:]_block_invoke";
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&dword_225E12000, v4, OS_LOG_TYPE_DEFAULT, "%s Remote object proxy error: %@", &v6, 0x16u);
  }

  (*(*(a1 + 32) + 16))();

  v5 = *MEMORY[0x277D85DE8];
}

- (void)markSATEnrollmentSuccessForVoiceProfile:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __86__SSRVoiceProfileManagerXPCClient_markSATEnrollmentSuccessForVoiceProfile_completion___block_invoke;
  v11[3] = &unk_278579618;
  v12 = v6;
  v13 = v7;
  v9 = v6;
  v10 = v7;
  dispatch_async(queue, v11);
}

void __86__SSRVoiceProfileManagerXPCClient_markSATEnrollmentSuccessForVoiceProfile_completion___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D01970];
  v3 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v24 = "[SSRVoiceProfileManagerXPCClient markSATEnrollmentSuccessForVoiceProfile:completion:]_block_invoke";
    _os_log_impl(&dword_225E12000, v3, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __86__SSRVoiceProfileManagerXPCClient_markSATEnrollmentSuccessForVoiceProfile_completion___block_invoke_51;
  v21[3] = &unk_278579668;
  v22 = *(a1 + 40);
  v4 = MEMORY[0x22AA71400](v21);
  v5 = +[SSRVoiceProfileManagerXPCClient createVoiceProfileManagerXPCConnection];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __86__SSRVoiceProfileManagerXPCClient_markSATEnrollmentSuccessForVoiceProfile_completion___block_invoke_53;
  v19[3] = &unk_2785795F0;
  v6 = v4;
  v20 = v6;
  [v5 setInvalidationHandler:v19];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __86__SSRVoiceProfileManagerXPCClient_markSATEnrollmentSuccessForVoiceProfile_completion___block_invoke_60;
  v17[3] = &unk_2785795F0;
  v7 = v6;
  v18 = v7;
  [v5 setInterruptionHandler:v17];
  [v5 resume];
  v8 = *v2;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v24 = "[SSRVoiceProfileManagerXPCClient markSATEnrollmentSuccessForVoiceProfile:completion:]_block_invoke";
    _os_log_impl(&dword_225E12000, v8, OS_LOG_TYPE_DEFAULT, "%s XPC connection established", buf, 0xCu);
  }

  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __86__SSRVoiceProfileManagerXPCClient_markSATEnrollmentSuccessForVoiceProfile_completion___block_invoke_68;
  v15 = &unk_278579690;
  v16 = v7;
  v9 = v7;
  v10 = [v5 remoteObjectProxyWithErrorHandler:&v12];
  [v10 markSATEnrollmentSuccessForVoiceProfile:*(a1 + 32) completion:{v9, v12, v13, v14, v15}];

  v11 = *MEMORY[0x277D85DE8];
}

void __86__SSRVoiceProfileManagerXPCClient_markSATEnrollmentSuccessForVoiceProfile_completion___block_invoke_51(uint64_t a1, uint64_t a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315650;
    v10 = "[SSRVoiceProfileManagerXPCClient markSATEnrollmentSuccessForVoiceProfile:completion:]_block_invoke";
    v11 = 1024;
    v12 = a2;
    v13 = 2112;
    v14 = v5;
    _os_log_impl(&dword_225E12000, v6, OS_LOG_TYPE_DEFAULT, "%s Completion called with result: %i, error: %@", &v9, 0x1Cu);
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, a2, v5);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __86__SSRVoiceProfileManagerXPCClient_markSATEnrollmentSuccessForVoiceProfile_completion___block_invoke_53(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.speakerrecognition" code:1106 userInfo:&unk_283933860];
  v3 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[SSRVoiceProfileManagerXPCClient markSATEnrollmentSuccessForVoiceProfile:completion:]_block_invoke";
    v7 = 2112;
    v8 = v2;
    _os_log_error_impl(&dword_225E12000, v3, OS_LOG_TYPE_ERROR, "%s %@", &v5, 0x16u);
  }

  (*(*(a1 + 32) + 16))();

  v4 = *MEMORY[0x277D85DE8];
}

void __86__SSRVoiceProfileManagerXPCClient_markSATEnrollmentSuccessForVoiceProfile_completion___block_invoke_60(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.speakerrecognition" code:1105 userInfo:&unk_283933888];
  v3 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[SSRVoiceProfileManagerXPCClient markSATEnrollmentSuccessForVoiceProfile:completion:]_block_invoke";
    v7 = 2112;
    v8 = v2;
    _os_log_error_impl(&dword_225E12000, v3, OS_LOG_TYPE_ERROR, "%s %@", &v5, 0x16u);
  }

  (*(*(a1 + 32) + 16))();

  v4 = *MEMORY[0x277D85DE8];
}

void __86__SSRVoiceProfileManagerXPCClient_markSATEnrollmentSuccessForVoiceProfile_completion___block_invoke_68(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[SSRVoiceProfileManagerXPCClient markSATEnrollmentSuccessForVoiceProfile:completion:]_block_invoke";
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&dword_225E12000, v4, OS_LOG_TYPE_DEFAULT, "%s Remote object proxy error: %@", &v6, 0x16u);
  }

  (*(*(a1 + 32) + 16))();

  v5 = *MEMORY[0x277D85DE8];
}

- (SSRVoiceProfileManagerXPCClient)init
{
  v6.receiver = self;
  v6.super_class = SSRVoiceProfileManagerXPCClient;
  v2 = [(SSRVoiceProfileManagerXPCClient *)&v6 init];
  if (v2)
  {
    SSRLogInitIfNeeded();
    v3 = dispatch_queue_create("com.apple.siri.voiceprofilemanager.xpc.client", 0);
    queue = v2->_queue;
    v2->_queue = v3;
  }

  return v2;
}

+ (id)createVoiceProfileManagerXPCConnection
{
  CSLogInitIfNeeded();
  v2 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.siri.voiceprofilemanager.xpc" options:0];
  v3 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_283941E28];
  [v2 setRemoteObjectInterface:v3];

  return v2;
}

+ (id)sharedClient
{
  if (sharedClient_onceToken != -1)
  {
    dispatch_once(&sharedClient_onceToken, &__block_literal_global_8188);
  }

  v3 = sharedClient_sharedClient;

  return v3;
}

uint64_t __47__SSRVoiceProfileManagerXPCClient_sharedClient__block_invoke()
{
  sharedClient_sharedClient = objc_alloc_init(SSRVoiceProfileManagerXPCClient);

  return MEMORY[0x2821F96F8]();
}

@end