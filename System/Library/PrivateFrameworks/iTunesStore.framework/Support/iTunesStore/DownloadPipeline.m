@interface DownloadPipeline
- (BOOL)_downloadIsForLegacyClientWithIdentifier:(id)a3;
- (BOOL)_hasAutomaticUpdateTasks;
- (BOOL)_isPodcast:(id)a3;
- (DownloadPipeline)initWithDownloadsDatabase:(id)a3;
- (id)_applicationBundleIdentifierForDownloadIdentifier:(int64_t)a3 databaseTransaction:(id)a4;
- (id)_applicationHandleForDownloadIdentifier:(int64_t)a3 databaseTransaction:(id)a4;
- (id)_authenticationChallengeQueue;
- (id)_downloadSessionPropertiesWithPhase:(id)a3 taskState:(id)a4 databaseSession:(id)a5;
- (id)restartDownloadsWithIdentifiers:(id)a3;
- (void)URLSession:(id)a3 _willRetryBackgroundDataTask:(id)a4 withError:(id)a5;
- (void)URLSession:(id)a3 aggregateAssetDownloadTask:(id)a4 didCompleteForMediaSelection:(id)a5;
- (void)URLSession:(id)a3 aggregateAssetDownloadTask:(id)a4 didLoadTimeRange:(id *)a5 totalTimeRangesLoaded:(id)a6 timeRangeExpectedToLoad:(id *)a7 forMediaSelection:(id)a8;
- (void)URLSession:(id)a3 aggregateAssetDownloadTask:(id)a4 willDownloadToURL:(id)a5;
- (void)URLSession:(id)a3 assetDownloadTask:(id)a4 didLoadTimeRange:(id *)a5 totalTimeRangesLoaded:(id)a6 timeRangeExpectedToLoad:(id *)a7;
- (void)URLSession:(id)a3 avAssetDownloadTask:(id)a4 didWriteData:(int64_t)a5 totalBytesWritten:(int64_t)a6 totalBytesExpectedToWrite:(int64_t)a7;
- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveData:(id)a5;
- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveResponse:(id)a5 completionHandler:(id)a6;
- (void)URLSession:(id)a3 task:(id)a4 _willSendRequestForEstablishedConnection:(id)a5 completionHandler:(id)a6;
- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5;
- (void)URLSession:(id)a3 task:(id)a4 didReceiveChallenge:(id)a5 completionHandler:(id)a6;
- (void)_attemptRecoveryForDownloadWithTaskState:(id)a3 databaseSession:(id)a4;
- (void)_commitProgressTimer;
- (void)_disavowDownloadHandlerSession:(id)a3 withTaskState:(id)a4;
- (void)_failDownloadWithIdentifier:(id)a3 error:(id)a4 transaction:(id)a5;
- (void)_finishDownloadWithOperation:(id)a3 response:(id)a4;
- (void)_finishRecoveryWithOperation:(id)a3 response:(id)a4;
- (void)_logDownloadEvent:(id)a3 forTaskWithState:(id)a4 session:(id)a5;
- (void)_performDefaultHandlingForAuthenticationChallenge:(id)a3 withSessionProperties:(id)a4 completionHandler:(id)a5;
- (void)_performDownloadOperation:(id)a3;
- (void)_prepareDownloadsMatchingPredicate:(id)a3 ignoreDownloadHandlers:(BOOL)a4 filtersExistingTasks:(BOOL)a5;
- (void)_processDownloadFailureWithTaskState:(id)a3 cancelReason:(int64_t)a4;
- (void)_processDownloadWithTaskState:(id)a3 databaseSession:(id)a4 setupBlock:(id)a5;
- (void)_queueFinishDownloadWithtaskState:(id)a3 databaseSession:(id)a4 setupBlock:(id)a5;
- (void)_releaseDownloadHandlerSession:(id)a3 withTaskState:(id)a4;
- (void)_reloadKeepAliveAssertion;
- (void)_reportTVAppDownloadQOSMetricsIfAppropriateForKind:(id)a3 adamID:(id)a4 rentalID:(id)a5 error:(id)a6 cancelReason:(int64_t)a7;
- (void)_scheduleReconnect;
- (void)_setDownloadPhase:(id)a3 forDownloadIdentifier:(int64_t)a4 databaseTransaction:(id)a5;
- (void)_startProgressTimer;
- (void)_taskReceived:(id)a3 persistAVAssetDownloadToken:(unint64_t)a4;
- (void)addDownloadsWithIdentifiers:(id)a3;
- (void)dealloc;
- (void)downloadAssetFairPlayStreamingKeyLoader:(id)a3 didFailWithError:(id)a4;
- (void)operation:(id)a3 updatedProgress:(id)a4;
- (void)prioritizeDownloadWithIdentifier:(id)a3;
- (void)reconnectWithURLSessionTasks;
- (void)stopDownloadsWithIdentifiers:(id)a3 reason:(int64_t)a4;
- (void)updateAfterSessionsChanged:(id)a3;
@end

@implementation DownloadPipeline

- (DownloadPipeline)initWithDownloadsDatabase:(id)a3
{
  v5 = a3;
  v35.receiver = self;
  v35.super_class = DownloadPipeline;
  v6 = [(DownloadPipeline *)&v35 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_database, a3);
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

- (void)addDownloadsWithIdentifiers:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NSMutableOrderedSet);
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v6 = v4;
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

    v20 = [v19 shouldLog];
    if ([v19 shouldLogToDisk])
    {
      v21 = v20 | 2;
    }

    else
    {
      v21 = v20;
    }

    v22 = [v19 OSLogObject];
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v21 &= 2u;
    }

    if (v21)
    {
      v23 = [v5 array];
      v24 = [v23 componentsJoinedByString:{@", "}];
      v39 = 138543362;
      v40 = v24;
      LODWORD(v29) = 12;
      v25 = _os_log_send_and_compose_impl();

      if (!v25)
      {
LABEL_31:

        v26 = objc_opt_class();
        v27 = [v5 array];
        v30 = [v27 componentsJoinedByString:{@", "}];
        SSDebugLog();

        v28 = [SSSQLiteContainsPredicate containsPredicateWithProperty:SSSQLEntityPropertyPersistentID values:v5, v26, v30];
        [(DownloadPipeline *)self _prepareDownloadsMatchingPredicate:v28 ignoreDownloadHandlers:0 filtersExistingTasks:0];

        goto LABEL_32;
      }

      v22 = [NSString stringWithCString:v25 encoding:4, &v39, v29];
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

- (void)prioritizeDownloadWithIdentifier:(id)a3
{
  v4 = a3;
  v57 = v4;
  if ([(DownloadPipeline *)self _downloadIsForLegacyClientWithIdentifier:v4])
  {
    v5 = +[SSLogConfig sharedDaemonConfig];
    if (!v5)
    {
      v5 = +[SSLogConfig sharedConfig];
    }

    v6 = [v5 shouldLog];
    if ([v5 shouldLogToDisk])
    {
      v7 = v6 | 2;
    }

    else
    {
      v7 = v6;
    }

    v8 = [v5 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
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
      v69 = v4;
      v10 = v67;
      LODWORD(v56) = 22;
      v11 = _os_log_send_and_compose_impl();

      if (v11)
      {
        v12 = [NSString stringWithCString:v11 encoding:4, &v66, v56];
        free(v11);
        SSFileLog();
      }

      v4 = v57;
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
        v20 = self;
        v21 = [(NSMapTable *)self->_taskStates objectForKey:v19];
        v22 = [[NSNumber alloc] initWithLongLong:{objc_msgSend(v21, "downloadIdentifier")}];
        if ([v4 isEqualToNumber:v22])
        {
          v23 = [v15[412] sharedDaemonConfig];
          if (!v23)
          {
            v23 = [v15[412] sharedConfig];
          }

          v24 = [v23 shouldLog];
          if ([v23 shouldLogToDisk])
          {
            v25 = v24 | 2;
          }

          else
          {
            v25 = v24;
          }

          v26 = [v23 OSLogObject];
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            v27 = v25;
          }

          else
          {
            v27 = v25 & 2;
          }

          if (v27)
          {
            v28 = [v19 taskIdentifier];
            v66 = 134218242;
            v67 = v28;
            v68 = 2112;
            v69 = v22;
            LODWORD(v56) = 22;
            v55 = &v66;
            v29 = _os_log_send_and_compose_impl();

            v15 = &CFDictionaryGetValue_ptr;
            if (v29)
            {
              v26 = [NSString stringWithCString:v29 encoding:4, &v66, v56];
              free(v29);
              v55 = v26;
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

          self = v20;
          v17 = v59;
          v13 = v60;
          v16 = v61;
          goto LABEL_64;
        }

        v30 = [v21 isLegacyClient];
        v31 = [v15[412] sharedDaemonConfig];
        v32 = v31;
        if (v30)
        {
          if (!v31)
          {
            v32 = [v15[412] sharedConfig];
          }

          v33 = [v32 shouldLog];
          if ([v32 shouldLogToDisk])
          {
            v34 = v33 | 2;
          }

          else
          {
            v34 = v33;
          }

          v35 = [v32 OSLogObject];
          if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
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
            v39 = [v19 taskIdentifier];
            v66 = 138412802;
            v67 = v37;
            v68 = 2048;
            v69 = v39;
            v70 = 2112;
            v71 = v22;
            LODWORD(v56) = 32;
            v55 = &v66;
            v40 = _os_log_send_and_compose_impl();

            v4 = v57;
            v15 = &CFDictionaryGetValue_ptr;
            if (v40)
            {
              v35 = [NSString stringWithCString:v40 encoding:4, &v66, v56];
              free(v40);
              v55 = v35;
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

        if (!v31)
        {
          v32 = [v15[412] sharedConfig];
        }

        v41 = [v32 shouldLog];
        if ([v32 shouldLogToDisk])
        {
          v41 |= 2u;
        }

        v42 = [v32 OSLogObject];
        if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
        {
          v43 = v41;
        }

        else
        {
          v43 = v41 & 2;
        }

        if (v43)
        {
          v44 = objc_opt_class();
          v45 = v44;
          v46 = [v19 taskIdentifier];
          v66 = 138412802;
          v67 = v44;
          v68 = 2048;
          v69 = v46;
          v70 = 2112;
          v71 = v22;
          LODWORD(v56) = 32;
          v55 = &v66;
          v47 = _os_log_send_and_compose_impl();

          v4 = v57;
          v15 = &CFDictionaryGetValue_ptr;
          if (v47)
          {
            v42 = [NSString stringWithCString:v47 encoding:4, &v66, v56];
            free(v47);
            v55 = v42;
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
  v50 = [v15[412] sharedDaemonConfig];
  if (!v50)
  {
    v50 = [v15[412] sharedConfig];
  }

  v51 = [v50 shouldLog];
  if ([v50 shouldLogToDisk])
  {
    v51 |= 2u;
  }

  v52 = [v50 OSLogObject];
  if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
  {
    v53 = v51;
  }

  else
  {
    v53 = v51 & 2;
  }

  if (v53)
  {
    v66 = 138412290;
    v67 = v4;
    LODWORD(v56) = 12;
    v54 = _os_log_send_and_compose_impl();

    if (v54)
    {
      v52 = [NSString stringWithCString:v54 encoding:4, &v66, v56];
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
  [v5 addObject:v4];
  [(DownloadPipeline *)self addDownloadsWithIdentifiers:v5];
LABEL_82:

LABEL_83:
}

- (id)restartDownloadsWithIdentifiers:(id)a3
{
  v4 = a3;
  v28 = +[NSMutableOrderedSet orderedSet];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v5 = self;
  v6 = self->_taskStates;
  v7 = [(NSMapTable *)v6 countByEnumeratingWithState:&v31 objects:v41 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v32;
    v10 = &CFDictionaryGetValue_ptr;
    v26 = *v32;
    v27 = v5;
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
          v30 = [(NSMapTable *)v5->_taskStates objectForKey:v12];
          v13 = [objc_alloc(v10[170]) initWithLongLong:{objc_msgSend(v30, "downloadIdentifier")}];
          if ([v4 containsObject:v13])
          {
            v14 = +[SSLogConfig sharedDaemonConfig];
            if (!v14)
            {
              v14 = +[SSLogConfig sharedConfig];
            }

            v15 = [v14 shouldLog];
            if ([v14 shouldLogToDisk])
            {
              v15 |= 2u;
            }

            v16 = [v14 OSLogObject];
            if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              v15 &= 2u;
            }

            if (v15)
            {
              v17 = v6;
              v18 = v4;
              v19 = objc_opt_class();
              v20 = v19;
              v21 = [v12 taskIdentifier];
              v35 = 138412802;
              v36 = v19;
              v4 = v18;
              v6 = v17;
              v9 = v26;
              v37 = 2048;
              v38 = v21;
              v39 = 2112;
              v40 = v13;
              LODWORD(v25) = 32;
              v24 = &v35;
              v22 = _os_log_send_and_compose_impl();

              v5 = v27;
              if (v22)
              {
                v16 = [NSString stringWithCString:v22 encoding:4, &v35, v25];
                free(v22);
                v24 = v16;
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

- (void)stopDownloadsWithIdentifiers:(id)a3 reason:(int64_t)a4
{
  v73 = a3;
  v74 = self;
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
        if ([v73 containsObject:v10])
        {
          v11 = +[SSLogConfig sharedDaemonConfig];
          if (!v11)
          {
            v11 = +[SSLogConfig sharedConfig];
          }

          v12 = [v11 shouldLog];
          if ([v11 shouldLogToDisk])
          {
            v13 = v12 | 2;
          }

          else
          {
            v13 = v12;
          }

          v14 = [v11 OSLogObject];
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
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
              v14 = [NSString stringWithCString:v18 encoding:4, &v88, v66];
              free(v18);
              v64 = v14;
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

  v19 = v73;
  [(NSMutableOrderedSet *)v74->_preparationDownloadIDs minusOrderedSet:v73, v64];
  v20 = [(NSMutableSet *)v74->_downloadHandlerSessions copy];
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
      v27 = [v25 sessionProperties];
      v28 = [v26 initWithLongLong:{objc_msgSend(v27, "downloadIdentifier")}];

      if ([v19 containsObject:v28])
      {
        v29 = +[SSLogConfig sharedDaemonConfig];
        if (!v29)
        {
          v29 = +[SSLogConfig sharedConfig];
        }

        v30 = [v29 shouldLog];
        if ([v29 shouldLogToDisk])
        {
          v30 |= 2u;
        }

        v31 = [v29 OSLogObject];
        if (!os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
        {
          v30 &= 2u;
        }

        if (v30)
        {
          v32 = objc_opt_class();
          v33 = v32;
          v34 = [v25 sessionID];
          v88 = 138412802;
          v89 = v32;
          v19 = v73;
          v90 = 2048;
          v91 = v34;
          v92 = 2112;
          v93 = v28;
          LODWORD(v66) = 32;
          v65 = &v88;
          v35 = _os_log_send_and_compose_impl();

          if (v35)
          {
            v31 = [NSString stringWithCString:v35 encoding:4, &v88, v66];
            free(v35);
            v65 = v31;
            SSFileLog();
            goto LABEL_37;
          }
        }

        else
        {
LABEL_37:
        }

        v36 = +[DownloadHandlerManager handlerManager];
        v37 = [v25 sessionID];
        if (a4 == 1)
        {
          [v36 pauseSessionWithID:v37];
        }

        else
        {
          [v36 cancelSessionWithID:v37];
        }

        [(NSMutableSet *)v74->_downloadHandlerSessions removeObject:v25];
        [(NSMapTable *)v74->_taskStates removeObjectForKey:v25];
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
  v69 = v74->_taskStates;
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
        v43 = [(NSMapTable *)v74->_taskStates objectForKey:v42, v65];
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

            v47 = [v46 shouldLog];
            if ([v46 shouldLogToDisk])
            {
              v48 = v47 | 2;
            }

            else
            {
              v48 = v47;
            }

            v49 = [v46 OSLogObject];
            if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
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
              v53 = [v45 taskIdentifier];
              v88 = 138412802;
              v89 = v51;
              v19 = v73;
              v90 = 2048;
              v91 = v53;
              v92 = 2112;
              v93 = v44;
              LODWORD(v66) = 32;
              v65 = &v88;
              v54 = _os_log_send_and_compose_impl();

              v40 = v67;
              if (v54)
              {
                v49 = [NSString stringWithCString:v54 encoding:4, &v88, v66];
                free(v54);
                v65 = v49;
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
          if (a4 != 1 && (isKindOfClass & 1) != 0)
          {
            v56 = v42;
            v57 = +[SSLogConfig sharedDaemonConfig];
            if (!v57)
            {
              v57 = +[SSLogConfig sharedConfig];
            }

            v58 = [v57 shouldLog];
            if ([v57 shouldLogToDisk])
            {
              v58 |= 2u;
            }

            v59 = [v57 OSLogObject];
            if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
            {
              v60 = v58;
            }

            else
            {
              v60 = v58 & 2;
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
                v59 = [NSString stringWithCString:v63 encoding:4, &v88, v66];
                free(v63);
                v65 = v59;
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

  [(DownloadPipeline *)v74 _reloadKeepAliveAssertion];
}

- (void)updateAfterSessionsChanged:(id)a3
{
  v4 = a3;
  v25 = objc_alloc_init(NSMutableOrderedSet);
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v5 = v4;
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
          v13 = [v10 sessionProperties];
          v14 = [v13 downloadPhase];

          v15 = [v10 sessionState];
          if (v15 <= 7)
          {
            if (v15)
            {
              if (v15 == 6)
              {
                [(DownloadPipeline *)self _disavowDownloadHandlerSession:v10 withTaskState:v12];
              }

              else if (v15 == 7)
              {
                v16 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v12 downloadIdentifier]);
                [v25 addObject:v16];
              }

              goto LABEL_22;
            }

            if ([v14 isEqualToString:v22])
            {
              [v10 percentComplete];
              [v12 setTransferProgress:v17];
              [(NSMutableSet *)self->_dirtyTaskStates addObject:v12];
              [(DownloadPipeline *)self _startProgressTimer];
            }

LABEL_23:

            goto LABEL_24;
          }

          if (v15 == 8)
          {
            database = self->_database;
            v31[0] = _NSConcreteStackBlock;
            v31[1] = 3221225472;
            v32[0] = sub_100191B88;
            v32[1] = &unk_100328C60;
            v33 = v12;
            v34 = v10;
            v35 = self;
            v19 = [(DownloadsDatabase *)database modifyUsingTransactionBlock:v31];
            v20 = v33;
          }

          else
          {
            if (v15 != 9)
            {
              if (v15 == 10)
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
            v28 = v14;
            v29 = self;
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

- (void)operation:(id)a3 updatedProgress:(id)a4
{
  v6 = a3;
  v7 = a4;
  database = self->_database;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100192148;
  v11[3] = &unk_1003281A0;
  v11[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [(DownloadsDatabase *)database dispatchBlockAsync:v11];
}

- (void)URLSession:(id)a3 avAssetDownloadTask:(id)a4 didWriteData:(int64_t)a5 totalBytesWritten:(int64_t)a6 totalBytesExpectedToWrite:(int64_t)a7
{
  v10 = a4;
  v11 = v10;
  if (a7 >= 1)
  {
    database = self->_database;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1001922AC;
    v13[3] = &unk_100328350;
    v13[4] = self;
    v14 = v10;
    v15 = a6;
    v16 = a7;
    [(DownloadsDatabase *)database dispatchBlockAsync:v13];
  }
}

- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveData:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [v7 ITunesStoreDataConsumer];
  v35 = 0;
  v10 = [v9 consumeData:v8 error:&v35];

  v11 = v35;
  if ((v10 & 1) == 0)
  {
    v19 = [(NSMapTable *)self->_taskStates objectForKey:v7];
    v20 = +[SSLogConfig sharedDaemonConfig];
    if (!v20)
    {
      v20 = +[SSLogConfig sharedConfig];
    }

    v21 = [v20 shouldLog];
    if ([v20 shouldLogToDisk])
    {
      v22 = v21 | 2;
    }

    else
    {
      v22 = v21;
    }

    v23 = [v20 OSLogObject];
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v22 &= 2u;
    }

    if (v22)
    {
      v24 = [v7 taskIdentifier];
      v25 = [v19 downloadIdentifier];
      v36 = 134218498;
      v37 = v24;
      v38 = 2048;
      v39 = v25;
      v40 = 2112;
      v41 = v11;
      LODWORD(v27) = 32;
      v26 = _os_log_send_and_compose_impl();

      if (!v26)
      {
LABEL_14:

        [v7 cancelWithITunesStoreReason:1 error:v11];
        goto LABEL_15;
      }

      v23 = [NSString stringWithCString:v26 encoding:4, &v36, v27];
      free(v26);
      SSFileLog();
    }

    goto LABEL_14;
  }

  v12 = [v7 countOfBytesReceived];
  v13 = [v9 overrideProgress];
  [v9 percentComplete];
  v15 = v14;
  v16 = [v9 resumptionOffset];
  v17 = [v7 countOfBytesExpectedToReceive];
  database = self->_database;
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_100192604;
  v28[3] = &unk_10032ABC0;
  v28[4] = self;
  v29 = v7;
  v30 = v17;
  v31 = v12;
  v32 = v16;
  v34 = v13;
  v33 = v15;
  [(DownloadsDatabase *)database dispatchBlockAsync:v28];

LABEL_15:
}

- (void)URLSession:(id)a3 assetDownloadTask:(id)a4 didLoadTimeRange:(id *)a5 totalTimeRangesLoaded:(id)a6 timeRangeExpectedToLoad:(id *)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_1001929F0;
  v31[3] = &unk_10032ABE8;
  v31[4] = &v32;
  [v13 enumerateObjectsUsingBlock:v31];
  var1 = a7->var1;
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
  v18 = v12;
  v28 = v18;
  v29 = v16;
  [(DownloadsDatabase *)database dispatchBlockAsync:v27];
  v19 = +[SSLogConfig sharedDaemonConfig];
  if (!v19)
  {
    v19 = +[SSLogConfig sharedConfig];
  }

  v20 = [v19 shouldLog];
  v21 = [v19 shouldLogToDisk];
  v22 = [v19 OSLogObject];
  v23 = v22;
  if (v21)
  {
    v20 |= 2u;
  }

  if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    v20 &= 2u;
  }

  if (!v20)
  {
    goto LABEL_13;
  }

  v24 = [v18 taskIdentifier];
  LODWORD(v36.var0) = 134218240;
  *(&v36.var0 + 4) = v16;
  LOWORD(v36.var2) = 2048;
  *(&v36.var2 + 2) = v24;
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

- (void)URLSession:(id)a3 aggregateAssetDownloadTask:(id)a4 willDownloadToURL:(id)a5
{
  v6 = a4;
  v7 = [v6 URLAsset];
  v8 = objc_alloc_init(DownloadAssetProgress);
  v9 = [v7 downloadToken];
  [(NSMapTable *)self->_aggregateDownloadProgress setObject:v8 forKey:v6];
  [(DownloadPipeline *)self _taskReceived:v6 persistAVAssetDownloadToken:v9];
  v10 = +[SSLogConfig sharedDaemonConfig];
  if (!v10)
  {
    v10 = +[SSLogConfig sharedConfig];
  }

  v11 = [v10 shouldLog];
  if ([v10 shouldLogToDisk])
  {
    v12 = v11 | 2;
  }

  else
  {
    v12 = v11;
  }

  v13 = [v10 OSLogObject];
  if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v12 &= 2u;
  }

  if (!v12)
  {
    goto LABEL_11;
  }

  v16 = 134217984;
  v17 = [v6 taskIdentifier];
  LODWORD(v15) = 12;
  v14 = _os_log_send_and_compose_impl();

  if (v14)
  {
    v13 = [NSString stringWithCString:v14 encoding:4, &v16, v15];
    free(v14);
    SSFileLog();
LABEL_11:
  }
}

- (void)URLSession:(id)a3 aggregateAssetDownloadTask:(id)a4 didCompleteForMediaSelection:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [(NSMapTable *)self->_aggregateDownloadProgress objectForKey:v7];
  v10 = v9;
  if (v9)
  {
    [v9 setProgress:v8 forMediaSelection:1.0];
    [v10 setMediaSelectionDidComplete:v8];
  }

  v11 = +[SSLogConfig sharedDaemonConfig];
  if (!v11)
  {
    v11 = +[SSLogConfig sharedConfig];
  }

  v12 = [v11 shouldLog];
  if ([v11 shouldLogToDisk])
  {
    v13 = v12 | 2;
  }

  else
  {
    v13 = v12;
  }

  v14 = [v11 OSLogObject];
  if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v13 &= 2u;
  }

  if (!v13)
  {
    goto LABEL_13;
  }

  v15 = [v10 numMediaSelectionsCompleted];
  [v10 progress];
  v19 = 138413058;
  v20 = v7;
  v21 = 2112;
  v22 = v8;
  v23 = 2048;
  v24 = v15;
  v25 = 2048;
  v26 = v16 * 100.0;
  LODWORD(v18) = 42;
  v17 = _os_log_send_and_compose_impl();

  if (v17)
  {
    v14 = [NSString stringWithCString:v17 encoding:4, &v19, v18];
    free(v17);
    SSFileLog();
LABEL_13:
  }
}

- (void)URLSession:(id)a3 aggregateAssetDownloadTask:(id)a4 didLoadTimeRange:(id *)a5 totalTimeRangesLoaded:(id)a6 timeRangeExpectedToLoad:(id *)a7 forMediaSelection:(id)a8
{
  v40 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a8;
  v50 = 0;
  v51 = &v50;
  v52 = 0x2020000000;
  v53 = 0;
  v49[0] = _NSConcreteStackBlock;
  v49[1] = 3221225472;
  v49[2] = sub_100193348;
  v49[3] = &unk_10032ABE8;
  v49[4] = &v50;
  [v14 enumerateObjectsUsingBlock:v49];
  var1 = a7->var1;
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

  v20 = [(NSMapTable *)self->_aggregateDownloadProgress objectForKey:v13];
  if (!v20)
  {
    v20 = objc_alloc_init(DownloadAssetProgress);
    [(NSMapTable *)self->_aggregateDownloadProgress setObject:v20 forKey:v13];
  }

  if (![(DownloadAssetProgress *)v20 numAudioSelectionsToBeDownloaded])
  {
    v21 = [(NSMutableDictionary *)self->_downloadOperationsByTask objectForKey:v13];
    v22 = v21;
    if (v21)
    {
      v23 = [v21 response];
      v24 = [v23 numAudioSelectionsToBeDownloaded];

      v25 = [v22 response];
      v26 = [v25 numSubtitleSelectionsToBeDownloaded];

      if (v24 <= 1)
      {
        v27 = 1;
      }

      else
      {
        v27 = v24;
      }

      [(DownloadAssetProgress *)v20 setNumAudioSelectionsToBeDownloaded:v27];
      [(DownloadAssetProgress *)v20 setNumSubtitleSelectionsToBeDownloaded:v26];
    }
  }

  [(DownloadAssetProgress *)v20 setProgress:v15 forMediaSelection:v19];
  [(DownloadAssetProgress *)v20 progress];
  v29 = v28;
  database = self->_database;
  v41 = _NSConcreteStackBlock;
  v42 = 3221225472;
  v43 = sub_1001933E4;
  v44 = &unk_1003286B8;
  v45 = self;
  v31 = v13;
  v46 = v31;
  v47 = v29;
  [(DownloadsDatabase *)database dispatchBlockAsync:&v41];
  v32 = +[SSLogConfig sharedDaemonConfig];
  if (!v32)
  {
    v32 = +[SSLogConfig sharedConfig];
  }

  v33 = [v32 shouldLog];
  v34 = [v32 shouldLogToDisk];
  v35 = [v32 OSLogObject];
  v36 = v35;
  if (v34)
  {
    v33 |= 2u;
  }

  if (!os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
  {
    v33 &= 2u;
  }

  if (!v33)
  {
    goto LABEL_25;
  }

  [(DownloadAssetProgress *)v20 progress];
  LODWORD(v54.var0) = 138413058;
  *(&v54.var0 + 4) = v31;
  LOWORD(v54.var2) = 2112;
  *(&v54.var2 + 2) = v15;
  HIWORD(v54.var3) = 2048;
  v55 = v19 * 100.0;
  v56 = 2048;
  v57 = v37 * 100.0;
  LODWORD(v39) = 42;
  v38 = _os_log_send_and_compose_impl();

  if (v38)
  {
    v36 = [NSString stringWithCString:v38 encoding:4, &v54, v39, v40, v41, v42, v43, v44, v45];
    free(v38);
    SSFileLog();
LABEL_25:
  }

  _Block_object_dispose(&v50, 8);
}

- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveResponse:(id)a5 completionHandler:(id)a6
{
  v8 = a4;
  v9 = a5;
  v10 = a6;
  v11 = [v9 itunes_statusCode];
  if (v11 <= 399)
  {
    v12 = [v8 ITunesStoreDataConsumer];
    v13 = [v12 resumptionOffset];
    if (v11 == 206 || !v13)
    {
      goto LABEL_16;
    }

    v14 = +[SSLogConfig sharedDaemonConfig];
    if (!v14)
    {
      v14 = +[SSLogConfig sharedConfig];
    }

    v15 = [v14 shouldLog];
    if ([v14 shouldLogToDisk])
    {
      v16 = v15 | 2;
    }

    else
    {
      v16 = v15;
    }

    v17 = [v14 OSLogObject];
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
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
      v53 = [v8 taskIdentifier];
      LODWORD(v49) = 22;
      v20 = _os_log_send_and_compose_impl();

      if (!v20)
      {
LABEL_15:

        [v12 truncate];
LABEL_16:
        v10[2](v10, 1);
LABEL_59:

        goto LABEL_60;
      }

      v17 = [NSString stringWithCString:v20 encoding:4, &v50, v49];
      free(v20);
      SSFileLog();
    }

    goto LABEL_15;
  }

  v21 = +[SSLogConfig sharedDaemonConfig];
  v22 = v21;
  if (v11 == 416)
  {
    if (!v21)
    {
      v22 = +[SSLogConfig sharedConfig];
    }

    v29 = [v22 shouldLog];
    if ([v22 shouldLogToDisk])
    {
      v30 = v29 | 2;
    }

    else
    {
      v30 = v29;
    }

    v31 = [v22 OSLogObject];
    if (!os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
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
      v53 = [v8 taskIdentifier];
      LODWORD(v49) = 22;
      v34 = _os_log_send_and_compose_impl();

      if (!v34)
      {
LABEL_41:

        v22 = [v8 ITunesStoreDataConsumer];
        [v22 truncate];
        goto LABEL_42;
      }

      v31 = [NSString stringWithCString:v34 encoding:4, &v50, v49];
      free(v34);
      SSFileLog();
    }

    goto LABEL_41;
  }

  if (v11 != 408)
  {
    if (!v21)
    {
      v22 = +[SSLogConfig sharedConfig];
    }

    v35 = [v22 shouldLog];
    if ([v22 shouldLogToDisk])
    {
      v36 = v35 | 2;
    }

    else
    {
      v36 = v35;
    }

    v37 = [v22 OSLogObject];
    if (!os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
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
      v53 = [v8 taskIdentifier];
      v54 = 2048;
      v55 = v11;
      LODWORD(v49) = 32;
      v48 = &v50;
      v40 = _os_log_send_and_compose_impl();

      if (!v40)
      {
LABEL_54:

        v41 = SSError();
        v42 = [NSNumber numberWithInteger:v11];
        v12 = SSErrorBySettingUserInfoValue();

        v43 = [v9 itunes_allHeaderFields];
        v44 = ISDictionaryValueForCaseInsensitiveString();
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v45 = SSErrorBySettingUserInfoValue();

          v12 = v45;
        }

        v46 = ISDictionaryValueForCaseInsensitiveString();

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v47 = SSErrorBySettingUserInfoValue();

          v12 = v47;
        }

        [v8 cancelWithITunesStoreReason:1 error:{v12, v48}];
        v10[2](v10, 0);

        goto LABEL_59;
      }

      v37 = [NSString stringWithCString:v40 encoding:4, &v50, v49];
      free(v40);
      v48 = v37;
      SSFileLog();
    }

    goto LABEL_54;
  }

  if (!v21)
  {
    v22 = +[SSLogConfig sharedConfig];
  }

  v23 = [v22 shouldLog];
  if ([v22 shouldLogToDisk])
  {
    v24 = v23 | 2;
  }

  else
  {
    v24 = v23;
  }

  v25 = [v22 OSLogObject];
  if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
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
  v53 = [v8 taskIdentifier];
  LODWORD(v49) = 22;
  v28 = _os_log_send_and_compose_impl();

  if (v28)
  {
    v25 = [NSString stringWithCString:v28 encoding:4, &v50, v49];
    free(v28);
    SSFileLog();
LABEL_29:
  }

LABEL_42:

  [v8 cancelWithITunesStoreReason:3 error:0];
  v10[2](v10, 0);
LABEL_60:
}

- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = +[SSLogConfig sharedDaemonConfig];
  if (!v9)
  {
    v9 = +[SSLogConfig sharedConfig];
  }

  v10 = [v9 shouldLog];
  if ([v9 shouldLogToDisk])
  {
    v11 = v10 | 2;
  }

  else
  {
    v11 = v10;
  }

  v12 = [v9 OSLogObject];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
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
    v30 = v7;
    LODWORD(v23) = 12;
    v22 = &v29;
    v14 = _os_log_send_and_compose_impl();

    if (!v14)
    {
      goto LABEL_13;
    }

    v12 = [NSString stringWithCString:v14 encoding:4, &v29, v23];
    free(v14);
    v22 = v12;
    SSFileLog();
  }

LABEL_13:
  v15 = [(NSMutableDictionary *)self->_downloadOperationsByTask objectForKey:v7];
  if (v15)
  {
    [(NSMutableDictionary *)self->_downloadOperationsByTask removeObjectForKey:v7];
    [v15 signalDownloadCompletion];
  }

  v16 = [v7 ITunesStoreDataConsumer];
  v17 = v16;
  if (v8)
  {
    [v16 suspend];
    v18 = 0;
  }

  else if (v16)
  {
    v28 = 0;
    v18 = [v16 finish:&v28];
    v8 = v28;
  }

  else
  {
    v8 = 0;
    v18 = 1;
  }

  [v7 setITunesStoreDataConsumer:0];
  database = self->_database;
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100193E5C;
  v24[3] = &unk_10032AC10;
  v24[4] = self;
  v25 = v7;
  v26 = v8;
  v27 = v18;
  v20 = v8;
  v21 = v7;
  [(DownloadsDatabase *)database modifyAsyncUsingTransactionBlock:v24];
}

- (void)URLSession:(id)a3 task:(id)a4 didReceiveChallenge:(id)a5 completionHandler:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  database = self->_database;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10019500C;
  v16[3] = &unk_10032AC60;
  v16[4] = self;
  v17 = v9;
  v18 = v10;
  v19 = v11;
  v13 = v11;
  v14 = v10;
  v15 = v9;
  [(DownloadsDatabase *)database modifyAsyncUsingTransactionBlock:v16];
}

- (void)URLSession:(id)a3 _willRetryBackgroundDataTask:(id)a4 withError:(id)a5
{
  v7 = a4;
  v8 = a5;
  database = self->_database;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10019534C;
  v12[3] = &unk_100328C60;
  v12[4] = self;
  v13 = v7;
  v14 = v8;
  v10 = v8;
  v11 = v7;
  [(DownloadsDatabase *)database modifyAsyncUsingTransactionBlock:v12];
}

- (void)URLSession:(id)a3 task:(id)a4 _willSendRequestForEstablishedConnection:(id)a5 completionHandler:(id)a6
{
  v9 = a4;
  v10 = a5;
  v41 = a6;
  v11 = v10;
  v12 = [v9 ITunesStoreDataConsumer];
  v13 = [v12 resumptionOffset];
  if ([v12 hasConsumedData])
  {
    [v12 reset];
    v13 = [v12 resumptionOffset];
    v14 = +[SSLogConfig sharedDaemonConfig];
    if (!v14)
    {
      v14 = +[SSLogConfig sharedConfig];
    }

    v15 = [v14 shouldLog];
    if ([v14 shouldLogToDisk])
    {
      v16 = v15 | 2;
    }

    else
    {
      v16 = v15;
    }

    v17 = [v14 OSLogObject];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
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
      v45 = [v9 taskIdentifier];
      v46 = 2048;
      v47 = v13;
      LODWORD(v40) = 22;
      v39 = &v44;
      v19 = _os_log_send_and_compose_impl();

      if (!v19)
      {
LABEL_14:

        goto LABEL_15;
      }

      v17 = [NSString stringWithCString:v19 encoding:4, &v44, v40];
      free(v19);
      v39 = v17;
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
  v21 = v9;
  v43 = v21;
  [(DownloadsDatabase *)database modifyAsyncUsingTransactionBlock:v42];
  if (v13)
  {
    v22 = [v11 mutableCopy];
    v23 = [NSString stringWithFormat:@"bytes=%llu-", v13];
    [v22 setValue:v23 forHTTPHeaderField:@"Range"];

    v24 = +[SSLogConfig sharedDaemonConfig];
    if (!v24)
    {
      v24 = +[SSLogConfig sharedConfig];
    }

    v25 = [v24 shouldLog];
    if ([v24 shouldLogToDisk])
    {
      v26 = v25 | 2;
    }

    else
    {
      v26 = v25;
    }

    v27 = [v24 OSLogObject];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
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
    v31 = [v21 taskIdentifier];
    v44 = 138412802;
    v45 = v29;
    v46 = 2048;
    v47 = v13;
    v48 = 2048;
    v49 = v31;
    LODWORD(v40) = 32;
    v32 = _os_log_send_and_compose_impl();

LABEL_36:
    if (!v32)
    {
LABEL_39:

      goto LABEL_40;
    }

    v27 = [NSString stringWithCString:v32 encoding:4, &v44, v40];
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

    v34 = [v24 shouldLog];
    if ([v24 shouldLogToDisk])
    {
      v34 |= 2u;
    }

    v27 = [v24 OSLogObject];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      v35 = v34;
    }

    else
    {
      v35 = v34 & 2;
    }

    if (!v35)
    {
      goto LABEL_38;
    }

    v36 = objc_opt_class();
    v37 = v36;
    v38 = [v21 taskIdentifier];
    v44 = 138412546;
    v45 = v36;
    v46 = 2048;
    v47 = v38;
    LODWORD(v40) = 22;
    v32 = _os_log_send_and_compose_impl();

    goto LABEL_36;
  }

LABEL_40:
  v41[2](v41, v22);
}

- (void)downloadAssetFairPlayStreamingKeyLoader:(id)a3 didFailWithError:(id)a4
{
  v6 = a3;
  v7 = a4;
  database = self->_database;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100195DE8;
  v11[3] = &unk_1003281A0;
  v11[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [(DownloadsDatabase *)database dispatchBlockAsync:v11];
}

- (id)_applicationBundleIdentifierForDownloadIdentifier:(int64_t)a3 databaseTransaction:(id)a4
{
  v5 = a4;
  v6 = [DownloadEntity alloc];
  v7 = [v5 database];
  v8 = [(DownloadEntity *)v6 initWithPersistentID:a3 inDatabase:v7];

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

- (id)_applicationHandleForDownloadIdentifier:(int64_t)a3 databaseTransaction:(id)a4
{
  v5 = a4;
  v6 = [DownloadEntity alloc];
  v7 = [v5 database];
  v8 = [(DownloadEntity *)v6 initWithPersistentID:a3 inDatabase:v7];

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
      v11 = [v15 longLongValue];
      v9 = [(ApplicationHandle *)v10 initWithTransactionIdentifier:v11 downloadIdentifier:a3 bundleIdentifier:v14[0]];
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

- (void)_attemptRecoveryForDownloadWithTaskState:(id)a3 databaseSession:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = -[ExpiredDownloadRecoveryOperation initWithDownloadIdentifier:databaseSession:]([ExpiredDownloadRecoveryOperation alloc], "initWithDownloadIdentifier:databaseSession:", [v6 downloadIdentifier], v7);
  objc_initWeak(&location, self);
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_1001964C4;
  v12 = &unk_10032AC88;
  objc_copyWeak(&v13, &location);
  [(ExpiredDownloadRecoveryOperation *)v8 setOutputBlock:&v9];
  [(NSMapTable *)self->_taskStates setObject:v6 forKey:v8, v9, v10, v11, v12];
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

- (void)_disavowDownloadHandlerSession:(id)a3 withTaskState:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 requiresDownloadHandler])
  {
    database = self->_database;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100196D74;
    v10[3] = &unk_100328C60;
    v11 = v7;
    v12 = self;
    v13 = v6;
    v9 = [(DownloadsDatabase *)database modifyUsingTransactionBlock:v10];
  }

  [(DownloadPipeline *)self _releaseDownloadHandlerSession:v6 withTaskState:v7];
}

- (BOOL)_downloadIsForLegacyClientWithIdentifier:(id)a3
{
  v4 = a3;
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
            v13 = [v4 isEqualToNumber:v12];

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

- (id)_downloadSessionPropertiesWithPhase:(id)a3 taskState:(id)a4 databaseSession:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [DownloadEntity alloc];
  v11 = [v8 downloadIdentifier];
  v12 = [v9 database];
  v13 = [(DownloadEntity *)v10 initWithPersistentID:v11 inDatabase:v12];

  v20[0] = @"client_id";
  v20[1] = @"handler_id";
  v20[2] = @"is_from_store";
  v20[3] = @"suppress_error_dialogs";
  v18 = 0u;
  v19 = 0u;
  [(DownloadEntity *)v13 getValues:&v18 forProperties:v20 count:4];
  v14 = [DownloadSessionProperties alloc];
  v15 = -[DownloadSessionProperties initWithClientIdentifier:handlerIdentifier:](v14, "initWithClientIdentifier:handlerIdentifier:", v18, [*(&v18 + 1) longLongValue]);
  -[DownloadSessionProperties setAssetIdentifier:](v15, "setAssetIdentifier:", [v8 mediaAssetIdentifier]);
  -[DownloadSessionProperties setDownloadIdentifier:](v15, "setDownloadIdentifier:", [v8 downloadIdentifier]);
  [(DownloadSessionProperties *)v15 setDownloadPhase:v7];
  -[DownloadSessionProperties setStoreDownload:](v15, "setStoreDownload:", [v19 BOOLValue]);
  -[DownloadSessionProperties setShouldSupressErrorDialogs:](v15, "setShouldSupressErrorDialogs:", [*(&v19 + 1) BOOLValue]);
  for (i = 3; i != -1; --i)
  {
  }

  return v15;
}

- (void)_failDownloadWithIdentifier:(id)a3 error:(id)a4 transaction:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [DownloadEntity alloc];
  v11 = [v9 longLongValue];

  v12 = [v7 database];
  v14 = [(DownloadEntity *)v10 initWithPersistentID:v11 inDatabase:v12];

  v13 = [(DownloadEntity *)v14 failWithError:v8];

  [v7 unionChangeset:v13];
}

- (void)_finishDownloadWithOperation:(id)a3 response:(id)a4
{
  v6 = a3;
  v7 = a4;
  database = self->_database;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100197548;
  v11[3] = &unk_100328C60;
  v11[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [(DownloadsDatabase *)database modifyAsyncUsingTransactionBlock:v11];
}

- (void)_taskReceived:(id)a3 persistAVAssetDownloadToken:(unint64_t)a4
{
  v6 = a3;
  database = self->_database;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001983D0;
  v9[3] = &unk_10032ACB0;
  v9[4] = self;
  v10 = v6;
  v11 = a4;
  v8 = v6;
  [(DownloadsDatabase *)database modifyAsyncUsingTransactionBlock:v9];
}

- (void)_performDownloadOperation:(id)a3
{
  v93 = a3;
  v4 = [v93 response];
  v5 = [v4 downloadIdentifier];
  if (!v5)
  {
    v6 = +[SSLogConfig sharedDaemonConfig];
    if (!v6)
    {
      v6 = +[SSLogConfig sharedConfig];
    }

    v7 = [v6 shouldLog];
    if ([v6 shouldLogToDisk])
    {
      v7 |= 2u;
    }

    v8 = [v6 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v7;
    }

    else
    {
      v9 = v7 & 2;
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

  v12 = [v4 result];
  if (sub_1001DF9EC(v12))
  {
    v13 = [v4 kind];
    v14 = [ScratchManager directoryPathForDownloadID:v5 kind:v13 createIfNeeded:1];

    v15 = [v4 bundleIdentifier];
    v16 = [v15 length] == 0;

    v17 = +[SSLogConfig sharedDaemonConfig];
    v18 = v17;
    if (v16)
    {
      if (!v17)
      {
        v18 = +[SSLogConfig sharedConfig];
      }

      v24 = [v18 shouldLog];
      if ([v18 shouldLogToDisk])
      {
        v24 |= 2u;
      }

      v20 = [v18 OSLogObject];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v25 = v24;
      }

      else
      {
        v25 = v24 & 2;
      }

      if (!v25)
      {
        goto LABEL_36;
      }

      *v123 = 138412546;
      *&v123[4] = v14;
      *&v123[12] = 2048;
      *&v123[14] = v5;
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

      v19 = [v18 shouldLog];
      if ([v18 shouldLogToDisk])
      {
        v19 |= 2u;
      }

      v20 = [v18 OSLogObject];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = v19;
      }

      else
      {
        v21 = v19 & 2;
      }

      if (!v21)
      {
        goto LABEL_36;
      }

      v22 = [v4 bundleIdentifier];
      *v123 = 138412802;
      *&v123[4] = v14;
      *&v123[12] = 2048;
      *&v123[14] = v5;
      *&v123[22] = 2112;
      v124 = v22;
      LODWORD(v90) = 32;
      v89 = v123;
      v23 = _os_log_send_and_compose_impl();
    }

    if (!v23)
    {
LABEL_37:

      goto LABEL_38;
    }

    v20 = [NSString stringWithCString:v23 encoding:4, v123, v90];
    free(v23);
    v89 = v20;
    SSFileLog();
LABEL_36:

    goto LABEL_37;
  }

LABEL_38:
  v26 = [v4 URLSessionIdentifier];
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
  v28 = v4;
  v113 = self;
  v114 = v123;
  v112 = v28;
  [(DownloadsDatabase *)database dispatchBlockSync:v111];
  v105 = 0;
  v106 = &v105;
  v107 = 0x3032000000;
  v108 = sub_100199644;
  v109 = sub_100199654;
  v110 = 0;
  v29 = [v28 isHLS];
  v30 = *(*&v123[8] + 40);
  if (v29)
  {
    if (v30)
    {
      goto LABEL_44;
    }

    v31 = [v28 sessionConfiguration];
    v32 = [AVAssetDownloadURLSession sessionWithConfiguration:v31 assetDownloadDelegate:self delegateQueue:0];
  }

  else
  {
    if (v30)
    {
      goto LABEL_44;
    }

    v31 = [v28 sessionConfiguration];
    v32 = [NSURLSession sessionWithConfiguration:v31 delegate:self delegateQueue:0];
  }

  v33 = *(*&v123[8] + 40);
  *(*&v123[8] + 40) = v32;

LABEL_44:
  if (v12)
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
  v96 = self;
  v100 = v123;
  v39 = v26;
  v97 = v39;
  v101 = &v105;
  v102 = v12;
  v103 = v5;
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
      v53 = [v38 isCellularAllowed];
      v54 = +[RestoreManager sharedInstance];
      v55 = [v54 isCellularAllowed];

      if (v53 != v55)
      {
        v56 = +[SSLogConfig sharedDaemonConfig];
        if (!v56)
        {
          v56 = +[SSLogConfig sharedConfig];
        }

        v57 = [v56 shouldLog];
        v58 = [v56 shouldLogToDisk];
        v59 = [v56 OSLogObject];
        v60 = v59;
        if (v58)
        {
          v61 = v57 | 2;
        }

        else
        {
          v61 = v57;
        }

        if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
        {
          v62 = v61;
        }

        else
        {
          v62 = v61 & 2;
        }

        if (v62)
        {
          v63 = [v40 taskIdentifier];
          v115 = 134218240;
          v116 = v63;
          v117 = 2048;
          v118 = v5;
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

    v66 = [v65 shouldLog];
    v67 = [v65 shouldLogToDisk];
    v68 = [v65 OSLogObject];
    v69 = v68;
    if (v67)
    {
      v70 = v66 | 2;
    }

    else
    {
      v70 = v66;
    }

    if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
    {
      v71 = v70;
    }

    else
    {
      v71 = v70 & 2;
    }

    if (v71)
    {
      v72 = [v40 taskIdentifier];
      v73 = [v40 _priority];
      v115 = 134218754;
      v116 = v72;
      v117 = 2048;
      v118 = v73;
      v119 = 2048;
      v120 = v5;
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
    v76 = [v40 taskIdentifier];
    v92 = [v40 _priority];
    SSDebugLog();
    [v40 resume];
    v77 = [v38 kind];
    if (([v77 isEqualToString:SSDownloadKindMusic] & 1) == 0)
    {
      v78 = [v38 kind];
      if (![v78 isEqualToString:SSDownloadKindMusicVideo])
      {
        v87 = [v38 isHLS];

        if ((v87 & 1) == 0)
        {
LABEL_94:
          v79 = +[SSLogConfig sharedDaemonConfig];
          if (!v79)
          {
            v79 = +[SSLogConfig sharedConfig];
          }

          v80 = [v79 shouldLog];
          v81 = [v79 shouldLogToDisk];
          v82 = [v79 OSLogObject];
          v83 = v82;
          if (v81)
          {
            v84 = v80 | 2;
          }

          else
          {
            v84 = v80;
          }

          if (os_log_type_enabled(v82, OS_LOG_TYPE_INFO))
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
        [v93 setWaitForDownload:1];
        [(NSMutableDictionary *)self->_downloadOperationsByTask setObject:v93 forKey:v40];
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

  v44 = [v43 shouldLog];
  v45 = [v43 shouldLogToDisk];
  v46 = [v43 OSLogObject];
  v47 = v46;
  if (v45)
  {
    v48 = v44 | 2;
  }

  else
  {
    v48 = v44;
  }

  if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
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

  v50 = [v106[5] sessionID];
  v115 = 134218240;
  v116 = v50;
  v117 = 2048;
  v118 = v5;
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

- (void)_finishRecoveryWithOperation:(id)a3 response:(id)a4
{
  v6 = a3;
  v7 = a4;
  database = self->_database;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10019A620;
  v11[3] = &unk_100328C60;
  v11[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
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
        v9 = [v8 automaticType];

        if (v9 == 2)
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

- (void)_logDownloadEvent:(id)a3 forTaskWithState:(id)a4 session:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [v8 downloadIdentifier];
  v11 = [v8 mediaAssetIdentifier];

  v13 = [v7 newEventDictionaryWithDownloadIdentifier:v10 assetIdentifier:v11];
  v12 = +[EventDispatcher eventDispatcher];
  [v12 postEventWithName:v9 userInfo:v13];
}

- (void)_performDefaultHandlingForAuthenticationChallenge:(id)a3 withSessionProperties:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 protectionSpace];
  v12 = [v11 authenticationMethod];
  if (![v12 isEqualToString:NSURLAuthenticationMethodClientCertificate])
  {
    if ([v12 isEqualToString:NSURLAuthenticationMethodServerTrust])
    {
      v13 = +[NSURLCredential credentialForTrust:](NSURLCredential, "credentialForTrust:", [v11 serverTrust]);
      v10[2](v10, 0, v13);

      goto LABEL_28;
    }

    if ([v9 isStoreDownload])
    {
      v14 = +[SSLogConfig sharedDaemonConfig];
      if (!v14)
      {
        v14 = +[SSLogConfig sharedConfig];
      }

      v15 = [v14 shouldLog];
      if ([v14 shouldLogToDisk])
      {
        v16 = v15 | 2;
      }

      else
      {
        v16 = v15;
      }

      v17 = [v14 OSLogObject];
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
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
      if (![v9 shouldSupressErrorDialogs])
      {
        v21 = [[ISURLAuthenticationChallenge alloc] initWithAuthenticationChallenge:v8];
        v22 = [[ISDialog alloc] initWithAuthenticationChallege:v21];
        v23 = [[DaemonDialogOperation alloc] initWithDialog:v22];
        v26[0] = _NSConcreteStackBlock;
        v26[1] = 3221225472;
        v26[2] = sub_10019AFA4;
        v26[3] = &unk_10032AD00;
        v27 = v10;
        [(DaemonDialogOperation *)v23 setOutputBlock:v26];
        v24 = [(DownloadPipeline *)self _authenticationChallengeQueue];
        [v24 addOperation:v23];

        goto LABEL_28;
      }

      v14 = +[SSLogConfig sharedDaemonConfig];
      if (!v14)
      {
        v14 = +[SSLogConfig sharedConfig];
      }

      v18 = [v14 shouldLog];
      if ([v14 shouldLogToDisk])
      {
        v19 = v18 | 2;
      }

      else
      {
        v19 = v18;
      }

      v17 = [v14 OSLogObject];
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v19 &= 2u;
      }

      if (!v19)
      {
        goto LABEL_26;
      }
    }

    v28 = 134217984;
    v29 = [v9 downloadIdentifier];
    LODWORD(v25) = 12;
    v20 = _os_log_send_and_compose_impl();

    if (!v20)
    {
LABEL_27:

      v10[2](v10, 2, 0);
      goto LABEL_28;
    }

    v17 = [NSString stringWithCString:v20 encoding:4, &v28, v25];
    free(v20);
    SSFileLog();
LABEL_26:

    goto LABEL_27;
  }

  v10[2](v10, 1, 0);
LABEL_28:
}

- (void)_prepareDownloadsMatchingPredicate:(id)a3 ignoreDownloadHandlers:(BOOL)a4 filtersExistingTasks:(BOOL)a5
{
  v8 = a3;
  database = self->_database;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10019B1B0;
  v11[3] = &unk_10032AD78;
  v13 = a5;
  v11[4] = self;
  v12 = v8;
  v14 = a4;
  v10 = v8;
  [(DownloadsDatabase *)database readUsingTransactionBlock:v11];
}

- (void)_processDownloadWithTaskState:(id)a3 databaseSession:(id)a4 setupBlock:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  [v10 setTransferProgress:1.0];
  [(NSMutableSet *)self->_dirtyTaskStates addObject:v10];
  [(DownloadPipeline *)self _startProgressTimer];
  [(DownloadPipeline *)self _queueFinishDownloadWithtaskState:v10 databaseSession:v9 setupBlock:v8];
}

- (void)_queueFinishDownloadWithtaskState:(id)a3 databaseSession:(id)a4 setupBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = -[FinishDownloadOperation initWithDownloadIdentifier:databaseSession:]([FinishDownloadOperation alloc], "initWithDownloadIdentifier:databaseSession:", [v8 downloadIdentifier], v9);
  [(FinishDownloadOperation *)v11 setDelegate:self];
  [(FinishDownloadOperation *)v11 setShouldRunWithBackgroundPriority:1];
  objc_initWeak(&location, self);
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_10019B804;
  v15 = &unk_10032ADA0;
  objc_copyWeak(&v16, &location);
  [(FinishDownloadOperation *)v11 setOutputBlock:&v12];
  if (v10)
  {
    v10[2](v10, v11);
  }

  [(NSMapTable *)self->_taskStates setObject:v8 forKey:v11, v12, v13, v14, v15];
  [(ISOperationQueue *)self->_processingOperationQueue addOperation:v11];
  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

- (void)_processDownloadFailureWithTaskState:(id)a3 cancelReason:(int64_t)a4
{
  v6 = a3;
  v7 = [v6 bundleIdentifier];
  if (a4 == 1)
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

  v10 = [v9 shouldLog];
  if ([v9 shouldLogToDisk])
  {
    v11 = v10 | 2;
  }

  else
  {
    v11 = v10;
  }

  v12 = [v9 OSLogObject];
  if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v11 &= 2u;
  }

  if (!v11)
  {
    goto LABEL_16;
  }

  v13 = [v6 downloadIdentifier];
  v14 = @"User Stopped";
  if (a4 != 2)
  {
    v14 = v8;
  }

  v24 = 134218242;
  v25 = v13;
  v26 = 2112;
  v27 = v14;
  LODWORD(v23) = 22;
  v22 = &v24;
  v15 = _os_log_send_and_compose_impl();

  if (v15)
  {
    v12 = [NSString stringWithCString:v15 encoding:4, &v24, v23];
    free(v15);
    v22 = v12;
    SSFileLog();
LABEL_16:
  }

  v16 = [v6 kind];
  if (v16 && SSDownloadKindIsSoftwareKind() && [v7 length])
  {
    v17 = [ApplicationHandle alloc];
    v18 = [v6 downloadHandle];
    v19 = [v6 bundleIdentifier];
    v20 = [(ApplicationHandle *)v17 initWithDownloadHandle:v18 bundleIdentifier:v19];

    v21 = +[ApplicationWorkspace defaultWorkspace];
    [v21 restorePlaceholderForApplicationHandle:v20];
  }

  [v6 setTransferProgress:{1.0, v22}];
  [(NSMutableSet *)self->_dirtyTaskStates addObject:v6];
}

- (void)_releaseDownloadHandlerSession:(id)a3 withTaskState:(id)a4
{
  v6 = a4;
  v7 = [a3 sessionProperties];
  v8 = [v7 downloadPhase];

  if ([v8 isEqualToString:SSDownloadPhaseDownloading])
  {
    v9 = +[SSSQLiteComparisonPredicate predicateWithProperty:equalToLongLong:](SSSQLiteComparisonPredicate, "predicateWithProperty:equalToLongLong:", SSSQLEntityPropertyPersistentID, [v6 downloadIdentifier]);
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
    v12 = v6;
    v13 = v8;
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

- (void)_setDownloadPhase:(id)a3 forDownloadIdentifier:(int64_t)a4 databaseTransaction:(id)a5
{
  v7 = a3;
  v8 = a5;
  if (!a4)
  {
    v9 = +[SSLogConfig sharedDaemonConfig];
    if (!v9)
    {
      v9 = +[SSLogConfig sharedConfig];
    }

    v10 = [v9 shouldLog];
    if ([v9 shouldLogToDisk])
    {
      v11 = v10 | 2;
    }

    else
    {
      v11 = v10;
    }

    v12 = [v9 OSLogObject];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
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

      v12 = [NSString stringWithCString:v14 encoding:4, v23, v22];
      free(v14);
      SSFileLog();
    }

    goto LABEL_14;
  }

LABEL_15:
  v15 = [DownloadEntity alloc];
  v16 = [v8 database];
  v17 = [(DownloadEntity *)v15 initWithPersistentID:a4 inDatabase:v16];

  [(DownloadEntity *)v17 setValue:v7 forProperty:@"download_state.phase"];
  v18 = [NSDictionary alloc];
  v19 = [v18 initWithObjectsAndKeys:{v7, SSDownloadPropertyDownloadPhase, 0}];
  v20 = +[DownloadController controller];
  v21 = [(DownloadEntity *)v17 valueForProperty:@"kind"];
  [v20 notifyClientsOfPropertyChanges:v19 forDownloadID:a4 downloadKind:v21];
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

- (BOOL)_isPodcast:(id)a3
{
  v3 = [a3 valueForProperty:@"kind"];
  IsPodcastKind = SSDownloadKindIsPodcastKind();

  return IsPodcastKind;
}

- (void)_reportTVAppDownloadQOSMetricsIfAppropriateForKind:(id)a3 adamID:(id)a4 rentalID:(id)a5 error:(id)a6 cancelReason:(int64_t)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (SSDownloadKindIsVideosAppKind())
  {
    if (a7 == 2)
    {
      v15 = 300;
    }

    else if (v14 || a7 == 1)
    {
      if (!v14)
      {
        v16 = [NSError alloc];
        v14 = [v16 initWithDomain:SSErrorDomain code:100 userInfo:0];
      }

      v15 = 500;
    }

    else
    {
      v14 = 0;
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
    if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v13 longLongValue])
    {
      v27 = @"com.apple.videos.movies.rental.cloud";
    }

    else
    {
      if (([v11 isEqualToString:SSDownloadKindMovie] & 1) == 0)
      {
        if (![v11 isEqualToString:SSDownloadKindTelevisionEpisode])
        {
          v28 = 0;
          v29 = 0;
          if (!v12)
          {
            goto LABEL_40;
          }

LABEL_35:
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v30 = [v12 longLongValue];
            v31 = v29 ^ 1;
            if (!v30)
            {
              v31 = 1;
            }

            if ((v31 & 1) == 0)
            {
              v32 = [NSString stringWithFormat:@"a=%@:s=%@:e=%@", v12, @"tvs.sbd.9001", v28];
              [v86 setObject:v32 forKey:@"MediaIdentifier"];
            }
          }

LABEL_40:
          v82 = v13;
          v33 = +[SSDevice currentDevice];
          v34 = [v33 storeFrontIdentifier];

          if (v34)
          {
            [v86 setObject:v34 forKey:@"StorefrontID"];
          }

          v76 = v34;
          v35 = +[SSLogConfig sharedDaemonConfig];
          if (!v35)
          {
            v35 = +[SSLogConfig sharedConfig];
          }

          v36 = [v35 shouldLog];
          if ([v35 shouldLogToDisk])
          {
            v36 |= 2u;
          }

          v37 = [v35 OSLogObject];
          if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
          {
            v38 = v36;
          }

          else
          {
            v38 = v36 & 2;
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

            v37 = [NSString stringWithCString:v39 encoding:4, &v96, v74];
            free(v39);
            v71 = v37;
            SSFileLog();
          }

LABEL_53:
          v40 = +[SSLogConfig sharedDaemonConfig];
          if (!v40)
          {
            v40 = +[SSLogConfig sharedConfig];
          }

          v41 = [v40 shouldLog];
          if ([v40 shouldLogToDisk])
          {
            v41 |= 2u;
          }

          v42 = [v40 OSLogObject];
          if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
          {
            v43 = v41;
          }

          else
          {
            v43 = v41 & 2;
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

            v42 = [NSString stringWithCString:v44 encoding:4, &v96, v74];
            free(v44);
            v72 = v42;
            SSFileLog();
          }

LABEL_64:
          v80 = v17;

          v45 = [[v23 alloc] initWithSessionInfo:v87 userInfo:v86 frameworksToCheck:0];
          [v45 setMessageLoggingBlock:&stru_10032AE08];
          v84 = v45;
          [v45 startConfigurationWithCompletionHandler:&stru_10032AE48];
          v46 = objc_alloc_init(NSMutableDictionary);
          v81 = v14;
          v47 = v14;
          v95 = v46;
          if (v47)
          {
            v48 = v47;
            v75 = v12;
            v49 = 0;
            do
            {
              v50 = [NSString stringWithFormat:@"errorDomain%d", v49];
              v51 = [NSString stringWithFormat:@"errorCode%d", v49];
              v52 = [v48 domain];
              v53 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v48 code]);
              if (v52)
              {
                [v46 setObject:v52 forKey:v50];
              }

              [v46 setObject:v53 forKey:v51];
              v54 = [v48 userInfo];
              v55 = [v54 objectForKey:NSUnderlyingErrorKey];

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

            v12 = v75;
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

          v60 = [v59 shouldLog];
          if ([v59 shouldLogToDisk])
          {
            v60 |= 2u;
          }

          v61 = [v59 OSLogObject];
          if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
          {
            v62 = v60;
          }

          else
          {
            v62 = v60 & 2;
          }

          v13 = v82;
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

            v61 = [NSString stringWithCString:v63 encoding:4, &v96, v74];
            free(v63);
            v73 = v61;
            SSFileLog();
          }

LABEL_83:
          v64 = [v84 sendMessageWithDictionary:v57 error:0];
          v65 = +[SSLogConfig sharedDaemonConfig];
          if (!v65)
          {
            v65 = +[SSLogConfig sharedConfig];
          }

          v66 = [v65 shouldLog];
          if ([v65 shouldLogToDisk])
          {
            v66 |= 2u;
          }

          v67 = [v65 OSLogObject];
          if (os_log_type_enabled(v67, OS_LOG_TYPE_INFO))
          {
            v68 = v66;
          }

          else
          {
            v68 = v66 & 2;
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

            v67 = [NSString stringWithCString:v70 encoding:4, &v96, v74];
            free(v70);
            SSFileLog();
          }

          else
          {
            v18 = v79;
          }

LABEL_97:
          v17 = v80;
          v14 = v81;
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
        if (!v12)
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