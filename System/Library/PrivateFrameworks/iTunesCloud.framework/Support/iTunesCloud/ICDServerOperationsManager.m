@interface ICDServerOperationsManager
- (BOOL)cancelOperationsByClass:(Class)a3;
- (BOOL)hasOperationsOfClass:(Class)a3;
- (BOOL)isNetworkActivityIndicatorVisible;
- (ICDServerOperationsManager)init;
- (id)listCloudServerOperations;
- (void)_setupInternalQueues;
- (void)_setupKVO;
- (void)_tearDownKVO;
- (void)addBackgroundOperation:(id)a3 priority:(int)a4;
- (void)addOperation:(id)a3 priority:(int)a4;
- (void)dealloc;
- (void)enumerateBackgroundOperationsUsingBlock:(id)a3;
- (void)enumerateOperationsUsingBlock:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)setNetworkActivityIndicatorVisible:(BOOL)a3;
@end

@implementation ICDServerOperationsManager

- (BOOL)isNetworkActivityIndicatorVisible
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(ICDServerOperationsManager *)self serialQueue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000366C;
  v5[3] = &unk_1001DEF50;
  v5[4] = v2;
  v5[5] = &v6;
  dispatch_sync(v3, v5);

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

- (void)_tearDownKVO
{
  [(NSOperationQueue *)self->_operationQueue removeObserver:self forKeyPath:@"operationCount" context:off_100212D70];
  backgroundOperationQueue = self->_backgroundOperationQueue;
  v4 = off_100212D70;

  [(NSOperationQueue *)backgroundOperationQueue removeObserver:self forKeyPath:@"operationCount" context:v4];
}

- (void)_setupKVO
{
  [(NSOperationQueue *)self->_operationQueue addObserver:self forKeyPath:@"operationCount" options:0 context:off_100212D70];
  backgroundOperationQueue = self->_backgroundOperationQueue;
  v4 = off_100212D70;

  [(NSOperationQueue *)backgroundOperationQueue addObserver:self forKeyPath:@"operationCount" options:0 context:v4];
}

- (void)_setupInternalQueues
{
  v3 = dispatch_queue_create("com.apple.itunescloudd.ICDServerOperationsManager.serial.queue", 0);
  serialQueue = self->_serialQueue;
  self->_serialQueue = v3;

  v5 = objc_alloc_init(NSOperationQueue);
  operationQueue = self->_operationQueue;
  self->_operationQueue = v5;

  [(NSOperationQueue *)self->_operationQueue setName:@"com.apple.itunescloudd.ICDServerOperationsManager.operationQueue"];
  [(NSOperationQueue *)self->_operationQueue setMaxConcurrentOperationCount:1];
  v7 = objc_alloc_init(NSOperationQueue);
  backgroundOperationQueue = self->_backgroundOperationQueue;
  self->_backgroundOperationQueue = v7;

  [(NSOperationQueue *)self->_backgroundOperationQueue setName:@"com.apple.itunescloudd.ICDServerOperationsManager.backgroundOperationQueue"];
  v9 = self->_backgroundOperationQueue;

  [(NSOperationQueue *)v9 setMaxConcurrentOperationCount:1];
}

- (void)setNetworkActivityIndicatorVisible:(BOOL)a3
{
  v5 = [(ICDServerOperationsManager *)self serialQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10007B5CC;
  v6[3] = &unk_1001DE650;
  v6[4] = self;
  v7 = a3;
  dispatch_sync(v5, v6);
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (off_100212D70 != a6)
  {
    v12.receiver = self;
    v12.super_class = ICDServerOperationsManager;
    [(ICDServerOperationsManager *)&v12 observeValueForKeyPath:a3 ofObject:a4 change:a5 context:?];
    return;
  }

  v7 = [(NSOperationQueue *)self->_operationQueue operationCount:a3];
  v8 = [(NSOperationQueue *)self->_backgroundOperationQueue operationCount];
  v9 = [(ICDServerOperationsManager *)self isNetworkActivityIndicatorVisible];
  if (v7 + v8)
  {
    if (v9)
    {
      return;
    }

    sub_100003528(1);
    v10 = self;
    v11 = 1;
  }

  else
  {
    if (!v9)
    {
      return;
    }

    sub_100003528(0);
    v10 = self;
    v11 = 0;
  }

  [(ICDServerOperationsManager *)v10 setNetworkActivityIndicatorVisible:v11];
}

- (id)listCloudServerOperations
{
  v3 = [(NSOperationQueue *)self->_operationQueue operations];
  v4 = [v3 copy];

  v5 = [(NSOperationQueue *)self->_backgroundOperationQueue operations];
  v6 = [v5 copy];

  v7 = +[NSMutableDictionary dictionary];
  v8 = os_log_create("com.apple.amp.itunescloudd", "Default");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    *v50 = [v4 count];
    *&v50[4] = 1024;
    *&v50[6] = [v6 count];
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "operations count=%d, backgroundOperations count=%d", buf, 0xEu);
  }

  v38 = v7;
  v37 = v6;
  if ([v4 count])
  {
    v9 = +[NSMutableArray array];
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v10 = v4;
    v11 = [v10 countByEnumeratingWithState:&v43 objects:v48 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v44;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v44 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v43 + 1) + 8 * i);
          v16 = [v15 name];
          v17 = v16;
          if (v16)
          {
            v18 = v16;
          }

          else
          {
            v19 = objc_opt_class();
            v18 = NSStringFromClass(v19);
          }

          v20 = v18;

          v21 = [NSString stringWithFormat:@"name=%@, object=%p", v20, v15];
          [v9 addObject:v21];
        }

        v12 = [v10 countByEnumeratingWithState:&v43 objects:v48 count:16];
      }

      while (v12);
    }

    v7 = v38;
    [v38 setObject:v9 forKey:@"ICDServerOperationsManagerOperationNamesKey"];

    v6 = v37;
  }

  if ([v6 count])
  {
    v22 = +[NSMutableArray array];
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v23 = v6;
    v24 = [v23 countByEnumeratingWithState:&v39 objects:v47 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v40;
      do
      {
        for (j = 0; j != v25; j = j + 1)
        {
          if (*v40 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v28 = *(*(&v39 + 1) + 8 * j);
          v29 = [v28 name];
          v30 = v29;
          if (v29)
          {
            v31 = v29;
          }

          else
          {
            v32 = objc_opt_class();
            v31 = NSStringFromClass(v32);
          }

          v33 = v31;

          v34 = [NSString stringWithFormat:@"name=%@, object=%p", v33, v28];
          [v22 addObject:v34];
        }

        v25 = [v23 countByEnumeratingWithState:&v39 objects:v47 count:16];
      }

      while (v25);
    }

    v7 = v38;
    [v38 setObject:v22 forKey:@"ICDServerOperationsManagerBackgroundOperationNamesKey"];

    v6 = v37;
  }

  v35 = os_log_create("com.apple.amp.itunescloudd", "Default_Oversize");
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    *v50 = v7;
    _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "cloudServerOperations=%{public}@", buf, 0xCu);
  }

  return v7;
}

- (BOOL)cancelOperationsByClass:(Class)a3
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [(NSOperationQueue *)self->_operationQueue operations];
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v12;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if (objc_opt_isKindOfClass())
        {
          [v9 cancel];
          v6 = 1;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

- (BOOL)hasOperationsOfClass:(Class)a3
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [(NSOperationQueue *)self->_operationQueue operations];
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if (objc_opt_isKindOfClass())
        {
          v9 = 1;
          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:

  return v9;
}

- (void)enumerateBackgroundOperationsUsingBlock:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = [(NSOperationQueue *)self->_backgroundOperationQueue operations];
    v6 = [v5 copy];

    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
LABEL_4:
      v10 = 0;
      while (1)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * v10);
        v12 = 0;
        v4[2](v4, v11, &v12);
        if (v12)
        {
          break;
        }

        if (v8 == ++v10)
        {
          v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
          if (v8)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }
  }
}

- (void)enumerateOperationsUsingBlock:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = [(NSOperationQueue *)self->_operationQueue operations];
    v6 = [v5 copy];

    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
LABEL_4:
      v10 = 0;
      while (1)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * v10);
        v12 = 0;
        v4[2](v4, v11, &v12);
        if (v12)
        {
          break;
        }

        if (v8 == ++v10)
        {
          v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
          if (v8)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }
  }
}

- (void)addBackgroundOperation:(id)a3 priority:(int)a4
{
  v6 = a4 == 2;
  v7 = a3;
  v8 = v7;
  if (a4)
  {
    v9 = 4 * v6;
  }

  else
  {
    v9 = -4;
  }

  [v7 setQueuePriority:v9];
  [v8 setQualityOfService:9];
  v10 = os_log_create("com.apple.amp.itunescloudd", "Default");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v8 name];
    v12 = 138544130;
    v13 = self;
    v14 = 2048;
    v15 = v8;
    v16 = 2114;
    v17 = v11;
    v18 = 1024;
    v19 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ Adding background operation %p (name=%{public}@) with priority %d", &v12, 0x26u);
  }

  [(NSOperationQueue *)self->_backgroundOperationQueue addOperation:v8];
}

- (void)addOperation:(id)a3 priority:(int)a4
{
  v6 = a4 == 2;
  v7 = a3;
  v8 = v7;
  if (a4)
  {
    v9 = 4 * v6;
  }

  else
  {
    v9 = -4;
  }

  [v7 setQueuePriority:v9];
  [v8 setQualityOfService:17];
  v10 = os_log_create("com.apple.amp.itunescloudd", "Default");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v8 name];
    v12 = 138544130;
    v13 = self;
    v14 = 2048;
    v15 = v8;
    v16 = 2114;
    v17 = v11;
    v18 = 1024;
    v19 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ Adding operation %p (name=%{public}@) with priority %d", &v12, 0x26u);
  }

  [(NSOperationQueue *)self->_operationQueue addOperation:v8];
}

- (void)dealloc
{
  [(ICDServerOperationsManager *)self _tearDownKVO];
  v3.receiver = self;
  v3.super_class = ICDServerOperationsManager;
  [(ICDServerOperationsManager *)&v3 dealloc];
}

- (ICDServerOperationsManager)init
{
  v5.receiver = self;
  v5.super_class = ICDServerOperationsManager;
  v2 = [(ICDServerOperationsManager *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(ICDServerOperationsManager *)v2 _setupInternalQueues];
    [(ICDServerOperationsManager *)v3 _setupKVO];
  }

  return v3;
}

@end