@interface CSVTUIAudioRecorder
- (BOOL)_shouldUseRemoteBuiltInMic:(id)a3;
- (BOOL)activateAudioSessionWithReason:(unint64_t)a3 streamHandleId:(unint64_t)a4 error:(id *)a5;
- (BOOL)deactivateAudioSession:(unint64_t)a3 error:(id *)a4;
- (BOOL)isRecordingWithStreamHandleId:(unint64_t)a3;
- (BOOL)prepareAudioStreamRecordWithStreamHandleId:(unint64_t)a3 error:(id *)a4;
- (BOOL)startAudioStreamWithStreamHandleId:(unint64_t)a3 error:(id *)a4;
- (BOOL)stopAudioStreamWithStreamHandleId:(unint64_t)a3 error:(id *)a4;
- (CSVTUIAudioRecorder)initWithQueue:(id)a3 error:(id *)a4;
- (id)_compensateChannelDataIfNeeded:(id)a3 receivedNumChannels:(unsigned int)a4;
- (id)_getRecordSettingsWithRequest;
- (id)_voiceControllerWithError:(id *)a3;
- (id)recordRouteWithStreamHandleId:(unint64_t)a3;
- (unint64_t)setContext:(id)a3 error:(id *)a4;
- (void)_audioRecorderDidStopRecordingForReason:(int64_t)a3 streamHandleID:(unint64_t)a4;
- (void)_destroyVoiceController;
- (void)_processAudioBuffer:(id)a3 audioStreamHandleId:(unint64_t)a4 arrivalTimestampToAudioRecorder:(unint64_t)a5;
- (void)_processAudioChain:(id)a3 audioStreamHandleId:(unint64_t)a4 remoteVAD:(id)a5 atTime:(unint64_t)a6 arrivalTimestampToAudioRecorder:(unint64_t)a7 numberOfChannels:(int)a8;
- (void)dealloc;
- (void)registerObserver:(id)a3;
- (void)setAudioSessionEventDelegate:(id)a3;
- (void)unregisterObserver:(id)a3;
- (void)updateAudioRecorderForTrainingDevice:(unint64_t)a3 deviceUUIDs:(id)a4;
- (void)voiceControllerAudioCallback:(id)a3 forStream:(unint64_t)a4 buffer:(id)a5;
- (void)voiceControllerBeginRecordInterruption:(id)a3;
- (void)voiceControllerBeginRecordInterruption:(id)a3 withContext:(id)a4;
- (void)voiceControllerDidSetAudioSessionActive:(id)a3 isActivated:(BOOL)a4;
- (void)voiceControllerDidStartRecording:(id)a3 forStream:(unint64_t)a4 successfully:(BOOL)a5 error:(id)a6;
- (void)voiceControllerDidStopRecording:(id)a3 forStream:(unint64_t)a4 forReason:(int64_t)a5;
- (void)voiceControllerEndRecordInterruption:(id)a3;
- (void)voiceControllerRecordHardwareConfigurationDidChange:(id)a3 toConfiguration:(int)a4;
- (void)voiceControllerWillSetAudioSessionActive:(id)a3 willActivate:(BOOL)a4;
@end

@implementation CSVTUIAudioRecorder

- (void)setAudioSessionEventDelegate:(id)a3
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_ERROR))
  {
    v5 = 136315138;
    v6 = "[CSVTUIAudioRecorder setAudioSessionEventDelegate:]";
    _os_log_error_impl(&dword_225E12000, v3, OS_LOG_TYPE_ERROR, "%s Unimplemented method called", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (id)_getRecordSettingsWithRequest
{
  v16[8] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D016E0] inputRecordingNumberOfChannels] > 1;
  v15[0] = *MEMORY[0x277CB8278];
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:1819304813];
  v16[0] = v3;
  v15[1] = *MEMORY[0x277CB82E8];
  v4 = MEMORY[0x277CCABB0];
  [MEMORY[0x277D016E0] inputRecordingSampleRate];
  v5 = [v4 numberWithFloat:?];
  v16[1] = v5;
  v15[2] = *MEMORY[0x277CB8290];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(MEMORY[0x277D016E0], "inputRecordingSampleBitDepth")}];
  v16[2] = v6;
  v15[3] = *MEMORY[0x277CB8298];
  v7 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(MEMORY[0x277D016E0], "inputRecordingIsFloat")}];
  v16[3] = v7;
  v15[4] = *MEMORY[0x277CB82B8];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(MEMORY[0x277D016E0], "inputRecordingNumberOfChannels")}];
  v9 = *MEMORY[0x277CB8260];
  v16[4] = v8;
  v16[5] = &unk_283933978;
  v10 = *MEMORY[0x277CB82C8];
  v15[5] = v9;
  v15[6] = v10;
  v16[6] = *MEMORY[0x277CB82D8];
  v15[7] = *MEMORY[0x277CB82A8];
  v11 = [MEMORY[0x277CCABB0] numberWithBool:v2];
  v16[7] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:8];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (void)voiceControllerDidSetAudioSessionActive:(id)a3 isActivated:(BOOL)a4
{
  v4 = a4;
  v11 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[CSVTUIAudioRecorder voiceControllerDidSetAudioSessionActive:isActivated:]";
    v9 = 1026;
    v10 = v4;
    _os_log_impl(&dword_225E12000, v5, OS_LOG_TYPE_DEFAULT, "%s activate : %{public}d", &v7, 0x12u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)voiceControllerWillSetAudioSessionActive:(id)a3 willActivate:(BOOL)a4
{
  v4 = a4;
  v11 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[CSVTUIAudioRecorder voiceControllerWillSetAudioSessionActive:willActivate:]";
    v9 = 1026;
    v10 = v4;
    _os_log_impl(&dword_225E12000, v5, OS_LOG_TYPE_DEFAULT, "%s activate : %{public}d", &v7, 0x12u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)voiceControllerEndRecordInterruption:(id)a3
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[CSVTUIAudioRecorder voiceControllerEndRecordInterruption:]";
    _os_log_impl(&dword_225E12000, v3, OS_LOG_TYPE_DEFAULT, "%s ", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)voiceControllerBeginRecordInterruption:(id)a3 withContext:(id)a4
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a4;
  v5 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[CSVTUIAudioRecorder voiceControllerBeginRecordInterruption:withContext:]";
    v9 = 2114;
    v10 = v4;
    _os_log_impl(&dword_225E12000, v5, OS_LOG_TYPE_DEFAULT, "%s withContext : %{public}@", &v7, 0x16u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)voiceControllerBeginRecordInterruption:(id)a3
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[CSVTUIAudioRecorder voiceControllerBeginRecordInterruption:]";
    _os_log_impl(&dword_225E12000, v3, OS_LOG_TYPE_DEFAULT, "%s ", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)voiceControllerRecordHardwareConfigurationDidChange:(id)a3 toConfiguration:(int)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v12 = "[CSVTUIAudioRecorder voiceControllerRecordHardwareConfigurationDidChange:toConfiguration:]";
    v13 = 1026;
    v14 = a4;
    _os_log_impl(&dword_225E12000, v6, OS_LOG_TYPE_DEFAULT, "%s toConfiguration : %{public}d", buf, 0x12u);
  }

  queue = self->_queue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __91__CSVTUIAudioRecorder_voiceControllerRecordHardwareConfigurationDidChange_toConfiguration___block_invoke;
  v9[3] = &unk_278579190;
  v9[4] = self;
  v10 = a4;
  dispatch_async(queue, v9);
  v8 = *MEMORY[0x277D85DE8];
}

void __91__CSVTUIAudioRecorder_voiceControllerRecordHardwareConfigurationDidChange_toConfiguration___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(*(a1 + 32) + 88);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 audioRecorderRecordHardwareConfigurationDidChange:*(a1 + 32) toConfiguration:{*(a1 + 40), v9}];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)voiceControllerDidStopRecording:(id)a3 forStream:(unint64_t)a4 forReason:(int64_t)a5
{
  v21 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v14 = "[CSVTUIAudioRecorder voiceControllerDidStopRecording:forStream:forReason:]";
    v15 = 2050;
    v16 = v8;
    v17 = 2050;
    v18 = a4;
    v19 = 2050;
    v20 = a5;
    _os_log_impl(&dword_225E12000, v9, OS_LOG_TYPE_DEFAULT, "%s Received didStopRecording : %{public}p forStream:%{public}llu forReason:%{public}ld", buf, 0x2Au);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __75__CSVTUIAudioRecorder_voiceControllerDidStopRecording_forStream_forReason___block_invoke;
  block[3] = &unk_278579168;
  block[4] = self;
  block[5] = a5;
  block[6] = a4;
  dispatch_async(queue, block);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)voiceControllerAudioCallback:(id)a3 forStream:(unint64_t)a4 buffer:(id)a5
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = a5;
  v8 = voiceControllerAudioCallback_forStream_buffer__heartbeat;
  if (!(v8 % [MEMORY[0x277D018F8] loggingHeartbeatRate]))
  {
    v9 = *MEMORY[0x277D015D8];
    if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
    {
      v10 = v9;
      v12 = 136315906;
      v13 = "[CSVTUIAudioRecorder voiceControllerAudioCallback:forStream:buffer:]";
      v14 = 1026;
      v15 = [v7 bytesDataSize];
      v16 = 2050;
      v17 = voiceControllerAudioCallback_forStream_buffer__heartbeat;
      v18 = 2050;
      v19 = a4;
      _os_log_impl(&dword_225E12000, v10, OS_LOG_TYPE_DEFAULT, "%s Received audio buffer %{public}d, heartbeat = %{public}llu, streamID (%{public}lu)", &v12, 0x26u);
    }
  }

  ++voiceControllerAudioCallback_forStream_buffer__heartbeat;
  [(CSVTUIAudioRecorder *)self _processAudioBuffer:v7 audioStreamHandleId:a4 arrivalTimestampToAudioRecorder:mach_absolute_time()];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)voiceControllerDidStartRecording:(id)a3 forStream:(unint64_t)a4 successfully:(BOOL)a5 error:(id)a6
{
  v7 = a5;
  v32 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a6;
  v12 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v13 = v12;
    v14 = [v11 localizedDescription];
    *buf = 136316162;
    v23 = "[CSVTUIAudioRecorder voiceControllerDidStartRecording:forStream:successfully:error:]";
    v24 = 2050;
    v25 = v10;
    v26 = 2050;
    v27 = a4;
    v28 = 1026;
    v29 = v7;
    v30 = 2114;
    v31 = v14;
    _os_log_impl(&dword_225E12000, v13, OS_LOG_TYPE_DEFAULT, "%s Received didStartRecording : %{public}p, forStream:%{public}llu, successfully:%{public}d, error:%{public}@", buf, 0x30u);
  }

  queue = self->_queue;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __85__CSVTUIAudioRecorder_voiceControllerDidStartRecording_forStream_successfully_error___block_invoke;
  v18[3] = &unk_278579140;
  v21 = v7;
  v19 = v11;
  v20 = a4;
  v18[4] = self;
  v16 = v11;
  dispatch_async(queue, v18);

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_audioRecorderDidStopRecordingForReason:(int64_t)a3 streamHandleID:(unint64_t)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = self->_observers;
  v8 = [(NSHashTable *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v14 + 1) + 8 * v11);
        if (objc_opt_respondsToSelector())
        {
          [v12 audioRecorderDidStopRecord:self audioStreamHandleId:a4 reason:{a3, v14}];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSHashTable *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  self->_waitingForDidStart = 0;
  v13 = *MEMORY[0x277D85DE8];
}

- (id)_compensateChannelDataIfNeeded:(id)a3 receivedNumChannels:(unsigned int)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ([MEMORY[0x277D016E0] inputRecordingNumberOfChannels] <= a4)
  {
    v8 = v5;
  }

  else
  {
    v6 = objc_alloc(MEMORY[0x277CBEB28]);
    v7 = [v5 length] / a4;
    v8 = [v6 initWithLength:{v7 * objc_msgSend(MEMORY[0x277D016E0], "inputRecordingNumberOfChannels")}];
    v9 = [MEMORY[0x277D016E0] inputRecordingNumberOfChannels];
    v10 = _compensateChannelDataIfNeeded_receivedNumChannels__heartbeat;
    if (!(v10 % [MEMORY[0x277D018F8] loggingHeartbeatRate]))
    {
      v11 = *MEMORY[0x277D015D8];
      if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
      {
        v14 = 136315650;
        v15 = "[CSVTUIAudioRecorder _compensateChannelDataIfNeeded:receivedNumChannels:]";
        v16 = 1026;
        v17 = v9 - a4;
        v18 = 2050;
        v19 = _compensateChannelDataIfNeeded_receivedNumChannels__heartbeat;
        _os_log_impl(&dword_225E12000, v11, OS_LOG_TYPE_DEFAULT, "%s Compensating %{public}u channel(s), heartbeat = %{public}lld", &v14, 0x1Cu);
      }
    }

    ++_compensateChannelDataIfNeeded_receivedNumChannels__heartbeat;
    [v8 replaceBytesInRange:0 withBytes:{objc_msgSend(v5, "length"), objc_msgSend(v5, "bytes")}];
  }

  v12 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)_processAudioBuffer:(id)a3 audioStreamHandleId:(unint64_t)a4 arrivalTimestampToAudioRecorder:(unint64_t)a5
{
  v20 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = objc_autoreleasePoolPush();
  if ((CSIsTV() & 1) == 0)
  {
    v10 = *([v8 streamDescription] + 8);
    if (v10 == 1819304813)
    {
      v11 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:objc_msgSend(v8 length:{"data"), objc_msgSend(v8, "bytesDataSize")}];
      v12 = -[CSVTUIAudioRecorder _compensateChannelDataIfNeeded:receivedNumChannels:](self, "_compensateChannelDataIfNeeded:receivedNumChannels:", v11, *([v8 streamDescription] + 28));
      v13 = [v8 timeStamp];
      -[CSVTUIAudioRecorder _processAudioChain:audioStreamHandleId:remoteVAD:atTime:arrivalTimestampToAudioRecorder:numberOfChannels:](self, "_processAudioChain:audioStreamHandleId:remoteVAD:atTime:arrivalTimestampToAudioRecorder:numberOfChannels:", v12, a4, 0, v13, a5, [MEMORY[0x277D016E0] inputRecordingNumberOfChannels]);
    }

    else
    {
      v14 = *MEMORY[0x277D015D8];
      if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_ERROR))
      {
        v16 = 136315394;
        v17 = "[CSVTUIAudioRecorder _processAudioBuffer:audioStreamHandleId:arrivalTimestampToAudioRecorder:]";
        v18 = 1026;
        v19 = v10;
        _os_log_error_impl(&dword_225E12000, v14, OS_LOG_TYPE_ERROR, "%s Cannot handle audio buffer : unexpected format(%{public}u)", &v16, 0x12u);
      }
    }
  }

  objc_autoreleasePoolPop(v9);

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_processAudioChain:(id)a3 audioStreamHandleId:(unint64_t)a4 remoteVAD:(id)a5 atTime:(unint64_t)a6 arrivalTimestampToAudioRecorder:(unint64_t)a7 numberOfChannels:(int)a8
{
  v14 = a3;
  v15 = a5;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __128__CSVTUIAudioRecorder__processAudioChain_audioStreamHandleId_remoteVAD_atTime_arrivalTimestampToAudioRecorder_numberOfChannels___block_invoke;
  block[3] = &unk_278579118;
  block[4] = self;
  v20 = v14;
  v21 = v15;
  v22 = a4;
  v23 = a6;
  v24 = a7;
  v25 = a8;
  v17 = v15;
  v18 = v14;
  dispatch_async(queue, block);
}

void __128__CSVTUIAudioRecorder__processAudioChain_audioStreamHandleId_remoteVAD_atTime_arrivalTimestampToAudioRecorder_numberOfChannels___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(*(a1 + 32) + 88);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        LODWORD(v8) = *(a1 + 80);
        [*(*(&v9 + 1) + 8 * v6++) audioRecorderBufferAvailable:*(a1 + 32) audioStreamHandleId:*(a1 + 56) buffer:*(a1 + 40) remoteVAD:*(a1 + 48) atTime:*(a1 + 64) arrivalTimestampToAudioRecorder:*(a1 + 72) numberOfChannels:v8];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (BOOL)_shouldUseRemoteBuiltInMic:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v3 = [a3 objectForKeyedSubscript:@"useRemoteBuiltInMic"];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)deactivateAudioSession:(unint64_t)a3 error:(id *)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = [MEMORY[0x277CBEAA8] date];
  v7 = MEMORY[0x277D015D8];
  v8 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136315394;
    v16 = "[CSVTUIAudioRecorder deactivateAudioSession:error:]";
    v17 = 2050;
    v18 = a3;
    _os_log_impl(&dword_225E12000, v8, OS_LOG_TYPE_DEFAULT, "%s Calling AVVC setSessionActivate for deactivation : %{public}tu", &v15, 0x16u);
  }

  [(AVVoiceController *)self->_voiceController deactivateAudioSessionWithOptions:[CSVTUIAudioRecorder _convertDeactivateOption:a3]];
  self->_waitingForDidStart = 0;
  v9 = [MEMORY[0x277CBEAA8] date];
  v10 = *v7;
  if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v10;
    [v9 timeIntervalSinceDate:v6];
    v15 = 136315394;
    v16 = "[CSVTUIAudioRecorder deactivateAudioSession:error:]";
    v17 = 2050;
    v18 = v12;
    _os_log_impl(&dword_225E12000, v11, OS_LOG_TYPE_DEFAULT, "%s setSessionActivate elapsed time = %{public}lf", &v15, 0x16u);
  }

  v13 = *MEMORY[0x277D85DE8];
  return 1;
}

- (BOOL)activateAudioSessionWithReason:(unint64_t)a3 streamHandleId:(unint64_t)a4 error:(id *)a5
{
  v34 = *MEMORY[0x277D85DE8];
  v9 = [MEMORY[0x277CBEAA8] date];
  v10 = MEMORY[0x277D015D8];
  v11 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v31 = "[CSVTUIAudioRecorder activateAudioSessionWithReason:streamHandleId:error:]";
    _os_log_impl(&dword_225E12000, v11, OS_LOG_TYPE_DEFAULT, "%s Calling AVVC setSessionActivate for activation", buf, 0xCu);
  }

  voiceController = self->_voiceController;
  if (a3 == 2)
  {
    v29 = 0;
    v13 = [(AVVoiceController *)voiceController activateAudioSessionForStream:a4 isPrewarm:0 recordMode:1 error:&v29];
    v14 = v29;
  }

  else
  {
    v28 = 0;
    v13 = [(AVVoiceController *)voiceController activateAudioSessionForStream:a4 isPrewarm:0 recordMode:0 error:&v28];
    v14 = v28;
  }

  v15 = v14;
  if (v13)
  {
    v16 = *v10;
    if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v31 = "[CSVTUIAudioRecorder activateAudioSessionWithReason:streamHandleId:error:]";
      _os_log_impl(&dword_225E12000, v16, OS_LOG_TYPE_DEFAULT, "%s AVVC successfully activated audioSession", buf, 0xCu);
    }

    v17 = 1;
    if (!a5)
    {
      goto LABEL_15;
    }

LABEL_14:
    v19 = v15;
    *a5 = v15;
    goto LABEL_15;
  }

  v18 = *v10;
  if (os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
  {
    v26 = v18;
    v27 = [v15 localizedDescription];
    *buf = 136315394;
    v31 = "[CSVTUIAudioRecorder activateAudioSessionWithReason:streamHandleId:error:]";
    v32 = 2114;
    v33 = v27;
    _os_log_error_impl(&dword_225E12000, v26, OS_LOG_TYPE_ERROR, "%s AVVC setSessionActivate has failed : %{public}@", buf, 0x16u);
  }

  v17 = 0;
  if (a5)
  {
    goto LABEL_14;
  }

LABEL_15:
  v20 = [MEMORY[0x277CBEAA8] date];
  v21 = *v10;
  if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
  {
    v22 = v21;
    [v20 timeIntervalSinceDate:v9];
    *buf = 136315394;
    v31 = "[CSVTUIAudioRecorder activateAudioSessionWithReason:streamHandleId:error:]";
    v32 = 2050;
    v33 = v23;
    _os_log_impl(&dword_225E12000, v22, OS_LOG_TYPE_DEFAULT, "%s setSessionActivate elapsed time = %{public}lf", buf, 0x16u);
  }

  v24 = *MEMORY[0x277D85DE8];
  return v17;
}

- (id)recordRouteWithStreamHandleId:(unint64_t)a3
{
  if ([MEMORY[0x277D018F8] hasRemoteBuiltInMic])
  {
    v5 = @"Builtin Microphone";
  }

  else
  {
    v6 = [(AVVoiceController *)self->_voiceController getRecordDeviceInfoForStream:a3];
    v5 = [v6 recordRoute];
  }

  return v5;
}

- (BOOL)isRecordingWithStreamHandleId:(unint64_t)a3
{
  if (![MEMORY[0x277D018F8] hasRemoteBuiltInMic])
  {
    return [(AVVoiceController *)self->_voiceController getCurrentStreamState:a3]> 3;
  }

  remoteRecordClient = self->_remoteRecordClient;

  return [(CSVTUIRemoteRecordClient *)remoteRecordClient isRecording];
}

- (BOOL)stopAudioStreamWithStreamHandleId:(unint64_t)a3 error:(id *)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v7 = [MEMORY[0x277CBEAA8] date];
  v8 = MEMORY[0x277D015D8];
  v9 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v25 = "[CSVTUIAudioRecorder stopAudioStreamWithStreamHandleId:error:]";
    _os_log_impl(&dword_225E12000, v9, OS_LOG_TYPE_DEFAULT, "%s Calling AVVC stopRecordForStream", buf, 0xCu);
  }

  voiceController = self->_voiceController;
  v23 = 0;
  v11 = [(AVVoiceController *)voiceController stopRecordForStream:a3 error:&v23];
  v12 = v23;
  if ((v11 & 1) != 0 || (v13 = *v8, !os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR)))
  {
    if (!a4)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v21 = v13;
  v22 = [v12 localizedDescription];
  *buf = 136315394;
  v25 = "[CSVTUIAudioRecorder stopAudioStreamWithStreamHandleId:error:]";
  v26 = 2114;
  v27 = v22;
  _os_log_error_impl(&dword_225E12000, v21, OS_LOG_TYPE_ERROR, "%s Failed to stopRecordForStream : %{public}@", buf, 0x16u);

  if (a4)
  {
LABEL_6:
    v14 = v12;
    *a4 = v12;
  }

LABEL_7:
  v15 = [MEMORY[0x277CBEAA8] date];
  v16 = *v8;
  if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
  {
    v17 = v16;
    [v15 timeIntervalSinceDate:v7];
    *buf = 136315394;
    v25 = "[CSVTUIAudioRecorder stopAudioStreamWithStreamHandleId:error:]";
    v26 = 2050;
    v27 = v18;
    _os_log_impl(&dword_225E12000, v17, OS_LOG_TYPE_DEFAULT, "%s stopRecordForStream elapsed time = %{public}lf", buf, 0x16u);
  }

  self->_waitingForDidStart = 0;

  v19 = *MEMORY[0x277D85DE8];
  return v11;
}

- (BOOL)startAudioStreamWithStreamHandleId:(unint64_t)a3 error:(id *)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v7 = [MEMORY[0x277CBEAA8] date];
  mach_absolute_time();
  kdebug_trace();
  v8 = [objc_alloc(MEMORY[0x277CB84E0]) initWithStreamID:a3 atStartHostTime:0];
  [v8 setSkipAlert:1];
  [v8 setStartAlert:0];
  [v8 setStopAlert:0];
  [v8 setStopOnErrorAlert:0];
  v9 = MEMORY[0x277D015D8];
  v10 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v11 = v10;
    v12 = [v8 debugDescription];
    *buf = 136315394;
    v28 = "[CSVTUIAudioRecorder startAudioStreamWithStreamHandleId:error:]";
    v29 = 2114;
    v30 = v12;
    _os_log_impl(&dword_225E12000, v11, OS_LOG_TYPE_DEFAULT, "%s Calling AVVC startRecordForStream : %{public}@", buf, 0x16u);
  }

  voiceController = self->_voiceController;
  v26 = 0;
  v14 = [(AVVoiceController *)voiceController startRecordForStream:v8 error:&v26];
  v15 = v26;
  if (v14)
  {
    self->_waitingForDidStart = 1;
    if (!a4)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v16 = *v9;
  if (!os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
  {
    if (!a4)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v24 = v16;
  v25 = [v15 localizedDescription];
  *buf = 136315394;
  v28 = "[CSVTUIAudioRecorder startAudioStreamWithStreamHandleId:error:]";
  v29 = 2114;
  v30 = v25;
  _os_log_error_impl(&dword_225E12000, v24, OS_LOG_TYPE_ERROR, "%s startRecordForStream failed : %{public}@", buf, 0x16u);

  if (a4)
  {
LABEL_8:
    v17 = v15;
    *a4 = v15;
  }

LABEL_9:
  v18 = [MEMORY[0x277CBEAA8] date];
  v19 = *v9;
  if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
  {
    v20 = v19;
    [v18 timeIntervalSinceDate:v7];
    *buf = 136315394;
    v28 = "[CSVTUIAudioRecorder startAudioStreamWithStreamHandleId:error:]";
    v29 = 2050;
    v30 = v21;
    _os_log_impl(&dword_225E12000, v20, OS_LOG_TYPE_DEFAULT, "%s startRecordForStream elapsed time = %{public}lf", buf, 0x16u);
  }

  v22 = *MEMORY[0x277D85DE8];
  return v14;
}

- (BOOL)prepareAudioStreamRecordWithStreamHandleId:(unint64_t)a3 error:(id *)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v7 = [MEMORY[0x277CBEAA8] date];
  v8 = [(CSVTUIAudioRecorder *)self _getRecordSettingsWithRequest];
  kdebug_trace();
  v9 = MEMORY[0x277D015D8];
  v10 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v28 = "[CSVTUIAudioRecorder prepareAudioStreamRecordWithStreamHandleId:error:]";
    v29 = 2050;
    v30 = a3;
    v31 = 2114;
    v32 = v8;
    _os_log_impl(&dword_225E12000, v10, OS_LOG_TYPE_DEFAULT, "%s Calling AVVC prepareRecordForStream(%{public}llu) : %{public}@", buf, 0x20u);
  }

  v11 = objc_alloc(MEMORY[0x277CB84D0]);
  [MEMORY[0x277D016E0] inputRecordingBufferDuration];
  v12 = [v11 initWithStreamID:a3 settings:v8 bufferDuration:?];
  [v12 setMeteringEnabled:1];
  voiceController = self->_voiceController;
  v26 = 0;
  v14 = [(AVVoiceController *)voiceController prepareRecordForStream:v12 error:&v26];
  v15 = v26;
  if ((v14 & 1) != 0 || (v16 = *v9, !os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR)))
  {
    if (!a4)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v24 = v16;
  v25 = [v15 localizedDescription];
  *buf = 136315394;
  v28 = "[CSVTUIAudioRecorder prepareAudioStreamRecordWithStreamHandleId:error:]";
  v29 = 2114;
  v30 = v25;
  _os_log_error_impl(&dword_225E12000, v24, OS_LOG_TYPE_ERROR, "%s AVVC prepareRecordForStream failed : %{public}@", buf, 0x16u);

  if (a4)
  {
LABEL_6:
    v17 = v15;
    *a4 = v15;
  }

LABEL_7:
  v18 = [MEMORY[0x277CBEAA8] date];
  v19 = *v9;
  if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
  {
    v20 = v19;
    [v18 timeIntervalSinceDate:v7];
    *buf = 136315394;
    v28 = "[CSVTUIAudioRecorder prepareAudioStreamRecordWithStreamHandleId:error:]";
    v29 = 2050;
    v30 = v21;
    _os_log_impl(&dword_225E12000, v20, OS_LOG_TYPE_DEFAULT, "%s prepareRecordForStream elapsed time = %{public}lf", buf, 0x16u);
  }

  v22 = *MEMORY[0x277D85DE8];
  return v14;
}

- (void)updateAudioRecorderForTrainingDevice:(unint64_t)a3 deviceUUIDs:(id)a4
{
  remoteDeviceContext = self->_remoteDeviceContext;
  self->_remoteDeviceContext = 0;
  MEMORY[0x2821F96F8]();
}

- (unint64_t)setContext:(id)a3 error:(id *)a4
{
  v46 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy__7161;
  v40 = __Block_byref_object_dispose__7162;
  v41 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  v7 = [MEMORY[0x277CBEAA8] date];
  v8 = [v6 avvcContextSettings];
  v9 = MEMORY[0x277D015D8];
  v10 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v8 debugDescription];
    *buf = 136315394;
    v43 = "[CSVTUIAudioRecorder setContext:error:]";
    v44 = 2112;
    v45 = v11;
    _os_log_impl(&dword_225E12000, v10, OS_LOG_TYPE_DEFAULT, "%s Calling AVVC setContext : %@", buf, 0x16u);
  }

  queue = self->_queue;
  v24 = MEMORY[0x277D85DD0];
  v25 = 3221225472;
  v26 = __40__CSVTUIAudioRecorder_setContext_error___block_invoke;
  v27 = &unk_2785790F0;
  v30 = &v32;
  v28 = self;
  v13 = v8;
  v29 = v13;
  v31 = &v36;
  dispatch_async_and_wait(queue, &v24);
  if (!v33[3])
  {
    v14 = *v9;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v23 = [v37[5] localizedDescription];
      *buf = 136315394;
      v43 = "[CSVTUIAudioRecorder setContext:error:]";
      v44 = 2114;
      v45 = v23;
      _os_log_error_impl(&dword_225E12000, v14, OS_LOG_TYPE_ERROR, "%s Failed to get handle id : %{public}@", buf, 0x16u);
    }
  }

  v15 = [v6 avvcContext];
  latestContext = self->_latestContext;
  self->_latestContext = v15;

  if (a4)
  {
    *a4 = v37[5];
  }

  v17 = [MEMORY[0x277CBEAA8] date];
  v18 = *v9;
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    [v17 timeIntervalSinceDate:v7];
    *buf = 136315394;
    v43 = "[CSVTUIAudioRecorder setContext:error:]";
    v44 = 2050;
    v45 = v19;
    _os_log_impl(&dword_225E12000, v18, OS_LOG_TYPE_DEFAULT, "%s setContext elapsed time = %{public}lf", buf, 0x16u);
  }

  v20 = v33[3];
  _Block_object_dispose(&v32, 8);
  _Block_object_dispose(&v36, 8);

  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

void __40__CSVTUIAudioRecorder_setContext_error___block_invoke(void *a1)
{
  v2 = a1[5];
  v3 = *(a1[4] + 8);
  v4 = *(a1[7] + 8);
  obj = *(v4 + 40);
  v5 = [v3 setContext:v2 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  *(*(a1[6] + 8) + 24) = v5;
}

- (id)_voiceControllerWithError:(id *)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x3032000000;
  v15[3] = __Block_byref_object_copy__7161;
  v15[4] = __Block_byref_object_dispose__7162;
  v16 = 0;
  voiceController = self->_voiceController;
  if (!voiceController)
  {
    kdebug_trace();
    if (CSIsHorseman())
    {
      voiceControllerCreationQueue = self->_voiceControllerCreationQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __49__CSVTUIAudioRecorder__voiceControllerWithError___block_invoke;
      block[3] = &unk_2785797D0;
      block[4] = self;
      block[5] = v15;
      dispatch_sync(voiceControllerCreationQueue, block);
    }

    queue = self->_queue;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __49__CSVTUIAudioRecorder__voiceControllerWithError___block_invoke_2;
    v13[3] = &unk_2785790C8;
    v13[4] = self;
    v13[5] = v15;
    v13[6] = a3;
    dispatch_async_and_wait(queue, v13);
    v8 = *MEMORY[0x277D015D8];
    if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
    {
      v9 = self->_voiceController;
      *buf = 136315394;
      v18 = "[CSVTUIAudioRecorder _voiceControllerWithError:]";
      v19 = 2050;
      v20 = v9;
      _os_log_impl(&dword_225E12000, v8, OS_LOG_TYPE_DEFAULT, "%s Successfully create AVVC : %{public}p", buf, 0x16u);
    }

    voiceController = self->_voiceController;
  }

  v10 = voiceController;
  _Block_object_dispose(v15, 8);

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

void __49__CSVTUIAudioRecorder__voiceControllerWithError___block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277CB84E8]);
  v3 = *(*(a1 + 40) + 8);
  obj = *(v3 + 40);
  v4 = [v2 initWithError:&obj];
  objc_storeStrong((v3 + 40), obj);
  v5 = *(a1 + 32);
  v6 = *(v5 + 8);
  *(v5 + 8) = v4;
}

void __49__CSVTUIAudioRecorder__voiceControllerWithError___block_invoke_2(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  if (!*(*(a1 + 32) + 8))
  {
    v2 = objc_alloc(MEMORY[0x277CB84E8]);
    v3 = *(*(a1 + 40) + 8);
    obj = *(v3 + 40);
    v4 = [v2 initWithError:&obj];
    objc_storeStrong((v3 + 40), obj);
    v5 = *(a1 + 32);
    v6 = *(v5 + 8);
    *(v5 + 8) = v4;
  }

  kdebug_trace();
  v7 = *(*(a1 + 32) + 8);
  if (v7)
  {
    [v7 setRecordDelegate:?];
  }

  else
  {
    v8 = MEMORY[0x277D015D8];
    v9 = *MEMORY[0x277D015D8];
    if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v17 = "[CSVTUIAudioRecorder _voiceControllerWithError:]_block_invoke_2";
      _os_log_error_impl(&dword_225E12000, v9, OS_LOG_TYPE_ERROR, "%s AVVC initialization failed", buf, 0xCu);
    }

    v10 = *(*(*(a1 + 40) + 8) + 40);
    if (v10)
    {
      v11 = *v8;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v13 = v11;
        v14 = [v10 localizedDescription];
        *buf = 136315394;
        v17 = "[CSVTUIAudioRecorder _voiceControllerWithError:]_block_invoke";
        v18 = 2114;
        v19 = v14;
        _os_log_error_impl(&dword_225E12000, v13, OS_LOG_TYPE_ERROR, "%s %{public}@", buf, 0x16u);
      }
    }

    if (*(a1 + 48))
    {
      **(a1 + 48) = *(*(*(a1 + 40) + 8) + 40);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_destroyVoiceController
{
  v18 = *MEMORY[0x277D85DE8];
  voiceController = self->_voiceController;
  if (voiceController)
  {
    v4 = MEMORY[0x277D015D8];
    v5 = *MEMORY[0x277D015D8];
    if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v15 = "[CSVTUIAudioRecorder _destroyVoiceController]";
      _os_log_impl(&dword_225E12000, v5, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
      voiceController = self->_voiceController;
    }

    v13 = 0;
    [(AVVoiceController *)voiceController teardownWithError:&v13];
    v6 = v13;
    if (v6)
    {
      v7 = *v4;
      if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
      {
        v11 = v7;
        v12 = [v6 localizedDescription];
        *buf = 136315394;
        v15 = "[CSVTUIAudioRecorder _destroyVoiceController]";
        v16 = 2114;
        v17 = v12;
        _os_log_error_impl(&dword_225E12000, v11, OS_LOG_TYPE_ERROR, "%s Failed to teardown AVVC : %{public}@", buf, 0x16u);
      }
    }

    v8 = objc_autoreleasePoolPush();
    v9 = self->_voiceController;
    self->_voiceController = 0;

    objc_autoreleasePoolPop(v8);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  v11 = *MEMORY[0x277D85DE8];
  [(CSVTUIAudioRecorder *)self _destroyVoiceController];
  pNonInterleavedABL = self->_pNonInterleavedABL;
  if (pNonInterleavedABL)
  {
    free(pNonInterleavedABL);
  }

  v4 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v8 = "[CSVTUIAudioRecorder dealloc]";
    v9 = 2050;
    v10 = self;
    _os_log_impl(&dword_225E12000, v4, OS_LOG_TYPE_DEFAULT, "%s CSAudioRecorder %{public}p deallocated", buf, 0x16u);
  }

  v6.receiver = self;
  v6.super_class = CSVTUIAudioRecorder;
  [(CSVTUIAudioRecorder *)&v6 dealloc];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)unregisterObserver:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__CSVTUIAudioRecorder_unregisterObserver___block_invoke;
  v7[3] = &unk_278579350;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)registerObserver:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __40__CSVTUIAudioRecorder_registerObserver___block_invoke;
  v7[3] = &unk_278579350;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (CSVTUIAudioRecorder)initWithQueue:(id)a3 error:(id *)a4
{
  v37 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v32.receiver = self;
  v32.super_class = CSVTUIAudioRecorder;
  v7 = [(CSVTUIAudioRecorder *)&v32 init];
  v8 = v7;
  if (v7)
  {
    if (v6)
    {
      [(CSVTUIAudioRecorder *)v7 setQueue:v6];
    }

    else
    {
      v9 = [objc_opt_class() description];
      v10 = [v9 UTF8String];
      v11 = dispatch_get_global_queue(33, 0);
      v12 = dispatch_queue_create_with_target_V2(v10, 0, v11);
      queue = v8->_queue;
      v8->_queue = v12;
    }

    v14 = dispatch_get_global_queue(9, 0);
    v15 = dispatch_queue_create_with_target_V2("VoiceControllerCreationQueue", 0, v14);
    voiceControllerCreationQueue = v8->_voiceControllerCreationQueue;
    v8->_voiceControllerCreationQueue = v15;

    v31 = 0;
    v17 = [(CSVTUIAudioRecorder *)v8 _voiceControllerWithError:&v31];
    v18 = v31;
    voiceController = v8->_voiceController;
    v8->_voiceController = v17;

    if (v8->_voiceController)
    {
      v20 = v18 == 0;
    }

    else
    {
      v20 = 0;
    }

    if (!v20)
    {
      v21 = *MEMORY[0x277D015D8];
      if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_ERROR))
      {
        v29 = v21;
        v30 = [v18 localizedDescription];
        *buf = 136315394;
        v34 = "[CSVTUIAudioRecorder initWithQueue:error:]";
        v35 = 2114;
        v36 = v30;
        _os_log_error_impl(&dword_225E12000, v29, OS_LOG_TYPE_ERROR, "%s Failed to create AVVC : %{public}@", buf, 0x16u);

        if (a4)
        {
          goto LABEL_11;
        }
      }

      else if (a4)
      {
LABEL_11:
        v22 = v18;
        v23 = 0;
        *a4 = v18;
        goto LABEL_17;
      }

      v23 = 0;
      goto LABEL_17;
    }

    v24 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observers = v8->_observers;
    v8->_observers = v24;

    v8->_waitingForDidStart = 0;
    v26 = *MEMORY[0x277D015D8];
    if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v34 = "[CSVTUIAudioRecorder initWithQueue:error:]";
      v35 = 2050;
      v36 = v8;
      _os_log_impl(&dword_225E12000, v26, OS_LOG_TYPE_DEFAULT, "%s Create new CSAudioRecorder = %{public}p", buf, 0x16u);
    }
  }

  if (a4)
  {
    *a4 = 0;
  }

  v23 = v8;
  v18 = 0;
LABEL_17:

  v27 = *MEMORY[0x277D85DE8];
  return v23;
}

@end