@interface SiriTTSTrainingAgent
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (SiriTTSTrainerAgentDelegate)delegate;
- (SiriTTSTrainingAgent)init;
- (int64_t)trainerTaskEvent:(int64_t)a3 currentValue:(int64_t)a4 totalValue:(int64_t)a5;
- (void)cancelTask:(id)a3 reply:(id)a4;
- (void)cleanUpTaskQueue:(id)a3;
- (void)getAllTasksWithReply:(id)a3;
- (void)getCurrentAssetVersion:(id)a3 name:(id)a4 reply:(id)a5;
- (void)getRecordingMetadata:(id)a3 name:(id)a4 reply:(id)a5;
- (void)getTaskById:(id)a3 reply:(id)a4;
- (void)startRequest:(id)a3 reply:(id)a4;
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
  v14 = [v13 getSubmittedTasks];

  v15 = SiriTTSTrainerGetLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [v14 count];
    *buf = 67109120;
    v30 = v16;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Existing training task count: %d", buf, 8u);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v17 = v14;
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

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  v6 = [v5 valueForEntitlement:@"com.apple.SiriTTSTrainingAgent.training"];
  if (objc_opt_respondsToSelector() & 1) != 0 && ([v6 BOOLValue])
  {
    v7 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___SiriTTSTrainerAgentDelegate];
    [v5 setRemoteObjectInterface:v7];
    v8 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___SiriTTSTrainerAgentProtocol];
    v14 = objc_opt_class();
    v9 = [NSArray arrayWithObjects:&v14 count:1];
    v10 = [NSSet setWithArray:v9];

    [v8 setClasses:v10 forSelector:"startRequest:reply:" argumentIndex:0 ofReply:0];
    [v5 setExportedInterface:v8];
    [v5 setExportedObject:self];
    [v5 setInvalidationHandler:&stru_100025310];
    objc_storeWeak(&self->_connection, v5);
    [v5 resume];

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
  v3 = [WeakRetained remoteObjectProxy];

  return v3;
}

- (void)getRecordingMetadata:(id)a3 name:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = sub_10000E02C(self, v8, v9, 1);
  if (!v11)
  {
    v12 = +[NSBundle mainBundle];
    v13 = [v12 resourcePath];
    v31 = v13;
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

    v10[2](v10, v23, 0);
  }

  else
  {
    (v10)[2](v10, 0, v16);
  }
}

- (void)getCurrentAssetVersion:(id)a3 name:(id)a4 reply:(id)a5
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10000E2EC;
  v9[3] = &unk_100025338;
  v10 = a5;
  v8 = v10;
  [(SiriTTSTrainingAgent *)self installedTrainingAssetsForLanguage:a3 name:a4 type:0 reply:v9];
}

- (void)startRequest:(id)a3 reply:(id)a4
{
  v5 = a3;
  v49 = a4;
  v6 = SiriTTSTrainerGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v5 taskId];
    v8 = [v5 assetLanguage];
    v9 = [v5 trainingAssetPath];
    v10 = [v5 dataAssetPath];
    v11 = [v5 inferenceAssetPath];
    v12 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v5 forceToStart]);
    v13 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v5 taskMode]);
    *buf = 138413826;
    v53 = v7;
    v54 = 2112;
    v55 = v8;
    v56 = 2112;
    v57 = v9;
    v58 = 2112;
    v59 = v10;
    v60 = 2112;
    v61 = v11;
    v62 = 2112;
    v63 = v12;
    v64 = 2112;
    v65 = v13;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Received request: taskId=%@ assetLanguage=%@ trainingAssetPath=%@ dataAssetPath=%@ inferenceAssetPath=%@ forceToStart=%@ taskMode=%@", buf, 0x48u);
  }

  v14 = [[SiriTTSTrainerTaskInternal alloc] initWithTask:v5];
  v15 = +[NSDate now];
  [(SiriTTSTrainerTaskInternal *)v14 setTaskSubmissionDate:v15];

  v16 = [v5 taskId];
  v17 = v16 == 0;

  if (v17)
  {
    v26 = +[NSUUID UUID];
    v27 = [v26 UUIDString];
    [(SiriTTSTrainerTaskInternal *)v14 setTaskId:v27];
  }

  else
  {
    v18 = [v5 taskId];
    [(SiriTTSTrainerTaskInternal *)v14 setTaskId:v18];

    v19 = +[TrainingTaskDatabase sharedInstance];
    v20 = [(SiriTTSTrainerTaskInternal *)v14 taskId];
    v21 = [v19 getTaskById:v20];

    if (v21)
    {
      v22 = SiriTTSTrainerGetLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = [v5 taskId];
        *buf = 138412290;
        v53 = v23;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Found task in submit queue: taskId=%@", buf, 0xCu);
      }

      v24 = +[STTCoreAnalyticsService sharedInstance];
      [v24 reportRequest:v5];

      v25 = [v21 getSuperTask];
      v49[2](v49, 0, v25);

      goto LABEL_23;
    }
  }

  v28 = [(SiriTTSTrainerTaskInternal *)v14 trainingAssetPath];
  v29 = [v28 length] == 0;

  if (v29 && (-[SiriTTSTrainerTaskInternal assetLanguage](v14, "assetLanguage"), v30 = objc_claimAutoreleasedReturnValue(), v31 = [v30 length] == 0, v30, v31))
  {
    v42 = SiriTTSTrainerGetLog();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, "Invalid input training asset path", buf, 2u);
    }

    v43 = [NSError errorWithDomain:@"com.apple.SiriTTSTrainingAgent" code:300 userInfo:0];
    [v5 setError:v43];

    v44 = +[STTCoreAnalyticsService sharedInstance];
    [v44 reportRequest:v5];

    v21 = [v5 error];
    (v49)[2](v49, v21, 0);
  }

  else
  {
    v32 = +[TrainingTaskDatabase sharedInstance];
    [v32 submitTaskToSubmittedQueue:v14];

    v33 = SiriTTSTrainerGetLog();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      v34 = [v5 taskId];
      *buf = 138412290;
      v53 = v34;
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
        v46 = [v45 getSubmittedTaskQueueSize];
        *buf = 134218240;
        v53 = v46;
        v54 = 2048;
        v55 = 1;
        _os_log_error_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "Training task queue size exceeds the maximum, current_size=%ld, max_size=%ld", buf, 0x16u);
      }

      v38 = +[STTCoreAnalyticsService sharedInstance];
      [v38 reportRequest:v14];

      v39 = +[TrainingTaskDatabase sharedInstance];
      [v39 addFailedTaskToFinishQueue:v14 errorCode:1005 description:@"Current task queue exceeds the maximum"];

      v21 = [(SiriTTSTrainerTaskInternal *)v14 error];
      (v49)[2](v49, v21, 0);
    }

    else
    {
      v21 = [(SiriTTSTrainerTaskInternal *)v14 getSuperTask];
      v40 = +[STTCoreAnalyticsService sharedInstance];
      [v40 reportRequest:v21];

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
        v49[2](v49, 0, v21);
      }

      else
      {
        sub_10000F9F0(v48, v14, 600.0);
        v49[2](v49, 0, v21);
      }
    }
  }

LABEL_23:
}

- (void)getTaskById:(id)a3 reply:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = SiriTTSTrainerGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "getTaskById: taskId=%@", buf, 0xCu);
  }

  v8 = +[TrainingTaskDatabase sharedInstance];
  v9 = [v8 getTaskById:v5];

  if (v9)
  {
    v10 = [v9 getSuperTask];
    v11 = SiriTTSTrainerGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v18 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Found task %@", buf, 0xCu);
    }

    v6[2](v6, 0, v10);
  }

  else
  {
    v12 = SiriTTSTrainerGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v18 = v5;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Unable to find task of id %@", buf, 0xCu);
    }

    v13 = [NSError alloc];
    v15 = NSLocalizedDescriptionKey;
    v16 = @"Can't find corresponding taskId";
    v14 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    v10 = [v13 initWithDomain:@"com.apple.SiriTTSTrainingAgent" code:300 userInfo:v14];

    (v6)[2](v6, v10, 0);
  }
}

- (void)getAllTasksWithReply:(id)a3
{
  v3 = a3;
  v4 = +[TrainingTaskDatabase sharedInstance];
  v5 = [v4 getAllTasks];

  v6 = +[NSMutableArray array];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = v5;
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

        v11 = [*(*(&v12 + 1) + 8 * v10) getSuperTask];
        [v6 addObject:v11];

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  v3[2](v3, v6);
}

- (void)cleanUpTaskQueue:(id)a3
{
  v3 = a3;
  v4 = SiriTTSTrainerGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "cleanUpTaskQueue", v6, 2u);
  }

  v5 = +[TrainingTaskDatabase sharedInstance];
  [v5 cleanUpQueue];

  v3[2](v3, 0);
}

- (void)cancelTask:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = SiriTTSTrainerGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v6 taskId];
    *buf = 138412290;
    v35 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "cancelTask: taskId=%@", buf, 0xCu);
  }

  v10 = +[TrainingTaskDatabase sharedInstance];
  v11 = [v6 taskId];
  v12 = [v10 getTaskById:v11];

  if (!v12)
  {
    v25 = [NSError alloc];
    v30 = NSLocalizedDescriptionKey;
    v31 = @"Can't cancel task due to task not found";
    v26 = [NSDictionary dictionaryWithObjects:&v31 forKeys:&v30 count:1];
    v27 = [v25 initWithDomain:@"com.apple.SiriTTSTrainingAgent" code:300 userInfo:v26];

    v7[2](v7, v27);
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

    v7[2](v7, v27);
    goto LABEL_14;
  }

  WeakRetained = objc_loadWeakRetained(&self->_currentTrainingTask);
  if (WeakRetained)
  {
    v14 = objc_loadWeakRetained(&self->_currentTrainingTask);
    v15 = [v14 taskId];
    v16 = [v6 taskId];
    v17 = [v15 isEqualToString:v16];

    if (v17)
    {
      v18 = objc_loadWeakRetained(&self->_currentTrainingTask);

      v19 = objc_loadWeakRetained(&self->_currentTrainingTask);
      v20 = [v19 currentTrainer];
      v21 = v20 == 0;

      if (!v21)
      {
        v22 = objc_loadWeakRetained(&self->_currentTrainingTask);
        v23 = [v22 currentTrainer];
        [v23 stop];
      }

      v12 = v18;
    }
  }

  v24 = +[TrainingTaskDatabase sharedInstance];
  [v24 addTaskToFinishedQueueWithStatus:v12 status:3];

  v7[2](v7, 0);
LABEL_15:
}

- (int64_t)trainerTaskEvent:(int64_t)a3 currentValue:(int64_t)a4 totalValue:(int64_t)a5
{
  if (a3 <= 0x12)
  {
    if (((1 << a3) & 0x2DB6F) != 0)
    {
      return 0;
    }

    if (a3 == 18)
    {
      [SiriTTSTrainerDiagnostics collectTailspin:0];
      return 0;
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_currentTrainingTask);
  v11 = [WeakRetained taskMode];

  if (v11 != 2)
  {
    switch(a3)
    {
      case 7:
        a4 += 2 * a5;
        break;
      case 10:
        a4 += a5;
        break;
      case 13:
        break;
      default:
        goto LABEL_22;
    }

    a5 *= 3;
LABEL_22:
    v12 = objc_loadWeakRetained(&self->_currentTrainingTask);
    v13 = [v12 trainingStatus];
    v14 = self;
    v15 = a4;
    v16 = a5;
    v17 = 1;
    goto LABEL_23;
  }

  switch(a3)
  {
    case 4:
      a4 += 2 * a5;
      break;
    case 10:
      a4 += a5;
      break;
    case 13:
      break;
    default:
      goto LABEL_19;
  }

  a5 *= 3;
LABEL_19:
  v12 = objc_loadWeakRetained(&self->_currentTrainingTask);
  v13 = [v12 trainingStatus];
  v14 = self;
  v15 = a4;
  v16 = a5;
  v17 = 2;
LABEL_23:
  v18 = sub_100011084(v14, v13, v15, v16, v17);
  v19 = *&v18;

  v20 = SiriTTSTrainerGetLog();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = [NSNumber numberWithInteger:a3];
    v26 = 138413058;
    v27 = v21;
    v28 = 2048;
    v29 = a4;
    v30 = 2048;
    v31 = a5;
    v32 = 2048;
    v33 = v19;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "event=%@, currentValue=%ld, totalValue=%ld, normalizedProgressValue=%f", &v26, 0x2Au);
  }

  v22 = +[TrainingTaskDatabase sharedInstance];
  v23 = objc_loadWeakRetained(&self->_currentTrainingTask);
  v24 = [v23 trainingStatus];
  *&v25 = v19;
  [v22 updateTaskWithTrainingStatusToSubmittedQueue:v23 trainingStatus:v24 currentProgressValue:a4 totalProgressValue:a5 normalizedProgressValue:v25];

  return 0;
}

@end