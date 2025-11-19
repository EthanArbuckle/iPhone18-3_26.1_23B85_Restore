@interface SFSSAudioPlaybackService
- (AudioStreamBasicDescription)asbd;
- (BOOL)isAudioQueueRunning;
- (SFSSAudioPlaybackService)initWithAudioSessionID:(unsigned int)a3 asbd:(AudioStreamBasicDescription *)a4;
- (id)enqueue:(id)a3 packetCount:(int64_t)a4 packetDescriptions:(id)a5;
- (id)start;
- (void)flushAndStop;
- (void)handleMediaServerReset;
- (void)pause;
- (void)reset;
- (void)signalQueueRunningStateChange;
- (void)stop;
- (void)waitForAudioQueueStop;
- (void)waitForQueueRunningStateChange;
@end

@implementation SFSSAudioPlaybackService

- (AudioStreamBasicDescription)asbd
{
  v3 = *&self[1].mBytesPerFrame;
  *&retstr->mSampleRate = *&self[1].mFormatID;
  *&retstr->mBytesPerPacket = v3;
  *&retstr->mBitsPerChannel = self[2].mSampleRate;
  return self;
}

- (void)waitForQueueRunningStateChange
{
  [(NSCondition *)self->_audioQueueStateCondition lock];
  [(NSCondition *)self->_audioQueueStateCondition wait];
  audioQueueStateCondition = self->_audioQueueStateCondition;

  [(NSCondition *)audioQueueStateCondition unlock];
}

- (void)signalQueueRunningStateChange
{
  [(NSCondition *)self->_audioQueueStateCondition lock];
  [(NSCondition *)self->_audioQueueStateCondition broadcast];
  audioQueueStateCondition = self->_audioQueueStateCondition;

  [(NSCondition *)audioQueueStateCondition unlock];
}

- (void)handleMediaServerReset
{
  v3 = SFSSGetLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_269079000, v3, OS_LOG_TYPE_INFO, "mediaserverd reset", v4, 2u);
  }

  [(SFSSAudioPlaybackService *)self stop];
}

- (BOOL)isAudioQueueRunning
{
  v11 = *MEMORY[0x277D85DE8];
  ioDataSize = 4;
  outData = 0;
  Property = AudioQueueGetProperty(self->_audioQueue, 0x6171726Eu, &outData, &ioDataSize);
  if (Property)
  {
    v3 = Property;
    v4 = SFSSGetLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v10 = v3;
      _os_log_error_impl(&dword_269079000, v4, OS_LOG_TYPE_ERROR, "Error AudioQueueGetProperty isRunning %d", buf, 8u);
    }
  }

  result = outData != 0;
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)enqueue:(id)a3 packetCount:(int64_t)a4 packetDescriptions:(id)a5
{
  v37 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  if ([v8 length])
  {
    outBuffer = 0;
    v10 = AudioQueueAllocateBuffer(self->_audioQueue, [v8 length], &outBuffer);
    if (v10)
    {
      v11 = v10;
      v12 = SFSSGetLogObject();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        LODWORD(v28) = v11;
        v13 = "Error AudioQueueAllocateBuffer %d";
LABEL_20:
        _os_log_error_impl(&dword_269079000, v12, OS_LOG_TYPE_ERROR, v13, buf, 8u);
        goto LABEL_7;
      }

      goto LABEL_7;
    }

    memcpy(outBuffer->mAudioData, [v8 bytes], objc_msgSend(v8, "length"));
    v14 = [v8 length];
    v15 = outBuffer;
    outBuffer->mAudioDataByteSize = v14;
    v16 = AudioQueueEnqueueBuffer(self->_audioQueue, v15, a4, [v9 bytes]);
    if (v16)
    {
      v11 = v16;
      v12 = SFSSGetLogObject();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        LODWORD(v28) = v11;
        v13 = "Error AudioQueueEnqueueBuffer %d";
        goto LABEL_20;
      }

LABEL_7:

      v17 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:v11 userInfo:0];
      goto LABEL_16;
    }

    if (a4 && v9)
    {
      v18 = (self->_asbd.mFramesPerPacket * a4);
    }

    else
    {
      v18 = ([v8 length] / self->_asbd.mBytesPerFrame);
    }

    v19 = v18 + self->_enqueuedSampleCount;
    self->_enqueuedSampleCount = v19;
    mSampleRate = self->_asbd.mSampleRate;
    v21 = SFSSGetLogObject();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = [v8 length];
      enqueuedSampleCount = self->_enqueuedSampleCount;
      *buf = 134219008;
      v28 = self;
      v29 = 2048;
      v30 = 0;
      v31 = 2048;
      v32 = v22;
      v33 = 2048;
      v34 = enqueuedSampleCount;
      v35 = 2048;
      v36 = v19 / mSampleRate;
      _os_log_impl(&dword_269079000, v21, OS_LOG_TYPE_INFO, "AudioPlaybackService %p enqueued audio buffer at sample time: %.2f, size: %ld, total enqueued samples: %.0f, enqueued audio duration: %.3f", buf, 0x34u);
    }
  }

  v17 = 0;
LABEL_16:

  v24 = *MEMORY[0x277D85DE8];

  return v17;
}

- (void)reset
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = AudioQueueReset(self->_audioQueue);
  if (v3)
  {
    v4 = v3;
    v5 = SFSSGetLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7[0] = 67109120;
      v7[1] = v4;
      _os_log_error_impl(&dword_269079000, v5, OS_LOG_TYPE_ERROR, "Error AudioQueueReset %d", v7, 8u);
    }
  }

  self->_enqueuedSampleCount = 0.0;
  v6 = *MEMORY[0x277D85DE8];
}

- (void)pause
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = AudioQueuePause(self->_audioQueue);
  v4 = SFSSGetLogObject();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v7 = 67109120;
      LODWORD(v8) = v3;
      _os_log_error_impl(&dword_269079000, v5, OS_LOG_TYPE_ERROR, "Error AudioQueuePause %d", &v7, 8u);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v7 = 134217984;
    v8 = self;
    _os_log_impl(&dword_269079000, v5, OS_LOG_TYPE_INFO, "VSAudioPlaybackServices %p success AudioQueuePause", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)waitForAudioQueueStop
{
  v9 = *MEMORY[0x277D85DE8];
  if ([(SFSSAudioPlaybackService *)self isAudioQueueRunning])
  {
    do
    {
      [(SFSSAudioPlaybackService *)self waitForQueueRunningStateChange];
    }

    while ([(SFSSAudioPlaybackService *)self isAudioQueueRunning]);
  }

  v3 = AudioQueueRemovePropertyListener(self->_audioQueue, 0x6171726Eu, _audioPlaybackServiceRunningStateChanged, self);
  if (v3)
  {
    v4 = v3;
    v5 = SFSSGetLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v8[0] = 67109120;
      v8[1] = v4;
      _os_log_error_impl(&dword_269079000, v5, OS_LOG_TYPE_ERROR, "Error AudioQueueRemovePropertyListener %d", v8, 8u);
    }
  }

  v6 = SFSSGetLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    LOWORD(v8[0]) = 0;
    _os_log_impl(&dword_269079000, v6, OS_LOG_TYPE_INFO, "Audio queue stopped.", v8, 2u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)stop
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = AudioQueueStop(self->_audioQueue, 1u);
  if (v3)
  {
    v4 = v3;
    v5 = SFSSGetLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7[0] = 67109120;
      v7[1] = v4;
      _os_log_error_impl(&dword_269079000, v5, OS_LOG_TYPE_ERROR, "Error AudioQueueStop %d", v7, 8u);
    }
  }

  self->_enqueuedSampleCount = 0.0;
  v6 = *MEMORY[0x277D85DE8];
}

- (void)flushAndStop
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = AudioQueueFlush(self->_audioQueue);
  if (v3)
  {
    v4 = v3;
    v5 = SFSSGetLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v10 = 67109120;
      v11 = v4;
      v6 = "Error AudioQueueFlush %d";
LABEL_10:
      _os_log_error_impl(&dword_269079000, v5, OS_LOG_TYPE_ERROR, v6, &v10, 8u);
    }
  }

  else
  {
    v7 = AudioQueueStop(self->_audioQueue, 0);
    if (!v7)
    {
      self->_enqueuedSampleCount = 0.0;
      goto LABEL_7;
    }

    v8 = v7;
    v5 = SFSSGetLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v10 = 67109120;
      v11 = v8;
      v6 = "Error AudioQueueStop %d";
      goto LABEL_10;
    }
  }

LABEL_7:
  v9 = *MEMORY[0x277D85DE8];
}

- (id)start
{
  v15[1] = *MEMORY[0x277D85DE8];
  v3 = AudioQueueStart(self->_audioQueue, 0);
  v4 = SFSSGetLogObject();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v12 = 67109120;
      LODWORD(v13) = v3;
      _os_log_error_impl(&dword_269079000, v5, OS_LOG_TYPE_ERROR, "Error AudioQueueStart %d", &v12, 8u);
    }

    v6 = MEMORY[0x277CCA9B8];
    v7 = *MEMORY[0x277CCA590];
    v14 = *MEMORY[0x277CCA450];
    v15[0] = @"Error AudioQueueStart";
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    v9 = [v6 errorWithDomain:v7 code:v3 userInfo:v8];
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v12 = 134217984;
      v13 = self;
      _os_log_impl(&dword_269079000, v5, OS_LOG_TYPE_INFO, "AudioPlaybackService %p success AudioQueueStart", &v12, 0xCu);
    }

    if (![(SFSSAudioPlaybackService *)self isAudioQueueRunning])
    {
      do
      {
        [(SFSSAudioPlaybackService *)self waitForQueueRunningStateChange];
      }

      while (![(SFSSAudioPlaybackService *)self isAudioQueueRunning]);
    }

    v8 = SFSSGetLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v12 = 134217984;
      v13 = self;
      _os_log_impl(&dword_269079000, v8, OS_LOG_TYPE_INFO, "AudioPlaybackService %p success AudioQueueStart started", &v12, 0xCu);
    }

    v9 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (SFSSAudioPlaybackService)initWithAudioSessionID:(unsigned int)a3 asbd:(AudioStreamBasicDescription *)a4
{
  v55 = *MEMORY[0x277D85DE8];
  v7 = [MEMORY[0x277CBEAA8] date];
  v49.receiver = self;
  v49.super_class = SFSSAudioPlaybackService;
  v8 = [(SFSSAudioPlaybackService *)&v49 init];
  v9 = v8;
  if (v8)
  {
    v10 = *&a4->mSampleRate;
    v11 = *&a4->mBytesPerPacket;
    *&v8->_asbd.mBitsPerChannel = *&a4->mBitsPerChannel;
    *&v8->_asbd.mSampleRate = v10;
    *&v8->_asbd.mBytesPerPacket = v11;
    if (a3)
    {
      v8->_sessionID = a3;
      p_sessionID = &v8->_sessionID;
    }

    else
    {
      v13 = [MEMORY[0x277CB83F8] sharedInstance];
      v9->_sessionID = [v13 opaqueSessionID];
      p_sessionID = &v9->_sessionID;

      sessionID = v9->_sessionID;
    }

    v15 = *MEMORY[0x277CBF048];
    v16 = AudioQueueNewOutputWithAudioSession();
    if (v16)
    {
      v17 = v16;
      v18 = SFSSGetLogObject();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        LODWORD(v51) = v17;
        _os_log_error_impl(&dword_269079000, v18, OS_LOG_TYPE_ERROR, "Error AudioQueueNewOutputWithAudioSession %d", buf, 8u);
      }

LABEL_26:
      v39 = 0;
      goto LABEL_33;
    }

    v19 = [MEMORY[0x277CB83F8] retrieveSessionWithID:*p_sessionID];
    v20 = [v19 currentRoute];

    v21 = [MEMORY[0x277CBEB18] array];
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v22 = [v20 outputs];
    v23 = [v22 countByEnumeratingWithState:&v45 objects:v54 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v46;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v46 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = [*(*(&v45 + 1) + 8 * i) portType];
          [v21 addObject:v27];
        }

        v24 = [v22 countByEnumeratingWithState:&v45 objects:v54 count:16];
      }

      while (v24);
    }

    v28 = [v21 componentsJoinedByString:{@", "}];
    outputRoute = v9->_outputRoute;
    v9->_outputRoute = v28;

    v30 = SFSSGetLogObject();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      v31 = v9->_outputRoute;
      *buf = 138412290;
      v51 = v31;
      _os_log_impl(&dword_269079000, v30, OS_LOG_TYPE_INFO, "Current audio output route: %@", buf, 0xCu);
    }

    v32 = AudioQueueSetProperty(v9->_audioQueue, 0x63756964u, &AudioPlaybackAudioQueueUID, 8u);
    if (v32)
    {
      v33 = v32;
      v34 = SFSSGetLogObject();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        LODWORD(v51) = v33;
        _os_log_error_impl(&dword_269079000, v34, OS_LOG_TYPE_ERROR, "Unable to set kAudioQueueProperty_ClientUID, errno: %d", buf, 8u);
      }
    }

    v35 = [MEMORY[0x277CCAB98] defaultCenter];
    [v35 addObserver:v9 selector:sel_handleMediaServerReset name:*MEMORY[0x277CB80A0] object:0];

    v36 = AudioQueueAddPropertyListener(v9->_audioQueue, 0x6171726Eu, _audioPlaybackServiceRunningStateChanged, v9);
    v37 = SFSSGetLogObject();
    v38 = v37;
    if (v36)
    {
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        LODWORD(v51) = v36;
        _os_log_error_impl(&dword_269079000, v38, OS_LOG_TYPE_ERROR, "Error AudioQueueAddPropertyListener %d", buf, 8u);
      }

      goto LABEL_26;
    }

    if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      LODWORD(v51) = a3;
      _os_log_impl(&dword_269079000, v38, OS_LOG_TYPE_INFO, "AudioQueue initialized with session ID: %d", buf, 8u);
    }
  }

  [v7 timeIntervalSinceNow];
  v41 = v40;
  v42 = SFSSGetLogObject();
  if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
  {
    *buf = 134218240;
    v51 = v9;
    v52 = 2048;
    v53 = v41;
    _os_log_impl(&dword_269079000, v42, OS_LOG_TYPE_INFO, "AudioPlaybackService %p init latency: %.3f", buf, 0x16u);
  }

  v39 = v9;
LABEL_33:

  v43 = *MEMORY[0x277D85DE8];
  return v39;
}

@end