@interface TrainingTaskDatabase
+ (TrainingTaskDatabase)sharedInstance;
- (TrainingTaskDatabase)init;
- (id)getAllTasks;
- (id)getNextSubmittedTask;
- (id)getSubmittedTasks;
- (id)getTaskById:(id)a3;
- (id)isTaskInSubmittedQueue:(id)a3;
- (int64_t)getSubmittedTaskQueueSize;
- (void)addFailedTaskToFinishQueue:(id)a3 errorCode:(unint64_t)a4 description:(id)a5;
- (void)addTaskToFinishedQueueWithStatus:(id)a3 status:(int64_t)a4;
- (void)addTaskToSubmittedQueue:(id)a3;
- (void)cleanUpQueue;
- (void)submitTaskToSubmittedQueue:(id)a3;
- (void)updateTaskToSubmittedQueue:(id)a3;
- (void)updateTaskWithStatusToSubmittedQueue:(id)a3 taskStatus:(int64_t)a4;
- (void)updateTaskWithTrainingStatusToSubmittedQueue:(id)a3 trainingStatus:(int64_t)a4 currentProgressValue:(int64_t)a5 totalProgressValue:(int64_t)a6 normalizedProgressValue:(float)a7;
@end

@implementation TrainingTaskDatabase

+ (TrainingTaskDatabase)sharedInstance
{
  if (qword_100029CD8 != -1)
  {
    dispatch_once(&qword_100029CD8, &stru_100025518);
  }

  v3 = qword_100029CD0;

  return v3;
}

- (TrainingTaskDatabase)init
{
  v17.receiver = self;
  v17.super_class = TrainingTaskDatabase;
  v2 = [(TrainingTaskDatabase *)&v17 init];
  if (v2)
  {
    v3 = objc_alloc_init(TrainingTaskProtectedDefaults);
    defaults = v2->_defaults;
    v2->_defaults = v3;

    v5 = sub_100015244(&v2->_defaults->super.isa, @"submitted_task_queue");
    v6 = [[NSMutableArray alloc] initWithArray:v5];
    submittedTaskQueue = v2->_submittedTaskQueue;
    v2->_submittedTaskQueue = v6;

    v8 = sub_100015244(&v2->_defaults->super.isa, @"finished_task_queue");
    v9 = [[NSMutableArray alloc] initWithArray:v8];
    finishedTaskQueue = v2->_finishedTaskQueue;
    v2->_finishedTaskQueue = v9;

    v11 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v12 = dispatch_queue_create("TrainingTaskDatabaseQueue", v11);
    syncQueue = v2->_syncQueue;
    v2->_syncQueue = v12;

    v14 = objc_alloc_init(NSRecursiveLock);
    lock = v2->_lock;
    v2->_lock = v14;
  }

  return v2;
}

- (int64_t)getSubmittedTaskQueueSize
{
  [(NSRecursiveLock *)self->_lock lock];
  v3 = [(NSMutableArray *)self->_submittedTaskQueue count];
  [(NSRecursiveLock *)self->_lock unlock];
  return v3;
}

- (void)submitTaskToSubmittedQueue:(id)a3
{
  lock = self->_lock;
  v5 = a3;
  [(NSRecursiveLock *)lock lock];
  [v5 setTaskStatus:1];
  +[SiriTTSTrainingAgentUtils postTaskStatusNotification:](SiriTTSTrainingAgentUtils, "postTaskStatusNotification:", [v5 taskStatus]);
  [(TrainingTaskDatabase *)self addTaskToSubmittedQueue:v5];

  v6 = self->_lock;

  [(NSRecursiveLock *)v6 unlock];
}

- (void)addTaskToSubmittedQueue:(id)a3
{
  v4 = a3;
  [(NSRecursiveLock *)self->_lock lock];
  v5 = SiriTTSTrainerGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v9 = [v4 taskId];
    v10 = [v4 trainingAssetPath];
    v11 = [v4 dataAssetPath];
    v12 = [v4 inferenceAssetPath];
    v13 = [v4 agentTrainingAssetPath];
    v14 = [v4 agentInferenceAssetPath];
    *buf = 138413570;
    v17 = v9;
    v18 = 2112;
    v19 = v10;
    v20 = 2112;
    v21 = v11;
    v22 = 2112;
    v23 = v12;
    v24 = 2112;
    v25 = v13;
    v26 = 2112;
    v27 = v14;
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "addTaskToSubmittedQueue: taskId=%@ trainingAssetPath=%@ dataAssetPath=%@ inferenceAssetPath=%@ agentTrainingAssetPath=%@ agentInferenceAssetPath=%@", buf, 0x3Eu);
  }

  v15 = 0;
  v6 = [NSKeyedArchiver archivedDataWithRootObject:v4 requiringSecureCoding:1 error:&v15];
  v7 = v15;
  if (v7)
  {
    v8 = SiriTTSTrainerGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v17 = v7;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "addTaskToSubmittedQueue: error=%@", buf, 0xCu);
    }
  }

  else
  {
    [(NSMutableArray *)self->_submittedTaskQueue addObject:v6];
    sub_1000150E4(self->_defaults, self->_submittedTaskQueue, @"submitted_task_queue");
  }

  [(NSRecursiveLock *)self->_lock unlock];
}

- (void)updateTaskToSubmittedQueue:(id)a3
{
  v4 = a3;
  [(NSRecursiveLock *)self->_lock lock];
  v5 = SiriTTSTrainerGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v9 = [v4 taskId];
    v10 = [v4 trainingAssetPath];
    v11 = [v4 dataAssetPath];
    v12 = [v4 inferenceAssetPath];
    v13 = [v4 taskStatus];
    v14 = [v4 agentTrainingAssetPath];
    v15 = [v4 agentInferenceAssetPath];
    v16 = 138413826;
    v17 = v9;
    v18 = 2112;
    v19 = v10;
    v20 = 2112;
    v21 = v11;
    v22 = 2112;
    v23 = v12;
    v24 = 2048;
    v25 = v13;
    v26 = 2112;
    v27 = v14;
    v28 = 2112;
    v29 = v15;
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "updateTaskToSubmittedQueue: taskId=%@ trainingAssetPath=%@ dataAssetPath=%@ inferenceAssetPath=%@ taskStatus=%ld agentTrainingAssetPath=%@ agentInferenceAssetPath=%@", &v16, 0x48u);
  }

  v6 = sub_100015634(self, self->_submittedTaskQueue, v4);
  if (v6 < 0)
  {
    v7 = SiriTTSTrainerGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v4 taskId];
      v16 = 138412290;
      v17 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "updateTaskToSubmittedQueue: taskId=%@ not found", &v16, 0xCu);
    }
  }

  else
  {
    [(NSMutableArray *)self->_submittedTaskQueue removeObjectAtIndex:v6];
    [(TrainingTaskDatabase *)self addTaskToSubmittedQueue:v4];
  }

  [(NSRecursiveLock *)self->_lock unlock];
}

- (void)updateTaskWithStatusToSubmittedQueue:(id)a3 taskStatus:(int64_t)a4
{
  lock = self->_lock;
  v7 = a3;
  [(NSRecursiveLock *)lock lock];
  [v7 setTaskStatus:a4];
  +[SiriTTSTrainingAgentUtils postTaskStatusNotification:](SiriTTSTrainingAgentUtils, "postTaskStatusNotification:", [v7 taskStatus]);
  [(TrainingTaskDatabase *)self updateTaskToSubmittedQueue:v7];

  v8 = self->_lock;

  [(NSRecursiveLock *)v8 unlock];
}

- (void)updateTaskWithTrainingStatusToSubmittedQueue:(id)a3 trainingStatus:(int64_t)a4 currentProgressValue:(int64_t)a5 totalProgressValue:(int64_t)a6 normalizedProgressValue:(float)a7
{
  lock = self->_lock;
  v13 = a3;
  [(NSRecursiveLock *)lock lock];
  [v13 setTrainingStatus:a4];
  [v13 setCurrentTaskStatusProgressValue:a5];
  [v13 setTotalTaskStatusProgressValue:a6];
  *&v14 = a7;
  [v13 setNormalizedProgressValue:v14];
  [(TrainingTaskDatabase *)self updateTaskToSubmittedQueue:v13];

  v15 = self->_lock;

  [(NSRecursiveLock *)v15 unlock];
}

- (id)getNextSubmittedTask
{
  [(NSRecursiveLock *)self->_lock lock];
  v3 = SiriTTSTrainerGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(NSMutableArray *)self->_submittedTaskQueue count];
    *buf = 134217984;
    v21 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "getNextSubmittedTask: current task size=%ld", buf, 0xCu);
  }

  if ([(NSMutableArray *)self->_submittedTaskQueue count])
  {
    v5 = [(NSMutableArray *)self->_submittedTaskQueue firstObject];
    v19 = 0;
    v6 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v5 error:&v19];
    v7 = v19;
    v8 = SiriTTSTrainerGetLog();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v6)
    {
      if (v9)
      {
        v10 = [v6 taskId];
        v11 = [v6 trainingAssetPath];
        [v6 dataAssetPath];
        v12 = v18 = v7;
        v13 = [v6 inferenceAssetPath];
        v14 = [v6 agentTrainingAssetPath];
        v15 = [v6 agentInferenceAssetPath];
        *buf = 138413570;
        v21 = v10;
        v22 = 2112;
        v23 = v11;
        v24 = 2112;
        v25 = v12;
        v26 = 2112;
        v27 = v13;
        v28 = 2112;
        v29 = v14;
        v30 = 2112;
        v31 = v15;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "getNextSubmittedTask: taskId=%@ trainingAssetPath=%@ dataAssetPath=%@ inferenceAssetPath=%@ agentTrainingAssetPath=%@ agentInferenceAssetPath=%@", buf, 0x3Eu);

        v7 = v18;
      }

      [(NSRecursiveLock *)self->_lock unlock];
      v16 = v6;
    }

    else
    {
      if (v9)
      {
        *buf = 138412290;
        v21 = v7;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "getNextSubmittedTask: error=%@", buf, 0xCu);
      }

      [(NSRecursiveLock *)self->_lock unlock];
    }
  }

  else
  {
    [(NSRecursiveLock *)self->_lock unlock];
    v6 = 0;
  }

  return v6;
}

- (void)addFailedTaskToFinishQueue:(id)a3 errorCode:(unint64_t)a4 description:(id)a5
{
  lock = self->_lock;
  v9 = a5;
  v10 = a3;
  [(NSRecursiveLock *)lock lock];
  v13 = NSLocalizedDescriptionKey;
  v14 = v9;
  v11 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  v12 = [NSError errorWithDomain:@"SiriTTSTrainerTask" code:a4 userInfo:v11];
  [v10 setError:v12];

  [(TrainingTaskDatabase *)self addTaskToFinishedQueueWithStatus:v10 status:4];
  [(NSRecursiveLock *)self->_lock unlock];
}

- (void)addTaskToFinishedQueueWithStatus:(id)a3 status:(int64_t)a4
{
  v6 = a3;
  [(NSRecursiveLock *)self->_lock lock];
  v7 = sub_100015634(self, self->_submittedTaskQueue, v6);
  v8 = SiriTTSTrainerGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v6 taskId];
    *buf = 138412290;
    v16 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "addTaskToFinishedQueue: task_id=%@", buf, 0xCu);
  }

  if (v7 < 0)
  {
    v12 = SiriTTSTrainerGetLog();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    v11 = [v6 taskId];
    *buf = 138412290;
    v16 = v11;
    _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "addTaskToFinishedQueue: task_id %@ not found from submitted queue.", buf, 0xCu);
  }

  else
  {
    [v6 setTaskStatus:a4];
    +[SiriTTSTrainingAgentUtils postTaskStatusNotification:](SiriTTSTrainingAgentUtils, "postTaskStatusNotification:", [v6 taskStatus]);
    [(NSMutableArray *)self->_submittedTaskQueue removeObjectAtIndex:v7];
    sub_1000150E4(self->_defaults, self->_submittedTaskQueue, @"submitted_task_queue");
    v10 = [v6 error];
    v14 = v10;
    v11 = [NSKeyedArchiver archivedDataWithRootObject:v6 requiringSecureCoding:1 error:&v14];
    v12 = v14;

    [(NSMutableArray *)self->_finishedTaskQueue addObject:v11];
    sub_1000150E4(self->_defaults, self->_finishedTaskQueue, @"finished_task_queue");
    if (v12)
    {
      v13 = SiriTTSTrainerGetLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v16 = v12;
        _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "addTaskToFinishedQueue: error=%@", buf, 0xCu);
      }
    }
  }

LABEL_10:
  [(NSRecursiveLock *)self->_lock unlock];
}

- (id)isTaskInSubmittedQueue:(id)a3
{
  v18 = a3;
  [(NSRecursiveLock *)self->_lock lock];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v17 = self;
  v4 = self->_submittedTaskQueue;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v21;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v20 + 1) + 8 * i);
        v10 = objc_opt_class();
        v19 = 0;
        v11 = [NSKeyedUnarchiver unarchivedObjectOfClass:v10 fromData:v9 error:&v19];
        v12 = v19;
        if (v12)
        {
          v13 = SiriTTSTrainerGetLog();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v25 = v12;
            _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Unable to unarchive task, error: %@", buf, 0xCu);
          }
        }

        else if (v11)
        {
          v14 = [v11 taskId];
          v15 = [v14 isEqualToString:v18];

          if (v15)
          {
            [(NSRecursiveLock *)v17->_lock unlock];

            goto LABEL_16;
          }
        }
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v20 objects:v26 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  [(NSRecursiveLock *)v17->_lock unlock];
  v11 = 0;
LABEL_16:

  return v11;
}

- (id)getTaskById:(id)a3
{
  v28 = a3;
  [(NSRecursiveLock *)self->_lock lock];
  v38 = 0u;
  v36 = 0u;
  v37 = 0u;
  v35 = 0u;
  v27 = self;
  v4 = self->_submittedTaskQueue;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v35 objects:v42 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v36;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v36 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v35 + 1) + 8 * i);
        v10 = objc_opt_class();
        v34 = 0;
        v11 = [NSKeyedUnarchiver unarchivedObjectOfClass:v10 fromData:v9 error:&v34];
        v12 = v34;
        if (v12)
        {
          v13 = SiriTTSTrainerGetLog();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v41 = v12;
            _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Unable to unarchive task, error: %@", buf, 0xCu);
          }
        }

        else if (v11)
        {
          v14 = [v11 taskId];
          v15 = [v14 isEqualToString:v28];

          if (v15)
          {
LABEL_28:
            [(NSRecursiveLock *)v27->_lock unlock];

            goto LABEL_29;
          }
        }
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v35 objects:v42 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v4 = v27->_finishedTaskQueue;
  v16 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v30 objects:v39 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v31;
    do
    {
      for (j = 0; j != v17; j = j + 1)
      {
        if (*v31 != v18)
        {
          objc_enumerationMutation(v4);
        }

        v20 = *(*(&v30 + 1) + 8 * j);
        v21 = objc_opt_class();
        v29 = 0;
        v11 = [NSKeyedUnarchiver unarchivedObjectOfClass:v21 fromData:v20 error:&v29];
        v22 = v29;
        if (v22)
        {
          v23 = SiriTTSTrainerGetLog();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v41 = v22;
            _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Unable to unarchive task, error: %@", buf, 0xCu);
          }
        }

        else if (v11)
        {
          v24 = [v11 taskId];
          v25 = [v24 isEqualToString:v28];

          if (v25)
          {
            goto LABEL_28;
          }
        }
      }

      v17 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v30 objects:v39 count:16];
    }

    while (v17);
  }

  [(NSRecursiveLock *)v27->_lock unlock];
  v11 = 0;
LABEL_29:

  return v11;
}

- (id)getAllTasks
{
  [(NSRecursiveLock *)self->_lock lock];
  v3 = +[NSMutableArray array];
  v4 = [(NSMutableArray *)self->_submittedTaskQueue arrayByAddingObjectsFromArray:self->_finishedTaskQueue];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = objc_opt_class();
        v15 = 0;
        v11 = [NSKeyedUnarchiver unarchivedObjectOfClass:v10 fromData:v9 error:&v15];
        v12 = v11;
        if (v15)
        {
          v13 = 1;
        }

        else
        {
          v13 = v11 == 0;
        }

        if (!v13)
        {
          [v3 addObject:v11];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  [(NSRecursiveLock *)self->_lock unlock];

  return v3;
}

- (id)getSubmittedTasks
{
  [(NSRecursiveLock *)self->_lock lock];
  v3 = +[NSMutableArray array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = self->_submittedTaskQueue;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = objc_opt_class();
        v15 = 0;
        v11 = [NSKeyedUnarchiver unarchivedObjectOfClass:v10 fromData:v9 error:&v15];
        v12 = v11;
        if (v15)
        {
          v13 = 1;
        }

        else
        {
          v13 = v11 == 0;
        }

        if (!v13)
        {
          [v3 addObject:v11];
        }
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  [(NSRecursiveLock *)self->_lock unlock];

  return v3;
}

- (void)cleanUpQueue
{
  [(NSRecursiveLock *)self->_lock lock];
  [(NSMutableArray *)self->_submittedTaskQueue removeAllObjects];
  [(NSMutableArray *)self->_finishedTaskQueue removeAllObjects];
  sub_1000150E4(self->_defaults, self->_submittedTaskQueue, @"submitted_task_queue");
  sub_1000150E4(self->_defaults, self->_finishedTaskQueue, @"finished_task_queue");
  lock = self->_lock;

  [(NSRecursiveLock *)lock unlock];
}

@end