@interface SAAppPath
+ (BOOL)isValidAppPathPlist:(id)a3 writersID:(id)a4 uniquePaths:(id)a5 sharedPaths:(id)a6;
+ (BOOL)isValidAppPathPlistArray:(id)a3;
+ (BOOL)validatePaths:(id)a3;
+ (id)newFromPlist:(id)a3;
- (BOOL)forceHidden;
- (BOOL)forceVisible;
- (BOOL)isAppRecordUserVisible:(id)a3;
- (BOOL)isAppUserVisible;
- (BOOL)isUserVisible;
- (SAAppPath)init;
- (SAAppPath)initWithBundleID:(id)a3;
- (SAAppPath)initWithBundleID:(id)a3 writersIDs:(id)a4 uniquePaths:(id)a5 sharedPaths:(id)a6;
- (SAAppPath)initWithBundleRecord:(id)a3 identifier:(id)a4 dataContainerPath:(id)a5 personaUniqueString:(id)a6 isPlugin:(BOOL)a7 isGroup:(BOOL)a8;
- (SAAppPath)initWithCoder:(id)a3;
- (id)appRecord;
- (id)cachePath;
- (id)getDictionary;
- (id)tmpPath;
- (int)urgency;
- (int64_t)threeDaysAgo;
- (unint64_t)getAppCacheSize;
- (unint64_t)tempSize;
- (void)addBinaryPath:(id)a3;
- (void)addBinaryPaths:(id)a3;
- (void)addGroupContainerID:(id)a3;
- (void)addGroupContainerIDs:(id)a3;
- (void)addSharedPath:(id)a3;
- (void)addSharedPaths:(id)a3;
- (void)addUniquePath:(id)a3;
- (void)addUniquePaths:(id)a3;
- (void)addWriterID:(id)a3;
- (void)addWriterIDs:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)extendWithPropertiesFromAppPath:(id)a3;
- (void)getAppCacheInfo:(id)a3;
- (void)removeBinaryPath:(id)a3;
- (void)removeBinaryPaths:(id)a3;
- (void)removeSharedPath:(id)a3;
- (void)removeSharedPaths:(id)a3;
- (void)removeUniquePath:(id)a3;
- (void)removeUniquePaths:(id)a3;
- (void)removeWriterID:(id)a3;
- (void)removeWriterIDs:(id)a3;
- (void)updateLastUsedDate:(id)a3;
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

- (SAAppPath)initWithBundleID:(id)a3
{
  v5 = a3;
  v6 = [(SAAppPath *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->identifier, a3);
  }

  return v7;
}

- (SAAppPath)initWithBundleID:(id)a3 writersIDs:(id)a4 uniquePaths:(id)a5 sharedPaths:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = SAAppPath;
  v15 = [(SAAppPath *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->identifier, a3);
    objc_storeStrong(&v16->writersIDs, a4);
    objc_storeStrong(&v16->uniquePaths, a5);
    objc_storeStrong(&v16->sharedPaths, a6);
  }

  return v16;
}

+ (BOOL)isValidAppPathPlistArray:(id)a3
{
  v3 = a3;
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      v4 = v3;
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

+ (BOOL)isValidAppPathPlist:(id)a3 writersID:(id)a4 uniquePaths:(id)a5 sharedPaths:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (!v9)
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

  if (v10 && ![SAAppPath isValidAppPathPlistArray:v10])
  {
    v14 = SALog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10003C8A4();
    }

    goto LABEL_20;
  }

  if (v11 && ![SAAppPath isValidAppPathPlistArray:v11])
  {
    v14 = SALog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10003C8E0();
    }

    goto LABEL_20;
  }

  if (v12 && ![SAAppPath isValidAppPathPlistArray:v12])
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

+ (BOOL)validatePaths:(id)a3
{
  v3 = a3;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v17 objects:v23 count:16];
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
        objc_enumerationMutation(v3);
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
    v14 = [v3 countByEnumeratingWithState:&v17 objects:v23 count:16];
    v6 = v14;
  }

  while (v14);
LABEL_25:

  return v8 & 1;
}

+ (id)newFromPlist:(id)a3
{
  v4 = a3;
  v5 = +[NSFileManager defaultManager];
  if (![v5 fileExistsAtPath:v4] || (objc_msgSend(v4, "pathExtension"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isEqual:", @"plist"), v6, (v7 & 1) == 0))
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
  v8 = [NSData dataWithContentsOfFile:v4 options:2 error:&v63];
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
  v49 = a1;
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
  v46 = v4;
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
  v4 = v46;
  v10 = v44;
  if (([(objc_class *)v49 validatePaths:v13]& 1) == 0)
  {
    v41 = SALog();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      sub_10003CA74();
    }
  }

  if (([(objc_class *)v49 validatePaths:v48, v43]& 1) == 0)
  {
    v42 = SALog();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      sub_10003CAE4();
    }
  }

  v24 = [[v49 alloc] initWithBundleID:v47 writersIDs:v37 uniquePaths:v18 sharedPaths:v23];

  v11 = v47;
  v9 = 0;
LABEL_27:

  return v24;
}

- (void)addBinaryPaths:(id)a3
{
  v4 = a3;
  if (v4)
  {
    binaryPaths = self->binaryPaths;
    v8 = v4;
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

- (void)addBinaryPath:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v6 = v4;
    if ([v4 length])
    {
      v5 = [NSSet setWithObject:v6];
      [(SAAppPath *)self addBinaryPaths:v5];
    }
  }

  _objc_release_x1();
}

- (void)addUniquePath:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v6 = v4;
    if ([v4 length])
    {
      v5 = [NSMutableSet setWithObject:v6];
      [(SAAppPath *)self addUniquePaths:v5];
    }
  }

  _objc_release_x1();
}

- (void)addUniquePaths:(id)a3
{
  v4 = a3;
  if (v4)
  {
    uniquePaths = self->uniquePaths;
    v8 = v4;
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

- (void)addSharedPath:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v6 = v4;
    if ([v4 length])
    {
      v5 = [NSMutableSet setWithObject:v6];
      [(SAAppPath *)self addSharedPaths:v5];
    }
  }

  _objc_release_x1();
}

- (void)addSharedPaths:(id)a3
{
  v4 = a3;
  if (v4)
  {
    sharedPaths = self->sharedPaths;
    v8 = v4;
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

- (void)addWriterID:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v6 = v4;
    if ([v4 length])
    {
      v5 = [NSMutableSet setWithObject:v6];
      [(SAAppPath *)self addWriterIDs:v5];
    }
  }

  _objc_release_x1();
}

- (void)addGroupContainerID:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v6 = v4;
    if ([v4 length])
    {
      v5 = [NSMutableSet setWithObject:v6];
      [(SAAppPath *)self addGroupContainerIDs:v5];
    }
  }

  _objc_release_x1();
}

- (void)addGroupContainerIDs:(id)a3
{
  v4 = a3;
  if (v4)
  {
    groupContainerIdentifiers = self->_groupContainerIdentifiers;
    v8 = v4;
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

- (void)addWriterIDs:(id)a3
{
  v4 = a3;
  if (v4)
  {
    writersIDs = self->writersIDs;
    v9 = v4;
    if (!writersIDs)
    {
      v6 = objc_opt_new();
      v7 = self->writersIDs;
      self->writersIDs = v6;

      writersIDs = self->writersIDs;
    }

    v8 = [v9 allObjects];
    [(NSMutableSet *)writersIDs addObjectsFromArray:v8];

    v4 = v9;
  }
}

- (void)removeBinaryPath:(id)a3
{
  if (a3)
  {
    v4 = [NSSet setWithObject:?];
    [(SAAppPath *)self removeBinaryPaths:v4];
  }
}

- (void)removeBinaryPaths:(id)a3
{
  if (a3)
  {
    [(NSMutableSet *)self->binaryPaths minusSet:?];
  }
}

- (void)removeUniquePath:(id)a3
{
  if (a3)
  {
    v4 = [NSSet setWithObject:?];
    [(SAAppPath *)self removeUniquePaths:v4];
  }
}

- (void)removeUniquePaths:(id)a3
{
  if (a3)
  {
    [(NSMutableSet *)self->uniquePaths minusSet:?];
  }
}

- (void)removeWriterIDs:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->writersIDs)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
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

- (void)removeWriterID:(id)a3
{
  if (a3)
  {
    [(NSMutableSet *)self->writersIDs removeObject:?];
  }
}

- (void)removeSharedPath:(id)a3
{
  if (a3)
  {
    v4 = [NSSet setWithObject:?];
    [(SAAppPath *)self removeSharedPaths:v4];
  }
}

- (void)removeSharedPaths:(id)a3
{
  if (a3)
  {
    [(NSMutableSet *)self->sharedPaths minusSet:?];
  }
}

- (void)updateLastUsedDate:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v8 = v4;
    v5 = [v4 objectForKeyedSubscript:self->identifier];

    v4 = v8;
    if (v5)
    {
      v6 = [v8 objectForKeyedSubscript:self->identifier];
      lastUsed = self->_lastUsed;
      self->_lastUsed = v6;

      v4 = v8;
    }
  }
}

- (void)extendWithPropertiesFromAppPath:(id)a3
{
  v21 = a3;
  v4 = [v21 writersIDs];
  [(SAAppPath *)self addWriterIDs:v4];

  v5 = [v21 sharedPaths];
  [(SAAppPath *)self addSharedPaths:v5];

  v6 = [v21 uniquePaths];
  [(SAAppPath *)self addUniquePaths:v6];

  v7 = [v21 binaryPaths];
  [(SAAppPath *)self addBinaryPaths:v7];

  v8 = [v21 groupContainerIdentifiers];
  [(SAAppPath *)self addGroupContainerIDs:v8];

  v9 = [v21 lastUsed];

  if (v9)
  {
    lastUsed = self->_lastUsed;
    if (!lastUsed || ([v21 lastUsed], v11 = objc_claimAutoreleasedReturnValue(), v12 = -[NSDate compare:](lastUsed, "compare:", v11), v11, v12 == -1))
    {
      v13 = [v21 lastUsed];
      v14 = self->_lastUsed;
      self->_lastUsed = v13;
    }
  }

  if (!self->_dataContainerPath)
  {
    v15 = [v21 dataContainerPath];
    dataContainerPath = self->_dataContainerPath;
    self->_dataContainerPath = v15;
  }

  if ([(NSNumber *)self->_isAppRecordUserVisible BOOLValue])
  {
    v17 = 1;
  }

  else
  {
    v18 = [v21 isAppRecordUserVisible];
    v17 = [v18 BOOLValue];
  }

  v19 = [NSNumber numberWithBool:v17];
  isAppRecordUserVisible = self->_isAppRecordUserVisible;
  self->_isAppRecordUserVisible = v19;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"bundleID"];
  [v5 encodeObject:self->writersIDs forKey:@"writersIDs"];
  [v5 encodeObject:self->uniquePaths forKey:@"uniqueURLs"];
  [v5 encodeObject:self->sharedPaths forKey:@"sharedURLs"];
  [v5 encodeObject:self->binaryPaths forKey:@"binaryURLs"];
}

- (SAAppPath)initWithCoder:(id)a3
{
  v4 = a3;
  v32.receiver = self;
  v32.super_class = SAAppPath;
  v5 = [(SAAppPath *)&v32 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleID"];
    identifier = v5->identifier;
    v5->identifier = v6;

    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = [NSSet setWithObjects:v8, v9, objc_opt_class(), 0];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"writersIDs"];
    writersIDs = v5->writersIDs;
    v5->writersIDs = v11;

    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = [NSSet setWithObjects:v13, v14, v15, objc_opt_class(), 0];
    v17 = [v4 decodeObjectOfClasses:v16 forKey:@"uniqueURLs"];
    uniquePaths = v5->uniquePaths;
    v5->uniquePaths = v17;

    v19 = objc_opt_class();
    v20 = objc_opt_class();
    v21 = objc_opt_class();
    v22 = [NSSet setWithObjects:v19, v20, v21, objc_opt_class(), 0];
    v23 = [v4 decodeObjectOfClasses:v22 forKey:@"sharedURLs"];
    sharedPaths = v5->sharedPaths;
    v5->sharedPaths = v23;

    v25 = objc_opt_class();
    v26 = objc_opt_class();
    v27 = objc_opt_class();
    v28 = [NSSet setWithObjects:v25, v26, v27, objc_opt_class(), 0];
    v29 = [v4 decodeObjectOfClasses:v28 forKey:@"binaryURLs"];
    binaryPaths = v5->binaryPaths;
    v5->binaryPaths = v29;
  }

  return v5;
}

- (SAAppPath)initWithBundleRecord:(id)a3 identifier:(id)a4 dataContainerPath:(id)a5 personaUniqueString:(id)a6 isPlugin:(BOOL)a7 isGroup:(BOOL)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v77.receiver = self;
  v77.super_class = SAAppPath;
  v16 = [(SAAppPath *)&v77 init];
  v17 = v16;
  if (!v16)
  {
    goto LABEL_44;
  }

  if (v14)
  {
    objc_storeStrong(&v16->_dataContainerPath, a5);
    objc_storeStrong(&v17->identifier, a4);
    v18 = &SBSCopyDisplayIdentifiers_ptr;
    if (v17->_dataContainerPath)
    {
      if (a8)
      {
        [(SAAppPath *)v17 addSharedPath:?];
LABEL_34:
        v46 = [v13 groupContainerIdentifiers];
        [(SAAppPath *)v17 addGroupContainerIDs:v46];

        v47 = v18[221];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v64 = a7;
          v71 = 0u;
          v72 = 0u;
          v69 = 0u;
          v70 = 0u;
          v48 = [v13 applicationExtensionRecords];
          v49 = [v48 countByEnumeratingWithState:&v69 objects:v78 count:16];
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
                  objc_enumerationMutation(v48);
                }

                v53 = [*(*(&v69 + 1) + 8 * i) groupContainerIdentifiers];
                [(SAAppPath *)v17 addGroupContainerIDs:v53];
              }

              v50 = [v48 countByEnumeratingWithState:&v69 objects:v78 count:16];
            }

            while (v50);
          }

          a7 = v64;
        }

        v54 = [NSNumber numberWithBool:[(SAAppPath *)v17 isAppRecordUserVisible:v13]];
        isAppRecordUserVisible = v17->_isAppRecordUserVisible;
        v17->_isAppRecordUserVisible = v54;

        v17->_isPlugin = a7;
        v17->_isGroup = a8;
        goto LABEL_44;
      }

      [(SAAppPath *)v17 addUniquePath:?];
    }

    else if (a8)
    {
      goto LABEL_34;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = sub_10000185C(v13);
      v21 = [v20 allKeys];
      v22 = v13;
      v23 = [v22 bundleContainerURL];
      v61 = v15;
      v62 = v14;
      if (v23)
      {
        goto LABEL_17;
      }

      v24 = [v22 executableURL];
      v65 = sub_100001A5C([v24 fileSystemRepresentation]);

      v25 = SALog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        sub_10003CC2C();
      }

      v23 = v65;
      if (v65)
      {
LABEL_17:
        v66 = v23;
        v26 = [v23 path];
        [(SAAppPath *)v17 addBinaryPath:v26];

        v68 = 1;
      }

      else
      {
        v68 = 0;
        v66 = 0;
      }

      v57 = v22;
      v63 = a7;
      v60 = a8;
      if (v21)
      {
        v27 = [NSMutableSet setWithArray:v21];
        [(SAAppPath *)v17 addWriterIDs:v27];
      }

      v58 = v21;
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
                v38 = [v34 path];
                [(SAAppPath *)v17 addBinaryPath:v38];
              }
            }

            v39 = [v32 objectForKeyedSubscript:@"CONTAINER_CLASS_APPLICATION_DATA"];
            v40 = sub_10000CA38(v39);

            v41 = [v40 path];
            [(SAAppPath *)v17 addUniquePath:v41];
          }

          v29 = [obj countByEnumeratingWithState:&v73 objects:v79 count:16];
        }

        while (v29);
      }

      v14 = v62;
      v15 = v61;
      a8 = v60;
      a7 = v63;
      v18 = &SBSCopyDisplayIdentifiers_ptr;
    }

    else
    {
      v42 = [v13 executableURL];

      if (v42)
      {
        v43 = [v13 executableURL];
        v44 = sub_100001A5C([v43 fileSystemRepresentation]);
        v45 = [v44 path];
        [(SAAppPath *)v17 addBinaryPath:v45];
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
  v2 = [(SAAppPath *)self lastUsed];
  v3 = urgencyForDate(v2);

  return v3;
}

- (BOOL)forceHidden
{
  if (qword_1000736B8 != -1)
  {
    sub_10003CD20();
  }

  v3 = qword_1000736B0;
  v4 = [(SAAppPath *)self identifier];
  v5 = [v3 objectForKey:v4];
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
  v4 = [(SAAppPath *)self identifier];
  v5 = [v3 objectForKey:v4];
  v6 = [v5 isEqual:&__kCFBooleanTrue];

  if (v6)
  {
    return 1;
  }

  v8 = [(SAAppPath *)self identifier];
  v9 = [SALLMList isLLM:v8];

  return v9;
}

- (BOOL)isAppRecordUserVisible:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    v5 = v4;
    if (v4)
    {
      if ([v4 developerType] == 1 && (objc_msgSend(v5, "isDeletable") & 1) == 0)
      {
        v6 = [v5 isSystemPlaceholder];
      }

      else
      {
        v6 = 1;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)appRecord
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_10000D0C4;
  v11 = sub_10000D0D4;
  v12 = 0;
  v3 = [(SAAppPath *)self identifier];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000D0DC;
  v6[3] = &unk_100064BB0;
  v6[4] = self;
  v6[5] = &v7;
  [SASupport getLSAppRecordForBundle:v3 reply:v6];

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
  v6 = [(SAAppPath *)self identifier];
  v7 = [v5 containsObject:v6];

  if (v7)
  {
    return 1;
  }

  v8 = [(SAAppPath *)self isAppRecordUserVisible];

  if (!v8)
  {
    v10 = [(SAAppPath *)self appRecord];
    if (v10)
    {
      v3 = [(SAAppPath *)self isAppRecordUserVisible:v10];
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

    v37 = [(SAAppPath *)self dataContainerPath];

    if (v37)
    {
      v38 = [(SAAppPath *)self dataContainerPath];
      [v4 setObject:v38 forKeyedSubscript:@"SPACE_ATTRIBUTION_CONTAINER_URL"];
    }

    v39 = [NSNumber numberWithUnsignedLongLong:[(SAAppPath *)self getAppCacheSize]];
    [v4 setObject:v39 forKeyedSubscript:@"cache_size"];

    v40 = [NSNumber numberWithUnsignedLongLong:[(SAAppPath *)self tempSize]];
    [v4 setObject:v40 forKeyedSubscript:@"tmp_size"];
  }

  return v4;
}

- (void)getAppCacheInfo:(id)a3
{
  v10 = a3;
  v4 = [(SAAppPath *)self cachePath];

  if (v4)
  {
    v5 = objc_opt_new();
    v6 = [(SAAppPath *)self cachePath];
    v7 = [v5 getFolderSizeAtPath:v6 options:6];

    v8 = [v7 volumePath];
    v9 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v7 dirStatsID]);
    v10[2](v10, v8, v9, [v7 dataSize], objc_msgSend(v7, "fileCount"));
  }

  else
  {
    v10[2](v10, 0, 0, 0, 0);
  }
}

- (unint64_t)getAppCacheSize
{
  v3 = [(SAAppPath *)self cachePath];

  if (!v3)
  {
    return 0;
  }

  v4 = objc_opt_new();
  v5 = [(SAAppPath *)self cachePath];
  v6 = [v4 getFolderSizeAtPath:v5 options:6];

  v7 = [v6 dataSize];
  return v7;
}

- (unint64_t)tempSize
{
  v3 = [(SAAppPath *)self tmpPath];

  if (!v3)
  {
    return 0;
  }

  v4 = [(SAAppPath *)self tmpPath];
  v5 = [0 getFolderSizeAtPath:v4 options:2];

  v6 = [v5 dataSize];
  return v6;
}

- (id)cachePath
{
  v3 = [(SAAppPath *)self dataContainerPath];

  if (v3)
  {
    v4 = [(SAAppPath *)self dataContainerPath];
    v5 = [v4 stringByAppendingPathComponent:@"Library/Caches"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)tmpPath
{
  v3 = [(SAAppPath *)self dataContainerPath];

  if (v3)
  {
    v4 = [(SAAppPath *)self dataContainerPath];
    v5 = [v4 stringByAppendingPathComponent:@"tmp"];
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