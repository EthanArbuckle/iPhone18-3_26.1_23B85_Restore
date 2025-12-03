@interface SAAppPathList
- (BOOL)checkURLsAreOverlappingWithURLs:(id)ls;
- (BOOL)handleOldAppPathListVersions:(id)versions;
- (BOOL)importDefaultApps;
- (BOOL)isAppVisible:(id)visible;
- (BOOL)loadFromDisk;
- (BOOL)saveToDisk;
- (BOOL)shouldValidateAppPathsOnDisk;
- (NSDictionary)recentlyUsedApps;
- (NSMutableDictionary)dataOnDisk;
- (NSMutableDictionary)writersMap;
- (SAAppPathList)init;
- (SATrie)pathsTrie;
- (id)getGreaterAncestorOfBundle:(id)bundle;
- (id)getParentOfBundle:(id)bundle;
- (id)groupPathMapping;
- (id)importFromPlists:(id)plists;
- (void)clearAppsWithZeroPath;
- (void)findBundleIdForURL:(id)l reply:(id)reply;
- (void)importDefaultListWithBGTask:(id)task volumesInfo:(id)info reply:(id)reply;
- (void)importFromLaunchServicesWithBGTask:(id)task volumesInfo:(id)info reply:(id)reply;
- (void)isPathInfoClaimedByAnotherApp:(id)app reply:(id)reply;
- (void)mergeWritersAppPaths;
- (void)updateWithAppPath:(id)path;
- (void)validateAppPathsOnDisk;
@end

@implementation SAAppPathList

- (SAAppPathList)init
{
  v6.receiver = self;
  v6.super_class = SAAppPathList;
  v2 = [(SAAppPathList *)&v6 init];
  if (v2)
  {
    v3 = [NSMutableDictionary dictionaryWithCapacity:100];
    appPathList = v2->_appPathList;
    v2->_appPathList = v3;
  }

  return v2;
}

- (SATrie)pathsTrie
{
  v3 = objc_opt_new();
  pathsTrie = self->_pathsTrie;
  self->_pathsTrie = v3;

  appPathList = self->_appPathList;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000DEF0;
  v7[3] = &unk_100064BD8;
  v7[4] = self;
  [(NSMutableDictionary *)appPathList enumerateKeysAndObjectsUsingBlock:v7];
  return self->_pathsTrie;
}

- (NSMutableDictionary)dataOnDisk
{
  v13 = 0;
  v2 = [NSData dataWithContentsOfFile:off_100073508 options:0 error:&v13];
  v3 = v13;
  if (v2)
  {
    v4 = objc_opt_class();
    v5 = objc_opt_class();
    v6 = objc_opt_class();
    v7 = [NSSet setWithObjects:v4, v5, v6, objc_opt_class(), 0];
    v12 = v3;
    v8 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v7 fromData:v2 error:&v12];
    v9 = v12;

    if (v8)
    {
      goto LABEL_10;
    }

    v10 = SALog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10003CFB4();
    }

    v3 = v9;
  }

  else
  {
    v10 = SALog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10003D024();
    }

    v8 = 0;
  }

  v9 = v3;
LABEL_10:

  return v8;
}

- (NSMutableDictionary)writersMap
{
  writersMap = self->_writersMap;
  if (!writersMap)
  {
    v4 = objc_opt_new();
    v5 = self->_writersMap;
    self->_writersMap = v4;

    appPathList = self->_appPathList;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10000E384;
    v8[3] = &unk_100064BD8;
    v8[4] = self;
    [(NSMutableDictionary *)appPathList enumerateKeysAndObjectsUsingBlock:v8];
    writersMap = self->_writersMap;
  }

  return writersMap;
}

- (BOOL)isAppVisible:(id)visible
{
  visibleCopy = visible;
  appPathList = [(SAAppPathList *)self appPathList];
  v6 = [appPathList objectForKeyedSubscript:visibleCopy];

  LOBYTE(visibleCopy) = [v6 isUserVisible];
  return visibleCopy;
}

- (NSDictionary)recentlyUsedApps
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_recentlyUsedApps)
  {
    v3 = recentlyUsedAppsDictionary();
    recentlyUsedApps = selfCopy->_recentlyUsedApps;
    selfCopy->_recentlyUsedApps = v3;
  }

  objc_sync_exit(selfCopy);

  v5 = selfCopy->_recentlyUsedApps;

  return v5;
}

- (void)updateWithAppPath:(id)path
{
  pathCopy = path;
  identifier = [pathCopy identifier];
  v5 = self->_appPathList;
  objc_sync_enter(v5);
  v6 = [(NSMutableDictionary *)self->_appPathList objectForKeyedSubscript:identifier];
  v7 = v6;
  if (v6)
  {
    [v6 extendWithPropertiesFromAppPath:pathCopy];
  }

  else
  {
    [(NSMutableDictionary *)self->_appPathList setValue:pathCopy forKey:identifier];
  }

  objc_sync_exit(v5);
}

- (void)importDefaultListWithBGTask:(id)task volumesInfo:(id)info reply:(id)reply
{
  taskCopy = task;
  infoCopy = info;
  replyCopy = reply;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  [(SAAppPathList *)self loadFromDisk];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10000E80C;
  v13[3] = &unk_100064C00;
  v13[4] = &v14;
  [(SAAppPathList *)self importFromLaunchServicesWithBGTask:taskCopy volumesInfo:infoCopy reply:v13];
  if (v15[3])
  {
    v11 = 1;
  }

  else
  {
    v12 = [(SAAppPathList *)self importFromPlists:@"/System/Library/SpaceAttribution"];
    [(SAAppPathList *)self importDefaultApps];
    [(SAAppPathList *)self mergeWritersAppPaths];
    v11 = *(v15 + 24);
  }

  replyCopy[2](replyCopy, v11 & 1);
  _Block_object_dispose(&v14, 8);
}

- (BOOL)saveToDisk
{
  v3 = +[NSFileManager defaultManager];
  v13 = 0;
  v4 = [v3 createDirectoryAtPath:@"/var/db/spaceattribution" withIntermediateDirectories:1 attributes:0 error:&v13];
  v5 = v13;
  if (v4)
  {
    v6 = [NSMutableDictionary dictionaryWithObjectsAndKeys:self->_appPathList, @"appPathList", self->_buildVersion, @"buildVersion", 0];
    v12 = v5;
    v7 = [NSKeyedArchiver archivedDataWithRootObject:v6 requiringSecureCoding:0 error:&v12];
    v8 = v12;

    if (v7)
    {
      v9 = [v7 writeToFile:off_100073508 atomically:1];
    }

    else
    {
      v10 = SALog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10003D114();
      }

      v9 = 0;
    }
  }

  else
  {
    v6 = SALog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10003D094();
    }

    v9 = 0;
    v8 = v5;
  }

  return v9;
}

- (BOOL)loadFromDisk
{
  dataOnDisk = [(SAAppPathList *)self dataOnDisk];
  v4 = dataOnDisk;
  if (!dataOnDisk)
  {
    v9 = SALog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10003D184();
    }

    goto LABEL_10;
  }

  v5 = [dataOnDisk objectForKey:@"appPathList"];

  if (v5)
  {
    v6 = [v4 objectForKey:@"buildVersion"];
    buildVersion = self->_buildVersion;
    self->_buildVersion = v6;

    v8 = [v4 objectForKey:@"appPathList"];
  }

  else
  {
    v8 = v4;
  }

  appPathListOnDisk = self->_appPathListOnDisk;
  self->_appPathListOnDisk = v8;

  if (![(SAAppPathList *)self handleOldAppPathListVersions:self->_appPathListOnDisk])
  {
LABEL_10:
    v11 = 0;
    goto LABEL_11;
  }

  objc_storeStrong(&self->_appPathList, self->_appPathListOnDisk);
  v11 = 1;
LABEL_11:

  return v11;
}

- (BOOL)handleOldAppPathListVersions:(id)versions
{
  versionsCopy = versions;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 1;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000EB74;
  v6[3] = &unk_100064C68;
  v6[4] = &v7;
  [versionsCopy enumerateKeysAndObjectsUsingBlock:v6];
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (BOOL)shouldValidateAppPathsOnDisk
{
  if (self->_buildVersion && (+[SASupport buildVersion], v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
    buildVersion = self->_buildVersion;
    v5 = +[SASupport buildVersion];
    v6 = ![(NSString *)buildVersion isEqualToString:v5];
  }

  else
  {
    LOBYTE(v6) = 1;
  }

  return v6;
}

- (void)validateAppPathsOnDisk
{
  if ([(SAAppPathList *)self shouldValidateAppPathsOnDisk])
  {
    v3 = SALog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Validating the app path list on disk", buf, 2u);
    }

    v4 = +[NSFileManager defaultManager];
    v5 = [(NSMutableDictionary *)self->_appPathListOnDisk copy];
    v9 = _NSConcreteStackBlock;
    v10 = 3221225472;
    v11 = sub_10000F56C;
    v12 = &unk_100064C90;
    v13 = v4;
    selfCopy = self;
    v6 = v4;
    [v5 enumerateKeysAndObjectsUsingBlock:&v9];

    v7 = [SASupport buildVersion:v9];
    buildVersion = self->_buildVersion;
    self->_buildVersion = v7;
  }
}

- (id)getParentOfBundle:(id)bundle
{
  bundleCopy = bundle;
  writersMap = [(SAAppPathList *)self writersMap];
  v6 = [writersMap objectForKeyedSubscript:bundleCopy];

  return v6;
}

- (id)getGreaterAncestorOfBundle:(id)bundle
{
  bundleCopy = bundle;
  v5 = [(SAAppPathList *)self getParentOfBundle:bundleCopy];

  if (v5)
  {
    v6 = bundleCopy;
    v5 = 0;
    if (v6)
    {
      do
      {
        v7 = v5;
        v5 = v6;

        v6 = [(SAAppPathList *)self getParentOfBundle:v5];
      }

      while (([v5 isEqualToString:v6] & 1) == 0 && v6);
    }
  }

  return v5;
}

- (void)clearAppsWithZeroPath
{
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  allKeys = [(NSMutableDictionary *)self->_appPathList allKeys];
  v4 = [allKeys copy];

  obj = v4;
  v5 = [v4 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v20;
    *&v6 = 136315394;
    v17 = v6;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        v11 = [(NSMutableDictionary *)self->_appPathList objectForKeyedSubscript:v10, v17];
        uniquePaths = [v11 uniquePaths];
        v13 = [uniquePaths count];
        sharedPaths = [v11 sharedPaths];
        v15 = [sharedPaths count];

        if (!&v15[v13])
        {
          v16 = SALog();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            *buf = v17;
            v24 = "[SAAppPathList clearAppsWithZeroPath]";
            v25 = 2112;
            v26 = v10;
            _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%s: Removing %@ app path", buf, 0x16u);
          }

          [(NSMutableDictionary *)self->_appPathList removeObjectForKey:v10];
        }
      }

      v7 = [obj countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v7);
  }
}

- (id)groupPathMapping
{
  v3 = objc_opt_new();
  appPathList = self->_appPathList;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000FE38;
  v7[3] = &unk_100064BD8;
  v5 = v3;
  v8 = v5;
  [(NSMutableDictionary *)appPathList enumerateKeysAndObjectsUsingBlock:v7];

  return v5;
}

- (void)importFromLaunchServicesWithBGTask:(id)task volumesInfo:(id)info reply:(id)reply
{
  taskCopy = task;
  infoCopy = info;
  replyCopy = reply;
  v11 = objc_opt_new();
  v36[0] = 0;
  v36[1] = v36;
  v36[2] = 0x3032000000;
  v36[3] = sub_10000D0C4;
  v36[4] = sub_10000D0D4;
  v37 = +[NSDate date];
  v35[0] = 0;
  v35[1] = v35;
  v35[2] = 0x2020000000;
  v35[3] = 0;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10001024C;
  v24[3] = &unk_100064CB8;
  v12 = v11;
  v25 = v12;
  v28 = v35;
  v29 = v36;
  v13 = taskCopy;
  v30 = &v31;
  v26 = v13;
  selfCopy = self;
  [SAQuery installedAppsAtVolume:0 sortForUrgency:3 options:1 block:v24];
  groupPathMapping = [(SAAppPathList *)self groupPathMapping];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000103A0;
  v17[3] = &unk_100064CE0;
  v21 = v35;
  v22 = v36;
  v15 = v13;
  v18 = v15;
  v23 = &v31;
  v16 = groupPathMapping;
  v19 = v16;
  selfCopy2 = self;
  [SAQuery installedAppGroupsAtVolume:v17];
  replyCopy[2](replyCopy, *(v32 + 24));

  _Block_object_dispose(&v31, 8);
  _Block_object_dispose(v35, 8);
  _Block_object_dispose(v36, 8);
}

- (void)isPathInfoClaimedByAnotherApp:(id)app reply:(id)reply
{
  appCopy = app;
  replyCopy = reply;
  bundleID = [appCopy bundleID];
  v9 = [appCopy url];
  path = [v9 path];
  v11 = [NSURL fileURLWithPath:path isDirectory:1];

  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_10000D0C4;
  v24 = sub_10000D0D4;
  v25 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100010968;
  v15[3] = &unk_100064D08;
  v15[4] = &v20;
  v15[5] = &v16;
  [(SAAppPathList *)self findBundleIdForURL:v11 reply:v15];
  if (v21[5] && [bundleID isEqual:?] && (v12 = *(v17 + 24), v12 != objc_msgSend(appCopy, "exclusive")) || v21[5] && (objc_msgSend(bundleID, "isEqual:") & 1) == 0 && (v17[3] & 1) != 0 || v21[5] && (objc_msgSend(bundleID, "isEqual:") & 1) == 0 && (v17[3] & 1) == 0 && objc_msgSend(appCopy, "exclusive"))
  {
    v13 = v21[5];
    v14 = *(v17 + 24);
  }

  else
  {
    v13 = 0;
    v14 = 0;
  }

  replyCopy[2](replyCopy, v13, v14 & 1);
  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v20, 8);
}

- (void)findBundleIdForURL:(id)l reply:(id)reply
{
  lCopy = l;
  replyCopy = reply;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  selfCopy = self;
  v8 = self->_appPathList;
  v9 = [(NSMutableDictionary *)v8 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v9)
  {
    v10 = v9;
    v22 = replyCopy;
    obj = v8;
    v11 = 0;
    v12 = *v26;
    while (2)
    {
      v13 = 0;
      v14 = v11;
      do
      {
        if (*v26 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v25 + 1) + 8 * v13);

        v15 = [(NSMutableDictionary *)selfCopy->_appPathList objectForKey:v11];
        uniquePaths = [v15 uniquePaths];
        path = [lCopy path];
        v18 = [uniquePaths containsObject:path];

        if (v18 & 1) != 0 || ([v15 sharedPaths], v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(lCopy, "path"), v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v19, "containsObject:", v20), v20, v19, (v21))
        {
          replyCopy = v22;
          v22[2](v22, v11, v18);

          goto LABEL_13;
        }

        v13 = v13 + 1;
        v14 = v11;
      }

      while (v10 != v13);
      v8 = obj;
      v10 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }

    replyCopy = v22;
  }

  replyCopy[2](replyCopy, 0, 0);
LABEL_13:
}

- (BOOL)checkURLsAreOverlappingWithURLs:(id)ls
{
  lsCopy = ls;
  pathsTrie = [(SAAppPathList *)self pathsTrie];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = lsCopy;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = *v17;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = objc_autoreleasePoolPush();
        path = [v10 path];
        v13 = [pathsTrie isOverlapping:path checkIfExists:0];

        if (v13)
        {
          objc_autoreleasePoolPop(v11);
          LOBYTE(v7) = 1;
          goto LABEL_11;
        }

        path2 = [v10 path];
        [pathsTrie insertPath:path2];

        objc_autoreleasePoolPop(v11);
      }

      v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

- (id)importFromPlists:(id)plists
{
  plistsCopy = plists;
  v4 = objc_alloc_init(NSFileManager);
  stringByStandardizingPath = [plistsCopy stringByStandardizingPath];

  v23 = stringByStandardizingPath;
  if (([v4 fileExistsAtPath:stringByStandardizingPath] & 1) == 0)
  {
    v10 = SALog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10003D468();
    }

    v8 = [NSError errorWithDomain:NSCocoaErrorDomain code:4 userInfo:0];
    goto LABEL_9;
  }

  v6 = +[NSFileManager defaultManager];
  v30 = 0;
  v7 = [v6 contentsOfDirectoryAtPath:stringByStandardizingPath error:&v30];
  v8 = v30;

  if (v8)
  {
    v9 = SALog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10003D4D8();
    }

LABEL_9:
    v11 = v23;
    goto LABEL_10;
  }

  v13 = [NSPredicate predicateWithFormat:@"SELF ENDSWITH '.plist'"];
  v14 = [v7 filteredArrayUsingPredicate:v13];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = v14;
  v15 = [obj countByEnumeratingWithState:&v26 objects:v33 count:16];
  v11 = v23;
  if (v15)
  {
    v16 = v15;
    v17 = *v27;
    do
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v27 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v26 + 1) + 8 * i);
        v20 = [NSString stringWithFormat:@"%@/%@", v11, v19];
        v21 = [SAAppPath newFromPlist:v20];
        if (v21)
        {
          [(SAAppPathList *)self updateWithAppPath:v21];
        }

        else
        {
          v22 = SALog();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v32 = v19;
            _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Failed to create SAAppPath for plist at path (%@)", buf, 0xCu);
          }

          v11 = v23;
        }
      }

      v16 = [obj countByEnumeratingWithState:&v26 objects:v33 count:16];
    }

    while (v16);
  }

  v8 = 0;
LABEL_10:

  return v8;
}

- (BOOL)importDefaultApps
{
  if (qword_1000736E0 != -1)
  {
    sub_10003D544();
  }

  if (qword_1000736D0)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1000112CC;
    v5[3] = &unk_100064DA0;
    v5[4] = self;
    [qword_1000736D0 enumerateKeysAndObjectsUsingBlock:v5];
  }

  if (qword_1000736D8)
  {
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_100011838;
    v4[3] = &unk_100064DA0;
    v4[4] = self;
    [qword_1000736D8 enumerateKeysAndObjectsUsingBlock:v4];
  }

  return 1;
}

- (void)mergeWritersAppPaths
{
  v3 = [(NSMutableDictionary *)self->_appPathList copy];
  [v3 enumerateKeysAndObjectsUsingBlock:&stru_100064E30];

  v4 = [(NSMutableDictionary *)self->_appPathList copy];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100012090;
  v9[3] = &unk_100064BD8;
  v9[4] = self;
  [v4 enumerateKeysAndObjectsUsingBlock:v9];

  v5 = [(NSMutableDictionary *)self->_appPathList copy];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100012298;
  v8[3] = &unk_100064BD8;
  v8[4] = self;
  [v5 enumerateKeysAndObjectsUsingBlock:v8];

  v6 = [(NSMutableDictionary *)self->_appPathList copy];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100012444;
  v7[3] = &unk_100064BD8;
  v7[4] = self;
  [v6 enumerateKeysAndObjectsUsingBlock:v7];
}

@end