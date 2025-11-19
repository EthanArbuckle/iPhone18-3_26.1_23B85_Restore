@interface ICContentTastePendingChangesCoordinator
- (BOOL)_savePendingChanges:(id)a3;
- (ICContentTastePendingChangesCoordinator)initWithConfiguration:(id)a3;
- (NSArray)pendingChanges;
- (id)_pendingChanges;
- (id)description;
- (void)_removePendingChangesForContentTasteUpdateOperation:(id)a3;
- (void)contentTasteUpdateOperation:(id)a3 finishedByInvalidatingCache:(BOOL)a4 error:(id)a5;
- (void)removePendingChanges;
@end

@implementation ICContentTastePendingChangesCoordinator

- (BOOL)_savePendingChanges:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v5 = os_log_create("com.apple.amp.itunescloudd", "ContentTaste_Oversize");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 count];
    pendingChangesPath = self->_pendingChangesPath;
    *buf = 138544130;
    v15 = self;
    v16 = 2048;
    v17 = v6;
    v18 = 2114;
    v19 = v4;
    v20 = 2112;
    v21 = pendingChangesPath;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ Saving pending changes [%lu], [%{public}@] - path=%@", buf, 0x2Au);
  }

  if ([v4 count])
  {
    v13 = 0;
    v8 = [NSKeyedArchiver archivedDataWithRootObject:v4 requiringSecureCoding:1 error:&v13];
    v9 = v13;
    if (v8)
    {
      v10 = [v8 writeToFile:self->_pendingChangesPath atomically:1];
    }

    else
    {
      v11 = os_log_create("com.apple.amp.itunescloudd", "ContentTaste");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v15 = self;
        v16 = 2114;
        v17 = v9;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%{public}@ Failed to encode pending changes. err=%{public}@", buf, 0x16u);
      }

      v10 = 0;
    }
  }

  else
  {
    v9 = +[NSFileManager defaultManager];
    v10 = [v9 removeItemAtPath:self->_pendingChangesPath error:0];
  }

  return v10;
}

- (id)_pendingChanges
{
  dispatch_assert_queue_V2(self->_queue);
  v3 = os_log_create("com.apple.amp.itunescloudd", "ContentTaste");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    pendingChangesPath = self->_pendingChangesPath;
    *buf = 138543618;
    v24 = self;
    v25 = 2112;
    v26 = pendingChangesPath;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ Retrieving pending changes - path=%@", buf, 0x16u);
  }

  v5 = +[NSArray array];
  v6 = +[NSFileManager defaultManager];
  v7 = [v6 fileExistsAtPath:self->_pendingChangesPath];

  if (v7)
  {
    v8 = [NSData dataWithContentsOfFile:self->_pendingChangesPath];
    if (v8)
    {
      v9 = objc_opt_class();
      v10 = objc_opt_class();
      v11 = objc_opt_class();
      v12 = objc_opt_class();
      v13 = [NSSet setWithObjects:v9, v10, v11, v12, objc_opt_class(), 0];
      v22 = 0;
      v14 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v13 fromData:v8 error:&v22];
      v15 = v22;

      if (!v14)
      {
        v16 = os_log_create("com.apple.amp.itunescloudd", "ContentTaste");
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          v24 = self;
          v25 = 2114;
          v26 = v15;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%{public}@ Failed to decode pending changes. err=%{public}@", buf, 0x16u);
        }
      }
    }

    else
    {
      v14 = v5;
    }

    v5 = v14;
    if (!v14)
    {
      v17 = os_log_create("com.apple.amp.itunescloudd", "ContentTaste");
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = self->_pendingChangesPath;
        *buf = 138543618;
        v24 = self;
        v25 = 2114;
        v26 = v18;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%{public}@ File exists at %{public}@ but we are unable to decode the changes. Clearing all pending changes", buf, 0x16u);
      }

      [(ICContentTastePendingChangesCoordinator *)self _savePendingChanges:0];
      v5 = 0;
    }
  }

  if (v5)
  {
    v19 = v5;
  }

  else
  {
    v19 = &__NSArray0__struct;
  }

  v20 = v19;

  return v19;
}

- (void)_removePendingChangesForContentTasteUpdateOperation:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v5 = [v4 operationIdentifier];
  v6 = os_log_create("com.apple.amp.itunescloudd", "ContentTaste");
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      *buf = 138543618;
      v25 = self;
      v26 = 2114;
      v27 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ Removing pending changes for operation with operationIdentifier=%{public}@", buf, 0x16u);
    }

    v8 = [(ICContentTastePendingChangesCoordinator *)self _pendingChanges];
    v9 = [v8 mutableCopy];

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v6 = v9;
    v10 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    v11 = v6;
    if (v10)
    {
      v12 = v10;
      v18 = v4;
      v13 = *v20;
LABEL_6:
      v14 = 0;
      while (1)
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(v6);
        }

        v15 = *(*(&v19 + 1) + 8 * v14);
        v16 = [v15 objectForKey:@"ContentTastePendingChangesCoordinatorOperationIdentifierKey"];
        v17 = [v16 isEqualToString:v5];

        if (v17)
        {
          break;
        }

        if (v12 == ++v14)
        {
          v12 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
          if (v12)
          {
            goto LABEL_6;
          }

          v11 = v6;
          goto LABEL_15;
        }
      }

      v11 = v15;

      if (v11)
      {
        [v6 removeObject:v11];
        [(ICContentTastePendingChangesCoordinator *)self _savePendingChanges:v6];
LABEL_15:
        v4 = v18;
        goto LABEL_16;
      }

      v4 = v18;
    }

    else
    {
LABEL_16:
    }
  }

  else if (v7)
  {
    *buf = 138543618;
    v25 = self;
    v26 = 2048;
    v27 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ Not removing pending changes for operation %p as is no retry identifier", buf, 0x16u);
  }
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(ICConnectionConfiguration *)self->_configuration userIdentity];
  v6 = [v5 accountDSID];
  v7 = [NSString stringWithFormat:@"%@ %p [dsid=%@]", v4, self, v6];

  return v7;
}

- (void)removePendingChanges
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100079914;
  block[3] = &unk_1001DF578;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (NSArray)pendingChanges
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_100079A10;
  v10 = sub_100079A20;
  v11 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100079A28;
  v5[3] = &unk_1001DEF50;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)contentTasteUpdateOperation:(id)a3 finishedByInvalidatingCache:(BOOL)a4 error:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = os_log_create("com.apple.amp.itunescloudd", "ContentTaste");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    pendingChangesPath = self->_pendingChangesPath;
    *buf = 138543618;
    v21 = self;
    v22 = 2112;
    v23 = pendingChangesPath;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ addOrRemovePendingChange: - path=%@", buf, 0x16u);
  }

  queue = self->_queue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100079BE4;
  v15[3] = &unk_1001DC470;
  v16 = v9;
  v17 = self;
  v18 = v8;
  v19 = a4;
  v13 = v8;
  v14 = v9;
  dispatch_sync(queue, v15);
}

- (ICContentTastePendingChangesCoordinator)initWithConfiguration:(id)a3
{
  v4 = a3;
  v28.receiver = self;
  v28.super_class = ICContentTastePendingChangesCoordinator;
  v5 = [(ICContentTastePendingChangesCoordinator *)&v28 init];
  if (v5)
  {
    v6 = [v4 copy];
    configuration = v5->_configuration;
    v5->_configuration = v6;

    v8 = [v4 userIdentity];
    v9 = [v8 accountDSID];
    v10 = v9;
    v11 = @"noDSID";
    if (v9)
    {
      v11 = v9;
    }

    v12 = v11;

    v13 = [NSString stringWithFormat:@"%lu-ContentTastePendingChanges", [(__CFString *)v12 hash]];
    name = v5->_name;
    v5->_name = v13;

    v15 = [(__CFString *)v12 hash];
    v16 = [NSString stringWithFormat:@"com.apple.itunescloudd.contenttastependingchanges.%ld", v15];
    v17 = dispatch_queue_create([v16 UTF8String], 0);
    queue = v5->_queue;
    v5->_queue = v17;

    v19 = [v4 userIdentity];
    v20 = [ML3MusicLibrary musicLibraryForUserAccount:v19];

    v21 = [v20 pathForResourceFileOrFolder:25];
    v22 = [NSString stringWithFormat:@"%@.plist", v5->_name];
    v23 = [v21 stringByAppendingPathComponent:v22];
    pendingChangesPath = v5->_pendingChangesPath;
    v5->_pendingChangesPath = v23;

    v25 = os_log_create("com.apple.amp.itunescloudd", "ContentTaste");
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = v5->_pendingChangesPath;
      *buf = 138543618;
      v30 = v5;
      v31 = 2112;
      v32 = v26;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%{public}@ Creating new pending changes coordinator - path=%@", buf, 0x16u);
    }
  }

  return v5;
}

@end