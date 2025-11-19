@interface VSOccasionalTimesObserver
- (VSOccasionalTimesObserver)initWithTimebase:(OpaqueCMTimebase *)a3 times:(id)a4 queue:(id)a5 block:(id)a6;
- (void)_reallyInvalidate;
- (void)_resetNextFireTime;
- (void)dealloc;
- (void)invalidate;
@end

@implementation VSOccasionalTimesObserver

- (void)_resetNextFireTime
{
  v25 = *MEMORY[0x277D85DE8];
  if (self->_timerSource && self->_timebase)
  {
    memset(&v23, 0, sizeof(v23));
    CMTimebaseGetTimeClampedAboveAnchorTime();
    v3 = 0 >> 96 == 1 && v23.epoch == 0;
    v4 = MEMORY[0x277CC08F0];
    if (!v3 || (time1 = v23, time2 = **&MEMORY[0x277CC08F0], CMTimeCompare(&time1, &time2) < 0))
    {
      v23 = *v4;
    }

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v5 = self->_times;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v17 objects:v24 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v18;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v18 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v17 + 1) + 8 * i);
          memset(&time1, 0, sizeof(time1));
          if (v10)
          {
            [v10 CMTimeValue];
          }

          time2 = time1;
          v16 = v23;
          if (CMTimeCompare(&time2, &v16) >= 1)
          {
            v11 = *&time1.value;
            *&self->_nextFireTime.value = *&time1.value;
            epoch = time1.epoch;
            self->_nextFireTime.epoch = time1.epoch;
            timebase = self->_timebase;
            timerSource = self->_timerSource;
            *&time2.value = v11;
            time2.epoch = epoch;
            CMTimebaseSetTimerDispatchSourceNextFireTime(timebase, timerSource, &time2, 0);
            goto LABEL_22;
          }
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v17 objects:v24 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_22:
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_reallyInvalidate
{
  if (!self->_invalid)
  {
    self->_invalid = 1;
    timebase = self->_timebase;
    if (timebase)
    {
      timerSource = self->_timerSource;
      if (!timerSource || (v6 = **&MEMORY[0x277CC0898], CMTimebaseSetTimerDispatchSourceNextFireTime(timebase, timerSource, &v6, 0), CMTimebaseRemoveTimerDispatchSource(self->_timebase, self->_timerSource), (timebase = self->_timebase) != 0))
      {
        CFRelease(timebase);
        self->_timebase = 0;
      }
    }

    v5 = self->_timerSource;
    self->_timerSource = 0;
  }
}

- (void)invalidate
{
  timerQueue = self->_timerQueue;
  if (timerQueue)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __39__VSOccasionalTimesObserver_invalidate__block_invoke;
    block[3] = &unk_279E4BAC8;
    block[4] = self;
    dispatch_async(timerQueue, block);
  }

  else
  {

    [(VSOccasionalTimesObserver *)self _reallyInvalidate];
  }
}

- (void)dealloc
{
  timerQueue = self->_timerQueue;
  self->_timerQueue = 0;

  timebase = self->_timebase;
  if (timebase)
  {
    CFRelease(timebase);
    self->_timebase = 0;
  }

  v5.receiver = self;
  v5.super_class = VSOccasionalTimesObserver;
  [(VSOccasionalTimesObserver *)&v5 dealloc];
}

- (VSOccasionalTimesObserver)initWithTimebase:(OpaqueCMTimebase *)a3 times:(id)a4 queue:(id)a5 block:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v32.receiver = self;
  v32.super_class = VSOccasionalTimesObserver;
  v13 = [(VSOccasionalTimesObserver *)&v32 init];
  if (v13)
  {
    *(v13 + 9) = CFRetain(a3);
    v14 = [v10 sortedArrayUsingComparator:&__block_literal_global_1366];
    v15 = *(v13 + 4);
    *(v13 + 4) = v14;

    if (v11)
    {
      v16 = v11;
      v17 = *(v13 + 1);
      *(v13 + 1) = v16;
    }

    else
    {
      v18 = MEMORY[0x277D85CD0];
      v19 = MEMORY[0x277D85CD0];
      v17 = *(v13 + 1);
      *(v13 + 1) = v18;
    }

    v20 = [v12 copy];
    v21 = *(v13 + 8);
    *(v13 + 8) = v20;

    v22 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(v13 + 1));
    v23 = *(v13 + 2);
    *(v13 + 2) = v22;

    objc_initWeak(&location, v13);
    v24 = *(v13 + 2);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __64__VSOccasionalTimesObserver_initWithTimebase_times_queue_block___block_invoke_2;
    handler[3] = &unk_279E4B7A0;
    objc_copyWeak(&v30, &location);
    dispatch_source_set_event_handler(v24, handler);
    dispatch_resume(*(v13 + 2));
    CMTimebaseAddTimerDispatchSource(*(v13 + 9), *(v13 + 2));
    v25 = *(v13 + 1);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __64__VSOccasionalTimesObserver_initWithTimebase_times_queue_block___block_invoke_3;
    block[3] = &unk_279E4BAC8;
    v28 = v13;
    dispatch_async(v25, block);

    objc_destroyWeak(&v30);
    objc_destroyWeak(&location);
  }

  return v13;
}

void __64__VSOccasionalTimesObserver_initWithTimebase_times_queue_block___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if ((WeakRetained[24] & 1) == 0)
    {
      v5 = *(WeakRetained + 7);
      v4 = *(WeakRetained + 8);
      v6 = *(*(v3 + 8) + 16);
      v7 = *(v3 + 40);
      v8 = v5;
      v6(v4, &v7, v2);
    }

    if (*(v3 + 9))
    {
      [v3 _resetNextFireTime];
    }
  }
}

uint64_t __64__VSOccasionalTimesObserver_initWithTimebase_times_queue_block___block_invoke(uint64_t a1, void *a2, void *a3)
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

@end