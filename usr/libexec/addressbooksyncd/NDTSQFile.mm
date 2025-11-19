@interface NDTSQFile
- (NDTSQFile)initWithPath:(id)a3;
- (NDTSQFile)initWithPath:(id)a3 queue:(id)a4;
- (NDTSQFile)initWithURL:(id)a3;
- (NDTSQFileDelegate)delegate;
- (id)_loadCache:(id)a3 sqlErr:(int *)a4;
- (id)_makeSqlErrorReasonString:(id)a3;
- (int64_t)changes;
- (void)_addSchema:(id)a3;
- (void)_bootstrap;
- (void)_createParentDirectory;
- (void)_databaseChangedExternally;
- (void)_executeSql:(id)a3;
- (void)_newPath;
- (void)_openDatabase;
- (void)_parseSql:(id)a3 andRun:(id)a4;
- (void)_prepDatabase;
- (void)_recreatePath;
- (void)_watchWalFile;
- (void)addSchema:(id)a3;
- (void)begin;
- (void)commit;
- (void)executeSql:(id)a3;
- (void)parseSql:(id)a3 andRun:(id)a4;
- (void)rollback;
@end

@implementation NDTSQFile

- (NDTSQFile)initWithURL:(id)a3
{
  v4 = [a3 path];
  v5 = [(NDTSQFile *)self initWithPath:v4];

  return v5;
}

- (NDTSQFile)initWithPath:(id)a3
{
  v4 = a3;
  v5 = [NSString stringWithFormat:@"NDTSQFile.%@", v4];
  v6 = [v5 UTF8String];
  v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v8 = dispatch_queue_create(v6, v7);

  v9 = [(NDTSQFile *)self initWithPath:v4 queue:v8];
  return v9;
}

- (NDTSQFile)initWithPath:(id)a3 queue:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = NDTSQFile;
  v9 = [(NDTSQFile *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_pathTemplate, a3);
    v11 = [[NSHashTable alloc] initWithOptions:5 capacity:4];
    memberSchemas = v10->_memberSchemas;
    v10->_memberSchemas = v11;

    v10->_memberSchemasLock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v10->_q, a4);
    [(NDTSQFile *)v10 _bootstrap];
  }

  return v10;
}

- (void)_newPath
{
  v8 = +[NSDate date];
  v3 = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
  v4 = [v3 components:252 fromDate:v8];
  v5 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%04d%02d%02d-%02d%02d%02d", [v4 year], objc_msgSend(v4, "month"), objc_msgSend(v4, "day"), objc_msgSend(v4, "hour"), objc_msgSend(v4, "minute"), objc_msgSend(v4, "second"));
  v6 = [(NSString *)self->_pathTemplate stringByReplacingOccurrencesOfString:@"%t" withString:v5];
  path = self->_path;
  self->_path = v6;
}

- (void)_bootstrap
{
  v3 = [[NSMutableOrderedSet alloc] initWithCapacity:50];
  statementCache = self->_statementCache;
  self->_statementCache = v3;

  [(NDTSQFile *)self _recreatePath];
  [(NDTSQFile *)self _createParentDirectory];
  [(NDTSQFile *)self _openDatabase];
  [(NDTSQFile *)self _prepDatabase];

  [(NDTSQFile *)self _watchWalFile];
}

- (void)_recreatePath
{
  v4 = [(NDTSQFile *)self delegate];
  if (v4 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v3 = [v4 newFileName:self];
    if (v3)
    {
      objc_storeStrong(&self->_pathTemplate, v3);
    }
  }

  [(NDTSQFile *)self _newPath];
}

- (void)_createParentDirectory
{
  v3 = [(NDTSQFile *)self path];
  v4 = [v3 isEqual:@":memory:"];

  if ((v4 & 1) == 0)
  {
    v5 = +[NSFileManager defaultManager];
    v6 = [(NDTSQFile *)self path];
    v7 = [v6 stringByDeletingLastPathComponent];

    if (v7 && [v7 length])
    {
      v15[0] = NSFileOwnerAccountName;
      v15[1] = NSFileGroupOwnerAccountName;
      v16[0] = @"mobile";
      v16[1] = @"mobile";
      v15[2] = NSFilePosixPermissions;
      v16[2] = &off_100061280;
      v8 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:3];
      v9 = 0;
      do
      {

        v14 = 0;
        v10 = [v5 createDirectoryAtPath:v7 withIntermediateDirectories:1 attributes:v8 error:&v14];
        v11 = v14;
        v9 = v11;
        if (v10)
        {
          break;
        }

        v12 = [v11 domain];
        if (![v12 isEqualToString:NSCocoaErrorDomain])
        {

          break;
        }

        v13 = [v9 code];
      }

      while (v13 == 516);
    }
  }
}

- (void)_openDatabase
{
  v3 = [(NDTSQFile *)self path];
  v4 = sqlite3_open_v2([v3 UTF8String], &self->_db, 4194310, 0);

  if (v4)
  {
    [(NDTSQFile *)self _makeSqlErrorReasonString:@"_openDatabase(1)"];
    v5 = [NDTSQException exceptionWithName:@"NDTSQError" reason:objc_claimAutoreleasedReturnValue() userInfo:0];
    objc_exception_throw(v5);
  }
}

- (void)_prepDatabase
{
  [(NDTSQFile *)self _executeSql:@"pragma journal_mode=wal"];
  v3 = [[NDTSQKeyValueStore alloc] initWithName:@"_SQ_Versions"];
  instanceVersions = self->_instanceVersions;
  self->_instanceVersions = v3;

  v5 = self->_instanceVersions;

  [(NDTSQFile *)self addSchema:v5];
}

- (void)_watchWalFile
{
  objc_initWeak(&location, self);
  v3 = [(NDTSQFile *)self path];
  v4 = [NSString stringWithFormat:@"%@-wal", v3];
  v5 = open([v4 UTF8String], 0x8000);

  if (v5 != -1)
  {
    v6 = dispatch_source_create(&_dispatch_source_type_vnode, v5, 2uLL, self->_q);
    readSource = self->_readSource;
    self->_readSource = v6;

    v8 = self->_readSource;
    if (v8)
    {
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_100012778;
      handler[3] = &unk_10005CE40;
      objc_copyWeak(&v13, &location);
      dispatch_source_set_event_handler(v8, handler);
      v9 = self->_readSource;
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_100012864;
      v10[3] = &unk_10005CFA0;
      v11 = v5;
      dispatch_source_set_cancel_handler(v9, v10);
      dispatch_resume(self->_readSource);
      objc_destroyWeak(&v13);
    }

    else
    {
      close(v5);
    }
  }

  objc_destroyWeak(&location);
}

- (void)_databaseChangedExternally
{
  os_unfair_lock_lock(&self->_memberSchemasLock);
  v3 = [(NSHashTable *)self->_memberSchemas copy];
  os_unfair_lock_unlock(&self->_memberSchemasLock);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * v8);
        q = self->_q;
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1000129E0;
        block[3] = &unk_10005CDF0;
        block[4] = v9;
        dispatch_async(q, block);
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }
}

- (void)_addSchema:(id)a3
{
  v8 = a3;
  [v8 setDb:self];
  [v8 createTables];
  v4 = [v8 instanceName];
  v5 = [v8 currentVersion];
  v6 = [(NDTSQFile *)self _instanceVersion:v4];
  if (v6 != v5)
  {
    [v8 migrateFrom:v6];
    [(NDTSQFile *)self _setInstance:v4 version:v5];
  }

  v7 = [(NSHashTable *)self->_memberSchemas member:v8];

  if (!v7)
  {
    [(NSHashTable *)self->_memberSchemas addObject:v8];
  }
}

- (void)addSchema:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_memberSchemasLock);
  [(NDTSQFile *)self _addSchema:v4];

  os_unfair_lock_unlock(&self->_memberSchemasLock);
}

- (id)_makeSqlErrorReasonString:(id)a3
{
  db = self->_db;
  v4 = a3;
  v5 = sqlite3_errcode(db);
  v6 = [NSString stringWithFormat:@"%@: %s", v4, sqlite3_errstr(v5)];

  return v6;
}

- (void)executeSql:(id)a3
{
  v4 = a3;
  q = self->_q;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100012C20;
  v7[3] = &unk_10005CFC8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(q, v7);
}

- (void)_executeSql:(id)a3
{
  v4 = a3;
  ppStmt = 0;
  if (sqlite3_prepare_v2(-[NDTSQFile db](self, "db"), [v4 UTF8String], -1, &ppStmt, 0) || ((v5 = sqlite3_step(ppStmt), (v5 - 100) >= 2) ? (v6 = v5 == 0) : (v6 = 1), !v6))
  {
    [(NDTSQFile *)self _makeSqlErrorReasonString:@"_executeSql(1)"];
    v7 = [NDTSQException exceptionWithName:@"NDTSQError" reason:objc_claimAutoreleasedReturnValue() userInfo:0];
    objc_exception_throw(v7);
  }

  sqlite3_finalize(ppStmt);
}

- (void)parseSql:(id)a3 andRun:(id)a4
{
  v6 = a3;
  v7 = a4;
  q = self->_q;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100012DC0;
  block[3] = &unk_10005CFF0;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_sync(q, block);
}

- (id)_loadCache:(id)a3 sqlErr:(int *)a4
{
  v6 = a3;
  *a4 = 0;
  v7 = [[NDTSQStatement alloc] initWithQueue:self->_q text:v6];
  v8 = [(NSMutableOrderedSet *)self->_statementCache indexOfObject:v7];
  statementCache = self->_statementCache;
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if ([(NSMutableOrderedSet *)statementCache count]>= 0x32)
    {
      do
      {
        v10 = self->_statementCache;
        v11 = [(NSMutableOrderedSet *)v10 lastObject];
        [(NSMutableOrderedSet *)v10 removeObject:v11];
      }

      while ([(NSMutableOrderedSet *)self->_statementCache count]> 0x31);
    }

    ppStmt = 0;
    v12 = sqlite3_prepare_v2(-[NDTSQFile db](self, "db"), [v6 UTF8String], -1, &ppStmt, 0);
    if (v12)
    {
      v13 = 0;
      *a4 = v12;
      goto LABEL_9;
    }

    [(NDTSQStatement *)v7 setParsed:ppStmt];
    [(NDTSQStatement *)v7 setRawDb:[(NDTSQFile *)self db]];
  }

  else
  {
    v14 = [(NSMutableOrderedSet *)statementCache objectAtIndex:v8];

    [(NSMutableOrderedSet *)self->_statementCache removeObjectAtIndex:v8];
    v7 = v14;
  }

  [(NSMutableOrderedSet *)self->_statementCache insertObject:v7 atIndex:0];
  [(NDTSQStatement *)v7 resetBindCursor];
  v7 = v7;
  v13 = v7;
LABEL_9:

  return v13;
}

- (void)_parseSql:(id)a3 andRun:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15 = 0;
  v8 = [(NDTSQFile *)self _loadCache:v6 sqlErr:&v15];
  if (v15)
  {
    v9 = 1;
  }

  else
  {
    v9 = v8 == 0;
  }

  if (v9)
  {
    v13 = @"_parseSql:(1)";
LABEL_12:
    [(NDTSQFile *)self _makeSqlErrorReasonString:v13];
    v14 = [NDTSQException exceptionWithName:@"NDTSQError" reason:objc_claimAutoreleasedReturnValue() userInfo:0];
    objc_exception_throw(v14);
  }

  v10 = v8;
  v11 = v7[2](v7, v8);
  v15 = v11;
  if ((v11 - 100) >= 2 && v11 != 0)
  {
    v13 = @"_parseSql:(2)";
    goto LABEL_12;
  }

  sqlite3_reset([v10 parsed]);
  sqlite3_clear_bindings([v10 parsed]);
}

- (void)begin
{
  q = self->_q;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000130F8;
  block[3] = &unk_10005CDF0;
  block[4] = self;
  dispatch_sync(q, block);
}

- (void)commit
{
  q = self->_q;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000131EC;
  block[3] = &unk_10005CDF0;
  block[4] = self;
  dispatch_sync(q, block);
}

- (void)rollback
{
  q = self->_q;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000132E0;
  block[3] = &unk_10005CDF0;
  block[4] = self;
  dispatch_sync(q, block);
}

- (int64_t)changes
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  q = self->_q;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10001340C;
  v5[3] = &unk_10005D018;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(q, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (NDTSQFileDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end