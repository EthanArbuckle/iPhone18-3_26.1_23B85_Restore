@interface BRDiskCheckerService
+ (void)initialize;
- (BOOL)_isActiveJobsInDB:(id)b inZones:(id)zones;
- (BRDiskCheckerService)init;
- (id)_setupDatabaseConnectionFromURL:(id)l error:(id *)error;
- (void)cancelTreeConsistencyCheck;
- (void)checkRecursiveChildItemCountFromURLWrapper:(id)wrapper qualityOfService:(int64_t)service reply:(id)reply;
- (void)pauseTreeConsistencyCheck;
- (void)resumeTreeConsistencyCheckWithReply:(id)reply;
@end

@implementation BRDiskCheckerService

+ (void)initialize
{
  qword_100015698 = objc_opt_new();

  _objc_release_x1();
}

- (BRDiskCheckerService)init
{
  v8.receiver = self;
  v8.super_class = BRDiskCheckerService;
  v2 = [(BRDiskCheckerService *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSOperationQueue);
    childCountQueue = v2->_childCountQueue;
    v2->_childCountQueue = v3;

    [(NSOperationQueue *)v2->_childCountQueue setMaxConcurrentOperationCount:1];
    v5 = objc_alloc_init(NSOperationQueue);
    treeCheckQueue = v2->_treeCheckQueue;
    v2->_treeCheckQueue = v5;

    [(NSOperationQueue *)v2->_treeCheckQueue setMaxConcurrentOperationCount:1];
  }

  return v2;
}

- (void)checkRecursiveChildItemCountFromURLWrapper:(id)wrapper qualityOfService:(int64_t)service reply:(id)reply
{
  replyCopy = reply;
  v9 = [wrapper url];
  [v9 startAccessingSecurityScopedResource];
  v10 = [[BRDiskCheckerCountDocumentsOperation alloc] initWithFileURL:v9];
  [(BRDiskCheckerCountDocumentsOperation *)v10 setQualityOfService:service];
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_1000051C0;
  v16 = &unk_100010480;
  v17 = v9;
  v18 = replyCopy;
  v11 = replyCopy;
  v12 = v9;
  [(BRDiskCheckerCountDocumentsOperation *)v10 setCountFolderShareItemsCompletionBlock:&v13];
  [(NSOperationQueue *)self->_childCountQueue addOperation:v10, v13, v14, v15, v16];
}

- (void)pauseTreeConsistencyCheck
{
  obj = qword_100015698;
  objc_sync_enter(obj);
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = qword_100015698;
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v16 count:16];
  if (v3)
  {
    v4 = *v11;
    do
    {
      v5 = 0;
      do
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v10 + 1) + 8 * v5);
        v7 = brc_bread_crumbs();
        v8 = brc_default_log();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v15 = v7;
          _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "[DEBUG] Pausing consistency checker%@", buf, 0xCu);
        }

        [v6 pause];
        v5 = v5 + 1;
      }

      while (v3 != v5);
      v3 = [v2 countByEnumeratingWithState:&v10 objects:v16 count:16];
    }

    while (v3);
  }

  objc_sync_exit(obj);
}

- (void)resumeTreeConsistencyCheckWithReply:(id)reply
{
  replyCopy = reply;
  obj = qword_100015698;
  objc_sync_enter(obj);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = qword_100015698;
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v19 count:16];
  if (v4)
  {
    v5 = *v14;
    do
    {
      v6 = 0;
      do
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v13 + 1) + 8 * v6);
        v8 = brc_bread_crumbs();
        v9 = brc_default_log();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v18 = v8;
          _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "[DEBUG] Resuming the consistency checker%@", buf, 0xCu);
        }

        [v7 resume];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v3 countByEnumeratingWithState:&v13 objects:v19 count:16];
    }

    while (v4);
  }

  if ([qword_100015698 count])
  {
    replyCopy[2](replyCopy, 0);
  }

  else
  {
    v10 = [NSError brc_errorItemNotFound:@"operation"];
    (replyCopy)[2](replyCopy, v10);
  }

  objc_sync_exit(obj);
}

- (void)cancelTreeConsistencyCheck
{
  v2 = qword_100015698;
  objc_sync_enter(v2);
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = qword_100015698;
  v4 = [v3 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v4)
  {
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v7 + 1) + 8 * v6) cancel];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v3 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }

  objc_sync_exit(v2);
}

- (id)_setupDatabaseConnectionFromURL:(id)l error:(id *)error
{
  lCopy = l;
  v6 = [lCopy URLByAppendingPathComponent:@"client.db"];
  v7 = [lCopy URLByAppendingPathComponent:@"server.db"];

  v8 = brc_bread_crumbs();
  v9 = brc_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_100007D9C(v6, v8, v9);
  }

  v10 = [[BRCPQLConnection alloc] initWithLabel:@"telemetry-connection" dbCorruptionHandler:&stru_100010510];
  v25 = 0;
  v11 = [v10 openAtURL:v6 withFlags:1 error:&v25];
  v12 = v25;
  if (v11)
  {
    path = [v7 path];
    v24 = v12;
    v14 = [v10 attachDBAtPath:path as:@"server" error:&v24];
    v15 = v24;

    if (v14)
    {
      v16 = v10;
    }

    else
    {
      v20 = brc_bread_crumbs();
      v21 = brc_default_log();
      if (os_log_type_enabled(v21, 0x90u))
      {
        *buf = 138413058;
        v27 = v7;
        v28 = 2112;
        v29 = v6;
        v30 = 2112;
        v31 = v15;
        v32 = 2112;
        v33 = v20;
        _os_log_error_impl(&_mh_execute_header, v21, 0x90u, "[ERROR] error attaching db at url %@ to db %@: %@%@", buf, 0x2Au);
      }

      [v10 brc_close];
      if (error)
      {
        v22 = v15;
        v16 = 0;
        *error = v15;
      }

      else
      {
        v16 = 0;
      }
    }

    v12 = v15;
  }

  else
  {
    v17 = brc_bread_crumbs();
    v18 = brc_default_log();
    if (os_log_type_enabled(v18, 0x90u))
    {
      *buf = 138412802;
      v27 = v6;
      v28 = 2112;
      v29 = v12;
      v30 = 2112;
      v31 = v17;
      _os_log_error_impl(&_mh_execute_header, v18, 0x90u, "[ERROR] error opening db at url %@: %@%@", buf, 0x20u);
    }

    if (error)
    {
      v19 = v12;
      v16 = 0;
      *error = v12;
    }

    else
    {
      v16 = 0;
    }
  }

  return v16;
}

- (BOOL)_isActiveJobsInDB:(id)b inZones:(id)zones
{
  bCopy = b;
  zonesCopy = zones;
  if (bCopy)
  {
    [bCopy useSerialQueue];
    *&buf = 0;
    *(&buf + 1) = &buf;
    v16 = 0x2020000000;
    v17 = 0;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100006380;
    v11[3] = &unk_100010538;
    v12 = zonesCopy;
    v13 = bCopy;
    p_buf = &buf;
    [v13 performWithFlags:1 action:v11];
    v7 = *(*(&buf + 1) + 24);

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v8 = brc_bread_crumbs();
    v9 = brc_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[WARNING] no active jobs in nil (why?) db%@", &buf, 0xCu);
    }

    v7 = 0;
  }

  return v7 & 1;
}

@end