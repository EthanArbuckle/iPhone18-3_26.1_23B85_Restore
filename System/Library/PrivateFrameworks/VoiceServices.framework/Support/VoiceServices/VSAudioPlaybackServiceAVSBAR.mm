@interface VSAudioPlaybackServiceAVSBAR
- (AudioStreamBasicDescription)asbd;
- (BOOL)getAveragePower:(float *)power andPeakPower:(float *)peakPower;
- (_opaque_pthread_mutex_t)audioQueueBufferLock;
- (_opaque_pthread_mutex_t)stateLock;
- (double)duration:(id)duration;
- (id)addBoundaryTimeObserverForTimes:(id)times usingBlock:(id)block;
- (id)start;
- (opaqueCMSampleBuffer)createSampleBuffer:(id)buffer;
- (opaqueCMSampleBuffer)createSilenceEndBuffer;
- (void)_play;
- (void)_startProvidingData;
- (void)addEndOfDataAttachment;
- (void)createSampleBufferIdNeeded:(id)needed;
- (void)dealloc;
- (void)enqueue:(id)enqueue packetCount:(int64_t)count packetDescriptions:(id)descriptions;
- (void)flushAndStop;
- (void)freeAudioQueue;
- (void)handleMediaServerReset;
- (void)pause;
- (void)provideMoreData;
- (void)removeTimeObserver:(id)observer;
- (void)setAsbd:(AudioStreamBasicDescription *)asbd;
- (void)setAudioQueueBufferLock:(_opaque_pthread_mutex_t *)lock;
- (void)setMappedAudioQueuedTimeStamp:(id *)stamp;
- (void)setStateLock:(_opaque_pthread_mutex_t *)lock;
- (void)stop;
- (void)stopWaiting;
@end

@implementation VSAudioPlaybackServiceAVSBAR

- (void)setMappedAudioQueuedTimeStamp:(id *)stamp
{
  v3 = *&stamp->var0;
  self->_mappedAudioQueuedTimeStamp.epoch = stamp->var3;
  *&self->_mappedAudioQueuedTimeStamp.value = v3;
}

- (void)setStateLock:(_opaque_pthread_mutex_t *)lock
{
  v3 = *&lock->__sig;
  v4 = *&lock->__opaque[8];
  v5 = *&lock->__opaque[40];
  *&self->_stateLock.__opaque[24] = *&lock->__opaque[24];
  *&self->_stateLock.__opaque[40] = v5;
  *&self->_stateLock.__sig = v3;
  *&self->_stateLock.__opaque[8] = v4;
}

- (_opaque_pthread_mutex_t)stateLock
{
  v3 = *&self[3].__opaque[40];
  *&retstr->__sig = *&self[3].__opaque[24];
  *&retstr->__opaque[8] = v3;
  v4 = *&self[4].__opaque[8];
  *&retstr->__opaque[24] = *&self[4].__sig;
  *&retstr->__opaque[40] = v4;
  return self;
}

- (void)setAudioQueueBufferLock:(_opaque_pthread_mutex_t *)lock
{
  v3 = *&lock->__sig;
  v4 = *&lock->__opaque[8];
  v5 = *&lock->__opaque[40];
  *&self->_audioQueueBufferLock.__opaque[24] = *&lock->__opaque[24];
  *&self->_audioQueueBufferLock.__opaque[40] = v5;
  *&self->_audioQueueBufferLock.__sig = v3;
  *&self->_audioQueueBufferLock.__opaque[8] = v4;
}

- (_opaque_pthread_mutex_t)audioQueueBufferLock
{
  v3 = *&self[2].__opaque[40];
  *&retstr->__sig = *&self[2].__opaque[24];
  *&retstr->__opaque[8] = v3;
  v4 = *&self[3].__opaque[8];
  *&retstr->__opaque[24] = *&self[3].__sig;
  *&retstr->__opaque[40] = v4;
  return self;
}

- (void)setAsbd:(AudioStreamBasicDescription *)asbd
{
  v3 = *&asbd->mSampleRate;
  v4 = *&asbd->mBytesPerPacket;
  *&self->_asbd.mBitsPerChannel = *&asbd->mBitsPerChannel;
  *&self->_asbd.mBytesPerPacket = v4;
  *&self->_asbd.mSampleRate = v3;
}

- (AudioStreamBasicDescription)asbd
{
  v3 = *&self[3].mBytesPerPacket;
  *&retstr->mSampleRate = *&self[3].mSampleRate;
  *&retstr->mBytesPerPacket = v3;
  *&retstr->mBitsPerChannel = *&self[3].mBitsPerChannel;
  return self;
}

- (BOOL)getAveragePower:(float *)power andPeakPower:(float *)peakPower
{
  [(AVSampleBufferAudioRenderer *)self->_renderer volume];
  *power = v7;
  [(AVSampleBufferAudioRenderer *)self->_renderer volume];
  *peakPower = v8;
  return 1;
}

- (void)removeTimeObserver:(id)observer
{
  if (observer)
  {
    [(AVSampleBufferRenderSynchronizer *)self->_synchronizer removeTimeObserver:?];
  }
}

- (id)addBoundaryTimeObserverForTimes:(id)times usingBlock:(id)block
{
  blockCopy = block;
  v7 = [times sortedArrayUsingComparator:&__block_literal_global];
  objc_initWeak(&location, self);
  synchronizer = self->_synchronizer;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __75__VSAudioPlaybackServiceAVSBAR_addBoundaryTimeObserverForTimes_usingBlock___block_invoke_2;
  v13[3] = &unk_279E4B4B0;
  objc_copyWeak(&v16, &location);
  v9 = v7;
  v14 = v9;
  v10 = blockCopy;
  v15 = v10;
  v11 = [(AVSampleBufferRenderSynchronizer *)synchronizer addBoundaryTimeObserverForTimes:v9 queue:0 usingBlock:v13];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);

  return v11;
}

void __75__VSAudioPlaybackServiceAVSBAR_addBoundaryTimeObserverForTimes_usingBlock___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v10 = 0uLL;
    v11 = 0;
    v4 = *(WeakRetained + 4);
    if (v4)
    {
      [v4 currentTime];
    }

    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __75__VSAudioPlaybackServiceAVSBAR_addBoundaryTimeObserverForTimes_usingBlock___block_invoke_3;
    v6[3] = &unk_279E4B488;
    v8 = v10;
    v9 = v11;
    v5 = *(a1 + 32);
    v7 = *(a1 + 40);
    [v5 enumerateObjectsWithOptions:2 usingBlock:v6];
  }
}

void __75__VSAudioPlaybackServiceAVSBAR_addBoundaryTimeObserverForTimes_usingBlock___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = v6;
  memset(&v11, 0, sizeof(v11));
  if (v6)
  {
    [v6 CMTimeValue];
  }

  time1 = v11;
  v9 = *(a1 + 40);
  if (CMTimeCompare(&time1, &v9) <= 0)
  {
    v8 = *(*(a1 + 32) + 16);
    time1 = v11;
    v8();
    *a4 = 1;
  }
}

uint64_t __75__VSAudioPlaybackServiceAVSBAR_addBoundaryTimeObserverForTimes_usingBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = v5;
  if (!v4)
  {
    memset(&time1, 0, sizeof(time1));
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_5:
    memset(&v9, 0, sizeof(v9));
    goto LABEL_6;
  }

  [v4 CMTimeValue];
  if (!v6)
  {
    goto LABEL_5;
  }

LABEL_3:
  [v6 CMTimeValue];
LABEL_6:
  v7 = CMTimeCompare(&time1, &v9);

  return v7;
}

- (void)freeAudioQueue
{
  v19 = *MEMORY[0x277D85DE8];
  pthread_mutex_lock(&self->_audioQueueBufferLock);
  if ([(NSMutableArray *)self->_enqueuedMappedAudioInfo count])
  {
    v3 = VSGetLogDefault();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [(NSMutableArray *)self->_enqueuedMappedAudioInfo count];
      *buf = 134217984;
      v18 = v4;
      _os_log_impl(&dword_2727E4000, v3, OS_LOG_TYPE_DEFAULT, "#AVSBAR Dropping %lu enqueued data", buf, 0xCu);
    }

    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = self->_enqueuedMappedAudioInfo;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        v9 = 0;
        do
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(*(&v12 + 1) + 8 * v9) + 8);
          if (v10)
          {
            CFRelease(v10);
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }

    [(NSMutableArray *)self->_enqueuedMappedAudioInfo removeAllObjects];
  }

  pthread_mutex_unlock(&self->_audioQueueBufferLock);
  v11 = *MEMORY[0x277D85DE8];
}

- (void)pause
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = VSGetLogDefault();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v11.value) = 0;
    _os_log_impl(&dword_2727E4000, v3, OS_LOG_TYPE_DEFAULT, "Pausing synchronizer", &v11, 2u);
  }

  pthread_mutex_lock(&self->_stateLock);
  self->_state = 1;
  pthread_mutex_unlock(&self->_stateLock);
  v4 = VSGetLogDefault();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    synchronizer = self->_synchronizer;
    if (synchronizer)
    {
      [(AVSampleBufferRenderSynchronizer *)synchronizer currentTime];
    }

    else
    {
      memset(&v11, 0, sizeof(v11));
    }

    Seconds = CMTimeGetSeconds(&v11);
    LODWORD(v11.value) = 134217984;
    *(&v11.value + 4) = Seconds;
    _os_log_impl(&dword_2727E4000, v4, OS_LOG_TYPE_DEFAULT, "#AVSBAR synchronizer.rate will be set to 0 (at current time: %f).", &v11, 0xCu);
  }

  mach_absolute_time();
  [(AVSampleBufferRenderSynchronizer *)self->_synchronizer setRate:0.0];
  mach_absolute_time();
  VSAbsoluteTimeToSecond();
  if (v7 > 0.25)
  {
    v8 = VSGetLogDefault();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      VSAbsoluteTimeToSecond();
      LODWORD(v11.value) = 134217984;
      *(&v11.value + 4) = v10;
      _os_log_error_impl(&dword_2727E4000, v8, OS_LOG_TYPE_ERROR, "_synchronizer pause rate high latency: %.3f sec", &v11, 0xCu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)stop
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = VSGetLogDefault();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf.value) = 0;
    _os_log_impl(&dword_2727E4000, v3, OS_LOG_TYPE_DEFAULT, "Stopping synchronizer and renderer", &buf, 2u);
  }

  pthread_mutex_lock(&self->_stateLock);
  self->_state = 4;
  pthread_mutex_unlock(&self->_stateLock);
  [(VSAudioPlaybackServiceAVSBAR *)self stopWaiting];
  [(AVSampleBufferAudioRenderer *)self->_renderer stopRequestingMediaData];
  v4 = VSGetLogDefault();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    synchronizer = self->_synchronizer;
    if (synchronizer)
    {
      [(AVSampleBufferRenderSynchronizer *)synchronizer currentTime];
    }

    else
    {
      memset(&buf, 0, sizeof(buf));
    }

    Seconds = CMTimeGetSeconds(&buf);
    LODWORD(buf.value) = 134217984;
    *(&buf.value + 4) = Seconds;
    _os_log_impl(&dword_2727E4000, v4, OS_LOG_TYPE_DEFAULT, "#AVSBAR synchronizer.rate will be set to 0 and time set to 0 (from current time: %f). Then renderer will be flushed.", &buf, 0xCu);
  }

  mach_absolute_time();
  v7 = self->_synchronizer;
  buf = **&MEMORY[0x277CC08F0];
  [(AVSampleBufferRenderSynchronizer *)v7 setRate:&buf time:0.0];
  mach_absolute_time();
  VSAbsoluteTimeToSecond();
  if (v8 > 0.25)
  {
    v9 = VSGetLogDefault();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      VSAbsoluteTimeToSecond();
      LODWORD(buf.value) = 134217984;
      *(&buf.value + 4) = v14;
      _os_log_error_impl(&dword_2727E4000, v9, OS_LOG_TYPE_ERROR, "_synchronizer stop rate high latency: %.3f sec", &buf, 0xCu);
    }
  }

  v10 = VSGetLogDefault();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    [(AVSampleBufferRenderSynchronizer *)self->_synchronizer rate];
    LODWORD(buf.value) = 134217984;
    *(&buf.value + 4) = v11;
    _os_log_impl(&dword_2727E4000, v10, OS_LOG_TYPE_INFO, "#AVSBAR synchronizer.rate was set to 0. Current rate: %f", &buf, 0xCu);
  }

  v12 = dispatch_get_global_queue(33, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__VSAudioPlaybackServiceAVSBAR_stop__block_invoke;
  block[3] = &unk_279E4BAC8;
  block[4] = self;
  dispatch_async(v12, block);

  v13 = *MEMORY[0x277D85DE8];
}

void __36__VSAudioPlaybackServiceAVSBAR_stop__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 24) flush];
  v2 = VSGetLogDefault();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_2727E4000, v2, OS_LOG_TYPE_INFO, "#AVSBAR renderer was flushed", v3, 2u);
  }

  *(*(a1 + 32) + 9) = 0;
  if (sLastSynchronizer == *(*(a1 + 32) + 32))
  {
    sLastSynchronizerStartedProvidingData = 0;
  }
}

- (void)stopWaiting
{
  dsema = self->_noRemainTasks;
  noRemainTasks = self->_noRemainTasks;
  self->_noRemainTasks = 0;

  v4 = dsema;
  if (dsema)
  {
    dispatch_semaphore_signal(dsema);
    v4 = dsema;
  }
}

- (void)flushAndStop
{
  v42[1] = *MEMORY[0x277D85DE8];
  v3 = VSGetLogDefault();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf.value) = 0;
    _os_log_impl(&dword_2727E4000, v3, OS_LOG_TYPE_INFO, "#AVSBAR flushAndStop", &buf, 2u);
  }

  pthread_mutex_lock(&self->_stateLock);
  if ((self->_state - 3) > 1)
  {
    v5 = dispatch_semaphore_create(0);
    objc_storeStrong(&self->_noRemainTasks, v5);
    self->_state = 3;
    pthread_mutex_unlock(&self->_stateLock);
    [(VSAudioPlaybackServiceAVSBAR *)self addEndOfDataAttachment];
    dataQueue = self->_dataQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __44__VSAudioPlaybackServiceAVSBAR_flushAndStop__block_invoke;
    block[3] = &unk_279E4BAC8;
    block[4] = self;
    dispatch_sync(dataQueue, block);
    memset(&buf, 0, sizeof(buf));
    synchronizer = self->_synchronizer;
    if (synchronizer)
    {
      [(AVSampleBufferRenderSynchronizer *)synchronizer currentTime];
      v8 = self->_synchronizer;
    }

    else
    {
      v8 = 0;
    }

    mappedAudioQueuedTimeStamp = self->_mappedAudioQueuedTimeStamp;
    v9 = [MEMORY[0x277CCAE60] valueWithBytes:&mappedAudioQueuedTimeStamp objCType:"{?=qiIq}"];
    v42[0] = v9;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:1];
    v11 = self->_dataQueue;
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __44__VSAudioPlaybackServiceAVSBAR_flushAndStop__block_invoke_2;
    v33[3] = &unk_279E4BAC8;
    v4 = v5;
    v34 = v4;
    v12 = [(AVSampleBufferRenderSynchronizer *)v8 addBoundaryTimeObserverForTimes:v10 queue:v11 usingBlock:v33];

    v13 = 0.0;
    *&v14 = 134218240;
    v31 = v14;
    while (1)
    {
      time1 = buf;
      time2 = mappedAudioQueuedTimeStamp;
      if ((CMTimeCompare(&time1, &time2) & 0x80000000) == 0)
      {
        break;
      }

      v15 = VSGetLogDefault();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        time1 = buf;
        Seconds = CMTimeGetSeconds(&time1);
        time1 = mappedAudioQueuedTimeStamp;
        v17 = CMTimeGetSeconds(&time1);
        LODWORD(time1.value) = v31;
        *(&time1.value + 4) = Seconds;
        LOWORD(time1.flags) = 2048;
        *(&time1.flags + 2) = v17;
        _os_log_impl(&dword_2727E4000, v15, OS_LOG_TYPE_DEFAULT, "#AVSBAR Waiting for synchronizer finishing playing between current %f sec and until %f sec", &time1, 0x16u);
      }

      v18 = dispatch_time(0, 1000000000);
      if (!dispatch_semaphore_wait(v4, v18) || !self->_noRemainTasks)
      {
        break;
      }

      memset(&time1, 0, sizeof(time1));
      v19 = self->_synchronizer;
      if (v19)
      {
        [(AVSampleBufferRenderSynchronizer *)v19 currentTime];
        v19 = self->_synchronizer;
      }

      [(AVSampleBufferRenderSynchronizer *)v19 rate];
      if (v20 <= 0.0 || (time2 = time1, v32 = buf, CMTimeCompare(&time2, &v32) <= 0))
      {
        if (self->_state != 1)
        {
          v13 = v13 + 1.0;
          if (v13 >= 5.0)
          {
            v21 = VSGetLogDefault();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              [(AVSampleBufferRenderSynchronizer *)self->_synchronizer rate];
              v29 = v28;
              time2 = time1;
              v30 = CMTimeGetSeconds(&time2);
              LODWORD(time2.value) = v31;
              *(&time2.value + 4) = v29;
              LOWORD(time2.flags) = 2048;
              *(&time2.flags + 2) = v30;
              _os_log_error_impl(&dword_2727E4000, v21, OS_LOG_TYPE_ERROR, "#AVSBAR Synchronizer is stalled with rate %f at time %f.", &time2, 0x16u);
            }

            v22 = MEMORY[0x277CCA9B8];
            v38 = *MEMORY[0x277CCA450];
            v39 = @"Timeout waiting for AVSampleBufferRenderSynchronizer";
            v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
            v24 = [v22 errorWithDomain:@"VoiceServicesErrorDomain" code:450 userInfo:v23];
            error = self->_error;
            self->_error = v24;

            break;
          }
        }
      }

      buf = time1;
    }

    [(AVSampleBufferRenderSynchronizer *)self->_synchronizer removeTimeObserver:v12, v31];
    noRemainTasks = self->_noRemainTasks;
    self->_noRemainTasks = 0;

    [(VSAudioPlaybackServiceAVSBAR *)self stop];
  }

  else
  {
    pthread_mutex_unlock(&self->_stateLock);
    v4 = VSGetLogDefault();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf.value) = 0;
      _os_log_error_impl(&dword_2727E4000, v4, OS_LOG_TYPE_ERROR, "#AVSBAR already stopped or waiting for finish", &buf, 2u);
    }
  }

  v27 = *MEMORY[0x277D85DE8];
}

intptr_t __44__VSAudioPlaybackServiceAVSBAR_flushAndStop__block_invoke_2(uint64_t a1)
{
  v2 = VSGetLogDefault();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_2727E4000, v2, OS_LOG_TYPE_INFO, "#AVSBAR Synchronizer reached endTime", v4, 2u);
  }

  return dispatch_semaphore_signal(*(a1 + 32));
}

- (void)provideMoreData
{
  v34 = *MEMORY[0x277D85DE8];
  if ([(NSMutableArray *)self->_enqueuedMappedAudioInfo count])
  {
    v3 = VSGetLogDefault();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      state = self->_state;
      LODWORD(time.value) = 134217984;
      *(&time.value + 4) = state;
      _os_log_debug_impl(&dword_2727E4000, v3, OS_LOG_TYPE_DEBUG, "#AVSBAR Call to provide more audio data during state %ld.", &time, 0xCu);
    }
  }

  if ([(AVSampleBufferAudioRenderer *)self->_renderer isReadyForMoreMediaData])
  {
    *&v4 = 134217984;
    v27 = v4;
    while (1)
    {
      pthread_mutex_lock(&self->_audioQueueBufferLock);
      firstObject = [(NSMutableArray *)self->_enqueuedMappedAudioInfo firstObject];
      if (!firstObject)
      {
        break;
      }

      v6 = firstObject;
      [(NSMutableArray *)self->_enqueuedMappedAudioInfo removeObjectAtIndex:0];
      [(VSAudioPlaybackServiceAVSBAR *)self createSampleBufferIdNeeded:v6];
      pthread_mutex_unlock(&self->_audioQueueBufferLock);
      v7 = v6[1];
      if (v7)
      {
        CMSampleBufferGetOutputDuration(&time, v7);
        Seconds = CMTimeGetSeconds(&time);
        v9 = VSGetLogDefault();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          renderer = self->_renderer;
          LODWORD(time.value) = 138412546;
          *(&time.value + 4) = renderer;
          LOWORD(time.flags) = 2048;
          *(&time.flags + 2) = Seconds;
          _os_log_impl(&dword_2727E4000, v9, OS_LOG_TYPE_INFO, "#AVSBAR Enqueuing to %@: %f sec", &time, 0x16u);
        }

        mach_absolute_time();
        renderer = [(VSAudioPlaybackServiceAVSBAR *)self renderer];
        [renderer enqueueSampleBuffer:v6[1]];

        mach_absolute_time();
        VSAbsoluteTimeToSecond();
        if (v12 > 0.25)
        {
          v13 = VSGetLogDefault();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            VSAbsoluteTimeToSecond();
            LODWORD(time.value) = v27;
            *(&time.value + 4) = v14;
            _os_log_error_impl(&dword_2727E4000, v13, OS_LOG_TYPE_ERROR, "_renderer enqueueSampleBuffer high latency: %.3f sec", &time, 0xCu);
          }
        }

        CFRelease(v6[1]);
        self->_rendererEnqueuedAudioDuration = Seconds + self->_rendererEnqueuedAudioDuration;
        kdebug_trace();
      }

      if (([(AVSampleBufferAudioRenderer *)self->_renderer isReadyForMoreMediaData]& 1) == 0)
      {
        goto LABEL_19;
      }
    }

    pthread_mutex_unlock(&self->_audioQueueBufferLock);
  }

LABEL_19:
  if ([(NSMutableArray *)self->_enqueuedMappedAudioInfo count])
  {
    v15 = VSGetLogDefault();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = self->_renderer;
      v17 = [(NSMutableArray *)self->_enqueuedMappedAudioInfo count];
      LODWORD(time.value) = 138412546;
      *(&time.value + 4) = v16;
      LOWORD(time.flags) = 2048;
      *(&time.flags + 2) = v17;
      _os_log_impl(&dword_2727E4000, v15, OS_LOG_TYPE_INFO, "#AVSBAR Renderer %@ not anymore ready for more media data. enqueuedMappedAudioInfo count left: %lu", &time, 0x16u);
    }

    if (self->_state == 3)
    {
      pthread_mutex_lock(&self->_audioQueueBufferLock);
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v18 = self->_enqueuedMappedAudioInfo;
      v19 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v29;
        do
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v29 != v21)
            {
              objc_enumerationMutation(v18);
            }

            [(VSAudioPlaybackServiceAVSBAR *)self createSampleBufferIdNeeded:*(*(&v28 + 1) + 8 * i)];
          }

          v20 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v28 objects:v32 count:16];
        }

        while (v20);
      }

      pthread_mutex_unlock(&self->_audioQueueBufferLock);
    }
  }

  [(AVSampleBufferRenderSynchronizer *)self->_synchronizer rate];
  if (v23 == 0.0)
  {
    v24 = self->_state;
    if (v24 == 3 || v24 == 2 && self->_rendererEnqueuedAudioDuration > 0.0)
    {
      [(VSAudioPlaybackServiceAVSBAR *)self _play];
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)addEndOfDataAttachment
{
  pthread_mutex_lock(&self->_audioQueueBufferLock);
  lastObject = [(NSMutableArray *)self->_enqueuedMappedAudioInfo lastObject];
  if (lastObject)
  {
    v4 = lastObject;
    [(VSAudioMappedInfoAVSBAR *)lastObject setEndOfSiriTTSUtterance:1];
  }

  else
  {
    v4 = objc_alloc_init(VSAudioMappedInfoAVSBAR);
    v5 = [(VSMappedData *)self->_mappedData appendData:0];
    [(VSAudioMappedInfoAVSBAR *)v4 setAudioBytesRange:v5, v6];
    [(VSAudioMappedInfoAVSBAR *)v4 setPacketCount:0];
    v7 = [(VSMappedData *)self->_mappedData appendData:0];
    [(VSAudioMappedInfoAVSBAR *)v4 setPacketDescriptionsRange:v7, v8];
    [(VSAudioMappedInfoAVSBAR *)v4 setEndOfSiriTTSUtterance:1];
    [(NSMutableArray *)self->_enqueuedMappedAudioInfo addObject:v4];
  }

  pthread_mutex_unlock(&self->_audioQueueBufferLock);
  v9 = VSGetLogDefault();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *v10 = 0;
    _os_log_impl(&dword_2727E4000, v9, OS_LOG_TYPE_INFO, "#AVSBAR EndOfDataAttachment ready for enqueuing", v10, 2u);
  }
}

- (opaqueCMSampleBuffer)createSilenceEndBuffer
{
  v40[1] = *MEMORY[0x277D85DE8];
  asbd.mSampleRate = 48000.0;
  *&asbd.mFormatID = xmmword_272832680;
  *&asbd.mBytesPerFrame = xmmword_272832690;
  v3 = malloc_type_calloc(2uLL, 0x800uLL, 0x12761BA8uLL);
  blockBufferOut = 0;
  v4 = *MEMORY[0x277CBECE8];
  v5 = CMBlockBufferCreateWithMemoryBlock(*MEMORY[0x277CBECE8], v3, 0x1000uLL, *MEMORY[0x277CBECF0], 0, 0, 0x1000uLL, 0, &blockBufferOut);
  if (v5)
  {
    v6 = v5;
    v7 = VSGetLogDefault();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      LOWORD(presentationTimeStamp.value) = 0;
      _os_log_error_impl(&dword_2727E4000, v7, OS_LOG_TYPE_ERROR, "Error in creating block buffer for Silence buffer", &presentationTimeStamp, 2u);
    }

    v8 = MEMORY[0x277CCA9B8];
    v9 = *MEMORY[0x277CCA590];
    v39 = *MEMORY[0x277CCA450];
    v40[0] = @"Error in creating block buffer for Silence buffer";
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:&v39 count:1];
    v11 = [v8 errorWithDomain:v9 code:v6 userInfo:v10];
    error = self->_error;
    self->_error = v11;

    free(v3);
  }

  else
  {
    formatDescriptionOut = 0;
    v13 = CMAudioFormatDescriptionCreate(v4, &asbd, 0, 0, 0, 0, 0, &formatDescriptionOut);
    if (v13)
    {
      v14 = v13;
      v15 = VSGetLogDefault();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        LOWORD(presentationTimeStamp.value) = 0;
        _os_log_error_impl(&dword_2727E4000, v15, OS_LOG_TYPE_ERROR, "Error in CMAudioFormatDescriptionCreate from Silence buffer creation", &presentationTimeStamp, 2u);
      }

      v16 = MEMORY[0x277CCA9B8];
      v17 = *MEMORY[0x277CCA590];
      v37 = *MEMORY[0x277CCA450];
      v38 = @"Error in CMAudioFormatDescriptionCreate from Silence buffer creation";
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
      v19 = [v16 errorWithDomain:v17 code:v14 userInfo:v18];
      v20 = self->_error;
      self->_error = v19;

      CFRelease(blockBufferOut);
    }

    else
    {
      presentationTimeStamp = self->_mappedAudioQueuedTimeStamp;
      v31 = 0;
      v21 = CMAudioSampleBufferCreateWithPacketDescriptions(v4, blockBufferOut, 1u, 0, 0, formatDescriptionOut, 0x1000 / asbd.mBytesPerFrame, &presentationTimeStamp, 0, &v31);
      CFRelease(blockBufferOut);
      CFRelease(formatDescriptionOut);
      if (!v21)
      {
        result = v31;
        goto LABEL_14;
      }

      v22 = VSGetLogDefault();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        LOWORD(presentationTimeStamp.value) = 0;
        _os_log_error_impl(&dword_2727E4000, v22, OS_LOG_TYPE_ERROR, "Error in CMAudioSampleBufferCreateWithPacketDescriptions from silence buffer", &presentationTimeStamp, 2u);
      }

      v23 = MEMORY[0x277CCA9B8];
      v24 = *MEMORY[0x277CCA590];
      v35 = *MEMORY[0x277CCA450];
      v36 = @"Error in CMAudioSampleBufferCreateWithPacketDescriptions from silence buffer";
      v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
      v26 = [v23 errorWithDomain:v24 code:v21 userInfo:v25];
      v27 = self->_error;
      self->_error = v26;
    }
  }

  result = 0;
LABEL_14:
  v29 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_startProvidingData
{
  if (!self->_startedProvidingData)
  {
    self->_startedProvidingData = 1;
    if (sLastSynchronizer == self->_synchronizer)
    {
      sLastSynchronizerStartedProvidingData = 1;
    }

    objc_initWeak(&location, self);
    renderer = self->_renderer;
    dataQueue = self->_dataQueue;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __51__VSAudioPlaybackServiceAVSBAR__startProvidingData__block_invoke;
    v5[3] = &unk_279E4B7A0;
    objc_copyWeak(&v6, &location);
    [(AVSampleBufferAudioRenderer *)renderer requestMediaDataWhenReadyOnQueue:dataQueue usingBlock:v5];
    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }
}

void __51__VSAudioPlaybackServiceAVSBAR__startProvidingData__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained provideMoreData];
}

- (void)enqueue:(id)enqueue packetCount:(int64_t)count packetDescriptions:(id)descriptions
{
  v21 = *MEMORY[0x277D85DE8];
  enqueueCopy = enqueue;
  descriptionsCopy = descriptions;
  if ((self->_state - 3) > 1)
  {
    if ([enqueueCopy length])
    {
      pthread_mutex_lock(&self->_audioQueueBufferLock);
      v10 = objc_alloc_init(VSAudioMappedInfoAVSBAR);
      v12 = [(VSMappedData *)self->_mappedData appendData:enqueueCopy];
      [(VSAudioMappedInfoAVSBAR *)v10 setAudioBytesRange:v12, v13];
      [(VSAudioMappedInfoAVSBAR *)v10 setPacketCount:count];
      v14 = [(VSMappedData *)self->_mappedData appendData:descriptionsCopy];
      [(VSAudioMappedInfoAVSBAR *)v10 setPacketDescriptionsRange:v14, v15];
      v16 = VSGetLogDefault();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        [(VSAudioPlaybackServiceAVSBAR *)self duration:v10];
        v19 = 134217984;
        v20 = v17;
        _os_log_impl(&dword_2727E4000, v16, OS_LOG_TYPE_INFO, "Adding to enqueuedMappedAudioInfo: %f sec", &v19, 0xCu);
      }

      [(NSMutableArray *)self->_enqueuedMappedAudioInfo addObject:v10];
      pthread_mutex_unlock(&self->_audioQueueBufferLock);
      [(VSAudioPlaybackServiceAVSBAR *)self _startProvidingData];
    }

    else
    {
      v10 = VSGetLogDefault();
      if (os_log_type_enabled(&v10->super, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v19) = 0;
        v11 = "#AVSBAR empty audio data: will not enqueue it";
        goto LABEL_11;
      }
    }
  }

  else
  {
    v10 = VSGetLogDefault();
    if (os_log_type_enabled(&v10->super, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v19) = 0;
      v11 = "#AVSBAR already stopped or waiting for finish: will not enqueue more";
LABEL_11:
      _os_log_error_impl(&dword_2727E4000, &v10->super, OS_LOG_TYPE_ERROR, v11, &v19, 2u);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (double)duration:(id)duration
{
  durationCopy = duration;
  v5 = durationCopy;
  v6 = 0.0;
  if (self->_asbd.mSampleRate != 0.0)
  {
    if ([durationCopy packetCount])
    {
      packetCount = [v5 packetCount];
      LODWORD(v9) = self->_asbd.mFramesPerPacket;
      v6 = packetCount * v9 / self->_asbd.mSampleRate;
    }

    else
    {
      LODWORD(v7) = self->_asbd.mBytesPerFrame;
      v10 = self->_asbd.mSampleRate * v7;
      if (v10 != 0.0)
      {
        [v5 audioBytesRange];
        v6 = v11 / v10;
      }
    }
  }

  return v6;
}

- (opaqueCMSampleBuffer)createSampleBuffer:(id)buffer
{
  v53[1] = *MEMORY[0x277D85DE8];
  bufferCopy = buffer;
  v47 = 0;
  -[VSMappedData bytesAtOffset:](self->_mappedData, "bytesAtOffset:", [bufferCopy audioBytesRange]);
  if ([bufferCopy packetCount])
  {
    packetDescriptions = -[VSMappedData bytesAtOffset:](self->_mappedData, "bytesAtOffset:", [bufferCopy packetDescriptionsRange]);
  }

  else
  {
    packetDescriptions = 0;
  }

  [bufferCopy audioBytesRange];
  v7 = v6;
  v8 = *MEMORY[0x277CBECE8];
  BlockBufferCopyingMemoryBlock = FigCreateBlockBufferCopyingMemoryBlock();
  if (BlockBufferCopyingMemoryBlock)
  {
    v10 = BlockBufferCopyingMemoryBlock;
    v11 = VSGetLogDefault();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      LOWORD(presentationTimeStamp.value) = 0;
      _os_log_error_impl(&dword_2727E4000, v11, OS_LOG_TYPE_ERROR, "Error in creating block buffer for Sample buffer", &presentationTimeStamp, 2u);
    }

    v12 = MEMORY[0x277CCA9B8];
    v13 = *MEMORY[0x277CCA590];
    v52 = *MEMORY[0x277CCA450];
    v53[0] = @"Error in creating block buffer for Sample buffer";
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v53 forKeys:&v52 count:1];
    v15 = v12;
    v16 = v13;
    v17 = v10;
  }

  else
  {
    formatDescriptionOut = 0;
    v20 = CMAudioFormatDescriptionCreate(v8, &self->_asbd, 0, 0, 0, 0, 0, &formatDescriptionOut);
    if (v20)
    {
      v21 = v20;
      v22 = VSGetLogDefault();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        LOWORD(presentationTimeStamp.value) = 0;
        _os_log_error_impl(&dword_2727E4000, v22, OS_LOG_TYPE_ERROR, "Error in CMAudioFormatDescriptionCreate", &presentationTimeStamp, 2u);
      }

      v23 = MEMORY[0x277CCA9B8];
      v24 = *MEMORY[0x277CCA590];
      v50 = *MEMORY[0x277CCA450];
      v51 = @"Error in CMAudioFormatDescriptionCreate";
      v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v51 forKeys:&v50 count:1];
      v26 = [v23 errorWithDomain:v24 code:v21 userInfo:v25];
      error = self->_error;
      self->_error = v26;

      CFRelease(v47);
      goto LABEL_13;
    }

    v45 = 0;
    v31 = formatDescriptionOut;
    v32 = v47;
    if (packetDescriptions)
    {
      packetCount = [bufferCopy packetCount];
      presentationTimeStamp = self->_mappedAudioQueuedTimeStamp;
      v34 = CMAudioSampleBufferCreateWithPacketDescriptions(v8, v32, 1u, 0, 0, v31, packetCount, &presentationTimeStamp, packetDescriptions, &v45);
    }

    else
    {
      mBytesPerFrame = self->_asbd.mBytesPerFrame;
      presentationTimeStamp = self->_mappedAudioQueuedTimeStamp;
      v34 = CMAudioSampleBufferCreateWithPacketDescriptions(v8, v47, 1u, 0, 0, formatDescriptionOut, v7 / mBytesPerFrame, &presentationTimeStamp, 0, &v45);
    }

    v36 = v34;
    CFRelease(v47);
    CFRelease(formatDescriptionOut);
    if (!v36)
    {
      memset(&presentationTimeStamp, 0, sizeof(presentationTimeStamp));
      CMSampleBufferGetOutputPresentationTimeStamp(&presentationTimeStamp, v45);
      memset(&v43, 0, sizeof(v43));
      CMSampleBufferGetOutputDuration(&v43, v45);
      lhs = presentationTimeStamp;
      rhs = v43;
      CMTimeAdd(&v42, &lhs, &rhs);
      self->_mappedAudioQueuedTimeStamp = v42;
      v28 = v45;
      goto LABEL_14;
    }

    v37 = VSGetLogDefault();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      LOWORD(presentationTimeStamp.value) = 0;
      _os_log_error_impl(&dword_2727E4000, v37, OS_LOG_TYPE_ERROR, "Error in CMAudioSampleBufferCreateWithPacketDescriptions", &presentationTimeStamp, 2u);
    }

    v38 = MEMORY[0x277CCA9B8];
    v39 = *MEMORY[0x277CCA590];
    v48 = *MEMORY[0x277CCA450];
    v49 = @"Error in CMAudioSampleBufferCreateWithPacketDescriptions";
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
    v15 = v38;
    v16 = v39;
    v17 = v36;
  }

  v18 = [v15 errorWithDomain:v16 code:v17 userInfo:v14];
  v19 = self->_error;
  self->_error = v18;

LABEL_13:
  v28 = 0;
LABEL_14:

  v29 = *MEMORY[0x277D85DE8];
  return v28;
}

- (void)createSampleBufferIdNeeded:(id)needed
{
  neededCopy = needed;
  v5 = neededCopy;
  if (neededCopy[1])
  {
    goto LABEL_2;
  }

  [(CMAttachmentBearerRef *)neededCopy audioBytesRange];
  if (v6)
  {
    v7 = [(VSAudioPlaybackServiceAVSBAR *)self createSampleBuffer:v5];
    v5[1] = v7;
    if (!v7)
    {
      v8 = VSGetLogDefault();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v13 = 0;
        v9 = "Invalid sample buffer";
        v10 = &v13;
LABEL_13:
        _os_log_error_impl(&dword_2727E4000, v8, OS_LOG_TYPE_ERROR, v9, v10, 2u);
        goto LABEL_11;
      }

      goto LABEL_11;
    }
  }

  else
  {
    createSilenceEndBuffer = [(VSAudioPlaybackServiceAVSBAR *)self createSilenceEndBuffer];
    v5[1] = createSilenceEndBuffer;
    if (!createSilenceEndBuffer)
    {
      v8 = VSGetLogDefault();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v12 = 0;
        v9 = "Invalid silence buffer";
        v10 = &v12;
        goto LABEL_13;
      }

LABEL_11:

      goto LABEL_2;
    }
  }

  if ([(CMAttachmentBearerRef *)v5 endOfSiriTTSUtterance])
  {
    CMSetAttachment(v5[1], *MEMORY[0x277CC06E0], *MEMORY[0x277CBED28], 0);
  }

LABEL_2:
}

- (void)_play
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = VSGetLogDefault();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    rendererEnqueuedAudioDuration = self->_rendererEnqueuedAudioDuration;
    [(AVSampleBufferRenderSynchronizer *)self->_synchronizer rate];
    *buf = 134218240;
    v10 = rendererEnqueuedAudioDuration;
    v11 = 2048;
    v12 = v5;
    _os_log_impl(&dword_2727E4000, v3, OS_LOG_TYPE_DEFAULT, "#AVSBAR synchronizer.rate will be set to 1 with enqueued audio duration %f sec. Previous rate: %f", buf, 0x16u);
  }

  v6 = dispatch_get_global_queue(33, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__VSAudioPlaybackServiceAVSBAR__play__block_invoke;
  block[3] = &unk_279E4BAC8;
  block[4] = self;
  dispatch_async(v6, block);

  v7 = *MEMORY[0x277D85DE8];
}

void __37__VSAudioPlaybackServiceAVSBAR__play__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) state] == 4 || objc_msgSend(*(a1 + 32), "state") == 1)
  {
    v2 = VSGetLogDefault();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&dword_2727E4000, v2, OS_LOG_TYPE_INFO, "#AVSBAR already stopped or paused: will not resume rate", &v11, 2u);
    }
  }

  else
  {
    mach_absolute_time();
    v3 = [*(a1 + 32) synchronizer];
    LODWORD(v4) = 1.0;
    [v3 setRate:v4];

    mach_absolute_time();
    VSAbsoluteTimeToSecond();
    if (v5 > 0.25)
    {
      v6 = VSGetLogDefault();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        VSAbsoluteTimeToSecond();
        v11 = 134217984;
        v12 = v10;
        _os_log_error_impl(&dword_2727E4000, v6, OS_LOG_TYPE_ERROR, "_synchronizer play rate high latency: %.3f sec", &v11, 0xCu);
      }
    }

    v2 = VSGetLogDefault();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v7 = [*(a1 + 32) synchronizer];
      [v7 rate];
      v11 = 134217984;
      v12 = v8;
      _os_log_impl(&dword_2727E4000, v2, OS_LOG_TYPE_INFO, "#AVSBAR synchronizer.rate was set to 1. Current rate: %f", &v11, 0xCu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (id)start
{
  self->_state = 2;
  if (self->_rendererEnqueuedAudioDuration > 0.0)
  {
    [(VSAudioPlaybackServiceAVSBAR *)self _play];
  }

  error = self->_error;

  return error;
}

- (void)handleMediaServerReset
{
  v3 = VSGetLogDefault();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_2727E4000, v3, OS_LOG_TYPE_DEFAULT, "mediaserverd reset", v4, 2u);
  }

  [(VSAudioPlaybackServiceAVSBAR *)self stop];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  [(VSAudioPlaybackServiceAVSBAR *)self stopWaiting];
  [(VSAudioPlaybackServiceAVSBAR *)self freeAudioQueue];
  v4.receiver = self;
  v4.super_class = VSAudioPlaybackServiceAVSBAR;
  [(VSAudioPlaybackServiceAVSBAR *)&v4 dealloc];
}

@end