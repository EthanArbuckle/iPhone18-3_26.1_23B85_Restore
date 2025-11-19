@interface SSRRPISampler
+ (id)sharedInstance;
+ (void)deleteAllRPISampledData;
- (SSRRPISampler)init;
- (void)getActiveRequestIdsForLocale:(id)a3 date:(id)a4 completion:(id)a5;
- (void)getAudioIdWithRequestId:(id)a3 languageCode:(id)a4 date:(id)a5 completion:(id)a6;
- (void)getEnrollmentSelectionStatusWithLocale:(id)a3 completion:(id)a4;
- (void)removeAllSamplingMetaDataWithCompletion:(id)a3;
- (void)removeMappingOnAndBefore:(id)a3 completion:(id)a4;
- (void)removeMappingWithLocale:(id)a3 date:(id)a4 completion:(id)a5;
- (void)removeRequestIdToAudioIdMappingWithCompletion:(id)a3;
- (void)updateStatus:(id)a3 languageCode:(id)a4 completion:(id)a5;
- (void)writeIntoMappingWithRequestId:(id)a3 audioId:(id)a4 date:(id)a5 locale:(id)a6 completion:(id)a7;
@end

@implementation SSRRPISampler

void __51__SSRRPISampler__handleVoiceProfileRPICleanupEvent__block_invoke()
{
  v4 = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v2 = 136315138;
    v3 = "[SSRRPISampler _handleVoiceProfileRPICleanupEvent]_block_invoke";
    _os_log_impl(&dword_225E12000, v0, OS_LOG_TYPE_DEFAULT, "%s ", &v2, 0xCu);
  }

  v1 = *MEMORY[0x277D85DE8];
}

- (void)removeMappingOnAndBefore:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __53__SSRRPISampler_removeMappingOnAndBefore_completion___block_invoke;
  v11[3] = &unk_278579618;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, v11);
}

- (void)getActiveRequestIdsForLocale:(id)a3 date:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__SSRRPISampler_getActiveRequestIdsForLocale_date_completion___block_invoke;
  block[3] = &unk_278579218;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(queue, block);
}

void __62__SSRRPISampler_getActiveRequestIdsForLocale_date_completion___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v7 = 0;
  v4 = [SSRRequestIdToAudioIdMappingHelper getRequestIdsForLocale:v2 date:v3 error:&v7];
  v5 = v7;
  v6 = a1[6];
  if (v6)
  {
    (*(v6 + 16))(v6, v5, v4);
  }
}

- (void)removeAllSamplingMetaDataWithCompletion:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__SSRRPISampler_removeAllSamplingMetaDataWithCompletion___block_invoke;
  block[3] = &unk_2785795F0;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, block);
}

uint64_t __57__SSRRPISampler_removeAllSamplingMetaDataWithCompletion___block_invoke(uint64_t a1)
{
  +[SSREnrollmentSamplingMetaDataHelper removeAllSamplingMetaData];
  +[SSRRPISampler deleteAllRPISampledData];
  result = *(a1 + 32);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)removeRequestIdToAudioIdMappingWithCompletion:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__SSRRPISampler_removeRequestIdToAudioIdMappingWithCompletion___block_invoke;
  block[3] = &unk_2785795F0;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, block);
}

uint64_t __63__SSRRPISampler_removeRequestIdToAudioIdMappingWithCompletion___block_invoke(uint64_t a1)
{
  +[SSRRequestIdToAudioIdMappingHelper removeMapping];
  result = *(a1 + 32);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)removeMappingWithLocale:(id)a3 date:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__SSRRPISampler_removeMappingWithLocale_date_completion___block_invoke;
  block[3] = &unk_278579218;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(queue, block);
}

- (void)writeIntoMappingWithRequestId:(id)a3 audioId:(id)a4 date:(id)a5 locale:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __78__SSRRPISampler_writeIntoMappingWithRequestId_audioId_date_locale_completion___block_invoke;
  block[3] = &unk_278579438;
  v24 = v12;
  v25 = v13;
  v26 = v14;
  v27 = v15;
  v28 = v16;
  v18 = v16;
  v19 = v15;
  v20 = v14;
  v21 = v13;
  v22 = v12;
  dispatch_async(queue, block);
}

- (void)getAudioIdWithRequestId:(id)a3 languageCode:(id)a4 date:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  queue = self->_queue;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __70__SSRRPISampler_getAudioIdWithRequestId_languageCode_date_completion___block_invoke;
  v19[3] = &unk_278579508;
  v20 = v10;
  v21 = v11;
  v22 = v12;
  v23 = v13;
  v15 = v13;
  v16 = v12;
  v17 = v11;
  v18 = v10;
  dispatch_async(queue, v19);
}

void __70__SSRRPISampler_getAudioIdWithRequestId_languageCode_date_completion___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v8 = 0;
  v5 = [SSRRequestIdToAudioIdMappingHelper getAudioIdWithRequestId:v2 languageCode:v3 date:v4 error:&v8];
  v6 = v8;
  v7 = a1[7];
  if (v7)
  {
    (*(v7 + 16))(v7, v6, v5);
  }
}

- (void)updateStatus:(id)a3 languageCode:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__SSRRPISampler_updateStatus_languageCode_completion___block_invoke;
  block[3] = &unk_278579218;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(queue, block);
}

uint64_t __54__SSRRPISampler_updateStatus_languageCode_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) unsignedIntegerValue];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);

  return [SSREnrollmentSamplingMetaDataHelper updateSelectionStatus:v2 languageCode:v3 completion:v4];
}

- (void)getEnrollmentSelectionStatusWithLocale:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __67__SSRRPISampler_getEnrollmentSelectionStatusWithLocale_completion___block_invoke;
  v11[3] = &unk_278579618;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, v11);
}

void __67__SSRRPISampler_getEnrollmentSelectionStatusWithLocale_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v7 = 0;
  v3 = [SSREnrollmentSamplingMetaDataHelper getEnrollmentSelectionStatusWithLocale:v2 error:&v7];
  v4 = v7;
  v5 = *(a1 + 40);
  if (v5)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v3];
    (*(v5 + 16))(v5, v4, v6);
  }
}

- (SSRRPISampler)init
{
  v7.receiver = self;
  v7.super_class = SSRRPISampler;
  v2 = [(SSRRPISampler *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_create("ssr.rpi.sampling Queue", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    v5 = [MEMORY[0x277CCA9A0] defaultCenter];
    [v5 addObserver:v2 selector:sel__handleVoiceProfileRPICleanupEvent name:@"com.apple.voiceprofile.rpicleanup" object:0];
  }

  return v2;
}

+ (void)deleteAllRPISampledData
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v6 = "+[SSRRPISampler deleteAllRPISampledData]";
    _os_log_impl(&dword_225E12000, v2, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  v4 = 0;
  [SSRRPISampledAudioUploader removeAllAudioDataWithError:&v4];
  +[SSRRequestIdToAudioIdMappingHelper removeMapping];
  +[SSRRequestIdToAudioIdMappingHelper purgeAllEntriesInSpkeakerIdBiome];
  v3 = *MEMORY[0x277D85DE8];
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, &__block_literal_global);
  }

  v3 = sharedInstance_sharedInstance;

  return v3;
}

uint64_t __31__SSRRPISampler_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance = objc_alloc_init(SSRRPISampler);

  return MEMORY[0x2821F96F8]();
}

@end