@interface BCPlist
+ (id)promisableItemsFromItems:(id)a3;
- (BCPlist)initWithPath:(id)a3;
- (BOOL)addItems:(id)a3;
- (BOOL)isExistingEntry:(id)a3;
- (BOOL)removeItemsByPersistentID:(id)a3;
- (BOOL)replaceItems:(id)a3;
- (id)books;
- (id)booksSortedByKey:(id)a3;
- (id)entriesWithPath;
- (id)existingPersistentIDs;
- (id)objectForKey:(id)a3;
- (id)paths;
- (id)sortedPaths;
- (id)sortedPersistentIDs:(BOOL)a3;
- (id)unfilteredPersistentIDs;
- (id)uploadsByPersistentID;
- (void)dealloc;
- (void)generateDirectory;
- (void)processDeletesFile;
- (void)regenerateMissingEstimatedDownloadSizes;
- (void)regenerateMissingPersistentIDs;
- (void)removeItemsFromSidecar:(id)a3;
- (void)resetPaths;
@end

@implementation BCPlist

- (BCPlist)initWithPath:(id)a3
{
  v4 = [(BCPlist *)self init];
  if (v4)
  {
    v4->_path = a3;
    [(BCPlist *)v4 generateDirectory];
  }

  return v4;
}

- (void)dealloc
{
  self->_path = 0;
  v3.receiver = self;
  v3.super_class = BCPlist;
  [(BCPlist *)&v3 dealloc];
}

- (void)regenerateMissingPersistentIDs
{
  v2 = [(BCPlistProducer *)[BCGeneratePersistentIDPlistProducer alloc] initWithPath:[(BCPlist *)self path]];
  [(BCPlistProducer *)v2 write];
}

- (void)regenerateMissingEstimatedDownloadSizes
{
  v2 = [(BCPlistProducer *)[BCGenerateDownloadSizePlistProducer alloc] initWithPath:[(BCPlist *)self path]];
  [(BCPlistProducer *)v2 write];
}

- (BOOL)isExistingEntry:(id)a3
{
  v5 = +[NSFileManager defaultManager];
  v6 = objc_opt_class();
  v7 = BCDynamicCast(v6, [a3 objectForKey:@"Path"]);
  if ([v7 length] && -[NSFileManager fileExistsAtPath:](v5, "fileExistsAtPath:", -[NSString stringByAppendingPathComponent:](-[NSString stringByDeletingLastPathComponent](-[BCPlist path](self, "path"), "stringByDeletingLastPathComponent"), "stringByAppendingPathComponent:", v7)))
  {
    return 1;
  }

  v9 = BCDefaultLog();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  result = 0;
  if (v10)
  {
    v11 = [(BCPlist *)self path];
    v12 = @"is not nil";
    v13 = 138543874;
    v14 = v11;
    v15 = 2112;
    if (!v7)
    {
      v12 = @"is nil";
    }

    v16 = v7;
    v17 = 2112;
    v18 = v12;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Existing entry doesn't exist for plist %{public}@. EntryPath: %@ (%@)", &v13, 0x20u);
    return 0;
  }

  return result;
}

- (id)existingPersistentIDs
{
  v23 = +[NSMutableArray array];
  v3 = [(BCPlist *)self books];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v24 objects:v36 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v25;
    v22 = v3;
    do
    {
      v7 = 0;
      do
      {
        if (*v25 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v24 + 1) + 8 * v7);
        v9 = objc_opt_class();
        v10 = BCDynamicCast(v9, v8);
        v11 = objc_opt_class();
        v12 = BCDynamicCast(v11, [v10 objectForKey:@"Persistent ID"]);
        if (v12)
        {
          v13 = v12;
          if ([(BCPlist *)self isExistingEntry:v10])
          {
            [v23 addObject:v13];
          }

          else
          {
            v18 = BCDefaultLog();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              v19 = [(BCPlist *)self path];
              v20 = [v10 objectForKey:@"Path"];
              *buf = 138543874;
              v29 = v19;
              v3 = v22;
              v30 = 2112;
              v31 = v20;
              v32 = 2112;
              v33 = v13;
              _os_log_error_impl(&dword_0, v18, OS_LOG_TYPE_ERROR, "[%{public}@] Collecting persistentIDs - File Not Found: %@ - [%@]", buf, 0x20u);
            }
          }
        }

        else
        {
          v14 = BCDefaultLog();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            v15 = [(BCPlist *)self path];
            v16 = [v10 objectForKey:@"Artist"];
            v17 = [v10 objectForKey:@"Name"];
            *buf = 138544130;
            v29 = v15;
            v30 = 2112;
            v31 = v16;
            v3 = v22;
            v32 = 2112;
            v33 = v17;
            v34 = 2112;
            v35 = 0;
            _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "[%{public}@] Collecting persistentIDs - No Path || PersistentID -- {%@, %@} - [%@]", buf, 0x2Au);
          }
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v24 objects:v36 count:16];
    }

    while (v5);
  }

  return v23;
}

- (id)entriesWithPath
{
  v3 = +[NSMutableArray array];
  v4 = [(BCPlist *)self books];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      v8 = 0;
      do
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * v8);
        v10 = objc_opt_class();
        v11 = BCDynamicCast(v10, v9);
        v12 = objc_opt_class();
        if ([BCDynamicCast(v12 objc_msgSend(v11])
        {
          [v3 addObject:v11];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)unfilteredPersistentIDs
{
  v3 = +[NSMutableArray array];
  v4 = [(BCPlist *)self books];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      v8 = 0;
      do
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * v8);
        v10 = objc_opt_class();
        v11 = BCDynamicCast(v10, v9);
        v12 = objc_opt_class();
        v13 = BCDynamicCast(v12, [v11 objectForKey:@"Persistent ID"]);
        if ([v13 length])
        {
          [v3 addObject:v13];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)sortedPersistentIDs:(BOOL)a3
{
  if (a3)
  {
    v3 = [(BCPlist *)self existingPersistentIDs];
  }

  else
  {
    v3 = [(BCPlist *)self unfilteredPersistentIDs];
  }

  v4 = v3;
  if (![v3 count])
  {
    return 0;
  }

  v5 = [NSMutableArray arrayWithArray:v4];
  [(NSMutableArray *)v5 sortUsingSelector:"compare:"];
  return v5;
}

- (id)paths
{
  v3 = +[NSMutableArray array];
  v4 = [(BCPlist *)self books];
  if ([v4 count])
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v16;
      do
      {
        v8 = 0;
        do
        {
          if (*v16 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v15 + 1) + 8 * v8);
          v10 = objc_opt_class();
          v11 = BCDynamicCast(v10, v9);
          v12 = objc_opt_class();
          v13 = BCDynamicCast(v12, [v11 objectForKey:@"Path"]);
          if ([v13 length])
          {
            [v3 addObject:v13];
          }

          v8 = v8 + 1;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v6);
    }
  }

  return v3;
}

- (id)sortedPaths
{
  v2 = [NSMutableArray arrayWithArray:[(BCPlist *)self paths]];
  if ([(NSMutableArray *)v2 count])
  {
    [(NSMutableArray *)v2 sortUsingSelector:"compare:"];
  }

  return v2;
}

- (void)removeItemsFromSidecar:(id)a3
{
  v4 = objc_alloc_init(NSMutableArray);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [a3 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      v8 = 0;
      do
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(a3);
        }

        v9 = *(*(&v16 + 1) + 8 * v8);
        v10 = objc_opt_class();
        v11 = BCDynamicCast(v10, v9);
        v12 = objc_opt_class();
        v13 = BCDynamicCast(v12, [v11 objectForKey:@"Path"]);
        if ([v13 length])
        {
          [v4 addObject:v13];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [a3 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  if ([v4 count])
  {
    v14 = [[BCSidecarTrimPlistProducer alloc] initWithPath:[[(NSString *)[(BCPlist *)self path] stringByDeletingLastPathComponent] stringByAppendingPathComponent:@"Deletes.plist"] removePaths:v4];
    [(BCPlistProducer *)v14 write];
  }
}

- (BOOL)addItems:(id)a3
{
  v5 = [[BCAddEntriesPlistProducer alloc] initWithPath:[(BCPlist *)self path] entries:a3];
  v6 = [(BCPlistProducer *)v5 write];

  if (v6)
  {
    [(BCPlist *)self removeItemsFromSidecar:a3];
  }

  return v6;
}

- (BOOL)replaceItems:(id)a3
{
  v3 = [[BCAddEntriesPlistProducer alloc] initWithPath:[(BCPlist *)self path] entries:a3];
  [(BCAddEntriesPlistProducer *)v3 replace:1];
  v4 = [(BCPlistProducer *)v3 write];

  return v4;
}

- (void)generateDirectory
{
  v2 = [(NSString *)[(BCPlist *)self path] stringByDeletingLastPathComponent];
  if ([(NSString *)v2 length])
  {
    v3 = +[NSFileManager defaultManager];
    if (![(NSFileManager *)v3 fileExistsAtPath:v2])
    {
      v4[0] = NSFileOwnerAccountName;
      v4[1] = NSFileGroupOwnerAccountName;
      v5[0] = @"mobile";
      v5[1] = @"mobile";
      [(NSFileManager *)v3 createDirectoryAtPath:v2 withIntermediateDirectories:1 attributes:[NSDictionary error:"dictionaryWithObjects:forKeys:count:" dictionaryWithObjects:v5 forKeys:v4 count:2], 0];
    }
  }
}

- (id)objectForKey:(id)a3
{
  result = [NSDictionary dictionaryWithContentsOfFile:[(BCPlist *)self path]];
  if (result)
  {

    return [result objectForKey:a3];
  }

  return result;
}

- (id)books
{
  v2 = [(BCPlist *)self objectForKey:@"Books"];
  v3 = objc_opt_class();
  v4 = BCDynamicCast(v3, v2);
  v5 = v4;
  if (v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = v2 == 0;
  }

  if (v6)
  {
    if (!v4)
    {
      v7 = BCDefaultLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_11E64(v7);
      }
    }
  }

  else
  {
    v8 = BCDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_11EA8(v8);
    }
  }

  return v5;
}

- (id)booksSortedByKey:(id)a3
{
  v3 = [(BCPlist *)self books];

  return [v3 arrayOfDictionariesSortedByKey:@"Persistent ID"];
}

- (id)uploadsByPersistentID
{
  v2 = [NSDictionary dictionaryWithContentsOfFile:[(BCPlist *)self path]];
  if (v2)
  {
    v3 = objc_opt_class();
    v2 = BCDynamicCast(v3, [(NSDictionary *)v2 objectForKey:@"Persistent IDs"]);
  }

  if (![(NSDictionary *)v2 count])
  {
    return 0;
  }

  v4 = [NSMutableArray arrayWithArray:v2];
  [(NSMutableArray *)v4 sortUsingSelector:"compare:"];
  return v4;
}

- (BOOL)removeItemsByPersistentID:(id)a3
{
  v5 = BCDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = a3;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Removing items with IDs %@.", &v9, 0xCu);
  }

  v6 = [[BCRemovePersistentIDPlistProducer alloc] initWithPath:[(BCPlist *)self path] persistentIDs:a3];
  v7 = [(BCPlistProducer *)v6 write];

  return v7;
}

+ (id)promisableItemsFromItems:(id)a3
{
  v4 = +[NSMutableArray array];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = [a3 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v22;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(a3);
        }

        v9 = *(*(&v21 + 1) + 8 * i);
        v10 = objc_opt_class();
        v11 = BCDynamicCast(v10, v9);
        if ([BCPlist canPromiseItem:v11])
        {
          [v4 addObject:v11];
          v12 = BCDefaultLog();
          if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            continue;
          }

          v13 = [v11 objectForKey:@"Artist"];
          v14 = [v11 objectForKey:@"Name"];
          *buf = 138412546;
          v26 = v13;
          v27 = 2112;
          v28 = v14;
          v15 = v12;
          v16 = "Can Promise: {%@ - %@}";
        }

        else
        {
          v17 = BCDefaultLog();
          if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            continue;
          }

          v18 = [v11 objectForKey:@"Artist"];
          v19 = [v11 objectForKey:@"Name"];
          *buf = 138412546;
          v26 = v18;
          v27 = 2112;
          v28 = v19;
          v15 = v17;
          v16 = "Cannot Promise: {%@ - %@}";
        }

        _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, v16, buf, 0x16u);
      }

      v6 = [a3 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v6);
  }

  return v4;
}

- (void)resetPaths
{
  v3 = BCDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v47 = [(BCPlist *)self path];
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Resetting paths in %{public}@.", buf, 0xCu);
  }

  v37 = objc_alloc_init(NSAutoreleasePool);
  [(BCPlist *)self regenerateMissingPersistentIDs];
  v4 = [(BCPlist *)self books];
  v41 = objc_alloc_init(NSMutableArray);
  v40 = +[NSFileManager defaultManager];
  v38 = self;
  v5 = [(NSString *)[(BCPlist *)self path] stringByDeletingLastPathComponent];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = v4;
  v6 = [v4 countByEnumeratingWithState:&v42 objects:v50 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v43;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v43 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v42 + 1) + 8 * i);
        v11 = objc_opt_class();
        v12 = BCDynamicCast(v11, v10);
        v13 = [BCPlist canPromiseItem:v12];
        v14 = objc_opt_class();
        v15 = BCDynamicCast(v14, [v12 objectForKey:@"Path"]);
        if ([v15 length])
        {
          v16 = [(NSString *)v5 stringByAppendingPathComponent:v15];
          v17 = [(NSFileManager *)v40 fileExistsAtPath:v16];
          v18 = BCDefaultLog();
          v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
          if (v17)
          {
            if (v19)
            {
              v20 = [v12 objectForKey:@"Persistent ID"];
              *buf = 138412546;
              v47 = v20;
              v48 = 2112;
              v49 = v16;
              v21 = v18;
              v22 = "resetting paths -- Entry exists: %@ -- [%@]";
              v23 = 22;
              goto LABEL_15;
            }

            goto LABEL_16;
          }

          if (!v13)
          {
            if (!v19)
            {
              continue;
            }

            v33 = [v12 objectForKey:@"Persistent ID"];
            *buf = 138412546;
            v47 = v33;
            v48 = 2112;
            v49 = v16;
            v30 = v18;
            v31 = "resetting paths -- Entry does not stat: %@ -- [%@] -- Cannot promise";
            v32 = 22;
            goto LABEL_25;
          }

          if (v19)
          {
            v27 = [v12 objectForKey:@"Persistent ID"];
            *buf = 138412546;
            v47 = v27;
            v48 = 2112;
            v49 = v16;
            _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "resetting paths -- Entry does not stat: %@ -- [%@]", buf, 0x16u);
          }

          v28 = [[NSMutableDictionary alloc] initWithDictionary:v12];
          [v28 removeObjectForKey:@"Backup-Path"];
          [v28 removeObjectForKey:@"Path"];
          [v28 setObject:v16 forKey:@"Backup-Path"];
          [v41 addObject:v28];
        }

        else
        {
          v24 = BCDefaultLog();
          v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
          if (v13)
          {
            if (v25)
            {
              v26 = [v12 objectForKey:@"Persistent ID"];
              *buf = 138412290;
              v47 = v26;
              v21 = v24;
              v22 = "resetting paths -- Entry without a path: %@";
              v23 = 12;
LABEL_15:
              _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEFAULT, v22, buf, v23);
            }

LABEL_16:
            [v41 addObject:v12];
            continue;
          }

          if (v25)
          {
            v29 = [v12 objectForKey:@"Persistent ID"];
            *buf = 138412290;
            v47 = v29;
            v30 = v24;
            v31 = "resetting paths -- Entry without a path: %@ -- Cannot promise";
            v32 = 12;
LABEL_25:
            _os_log_impl(&dword_0, v30, OS_LOG_TYPE_DEFAULT, v31, buf, v32);
            continue;
          }
        }
      }

      v7 = [obj countByEnumeratingWithState:&v42 objects:v50 count:16];
    }

    while (v7);
  }

  v34 = BCDefaultLog();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    v35 = [v41 count];
    *buf = 134217984;
    v47 = v35;
    _os_log_impl(&dword_0, v34, OS_LOG_TYPE_DEFAULT, "resetting paths -- rewriting %lu entries", buf, 0xCu);
  }

  v36 = [[BCAddEntriesPlistProducer alloc] initWithPath:[(BCPlist *)v38 path] entries:v41];
  [(BCAddEntriesPlistProducer *)v36 replace:1];
  [(BCPlistProducer *)v36 write];
}

- (void)processDeletesFile
{
  v3 = [[(NSString *)[(BCPlist *)self path] stringByDeletingLastPathComponent] stringByAppendingPathComponent:@"Deletes.plist"];
  v4 = [[BCIngestSidecarPlistProducer alloc] initWithPath:[(BCPlist *)self path] sidecarPath:v3];
  v5 = [(BCPlistProducer *)v4 write];
  v7 = [(BCIngestSidecarPlistProducer *)v4 filterMatches];

  if (v5)
  {
    v6 = [[BCSidecarRewritePlistProducer alloc] initWithPath:v3 deletes:v7];
    [(BCPlistProducer *)v6 write];
  }
}

@end