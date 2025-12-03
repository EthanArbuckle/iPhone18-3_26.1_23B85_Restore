@interface RERelevanceSignalUpdateScheduler
- (id)_init;
- (void)_queue_updateBlocks;
- (void)_rescheduleTimer;
- (void)_updateBlocks;
- (void)dealloc;
- (void)scheduleEventWithIdentifier:(id)identifier updateFrequency:(double)frequency completion:(id)completion;
- (void)unscheduleEventWithIdentifier:(id)identifier;
@end

@implementation RERelevanceSignalUpdateScheduler

- (id)_init
{
  v10.receiver = self;
  v10.super_class = RERelevanceSignalUpdateScheduler;
  _init = [(RESingleton *)&v10 _init];
  if (_init)
  {
    v3 = dispatch_queue_create("com.apple.RelevanceEngine.SignalUpdateScheduler", 0);
    v4 = _init[2];
    _init[2] = v3;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v6 = _init[1];
    _init[1] = dictionary;

    *(_init + 40) = 0;
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v8 = RESignificantTimeChangeNotification();
    [defaultCenter addObserver:_init selector:sel__updateBlocks name:v8 object:0];
  }

  return _init;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = RERelevanceSignalUpdateScheduler;
  [(RERelevanceSignalUpdateScheduler *)&v4 dealloc];
}

- (void)scheduleEventWithIdentifier:(id)identifier updateFrequency:(double)frequency completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  v10 = completionCopy;
  if (identifierCopy && completionCopy)
  {
    queue = self->_queue;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __91__RERelevanceSignalUpdateScheduler_scheduleEventWithIdentifier_updateFrequency_completion___block_invoke;
    v12[3] = &unk_2785FB258;
    v12[4] = self;
    v13 = identifierCopy;
    frequencyCopy = frequency;
    v14 = v10;
    dispatch_async(queue, v12);
  }
}

void __91__RERelevanceSignalUpdateScheduler_scheduleEventWithIdentifier_updateFrequency_completion___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:*(a1 + 40)];

  if (v2)
  {
    RERaiseInternalException(*MEMORY[0x277CBE660], @"Event with name %@ already specified", v3, v4, v5, v6, v7, v8, *(a1 + 40));
  }

  v9 = objc_opt_new();
  v13 = v9;
  v10 = *(a1 + 56);
  if (v10 < 0.0)
  {
    v10 = -v10;
  }

  [v9 setInterval:v10];
  [v13 setCompletion:*(a1 + 48)];
  v11 = [MEMORY[0x277CBEAA8] date];
  v12 = [v11 dateByAddingTimeInterval:-0.1];
  [v13 setLastFireDate:v12];

  [*(*(a1 + 32) + 8) setObject:v13 forKeyedSubscript:*(a1 + 40)];
  *(*(a1 + 32) + 40) = 0;
  [*(a1 + 32) _rescheduleTimer];
}

- (void)unscheduleEventWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __66__RERelevanceSignalUpdateScheduler_unscheduleEventWithIdentifier___block_invoke;
  v7[3] = &unk_2785F9AE0;
  v7[4] = self;
  v8 = identifierCopy;
  v6 = identifierCopy;
  dispatch_async(queue, v7);
}

uint64_t __66__RERelevanceSignalUpdateScheduler_unscheduleEventWithIdentifier___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 8) removeObjectForKey:*(a1 + 40)];
  *(*(a1 + 32) + 40) = 0;
  v2 = *(a1 + 32);

  return [v2 _rescheduleTimer];
}

- (void)_rescheduleTimer
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__RERelevanceSignalUpdateScheduler__rescheduleTimer__block_invoke;
  block[3] = &unk_2785F9AB8;
  block[4] = self;
  dispatch_async(queue, block);
}

void __52__RERelevanceSignalUpdateScheduler__rescheduleTimer__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((*(v1 + 40) & 1) == 0)
  {
    [*(v1 + 24) invalidate];
    v3 = *(a1 + 32);
    v4 = *(v3 + 24);
    *(v3 + 24) = 0;

    *(*(a1 + 32) + 40) = 0;
    if ([*(*(a1 + 32) + 8) count])
    {
      v22 = 0;
      v23 = &v22;
      v24 = 0x2020000000;
      v25 = 0;
      v20[0] = 0;
      v20[1] = v20;
      v20[2] = 0x2020000000;
      v21 = 0;
      v5 = *(*(a1 + 32) + 8);
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __52__RERelevanceSignalUpdateScheduler__rescheduleTimer__block_invoke_2;
      v19[3] = &unk_2785FB280;
      v19[4] = v20;
      v19[5] = &v22;
      [v5 enumerateKeysAndObjectsUsingBlock:v19];
      v6 = v23[3];
      v7 = *(*(a1 + 32) + 32);
      if (!v7)
      {
        v8 = [MEMORY[0x277CBEAA8] date];
        v9 = *(a1 + 32);
        v10 = *(v9 + 32);
        *(v9 + 32) = v8;

        v7 = *(*(a1 + 32) + 32);
      }

      v11 = [v7 dateByAddingTimeInterval:v6 / 1000.0];
      objc_initWeak(&location, *(a1 + 32));
      v12 = *(*(a1 + 32) + 16);
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __52__RERelevanceSignalUpdateScheduler__rescheduleTimer__block_invoke_3;
      v16[3] = &unk_2785F9B58;
      objc_copyWeak(&v17, &location);
      v13 = [REUpNextTimer timerWithFireDate:v11 queue:v12 block:v16];
      v14 = *(a1 + 32);
      v15 = *(v14 + 24);
      *(v14 + 24) = v13;

      objc_destroyWeak(&v17);
      objc_destroyWeak(&location);

      _Block_object_dispose(v20, 8);
      _Block_object_dispose(&v22, 8);
    }
  }
}

uint64_t __52__RERelevanceSignalUpdateScheduler__rescheduleTimer__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(*(*(a1 + 32) + 8) + 24) == 1)
  {
    v4 = *(*(*(a1 + 40) + 8) + 24);
    result = [a3 interval];
    v7 = (v6 * 1000.0);
    if (v7)
    {
      do
      {
        v8 = v7;
        v7 = v4 % v7;
        v4 = v8;
      }

      while (v7);
    }

    else
    {
      v8 = v4;
    }

    *(*(*(a1 + 40) + 8) + 24) = v8;
  }

  else
  {
    result = [a3 interval];
    *(*(*(a1 + 40) + 8) + 24) = (v9 * 1000.0);
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  return result;
}

void __52__RERelevanceSignalUpdateScheduler__rescheduleTimer__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _queue_updateBlocks];
}

- (void)_updateBlocks
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__RERelevanceSignalUpdateScheduler__updateBlocks__block_invoke;
  block[3] = &unk_2785F9AB8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_queue_updateBlocks
{
  date = [MEMORY[0x277CBEAA8] date];
  [(NSDate *)date timeIntervalSinceReferenceDate];
  updateBlocks = self->_updateBlocks;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__RERelevanceSignalUpdateScheduler__queue_updateBlocks__block_invoke;
  v7[3] = &__block_descriptor_40_e51_v32__0__NSString_8___RESignalScheduledUpdate_16_B24l;
  v7[4] = v5;
  [(NSMutableDictionary *)updateBlocks enumerateKeysAndObjectsUsingBlock:v7];
  lastFireDate = self->_lastFireDate;
  self->_lastFireDate = date;

  [(RERelevanceSignalUpdateScheduler *)self _rescheduleTimer];
}

void __55__RERelevanceSignalUpdateScheduler__queue_updateBlocks__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = a3;
  [v12 interval];
  v5 = v4;
  v6 = [v12 lastFireDate];
  [v6 timeIntervalSinceReferenceDate];
  v8 = *(a1 + 32);
  if (v8 - v7 > v5)
  {
    do
    {
      v9 = v7;
      v7 = v5 + v7;
    }

    while (v7 < v8);
    v10 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v9];
    [v12 setLastFireDate:v10];

    v11 = [v12 completion];
    v11[2]();
  }
}

@end