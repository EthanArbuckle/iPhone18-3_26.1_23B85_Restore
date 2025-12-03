@interface BRCTLMonitor
- (BRCTLMonitor)init;
- (NSProgress)progressObserved;
- (id)_prettyDescriptionFromError:(id)error;
- (void)_checkIfQueryShouldStop:(id)stop;
- (void)dealloc;
- (void)monitorGlobalActivity;
- (void)monitorQuery:(id)query rootPath:(id)path;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)parseOption:(int)option arg:(const char *)arg;
@end

@implementation BRCTLMonitor

- (BRCTLMonitor)init
{
  v3.receiver = self;
  v3.super_class = BRCTLMonitor;
  result = [(BRCTLMonitor *)&v3 init];
  if (result)
  {
    result->_scopes = 7;
  }

  return result;
}

- (void)dealloc
{
  [NSProgress _removeSubscriber:self];
  v3.receiver = self;
  v3.super_class = BRCTLMonitor;
  [(BRCTLMonitor *)&v3 dealloc];
}

- (void)parseOption:(int)option arg:(const char *)arg
{
  if (option <= 111)
  {
    switch(option)
    {
      case 'S':
        if (!strcasecmp(arg, "docs"))
        {
          self->_scopes = 1;
        }

        if (!strcasecmp(arg, "data"))
        {
          self->_scopes = 2;
        }

        if (!strcasecmp(arg, "ext"))
        {
          self->_scopes = 4;
        }

        break;
      case 'g':
        self->_isGlobal = 1;
        break;
      case 'i':
        self->_incremental = 1;
        break;
    }
  }

  else if (option > 116)
  {
    if (option == 117)
    {
      self->_waitForStartUploading = 1;
    }

    else if (option == 119)
    {
      self->_waitForAllUploaded = 1;
    }
  }

  else if (option == 112)
  {
    self->_isStaticGathering = 1;
  }

  else if (option == 116)
  {
    if (arg)
    {
      v6 = [NSNumber numberWithInt:atoi(arg)];
      requestedTime = self->_requestedTime;
      self->_requestedTime = v6;

      _objc_release_x1();
    }

    else
    {
      v8 = self->_requestedTime;
      self->_requestedTime = 0;
    }
  }
}

- (void)monitorGlobalActivity
{
  puts("monitoring global activity...");
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100005D8C;
  v7[3] = &unk_100024F50;
  v7[4] = self;
  v3 = objc_retainBlock(v7);
  v4 = +[BRDaemonConnection mobileDocumentsURL];
  v5 = [NSProgress _addSubscriberForFileURL:v4 withPublishingHandler:v3];

  while (1)
  {
    v6 = +[NSRunLoop mainRunLoop];
    [v6 run];
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = objectCopy;
    progressObserved = [(BRCTLMonitor *)self progressObserved];
    v15 = [v13 isEqual:progressObserved];

    if (v15)
    {
      v16 = +[NSMutableString string];
      v17 = +[NSMutableArray array];
      localizedAdditionalDescription = [v13 localizedAdditionalDescription];
      v19 = [localizedAdditionalDescription length];

      [v13 localizedDescription];
      if (v19)
        v20 = {;
        localizedAdditionalDescription2 = [v13 localizedAdditionalDescription];
        v22 = [NSString stringWithFormat:@"%@ (%@)", v20, localizedAdditionalDescription2];
      }

      else
        v22 = {;
      }

      uTF8String = [v22 UTF8String];
      [v13 fractionCompleted];
      [v16 appendFormat:@"%-45s %5.1f%% ", uTF8String, v24 * 100.0];

      userInfo = [v13 userInfo];
      v26 = [userInfo objectForKeyedSubscript:NSProgressFileTotalCountKey];
      [v16 appendFormat:@"[fileCount: %@] ", v26];

      if ([v13 isFinished])
      {
        [v17 addObject:@"finished"];
      }

      if ([v13 isIndeterminate])
      {
        [v17 addObject:@"indeterminate"];
      }

      if ([v13 isCancelled])
      {
        [v17 addObject:@"cancelled"];
      }

      if ([v13 isPaused])
      {
        [v17 addObject:@"paused"];
      }

      if ([v17 count])
      {
        v27 = [v17 componentsJoinedByString:{@", "}];
        v28 = [NSString stringWithFormat:@"[%@]", v27];
      }

      else
      {
        v28 = &stru_1000263A8;
      }

      [v16 appendFormat:@"%-25s ", -[__CFString UTF8String](v28, "UTF8String")];
      previousDescription = [(BRCTLMonitor *)self previousDescription];
      v30 = [previousDescription isEqualToString:v16];

      if (v30)
      {
        [v16 length];
        [pathCopy UTF8String];
        printf("%*s (%s)\n");
      }

      else
      {
        [v16 UTF8String];
        [pathCopy UTF8String];
        printf("%s (%s)\n");
      }

      [(BRCTLMonitor *)self setPreviousDescription:v16];
    }
  }

  else
  {
    v31.receiver = self;
    v31.super_class = BRCTLMonitor;
    [(BRCTLMonitor *)&v31 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }
}

- (id)_prettyDescriptionFromError:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];
  v5 = [domain isEqualToString:NSCocoaErrorDomain];

  if (!v5)
  {
    goto LABEL_6;
  }

  if ([errorCopy code] == 4354)
  {
    v6 = @"pending-quota";
    goto LABEL_7;
  }

  if ([errorCopy code] == 4355)
  {
    v6 = @"offline";
  }

  else
  {
LABEL_6:
    v6 = [errorCopy description];
  }

LABEL_7:

  return v6;
}

- (void)_checkIfQueryShouldStop:(id)stop
{
  stopCopy = stop;
  v5 = brc_bread_crumbs();
  v6 = brc_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_100015140(v5, v6);
  }

  v7 = +[NSDate date];
  [v7 timeIntervalSinceDate:self->_startDate];
  v9 = v8;

  if (self->_startedUploading && self->_waitForStartUploading)
  {
    v11 = "Stopping the query because at least one item started uploading";
LABEL_13:
    puts(v11);
    v10 = 0;
LABEL_14:
    [(NSMetadataQuery *)self->_currentWatchedQuery stopQuery];
    [stopCopy invalidate];
    exit(v10);
  }

  if (self->_allUploaded && self->_waitForAllUploaded && self->_gatheringFinished)
  {
    v11 = "Stopping the query because all items are now uploaded";
    goto LABEL_13;
  }

  if (v9 > [(NSNumber *)self->_requestedTime unsignedLongLongValue])
  {
    v10 = 1;
    fwrite("Stopping the query since the timeout has elapsed\n", 0x31uLL, 1uLL, __stderrp);
    goto LABEL_14;
  }
}

- (void)monitorQuery:(id)query rootPath:(id)path
{
  queryCopy = query;
  pathCopy = path;
  v9 = [[BRCTermDumper alloc] initWithFd:1 forceColor:0];
  v10 = objc_alloc_init(NSOperationQueue);
  [v10 setMaxConcurrentOperationCount:1];
  [queryCopy _setExternalDocumentsBundleIdentifier:0];
  [queryCopy setOperationQueue:v10];
  objc_storeStrong(&self->_currentWatchedQuery, query);
  v41[0] = NSMetadataUbiquitousItemDownloadingStatusNotDownloaded;
  v41[1] = NSMetadataUbiquitousItemDownloadingStatusDownloaded;
  v42[0] = @"not downloaded";
  v42[1] = @"server edit to download";
  v11 = [NSDictionary dictionaryWithObjects:v42 forKeys:v41 count:2];
  v39[0] = NSMetadataUbiquitousSharedItemPermissionsReadOnly;
  v39[1] = NSMetadataUbiquitousSharedItemPermissionsReadWrite;
  v40[0] = @"r";
  v40[1] = @"rw";
  v12 = [NSDictionary dictionaryWithObjects:v40 forKeys:v39 count:2];
  v13 = +[NSDate date];
  startDate = self->_startDate;
  self->_startDate = v13;

  fileSystemRepresentation = [pathCopy fileSystemRepresentation];
  scopes = self->_scopes;
  v17 = BRCPrettyPrintBitmap();
  [v9 write:{"observing in %s for the %s scope(s)\n", fileSystemRepresentation, objc_msgSend(v17, "UTF8String")}];

  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_100006A14;
  v34[3] = &unk_100024F78;
  v18 = queryCopy;
  v34[4] = v18;
  v19 = v9;
  v34[5] = v19;
  v34[6] = self;
  v34[7] = pathCopy;
  v34[8] = v11;
  v34[9] = v12;
  v20 = objc_retainBlock(v34);
  v21 = +[NSNotificationCenter defaultCenter];
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_1000078C0;
  v33[3] = &unk_100024FA0;
  v22 = v20;
  v33[4] = v22;
  v23 = [v21 addObserverForName:NSMetadataQueryDidUpdateNotification object:v18 queue:v10 usingBlock:v33];

  v24 = +[NSNotificationCenter defaultCenter];
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_100007920;
  v32[3] = &unk_100024FC8;
  v32[4] = self;
  v32[6] = v22;
  v32[5] = v19;
  v25 = [v24 addObserverForName:NSMetadataQueryDidFinishGatheringNotification object:v18 queue:v10 usingBlock:v32];

  if (![v18 startQuery])
  {
    errx(1, "can't start query");
  }

  while (!self->_requestedTime)
  {
    if (self->_waitForAllUploaded || self->_waitForStartUploading)
    {
      goto LABEL_8;
    }

LABEL_9:
    v30 = +[NSRunLoop mainRunLoop];
    [v30 run];
  }

  v26 = brc_bread_crumbs();
  v27 = brc_default_log();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
  {
    requestedTime = self->_requestedTime;
    *buf = 138412546;
    v36 = requestedTime;
    v37 = 2112;
    v38 = v26;
    _os_log_debug_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEBUG, "[DEBUG] The user has requested to run the query for %@%@", buf, 0x16u);
  }

LABEL_8:
  v28 = [NSTimer timerWithTimeInterval:self target:"_checkIfQueryShouldStop:" selector:0 userInfo:1 repeats:1.0];
  v29 = +[NSRunLoop mainRunLoop];
  [v29 addTimer:v28 forMode:NSRunLoopCommonModes];

  goto LABEL_9;
}

- (NSProgress)progressObserved
{
  WeakRetained = objc_loadWeakRetained(&self->_progressObserved);

  return WeakRetained;
}

@end