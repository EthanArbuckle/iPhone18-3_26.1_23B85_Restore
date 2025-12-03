@interface ICDHandlerCoordinator
+ (id)_managedHandlerClasses;
- (BOOL)isSetupCompleted;
- (ICDBackgroundTaskScheduling)taskScheduler;
- (ICDHandlerCoordinator)initWithLibraryManagementPolicy:(int64_t)policy backgroundTaskScheduler:(id)scheduler;
- (NSString)description;
- (id)_configurationsToActivateForChange:(id)change initialSetup:(BOOL)setup;
- (id)_configurationsToRemoveForChange:(id)change initialSetup:(BOOL)setup;
- (void)_processActiveConfigurationChange:(id)change initialSetup:(BOOL)setup;
- (void)changeLibraryManagementPolicy:(int64_t)policy withAccountsStateChange:(id)change;
- (void)enumerateHandlersForAccountState:(id)state usingBlock:(id)block;
- (void)setSetupCompleted:(BOOL)completed;
- (void)setupHandlersWithAccountStateChange:(id)change;
- (void)updateHandlersWithAccountStateChange:(id)change;
@end

@implementation ICDHandlerCoordinator

- (ICDBackgroundTaskScheduling)taskScheduler
{
  WeakRetained = objc_loadWeakRetained(&self->_taskScheduler);

  return WeakRetained;
}

- (void)_processActiveConfigurationChange:(id)change initialSetup:(BOOL)setup
{
  setupCopy = setup;
  changeCopy = change;
  if ([(ICDHandlerCoordinator *)self libraryManagementPolicy]&& [(ICDHandlerCoordinator *)self libraryManagementPolicy]!= 1)
  {
    v28 = +[NSAssertionHandler currentHandler];
    [v28 handleFailureInMethod:a2 object:self file:@"ICDHandlerCoordinator.m" lineNumber:305 description:@"The method _processActiveConfigurationChange:initialSetup: is only suitable for single user and serial multi user setup."];
  }

  initialState = [changeCopy initialState];
  activeConfiguration = [initialState activeConfiguration];

  if (setupCopy && ([changeCopy activeConfigurationChanged] & 1) == 0)
  {

    activeConfiguration = 0;
  }

  finalState = [changeCopy finalState];
  activeConfiguration2 = [finalState activeConfiguration];

  if (activeConfiguration | activeConfiguration2)
  {
    v29 = changeCopy;
    taskScheduler = [(ICDHandlerCoordinator *)self taskScheduler];
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
    v31 = activeConfiguration2;
    v32 = activeConfiguration;
    while (1)
    {
      for (i = 0; i != v34; i = i + 1)
      {
        if (*v40 != v33)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v39 + 1) + 8 * i);
        v15 = [v14 handlerForConfiguration:activeConfiguration];
        v16 = [v14 handlerForConfiguration:activeConfiguration2];
        [v15 setTaskScheduler:taskScheduler];
        [v16 setTaskScheduler:taskScheduler];
        v17 = os_log_create("com.apple.amp.itunescloudd", "Accounts");
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138544130;
          selfCopy5 = self;
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
            userIdentity = [activeConfiguration userIdentity];
            accountDSID = [userIdentity accountDSID];
            *buf = 138544130;
            selfCopy5 = self;
            v45 = 2048;
            v46 = v15;
            v47 = 2114;
            v48 = v14;
            v49 = 2114;
            v50 = accountDSID;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%{public}@ - Deactivating handler %p - class=%{public}@ dsid=%{public}@", buf, 0x2Au);

            activeConfiguration2 = v31;
            activeConfiguration = v32;
          }

          [v15 becomeInactiveWithDeauthentication:0 completion:0];
          v21 = os_log_create("com.apple.amp.itunescloudd", "Accounts");
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
LABEL_31:
            userIdentity2 = [activeConfiguration2 userIdentity];
            accountDSID2 = [userIdentity2 accountDSID];
            *buf = 138544130;
            selfCopy5 = self;
            v45 = 2048;
            v46 = v16;
            v47 = 2114;
            v48 = v14;
            v49 = 2114;
            v50 = accountDSID2;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%{public}@ - Activating handler %p - class=%{public}@ dsid=%{public}@", buf, 0x2Au);

            activeConfiguration2 = v31;
            activeConfiguration = v32;
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
            userIdentity3 = [activeConfiguration userIdentity];
            accountDSID3 = [userIdentity3 accountDSID];
            *buf = 138544130;
            selfCopy5 = self;
            v45 = 2048;
            v46 = v15;
            v47 = 2114;
            v48 = v14;
            v49 = 2114;
            v50 = accountDSID3;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%{public}@ - Deactivating handler %p - class=%{public}@ dsid=%{public}@", buf, 0x2Au);

            activeConfiguration2 = v31;
            activeConfiguration = v32;
          }

          v35[0] = _NSConcreteStackBlock;
          v35[1] = 3221225472;
          v35[2] = sub_1000F60D8;
          v35[3] = &unk_1001DE0D0;
          v35[4] = self;
          v35[5] = v14;
          v36 = activeConfiguration;
          v37 = v16;
          v38 = activeConfiguration2;
          [v15 becomeInactiveWithDeauthentication:1 completion:v35];
        }

LABEL_33:
      }

      v34 = [obj countByEnumeratingWithState:&v39 objects:v51 count:16];
      if (!v34)
      {
LABEL_35:

        changeCopy = v29;
        goto LABEL_36;
      }
    }
  }

  taskScheduler = os_log_create("com.apple.amp.itunescloudd", "Accounts");
  if (os_log_type_enabled(taskScheduler, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy5 = self;
    _os_log_impl(&_mh_execute_header, taskScheduler, OS_LOG_TYPE_DEFAULT, "%{public}@ - Change processing done [no configurations]", buf, 0xCu);
  }

LABEL_36:
}

- (id)_configurationsToRemoveForChange:(id)change initialSetup:(BOOL)setup
{
  setupCopy = setup;
  changeCopy = change;
  initialState = [changeCopy initialState];
  supportedConfigurations = [initialState supportedConfigurations];

  if (setupCopy && ([changeCopy supportedConfigurationsChanged] & 1) == 0)
  {
    v8 = +[NSSet set];

    supportedConfigurations = v8;
  }

  finalState = [changeCopy finalState];
  supportedConfigurations2 = [finalState supportedConfigurations];

  v11 = [supportedConfigurations mutableCopy];
  [v11 minusSet:supportedConfigurations2];
  v12 = [v11 copy];

  return v12;
}

- (id)_configurationsToActivateForChange:(id)change initialSetup:(BOOL)setup
{
  setupCopy = setup;
  changeCopy = change;
  initialState = [changeCopy initialState];
  supportedConfigurations = [initialState supportedConfigurations];

  if (setupCopy && ([changeCopy supportedConfigurationsChanged] & 1) == 0)
  {
    v8 = +[NSSet set];

    supportedConfigurations = v8;
  }

  finalState = [changeCopy finalState];
  supportedConfigurations2 = [finalState supportedConfigurations];

  v11 = [supportedConfigurations2 mutableCopy];
  [v11 minusSet:supportedConfigurations];
  v12 = [v11 copy];

  return v12;
}

- (BOOL)isSetupCompleted
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  setupCompleted = selfCopy->_setupCompleted;
  objc_sync_exit(selfCopy);

  return setupCompleted;
}

- (void)setSetupCompleted:(BOOL)completed
{
  obj = self;
  objc_sync_enter(obj);
  obj->_setupCompleted = completed;
  objc_sync_exit(obj);
}

- (void)changeLibraryManagementPolicy:(int64_t)policy withAccountsStateChange:(id)change
{
  changeCopy = change;
  if (![(ICDHandlerCoordinator *)self isSetupCompleted])
  {
    v11 = +[NSAssertionHandler currentHandler];
  }

  v8 = [ICAsyncBlockOperation alloc];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000F6FC4;
  v12[3] = &unk_1001DE080;
  v13 = changeCopy;
  policyCopy = policy;
  v12[4] = self;
  v9 = changeCopy;
  v10 = [v8 initWithStartHandler:v12];
  [v10 setName:@"com.apple.itunescloudd.ICDHandlerCoordinator.changeLibraryManagementPolicy"];
  [(NSOperationQueue *)self->_operationQueue addOperation:v10];
}

- (void)enumerateHandlersForAccountState:(id)state usingBlock:(id)block
{
  stateCopy = state;
  blockCopy = block;
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
        supportedConfigurations = [stateCopy supportedConfigurations];
        v11 = [supportedConfigurations countByEnumeratingWithState:&v19 objects:v27 count:16];
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
                objc_enumerationMutation(supportedConfigurations);
              }

              v15 = [v9 handlerForConfiguration:*(*(&v19 + 1) + 8 * v14)];
              blockCopy[2](blockCopy, v15);

              v14 = v14 + 1;
            }

            while (v12 != v14);
            v12 = [supportedConfigurations countByEnumeratingWithState:&v19 objects:v27 count:16];
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

- (void)updateHandlersWithAccountStateChange:(id)change
{
  changeCopy = change;
  v6 = [ICAsyncBlockOperation alloc];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000F7448;
  v9[3] = &unk_1001DE080;
  v10 = changeCopy;
  v11 = a2;
  v9[4] = self;
  v7 = changeCopy;
  v8 = [v6 initWithStartHandler:v9];
  [v8 setName:@"com.apple.itunescloudd.ICDHandlerCoordinator.updateHandlersWithAccountStateChange"];
  [(NSOperationQueue *)self->_operationQueue addOperation:v8];
}

- (void)setupHandlersWithAccountStateChange:(id)change
{
  changeCopy = change;
  v6 = [ICAsyncBlockOperation alloc];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000F7B78;
  v9[3] = &unk_1001DE080;
  v10 = changeCopy;
  v11 = a2;
  v9[4] = self;
  v7 = changeCopy;
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

- (ICDHandlerCoordinator)initWithLibraryManagementPolicy:(int64_t)policy backgroundTaskScheduler:(id)scheduler
{
  schedulerCopy = scheduler;
  v12.receiver = self;
  v12.super_class = ICDHandlerCoordinator;
  v7 = [(ICDHandlerCoordinator *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_libraryManagementPolicy = policy;
    objc_storeWeak(&v7->_taskScheduler, schedulerCopy);
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
  isMac = [v3 isMac];

  if ((isMac & 1) == 0)
  {
    [v2 addObject:objc_opt_class()];
  }

  return v2;
}

@end