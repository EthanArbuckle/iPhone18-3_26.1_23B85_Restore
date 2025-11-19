@interface PLBackgroundJobStatusCenter
- (NSDictionary)statusDumpDictionary;
- (PLBackgroundJobStatusCenter)init;
- (void)_addRegistrationEventToQueue:(id)a3;
- (void)_addRunningEventToQueue:(id)a3;
- (void)_recordNonRegistrationEvent;
- (void)_recordRegistrationEventToState:(unint64_t)a3;
- (void)backgroundJobServiceDidChangeStateFrom:(unint64_t)a3 to:(unint64_t)a4;
- (void)recordFinishingWorker:(id)a3;
- (void)recordStartingWorker:(id)a3 withJobCount:(unint64_t)a4;
- (void)recordStoppingWorker:(id)a3 withRemainingJobCount:(unint64_t)a4;
- (void)recordTaskSubmittedWithCriteria:(id)a3;
- (void)recordWorkerHasPendingJobs:(id)a3;
@end

@implementation PLBackgroundJobStatusCenter

- (void)backgroundJobServiceDidChangeStateFrom:(unint64_t)a3 to:(unint64_t)a4
{
  isolationQueue = self->_isolationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __73__PLBackgroundJobStatusCenter_backgroundJobServiceDidChangeStateFrom_to___block_invoke;
  block[3] = &unk_1E7578320;
  block[4] = self;
  block[5] = a4;
  block[6] = a3;
  dispatch_async(isolationQueue, block);
}

uint64_t __73__PLBackgroundJobStatusCenter_backgroundJobServiceDidChangeStateFrom_to___block_invoke(uint64_t result)
{
  v1 = result;
  if (*(result + 40) == 2)
  {
    [*(*(result + 32) + 24) removeAllObjects];
    result = [*(v1[4] + 32) removeAllObjects];
  }

  if (v1[6] == 2)
  {
    v2 = v1[5];
    if (v2 == 3)
    {
      v4 = v1[4];

      return [v4 _recordNonRegistrationEvent];
    }

    else if (v2 == 4)
    {
      v3 = v1[4];

      return [v3 _recordRegistrationEventToState:4];
    }
  }

  return result;
}

- (NSDictionary)statusDumpDictionary
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__115485;
  v10 = __Block_byref_object_dispose__115486;
  v11 = 0;
  isolationQueue = self->_isolationQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __51__PLBackgroundJobStatusCenter_statusDumpDictionary__block_invoke;
  v5[3] = &unk_1E7578910;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(isolationQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __51__PLBackgroundJobStatusCenter_statusDumpDictionary__block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v3 = [*(*(a1 + 32) + 8) copy];
  v4 = [v3 countByEnumeratingWithState:&v23 objects:v30 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v24;
    do
    {
      v7 = 0;
      do
      {
        if (*v24 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v23 + 1) + 8 * v7) statusDump];
        [v2 addObject:v8];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v23 objects:v30 count:16];
    }

    while (v5);
  }

  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = [*(*(a1 + 32) + 16) copy];
  v11 = [v10 countByEnumeratingWithState:&v19 objects:v29 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v20;
    do
    {
      v14 = 0;
      do
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v19 + 1) + 8 * v14) statusDump];
        [v9 addObject:v15];

        ++v14;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v19 objects:v29 count:16];
    }

    while (v12);
  }

  v27[0] = @"RegistrationEvents";
  v27[1] = @"RunningEvents";
  v28[0] = v2;
  v28[1] = v9;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:2];
  v17 = *(*(a1 + 40) + 8);
  v18 = *(v17 + 40);
  *(v17 + 40) = v16;
}

- (void)recordFinishingWorker:(id)a3
{
  v4 = a3;
  isolationQueue = self->_isolationQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __53__PLBackgroundJobStatusCenter_recordFinishingWorker___block_invoke;
  v7[3] = &unk_1E7578848;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(isolationQueue, v7);
}

void __53__PLBackgroundJobStatusCenter_recordFinishingWorker___block_invoke(uint64_t a1)
{
  v4 = objc_alloc_init(PLBackgroundJobStatusFinishWorkerEvent);
  v2 = [MEMORY[0x1E695DF00] date];
  [(PLBackgroundJobStatusEvent *)v4 setEventTimestamp:v2];

  v3 = [*(a1 + 32) workerName];
  [(PLBackgroundJobStatusFinishWorkerEvent *)v4 setWorker:v3];

  [*(a1 + 40) _addRunningEventToQueue:v4];
}

- (void)recordStoppingWorker:(id)a3 withRemainingJobCount:(unint64_t)a4
{
  v6 = a3;
  isolationQueue = self->_isolationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __74__PLBackgroundJobStatusCenter_recordStoppingWorker_withRemainingJobCount___block_invoke;
  block[3] = &unk_1E75782F8;
  v11 = self;
  v12 = a4;
  v10 = v6;
  v8 = v6;
  dispatch_async(isolationQueue, block);
}

void __74__PLBackgroundJobStatusCenter_recordStoppingWorker_withRemainingJobCount___block_invoke(uint64_t a1)
{
  v4 = objc_alloc_init(PLBackgroundJobStatusStopWorkerEvent);
  v2 = [MEMORY[0x1E695DF00] date];
  [(PLBackgroundJobStatusEvent *)v4 setEventTimestamp:v2];

  v3 = [*(a1 + 32) workerName];
  [(PLBackgroundJobStatusStopWorkerEvent *)v4 setWorker:v3];

  [(PLBackgroundJobStatusStopWorkerEvent *)v4 setPendingJobsCount:*(a1 + 48)];
  [*(a1 + 40) _addRunningEventToQueue:v4];
}

- (void)recordStartingWorker:(id)a3 withJobCount:(unint64_t)a4
{
  v6 = a3;
  isolationQueue = self->_isolationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__PLBackgroundJobStatusCenter_recordStartingWorker_withJobCount___block_invoke;
  block[3] = &unk_1E75782F8;
  v11 = self;
  v12 = a4;
  v10 = v6;
  v8 = v6;
  dispatch_async(isolationQueue, block);
}

void __65__PLBackgroundJobStatusCenter_recordStartingWorker_withJobCount___block_invoke(uint64_t a1)
{
  v4 = objc_alloc_init(PLBackgroundJobStatusStartWorkerEvent);
  v2 = [MEMORY[0x1E695DF00] date];
  [(PLBackgroundJobStatusEvent *)v4 setEventTimestamp:v2];

  v3 = [*(a1 + 32) workerName];
  [(PLBackgroundJobStatusStartWorkerEvent *)v4 setWorker:v3];

  [(PLBackgroundJobStatusStartWorkerEvent *)v4 setJobsCount:*(a1 + 48)];
  [*(a1 + 40) _addRunningEventToQueue:v4];
}

- (void)recordTaskSubmittedWithCriteria:(id)a3
{
  v4 = a3;
  isolationQueue = self->_isolationQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __63__PLBackgroundJobStatusCenter_recordTaskSubmittedWithCriteria___block_invoke;
  v7[3] = &unk_1E7578848;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(isolationQueue, v7);
}

void __63__PLBackgroundJobStatusCenter_recordTaskSubmittedWithCriteria___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 32);
  v2 = [*(a1 + 40) shortCode];
  [v1 addObject:v2];
}

- (void)recordWorkerHasPendingJobs:(id)a3
{
  v4 = a3;
  isolationQueue = self->_isolationQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __58__PLBackgroundJobStatusCenter_recordWorkerHasPendingJobs___block_invoke;
  v7[3] = &unk_1E7578848;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(isolationQueue, v7);
}

void __58__PLBackgroundJobStatusCenter_recordWorkerHasPendingJobs___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 24);
  v2 = [*(a1 + 40) workerName];
  [v1 addObject:v2];
}

- (void)_recordNonRegistrationEvent
{
  dispatch_assert_queue_V2(self->_isolationQueue);
  v4 = objc_alloc_init(PLBackgroundJobStatusSubmissionEvent);
  v3 = [MEMORY[0x1E695DF00] date];
  [(PLBackgroundJobStatusEvent *)v4 setEventTimestamp:v3];

  [(PLBackgroundJobStatusSubmissionEvent *)v4 setSubmittedTask:0];
  [(PLBackgroundJobStatusCenter *)self _addRegistrationEventToQueue:v4];
  [(NSMutableSet *)self->_workersResponsibleForRegistration removeAllObjects];
}

- (void)_recordRegistrationEventToState:(unint64_t)a3
{
  v19 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_isolationQueue);
  v4 = objc_alloc_init(PLBackgroundJobStatusSubmissionEvent);
  v5 = [MEMORY[0x1E695DF00] date];
  [(PLBackgroundJobStatusEvent *)v4 setEventTimestamp:v5];

  [(PLBackgroundJobStatusSubmissionEvent *)v4 setSubmittedTask:1];
  v6 = [(NSMutableSet *)self->_workersResponsibleForRegistration allObjects];
  [(PLBackgroundJobStatusSubmissionEvent *)v4 setWorkersResponsible:v6];

  v7 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = self->_criteriaShortCodesOfSubmittedTasks;
  v9 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [v7 appendFormat:@"%@ ", *(*(&v14 + 1) + 8 * v12++)];
      }

      while (v10 != v12);
      v10 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  v13 = [v7 copy];
  [(PLBackgroundJobStatusSubmissionEvent *)v4 setSubmittedPriorities:v13];

  [(PLBackgroundJobStatusCenter *)self _addRegistrationEventToQueue:v4];
  [(NSMutableSet *)self->_workersResponsibleForRegistration removeAllObjects];
  [(NSMutableSet *)self->_criteriaShortCodesOfSubmittedTasks removeAllObjects];
}

- (void)_addRunningEventToQueue:(id)a3
{
  isolationQueue = self->_isolationQueue;
  v5 = a3;
  dispatch_assert_queue_V2(isolationQueue);
  [(NSMutableArray *)self->_runningEventsQueue addObject:v5];

  if ([(NSMutableArray *)self->_runningEventsQueue count]>= 0x15)
  {
    runningEventsQueue = self->_runningEventsQueue;

    [(NSMutableArray *)runningEventsQueue removeObjectAtIndex:0];
  }
}

- (void)_addRegistrationEventToQueue:(id)a3
{
  isolationQueue = self->_isolationQueue;
  v5 = a3;
  dispatch_assert_queue_V2(isolationQueue);
  [(NSMutableArray *)self->_registrationEventsQueue addObject:v5];

  if ([(NSMutableArray *)self->_registrationEventsQueue count]>= 0x15)
  {
    registrationEventsQueue = self->_registrationEventsQueue;

    [(NSMutableArray *)registrationEventsQueue removeObjectAtIndex:0];
  }
}

- (PLBackgroundJobStatusCenter)init
{
  v16.receiver = self;
  v16.super_class = PLBackgroundJobStatusCenter;
  v2 = [(PLBackgroundJobStatusCenter *)&v16 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    registrationEventsQueue = v2->_registrationEventsQueue;
    v2->_registrationEventsQueue = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    runningEventsQueue = v2->_runningEventsQueue;
    v2->_runningEventsQueue = v5;

    v7 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    workersResponsibleForRegistration = v2->_workersResponsibleForRegistration;
    v2->_workersResponsibleForRegistration = v7;

    v9 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    criteriaShortCodesOfSubmittedTasks = v2->_criteriaShortCodesOfSubmittedTasks;
    v2->_criteriaShortCodesOfSubmittedTasks = v9;

    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_attr_make_with_qos_class(v11, QOS_CLASS_BACKGROUND, 0);

    v13 = dispatch_queue_create("com.apple.photos.backgroundjobstatuscenter.isolationqueue", v12);
    isolationQueue = v2->_isolationQueue;
    v2->_isolationQueue = v13;
  }

  return v2;
}

@end