@interface CSDCallSourceFetcher
- (CSDCallSourceFetcher)init;
- (CSDCallSourceFetcher)initWithSerialQueue:(id)queue timeout:(double)timeout;
- (CSDCallSourceFetcherDataSource)dataSource;
- (void)_waitForCallSourceWithIdentifier:(id)identifier completion:(id)completion;
- (void)fetchCallSourceForIdentifier:(id)identifier completion:(id)completion;
- (void)handleCallSourcesChanged;
@end

@implementation CSDCallSourceFetcher

- (CSDCallSourceFetcher)init
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"CSDCallSourceFetcher.m" lineNumber:27 description:{@"%s is not available. Use another initializer instead.", "-[CSDCallSourceFetcher init]"}];

  return 0;
}

- (CSDCallSourceFetcher)initWithSerialQueue:(id)queue timeout:(double)timeout
{
  queueCopy = queue;
  v13.receiver = self;
  v13.super_class = CSDCallSourceFetcher;
  v8 = [(CSDCallSourceFetcher *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_serialQueue, queue);
    v9->_timeout = timeout;
    v10 = +[NSMutableDictionary dictionary];
    pendingCompletions = v9->_pendingCompletions;
    v9->_pendingCompletions = v10;
  }

  return v9;
}

- (void)fetchCallSourceForIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  serialQueue = [(CSDCallSourceFetcher *)self serialQueue];
  dispatch_assert_queue_V2(serialQueue);

  dataSource = [(CSDCallSourceFetcher *)self dataSource];
  v9 = [dataSource callSourceWithIdentifier:identifierCopy];

  if (v9)
  {
    completionCopy[2](completionCopy, v9);
  }

  else
  {
    [(CSDCallSourceFetcher *)self _waitForCallSourceWithIdentifier:identifierCopy completion:completionCopy];
  }
}

- (void)handleCallSourcesChanged
{
  selfCopy = self;
  serialQueue = [(CSDCallSourceFetcher *)self serialQueue];
  dispatch_assert_queue_V2(serialQueue);

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  pendingCompletions = [(CSDCallSourceFetcher *)selfCopy pendingCompletions];
  allKeys = [pendingCompletions allKeys];

  obj = allKeys;
  v23 = [allKeys countByEnumeratingWithState:&v29 objects:v36 count:16];
  if (v23)
  {
    v22 = *v30;
    v21 = selfCopy;
    do
    {
      for (i = 0; i != v23; i = i + 1)
      {
        if (*v30 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v29 + 1) + 8 * i);
        dataSource = [(CSDCallSourceFetcher *)selfCopy dataSource];
        v9 = [dataSource callSourceWithIdentifier:v7];

        if (v9)
        {
          v24 = i;
          pendingCompletions2 = [(CSDCallSourceFetcher *)selfCopy pendingCompletions];
          v11 = [pendingCompletions2 objectForKeyedSubscript:v7];

          v27 = 0u;
          v28 = 0u;
          v25 = 0u;
          v26 = 0u;
          v12 = v11;
          v13 = [v12 countByEnumeratingWithState:&v25 objects:v35 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = *v26;
            do
            {
              for (j = 0; j != v14; j = j + 1)
              {
                if (*v26 != v15)
                {
                  objc_enumerationMutation(v12);
                }

                v17 = *(*(&v25 + 1) + 8 * j);
                v18 = sub_100004778();
                if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v34 = v7;
                  _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Calling fetch completion block for call source with identifier %@", buf, 0xCu);
                }

                (*(v17 + 16))(v17, v9);
              }

              v14 = [v12 countByEnumeratingWithState:&v25 objects:v35 count:16];
            }

            while (v14);
          }

          selfCopy = v21;
          pendingCompletions3 = [(CSDCallSourceFetcher *)v21 pendingCompletions];
          [pendingCompletions3 setObject:0 forKeyedSubscript:v7];

          i = v24;
        }
      }

      v23 = [obj countByEnumeratingWithState:&v29 objects:v36 count:16];
    }

    while (v23);
  }
}

- (void)_waitForCallSourceWithIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  serialQueue = [(CSDCallSourceFetcher *)self serialQueue];
  dispatch_assert_queue_V2(serialQueue);

  v9 = sub_100004778();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v26 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Waiting for call source with identifier %@", buf, 0xCu);
  }

  pendingCompletions = [(CSDCallSourceFetcher *)self pendingCompletions];
  v11 = [pendingCompletions objectForKeyedSubscript:identifierCopy];

  if (!v11)
  {
    v11 = +[NSMutableSet set];
    pendingCompletions2 = [(CSDCallSourceFetcher *)self pendingCompletions];
    [pendingCompletions2 setObject:v11 forKeyedSubscript:identifierCopy];
  }

  v13 = [completionCopy copy];
  v14 = objc_retainBlock(v13);
  [v11 addObject:v14];

  [(CSDCallSourceFetcher *)self timeout];
  v16 = dispatch_time(0, (v15 * 1000000000.0));
  serialQueue2 = [(CSDCallSourceFetcher *)self serialQueue];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10010AAE8;
  v21[3] = &unk_10061BC18;
  v21[4] = self;
  v22 = identifierCopy;
  v23 = v13;
  v24 = completionCopy;
  v18 = completionCopy;
  v19 = v13;
  v20 = identifierCopy;
  dispatch_after(v16, serialQueue2, v21);
}

- (CSDCallSourceFetcherDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

@end