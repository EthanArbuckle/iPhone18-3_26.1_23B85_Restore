@interface CSDCallSourceFetcher
- (CSDCallSourceFetcher)init;
- (CSDCallSourceFetcher)initWithSerialQueue:(id)a3 timeout:(double)a4;
- (CSDCallSourceFetcherDataSource)dataSource;
- (void)_waitForCallSourceWithIdentifier:(id)a3 completion:(id)a4;
- (void)fetchCallSourceForIdentifier:(id)a3 completion:(id)a4;
- (void)handleCallSourcesChanged;
@end

@implementation CSDCallSourceFetcher

- (CSDCallSourceFetcher)init
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"CSDCallSourceFetcher.m" lineNumber:27 description:{@"%s is not available. Use another initializer instead.", "-[CSDCallSourceFetcher init]"}];

  return 0;
}

- (CSDCallSourceFetcher)initWithSerialQueue:(id)a3 timeout:(double)a4
{
  v7 = a3;
  v13.receiver = self;
  v13.super_class = CSDCallSourceFetcher;
  v8 = [(CSDCallSourceFetcher *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_serialQueue, a3);
    v9->_timeout = a4;
    v10 = +[NSMutableDictionary dictionary];
    pendingCompletions = v9->_pendingCompletions;
    v9->_pendingCompletions = v10;
  }

  return v9;
}

- (void)fetchCallSourceForIdentifier:(id)a3 completion:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(CSDCallSourceFetcher *)self serialQueue];
  dispatch_assert_queue_V2(v7);

  v8 = [(CSDCallSourceFetcher *)self dataSource];
  v9 = [v8 callSourceWithIdentifier:v10];

  if (v9)
  {
    v6[2](v6, v9);
  }

  else
  {
    [(CSDCallSourceFetcher *)self _waitForCallSourceWithIdentifier:v10 completion:v6];
  }
}

- (void)handleCallSourcesChanged
{
  v2 = self;
  v3 = [(CSDCallSourceFetcher *)self serialQueue];
  dispatch_assert_queue_V2(v3);

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v4 = [(CSDCallSourceFetcher *)v2 pendingCompletions];
  v5 = [v4 allKeys];

  obj = v5;
  v23 = [v5 countByEnumeratingWithState:&v29 objects:v36 count:16];
  if (v23)
  {
    v22 = *v30;
    v21 = v2;
    do
    {
      for (i = 0; i != v23; i = i + 1)
      {
        if (*v30 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v29 + 1) + 8 * i);
        v8 = [(CSDCallSourceFetcher *)v2 dataSource];
        v9 = [v8 callSourceWithIdentifier:v7];

        if (v9)
        {
          v24 = i;
          v10 = [(CSDCallSourceFetcher *)v2 pendingCompletions];
          v11 = [v10 objectForKeyedSubscript:v7];

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

          v2 = v21;
          v19 = [(CSDCallSourceFetcher *)v21 pendingCompletions];
          [v19 setObject:0 forKeyedSubscript:v7];

          i = v24;
        }
      }

      v23 = [obj countByEnumeratingWithState:&v29 objects:v36 count:16];
    }

    while (v23);
  }
}

- (void)_waitForCallSourceWithIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CSDCallSourceFetcher *)self serialQueue];
  dispatch_assert_queue_V2(v8);

  v9 = sub_100004778();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v26 = v6;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Waiting for call source with identifier %@", buf, 0xCu);
  }

  v10 = [(CSDCallSourceFetcher *)self pendingCompletions];
  v11 = [v10 objectForKeyedSubscript:v6];

  if (!v11)
  {
    v11 = +[NSMutableSet set];
    v12 = [(CSDCallSourceFetcher *)self pendingCompletions];
    [v12 setObject:v11 forKeyedSubscript:v6];
  }

  v13 = [v7 copy];
  v14 = objc_retainBlock(v13);
  [v11 addObject:v14];

  [(CSDCallSourceFetcher *)self timeout];
  v16 = dispatch_time(0, (v15 * 1000000000.0));
  v17 = [(CSDCallSourceFetcher *)self serialQueue];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10010AAE8;
  v21[3] = &unk_10061BC18;
  v21[4] = self;
  v22 = v6;
  v23 = v13;
  v24 = v7;
  v18 = v7;
  v19 = v13;
  v20 = v6;
  dispatch_after(v16, v17, v21);
}

- (CSDCallSourceFetcherDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

@end