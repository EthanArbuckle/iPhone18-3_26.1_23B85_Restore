@interface SSRRPISampler
+ (id)sharedInstance;
+ (void)deleteAllRPISampledData;
- (SSRRPISampler)init;
- (void)getActiveRequestIdsForLocale:(id)locale date:(id)date completion:(id)completion;
- (void)getAudioIdWithRequestId:(id)id languageCode:(id)code date:(id)date completion:(id)completion;
- (void)getEnrollmentSelectionStatusWithLocale:(id)locale completion:(id)completion;
- (void)removeAllSamplingMetaDataWithCompletion:(id)completion;
- (void)removeMappingOnAndBefore:(id)before completion:(id)completion;
- (void)removeMappingWithLocale:(id)locale date:(id)date completion:(id)completion;
- (void)removeRequestIdToAudioIdMappingWithCompletion:(id)completion;
- (void)updateStatus:(id)status languageCode:(id)code completion:(id)completion;
- (void)writeIntoMappingWithRequestId:(id)id audioId:(id)audioId date:(id)date locale:(id)locale completion:(id)completion;
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

- (void)removeMappingOnAndBefore:(id)before completion:(id)completion
{
  beforeCopy = before;
  completionCopy = completion;
  queue = self->_queue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __53__SSRRPISampler_removeMappingOnAndBefore_completion___block_invoke;
  v11[3] = &unk_278579618;
  v12 = beforeCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = beforeCopy;
  dispatch_async(queue, v11);
}

- (void)getActiveRequestIdsForLocale:(id)locale date:(id)date completion:(id)completion
{
  localeCopy = locale;
  dateCopy = date;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__SSRRPISampler_getActiveRequestIdsForLocale_date_completion___block_invoke;
  block[3] = &unk_278579218;
  v16 = localeCopy;
  v17 = dateCopy;
  v18 = completionCopy;
  v12 = completionCopy;
  v13 = dateCopy;
  v14 = localeCopy;
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

- (void)removeAllSamplingMetaDataWithCompletion:(id)completion
{
  completionCopy = completion;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__SSRRPISampler_removeAllSamplingMetaDataWithCompletion___block_invoke;
  block[3] = &unk_2785795F0;
  v8 = completionCopy;
  v6 = completionCopy;
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

- (void)removeRequestIdToAudioIdMappingWithCompletion:(id)completion
{
  completionCopy = completion;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__SSRRPISampler_removeRequestIdToAudioIdMappingWithCompletion___block_invoke;
  block[3] = &unk_2785795F0;
  v8 = completionCopy;
  v6 = completionCopy;
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

- (void)removeMappingWithLocale:(id)locale date:(id)date completion:(id)completion
{
  localeCopy = locale;
  dateCopy = date;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__SSRRPISampler_removeMappingWithLocale_date_completion___block_invoke;
  block[3] = &unk_278579218;
  v16 = localeCopy;
  v17 = dateCopy;
  v18 = completionCopy;
  v12 = completionCopy;
  v13 = dateCopy;
  v14 = localeCopy;
  dispatch_async(queue, block);
}

- (void)writeIntoMappingWithRequestId:(id)id audioId:(id)audioId date:(id)date locale:(id)locale completion:(id)completion
{
  idCopy = id;
  audioIdCopy = audioId;
  dateCopy = date;
  localeCopy = locale;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __78__SSRRPISampler_writeIntoMappingWithRequestId_audioId_date_locale_completion___block_invoke;
  block[3] = &unk_278579438;
  v24 = idCopy;
  v25 = audioIdCopy;
  v26 = dateCopy;
  v27 = localeCopy;
  v28 = completionCopy;
  v18 = completionCopy;
  v19 = localeCopy;
  v20 = dateCopy;
  v21 = audioIdCopy;
  v22 = idCopy;
  dispatch_async(queue, block);
}

- (void)getAudioIdWithRequestId:(id)id languageCode:(id)code date:(id)date completion:(id)completion
{
  idCopy = id;
  codeCopy = code;
  dateCopy = date;
  completionCopy = completion;
  queue = self->_queue;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __70__SSRRPISampler_getAudioIdWithRequestId_languageCode_date_completion___block_invoke;
  v19[3] = &unk_278579508;
  v20 = idCopy;
  v21 = codeCopy;
  v22 = dateCopy;
  v23 = completionCopy;
  v15 = completionCopy;
  v16 = dateCopy;
  v17 = codeCopy;
  v18 = idCopy;
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

- (void)updateStatus:(id)status languageCode:(id)code completion:(id)completion
{
  statusCopy = status;
  codeCopy = code;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__SSRRPISampler_updateStatus_languageCode_completion___block_invoke;
  block[3] = &unk_278579218;
  v16 = statusCopy;
  v17 = codeCopy;
  v18 = completionCopy;
  v12 = completionCopy;
  v13 = codeCopy;
  v14 = statusCopy;
  dispatch_async(queue, block);
}

uint64_t __54__SSRRPISampler_updateStatus_languageCode_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) unsignedIntegerValue];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);

  return [SSREnrollmentSamplingMetaDataHelper updateSelectionStatus:v2 languageCode:v3 completion:v4];
}

- (void)getEnrollmentSelectionStatusWithLocale:(id)locale completion:(id)completion
{
  localeCopy = locale;
  completionCopy = completion;
  queue = self->_queue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __67__SSRRPISampler_getEnrollmentSelectionStatusWithLocale_completion___block_invoke;
  v11[3] = &unk_278579618;
  v12 = localeCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = localeCopy;
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

    defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__handleVoiceProfileRPICleanupEvent name:@"com.apple.voiceprofile.rpicleanup" object:0];
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