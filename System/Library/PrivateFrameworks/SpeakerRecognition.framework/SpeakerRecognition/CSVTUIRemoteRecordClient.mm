@interface CSVTUIRemoteRecordClient
- (BOOL)didPlayEndpointBeep;
- (BOOL)hasPendingTwoShotBeep;
- (BOOL)isConnected;
- (BOOL)isRecording;
- (BOOL)startRecordingWithOptions:(id)options error:(id *)error;
- (BOOL)stopRecording:(id *)recording;
- (BOOL)waitingForConnection:(double)connection error:(id *)error;
- (CSVTUIRemoteRecordClient)init;
- (CSVTUIRemoteRecordClient)initWithDeviceId:(id)id audioStreamHandleId:(unint64_t)handleId;
- (CSVTUIRemoteRecordClientDelegate)delegate;
- (id)voiceTriggerEventInfo;
- (void)_handleDidStartRecordingMessage:(id)message;
- (void)_handleServerError:(id)error;
- (void)_handleServerEvent:(id)event;
- (void)_handleServerMessage:(id)message;
- (void)_handleTwoShotDetectedMessage:(id)message;
- (void)dealloc;
- (void)didDeviceConnect:(id)connect;
- (void)didDeviceDisconnect:(id)disconnect;
@end

@implementation CSVTUIRemoteRecordClient

- (CSVTUIRemoteRecordClientDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)hasPendingTwoShotBeep
{
  v24[1] = *MEMORY[0x277D85DE8];
  v23 = @"COMMAND";
  v24[0] = @"hasPendingTwoShotBeep";
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:&v23 count:1];
  v4 = dispatch_semaphore_create(0);
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  queue = self->_queue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __49__CSVTUIRemoteRecordClient_hasPendingTwoShotBeep__block_invoke;
  v13[3] = &unk_278578598;
  v13[4] = self;
  v6 = v3;
  v14 = v6;
  v16 = &v17;
  v7 = v4;
  v15 = v7;
  dispatch_async(queue, v13);
  v8 = dispatch_time(0, 1000000000);
  if (dispatch_semaphore_wait(v7, v8))
  {
    v9 = *MEMORY[0x277D015D8];
    if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v22 = "[CSVTUIRemoteRecordClient hasPendingTwoShotBeep]";
      _os_log_error_impl(&dword_225E12000, v9, OS_LOG_TYPE_ERROR, "%s Getting reply timed out!!", buf, 0xCu);
    }
  }

  v10 = *(v18 + 24);

  _Block_object_dispose(&v17, 8);
  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

void __49__CSVTUIRemoteRecordClient_hasPendingTwoShotBeep__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if (*(*(a1 + 32) + 16))
  {
    v2 = [*(a1 + 40) _cs_xpcObject];
    v6 = *(a1 + 48);
    v3 = v6;
    xpc_remote_connection_send_message_with_reply();
  }

  else
  {
    v4 = *MEMORY[0x277D015D8];
    if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v8 = "[CSVTUIRemoteRecordClient hasPendingTwoShotBeep]_block_invoke";
      _os_log_error_impl(&dword_225E12000, v4, OS_LOG_TYPE_ERROR, "%s Cannot ask hasPendingTwoShotBeep while connection does not exist", buf, 0xCu);
    }

    dispatch_semaphore_signal(*(a1 + 48));
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __49__CSVTUIRemoteRecordClient_hasPendingTwoShotBeep__block_invoke_2(uint64_t a1, void *a2)
{
  v7 = a2;
  if (MEMORY[0x22AA717E0]() == MEMORY[0x277D86468])
  {
    v3 = objc_alloc(MEMORY[0x277CBEAC0]);
    v4 = [v3 _cs_initWithXPCObject:v7];

    if (v4)
    {
      v5 = [v4 objectForKeyedSubscript:@"replyHasPendingTwoShotBeep"];

      if (v5)
      {
        v6 = [v4 objectForKeyedSubscript:@"replyHasPendingTwoShotBeep"];
        *(*(*(a1 + 40) + 8) + 24) = [v6 BOOLValue];
      }
    }

    dispatch_semaphore_signal(*(a1 + 32));
  }
}

- (id)voiceTriggerEventInfo
{
  v31[1] = *MEMORY[0x277D85DE8];
  v30 = @"COMMAND";
  v31[0] = @"voiceTriggerEventInfo";
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:&v30 count:1];
  v4 = dispatch_semaphore_create(0);
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__4014;
  v24 = __Block_byref_object_dispose__4015;
  v25 = 0;
  queue = self->_queue;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __49__CSVTUIRemoteRecordClient_voiceTriggerEventInfo__block_invoke;
  v16[3] = &unk_278578598;
  v16[4] = self;
  v6 = v3;
  v17 = v6;
  v19 = &v20;
  v7 = v4;
  v18 = v7;
  dispatch_async(queue, v16);
  v8 = dispatch_time(0, 1000000000);
  v9 = dispatch_semaphore_wait(v7, v8);
  v10 = MEMORY[0x277D015D8];
  v11 = *MEMORY[0x277D015D8];
  if (v9 && os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v27 = "[CSVTUIRemoteRecordClient voiceTriggerEventInfo]";
    _os_log_error_impl(&dword_225E12000, v11, OS_LOG_TYPE_ERROR, "%s Getting reply timed out!!", buf, 0xCu);
    v11 = *v10;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v21[5];
    *buf = 136315394;
    v27 = "[CSVTUIRemoteRecordClient voiceTriggerEventInfo]";
    v28 = 2114;
    v29 = v12;
    _os_log_impl(&dword_225E12000, v11, OS_LOG_TYPE_DEFAULT, "%s Raw VoiceTriggerEventInfo from remote = %{public}@", buf, 0x16u);
  }

  v13 = v21[5];

  _Block_object_dispose(&v20, 8);
  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

void __49__CSVTUIRemoteRecordClient_voiceTriggerEventInfo__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if (*(*(a1 + 32) + 16))
  {
    v2 = [*(a1 + 40) _cs_xpcObject];
    v6 = *(a1 + 48);
    v3 = v6;
    xpc_remote_connection_send_message_with_reply();
  }

  else
  {
    v4 = *MEMORY[0x277D015D8];
    if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v8 = "[CSVTUIRemoteRecordClient voiceTriggerEventInfo]_block_invoke";
      _os_log_error_impl(&dword_225E12000, v4, OS_LOG_TYPE_ERROR, "%s Cannot ask VoiceTriggerEventInfo while connection does not exist", buf, 0xCu);
    }

    dispatch_semaphore_signal(*(a1 + 48));
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __49__CSVTUIRemoteRecordClient_voiceTriggerEventInfo__block_invoke_2(uint64_t a1, void *a2)
{
  v9 = a2;
  if (MEMORY[0x22AA717E0]() == MEMORY[0x277D86468])
  {
    v3 = objc_alloc(MEMORY[0x277CBEAC0]);
    v4 = [v3 _cs_initWithXPCObject:v9];

    if (v4)
    {
      v5 = [v4 objectForKeyedSubscript:@"replyVoiceTriggerEventInfo"];

      if (v5)
      {
        v6 = [v4 objectForKeyedSubscript:@"replyVoiceTriggerEventInfo"];
        v7 = *(*(a1 + 40) + 8);
        v8 = *(v7 + 40);
        *(v7 + 40) = v6;
      }
    }

    dispatch_semaphore_signal(*(a1 + 32));
  }
}

- (BOOL)isRecording
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __39__CSVTUIRemoteRecordClient_isRecording__block_invoke;
  v5[3] = &unk_2785797D0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)didPlayEndpointBeep
{
  v25[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D015D8];
  v4 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[CSVTUIRemoteRecordClient didPlayEndpointBeep]";
    _os_log_impl(&dword_225E12000, v4, OS_LOG_TYPE_DEFAULT, "%s ", &buf, 0xCu);
  }

  v24 = @"COMMAND";
  v25[0] = @"didPlayEndpointBeep";
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];
  v6 = dispatch_semaphore_create(0);
  *&buf = 0;
  *(&buf + 1) = &buf;
  v22 = 0x2020000000;
  v23 = 0;
  queue = self->_queue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __47__CSVTUIRemoteRecordClient_didPlayEndpointBeep__block_invoke;
  v15[3] = &unk_278578598;
  v15[4] = self;
  v8 = v5;
  v16 = v8;
  p_buf = &buf;
  v9 = v6;
  v17 = v9;
  dispatch_async(queue, v15);
  v10 = dispatch_time(0, 1000000000);
  if (dispatch_semaphore_wait(v9, v10))
  {
    v11 = *v3;
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
    {
      *v19 = 136315138;
      v20 = "[CSVTUIRemoteRecordClient didPlayEndpointBeep]";
      _os_log_error_impl(&dword_225E12000, v11, OS_LOG_TYPE_ERROR, "%s Getting reply timed out!!", v19, 0xCu);
    }
  }

  v12 = *(*(&buf + 1) + 24);

  _Block_object_dispose(&buf, 8);
  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

void __47__CSVTUIRemoteRecordClient_didPlayEndpointBeep__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if (*(*(a1 + 32) + 16))
  {
    v2 = [*(a1 + 40) _cs_xpcObject];
    v6 = *(a1 + 48);
    v3 = v6;
    xpc_remote_connection_send_message_with_reply();
  }

  else
  {
    v4 = *MEMORY[0x277D015D8];
    if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v8 = "[CSVTUIRemoteRecordClient didPlayEndpointBeep]_block_invoke";
      _os_log_error_impl(&dword_225E12000, v4, OS_LOG_TYPE_ERROR, "%s Cannot ask didPlayEndpointBeep while connection does not exist", buf, 0xCu);
    }

    dispatch_semaphore_signal(*(a1 + 48));
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __47__CSVTUIRemoteRecordClient_didPlayEndpointBeep__block_invoke_2(uint64_t a1, void *a2)
{
  v7 = a2;
  if (MEMORY[0x22AA717E0]() == MEMORY[0x277D86468])
  {
    v3 = objc_alloc(MEMORY[0x277CBEAC0]);
    v4 = [v3 _cs_initWithXPCObject:v7];

    if (v4)
    {
      v5 = [v4 objectForKeyedSubscript:@"replyDidPlayEndpointBeep"];

      if (v5)
      {
        v6 = [v4 objectForKeyedSubscript:@"replyDidPlayEndpointBeep"];
        *(*(*(a1 + 40) + 8) + 24) = [v6 BOOLValue];
      }
    }

    dispatch_semaphore_signal(*(a1 + 32));
  }
}

- (BOOL)stopRecording:(id *)recording
{
  v19[1] = *MEMORY[0x277D85DE8];
  v18 = @"COMMAND";
  v19[0] = @"stopRecording";
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__CSVTUIRemoteRecordClient_stopRecording___block_invoke;
  block[3] = &unk_278579268;
  block[4] = self;
  v11 = v5;
  v12 = &v14;
  recordingCopy = recording;
  v7 = v5;
  dispatch_sync(queue, block);
  LOBYTE(recording) = *(v15 + 24);

  _Block_object_dispose(&v14, 8);
  v8 = *MEMORY[0x277D85DE8];
  return recording;
}

void __42__CSVTUIRemoteRecordClient_stopRecording___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if (*(*(a1 + 32) + 16))
  {
    v2 = [*(a1 + 40) _cs_xpcObject];
    xpc_remote_connection_send_message();

    LOBYTE(v3) = 1;
  }

  else
  {
    v4 = *MEMORY[0x277D015D8];
    if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_ERROR))
    {
      v7 = 136315138;
      v8 = "[CSVTUIRemoteRecordClient stopRecording:]_block_invoke";
      _os_log_error_impl(&dword_225E12000, v4, OS_LOG_TYPE_ERROR, "%s Cannot stop recording while connection does not exist", &v7, 0xCu);
    }

    v3 = *(a1 + 56);
    if (v3)
    {
      v5 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01590] code:302 userInfo:0];
      LOBYTE(v3) = 0;
      **(a1 + 56) = v5;
    }
  }

  *(*(*(a1 + 48) + 8) + 24) = v3;
  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    *(*(a1 + 32) + 40) = 0;
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (BOOL)startRecordingWithOptions:(id)options error:(id *)error
{
  v22[2] = *MEMORY[0x277D85DE8];
  v21[0] = @"COMMAND";
  v21[1] = @"startRecordingOptions";
  v22[0] = @"startRecording";
  v22[1] = options;
  v6 = MEMORY[0x277CBEAC0];
  optionsCopy = options;
  v8 = [v6 dictionaryWithObjects:v22 forKeys:v21 count:2];
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__CSVTUIRemoteRecordClient_startRecordingWithOptions_error___block_invoke;
  block[3] = &unk_278579268;
  block[4] = self;
  v14 = v8;
  v15 = &v17;
  errorCopy = error;
  v10 = v8;
  dispatch_sync(queue, block);
  LOBYTE(error) = *(v18 + 24);

  _Block_object_dispose(&v17, 8);
  v11 = *MEMORY[0x277D85DE8];
  return error;
}

void __60__CSVTUIRemoteRecordClient_startRecordingWithOptions_error___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if (*(*(a1 + 32) + 16))
  {
    v2 = [*(a1 + 40) _cs_xpcObject];
    xpc_remote_connection_send_message();

    LOBYTE(v3) = 1;
  }

  else
  {
    v4 = *MEMORY[0x277D015D8];
    if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_ERROR))
    {
      v7 = 136315138;
      v8 = "[CSVTUIRemoteRecordClient startRecordingWithOptions:error:]_block_invoke";
      _os_log_error_impl(&dword_225E12000, v4, OS_LOG_TYPE_ERROR, "%s Cannot start recording while connection does not exist", &v7, 0xCu);
    }

    v3 = *(a1 + 56);
    if (v3)
    {
      v5 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01590] code:302 userInfo:0];
      LOBYTE(v3) = 0;
      **(a1 + 56) = v5;
    }
  }

  *(*(*(a1 + 48) + 8) + 24) = v3;
  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    *(*(a1 + 32) + 40) = 1;
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_handleTwoShotDetectedMessage:(id)message
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEAC0];
  messageCopy = message;
  v6 = [v4 alloc];
  v7 = [v6 _cs_initWithXPCObject:messageCopy];

  if (!v7 || ([v7 objectForKeyedSubscript:@"time"], v8 = objc_claimAutoreleasedReturnValue(), v8, !v8))
  {
    v15 = *MEMORY[0x277D015D8];
    if (!os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    v18 = 136315138;
    v19 = "[CSVTUIRemoteRecordClient _handleTwoShotDetectedMessage:]";
    v16 = "%s Cannot handle TwoShotDetected message since it failed to decode xpcObject to NSDictionary";
LABEL_9:
    _os_log_error_impl(&dword_225E12000, v15, OS_LOG_TYPE_ERROR, v16, &v18, 0xCu);
    goto LABEL_10;
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v10 = objc_opt_respondsToSelector();

  if ((v10 & 1) == 0)
  {
    v15 = *MEMORY[0x277D015D8];
    if (!os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    v18 = 136315138;
    v19 = "[CSVTUIRemoteRecordClient _handleTwoShotDetectedMessage:]";
    v16 = "%s Cannot report two shot since delegate doesn't have protocol implemented";
    goto LABEL_9;
  }

  v11 = [v7 objectForKeyedSubscript:@"time"];
  [v11 doubleValue];
  v13 = v12;

  v14 = objc_loadWeakRetained(&self->_delegate);
  [v14 remoteRecordTwoShotDetectedAtTime:v13];

LABEL_10:
  v17 = *MEMORY[0x277D85DE8];
}

- (void)_handleDidStartRecordingMessage:(id)message
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEAC0];
  messageCopy = message;
  v6 = [v4 alloc];
  v7 = [v6 _cs_initWithXPCObject:messageCopy];

  v8 = MEMORY[0x277D015D8];
  v9 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v18 = 136315394;
    v19 = "[CSVTUIRemoteRecordClient _handleDidStartRecordingMessage:]";
    v20 = 2114;
    v21 = v7;
    _os_log_impl(&dword_225E12000, v9, OS_LOG_TYPE_DEFAULT, "%s %{public}@", &v18, 0x16u);
  }

  v10 = [v7 objectForKey:@"didStartRecordingError"];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    if (v10)
    {
      v13 = *v8;
      if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
      {
        v18 = 136315394;
        v19 = "[CSVTUIRemoteRecordClient _handleDidStartRecordingMessage:]";
        v20 = 2114;
        v21 = v10;
        _os_log_error_impl(&dword_225E12000, v13, OS_LOG_TYPE_ERROR, "%s DidStartRecording error : %{public}@", &v18, 0x16u);
      }

      v14 = objc_loadWeakRetained(&self->_delegate);
      audioStreamHandleId = self->_audioStreamHandleId;
      v16 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01590] code:303 userInfo:0];
      [v14 remoteRecordDidStartRecordingWithStreamHandleId:audioStreamHandleId error:v16];
    }

    else
    {
      v14 = objc_loadWeakRetained(&self->_delegate);
      [v14 remoteRecordDidStartRecordingWithStreamHandleId:self->_audioStreamHandleId error:0];
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_handleServerMessage:(id)message
{
  v21 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  dispatch_assert_queue_V2(self->_queue);
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", xpc_dictionary_get_string(messageCopy, "COMMAND")];
  v6 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v18 = "[CSVTUIRemoteRecordClient _handleServerMessage:]";
    v19 = 2114;
    v20 = v5;
    _os_log_impl(&dword_225E12000, v6, OS_LOG_TYPE_DEFAULT, "%s %{public}@", buf, 0x16u);
  }

  if ([v5 isEqualToString:@"didStartRecording"])
  {
    [(CSVTUIRemoteRecordClient *)self _handleDidStartRecordingMessage:messageCopy];
    goto LABEL_16;
  }

  if ([v5 isEqualToString:@"didStopRecording"])
  {
    self->_isRemoteRecording = 0;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v8 = objc_opt_respondsToSelector();

    if ((v8 & 1) == 0)
    {
      goto LABEL_16;
    }

    v9 = objc_loadWeakRetained(&self->_delegate);
    [v9 remoteRecordDidStopRecordingWithWithStreamHandleId:self->_audioStreamHandleId error:0];
LABEL_8:

    goto LABEL_16;
  }

  if ([v5 isEqualToString:@"LPCMBufferAvailable"])
  {
    v10 = objc_loadWeakRetained(&self->_delegate);
    v11 = objc_opt_respondsToSelector();

    if ((v11 & 1) == 0)
    {
      goto LABEL_16;
    }

    v12 = objc_alloc(MEMORY[0x277CBEAC0]);
    v9 = [v12 _cs_initWithXPCObject:messageCopy];

    if (v9)
    {
      v13 = [v9 objectForKeyedSubscript:@"buffer"];

      if (v13)
      {
        v14 = [v9 objectForKeyedSubscript:@"buffer"];
        v15 = objc_loadWeakRetained(&self->_delegate);
        [v15 remoteRecordLPCMBufferAvailable:v14 streamHandleId:self->_audioStreamHandleId];
      }
    }

    goto LABEL_8;
  }

  if ([v5 isEqualToString:@"twoShotDetected"])
  {
    [(CSVTUIRemoteRecordClient *)self _handleTwoShotDetectedMessage:messageCopy];
  }

LABEL_16:

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_handleServerError:(id)error
{
  v15 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  dispatch_assert_queue_V2(self->_queue);
  if (errorCopy)
  {
    if (errorCopy == MEMORY[0x277D863F8] || errorCopy == MEMORY[0x277D863F0])
    {
      v6 = *MEMORY[0x277D015D8];
      if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
      {
        v11 = 136315138;
        v12 = "[CSVTUIRemoteRecordClient _handleServerError:]";
        _os_log_impl(&dword_225E12000, v6, OS_LOG_TYPE_DEFAULT, "%s connection disconnected", &v11, 0xCu);
      }

      if (self->_device)
      {
        remote_device_cancel();
      }
    }

    else
    {
      string = xpc_dictionary_get_string(errorCopy, *MEMORY[0x277D86400]);
      v8 = *MEMORY[0x277D015D8];
      if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_ERROR))
      {
        v11 = 136315394;
        v12 = "[CSVTUIRemoteRecordClient _handleServerError:]";
        v13 = 2082;
        v14 = string;
        _os_log_error_impl(&dword_225E12000, v8, OS_LOG_TYPE_ERROR, "%s connection error: %{public}s", &v11, 0x16u);
      }
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_handleServerEvent:(id)event
{
  v12 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  dispatch_assert_queue_V2(self->_queue);
  if (eventCopy)
  {
    v5 = MEMORY[0x22AA717E0](eventCopy);
    if (MEMORY[0x22AA717E0](eventCopy) == MEMORY[0x277D86480])
    {
      v8 = *MEMORY[0x277D015D8];
      if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_ERROR))
      {
        v10 = 136315138;
        v11 = "[CSVTUIRemoteRecordClient _handleServerEvent:]";
        _os_log_error_impl(&dword_225E12000, v8, OS_LOG_TYPE_ERROR, "%s remoteXPC connection get failed", &v10, 0xCu);
      }

      [(CSVTUIRemoteRecordClient *)self _handleServerError:eventCopy];
    }

    else
    {
      if (v5 == MEMORY[0x277D86468])
      {
        [(CSVTUIRemoteRecordClient *)self _handleServerMessage:eventCopy];
        goto LABEL_13;
      }

      v6 = *MEMORY[0x277D015D8];
      if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_ERROR))
      {
        v10 = 136315138;
        v11 = "[CSVTUIRemoteRecordClient _handleServerEvent:]";
        v7 = "%s Ignore unknown type message";
LABEL_8:
        _os_log_error_impl(&dword_225E12000, v6, OS_LOG_TYPE_ERROR, v7, &v10, 0xCu);
      }
    }
  }

  else
  {
    v6 = *MEMORY[0x277D015D8];
    if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_ERROR))
    {
      v10 = 136315138;
      v11 = "[CSVTUIRemoteRecordClient _handleServerEvent:]";
      v7 = "%s cannot handle server event since event is nil";
      goto LABEL_8;
    }
  }

LABEL_13:

  v9 = *MEMORY[0x277D85DE8];
}

- (BOOL)isConnected
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __39__CSVTUIRemoteRecordClient_isConnected__block_invoke;
  v5[3] = &unk_2785797D0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __39__CSVTUIRemoteRecordClient_isConnected__block_invoke(uint64_t result)
{
  if (*(*(result + 32) + 16))
  {
    *(*(*(result + 40) + 8) + 24) = 1;
  }

  return result;
}

- (BOOL)waitingForConnection:(double)connection error:(id *)error
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = [(CSDispatchGroup *)self->_deviceWaitingGroup waitWithTimeout:dispatch_time(0, (connection * 1000000000.0))];
  if (!v6)
  {
    if ([(CSVTUIRemoteRecordClient *)self isConnected])
    {
      v9 = 1;
      goto LABEL_15;
    }

    v10 = *MEMORY[0x277D015D8];
    if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_ERROR))
    {
      v14 = 136315138;
      v15 = "[CSVTUIRemoteRecordClient waitingForConnection:error:]";
      _os_log_error_impl(&dword_225E12000, v10, OS_LOG_TYPE_ERROR, "%s Device is connected but RemoteXPC service is not connected", &v14, 0xCu);
      if (!error)
      {
        goto LABEL_14;
      }
    }

    else if (!error)
    {
      goto LABEL_14;
    }

    v8 = 302;
    goto LABEL_10;
  }

  v7 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_ERROR))
  {
    v14 = 136315138;
    v15 = "[CSVTUIRemoteRecordClient waitingForConnection:error:]";
    _os_log_error_impl(&dword_225E12000, v7, OS_LOG_TYPE_ERROR, "%s Device connection waiting timed out", &v14, 0xCu);
    if (error)
    {
      goto LABEL_4;
    }
  }

  else if (error)
  {
LABEL_4:
    v8 = 301;
LABEL_10:
    v11 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01590] code:v8 userInfo:0];
    v9 = 0;
    *error = v11;
    goto LABEL_15;
  }

LABEL_14:
  v9 = 0;
LABEL_15:
  if (v6)
  {
    result = 0;
  }

  else
  {
    result = v9;
  }

  v13 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)didDeviceDisconnect:(id)disconnect
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v9 = "[CSVTUIRemoteRecordClient didDeviceDisconnect:]";
    _os_log_impl(&dword_225E12000, v4, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__CSVTUIRemoteRecordClient_didDeviceDisconnect___block_invoke;
  block[3] = &unk_2785797A8;
  block[4] = self;
  dispatch_async(queue, block);
  v6 = *MEMORY[0x277D85DE8];
}

void __48__CSVTUIRemoteRecordClient_didDeviceDisconnect___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  *(v2 + 16) = 0;

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 48));
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained((*(a1 + 32) + 48));
    [v6 remoteRecordConnectionDisconnected:*(a1 + 32)];
  }
}

- (void)didDeviceConnect:(id)connect
{
  v14 = *MEMORY[0x277D85DE8];
  connectCopy = connect;
  v5 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v13 = "[CSVTUIRemoteRecordClient didDeviceConnect:]";
    _os_log_impl(&dword_225E12000, v5, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  queue = self->_queue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __45__CSVTUIRemoteRecordClient_didDeviceConnect___block_invoke;
  v9[3] = &unk_278579350;
  v10 = connectCopy;
  selfCopy = self;
  v7 = connectCopy;
  dispatch_async(queue, v9);

  v8 = *MEMORY[0x277D85DE8];
}

void __45__CSVTUIRemoteRecordClient_didDeviceConnect___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  remote_device_get_type();
  v3 = *(a1 + 32);
  v4 = remote_device_copy_service();
  if (v4)
  {
    v5 = *(*(a1 + 40) + 8);
    v6 = xpc_remote_connection_create_with_remote_service();
    objc_initWeak(location, *(a1 + 40));
    objc_copyWeak(&v9, location);
    xpc_remote_connection_set_event_handler();
    xpc_remote_connection_activate();
    objc_storeStrong((*(a1 + 40) + 16), v6);
    [*(*(a1 + 40) + 32) leave];
    objc_destroyWeak(&v9);
    objc_destroyWeak(location);
  }

  else
  {
    v7 = *MEMORY[0x277D015D8];
    if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_ERROR))
    {
      *location = 136315394;
      *&location[4] = "[CSVTUIRemoteRecordClient didDeviceConnect:]_block_invoke";
      v11 = 2082;
      v12 = "com.apple.corespeech.xpc.remote.record";
      _os_log_error_impl(&dword_225E12000, v7, OS_LOG_TYPE_ERROR, "%s Service: %{public}s not found", location, 0x16u);
    }

    [*(*(a1 + 40) + 32) leave];
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __45__CSVTUIRemoteRecordClient_didDeviceConnect___block_invoke_10(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleServerEvent:v3];
}

- (void)dealloc
{
  if (self->_connection)
  {
    xpc_remote_connection_cancel();
  }

  if (self->_device)
  {
    remote_device_cancel();
  }

  v3.receiver = self;
  v3.super_class = CSVTUIRemoteRecordClient;
  [(CSVTUIRemoteRecordClient *)&v3 dealloc];
}

- (CSVTUIRemoteRecordClient)init
{
  v3 = [[CSVTUIRemoteRecordClient alloc] initWithDeviceId:0 audioStreamHandleId:1];

  return v3;
}

- (CSVTUIRemoteRecordClient)initWithDeviceId:(id)id audioStreamHandleId:(unint64_t)handleId
{
  v29 = *MEMORY[0x277D85DE8];
  idCopy = id;
  if (([MEMORY[0x277D018F8] isDarwinOS] & 1) == 0)
  {
    v27.receiver = self;
    v27.super_class = CSVTUIRemoteRecordClient;
    self = [(CSVTUIRemoteRecordClient *)&v27 init];
    if (self)
    {
      v9 = dispatch_queue_create("CSRemoteRecordClient Queue", 0);
      queue = self->_queue;
      self->_queue = v9;

      v11 = objc_alloc_init(MEMORY[0x277D01710]);
      deviceWaitingGroup = self->_deviceWaitingGroup;
      self->_deviceWaitingGroup = v11;

      objc_initWeak(&location, self);
      v13 = self->_queue;
      if ([MEMORY[0x277D018F8] hasRemoteBuiltInMic] && (!idCopy || objc_msgSend(idCopy, "isEqualToString:", @"BuiltInMicrophoneDevice")))
      {
        v14 = remote_device_copy_unique_of_type();
        device = self->_device;
        self->_device = v14;
      }

      else
      {
        *buf = 0uLL;
        v16 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:idCopy];
        [v16 getUUIDBytes:buf];
        v17 = remote_device_copy_device_with_uuid();
        v18 = self->_device;
        self->_device = v17;
      }

      if (!self->_device)
      {
        v23 = *MEMORY[0x277D015D8];
        if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          *&buf[4] = "[CSVTUIRemoteRecordClient initWithDeviceId:audioStreamHandleId:]";
          _os_log_error_impl(&dword_225E12000, v23, OS_LOG_TYPE_ERROR, "%s There is no remote device", buf, 0xCu);
        }

        objc_destroyWeak(&location);
        goto LABEL_2;
      }

      [(CSDispatchGroup *)self->_deviceWaitingGroup enter];
      v19 = self->_device;
      v24[1] = MEMORY[0x277D85DD0];
      v24[2] = 3221225472;
      v24[3] = __65__CSVTUIRemoteRecordClient_initWithDeviceId_audioStreamHandleId___block_invoke;
      v24[4] = &unk_278578548;
      objc_copyWeak(&v25, &location);
      remote_device_set_connected_callback();
      v20 = self->_device;
      objc_copyWeak(v24, &location);
      remote_device_set_disconnected_callback();
      self->_audioStreamHandleId = handleId;
      objc_storeStrong(&self->_deviceId, id);
      objc_destroyWeak(v24);
      objc_destroyWeak(&v25);

      objc_destroyWeak(&location);
    }

    self = self;
    selfCopy = self;
    goto LABEL_12;
  }

LABEL_2:
  selfCopy = 0;
LABEL_12:

  v21 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

void __65__CSVTUIRemoteRecordClient_initWithDeviceId_audioStreamHandleId___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained didDeviceConnect:v3];
}

void __65__CSVTUIRemoteRecordClient_initWithDeviceId_audioStreamHandleId___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained didDeviceDisconnect:v3];
}

@end