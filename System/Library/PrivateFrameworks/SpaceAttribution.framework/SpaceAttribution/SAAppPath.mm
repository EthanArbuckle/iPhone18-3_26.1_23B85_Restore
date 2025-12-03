@interface SAAppPath
+ (BOOL)isValidAppPathPlist:(id)plist writersID:(id)d uniquePaths:(id)paths sharedPaths:(id)sharedPaths;
+ (BOOL)isValidAppPathPlistArray:(id)array;
+ (BOOL)validatePaths:(id)paths;
+ (id)newFromPlist:(id)plist;
- (BOOL)forceHidden;
- (BOOL)forceVisible;
- (BOOL)isAppRecordUserVisible:(id)visible;
- (BOOL)isAppUserVisible;
- (BOOL)isUserVisible;
- (SAAppPath)init;
- (SAAppPath)initWithBundleID:(id)d;
- (SAAppPath)initWithBundleID:(id)d writersIDs:(id)ds uniquePaths:(id)paths sharedPaths:(id)sharedPaths;
- (SAAppPath)initWithBundleRecord:(id)record identifier:(id)identifier dataContainerPath:(id)path personaUniqueString:(id)string isPlugin:(BOOL)plugin isGroup:(BOOL)group;
- (SAAppPath)initWithCoder:(id)coder;
- (id)appRecord;
- (id)cachePath;
- (id)getDictionary;
- (id)tmpPath;
- (int)urgency;
- (int64_t)threeDaysAgo;
- (unint64_t)getAppCacheSize;
- (unint64_t)tempSize;
- (void)addBinaryPath:(id)path;
- (void)addBinaryPaths:(id)paths;
- (void)addGroupContainerID:(id)d;
- (void)addGroupContainerIDs:(id)ds;
- (void)addSharedPath:(id)path;
- (void)addSharedPaths:(id)paths;
- (void)addUniquePath:(id)path;
- (void)addUniquePaths:(id)paths;
- (void)addWriterID:(id)d;
- (void)addWriterIDs:(id)ds;
- (void)encodeWithCoder:(id)coder;
- (void)extendWithPropertiesFromAppPath:(id)path;
- (void)getAppCacheInfo:(id)info;
- (void)removeBinaryPath:(id)path;
- (void)removeBinaryPaths:(id)paths;
- (void)removeSharedPath:(id)path;
- (void)removeSharedPaths:(id)paths;
- (void)removeUniquePath:(id)path;
- (void)removeUniquePaths:(id)paths;
- (void)removeWriterID:(id)d;
- (void)removeWriterIDs:(id)ds;
- (void)updateLastUsedDate:(id)date;
@end

@implementation SAAppPath

- (SAAppPath)init
{
  v12.receiver = self;
  v12.super_class = SAAppPath;
  v2 = [(SAAppPath *)&v12 init];
  v3 = v2;
  if (v2)
  {
    identifier = v2->identifier;
    v2->identifier = 0;

    v5 = +[NSMutableSet set];
    writersIDs = v3->writersIDs;
    v3->writersIDs = v5;

    v7 = +[NSMutableSet set];
    uniquePaths = v3->uniquePaths;
    v3->uniquePaths = v7;

    v9 = +[NSMutableSet set];
    sharedPaths = v3->sharedPaths;
    v3->sharedPaths = v9;
  }

  return v3;
}

- (SAAppPath)initWithBundleID:(id)d
{
  dCopy = d;
  v6 = [(SAAppPath *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->identifier, d);
  }

  return v7;
}

- (SAAppPath)initWithBundleID:(id)d writersIDs:(id)ds uniquePaths:(id)paths sharedPaths:(id)sharedPaths
{
  dCopy = d;
  dsCopy = ds;
  pathsCopy = paths;
  sharedPathsCopy = sharedPaths;
  v18.receiver = self;
  v18.super_class = SAAppPath;
  v15 = [(SAAppPath *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->identifier, d);
    objc_storeStrong(&v16->writersIDs, ds);
    objc_storeStrong(&v16->uniquePaths, paths);
    objc_storeStrong(&v16->sharedPaths, sharedPaths);
  }

  return v16;
}

+ (BOOL)isValidAppPathPlistArray:(id)array
{
  arrayCopy = array;
  if (arrayCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      v4 = arrayCopy;
      v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v5)
      {
        v6 = v5;
        v7 = *v14;
        while (2)
        {
          for (i = 0; i != v6; i = i + 1)
          {
            if (*v14 != v7)
            {
              objc_enumerationMutation(v4);
            }

            v9 = *(*(&v13 + 1) + 8 * i);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v11 = SALog();
              if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
              {
                sub_10003C7B4();
              }

              goto LABEL_18;
            }
          }

          v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
          v10 = 1;
          if (v6)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        v10 = 1;
      }
    }

    else
    {
      v4 = SALog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        sub_10003C734();
      }

LABEL_18:
      v10 = 0;
    }
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

+ (BOOL)isValidAppPathPlist:(id)plist writersID:(id)d uniquePaths:(id)paths sharedPaths:(id)sharedPaths
{
  plistCopy = plist;
  dCopy = d;
  pathsCopy = paths;
  sharedPathsCopy = sharedPaths;
  if (!plistCopy)
  {
    v14 = SALog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10003C958();
    }

    goto LABEL_20;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v14 = SALog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10003C834();
    }

    goto LABEL_20;
  }

  if (dCopy && ![SAAppPath isValidAppPathPlistArray:dCopy])
  {
    v14 = SALog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10003C8A4();
    }

    goto LABEL_20;
  }

  if (pathsCopy && ![SAAppPath isValidAppPathPlistArray:pathsCopy])
  {
    v14 = SALog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10003C8E0();
    }

    goto LABEL_20;
  }

  if (sharedPathsCopy && ![SAAppPath isValidAppPathPlistArray:sharedPathsCopy])
  {
    v14 = SALog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10003C91C();
    }

LABEL_20:

    v13 = 0;
    goto LABEL_21;
  }

  v13 = 1;
LABEL_21:

  return v13;
}

+ (BOOL)validatePaths:(id)paths
{
  pathsCopy = paths;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = [pathsCopy countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (!v4)
  {
    v8 = 1;
    goto LABEL_25;
  }

  v6 = v4;
  v7 = *v18;
  v8 = 1;
  *&v5 = 138412290;
  v16 = v5;
  do
  {
    v9 = 0;
    do
    {
      if (*v18 != v7)
      {
        objc_enumerationMutation(pathsCopy);
      }

      v10 = *(*(&v17 + 1) + 8 * v9);
      if ([v10 hasPrefix:{@"~", v16}])
      {
        v11 = SALog();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          *buf = v16;
          v22 = v10;
          v12 = v11;
          v13 = "Invalid path (%@) - '~' is not resolved.";
          goto LABEL_21;
        }

        goto LABEL_14;
      }

      if (([v10 hasPrefix:@"/"] & 1) == 0)
      {
        v11 = SALog();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          *buf = v16;
          v22 = v10;
          v12 = v11;
          v13 = "Invalid path (%@) - the provided path is relative, must provide an absolute path.";
LABEL_21:
          _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, v13, buf, 0xCu);
        }

LABEL_14:

        v8 = 0;
        goto LABEL_15;
      }

      if ([v10 containsString:@"/./"])
      {
        v11 = SALog();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          *buf = v16;
          v22 = v10;
          v12 = v11;
          v13 = "Invalid path (%@) - the path contains reference to current dir.";
          goto LABEL_21;
        }

        goto LABEL_14;
      }

      if ([v10 containsString:@"/../"])
      {
        v11 = SALog();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          *buf = v16;
          v22 = v10;
          v12 = v11;
          v13 = "Invalid path (%@) - the path contains reference to parent dir.";
          goto LABEL_21;
        }

        goto LABEL_14;
      }

LABEL_15:
      v9 = v9 + 1;
    }

    while (v6 != v9);
    v14 = [pathsCopy countByEnumeratingWithState:&v17 objects:v23 count:16];
    v6 = v14;
  }

  while (v14);
LABEL_25:

  return v8 & 1;
}

+ (id)newFromPlist:(id)plist
{
  plistCopy = plist;
  v5 = +[NSFileManager defaultManager];
  if (![v5 fileExistsAtPath:plistCopy] || (objc_msgSend(plistCopy, "pathExtension"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isEqual:", @"plist"), v6, (v7 & 1) == 0))
  {
    v13 = SALog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10003C994();
    }

    v23 = 0;
    v18 = 0;
    v11 = 0;
    v10 = 0;
    v9 = 0;
    v8 = 0;
    goto LABEL_26;
  }

  v63 = 0;
  v8 = [NSData dataWithContentsOfFile:plistCopy options:2 error:&v63];
  v9 = v63;
  if (v9 || !v8)
  {
    v13 = SALog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10003CBC0();
    }

    v23 = 0;
    v18 = 0;
    v11 = 0;
    v10 = 0;
    goto LABEL_26;
  }

  v62 = 0;
  v10 = [NSPropertyListSerialization propertyListWithData:v8 options:0 format:0 error:&v62];
  v9 = v62;
  if (v9 || !v10)
  {
    v13 = SALog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10003CB54();
    }

    v23 = 0;
    v18 = 0;
    v11 = 0;
    goto LABEL_26;
  }

  v11 = [v10 objectForKeyedSubscript:@"SPACE_ATTRIBUTION_OWNER"];
  v12 = [v10 objectForKeyedSubscript:@"SPACE_ATTRIBUTION_WRITERS"];
  v13 = [v10 objectForKeyedSubscript:@"SPACE_ATTRIBUTION_PATHS"];
  v14 = [v10 objectForKeyedSubscript:@"SPACE_ATTRIBUTION_SHARED"];
  if (![SAAppPath isValidAppPathPlist:v11 writersID:v12 uniquePaths:v13 sharedPaths:v14])
  {
    v26 = SALog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      sub_10003CA04();
    }

    v23 = 0;
    v18 = 0;
    v9 = 0;
LABEL_26:
    v24 = 0;
    goto LABEL_27;
  }

  v45 = v5;
  v43 = v12;
  v44 = v10;
  v47 = v11;
  v48 = v14;
  selfCopy = self;
  if (!v13)
  {
    v18 = 0;
    goto LABEL_40;
  }

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v15 = v13;
  v16 = [v15 countByEnumeratingWithState:&v58 objects:v66 count:16, v12];
  if (!v16)
  {
    v18 = 0;
    goto LABEL_39;
  }

  v17 = v16;
  v18 = 0;
  v19 = *v59;
  do
  {
    for (i = 0; i != v17; i = i + 1)
    {
      if (*v59 != v19)
      {
        objc_enumerationMutation(v15);
      }

      v21 = *(*(&v58 + 1) + 8 * i);
      v22 = objc_autoreleasePoolPush();
      if (v18)
      {
        if (!v21)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v18 = +[NSMutableSet set];
        if (!v21)
        {
          goto LABEL_20;
        }
      }

      if ([v21 length])
      {
        [v18 addObject:v21];
      }

LABEL_20:
      objc_autoreleasePoolPop(v22);
    }

    v17 = [v15 countByEnumeratingWithState:&v58 objects:v66 count:16];
  }

  while (v17);
LABEL_39:

  v14 = v48;
LABEL_40:
  v46 = plistCopy;
  if (!v14)
  {
    v23 = 0;
    goto LABEL_58;
  }

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v27 = v14;
  v28 = [v27 countByEnumeratingWithState:&v54 objects:v65 count:16];
  if (!v28)
  {
    v23 = 0;
    goto LABEL_57;
  }

  v29 = v28;
  v23 = 0;
  v30 = *v55;
  while (2)
  {
    v31 = 0;
    while (2)
    {
      if (*v55 != v30)
      {
        objc_enumerationMutation(v27);
      }

      v32 = *(*(&v54 + 1) + 8 * v31);
      v33 = objc_autoreleasePoolPush();
      if (v23)
      {
        if (!v32)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v23 = +[NSMutableSet set];
        if (!v32)
        {
          goto LABEL_52;
        }
      }

      if ([v32 length])
      {
        [v23 addObject:v32];
      }

LABEL_52:
      objc_autoreleasePoolPop(v33);
      if (v29 != ++v31)
      {
        continue;
      }

      break;
    }

    v29 = [v27 countByEnumeratingWithState:&v54 objects:v65 count:16];
    if (v29)
    {
      continue;
    }

    break;
  }

LABEL_57:

LABEL_58:
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v34 = v43;
  v35 = [v34 countByEnumeratingWithState:&v50 objects:v64 count:16];
  if (!v35)
  {
    v37 = 0;
    goto LABEL_73;
  }

  v36 = v35;
  v37 = 0;
  v38 = *v51;
  while (2)
  {
    v39 = 0;
    while (2)
    {
      if (*v51 != v38)
      {
        objc_enumerationMutation(v34);
      }

      v40 = *(*(&v50 + 1) + 8 * v39);
      if (v37)
      {
        if (!v40)
        {
          goto LABEL_69;
        }
      }

      else
      {
        v37 = +[NSMutableSet set];
        if (!v40)
        {
          goto LABEL_69;
        }
      }

      if ([v40 length])
      {
        [v37 addObject:v40];
      }

LABEL_69:
      if (v36 != ++v39)
      {
        continue;
      }

      break;
    }

    v36 = [v34 countByEnumeratingWithState:&v50 objects:v64 count:16];
    if (v36)
    {
      continue;
    }

    break;
  }

LABEL_73:

  v5 = v45;
  plistCopy = v46;
  v10 = v44;
  if (([(objc_class *)selfCopy validatePaths:v13]& 1) == 0)
  {
    v41 = SALog();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      sub_10003CA74();
    }
  }

  if (([(objc_class *)selfCopy validatePaths:v48, v43]& 1) == 0)
  {
    v42 = SALog();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      sub_10003CAE4();
    }
  }

  v24 = [[selfCopy alloc] initWithBundleID:v47 writersIDs:v37 uniquePaths:v18 sharedPaths:v23];

  v11 = v47;
  v9 = 0;
LABEL_27:

  return v24;
}

- (void)addBinaryPaths:(id)paths
{
  pathsCopy = paths;
  if (pathsCopy)
  {
    binaryPaths = self->binaryPaths;
    v8 = pathsCopy;
    if (!binaryPaths)
    {
      v6 = +[NSMutableSet set];
      v7 = self->binaryPaths;
      self->binaryPaths = v6;

      binaryPaths = self->binaryPaths;
    }

    [(NSMutableSet *)binaryPaths unionSet:v8];
  }

  _objc_release_x1();
}

- (void)addBinaryPath:(id)path
{
  pathCopy = path;
  if (pathCopy)
  {
    v6 = pathCopy;
    if ([pathCopy length])
    {
      v5 = [NSSet setWithObject:v6];
      [(SAAppPath *)self addBinaryPaths:v5];
    }
  }

  _objc_release_x1();
}

- (void)addUniquePath:(id)path
{
  pathCopy = path;
  if (pathCopy)
  {
    v6 = pathCopy;
    if ([pathCopy length])
    {
      v5 = [NSMutableSet setWithObject:v6];
      [(SAAppPath *)self addUniquePaths:v5];
    }
  }

  _objc_release_x1();
}

- (void)addUniquePaths:(id)paths
{
  pathsCopy = paths;
  if (pathsCopy)
  {
    uniquePaths = self->uniquePaths;
    v8 = pathsCopy;
    if (!uniquePaths)
    {
      v6 = objc_opt_new();
      v7 = self->uniquePaths;
      self->uniquePaths = v6;

      uniquePaths = self->uniquePaths;
    }

    [(NSMutableSet *)uniquePaths unionSet:v8];
  }

  _objc_release_x1();
}

- (void)addSharedPath:(id)path
{
  pathCopy = path;
  if (pathCopy)
  {
    v6 = pathCopy;
    if ([pathCopy length])
    {
      v5 = [NSMutableSet setWithObject:v6];
      [(SAAppPath *)self addSharedPaths:v5];
    }
  }

  _objc_release_x1();
}

- (void)addSharedPaths:(id)paths
{
  pathsCopy = paths;
  if (pathsCopy)
  {
    sharedPaths = self->sharedPaths;
    v8 = pathsCopy;
    if (!sharedPaths)
    {
      v6 = objc_opt_new();
      v7 = self->sharedPaths;
      self->sharedPaths = v6;

      sharedPaths = self->sharedPaths;
    }

    [(NSMutableSet *)sharedPaths unionSet:v8];
  }

  _objc_release_x1();
}

- (void)addWriterID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    v6 = dCopy;
    if ([dCopy length])
    {
      v5 = [NSMutableSet setWithObject:v6];
      [(SAAppPath *)self addWriterIDs:v5];
    }
  }

  _objc_release_x1();
}

- (void)addGroupContainerID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    v6 = dCopy;
    if ([dCopy length])
    {
      v5 = [NSMutableSet setWithObject:v6];
      [(SAAppPath *)self addGroupContainerIDs:v5];
    }
  }

  _objc_release_x1();
}

- (void)addGroupContainerIDs:(id)ds
{
  dsCopy = ds;
  if (dsCopy)
  {
    groupContainerIdentifiers = self->_groupContainerIdentifiers;
    v8 = dsCopy;
    if (!groupContainerIdentifiers)
    {
      v6 = +[NSMutableSet set];
      v7 = self->_groupContainerIdentifiers;
      self->_groupContainerIdentifiers = v6;

      groupContainerIdentifiers = self->_groupContainerIdentifiers;
    }

    [(NSMutableSet *)groupContainerIdentifiers unionSet:v8];
  }

  _objc_release_x1();
}

- (void)addWriterIDs:(id)ds
{
  dsCopy = ds;
  if (dsCopy)
  {
    writersIDs = self->writersIDs;
    v9 = dsCopy;
    if (!writersIDs)
    {
      v6 = objc_opt_new();
      v7 = self->writersIDs;
      self->writersIDs = v6;

      writersIDs = self->writersIDs;
    }

    allObjects = [v9 allObjects];
    [(NSMutableSet *)writersIDs addObjectsFromArray:allObjects];

    dsCopy = v9;
  }
}

- (void)removeBinaryPath:(id)path
{
  if (path)
  {
    v4 = [NSSet setWithObject:?];
    [(SAAppPath *)self removeBinaryPaths:v4];
  }
}

- (void)removeBinaryPaths:(id)paths
{
  if (paths)
  {
    [(NSMutableSet *)self->binaryPaths minusSet:?];
  }
}

- (void)removeUniquePath:(id)path
{
  if (path)
  {
    v4 = [NSSet setWithObject:?];
    [(SAAppPath *)self removeUniquePaths:v4];
  }
}

- (void)removeUniquePaths:(id)paths
{
  if (paths)
  {
    [(NSMutableSet *)self->uniquePaths minusSet:?];
  }
}

- (void)removeWriterIDs:(id)ds
{
  dsCopy = ds;
  v5 = dsCopy;
  if (self->writersIDs)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v6 = [dsCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v11;
      do
      {
        v9 = 0;
        do
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [(SAAppPath *)self removeWriterID:*(*(&v10 + 1) + 8 * v9)];
          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }
  }
}

- (void)removeWriterID:(id)d
{
  if (d)
  {
    [(NSMutableSet *)self->writersIDs removeObject:?];
  }
}

- (void)removeSharedPath:(id)path
{
  if (path)
  {
    v4 = [NSSet setWithObject:?];
    [(SAAppPath *)self removeSharedPaths:v4];
  }
}

- (void)removeSharedPaths:(id)paths
{
  if (paths)
  {
    [(NSMutableSet *)self->sharedPaths minusSet:?];
  }
}

- (void)updateLastUsedDate:(id)date
{
  dateCopy = date;
  if (dateCopy)
  {
    v8 = dateCopy;
    v5 = [dateCopy objectForKeyedSubscript:self->identifier];

    dateCopy = v8;
    if (v5)
    {
      v6 = [v8 objectForKeyedSubscript:self->identifier];
      lastUsed = self->_lastUsed;
      self->_lastUsed = v6;

      dateCopy = v8;
    }
  }
}

- (void)extendWithPropertiesFromAppPath:(id)path
{
  pathCopy = path;
  writersIDs = [pathCopy writersIDs];
  [(SAAppPath *)self addWriterIDs:writersIDs];

  sharedPaths = [pathCopy sharedPaths];
  [(SAAppPath *)self addSharedPaths:sharedPaths];

  uniquePaths = [pathCopy uniquePaths];
  [(SAAppPath *)self addUniquePaths:uniquePaths];

  binaryPaths = [pathCopy binaryPaths];
  [(SAAppPath *)self addBinaryPaths:binaryPaths];

  groupContainerIdentifiers = [pathCopy groupContainerIdentifiers];
  [(SAAppPath *)self addGroupContainerIDs:groupContainerIdentifiers];

  lastUsed = [pathCopy lastUsed];

  if (lastUsed)
  {
    lastUsed = self->_lastUsed;
    if (!lastUsed || ([pathCopy lastUsed], v11 = objc_claimAutoreleasedReturnValue(), v12 = -[NSDate compare:](lastUsed, "compare:", v11), v11, v12 == -1))
    {
      lastUsed2 = [pathCopy lastUsed];
      v14 = self->_lastUsed;
      self->_lastUsed = lastUsed2;
    }
  }

  if (!self->_dataContainerPath)
  {
    dataContainerPath = [pathCopy dataContainerPath];
    dataContainerPath = self->_dataContainerPath;
    self->_dataContainerPath = dataContainerPath;
  }

  if ([(NSNumber *)self->_isAppRecordUserVisible BOOLValue])
  {
    bOOLValue = 1;
  }

  else
  {
    isAppRecordUserVisible = [pathCopy isAppRecordUserVisible];
    bOOLValue = [isAppRecordUserVisible BOOLValue];
  }

  v19 = [NSNumber numberWithBool:bOOLValue];
  isAppRecordUserVisible = self->_isAppRecordUserVisible;
  self->_isAppRecordUserVisible = v19;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"bundleID"];
  [coderCopy encodeObject:self->writersIDs forKey:@"writersIDs"];
  [coderCopy encodeObject:self->uniquePaths forKey:@"uniqueURLs"];
  [coderCopy encodeObject:self->sharedPaths forKey:@"sharedURLs"];
  [coderCopy encodeObject:self->binaryPaths forKey:@"binaryURLs"];
}

- (SAAppPath)initWithCoder:(id)coder
{
  coderCopy = coder;
  v32.receiver = self;
  v32.super_class = SAAppPath;
  v5 = [(SAAppPath *)&v32 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleID"];
    identifier = v5->identifier;
    v5->identifier = v6;

    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = [NSSet setWithObjects:v8, v9, objc_opt_class(), 0];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"writersIDs"];
    writersIDs = v5->writersIDs;
    v5->writersIDs = v11;

    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = [NSSet setWithObjects:v13, v14, v15, objc_opt_class(), 0];
    v17 = [coderCopy decodeObjectOfClasses:v16 forKey:@"uniqueURLs"];
    uniquePaths = v5->uniquePaths;
    v5->uniquePaths = v17;

    v19 = objc_opt_class();
    v20 = objc_opt_class();
    v21 = objc_opt_class();
    v22 = [NSSet setWithObjects:v19, v20, v21, objc_opt_class(), 0];
    v23 = [coderCopy decodeObjectOfClasses:v22 forKey:@"sharedURLs"];
    sharedPaths = v5->sharedPaths;
    v5->sharedPaths = v23;

    v25 = objc_opt_class();
    v26 = objc_opt_class();
    v27 = objc_opt_class();
    v28 = [NSSet setWithObjects:v25, v26, v27, objc_opt_class(), 0];
    v29 = [coderCopy decodeObjectOfClasses:v28 forKey:@"binaryURLs"];
    binaryPaths = v5->binaryPaths;
    v5->binaryPaths = v29;
  }

  return v5;
}

- (SAAppPath)initWithBundleRecord:(id)record identifier:(id)identifier dataContainerPath:(id)path personaUniqueString:(id)string isPlugin:(BOOL)plugin isGroup:(BOOL)group
{
  recordCopy = record;
  identifierCopy = identifier;
  pathCopy = path;
  v77.receiver = self;
  v77.super_class = SAAppPath;
  v16 = [(SAAppPath *)&v77 init];
  v17 = v16;
  if (!v16)
  {
    goto LABEL_44;
  }

  if (identifierCopy)
  {
    objc_storeStrong(&v16->_dataContainerPath, path);
    objc_storeStrong(&v17->identifier, identifier);
    v18 = &SBSCopyDisplayIdentifiers_ptr;
    if (v17->_dataContainerPath)
    {
      if (group)
      {
        [(SAAppPath *)v17 addSharedPath:?];
LABEL_34:
        groupContainerIdentifiers = [recordCopy groupContainerIdentifiers];
        [(SAAppPath *)v17 addGroupContainerIDs:groupContainerIdentifiers];

        v47 = v18[221];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          pluginCopy = plugin;
          v71 = 0u;
          v72 = 0u;
          v69 = 0u;
          v70 = 0u;
          applicationExtensionRecords = [recordCopy applicationExtensionRecords];
          v49 = [applicationExtensionRecords countByEnumeratingWithState:&v69 objects:v78 count:16];
          if (v49)
          {
            v50 = v49;
            v51 = *v70;
            do
            {
              for (i = 0; i != v50; i = i + 1)
              {
                if (*v70 != v51)
                {
                  objc_enumerationMutation(applicationExtensionRecords);
                }

                groupContainerIdentifiers2 = [*(*(&v69 + 1) + 8 * i) groupContainerIdentifiers];
                [(SAAppPath *)v17 addGroupContainerIDs:groupContainerIdentifiers2];
              }

              v50 = [applicationExtensionRecords countByEnumeratingWithState:&v69 objects:v78 count:16];
            }

            while (v50);
          }

          plugin = pluginCopy;
        }

        v54 = [NSNumber numberWithBool:[(SAAppPath *)v17 isAppRecordUserVisible:recordCopy]];
        isAppRecordUserVisible = v17->_isAppRecordUserVisible;
        v17->_isAppRecordUserVisible = v54;

        v17->_isPlugin = plugin;
        v17->_isGroup = group;
        goto LABEL_44;
      }

      [(SAAppPath *)v17 addUniquePath:?];
    }

    else if (group)
    {
      goto LABEL_34;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = sub_10000185C(recordCopy);
      allKeys = [v20 allKeys];
      v22 = recordCopy;
      bundleContainerURL = [v22 bundleContainerURL];
      v61 = pathCopy;
      v62 = identifierCopy;
      if (bundleContainerURL)
      {
        goto LABEL_17;
      }

      executableURL = [v22 executableURL];
      v65 = sub_100001A5C([executableURL fileSystemRepresentation]);

      v25 = SALog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        sub_10003CC2C();
      }

      bundleContainerURL = v65;
      if (v65)
      {
LABEL_17:
        v66 = bundleContainerURL;
        path = [bundleContainerURL path];
        [(SAAppPath *)v17 addBinaryPath:path];

        v68 = 1;
      }

      else
      {
        v68 = 0;
        v66 = 0;
      }

      v57 = v22;
      pluginCopy2 = plugin;
      groupCopy = group;
      if (allKeys)
      {
        v27 = [NSMutableSet setWithArray:allKeys];
        [(SAAppPath *)v17 addWriterIDs:v27];
      }

      v58 = allKeys;
      v59 = v20;
      v75 = 0u;
      v76 = 0u;
      v73 = 0u;
      v74 = 0u;
      obj = [v20 allValues];
      v28 = [obj countByEnumeratingWithState:&v73 objects:v79 count:16];
      if (v28)
      {
        v29 = v28;
        v30 = *v74;
        do
        {
          for (j = 0; j != v29; j = j + 1)
          {
            if (*v74 != v30)
            {
              objc_enumerationMutation(obj);
            }

            v32 = *(*(&v73 + 1) + 8 * j);
            v33 = [v32 objectForKeyedSubscript:@"CONTAINER_CLASS_APPLICATION"];
            v34 = sub_10000CA38(v33);

            if (v34)
            {
              if (!v68 || (+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", [v34 fileSystemRepresentation]), v35 = objc_claimAutoreleasedReturnValue(), +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", objc_msgSend(v66, "fileSystemRepresentation")), v36 = objc_claimAutoreleasedReturnValue(), v37 = objc_msgSend(v35, "hasPrefix:", v36), v36, v35, (v37 & 1) == 0))
              {
                path2 = [v34 path];
                [(SAAppPath *)v17 addBinaryPath:path2];
              }
            }

            v39 = [v32 objectForKeyedSubscript:@"CONTAINER_CLASS_APPLICATION_DATA"];
            v40 = sub_10000CA38(v39);

            path3 = [v40 path];
            [(SAAppPath *)v17 addUniquePath:path3];
          }

          v29 = [obj countByEnumeratingWithState:&v73 objects:v79 count:16];
        }

        while (v29);
      }

      identifierCopy = v62;
      pathCopy = v61;
      group = groupCopy;
      plugin = pluginCopy2;
      v18 = &SBSCopyDisplayIdentifiers_ptr;
    }

    else
    {
      executableURL2 = [recordCopy executableURL];

      if (executableURL2)
      {
        executableURL3 = [recordCopy executableURL];
        v44 = sub_100001A5C([executableURL3 fileSystemRepresentation]);
        path4 = [v44 path];
        [(SAAppPath *)v17 addBinaryPath:path4];
      }
    }

    goto LABEL_34;
  }

  v19 = SALog();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    sub_10003CCA0();
  }

LABEL_44:
  return v17;
}

- (int)urgency
{
  lastUsed = [(SAAppPath *)self lastUsed];
  v3 = urgencyForDate(lastUsed);

  return v3;
}

- (BOOL)forceHidden
{
  if (qword_1000736B8 != -1)
  {
    sub_10003CD20();
  }

  v3 = qword_1000736B0;
  identifier = [(SAAppPath *)self identifier];
  v5 = [v3 objectForKey:identifier];
  v6 = [v5 isEqual:&__kCFBooleanTrue];

  return v6;
}

- (BOOL)forceVisible
{
  if (qword_1000736C8 != -1)
  {
    sub_10003CD34();
  }

  v3 = qword_1000736C0;
  identifier = [(SAAppPath *)self identifier];
  v5 = [v3 objectForKey:identifier];
  v6 = [v5 isEqual:&__kCFBooleanTrue];

  if (v6)
  {
    return 1;
  }

  identifier2 = [(SAAppPath *)self identifier];
  v9 = [SALLMList isLLM:identifier2];

  return v9;
}

- (BOOL)isAppRecordUserVisible:(id)visible
{
  visibleCopy = visible;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = visibleCopy;
    v5 = v4;
    if (v4)
    {
      if ([v4 developerType] == 1 && (objc_msgSend(v5, "isDeletable") & 1) == 0)
      {
        isSystemPlaceholder = [v5 isSystemPlaceholder];
      }

      else
      {
        isSystemPlaceholder = 1;
      }
    }

    else
    {
      isSystemPlaceholder = 0;
    }
  }

  else
  {
    isSystemPlaceholder = 0;
  }

  return isSystemPlaceholder;
}

- (id)appRecord
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_10000D0C4;
  v11 = sub_10000D0D4;
  v12 = 0;
  identifier = [(SAAppPath *)self identifier];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000D0DC;
  v6[3] = &unk_100064BB0;
  v6[4] = self;
  v6[5] = &v7;
  [SASupport getLSAppRecordForBundle:identifier reply:v6];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (BOOL)isAppUserVisible
{
  if ([(SAAppPath *)self forceVisible])
  {
    return 1;
  }

  if ([(SAAppPath *)self forceHidden]|| [(SAAppPath *)self isGroup]|| [(SAAppPath *)self isPlugin])
  {
    return 0;
  }

  v5 = SBSCopyDisplayIdentifiers();
  identifier = [(SAAppPath *)self identifier];
  v7 = [v5 containsObject:identifier];

  if (v7)
  {
    return 1;
  }

  isAppRecordUserVisible = [(SAAppPath *)self isAppRecordUserVisible];

  if (!isAppRecordUserVisible)
  {
    appRecord = [(SAAppPath *)self appRecord];
    if (appRecord)
    {
      v3 = [(SAAppPath *)self isAppRecordUserVisible:appRecord];
    }

    else
    {
      v11 = SALog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_10003CDE8(self);
      }

      v3 = 0;
    }

    return v3;
  }

  isAppRecordUserVisible = self->_isAppRecordUserVisible;

  return [(NSNumber *)isAppRecordUserVisible BOOLValue];
}

- (BOOL)isUserVisible
{
  isUserVisible = self->__isUserVisible;
  if (!isUserVisible)
  {
    v4 = [NSNumber numberWithBool:[(SAAppPath *)self isAppUserVisible]];
    v5 = self->__isUserVisible;
    self->__isUserVisible = v4;

    isUserVisible = self->__isUserVisible;
  }

  return [(NSNumber *)isUserVisible BOOLValue];
}

- (id)getDictionary
{
  v3 = objc_opt_new();
  v4 = v3;
  if (v3)
  {
    [v3 setObject:self->identifier forKeyedSubscript:@"SPACE_ATTRIBUTION_OWNER"];
    v5 = objc_opt_new();
    [v4 setObject:v5 forKeyedSubscript:@"SPACE_ATTRIBUTION_WRITERS"];

    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v6 = self->writersIDs;
    v7 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v54 objects:v61 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v55;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v55 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v54 + 1) + 8 * i);
          v12 = [v4 objectForKeyedSubscript:@"SPACE_ATTRIBUTION_WRITERS"];
          [v12 addObject:v11];
        }

        v8 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v54 objects:v61 count:16];
      }

      while (v8);
    }

    v13 = objc_opt_new();
    [v4 setObject:v13 forKeyedSubscript:@"SPACE_ATTRIBUTION_PATHS"];

    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v14 = self->uniquePaths;
    v15 = [(NSMutableSet *)v14 countByEnumeratingWithState:&v50 objects:v60 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v51;
      do
      {
        for (j = 0; j != v16; j = j + 1)
        {
          if (*v51 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v50 + 1) + 8 * j);
          v20 = [v4 objectForKeyedSubscript:@"SPACE_ATTRIBUTION_PATHS"];
          [v20 addObject:v19];
        }

        v16 = [(NSMutableSet *)v14 countByEnumeratingWithState:&v50 objects:v60 count:16];
      }

      while (v16);
    }

    v21 = objc_opt_new();
    [v4 setObject:v21 forKeyedSubscript:@"SPACE_ATTRIBUTION_SHARED"];

    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v22 = self->sharedPaths;
    v23 = [(NSMutableSet *)v22 countByEnumeratingWithState:&v46 objects:v59 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v47;
      do
      {
        for (k = 0; k != v24; k = k + 1)
        {
          if (*v47 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = *(*(&v46 + 1) + 8 * k);
          v28 = [v4 objectForKeyedSubscript:@"SPACE_ATTRIBUTION_SHARED"];
          [v28 addObject:v27];
        }

        v24 = [(NSMutableSet *)v22 countByEnumeratingWithState:&v46 objects:v59 count:16];
      }

      while (v24);
    }

    v29 = objc_opt_new();
    [v4 setObject:v29 forKeyedSubscript:@"SPACE_ATTRIBUTION_EXECUTABLE"];

    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v30 = self->binaryPaths;
    v31 = [(NSMutableSet *)v30 countByEnumeratingWithState:&v42 objects:v58 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v43;
      do
      {
        for (m = 0; m != v32; m = m + 1)
        {
          if (*v43 != v33)
          {
            objc_enumerationMutation(v30);
          }

          v35 = *(*(&v42 + 1) + 8 * m);
          v36 = [v4 objectForKeyedSubscript:{@"SPACE_ATTRIBUTION_EXECUTABLE", v42}];
          [v36 addObject:v35];
        }

        v32 = [(NSMutableSet *)v30 countByEnumeratingWithState:&v42 objects:v58 count:16];
      }

      while (v32);
    }

    dataContainerPath = [(SAAppPath *)self dataContainerPath];

    if (dataContainerPath)
    {
      dataContainerPath2 = [(SAAppPath *)self dataContainerPath];
      [v4 setObject:dataContainerPath2 forKeyedSubscript:@"SPACE_ATTRIBUTION_CONTAINER_URL"];
    }

    v39 = [NSNumber numberWithUnsignedLongLong:[(SAAppPath *)self getAppCacheSize]];
    [v4 setObject:v39 forKeyedSubscript:@"cache_size"];

    v40 = [NSNumber numberWithUnsignedLongLong:[(SAAppPath *)self tempSize]];
    [v4 setObject:v40 forKeyedSubscript:@"tmp_size"];
  }

  return v4;
}

- (void)getAppCacheInfo:(id)info
{
  infoCopy = info;
  cachePath = [(SAAppPath *)self cachePath];

  if (cachePath)
  {
    v5 = objc_opt_new();
    cachePath2 = [(SAAppPath *)self cachePath];
    v7 = [v5 getFolderSizeAtPath:cachePath2 options:6];

    volumePath = [v7 volumePath];
    v9 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v7 dirStatsID]);
    infoCopy[2](infoCopy, volumePath, v9, [v7 dataSize], objc_msgSend(v7, "fileCount"));
  }

  else
  {
    infoCopy[2](infoCopy, 0, 0, 0, 0);
  }
}

- (unint64_t)getAppCacheSize
{
  cachePath = [(SAAppPath *)self cachePath];

  if (!cachePath)
  {
    return 0;
  }

  v4 = objc_opt_new();
  cachePath2 = [(SAAppPath *)self cachePath];
  v6 = [v4 getFolderSizeAtPath:cachePath2 options:6];

  dataSize = [v6 dataSize];
  return dataSize;
}

- (unint64_t)tempSize
{
  tmpPath = [(SAAppPath *)self tmpPath];

  if (!tmpPath)
  {
    return 0;
  }

  tmpPath2 = [(SAAppPath *)self tmpPath];
  v5 = [0 getFolderSizeAtPath:tmpPath2 options:2];

  dataSize = [v5 dataSize];
  return dataSize;
}

- (id)cachePath
{
  dataContainerPath = [(SAAppPath *)self dataContainerPath];

  if (dataContainerPath)
  {
    dataContainerPath2 = [(SAAppPath *)self dataContainerPath];
    v5 = [dataContainerPath2 stringByAppendingPathComponent:@"Library/Caches"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)tmpPath
{
  dataContainerPath = [(SAAppPath *)self dataContainerPath];

  if (dataContainerPath)
  {
    dataContainerPath2 = [(SAAppPath *)self dataContainerPath];
    v5 = [dataContainerPath2 stringByAppendingPathComponent:@"tmp"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (int64_t)threeDaysAgo
{
  v4.tv_sec = 0;
  *&v4.tv_usec = 0;
  if (gettimeofday(&v4, 0))
  {
    v2 = SALog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_10003CF2C();
    }
  }

  return v4.tv_sec - 259200;
}

@end