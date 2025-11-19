@interface CloudLibrary
+ (id)logCategory;
+ (id)oversizeLogCategory;
- (CloudLibrary)init;
- (id)_initWithConfiguration:(id)a3 pendingChangesCoordinator:(id)a4;
- (void)_continueConnectingToLibraryWithCompletionHandler:(id)a3;
- (void)_enqueueFailedOperation:(id)a3;
- (void)_enqueuePendingOperation:(id)a3;
- (void)_ensureConnectionWithCompletionHandler:(id)a3;
- (void)_executeBlockForAllOperations:(id)a3;
- (void)_performPendingOperations;
- (void)addBackgroundOperation:(id)a3 priority:(int)a4;
- (void)addOperation:(id)a3 priority:(int)a4;
- (void)cancelAllOperations;
- (void)dealloc;
- (void)decreasePriorityForAllOperations;
- (void)increasePriorityForAllOperations;
@end

@implementation CloudLibrary

- (void)_executeBlockForAllOperations:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [objc_opt_class() logCategory];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v15 = objc_opt_class();
      v16 = 2048;
      v17 = self;
      v6 = v15;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ %p -  _executeBlockForAllOperations", buf, 0x16u);
    }

    v7 = +[ICDServer server];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100082AF4;
    v12[3] = &unk_1001DC290;
    v12[4] = self;
    v8 = v4;
    v13 = v8;
    [v7 enumerateOperationsUsingBlock:v12];

    v9 = +[ICDServer server];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100082D18;
    v10[3] = &unk_1001DC290;
    v10[4] = self;
    v11 = v8;
    [v9 enumerateBackgroundOperationsUsingBlock:v10];
  }
}

- (void)_continueConnectingToLibraryWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [[CloudLibraryConnection alloc] initWithConfiguration:self->_configuration];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100083000;
  v8[3] = &unk_1001DDED0;
  v9 = v5;
  v10 = v4;
  v8[4] = self;
  v6 = v5;
  v7 = v4;
  [(CloudLibraryConnection *)v6 connectWithCompletionHandler:v8];
}

- (void)_ensureConnectionWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(CloudLibrary *)self connectionQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100083AA8;
  v7[3] = &unk_1001DF5A0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_enqueuePendingOperation:(id)a3
{
  v4 = a3;
  v5 = [(CloudLibrary *)self pendingChangesCoordinator];
  if (v5)
  {
    v6 = [objc_opt_class() logCategory];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v15 = 134218498;
      v16 = self;
      v17 = 2114;
      v18 = v8;
      v19 = 2048;
      v20 = v4;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "CloudLibrary %p - Enqueuing unserviceable operation to the pending changes coordinator: <%{public}@: %p>", &v15, 0x20u);
    }

    [v5 addPendingChange:v4];
  }

  [v4 cancel];
  [v4 setStatus:3];
  v9 = [NSError ic_cloudClientErrorWithCode:2003 userInfo:0];
  [v4 setError:v9];

  v10 = [v4 completionBlock];

  if (v10)
  {
    v11 = [objc_opt_class() logCategory];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v15 = 134218498;
      v16 = self;
      v17 = 2114;
      v18 = v13;
      v19 = 2048;
      v20 = v4;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "CloudLibrary %p - Calling completion block on non-executing, cancelled operation: <%{public}@: %p>", &v15, 0x20u);
    }

    v14 = [v4 completionBlock];
    v14[2]();
  }
}

- (void)_enqueueFailedOperation:(id)a3
{
  v4 = a3;
  v5 = [(CloudLibrary *)self pendingChangesCoordinator];
  if (v5)
  {
    v6 = [objc_opt_class() logCategory];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = 134218498;
      v10 = self;
      v11 = 2114;
      v12 = v8;
      v13 = 2048;
      v14 = v4;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "CloudLibrary %p - Enqueuing failed operation to the pending changes coordinator: <%{public}@: %p>", &v9, 0x20u);
    }

    [v5 addPendingChange:v4];
  }
}

- (void)_performPendingOperations
{
  v3 = [(CloudLibrary *)self pendingChangesCoordinator];
  if (v3)
  {
    v4 = [objc_opt_class() logCategory];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 134218498;
      v7 = self;
      v8 = 2114;
      v9 = objc_opt_class();
      v10 = 2048;
      v11 = v3;
      v5 = v9;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "CloudLibrary %p - Performing pending changes with coordinator: <%{public}@ %p>", &v6, 0x20u);
    }

    [v3 processPendingChangesUsingLibrary:self];
  }
}

- (void)cancelAllOperations
{
  v3 = [objc_opt_class() logCategory];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v7 = objc_opt_class();
    v8 = 2048;
    v9 = self;
    v4 = v7;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ %p - cancelAllOperations", buf, 0x16u);
  }

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100084594;
  v5[3] = &unk_1001DC1F0;
  v5[4] = self;
  [(CloudLibrary *)self _executeBlockForAllOperations:v5];
}

- (void)increasePriorityForAllOperations
{
  v3 = [objc_opt_class() logCategory];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v7 = objc_opt_class();
    v8 = 2048;
    v9 = self;
    v4 = v7;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ %p -  increasePriorityForAllOperations", buf, 0x16u);
  }

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000847D8;
  v5[3] = &unk_1001DC1F0;
  v5[4] = self;
  [(CloudLibrary *)self _executeBlockForAllOperations:v5];
}

- (void)decreasePriorityForAllOperations
{
  v3 = [objc_opt_class() logCategory];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v7 = objc_opt_class();
    v8 = 2048;
    v9 = self;
    v4 = v7;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ %p -  decreasePriorityForAllOperations", buf, 0x16u);
  }

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100084A1C;
  v5[3] = &unk_1001DC1F0;
  v5[4] = self;
  [(CloudLibrary *)self _executeBlockForAllOperations:v5];
}

- (void)addBackgroundOperation:(id)a3 priority:(int)a4
{
  v6 = a3;
  if (v6)
  {
    v7 = [(CloudLibrary *)self libraryIdentifier];
    [v6 setLibraryIdentifier:v7];

    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100084C08;
    v8[3] = &unk_1001DC1C8;
    v8[4] = self;
    v9 = v6;
    v10 = a4;
    [(CloudLibrary *)self _ensureConnectionWithCompletionHandler:v8];
  }
}

- (void)addOperation:(id)a3 priority:(int)a4
{
  v6 = a3;
  if (v6)
  {
    v7 = [(CloudLibrary *)self libraryIdentifier];
    [v6 setLibraryIdentifier:v7];

    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100085178;
    v8[3] = &unk_1001DC1C8;
    v8[4] = self;
    v9 = v6;
    v10 = a4;
    [(CloudLibrary *)self _ensureConnectionWithCompletionHandler:v8];
  }
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = CloudLibrary;
  [(CloudLibrary *)&v2 dealloc];
}

- (id)_initWithConfiguration:(id)a3 pendingChangesCoordinator:(id)a4
{
  v6 = a3;
  v7 = a4;
  v30.receiver = self;
  v30.super_class = CloudLibrary;
  v8 = [(CloudLibrary *)&v30 init];
  if (v8)
  {
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    libraryIdentifier = v8->_libraryIdentifier;
    v8->_libraryIdentifier = v10;

    v12 = [v6 copy];
    configuration = v8->_configuration;
    v8->_configuration = v12;

    v14 = [(ICConnectionConfiguration *)v8->_configuration userIdentity];
    v15 = [(ICConnectionConfiguration *)v8->_configuration userIdentityStore];
    v16 = [(CloudLibrary *)v8 _bagKey];
    [(ICConnectionConfiguration *)v8->_configuration setLibraryBagKey:v16];

    objc_storeStrong(&v8->_pendingChangesCoordinator, a4);
    v17 = [NSString stringWithFormat:@"com.apple.itunescloudd.%@.connection", objc_opt_class()];
    v18 = dispatch_queue_create([v17 UTF8String], 0);
    [(CloudLibrary *)v8 setConnectionQueue:v18];

    v19 = dispatch_group_create();
    [(CloudLibrary *)v8 setConnectionGroup:v19];

    v20 = dispatch_queue_create("com.apple.itunescloudd.asyncrequests", 0);
    [(CloudLibrary *)v8 setAsynchronousRequestsAccessQueue:v20];

    v29 = 0;
    v21 = [v15 getPropertiesForUserIdentity:v14 error:&v29];
    v22 = v29;
    if (v22)
    {
      v23 = os_log_create("com.apple.amp.itunescloudd", "Default");
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = [v22 msv_description];
        *buf = 138543874;
        v32 = v8;
        v33 = 2114;
        v34 = v14;
        v35 = 2114;
        v36 = v24;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%{public}@ Failed to load identity properties for %{public}@ error=%{public}@", buf, 0x20u);
      }
    }

    if (!v21 || ([v21 DSID], v25 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend(v25, "longLongValue"), v25, !v26))
    {
      v27 = [objc_opt_class() logCategory];
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v32 = v8;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "CloudLibrary %p - No active account, returning nil library (which will suspend operation queue).", buf, 0xCu);
      }

      v8 = 0;
    }
  }

  return v8;
}

- (CloudLibrary)init
{
  [NSException raise:NSInvalidArgumentException format:@"I'm abstract, please instantiate a subclass."];

  return 0;
}

+ (id)oversizeLogCategory
{
  v4 = [CloudLibrary instanceMethodForSelector:a2];
  if (v4 == [objc_opt_class() instanceMethodForSelector:a2])
  {
    v6 = +[NSAssertionHandler currentHandler];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = NSStringFromSelector(a2);
    [v6 handleFailureInMethod:a2 object:a1 file:@"CloudLibrary.m" lineNumber:50 description:{@"Subclass %@ must implement -%@ defined in %@.", v8, v9, @"CloudLibrary"}];
  }

  return &_os_log_default;
}

+ (id)logCategory
{
  v4 = [CloudLibrary instanceMethodForSelector:a2];
  if (v4 == [objc_opt_class() instanceMethodForSelector:a2])
  {
    v6 = +[NSAssertionHandler currentHandler];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = NSStringFromSelector(a2);
    [v6 handleFailureInMethod:a2 object:a1 file:@"CloudLibrary.m" lineNumber:45 description:{@"Subclass %@ must implement -%@ defined in %@.", v8, v9, @"CloudLibrary"}];
  }

  return &_os_log_default;
}

@end