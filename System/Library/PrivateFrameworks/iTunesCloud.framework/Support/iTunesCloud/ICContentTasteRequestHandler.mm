@interface ICContentTasteRequestHandler
- (ICContentTasteRequestHandler)initWithConfiguration:(id)configuration;
- (id)description;
- (void)_postContentTasteChanges:(id)changes withCompletionHandler:(id)handler;
- (void)_postPendingContentTasteChangesByAddingChange:(id)change completionHandler:(id)handler;
- (void)_schedulePostingContentTasteForFailedItems;
- (void)_scheduleUpdatingContentTasteWithNewExpirationDate;
- (void)cancelAllOperationsAndClearPendingChangesWithCompletionHandler:(id)handler;
- (void)updateContentTasteForItem:(id)item invalidatingLocalCache:(BOOL)cache completionHandler:(id)handler;
- (void)updateContentTasteForReason:(int64_t)reason invalidatingLocalCache:(BOOL)cache completionHandler:(id)handler;
@end

@implementation ICContentTasteRequestHandler

- (void)_postContentTasteChanges:(id)changes withCompletionHandler:(id)handler
{
  changesCopy = changes;
  handlerCopy = handler;
  v8 = os_log_create("com.apple.amp.itunescloudd", "ContentTaste_Oversize");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    selfCopy6 = self;
    v68 = 1024;
    *v69 = [changesCopy count];
    *&v69[4] = 2114;
    *&v69[6] = changesCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ change count=%d, contentTasteChange=%{public}@", buf, 0x1Cu);
  }

  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v9 = changesCopy;
  v58 = [v9 countByEnumeratingWithState:&v62 objects:v74 count:16];
  if (!v58)
  {

    v11 = 0;
    v33 = 0;
    v54 = 0;
    v31 = v9;
    goto LABEL_35;
  }

  LOBYTE(v11) = 0;
  v53 = 0;
  v54 = 0;
  v57 = *v63;
  obj = v9;
  *&v10 = 138543874;
  v48 = v10;
  v56 = handlerCopy;
  do
  {
    v12 = 0;
    do
    {
      if (*v63 != v57)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(*(&v62 + 1) + 8 * v12);
      v14 = [v13 objectForKey:{@"ContentTastePendingChangesCoordinatorOperationIdentifierKey", v48}];
      v15 = [v13 objectForKey:@"ContentTastePendingChangesCoordinatorPendingChangesKey"];
      v16 = [v15 objectForKey:@"ContentTastePendingChangesCoordinatorContentTasteItemKey"];

      v17 = [v13 objectForKey:@"ContentTastePendingChangesCoordinatorPendingChangesKey"];
      v18 = [v17 objectForKey:@"ContentTastePendingChangesCoordinatorInvalidateCacheKey"];
      bOOLValue = [v18 BOOLValue];

      if (v11)
      {
        v11 = 1;
      }

      else
      {
        v11 = [v14 isEqualToString:@"ICContentTasteRequestHandlerRetryTaskIdentifier"];
      }

      v20 = [[ICCloudContentTasteUpdateOperation alloc] initWithContentTasteUpdateItem:v16 invalidateLocalCache:bOOLValue configuration:self->_configuration operationIdentifier:v14];
      [(ICCloudContentTasteUpdateOperation *)v20 main];
      error = [(ICCloudContentTasteUpdateOperation *)v20 error];
      v22 = os_log_create("com.apple.amp.itunescloudd", "ContentTaste");
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = objc_retainBlock(handlerCopy);
        *buf = 138544386;
        selfCopy6 = self;
        v68 = 2048;
        *v69 = v20;
        *&v69[8] = 2114;
        *&v69[10] = v14;
        v70 = 2048;
        v71 = v23;
        v72 = 2114;
        v73 = error;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%{public}@  Operation=%p (identifier=%{public}@ finished with completion=%p, error=%{public}@", buf, 0x34u);

        handlerCopy = v56;
      }

      [(ICContentTastePendingChangesCoordinator *)self->_pendingChangesCoordinator contentTasteUpdateOperation:v20 finishedByInvalidatingCache:bOOLValue error:error];
      if (error)
      {
        v53 = 1;
        if (!handlerCopy)
        {
          goto LABEL_16;
        }

LABEL_15:
        v24 = dispatch_get_global_queue(0, 0);
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1000A9B78;
        block[3] = &unk_1001DF5A0;
        v61 = handlerCopy;
        v60 = error;
        dispatch_async(v24, block);

        goto LABEL_16;
      }

      contentTasteUpdateResponse = [(ICCloudContentTasteUpdateOperation *)v20 contentTasteUpdateResponse];
      expirationDate = [contentTasteUpdateResponse expirationDate];

      v27 = v54;
      if (v54)
      {
        if (expirationDate)
        {
          [expirationDate timeIntervalSinceDate:v54];
          if (v28 > 3600.0)
          {
            v27 = expirationDate;

            v29 = os_log_create("com.apple.amp.itunescloudd", "ContentTaste");
            if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
            {
              v51 = +[NSLocale currentLocale];
              v55 = [v27 descriptionWithLocale:v51];
              v50 = +[NSLocale currentLocale];
              v49 = [v27 descriptionWithLocale:v50];
              *buf = v48;
              selfCopy6 = self;
              v68 = 2114;
              *v69 = v55;
              *&v69[8] = 2114;
              *&v69[10] = v49;
              _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "%{public}@  response expiration date changed. previous date = %{public}@, updated date = %{public}@", buf, 0x20u);
            }
          }
        }
      }

      else
      {
        v27 = expirationDate;
      }

      v54 = v27;
      handlerCopy = v56;
      if (v56)
      {
        goto LABEL_15;
      }

LABEL_16:

      v12 = v12 + 1;
    }

    while (v58 != v12);
    v30 = [obj countByEnumeratingWithState:&v62 objects:v74 count:16];
    v58 = v30;
  }

  while (v30);
  v31 = obj;

  responseExpirationDate = self->_responseExpirationDate;
  v33 = v53;
  if (!responseExpirationDate && v54 || responseExpirationDate && v54 && ([v54 timeIntervalSinceDate:?], v47 > 3600.0))
  {
    v34 = os_log_create("com.apple.amp.itunescloudd", "ContentTaste");
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v35 = self->_responseExpirationDate;
      v36 = +[NSLocale currentLocale];
      v37 = [(NSDate *)v35 descriptionWithLocale:v36];
      v38 = +[NSLocale currentLocale];
      v39 = [v54 descriptionWithLocale:v38];
      *buf = v48;
      selfCopy6 = self;
      v68 = 2114;
      *v69 = v37;
      *&v69[8] = 2114;
      *&v69[10] = v39;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "%{public}@  response expiration date changed. old date = %{public}@, new date = %{public}@", buf, 0x20u);

      handlerCopy = v56;
    }

    objc_storeStrong(&self->_responseExpirationDate, v54);
    [(ICContentTasteRequestHandler *)self _scheduleUpdatingContentTasteWithNewExpirationDate];
    if (v53)
    {
LABEL_38:
      if (v11)
      {
        backOffIndex = self->_backOffIndex;
        if (backOffIndex <= 4)
        {
          self->_backOffIndex = backOffIndex + 1;
        }
      }

      v45 = os_log_create("com.apple.amp.itunescloudd", "ContentTaste");
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        v46 = self->_backOffIndex;
        *buf = 138544130;
        selfCopy6 = self;
        v68 = 1024;
        *v69 = 1;
        *&v69[4] = 1024;
        *&v69[6] = v11;
        *&v69[10] = 1024;
        *&v69[12] = v46;
        _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "%{public}@  scheduleRetry=%{BOOL}u, isRetryTask=%{BOOL}u, _backOffIndex=%d", buf, 0x1Eu);
      }

      [(ICContentTasteRequestHandler *)self _schedulePostingContentTasteForFailedItems];
    }
  }

  else
  {
LABEL_35:
    v40 = os_log_create("com.apple.amp.itunescloudd", "ContentTaste");
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      v41 = self->_responseExpirationDate;
      v42 = +[NSLocale currentLocale];
      v43 = [(NSDate *)v41 descriptionWithLocale:v42];
      *buf = 138543618;
      selfCopy6 = self;
      v68 = 2114;
      *v69 = v43;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "%{public}@  retaining _responseExpirationDate=%{public}@", buf, 0x16u);
    }

    if (v33)
    {
      goto LABEL_38;
    }
  }
}

- (void)_postPendingContentTasteChangesByAddingChange:(id)change completionHandler:(id)handler
{
  changeCopy = change;
  handlerCopy = handler;
  v9 = [ICAsyncBlockOperation alloc];
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_1000A9C80;
  v16 = &unk_1001DC900;
  v17 = changeCopy;
  selfCopy = self;
  v19 = handlerCopy;
  v20 = a2;
  v10 = handlerCopy;
  v11 = changeCopy;
  v12 = [v9 initWithStartHandler:&v13];
  [(NSOperationQueue *)self->_operationQueue addOperation:v12, v13, v14, v15, v16];
}

- (void)_schedulePostingContentTasteForFailedItems
{
  if (self->_retryState)
  {
    v3 = os_log_create("com.apple.amp.itunescloudd", "ContentTaste");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy2 = self;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@  we already have a retry operation scheduled", buf, 0xCu);
    }
  }

  else
  {
    self->_retryState = 1;
    v4 = os_log_create("com.apple.amp.itunescloudd", "ContentTaste");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      backOffIndex = self->_backOffIndex;
      v6 = dword_10016AF68[backOffIndex];
      retryState = self->_retryState;
      *buf = 138544130;
      selfCopy2 = self;
      v13 = 1024;
      v14 = retryState;
      v15 = 1024;
      v16 = backOffIndex;
      v17 = 1024;
      v18 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@  setting retryState=%d, _backOffIndex%d, backOffSeconds=%d", buf, 0x1Eu);
    }

    v8 = dispatch_time(0, 1000000000 * dword_10016AF68[self->_backOffIndex]);
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000AA298;
    block[3] = &unk_1001DF578;
    block[4] = self;
    dispatch_after(v8, queue, block);
  }
}

- (void)_scheduleUpdatingContentTasteWithNewExpirationDate
{
  [(NSDate *)self->_responseExpirationDate timeIntervalSinceNow];
  v4 = v3;
  v5 = +[ICBGTaskScheduler sharedTaskScheduler];
  [v5 scheduleTask:self->_defaultContentTasteRefreshIdentifier afterDelay:0 withUserData:v4];
  defaultContentTasteRefreshIdentifier = self->_defaultContentTasteRefreshIdentifier;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000AA424;
  v7[3] = &unk_1001DD5A8;
  v7[4] = self;
  [v5 registerForTask:defaultContentTasteRefreshIdentifier handler:v7];
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  userIdentity = [(ICConnectionConfiguration *)self->_configuration userIdentity];
  accountDSID = [userIdentity accountDSID];
  v7 = [NSString stringWithFormat:@"%@ %p [dsid=%@]", v4, self, accountDSID];

  return v7;
}

- (void)cancelAllOperationsAndClearPendingChangesWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000AA630;
  v7[3] = &unk_1001DF5A0;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(queue, v7);
}

- (void)updateContentTasteForItem:(id)item invalidatingLocalCache:(BOOL)cache completionHandler:(id)handler
{
  itemCopy = item;
  handlerCopy = handler;
  queue = self->_queue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000AA954;
  v13[3] = &unk_1001DC8D8;
  cacheCopy = cache;
  v13[4] = self;
  v14 = itemCopy;
  v15 = handlerCopy;
  v11 = handlerCopy;
  v12 = itemCopy;
  dispatch_async(queue, v13);
}

- (void)updateContentTasteForReason:(int64_t)reason invalidatingLocalCache:(BOOL)cache completionHandler:(id)handler
{
  handlerCopy = handler;
  queue = self->_queue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000AABAC;
  v11[3] = &unk_1001DC8B0;
  cacheCopy = cache;
  v12 = handlerCopy;
  reasonCopy = reason;
  v11[4] = self;
  v10 = handlerCopy;
  dispatch_async(queue, v11);
}

- (ICContentTasteRequestHandler)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v23.receiver = self;
  v23.super_class = ICContentTasteRequestHandler;
  v5 = [(ICContentTasteRequestHandler *)&v23 init];
  if (v5)
  {
    v6 = [configurationCopy copy];
    configuration = v5->_configuration;
    v5->_configuration = v6;

    userIdentity = [(ICConnectionConfiguration *)v5->_configuration userIdentity];
    accountDSID = [userIdentity accountDSID];

    v10 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"com.apple.amp.iTunesCloud.ICContentTasteRequestHandler-%lu", [accountDSID hash]);
    v11 = [NSString stringWithFormat:@"%@.default", v10];
    defaultContentTasteRefreshIdentifier = v5->_defaultContentTasteRefreshIdentifier;
    v5->_defaultContentTasteRefreshIdentifier = v11;

    v13 = [NSString stringWithFormat:@"%@.queue", v10];
    v14 = dispatch_queue_create([v13 UTF8String], 0);
    queue = v5->_queue;
    v5->_queue = v14;

    v16 = objc_alloc_init(NSOperationQueue);
    operationQueue = v5->_operationQueue;
    v5->_operationQueue = v16;

    v18 = v5->_operationQueue;
    v19 = [NSString stringWithFormat:@"%@.operationQueue", v10];
    [(NSOperationQueue *)v18 setName:v19];

    [(NSOperationQueue *)v5->_operationQueue setMaxConcurrentOperationCount:1];
    [(NSOperationQueue *)v5->_operationQueue setQualityOfService:25];
    [(NSOperationQueue *)v5->_operationQueue setUnderlyingQueue:v5->_queue];
    v20 = [[ICContentTastePendingChangesCoordinator alloc] initWithConfiguration:configurationCopy];
    pendingChangesCoordinator = v5->_pendingChangesCoordinator;
    v5->_pendingChangesCoordinator = v20;

    v5->_backOffIndex = 0;
    v5->_retryState = 0;
    v5->_isHandlerValid = 1;
    [(ICContentTasteRequestHandler *)v5 _schedulePostingContentTasteForFailedItems];
  }

  return v5;
}

@end