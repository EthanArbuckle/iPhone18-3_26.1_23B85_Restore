@interface LightweightTimer
- (BOOL)cancel:(unint64_t)cancel;
- (LightweightTimer)initWithQueue:(id)queue maxDelay:(double)delay precision:(double)precision callback:(id)callback;
- (id)description;
- (unint64_t)setRelativeTimer:(double)timer context:(id)context;
- (void)_handleTimerExpiry;
- (void)dealloc;
@end

@implementation LightweightTimer

- (void)_handleTimerExpiry
{
  v28 = *MEMORY[0x277D85DE8];
  context = objc_autoreleasePoolPush();
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v4 = (v3 * self->_slotScaleFactor);
  v5 = otherLogHandle;
  if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218242;
    v25 = *&v4;
    v26 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEBUG, "_handleTimerExpiry  drainTo %lld %@", buf, 0x16u);
  }

  timerExpiryTargetSlot = self->_timerExpiryTargetSlot;
  self->_timerExpiryTargetSlot = 0;
  if (timerExpiryTargetSlot <= v4)
  {
    entries = self->_entries;
    do
    {
      v8 = timerExpiryTargetSlot % self->_numSlots;
      self->_activeSlotBitmask &= ~(1 << v8);
      v9 = entries[v8];
      if (v9)
      {
        if ([(NSMutableArray *)v9 count])
        {
          v10 = 0;
          v11 = 0;
          do
          {
            while (1)
            {
              v12 = v11;
              v11 = [(NSMutableArray *)entries[v8] objectAtIndexedSubscript:v10];

              if ([v11 slotNum] <= timerExpiryTargetSlot)
              {
                break;
              }

              self->_activeSlotBitmask |= 1 << v8;
              if ([(NSMutableArray *)entries[v8] count]<= ++v10)
              {
                goto LABEL_12;
              }
            }

            [(NSMutableArray *)entries[v8] removeObjectAtIndex:v10];
            callback = self->_callback;
            userParam = [v11 userParam];
            callback[2](callback, userParam);

            v10 = 0;
          }

          while ([(NSMutableArray *)entries[v8] count]);
LABEL_12:
        }

        if (![(NSMutableArray *)entries[v8] count])
        {
          v15 = entries[v8];
          entries[v8] = 0;
        }
      }

      ++timerExpiryTargetSlot;
    }

    while (timerExpiryTargetSlot <= v4);
  }

  activeSlotBitmask = self->_activeSlotBitmask;
  if (activeSlotBitmask)
  {
    v17 = 0;
    do
    {
      ++v4;
      v17 += self->_nsecsPerSlot;
    }

    while (((activeSlotBitmask >> (v4 % self->_numSlots)) & 1) == 0);
    self->_timerExpiryTargetSlot = v4;
    timer = self->_timer;
    v19 = dispatch_time(0, v17);
    dispatch_source_set_timer(timer, v19, 0xFFFFFFFFFFFFFFFFLL, 0x5F5E100uLL);
    v20 = otherLogHandle;
    if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      v25 = (v17 / 1000000.0);
      _os_log_impl(&dword_23255B000, v20, OS_LOG_TYPE_DEBUG, "timer set again with delay of %f", buf, 0xCu);
    }
  }

  else
  {
    v21 = otherLogHandle;
    if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v21, OS_LOG_TYPE_DEBUG, "timer not restarted, nothing active", buf, 2u);
    }

    self->_timerExpiryTargetSlot = -1;
  }

  objc_autoreleasePoolPop(context);
  v22 = *MEMORY[0x277D85DE8];
}

- (id)description
{
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"LightWeightTimer with scale factor %f timer expiry slot %lld index %lld current slot %lld bitmask 0x%llx\n", *&self->_slotScaleFactor, self->_timerExpiryTargetSlot, self->_timerExpiryTargetSlot % self->_numSlots, (v3 * self->_slotScaleFactor), self->_activeSlotBitmask];
  v5 = v4;
  if (self->_numSlots)
  {
    v6 = 0;
    do
    {
      v7 = [v5 stringByAppendingFormat:@"  %d: %@\n", v6, self->_entries[v6]];

      ++v6;
      v5 = v7;
    }

    while (self->_numSlots > v6);
  }

  else
  {
    v7 = v4;
  }

  return v7;
}

- (void)dealloc
{
  dispatch_source_cancel(self->_timer);
  v3.receiver = self;
  v3.super_class = LightweightTimer;
  [(LightweightTimer *)&v3 dealloc];
}

- (LightweightTimer)initWithQueue:(id)queue maxDelay:(double)delay precision:(double)precision callback:(id)callback
{
  queueCopy = queue;
  callbackCopy = callback;
  v31.receiver = self;
  v31.super_class = LightweightTimer;
  v13 = [(LightweightTimer *)&v31 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_queue, queue);
    v15 = _Block_copy(callbackCopy);
    callback = v14->_callback;
    v14->_callback = v15;

    v17 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v14->_queue);
    timer = v14->_timer;
    v14->_timer = v17;

    v19 = v14->_timer;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __62__LightweightTimer_initWithQueue_maxDelay_precision_callback___block_invoke;
    handler[3] = &unk_27898A0C8;
    v20 = v14;
    v30 = v20;
    dispatch_source_set_event_handler(v19, handler);
    v21 = 1;
    do
    {
      v22 = v21;
      v21 *= 2;
    }

    while (v22 < delay);
    v23 = v22;
    if (precision <= 0.0)
    {
      v24 = 64.0;
    }

    else
    {
      v24 = v23 / precision;
    }

    if (v24 > 64.0)
    {
      v24 = 64.0;
    }

    v25 = 8;
    do
    {
      v26 = v25;
      v27 = v25;
      v25 *= 2;
    }

    while (v24 > v27);
    v20->_slotScaleFactor = v27 / v23;
    v20->_nsecsPerSlot = 1000000000 * v22 / v26;
    v20->_timerExpiryTargetSlot = -1;
    v20->_numSlots = v26;
    dispatch_resume(v14->_timer);
  }

  return v14;
}

uint64_t __62__LightweightTimer_initWithQueue_maxDelay_precision_callback___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = otherLogHandle;
  if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(a1 + 32);
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_DEBUG, "Timer expiry for %@", &v6, 0xCu);
  }

  result = [*(a1 + 32) _handleTimerExpiry];
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (unint64_t)setRelativeTimer:(double)timer context:(id)context
{
  v35 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v7 = otherLogHandle;
  if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v29 = 134218242;
    timerCopy2 = timer;
    v31 = 2112;
    timerCopy3 = *&contextCopy;
    _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEBUG, "setRelativeTimer %f %@", &v29, 0x16u);
  }

  if (timer < 0.0)
  {
    timer = 0.0;
  }

  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  slotScaleFactor = self->_slotScaleFactor;
  v10 = ((timer + v8) * slotScaleFactor) + 1;
  v11 = v10 - (v8 * slotScaleFactor);
  numSlots = self->_numSlots;
  if (v11 > numSlots)
  {
    v13 = otherLogHandle;
    if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
    {
      v14 = self->_numSlots / self->_slotScaleFactor;
      v29 = 134218240;
      timerCopy2 = timer;
      v31 = 2048;
      timerCopy3 = v14;
      _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_ERROR, "Requested delay %f for lighweight time greater than configured, %f", &v29, 0x16u);
    }

    numSlots = self->_numSlots;
  }

  v15 = v10 % numSlots;
  self->_activeSlotBitmask |= 1 << (v10 % numSlots);
  entries = self->_entries;
  if (!self->_entries[v10 % numSlots])
  {
    array = [MEMORY[0x277CBEB18] array];
    v18 = entries[v15];
    entries[v15] = array;
  }

  v19 = objc_alloc_init(LightweightTimerEntry);
  [(LightweightTimerEntry *)v19 setUserParam:contextCopy];
  ++self->_seqno;
  [(LightweightTimerEntry *)v19 setSeqNo:?];
  [(LightweightTimerEntry *)v19 setSlotNum:v10];
  [(NSMutableArray *)entries[v15] addObject:v19];
  seqNo = [(LightweightTimerEntry *)v19 seqNo];
  if (v10 < self->_timerExpiryTargetSlot)
  {
    self->_timerExpiryTargetSlot = v10;
    v21 = v11 / self->_slotScaleFactor;
    timer = self->_timer;
    v23 = dispatch_time(0, (v21 * 1000000000.0));
    dispatch_source_set_timer(timer, v23, 0xFFFFFFFFFFFFFFFFLL, 0x5F5E100uLL);
    v24 = otherLogHandle;
    if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v29 = 134217984;
      timerCopy2 = v21;
      _os_log_impl(&dword_23255B000, v24, OS_LOG_TYPE_DEBUG, "setRelativeTimer, setting internal timer to delay %f", &v29, 0xCu);
    }
  }

  v25 = v10 | (seqNo << 48);
  v26 = otherLogHandle;
  if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v29 = 134218498;
    timerCopy2 = *&v25;
    v31 = 2048;
    timerCopy3 = timer;
    v33 = 2112;
    v34 = contextCopy;
    _os_log_impl(&dword_23255B000, v26, OS_LOG_TYPE_DEBUG, "LW Timers  return %lld from setRelativeTimer %f %@", &v29, 0x20u);
  }

  v27 = *MEMORY[0x277D85DE8];
  return v25;
}

- (BOOL)cancel:(unint64_t)cancel
{
  v38 = *MEMORY[0x277D85DE8];
  if (cancel)
  {
    v5 = cancel & 0xFFFFFFFFFFLL;
    v6 = HIWORD(cancel);
    v7 = (cancel & 0xFFFFFFFFFFLL) % self->_numSlots;
    v8 = otherLogHandle;
    if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218752;
      *v37 = cancel;
      *&v37[8] = 2048;
      *&v37[10] = v5;
      *&v37[18] = 2048;
      *&v37[20] = v7;
      *&v37[28] = 2048;
      *&v37[30] = v6;
      _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEBUG, "LW Timer call cancel %lld   slot %lld index %lld seqno %lld", buf, 0x2Au);
    }

    entries = self->_entries;
    v10 = self->_entries[v7];
    if (v10)
    {
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v11 = v10;
      v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v31 objects:v35 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v32;
LABEL_7:
        v15 = 0;
        while (1)
        {
          if (*v32 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v31 + 1) + 8 * v15);
          if (v6 == [v16 seqNo] && objc_msgSend(v16, "slotNum") == v5)
          {
            break;
          }

          if (v13 == ++v15)
          {
            v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v31 objects:v35 count:16];
            if (v13)
            {
              goto LABEL_7;
            }

            goto LABEL_14;
          }
        }

        v23 = v16;

        if (!v23)
        {
          goto LABEL_24;
        }

        [(NSMutableArray *)entries[v7] removeObject:v23];
        v24 = otherLogHandle;
        if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEBUG))
        {
          v25 = entries[v7];
          *buf = 138412290;
          *v37 = v25;
          _os_log_impl(&dword_23255B000, v24, OS_LOG_TYPE_DEBUG, "LW timer cancellation found matching object, leaving %@", buf, 0xCu);
        }

        v18 = 1;
        goto LABEL_28;
      }

LABEL_14:

LABEL_24:
      v26 = otherLogHandle;
      if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEBUG))
      {
        v27 = entries[v7];
        *buf = 138412290;
        *v37 = v27;
        v20 = "LW timer cancellation  could not find object in %@";
        v21 = v26;
        v22 = 12;
        goto LABEL_26;
      }
    }

    else
    {
      v19 = otherLogHandle;
      if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        v20 = "LW cancel to nil array";
        v21 = v19;
        v22 = 2;
LABEL_26:
        _os_log_impl(&dword_23255B000, v21, OS_LOG_TYPE_DEBUG, v20, buf, v22);
      }
    }

    v18 = 0;
LABEL_28:
    v28 = otherLogHandle;
    if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109888;
      *v37 = v18;
      *&v37[4] = 2048;
      *&v37[6] = cancel;
      *&v37[14] = 2048;
      *&v37[16] = v5;
      *&v37[24] = 2048;
      *&v37[26] = v7;
      _os_log_impl(&dword_23255B000, v28, OS_LOG_TYPE_DEBUG, "LW timer cancel return %d from  cancel %lld   slot %lld index %lld", buf, 0x26u);
    }

    goto LABEL_30;
  }

  v17 = otherLogHandle;
  if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v17, OS_LOG_TYPE_DEBUG, "LW timer cancel with null token", buf, 2u);
  }

  LOBYTE(v18) = 0;
LABEL_30:
  v29 = *MEMORY[0x277D85DE8];
  return v18;
}

@end