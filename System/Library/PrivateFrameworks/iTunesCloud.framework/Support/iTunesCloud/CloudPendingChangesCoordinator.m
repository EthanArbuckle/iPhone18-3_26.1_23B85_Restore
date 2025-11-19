@interface CloudPendingChangesCoordinator
- (BOOL)_savePendingChanges:(id)a3;
- (CloudPendingChangesCoordinator)initWithConfiguration:(id)a3 prefix:(id)a4 loggable:(Class)a5;
- (id)_pendingChanges;
- (void)addPendingChange:(id)a3;
- (void)processPendingChangesUsingLibrary:(id)a3;
- (void)removeAllPendingChangesWithCompletion:(id)a3;
@end

@implementation CloudPendingChangesCoordinator

- (BOOL)_savePendingChanges:(id)a3
{
  v4 = a3;
  v5 = os_log_create("com.apple.amp.itunescloudd", "Default");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 count];
    pendingChangesPath = self->_pendingChangesPath;
    *buf = 134218498;
    v16 = self;
    v17 = 2048;
    v18 = v6;
    v19 = 2112;
    v20 = pendingChangesPath;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "CloudPendingChangesCoordinator %p - Saving pending changes [%lu] - path=%@", buf, 0x20u);
  }

  if ([v4 count])
  {
    v14 = 0;
    v8 = [NSKeyedArchiver archivedDataWithRootObject:v4 requiringSecureCoding:1 error:&v14];
    v9 = v14;
    if (v8)
    {
      v10 = [v8 writeToFile:self->_pendingChangesPath atomically:1];
    }

    else
    {
      loggable = self->_loggable;
      v12 = [objc_opt_class() logCategory];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v16 = v9;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Failed to encode pending changes. err=%{public}@", buf, 0xCu);
      }

      v10 = 0;
    }
  }

  else
  {
    v9 = +[NSFileManager defaultManager];
    v10 = [(CloudPendingChangesCoordinator *)v9 removeItemAtPath:self->_pendingChangesPath error:0];
  }

  return v10;
}

- (id)_pendingChanges
{
  v3 = os_log_create("com.apple.amp.itunescloudd", "Default");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    pendingChangesPath = self->_pendingChangesPath;
    *buf = 134218242;
    v17 = self;
    v18 = 2112;
    v19 = pendingChangesPath;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "CloudPendingChangesCoordinator %p - Retrieving pending changes - path=%@", buf, 0x16u);
  }

  v5 = +[NSFileManager defaultManager];
  v6 = [v5 fileExistsAtPath:self->_pendingChangesPath];

  if (v6)
  {
    v7 = [NSData dataWithContentsOfFile:self->_pendingChangesPath];
    if (v7)
    {
      v8 = objc_opt_class();
      v9 = [NSSet setWithObjects:v8, objc_opt_class(), 0];
      v15 = 0;
      v10 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v9 fromData:v7 error:&v15];
      v11 = v15;

      if (!v10)
      {
        loggable = self->_loggable;
        v13 = [objc_opt_class() logCategory];
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v17 = v11;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Failed to decode pending changes. err=%{public}@", buf, 0xCu);
        }
      }
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)removeAllPendingChangesWithCompletion:(id)a3
{
  v4 = a3;
  v5 = os_log_create("com.apple.amp.itunescloudd", "Default");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    pendingChangesPath = self->_pendingChangesPath;
    *buf = 134218242;
    v17 = self;
    v18 = 2112;
    v19 = pendingChangesPath;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "CloudPendingChangesCoordinator %p - removeAllPendingChangesWithCompletion - path=%@", buf, 0x16u);
  }

  v7 = [MSVXPCTransaction alloc];
  v8 = [NSString stringWithFormat:@"%@-RemoveAllPendingChanges", self->_name];
  v9 = [v7 initWithName:v8];

  [v9 beginTransaction];
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000E418C;
  block[3] = &unk_1001DF5F0;
  v14 = v9;
  v15 = v4;
  block[4] = self;
  v11 = v9;
  v12 = v4;
  dispatch_async(queue, block);
}

- (void)processPendingChangesUsingLibrary:(id)a3
{
  v4 = a3;
  v5 = os_log_create("com.apple.amp.itunescloudd", "Default");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    pendingChangesPath = self->_pendingChangesPath;
    v7 = [v4 libraryIdentifier];
    *buf = 138543874;
    v18 = self;
    v19 = 2112;
    v20 = pendingChangesPath;
    v21 = 2112;
    v22 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ - processPendingChangesUsingLibrary - path=%@ - libraryIdentifier=%@", buf, 0x20u);
  }

  v8 = [MSVXPCTransaction alloc];
  v9 = [NSString stringWithFormat:@"%@-ProcessPendingChanges", self->_name];
  v10 = [v8 initWithName:v9];

  [v10 beginTransaction];
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000E4428;
  block[3] = &unk_1001DE918;
  block[4] = self;
  v15 = v4;
  v16 = v10;
  v12 = v10;
  v13 = v4;
  dispatch_sync(queue, block);
}

- (void)addPendingChange:(id)a3
{
  v4 = a3;
  v5 = os_log_create("com.apple.amp.itunescloudd", "Default");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    pendingChangesPath = self->_pendingChangesPath;
    *buf = 134218242;
    v15 = self;
    v16 = 2112;
    v17 = pendingChangesPath;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "CloudPendingChangesCoordinator %p - addPendingChange: - path=%@", buf, 0x16u);
  }

  v7 = [MSVXPCTransaction alloc];
  v8 = [NSString stringWithFormat:@"%@-AddPendingChange", self->_name];
  v9 = [v7 initWithName:v8];

  [v9 beginTransaction];
  if ([v4 isPersistent])
  {
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000E4AF8;
    block[3] = &unk_1001DE918;
    block[4] = self;
    v12 = v4;
    v13 = v9;
    dispatch_async(queue, block);
  }

  else
  {
    [v9 endTransaction];
  }
}

- (CloudPendingChangesCoordinator)initWithConfiguration:(id)a3 prefix:(id)a4 loggable:(Class)a5
{
  v8 = a3;
  v9 = a4;
  v32.receiver = self;
  v32.super_class = CloudPendingChangesCoordinator;
  v10 = [(CloudPendingChangesCoordinator *)&v32 init];
  if (v10)
  {
    v11 = [v8 copy];
    configuration = v10->_configuration;
    v10->_configuration = v11;

    v13 = [NSString stringWithFormat:@"%@-CloudPendingChanges", v9];
    name = v10->_name;
    v10->_name = v13;

    v15 = [v8 userIdentity];
    v16 = [v15 accountDSID];
    v17 = v16;
    v18 = @"noDSID";
    if (v16)
    {
      v18 = v16;
    }

    v19 = v18;

    v20 = [NSString stringWithFormat:@"com.apple.itunescloudd.pendingchanges.%@.%@", v9, v19];

    v21 = dispatch_queue_create([v20 UTF8String], 0);
    queue = v10->_queue;
    v10->_queue = v21;

    v23 = [v8 userIdentity];
    v24 = [ML3MusicLibrary musicLibraryForUserAccount:v23];

    v25 = [v24 pathForResourceFileOrFolder:25];
    v26 = [NSString stringWithFormat:@"%@.plist", v10->_name];
    v27 = [v25 stringByAppendingPathComponent:v26];
    pendingChangesPath = v10->_pendingChangesPath;
    v10->_pendingChangesPath = v27;

    v10->_loggable = a5;
    v29 = os_log_create("com.apple.amp.itunescloudd", "Default");
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      v30 = v10->_pendingChangesPath;
      *buf = 134218242;
      v34 = v10;
      v35 = 2112;
      v36 = v30;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEBUG, "CloudPendingChangesCoordinator %p - Creating new coordinator - path=%@", buf, 0x16u);
    }
  }

  return v10;
}

@end