@interface ICDHandlerCoordinator
+ (id)_managedHandlerClasses;
- (BOOL)isSetupCompleted;
- (ICDBackgroundTaskScheduling)taskScheduler;
- (ICDHandlerCoordinator)initWithLibraryManagementPolicy:(int64_t)a3 backgroundTaskScheduler:(id)a4;
- (NSString)description;
- (id)_configurationsToActivateForChange:(id)a3 initialSetup:(BOOL)a4;
- (id)_configurationsToRemoveForChange:(id)a3 initialSetup:(BOOL)a4;
- (void)_processActiveConfigurationChange:(id)a3 initialSetup:(BOOL)a4;
- (void)changeLibraryManagementPolicy:(int64_t)a3 withAccountsStateChange:(id)a4;
- (void)enumerateHandlersForAccountState:(id)a3 usingBlock:(id)a4;
- (void)setSetupCompleted:(BOOL)a3;
- (void)setupHandlersWithAccountStateChange:(id)a3;
- (void)updateHandlersWithAccountStateChange:(id)a3;
@end

@implementation ICDHandlerCoordinator

- (ICDBackgroundTaskScheduling)taskScheduler
{
  WeakRetained = objc_loadWeakRetained(&self->_taskScheduler);

  return WeakRetained;
}

- (void)_processActiveConfigurationChange:(id)a3 initialSetup:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  if ([(ICDHandlerCoordinator *)self libraryManagementPolicy]&& [(ICDHandlerCoordinator *)self libraryManagementPolicy]!= 1)
  {
    v28 = +[NSAssertionHandler currentHandler];
    [v28 handleFailureInMethod:a2 object:self file:@"ICDHandlerCoordinator.m" lineNumber:305 description:@"The method _processActiveConfigurationChange:initialSetup: is only suitable for single user and serial multi user setup."];
  }

  v8 = [v7 initialState];
  v9 = [v8 activeConfiguration];

  if (v4 && ([v7 activeConfigurationChanged] & 1) == 0)
  {

    v9 = 0;
  }

  v10 = [v7 finalState];
  v11 = [v10 activeConfiguration];

  if (v9 | v11)
  {
    v29 = v7;
    v12 = [(ICDHandlerCoordinator *)self taskScheduler];
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    obj = [objc_opt_class() _managedHandlerClasses];
    v34 = [obj countByEnumeratingWithState:&v39 objects:v51 count:16];
    if (!v34)
    {
      goto LABEL_35;
    }

    v33 = *v40;
    v31 = v11;
    v32 = v9;
    while (1)
    {
      for (i = 0; i != v34; i = i + 1)
      {
        if (*v40 != v33)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v39 + 1) + 8 * i);
        v15 = [v14 handlerForConfiguration:v9];
        v16 = [v14 handlerForConfiguration:v11];
        [v15 setTaskScheduler:v12];
        [v16 setTaskScheduler:v12];
        v17 = os_log_create("com.apple.amp.itunescloudd", "Accounts");
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138544130;
          v44 = self;
          v45 = 2048;
          v46 = v15;
          v47 = 2048;
          v48 = v16;
          v49 = 2114;
          v50 = v14;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%{public}@ - Handler transition: [%p] -> [%p] - class=%{public}@", buf, 0x2Au);
        }

        if ([(ICDHandlerCoordinator *)self libraryManagementPolicy]== 1)
        {
          v18 = os_log_create("com.apple.amp.itunescloudd", "Accounts");
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            v19 = [v9 userIdentity];
            v20 = [v19 accountDSID];
            *buf = 138544130;
            v44 = self;
            v45 = 2048;
            v46 = v15;
            v47 = 2114;
            v48 = v14;
            v49 = 2114;
            v50 = v20;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%{public}@ - Deactivating handler %p - class=%{public}@ dsid=%{public}@", buf, 0x2Au);

            v11 = v31;
            v9 = v32;
          }

          [v15 becomeInactiveWithDeauthentication:0 completion:0];
          v21 = os_log_create("com.apple.amp.itunescloudd", "Accounts");
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
LABEL_31:
            v26 = [v11 userIdentity];
            v27 = [v26 accountDSID];
            *buf = 138544130;
            v44 = self;
            v45 = 2048;
            v46 = v16;
            v47 = 2114;
            v48 = v14;
            v49 = 2114;
            v50 = v27;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%{public}@ - Activating handler %p - class=%{public}@ dsid=%{public}@", buf, 0x2Au);

            v11 = v31;
            v9 = v32;
          }

LABEL_32:

          [v16 becomeActive];
          goto LABEL_33;
        }

        if (v16)
        {
          v22 = v15 == 0;
        }

        else
        {
          v22 = 0;
        }

        if (v22)
        {
          v21 = os_log_create("com.apple.amp.itunescloudd", "Accounts");
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_31;
          }

          goto LABEL_32;
        }

        if (v15)
        {
          v23 = os_log_create("com.apple.amp.itunescloudd", "Accounts");
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            v24 = [v9 userIdentity];
            v25 = [v24 accountDSID];
            *buf = 138544130;
            v44 = self;
            v45 = 2048;
            v46 = v15;
            v47 = 2114;
            v48 = v14;
            v49 = 2114;
            v50 = v25;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%{public}@ - Deactivating handler %p - class=%{public}@ dsid=%{public}@", buf, 0x2Au);

            v11 = v31;
            v9 = v32;
          }

          v35[0] = _NSConcreteStackBlock;
          v35[1] = 3221225472;
          v35[2] = sub_1000F60D8;
          v35[3] = &unk_1001DE0D0;
          v35[4] = self;
          v35[5] = v14;
          v36 = v9;
          v37 = v16;
          v38 = v11;
          [v15 becomeInactiveWithDeauthentication:1 completion:v35];
        }

LABEL_33:
      }

      v34 = [obj countByEnumeratingWithState:&v39 objects:v51 count:16];
      if (!v34)
      {
LABEL_35:

        v7 = v29;
        goto LABEL_36;
      }
    }
  }

  v12 = os_log_create("com.apple.amp.itunescloudd", "Accounts");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v44 = self;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ - Change processing done [no configurations]", buf, 0xCu);
  }

LABEL_36:
}

- (id)_configurationsToRemoveForChange:(id)a3 initialSetup:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = [v5 initialState];
  v7 = [v6 supportedConfigurations];

  if (v4 && ([v5 supportedConfigurationsChanged] & 1) == 0)
  {
    v8 = +[NSSet set];

    v7 = v8;
  }

  v9 = [v5 finalState];
  v10 = [v9 supportedConfigurations];

  v11 = [v7 mutableCopy];
  [v11 minusSet:v10];
  v12 = [v11 copy];

  return v12;
}

- (id)_configurationsToActivateForChange:(id)a3 initialSetup:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = [v5 initialState];
  v7 = [v6 supportedConfigurations];

  if (v4 && ([v5 supportedConfigurationsChanged] & 1) == 0)
  {
    v8 = +[NSSet set];

    v7 = v8;
  }

  v9 = [v5 finalState];
  v10 = [v9 supportedConfigurations];

  v11 = [v10 mutableCopy];
  [v11 minusSet:v7];
  v12 = [v11 copy];

  return v12;
}

- (BOOL)isSetupCompleted
{
  v2 = self;
  objc_sync_enter(v2);
  setupCompleted = v2->_setupCompleted;
  objc_sync_exit(v2);

  return setupCompleted;
}

- (void)setSetupCompleted:(BOOL)a3
{
  obj = self;
  objc_sync_enter(obj);
  obj->_setupCompleted = a3;
  objc_sync_exit(obj);
}

- (void)changeLibraryManagementPolicy:(int64_t)a3 withAccountsStateChange:(id)a4
{
  v7 = a4;
  if (![(ICDHandlerCoordinator *)self isSetupCompleted])
  {
    v11 = +[NSAssertionHandler currentHandler];
  }

  v8 = [ICAsyncBlockOperation alloc];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000F6FC4;
  v12[3] = &unk_1001DE080;
  v13 = v7;
  v14 = a3;
  v12[4] = self;
  v9 = v7;
  v10 = [v8 initWithStartHandler:v12];
  [v10 setName:@"com.apple.itunescloudd.ICDHandlerCoordinator.changeLibraryManagementPolicy"];
  [(NSOperationQueue *)self->_operationQueue addOperation:v10];
}

- (void)enumerateHandlersForAccountState:(id)a3 usingBlock:(id)a4
{
  v18 = a3;
  v5 = a4;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = +[ICDHandlerCoordinator _managedHandlerClasses];
  v6 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v6)
  {
    v7 = v6;
    v17 = *v24;
    do
    {
      v8 = 0;
      do
      {
        if (*v24 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v23 + 1) + 8 * v8);
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v10 = [v18 supportedConfigurations];
        v11 = [v10 countByEnumeratingWithState:&v19 objects:v27 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v20;
          do
          {
            v14 = 0;
            do
            {
              if (*v20 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = [v9 handlerForConfiguration:*(*(&v19 + 1) + 8 * v14)];
              v5[2](v5, v15);

              v14 = v14 + 1;
            }

            while (v12 != v14);
            v12 = [v10 countByEnumeratingWithState:&v19 objects:v27 count:16];
          }

          while (v12);
        }

        v8 = v8 + 1;
      }

      while (v8 != v7);
      v7 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v7);
  }
}

- (void)updateHandlersWithAccountStateChange:(id)a3
{
  v5 = a3;
  v6 = [ICAsyncBlockOperation alloc];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000F7448;
  v9[3] = &unk_1001DE080;
  v10 = v5;
  v11 = a2;
  v9[4] = self;
  v7 = v5;
  v8 = [v6 initWithStartHandler:v9];
  [v8 setName:@"com.apple.itunescloudd.ICDHandlerCoordinator.updateHandlersWithAccountStateChange"];
  [(NSOperationQueue *)self->_operationQueue addOperation:v8];
}

- (void)setupHandlersWithAccountStateChange:(id)a3
{
  v5 = a3;
  v6 = [ICAsyncBlockOperation alloc];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000F7B78;
  v9[3] = &unk_1001DE080;
  v10 = v5;
  v11 = a2;
  v9[4] = self;
  v7 = v5;
  v8 = [v6 initWithStartHandler:v9];
  [v8 setName:@"com.apple.itunescloudd.ICDHandlerCoordinator.setupHandlersWithAccountStateChange"];
  [(NSOperationQueue *)self->_operationQueue addOperation:v8];
}

- (NSString)description
{
  libraryManagementPolicy = self->_libraryManagementPolicy;
  if (libraryManagementPolicy > 2)
  {
    v5 = @"Unknown";
  }

  else
  {
    v5 = off_1001DE0F0[libraryManagementPolicy];
  }

  return [NSString stringWithFormat:@"<ICDHandlerCoordinator %p: [policy=%@]>", self, v5, v2, v3];
}

- (ICDHandlerCoordinator)initWithLibraryManagementPolicy:(int64_t)a3 backgroundTaskScheduler:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = ICDHandlerCoordinator;
  v7 = [(ICDHandlerCoordinator *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_libraryManagementPolicy = a3;
    objc_storeWeak(&v7->_taskScheduler, v6);
    v9 = objc_alloc_init(NSOperationQueue);
    operationQueue = v8->_operationQueue;
    v8->_operationQueue = v9;

    [(NSOperationQueue *)v8->_operationQueue setQualityOfService:25];
    [(NSOperationQueue *)v8->_operationQueue setMaxConcurrentOperationCount:1];
    [(NSOperationQueue *)v8->_operationQueue setName:@"com.apple.itunescloudd.ICDHandlerCoordinator.operationQueue"];
  }

  return v8;
}

+ (id)_managedHandlerClasses
{
  v2 = [NSMutableArray arrayWithCapacity:1];
  v3 = +[ICDeviceInfo currentDeviceInfo];
  v4 = [v3 isMac];

  if ((v4 & 1) == 0)
  {
    [v2 addObject:objc_opt_class()];
  }

  return v2;
}

@end