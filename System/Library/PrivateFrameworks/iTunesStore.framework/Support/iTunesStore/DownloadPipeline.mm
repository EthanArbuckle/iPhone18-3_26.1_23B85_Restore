@interface DownloadPipeline
- (BOOL)_downloadIsForLegacyClientWithIdentifier:(id)identifier;
- (BOOL)_hasAutomaticUpdateTasks;
- (BOOL)_isPodcast:(id)podcast;
- (DownloadPipeline)initWithDownloadsDatabase:(id)database;
- (id)_applicationBundleIdentifierForDownloadIdentifier:(int64_t)identifier databaseTransaction:(id)transaction;
- (id)_applicationHandleForDownloadIdentifier:(int64_t)identifier databaseTransaction:(id)transaction;
- (id)_authenticationChallengeQueue;
- (id)_downloadSessionPropertiesWithPhase:(id)phase taskState:(id)state databaseSession:(id)session;
- (id)restartDownloadsWithIdentifiers:(id)identifiers;
- (void)URLSession:(id)session _willRetryBackgroundDataTask:(id)task withError:(id)error;
- (void)URLSession:(id)session aggregateAssetDownloadTask:(id)task didCompleteForMediaSelection:(id)selection;
- (void)URLSession:(id)session aggregateAssetDownloadTask:(id)task didLoadTimeRange:(id *)range totalTimeRangesLoaded:(id)loaded timeRangeExpectedToLoad:(id *)load forMediaSelection:(id)selection;
- (void)URLSession:(id)session aggregateAssetDownloadTask:(id)task willDownloadToURL:(id)l;
- (void)URLSession:(id)session assetDownloadTask:(id)task didLoadTimeRange:(id *)range totalTimeRangesLoaded:(id)loaded timeRangeExpectedToLoad:(id *)load;
- (void)URLSession:(id)session avAssetDownloadTask:(id)task didWriteData:(int64_t)data totalBytesWritten:(int64_t)written totalBytesExpectedToWrite:(int64_t)write;
- (void)URLSession:(id)session dataTask:(id)task didReceiveData:(id)data;
- (void)URLSession:(id)session dataTask:(id)task didReceiveResponse:(id)response completionHandler:(id)handler;
- (void)URLSession:(id)session task:(id)task _willSendRequestForEstablishedConnection:(id)connection completionHandler:(id)handler;
- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error;
- (void)URLSession:(id)session task:(id)task didReceiveChallenge:(id)challenge completionHandler:(id)handler;
- (void)_attemptRecoveryForDownloadWithTaskState:(id)state databaseSession:(id)session;
- (void)_commitProgressTimer;
- (void)_disavowDownloadHandlerSession:(id)session withTaskState:(id)state;
- (void)_failDownloadWithIdentifier:(id)identifier error:(id)error transaction:(id)transaction;
- (void)_finishDownloadWithOperation:(id)operation response:(id)response;
- (void)_finishRecoveryWithOperation:(id)operation response:(id)response;
- (void)_logDownloadEvent:(id)event forTaskWithState:(id)state session:(id)session;
- (void)_performDefaultHandlingForAuthenticationChallenge:(id)challenge withSessionProperties:(id)properties completionHandler:(id)handler;
- (void)_performDownloadOperation:(id)operation;
- (void)_prepareDownloadsMatchingPredicate:(id)predicate ignoreDownloadHandlers:(BOOL)handlers filtersExistingTasks:(BOOL)tasks;
- (void)_processDownloadFailureWithTaskState:(id)state cancelReason:(int64_t)reason;
- (void)_processDownloadWithTaskState:(id)state databaseSession:(id)session setupBlock:(id)block;
- (void)_queueFinishDownloadWithtaskState:(id)state databaseSession:(id)session setupBlock:(id)block;
- (void)_releaseDownloadHandlerSession:(id)session withTaskState:(id)state;
- (void)_reloadKeepAliveAssertion;
- (void)_reportTVAppDownloadQOSMetricsIfAppropriateForKind:(id)kind adamID:(id)d rentalID:(id)iD error:(id)error cancelReason:(int64_t)reason;
- (void)_scheduleReconnect;
- (void)_setDownloadPhase:(id)phase forDownloadIdentifier:(int64_t)identifier databaseTransaction:(id)transaction;
- (void)_startProgressTimer;
- (void)_taskReceived:(id)received persistAVAssetDownloadToken:(unint64_t)token;
- (void)addDownloadsWithIdentifiers:(id)identifiers;
- (void)dealloc;
- (void)downloadAssetFairPlayStreamingKeyLoader:(id)loader didFailWithError:(id)error;
- (void)operation:(id)operation updatedProgress:(id)progress;
- (void)prioritizeDownloadWithIdentifier:(id)identifier;
- (void)reconnectWithURLSessionTasks;
- (void)stopDownloadsWithIdentifiers:(id)identifiers reason:(int64_t)reason;
- (void)updateAfterSessionsChanged:(id)changed;
@end

@implementation DownloadPipeline

- (DownloadPipeline)initWithDownloadsDatabase:(id)database
{
  databaseCopy = database;
  v35.receiver = self;
  v35.super_class = DownloadPipeline;
  v6 = [(DownloadPipeline *)&v35 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_database, database);
    v8 = [[NSMapTable alloc] initWithKeyOptions:512 valueOptions:0 capacity:0];
    aggregateDownloadProgress = v7->_aggregateDownloadProgress;
    v7->_aggregateDownloadProgress = v8;

    v10 = objc_alloc_init(ISOperationQueue);
    backgroundOperationQueue = v7->_backgroundOperationQueue;
    v7->_backgroundOperationQueue = v10;

    [(ISOperationQueue *)v7->_backgroundOperationQueue setAdjustsMaxConcurrentOperationCount:0];
    [(ISOperationQueue *)v7->_backgroundOperationQueue setMaxConcurrentOperationCount:1];
    [(ISOperationQueue *)v7->_backgroundOperationQueue setName:@"com.apple.itunesstored.DownloadPipeline.background"];
    v12 = objc_alloc_init(ISOperationQueue);
    preparationOperationQueue = v7->_preparationOperationQueue;
    v7->_preparationOperationQueue = v12;

    [(ISOperationQueue *)v7->_preparationOperationQueue setAdjustsMaxConcurrentOperationCount:0];
    [(ISOperationQueue *)v7->_preparationOperationQueue setMaxConcurrentOperationCount:1];
    [(ISOperationQueue *)v7->_preparationOperationQueue setName:@"com.apple.itunesstored.DownloadPipeline.prepare"];
    v14 = objc_alloc_init(ISOperationQueue);
    processingOperationQueue = v7->_processingOperationQueue;
    v7->_processingOperationQueue = v14;

    [(ISOperationQueue *)v7->_processingOperationQueue setAdjustsMaxConcurrentOperationCount:0];
    [(ISOperationQueue *)v7->_processingOperationQueue setMaxConcurrentOperationCount:3];
    [(ISOperationQueue *)v7->_processingOperationQueue setName:@"com.apple.itunesstored.DownloadPipeline.processing"];
    v16 = objc_alloc_init(ISOperationQueue);
    discretionaryDownloadOperationQueue = v7->_discretionaryDownloadOperationQueue;
    v7->_discretionaryDownloadOperationQueue = v16;

    [(ISOperationQueue *)v7->_discretionaryDownloadOperationQueue setAdjustsMaxConcurrentOperationCount:0];
    [(ISOperationQueue *)v7->_discretionaryDownloadOperationQueue setMaxConcurrentOperationCount:3];
    [(ISOperationQueue *)v7->_discretionaryDownloadOperationQueue setName:@"com.apple.itunesstored.DownloadPipeline.discretionaryDownloads"];
    v18 = objc_alloc_init(ISOperationQueue);
    nonDiscretionaryDownloadOperationQueue = v7->_nonDiscretionaryDownloadOperationQueue;
    v7->_nonDiscretionaryDownloadOperationQueue = v18;

    [(ISOperationQueue *)v7->_nonDiscretionaryDownloadOperationQueue setAdjustsMaxConcurrentOperationCount:0];
    [(ISOperationQueue *)v7->_nonDiscretionaryDownloadOperationQueue setMaxConcurrentOperationCount:3];
    [(ISOperationQueue *)v7->_nonDiscretionaryDownloadOperationQueue setName:@"com.apple.itunesstored.DownloadPipeline.nonDiscretionaryDownloads"];
    v20 = objc_alloc_init(NSMutableSet);
    dirtyTaskStates = v7->_dirtyTaskStates;
    v7->_dirtyTaskStates = v20;

    v22 = objc_alloc_init(NSMutableSet);
    downloadHandlerSessions = v7->_downloadHandlerSessions;
    v7->_downloadHandlerSessions = v22;

    v24 = objc_alloc_init(NSMutableOrderedSet);
    preparationDownloadIDs = v7->_preparationDownloadIDs;
    v7->_preparationDownloadIDs = v24;

    v26 = [[NSMapTable alloc] initWithKeyOptions:512 valueOptions:0 capacity:0];
    resourceLoaders = v7->_resourceLoaders;
    v7->_resourceLoaders = v26;

    v28 = [[NSMapTable alloc] initWithKeyOptions:512 valueOptions:0 capacity:0];
    taskStates = v7->_taskStates;
    v7->_taskStates = v28;

    v30 = objc_alloc_init(NSMutableDictionary);
    urlSessions = v7->_urlSessions;
    v7->_urlSessions = v30;

    v32 = objc_alloc_init(NSMutableDictionary);
    downloadOperationsByTask = v7->_downloadOperationsByTask;
    v7->_downloadOperationsByTask = v32;
  }

  return v7;
}

- (void)dealloc
{
  progressTimer = self->_progressTimer;
  if (progressTimer)
  {
    dispatch_source_cancel(progressTimer);
    v4 = self->_progressTimer;
    self->_progressTimer = 0;
  }

  reconnectTimer = self->_reconnectTimer;
  if (reconnectTimer)
  {
    dispatch_source_cancel(reconnectTimer);
    v6 = self->_reconnectTimer;
    self->_reconnectTimer = 0;
  }

  v7.receiver = self;
  v7.super_class = DownloadPipeline;
  [(DownloadPipeline *)&v7 dealloc];
}

- (void)addDownloadsWithIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v5 = objc_alloc_init(NSMutableOrderedSet);
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v6 = identifiersCopy;
  v7 = [v6 countByEnumeratingWithState:&v35 objects:v42 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v36;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v36 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v35 + 1) + 8 * i);
        if (([(NSMutableOrderedSet *)self->_preparationDownloadIDs containsObject:v11]& 1) == 0)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v35 objects:v42 count:16];
    }

    while (v8);
  }

  if ([v5 count])
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v12 = self->_taskStates;
    v13 = [(NSMapTable *)v12 countByEnumeratingWithState:&v31 objects:v41 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v32;
      do
      {
        for (j = 0; j != v14; j = j + 1)
        {
          if (*v32 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [(NSMapTable *)self->_taskStates objectForKey:*(*(&v31 + 1) + 8 * j)];
          v18 = [[NSNumber alloc] initWithLongLong:{objc_msgSend(v17, "downloadIdentifier")}];
          [v5 removeObject:v18];
        }

        v14 = [(NSMapTable *)v12 countByEnumeratingWithState:&v31 objects:v41 count:16];
      }

      while (v14);
    }
  }

  if ([v5 count])
  {
    v19 = +[SSLogConfig sharedDaemonConfig];
    if (!v19)
    {
      v19 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v19 shouldLog];
    if ([v19 shouldLogToDisk])
    {
      v21 = shouldLog | 2;
    }

    else
    {
      v21 = shouldLog;
    }

    oSLogObject = [v19 OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v21 &= 2u;
    }

    if (v21)
    {
      array = [v5 array];
      v24 = [array componentsJoinedByString:{@", "}];
      v39 = 138543362;
      v40 = v24;
      LODWORD(v29) = 12;
      v25 = _os_log_send_and_compose_impl();

      if (!v25)
      {
LABEL_31:

        v26 = objc_opt_class();
        array2 = [v5 array];
        v30 = [array2 componentsJoinedByString:{@", "}];
        SSDebugLog();

        v28 = [SSSQLiteContainsPredicate containsPredicateWithProperty:SSSQLEntityPropertyPersistentID values:v5, v26, v30];
        [(DownloadPipeline *)self _prepareDownloadsMatchingPredicate:v28 ignoreDownloadHandlers:0 filtersExistingTasks:0];

        goto LABEL_32;
      }

      oSLogObject = [NSString stringWithCString:v25 encoding:4, &v39, v29];
      free(v25);
      SSFileLog();
    }

    goto LABEL_31;
  }

LABEL_32:
  [(DownloadPipeline *)self _reloadKeepAliveAssertion];
}

- (void)reconnectWithURLSessionTasks
{
  reconnectTimer = self->_reconnectTimer;
  if (reconnectTimer)
  {
    dispatch_source_cancel(reconnectTimer);
    v4 = self->_reconnectTimer;
    self->_reconnectTimer = 0;
  }

  v5 = [SSSQLiteComparisonPredicate predicateWithProperty:@"IFNULL(download_state.blocked_reason equalToValue:0)", &off_10034C060];
  v13[0] = SSDownloadPhaseFinished;
  v13[1] = SSDownloadPhaseFailed;
  v13[2] = SSDownloadPhasePaused;
  v13[3] = SSDownloadPhaseCanceled;
  v6 = [NSArray arrayWithObjects:v13 count:4];
  v7 = [SSSQLiteContainsPredicate doesNotContainPredicateWithProperty:@"IFNULL(download_state.phase values:SSDownloadPhaseWaiting)", v6];

  v8 = [SSSQLiteComparisonPredicate predicateWithProperty:@"is_purchase" equalToValue:&__kCFBooleanFalse];
  v9 = [SSSQLiteComparisonPredicate predicateWithProperty:@"IFNULL(download_state.is_restricted equalToValue:0)", &__kCFBooleanFalse];
  v12[0] = v5;
  v12[1] = v9;
  v12[2] = v8;
  v12[3] = v7;
  v10 = [NSArray arrayWithObjects:v12 count:4];
  v11 = [SSSQLiteCompoundPredicate predicateMatchingAllPredicates:v10];

  [(DownloadPipeline *)self _prepareDownloadsMatchingPredicate:v11 ignoreDownloadHandlers:0 filtersExistingTasks:1];
}

- (void)prioritizeDownloadWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v57 = identifierCopy;
  if ([(DownloadPipeline *)self _downloadIsForLegacyClientWithIdentifier:identifierCopy])
  {
    v5 = +[SSLogConfig sharedDaemonConfig];
    if (!v5)
    {
      v5 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v5 shouldLog];
    if ([v5 shouldLogToDisk])
    {
      v7 = shouldLog | 2;
    }

    else
    {
      v7 = shouldLog;
    }

    oSLogObject = [v5 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
    {
      v9 = v7;
    }

    else
    {
      v9 = v7 & 2;
    }

    if (v9)
    {
      v66 = 138412546;
      v67 = objc_opt_class();
      v68 = 2112;
      v69 = identifierCopy;
      v10 = v67;
      LODWORD(v56) = 22;
      v11 = _os_log_send_and_compose_impl();

      if (v11)
      {
        v12 = [NSString stringWithCString:v11 encoding:4, &v66, v56];
        free(v11);
        SSFileLog();
      }

      identifierCopy = v57;
    }

    else
    {
    }

    goto LABEL_82;
  }

  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v13 = self->_taskStates;
  v14 = [(NSMapTable *)v13 countByEnumeratingWithState:&v62 objects:v72 count:16];
  v15 = &CFDictionaryGetValue_ptr;
  if (!v14)
  {

    goto LABEL_70;
  }

  v16 = v14;
  v58 = 0;
  v17 = *v63;
  v59 = *v63;
  v60 = v13;
  do
  {
    v18 = 0;
    v61 = v16;
    do
    {
      if (*v63 != v17)
      {
        objc_enumerationMutation(v13);
      }

      v19 = *(*(&v62 + 1) + 8 * v18);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        selfCopy = self;
        v21 = [(NSMapTable *)self->_taskStates objectForKey:v19];
        v22 = [[NSNumber alloc] initWithLongLong:{objc_msgSend(v21, "downloadIdentifier")}];
        if ([identifierCopy isEqualToNumber:v22])
        {
          sharedDaemonConfig = [v15[412] sharedDaemonConfig];
          if (!sharedDaemonConfig)
          {
            sharedDaemonConfig = [v15[412] sharedConfig];
          }

          shouldLog2 = [sharedDaemonConfig shouldLog];
          if ([sharedDaemonConfig shouldLogToDisk])
          {
            v25 = shouldLog2 | 2;
          }

          else
          {
            v25 = shouldLog2;
          }

          oSLogObject2 = [sharedDaemonConfig OSLogObject];
          if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
          {
            v27 = v25;
          }

          else
          {
            v27 = v25 & 2;
          }

          if (v27)
          {
            taskIdentifier = [v19 taskIdentifier];
            v66 = 134218242;
            v67 = taskIdentifier;
            v68 = 2112;
            v69 = v22;
            LODWORD(v56) = 22;
            v55 = &v66;
            v29 = _os_log_send_and_compose_impl();

            v15 = &CFDictionaryGetValue_ptr;
            if (v29)
            {
              oSLogObject2 = [NSString stringWithCString:v29 encoding:4, &v66, v56];
              free(v29);
              v55 = oSLogObject2;
              SSFileLog();
              goto LABEL_55;
            }
          }

          else
          {
            v15 = &CFDictionaryGetValue_ptr;
LABEL_55:
          }

          *&v48 = NSURLSessionTaskPriorityHigh;
          [v19 setPriority:v48];
          v58 = 1;
LABEL_63:

          self = selfCopy;
          v17 = v59;
          v13 = v60;
          v16 = v61;
          goto LABEL_64;
        }

        isLegacyClient = [v21 isLegacyClient];
        sharedDaemonConfig2 = [v15[412] sharedDaemonConfig];
        sharedConfig = sharedDaemonConfig2;
        if (isLegacyClient)
        {
          if (!sharedDaemonConfig2)
          {
            sharedConfig = [v15[412] sharedConfig];
          }

          shouldLog3 = [sharedConfig shouldLog];
          if ([sharedConfig shouldLogToDisk])
          {
            v34 = shouldLog3 | 2;
          }

          else
          {
            v34 = shouldLog3;
          }

          oSLogObject3 = [sharedConfig OSLogObject];
          if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_INFO))
          {
            v36 = v34;
          }

          else
          {
            v36 = v34 & 2;
          }

          if (v36)
          {
            v37 = objc_opt_class();
            v38 = v37;
            taskIdentifier2 = [v19 taskIdentifier];
            v66 = 138412802;
            v67 = v37;
            v68 = 2048;
            v69 = taskIdentifier2;
            v70 = 2112;
            v71 = v22;
            LODWORD(v56) = 32;
            v55 = &v66;
            v40 = _os_log_send_and_compose_impl();

            identifierCopy = v57;
            v15 = &CFDictionaryGetValue_ptr;
            if (v40)
            {
              oSLogObject3 = [NSString stringWithCString:v40 encoding:4, &v66, v56];
              free(v40);
              v55 = oSLogObject3;
              SSFileLog();
              goto LABEL_58;
            }
          }

          else
          {
            v15 = &CFDictionaryGetValue_ptr;
LABEL_58:
          }

          goto LABEL_63;
        }

        if (!sharedDaemonConfig2)
        {
          sharedConfig = [v15[412] sharedConfig];
        }

        shouldLog4 = [sharedConfig shouldLog];
        if ([sharedConfig shouldLogToDisk])
        {
          shouldLog4 |= 2u;
        }

        oSLogObject4 = [sharedConfig OSLogObject];
        if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_INFO))
        {
          v43 = shouldLog4;
        }

        else
        {
          v43 = shouldLog4 & 2;
        }

        if (v43)
        {
          v44 = objc_opt_class();
          v45 = v44;
          taskIdentifier3 = [v19 taskIdentifier];
          v66 = 138412802;
          v67 = v44;
          v68 = 2048;
          v69 = taskIdentifier3;
          v70 = 2112;
          v71 = v22;
          LODWORD(v56) = 32;
          v55 = &v66;
          v47 = _os_log_send_and_compose_impl();

          identifierCopy = v57;
          v15 = &CFDictionaryGetValue_ptr;
          if (v47)
          {
            oSLogObject4 = [NSString stringWithCString:v47 encoding:4, &v66, v56];
            free(v47);
            v55 = oSLogObject4;
            SSFileLog();
            goto LABEL_61;
          }
        }

        else
        {
          v15 = &CFDictionaryGetValue_ptr;
LABEL_61:
        }

        *&v49 = NSURLSessionTaskPriorityDefault;
        [v19 setPriority:v49];
        goto LABEL_63;
      }

LABEL_64:
      v18 = v18 + 1;
    }

    while (v16 != v18);
    v16 = [(NSMapTable *)v13 countByEnumeratingWithState:&v62 objects:v72 count:16];
  }

  while (v16);

  if (v58)
  {
    goto LABEL_83;
  }

LABEL_70:
  sharedDaemonConfig3 = [v15[412] sharedDaemonConfig];
  if (!sharedDaemonConfig3)
  {
    sharedDaemonConfig3 = [v15[412] sharedConfig];
  }

  shouldLog5 = [sharedDaemonConfig3 shouldLog];
  if ([sharedDaemonConfig3 shouldLogToDisk])
  {
    shouldLog5 |= 2u;
  }

  oSLogObject5 = [sharedDaemonConfig3 OSLogObject];
  if (os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_DEFAULT))
  {
    v53 = shouldLog5;
  }

  else
  {
    v53 = shouldLog5 & 2;
  }

  if (v53)
  {
    v66 = 138412290;
    v67 = identifierCopy;
    LODWORD(v56) = 12;
    v54 = _os_log_send_and_compose_impl();

    if (v54)
    {
      oSLogObject5 = [NSString stringWithCString:v54 encoding:4, &v66, v56];
      free(v54);
      SSFileLog();
      goto LABEL_80;
    }
  }

  else
  {
LABEL_80:
  }

  v5 = +[NSMutableOrderedSet orderedSet];
  [v5 addObject:identifierCopy];
  [(DownloadPipeline *)self addDownloadsWithIdentifiers:v5];
LABEL_82:

LABEL_83:
}

- (id)restartDownloadsWithIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v28 = +[NSMutableOrderedSet orderedSet];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  selfCopy = self;
  v6 = self->_taskStates;
  v7 = [(NSMapTable *)v6 countByEnumeratingWithState:&v31 objects:v41 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v32;
    v10 = &CFDictionaryGetValue_ptr;
    v26 = *v32;
    v27 = selfCopy;
    do
    {
      v11 = 0;
      v29 = v8;
      do
      {
        if (*v32 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v31 + 1) + 8 * v11);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v30 = [(NSMapTable *)selfCopy->_taskStates objectForKey:v12];
          v13 = [objc_alloc(v10[170]) initWithLongLong:{objc_msgSend(v30, "downloadIdentifier")}];
          if ([identifiersCopy containsObject:v13])
          {
            v14 = +[SSLogConfig sharedDaemonConfig];
            if (!v14)
            {
              v14 = +[SSLogConfig sharedConfig];
            }

            shouldLog = [v14 shouldLog];
            if ([v14 shouldLogToDisk])
            {
              shouldLog |= 2u;
            }

            oSLogObject = [v14 OSLogObject];
            if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
            {
              shouldLog &= 2u;
            }

            if (shouldLog)
            {
              v17 = v6;
              v18 = identifiersCopy;
              v19 = objc_opt_class();
              v20 = v19;
              taskIdentifier = [v12 taskIdentifier];
              v35 = 138412802;
              v36 = v19;
              identifiersCopy = v18;
              v6 = v17;
              v9 = v26;
              v37 = 2048;
              v38 = taskIdentifier;
              v39 = 2112;
              v40 = v13;
              LODWORD(v25) = 32;
              v24 = &v35;
              v22 = _os_log_send_and_compose_impl();

              selfCopy = v27;
              if (v22)
              {
                oSLogObject = [NSString stringWithCString:v22 encoding:4, &v35, v25];
                free(v22);
                v24 = oSLogObject;
                SSFileLog();
                goto LABEL_17;
              }
            }

            else
            {
LABEL_17:
            }

            [v12 cancelWithITunesStoreReason:3 error:0];
            [v28 addObject:v13];
            v10 = &CFDictionaryGetValue_ptr;
          }

          v8 = v29;
        }

        v11 = v11 + 1;
      }

      while (v8 != v11);
      v8 = [(NSMapTable *)v6 countByEnumeratingWithState:&v31 objects:v41 count:16];
    }

    while (v8);
  }

  return v28;
}

- (void)stopDownloadsWithIdentifiers:(id)identifiers reason:(int64_t)reason
{
  identifiersCopy = identifiers;
  selfCopy = self;
  [(ISOperationQueue *)self->_preparationOperationQueue operations];
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  obj = v86 = 0u;
  v5 = [obj countByEnumeratingWithState:&v83 objects:v95 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v84;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v84 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v83 + 1) + 8 * i);
        v10 = [[NSNumber alloc] initWithLongLong:{objc_msgSend(v9, "downloadIdentifier")}];
        if ([identifiersCopy containsObject:v10])
        {
          v11 = +[SSLogConfig sharedDaemonConfig];
          if (!v11)
          {
            v11 = +[SSLogConfig sharedConfig];
          }

          shouldLog = [v11 shouldLog];
          if ([v11 shouldLogToDisk])
          {
            v13 = shouldLog | 2;
          }

          else
          {
            v13 = shouldLog;
          }

          oSLogObject = [v11 OSLogObject];
          if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
          {
            v15 = v13;
          }

          else
          {
            v15 = v13 & 2;
          }

          if (v15)
          {
            v16 = objc_opt_class();
            v88 = 138412546;
            v89 = v16;
            v90 = 2112;
            v91 = v10;
            v17 = v16;
            LODWORD(v66) = 22;
            v64 = &v88;
            v18 = _os_log_send_and_compose_impl();

            if (v18)
            {
              oSLogObject = [NSString stringWithCString:v18 encoding:4, &v88, v66];
              free(v18);
              v64 = oSLogObject;
              SSFileLog();
              goto LABEL_18;
            }
          }

          else
          {
LABEL_18:
          }

          [v9 cancel];
        }
      }

      v6 = [obj countByEnumeratingWithState:&v83 objects:v95 count:16];
    }

    while (v6);
  }

  v19 = identifiersCopy;
  [(NSMutableOrderedSet *)selfCopy->_preparationDownloadIDs minusOrderedSet:identifiersCopy, v64];
  v20 = [(NSMutableSet *)selfCopy->_downloadHandlerSessions copy];
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v71 = v20;
  v21 = [v71 countByEnumeratingWithState:&v79 objects:v94 count:16];
  if (!v21)
  {
    goto LABEL_44;
  }

  v22 = v21;
  v23 = *v80;
  do
  {
    for (j = 0; j != v22; j = j + 1)
    {
      if (*v80 != v23)
      {
        objc_enumerationMutation(v71);
      }

      v25 = *(*(&v79 + 1) + 8 * j);
      v26 = [NSNumber alloc];
      sessionProperties = [v25 sessionProperties];
      v28 = [v26 initWithLongLong:{objc_msgSend(sessionProperties, "downloadIdentifier")}];

      if ([v19 containsObject:v28])
      {
        v29 = +[SSLogConfig sharedDaemonConfig];
        if (!v29)
        {
          v29 = +[SSLogConfig sharedConfig];
        }

        shouldLog2 = [v29 shouldLog];
        if ([v29 shouldLogToDisk])
        {
          shouldLog2 |= 2u;
        }

        oSLogObject2 = [v29 OSLogObject];
        if (!os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_INFO))
        {
          shouldLog2 &= 2u;
        }

        if (shouldLog2)
        {
          v32 = objc_opt_class();
          v33 = v32;
          sessionID = [v25 sessionID];
          v88 = 138412802;
          v89 = v32;
          v19 = identifiersCopy;
          v90 = 2048;
          v91 = sessionID;
          v92 = 2112;
          v93 = v28;
          LODWORD(v66) = 32;
          v65 = &v88;
          v35 = _os_log_send_and_compose_impl();

          if (v35)
          {
            oSLogObject2 = [NSString stringWithCString:v35 encoding:4, &v88, v66];
            free(v35);
            v65 = oSLogObject2;
            SSFileLog();
            goto LABEL_37;
          }
        }

        else
        {
LABEL_37:
        }

        v36 = +[DownloadHandlerManager handlerManager];
        sessionID2 = [v25 sessionID];
        if (reason == 1)
        {
          [v36 pauseSessionWithID:sessionID2];
        }

        else
        {
          [v36 cancelSessionWithID:sessionID2];
        }

        [(NSMutableSet *)selfCopy->_downloadHandlerSessions removeObject:v25];
        [(NSMapTable *)selfCopy->_taskStates removeObjectForKey:v25];
      }
    }

    v22 = [v71 countByEnumeratingWithState:&v79 objects:v94 count:16];
  }

  while (v22);
LABEL_44:

  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v69 = selfCopy->_taskStates;
  v38 = [(NSMapTable *)v69 countByEnumeratingWithState:&v75 objects:v87 count:16];
  if (v38)
  {
    v39 = v38;
    v40 = *v76;
    v67 = *v76;
    do
    {
      v41 = 0;
      v68 = v39;
      do
      {
        if (*v76 != v40)
        {
          objc_enumerationMutation(v69);
        }

        v42 = *(*(&v75 + 1) + 8 * v41);
        v43 = [(NSMapTable *)selfCopy->_taskStates objectForKey:v42, v65];
        v44 = [[NSNumber alloc] initWithLongLong:{objc_msgSend(v43, "downloadIdentifier")}];
        if ([v19 containsObject:v44])
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v45 = v42;
            v46 = +[SSLogConfig sharedDaemonConfig];
            if (!v46)
            {
              v46 = +[SSLogConfig sharedConfig];
            }

            shouldLog3 = [v46 shouldLog];
            if ([v46 shouldLogToDisk])
            {
              v48 = shouldLog3 | 2;
            }

            else
            {
              v48 = shouldLog3;
            }

            oSLogObject3 = [v46 OSLogObject];
            if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_INFO))
            {
              v50 = v48;
            }

            else
            {
              v50 = v48 & 2;
            }

            if (v50)
            {
              v51 = objc_opt_class();
              v52 = v51;
              taskIdentifier = [v45 taskIdentifier];
              v88 = 138412802;
              v89 = v51;
              v19 = identifiersCopy;
              v90 = 2048;
              v91 = taskIdentifier;
              v92 = 2112;
              v93 = v44;
              LODWORD(v66) = 32;
              v65 = &v88;
              v54 = _os_log_send_and_compose_impl();

              v40 = v67;
              if (v54)
              {
                oSLogObject3 = [NSString stringWithCString:v54 encoding:4, &v88, v66];
                free(v54);
                v65 = oSLogObject3;
                SSFileLog();
                goto LABEL_75;
              }
            }

            else
            {
              v40 = v67;
LABEL_75:
            }

            [v45 cancelWithITunesStoreReason:2 error:0];
            goto LABEL_80;
          }

          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
          if (reason != 1 && (isKindOfClass & 1) != 0)
          {
            v56 = v42;
            v57 = +[SSLogConfig sharedDaemonConfig];
            if (!v57)
            {
              v57 = +[SSLogConfig sharedConfig];
            }

            shouldLog4 = [v57 shouldLog];
            if ([v57 shouldLogToDisk])
            {
              shouldLog4 |= 2u;
            }

            oSLogObject4 = [v57 OSLogObject];
            if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_INFO))
            {
              v60 = shouldLog4;
            }

            else
            {
              v60 = shouldLog4 & 2;
            }

            if (v60)
            {
              v61 = objc_opt_class();
              v88 = 138412802;
              v89 = v61;
              v90 = 2112;
              v91 = v56;
              v92 = 2112;
              v93 = v44;
              v62 = v61;
              LODWORD(v66) = 32;
              v65 = &v88;
              v63 = _os_log_send_and_compose_impl();

              v40 = v67;
              if (v63)
              {
                oSLogObject4 = [NSString stringWithCString:v63 encoding:4, &v88, v66];
                free(v63);
                v65 = oSLogObject4;
                SSFileLog();
                goto LABEL_78;
              }
            }

            else
            {
              v40 = v67;
LABEL_78:
            }

            [v56 stopWithFinishResult:2];
LABEL_80:

            v39 = v68;
          }
        }

        v41 = v41 + 1;
      }

      while (v39 != v41);
      v39 = [(NSMapTable *)v69 countByEnumeratingWithState:&v75 objects:v87 count:16];
    }

    while (v39);
  }

  [(DownloadPipeline *)selfCopy _reloadKeepAliveAssertion];
}

- (void)updateAfterSessionsChanged:(id)changed
{
  changedCopy = changed;
  v25 = objc_alloc_init(NSMutableOrderedSet);
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v5 = changedCopy;
  v6 = [v5 countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v37;
    v23 = v32;
    v24 = v27;
    v22 = SSDownloadPhaseDownloading;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v37 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v36 + 1) + 8 * i);
        v11 = [(NSMutableSet *)self->_downloadHandlerSessions member:v10, v22, v23, v24];
        v12 = [(NSMapTable *)self->_taskStates objectForKey:v11];
        if (v12)
        {
          sessionProperties = [v10 sessionProperties];
          downloadPhase = [sessionProperties downloadPhase];

          sessionState = [v10 sessionState];
          if (sessionState <= 7)
          {
            if (sessionState)
            {
              if (sessionState == 6)
              {
                [(DownloadPipeline *)self _disavowDownloadHandlerSession:v10 withTaskState:v12];
              }

              else if (sessionState == 7)
              {
                v16 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v12 downloadIdentifier]);
                [v25 addObject:v16];
              }

              goto LABEL_22;
            }

            if ([downloadPhase isEqualToString:v22])
            {
              [v10 percentComplete];
              [v12 setTransferProgress:v17];
              [(NSMutableSet *)self->_dirtyTaskStates addObject:v12];
              [(DownloadPipeline *)self _startProgressTimer];
            }

LABEL_23:

            goto LABEL_24;
          }

          if (sessionState == 8)
          {
            database = self->_database;
            v31[0] = _NSConcreteStackBlock;
            v31[1] = 3221225472;
            v32[0] = sub_100191B88;
            v32[1] = &unk_100328C60;
            v33 = v12;
            v34 = v10;
            selfCopy = self;
            v19 = [(DownloadsDatabase *)database modifyUsingTransactionBlock:v31];
            v20 = v33;
          }

          else
          {
            if (sessionState != 9)
            {
              if (sessionState == 10)
              {
                [(DownloadPipeline *)self _releaseDownloadHandlerSession:v10 withTaskState:v12];
              }

LABEL_22:
              [(NSMutableSet *)self->_downloadHandlerSessions removeObject:v11];
              [(NSMapTable *)self->_taskStates removeObjectForKey:v11];
              goto LABEL_23;
            }

            v21 = self->_database;
            v26[0] = _NSConcreteStackBlock;
            v26[1] = 3221225472;
            v27[0] = sub_100191DF4;
            v27[1] = &unk_1003294B8;
            v28 = downloadPhase;
            selfCopy2 = self;
            v30 = v12;
            [(DownloadsDatabase *)v21 readUsingTransactionBlock:v26];

            v20 = v28;
          }

          goto LABEL_22;
        }

LABEL_24:
      }

      v7 = [v5 countByEnumeratingWithState:&v36 objects:v40 count:16];
    }

    while (v7);
  }

  if ([v25 count])
  {
    [(DownloadPipeline *)self addDownloadsWithIdentifiers:v25];
  }

  [(DownloadPipeline *)self _reloadKeepAliveAssertion];
}

- (void)operation:(id)operation updatedProgress:(id)progress
{
  operationCopy = operation;
  progressCopy = progress;
  database = self->_database;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100192148;
  v11[3] = &unk_1003281A0;
  v11[4] = self;
  v12 = operationCopy;
  v13 = progressCopy;
  v9 = progressCopy;
  v10 = operationCopy;
  [(DownloadsDatabase *)database dispatchBlockAsync:v11];
}

- (void)URLSession:(id)session avAssetDownloadTask:(id)task didWriteData:(int64_t)data totalBytesWritten:(int64_t)written totalBytesExpectedToWrite:(int64_t)write
{
  taskCopy = task;
  v11 = taskCopy;
  if (write >= 1)
  {
    database = self->_database;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1001922AC;
    v13[3] = &unk_100328350;
    v13[4] = self;
    v14 = taskCopy;
    writtenCopy = written;
    writeCopy = write;
    [(DownloadsDatabase *)database dispatchBlockAsync:v13];
  }
}

- (void)URLSession:(id)session dataTask:(id)task didReceiveData:(id)data
{
  taskCopy = task;
  dataCopy = data;
  iTunesStoreDataConsumer = [taskCopy ITunesStoreDataConsumer];
  v35 = 0;
  v10 = [iTunesStoreDataConsumer consumeData:dataCopy error:&v35];

  v11 = v35;
  if ((v10 & 1) == 0)
  {
    v19 = [(NSMapTable *)self->_taskStates objectForKey:taskCopy];
    v20 = +[SSLogConfig sharedDaemonConfig];
    if (!v20)
    {
      v20 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v20 shouldLog];
    if ([v20 shouldLogToDisk])
    {
      v22 = shouldLog | 2;
    }

    else
    {
      v22 = shouldLog;
    }

    oSLogObject = [v20 OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v22 &= 2u;
    }

    if (v22)
    {
      taskIdentifier = [taskCopy taskIdentifier];
      downloadIdentifier = [v19 downloadIdentifier];
      v36 = 134218498;
      v37 = taskIdentifier;
      v38 = 2048;
      v39 = downloadIdentifier;
      v40 = 2112;
      v41 = v11;
      LODWORD(v27) = 32;
      v26 = _os_log_send_and_compose_impl();

      if (!v26)
      {
LABEL_14:

        [taskCopy cancelWithITunesStoreReason:1 error:v11];
        goto LABEL_15;
      }

      oSLogObject = [NSString stringWithCString:v26 encoding:4, &v36, v27];
      free(v26);
      SSFileLog();
    }

    goto LABEL_14;
  }

  countOfBytesReceived = [taskCopy countOfBytesReceived];
  overrideProgress = [iTunesStoreDataConsumer overrideProgress];
  [iTunesStoreDataConsumer percentComplete];
  v15 = v14;
  resumptionOffset = [iTunesStoreDataConsumer resumptionOffset];
  countOfBytesExpectedToReceive = [taskCopy countOfBytesExpectedToReceive];
  database = self->_database;
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_100192604;
  v28[3] = &unk_10032ABC0;
  v28[4] = self;
  v29 = taskCopy;
  v30 = countOfBytesExpectedToReceive;
  v31 = countOfBytesReceived;
  v32 = resumptionOffset;
  v34 = overrideProgress;
  v33 = v15;
  [(DownloadsDatabase *)database dispatchBlockAsync:v28];

LABEL_15:
}

- (void)URLSession:(id)session assetDownloadTask:(id)task didLoadTimeRange:(id *)range totalTimeRangesLoaded:(id)loaded timeRangeExpectedToLoad:(id *)load
{
  sessionCopy = session;
  taskCopy = task;
  loadedCopy = loaded;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_1001929F0;
  v31[3] = &unk_10032ABE8;
  v31[4] = &v32;
  [loadedCopy enumerateObjectsUsingBlock:v31];
  var1 = load->var1;
  v14 = ISWeakLinkedSymbolForString();
  if (v14)
  {
    v36 = var1;
    v14(&v36);
  }

  else
  {
    v15 = 0.0;
  }

  v16 = v33[3] / v15;
  database = self->_database;
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_100192A8C;
  v27[3] = &unk_1003286B8;
  v27[4] = self;
  v18 = taskCopy;
  v28 = v18;
  v29 = v16;
  [(DownloadsDatabase *)database dispatchBlockAsync:v27];
  v19 = +[SSLogConfig sharedDaemonConfig];
  if (!v19)
  {
    v19 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v19 shouldLog];
  shouldLogToDisk = [v19 shouldLogToDisk];
  oSLogObject = [v19 OSLogObject];
  v23 = oSLogObject;
  if (shouldLogToDisk)
  {
    shouldLog |= 2u;
  }

  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
  {
    shouldLog &= 2u;
  }

  if (!shouldLog)
  {
    goto LABEL_13;
  }

  taskIdentifier = [v18 taskIdentifier];
  LODWORD(v36.var0) = 134218240;
  *(&v36.var0 + 4) = v16;
  LOWORD(v36.var2) = 2048;
  *(&v36.var2 + 2) = taskIdentifier;
  LODWORD(v26) = 22;
  v25 = _os_log_send_and_compose_impl();

  if (v25)
  {
    v23 = [NSString stringWithCString:v25 encoding:4, &v36, v26];
    free(v25);
    SSFileLog();
LABEL_13:
  }

  _Block_object_dispose(&v32, 8);
}

- (void)URLSession:(id)session aggregateAssetDownloadTask:(id)task willDownloadToURL:(id)l
{
  taskCopy = task;
  uRLAsset = [taskCopy URLAsset];
  v8 = objc_alloc_init(DownloadAssetProgress);
  downloadToken = [uRLAsset downloadToken];
  [(NSMapTable *)self->_aggregateDownloadProgress setObject:v8 forKey:taskCopy];
  [(DownloadPipeline *)self _taskReceived:taskCopy persistAVAssetDownloadToken:downloadToken];
  v10 = +[SSLogConfig sharedDaemonConfig];
  if (!v10)
  {
    v10 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v10 shouldLog];
  if ([v10 shouldLogToDisk])
  {
    v12 = shouldLog | 2;
  }

  else
  {
    v12 = shouldLog;
  }

  oSLogObject = [v10 OSLogObject];
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
  {
    v12 &= 2u;
  }

  if (!v12)
  {
    goto LABEL_11;
  }

  v16 = 134217984;
  taskIdentifier = [taskCopy taskIdentifier];
  LODWORD(v15) = 12;
  v14 = _os_log_send_and_compose_impl();

  if (v14)
  {
    oSLogObject = [NSString stringWithCString:v14 encoding:4, &v16, v15];
    free(v14);
    SSFileLog();
LABEL_11:
  }
}

- (void)URLSession:(id)session aggregateAssetDownloadTask:(id)task didCompleteForMediaSelection:(id)selection
{
  taskCopy = task;
  selectionCopy = selection;
  v9 = [(NSMapTable *)self->_aggregateDownloadProgress objectForKey:taskCopy];
  v10 = v9;
  if (v9)
  {
    [v9 setProgress:selectionCopy forMediaSelection:1.0];
    [v10 setMediaSelectionDidComplete:selectionCopy];
  }

  v11 = +[SSLogConfig sharedDaemonConfig];
  if (!v11)
  {
    v11 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v11 shouldLog];
  if ([v11 shouldLogToDisk])
  {
    v13 = shouldLog | 2;
  }

  else
  {
    v13 = shouldLog;
  }

  oSLogObject = [v11 OSLogObject];
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v13 &= 2u;
  }

  if (!v13)
  {
    goto LABEL_13;
  }

  numMediaSelectionsCompleted = [v10 numMediaSelectionsCompleted];
  [v10 progress];
  v19 = 138413058;
  v20 = taskCopy;
  v21 = 2112;
  v22 = selectionCopy;
  v23 = 2048;
  v24 = numMediaSelectionsCompleted;
  v25 = 2048;
  v26 = v16 * 100.0;
  LODWORD(v18) = 42;
  v17 = _os_log_send_and_compose_impl();

  if (v17)
  {
    oSLogObject = [NSString stringWithCString:v17 encoding:4, &v19, v18];
    free(v17);
    SSFileLog();
LABEL_13:
  }
}

- (void)URLSession:(id)session aggregateAssetDownloadTask:(id)task didLoadTimeRange:(id *)range totalTimeRangesLoaded:(id)loaded timeRangeExpectedToLoad:(id *)load forMediaSelection:(id)selection
{
  sessionCopy = session;
  taskCopy = task;
  loadedCopy = loaded;
  selectionCopy = selection;
  v50 = 0;
  v51 = &v50;
  v52 = 0x2020000000;
  v53 = 0;
  v49[0] = _NSConcreteStackBlock;
  v49[1] = 3221225472;
  v49[2] = sub_100193348;
  v49[3] = &unk_10032ABE8;
  v49[4] = &v50;
  [loadedCopy enumerateObjectsUsingBlock:v49];
  var1 = load->var1;
  v16 = ISWeakLinkedSymbolForString();
  if (v16)
  {
    v54 = var1;
    v16(&v54);
  }

  else
  {
    v17 = 0.0;
  }

  v18 = v51[3] / v17;
  if (v18 <= 1.0)
  {
    v19 = v18;
  }

  else
  {
    v19 = 1.0;
  }

  v20 = [(NSMapTable *)self->_aggregateDownloadProgress objectForKey:taskCopy];
  if (!v20)
  {
    v20 = objc_alloc_init(DownloadAssetProgress);
    [(NSMapTable *)self->_aggregateDownloadProgress setObject:v20 forKey:taskCopy];
  }

  if (![(DownloadAssetProgress *)v20 numAudioSelectionsToBeDownloaded])
  {
    v21 = [(NSMutableDictionary *)self->_downloadOperationsByTask objectForKey:taskCopy];
    v22 = v21;
    if (v21)
    {
      response = [v21 response];
      numAudioSelectionsToBeDownloaded = [response numAudioSelectionsToBeDownloaded];

      response2 = [v22 response];
      numSubtitleSelectionsToBeDownloaded = [response2 numSubtitleSelectionsToBeDownloaded];

      if (numAudioSelectionsToBeDownloaded <= 1)
      {
        v27 = 1;
      }

      else
      {
        v27 = numAudioSelectionsToBeDownloaded;
      }

      [(DownloadAssetProgress *)v20 setNumAudioSelectionsToBeDownloaded:v27];
      [(DownloadAssetProgress *)v20 setNumSubtitleSelectionsToBeDownloaded:numSubtitleSelectionsToBeDownloaded];
    }
  }

  [(DownloadAssetProgress *)v20 setProgress:selectionCopy forMediaSelection:v19];
  [(DownloadAssetProgress *)v20 progress];
  v29 = v28;
  database = self->_database;
  v41 = _NSConcreteStackBlock;
  v42 = 3221225472;
  v43 = sub_1001933E4;
  v44 = &unk_1003286B8;
  selfCopy = self;
  v31 = taskCopy;
  v46 = v31;
  v47 = v29;
  [(DownloadsDatabase *)database dispatchBlockAsync:&v41];
  v32 = +[SSLogConfig sharedDaemonConfig];
  if (!v32)
  {
    v32 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v32 shouldLog];
  shouldLogToDisk = [v32 shouldLogToDisk];
  oSLogObject = [v32 OSLogObject];
  selfCopy = oSLogObject;
  if (shouldLogToDisk)
  {
    shouldLog |= 2u;
  }

  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
  {
    shouldLog &= 2u;
  }

  if (!shouldLog)
  {
    goto LABEL_25;
  }

  [(DownloadAssetProgress *)v20 progress];
  LODWORD(v54.var0) = 138413058;
  *(&v54.var0 + 4) = v31;
  LOWORD(v54.var2) = 2112;
  *(&v54.var2 + 2) = selectionCopy;
  HIWORD(v54.var3) = 2048;
  v55 = v19 * 100.0;
  v56 = 2048;
  v57 = v37 * 100.0;
  LODWORD(v39) = 42;
  v38 = _os_log_send_and_compose_impl();

  if (v38)
  {
    selfCopy = [NSString stringWithCString:v38 encoding:4, &v54, v39, sessionCopy, v41, v42, v43, v44, selfCopy];
    free(v38);
    SSFileLog();
LABEL_25:
  }

  _Block_object_dispose(&v50, 8);
}

- (void)URLSession:(id)session dataTask:(id)task didReceiveResponse:(id)response completionHandler:(id)handler
{
  taskCopy = task;
  responseCopy = response;
  handlerCopy = handler;
  itunes_statusCode = [responseCopy itunes_statusCode];
  if (itunes_statusCode <= 399)
  {
    iTunesStoreDataConsumer = [taskCopy ITunesStoreDataConsumer];
    resumptionOffset = [iTunesStoreDataConsumer resumptionOffset];
    if (itunes_statusCode == 206 || !resumptionOffset)
    {
      goto LABEL_16;
    }

    v14 = +[SSLogConfig sharedDaemonConfig];
    if (!v14)
    {
      v14 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v14 shouldLog];
    if ([v14 shouldLogToDisk])
    {
      v16 = shouldLog | 2;
    }

    else
    {
      v16 = shouldLog;
    }

    oSLogObject = [v14 OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v16 &= 2u;
    }

    if (v16)
    {
      v18 = objc_opt_class();
      v19 = v18;
      v50 = 138412546;
      v51 = v18;
      v52 = 2048;
      taskIdentifier = [taskCopy taskIdentifier];
      LODWORD(v49) = 22;
      v20 = _os_log_send_and_compose_impl();

      if (!v20)
      {
LABEL_15:

        [iTunesStoreDataConsumer truncate];
LABEL_16:
        handlerCopy[2](handlerCopy, 1);
LABEL_59:

        goto LABEL_60;
      }

      oSLogObject = [NSString stringWithCString:v20 encoding:4, &v50, v49];
      free(v20);
      SSFileLog();
    }

    goto LABEL_15;
  }

  v21 = +[SSLogConfig sharedDaemonConfig];
  iTunesStoreDataConsumer2 = v21;
  if (itunes_statusCode == 416)
  {
    if (!v21)
    {
      iTunesStoreDataConsumer2 = +[SSLogConfig sharedConfig];
    }

    shouldLog2 = [iTunesStoreDataConsumer2 shouldLog];
    if ([iTunesStoreDataConsumer2 shouldLogToDisk])
    {
      v30 = shouldLog2 | 2;
    }

    else
    {
      v30 = shouldLog2;
    }

    oSLogObject2 = [iTunesStoreDataConsumer2 OSLogObject];
    if (!os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
    {
      v30 &= 2u;
    }

    if (v30)
    {
      v32 = objc_opt_class();
      v33 = v32;
      v50 = 138412546;
      v51 = v32;
      v52 = 2048;
      taskIdentifier = [taskCopy taskIdentifier];
      LODWORD(v49) = 22;
      v34 = _os_log_send_and_compose_impl();

      if (!v34)
      {
LABEL_41:

        iTunesStoreDataConsumer2 = [taskCopy ITunesStoreDataConsumer];
        [iTunesStoreDataConsumer2 truncate];
        goto LABEL_42;
      }

      oSLogObject2 = [NSString stringWithCString:v34 encoding:4, &v50, v49];
      free(v34);
      SSFileLog();
    }

    goto LABEL_41;
  }

  if (itunes_statusCode != 408)
  {
    if (!v21)
    {
      iTunesStoreDataConsumer2 = +[SSLogConfig sharedConfig];
    }

    shouldLog3 = [iTunesStoreDataConsumer2 shouldLog];
    if ([iTunesStoreDataConsumer2 shouldLogToDisk])
    {
      v36 = shouldLog3 | 2;
    }

    else
    {
      v36 = shouldLog3;
    }

    oSLogObject3 = [iTunesStoreDataConsumer2 OSLogObject];
    if (!os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
    {
      v36 &= 2u;
    }

    if (v36)
    {
      v38 = objc_opt_class();
      v39 = v38;
      v50 = 138412802;
      v51 = v38;
      v52 = 2048;
      taskIdentifier = [taskCopy taskIdentifier];
      v54 = 2048;
      v55 = itunes_statusCode;
      LODWORD(v49) = 32;
      v48 = &v50;
      v40 = _os_log_send_and_compose_impl();

      if (!v40)
      {
LABEL_54:

        v41 = SSError();
        v42 = [NSNumber numberWithInteger:itunes_statusCode];
        iTunesStoreDataConsumer = SSErrorBySettingUserInfoValue();

        itunes_allHeaderFields = [responseCopy itunes_allHeaderFields];
        v44 = ISDictionaryValueForCaseInsensitiveString();
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v45 = SSErrorBySettingUserInfoValue();

          iTunesStoreDataConsumer = v45;
        }

        v46 = ISDictionaryValueForCaseInsensitiveString();

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v47 = SSErrorBySettingUserInfoValue();

          iTunesStoreDataConsumer = v47;
        }

        [taskCopy cancelWithITunesStoreReason:1 error:{iTunesStoreDataConsumer, v48}];
        handlerCopy[2](handlerCopy, 0);

        goto LABEL_59;
      }

      oSLogObject3 = [NSString stringWithCString:v40 encoding:4, &v50, v49];
      free(v40);
      v48 = oSLogObject3;
      SSFileLog();
    }

    goto LABEL_54;
  }

  if (!v21)
  {
    iTunesStoreDataConsumer2 = +[SSLogConfig sharedConfig];
  }

  shouldLog4 = [iTunesStoreDataConsumer2 shouldLog];
  if ([iTunesStoreDataConsumer2 shouldLogToDisk])
  {
    v24 = shouldLog4 | 2;
  }

  else
  {
    v24 = shouldLog4;
  }

  oSLogObject4 = [iTunesStoreDataConsumer2 OSLogObject];
  if (!os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_DEFAULT))
  {
    v24 &= 2u;
  }

  if (!v24)
  {
    goto LABEL_29;
  }

  v26 = objc_opt_class();
  v27 = v26;
  v50 = 138412546;
  v51 = v26;
  v52 = 2048;
  taskIdentifier = [taskCopy taskIdentifier];
  LODWORD(v49) = 22;
  v28 = _os_log_send_and_compose_impl();

  if (v28)
  {
    oSLogObject4 = [NSString stringWithCString:v28 encoding:4, &v50, v49];
    free(v28);
    SSFileLog();
LABEL_29:
  }

LABEL_42:

  [taskCopy cancelWithITunesStoreReason:3 error:0];
  handlerCopy[2](handlerCopy, 0);
LABEL_60:
}

- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error
{
  taskCopy = task;
  errorCopy = error;
  v9 = +[SSLogConfig sharedDaemonConfig];
  if (!v9)
  {
    v9 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v9 shouldLog];
  if ([v9 shouldLogToDisk])
  {
    v11 = shouldLog | 2;
  }

  else
  {
    v11 = shouldLog;
  }

  oSLogObject = [v9 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v13 = v11;
  }

  else
  {
    v13 = v11 & 2;
  }

  if (v13)
  {
    v29 = 138412290;
    v30 = taskCopy;
    LODWORD(v23) = 12;
    v22 = &v29;
    v14 = _os_log_send_and_compose_impl();

    if (!v14)
    {
      goto LABEL_13;
    }

    oSLogObject = [NSString stringWithCString:v14 encoding:4, &v29, v23];
    free(v14);
    v22 = oSLogObject;
    SSFileLog();
  }

LABEL_13:
  v15 = [(NSMutableDictionary *)self->_downloadOperationsByTask objectForKey:taskCopy];
  if (v15)
  {
    [(NSMutableDictionary *)self->_downloadOperationsByTask removeObjectForKey:taskCopy];
    [v15 signalDownloadCompletion];
  }

  iTunesStoreDataConsumer = [taskCopy ITunesStoreDataConsumer];
  v17 = iTunesStoreDataConsumer;
  if (errorCopy)
  {
    [iTunesStoreDataConsumer suspend];
    v18 = 0;
  }

  else if (iTunesStoreDataConsumer)
  {
    v28 = 0;
    v18 = [iTunesStoreDataConsumer finish:&v28];
    errorCopy = v28;
  }

  else
  {
    errorCopy = 0;
    v18 = 1;
  }

  [taskCopy setITunesStoreDataConsumer:0];
  database = self->_database;
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100193E5C;
  v24[3] = &unk_10032AC10;
  v24[4] = self;
  v25 = taskCopy;
  v26 = errorCopy;
  v27 = v18;
  v20 = errorCopy;
  v21 = taskCopy;
  [(DownloadsDatabase *)database modifyAsyncUsingTransactionBlock:v24];
}

- (void)URLSession:(id)session task:(id)task didReceiveChallenge:(id)challenge completionHandler:(id)handler
{
  taskCopy = task;
  challengeCopy = challenge;
  handlerCopy = handler;
  database = self->_database;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10019500C;
  v16[3] = &unk_10032AC60;
  v16[4] = self;
  v17 = taskCopy;
  v18 = challengeCopy;
  v19 = handlerCopy;
  v13 = handlerCopy;
  v14 = challengeCopy;
  v15 = taskCopy;
  [(DownloadsDatabase *)database modifyAsyncUsingTransactionBlock:v16];
}

- (void)URLSession:(id)session _willRetryBackgroundDataTask:(id)task withError:(id)error
{
  taskCopy = task;
  errorCopy = error;
  database = self->_database;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10019534C;
  v12[3] = &unk_100328C60;
  v12[4] = self;
  v13 = taskCopy;
  v14 = errorCopy;
  v10 = errorCopy;
  v11 = taskCopy;
  [(DownloadsDatabase *)database modifyAsyncUsingTransactionBlock:v12];
}

- (void)URLSession:(id)session task:(id)task _willSendRequestForEstablishedConnection:(id)connection completionHandler:(id)handler
{
  taskCopy = task;
  connectionCopy = connection;
  handlerCopy = handler;
  v11 = connectionCopy;
  iTunesStoreDataConsumer = [taskCopy ITunesStoreDataConsumer];
  resumptionOffset = [iTunesStoreDataConsumer resumptionOffset];
  if ([iTunesStoreDataConsumer hasConsumedData])
  {
    [iTunesStoreDataConsumer reset];
    resumptionOffset = [iTunesStoreDataConsumer resumptionOffset];
    v14 = +[SSLogConfig sharedDaemonConfig];
    if (!v14)
    {
      v14 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v14 shouldLog];
    if ([v14 shouldLogToDisk])
    {
      v16 = shouldLog | 2;
    }

    else
    {
      v16 = shouldLog;
    }

    oSLogObject = [v14 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v18 = v16;
    }

    else
    {
      v18 = v16 & 2;
    }

    if (v18)
    {
      v44 = 134218240;
      taskIdentifier = [taskCopy taskIdentifier];
      v46 = 2048;
      v47 = resumptionOffset;
      LODWORD(v40) = 22;
      v39 = &v44;
      v19 = _os_log_send_and_compose_impl();

      if (!v19)
      {
LABEL_14:

        goto LABEL_15;
      }

      oSLogObject = [NSString stringWithCString:v19 encoding:4, &v44, v40];
      free(v19);
      v39 = oSLogObject;
      SSFileLog();
    }

    goto LABEL_14;
  }

LABEL_15:
  database = self->_database;
  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3221225472;
  v42[2] = sub_100195C68;
  v42[3] = &unk_1003294E0;
  v42[4] = self;
  v21 = taskCopy;
  v43 = v21;
  [(DownloadsDatabase *)database modifyAsyncUsingTransactionBlock:v42];
  if (resumptionOffset)
  {
    v22 = [v11 mutableCopy];
    v23 = [NSString stringWithFormat:@"bytes=%llu-", resumptionOffset];
    [v22 setValue:v23 forHTTPHeaderField:@"Range"];

    v24 = +[SSLogConfig sharedDaemonConfig];
    if (!v24)
    {
      v24 = +[SSLogConfig sharedConfig];
    }

    shouldLog2 = [v24 shouldLog];
    if ([v24 shouldLogToDisk])
    {
      v26 = shouldLog2 | 2;
    }

    else
    {
      v26 = shouldLog2;
    }

    oSLogObject2 = [v24 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_INFO))
    {
      v28 = v26;
    }

    else
    {
      v28 = v26 & 2;
    }

    if (!v28)
    {
      goto LABEL_38;
    }

    v29 = objc_opt_class();
    v30 = v29;
    taskIdentifier2 = [v21 taskIdentifier];
    v44 = 138412802;
    taskIdentifier = v29;
    v46 = 2048;
    v47 = resumptionOffset;
    v48 = 2048;
    v49 = taskIdentifier2;
    LODWORD(v40) = 32;
    v32 = _os_log_send_and_compose_impl();

LABEL_36:
    if (!v32)
    {
LABEL_39:

      goto LABEL_40;
    }

    oSLogObject2 = [NSString stringWithCString:v32 encoding:4, &v44, v40];
    free(v32);
    SSFileLog();
LABEL_38:

    goto LABEL_39;
  }

  v33 = [v11 valueForHTTPHeaderField:@"Range"];

  v22 = v11;
  if (v33)
  {
    v22 = [v11 mutableCopy];
    [v22 setValue:0 forHTTPHeaderField:@"Range"];

    v24 = +[SSLogConfig sharedDaemonConfig];
    if (!v24)
    {
      v24 = +[SSLogConfig sharedConfig];
    }

    shouldLog3 = [v24 shouldLog];
    if ([v24 shouldLogToDisk])
    {
      shouldLog3 |= 2u;
    }

    oSLogObject2 = [v24 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_INFO))
    {
      v35 = shouldLog3;
    }

    else
    {
      v35 = shouldLog3 & 2;
    }

    if (!v35)
    {
      goto LABEL_38;
    }

    v36 = objc_opt_class();
    v37 = v36;
    taskIdentifier3 = [v21 taskIdentifier];
    v44 = 138412546;
    taskIdentifier = v36;
    v46 = 2048;
    v47 = taskIdentifier3;
    LODWORD(v40) = 22;
    v32 = _os_log_send_and_compose_impl();

    goto LABEL_36;
  }

LABEL_40:
  handlerCopy[2](handlerCopy, v22);
}

- (void)downloadAssetFairPlayStreamingKeyLoader:(id)loader didFailWithError:(id)error
{
  loaderCopy = loader;
  errorCopy = error;
  database = self->_database;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100195DE8;
  v11[3] = &unk_1003281A0;
  v11[4] = self;
  v12 = loaderCopy;
  v13 = errorCopy;
  v9 = errorCopy;
  v10 = loaderCopy;
  [(DownloadsDatabase *)database dispatchBlockAsync:v11];
}

- (id)_applicationBundleIdentifierForDownloadIdentifier:(int64_t)identifier databaseTransaction:(id)transaction
{
  transactionCopy = transaction;
  v6 = [DownloadEntity alloc];
  database = [transactionCopy database];
  v8 = [(DownloadEntity *)v6 initWithPersistentID:identifier inDatabase:database];

  v13[0] = @"bundle_id";
  v13[1] = @"kind";
  v12[0] = 0;
  v12[1] = 0;
  [(DownloadEntity *)v8 getValues:v12 forProperties:v13 count:2];
  v9 = 0;
  if (SSDownloadKindIsSoftwareKind())
  {
    v9 = v12[0];
  }

  for (i = 1; i != -1; --i)
  {
  }

  return v9;
}

- (id)_applicationHandleForDownloadIdentifier:(int64_t)identifier databaseTransaction:(id)transaction
{
  transactionCopy = transaction;
  v6 = [DownloadEntity alloc];
  database = [transactionCopy database];
  v8 = [(DownloadEntity *)v6 initWithPersistentID:identifier inDatabase:database];

  v16[0] = @"bundle_id";
  v16[1] = @"kind";
  v16[2] = @"transaction_id";
  v14[0] = 0;
  v14[1] = 0;
  v15 = 0;
  [(DownloadEntity *)v8 getValues:v14 forProperties:v16 count:3];
  v9 = 0;
  if (SSDownloadKindIsSoftwareKind() && v14[0])
  {
    if (v15)
    {
      v10 = [ApplicationHandle alloc];
      longLongValue = [v15 longLongValue];
      v9 = [(ApplicationHandle *)v10 initWithTransactionIdentifier:longLongValue downloadIdentifier:identifier bundleIdentifier:v14[0]];
    }

    else
    {
      v9 = 0;
    }
  }

  for (i = 2; i != -1; --i)
  {
  }

  return v9;
}

- (void)_attemptRecoveryForDownloadWithTaskState:(id)state databaseSession:(id)session
{
  stateCopy = state;
  sessionCopy = session;
  v8 = -[ExpiredDownloadRecoveryOperation initWithDownloadIdentifier:databaseSession:]([ExpiredDownloadRecoveryOperation alloc], "initWithDownloadIdentifier:databaseSession:", [stateCopy downloadIdentifier], sessionCopy);
  objc_initWeak(&location, self);
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_1001964C4;
  v12 = &unk_10032AC88;
  objc_copyWeak(&v13, &location);
  [(ExpiredDownloadRecoveryOperation *)v8 setOutputBlock:&v9];
  [(NSMapTable *)self->_taskStates setObject:stateCopy forKey:v8, v9, v10, v11, v12];
  [(ISOperationQueue *)self->_processingOperationQueue addOperation:v8];
  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (id)_authenticationChallengeQueue
{
  authenticationChallengeQueue = self->_authenticationChallengeQueue;
  if (!authenticationChallengeQueue)
  {
    v4 = objc_alloc_init(ISOperationQueue);
    v5 = self->_authenticationChallengeQueue;
    self->_authenticationChallengeQueue = v4;

    [(ISOperationQueue *)self->_authenticationChallengeQueue setMaxConcurrentOperationCount:1];
    [(ISOperationQueue *)self->_authenticationChallengeQueue setName:@"com.apple.itunesstored.DownloadPipeline.auth"];
    authenticationChallengeQueue = self->_authenticationChallengeQueue;
  }

  return authenticationChallengeQueue;
}

- (void)_commitProgressTimer
{
  if ([(NSMutableSet *)self->_dirtyTaskStates count])
  {
    database = self->_database;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10019665C;
    v7[3] = &unk_100329558;
    v7[4] = self;
    v4 = [(DownloadsDatabase *)database modifyUsingTransactionBlock:v7];
    [(NSMutableSet *)self->_dirtyTaskStates removeAllObjects];
  }

  progressTimer = self->_progressTimer;
  if (progressTimer)
  {
    dispatch_source_cancel(progressTimer);
    v6 = self->_progressTimer;
    self->_progressTimer = 0;
  }
}

- (void)_disavowDownloadHandlerSession:(id)session withTaskState:(id)state
{
  sessionCopy = session;
  stateCopy = state;
  if ([stateCopy requiresDownloadHandler])
  {
    database = self->_database;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100196D74;
    v10[3] = &unk_100328C60;
    v11 = stateCopy;
    selfCopy = self;
    v13 = sessionCopy;
    v9 = [(DownloadsDatabase *)database modifyUsingTransactionBlock:v10];
  }

  [(DownloadPipeline *)self _releaseDownloadHandlerSession:sessionCopy withTaskState:stateCopy];
}

- (BOOL)_downloadIsForLegacyClientWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = self->_taskStates;
  v6 = [(NSMapTable *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = [(NSMapTable *)self->_taskStates objectForKey:v10, v16];
          if ([v11 isLegacyClient])
          {
            v12 = [[NSNumber alloc] initWithLongLong:{objc_msgSend(v11, "downloadIdentifier")}];
            v13 = [identifierCopy isEqualToNumber:v12];

            if (v13)
            {

              v14 = 1;
              goto LABEL_14;
            }
          }
        }
      }

      v7 = [(NSMapTable *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_14:

  return v14;
}

- (id)_downloadSessionPropertiesWithPhase:(id)phase taskState:(id)state databaseSession:(id)session
{
  phaseCopy = phase;
  stateCopy = state;
  sessionCopy = session;
  v10 = [DownloadEntity alloc];
  downloadIdentifier = [stateCopy downloadIdentifier];
  database = [sessionCopy database];
  v13 = [(DownloadEntity *)v10 initWithPersistentID:downloadIdentifier inDatabase:database];

  v20[0] = @"client_id";
  v20[1] = @"handler_id";
  v20[2] = @"is_from_store";
  v20[3] = @"suppress_error_dialogs";
  v18 = 0u;
  v19 = 0u;
  [(DownloadEntity *)v13 getValues:&v18 forProperties:v20 count:4];
  v14 = [DownloadSessionProperties alloc];
  v15 = -[DownloadSessionProperties initWithClientIdentifier:handlerIdentifier:](v14, "initWithClientIdentifier:handlerIdentifier:", v18, [*(&v18 + 1) longLongValue]);
  -[DownloadSessionProperties setAssetIdentifier:](v15, "setAssetIdentifier:", [stateCopy mediaAssetIdentifier]);
  -[DownloadSessionProperties setDownloadIdentifier:](v15, "setDownloadIdentifier:", [stateCopy downloadIdentifier]);
  [(DownloadSessionProperties *)v15 setDownloadPhase:phaseCopy];
  -[DownloadSessionProperties setStoreDownload:](v15, "setStoreDownload:", [v19 BOOLValue]);
  -[DownloadSessionProperties setShouldSupressErrorDialogs:](v15, "setShouldSupressErrorDialogs:", [*(&v19 + 1) BOOLValue]);
  for (i = 3; i != -1; --i)
  {
  }

  return v15;
}

- (void)_failDownloadWithIdentifier:(id)identifier error:(id)error transaction:(id)transaction
{
  transactionCopy = transaction;
  errorCopy = error;
  identifierCopy = identifier;
  v10 = [DownloadEntity alloc];
  longLongValue = [identifierCopy longLongValue];

  database = [transactionCopy database];
  v14 = [(DownloadEntity *)v10 initWithPersistentID:longLongValue inDatabase:database];

  v13 = [(DownloadEntity *)v14 failWithError:errorCopy];

  [transactionCopy unionChangeset:v13];
}

- (void)_finishDownloadWithOperation:(id)operation response:(id)response
{
  operationCopy = operation;
  responseCopy = response;
  database = self->_database;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100197548;
  v11[3] = &unk_100328C60;
  v11[4] = self;
  v12 = operationCopy;
  v13 = responseCopy;
  v9 = responseCopy;
  v10 = operationCopy;
  [(DownloadsDatabase *)database modifyAsyncUsingTransactionBlock:v11];
}

- (void)_taskReceived:(id)received persistAVAssetDownloadToken:(unint64_t)token
{
  receivedCopy = received;
  database = self->_database;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001983D0;
  v9[3] = &unk_10032ACB0;
  v9[4] = self;
  v10 = receivedCopy;
  tokenCopy = token;
  v8 = receivedCopy;
  [(DownloadsDatabase *)database modifyAsyncUsingTransactionBlock:v9];
}

- (void)_performDownloadOperation:(id)operation
{
  operationCopy = operation;
  response = [operationCopy response];
  downloadIdentifier = [response downloadIdentifier];
  if (!downloadIdentifier)
  {
    v6 = +[SSLogConfig sharedDaemonConfig];
    if (!v6)
    {
      v6 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v6 shouldLog];
    if ([v6 shouldLogToDisk])
    {
      shouldLog |= 2u;
    }

    oSLogObject = [v6 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v9 = shouldLog;
    }

    else
    {
      v9 = shouldLog & 2;
    }

    if (v9)
    {
      *v123 = 0;
      LODWORD(v90) = 2;
      v88 = v123;
      v10 = _os_log_send_and_compose_impl();

      if (v10)
      {
        v11 = [NSString stringWithCString:v10 encoding:4, v123, v90];
        free(v10);
        v88 = v11;
        SSFileLog();
      }
    }

    else
    {
    }
  }

  result = [response result];
  if (sub_1001DF9EC(result))
  {
    kind = [response kind];
    v14 = [ScratchManager directoryPathForDownloadID:downloadIdentifier kind:kind createIfNeeded:1];

    bundleIdentifier = [response bundleIdentifier];
    v16 = [bundleIdentifier length] == 0;

    v17 = +[SSLogConfig sharedDaemonConfig];
    v18 = v17;
    if (v16)
    {
      if (!v17)
      {
        v18 = +[SSLogConfig sharedConfig];
      }

      shouldLog2 = [v18 shouldLog];
      if ([v18 shouldLogToDisk])
      {
        shouldLog2 |= 2u;
      }

      oSLogObject2 = [v18 OSLogObject];
      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_INFO))
      {
        v25 = shouldLog2;
      }

      else
      {
        v25 = shouldLog2 & 2;
      }

      if (!v25)
      {
        goto LABEL_36;
      }

      *v123 = 138412546;
      *&v123[4] = v14;
      *&v123[12] = 2048;
      *&v123[14] = downloadIdentifier;
      LODWORD(v90) = 22;
      v89 = v123;
      v23 = _os_log_send_and_compose_impl();
    }

    else
    {
      if (!v17)
      {
        v18 = +[SSLogConfig sharedConfig];
      }

      shouldLog3 = [v18 shouldLog];
      if ([v18 shouldLogToDisk])
      {
        shouldLog3 |= 2u;
      }

      oSLogObject2 = [v18 OSLogObject];
      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_INFO))
      {
        v21 = shouldLog3;
      }

      else
      {
        v21 = shouldLog3 & 2;
      }

      if (!v21)
      {
        goto LABEL_36;
      }

      bundleIdentifier2 = [response bundleIdentifier];
      *v123 = 138412802;
      *&v123[4] = v14;
      *&v123[12] = 2048;
      *&v123[14] = downloadIdentifier;
      *&v123[22] = 2112;
      v124 = bundleIdentifier2;
      LODWORD(v90) = 32;
      v89 = v123;
      v23 = _os_log_send_and_compose_impl();
    }

    if (!v23)
    {
LABEL_37:

      goto LABEL_38;
    }

    oSLogObject2 = [NSString stringWithCString:v23 encoding:4, v123, v90];
    free(v23);
    v89 = oSLogObject2;
    SSFileLog();
LABEL_36:

    goto LABEL_37;
  }

LABEL_38:
  uRLSessionIdentifier = [response URLSessionIdentifier];
  *v123 = 0;
  *&v123[8] = v123;
  *&v123[16] = 0x3032000000;
  v124 = sub_100199644;
  v125 = sub_100199654;
  v126 = 0;
  database = self->_database;
  v111[0] = _NSConcreteStackBlock;
  v111[1] = 3221225472;
  v111[2] = sub_10019965C;
  v111[3] = &unk_100329468;
  v28 = response;
  selfCopy = self;
  v114 = v123;
  v112 = v28;
  [(DownloadsDatabase *)database dispatchBlockSync:v111];
  v105 = 0;
  v106 = &v105;
  v107 = 0x3032000000;
  v108 = sub_100199644;
  v109 = sub_100199654;
  v110 = 0;
  isHLS = [v28 isHLS];
  v30 = *(*&v123[8] + 40);
  if (isHLS)
  {
    if (v30)
    {
      goto LABEL_44;
    }

    sessionConfiguration = [v28 sessionConfiguration];
    v32 = [AVAssetDownloadURLSession sessionWithConfiguration:sessionConfiguration assetDownloadDelegate:self delegateQueue:0];
  }

  else
  {
    if (v30)
    {
      goto LABEL_44;
    }

    sessionConfiguration = [v28 sessionConfiguration];
    v32 = [NSURLSession sessionWithConfiguration:sessionConfiguration delegate:self delegateQueue:0];
  }

  v33 = *(*&v123[8] + 40);
  *(*&v123[8] + 40) = v32;

LABEL_44:
  if (result)
  {
    v34 = 0;
    v35 = 0;
  }

  else
  {
    v36 = *(*&v123[8] + 40);
    v104 = 0;
    v35 = [v28 sessionTaskWithSession:v36 error:&v104];
    v34 = v104;
  }

  v37 = self->_database;
  v94[0] = _NSConcreteStackBlock;
  v94[1] = 3221225472;
  v94[2] = sub_1001996D0;
  v94[3] = &unk_10032ACD8;
  v38 = v28;
  v95 = v38;
  selfCopy2 = self;
  v100 = v123;
  v39 = uRLSessionIdentifier;
  v97 = v39;
  v101 = &v105;
  v102 = result;
  v103 = downloadIdentifier;
  v40 = v35;
  v98 = v40;
  v41 = v34;
  v99 = v41;
  v42 = [(DownloadsDatabase *)v37 modifyUsingTransactionBlock:v94];
  if (!v106[5])
  {
    if (!v40)
    {
      goto LABEL_107;
    }

    if ([v38 isRestore])
    {
      isCellularAllowed = [v38 isCellularAllowed];
      v54 = +[RestoreManager sharedInstance];
      isCellularAllowed2 = [v54 isCellularAllowed];

      if (isCellularAllowed != isCellularAllowed2)
      {
        v56 = +[SSLogConfig sharedDaemonConfig];
        if (!v56)
        {
          v56 = +[SSLogConfig sharedConfig];
        }

        shouldLog4 = [v56 shouldLog];
        shouldLogToDisk = [v56 shouldLogToDisk];
        oSLogObject3 = [v56 OSLogObject];
        v60 = oSLogObject3;
        if (shouldLogToDisk)
        {
          v61 = shouldLog4 | 2;
        }

        else
        {
          v61 = shouldLog4;
        }

        if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
        {
          v62 = v61;
        }

        else
        {
          v62 = v61 & 2;
        }

        if (v62)
        {
          taskIdentifier = [v40 taskIdentifier];
          v115 = 134218240;
          v116 = taskIdentifier;
          v117 = 2048;
          v118 = downloadIdentifier;
          LODWORD(v90) = 22;
          v64 = _os_log_send_and_compose_impl();

          if (!v64)
          {
LABEL_76:

            [v40 cancelWithITunesStoreReason:3 error:0];
            goto LABEL_107;
          }

          v60 = [NSString stringWithCString:v64 encoding:4, &v115, v90];
          free(v64);
          SSFileLog();
        }

        goto LABEL_76;
      }
    }

    v65 = +[SSLogConfig sharedDaemonConfig];
    if (!v65)
    {
      v65 = +[SSLogConfig sharedConfig];
    }

    shouldLog5 = [v65 shouldLog];
    shouldLogToDisk2 = [v65 shouldLogToDisk];
    oSLogObject4 = [v65 OSLogObject];
    v69 = oSLogObject4;
    if (shouldLogToDisk2)
    {
      v70 = shouldLog5 | 2;
    }

    else
    {
      v70 = shouldLog5;
    }

    if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_DEFAULT))
    {
      v71 = v70;
    }

    else
    {
      v71 = v70 & 2;
    }

    if (v71)
    {
      taskIdentifier2 = [v40 taskIdentifier];
      _priority = [v40 _priority];
      v115 = 134218754;
      v116 = taskIdentifier2;
      v117 = 2048;
      v118 = _priority;
      v119 = 2048;
      v120 = downloadIdentifier;
      v121 = 2114;
      v122 = v39;
      LODWORD(v90) = 42;
      v74 = _os_log_send_and_compose_impl();

      if (!v74)
      {
        goto LABEL_89;
      }

      v69 = [NSString stringWithCString:v74 encoding:4, &v115, v90];
      free(v74);
      SSFileLog();
    }

LABEL_89:
    v75 = objc_opt_class();
    taskIdentifier3 = [v40 taskIdentifier];
    _priority2 = [v40 _priority];
    SSDebugLog();
    [v40 resume];
    kind2 = [v38 kind];
    if (([kind2 isEqualToString:SSDownloadKindMusic] & 1) == 0)
    {
      kind3 = [v38 kind];
      if (![kind3 isEqualToString:SSDownloadKindMusicVideo])
      {
        isHLS2 = [v38 isHLS];

        if ((isHLS2 & 1) == 0)
        {
LABEL_94:
          v79 = +[SSLogConfig sharedDaemonConfig];
          if (!v79)
          {
            v79 = +[SSLogConfig sharedConfig];
          }

          shouldLog6 = [v79 shouldLog];
          shouldLogToDisk3 = [v79 shouldLogToDisk];
          oSLogObject5 = [v79 OSLogObject];
          v83 = oSLogObject5;
          if (shouldLogToDisk3)
          {
            v84 = shouldLog6 | 2;
          }

          else
          {
            v84 = shouldLog6;
          }

          if (os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_INFO))
          {
            v85 = v84;
          }

          else
          {
            v85 = v84 & 2;
          }

          if (v85)
          {
            v115 = 138412290;
            v116 = v40;
            LODWORD(v91) = 12;
            v86 = _os_log_send_and_compose_impl();

            if (!v86)
            {
LABEL_106:

              goto LABEL_107;
            }

            v83 = [NSString stringWithCString:v86 encoding:4, &v115, v91];
            free(v86);
            SSFileLog();
          }

          goto LABEL_106;
        }

LABEL_93:
        [operationCopy setWaitForDownload:1];
        [(NSMutableDictionary *)self->_downloadOperationsByTask setObject:operationCopy forKey:v40];
        goto LABEL_94;
      }
    }

    goto LABEL_93;
  }

  v43 = +[SSLogConfig sharedDaemonConfig];
  if (!v43)
  {
    v43 = +[SSLogConfig sharedConfig];
  }

  shouldLog7 = [v43 shouldLog];
  shouldLogToDisk4 = [v43 shouldLogToDisk];
  oSLogObject6 = [v43 OSLogObject];
  v47 = oSLogObject6;
  if (shouldLogToDisk4)
  {
    v48 = shouldLog7 | 2;
  }

  else
  {
    v48 = shouldLog7;
  }

  if (os_log_type_enabled(oSLogObject6, OS_LOG_TYPE_DEFAULT))
  {
    v49 = v48;
  }

  else
  {
    v49 = v48 & 2;
  }

  if (!v49)
  {
    goto LABEL_59;
  }

  sessionID = [v106[5] sessionID];
  v115 = 134218240;
  v116 = sessionID;
  v117 = 2048;
  v118 = downloadIdentifier;
  LODWORD(v90) = 22;
  v51 = _os_log_send_and_compose_impl();

  if (v51)
  {
    v47 = [NSString stringWithCString:v51 encoding:4, &v115, v90];
    free(v51);
    SSFileLog();
LABEL_59:
  }

  v52 = +[DownloadHandlerManager handlerManager];
  [v52 beginSessionWithID:{objc_msgSend(v106[5], "sessionID")}];

  [v40 cancel];
LABEL_107:

  _Block_object_dispose(&v105, 8);
  _Block_object_dispose(v123, 8);
}

- (void)_finishRecoveryWithOperation:(id)operation response:(id)response
{
  operationCopy = operation;
  responseCopy = response;
  database = self->_database;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10019A620;
  v11[3] = &unk_100328C60;
  v11[4] = self;
  v12 = operationCopy;
  v13 = responseCopy;
  v9 = responseCopy;
  v10 = operationCopy;
  [(DownloadsDatabase *)database modifyAsyncUsingTransactionBlock:v11];
}

- (BOOL)_hasAutomaticUpdateTasks
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = self->_taskStates;
  v4 = [(NSMapTable *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [(NSMapTable *)self->_taskStates objectForKey:*(*(&v12 + 1) + 8 * i), v12];
        automaticType = [v8 automaticType];

        if (automaticType == 2)
        {
          v10 = 1;
          goto LABEL_11;
        }
      }

      v5 = [(NSMapTable *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (void)_logDownloadEvent:(id)event forTaskWithState:(id)state session:(id)session
{
  sessionCopy = session;
  stateCopy = state;
  eventCopy = event;
  downloadIdentifier = [stateCopy downloadIdentifier];
  mediaAssetIdentifier = [stateCopy mediaAssetIdentifier];

  v13 = [sessionCopy newEventDictionaryWithDownloadIdentifier:downloadIdentifier assetIdentifier:mediaAssetIdentifier];
  v12 = +[EventDispatcher eventDispatcher];
  [v12 postEventWithName:eventCopy userInfo:v13];
}

- (void)_performDefaultHandlingForAuthenticationChallenge:(id)challenge withSessionProperties:(id)properties completionHandler:(id)handler
{
  challengeCopy = challenge;
  propertiesCopy = properties;
  handlerCopy = handler;
  protectionSpace = [challengeCopy protectionSpace];
  authenticationMethod = [protectionSpace authenticationMethod];
  if (![authenticationMethod isEqualToString:NSURLAuthenticationMethodClientCertificate])
  {
    if ([authenticationMethod isEqualToString:NSURLAuthenticationMethodServerTrust])
    {
      v13 = +[NSURLCredential credentialForTrust:](NSURLCredential, "credentialForTrust:", [protectionSpace serverTrust]);
      handlerCopy[2](handlerCopy, 0, v13);

      goto LABEL_28;
    }

    if ([propertiesCopy isStoreDownload])
    {
      v14 = +[SSLogConfig sharedDaemonConfig];
      if (!v14)
      {
        v14 = +[SSLogConfig sharedConfig];
      }

      shouldLog = [v14 shouldLog];
      if ([v14 shouldLogToDisk])
      {
        v16 = shouldLog | 2;
      }

      else
      {
        v16 = shouldLog;
      }

      oSLogObject = [v14 OSLogObject];
      if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
      {
        v16 &= 2u;
      }

      if (!v16)
      {
        goto LABEL_26;
      }
    }

    else
    {
      if (![propertiesCopy shouldSupressErrorDialogs])
      {
        v21 = [[ISURLAuthenticationChallenge alloc] initWithAuthenticationChallenge:challengeCopy];
        v22 = [[ISDialog alloc] initWithAuthenticationChallege:v21];
        v23 = [[DaemonDialogOperation alloc] initWithDialog:v22];
        v26[0] = _NSConcreteStackBlock;
        v26[1] = 3221225472;
        v26[2] = sub_10019AFA4;
        v26[3] = &unk_10032AD00;
        v27 = handlerCopy;
        [(DaemonDialogOperation *)v23 setOutputBlock:v26];
        _authenticationChallengeQueue = [(DownloadPipeline *)self _authenticationChallengeQueue];
        [_authenticationChallengeQueue addOperation:v23];

        goto LABEL_28;
      }

      v14 = +[SSLogConfig sharedDaemonConfig];
      if (!v14)
      {
        v14 = +[SSLogConfig sharedConfig];
      }

      shouldLog2 = [v14 shouldLog];
      if ([v14 shouldLogToDisk])
      {
        v19 = shouldLog2 | 2;
      }

      else
      {
        v19 = shouldLog2;
      }

      oSLogObject = [v14 OSLogObject];
      if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
      {
        v19 &= 2u;
      }

      if (!v19)
      {
        goto LABEL_26;
      }
    }

    v28 = 134217984;
    downloadIdentifier = [propertiesCopy downloadIdentifier];
    LODWORD(v25) = 12;
    v20 = _os_log_send_and_compose_impl();

    if (!v20)
    {
LABEL_27:

      handlerCopy[2](handlerCopy, 2, 0);
      goto LABEL_28;
    }

    oSLogObject = [NSString stringWithCString:v20 encoding:4, &v28, v25];
    free(v20);
    SSFileLog();
LABEL_26:

    goto LABEL_27;
  }

  handlerCopy[2](handlerCopy, 1, 0);
LABEL_28:
}

- (void)_prepareDownloadsMatchingPredicate:(id)predicate ignoreDownloadHandlers:(BOOL)handlers filtersExistingTasks:(BOOL)tasks
{
  predicateCopy = predicate;
  database = self->_database;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10019B1B0;
  v11[3] = &unk_10032AD78;
  tasksCopy = tasks;
  v11[4] = self;
  v12 = predicateCopy;
  handlersCopy = handlers;
  v10 = predicateCopy;
  [(DownloadsDatabase *)database readUsingTransactionBlock:v11];
}

- (void)_processDownloadWithTaskState:(id)state databaseSession:(id)session setupBlock:(id)block
{
  blockCopy = block;
  sessionCopy = session;
  stateCopy = state;
  [stateCopy setTransferProgress:1.0];
  [(NSMutableSet *)self->_dirtyTaskStates addObject:stateCopy];
  [(DownloadPipeline *)self _startProgressTimer];
  [(DownloadPipeline *)self _queueFinishDownloadWithtaskState:stateCopy databaseSession:sessionCopy setupBlock:blockCopy];
}

- (void)_queueFinishDownloadWithtaskState:(id)state databaseSession:(id)session setupBlock:(id)block
{
  stateCopy = state;
  sessionCopy = session;
  blockCopy = block;
  v11 = -[FinishDownloadOperation initWithDownloadIdentifier:databaseSession:]([FinishDownloadOperation alloc], "initWithDownloadIdentifier:databaseSession:", [stateCopy downloadIdentifier], sessionCopy);
  [(FinishDownloadOperation *)v11 setDelegate:self];
  [(FinishDownloadOperation *)v11 setShouldRunWithBackgroundPriority:1];
  objc_initWeak(&location, self);
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_10019B804;
  v15 = &unk_10032ADA0;
  objc_copyWeak(&v16, &location);
  [(FinishDownloadOperation *)v11 setOutputBlock:&v12];
  if (blockCopy)
  {
    blockCopy[2](blockCopy, v11);
  }

  [(NSMapTable *)self->_taskStates setObject:stateCopy forKey:v11, v12, v13, v14, v15];
  [(ISOperationQueue *)self->_processingOperationQueue addOperation:v11];
  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

- (void)_processDownloadFailureWithTaskState:(id)state cancelReason:(int64_t)reason
{
  stateCopy = state;
  bundleIdentifier = [stateCopy bundleIdentifier];
  if (reason == 1)
  {
    v8 = @"Unrecoverable Error";
  }

  else
  {
    v8 = @"Download Error";
  }

  v9 = +[SSLogConfig sharedDaemonConfig];
  if (!v9)
  {
    v9 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v9 shouldLog];
  if ([v9 shouldLogToDisk])
  {
    v11 = shouldLog | 2;
  }

  else
  {
    v11 = shouldLog;
  }

  oSLogObject = [v9 OSLogObject];
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v11 &= 2u;
  }

  if (!v11)
  {
    goto LABEL_16;
  }

  downloadIdentifier = [stateCopy downloadIdentifier];
  v14 = @"User Stopped";
  if (reason != 2)
  {
    v14 = v8;
  }

  v24 = 134218242;
  v25 = downloadIdentifier;
  v26 = 2112;
  v27 = v14;
  LODWORD(v23) = 22;
  v22 = &v24;
  v15 = _os_log_send_and_compose_impl();

  if (v15)
  {
    oSLogObject = [NSString stringWithCString:v15 encoding:4, &v24, v23];
    free(v15);
    v22 = oSLogObject;
    SSFileLog();
LABEL_16:
  }

  kind = [stateCopy kind];
  if (kind && SSDownloadKindIsSoftwareKind() && [bundleIdentifier length])
  {
    v17 = [ApplicationHandle alloc];
    downloadHandle = [stateCopy downloadHandle];
    bundleIdentifier2 = [stateCopy bundleIdentifier];
    v20 = [(ApplicationHandle *)v17 initWithDownloadHandle:downloadHandle bundleIdentifier:bundleIdentifier2];

    v21 = +[ApplicationWorkspace defaultWorkspace];
    [v21 restorePlaceholderForApplicationHandle:v20];
  }

  [stateCopy setTransferProgress:{1.0, v22}];
  [(NSMutableSet *)self->_dirtyTaskStates addObject:stateCopy];
}

- (void)_releaseDownloadHandlerSession:(id)session withTaskState:(id)state
{
  stateCopy = state;
  sessionProperties = [session sessionProperties];
  downloadPhase = [sessionProperties downloadPhase];

  if ([downloadPhase isEqualToString:SSDownloadPhaseDownloading])
  {
    v9 = +[SSSQLiteComparisonPredicate predicateWithProperty:equalToLongLong:](SSSQLiteComparisonPredicate, "predicateWithProperty:equalToLongLong:", SSSQLEntityPropertyPersistentID, [stateCopy downloadIdentifier]);
    [(DownloadPipeline *)self _prepareDownloadsMatchingPredicate:v9 ignoreDownloadHandlers:1 filtersExistingTasks:0];
  }

  else
  {
    database = self->_database;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10019BC5C;
    v11[3] = &unk_1003294B8;
    v11[4] = self;
    v12 = stateCopy;
    v13 = downloadPhase;
    [(DownloadsDatabase *)database readUsingTransactionBlock:v11];
  }
}

- (void)_reloadKeepAliveAssertion
{
  if ([(NSMutableOrderedSet *)self->_preparationDownloadIDs count])
  {
    if (self->_holdingKeepAliveAssertion)
    {
      return;
    }

    self->_holdingKeepAliveAssertion = 1;
    goto LABEL_16;
  }

  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = self->_taskStates;
  v4 = [(NSMapTable *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v3);
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          LODWORD(v4) = 1;
          goto LABEL_14;
        }
      }

      v4 = [(NSMapTable *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:

  if (self->_holdingKeepAliveAssertion != v4)
  {
    self->_holdingKeepAliveAssertion = v4;
    if (!v4)
    {
      v7 = +[Daemon daemon];
      [v7 releaseKeepAliveAssertion:@"com.apple.itunesstored.DownloadPipeline"];
      goto LABEL_18;
    }

LABEL_16:
    v7 = +[Daemon daemon];
    [v7 takeKeepAliveAssertion:@"com.apple.itunesstored.DownloadPipeline"];
LABEL_18:
  }
}

- (void)_scheduleReconnect
{
  reconnectTimer = self->_reconnectTimer;
  if (reconnectTimer)
  {
    v3 = dispatch_time(0, 10000000000);

    dispatch_source_set_timer(reconnectTimer, v3, 0, 0);
  }

  else
  {
    v5 = [(DownloadsDatabase *)self->_database newDispatchSourceWithType:&_dispatch_source_type_timer];
    v6 = self->_reconnectTimer;
    self->_reconnectTimer = v5;

    v7 = self->_reconnectTimer;
    v8 = dispatch_time(0, 10000000000);
    dispatch_source_set_timer(v7, v8, 0, 0);
    objc_initWeak(&location, self);
    v9 = self->_reconnectTimer;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10019C034;
    v10[3] = &unk_100328150;
    objc_copyWeak(&v11, &location);
    dispatch_source_set_event_handler(v9, v10);
    dispatch_resume(self->_reconnectTimer);
    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

- (void)_setDownloadPhase:(id)phase forDownloadIdentifier:(int64_t)identifier databaseTransaction:(id)transaction
{
  phaseCopy = phase;
  transactionCopy = transaction;
  if (!identifier)
  {
    v9 = +[SSLogConfig sharedDaemonConfig];
    if (!v9)
    {
      v9 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v9 shouldLog];
    if ([v9 shouldLogToDisk])
    {
      v11 = shouldLog | 2;
    }

    else
    {
      v11 = shouldLog;
    }

    oSLogObject = [v9 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v11;
    }

    else
    {
      v13 = v11 & 2;
    }

    if (v13)
    {
      v23[0] = 0;
      LODWORD(v22) = 2;
      v14 = _os_log_send_and_compose_impl();

      if (!v14)
      {
LABEL_14:

        goto LABEL_15;
      }

      oSLogObject = [NSString stringWithCString:v14 encoding:4, v23, v22];
      free(v14);
      SSFileLog();
    }

    goto LABEL_14;
  }

LABEL_15:
  v15 = [DownloadEntity alloc];
  database = [transactionCopy database];
  v17 = [(DownloadEntity *)v15 initWithPersistentID:identifier inDatabase:database];

  [(DownloadEntity *)v17 setValue:phaseCopy forProperty:@"download_state.phase"];
  v18 = [NSDictionary alloc];
  v19 = [v18 initWithObjectsAndKeys:{phaseCopy, SSDownloadPropertyDownloadPhase, 0}];
  v20 = +[DownloadController controller];
  v21 = [(DownloadEntity *)v17 valueForProperty:@"kind"];
  [v20 notifyClientsOfPropertyChanges:v19 forDownloadID:identifier downloadKind:v21];
}

- (void)_startProgressTimer
{
  if (!self->_progressTimer)
  {
    objc_initWeak(&location, self);
    v3 = [(DownloadsDatabase *)self->_database newDispatchSourceWithType:&_dispatch_source_type_timer];
    progressTimer = self->_progressTimer;
    self->_progressTimer = v3;

    v5 = self->_progressTimer;
    v6 = dispatch_time(0, 500000000);
    dispatch_source_set_timer(v5, v6, 0xFFFFFFFFFFFFFFFFLL, 0);
    v7 = self->_progressTimer;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10019C50C;
    v8[3] = &unk_100328150;
    objc_copyWeak(&v9, &location);
    dispatch_source_set_event_handler(v7, v8);
    dispatch_resume(self->_progressTimer);
    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

- (BOOL)_isPodcast:(id)podcast
{
  v3 = [podcast valueForProperty:@"kind"];
  IsPodcastKind = SSDownloadKindIsPodcastKind();

  return IsPodcastKind;
}

- (void)_reportTVAppDownloadQOSMetricsIfAppropriateForKind:(id)kind adamID:(id)d rentalID:(id)iD error:(id)error cancelReason:(int64_t)reason
{
  kindCopy = kind;
  dCopy = d;
  iDCopy = iD;
  errorCopy = error;
  if (SSDownloadKindIsVideosAppKind())
  {
    if (reason == 2)
    {
      v15 = 300;
    }

    else if (errorCopy || reason == 1)
    {
      if (!errorCopy)
      {
        v16 = [NSError alloc];
        errorCopy = [v16 initWithDomain:SSErrorDomain code:100 userInfo:0];
      }

      v15 = 500;
    }

    else
    {
      errorCopy = 0;
      v15 = 200;
    }

    v85 = v15;
    v17 = ISWeakLinkedStringConstantForString();
    v18 = ISWeakLinkedStringConstantForString();
    v19 = ISWeakLinkedStringConstantForString();
    v20 = ISWeakLinkedStringConstantForString();
    v21 = ISWeakLinkedStringConstantForString();
    v94 = ISWeakLinkedStringConstantForString();
    v93 = ISWeakLinkedStringConstantForString();
    v92 = ISWeakLinkedStringConstantForString();
    v91 = ISWeakLinkedStringConstantForString();
    v90 = ISWeakLinkedStringConstantForString();
    v89 = ISWeakLinkedStringConstantForString();
    v88 = ISWeakLinkedStringConstantForString();
    v22 = ISWeakLinkedClassForString();
    if (!v22 || !v17 || !v18 || !v19 || !v20 || !v21 || !v94 || !v93 || !v92 || !v91 || !v90 || !v89 || !v88)
    {
      goto LABEL_98;
    }

    v23 = v22;
    v77 = v20;
    v78 = v19;
    v100[0] = v19;
    v100[1] = v20;
    v101[0] = &off_10034C090;
    v101[1] = &off_10034C0A8;
    v83 = v21;
    v100[2] = v21;
    v24 = [NSNumber numberWithUnsignedInt:arc4random()];
    v101[2] = v24;
    v101[3] = &__kCFBooleanFalse;
    v100[3] = v94;
    v100[4] = v93;
    v100[5] = v92;
    v101[4] = &__kCFBooleanTrue;
    v101[5] = @"com.apple.tv";
    v87 = [NSDictionary dictionaryWithObjects:v101 forKeys:v100 count:6];

    v79 = v18;
    v98[0] = v18;
    v98[1] = @"ContentProvider";
    v99[0] = @"AppleTV";
    v99[1] = @"tvs.sbd.9001";
    v98[2] = @"iTunesServiceMonitoringKey";
    v99[2] = &__kCFBooleanTrue;
    v25 = [NSDictionary dictionaryWithObjects:v99 forKeys:v98 count:3];
    v26 = [v25 mutableCopy];

    v86 = v26;
    if (iDCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [iDCopy longLongValue])
    {
      v27 = @"com.apple.videos.movies.rental.cloud";
    }

    else
    {
      if (([kindCopy isEqualToString:SSDownloadKindMovie] & 1) == 0)
      {
        if (![kindCopy isEqualToString:SSDownloadKindTelevisionEpisode])
        {
          v28 = 0;
          v29 = 0;
          if (!dCopy)
          {
            goto LABEL_40;
          }

LABEL_35:
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            longLongValue = [dCopy longLongValue];
            v31 = v29 ^ 1;
            if (!longLongValue)
            {
              v31 = 1;
            }

            if ((v31 & 1) == 0)
            {
              v32 = [NSString stringWithFormat:@"a=%@:s=%@:e=%@", dCopy, @"tvs.sbd.9001", v28];
              [v86 setObject:v32 forKey:@"MediaIdentifier"];
            }
          }

LABEL_40:
          v82 = iDCopy;
          v33 = +[SSDevice currentDevice];
          storeFrontIdentifier = [v33 storeFrontIdentifier];

          if (storeFrontIdentifier)
          {
            [v86 setObject:storeFrontIdentifier forKey:@"StorefrontID"];
          }

          v76 = storeFrontIdentifier;
          v35 = +[SSLogConfig sharedDaemonConfig];
          if (!v35)
          {
            v35 = +[SSLogConfig sharedConfig];
          }

          shouldLog = [v35 shouldLog];
          if ([v35 shouldLogToDisk])
          {
            shouldLog |= 2u;
          }

          oSLogObject = [v35 OSLogObject];
          if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
          {
            v38 = shouldLog;
          }

          else
          {
            v38 = shouldLog & 2;
          }

          if (v38)
          {
            v96 = 138412290;
            v97[0] = v87;
            LODWORD(v74) = 12;
            v71 = &v96;
            v39 = _os_log_send_and_compose_impl();

            if (!v39)
            {
              goto LABEL_53;
            }

            oSLogObject = [NSString stringWithCString:v39 encoding:4, &v96, v74];
            free(v39);
            v71 = oSLogObject;
            SSFileLog();
          }

LABEL_53:
          v40 = +[SSLogConfig sharedDaemonConfig];
          if (!v40)
          {
            v40 = +[SSLogConfig sharedConfig];
          }

          shouldLog2 = [v40 shouldLog];
          if ([v40 shouldLogToDisk])
          {
            shouldLog2 |= 2u;
          }

          oSLogObject2 = [v40 OSLogObject];
          if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
          {
            v43 = shouldLog2;
          }

          else
          {
            v43 = shouldLog2 & 2;
          }

          if (v43)
          {
            v96 = 138412290;
            v97[0] = v86;
            LODWORD(v74) = 12;
            v72 = &v96;
            v44 = _os_log_send_and_compose_impl();

            if (!v44)
            {
              goto LABEL_64;
            }

            oSLogObject2 = [NSString stringWithCString:v44 encoding:4, &v96, v74];
            free(v44);
            v72 = oSLogObject2;
            SSFileLog();
          }

LABEL_64:
          v80 = v17;

          v45 = [[v23 alloc] initWithSessionInfo:v87 userInfo:v86 frameworksToCheck:0];
          [v45 setMessageLoggingBlock:&stru_10032AE08];
          v84 = v45;
          [v45 startConfigurationWithCompletionHandler:&stru_10032AE48];
          v46 = objc_alloc_init(NSMutableDictionary);
          v81 = errorCopy;
          v47 = errorCopy;
          v95 = v46;
          if (v47)
          {
            v48 = v47;
            v75 = dCopy;
            v49 = 0;
            do
            {
              v50 = [NSString stringWithFormat:@"errorDomain%d", v49];
              v51 = [NSString stringWithFormat:@"errorCode%d", v49];
              domain = [v48 domain];
              v53 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v48 code]);
              if (domain)
              {
                [v46 setObject:domain forKey:v50];
              }

              [v46 setObject:v53 forKey:v51];
              userInfo = [v48 userInfo];
              v55 = [userInfo objectForKey:NSUnderlyingErrorKey];

              v46 = v95;
              if (!v55)
              {
                break;
              }

              v48 = v55;
              v56 = v49 >= 9;
              v49 = (v49 + 1);
            }

            while (!v56);

            dCopy = v75;
            v21 = v83;
          }

          [v46 setObject:@"downloadResult" forKey:{@"event", v72}];
          v57 = objc_alloc_init(NSMutableDictionary);
          [v57 setObject:&off_10034C0C0 forKey:v91];
          v58 = [NSNumber numberWithUnsignedShort:v85];
          [v57 setObject:v58 forKey:v90];

          [v57 setObject:&off_10034C0D8 forKey:v89];
          [v57 setObject:v46 forKey:v88];
          v59 = +[SSLogConfig sharedDaemonConfig];
          if (!v59)
          {
            v59 = +[SSLogConfig sharedConfig];
          }

          shouldLog3 = [v59 shouldLog];
          if ([v59 shouldLogToDisk])
          {
            shouldLog3 |= 2u;
          }

          oSLogObject3 = [v59 OSLogObject];
          if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
          {
            v62 = shouldLog3;
          }

          else
          {
            v62 = shouldLog3 & 2;
          }

          iDCopy = v82;
          if (v62)
          {
            v96 = 67109378;
            LODWORD(v97[0]) = v85;
            WORD2(v97[0]) = 2112;
            *(v97 + 6) = v57;
            LODWORD(v74) = 18;
            v73 = &v96;
            v63 = _os_log_send_and_compose_impl();

            if (!v63)
            {
              goto LABEL_83;
            }

            oSLogObject3 = [NSString stringWithCString:v63 encoding:4, &v96, v74];
            free(v63);
            v73 = oSLogObject3;
            SSFileLog();
          }

LABEL_83:
          v64 = [v84 sendMessageWithDictionary:v57 error:0];
          v65 = +[SSLogConfig sharedDaemonConfig];
          if (!v65)
          {
            v65 = +[SSLogConfig sharedConfig];
          }

          shouldLog4 = [v65 shouldLog];
          if ([v65 shouldLogToDisk])
          {
            shouldLog4 |= 2u;
          }

          oSLogObject4 = [v65 OSLogObject];
          if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_INFO))
          {
            v68 = shouldLog4;
          }

          else
          {
            v68 = shouldLog4 & 2;
          }

          if (v68)
          {
            v69 = @"unsuccessful";
            if (v64)
            {
              v69 = @"successful";
            }

            v96 = 138412290;
            v97[0] = v69;
            LODWORD(v74) = 12;
            v70 = _os_log_send_and_compose_impl();

            v18 = v79;
            if (!v70)
            {
              goto LABEL_97;
            }

            oSLogObject4 = [NSString stringWithCString:v70 encoding:4, &v96, v74];
            free(v70);
            SSFileLog();
          }

          else
          {
            v18 = v79;
          }

LABEL_97:
          v17 = v80;
          errorCopy = v81;
          v20 = v77;
          v19 = v78;
LABEL_98:

          goto LABEL_99;
        }

        v27 = @"com.apple.videos.tvshows.purchase.cloud";
        v28 = @"episode";
LABEL_32:
        [v26 setObject:v27 forKey:v17];
        v29 = 1;
        if (!dCopy)
        {
          goto LABEL_40;
        }

        goto LABEL_35;
      }

      v27 = @"com.apple.videos.movies.purchase.cloud";
    }

    v28 = @"movie";
    goto LABEL_32;
  }

LABEL_99:
}

@end