@interface VSSpeechTaskQueue
+ (id)mainDeviceQueue;
+ (id)parallelQueueWithIdentifier:(id)a3;
+ (void)cancelTasksWithDelegate:(id)a3;
- (VSSpeechTaskQueue)init;
- (_opaque_pthread_mutex_t)threadMutex;
- (_opaque_pthread_mutexattr_t)threadMutexAttr;
- (id)taskWithCreatedTimeStamp:(unint64_t)a3;
- (id)tasksWithDelegate:(id)a3;
- (unint64_t)createdTimestampWithTask:(id)a3;
- (void)addTask:(id)a3;
- (void)cancelTask:(id)a3;
- (void)resumeCurrentTask;
- (void)setThreadMutex:(_opaque_pthread_mutex_t *)a3;
- (void)spinNextTask;
- (void)suspendCurrentTask;
@end

@implementation VSSpeechTaskQueue

- (_opaque_pthread_mutexattr_t)threadMutexAttr
{
  v2 = *self->_threadMutexAttr.__opaque;
  sig = self->_threadMutexAttr.__sig;
  *result.__opaque = v2;
  result.__sig = sig;
  return result;
}

- (void)setThreadMutex:(_opaque_pthread_mutex_t *)a3
{
  v3 = *&a3->__sig;
  v4 = *&a3->__opaque[8];
  v5 = *&a3->__opaque[24];
  *&self->_threadMutex.__opaque[40] = *&a3->__opaque[40];
  *&self->_threadMutex.__opaque[24] = v5;
  *&self->_threadMutex.__opaque[8] = v4;
  *&self->_threadMutex.__sig = v3;
}

- (_opaque_pthread_mutex_t)threadMutex
{
  v3 = *&self[1].__opaque[16];
  *&retstr->__sig = *self[1].__opaque;
  *&retstr->__opaque[8] = v3;
  v4 = *&self[1].__opaque[48];
  *&retstr->__opaque[24] = *&self[1].__opaque[32];
  *&retstr->__opaque[40] = v4;
  return self;
}

- (void)resumeCurrentTask
{
  pthread_mutex_lock(&self->_threadMutex);
  [(VSSpeechTaskProtocol *)self->_currentTask resume];

  pthread_mutex_unlock(&self->_threadMutex);
}

- (void)suspendCurrentTask
{
  pthread_mutex_lock(&self->_threadMutex);
  [(VSSpeechTaskProtocol *)self->_currentTask suspend];

  pthread_mutex_unlock(&self->_threadMutex);
}

- (void)cancelTask:(id)a3
{
  v4 = a3;
  pthread_mutex_lock(&self->_threadMutex);
  [v4 cancel];

  pthread_mutex_unlock(&self->_threadMutex);
}

- (id)tasksWithDelegate:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = a3;
  pthread_mutex_lock(&self->_threadMutex);
  v5 = [MEMORY[0x277CBEB18] array];
  v6 = [(VSSpeechTaskQueue *)self currentTask];
  v7 = [v6 delegate];

  if (v7 == v4)
  {
    v8 = [(VSSpeechTaskQueue *)self currentTask];
    [v5 addObject:v8];
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v9 = [(VSSpeechTaskQueue *)self speakTasks];
  v10 = [v9 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v30;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v30 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v29 + 1) + 8 * i);
        v15 = [v14 delegate];

        if (v15 == v4)
        {
          [v5 addObject:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v11);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v16 = [(VSSpeechTaskQueue *)self eagerTasks];
  v17 = [v16 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v26;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v26 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v25 + 1) + 8 * j);
        v22 = [v21 delegate];

        if (v22 == v4)
        {
          [v5 addObject:v21];
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v18);
  }

  pthread_mutex_unlock(&self->_threadMutex);
  v23 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)taskWithCreatedTimeStamp:(unint64_t)a3
{
  v30 = *MEMORY[0x277D85DE8];
  pthread_mutex_lock(&self->_threadMutex);
  v5 = [(VSSpeechTaskQueue *)self currentTask];
  v6 = [(VSSpeechTaskQueue *)self createdTimestampWithTask:v5];

  if (v6 == a3)
  {
    pthread_mutex_unlock(&self->_threadMutex);
    v7 = [(VSSpeechTaskQueue *)self currentTask];
    goto LABEL_21;
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = [(VSSpeechTaskQueue *)self speakTasks];
  v9 = [v8 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v25;
LABEL_5:
    v12 = 0;
    while (1)
    {
      if (*v25 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v24 + 1) + 8 * v12);
      if ([(VSSpeechTaskQueue *)self createdTimestampWithTask:v13]== a3)
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [v8 countByEnumeratingWithState:&v24 objects:v29 count:16];
        if (v10)
        {
          goto LABEL_5;
        }

        goto LABEL_11;
      }
    }
  }

  else
  {
LABEL_11:

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v8 = [(VSSpeechTaskQueue *)self eagerTasks];
    v14 = [v8 countByEnumeratingWithState:&v20 objects:v28 count:16];
    if (!v14)
    {
LABEL_19:

      pthread_mutex_unlock(&self->_threadMutex);
      v7 = 0;
      goto LABEL_21;
    }

    v15 = v14;
    v16 = *v21;
LABEL_13:
    v17 = 0;
    while (1)
    {
      if (*v21 != v16)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v20 + 1) + 8 * v17);
      if ([(VSSpeechTaskQueue *)self createdTimestampWithTask:v13]== a3)
      {
        break;
      }

      if (v15 == ++v17)
      {
        v15 = [v8 countByEnumeratingWithState:&v20 objects:v28 count:16];
        if (v15)
        {
          goto LABEL_13;
        }

        goto LABEL_19;
      }
    }
  }

  pthread_mutex_unlock(&self->_threadMutex);
  v7 = v13;

LABEL_21:
  v18 = *MEMORY[0x277D85DE8];

  return v7;
}

- (unint64_t)createdTimestampWithTask:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3 && [v3 conformsToProtocol:&unk_2881D6B48] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v5 = [v4 request];
    v6 = [v5 requestCreatedTimestamp];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)spinNextTask
{
  v92 = *MEMORY[0x277D85DE8];
  v3 = VSGetLogDefault();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_2727E4000, v3, OS_LOG_TYPE_DEBUG, "Start spinNextTask", buf, 2u);
  }

  if ([(NSMutableArray *)self->_speakTasks count])
  {
    v4 = [(NSMutableArray *)self->_speakTasks firstObject];
    p_currentTask = &self->_currentTask;
    currentTask = self->_currentTask;
    if (currentTask)
    {
      if (![(VSSpeechTaskProtocol *)currentTask conformsToProtocol:&unk_2881D6B48]|| ![(VSSpeechTaskProtocol *)*p_currentTask isSpeaking])
      {
        v27 = *p_currentTask;
        if (-[VSSpeechTaskProtocol conformsToProtocol:](v27, "conformsToProtocol:", &unk_2881D6BE0) && -[VSSpeechTaskProtocol readyForEagerTask](v27, "readyForEagerTask") && (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && (-[VSSpeechTaskProtocol request](v27, "request"), v28 = objc_claimAutoreleasedReturnValue(), [v4 request], v29 = objc_claimAutoreleasedReturnValue(), v30 = objc_msgSend(v28, "isSimilarTo:", v29), v29, v28, (v30 & 1) != 0))
        {
          [(VSSpeechTaskProtocol *)v27 setSpeakTask:v4];
          [(NSMutableArray *)self->_speakTasks removeObjectAtIndex:0];
          if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
          {
            v31 = [v4 instrumentMetrics];
            v32 = [v31 requestCreatedTimestamp];
            v33 = [(VSSpeechTaskProtocol *)v27 instrumentMetrics];
            v34 = v32 - [v33 requestCreatedTimestamp];
            v35 = [v4 instrumentMetrics];
            [v35 setEagerRequestCreatedTimestampDiffs:v34];

            v36 = [v4 instrumentMetrics];
            v37 = [v36 eagerRequestCreatedTimestampDiffs];
            v38 = [(VSSpeechTaskProtocol *)v27 instrumentMetrics];
            [v38 setEagerRequestCreatedTimestampDiffs:v37];
          }

          v39 = VSGetLogDefault();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
          {
            v40 = [v4 instrumentMetrics];
            v41 = [v40 requestCreatedTimestamp];
            v42 = [(VSSpeechTaskProtocol *)v27 instrumentMetrics];
            v43 = [v42 requestCreatedTimestamp];
            *buf = 134218240;
            v88 = v41;
            v89 = 2048;
            v90 = v43;
            _os_log_impl(&dword_2727E4000, v39, OS_LOG_TYPE_INFO, "Speak task %llu is attached to eager task %llu", buf, 0x16u);
          }

          lastSynthesisRequest = self->_lastSynthesisRequest;
          self->_lastSynthesisRequest = 0;
        }

        else
        {
          v45 = VSGetLogDefault();
          if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
          {
            v46 = [v4 instrumentMetrics];
            v47 = [v46 requestCreatedTimestamp];
            v48 = [(VSSpeechTaskProtocol *)v27 instrumentMetrics];
            v49 = [v48 requestCreatedTimestamp];
            *buf = 134218240;
            v88 = v47;
            v89 = 2048;
            v90 = v49;
            _os_log_impl(&dword_2727E4000, v45, OS_LOG_TYPE_INFO, "%llu interrupt task %llu", buf, 0x16u);
          }

          [(VSSpeechTaskProtocol *)v27 cancel];
        }

        goto LABEL_50;
      }

      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v8 = [v4 request];
      v9 = v8;
      if (isKindOfClass)
      {
        v10 = [v8 enqueue];

        if (v10)
        {
          v11 = VSGetLogDefault();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
          {
            v12 = [v4 instrumentMetrics];
            v13 = [v12 requestCreatedTimestamp];
            v14 = [(VSSpeechTaskProtocol *)*p_currentTask instrumentMetrics];
            v15 = [v14 requestCreatedTimestamp];
            *buf = 134218240;
            v88 = v13;
            v89 = 2048;
            v90 = v15;
            v16 = "PresynthesisTask %llu requested to wait another speaking task %llu";
            v17 = v11;
            v18 = OS_LOG_TYPE_INFO;
LABEL_57:
            _os_log_impl(&dword_2727E4000, v17, v18, v16, buf, 0x16u);

            goto LABEL_58;
          }

          goto LABEL_58;
        }
      }

      else
      {
        v65 = [v8 shouldWaitCurrentSpeaking];

        if ((v65 & 1) == 0)
        {
          v68 = VSGetLogDefault();
          if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
          {
            v69 = [v4 instrumentMetrics];
            v70 = [v69 requestCreatedTimestamp];
            v71 = [(VSSpeechTaskProtocol *)*p_currentTask instrumentMetrics];
            v72 = [v71 requestCreatedTimestamp];
            *buf = 134218240;
            v88 = v70;
            v89 = 2048;
            v90 = v72;
            _os_log_impl(&dword_2727E4000, v68, OS_LOG_TYPE_DEFAULT, "New speak task %llu interrupts speaking task %llu", buf, 0x16u);
          }

          [(VSSpeechTaskProtocol *)*p_currentTask cancel];
          goto LABEL_50;
        }
      }

      v11 = VSGetLogDefault();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [v4 instrumentMetrics];
        v66 = [v12 requestCreatedTimestamp];
        v14 = [(VSSpeechTaskProtocol *)*p_currentTask instrumentMetrics];
        v67 = [v14 requestCreatedTimestamp];
        *buf = 134218240;
        v88 = v66;
        v89 = 2048;
        v90 = v67;
        v16 = "New speak task %llu waits for speaking task %llu";
        v17 = v11;
        v18 = OS_LOG_TYPE_DEFAULT;
        goto LABEL_57;
      }

LABEL_58:

      goto LABEL_50;
    }

    v50 = VSGetLogDefault();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
    {
      v73 = [v4 instrumentMetrics];
      v74 = [v73 requestCreatedTimestamp];
      *buf = 134217984;
      v88 = v74;
      _os_log_debug_impl(&dword_2727E4000, v50, OS_LOG_TYPE_DEBUG, "Dispatch speaking task %llu", buf, 0xCu);
    }

    [(NSMutableArray *)self->_speakTasks removeObjectAtIndex:0];
    objc_storeStrong(&self->_currentTask, v4);
    if (![(VSSpeechTaskProtocol *)self->_currentTask isMemberOfClass:objc_opt_class()])
    {
      goto LABEL_41;
    }

    v51 = *p_currentTask;
    v52 = [MEMORY[0x277D79998] standardInstance];
    if (([v52 disableCache] & 1) == 0)
    {
      v53 = [(VSSpeechTaskProtocol *)v51 request];
      v54 = [v53 isSimilarTo:self->_lastSynthesisRequest];

      if (!v54)
      {
LABEL_40:

LABEL_41:
        v85 = 0u;
        v86 = 0u;
        v83 = 0u;
        v84 = 0u;
        v57 = self->_eagerTasks;
        v58 = [(NSMutableArray *)v57 countByEnumeratingWithState:&v83 objects:v91 count:16];
        if (v58)
        {
          v59 = v58;
          v60 = *v84;
          do
          {
            for (i = 0; i != v59; ++i)
            {
              if (*v84 != v60)
              {
                objc_enumerationMutation(v57);
              }

              [*(*(&v83 + 1) + 8 * i) cancel];
            }

            v59 = [(NSMutableArray *)v57 countByEnumeratingWithState:&v83 objects:v91 count:16];
          }

          while (v59);
        }

        [(NSMutableArray *)self->_eagerTasks removeAllObjects];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __33__VSSpeechTaskQueue_spinNextTask__block_invoke;
        block[3] = &unk_279E4BC28;
        v4 = v4;
        v81 = v4;
        v82 = self;
        v62 = dispatch_block_create(DISPATCH_BLOCK_DETACHED, block);
        dispatch_async(self->_speakingQueue, v62);

        v26 = v81;
LABEL_49:

LABEL_50:
        goto LABEL_51;
      }

      v52 = [(VSSpeechTaskProtocol *)v51 instrumentMetrics];
      v55 = [v52 requestCreatedTimestamp] - self->_lastSynthesisRequestCreatedTimeStamp;
      v56 = [(VSSpeechTaskProtocol *)v51 instrumentMetrics];
      [v56 setEagerRequestCreatedTimestampDiffs:v55];
    }

    goto LABEL_40;
  }

  if ([(NSMutableArray *)self->_eagerTasks count]&& !self->_currentTask)
  {
    v19 = [(NSMutableArray *)self->_eagerTasks firstObject];
    [(NSMutableArray *)self->_eagerTasks removeObjectAtIndex:0];
    v20 = VSGetLogDefault();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      v75 = [v19 instrumentMetrics];
      v76 = [v75 requestCreatedTimestamp];
      *buf = 134217984;
      v88 = v76;
      _os_log_debug_impl(&dword_2727E4000, v20, OS_LOG_TYPE_DEBUG, "Dispatch synthesis task %llu", buf, 0xCu);
    }

    objc_storeStrong(&self->_currentTask, v19);
    if ([v19 conformsToProtocol:&unk_2881D6BE0])
    {
      v21 = v19;
      v22 = [v21 request];
      v23 = self->_lastSynthesisRequest;
      self->_lastSynthesisRequest = v22;

      v24 = [v21 instrumentMetrics];

      self->_lastSynthesisRequestCreatedTimeStamp = [v24 requestCreatedTimestamp];
    }

    speakingQueue = self->_speakingQueue;
    v77[0] = MEMORY[0x277D85DD0];
    v77[1] = 3221225472;
    v77[2] = __33__VSSpeechTaskQueue_spinNextTask__block_invoke_84;
    v77[3] = &unk_279E4BC28;
    v78 = v19;
    v79 = self;
    v4 = v19;
    dispatch_async(speakingQueue, v77);
    v26 = v78;
    goto LABEL_49;
  }

LABEL_51:
  v63 = VSGetLogDefault();
  if (os_log_type_enabled(v63, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_2727E4000, v63, OS_LOG_TYPE_DEBUG, "Finish spinNextTask", buf, 2u);
  }

  v64 = *MEMORY[0x277D85DE8];
}

uint64_t __33__VSSpeechTaskQueue_spinNextTask__block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = VSGetLogDefault();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = [*(a1 + 32) instrumentMetrics];
    v6 = 134217984;
    v7 = [v3 requestCreatedTimestamp];
    _os_log_impl(&dword_2727E4000, v2, OS_LOG_TYPE_INFO, "Starting task %llu", &v6, 0xCu);
  }

  [*(a1 + 32) start];
  pthread_mutex_lock((*(a1 + 40) + 72));
  [*(a1 + 40) setCurrentTask:0];
  [*(a1 + 40) setLastSynthesisRequest:0];
  [*(a1 + 40) spinNextTask];
  result = pthread_mutex_unlock((*(a1 + 40) + 72));
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __33__VSSpeechTaskQueue_spinNextTask__block_invoke_84(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = VSGetLogDefault();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v5 = [*(a1 + 32) instrumentMetrics];
    v6 = 134217984;
    v7 = [v5 requestCreatedTimestamp];
    _os_log_debug_impl(&dword_2727E4000, v2, OS_LOG_TYPE_DEBUG, "Starting task %llu", &v6, 0xCu);
  }

  [*(a1 + 32) start];
  pthread_mutex_lock((*(a1 + 40) + 72));
  [*(a1 + 40) setCurrentTask:0];
  [*(a1 + 40) spinNextTask];
  result = pthread_mutex_unlock((*(a1 + 40) + 72));
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)addTask:(id)a3
{
  v5 = a3;
  pthread_mutex_lock(&self->_threadMutex);
  if ([v5 conformsToProtocol:&unk_2881D6B48] && (objc_msgSend(v5, "isSpeaking") & 1) != 0)
  {
    v4 = 16;
  }

  else
  {
    v4 = 8;
  }

  [*(&self->super.isa + v4) addObject:v5];
  [(VSSpeechTaskQueue *)self spinNextTask];
  pthread_mutex_unlock(&self->_threadMutex);
}

- (VSSpeechTaskQueue)init
{
  v18 = *MEMORY[0x277D85DE8];
  v16.receiver = self;
  v16.super_class = VSSpeechTaskQueue;
  v2 = [(VSSpeechTaskQueue *)&v16 init];
  if (v2)
  {
    if ([MEMORY[0x277D799C0] isHomePod])
    {
      memset(&v17, 0, sizeof(v17));
      pthread_attr_init(&v17);
      v15 = 0;
      pthread_attr_getschedparam(&v17, &v15);
      v15.sched_priority = 46;
      pthread_attr_setschedpolicy(&v17, 2);
      pthread_attr_setschedparam(&v17, &v15);
      pthread_attr_setinheritsched(&v17, 2);
      v3 = dispatch_pthread_root_queue_create();
      v4 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
      v5 = dispatch_queue_create_with_target_V2("com.apple.voiced.speakingQueue", v4, v3);
      speakingQueue = v2->_speakingQueue;
      v2->_speakingQueue = v5;
    }

    else
    {
      v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
      v7 = dispatch_queue_create("com.apple.voiced.speakingQueue", v3);
      v8 = v2->_speakingQueue;
      v2->_speakingQueue = v7;
    }

    v9 = [MEMORY[0x277CBEB18] array];
    speakTasks = v2->_speakTasks;
    v2->_speakTasks = v9;

    v11 = [MEMORY[0x277CBEB18] array];
    eagerTasks = v2->_eagerTasks;
    v2->_eagerTasks = v11;

    pthread_mutexattr_init(&v2->_threadMutexAttr);
    pthread_mutexattr_settype(&v2->_threadMutexAttr, 2);
    pthread_mutex_init(&v2->_threadMutex, &v2->_threadMutexAttr);
  }

  v13 = *MEMORY[0x277D85DE8];
  return v2;
}

+ (void)cancelTasksWithDelegate:(id)a3
{
  v43 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [a1 mainDeviceQueue];
  v6 = [v5 tasksWithDelegate:v4];

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v36 objects:v42 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v37;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v37 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v36 + 1) + 8 * i);
        v13 = [a1 mainDeviceQueue];
        [v13 cancelTask:v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v36 objects:v42 count:16];
    }

    while (v9);
  }

  if (VSSpeechTaskQueue_queueLock)
  {
    v27 = v7;
    [VSSpeechTaskQueue_queueLock lock];
    v14 = [VSSpeechTaskQueue_queueMap allValues];
    [VSSpeechTaskQueue_queueLock unlock];
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v15 = v14;
    v16 = [v15 countByEnumeratingWithState:&v32 objects:v41 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v33;
      do
      {
        for (j = 0; j != v17; ++j)
        {
          if (*v33 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v32 + 1) + 8 * j);
          v21 = [v20 tasksWithDelegate:v4];
          v28 = 0u;
          v29 = 0u;
          v30 = 0u;
          v31 = 0u;
          v22 = [v21 countByEnumeratingWithState:&v28 objects:v40 count:16];
          if (v22)
          {
            v23 = v22;
            v24 = *v29;
            do
            {
              for (k = 0; k != v23; ++k)
              {
                if (*v29 != v24)
                {
                  objc_enumerationMutation(v21);
                }

                [v20 cancelTask:*(*(&v28 + 1) + 8 * k)];
              }

              v23 = [v21 countByEnumeratingWithState:&v28 objects:v40 count:16];
            }

            while (v23);
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v32 objects:v41 count:16];
      }

      while (v17);
    }

    v7 = v27;
  }

  v26 = *MEMORY[0x277D85DE8];
}

+ (id)parallelQueueWithIdentifier:(id)a3
{
  v3 = a3;
  if (parallelQueueWithIdentifier__onceToken != -1)
  {
    dispatch_once(&parallelQueueWithIdentifier__onceToken, &__block_literal_global_2);
  }

  [VSSpeechTaskQueue_queueLock lock];
  v4 = [VSSpeechTaskQueue_queueMap objectForKeyedSubscript:v3];
  if (!v4)
  {
    v4 = objc_alloc_init(VSSpeechTaskQueue);
    [VSSpeechTaskQueue_queueMap setObject:v4 forKeyedSubscript:v3];
  }

  [VSSpeechTaskQueue_queueLock unlock];

  return v4;
}

uint64_t __49__VSSpeechTaskQueue_parallelQueueWithIdentifier___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v1 = VSSpeechTaskQueue_queueMap;
  VSSpeechTaskQueue_queueMap = v0;

  VSSpeechTaskQueue_queueLock = objc_alloc_init(MEMORY[0x277CCAAF8]);

  return MEMORY[0x2821F96F8]();
}

+ (id)mainDeviceQueue
{
  if (mainDeviceQueue_onceToken != -1)
  {
    dispatch_once(&mainDeviceQueue_onceToken, &__block_literal_global_3738);
  }

  v3 = mainDeviceQueue___sharedQueue;

  return v3;
}

uint64_t __36__VSSpeechTaskQueue_mainDeviceQueue__block_invoke()
{
  mainDeviceQueue___sharedQueue = objc_alloc_init(VSSpeechTaskQueue);

  return MEMORY[0x2821F96F8]();
}

@end