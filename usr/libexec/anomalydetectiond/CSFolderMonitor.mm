@interface CSFolderMonitor
- (BOOL)scan:(id *)scan;
- (CSFolderMonitor)initWithFolder:(id)folder fileExtension:(id)extension queue:(id)queue postfix:(id)postfix andAction:(id)action;
- (void)registerForFolderMonitorActivityWithCriteria:(id)criteria;
- (void)setupRecurringScanningWithConfiguration:(id)configuration runNow:(BOOL)now;
- (void)stopRecurringScanning;
@end

@implementation CSFolderMonitor

- (CSFolderMonitor)initWithFolder:(id)folder fileExtension:(id)extension queue:(id)queue postfix:(id)postfix andAction:(id)action
{
  folderCopy = folder;
  extensionCopy = extension;
  queueCopy = queue;
  postfixCopy = postfix;
  actionCopy = action;
  v26.receiver = self;
  v26.super_class = CSFolderMonitor;
  v17 = [(CSFolderMonitor *)&v26 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_actionQueue, queue);
    v19 = [[NSURL alloc] initFileURLWithPath:folderCopy isDirectory:1];
    folderURL = v18->_folderURL;
    v18->_folderURL = v19;

    objc_storeStrong(&v18->_extension, extension);
    v21 = objc_retainBlock(actionCopy);
    action = v18->_action;
    v18->_action = v21;

    v23 = dispatch_group_create();
    scanGroup = v18->_scanGroup;
    v18->_scanGroup = v23;

    objc_storeStrong(&v18->_postfix, postfix);
  }

  return v18;
}

- (BOOL)scan:(id *)scan
{
  scanGroup = [(CSFolderMonitor *)self scanGroup];
  dispatch_group_enter(scanGroup);

  v29 = +[NSFileManager defaultManager];
  v47 = 0;
  v48 = &v47;
  v49 = 0x2020000000;
  v50 = 0;
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = sub_10001C144;
  v45 = sub_10001C154;
  v46 = 0;
  folderURL = [(CSFolderMonitor *)self folderURL];
  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_10001C15C;
  v40[3] = &unk_100413360;
  v40[4] = &v41;
  v40[5] = &v47;
  v6 = [v29 enumeratorAtURL:folderURL includingPropertiesForKeys:0 options:5 errorHandler:v40];

  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_10001C1B0;
  v37[3] = &unk_100413388;
  v27 = v29;
  v38 = v27;
  selfCopy = self;
  v7 = objc_retainBlock(v37);
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = v6;
  v8 = [obj countByEnumeratingWithState:&v33 objects:v51 count:16];
  if (v8)
  {
    v9 = *v34;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v34 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v33 + 1) + 8 * i);
        postfix = [(CSFolderMonitor *)self postfix];
        if ([postfix isEqualToString:@"Igneous"])
        {
          pathExtension = [v11 pathExtension];
          extension = [(CSFolderMonitor *)self extension];
          v15 = [pathExtension isEqualToString:extension];

          if (v15)
          {
            (v7[2])(v7, v11);
            continue;
          }
        }

        else
        {
        }

        extension2 = [(CSFolderMonitor *)self extension];
        if ([extension2 isEqualToString:&stru_100436548])
        {
        }

        else
        {
          pathExtension2 = [v11 pathExtension];
          extension3 = [(CSFolderMonitor *)self extension];
          v19 = [pathExtension2 isEqualToString:extension3];

          if (!v19)
          {
            continue;
          }
        }

        scanGroup2 = [(CSFolderMonitor *)self scanGroup];
        actionQueue = [(CSFolderMonitor *)self actionQueue];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10001C5A4;
        block[3] = &unk_1004133B0;
        v22 = v7;
        block[4] = v11;
        v32 = v22;
        dispatch_group_async(scanGroup2, actionQueue, block);
      }

      v8 = [obj countByEnumeratingWithState:&v33 objects:v51 count:16];
    }

    while (v8);
  }

  scanGroup3 = [(CSFolderMonitor *)self scanGroup];
  dispatch_group_leave(scanGroup3);

  scanGroup4 = [(CSFolderMonitor *)self scanGroup];
  dispatch_group_wait(scanGroup4, 0xFFFFFFFFFFFFFFFFLL);

  v25 = *(v48 + 24);
  if (scan && *(v48 + 24))
  {
    *scan = v42[5];
  }

  _Block_object_dispose(&v41, 8);
  _Block_object_dispose(&v47, 8);

  return v25 ^ 1;
}

- (void)setupRecurringScanningWithConfiguration:(id)configuration runNow:(BOOL)now
{
  configurationCopy = configuration;
  v7 = xpc_dictionary_create(0, 0, 0);
  if (!now)
  {
    xpc_dictionary_set_int64(v7, XPC_ACTIVITY_DELAY, [configurationCopy periodInSeconds]);
  }

  xpc_dictionary_set_BOOL(v7, XPC_ACTIVITY_ALLOW_BATTERY, [configurationCopy allowBattery]);
  xpc_dictionary_set_int64(v7, XPC_ACTIVITY_INTERVAL, [configurationCopy periodInSeconds]);
  xpc_dictionary_set_BOOL(v7, XPC_ACTIVITY_REPEATING, 1);
  xpc_dictionary_set_string(v7, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_UTILITY);
  fileProtectionType = [configurationCopy fileProtectionType];

  if (fileProtectionType == NSFileProtectionCompleteUnlessOpen)
  {
    v13 = &XPC_ACTIVITY_REQUIRES_CLASS_B;
LABEL_14:
    xpc_dictionary_set_BOOL(v7, *v13, 1);
    goto LABEL_15;
  }

  fileProtectionType2 = [configurationCopy fileProtectionType];

  if (fileProtectionType2 == NSFileProtectionCompleteUntilFirstUserAuthentication)
  {
    v13 = &XPC_ACTIVITY_REQUIRES_CLASS_C;
    goto LABEL_14;
  }

  fileProtectionType3 = [configurationCopy fileProtectionType];

  if (fileProtectionType3 == NSFileProtectionComplete)
  {
    v13 = &XPC_ACTIVITY_REQUIRES_CLASS_A;
    goto LABEL_14;
  }

  if (qword_100456938 != -1)
  {
    sub_100358180();
  }

  v11 = qword_100456940;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    fileProtectionType4 = [configurationCopy fileProtectionType];
    v14 = 138412290;
    v15 = fileProtectionType4;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Unsuported file protection type setting up recurring scan %@", &v14, 0xCu);
  }

LABEL_15:
  [(CSFolderMonitor *)self registerForFolderMonitorActivityWithCriteria:v7];
}

- (void)registerForFolderMonitorActivityWithCriteria:(id)criteria
{
  criteriaCopy = criteria;
  postfix = [(CSFolderMonitor *)self postfix];
  extension = [(CSFolderMonitor *)self extension];
  v8 = [extension length];
  if (v8)
  {
    extension2 = [(CSFolderMonitor *)self extension];
    v9 = [@"." stringByAppendingString:extension2];
  }

  else
  {
    v9 = &stru_100436548;
  }

  v10 = [NSString stringWithFormat:@"com.apple.anomalydetectiond.CSFolderMonitor%@%@", postfix, v9];
  if (v8)
  {
  }

  objc_initWeak(&location, self);
  uTF8String = [v10 UTF8String];
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10001CA6C;
  handler[3] = &unk_1004133D8;
  v12 = criteriaCopy;
  v15 = v12;
  v13 = v10;
  v16 = v13;
  objc_copyWeak(&v17, &location);
  xpc_activity_register(uTF8String, v12, handler);
  objc_destroyWeak(&v17);

  objc_destroyWeak(&location);
}

- (void)stopRecurringScanning
{
  folderURL = [(CSFolderMonitor *)self folderURL];
  path = [folderURL path];
  extension = [(CSFolderMonitor *)self extension];
  v5 = [NSString stringWithFormat:@"com.apple.anomalydetectiond.CSFolderMonitor.%@.%@", path, extension];

  xpc_activity_unregister([v5 UTF8String]);
}

@end