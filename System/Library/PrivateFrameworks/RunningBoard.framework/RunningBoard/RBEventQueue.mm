@interface RBEventQueue
- (RBEventQueue)initWithQueue:(id)queue timeProvider:(id)provider;
- (RBEventQueueEvent)nextEvent;
- (id)description;
- (unint64_t)count;
- (void)_queue_processEvents;
- (void)_queue_startEventTimer;
- (void)addEvent:(id)event;
- (void)addEvents:(id)events;
- (void)batchModify:(id)modify;
- (void)removeEvent:(id)event;
- (void)removeEvents:(id)events;
@end

@implementation RBEventQueue

- (void)_queue_startEventTimer
{
  v53 = *MEMORY[0x277D85DE8];
  if (self)
  {
    firstObject = [*(self + 8) firstObject];
    if (firstObject)
    {
      [*(self + 24) currentTime];
      v5 = v4;
      if (*(self + 40))
      {
        if (v4 - *(self + 32) <= 5.0)
        {
          goto LABEL_8;
        }

        v1 = rbs_general_log();
        if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
        {
          v39 = *(self + 32);
          *buf = 134218240;
          v50 = v39;
          v51 = 2048;
          v52 = v5;
          _os_log_error_impl(&dword_262485000, v1, OS_LOG_TYPE_ERROR, "Event queue more than 5 seconds late, expected to fire at %f and it's now %f", buf, 0x16u);
        }

        v6 = *(self + 16);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __38__RBEventQueue__queue_startEventTimer__block_invoke;
        block[3] = &unk_279B32CB0;
        block[4] = self;
        dispatch_async(v6, block);
        if (*(self + 40))
        {
LABEL_8:
          [firstObject eventTime];
          if (v7 + 0.01 >= *(self + 32))
          {
            v21 = rbs_general_log();
            if (OUTLINED_FUNCTION_2_3(v21))
            {
              [firstObject eventTime];
              v40 = *(self + 32);
              *buf = 134218240;
              v50 = v41;
              v51 = 2048;
              v52 = v40;
              OUTLINED_FUNCTION_0_4();
              _os_log_debug_impl(v42, v43, v44, v45, v46, 0x16u);
            }

            goto LABEL_21;
          }

          v8 = *(self + 40);
          if (v8)
          {
            [v8 cancel];
            v9 = *(self + 40);
            *(self + 40) = 0;
          }
        }
      }

      [firstObject eventTime];
      v11 = v10;
      *(self + 32) = v10;
      v12 = rbs_general_log();
      if (OUTLINED_FUNCTION_2_3(v12))
      {
        v23 = *(self + 32);
        *buf = 134217984;
        v50 = v23;
        OUTLINED_FUNCTION_0_4();
        _os_log_debug_impl(v24, v25, v26, v27, v28, 0xCu);
      }

      v13 = v11 - v5;

      v14 = rbs_general_log();
      if (OUTLINED_FUNCTION_2_3(v14))
      {
        *buf = 134217984;
        v50 = v5;
        OUTLINED_FUNCTION_0_4();
        _os_log_debug_impl(v29, v30, v31, v32, v33, 0xCu);
      }

      v15 = fmax(v13, 0.0);

      v16 = rbs_general_log();
      if (OUTLINED_FUNCTION_2_3(v16))
      {
        *buf = 134217984;
        v50 = v15;
        OUTLINED_FUNCTION_0_4();
        _os_log_debug_impl(v34, v35, v36, v37, v38, 0xCu);
      }

      v18 = *(self + 16);
      v17 = *(self + 24);
      v47[0] = MEMORY[0x277D85DD0];
      v47[1] = 3221225472;
      v47[2] = __38__RBEventQueue__queue_startEventTimer__block_invoke_8;
      v47[3] = &unk_279B32CB0;
      v47[4] = self;
      v19 = [v17 executeWithCancellingAfter:v18 onQueue:v47 block:v15];
      v20 = *(self + 40);
      *(self + 40) = v19;
    }

LABEL_21:
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __38__RBEventQueue__queue_startEventTimer__block_invoke_8(uint64_t a1)
{
  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = __38__RBEventQueue__queue_startEventTimer__block_invoke_2_9;
  activity_block[3] = &unk_279B32CB0;
  activity_block[4] = *(a1 + 32);
  _os_activity_initiate(&dword_262485000, "timer", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

- (void)_queue_processEvents
{
  if (self)
  {
    dispatch_assert_queue_V2(*(self + 16));
    v2 = *(self + 40);
    if (v2)
    {
      [v2 cancel];
      v3 = *(self + 40);
      *(self + 40) = 0;
    }

    v4 = *(self + 48);
    v5 = rbs_general_log();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);
    if (v4 == 1)
    {
      if (v6)
      {
        *buf = 0;
        _os_log_debug_impl(&dword_262485000, v5, OS_LOG_TYPE_DEBUG, "Skipping _queue_processEvents - already in progress", buf, 2u);
      }
    }

    else
    {
      if (v6)
      {
        *v16 = 0;
        _os_log_debug_impl(&dword_262485000, v5, OS_LOG_TYPE_DEBUG, "Processing events", v16, 2u);
      }

      *(self + 48) = 1;
      firstObject = [*(self + 8) firstObject];
      if (firstObject)
      {
        v8 = firstObject;
        do
        {
          [v8 eventTime];
          v10 = v9;
          [*(self + 24) currentTime];
          if (v10 > v11)
          {
            break;
          }

          action = [v8 action];

          if (action)
          {
            action2 = [v8 action];
            (action2)[2](action2, v8);
          }

          if ([*(self + 8) count])
          {
            firstObject2 = [*(self + 8) firstObject];

            if (firstObject2 == v8)
            {
              [*(self + 8) removeObjectAtIndex:0];
            }
          }

          firstObject3 = [*(self + 8) firstObject];

          v8 = firstObject3;
        }

        while (firstObject3);
      }

      *(self + 48) = 0;
      [(RBEventQueue *)self _queue_startEventTimer];
    }
  }
}

- (RBEventQueue)initWithQueue:(id)queue timeProvider:(id)provider
{
  queueCopy = queue;
  providerCopy = provider;
  v14.receiver = self;
  v14.super_class = RBEventQueue;
  v9 = [(RBEventQueue *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_queue, queue);
    array = [MEMORY[0x277CBEB18] array];
    eventQueue = v10->_eventQueue;
    v10->_eventQueue = array;

    objc_storeStrong(&v10->_timeProvider, provider);
  }

  return v10;
}

- (unint64_t)count
{
  dispatch_assert_queue_V2(self->_queue);
  eventQueue = self->_eventQueue;

  return [(NSMutableArray *)eventQueue count];
}

- (RBEventQueueEvent)nextEvent
{
  dispatch_assert_queue_V2(self->_queue);
  eventQueue = self->_eventQueue;

  return [(NSMutableArray *)eventQueue firstObject];
}

- (void)batchModify:(id)modify
{
  queue = self->_queue;
  modifyCopy = modify;
  dispatch_assert_queue_V2(queue);
  if (self->_inModifyBlock)
  {
    modifyCopy[2]();
  }

  else
  {
    self->_inModifyBlock = 1;
    modifyCopy[2]();

    dirtyDuringModify = self->_dirtyDuringModify;
    *&self->_inModifyBlock = 0;
    if (dirtyDuringModify)
    {
      [(NSMutableArray *)self->_eventQueue sortUsingComparator:&__block_literal_global_4];
    }

    [(RBEventQueue *)self _queue_startEventTimer];
  }
}

- (void)addEvent:(id)event
{
  v9 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v4 = MEMORY[0x277CBEA60];
  eventCopy2 = event;
  v6 = [v4 arrayWithObjects:&eventCopy count:1];

  [(RBEventQueue *)self addEvents:v6, eventCopy, v9];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)addEvents:(id)events
{
  eventsCopy = events;
  if ([eventsCopy count])
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __26__RBEventQueue_addEvents___block_invoke;
    v5[3] = &unk_279B32B80;
    v5[4] = self;
    v6 = eventsCopy;
    [(RBEventQueue *)self batchModify:v5];
  }
}

uint64_t __26__RBEventQueue_addEvents___block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 8) addObjectsFromArray:*(a1 + 40)];
  *(*(a1 + 32) + 50) = 1;
  return result;
}

- (void)removeEvent:(id)event
{
  v9 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v4 = MEMORY[0x277CBEA60];
  eventCopy2 = event;
  v6 = [v4 arrayWithObjects:&eventCopy count:1];

  [(RBEventQueue *)self removeEvents:v6, eventCopy, v9];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)removeEvents:(id)events
{
  eventsCopy = events;
  if ([eventsCopy count])
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __29__RBEventQueue_removeEvents___block_invoke;
    v5[3] = &unk_279B32B80;
    v5[4] = self;
    v6 = eventsCopy;
    [(RBEventQueue *)self batchModify:v5];
  }
}

uint64_t __29__RBEventQueue_removeEvents___block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 8) removeObjectsInArray:*(a1 + 40)];
  *(*(a1 + 32) + 50) = 1;
  return result;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = [objc_opt_class() description];
  v5 = [(NSMutableArray *)self->_eventQueue count];
  v6 = [(NSMutableArray *)self->_eventQueue componentsJoinedByString:@", \n\t"];
  v7 = [v3 initWithFormat:@"<%@| eventCount:%lu events:[\n\t%@\n\t]>", v4, v5, v6];

  return v7;
}

void __38__RBEventQueue__queue_startEventTimer__block_invoke(uint64_t a1)
{
  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = __38__RBEventQueue__queue_startEventTimer__block_invoke_2;
  activity_block[3] = &unk_279B32CB0;
  activity_block[4] = *(a1 + 32);
  _os_activity_initiate(&dword_262485000, "timer", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

@end