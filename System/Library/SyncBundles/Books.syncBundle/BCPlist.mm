@interface BCPlist
+ (id)promisableItemsFromItems:(id)items;
- (BCPlist)initWithPath:(id)path;
- (BOOL)addItems:(id)items;
- (BOOL)isExistingEntry:(id)entry;
- (BOOL)removeItemsByPersistentID:(id)d;
- (BOOL)replaceItems:(id)items;
- (id)books;
- (id)booksSortedByKey:(id)key;
- (id)entriesWithPath;
- (id)existingPersistentIDs;
- (id)objectForKey:(id)key;
- (id)paths;
- (id)sortedPaths;
- (id)sortedPersistentIDs:(BOOL)ds;
- (id)unfilteredPersistentIDs;
- (id)uploadsByPersistentID;
- (void)dealloc;
- (void)generateDirectory;
- (void)processDeletesFile;
- (void)regenerateMissingEstimatedDownloadSizes;
- (void)regenerateMissingPersistentIDs;
- (void)removeItemsFromSidecar:(id)sidecar;
- (void)resetPaths;
@end

@implementation BCPlist

- (BCPlist)initWithPath:(id)path
{
  v4 = [(BCPlist *)self init];
  if (v4)
  {
    v4->_path = path;
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

- (BOOL)isExistingEntry:(id)entry
{
  v5 = +[NSFileManager defaultManager];
  v6 = objc_opt_class();
  v7 = BCDynamicCast(v6, [entry objectForKey:@"Path"]);
  if ([v7 length] && -[NSFileManager fileExistsAtPath:](v5, "fileExistsAtPath:", -[NSString stringByAppendingPathComponent:](-[NSString stringByDeletingLastPathComponent](-[BCPlist path](self, "path"), "stringByDeletingLastPathComponent"), "stringByAppendingPathComponent:", v7)))
  {
    return 1;
  }

  v9 = BCDefaultLog();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  result = 0;
  if (v10)
  {
    path = [(BCPlist *)self path];
    v12 = @"is not nil";
    v13 = 138543874;
    v14 = path;
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
  books = [(BCPlist *)self books];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v4 = [books countByEnumeratingWithState:&v24 objects:v36 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v25;
    v22 = books;
    do
    {
      v7 = 0;
      do
      {
        if (*v25 != v6)
        {
          objc_enumerationMutation(books);
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
              path = [(BCPlist *)self path];
              v20 = [v10 objectForKey:@"Path"];
              *buf = 138543874;
              v29 = path;
              books = v22;
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
            path2 = [(BCPlist *)self path];
            v16 = [v10 objectForKey:@"Artist"];
            v17 = [v10 objectForKey:@"Name"];
            *buf = 138544130;
            v29 = path2;
            v30 = 2112;
            v31 = v16;
            books = v22;
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
      v5 = [books countByEnumeratingWithState:&v24 objects:v36 count:16];
    }

    while (v5);
  }

  return v23;
}

- (id)entriesWithPath
{
  v3 = +[NSMutableArray array];
  books = [(BCPlist *)self books];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [books countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(books);
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
      v6 = [books countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)unfilteredPersistentIDs
{
  v3 = +[NSMutableArray array];
  books = [(BCPlist *)self books];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [books countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(books);
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
      v6 = [books countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)sortedPersistentIDs:(BOOL)ds
{
  if (ds)
  {
    existingPersistentIDs = [(BCPlist *)self existingPersistentIDs];
  }

  else
  {
    existingPersistentIDs = [(BCPlist *)self unfilteredPersistentIDs];
  }

  v4 = existingPersistentIDs;
  if (![existingPersistentIDs count])
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
  books = [(BCPlist *)self books];
  if ([books count])
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = [books countByEnumeratingWithState:&v15 objects:v19 count:16];
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
            objc_enumerationMutation(books);
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
        v6 = [books countByEnumeratingWithState:&v15 objects:v19 count:16];
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

- (void)removeItemsFromSidecar:(id)sidecar
{
  v4 = objc_alloc_init(NSMutableArray);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [sidecar countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(sidecar);
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
      v6 = [sidecar countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  if ([v4 count])
  {
    v14 = [[BCSidecarTrimPlistProducer alloc] initWithPath:[[(NSString *)[(BCPlist *)self path] stringByDeletingLastPathComponent] stringByAppendingPathComponent:@"Deletes.plist"] removePaths:v4];
    [(BCPlistProducer *)v14 write];
  }
}

- (BOOL)addItems:(id)items
{
  v5 = [[BCAddEntriesPlistProducer alloc] initWithPath:[(BCPlist *)self path] entries:items];
  write = [(BCPlistProducer *)v5 write];

  if (write)
  {
    [(BCPlist *)self removeItemsFromSidecar:items];
  }

  return write;
}

- (BOOL)replaceItems:(id)items
{
  v3 = [[BCAddEntriesPlistProducer alloc] initWithPath:[(BCPlist *)self path] entries:items];
  [(BCAddEntriesPlistProducer *)v3 replace:1];
  write = [(BCPlistProducer *)v3 write];

  return write;
}

- (void)generateDirectory
{
  stringByDeletingLastPathComponent = [(NSString *)[(BCPlist *)self path] stringByDeletingLastPathComponent];
  if ([(NSString *)stringByDeletingLastPathComponent length])
  {
    v3 = +[NSFileManager defaultManager];
    if (![(NSFileManager *)v3 fileExistsAtPath:stringByDeletingLastPathComponent])
    {
      v4[0] = NSFileOwnerAccountName;
      v4[1] = NSFileGroupOwnerAccountName;
      v5[0] = @"mobile";
      v5[1] = @"mobile";
      [(NSFileManager *)v3 createDirectoryAtPath:stringByDeletingLastPathComponent withIntermediateDirectories:1 attributes:[NSDictionary error:"dictionaryWithObjects:forKeys:count:" dictionaryWithObjects:v5 forKeys:v4 count:2], 0];
    }
  }
}

- (id)objectForKey:(id)key
{
  result = [NSDictionary dictionaryWithContentsOfFile:[(BCPlist *)self path]];
  if (result)
  {

    return [result objectForKey:key];
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

- (id)booksSortedByKey:(id)key
{
  books = [(BCPlist *)self books];

  return [books arrayOfDictionariesSortedByKey:@"Persistent ID"];
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

- (BOOL)removeItemsByPersistentID:(id)d
{
  v5 = BCDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    dCopy = d;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Removing items with IDs %@.", &v9, 0xCu);
  }

  v6 = [[BCRemovePersistentIDPlistProducer alloc] initWithPath:[(BCPlist *)self path] persistentIDs:d];
  write = [(BCPlistProducer *)v6 write];

  return write;
}

+ (id)promisableItemsFromItems:(id)items
{
  v4 = +[NSMutableArray array];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = [items countByEnumeratingWithState:&v21 objects:v29 count:16];
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
          objc_enumerationMutation(items);
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

      v6 = [items countByEnumeratingWithState:&v21 objects:v29 count:16];
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
    path = [(BCPlist *)self path];
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Resetting paths in %{public}@.", buf, 0xCu);
  }

  v37 = objc_alloc_init(NSAutoreleasePool);
  [(BCPlist *)self regenerateMissingPersistentIDs];
  books = [(BCPlist *)self books];
  v41 = objc_alloc_init(NSMutableArray);
  v40 = +[NSFileManager defaultManager];
  selfCopy = self;
  stringByDeletingLastPathComponent = [(NSString *)[(BCPlist *)self path] stringByDeletingLastPathComponent];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = books;
  v6 = [books countByEnumeratingWithState:&v42 objects:v50 count:16];
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
          v16 = [(NSString *)stringByDeletingLastPathComponent stringByAppendingPathComponent:v15];
          v17 = [(NSFileManager *)v40 fileExistsAtPath:v16];
          v18 = BCDefaultLog();
          v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
          if (v17)
          {
            if (v19)
            {
              v20 = [v12 objectForKey:@"Persistent ID"];
              *buf = 138412546;
              path = v20;
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
            path = v33;
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
            path = v27;
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
              path = v26;
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
            path = v29;
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
    path = v35;
    _os_log_impl(&dword_0, v34, OS_LOG_TYPE_DEFAULT, "resetting paths -- rewriting %lu entries", buf, 0xCu);
  }

  v36 = [[BCAddEntriesPlistProducer alloc] initWithPath:[(BCPlist *)selfCopy path] entries:v41];
  [(BCAddEntriesPlistProducer *)v36 replace:1];
  [(BCPlistProducer *)v36 write];
}

- (void)processDeletesFile
{
  v3 = [[(NSString *)[(BCPlist *)self path] stringByDeletingLastPathComponent] stringByAppendingPathComponent:@"Deletes.plist"];
  v4 = [[BCIngestSidecarPlistProducer alloc] initWithPath:[(BCPlist *)self path] sidecarPath:v3];
  write = [(BCPlistProducer *)v4 write];
  filterMatches = [(BCIngestSidecarPlistProducer *)v4 filterMatches];

  if (write)
  {
    v6 = [[BCSidecarRewritePlistProducer alloc] initWithPath:v3 deletes:filterMatches];
    [(BCPlistProducer *)v6 write];
  }
}

@end