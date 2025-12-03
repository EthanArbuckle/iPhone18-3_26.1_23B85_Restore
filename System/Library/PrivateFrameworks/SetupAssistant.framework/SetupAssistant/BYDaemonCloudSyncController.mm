@interface BYDaemonCloudSyncController
+ (id)sharedController;
- (BYDaemonCloudSyncController)init;
- (void)addDelegate:(id)delegate;
- (void)cancelDaemonSync;
- (void)cancelNotesSync;
- (void)cancelSync;
- (void)cloudKitSyncer:(id)syncer didFinishWithError:(id)error;
- (void)cloudKitSyncer:(id)syncer didUpdateProgress:(double)progress;
- (void)cloudSyncProgressUpdate:(int64_t)update completedClients:(int64_t)clients errors:(id)errors;
- (void)dealloc;
- (void)isSyncInProgress:(id)progress;
- (void)needsToSyncClasses:(id)classes;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)removeDelegate:(id)delegate;
- (void)startDaemonSync;
- (void)startNotesSync;
- (void)startSync;
@end

@implementation BYDaemonCloudSyncController

+ (id)sharedController
{
  if (qword_100028CF8 != -1)
  {
    sub_1000111A8();
  }

  v3 = qword_100028D00;

  return v3;
}

- (BYDaemonCloudSyncController)init
{
  v5.receiver = self;
  v5.super_class = BYDaemonCloudSyncController;
  v2 = [(BYDaemonCloudSyncController *)&v5 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableArray);
    [(BYDaemonCloudSyncController *)v2 setDelegates:v3];
  }

  return v2;
}

- (void)dealloc
{
  progress = [(BYDaemonCloudSyncController *)self progress];

  if (progress)
  {
    progress2 = [(BYDaemonCloudSyncController *)self progress];
    [progress2 removeObserver:self forKeyPath:@"fractionCompleted"];
  }

  v5.receiver = self;
  v5.super_class = BYDaemonCloudSyncController;
  [(BYDaemonCloudSyncController *)&v5 dealloc];
}

- (void)needsToSyncClasses:(id)classes
{
  if (classes)
  {
    (*(classes + 2))(classes, 2);
  }
}

- (void)startSync
{
  progress = [(BYDaemonCloudSyncController *)self progress];
  if (progress && (v4 = progress, -[BYDaemonCloudSyncController progress](self, "progress"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 isFinished], v5, v4, (v6 & 1) == 0))
  {
    v12 = _BYLoggingFacility();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "A sync is already occurring; not starting a new one...", buf, 2u);
    }

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    delegates = [(BYDaemonCloudSyncController *)self delegates];
    v14 = [delegates countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v21;
      do
      {
        v17 = 0;
        do
        {
          if (*v21 != v16)
          {
            objc_enumerationMutation(delegates);
          }

          v18 = *(*(&v20 + 1) + 8 * v17);
          progress2 = [(BYDaemonCloudSyncController *)self progress];
          [progress2 fractionCompleted];
          [v18 syncProgress:?];

          v17 = v17 + 1;
        }

        while (v15 != v17);
        v15 = [delegates countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v15);
    }
  }

  else
  {
    v7 = os_transaction_create();
    [(BYDaemonCloudSyncController *)self setTransaction:v7];

    v8 = objc_alloc_init(NSMutableArray);
    [(BYDaemonCloudSyncController *)self setErrors:v8];

    v9 = [NSProgress progressWithTotalUnitCount:2];
    [(BYDaemonCloudSyncController *)self setProgress:v9];

    [(BYDaemonCloudSyncController *)self setDaemonProgress:0];
    progress3 = [(BYDaemonCloudSyncController *)self progress];
    [progress3 addObserver:self forKeyPath:@"fractionCompleted" options:0 context:0];

    v11 = _BYLoggingFacility();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Starting sync...", buf, 2u);
    }

    [(BYDaemonCloudSyncController *)self startNotesSync];
    [(BYDaemonCloudSyncController *)self startDaemonSync];
  }
}

- (void)cancelSync
{
  progress = [(BYDaemonCloudSyncController *)self progress];

  if (progress)
  {
    progress2 = [(BYDaemonCloudSyncController *)self progress];
    isFinished = [progress2 isFinished];

    v6 = _BYLoggingFacility();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (isFinished)
    {
      if (v7)
      {
        *buf = 0;
        v8 = "Current sync is already completed!";
LABEL_7:
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v8, buf, 2u);
      }
    }

    else
    {
      if (v7)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Stopping sync...", buf, 2u);
      }

      [(BYDaemonCloudSyncController *)self cancelNotesSync];
      [(BYDaemonCloudSyncController *)self cancelDaemonSync];
      [(BYDaemonCloudSyncController *)self setProgress:0];
      v6 = [NSError errorWithDomain:BYCloudSyncErrorDomain code:1 userInfo:0];
      v21 = v6;
      v9 = [NSArray arrayWithObjects:&v21 count:1];
      v15 = 0u;
      v16 = 0u;
      v17 = 0u;
      v18 = 0u;
      delegates = [(BYDaemonCloudSyncController *)self delegates];
      v11 = [delegates countByEnumeratingWithState:&v15 objects:v20 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v16;
        do
        {
          for (i = 0; i != v12; i = i + 1)
          {
            if (*v16 != v13)
            {
              objc_enumerationMutation(delegates);
            }

            [*(*(&v15 + 1) + 8 * i) syncCompletedWithErrors:v9];
          }

          v12 = [delegates countByEnumeratingWithState:&v15 objects:v20 count:16];
        }

        while (v12);
      }

      [(BYDaemonCloudSyncController *)self setTransaction:0];
    }
  }

  else
  {
    v6 = _BYLoggingFacility();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v8 = "No sync currently running";
      goto LABEL_7;
    }
  }
}

- (void)isSyncInProgress:(id)progress
{
  if (progress)
  {
    v5 = (progress + 16);
    progressCopy = progress;
    progress = [(BYDaemonCloudSyncController *)self progress];
    if (progress)
    {
      progress2 = [(BYDaemonCloudSyncController *)self progress];
      v7 = [progress2 isFinished] ^ 1;
    }

    else
    {
      v7 = 0;
    }

    progress3 = [(BYDaemonCloudSyncController *)self progress];
    [progress3 fractionCompleted];
    (*v5)(progressCopy, v7);

    if (progress)
    {
    }
  }
}

- (void)startNotesSync
{
  v3 = _BYLoggingFacility();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Starting sync for notes...", v7, 2u);
  }

  progress = [(BYDaemonCloudSyncController *)self progress];
  v5 = [NSProgress progressWithTotalUnitCount:1 parent:progress pendingUnitCount:1];
  [(BYDaemonCloudSyncController *)self setNotesProgress:v5];

  v6 = [[BYNotesSyncTask alloc] initAndStartSyncWithDelegate:self];
  [(BYDaemonCloudSyncController *)self setNotesSync:v6];
}

- (void)cancelNotesSync
{
  notesSync = [(BYDaemonCloudSyncController *)self notesSync];
  [notesSync cancel];

  [(BYDaemonCloudSyncController *)self setNotesSync:0];
}

- (void)addDelegate:(id)delegate
{
  delegateCopy = delegate;
  delegates = [(BYDaemonCloudSyncController *)self delegates];
  [delegates addObject:delegateCopy];
}

- (void)removeDelegate:(id)delegate
{
  delegateCopy = delegate;
  delegates = [(BYDaemonCloudSyncController *)self delegates];
  [delegates removeObject:delegateCopy];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  objectCopy = object;
  progress = [(BYDaemonCloudSyncController *)self progress];

  if (progress == objectCopy)
  {
    progress2 = [(BYDaemonCloudSyncController *)self progress];
    isFinished = [progress2 isFinished];

    v11 = _BYLoggingFacility();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (isFinished)
    {
      if (v12)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "iCloud sync has completed!", buf, 2u);
      }

      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      delegates = [(BYDaemonCloudSyncController *)self delegates];
      v14 = [delegates countByEnumeratingWithState:&v33 objects:v40 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v34;
        do
        {
          v17 = 0;
          do
          {
            if (*v34 != v16)
            {
              objc_enumerationMutation(delegates);
            }

            v18 = *(*(&v33 + 1) + 8 * v17);
            errors = [(BYDaemonCloudSyncController *)self errors];
            [v18 syncCompletedWithErrors:errors];

            v17 = v17 + 1;
          }

          while (v15 != v17);
          v15 = [delegates countByEnumeratingWithState:&v33 objects:v40 count:16];
        }

        while (v15);
      }

      [(BYDaemonCloudSyncController *)self setTransaction:0];
    }

    else
    {
      if (v12)
      {
        progress3 = [(BYDaemonCloudSyncController *)self progress];
        [progress3 fractionCompleted];
        *buf = 134217984;
        v39 = v21;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "iCloud sync progress: %.2f", buf, 0xCu);
      }

      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      delegates2 = [(BYDaemonCloudSyncController *)self delegates];
      v23 = [delegates2 countByEnumeratingWithState:&v29 objects:v37 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v30;
        do
        {
          v26 = 0;
          do
          {
            if (*v30 != v25)
            {
              objc_enumerationMutation(delegates2);
            }

            v27 = *(*(&v29 + 1) + 8 * v26);
            progress4 = [(BYDaemonCloudSyncController *)self progress];
            [progress4 fractionCompleted];
            [v27 syncProgress:?];

            v26 = v26 + 1;
          }

          while (v24 != v26);
          v24 = [delegates2 countByEnumeratingWithState:&v29 objects:v37 count:16];
        }

        while (v24);
      }
    }
  }
}

- (void)cloudKitSyncer:(id)syncer didFinishWithError:(id)error
{
  errorCopy = error;
  errors = _BYLoggingFacility();
  v8 = os_log_type_enabled(errors, OS_LOG_TYPE_DEFAULT);
  if (errorCopy)
  {
    if (v8)
    {
      v9 = _BYIsInternalInstall();
      v10 = errorCopy;
      if ((v9 & 1) == 0)
      {
        domain = [errorCopy domain];
        v10 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", domain, [errorCopy code]);
      }

      *buf = 138543362;
      v16 = v10;
      _os_log_impl(&_mh_execute_header, errors, OS_LOG_TYPE_DEFAULT, "Failed to upload all notes: %{public}@", buf, 0xCu);
      if ((v9 & 1) == 0)
      {
      }
    }

    errors = [(BYDaemonCloudSyncController *)self errors];
    v11 = [NSError errorWithDomain:BYCloudSyncErrorDomain code:2 userInfo:0];
    [errors addObject:v11];
  }

  else if (v8)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, errors, OS_LOG_TYPE_DEFAULT, "Successfully uploaded all notes", buf, 2u);
  }

  notesProgress = [(BYDaemonCloudSyncController *)self notesProgress];
  totalUnitCount = [notesProgress totalUnitCount];
  notesProgress2 = [(BYDaemonCloudSyncController *)self notesProgress];
  [notesProgress2 setCompletedUnitCount:totalUnitCount];
}

- (void)cloudKitSyncer:(id)syncer didUpdateProgress:(double)progress
{
  progressCopy = progress;
  notesProgress = [(BYDaemonCloudSyncController *)self notesProgress];
  [notesProgress setCompletedUnitCount:progressCopy];

  v7 = _BYLoggingFacility();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    notesProgress2 = [(BYDaemonCloudSyncController *)self notesProgress];
    [notesProgress2 fractionCompleted];
    v10 = 134217984;
    v11 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Notes progress: %.2f", &v10, 0xCu);
  }
}

- (void)startDaemonSync
{
  userContext = [sub_10000EC9C() userContext];
  v3 = [sub_10000ED7C() keyPathWithKey:@"/backup/userRequested"];
  [userContext setObject:&__kCFBooleanTrue forKeyedSubscript:v3];
  v4 = _BYLoggingFacility();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Daemon sync initiated", v5, 2u);
  }
}

- (void)cancelDaemonSync
{
  userContext = [sub_10000EC9C() userContext];
  v4 = [sub_10000ED7C() keyPathWithKey:@"/backup/userRequested"];
  [userContext setObject:&__kCFBooleanFalse forKeyedSubscript:v4];
  [(BYDaemonCloudSyncController *)self setDaemonProgress:0];
  v5 = _BYLoggingFacility();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Daemon sync cancelled", v6, 2u);
  }
}

- (void)cloudSyncProgressUpdate:(int64_t)update completedClients:(int64_t)clients errors:(id)errors
{
  errorsCopy = errors;
  daemonProgress = [(BYDaemonCloudSyncController *)self daemonProgress];

  if (update >= 1 && !daemonProgress)
  {
    progress = [(BYDaemonCloudSyncController *)self progress];
    v11 = [NSProgress progressWithTotalUnitCount:update parent:progress pendingUnitCount:1];
    [(BYDaemonCloudSyncController *)self setDaemonProgress:v11];
  }

  v12 = [errorsCopy count];
  v13 = _BYLoggingFacility();
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
  if (v12)
  {
    if (!v14)
    {
      goto LABEL_10;
    }

    v21 = 134218754;
    clientsCopy2 = clients;
    v23 = 2048;
    updateCopy2 = update;
    v25 = 2048;
    v26 = [errorsCopy count];
    v27 = 2112;
    v28 = errorsCopy;
    v15 = "Daemon sync progress update %ld of %ld completed with %ld errors: %@";
    v16 = v13;
    v17 = 42;
  }

  else
  {
    if (!v14)
    {
      goto LABEL_10;
    }

    v21 = 134218240;
    clientsCopy2 = clients;
    v23 = 2048;
    updateCopy2 = update;
    v15 = "Daemon sync progress update %ld of %ld completed.";
    v16 = v13;
    v17 = 22;
  }

  _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, v15, &v21, v17);
LABEL_10:

  if (update < 1)
  {
    progress2 = [(BYDaemonCloudSyncController *)self progress];
    [progress2 setCompletedUnitCount:{objc_msgSend(progress2, "completedUnitCount") + 1}];
    goto LABEL_15;
  }

  v18 = [errorsCopy count] + clients;
  daemonProgress2 = [(BYDaemonCloudSyncController *)self daemonProgress];
  [daemonProgress2 setCompletedUnitCount:v18];

  if (v18 == update && [errorsCopy count])
  {
    progress2 = [(BYDaemonCloudSyncController *)self errors];
    [progress2 addObjectsFromArray:errorsCopy];
LABEL_15:
  }
}

@end