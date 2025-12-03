@interface SiriTTSTrainingAgent
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (SiriTTSTrainerAgentDelegate)delegate;
- (SiriTTSTrainingAgent)init;
- (int64_t)trainerTaskEvent:(int64_t)event currentValue:(int64_t)value totalValue:(int64_t)totalValue;
- (void)cancelTask:(id)task reply:(id)reply;
- (void)cleanUpTaskQueue:(id)queue;
- (void)getAllTasksWithReply:(id)reply;
- (void)getCurrentAssetVersion:(id)version name:(id)name reply:(id)reply;
- (void)getRecordingMetadata:(id)metadata name:(id)name reply:(id)reply;
- (void)getTaskById:(id)id reply:(id)reply;
- (void)startRequest:(id)request reply:(id)reply;
@end

@implementation SiriTTSTrainingAgent

- (SiriTTSTrainingAgent)init
{
  v24.receiver = self;
  v24.super_class = SiriTTSTrainingAgent;
  v2 = [(SiriTTSTrainingAgent *)&v24 init];
  v3 = objc_alloc_init(NSLock);
  trainingThreadLock = v2->_trainingThreadLock;
  v2->_trainingThreadLock = v3;

  v5 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v6 = dispatch_queue_create("com.apple.SiriTTSTrainingAgent.queue.training_task", v5);
  trainingTaskQueue = v2->_trainingTaskQueue;
  v2->_trainingTaskQueue = v6;

  v8 = dispatch_queue_create("SiriTTSTrainingAgent.DAS", v5);
  dasQueue = v2->_dasQueue;
  v2->_dasQueue = v8;

  v10 = [NSXPCListener alloc];
  v11 = [v10 initWithMachServiceName:SiriTTSTrainerAgentMachName];
  xpcListener = v2->_xpcListener;
  v2->_xpcListener = v11;

  [(NSXPCListener *)v2->_xpcListener setDelegate:v2];
  v2->_agentDeferred = 0;
  v13 = +[TrainingTaskDatabase sharedInstance];
  getSubmittedTasks = [v13 getSubmittedTasks];

  v15 = SiriTTSTrainerGetLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [getSubmittedTasks count];
    *buf = 67109120;
    v30 = v16;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Existing training task count: %d", buf, 8u);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v17 = getSubmittedTasks;
  v18 = [v17 countByEnumeratingWithState:&v25 objects:buf count:16];
  if (v18)
  {
    v19 = *v26;
    do
    {
      v20 = 0;
      do
      {
        if (*v26 != v19)
        {
          objc_enumerationMutation(v17);
        }

        sub_10000F9F0(v2, *(*(&v25 + 1) + 8 * v20), 0.0);
        v20 = v20 + 1;
      }

      while (v18 != v20);
      v18 = [v17 countByEnumeratingWithState:&v25 objects:buf count:16];
    }

    while (v18);
  }

  v21 = SiriTTSTrainerGetLog();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "scheduleDaemonInvokeXPCActivity", buf, 2u);
  }

  xpc_activity_register("com.apple.SiriTTSTrainingAgent.xpc_checkin", XPC_ACTIVITY_CHECK_IN, &stru_100025488);
  v22 = +[TrainingTaskDatabase sharedInstance];
  objc_storeWeak(&v2->_currentTrainingTask, 0);

  return v2;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v6 = [connectionCopy valueForEntitlement:@"com.apple.SiriTTSTrainingAgent.training"];
  if (objc_opt_respondsToSelector() & 1) != 0 && ([v6 BOOLValue])
  {
    v7 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___SiriTTSTrainerAgentDelegate];
    [connectionCopy setRemoteObjectInterface:v7];
    v8 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___SiriTTSTrainerAgentProtocol];
    v14 = objc_opt_class();
    v9 = [NSArray arrayWithObjects:&v14 count:1];
    v10 = [NSSet setWithArray:v9];

    [v8 setClasses:v10 forSelector:"startRequest:reply:" argumentIndex:0 ofReply:0];
    [connectionCopy setExportedInterface:v8];
    [connectionCopy setExportedObject:self];
    [connectionCopy setInvalidationHandler:&stru_100025310];
    objc_storeWeak(&self->_connection, connectionCopy);
    [connectionCopy resume];

    v11 = 1;
  }

  else
  {
    v7 = SiriTTSTrainerGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v13 = 0;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Invalidated entitlement", v13, 2u);
    }

    v11 = 0;
  }

  return v11;
}

- (SiriTTSTrainerAgentDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_connection);
  remoteObjectProxy = [WeakRetained remoteObjectProxy];

  return remoteObjectProxy;
}

- (void)getRecordingMetadata:(id)metadata name:(id)name reply:(id)reply
{
  metadataCopy = metadata;
  nameCopy = name;
  replyCopy = reply;
  v11 = sub_10000E02C(self, metadataCopy, nameCopy, 1);
  if (!v11)
  {
    v12 = +[NSBundle mainBundle];
    resourcePath = [v12 resourcePath];
    v31 = resourcePath;
    v14 = [NSArray arrayWithObjects:&v31 count:1];
    v11 = [NSString pathWithComponents:v14];
  }

  v30[0] = v11;
  v30[1] = @"metadata_data.json";
  v15 = [NSArray arrayWithObjects:v30 count:2];
  v16 = [NSString pathWithComponents:v15];

  v17 = SiriTTSTrainerGetLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v29 = v16;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "metadataPath=%@", buf, 0xCu);
  }

  v25 = 0;
  v18 = +[NSFileManager defaultManager];
  v19 = [v18 fileExistsAtPath:v16 isDirectory:&v25];
  v20 = v25;

  if (v20 & 1 | ((v19 & 1) == 0))
  {
    v21 = [NSError alloc];
    v26 = NSLocalizedDescriptionKey;
    v27 = @"Recording metadata file doesn't exist.";
    v22 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    v23 = [v21 initWithDomain:@"com.apple.SiriTTSTrainingAgent" code:1004 userInfo:v22];

    v24 = SiriTTSTrainerGetLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v29 = v16;
      _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Recording metadata file doesn't exist. path=%@", buf, 0xCu);
    }

    replyCopy[2](replyCopy, v23, 0);
  }

  else
  {
    (replyCopy)[2](replyCopy, 0, v16);
  }
}

- (void)getCurrentAssetVersion:(id)version name:(id)name reply:(id)reply
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10000E2EC;
  v9[3] = &unk_100025338;
  replyCopy = reply;
  v8 = replyCopy;
  [(SiriTTSTrainingAgent *)self installedTrainingAssetsForLanguage:version name:name type:0 reply:v9];
}

- (void)startRequest:(id)request reply:(id)reply
{
  requestCopy = request;
  replyCopy = reply;
  v6 = SiriTTSTrainerGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    taskId = [requestCopy taskId];
    assetLanguage = [requestCopy assetLanguage];
    trainingAssetPath = [requestCopy trainingAssetPath];
    dataAssetPath = [requestCopy dataAssetPath];
    inferenceAssetPath = [requestCopy inferenceAssetPath];
    v12 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [requestCopy forceToStart]);
    v13 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [requestCopy taskMode]);
    *buf = 138413826;
    v53 = taskId;
    v54 = 2112;
    v55 = assetLanguage;
    v56 = 2112;
    v57 = trainingAssetPath;
    v58 = 2112;
    v59 = dataAssetPath;
    v60 = 2112;
    v61 = inferenceAssetPath;
    v62 = 2112;
    v63 = v12;
    v64 = 2112;
    v65 = v13;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Received request: taskId=%@ assetLanguage=%@ trainingAssetPath=%@ dataAssetPath=%@ inferenceAssetPath=%@ forceToStart=%@ taskMode=%@", buf, 0x48u);
  }

  v14 = [[SiriTTSTrainerTaskInternal alloc] initWithTask:requestCopy];
  v15 = +[NSDate now];
  [(SiriTTSTrainerTaskInternal *)v14 setTaskSubmissionDate:v15];

  taskId2 = [requestCopy taskId];
  v17 = taskId2 == 0;

  if (v17)
  {
    v26 = +[NSUUID UUID];
    uUIDString = [v26 UUIDString];
    [(SiriTTSTrainerTaskInternal *)v14 setTaskId:uUIDString];
  }

  else
  {
    taskId3 = [requestCopy taskId];
    [(SiriTTSTrainerTaskInternal *)v14 setTaskId:taskId3];

    v19 = +[TrainingTaskDatabase sharedInstance];
    taskId4 = [(SiriTTSTrainerTaskInternal *)v14 taskId];
    error = [v19 getTaskById:taskId4];

    if (error)
    {
      v22 = SiriTTSTrainerGetLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        taskId5 = [requestCopy taskId];
        *buf = 138412290;
        v53 = taskId5;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Found task in submit queue: taskId=%@", buf, 0xCu);
      }

      v24 = +[STTCoreAnalyticsService sharedInstance];
      [v24 reportRequest:requestCopy];

      getSuperTask = [error getSuperTask];
      replyCopy[2](replyCopy, 0, getSuperTask);

      goto LABEL_23;
    }
  }

  trainingAssetPath2 = [(SiriTTSTrainerTaskInternal *)v14 trainingAssetPath];
  v29 = [trainingAssetPath2 length] == 0;

  if (v29 && (-[SiriTTSTrainerTaskInternal assetLanguage](v14, "assetLanguage"), v30 = objc_claimAutoreleasedReturnValue(), v31 = [v30 length] == 0, v30, v31))
  {
    v42 = SiriTTSTrainerGetLog();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, "Invalid input training asset path", buf, 2u);
    }

    v43 = [NSError errorWithDomain:@"com.apple.SiriTTSTrainingAgent" code:300 userInfo:0];
    [requestCopy setError:v43];

    v44 = +[STTCoreAnalyticsService sharedInstance];
    [v44 reportRequest:requestCopy];

    error = [requestCopy error];
    (replyCopy)[2](replyCopy, error, 0);
  }

  else
  {
    v32 = +[TrainingTaskDatabase sharedInstance];
    [v32 submitTaskToSubmittedQueue:v14];

    v33 = SiriTTSTrainerGetLog();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      taskId6 = [requestCopy taskId];
      *buf = 138412290;
      v53 = taskId6;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Task submitted: taskId=%@", buf, 0xCu);
    }

    v35 = +[TrainingTaskDatabase sharedInstance];
    v36 = [v35 getSubmittedTaskQueueSize] > 1;

    if (v36)
    {
      v37 = SiriTTSTrainerGetLog();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        v45 = +[TrainingTaskDatabase sharedInstance];
        getSubmittedTaskQueueSize = [v45 getSubmittedTaskQueueSize];
        *buf = 134218240;
        v53 = getSubmittedTaskQueueSize;
        v54 = 2048;
        v55 = 1;
        _os_log_error_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "Training task queue size exceeds the maximum, current_size=%ld, max_size=%ld", buf, 0x16u);
      }

      v38 = +[STTCoreAnalyticsService sharedInstance];
      [v38 reportRequest:v14];

      v39 = +[TrainingTaskDatabase sharedInstance];
      [v39 addFailedTaskToFinishQueue:v14 errorCode:1005 description:@"Current task queue exceeds the maximum"];

      error = [(SiriTTSTrainerTaskInternal *)v14 error];
      (replyCopy)[2](replyCopy, error, 0);
    }

    else
    {
      error = [(SiriTTSTrainerTaskInternal *)v14 getSuperTask];
      v40 = +[STTCoreAnalyticsService sharedInstance];
      [v40 reportRequest:error];

      if ([(SiriTTSTrainerTaskInternal *)v14 forceToStart])
      {
        v41 = *(v48 + 8);
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10000EF00;
        block[3] = &unk_100025360;
        block[4] = v48;
        v51 = v14;
        dispatch_async(v41, block);
        replyCopy[2](replyCopy, 0, error);
      }

      else
      {
        sub_10000F9F0(v48, v14, 600.0);
        replyCopy[2](replyCopy, 0, error);
      }
    }
  }

LABEL_23:
}

- (void)getTaskById:(id)id reply:(id)reply
{
  idCopy = id;
  replyCopy = reply;
  v7 = SiriTTSTrainerGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = idCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "getTaskById: taskId=%@", buf, 0xCu);
  }

  v8 = +[TrainingTaskDatabase sharedInstance];
  v9 = [v8 getTaskById:idCopy];

  if (v9)
  {
    getSuperTask = [v9 getSuperTask];
    v11 = SiriTTSTrainerGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v18 = getSuperTask;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Found task %@", buf, 0xCu);
    }

    replyCopy[2](replyCopy, 0, getSuperTask);
  }

  else
  {
    v12 = SiriTTSTrainerGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v18 = idCopy;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Unable to find task of id %@", buf, 0xCu);
    }

    v13 = [NSError alloc];
    v15 = NSLocalizedDescriptionKey;
    v16 = @"Can't find corresponding taskId";
    v14 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    getSuperTask = [v13 initWithDomain:@"com.apple.SiriTTSTrainingAgent" code:300 userInfo:v14];

    (replyCopy)[2](replyCopy, getSuperTask, 0);
  }
}

- (void)getAllTasksWithReply:(id)reply
{
  replyCopy = reply;
  v4 = +[TrainingTaskDatabase sharedInstance];
  getAllTasks = [v4 getAllTasks];

  v6 = +[NSMutableArray array];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = getAllTasks;
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v7);
        }

        getSuperTask = [*(*(&v12 + 1) + 8 * v10) getSuperTask];
        [v6 addObject:getSuperTask];

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  replyCopy[2](replyCopy, v6);
}

- (void)cleanUpTaskQueue:(id)queue
{
  queueCopy = queue;
  v4 = SiriTTSTrainerGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "cleanUpTaskQueue", v6, 2u);
  }

  v5 = +[TrainingTaskDatabase sharedInstance];
  [v5 cleanUpQueue];

  queueCopy[2](queueCopy, 0);
}

- (void)cancelTask:(id)task reply:(id)reply
{
  taskCopy = task;
  replyCopy = reply;
  v8 = SiriTTSTrainerGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    taskId = [taskCopy taskId];
    *buf = 138412290;
    v35 = taskId;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "cancelTask: taskId=%@", buf, 0xCu);
  }

  v10 = +[TrainingTaskDatabase sharedInstance];
  taskId2 = [taskCopy taskId];
  v12 = [v10 getTaskById:taskId2];

  if (!v12)
  {
    v25 = [NSError alloc];
    v30 = NSLocalizedDescriptionKey;
    v31 = @"Can't cancel task due to task not found";
    v26 = [NSDictionary dictionaryWithObjects:&v31 forKeys:&v30 count:1];
    v27 = [v25 initWithDomain:@"com.apple.SiriTTSTrainingAgent" code:300 userInfo:v26];

    replyCopy[2](replyCopy, v27);
LABEL_14:

    goto LABEL_15;
  }

  if ([v12 taskStatus] != 1 && objc_msgSend(v12, "taskStatus") != 2 && objc_msgSend(v12, "taskStatus") != 6)
  {
    v28 = [NSError alloc];
    v32 = NSLocalizedDescriptionKey;
    v33 = @"Can't cancel task due to is in wrong status";
    v29 = [NSDictionary dictionaryWithObjects:&v33 forKeys:&v32 count:1];
    v27 = [v28 initWithDomain:@"com.apple.SiriTTSTrainingAgent" code:300 userInfo:v29];

    replyCopy[2](replyCopy, v27);
    goto LABEL_14;
  }

  WeakRetained = objc_loadWeakRetained(&self->_currentTrainingTask);
  if (WeakRetained)
  {
    v14 = objc_loadWeakRetained(&self->_currentTrainingTask);
    taskId3 = [v14 taskId];
    taskId4 = [taskCopy taskId];
    v17 = [taskId3 isEqualToString:taskId4];

    if (v17)
    {
      v18 = objc_loadWeakRetained(&self->_currentTrainingTask);

      v19 = objc_loadWeakRetained(&self->_currentTrainingTask);
      currentTrainer = [v19 currentTrainer];
      v21 = currentTrainer == 0;

      if (!v21)
      {
        v22 = objc_loadWeakRetained(&self->_currentTrainingTask);
        currentTrainer2 = [v22 currentTrainer];
        [currentTrainer2 stop];
      }

      v12 = v18;
    }
  }

  v24 = +[TrainingTaskDatabase sharedInstance];
  [v24 addTaskToFinishedQueueWithStatus:v12 status:3];

  replyCopy[2](replyCopy, 0);
LABEL_15:
}

- (int64_t)trainerTaskEvent:(int64_t)event currentValue:(int64_t)value totalValue:(int64_t)totalValue
{
  if (event <= 0x12)
  {
    if (((1 << event) & 0x2DB6F) != 0)
    {
      return 0;
    }

    if (event == 18)
    {
      [SiriTTSTrainerDiagnostics collectTailspin:0];
      return 0;
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_currentTrainingTask);
  taskMode = [WeakRetained taskMode];

  if (taskMode != 2)
  {
    switch(event)
    {
      case 7:
        value += 2 * totalValue;
        break;
      case 10:
        value += totalValue;
        break;
      case 13:
        break;
      default:
        goto LABEL_22;
    }

    totalValue *= 3;
LABEL_22:
    v12 = objc_loadWeakRetained(&self->_currentTrainingTask);
    trainingStatus = [v12 trainingStatus];
    selfCopy2 = self;
    valueCopy2 = value;
    totalValueCopy2 = totalValue;
    v17 = 1;
    goto LABEL_23;
  }

  switch(event)
  {
    case 4:
      value += 2 * totalValue;
      break;
    case 10:
      value += totalValue;
      break;
    case 13:
      break;
    default:
      goto LABEL_19;
  }

  totalValue *= 3;
LABEL_19:
  v12 = objc_loadWeakRetained(&self->_currentTrainingTask);
  trainingStatus = [v12 trainingStatus];
  selfCopy2 = self;
  valueCopy2 = value;
  totalValueCopy2 = totalValue;
  v17 = 2;
LABEL_23:
  v18 = sub_100011084(selfCopy2, trainingStatus, valueCopy2, totalValueCopy2, v17);
  v19 = *&v18;

  v20 = SiriTTSTrainerGetLog();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = [NSNumber numberWithInteger:event];
    v26 = 138413058;
    v27 = v21;
    v28 = 2048;
    valueCopy3 = value;
    v30 = 2048;
    totalValueCopy3 = totalValue;
    v32 = 2048;
    v33 = v19;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "event=%@, currentValue=%ld, totalValue=%ld, normalizedProgressValue=%f", &v26, 0x2Au);
  }

  v22 = +[TrainingTaskDatabase sharedInstance];
  v23 = objc_loadWeakRetained(&self->_currentTrainingTask);
  trainingStatus2 = [v23 trainingStatus];
  *&v25 = v19;
  [v22 updateTaskWithTrainingStatusToSubmittedQueue:v23 trainingStatus:trainingStatus2 currentProgressValue:value totalProgressValue:totalValue normalizedProgressValue:v25];

  return 0;
}

@end