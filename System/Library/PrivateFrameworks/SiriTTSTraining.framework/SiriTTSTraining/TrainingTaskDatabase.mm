@interface TrainingTaskDatabase
+ (TrainingTaskDatabase)sharedInstance;
- (TrainingTaskDatabase)init;
- (id)getAllTasks;
- (id)getNextSubmittedTask;
- (id)getSubmittedTasks;
- (id)getTaskById:(id)id;
- (id)isTaskInSubmittedQueue:(id)queue;
- (int64_t)getSubmittedTaskQueueSize;
- (void)addFailedTaskToFinishQueue:(id)queue errorCode:(unint64_t)code description:(id)description;
- (void)addTaskToFinishedQueueWithStatus:(id)status status:(int64_t)a4;
- (void)addTaskToSubmittedQueue:(id)queue;
- (void)cleanUpQueue;
- (void)submitTaskToSubmittedQueue:(id)queue;
- (void)updateTaskToSubmittedQueue:(id)queue;
- (void)updateTaskWithStatusToSubmittedQueue:(id)queue taskStatus:(int64_t)status;
- (void)updateTaskWithTrainingStatusToSubmittedQueue:(id)queue trainingStatus:(int64_t)status currentProgressValue:(int64_t)value totalProgressValue:(int64_t)progressValue normalizedProgressValue:(float)normalizedProgressValue;
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

- (void)submitTaskToSubmittedQueue:(id)queue
{
  lock = self->_lock;
  queueCopy = queue;
  [(NSRecursiveLock *)lock lock];
  [queueCopy setTaskStatus:1];
  +[SiriTTSTrainingAgentUtils postTaskStatusNotification:](SiriTTSTrainingAgentUtils, "postTaskStatusNotification:", [queueCopy taskStatus]);
  [(TrainingTaskDatabase *)self addTaskToSubmittedQueue:queueCopy];

  v6 = self->_lock;

  [(NSRecursiveLock *)v6 unlock];
}

- (void)addTaskToSubmittedQueue:(id)queue
{
  queueCopy = queue;
  [(NSRecursiveLock *)self->_lock lock];
  v5 = SiriTTSTrainerGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    taskId = [queueCopy taskId];
    trainingAssetPath = [queueCopy trainingAssetPath];
    dataAssetPath = [queueCopy dataAssetPath];
    inferenceAssetPath = [queueCopy inferenceAssetPath];
    agentTrainingAssetPath = [queueCopy agentTrainingAssetPath];
    agentInferenceAssetPath = [queueCopy agentInferenceAssetPath];
    *buf = 138413570;
    v17 = taskId;
    v18 = 2112;
    v19 = trainingAssetPath;
    v20 = 2112;
    v21 = dataAssetPath;
    v22 = 2112;
    v23 = inferenceAssetPath;
    v24 = 2112;
    v25 = agentTrainingAssetPath;
    v26 = 2112;
    v27 = agentInferenceAssetPath;
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "addTaskToSubmittedQueue: taskId=%@ trainingAssetPath=%@ dataAssetPath=%@ inferenceAssetPath=%@ agentTrainingAssetPath=%@ agentInferenceAssetPath=%@", buf, 0x3Eu);
  }

  v15 = 0;
  v6 = [NSKeyedArchiver archivedDataWithRootObject:queueCopy requiringSecureCoding:1 error:&v15];
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

- (void)updateTaskToSubmittedQueue:(id)queue
{
  queueCopy = queue;
  [(NSRecursiveLock *)self->_lock lock];
  v5 = SiriTTSTrainerGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    taskId = [queueCopy taskId];
    trainingAssetPath = [queueCopy trainingAssetPath];
    dataAssetPath = [queueCopy dataAssetPath];
    inferenceAssetPath = [queueCopy inferenceAssetPath];
    taskStatus = [queueCopy taskStatus];
    agentTrainingAssetPath = [queueCopy agentTrainingAssetPath];
    agentInferenceAssetPath = [queueCopy agentInferenceAssetPath];
    v16 = 138413826;
    v17 = taskId;
    v18 = 2112;
    v19 = trainingAssetPath;
    v20 = 2112;
    v21 = dataAssetPath;
    v22 = 2112;
    v23 = inferenceAssetPath;
    v24 = 2048;
    v25 = taskStatus;
    v26 = 2112;
    v27 = agentTrainingAssetPath;
    v28 = 2112;
    v29 = agentInferenceAssetPath;
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "updateTaskToSubmittedQueue: taskId=%@ trainingAssetPath=%@ dataAssetPath=%@ inferenceAssetPath=%@ taskStatus=%ld agentTrainingAssetPath=%@ agentInferenceAssetPath=%@", &v16, 0x48u);
  }

  v6 = sub_100015634(self, self->_submittedTaskQueue, queueCopy);
  if (v6 < 0)
  {
    v7 = SiriTTSTrainerGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      taskId2 = [queueCopy taskId];
      v16 = 138412290;
      v17 = taskId2;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "updateTaskToSubmittedQueue: taskId=%@ not found", &v16, 0xCu);
    }
  }

  else
  {
    [(NSMutableArray *)self->_submittedTaskQueue removeObjectAtIndex:v6];
    [(TrainingTaskDatabase *)self addTaskToSubmittedQueue:queueCopy];
  }

  [(NSRecursiveLock *)self->_lock unlock];
}

- (void)updateTaskWithStatusToSubmittedQueue:(id)queue taskStatus:(int64_t)status
{
  lock = self->_lock;
  queueCopy = queue;
  [(NSRecursiveLock *)lock lock];
  [queueCopy setTaskStatus:status];
  +[SiriTTSTrainingAgentUtils postTaskStatusNotification:](SiriTTSTrainingAgentUtils, "postTaskStatusNotification:", [queueCopy taskStatus]);
  [(TrainingTaskDatabase *)self updateTaskToSubmittedQueue:queueCopy];

  v8 = self->_lock;

  [(NSRecursiveLock *)v8 unlock];
}

- (void)updateTaskWithTrainingStatusToSubmittedQueue:(id)queue trainingStatus:(int64_t)status currentProgressValue:(int64_t)value totalProgressValue:(int64_t)progressValue normalizedProgressValue:(float)normalizedProgressValue
{
  lock = self->_lock;
  queueCopy = queue;
  [(NSRecursiveLock *)lock lock];
  [queueCopy setTrainingStatus:status];
  [queueCopy setCurrentTaskStatusProgressValue:value];
  [queueCopy setTotalTaskStatusProgressValue:progressValue];
  *&v14 = normalizedProgressValue;
  [queueCopy setNormalizedProgressValue:v14];
  [(TrainingTaskDatabase *)self updateTaskToSubmittedQueue:queueCopy];

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
    firstObject = [(NSMutableArray *)self->_submittedTaskQueue firstObject];
    v19 = 0;
    v6 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:firstObject error:&v19];
    v7 = v19;
    v8 = SiriTTSTrainerGetLog();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v6)
    {
      if (v9)
      {
        taskId = [v6 taskId];
        trainingAssetPath = [v6 trainingAssetPath];
        [v6 dataAssetPath];
        v12 = v18 = v7;
        inferenceAssetPath = [v6 inferenceAssetPath];
        agentTrainingAssetPath = [v6 agentTrainingAssetPath];
        agentInferenceAssetPath = [v6 agentInferenceAssetPath];
        *buf = 138413570;
        v21 = taskId;
        v22 = 2112;
        v23 = trainingAssetPath;
        v24 = 2112;
        v25 = v12;
        v26 = 2112;
        v27 = inferenceAssetPath;
        v28 = 2112;
        v29 = agentTrainingAssetPath;
        v30 = 2112;
        v31 = agentInferenceAssetPath;
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

- (void)addFailedTaskToFinishQueue:(id)queue errorCode:(unint64_t)code description:(id)description
{
  lock = self->_lock;
  descriptionCopy = description;
  queueCopy = queue;
  [(NSRecursiveLock *)lock lock];
  v13 = NSLocalizedDescriptionKey;
  v14 = descriptionCopy;
  v11 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  v12 = [NSError errorWithDomain:@"SiriTTSTrainerTask" code:code userInfo:v11];
  [queueCopy setError:v12];

  [(TrainingTaskDatabase *)self addTaskToFinishedQueueWithStatus:queueCopy status:4];
  [(NSRecursiveLock *)self->_lock unlock];
}

- (void)addTaskToFinishedQueueWithStatus:(id)status status:(int64_t)a4
{
  statusCopy = status;
  [(NSRecursiveLock *)self->_lock lock];
  v7 = sub_100015634(self, self->_submittedTaskQueue, statusCopy);
  v8 = SiriTTSTrainerGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    taskId = [statusCopy taskId];
    *buf = 138412290;
    v16 = taskId;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "addTaskToFinishedQueue: task_id=%@", buf, 0xCu);
  }

  if (v7 < 0)
  {
    v12 = SiriTTSTrainerGetLog();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    taskId2 = [statusCopy taskId];
    *buf = 138412290;
    v16 = taskId2;
    _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "addTaskToFinishedQueue: task_id %@ not found from submitted queue.", buf, 0xCu);
  }

  else
  {
    [statusCopy setTaskStatus:a4];
    +[SiriTTSTrainingAgentUtils postTaskStatusNotification:](SiriTTSTrainingAgentUtils, "postTaskStatusNotification:", [statusCopy taskStatus]);
    [(NSMutableArray *)self->_submittedTaskQueue removeObjectAtIndex:v7];
    sub_1000150E4(self->_defaults, self->_submittedTaskQueue, @"submitted_task_queue");
    error = [statusCopy error];
    v14 = error;
    taskId2 = [NSKeyedArchiver archivedDataWithRootObject:statusCopy requiringSecureCoding:1 error:&v14];
    v12 = v14;

    [(NSMutableArray *)self->_finishedTaskQueue addObject:taskId2];
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

- (id)isTaskInSubmittedQueue:(id)queue
{
  queueCopy = queue;
  [(NSRecursiveLock *)self->_lock lock];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  selfCopy = self;
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
          taskId = [v11 taskId];
          v15 = [taskId isEqualToString:queueCopy];

          if (v15)
          {
            [(NSRecursiveLock *)selfCopy->_lock unlock];

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

  [(NSRecursiveLock *)selfCopy->_lock unlock];
  v11 = 0;
LABEL_16:

  return v11;
}

- (id)getTaskById:(id)id
{
  idCopy = id;
  [(NSRecursiveLock *)self->_lock lock];
  v38 = 0u;
  v36 = 0u;
  v37 = 0u;
  v35 = 0u;
  selfCopy = self;
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
          taskId = [v11 taskId];
          v15 = [taskId isEqualToString:idCopy];

          if (v15)
          {
LABEL_28:
            [(NSRecursiveLock *)selfCopy->_lock unlock];

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
  v4 = selfCopy->_finishedTaskQueue;
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
          taskId2 = [v11 taskId];
          v25 = [taskId2 isEqualToString:idCopy];

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

  [(NSRecursiveLock *)selfCopy->_lock unlock];
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