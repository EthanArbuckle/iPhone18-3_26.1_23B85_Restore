@interface BRCDeadlineScheduler
- (BOOL)_setupTimerRequiredForDeadline:(int64_t)deadline now:(int64_t)now;
- (BRCDeadlineScheduler)initWithName:(id)name fairScheduler:(id)scheduler;
- (void)_close;
- (void)_schedule;
- (void)addSource:(id)source deadline:(int64_t)deadline;
- (void)cancel;
- (void)close;
- (void)dealloc;
- (void)resume;
- (void)runDeadlineSource:(id)source completionHandler:(id)handler;
- (void)suspend;
@end

@implementation BRCDeadlineScheduler

- (void)_schedule
{
  dispatch_assert_queue_V2(self->_workloop);
  v3 = brc_current_date_nsec();
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = 0;
  while (1)
  {
    firstObject = [(BRCMinHeap *)selfCopy->_minHeap firstObject];

    if (!firstObject || [(BRCDeadlineScheduler *)selfCopy _setupTimerRequiredForDeadline:firstObject[1] now:v3])
    {
      break;
    }

    [(BRCMinHeap *)selfCopy->_minHeap removeFirstObject];
    selfCopy->_lastSchedule = v3;
    v5 = firstObject;
    if ([firstObject willRunEvenHandler])
    {
      v7 = [(BRCMinHeap *)selfCopy->_minHeap count]!= 0;
      v8 = firstObject;
      goto LABEL_7;
    }
  }

  v7 = 0;
  v8 = 0;
LABEL_7:

  objc_sync_exit(selfCopy);
  if (v8)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __33__BRCDeadlineScheduler__schedule__block_invoke;
    v9[3] = &unk_278500EE0;
    v10 = v7;
    v9[4] = selfCopy;
    [(BRCDeadlineScheduler *)selfCopy runDeadlineSource:v8 completionHandler:v9];
  }
}

uint64_t __33__BRCDeadlineScheduler__schedule__block_invoke(uint64_t result)
{
  if (*(result + 40) == 1)
  {
    return [*(*(result + 32) + 32) signal];
  }

  return result;
}

- (BRCDeadlineScheduler)initWithName:(id)name fairScheduler:(id)scheduler
{
  nameCopy = name;
  schedulerCopy = scheduler;
  v20.receiver = self;
  v20.super_class = BRCDeadlineScheduler;
  v9 = [(BRCDeadlineScheduler *)&v20 init];
  if (v9)
  {
    v10 = [[BRCMinHeap alloc] initWithComparator:&__block_literal_global_66];
    minHeap = v9->_minHeap;
    v9->_minHeap = v10;

    objc_storeStrong(&v9->_name, name);
    objc_storeStrong(&v9->_fairScheduler, scheduler);
    workloop = [(BRCFairScheduler *)v9->_fairScheduler workloop];
    workloop = v9->_workloop;
    v9->_workloop = workloop;

    objc_initWeak(&location, v9);
    v14 = [[BRCFairSource alloc] initWithName:@"deadline-sheduler" scheduler:schedulerCopy];
    source = v9->_source;
    v9->_source = v14;

    [(BRCFairSource *)v9->_source setWorkloop:v9->_workloop];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __51__BRCDeadlineScheduler_initWithName_fairScheduler___block_invoke_2;
    v17[3] = &unk_2784FF400;
    objc_copyWeak(&v18, &location);
    [(BRCFairSource *)v9->_source setEventHandler:v17];
    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }

  return v9;
}

uint64_t __51__BRCDeadlineScheduler_initWithName_fairScheduler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 8);
  v4 = *(a3 + 8);
  v5 = v3 < v4;
  v6 = v3 > v4;
  if (v5)
  {
    return -1;
  }

  else
  {
    return v6;
  }
}

void __51__BRCDeadlineScheduler_initWithName_fairScheduler___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _schedule];
}

- (BOOL)_setupTimerRequiredForDeadline:(int64_t)deadline now:(int64_t)now
{
  if (self->_leeway + self->_lastSchedule <= deadline)
  {
    deadlineCopy = deadline;
  }

  else
  {
    deadlineCopy = self->_leeway + self->_lastSchedule;
  }

  if (brc_is_before_deadline())
  {
    computeNextAdmissibleDateForScheduling = self->_computeNextAdmissibleDateForScheduling;
    if (computeNextAdmissibleDateForScheduling)
    {
      deadlineCopy = computeNextAdmissibleDateForScheduling[2](computeNextAdmissibleDateForScheduling, now);
    }
  }

  v8 = brc_is_before_deadline();
  if ((v8 & 1) == 0)
  {
    v9 = deadlineCopy - now;
    v10 = dispatch_time(0, v9);
    delay = self->_delay;
    if (delay)
    {
      leeway = self->_leeway;
      if ((leeway + 1) >= 3)
      {
        v13 = leeway / 2;
      }

      else
      {
        v13 = v9 / 10;
      }

      dispatch_source_set_timer(delay, v10, 0xFFFFFFFFFFFFFFFFLL, v13);
    }

    else
    {
      v14 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, self->_workloop);
      v15 = self->_delay;
      self->_delay = v14;

      v16 = self->_leeway;
      if ((v16 + 1) >= 3)
      {
        v17 = v16 / 2;
      }

      else
      {
        v17 = v9 / 10;
      }

      dispatch_source_set_timer(self->_delay, v10, 0xFFFFFFFFFFFFFFFFLL, v17);
      v18 = self->_delay;
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __59__BRCDeadlineScheduler__setupTimerRequiredForDeadline_now___block_invoke;
      v25[3] = &unk_2784FF450;
      v25[4] = self;
      v19 = v18;
      v20 = v25;
      v21 = v20;
      v22 = v20;
      if (*MEMORY[0x277CFB010])
      {
        v22 = (*MEMORY[0x277CFB010])(v20);
      }

      v23 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_UTILITY, 0, v22);
      dispatch_source_set_event_handler(v19, v23);

      dispatch_resume(self->_delay);
    }
  }

  return v8 ^ 1;
}

- (void)runDeadlineSource:(id)source completionHandler:(id)handler
{
  sourceCopy = source;
  handlerCopy = handler;
  dispatch_assert_queue_V2(self->_workloop);
  workloop = [sourceCopy workloop];
  workloop = self->_workloop;

  if (workloop == workloop)
  {
    [sourceCopy runEventHandler];
    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy);
    }
  }

  else
  {
    v10 = self->_source;
    [(BRCFairSource *)v10 suspend];
    workloop2 = [sourceCopy workloop];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __60__BRCDeadlineScheduler_runDeadlineSource_completionHandler___block_invoke;
    block[3] = &unk_2784FF5B8;
    v14 = sourceCopy;
    v15 = v10;
    v16 = handlerCopy;
    v12 = v10;
    dispatch_async(workloop2, block);
  }
}

uint64_t __60__BRCDeadlineScheduler_runDeadlineSource_completionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) runEventHandler];
  [*(a1 + 40) resume];
  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)addSource:(id)source deadline:(int64_t)deadline
{
  sourceCopy = source;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  minHeap = selfCopy->_minHeap;
  if (deadline == 0x7FFFFFFFFFFFFFFFLL)
  {
    [(BRCMinHeap *)minHeap removeObject:sourceCopy];
  }

  else
  {
    v8 = [(BRCMinHeap *)minHeap containsObject:sourceCopy];
    v9 = selfCopy->_minHeap;
    if (v8)
    {
      [(BRCMinHeap *)v9 objectWeightChanged:sourceCopy];
    }

    else
    {
      [(BRCMinHeap *)v9 addObject:sourceCopy];
    }

    firstObject = [(BRCMinHeap *)selfCopy->_minHeap firstObject];

    if (firstObject == sourceCopy && ![(BRCDeadlineScheduler *)selfCopy _setupTimerRequiredForDeadline:deadline now:brc_current_date_nsec()])
    {
      [(BRCDeadlineScheduler *)selfCopy signal];
    }
  }

  objc_sync_exit(selfCopy);
}

- (void)suspend
{
  obj = self;
  objc_sync_enter(obj);
  [(BRCFairSource *)obj->_source suspend];
  obj->_isResumed = 0;
  objc_sync_exit(obj);
}

- (void)resume
{
  obj = self;
  objc_sync_enter(obj);
  [(BRCFairSource *)obj->_source resume];
  obj->_isResumed = 1;
  objc_sync_exit(obj);
}

- (void)cancel
{
  self->_isCancelled = 1;
  source = self->_source;
  if (source)
  {
    [(BRCFairSource *)source cancel];
    v4 = self->_source;
    self->_source = 0;
  }

  delay = self->_delay;
  if (delay)
  {
    dispatch_source_cancel(delay);
    v6 = self->_delay;
    self->_delay = 0;
  }
}

- (void)_close
{
  delay = self->_delay;
  if (delay)
  {
    dispatch_source_cancel(delay);
    v4 = self->_delay;
    self->_delay = 0;
  }

  source = self->_source;
  if (source)
  {
    [(BRCFairSource *)source cancel];
    selfCopy = self;
    objc_sync_enter(selfCopy);
    if (!selfCopy->_isResumed)
    {
      [(BRCFairSource *)self->_source resume];
    }

    v7 = self->_source;
    self->_source = 0;

    objc_sync_exit(selfCopy);
  }

  minHeap = self->_minHeap;
  self->_minHeap = 0;
}

- (void)close
{
  workloop = self->_workloop;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29__BRCDeadlineScheduler_close__block_invoke;
  block[3] = &unk_2784FF450;
  block[4] = self;
  dispatch_async_and_wait(workloop, block);
  fairScheduler = self->_fairScheduler;
  self->_fairScheduler = 0;
}

- (void)dealloc
{
  if (self->_delay)
  {
    v3 = brc_bread_crumbs();
    v4 = brc_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      [(BRCDeadlineScheduler *)self dealloc];
    }

    [(BRCDeadlineScheduler *)self _close];
  }

  v5.receiver = self;
  v5.super_class = BRCDeadlineScheduler;
  [(BRCDeadlineScheduler *)&v5 dealloc];
}

@end