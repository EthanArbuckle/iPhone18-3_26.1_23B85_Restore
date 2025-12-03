@interface SSRSamplingManager
+ (id)sharedManager;
- (SSRSamplingManager)init;
- (id)getDonationDataWithEnrollmentId:(id)id error:(id *)error;
- (id)getDonationDataWithVoiceProfileId:(id)id error:(id *)error;
- (id)getDonationIdsWithEnrollmentId:(id)id error:(id *)error;
- (id)getEnrollmentDateWithLocale:(id)locale error:(id *)error;
- (id)getEnrollmentIdWithLocale:(id)locale error:(id *)error;
- (unint64_t)getEnrollmentSelectionStatusWithLocale:(id)locale error:(id *)error;
@end

@implementation SSRSamplingManager

- (id)getDonationDataWithVoiceProfileId:(id)id error:(id *)error
{
  idCopy = id;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__7275;
  v25 = __Block_byref_object_dispose__7276;
  v26 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__7275;
  v19 = __Block_byref_object_dispose__7276;
  v20 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__SSRSamplingManager_getDonationDataWithVoiceProfileId_error___block_invoke;
  block[3] = &unk_2785791B8;
  v13 = &v21;
  v8 = idCopy;
  v12 = v8;
  v14 = &v15;
  dispatch_sync(queue, block);
  if (error)
  {
    *error = v16[5];
  }

  v9 = v22[5];

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v21, 8);

  return v9;
}

void __62__SSRSamplingManager_getDonationDataWithVoiceProfileId_error___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = *(a1[6] + 8);
  obj = *(v3 + 40);
  v4 = [SSREnrollmentSamplingMetaDataHelper getDonationDataWithVoiceProfileId:v2 error:&obj];
  objc_storeStrong((v3 + 40), obj);
  v5 = *(a1[5] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (id)getDonationDataWithEnrollmentId:(id)id error:(id *)error
{
  idCopy = id;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__7275;
  v25 = __Block_byref_object_dispose__7276;
  v26 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__7275;
  v19 = __Block_byref_object_dispose__7276;
  v20 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__SSRSamplingManager_getDonationDataWithEnrollmentId_error___block_invoke;
  block[3] = &unk_2785791B8;
  v13 = &v21;
  v8 = idCopy;
  v12 = v8;
  v14 = &v15;
  dispatch_sync(queue, block);
  if (error)
  {
    *error = v16[5];
  }

  v9 = v22[5];

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v21, 8);

  return v9;
}

void __60__SSRSamplingManager_getDonationDataWithEnrollmentId_error___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = *(a1[6] + 8);
  obj = *(v3 + 40);
  v4 = [SSREnrollmentSamplingMetaDataHelper getDonationDataWithEnrollmentId:v2 error:&obj];
  objc_storeStrong((v3 + 40), obj);
  v5 = *(a1[5] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (id)getDonationIdsWithEnrollmentId:(id)id error:(id *)error
{
  idCopy = id;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__7275;
  v25 = __Block_byref_object_dispose__7276;
  v26 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__7275;
  v19 = __Block_byref_object_dispose__7276;
  v20 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__SSRSamplingManager_getDonationIdsWithEnrollmentId_error___block_invoke;
  block[3] = &unk_2785791B8;
  v13 = &v21;
  v8 = idCopy;
  v12 = v8;
  v14 = &v15;
  dispatch_sync(queue, block);
  if (error)
  {
    *error = v16[5];
  }

  v9 = v22[5];

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v21, 8);

  return v9;
}

void __59__SSRSamplingManager_getDonationIdsWithEnrollmentId_error___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = *(a1[6] + 8);
  obj = *(v3 + 40);
  v4 = [SSREnrollmentSamplingMetaDataHelper getDonationIdsWithEnrollmentId:v2 error:&obj];
  objc_storeStrong((v3 + 40), obj);
  v5 = *(a1[5] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (unint64_t)getEnrollmentSelectionStatusWithLocale:(id)locale error:(id *)error
{
  localeCopy = locale;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__7275;
  v19 = __Block_byref_object_dispose__7276;
  v20 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__SSRSamplingManager_getEnrollmentSelectionStatusWithLocale_error___block_invoke;
  block[3] = &unk_2785791B8;
  v13 = &v21;
  v8 = localeCopy;
  v12 = v8;
  v14 = &v15;
  dispatch_sync(queue, block);
  if (error)
  {
    *error = v16[5];
  }

  v9 = v22[3];

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v21, 8);

  return v9;
}

void __67__SSRSamplingManager_getEnrollmentSelectionStatusWithLocale_error___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = *(a1[6] + 8);
  obj = *(v3 + 40);
  v4 = [SSREnrollmentSamplingMetaDataHelper getEnrollmentSelectionStatusWithLocale:v2 error:&obj];
  objc_storeStrong((v3 + 40), obj);
  *(*(a1[5] + 8) + 24) = v4;
}

- (id)getEnrollmentIdWithLocale:(id)locale error:(id *)error
{
  localeCopy = locale;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__7275;
  v25 = __Block_byref_object_dispose__7276;
  v26 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__7275;
  v19 = __Block_byref_object_dispose__7276;
  v20 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__SSRSamplingManager_getEnrollmentIdWithLocale_error___block_invoke;
  block[3] = &unk_2785791B8;
  v13 = &v21;
  v8 = localeCopy;
  v12 = v8;
  v14 = &v15;
  dispatch_sync(queue, block);
  if (error)
  {
    *error = v16[5];
  }

  v9 = v22[5];

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v21, 8);

  return v9;
}

void __54__SSRSamplingManager_getEnrollmentIdWithLocale_error___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = *(a1[6] + 8);
  obj = *(v3 + 40);
  v4 = [SSREnrollmentSamplingMetaDataHelper getEnrollmentIdWithLocale:v2 error:&obj];
  objc_storeStrong((v3 + 40), obj);
  v5 = *(a1[5] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (id)getEnrollmentDateWithLocale:(id)locale error:(id *)error
{
  localeCopy = locale;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__7275;
  v25 = __Block_byref_object_dispose__7276;
  v26 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__7275;
  v19 = __Block_byref_object_dispose__7276;
  v20 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__SSRSamplingManager_getEnrollmentDateWithLocale_error___block_invoke;
  block[3] = &unk_2785791B8;
  v13 = &v21;
  v8 = localeCopy;
  v12 = v8;
  v14 = &v15;
  dispatch_sync(queue, block);
  if (error)
  {
    *error = v16[5];
  }

  v9 = v22[5];

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v21, 8);

  return v9;
}

void __56__SSRSamplingManager_getEnrollmentDateWithLocale_error___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = *(a1[6] + 8);
  obj = *(v3 + 40);
  v4 = [SSREnrollmentSamplingMetaDataHelper getEnrollmentDateWithLocale:v2 error:&obj];
  objc_storeStrong((v3 + 40), obj);
  v5 = *(a1[5] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (SSRSamplingManager)init
{
  v6.receiver = self;
  v6.super_class = SSRSamplingManager;
  v2 = [(SSRSamplingManager *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.corespeech.SSRSamplingManager", 0);
    queue = v2->_queue;
    v2->_queue = v3;
  }

  return v2;
}

+ (id)sharedManager
{
  if (sharedManager_onceToken != -1)
  {
    dispatch_once(&sharedManager_onceToken, &__block_literal_global_7285);
  }

  v3 = sharedManager_enrollmentSamplingManager;

  return v3;
}

uint64_t __35__SSRSamplingManager_sharedManager__block_invoke()
{
  sharedManager_enrollmentSamplingManager = objc_alloc_init(SSRSamplingManager);

  return MEMORY[0x2821F96F8]();
}

@end