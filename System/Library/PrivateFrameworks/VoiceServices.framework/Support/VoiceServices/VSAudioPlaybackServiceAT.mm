@interface VSAudioPlaybackServiceAT
- (AudioStreamBasicDescription)asbd;
- (AudioTimeStamp)audioStartTimeStamp;
- (BOOL)getAveragePower:(float *)a3 andPeakPower:(float *)a4;
- (BOOL)isAudioQueueRunning;
- (BOOL)isAudioQueueStalled;
- (VSAudioPlaybackServiceAT)initWithAudioSessionID:(unsigned int)a3 asbd:(AudioStreamBasicDescription *)a4;
- (_opaque_pthread_cond_t)stateChangeCondition;
- (_opaque_pthread_mutex_t)waitForStateChangeMutex;
- (id)_enqueueAudioBytesLength:(unsigned int)a3 audioBytes:(const void *)a4 packetCount:(int64_t)a5 packetDescriptions:(const void *)a6;
- (id)addBoundaryTimeObserverForTimes:(id)a3 usingBlock:(id)a4;
- (id)start;
- (void)dealloc;
- (void)dequeueAvailableMappedAudio;
- (void)didEndAccessPower;
- (void)enqueue:(id)a3 packetCount:(int64_t)a4 packetDescriptions:(id)a5;
- (void)flushAndStop;
- (void)handleMediaServerReset;
- (void)pause;
- (void)setAsbd:(AudioStreamBasicDescription *)a3;
- (void)setAudioStartTimeStamp:(AudioTimeStamp *)a3;
- (void)setStateChangeCondition:(_opaque_pthread_cond_t *)a3;
- (void)setWaitForStateChangeMutex:(_opaque_pthread_mutex_t *)a3;
- (void)signalQueueRunningStateChange;
- (void)stop;
- (void)waitForAudioQueueStop;
- (void)willBeginAccessPower;
@end

@implementation VSAudioPlaybackServiceAT

- (void)setAudioStartTimeStamp:(AudioTimeStamp *)a3
{
  v3 = *&a3->mSampleTime;
  v4 = *&a3->mRateScalar;
  v5 = *&a3->mSMPTETime.mHours;
  *&self->_audioStartTimeStamp.mSMPTETime.mSubframes = *&a3->mSMPTETime.mSubframes;
  *&self->_audioStartTimeStamp.mSMPTETime.mHours = v5;
  *&self->_audioStartTimeStamp.mSampleTime = v3;
  *&self->_audioStartTimeStamp.mRateScalar = v4;
}

- (AudioTimeStamp)audioStartTimeStamp
{
  v3 = *&self[4].mRateScalar;
  *&retstr->mSampleTime = *&self[4].mSampleTime;
  *&retstr->mRateScalar = v3;
  v4 = *&self[4].mSMPTETime.mHours;
  *&retstr->mSMPTETime.mSubframes = *&self[4].mSMPTETime.mSubframes;
  *&retstr->mSMPTETime.mHours = v4;
  return self;
}

- (void)setStateChangeCondition:(_opaque_pthread_cond_t *)a3
{
  v3 = *&a3->__sig;
  v4 = *&a3->__opaque[24];
  *&self->_stateChangeCondition.__opaque[8] = *&a3->__opaque[8];
  *&self->_stateChangeCondition.__opaque[24] = v4;
  *&self->_stateChangeCondition.__sig = v3;
}

- (_opaque_pthread_cond_t)stateChangeCondition
{
  v3 = *&self[3].__opaque[8];
  *&retstr->__sig = *&self[3].__sig;
  *&retstr->__opaque[8] = v3;
  *&retstr->__opaque[24] = *&self[3].__opaque[24];
  return self;
}

- (void)setWaitForStateChangeMutex:(_opaque_pthread_mutex_t *)a3
{
  v3 = *&a3->__sig;
  v4 = *&a3->__opaque[8];
  v5 = *&a3->__opaque[40];
  *&self->_waitForStateChangeMutex.__opaque[24] = *&a3->__opaque[24];
  *&self->_waitForStateChangeMutex.__opaque[40] = v5;
  *&self->_waitForStateChangeMutex.__sig = v3;
  *&self->_waitForStateChangeMutex.__opaque[8] = v4;
}

- (_opaque_pthread_mutex_t)waitForStateChangeMutex
{
  v3 = *&self[3].__opaque[8];
  *&retstr->__sig = *&self[3].__sig;
  *&retstr->__opaque[8] = v3;
  v4 = *&self[3].__opaque[40];
  *&retstr->__opaque[24] = *&self[3].__opaque[24];
  *&retstr->__opaque[40] = v4;
  return self;
}

- (void)setAsbd:(AudioStreamBasicDescription *)a3
{
  v3 = *&a3->mSampleRate;
  v4 = *&a3->mBytesPerPacket;
  *&self->_asbd.mBitsPerChannel = *&a3->mBitsPerChannel;
  *&self->_asbd.mBytesPerPacket = v4;
  *&self->_asbd.mSampleRate = v3;
}

- (AudioStreamBasicDescription)asbd
{
  v3 = *&self[3].mSampleRate;
  *&retstr->mSampleRate = *&self[2].mBytesPerFrame;
  *&retstr->mBytesPerPacket = v3;
  *&retstr->mBitsPerChannel = *&self[3].mBytesPerPacket;
  return self;
}

- (BOOL)getAveragePower:(float *)a3 andPeakPower:(float *)a4
{
  v28 = *MEMORY[0x277D85DE8];
  ioDataSize = 8;
  v7 = [(VSAudioPlaybackServiceAT *)self isAudioQueueRunning];
  if (v7)
  {
    Property = AudioQueueGetProperty(self->_audioQueue, 0x61716D64u, outData, &ioDataSize);
    if (Property)
    {
      v9 = Property;
      v10 = VSGetLogDefault();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v18 = [MEMORY[0x277CCACA8] vs_stringFrom4CC:v9];
        *buf = 136315394;
        v24 = "[VSAudioPlaybackServiceAT getAveragePower:andPeakPower:]";
        v25 = 2112;
        v26 = v18;
        _os_log_error_impl(&dword_2727E4000, v10, OS_LOG_TYPE_ERROR, "Error: %s, errno: %@", buf, 0x16u);
      }

      v11 = MEMORY[0x277CCA9B8];
      v12 = *MEMORY[0x277CCA590];
      v21 = *MEMORY[0x277CCA450];
      v22 = @"Unable to get kAudioQueueProperty_CurrentLevelMeterDB";
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
      v14 = [v11 errorWithDomain:v12 code:v9 userInfo:v13];
      error = self->_error;
      self->_error = v14;

      LOBYTE(v7) = 0;
    }

    else
    {
      v16 = outData[1];
      *a3 = *outData;
      *a4 = v16;
      LOBYTE(v7) = 1;
    }
  }

  v17 = *MEMORY[0x277D85DE8];
  return v7;
}

- (void)didEndAccessPower
{
  v19 = *MEMORY[0x277D85DE8];
  inData = 0;
  v3 = AudioQueueSetProperty(self->_audioQueue, 0x61716D65u, &inData, 4u);
  if (v3)
  {
    v4 = v3;
    v5 = VSGetLogDefault();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v13 = [MEMORY[0x277CCACA8] vs_stringFrom4CC:v4];
      *buf = 138412290;
      v18 = v13;
      _os_log_error_impl(&dword_2727E4000, v5, OS_LOG_TYPE_ERROR, "Unable to disable kAudioQueueProperty_EnableLevelMetering, err: %@", buf, 0xCu);
    }

    v6 = MEMORY[0x277CCA9B8];
    v7 = *MEMORY[0x277CCA590];
    v15 = *MEMORY[0x277CCA450];
    v16 = @"Unable to disable kAudioQueueProperty_EnableLevelMetering";
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    v9 = [v6 errorWithDomain:v7 code:v4 userInfo:v8];
    error = self->_error;
    self->_error = v9;
  }

  timebase = self->_timebase;
  if (timebase)
  {
    CMTimebaseSetRate(timebase, 0.0);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)willBeginAccessPower
{
  v18 = *MEMORY[0x277D85DE8];
  inData = 1;
  v3 = AudioQueueSetProperty(self->_audioQueue, 0x61716D65u, &inData, 4u);
  if (v3)
  {
    v4 = v3;
    v5 = VSGetLogDefault();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v12 = [MEMORY[0x277CCACA8] vs_stringFrom4CC:v4];
      *buf = 138412290;
      v17 = v12;
      _os_log_error_impl(&dword_2727E4000, v5, OS_LOG_TYPE_ERROR, "Unable to enable kAudioQueueProperty_EnableLevelMetering, err: %@", buf, 0xCu);
    }

    v6 = MEMORY[0x277CCA9B8];
    v7 = *MEMORY[0x277CCA590];
    v14 = *MEMORY[0x277CCA450];
    v15 = @"Unable to enable kAudioQueueProperty_EnableLevelMetering";
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    v9 = [v6 errorWithDomain:v7 code:v4 userInfo:v8];
    error = self->_error;
    self->_error = v9;
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (id)addBoundaryTimeObserverForTimes:(id)a3 usingBlock:(id)a4
{
  if (self->_timebase)
  {
    v6 = a4;
    v7 = a3;
    v8 = [[VSOccasionalTimesObserver alloc] initWithTimebase:self->_timebase times:v7 queue:0 block:v6];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)isAudioQueueRunning
{
  v20 = *MEMORY[0x277D85DE8];
  ioDataSize = 4;
  outData = 0;
  Property = AudioQueueGetProperty(self->_audioQueue, 0x6171726Eu, &outData, &ioDataSize);
  if (Property)
  {
    v4 = Property;
    v5 = VSGetLogDefault();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v13 = [MEMORY[0x277CCACA8] vs_stringFrom4CC:v4];
      *buf = 138412290;
      v19 = v13;
      _os_log_error_impl(&dword_2727E4000, v5, OS_LOG_TYPE_ERROR, "Error AudioQueueGetProperty isRunning %@", buf, 0xCu);
    }

    v6 = MEMORY[0x277CCA9B8];
    v7 = *MEMORY[0x277CCA590];
    v16 = *MEMORY[0x277CCA450];
    v17 = @"Error AudioQueueGetProperty isRunning";
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    v9 = [v6 errorWithDomain:v7 code:v4 userInfo:v8];
    error = self->_error;
    self->_error = v9;
  }

  result = outData != 0;
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)isAudioQueueStalled
{
  v18 = *MEMORY[0x277D85DE8];
  if (self->_state == 3)
  {
    v3 = [MEMORY[0x277CBEAA8] date];
    [v3 timeIntervalSinceDate:self->_audioQueueFutureEndDate];
    v5 = v4 > 5.0;
    if (v4 > 5.0)
    {
      v6 = objc_alloc_init(MEMORY[0x277CCA968]);
      [v6 setDateFormat:@"YYYY-MM-dd hh:mm:ss:SSS"];
      v7 = VSGetLogDefault();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v10 = [v6 stringFromDate:v3];
        v11 = [v6 stringFromDate:self->_audioQueueFutureEndDate];
        v12 = 138412802;
        v13 = v10;
        v14 = 2112;
        v15 = v11;
        v16 = 2048;
        v17 = 0x4014000000000000;
        _os_log_error_impl(&dword_2727E4000, v7, OS_LOG_TYPE_ERROR, "Detected stall of audio queue, based on NSDate. Now: %@, supposed end time: %@, Tolerance: %.2f", &v12, 0x20u);
      }
    }
  }

  else
  {
    v5 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)waitForAudioQueueStop
{
  v29[1] = *MEMORY[0x277D85DE8];
  state = self->_state;
  if (state != 1 && state != 4)
  {
    pthread_mutex_lock(&self->_waitForStateChangeMutex);
    v5 = AudioQueueAddPropertyListener(self->_audioQueue, 0x6171726Eu, _VSAudioPlaybackServiceRunningStateChanged, self);
    if (v5)
    {
      v6 = v5;
      v7 = VSGetLogDefault();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v22 = [MEMORY[0x277CCACA8] vs_stringFrom4CC:v6];
        LODWORD(v27.tv_sec) = 138412290;
        *(&v27.tv_sec + 4) = v22;
        _os_log_error_impl(&dword_2727E4000, v7, OS_LOG_TYPE_ERROR, "Error AudioQueueAddPropertyListener %@", &v27, 0xCu);
      }

      v8 = MEMORY[0x277CCA9B8];
      v9 = *MEMORY[0x277CCA590];
      v10 = v6;
      v28 = *MEMORY[0x277CCA450];
      v29[0] = @"Error AudioQueueAddPropertyListener";
      v11 = MEMORY[0x277CBEAC0];
      v12 = v29;
      v13 = &v28;
    }

    else
    {
      do
      {
        v27.tv_sec = 0;
        *&v27.tv_usec = 0;
        v24.tv_sec = 0;
        v24.tv_nsec = 0;
        gettimeofday(&v27, 0);
        v24.tv_sec = v27.tv_sec + 1;
        v24.tv_nsec = 1000 * v27.tv_usec;
        v14 = pthread_cond_timedwait(&self->_stateChangeCondition, &self->_waitForStateChangeMutex, &v24);
      }

      while ([(VSAudioPlaybackServiceAT *)self isAudioQueueRunning]&& (v14 != 60 || ![(VSAudioPlaybackServiceAT *)self isAudioQueueStalled]));
      v15 = AudioQueueRemovePropertyListener(self->_audioQueue, 0x6171726Eu, _VSAudioPlaybackServiceRunningStateChanged, self);
      if (!v15)
      {
        goto LABEL_17;
      }

      v16 = v15;
      v17 = VSGetLogDefault();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v23 = [MEMORY[0x277CCACA8] vs_stringFrom4CC:v16];
        LODWORD(v27.tv_sec) = 138412290;
        *(&v27.tv_sec + 4) = v23;
        _os_log_error_impl(&dword_2727E4000, v17, OS_LOG_TYPE_ERROR, "Error AudioQueueRemovePropertyListener %@", &v27, 0xCu);
      }

      v8 = MEMORY[0x277CCA9B8];
      v9 = *MEMORY[0x277CCA590];
      v10 = v16;
      v25 = *MEMORY[0x277CCA450];
      v26 = @"Error AudioQueueRemovePropertyListener";
      v11 = MEMORY[0x277CBEAC0];
      v12 = &v26;
      v13 = &v25;
    }

    v18 = [v11 dictionaryWithObjects:v12 forKeys:v13 count:1];
    v19 = [v8 errorWithDomain:v9 code:v10 userInfo:v18];
    error = self->_error;
    self->_error = v19;

LABEL_17:
    pthread_mutex_unlock(&self->_waitForStateChangeMutex);
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)pause
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = AudioQueuePause(self->_audioQueue);
  v4 = VSGetLogDefault();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v12 = [MEMORY[0x277CCACA8] vs_stringFrom4CC:v3];
      *buf = 138412290;
      v16 = v12;
      _os_log_error_impl(&dword_2727E4000, v5, OS_LOG_TYPE_ERROR, "Error AudioQueuePause %@", buf, 0xCu);
    }

    v6 = MEMORY[0x277CCA9B8];
    v7 = *MEMORY[0x277CCA590];
    v13 = *MEMORY[0x277CCA450];
    v14 = @"Error AudioQueuePause";
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    v8 = [v6 errorWithDomain:v7 code:v3 userInfo:v5];
    error = self->_error;
    self->_error = v8;
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v16 = self;
    _os_log_impl(&dword_2727E4000, v5, OS_LOG_TYPE_INFO, "VSAudioPlaybackService %p success AudioQueuePause", buf, 0xCu);
  }

  timebase = self->_timebase;
  if (timebase)
  {
    CMTimebaseSetRate(timebase, 0.0);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)stop
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = VSGetLogDefault();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_2727E4000, v3, OS_LOG_TYPE_INFO, "AudioQueue will stop", buf, 2u);
  }

  self->_state = 4;
  pthread_mutex_lock(&__VSAudioQueueBufferLock);
  [(NSMutableArray *)self->_enqueuedMappedAudioInfo removeAllObjects];
  [(NSCondition *)self->_dequeueCondition lock];
  [(NSCondition *)self->_dequeueCondition signal];
  [(NSCondition *)self->_dequeueCondition unlock];
  pthread_mutex_unlock(&__VSAudioQueueBufferLock);
  v4 = AudioQueueStop(self->_audioQueue, 1u);
  if (v4)
  {
    v5 = v4;
    v6 = VSGetLogDefault();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v13 = [MEMORY[0x277CCACA8] vs_stringFrom4CC:v5];
      *buf = 138412290;
      v17 = v13;
      _os_log_error_impl(&dword_2727E4000, v6, OS_LOG_TYPE_ERROR, "Error AudioQueueStop %@", buf, 0xCu);
    }

    v7 = MEMORY[0x277CCA9B8];
    v8 = *MEMORY[0x277CCA590];
    v14 = *MEMORY[0x277CCA450];
    v15 = @"Error AudioQueueStop";
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    v10 = [v7 errorWithDomain:v8 code:v5 userInfo:v9];
    error = self->_error;
    self->_error = v10;
  }

  [(VSAudioPlaybackServiceAT *)self signalQueueRunningStateChange];
  [(VSAudioPlaybackServiceAT *)self didEndAccessPower];
  self->_enqueuedSampleCount = 0.0;
  v12 = *MEMORY[0x277D85DE8];
}

- (void)flushAndStop
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = VSGetLogDefault();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_2727E4000, v3, OS_LOG_TYPE_INFO, "AudioQueue will flushAndStop", buf, 2u);
  }

  self->_state = 3;
  [(NSCondition *)self->_dequeueCondition lock];
  while ([(NSMutableArray *)self->_enqueuedMappedAudioInfo count])
  {
    if (![(NSCondition *)self->_dequeueCondition waitUntilDate:self->_audioQueueFutureEndDate])
    {
      v4 = VSGetLogDefault();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2727E4000, v4, OS_LOG_TYPE_ERROR, "Timeout in AudioQueue dequeue condition.", buf, 2u);
      }

      break;
    }
  }

  [(NSCondition *)self->_dequeueCondition unlock];
  v5 = AudioQueueFlush(self->_audioQueue);
  if (v5)
  {
    v6 = v5;
    v7 = VSGetLogDefault();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v27 = [MEMORY[0x277CCACA8] vs_stringFrom4CC:v6];
      *buf = 138412290;
      v37 = v27;
      _os_log_error_impl(&dword_2727E4000, v7, OS_LOG_TYPE_ERROR, "Error AudioQueueFlush %@", buf, 0xCu);
    }

    v8 = MEMORY[0x277CCA9B8];
    v9 = *MEMORY[0x277CCA590];
    v6 = v6;
    v34 = *MEMORY[0x277CCA450];
    v35 = @"Error AudioQueueFlush";
    v10 = MEMORY[0x277CBEAC0];
    v11 = &v35;
    v12 = &v34;
LABEL_17:
    v15 = [v10 dictionaryWithObjects:v11 forKeys:v12 count:1];
    v16 = [v8 errorWithDomain:v9 code:v6 userInfo:v15];
    error = self->_error;
    self->_error = v16;

    goto LABEL_18;
  }

  v13 = AudioQueueStop(self->_audioQueue, 0);
  if (v13)
  {
    v6 = v13;
    v14 = VSGetLogDefault();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v28 = [MEMORY[0x277CCACA8] vs_stringFrom4CC:v6];
      *buf = 138412290;
      v37 = v28;
      _os_log_error_impl(&dword_2727E4000, v14, OS_LOG_TYPE_ERROR, "Error AudioQueueStop %@", buf, 0xCu);
    }

    v8 = MEMORY[0x277CCA9B8];
    v9 = *MEMORY[0x277CCA590];
    v6 = v6;
    v32 = *MEMORY[0x277CCA450];
    v33 = @"Error AudioQueueStop";
    v10 = MEMORY[0x277CBEAC0];
    v11 = &v33;
    v12 = &v32;
    goto LABEL_17;
  }

  [(VSAudioPlaybackServiceAT *)self waitForAudioQueueStop];
  v19 = AudioQueueStop(self->_audioQueue, 1u);
  if (v19)
  {
    v20 = v19;
    v21 = VSGetLogDefault();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v29 = [MEMORY[0x277CCACA8] vs_stringFrom4CC:v20];
      *buf = 138412290;
      v37 = v29;
      _os_log_error_impl(&dword_2727E4000, v21, OS_LOG_TYPE_ERROR, "Error AudioQueueStop %@", buf, 0xCu);
    }

    v22 = MEMORY[0x277CCA9B8];
    v23 = *MEMORY[0x277CCA590];
    v30 = *MEMORY[0x277CCA450];
    v31 = @"Error AudioQueueStop";
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
    v25 = [v22 errorWithDomain:v23 code:v20 userInfo:v24];
    v26 = self->_error;
    self->_error = v25;
  }

  [(VSAudioPlaybackServiceAT *)self didEndAccessPower];
  self->_state = 4;
  self->_enqueuedSampleCount = 0.0;
LABEL_18:
  v18 = *MEMORY[0x277D85DE8];
}

- (id)_enqueueAudioBytesLength:(unsigned int)a3 audioBytes:(const void *)a4 packetCount:(int64_t)a5 packetDescriptions:(const void *)a6
{
  v58 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    outBuffer = 0;
    v11 = AudioQueueAllocateBuffer(self->_audioQueue, a3, &outBuffer);
    if (v11)
    {
      v12 = v11;
      v13 = VSGetLogDefault();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v44 = [MEMORY[0x277CCACA8] vs_stringFrom4CC:v12];
        LODWORD(outTimeStamp.mSampleTime) = 138412290;
        *(&outTimeStamp.mSampleTime + 4) = v44;
        _os_log_error_impl(&dword_2727E4000, v13, OS_LOG_TYPE_ERROR, "Error AudioQueueAllocateBuffer %@", &outTimeStamp, 0xCu);
      }

      v14 = MEMORY[0x277CCA9B8];
      v15 = *MEMORY[0x277CCA590];
      v16 = v12;
LABEL_21:
      v34 = [v14 errorWithDomain:v15 code:v16 userInfo:0];
      goto LABEL_30;
    }

    memcpy(outBuffer->mAudioData, a4, a3);
    outBuffer->mAudioDataByteSize = a3;
    memset(&outTimeStamp, 0, sizeof(outTimeStamp));
    CurrentTime = AudioQueueGetCurrentTime(self->_audioQueue, 0, &outTimeStamp, 0);
    if (self->_enqueuedSampleCount == 0.0)
    {
      v18 = [MEMORY[0x277CBEAA8] date];
      audioQueueStartDate = self->_audioQueueStartDate;
      self->_audioQueueStartDate = v18;
    }

    if (!CurrentTime)
    {
      mSampleTime = self->_audioStartTimeStamp.mSampleTime;
      if (mSampleTime == 3.40282347e38)
      {
        v21 = *&outTimeStamp.mRateScalar;
        *&self->_audioStartTimeStamp.mSampleTime = *&outTimeStamp.mSampleTime;
        *&self->_audioStartTimeStamp.mRateScalar = v21;
        v22 = *&outTimeStamp.mSMPTETime.mHours;
        *&self->_audioStartTimeStamp.mSMPTETime.mSubframes = *&outTimeStamp.mSMPTETime.mSubframes;
        *&self->_audioStartTimeStamp.mSMPTETime.mHours = v22;
        v23 = VSGetLogDefault();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          v24 = self->_audioStartTimeStamp.mSampleTime;
          *buf = 134217984;
          v48 = *&v24;
          _os_log_impl(&dword_2727E4000, v23, OS_LOG_TYPE_INFO, "Audio queue start sample time: %.0f", buf, 0xCu);
        }

        mSampleTime = self->_audioStartTimeStamp.mSampleTime;
      }

      v25 = outTimeStamp.mSampleTime;
      enqueuedSampleCount = self->_enqueuedSampleCount;
      v27 = outTimeStamp.mSampleTime <= enqueuedSampleCount + mSampleTime;
      self->_discontinuedDuringPlayback |= outTimeStamp.mSampleTime > enqueuedSampleCount + mSampleTime;
      if (!v27)
      {
        v28 = v25 - enqueuedSampleCount - mSampleTime;
        v29 = VSGetLogDefault();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          LODWORD(v48) = v28;
          _os_log_error_impl(&dword_2727E4000, v29, OS_LOG_TYPE_ERROR, "Detected stalled audio generation, will enqueue %d silence frame to compensate.", buf, 8u);
        }

        audioQueue = self->_audioQueue;
        AudioQueueEnqueueSilence();
        self->_enqueuedSampleCount = v28 + self->_enqueuedSampleCount;
      }
    }

    v31 = AudioQueueEnqueueBuffer(self->_audioQueue, outBuffer, a5, a6);
    if (v31)
    {
      v32 = v31;
      v33 = VSGetLogDefault();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v45 = [MEMORY[0x277CCACA8] vs_stringFrom4CC:v32];
        *buf = 138412290;
        v48 = v45;
        _os_log_error_impl(&dword_2727E4000, v33, OS_LOG_TYPE_ERROR, "Error AudioQueueEnqueueBuffer %@", buf, 0xCu);
      }

      v14 = MEMORY[0x277CCA9B8];
      v15 = *MEMORY[0x277CCA590];
      v16 = v32;
      goto LABEL_21;
    }

    kdebug_trace();
    if (a5 && a6)
    {
      v35 = (self->_asbd.mFramesPerPacket * a5);
    }

    else
    {
      v35 = (a3 / self->_asbd.mBytesPerFrame);
    }

    v36 = v35 + self->_enqueuedSampleCount;
    self->_enqueuedSampleCount = v36;
    v37 = [(NSDate *)self->_audioQueueStartDate dateByAddingTimeInterval:v36 / self->_asbd.mSampleRate];
    audioQueueFutureEndDate = self->_audioQueueFutureEndDate;
    self->_audioQueueFutureEndDate = v37;

    v39 = VSGetLogDefault();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
    {
      v40 = self->_enqueuedSampleCount;
      discontinuedDuringPlayback = self->_discontinuedDuringPlayback;
      *buf = 134219008;
      v48 = self;
      v49 = 2048;
      v50 = outTimeStamp.mSampleTime;
      v51 = 2048;
      v52 = a3;
      v53 = 2048;
      v54 = v40;
      v55 = 1024;
      v56 = discontinuedDuringPlayback;
      _os_log_impl(&dword_2727E4000, v39, OS_LOG_TYPE_INFO, "VSAudioPlaybackService %p enqueued audio buffer at sample time: %.2f, size: %ld, total enqueued samples: %.0f, discontinuity: %{BOOL}d", buf, 0x30u);
    }
  }

  v34 = 0;
LABEL_30:
  v42 = *MEMORY[0x277D85DE8];

  return v34;
}

- (void)dequeueAvailableMappedAudio
{
  if (self->_playingBufferCount <= 2)
  {
    v14 = v7;
    v15 = v6;
    v16 = v5;
    v17 = v4;
    v18 = v3;
    v19 = v2;
    v20 = v8;
    v21 = v9;
    do
    {
      if (![(NSMutableArray *)self->_enqueuedMappedAudioInfo count:v14]|| self->_state == 4)
      {
        break;
      }

      v11 = [(NSMutableArray *)self->_enqueuedMappedAudioInfo firstObject];
      [(NSMutableArray *)self->_enqueuedMappedAudioInfo removeObjectAtIndex:0];
      [v11 audioBytesRange];
      v13 = -[VSAudioPlaybackServiceAT _enqueueAudioBytesLength:audioBytes:packetCount:packetDescriptions:](self, "_enqueueAudioBytesLength:audioBytes:packetCount:packetDescriptions:", v12, -[VSMappedData bytesAtOffset:](self->_mappedData, "bytesAtOffset:", [v11 audioBytesRange]), objc_msgSend(v11, "packetCount"), -[VSMappedData bytesAtOffset:](self->_mappedData, "bytesAtOffset:", objc_msgSend(v11, "packetDescriptionsRange")));
      if (!v13)
      {
        ++self->_playingBufferCount;
      }

      [(NSCondition *)self->_dequeueCondition lock];
      [(NSCondition *)self->_dequeueCondition broadcast];
      [(NSCondition *)self->_dequeueCondition unlock];
    }

    while (self->_playingBufferCount < 3);
  }
}

- (void)enqueue:(id)a3 packetCount:(int64_t)a4 packetDescriptions:(id)a5
{
  v8 = a5;
  v9 = a3;
  pthread_mutex_lock(&__VSAudioQueueBufferLock);
  v16 = objc_alloc_init(VSAudioMappedInfoAT);
  v10 = [(VSMappedData *)self->_mappedData appendData:v9];
  v12 = v11;

  [(VSAudioMappedInfoAT *)v16 setAudioBytesRange:v10, v12];
  [(VSAudioMappedInfoAT *)v16 setPacketCount:a4];
  v13 = [(VSMappedData *)self->_mappedData appendData:v8];
  v15 = v14;

  [(VSAudioMappedInfoAT *)v16 setPacketDescriptionsRange:v13, v15];
  [(NSMutableArray *)self->_enqueuedMappedAudioInfo addObject:v16];
  [(VSAudioPlaybackServiceAT *)self dequeueAvailableMappedAudio];
  pthread_mutex_unlock(&__VSAudioQueueBufferLock);
}

- (id)start
{
  v23[1] = *MEMORY[0x277D85DE8];
  error = self->_error;
  self->_error = 0;

  v4 = AudioQueueStart(self->_audioQueue, 0);
  if (v4)
  {
    v5 = v4;
    v6 = VSGetLogDefault();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v20 = [MEMORY[0x277CCACA8] vs_stringFrom4CC:v5];
      LODWORD(v21.value) = 138412290;
      *(&v21.value + 4) = v20;
      _os_log_error_impl(&dword_2727E4000, v6, OS_LOG_TYPE_ERROR, "Error AudioQueueStart %@", &v21, 0xCu);
    }

    v7 = MEMORY[0x277CCA9B8];
    v8 = *MEMORY[0x277CCA590];
    v22 = *MEMORY[0x277CCA450];
    v23[0] = @"Error AudioQueueStart";
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];
    v10 = [v7 errorWithDomain:v8 code:v5 userInfo:v9];
  }

  else
  {
    self->_state = 2;
    v11 = [MEMORY[0x277CBEAA8] date];
    audioQueueStartDate = self->_audioQueueStartDate;
    self->_audioQueueStartDate = v11;

    v13 = [(NSDate *)self->_audioQueueStartDate dateByAddingTimeInterval:self->_enqueuedSampleCount / self->_asbd.mSampleRate];
    audioQueueFutureEndDate = self->_audioQueueFutureEndDate;
    self->_audioQueueFutureEndDate = v13;

    v15 = VSGetLogDefault();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v21.value) = 134217984;
      *(&v21.value + 4) = self;
      _os_log_impl(&dword_2727E4000, v15, OS_LOG_TYPE_DEFAULT, "VSAudioPlaybackService %p success AudioQueueStart", &v21, 0xCu);
    }

    timebase = self->_timebase;
    if (timebase)
    {
      CMTimebaseSetRate(timebase, 1.0);
      v17 = self->_timebase;
      v21 = **&MEMORY[0x277CC08F0];
      CMTimebaseSetTime(v17, &v21);
    }

    v10 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)signalQueueRunningStateChange
{
  pthread_mutex_lock(&self->_waitForStateChangeMutex);
  v3 = VSGetLogDefault();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_2727E4000, v3, OS_LOG_TYPE_INFO, "Signal AudioQueue running state change", v4, 2u);
  }

  pthread_cond_broadcast(&self->_stateChangeCondition);
  pthread_mutex_unlock(&self->_waitForStateChangeMutex);
}

- (void)handleMediaServerReset
{
  v3 = VSGetLogDefault();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_2727E4000, v3, OS_LOG_TYPE_DEFAULT, "mediaserverd reset", v4, 2u);
  }

  [(VSAudioPlaybackServiceAT *)self stop];
}

- (void)dealloc
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4 = AudioQueueDispose(self->_audioQueue, 1u);
  if (v4)
  {
    v5 = v4;
    v6 = VSGetLogDefault();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v9 = [MEMORY[0x277CCACA8] vs_stringFrom4CC:v5];
      *buf = 138412290;
      v12 = v9;
      _os_log_error_impl(&dword_2727E4000, v6, OS_LOG_TYPE_ERROR, "Error AudioQueueDispose %@", buf, 0xCu);
    }
  }

  timebase = self->_timebase;
  if (timebase)
  {
    CFRelease(timebase);
  }

  v10.receiver = self;
  v10.super_class = VSAudioPlaybackServiceAT;
  [(VSAudioPlaybackServiceAT *)&v10 dealloc];
  v8 = *MEMORY[0x277D85DE8];
}

- (VSAudioPlaybackServiceAT)initWithAudioSessionID:(unsigned int)a3 asbd:(AudioStreamBasicDescription *)a4
{
  v46 = *MEMORY[0x277D85DE8];
  mach_absolute_time();
  v41.receiver = self;
  v41.super_class = VSAudioPlaybackServiceAT;
  v7 = [(VSAudioPlaybackServiceAT *)&v41 init];
  v8 = v7;
  if (v7)
  {
    *(v7 + 5) = 1;
    v9 = *&a4->mSampleRate;
    v10 = *&a4->mBytesPerPacket;
    *(v7 + 17) = *&a4->mBitsPerChannel;
    *(v7 + 120) = v10;
    *(v7 + 104) = v9;
    if (a3)
    {
      *(v7 + 3) = a3;
    }

    else
    {
      v11 = [MEMORY[0x277CB83F8] sharedInstance];
      *(v8 + 3) = [v11 opaqueSessionID];
    }

    *(v8 + 18) = 1018212795;
    *(v8 + 200) = 0u;
    *(v8 + 216) = 0u;
    *(v8 + 232) = 0u;
    *(v8 + 152) = 0u;
    *(v8 + 168) = 0u;
    *(v8 + 23) = 0;
    *(v8 + 24) = 850045863;
    *(v8 + 31) = 0;
    *(v8 + 32) = 0x47EFFFFFE0000000;
    v12 = objc_alloc_init(MEMORY[0x277D79948]);
    v13 = *(v8 + 9);
    *(v8 + 9) = v12;

    v14 = [MEMORY[0x277CBEB18] array];
    v15 = *(v8 + 10);
    *(v8 + 10) = v14;

    v16 = objc_alloc_init(MEMORY[0x277CCA928]);
    v17 = *(v8 + 12);
    *(v8 + 12) = v16;

    v18 = *MEMORY[0x277CBF048];
    v19 = *(v8 + 3);
    v20 = AudioQueueNewOutputWithAudioSession();
    if (v20)
    {
      v21 = v20;
      v22 = VSGetLogDefault();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v38 = [MEMORY[0x277CCACA8] vs_stringFrom4CC:v21];
        *buf = 138412290;
        v43 = v38;
        _os_log_error_impl(&dword_2727E4000, v22, OS_LOG_TYPE_ERROR, "Error AudioQueueNewOutputWithAudioSession %@", buf, 0xCu);
      }

      v23 = 0;
      goto LABEL_23;
    }

    v24 = AudioQueueSetProperty(*(v8 + 2), 0x63756964u, &VSAudioPlaybackAudioQueueUID, 8u);
    if (v24)
    {
      v25 = v24;
      v26 = VSGetLogDefault();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v39 = [MEMORY[0x277CCACA8] vs_stringFrom4CC:v25];
        *buf = 138412290;
        v43 = v39;
        _os_log_error_impl(&dword_2727E4000, v26, OS_LOG_TYPE_ERROR, "Unable to set kAudioQueueProperty_ClientUID, errno: %@", buf, 0xCu);
      }
    }

    v27 = *MEMORY[0x277CBECE8];
    HostTimeClock = CMClockGetHostTimeClock();
    v29 = CMTimebaseCreateWithSourceClock(v27, HostTimeClock, v8 + 4);
    if (v29)
    {
      v30 = v29;
      v31 = VSGetLogDefault();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v40 = [MEMORY[0x277CCACA8] vs_stringFrom4CC:v30];
        *buf = 138412290;
        v43 = v40;
        _os_log_error_impl(&dword_2727E4000, v31, OS_LOG_TYPE_ERROR, "Error CMTimebaseCreateWithSourceClock: %@", buf, 0xCu);
      }
    }

    v32 = [MEMORY[0x277CCAB98] defaultCenter];
    [v32 addObserver:v8 selector:sel_handleMediaServerReset name:*MEMORY[0x277CB80A0] object:0];

    v33 = VSGetLogDefault();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v43) = a3;
      _os_log_impl(&dword_2727E4000, v33, OS_LOG_TYPE_DEFAULT, "AudioQueue initialized with session ID: %d", buf, 8u);
    }
  }

  mach_absolute_time();
  v34 = VSGetLogDefault();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
  {
    VSAbsoluteTimeToSecond();
    *buf = 134218240;
    v43 = v8;
    v44 = 2048;
    v45 = v35;
    _os_log_impl(&dword_2727E4000, v34, OS_LOG_TYPE_INFO, "VSAudioPlaybackService %p init latency: %.3f", buf, 0x16u);
  }

  v23 = v8;
LABEL_23:

  v36 = *MEMORY[0x277D85DE8];
  return v23;
}

@end