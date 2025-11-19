@interface NLActivityRingsRelevanceEngineDataSource
- (NLActivityRingsRelevanceEngineDataSource)init;
- (id)supportedSections;
- (void)_executeQuery:(id)a3;
- (void)_generateRingsElement;
- (void)_startCurrentActivitySummaryQueryWithRemainingRetries:(unint64_t)a3;
- (void)_stopQueries;
- (void)dealloc;
- (void)getElementsInSection:(id)a3 withHandler:(id)a4;
- (void)pause;
- (void)resume;
@end

@implementation NLActivityRingsRelevanceEngineDataSource

- (NLActivityRingsRelevanceEngineDataSource)init
{
  v10.receiver = self;
  v10.super_class = NLActivityRingsRelevanceEngineDataSource;
  v2 = [(NLActivityRingsRelevanceEngineDataSource *)&v10 init];
  if (v2)
  {
    v3 = HKCreateSerialDispatchQueue();
    serialQueue = v2->_serialQueue;
    v2->_serialQueue = v3;

    v2->_didSetupElements = 0;
    v5 = +[HKHealthStore fiui_sharedHealthStoreForCarousel];
    [(NLActivityRingsRelevanceEngineDataSource *)v2 setHealthStore:v5];

    v6 = +[NSSet set];
    [(NLActivityRingsRelevanceEngineDataSource *)v2 setQueries:v6];

    v7 = [[REDailyRoutineRelevanceProvider alloc] initWithDailyRoutineType:2];
    [(NLActivityRingsRelevanceEngineDataSource *)v2 setDowntimeRelevanceProvider:v7];

    v8 = +[NSNotificationCenter defaultCenter];
    [v8 addObserver:v2 selector:"_generateRingsElement" name:HKUserPreferencesDidChangeNotification object:0];
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = NLActivityRingsRelevanceEngineDataSource;
  [(NLActivityRingsRelevanceEngineDataSource *)&v4 dealloc];
}

- (void)_generateRingsElement
{
  v3 = [(NLActivityRingsRelevanceEngineDataSource *)self currentSummary];

  if (v3)
  {
    v4 = [(NLActivityRingsRelevanceEngineDataSource *)self delegate];
    v5 = [v4 elementOperationQueue];
    v6 = v5;
    if (v4 && v5)
    {
      if (self->_didSetupElements)
      {
        *&buf = 0;
        *(&buf + 1) = &buf;
        v18 = 0x2020000000;
        v19 = 0;
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_225C;
        block[3] = &unk_8368;
        p_buf = &buf;
        v7 = v4;
        v15 = v7;
        dispatch_sync(v6, block);
        v11[0] = _NSConcreteStackBlock;
        v11[1] = 3221225472;
        v11[2] = sub_22CC;
        v11[3] = &unk_8390;
        v13 = &buf;
        v11[4] = self;
        v12 = v7;
        dispatch_async(&_dispatch_main_q, v11);

        _Block_object_dispose(&buf, 8);
      }

      else
      {
        _HKInitializeLogging();
        v8 = HKLogCoaching;
        if (os_log_type_enabled(HKLogCoaching, OS_LOG_TYPE_DEFAULT))
        {
          v9 = v8;
          v10 = [(NLActivityRingsRelevanceEngineDataSource *)self currentSummary];
          LODWORD(buf) = 138412290;
          *(&buf + 4) = v10;
          _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "[Supergreen-Rings] Creating element with current summary = %@", &buf, 0xCu);
        }

        self->_didSetupElements = 1;
        [v4 invalidateElements];
      }
    }
  }
}

- (void)pause
{
  _HKInitializeLogging();
  v3 = HKLogCoaching;
  if (os_log_type_enabled(HKLogCoaching, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "[Supergreen-Rings] Pause requested.", v4, 2u);
  }

  [(NLActivityRingsRelevanceEngineDataSource *)self _stopQueries];
}

- (void)resume
{
  _HKInitializeLogging();
  v3 = HKLogCoaching;
  if (os_log_type_enabled(HKLogCoaching, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "[Supergreen-Rings] Resume requested.", v4, 2u);
  }

  [(NLActivityRingsRelevanceEngineDataSource *)self _startCurrentActivitySummaryQuery];
}

- (id)supportedSections
{
  v4 = REDefaultSectionIdentifier;
  v2 = [NSArray arrayWithObjects:&v4 count:1];

  return v2;
}

- (void)getElementsInSection:(id)a3 withHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  _HKInitializeLogging();
  v8 = HKLogCoaching;
  if (os_log_type_enabled(HKLogCoaching, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v13 = v6;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "[Supergreen-Rings] Elements requested (section = %{public}@).", buf, 0xCu);
  }

  if ([v6 isEqualToString:REDefaultSectionIdentifier])
  {
    serialQueue = self->_serialQueue;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_275C;
    v10[3] = &unk_83B8;
    v10[4] = self;
    v11 = v7;
    dispatch_async(serialQueue, v10);
  }

  else
  {
    (*(v7 + 2))(v7, &__NSArray0__struct);
  }
}

- (void)_startCurrentActivitySummaryQueryWithRemainingRetries:(unint64_t)a3
{
  _HKInitializeLogging();
  v5 = HKLogCoaching;
  if (a3)
  {
    if (os_log_type_enabled(HKLogCoaching, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v15 = a3;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "[Supergreen-Rings] Trying to start current activity summary query with remaining retries %lu.", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    v9 = _NSConcreteStackBlock;
    v10 = 3221225472;
    v11 = sub_2B28;
    v12 = &unk_8408;
    objc_copyWeak(v13, buf);
    v13[1] = a3;
    v6 = objc_retainBlock(&v9);
    v7 = [_HKCurrentActivitySummaryQuery alloc];
    v8 = [v7 initWithUpdateHandler:{v6, v9, v10, v11, v12}];
    [(NLActivityRingsRelevanceEngineDataSource *)self _executeQuery:v8];

    objc_destroyWeak(v13);
    objc_destroyWeak(buf);
  }

  else if (os_log_type_enabled(HKLogCoaching, OS_LOG_TYPE_ERROR))
  {
    sub_318C(v5);
  }
}

- (void)_executeQuery:(id)a3
{
  v4 = a3;
  serialQueue = self->_serialQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_2E08;
  v7[3] = &unk_83E0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(serialQueue, v7);
}

- (void)_stopQueries
{
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_2F0C;
  block[3] = &unk_8430;
  block[4] = self;
  dispatch_async(serialQueue, block);
}

@end