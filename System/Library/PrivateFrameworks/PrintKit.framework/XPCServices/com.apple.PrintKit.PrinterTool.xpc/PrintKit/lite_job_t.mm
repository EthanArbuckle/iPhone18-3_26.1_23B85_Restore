@interface lite_job_t
+ (id)gatherLogInfo;
+ (void)cancelJob:(int)job;
+ (void)checkJobsOnMainQueue;
+ (void)getAllJobsCompletionHandler:(id)handler;
- (BOOL)_isCanceled:(id)canceled;
- (BOOL)is_canceled;
- (NSString)debugDescription;
- (NSString)description;
- (NSString)printer_driverformat;
- (id)addJobAndAllowToProceed;
- (id)addJobAndReturnLogMessageOnFailure;
- (id)allowThisJobToProceedNoLock;
- (id)getJobAttributes:(BOOL)attributes;
- (id)logInfo;
- (int)printer_preferred_landscape;
- (lite_job_t)initWithRequestParams:(id)params session:(id)session printer:(id)printer printSettings:(id)settings;
- (void)_clearCancelFlag:(id)flag;
- (void)_setCancelFlag:(id)flag;
- (void)_setupCancelSource;
- (void)_setupCancelSource0;
- (void)_withActivity:(id)activity;
- (void)_workAdded:(unint64_t)added;
- (void)cancelNoLock;
- (void)cancelThisJob;
- (void)clear_cancel_flag;
- (void)dealloc;
- (void)finishJob:(int64_t)job;
- (void)make_progress:(int64_t)make_progress;
- (void)notifyJobHeldPinRequired:(BOOL)required logMessage:(id)message;
- (void)postGlobalNotification:(unsigned int)notification logMsg:(id)msg;
- (void)resetJob;
- (void)set_cancel_flag;
- (void)set_processing;
@end

@implementation lite_job_t

+ (void)checkJobsOnMainQueue
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v2 = _PKLogCategory(PKLogCategoryProgress[0]);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Checking for jobs to print.", buf, 2u);
  }

  v3 = time(0);
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v4 = qword_1000C7BE8;
  v5 = [v4 countByEnumeratingWithState:&v50 objects:v56 count:16];
  if (v5)
  {
    v6 = 0;
    v7 = 0;
    v8 = *v51;
    do
    {
      v9 = 0;
      v10 = v7;
      do
      {
        if (*v51 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v7 = *(*(&v50 + 1) + 8 * v9);

        if (v7[48])
        {
          ++v6;
        }

        v9 = v9 + 1;
        v10 = v7;
      }

      while (v5 != v9);
      v5 = [v4 countByEnumeratingWithState:&v50 objects:v56 count:16];
    }

    while (v5);

    v41 = v6;
  }

  else
  {
    v41 = 0;
  }

  v11 = 0;
  v12 = v3 - 300;
  while (1)
  {
    if (MaxProcessingJobs >= 1)
    {
      v13 = [qword_1000C7BE8 count];
      if (&v13[-v41] >= MaxProcessingJobs)
      {
        break;
      }
    }

    pthread_mutex_lock(&stru_1000C7630);
    if (MaxProcessingJobs >= 1)
    {
      v14 = [qword_1000C7BE8 count];
      if (&v14[-v41] >= MaxProcessingJobs)
      {
        v15 = v11;
        goto LABEL_37;
      }
    }

    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v15 = qword_1000C7BE0;
    v16 = [(lite_job_t *)v15 countByEnumeratingWithState:&v46 objects:v55 count:16];
    if (!v16)
    {
LABEL_35:

LABEL_37:
      v11 = 0;
      goto LABEL_38;
    }

    v17 = *v47;
LABEL_21:
    v18 = 0;
    while (1)
    {
      if (*v47 != v17)
      {
        objc_enumerationMutation(v15);
      }

      v19 = *(*(&v46 + 1) + 8 * v18);

      v11 = v19;
      printer = [(lite_job_t *)v19 printer];
      currentJob = [printer currentJob];
      if (currentJob || [(lite_job_t *)v11 localJobState]!= 3)
      {
      }

      else
      {
        spoolDocumentFilename = [(lite_job_t *)v11 spoolDocumentFilename];
        v23 = spoolDocumentFilename == 0;

        if (!v23)
        {
          break;
        }
      }

      if ([(lite_job_t *)v11 localJobState]== 4 && !v11->release_wait && [(lite_job_t *)v11 readyTime]&& [(lite_job_t *)v11 readyTime]< v12)
      {
        break;
      }

      if (v16 == ++v18)
      {
        v16 = [(lite_job_t *)v15 countByEnumeratingWithState:&v46 objects:v55 count:16];
        if (v16)
        {
          goto LABEL_21;
        }

        goto LABEL_35;
      }
    }

LABEL_38:

    pthread_mutex_unlock(&stru_1000C7630);
    if (!v11)
    {
      break;
    }

    if ([(lite_job_t *)v11 localJobState]== 4)
    {
      [(lite_job_t *)v11 finishJob:8];
    }

    else
    {
      [(lite_job_t *)v11 setPrintTriesCount:[(lite_job_t *)v11 printTriesCount]+ 1];
      pthread_mutex_lock(&stru_1000C7630);
      [qword_1000C7BE8 addObject:v11];
      printer2 = [(lite_job_t *)v11 printer];
      [printer2 setCurrentJob:v11];

      pthread_mutex_unlock(&stru_1000C7630);
      liteDoPrint(v11);
    }
  }

  pthread_mutex_lock(&stru_1000C7630);
  v25 = time(0);
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v26 = qword_1000C7BD8;
  v27 = 0;
  v28 = 0;
  v29 = [v26 countByEnumeratingWithState:&v42 objects:v54 count:16];
  if (v29)
  {
    v30 = *v43;
    do
    {
      for (i = 0; i != v29; i = i + 1)
      {
        if (*v43 != v30)
        {
          objc_enumerationMutation(v26);
        }

        v32 = *(*(&v42 + 1) + 8 * i);
        if ([v32 localJobState] >= 6)
        {
          completedTime = [v32 completedTime];
          if ((completedTime + 60) <= v25)
          {
            if (!v28)
            {
              v28 = objc_opt_new();
            }

            [v28 addObject:v32];
          }

          else
          {
            if ((completedTime + 60) >= v27)
            {
              v34 = v27;
            }

            else
            {
              v34 = completedTime + 60;
            }

            if (v27)
            {
              v27 = v34;
            }

            else
            {
              v27 = completedTime + 60;
            }
          }
        }
      }

      v29 = [v26 countByEnumeratingWithState:&v42 objects:v54 count:16];
    }

    while (v29);
  }

  if ([v28 count])
  {
    v35 = _PKLogCategory(PKLogCategoryProgress[0]);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v58 = v28;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Finalizing %{public}@", buf, 0xCu);
    }

    [qword_1000C7BD8 removeObjectsInArray:v28];
  }

  if (v27)
  {
    if (v27 >= v25)
    {
      v36 = 1000000000 * &v27[-v25];
    }

    else
    {
      v36 = 1000000000;
    }

    v37 = dispatch_time(0, v36);
    dispatch_after(v37, &_dispatch_main_q, &stru_1000A04E8);
  }

  if (![qword_1000C7BE0 count])
  {
    v38 = qword_1000C7BF0;
    v39 = qword_1000C7BF0;
    qword_1000C7BF0 = 0;

    if (v38)
    {
      v40 = _PKLogCategory(PKLogCategoryProgress[0]);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v58 = v38;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Disassociating from JobTimer and related transactions: %{public}@", buf, 0xCu);
      }

      dispatch_source_cancel(v38);
    }
  }

  pthread_mutex_unlock(&stru_1000C7630);
}

- (id)addJobAndReturnLogMessageOnFailure
{
  pthread_mutex_lock(&stru_1000C7630);
  [(lite_job_t *)self setReadyTime:time(0)];
  sub_100016794();
  if (MaxJobs >= 1 && (v3 = [qword_1000C7BD8 count], v3 >= MaxJobs))
  {
    v6 = [qword_1000C7BD8 count];
    maxJobs = [NSString stringWithFormat:@"Unable to create job: Too many jobs (%d >= %d).", v6, MaxJobs];
    pthread_mutex_unlock(&stru_1000C7630);
  }

  else if (MaxActiveJobs >= 1 && (v4 = [qword_1000C7BE0 count], v4 >= MaxActiveJobs))
  {
    v7 = [qword_1000C7BE0 count];
    maxJobs = [NSString stringWithFormat:@"Unable to create job: Too many active jobs (%d >= %d).", v7, MaxActiveJobs];
    pthread_mutex_unlock(&stru_1000C7630);
  }

  else
  {
    [qword_1000C7BD8 addObject:self];
    [qword_1000C7BE0 addObject:self];
    pthread_mutex_unlock(&stru_1000C7630);
    [(lite_job_t *)self postGlobalNotification:4096 logMsg:@"Job created."];
    maxJobs = 0;
  }

  return maxJobs;
}

- (void)notifyJobHeldPinRequired:(BOOL)required logMessage:(id)message
{
  requiredCopy = required;
  messageCopy = message;
  pthread_mutex_lock(&stru_1000C7630);
  [(lite_job_t *)self setLocalJobState:4];
  self->release_wait = 1;
  printer = [(lite_job_t *)self printer];
  [printer setCurrentJob:0];

  [(lite_job_t *)self postGlobalNotification:2048 logMsg:messageCopy];
  if (requiredCopy)
  {
    liteNotifyPINRequired(self);
  }

  pthread_mutex_unlock(&stru_1000C7630);
}

- (void)set_processing
{
  [(lite_job_t *)self setReadyTime:time(0)];
  [(lite_job_t *)self setLocalJobState:5];

  [(lite_job_t *)self postGlobalNotification:2048 logMsg:@"Job printing."];
}

- (id)allowThisJobToProceedNoLock
{
  if ([(lite_job_t *)self localJobState]!= 4)
  {
    return @"Job is in the wrong state to start";
  }

  [(lite_job_t *)self setLocalJobState:3];
  [(lite_job_t *)self setJobHoldUntil:0];
  [(lite_job_t *)self postGlobalNotification:2048 logMsg:@"Job released."];
  [(lite_job_t *)self postGlobalNotification:0x8000 logMsg:@"Job released."];
  result = qword_1000C7BF0;
  if (qword_1000C7BF0)
  {
    dispatch_source_set_timer(qword_1000C7BF0, 0, 0xFFFFFFFFFFFFFFFFLL, 0);
    return 0;
  }

  return result;
}

- (void)resetJob
{
  pthread_mutex_lock(&stru_1000C7630);
  [qword_1000C7BE8 removeObject:self];
  [(lite_job_t *)self setLocalJobState:3];
  [(lite_job_t *)self clear_cancel_flag];
  [(lite_job_t *)self setReadyTime:0];
  [(lite_job_t *)self setSheetsCompleted:0];
  printer = [(lite_job_t *)self printer];
  reasons = [printer reasons];

  if ((reasons & 0x20) != 0)
  {
    pthread_mutex_unlock(&stru_1000C7630);
    sleep(3u);
    pthread_mutex_lock(&stru_1000C7630);
  }

  printer2 = [(lite_job_t *)self printer];
  printer3 = [(lite_job_t *)self printer];
  [printer2 setReasonsBits:{objc_msgSend(printer3, "reasons") & 0xFFE6BFDD}];

  [(lite_job_t *)self setDestination_job_id:0];
  [(lite_job_t *)self postGlobalNotification:2048 logMsg:@"Job restarting."];
  printer4 = [(lite_job_t *)self printer];
  [printer4 setCurrentJob:0];
  v8 = _PKLogCategory(PKLogCategoryProgress[0]);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    printd_job_id = [(lite_job_t *)self printd_job_id];
    if (self)
    {
      destination_job_id = [(lite_job_t *)self destination_job_id];
    }

    else
    {
      destination_job_id = -1;
    }

    v13[0] = 67109376;
    v13[1] = printd_job_id;
    v14 = 1024;
    v15 = destination_job_id;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[Job %d][%d] Restarting JobTimer to this job to go again", v13, 0xEu);
  }

  v11 = qword_1000C7BF0;
  if (qword_1000C7BF0)
  {
    v12 = dispatch_time(0, 1000000000);
    dispatch_source_set_timer(v11, v12, 0xFFFFFFFFFFFFFFFFLL, 0x2540BE400uLL);
  }

  else
  {
    sub_100016794();
  }

  pthread_mutex_unlock(&stru_1000C7630);
}

- (lite_job_t)initWithRequestParams:(id)params session:(id)session printer:(id)printer printSettings:(id)settings
{
  paramsCopy = params;
  sessionCopy = session;
  printerCopy = printer;
  settingsCopy = settings;
  v15.receiver = self;
  v15.super_class = lite_job_t;
  if ([(lite_job_t *)&v15 init])
  {
    operator new();
  }

  return 0;
}

- (void)dealloc
{
  v3 = _PKLogCategory(PKLogCategoryProgress[0]);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    printd_job_id = [(lite_job_t *)self printd_job_id];
    if (self)
    {
      destination_job_id = [(lite_job_t *)self destination_job_id];
    }

    else
    {
      destination_job_id = -1;
    }

    *buf = 67109376;
    v18 = printd_job_id;
    v19 = 1024;
    v20 = destination_job_id;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[Job %d][%d] Freeing job.", buf, 0xEu);
  }

  spoolDocumentFilename = [(lite_job_t *)self spoolDocumentFilename];
  v7 = spoolDocumentFilename == 0;

  if (PreserveJobFiles)
  {
    v8 = 1;
  }

  else
  {
    v8 = v7;
  }

  if ((v8 & 1) == 0)
  {
    v9 = _PKLogCategory(PKLogCategoryProgress[0]);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      printd_job_id2 = [(lite_job_t *)self printd_job_id];
      if (self)
      {
        destination_job_id2 = [(lite_job_t *)self destination_job_id];
      }

      else
      {
        destination_job_id2 = -1;
      }

      spoolDocumentFilename2 = [(lite_job_t *)self spoolDocumentFilename];
      *buf = 67109634;
      v18 = printd_job_id2;
      v19 = 1024;
      v20 = destination_job_id2;
      v21 = 2112;
      v22 = spoolDocumentFilename2;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[Job %d][%d] Removing %@.", buf, 0x18u);
    }

    spoolDocumentFilename3 = [(lite_job_t *)self spoolDocumentFilename];
    v14 = spoolDocumentFilename3;
    unlink([spoolDocumentFilename3 UTF8String]);
  }

  request_attrs = self->_request_attrs;
  if (request_attrs)
  {
    (*(request_attrs->var0 + 3))(request_attrs);
  }

  v16.receiver = self;
  v16.super_class = lite_job_t;
  [(lite_job_t *)&v16 dealloc];
}

- (void)finishJob:(int64_t)job
{
  v5 = _PKLogCategory(PKLogCategoryProgress[0]);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    printd_job_id = [(lite_job_t *)self printd_job_id];
    if (self)
    {
      destination_job_id = [(lite_job_t *)self destination_job_id];
    }

    else
    {
      destination_job_id = -1;
    }

    *buf = 67109632;
    v16 = printd_job_id;
    v17 = 1024;
    v18 = destination_job_id;
    v19 = 1024;
    jobCopy = job;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[Job %d][%d] Finishing job, new job-state %d", buf, 0x14u);
  }

  pthread_mutex_lock(&stru_1000C7630);
  [qword_1000C7BE0 removeObject:self];
  [qword_1000C7BE8 removeObject:self];
  [(lite_job_t *)self setLocalJobState:job];
  [(lite_job_t *)self setCompletedTime:time(0)];
  v8 = "completed.";
  if (job == 8)
  {
    v8 = "aborted.";
  }

  if (job == 7)
  {
    v8 = "canceled.";
  }

  v9 = [NSString stringWithFormat:@"Job %s", v8];
  [(lite_job_t *)self postGlobalNotification:0x2000 logMsg:v9];

  printer = [(lite_job_t *)self printer];
  [printer setCurrentJob:0];

  cancel_source = self->_cancel_source;
  if (cancel_source)
  {
    self->_cancel_source = 0;
    v12 = cancel_source;

    dispatch_source_cancel(v12);
  }

  if (qword_1000C7BF0)
  {
    dispatch_source_set_timer(qword_1000C7BF0, 0, 0xFFFFFFFFFFFFFFFFLL, 0);
  }

  if (self->_jobActivity)
  {
    os_activity_scope_leave(&self->_jobActivityState);
    jobActivity = self->_jobActivity;
    self->_jobActivity = 0;
  }

  jobTransaction = self->_jobTransaction;
  if (jobTransaction)
  {
    self->_jobTransaction = 0;
  }

  pthread_mutex_unlock(&stru_1000C7630);
}

- (void)_withActivity:(id)activity
{
  activityCopy = activity;
  v5 = objc_autoreleasePoolPush();
  jobActivity = self->_jobActivity;
  if (!jobActivity)
  {
    jobActivity = &_os_activity_current;
  }

  v7 = jobActivity;
  if (self->_jobTransaction)
  {
    os_transaction_needs_more_time();
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100017B1C;
  v10[3] = &unk_100095B90;
  v8 = activityCopy;
  v11 = v7;
  v12 = v8;
  v9 = v7;
  os_activity_apply(v9, v10);

  objc_autoreleasePoolPop(v5);
}

- (void)_workAdded:(unint64_t)added
{
  v4 = [(lite_job_t *)self payloadSent]+ added;

  [(lite_job_t *)self setPayloadSent:v4];
}

- (BOOL)_isCanceled:(id)canceled
{
  v4 = dispatch_source_testcancel(canceled);
  if (v4)
  {
    v5 = _PKLogCategory(PKLogCategoryProgress[0]);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      printd_job_id = [(lite_job_t *)self printd_job_id];
      if (self)
      {
        destination_job_id = [(lite_job_t *)self destination_job_id];
      }

      else
      {
        destination_job_id = -1;
      }

      v9[0] = 67109376;
      v9[1] = printd_job_id;
      v10 = 1024;
      v11 = destination_job_id;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[Job %d][%d] job shows as canceled", v9, 0xEu);
    }
  }

  return v4 != 0;
}

- (void)_setCancelFlag:(id)flag
{
  flagCopy = flag;
  v5 = _PKLogCategory(PKLogCategoryProgress[0]);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    printd_job_id = [(lite_job_t *)self printd_job_id];
    if (self)
    {
      destination_job_id = [(lite_job_t *)self destination_job_id];
    }

    else
    {
      destination_job_id = -1;
    }

    v8[0] = 67109376;
    v8[1] = printd_job_id;
    v9 = 1024;
    v10 = destination_job_id;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[Job %d][%d] job being canceled", v8, 0xEu);
  }

  dispatch_source_cancel(flagCopy);
}

- (void)_clearCancelFlag:(id)flag
{
  flagCopy = flag;
  if (self->_cancel_source == flagCopy)
  {
    v9 = _PKLogCategory(PKLogCategoryProgress[0]);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 67109634;
      printd_job_id = [(lite_job_t *)self printd_job_id];
      v12 = 1024;
      destination_job_id = [(lite_job_t *)self destination_job_id];
      v14 = 2112;
      v15 = flagCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[Job %d][%d] clearing cancel flag %@", &v10, 0x18u);
    }

    [(lite_job_t *)self _setupCancelSource];
  }

  else
  {
    v5 = _PKLogCategory(PKLogCategoryProgress[0]);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      printd_job_id2 = [(lite_job_t *)self printd_job_id];
      destination_job_id2 = [(lite_job_t *)self destination_job_id];
      cancel_source = self->_cancel_source;
      v10 = 67109890;
      printd_job_id = printd_job_id2;
      v12 = 1024;
      destination_job_id = destination_job_id2;
      v14 = 2112;
      v15 = cancel_source;
      v16 = 2112;
      v17 = flagCopy;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[Job %d][%d] _clearCancelFlag - already cleared (%@ currently, trying to clear %@)", &v10, 0x22u);
    }
  }
}

- (void)_setupCancelSource
{
  obj = self;
  objc_sync_enter(obj);
  [(lite_job_t *)obj _setupCancelSource0];
  objc_sync_exit(obj);
}

- (void)_setupCancelSource0
{
  v3 = dispatch_source_create(&_dispatch_source_type_data_add, 0, 0, &_dispatch_main_q);
  objc_initWeak(&location, self);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10001829C;
  handler[3] = &unk_1000A0510;
  objc_copyWeak(&v32, &location);
  v4 = v3;
  v31 = v4;
  dispatch_source_set_event_handler(v4, handler);
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_10001830C;
  v27[3] = &unk_1000A0538;
  objc_copyWeak(&v29, &location);
  v5 = v4;
  v28 = v5;
  v6 = objc_retainBlock(v27);
  zis_canceled = self->zis_canceled;
  self->zis_canceled = v6;

  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10001835C;
  v24[3] = &unk_1000A0510;
  objc_copyWeak(&v26, &location);
  v8 = v5;
  v25 = v8;
  v9 = objc_retainBlock(v24);
  zset_cancel_flag = self->zset_cancel_flag;
  self->zset_cancel_flag = v9;

  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1000183C0;
  v21[3] = &unk_1000A0510;
  objc_copyWeak(&v23, &location);
  v11 = v8;
  v22 = v11;
  v12 = objc_retainBlock(v21);
  zclear_cancel_flag = self->zclear_cancel_flag;
  self->zclear_cancel_flag = v12;

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100018424;
  v19[3] = &unk_1000A0560;
  v14 = v11;
  v20 = v14;
  v15 = objc_retainBlock(v19);
  zmake_progress = self->zmake_progress;
  self->zmake_progress = v15;

  cancel_source = self->_cancel_source;
  self->_cancel_source = v14;
  v18 = v14;

  dispatch_resume(self->_cancel_source);
  objc_destroyWeak(&v23);

  objc_destroyWeak(&v26);
  objc_destroyWeak(&v29);

  objc_destroyWeak(&v32);
  objc_destroyWeak(&location);
}

- (void)cancelNoLock
{
  if ([(lite_job_t *)self localJobState]== 5)
  {
    [(lite_job_t *)self set_cancel_flag];
    v3 = @"Canceling job.";
    selfCopy2 = self;
    v5 = 2048;
  }

  else
  {
    [qword_1000C7BE0 removeObject:self];
    [qword_1000C7BE8 removeObject:self];
    [(lite_job_t *)self setLocalJobState:7];
    [(lite_job_t *)self setCompletedTime:time(0)];
    [(lite_job_t *)self set_cancel_flag];
    v3 = @"Job canceled.";
    selfCopy2 = self;
    v5 = 0x2000;
  }

  [(lite_job_t *)selfCopy2 postGlobalNotification:v5 logMsg:v3];
  v6 = qword_1000C7BF0;
  if (qword_1000C7BF0)
  {

    dispatch_source_set_timer(v6, 0, 0xFFFFFFFFFFFFFFFFLL, 0);
  }
}

- (void)cancelThisJob
{
  pthread_mutex_lock(&stru_1000C7630);
  [(lite_job_t *)self cancelNoLock];

  pthread_mutex_unlock(&stru_1000C7630);
}

+ (void)cancelJob:(int)job
{
  pthread_mutex_lock(&stru_1000C7630);
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = qword_1000C7BE0;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = *v10;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v9 + 1) + 8 * i);
        if ([v8 printd:v9 job:?id] == job)
        {
          [v8 cancelNoLock];
          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  pthread_mutex_unlock(&stru_1000C7630);
}

- (id)addJobAndAllowToProceed
{
  addJobAndReturnLogMessageOnFailure = [(lite_job_t *)self addJobAndReturnLogMessageOnFailure];
  if (!addJobAndReturnLogMessageOnFailure)
  {
    pthread_mutex_lock(&stru_1000C7630);
    addJobAndReturnLogMessageOnFailure = [(lite_job_t *)self allowThisJobToProceedNoLock];
    pthread_mutex_unlock(&stru_1000C7630);
  }

  return addJobAndReturnLogMessageOnFailure;
}

+ (id)gatherLogInfo
{
  pthread_mutex_lock(&stru_1000C7630);
  v2 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = qword_1000C7BD8;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v17 count:16];
  if (v4)
  {
    v5 = *v12;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v3);
        }

        logInfo = [*(*(&v11 + 1) + 8 * i) logInfo];
        [v2 addObject:logInfo];
      }

      v4 = [v3 countByEnumeratingWithState:&v11 objects:v17 count:16];
    }

    while (v4);
  }

  pthread_mutex_unlock(&stru_1000C7630);
  v15[0] = @"jobs";
  v15[1] = @"tick";
  v16[0] = v2;
  qword_1000C7BF0 = [NSString stringWithFormat:@"Timer<%@>", qword_1000C7BF0];
  v16[1] = qword_1000C7BF0;
  v9 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:2];

  return v9;
}

- (id)logInfo
{
  v19[0] = @"isCanceled";
  if ([(lite_job_t *)self is_canceled])
  {
    v3 = @"yes";
  }

  else
  {
    v3 = @"no";
  }

  v20[0] = v3;
  v19[1] = @"printd_job_id";
  v18 = [NSNumber numberWithInt:self->_printd_job_id];
  v20[1] = v18;
  v19[2] = @"printer_job_id";
  v17 = [NSNumber numberWithInt:[(lite_job_t *)self destination_job_id]];
  v20[2] = v17;
  v19[3] = @"printer";
  printer = [(lite_job_t *)self printer];
  v15 = [printer debugDescription];
  v20[3] = v15;
  v19[4] = @"format";
  spoolDocumentFormat = [(lite_job_t *)self spoolDocumentFormat];
  v20[4] = spoolDocumentFormat;
  v19[5] = @"filename";
  spoolDocumentFilename = [(lite_job_t *)self spoolDocumentFilename];
  v20[5] = spoolDocumentFilename;
  v19[6] = @"state";
  v6 = jobStateString(self->_localJobState);
  v20[6] = v6;
  v19[7] = @"mediaProgress";
  v7 = [NSNumber numberWithInt:self->_mediaProgress];
  v20[7] = v7;
  v19[8] = @"ready_time";
  v8 = [NSDate dateWithTimeIntervalSince1970:[(lite_job_t *)self readyTime]];
  v20[8] = v8;
  v19[9] = @"ptr";
  v9 = [NSString stringWithFormat:@"<%@@%p>", objc_opt_class(), self];
  v20[9] = v9;
  v19[10] = @"in_active_jobs";
  if ([qword_1000C7BE0 containsObject:self])
  {
    v10 = @"yes";
  }

  else
  {
    v10 = @"no";
  }

  v20[10] = v10;
  v19[11] = @"in_processing_jobs";
  if ([qword_1000C7BE8 containsObject:self])
  {
    v11 = @"yes";
  }

  else
  {
    v11 = @"no";
  }

  v20[11] = v11;
  v19[12] = @"try_count";
  v12 = [NSNumber numberWithUnsignedInteger:[(lite_job_t *)self printTriesCount]];
  v20[12] = v12;
  v13 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:13];

  return v13;
}

- (NSString)description
{
  v3 = jobStateString(self->_localJobState);
  if (self->_localJobState == 5)
  {
    v4 = [NSString stringWithFormat:@"%@ %ld of %ld", v3, [(lite_job_t *)self payloadSent], [(lite_job_t *)self payloadTotal]];

    v3 = v4;
  }

  v8.receiver = self;
  v8.super_class = lite_job_t;
  v5 = [(lite_job_t *)&v8 description];
  v6 = [NSString stringWithFormat:@"%@ { local %d / remote %d %@ }", v5, self->_printd_job_id, [(lite_job_t *)self destination_job_id], v3];

  return v6;
}

- (NSString)debugDescription
{
  v3 = [(lite_job_t *)self description];
  logInfo = [(lite_job_t *)self logInfo];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, logInfo];

  return v5;
}

- (id)getJobAttributes:(BOOL)attributes
{
  attributesCopy = attributes;
  v5 = objc_opt_new();
  [v5 setLocalJobID:{-[lite_job_t printd_job_id](self, "printd_job_id")}];
  printer = [(lite_job_t *)self printer];
  bonjourName = [printer bonjourName];
  dataRepresentation = [bonjourName dataRepresentation];
  [v5 setPrinterEndpointData:dataRepresentation];

  printer2 = [(lite_job_t *)self printer];
  displayName = [printer2 displayName];
  [v5 setPrinterDisplayName:displayName];

  printer3 = [(lite_job_t *)self printer];
  location = [printer3 location];
  v13 = location;
  if (location)
  {
    v14 = location;
  }

  else
  {
    v14 = &stru_1000A4BB0;
  }

  [v5 setPrinterLocation:v14];

  printer4 = [(lite_job_t *)self printer];
  browseInfo = [printer4 browseInfo];
  bonjourName2 = [browseInfo bonjourName];
  if ([bonjourName2 provenance] == 8)
  {
    v18 = 3;
  }

  else
  {
    v18 = 4;
  }

  [v5 setPrinterKind:v18];

  printSettings = [(lite_job_t *)self printSettings];
  [v5 setSettings:printSettings];

  v20 = [NSDate dateWithTimeIntervalSince1970:self->_createdTime];
  [v5 setTimeAtCreation:v20];

  if (attributesCopy)
  {
    [v5 setThumbnailImage:self->_thumbnail];
  }

  [v5 setMediaSheetsCompleted:{-[lite_job_t sheetsCompleted](self, "sheetsCompleted")}];
  v21 = [NSDate dateWithTimeIntervalSince1970:[(lite_job_t *)self readyTime]];
  [v5 setTimeAtProcessing:v21];

  v22 = [NSDate dateWithTimeIntervalSince1970:[(lite_job_t *)self completedTime]];
  [v5 setTimeAtCompleted:v22];

  numberOfSheetsPerCopy = [(lite_job_t *)self numberOfSheetsPerCopy];
  request_attrs = [(lite_job_t *)self request_attrs];
  v25 = (*(request_attrs->var0 + 16))(request_attrs);
  if (v25 <= 1)
  {
    v26 = 1;
  }

  else
  {
    v26 = v25;
  }

  [v5 setMediaSheets:(v26 * numberOfSheetsPerCopy)];
  [v5 setMediaProgress:self->_mediaProgress];
  [v5 setRemoteJobId:{-[lite_job_t destination_job_id](self, "destination_job_id")}];
  printer5 = [(lite_job_t *)self printer];
  currentJob = [printer5 currentJob];

  if (currentJob == self)
  {
    printer6 = [(lite_job_t *)self printer];
    printerStateMessage = [printer6 printerStateMessage];
    [v5 setJobPrinterStateMessage:printerStateMessage];

    printer7 = [(lite_job_t *)self printer];
    printerStateReasons = [printer7 printerStateReasons];
    [v5 setJobPrinterStateReasons:printerStateReasons];
  }

  [v5 setJobStateMessage:&stru_1000A4BB0];
  selfCopy = self;
  localJobState = [(lite_job_t *)selfCopy localJobState];
  if (localJobState > 5)
  {
    switch(localJobState)
    {
      case 6:
        v35 = @"job-stopped";
        goto LABEL_31;
      case 8:
        v35 = @"aborted-by-system";
        goto LABEL_31;
      case 9:
        v35 = @"job-completed-successfully";
        goto LABEL_31;
    }

    goto LABEL_27;
  }

  if (localJobState == 3)
  {
    v35 = @"none";
    goto LABEL_31;
  }

  if (localJobState != 4)
  {
    if (localJobState == 5)
    {
      if ([(lite_job_t *)selfCopy is_canceled])
      {
        v35 = @"processing-to-stop-point";
      }

      else
      {
        v35 = @"job-printing";
      }

      goto LABEL_31;
    }

LABEL_27:
    v35 = @"job-canceled-by-user";
    goto LABEL_31;
  }

  jobPassword = [(lite_job_t *)selfCopy jobPassword];

  if (jobPassword)
  {
    v35 = @"job-password-wait";
  }

  else if (selfCopy->release_wait)
  {
    v35 = @"job-release-wait";
  }

  else
  {
    jobHoldUntil = [(lite_job_t *)selfCopy jobHoldUntil];

    if (jobHoldUntil)
    {
      v35 = @"job-hold-until-specified";
    }

    else
    {
      v35 = @"job-incoming";
    }
  }

LABEL_31:

  v37 = v35;
  v47 = v37;
  v38 = [NSArray arrayWithObjects:&v47 count:1];
  [v5 setJobStateReasons:v38];

  if ([(lite_job_t *)selfCopy localJobState]== 5 && [(lite_job_t *)selfCopy is_canceled])
  {
    localJobState2 = 10;
  }

  else
  {
    localJobState2 = [(lite_job_t *)selfCopy localJobState];
  }

  [v5 setState:localJobState2];
  jobPassword2 = [(lite_job_t *)selfCopy jobPassword];
  v41 = jobPassword2;
  if (jobPassword2)
  {
    v42 = [jobPassword2 length];
    v43 = v41;
    v44 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%.*s", v42, [v41 bytes]);
    [v5 setPIN:v44];
  }

  return v5;
}

- (void)postGlobalNotification:(unsigned int)notification logMsg:(id)msg
{
  msgCopy = msg;
  if ([msgCopy length])
  {
    v7 = _PKLogCategory(PKLogCategoryProgress[0]);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      printd_job_id = [(lite_job_t *)self printd_job_id];
      if (self)
      {
        destination_job_id = [(lite_job_t *)self destination_job_id];
      }

      else
      {
        destination_job_id = -1;
      }

      v16 = 67109634;
      v17 = printd_job_id;
      v18 = 1024;
      v19 = destination_job_id;
      v20 = 2112;
      v21 = msgCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[Job %d][%d] postGlobalNotification(%@)", &v16, 0x18u);
    }
  }

  if (notification >= 0x4000)
  {
    if (notification == 0x4000)
    {
LABEL_22:
      v13 = _PKLogCategory(PKLogCategoryProgress[0]);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        printd_job_id2 = [(lite_job_t *)self printd_job_id];
        if (self)
        {
          destination_job_id2 = [(lite_job_t *)self destination_job_id];
        }

        else
        {
          destination_job_id2 = -1;
        }

        v16 = 67109376;
        v17 = printd_job_id2;
        v18 = 1024;
        v19 = destination_job_id2;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[Job %d][%d] Sending com.apple.printd.job-list event", &v16, 0xEu);
      }

      quantized_notify_post(2u);
      goto LABEL_28;
    }

    if (notification != 0x10000 && notification != 0x8000)
    {
      goto LABEL_28;
    }
  }

  else if (notification != 2048)
  {
    if (notification != 4096 && notification != 0x2000)
    {
      goto LABEL_28;
    }

    goto LABEL_22;
  }

  v10 = _PKLogCategory(PKLogCategoryProgress[0]);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    printd_job_id3 = [(lite_job_t *)self printd_job_id];
    if (self)
    {
      destination_job_id3 = [(lite_job_t *)self destination_job_id];
    }

    else
    {
      destination_job_id3 = -1;
    }

    v16 = 67109376;
    v17 = printd_job_id3;
    v18 = 1024;
    v19 = destination_job_id3;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[Job %d][%d] Sending com.apple.printd.job-progress event", &v16, 0xEu);
  }

  quantized_notify_post(4u);
  if (notification != 0x10000)
  {
    goto LABEL_22;
  }

LABEL_28:
}

- (NSString)printer_driverformat
{
  printer = [(lite_job_t *)self printer];
  driverformat = [printer driverformat];

  return driverformat;
}

- (int)printer_preferred_landscape
{
  printer = [(lite_job_t *)self printer];
  preferred_landscape = [printer preferred_landscape];

  return preferred_landscape;
}

- (BOOL)is_canceled
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = (*(selfCopy->zis_canceled + 2))();
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)make_progress:(int64_t)make_progress
{
  obj = self;
  objc_sync_enter(obj);
  (*(obj->zmake_progress + 2))();
  objc_sync_exit(obj);
}

- (void)set_cancel_flag
{
  obj = self;
  objc_sync_enter(obj);
  (*(obj->zset_cancel_flag + 2))();
  objc_sync_exit(obj);
}

- (void)clear_cancel_flag
{
  obj = self;
  objc_sync_enter(obj);
  (*(obj->zclear_cancel_flag + 2))();
  objc_sync_exit(obj);
}

+ (void)getAllJobsCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v4 = objc_opt_new();
  v5 = objc_opt_new();
  pthread_mutex_lock(&stru_1000C7630);
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = qword_1000C7BD8;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        v11 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v10 printd:v13 job:?id]);
        [v4 addObject:v11];

        v12 = [v10 getJobAttributes:1];
        [v5 addObject:v12];
      }

      v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  pthread_mutex_unlock(&stru_1000C7630);
  handlerCopy[2](handlerCopy, v4, v5);
}

@end