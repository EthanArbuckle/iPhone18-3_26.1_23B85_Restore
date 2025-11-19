@interface _LTPlaybackService
- (BOOL)_currentOutputRouteIsSpeaker;
- (BOOL)isAudioQueueRunning;
- (_LTPlaybackService)initWithContext:(id)a3 ASBD:(AudioStreamBasicDescription *)a4;
- (id)enqueue:(id)a3 packetCount:(int64_t)a4 packetDescriptions:(id)a5;
- (id)start;
- (void)dealloc;
- (void)flushAndStop;
- (void)handleMediaServerReset;
- (void)isAudioQueueRunning;
- (void)reset;
- (void)signalQueueRunningStateChanged;
- (void)start;
- (void)stop;
- (void)waitForAudioQueueStop;
@end

@implementation _LTPlaybackService

- (_LTPlaybackService)initWithContext:(id)a3 ASBD:(AudioStreamBasicDescription *)a4
{
  v42 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v38.receiver = self;
  v38.super_class = _LTPlaybackService;
  v8 = [(_LTPlaybackService *)&v38 init];
  v9 = v8;
  if (!v8)
  {
LABEL_5:
    v15 = 0;
    goto LABEL_20;
  }

  v10 = *&a4->mSampleRate;
  v11 = *&a4->mBytesPerPacket;
  *(v8 + 5) = *&a4->mBitsPerChannel;
  *(v8 + 24) = v11;
  *(v8 + 8) = v10;
  objc_storeStrong(v8 + 21, a3);
  v12 = [v7 audioSessionID];
  *(v9 + 7) = 850045863;
  *(v9 + 4) = 0u;
  *(v9 + 5) = 0u;
  *(v9 + 6) = 0u;
  *(v9 + 14) = 0;
  *(v9 + 15) = 1018212795;
  *(v9 + 8) = 0u;
  *(v9 + 9) = 0u;
  *(v9 + 20) = 0;
  v13 = *MEMORY[0x277CBF048];
  if (AudioQueueNewOutputWithAudioSession())
  {
    v14 = _LTOSLogTTS();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [_LTPlaybackService initWithContext:ASBD:];
    }

    goto LABEL_5;
  }

  [v7 ttsPlaybackRate];
  if (v16 != 1.0)
  {
    inData = 1;
    AudioQueueSetProperty(*(v9 + 6), 0x715F7470u, &inData, 4u);
    inData = 1953064047;
    AudioQueueSetProperty(*(v9 + 6), 0x71747061u, &inData, 4u);
    v17 = *(v9 + 6);
    [v7 ttsPlaybackRate];
    *&v18 = v18;
    AudioQueueSetParameter(v17, 2u, *&v18);
  }

  v19 = [MEMORY[0x277CBEB18] array];
  v20 = [MEMORY[0x277CB83F8] retrieveSessionWithID:v12];
  v21 = [v20 currentRoute];

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v22 = [v21 outputs];
  v23 = [v22 countByEnumeratingWithState:&v34 objects:v41 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v35;
    do
    {
      v26 = 0;
      do
      {
        if (*v35 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = [*(*(&v34 + 1) + 8 * v26) portType];
        [v19 addObject:v27];

        ++v26;
      }

      while (v24 != v26);
      v24 = [v22 countByEnumeratingWithState:&v34 objects:v41 count:16];
    }

    while (v24);
  }

  v28 = [v19 componentsJoinedByString:{@", "}];
  v29 = _LTOSLogTTS();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
  {
    inData = 138412290;
    v40 = v28;
    _os_log_impl(&dword_232E53000, v29, OS_LOG_TYPE_INFO, "Current audio output route: %@", &inData, 0xCu);
  }

  v30 = [MEMORY[0x277CCAB98] defaultCenter];
  [v30 addObserver:v9 selector:sel_handleMediaServerReset name:*MEMORY[0x277CB80A0] object:0];

  v31 = _LTOSLogTTS();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
  {
    inData = 67109120;
    LODWORD(v40) = v12;
    _os_log_impl(&dword_232E53000, v31, OS_LOG_TYPE_INFO, "AudioQueue initialized with session id: %d", &inData, 8u);
  }

  v15 = v9;

LABEL_20:
  v32 = *MEMORY[0x277D85DE8];
  return v15;
}

- (void)dealloc
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_6();
  OUTLINED_FUNCTION_1_7(&dword_232E53000, v0, v1, "Error disposing audio queue %d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)handleMediaServerReset
{
  v3 = _LTOSLogTTS();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_232E53000, v3, OS_LOG_TYPE_INFO, "mediaserverd reset", v4, 2u);
  }

  [(_LTPlaybackService *)self stop];
}

- (BOOL)_currentOutputRouteIsSpeaker
{
  v2 = [MEMORY[0x277CB83F8] retrieveSessionWithID:{-[_LTTranslationContext audioSessionID](self->_context, "audioSessionID")}];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 currentRoute];
    v5 = [v4 outputs];

    if ([v5 count] == 1)
    {
      v6 = [v5 firstObject];
      v7 = [v6 portType];
      v8 = [v7 isEqualToString:@"Speaker"];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)start
{
  v18[1] = *MEMORY[0x277D85DE8];
  v3 = AudioQueueStart(self->_audioQueue, 0);
  if (v3)
  {
    v4 = MEMORY[0x277CCA9B8];
    v5 = *MEMORY[0x277CCA590];
    v6 = v3;
    v17 = *MEMORY[0x277CCA450];
    v18[0] = @"Error AudioQueueStart";
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    v8 = [v4 errorWithDomain:v5 code:v6 userInfo:v7];

    v9 = _LTOSLogTTS();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [_LTPlaybackService start];
    }
  }

  else
  {
    if ([(_LTTranslationContext *)self->_context muteTTSBasedOnRingerSwitchIfPossible]&& [(_LTPlaybackService *)self _currentOutputRouteIsSpeaker])
    {
      v10 = [MEMORY[0x277CB83F8] retrieveSessionWithID:{-[_LTTranslationContext audioSessionID](self->_context, "audioSessionID")}];
      v11 = [MEMORY[0x277CCABB0] numberWithBool:1];
      v16 = 0;
      [v10 setMXSessionProperty:@"MutesAudioBasedOnRingerSwitchState" value:v11 error:&v16];
      v12 = v16;

      if (v12)
      {
        v13 = _LTOSLogTTS();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          [(_LTPlaybackService *)v12 start];
        }
      }
    }

    v8 = 0;
    self->_state = 1;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)enqueue:(id)a3 packetCount:(int64_t)a4 packetDescriptions:(id)a5
{
  v6 = a4;
  v33 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  if (![v8 length])
  {
LABEL_15:
    v13 = 0;
    goto LABEL_16;
  }

  v10 = _LTOSLogTTS();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = v10;
    LODWORD(buf.mSampleTime) = 134217984;
    *(&buf.mSampleTime + 4) = [v8 length];
    _os_log_impl(&dword_232E53000, v11, OS_LOG_TYPE_INFO, "Creating buffer of length: %zu", &buf, 0xCu);
  }

  outBuffer = 0;
  v12 = AudioQueueAllocateBuffer(self->_audioQueue, [v8 length], &outBuffer);
  if (v12)
  {
    v13 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:v12 userInfo:0];
    v14 = _LTOSLogTTS();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [_LTPlaybackService enqueue:packetCount:packetDescriptions:];
    }

    goto LABEL_16;
  }

  memcpy(outBuffer->mAudioData, [v8 bytes], objc_msgSend(v8, "length"));
  v15 = [v8 length];
  outBuffer->mAudioDataByteSize = v15;
  memset(&buf, 0, sizeof(buf));
  AudioQueueGetCurrentTime(self->_audioQueue, 0, &buf, 0);
  v16 = AudioQueueEnqueueBuffer(self->_audioQueue, outBuffer, v6, [v9 bytes]);
  if (!v16)
  {
    v18 = _LTOSLogTTS();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      if (v9)
      {
        v19 = @"Opus";
      }

      else
      {
        v19 = @"PCM";
      }

      mSampleTime = buf.mSampleTime;
      v21 = v18;
      v22 = [v8 length];
      *v26 = 138543874;
      v27 = v19;
      v28 = 2048;
      v29 = mSampleTime;
      v30 = 2048;
      v31 = v22;
      _os_log_impl(&dword_232E53000, v21, OS_LOG_TYPE_INFO, "Enqueued %{public}@ audio buffer at sample title: %.2f, size: %zu", v26, 0x20u);
    }

    goto LABEL_15;
  }

  v13 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:v16 userInfo:0];
  v17 = _LTOSLogTTS();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    [_LTPlaybackService enqueue:packetCount:packetDescriptions:];
  }

LABEL_16:

  v23 = *MEMORY[0x277D85DE8];

  return v13;
}

- (void)signalQueueRunningStateChanged
{
  pthread_mutex_lock(&self->_waitForStateChange);
  v3 = _LTOSLogTTS();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_232E53000, v3, OS_LOG_TYPE_INFO, "Playback service running state changed", v4, 2u);
  }

  pthread_cond_broadcast(&self->_stateChangeCondition);
  pthread_mutex_unlock(&self->_waitForStateChange);
}

- (void)waitForAudioQueueStop
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_6();
  OUTLINED_FUNCTION_1_7(&dword_232E53000, v0, v1, "Failed to remove property listener %d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)flushAndStop
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_6();
  OUTLINED_FUNCTION_1_7(&dword_232E53000, v0, v1, "Error stopping audio queue %d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)stop
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_6();
  OUTLINED_FUNCTION_1_7(&dword_232E53000, v0, v1, "Error AudioQueueStop %d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)reset
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_6();
  OUTLINED_FUNCTION_1_7(&dword_232E53000, v0, v1, "Error AudioQueueReset %d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (BOOL)isAudioQueueRunning
{
  ioDataSize = 4;
  outData = 0;
  if (AudioQueueGetProperty(self->_audioQueue, 0x6171726Eu, &outData, &ioDataSize))
  {
    v2 = _LTOSLogTTS();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      [_LTPlaybackService isAudioQueueRunning];
    }
  }

  return outData != 0;
}

- (void)initWithContext:ASBD:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_6();
  OUTLINED_FUNCTION_1_7(&dword_232E53000, v0, v1, "Error creating playback service, %d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)start
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_232E53000, a2, OS_LOG_TYPE_ERROR, "Encountered error setting MutesAudioBasedOnRingerSwitchState: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)enqueue:packetCount:packetDescriptions:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_13();
  OUTLINED_FUNCTION_3_3(&dword_232E53000, v0, v1, "Failed to create audio buffer: %d: %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)enqueue:packetCount:packetDescriptions:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_13();
  OUTLINED_FUNCTION_3_3(&dword_232E53000, v0, v1, "Failed to enqueue audio data: %d: %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)isAudioQueueRunning
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_6();
  OUTLINED_FUNCTION_1_7(&dword_232E53000, v0, v1, "Error checking is running property: %d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end