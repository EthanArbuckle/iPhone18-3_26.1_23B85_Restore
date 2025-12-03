@interface BKDisplayRenderOverlayPersistenceCoordinator
+ (BKDisplayRenderOverlayPersistenceCoordinator)sharedInstance;
- (BKDisplayRenderOverlayPersistenceCoordinator)init;
- (BOOL)destroyOverlay:(id)overlay;
- (BOOL)saveOverlay:(id)overlay;
- (id)_fileNameForOverlay:(id)overlay;
- (id)_filePathForOverlay:(id)overlay;
- (id)rebuildPersistentOverlays;
@end

@implementation BKDisplayRenderOverlayPersistenceCoordinator

- (id)_fileNameForOverlay:(id)overlay
{
  overlayCopy = overlay;
  descriptor = [overlayCopy descriptor];
  displayUUID = [descriptor displayUUID];
  v6 = displayUUID;
  if (displayUUID)
  {
    v7 = displayUUID;
  }

  else
  {
    v7 = @"main";
  }

  name = [overlayCopy name];

  v9 = [NSString stringWithFormat:@"%@|%@", v7, name];

  return v9;
}

- (id)_filePathForOverlay:(id)overlay
{
  v4 = [(BKDisplayRenderOverlayPersistenceCoordinator *)self _fileNameForOverlay:overlay];
  rootPersistencePath = self->_rootPersistencePath;
  v6 = [v4 stringByAppendingPathExtension:@"libitmap"];
  v7 = [(NSString *)rootPersistencePath stringByAppendingPathComponent:v6];

  return v7;
}

- (BOOL)destroyOverlay:(id)overlay
{
  v3 = [(BKDisplayRenderOverlayPersistenceCoordinator *)self _filePathForOverlay:overlay];
  if (v3)
  {
    v4 = +[NSFileManager defaultManager];
    v5 = [v4 removeItemAtPath:v3 error:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)saveOverlay:(id)overlay
{
  overlayCopy = overlay;
  if (overlayCopy)
  {
    v5 = BKLogDisplay();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      name = [overlayCopy name];
      *buf = 138543362;
      v41 = name;
      _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[BKDisplayRenderOverlayPersistenceCoordinator] Persisting overlay: %{public}@", buf, 0xCu);
    }

    _persistenceData = [overlayCopy _persistenceData];
    bs_secureEncoded = [_persistenceData bs_secureEncoded];

    v8 = [(BKDisplayRenderOverlayPersistenceCoordinator *)self _fileNameForOverlay:overlayCopy];
    v36 = [(BKDisplayRenderOverlayPersistenceCoordinator *)self _filePathForOverlay:overlayCopy];
    v9 = +[NSFileManager defaultManager];
    v48 = NSFilePosixPermissions;
    v49 = &off_100107BB0;
    v10 = 1;
    v11 = [NSDictionary dictionaryWithObjects:&v49 forKeys:&v48 count:1];
    v35 = v11;
    if ([v9 fileExistsAtPath:self->_rootPersistencePath isDirectory:0])
    {
      v12 = 0;
    }

    else
    {
      rootPersistencePath = self->_rootPersistencePath;
      v39 = 0;
      v10 = [v9 createDirectoryAtPath:rootPersistencePath withIntermediateDirectories:1 attributes:v11 error:&v39];
      v15 = v39;
      if ((v10 & 1) == 0)
      {
        v16 = BKLogCommon();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = self->_rootPersistencePath;
          *buf = 138543618;
          v41 = v17;
          v42 = 2114;
          v43 = v15;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[BKDisplayRenderOverlayPersistenceCoordinator] Unable to create path: %{public}@: %{public}@", buf, 0x16u);
        }
      }

      v18 = [NSURL fileURLWithPath:self->_rootPersistencePath isDirectory:1];
      v38 = 0;
      v19 = [v18 setResourceValue:&__kCFBooleanTrue forKey:NSURLIsExcludedFromBackupKey error:&v38];
      v12 = v38;
      if ((v19 & 1) == 0)
      {
        v20 = BKLogCommon();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v21 = self->_rootPersistencePath;
          *buf = 138543618;
          v41 = v21;
          v42 = 2114;
          v43 = v12;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "[BKDisplayRenderOverlayPersistenceCoordinator] Unable to exclude path from backups: %{public}@: %{public}@", buf, 0x16u);
        }
      }
    }

    v46 = NSFilePosixPermissions;
    v47 = &off_100107BC8;
    v22 = [NSDictionary dictionaryWithObjects:&v47 forKeys:&v46 count:1];
    v23 = NSTemporaryDirectory();
    v24 = v23;
    if (!v23)
    {
      v23 = @"/tmp";
    }

    v25 = [(__CFString *)v23 stringByAppendingPathComponent:v8];

    if (!v10)
    {
      v13 = 0;
      v26 = v36;
LABEL_34:

      goto LABEL_35;
    }

    v26 = v36;
    if ([v9 createFileAtPath:v25 contents:bs_secureEncoded attributes:v22])
    {
      v37 = v12;
      v27 = [v9 moveItemAtPath:v25 toPath:v36 error:&v37];
      v34 = v37;

      if (v27)
      {
        v28 = BKLogDisplay();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138543362;
          v41 = v36;
          _os_log_debug_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEBUG, "[BKDisplayRenderOverlayPersistenceCoordinator] Wrote overlay to file: %{public}@", buf, 0xCu);
        }

        v13 = 1;
        goto LABEL_32;
      }

      v28 = BKLogCommon();
      if (!os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 0;
LABEL_32:
        v12 = v34;
        goto LABEL_33;
      }

      *buf = 138543874;
      v41 = v25;
      v42 = 2114;
      v43 = v36;
      v44 = 2114;
      v12 = v34;
      v45 = v34;
      v29 = "[BKDisplayRenderOverlayPersistenceCoordinator] Unable to move temporary file (%{public}@) to real location in the shared container (%{public}@): %{public}@";
      v30 = v28;
      v31 = 32;
    }

    else
    {
      v28 = BKLogCommon();
      if (!os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
LABEL_30:
        v13 = 0;
LABEL_33:

        goto LABEL_34;
      }

      *buf = 138543362;
      v41 = v25;
      v29 = "[BKDisplayRenderOverlayPersistenceCoordinator] Unable to save temporary snapshot to disk at %{public}@";
      v30 = v28;
      v31 = 12;
    }

    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, v29, buf, v31);
    goto LABEL_30;
  }

  v13 = 0;
LABEL_35:

  return v13;
}

- (id)rebuildPersistentOverlays
{
  v23 = +[NSMutableArray array];
  v3 = +[NSFileManager defaultManager];
  selfCopy = self;
  v4 = [v3 enumeratorAtPath:self->_rootPersistencePath];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = v4;
  v5 = [obj countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v28;
    *&v6 = 138543618;
    v22 = v6;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v28 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v27 + 1) + 8 * i);
        if ([v10 hasSuffix:{@"libitmap", v22}])
        {
          v11 = [(NSString *)selfCopy->_rootPersistencePath stringByAppendingPathComponent:v10];
          v12 = [NSData alloc];
          v26 = 0;
          v13 = [v12 initWithContentsOfFile:v11 options:8 error:&v26];
          v14 = v26;
          v15 = +[_BKDisplayRenderOverlayPersistenceData classesRequiredToDecode];
          v16 = [_BKDisplayRenderOverlayPersistenceData bs_secureDecodedFromData:v13 withAdditionalClasses:v15];

          overlayType = [v16 overlayType];
          if (overlayType <= 4)
          {
            v18 = *(&off_1000FB8E0)[overlayType];
            overlayType = objc_opt_class();
          }

          v19 = [[overlayType alloc] _initWithPersistenceData:v16];
          if (v19)
          {
            v20 = BKLogDisplay();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
            {
              *buf = v22;
              v32 = v19;
              v33 = 2114;
              v34 = v11;
              _os_log_debug_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "[BKDisplayRenderOverlayPersistenceCoordinator] Loaded overlay from persistence: %{public}@ from location: %{public}@", buf, 0x16u);
            }

            [v23 addObject:v19];
          }
        }
      }

      v7 = [obj countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v7);
  }

  return v23;
}

- (BKDisplayRenderOverlayPersistenceCoordinator)init
{
  v8.receiver = self;
  v8.super_class = BKDisplayRenderOverlayPersistenceCoordinator;
  v2 = [(BKDisplayRenderOverlayPersistenceCoordinator *)&v8 init];
  if (v2)
  {
    v3 = BSSystemSharedDirectoryForCurrentProcess();
    v4 = [v3 stringByAppendingPathComponent:@"RenderOverlay"];
    v5 = [v4 copy];
    rootPersistencePath = v2->_rootPersistencePath;
    v2->_rootPersistencePath = v5;
  }

  return v2;
}

+ (BKDisplayRenderOverlayPersistenceCoordinator)sharedInstance
{
  if (qword_100126118 != -1)
  {
    dispatch_once(&qword_100126118, &stru_1000FD050);
  }

  v3 = qword_100126110;

  return v3;
}

@end