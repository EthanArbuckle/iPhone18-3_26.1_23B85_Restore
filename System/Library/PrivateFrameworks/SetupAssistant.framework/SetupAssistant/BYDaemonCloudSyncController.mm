@interface BYDaemonCloudSyncController
+ (id)sharedController;
- (BYDaemonCloudSyncController)init;
- (void)addDelegate:(id)a3;
- (void)cancelDaemonSync;
- (void)cancelNotesSync;
- (void)cancelSync;
- (void)cloudKitSyncer:(id)a3 didFinishWithError:(id)a4;
- (void)cloudKitSyncer:(id)a3 didUpdateProgress:(double)a4;
- (void)cloudSyncProgressUpdate:(int64_t)a3 completedClients:(int64_t)a4 errors:(id)a5;
- (void)dealloc;
- (void)isSyncInProgress:(id)a3;
- (void)needsToSyncClasses:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)removeDelegate:(id)a3;
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
  v3 = [(BYDaemonCloudSyncController *)self progress];

  if (v3)
  {
    v4 = [(BYDaemonCloudSyncController *)self progress];
    [v4 removeObserver:self forKeyPath:@"fractionCompleted"];
  }

  v5.receiver = self;
  v5.super_class = BYDaemonCloudSyncController;
  [(BYDaemonCloudSyncController *)&v5 dealloc];
}

- (void)needsToSyncClasses:(id)a3
{
  if (a3)
  {
    (*(a3 + 2))(a3, 2);
  }
}

- (void)startSync
{
  v3 = [(BYDaemonCloudSyncController *)self progress];
  if (v3 && (v4 = v3, -[BYDaemonCloudSyncController progress](self, "progress"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 isFinished], v5, v4, (v6 & 1) == 0))
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
    v13 = [(BYDaemonCloudSyncController *)self delegates];
    v14 = [v13 countByEnumeratingWithState:&v20 objects:v25 count:16];
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
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v20 + 1) + 8 * v17);
          v19 = [(BYDaemonCloudSyncController *)self progress];
          [v19 fractionCompleted];
          [v18 syncProgress:?];

          v17 = v17 + 1;
        }

        while (v15 != v17);
        v15 = [v13 countByEnumeratingWithState:&v20 objects:v25 count:16];
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
    v10 = [(BYDaemonCloudSyncController *)self progress];
    [v10 addObserver:self forKeyPath:@"fractionCompleted" options:0 context:0];

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
  v3 = [(BYDaemonCloudSyncController *)self progress];

  if (v3)
  {
    v4 = [(BYDaemonCloudSyncController *)self progress];
    v5 = [v4 isFinished];

    v6 = _BYLoggingFacility();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (v5)
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
      v10 = [(BYDaemonCloudSyncController *)self delegates];
      v11 = [v10 countByEnumeratingWithState:&v15 objects:v20 count:16];
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
              objc_enumerationMutation(v10);
            }

            [*(*(&v15 + 1) + 8 * i) syncCompletedWithErrors:v9];
          }

          v12 = [v10 countByEnumeratingWithState:&v15 objects:v20 count:16];
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

- (void)isSyncInProgress:(id)a3
{
  if (a3)
  {
    v5 = (a3 + 16);
    v6 = a3;
    v9 = [(BYDaemonCloudSyncController *)self progress];
    if (v9)
    {
      v3 = [(BYDaemonCloudSyncController *)self progress];
      v7 = [v3 isFinished] ^ 1;
    }

    else
    {
      v7 = 0;
    }

    v8 = [(BYDaemonCloudSyncController *)self progress];
    [v8 fractionCompleted];
    (*v5)(v6, v7);

    if (v9)
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

  v4 = [(BYDaemonCloudSyncController *)self progress];
  v5 = [NSProgress progressWithTotalUnitCount:1 parent:v4 pendingUnitCount:1];
  [(BYDaemonCloudSyncController *)self setNotesProgress:v5];

  v6 = [[BYNotesSyncTask alloc] initAndStartSyncWithDelegate:self];
  [(BYDaemonCloudSyncController *)self setNotesSync:v6];
}

- (void)cancelNotesSync
{
  v3 = [(BYDaemonCloudSyncController *)self notesSync];
  [v3 cancel];

  [(BYDaemonCloudSyncController *)self setNotesSync:0];
}

- (void)addDelegate:(id)a3
{
  v4 = a3;
  v5 = [(BYDaemonCloudSyncController *)self delegates];
  [v5 addObject:v4];
}

- (void)removeDelegate:(id)a3
{
  v4 = a3;
  v5 = [(BYDaemonCloudSyncController *)self delegates];
  [v5 removeObject:v4];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v7 = a4;
  v8 = [(BYDaemonCloudSyncController *)self progress];

  if (v8 == v7)
  {
    v9 = [(BYDaemonCloudSyncController *)self progress];
    v10 = [v9 isFinished];

    v11 = _BYLoggingFacility();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (v10)
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
      v13 = [(BYDaemonCloudSyncController *)self delegates];
      v14 = [v13 countByEnumeratingWithState:&v33 objects:v40 count:16];
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
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v33 + 1) + 8 * v17);
            v19 = [(BYDaemonCloudSyncController *)self errors];
            [v18 syncCompletedWithErrors:v19];

            v17 = v17 + 1;
          }

          while (v15 != v17);
          v15 = [v13 countByEnumeratingWithState:&v33 objects:v40 count:16];
        }

        while (v15);
      }

      [(BYDaemonCloudSyncController *)self setTransaction:0];
    }

    else
    {
      if (v12)
      {
        v20 = [(BYDaemonCloudSyncController *)self progress];
        [v20 fractionCompleted];
        *buf = 134217984;
        v39 = v21;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "iCloud sync progress: %.2f", buf, 0xCu);
      }

      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v22 = [(BYDaemonCloudSyncController *)self delegates];
      v23 = [v22 countByEnumeratingWithState:&v29 objects:v37 count:16];
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
              objc_enumerationMutation(v22);
            }

            v27 = *(*(&v29 + 1) + 8 * v26);
            v28 = [(BYDaemonCloudSyncController *)self progress];
            [v28 fractionCompleted];
            [v27 syncProgress:?];

            v26 = v26 + 1;
          }

          while (v24 != v26);
          v24 = [v22 countByEnumeratingWithState:&v29 objects:v37 count:16];
        }

        while (v24);
      }
    }
  }
}

- (void)cloudKitSyncer:(id)a3 didFinishWithError:(id)a4
{
  v6 = a4;
  v7 = _BYLoggingFacility();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      v9 = _BYIsInternalInstall();
      v10 = v6;
      if ((v9 & 1) == 0)
      {
        v4 = [v6 domain];
        v10 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", v4, [v6 code]);
      }

      *buf = 138543362;
      v16 = v10;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Failed to upload all notes: %{public}@", buf, 0xCu);
      if ((v9 & 1) == 0)
      {
      }
    }

    v7 = [(BYDaemonCloudSyncController *)self errors];
    v11 = [NSError errorWithDomain:BYCloudSyncErrorDomain code:2 userInfo:0];
    [v7 addObject:v11];
  }

  else if (v8)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Successfully uploaded all notes", buf, 2u);
  }

  v12 = [(BYDaemonCloudSyncController *)self notesProgress];
  v13 = [v12 totalUnitCount];
  v14 = [(BYDaemonCloudSyncController *)self notesProgress];
  [v14 setCompletedUnitCount:v13];
}

- (void)cloudKitSyncer:(id)a3 didUpdateProgress:(double)a4
{
  v5 = a4;
  v6 = [(BYDaemonCloudSyncController *)self notesProgress];
  [v6 setCompletedUnitCount:v5];

  v7 = _BYLoggingFacility();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [(BYDaemonCloudSyncController *)self notesProgress];
    [v8 fractionCompleted];
    v10 = 134217984;
    v11 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Notes progress: %.2f", &v10, 0xCu);
  }
}

- (void)startDaemonSync
{
  v2 = [sub_10000EC9C() userContext];
  v3 = [sub_10000ED7C() keyPathWithKey:@"/backup/userRequested"];
  [v2 setObject:&__kCFBooleanTrue forKeyedSubscript:v3];
  v4 = _BYLoggingFacility();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Daemon sync initiated", v5, 2u);
  }
}

- (void)cancelDaemonSync
{
  v3 = [sub_10000EC9C() userContext];
  v4 = [sub_10000ED7C() keyPathWithKey:@"/backup/userRequested"];
  [v3 setObject:&__kCFBooleanFalse forKeyedSubscript:v4];
  [(BYDaemonCloudSyncController *)self setDaemonProgress:0];
  v5 = _BYLoggingFacility();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Daemon sync cancelled", v6, 2u);
  }
}

- (void)cloudSyncProgressUpdate:(int64_t)a3 completedClients:(int64_t)a4 errors:(id)a5
{
  v8 = a5;
  v9 = [(BYDaemonCloudSyncController *)self daemonProgress];

  if (a3 >= 1 && !v9)
  {
    v10 = [(BYDaemonCloudSyncController *)self progress];
    v11 = [NSProgress progressWithTotalUnitCount:a3 parent:v10 pendingUnitCount:1];
    [(BYDaemonCloudSyncController *)self setDaemonProgress:v11];
  }

  v12 = [v8 count];
  v13 = _BYLoggingFacility();
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
  if (v12)
  {
    if (!v14)
    {
      goto LABEL_10;
    }

    v21 = 134218754;
    v22 = a4;
    v23 = 2048;
    v24 = a3;
    v25 = 2048;
    v26 = [v8 count];
    v27 = 2112;
    v28 = v8;
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
    v22 = a4;
    v23 = 2048;
    v24 = a3;
    v15 = "Daemon sync progress update %ld of %ld completed.";
    v16 = v13;
    v17 = 22;
  }

  _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, v15, &v21, v17);
LABEL_10:

  if (a3 < 1)
  {
    v20 = [(BYDaemonCloudSyncController *)self progress];
    [v20 setCompletedUnitCount:{objc_msgSend(v20, "completedUnitCount") + 1}];
    goto LABEL_15;
  }

  v18 = [v8 count] + a4;
  v19 = [(BYDaemonCloudSyncController *)self daemonProgress];
  [v19 setCompletedUnitCount:v18];

  if (v18 == a3 && [v8 count])
  {
    v20 = [(BYDaemonCloudSyncController *)self errors];
    [v20 addObjectsFromArray:v8];
LABEL_15:
  }
}

@end