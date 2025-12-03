@interface CloudArtworkOperationQueue
- (BOOL)_hasValidUserIdentity:(id)identity forSourceType:(int64_t)type;
- (CloudArtworkOperationQueue)initWithSourceType:(int64_t)type configuration:(id)configuration;
- (void)addOperation:(id)operation;
- (void)addOperations:(id)operations;
@end

@implementation CloudArtworkOperationQueue

- (BOOL)_hasValidUserIdentity:(id)identity forSourceType:(int64_t)type
{
  configuration = [(CloudArtworkOperationQueue *)self configuration];
  userIdentityStore = [configuration userIdentityStore];
  configuration2 = [(CloudArtworkOperationQueue *)self configuration];
  userIdentity = [configuration2 userIdentity];
  v16 = 0;
  v10 = [userIdentityStore getPropertiesForUserIdentity:userIdentity error:&v16];
  v11 = v16;

  if (v11)
  {
    v12 = os_log_create("com.apple.amp.itunescloudd", "Artwork");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      msv_description = [v11 msv_description];
      *buf = 138543618;
      selfCopy = self;
      v19 = 2114;
      v20 = msv_description;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%{public}@ Failed to load identity properties error=%{public}@", buf, 0x16u);
    }
  }

  if (type == 600 || type == 200)
  {
    isActiveLocker = [v10 isActiveLocker];
  }

  else
  {
    isActiveLocker = v10 != 0;
  }

  return isActiveLocker;
}

- (void)addOperations:(id)operations
{
  operationsCopy = operations;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x3032000000;
  v23[3] = sub_10005FA90;
  v23[4] = sub_10005FAA0;
  v24 = +[NSMutableDictionary dictionary];
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_10005FA90;
  v21 = sub_10005FAA0;
  v22 = +[NSMutableDictionary dictionary];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10005FAA8;
  v16[3] = &unk_1001DB6E0;
  v16[4] = self;
  v16[5] = &v17;
  v16[6] = v23;
  v16[7] = &v25;
  v16[8] = a2;
  [operationsCopy enumerateObjectsUsingBlock:v16];
  if (v26[3])
  {
    configuration = [(CloudArtworkOperationQueue *)self configuration];
    userIdentity = [configuration userIdentity];
    v8 = [(CloudArtworkOperationQueue *)self _hasValidUserIdentity:userIdentity forSourceType:[(CloudArtworkOperationQueue *)self sourceType]];

    if (v8)
    {
      v9 = v18[5];
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_10005FC48;
      v15[3] = &unk_1001DB730;
      v15[4] = self;
      v15[5] = v23;
      v15[6] = a2;
      [v9 enumerateKeysAndObjectsUsingBlock:v15];
    }

    else
    {
      v10 = os_log_create("com.apple.amp.itunescloudd", "Artwork");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        sourceType = self->_sourceType;
        v12 = v26[3];
        *buf = 134218240;
        v30 = sourceType;
        v31 = 2048;
        v32 = v12;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "No store account for source_type %ld, canceling %lu requests", buf, 0x16u);
      }

      v13 = v18[5];
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_1000601E0;
      v14[3] = &unk_1001DB780;
      v14[4] = self;
      v14[5] = v23;
      [v13 enumerateKeysAndObjectsUsingBlock:v14];
    }
  }

  _Block_object_dispose(&v17, 8);

  _Block_object_dispose(v23, 8);
  _Block_object_dispose(&v25, 8);
}

- (void)addOperation:(id)operation
{
  operationCopy = operation;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v6 = +[NSAssertionHandler currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"CloudArtworkOperationQueue.m" lineNumber:38 description:@"Only operations of type CloudArtworkImportOperation are supported"];
  }

  v7.receiver = self;
  v7.super_class = CloudArtworkOperationQueue;
  [(CloudArtworkOperationQueue *)&v7 addOperation:operationCopy];
}

- (CloudArtworkOperationQueue)initWithSourceType:(int64_t)type configuration:(id)configuration
{
  configurationCopy = configuration;
  v11.receiver = self;
  v11.super_class = CloudArtworkOperationQueue;
  v8 = [(CloudArtworkOperationQueue *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_sourceType = type;
    objc_storeStrong(&v8->_configuration, configuration);
  }

  return v9;
}

@end