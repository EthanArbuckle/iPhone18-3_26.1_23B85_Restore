@interface VTXPCServiceClient
- (VTXPCServiceClient)init;
- (id)_service;
- (id)getFirstChanceAudioBuffer;
- (id)getFirstChanceTriggeredDate;
- (id)getFirstChanceVTEventInfo;
- (id)requestCurrentBuiltInRTModelDictionary;
- (id)requestCurrentVoiceTriggerAssetDictionary;
- (int64_t)getVoiceTriggerCount;
- (int64_t)isLastTriggerFollowedBySpeech;
- (unsigned)getLastTriggerType;
- (void)clearVoiceTriggerCount;
- (void)dealloc;
- (void)enableVoiceTrigger:(BOOL)trigger withAssertion:(id)assertion;
- (void)notifySecondChanceRequest;
- (void)notifyTriggerEventRequest;
- (void)notifyVoiceTriggeredSiriSessionCancelled:(id)cancelled;
- (void)requestAudioCapture:(double)capture;
- (void)requestCurrentVoiceTriggerAssetDictionaryWithReply:(id)reply;
- (void)resetAssertions;
- (void)setCurrentBuiltInRTModelDictionary:(id)dictionary;
- (void)setPhraseSpotterBypassing:(BOOL)bypassing timeout:(double)timeout;
- (void)setRaiseToSpeakBypassing:(BOOL)bypassing timeout:(double)timeout;
@end

@implementation VTXPCServiceClient

- (id)_service
{
  vtxConnection = self->_vtxConnection;
  if (!vtxConnection)
  {
    v4 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.voicetrigger.voicetriggerservice" options:4096];
    v5 = self->_vtxConnection;
    self->_vtxConnection = v4;

    v6 = self->_vtxConnection;
    v7 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28371F818];
    [(NSXPCConnection *)v6 setRemoteObjectInterface:v7];

    [(NSXPCConnection *)self->_vtxConnection setInterruptionHandler:&__block_literal_global_2007];
    [(NSXPCConnection *)self->_vtxConnection setInvalidationHandler:&__block_literal_global_84];
    [(NSXPCConnection *)self->_vtxConnection resume];
    vtxConnection = self->_vtxConnection;
  }

  return [(NSXPCConnection *)vtxConnection remoteObjectProxy];
}

- (VTXPCServiceClient)init
{
  v6.receiver = self;
  v6.super_class = VTXPCServiceClient;
  v2 = [(VTXPCServiceClient *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("VTServiceClient", 0);
    queue = v2->_queue;
    v2->_queue = v3;
  }

  return v2;
}

- (id)requestCurrentBuiltInRTModelDictionary
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__1988;
  v18 = __Block_byref_object_dispose__1989;
  v19 = 0;
  v3 = dispatch_semaphore_create(0);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__VTXPCServiceClient_requestCurrentBuiltInRTModelDictionary__block_invoke;
  block[3] = &unk_2784ECA68;
  block[4] = self;
  v13 = &v14;
  v5 = v3;
  v12 = v5;
  dispatch_async(queue, block);
  v6 = dispatch_time(0, 1000000000);
  if (dispatch_semaphore_wait(v5, v6))
  {
    v7 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_223A31000, v7, OS_LOG_TYPE_DEFAULT, "Query for VoiceTrigger asset timed out", v10, 2u);
    }
  }

  v8 = v15[5];

  _Block_object_dispose(&v14, 8);

  return v8;
}

void __60__VTXPCServiceClient_requestCurrentBuiltInRTModelDictionary__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _service];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __60__VTXPCServiceClient_requestCurrentBuiltInRTModelDictionary__block_invoke_2;
  v5[3] = &unk_2784EC6C8;
  v4 = *(a1 + 40);
  v3 = v4;
  v6 = v4;
  [v2 requestCurrentBuiltInRTModelDictionaryWithReply:v5];
}

void __60__VTXPCServiceClient_requestCurrentBuiltInRTModelDictionary__block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)dealloc
{
  vtxConnection = self->_vtxConnection;
  if (vtxConnection)
  {
    [(NSXPCConnection *)vtxConnection invalidate];
  }

  v4.receiver = self;
  v4.super_class = VTXPCServiceClient;
  [(VTXPCServiceClient *)&v4 dealloc];
}

void __30__VTXPCServiceClient__service__block_invoke_82()
{
  v0 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_223A31000, v0, OS_LOG_TYPE_DEFAULT, "VTXConnection Invalidated", v1, 2u);
  }
}

- (void)setCurrentBuiltInRTModelDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__VTXPCServiceClient_setCurrentBuiltInRTModelDictionary___block_invoke;
  v7[3] = &unk_2784ED118;
  v7[4] = self;
  v8 = dictionaryCopy;
  v6 = dictionaryCopy;
  dispatch_async(queue, v7);
}

void __57__VTXPCServiceClient_setCurrentBuiltInRTModelDictionary___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _service];
  [v2 setCurrentBuiltInRTModelDictionary:*(a1 + 40)];
}

- (void)requestCurrentVoiceTriggerAssetDictionaryWithReply:(id)reply
{
  replyCopy = reply;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __73__VTXPCServiceClient_requestCurrentVoiceTriggerAssetDictionaryWithReply___block_invoke;
  v7[3] = &unk_2784ECD30;
  v7[4] = self;
  v8 = replyCopy;
  v6 = replyCopy;
  dispatch_async(queue, v7);
}

void __73__VTXPCServiceClient_requestCurrentVoiceTriggerAssetDictionaryWithReply___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _service];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __73__VTXPCServiceClient_requestCurrentVoiceTriggerAssetDictionaryWithReply___block_invoke_2;
  v3[3] = &unk_2784EC718;
  v4 = *(a1 + 40);
  [v2 requestCurrentVoiceTriggerAssetDictionaryWithReply:v3];
}

- (id)requestCurrentVoiceTriggerAssetDictionary
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__1988;
  v18 = __Block_byref_object_dispose__1989;
  v19 = 0;
  v3 = dispatch_semaphore_create(0);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__VTXPCServiceClient_requestCurrentVoiceTriggerAssetDictionary__block_invoke;
  block[3] = &unk_2784ECA68;
  block[4] = self;
  v13 = &v14;
  v5 = v3;
  v12 = v5;
  dispatch_async(queue, block);
  v6 = dispatch_time(0, 1000000000);
  if (dispatch_semaphore_wait(v5, v6))
  {
    v7 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_223A31000, v7, OS_LOG_TYPE_DEFAULT, "Query for VoiceTrigger asset timed out", v10, 2u);
    }
  }

  v8 = v15[5];

  _Block_object_dispose(&v14, 8);

  return v8;
}

void __63__VTXPCServiceClient_requestCurrentVoiceTriggerAssetDictionary__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _service];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __63__VTXPCServiceClient_requestCurrentVoiceTriggerAssetDictionary__block_invoke_2;
  v5[3] = &unk_2784EC6C8;
  v4 = *(a1 + 40);
  v3 = v4;
  v6 = v4;
  [v2 requestCurrentVoiceTriggerAssetDictionaryWithReply:v5];
}

void __63__VTXPCServiceClient_requestCurrentVoiceTriggerAssetDictionary__block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)requestAudioCapture:(double)capture
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __42__VTXPCServiceClient_requestAudioCapture___block_invoke;
  v4[3] = &unk_2784ED0C8;
  v4[4] = self;
  *&v4[5] = capture;
  dispatch_async(queue, v4);
}

void __42__VTXPCServiceClient_requestAudioCapture___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _service];
  [v2 requestAudioCapture:*(a1 + 40)];
}

- (int64_t)isLastTriggerFollowedBySpeech
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v3 = dispatch_semaphore_create(0);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__VTXPCServiceClient_isLastTriggerFollowedBySpeech__block_invoke;
  block[3] = &unk_2784ECA68;
  block[4] = self;
  v13 = &v14;
  v5 = v3;
  v12 = v5;
  dispatch_async(queue, block);
  v6 = dispatch_time(0, 5000000000);
  if (dispatch_semaphore_wait(v5, v6))
  {
    v7 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_223A31000, v7, OS_LOG_TYPE_DEFAULT, "Query for followedBySpeech timed out", v10, 2u);
    }
  }

  v8 = v15[3];

  _Block_object_dispose(&v14, 8);
  return v8;
}

void __51__VTXPCServiceClient_isLastTriggerFollowedBySpeech__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _service];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __51__VTXPCServiceClient_isLastTriggerFollowedBySpeech__block_invoke_2;
  v5[3] = &unk_2784EC678;
  v4 = *(a1 + 40);
  v3 = v4;
  v6 = v4;
  [v2 isLastTriggerFollowedBySpeechWithReply:v5];
}

- (id)getFirstChanceTriggeredDate
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__1988;
  v18 = __Block_byref_object_dispose__1989;
  v19 = 0;
  v3 = dispatch_semaphore_create(0);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__VTXPCServiceClient_getFirstChanceTriggeredDate__block_invoke;
  block[3] = &unk_2784ECA68;
  block[4] = self;
  v13 = &v14;
  v5 = v3;
  v12 = v5;
  dispatch_async(queue, block);
  v6 = dispatch_time(0, 5000000000);
  if (dispatch_semaphore_wait(v5, v6))
  {
    v7 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_223A31000, v7, OS_LOG_TYPE_DEFAULT, "Query for voice trigger first chance triggered date", v10, 2u);
    }
  }

  v8 = v15[5];

  _Block_object_dispose(&v14, 8);

  return v8;
}

void __49__VTXPCServiceClient_getFirstChanceTriggeredDate__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _service];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __49__VTXPCServiceClient_getFirstChanceTriggeredDate__block_invoke_2;
  v5[3] = &unk_2784EC6F0;
  v4 = *(a1 + 40);
  v3 = v4;
  v6 = v4;
  [v2 getFirstChanceTriggeredDateWithReply:v5];
}

void __49__VTXPCServiceClient_getFirstChanceTriggeredDate__block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (id)getFirstChanceVTEventInfo
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__1988;
  v18 = __Block_byref_object_dispose__1989;
  v19 = 0;
  v3 = dispatch_semaphore_create(0);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__VTXPCServiceClient_getFirstChanceVTEventInfo__block_invoke;
  block[3] = &unk_2784ECA68;
  block[4] = self;
  v13 = &v14;
  v5 = v3;
  v12 = v5;
  dispatch_async(queue, block);
  v6 = dispatch_time(0, 5000000000);
  if (dispatch_semaphore_wait(v5, v6))
  {
    v7 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_223A31000, v7, OS_LOG_TYPE_DEFAULT, "Query for voice trigger first chance vt event info timed out", v10, 2u);
    }
  }

  v8 = v15[5];

  _Block_object_dispose(&v14, 8);

  return v8;
}

void __47__VTXPCServiceClient_getFirstChanceVTEventInfo__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _service];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __47__VTXPCServiceClient_getFirstChanceVTEventInfo__block_invoke_2;
  v5[3] = &unk_2784EC6C8;
  v4 = *(a1 + 40);
  v3 = v4;
  v6 = v4;
  [v2 getFirstChanceVTEventInfoWithReply:v5];
}

void __47__VTXPCServiceClient_getFirstChanceVTEventInfo__block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (id)getFirstChanceAudioBuffer
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__1988;
  v18 = __Block_byref_object_dispose__1989;
  v19 = 0;
  v3 = dispatch_semaphore_create(0);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__VTXPCServiceClient_getFirstChanceAudioBuffer__block_invoke;
  block[3] = &unk_2784ECA68;
  block[4] = self;
  v13 = &v14;
  v5 = v3;
  v12 = v5;
  dispatch_async(queue, block);
  v6 = dispatch_time(0, 5000000000);
  if (dispatch_semaphore_wait(v5, v6))
  {
    v7 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_223A31000, v7, OS_LOG_TYPE_DEFAULT, "Query for voice trigger first chance audio buffer timed out", v10, 2u);
    }
  }

  v8 = v15[5];

  _Block_object_dispose(&v14, 8);

  return v8;
}

void __47__VTXPCServiceClient_getFirstChanceAudioBuffer__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _service];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __47__VTXPCServiceClient_getFirstChanceAudioBuffer__block_invoke_2;
  v5[3] = &unk_2784EC6A0;
  v4 = *(a1 + 40);
  v3 = v4;
  v6 = v4;
  [v2 getFirstChanceAudioBufferWithReply:v5];
}

void __47__VTXPCServiceClient_getFirstChanceAudioBuffer__block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (int64_t)getVoiceTriggerCount
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v3 = dispatch_semaphore_create(0);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__VTXPCServiceClient_getVoiceTriggerCount__block_invoke;
  block[3] = &unk_2784ECA68;
  block[4] = self;
  v13 = &v14;
  v5 = v3;
  v12 = v5;
  dispatch_async(queue, block);
  v6 = dispatch_time(0, 5000000000);
  if (dispatch_semaphore_wait(v5, v6))
  {
    v7 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_223A31000, v7, OS_LOG_TYPE_DEFAULT, "Query for voice trigger count timed out", v10, 2u);
    }
  }

  v8 = v15[3];

  _Block_object_dispose(&v14, 8);
  return v8;
}

void __42__VTXPCServiceClient_getVoiceTriggerCount__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _service];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __42__VTXPCServiceClient_getVoiceTriggerCount__block_invoke_2;
  v5[3] = &unk_2784EC678;
  v4 = *(a1 + 40);
  v3 = v4;
  v6 = v4;
  [v2 getVoiceTriggerCountWithReply:v5];
}

- (void)clearVoiceTriggerCount
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__VTXPCServiceClient_clearVoiceTriggerCount__block_invoke;
  block[3] = &unk_2784ECFF8;
  block[4] = self;
  dispatch_async(queue, block);
}

void __44__VTXPCServiceClient_clearVoiceTriggerCount__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _service];
  [v1 clearVoiceTriggerCount];
}

- (void)resetAssertions
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__VTXPCServiceClient_resetAssertions__block_invoke;
  block[3] = &unk_2784ECFF8;
  block[4] = self;
  dispatch_async(queue, block);
}

void __37__VTXPCServiceClient_resetAssertions__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _service];
  [v1 resetAssertions];
}

- (unsigned)getLastTriggerType
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v3 = dispatch_semaphore_create(0);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__VTXPCServiceClient_getLastTriggerType__block_invoke;
  block[3] = &unk_2784ECA68;
  block[4] = self;
  v13 = &v14;
  v5 = v3;
  v12 = v5;
  dispatch_async(queue, block);
  v6 = dispatch_time(0, 5000000000);
  if (dispatch_semaphore_wait(v5, v6))
  {
    v7 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_223A31000, v7, OS_LOG_TYPE_DEFAULT, "Query for last trigger event type timed out", v10, 2u);
    }
  }

  v8 = *(v15 + 24);

  _Block_object_dispose(&v14, 8);
  return v8;
}

void __40__VTXPCServiceClient_getLastTriggerType__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _service];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __40__VTXPCServiceClient_getLastTriggerType__block_invoke_2;
  v5[3] = &unk_2784EC650;
  v4 = *(a1 + 40);
  v3 = v4;
  v6 = v4;
  [v2 queryLastTriggerEventTypeWithReply:v5];
}

- (void)notifyTriggerEventRequest
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__VTXPCServiceClient_notifyTriggerEventRequest__block_invoke;
  block[3] = &unk_2784ECFF8;
  block[4] = self;
  dispatch_async(queue, block);
}

void __47__VTXPCServiceClient_notifyTriggerEventRequest__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _service];
  [v1 notifyTriggerEventRequest];
}

- (void)notifySecondChanceRequest
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__VTXPCServiceClient_notifySecondChanceRequest__block_invoke;
  block[3] = &unk_2784ECFF8;
  block[4] = self;
  dispatch_async(queue, block);
}

void __47__VTXPCServiceClient_notifySecondChanceRequest__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _service];
  [v1 notifySecondChanceRequest];
}

- (void)notifyVoiceTriggeredSiriSessionCancelled:(id)cancelled
{
  cancelledCopy = cancelled;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __63__VTXPCServiceClient_notifyVoiceTriggeredSiriSessionCancelled___block_invoke;
  v7[3] = &unk_2784ED118;
  v7[4] = self;
  v8 = cancelledCopy;
  v6 = cancelledCopy;
  dispatch_async(queue, v7);
}

void __63__VTXPCServiceClient_notifyVoiceTriggeredSiriSessionCancelled___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _service];
  [v2 notifyVoiceTriggeredSiriSessionCancelled:*(a1 + 40)];
}

- (void)setRaiseToSpeakBypassing:(BOOL)bypassing timeout:(double)timeout
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__VTXPCServiceClient_setRaiseToSpeakBypassing_timeout___block_invoke;
  block[3] = &unk_2784EC628;
  block[4] = self;
  bypassingCopy = bypassing;
  *&block[5] = timeout;
  dispatch_async(queue, block);
}

void __55__VTXPCServiceClient_setRaiseToSpeakBypassing_timeout___block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) _service];
  v2 = *(a1 + 48);
  v3 = *(a1 + 40);
  v4 = [MEMORY[0x277CCAC38] processInfo];
  [v4 systemUptime];
  [v6 setRaiseToSpeakBypassing:v2 timeout:v3 timestamp:v5];
}

- (void)setPhraseSpotterBypassing:(BOOL)bypassing timeout:(double)timeout
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__VTXPCServiceClient_setPhraseSpotterBypassing_timeout___block_invoke;
  block[3] = &unk_2784EC628;
  block[4] = self;
  bypassingCopy = bypassing;
  *&block[5] = timeout;
  dispatch_async(queue, block);
}

void __56__VTXPCServiceClient_setPhraseSpotterBypassing_timeout___block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) _service];
  v2 = *(a1 + 48);
  v3 = *(a1 + 40);
  v4 = [MEMORY[0x277CCAC38] processInfo];
  [v4 systemUptime];
  [v6 setPhraseSpotterBypassing:v2 timeout:v3 timestamp:v5];
}

- (void)enableVoiceTrigger:(BOOL)trigger withAssertion:(id)assertion
{
  assertionCopy = assertion;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__VTXPCServiceClient_enableVoiceTrigger_withAssertion___block_invoke;
  block[3] = &unk_2784EC600;
  triggerCopy = trigger;
  block[4] = self;
  v10 = assertionCopy;
  v8 = assertionCopy;
  dispatch_async(queue, block);
}

void __55__VTXPCServiceClient_enableVoiceTrigger_withAssertion___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) _service];
  v2 = *(a1 + 48);
  v3 = *(a1 + 40);
  v4 = [MEMORY[0x277CCAC38] processInfo];
  [v4 systemUptime];
  [v5 enableVoiceTrigger:v2 withAssertion:v3 timestamp:?];
}

void __30__VTXPCServiceClient__service__block_invoke()
{
  v0 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_223A31000, v0, OS_LOG_TYPE_DEFAULT, "VTXConnection Interrupted", v1, 2u);
  }
}

@end