@interface _bmFMDatabase
+ (_bmFMDatabase)databaseWithPath:(id)path;
+ (_bmFMDatabase)databaseWithURL:(id)l;
+ (id)sqliteLibVersion;
+ (id)storeableDateFormat:(id)format;
+ (int)FMDBVersion;
- (BOOL)BOOLForQuery:(id)query;
- (BOOL)DELETE_FROM:(id)m WHERE:(id)e;
- (BOOL)INSERT_INTO:(id)o VALUES:(id)s;
- (BOOL)UPDATE:(id)e SET:(id)t WHERE:(id)rE;
- (BOOL)beginDeferredTransaction;
- (BOOL)beginExclusiveTransaction;
- (BOOL)beginImmediateTransaction;
- (BOOL)beginTransaction;
- (BOOL)bindStatement:(sqlite3_stmt *)statement WithArgumentsInArray:(id)array orDictionary:(id)dictionary orVAList:(char *)list;
- (BOOL)checkpoint:(int)checkpoint name:(id)name logFrameCount:(int *)count checkpointCount:(int *)checkpointCount error:(id *)error;
- (BOOL)close;
- (BOOL)columnExists:(id)exists inTableWithName:(id)name;
- (BOOL)commit;
- (BOOL)databaseExists;
- (BOOL)executeStatements:(id)statements withResultBlock:(id)block;
- (BOOL)executeUpdate:(id)update error:(id *)error withArgumentsInArray:(id)array orDictionary:(id)dictionary orVAList:(char *)list;
- (BOOL)executeUpdateWithFormat:(id)format;
- (BOOL)goodConnection;
- (BOOL)interrupt;
- (BOOL)open;
- (BOOL)openWithFlags:(int)flags vfs:(id)vfs;
- (BOOL)rekey:(id)rekey;
- (BOOL)releaseSavePointWithName:(id)name error:(id *)error;
- (BOOL)rollback;
- (BOOL)rollbackToSavePointWithName:(id)name error:(id *)error;
- (BOOL)setKey:(id)key;
- (BOOL)startSavePointWithName:(id)name error:(id *)error;
- (BOOL)tableExists:(id)exists;
- (BOOL)validateSQL:(id)l error:(id *)error;
- (NSURL)databaseURL;
- (_bmFMDatabase)initWithPath:(id)path;
- (_bmFMDatabase)initWithURL:(id)l;
- (const)sqlitePath;
- (double)doubleForQuery:(id)query;
- (id)SELECT_FROM:(id)m COLUMNS:(id)s JOIN:(id)n WHERE:(id)e GROUP_BY:(id)y HAVING:(id)g ORDER_BY:(id)bY LIMIT:(id)self0;
- (id)_SELECT_FROM:(id)m COLUMNS:(id)s JOIN:(id)n WHERE:(id)e GROUP_BY:(id)y ORDER_BY:(id)bY LIMIT:(id)t;
- (id)cachedStatementForQuery:(id)query;
- (id)dataForQuery:(id)query;
- (id)dateForQuery:(id)query;
- (id)errorWithMessage:(id)message;
- (id)executeQuery:(id)query;
- (id)executeQuery:(id)query values:(id)values error:(id *)error;
- (id)executeQueryWithFormat:(id)format;
- (id)getTableSchema:(id)schema;
- (id)inSavePoint:(id)point;
- (id)lastError;
- (id)lastErrorMessage;
- (id)stringForQuery:(id)query;
- (id)valueData:(void *)data;
- (id)valueString:(void *)string;
- (int)bindObject:(id)object toColumn:(int)column inStatement:(sqlite3_stmt *)statement;
- (int)busyRetryTimeout;
- (int)changes;
- (int)intForQuery:(id)query;
- (int64_t)lastInsertRowId;
- (int64_t)longForQuery:(id)query;
- (unsigned)applicationID;
- (unsigned)userVersion;
- (void)clearCachedStatements;
- (void)closeOpenResultSets;
- (void)dealloc;
- (void)extractSQL:(id)l argumentsList:(char *)list intoString:(id)string arguments:(id)arguments;
- (void)makeFunctionNamed:(id)named arguments:(int)arguments block:(id)block;
- (void)resultData:(id)data context:(void *)context;
- (void)resultError:(id)error context:(void *)context;
- (void)resultSetDidClose:(id)close;
- (void)resultString:(id)string context:(void *)context;
- (void)setCachedStatement:(id)statement forQuery:(id)query;
- (void)setMaxBusyRetryTimeInterval:(double)interval;
- (void)setShouldCacheStatements:(BOOL)statements;
- (void)warnInUse;
@end

@implementation _bmFMDatabase

- (BOOL)databaseExists
{
  isOpen = self->_isOpen;
  if (!isOpen)
  {
    NSLog(@"The _bmFMDatabase %@ is not open.", self);
    if (self->_crashOnErrors)
    {
      sub_100043728(a2, self);
    }
  }

  return isOpen;
}

- (id)_SELECT_FROM:(id)m COLUMNS:(id)s JOIN:(id)n WHERE:(id)e GROUP_BY:(id)y ORDER_BY:(id)bY LIMIT:(id)t
{
  mCopy = m;
  nCopy = n;
  eCopy = e;
  yCopy = y;
  bYCopy = bY;
  tCopy = t;
  v20 = [s componentsJoinedByString:{@", "}];
  mCopy = [NSMutableString stringWithFormat:@"SELECT %@ FROM %@", v20, mCopy];

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v22 = nCopy;
  v23 = [v22 countByEnumeratingWithState:&v42 objects:v46 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v43;
    do
    {
      for (i = 0; i != v24; i = i + 1)
      {
        if (*v43 != v25)
        {
          objc_enumerationMutation(v22);
        }

        [mCopy appendString:*(*(&v42 + 1) + 8 * i)];
      }

      v24 = [v22 countByEnumeratingWithState:&v42 objects:v46 count:16];
    }

    while (v24);
  }

  if (eCopy)
  {
    selfCopy = self;
    v27 = bYCopy;
    v28 = yCopy;
    v29 = mCopy;
    v30 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [eCopy count] >> 1);
    [mCopy appendString:@" WHERE "];
    v31 = [eCopy count];
    if (v31)
    {
      v32 = v31;
      for (j = 0; j < v32; j += 2)
      {
        v34 = [eCopy objectAtIndexedSubscript:j];
        [mCopy appendString:v34];

        v35 = [eCopy objectAtIndexedSubscript:j + 1];
        [v30 addObject:v35];
      }
    }

    mCopy = v29;
    yCopy = v28;
    bYCopy = v27;
    self = selfCopy;
  }

  else
  {
    v30 = 0;
  }

  if ([yCopy count])
  {
    v36 = [yCopy componentsJoinedByString:{@", "}];
    [mCopy appendFormat:@" GROUP BY %@", v36];
  }

  if ([bYCopy count])
  {
    v37 = [bYCopy componentsJoinedByString:{@", "}];
    [mCopy appendFormat:@" ORDER BY %@", v37];
  }

  if ([tCopy integerValue] >= 1)
  {
    [mCopy appendFormat:@" LIMIT %@", tCopy];
  }

  [mCopy appendString:@";"];
  if (v30)
  {
    [(_bmFMDatabase *)self executeQuery:mCopy withArgumentsInArray:v30];
  }

  else
  {
    [(_bmFMDatabase *)self executeQuery:mCopy];
  }
  v38 = ;

  return v38;
}

- (id)SELECT_FROM:(id)m COLUMNS:(id)s JOIN:(id)n WHERE:(id)e GROUP_BY:(id)y HAVING:(id)g ORDER_BY:(id)bY LIMIT:(id)self0
{
  mCopy = m;
  nCopy = n;
  eCopy = e;
  yCopy = y;
  gCopy = g;
  bYCopy = bY;
  tCopy = t;
  v21 = [s componentsJoinedByString:{@", "}];
  v45 = mCopy;
  mCopy = [NSMutableString stringWithFormat:@"SELECT %@ FROM %@", v21, mCopy];

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v23 = nCopy;
  v24 = [v23 countByEnumeratingWithState:&v47 objects:v51 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v48;
    do
    {
      for (i = 0; i != v25; i = i + 1)
      {
        if (*v48 != v26)
        {
          objc_enumerationMutation(v23);
        }

        [mCopy appendString:*(*(&v47 + 1) + 8 * i)];
      }

      v25 = [v23 countByEnumeratingWithState:&v47 objects:v51 count:16];
    }

    while (v25);
  }

  if (eCopy)
  {
    v28 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [eCopy count] >> 1);
    [mCopy appendString:@" WHERE "];
    v29 = [eCopy count];
    if (v29)
    {
      v30 = v29;
      for (j = 0; j < v30; j += 2)
      {
        v32 = [eCopy objectAtIndexedSubscript:j];
        [mCopy appendString:v32];

        v33 = [eCopy objectAtIndexedSubscript:j + 1];
        [v28 addObject:v33];
      }
    }
  }

  else
  {
    v28 = 0;
  }

  v34 = yCopy;
  if ([yCopy count])
  {
    v35 = [yCopy componentsJoinedByString:{@", "}];
    [mCopy appendFormat:@" GROUP BY %@", v35];
  }

  if (gCopy)
  {
    if (!v28)
    {
      v28 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [eCopy count] >> 1);
    }

    [mCopy appendString:@" HAVING "];
    v36 = [gCopy count];
    if (v36)
    {
      v37 = v36;
      for (k = 0; k < v37; k += 2)
      {
        v39 = [gCopy objectAtIndexedSubscript:k];
        [mCopy appendString:v39];

        v40 = [gCopy objectAtIndexedSubscript:k + 1];
        [v28 addObject:v40];
      }

      v34 = yCopy;
    }
  }

  if ([bYCopy count])
  {
    v41 = [bYCopy componentsJoinedByString:{@", "}];
    [mCopy appendFormat:@" ORDER BY %@", v41];
  }

  if ([tCopy integerValue] >= 1)
  {
    [mCopy appendFormat:@" LIMIT %@", tCopy];
  }

  [mCopy appendString:@";"];
  if (v28)
  {
    [(_bmFMDatabase *)self executeQuery:mCopy withArgumentsInArray:v28];
  }

  else
  {
    [(_bmFMDatabase *)self executeQuery:mCopy];
  }
  v42 = ;

  return v42;
}

- (BOOL)UPDATE:(id)e SET:(id)t WHERE:(id)rE
{
  tCopy = t;
  rECopy = rE;
  v9 = [NSMutableString stringWithFormat:@"UPDATE OR FAIL %@ SET ", e];
  v10 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [tCopy count] + (objc_msgSend(rECopy, "count") >> 1));
  v27 = tCopy;
  allKeys = [tCopy allKeys];
  v12 = [allKeys count];
  if (v12)
  {
    v13 = v12;
    v14 = 0;
    v15 = v12 - 1;
    do
    {
      v16 = [allKeys objectAtIndexedSubscript:v14];
      [v9 appendString:v16];
      if (([v16 containsString:@"?"] & 1) == 0)
      {
        if (v14 >= v15)
        {
          v17 = @" = ?";
        }

        else
        {
          v17 = @" = ?, ";
        }

        [v9 appendString:v17];
      }

      v18 = [v27 objectForKeyedSubscript:v16];
      [v10 addObject:v18];

      ++v14;
    }

    while (v13 != v14);
  }

  [v9 appendString:@" WHERE "];
  v19 = [rECopy count];
  if (v19)
  {
    v20 = v19;
    for (i = 0; i < v20; i += 2)
    {
      v22 = [rECopy objectAtIndexedSubscript:i];
      [v9 appendString:v22];

      v23 = [rECopy objectAtIndexedSubscript:i + 1];
      [v10 addObject:v23];
    }
  }

  [v9 appendString:@";"];
  v24 = [(_bmFMDatabase *)self executeUpdate:v9 withArgumentsInArray:v10];

  return v24;
}

- (BOOL)INSERT_INTO:(id)o VALUES:(id)s
{
  sCopy = s;
  v6 = [NSMutableString stringWithFormat:@"INSERT INTO %@", o];
  v7 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [sCopy count]);
  objc_msgSend(v6, "appendString:", @"(");
  v8 = [sCopy count];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v9 = sCopy;
  v10 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = *v25;
    do
    {
      v14 = 0;
      v23 = v12;
      v15 = (v12 + 1);
      do
      {
        if (*v25 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v16 = *(*(&v24 + 1) + 8 * v14);
        v17 = [v9 objectForKeyedSubscript:v16];
        [v7 addObject:v17];

        [v6 appendString:v16];
        if (v15 < v8)
        {
          [v6 appendString:{@", "}];
        }

        ++v14;
        ++v15;
      }

      while (v11 != v14);
      v12 = &v11[v23];
      v11 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v11);
  }

  [v6 appendString:@") VALUES ("];
  if (v8)
  {
    for (i = 0; i != v8; ++i)
    {
      if (i >= (v8 - 1))
      {
        v19 = @"?";
      }

      else
      {
        v19 = @"?,";
      }

      [v6 appendString:v19];
    }
  }

  [v6 appendString:@";"]);
  v20 = [(_bmFMDatabase *)self executeUpdate:v6 withArgumentsInArray:v7];

  return v20;
}

- (BOOL)DELETE_FROM:(id)m WHERE:(id)e
{
  eCopy = e;
  v7 = [NSMutableString stringWithFormat:@"DELETE FROM %@", m];
  v8 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [eCopy count] >> 1);
  [v7 appendString:@" WHERE "];
  v9 = [eCopy count];
  if (v9)
  {
    v10 = v9;
    for (i = 0; i < v10; i += 2)
    {
      v12 = [eCopy objectAtIndexedSubscript:i];
      [v7 appendString:v12];

      v13 = [eCopy objectAtIndexedSubscript:i + 1];
      [v8 addObject:v13];
    }
  }

  [v7 appendString:@";"];
  v14 = [(_bmFMDatabase *)self executeUpdate:v7 withArgumentsInArray:v8];

  return v14;
}

+ (_bmFMDatabase)databaseWithPath:(id)path
{
  pathCopy = path;
  v5 = [[self alloc] initWithPath:pathCopy];

  return v5;
}

+ (_bmFMDatabase)databaseWithURL:(id)l
{
  lCopy = l;
  v5 = [[self alloc] initWithURL:lCopy];

  return v5;
}

- (_bmFMDatabase)initWithURL:(id)l
{
  path = [l path];
  v5 = [(_bmFMDatabase *)self initWithPath:path];

  return v5;
}

- (_bmFMDatabase)initWithPath:(id)path
{
  pathCopy = path;
  if (!sqlite3_threadsafe())
  {
    sub_100043618();
  }

  v11.receiver = self;
  v11.super_class = _bmFMDatabase;
  v5 = [(_bmFMDatabase *)&v11 init];
  if (v5)
  {
    v6 = [pathCopy copy];
    v7 = *(v5 + 10);
    *(v5 + 10) = v6;

    v8 = objc_alloc_init(NSMutableSet);
    v9 = *(v5 + 4);
    *(v5 + 4) = v8;

    *(v5 + 1) = 0;
    *(v5 + 59) = 256;
    *(v5 + 8) = 0x4000000000000000;
    v5[61] = 0;
  }

  return v5;
}

- (void)dealloc
{
  [(_bmFMDatabase *)self close];
  v3.receiver = self;
  v3.super_class = _bmFMDatabase;
  [(_bmFMDatabase *)&v3 dealloc];
}

- (NSURL)databaseURL
{
  if (self->_databasePath)
  {
    v3 = [NSURL fileURLWithPath:?];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (int)FMDBVersion
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100040498;
  block[3] = &unk_100079A50;
  block[4] = self;
  if (qword_10008BD90 != -1)
  {
    dispatch_once(&qword_10008BD90, block);
  }

  return dword_10008BD98;
}

+ (id)sqliteLibVersion
{
  v2 = [[NSString alloc] initWithFormat:@"%s", sqlite3_libversion()];

  return v2;
}

- (const)sqlitePath
{
  databasePath = self->_databasePath;
  if (!databasePath)
  {
    return ":memory:";
  }

  if (![(NSString *)databasePath length])
  {
    return "";
  }

  v4 = self->_databasePath;

  return [(NSString *)v4 fileSystemRepresentation];
}

- (BOOL)open
{
  if (self->_isOpen)
  {
    return 1;
  }

  p_db = &self->_db;
  if (self->_db)
  {
    [(_bmFMDatabase *)self close];
  }

  v5 = sqlite3_open([(_bmFMDatabase *)self sqlitePath], p_db);
  if (v5)
  {
    NSLog(@"error opening!: %d", v5);
    return 0;
  }

  else
  {
    if (self->_maxBusyRetryTimeInterval > 0.0)
    {
      [(_bmFMDatabase *)self setMaxBusyRetryTimeInterval:?];
    }

    result = 1;
    self->_isOpen = 1;
  }

  return result;
}

- (BOOL)openWithFlags:(int)flags vfs:(id)vfs
{
  vfsCopy = vfs;
  if (self->_isOpen)
  {
    v7 = 1;
  }

  else
  {
    if (self->_db)
    {
      [(_bmFMDatabase *)self close];
    }

    v8 = sqlite3_open_v2(-[_bmFMDatabase sqlitePath](self, "sqlitePath"), &self->_db, flags, [vfsCopy UTF8String]);
    if (v8)
    {
      NSLog(@"error opening!: %d", v8);
      v7 = 0;
    }

    else
    {
      if (self->_maxBusyRetryTimeInterval > 0.0)
      {
        [(_bmFMDatabase *)self setMaxBusyRetryTimeInterval:?];
      }

      v7 = 1;
      self->_isOpen = 1;
    }
  }

  return v7;
}

- (BOOL)close
{
  [(_bmFMDatabase *)self clearCachedStatements];
  [(_bmFMDatabase *)self closeOpenResultSets];
  db = self->_db;
  if (db)
  {
    v4 = sqlite3_close(db);
    if ((v4 - 5) > 1)
    {
      goto LABEL_7;
    }

    stmt = sqlite3_next_stmt(self->_db, 0);
    if (stmt)
    {
      v6 = stmt;
      do
      {
        NSLog(@"Closing leaked statement");
        sqlite3_finalize(v6);
        v6 = sqlite3_next_stmt(self->_db, 0);
      }

      while (v6);
      v4 = sqlite3_close(self->_db);
      if ((v4 - 5) > 1)
      {
LABEL_7:
        if (v4)
        {
          NSLog(@"error closing!: %d", v4);
        }
      }
    }

    self->_db = 0;
    self->_isOpen = 0;
  }

  return 1;
}

- (void)setMaxBusyRetryTimeInterval:(double)interval
{
  selfCopy = self;
  self->_maxBusyRetryTimeInterval = interval;
  db = self->_db;
  if (db)
  {
    if (interval <= 0.0)
    {
      v5 = 0;
      selfCopy = 0;
    }

    else
    {
      v5 = sub_100040960;
    }

    sqlite3_busy_handler(db, v5, selfCopy);
  }
}

- (int)busyRetryTimeout
{
  NSLog(@"%s:%d", a2, "[_bmFMDatabase busyRetryTimeout]", 347);
  NSLog(@"FMDB: busyRetryTimeout no longer works, please use maxBusyRetryTimeInterval");
  return -1;
}

- (void)closeOpenResultSets
{
  v3 = [(NSMutableSet *)self->_openResultSets copy];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        pointerValue = [v9 pointerValue];
        [pointerValue setParentDB:0];
        [pointerValue close];
        [(NSMutableSet *)self->_openResultSets removeObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

- (void)resultSetDidClose:(id)close
{
  v4 = [NSValue valueWithNonretainedObject:close];
  [(NSMutableSet *)self->_openResultSets removeObject:v4];
}

- (void)clearCachedStatements
{
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  objectEnumerator = [(NSMutableDictionary *)self->_cachedStatements objectEnumerator];
  v4 = [objectEnumerator countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v19;
    do
    {
      v7 = 0;
      do
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        v8 = *(*(&v18 + 1) + 8 * v7);
        v14 = 0u;
        v15 = 0u;
        v16 = 0u;
        v17 = 0u;
        allObjects = [v8 allObjects];
        v10 = [allObjects countByEnumeratingWithState:&v14 objects:v22 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v15;
          do
          {
            v13 = 0;
            do
            {
              if (*v15 != v12)
              {
                objc_enumerationMutation(allObjects);
              }

              [*(*(&v14 + 1) + 8 * v13) close];
              v13 = v13 + 1;
            }

            while (v11 != v13);
            v11 = [allObjects countByEnumeratingWithState:&v14 objects:v22 count:16];
          }

          while (v11);
        }

        v7 = v7 + 1;
      }

      while (v7 != v5);
      v5 = [objectEnumerator countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v5);
  }

  [(NSMutableDictionary *)self->_cachedStatements removeAllObjects];
}

- (id)cachedStatementForQuery:(id)query
{
  v3 = [(NSMutableDictionary *)self->_cachedStatements objectForKey:query];
  v4 = [v3 objectsPassingTest:&stru_100079A90];
  anyObject = [v4 anyObject];

  return anyObject;
}

- (void)setCachedStatement:(id)statement forQuery:(id)query
{
  statementCopy = statement;
  queryCopy = query;
  if (queryCopy)
  {
    v8 = queryCopy;
    v9 = [queryCopy copy];

    [statementCopy setQuery:v9];
    v10 = [(NSMutableDictionary *)self->_cachedStatements objectForKey:v9];
    if (!v10)
    {
      v10 = +[NSMutableSet set];
    }

    [v10 addObject:statementCopy];
    [(NSMutableDictionary *)self->_cachedStatements setObject:v10 forKey:v9];
  }

  else
  {
    sub_100043644(a2, self);
  }
}

- (BOOL)rekey:(id)rekey
{
  rekeyCopy = rekey;
  rekeyCopy2 = rekey;
  uTF8String = [rekeyCopy2 UTF8String];
  uTF8String2 = [rekeyCopy2 UTF8String];

  v9 = [NSData dataWithBytes:uTF8String length:strlen(uTF8String2)];
  LOBYTE(self) = [(_bmFMDatabase *)self rekeyWithData:v9];

  return self;
}

- (BOOL)setKey:(id)key
{
  keyCopy = key;
  keyCopy2 = key;
  uTF8String = [keyCopy2 UTF8String];
  uTF8String2 = [keyCopy2 UTF8String];

  v9 = [NSData dataWithBytes:uTF8String length:strlen(uTF8String2)];
  LOBYTE(self) = [(_bmFMDatabase *)self setKeyWithData:v9];

  return self;
}

+ (id)storeableDateFormat:(id)format
{
  formatCopy = format;
  v4 = objc_alloc_init(NSDateFormatter);
  [v4 setDateFormat:formatCopy];

  v5 = [NSTimeZone timeZoneForSecondsFromGMT:0];
  [v4 setTimeZone:v5];

  v6 = [[NSLocale alloc] initWithLocaleIdentifier:@"en_US"];
  [v4 setLocale:v6];

  return v4;
}

- (BOOL)goodConnection
{
  if (!self->_isOpen)
  {
    return 0;
  }

  v2 = [(_bmFMDatabase *)self executeQuery:@"select name from sqlite_master where type='table'"];
  v3 = v2;
  v4 = v2 != 0;
  if (v2)
  {
    [v2 close];
  }

  return v4;
}

- (void)warnInUse
{
  NSLog(@"The _bmFMDatabase %@ is currently in use.", self);
  if (self->_crashOnErrors)
  {
    sub_1000436C8(a2, self);
  }
}

- (id)lastErrorMessage
{
  v2 = sqlite3_errmsg(self->_db);

  return [NSString stringWithUTF8String:v2];
}

- (id)errorWithMessage:(id)message
{
  v4 = [NSDictionary dictionaryWithObject:message forKey:NSLocalizedDescriptionKey];
  v5 = [NSError errorWithDomain:@"_bmFMDatabase" code:sqlite3_errcode(self->_db) userInfo:v4];

  return v5;
}

- (id)lastError
{
  lastErrorMessage = [(_bmFMDatabase *)self lastErrorMessage];
  v4 = [(_bmFMDatabase *)self errorWithMessage:lastErrorMessage];

  return v4;
}

- (int64_t)lastInsertRowId
{
  if (self->_isExecutingStatement)
  {
    [(_bmFMDatabase *)self warnInUse];
    return 0;
  }

  else
  {
    self->_isExecutingStatement = 1;
    result = sqlite3_last_insert_rowid(self->_db);
    self->_isExecutingStatement = 0;
  }

  return result;
}

- (int)changes
{
  if (self->_isExecutingStatement)
  {
    [(_bmFMDatabase *)self warnInUse];
    return 0;
  }

  else
  {
    self->_isExecutingStatement = 1;
    result = sqlite3_changes(self->_db);
    self->_isExecutingStatement = 0;
  }

  return result;
}

- (int)bindObject:(id)object toColumn:(int)column inStatement:(sqlite3_stmt *)statement
{
  objectCopy = object;
  if (objectCopy)
  {
    v9 = +[NSNull null];

    if (v9 != objectCopy)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        bytes = [objectCopy bytes];
        if (bytes)
        {
          v11 = bytes;
        }

        else
        {
          v11 = "";
        }

        v12 = sqlite3_bind_blob(statement, column, v11, [objectCopy length], 0xFFFFFFFFFFFFFFFFLL);
        goto LABEL_9;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if ([(_bmFMDatabase *)self hasDateFormatter])
        {
          v15 = [(_bmFMDatabase *)self stringFromDate:objectCopy];
LABEL_42:
          v29 = v15;
          v13 = sqlite3_bind_text(statement, column, [v15 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);

          goto LABEL_10;
        }

        [objectCopy timeIntervalSince1970];
        goto LABEL_44;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
LABEL_41:
        v15 = [objectCopy description];
        goto LABEL_42;
      }

      objCType = [objectCopy objCType];
      if (*objCType != 99 || objCType[1])
      {
        objCType2 = [objectCopy objCType];
        if (*objCType2 == 67 && !objCType2[1])
        {
          unsignedCharValue = [objectCopy unsignedCharValue];
          goto LABEL_50;
        }

        objCType3 = [objectCopy objCType];
        if (*objCType3 == 115 && !objCType3[1])
        {
          unsignedCharValue = [objectCopy shortValue];
          goto LABEL_50;
        }

        objCType4 = [objectCopy objCType];
        if (*objCType4 == 83 && !objCType4[1])
        {
          unsignedCharValue = [objectCopy unsignedShortValue];
          goto LABEL_50;
        }

        objCType5 = [objectCopy objCType];
        if (*objCType5 == 105 && !objCType5[1])
        {
          unsignedCharValue = [objectCopy intValue];
          goto LABEL_50;
        }

        objCType6 = [objectCopy objCType];
        if (*objCType6 == 73 && !objCType6[1])
        {
          unsignedIntValue = [objectCopy unsignedIntValue];
        }

        else
        {
          objCType7 = [objectCopy objCType];
          if (*objCType7 == 113 && !objCType7[1])
          {
            longValue = [objectCopy longValue];
          }

          else
          {
            objCType8 = [objectCopy objCType];
            if (*objCType8 == 81 && !objCType8[1])
            {
              longValue = [objectCopy unsignedLongValue];
            }

            else
            {
              objCType9 = [objectCopy objCType];
              if (*objCType9 == 113 && !objCType9[1])
              {
                longValue = [objectCopy longLongValue];
              }

              else
              {
                objCType10 = [objectCopy objCType];
                if (*objCType10 != 81 || objCType10[1])
                {
                  objCType11 = [objectCopy objCType];
                  if (*objCType11 == 102 && !objCType11[1])
                  {
                    [objectCopy floatValue];
                    v30 = v34;
                  }

                  else
                  {
                    objCType12 = [objectCopy objCType];
                    if (*objCType12 != 100 || objCType12[1])
                    {
                      objCType13 = [objectCopy objCType];
                      if (*objCType13 != 66 || objCType13[1])
                      {
                        goto LABEL_41;
                      }

                      unsignedCharValue = [objectCopy BOOLValue];
LABEL_50:
                      v12 = sqlite3_bind_int(statement, column, unsignedCharValue);
                      goto LABEL_9;
                    }

                    [objectCopy doubleValue];
                  }

LABEL_44:
                  v12 = sqlite3_bind_double(statement, column, v30);
                  goto LABEL_9;
                }

                longValue = [objectCopy unsignedLongLongValue];
              }
            }
          }

          unsignedIntValue = longValue;
        }

        v12 = sqlite3_bind_int64(statement, column, unsignedIntValue);
        goto LABEL_9;
      }

      unsignedCharValue = [objectCopy charValue];
      goto LABEL_50;
    }
  }

  v12 = sqlite3_bind_null(statement, column);
LABEL_9:
  v13 = v12;
LABEL_10:

  return v13;
}

- (void)extractSQL:(id)l argumentsList:(char *)list intoString:(id)string arguments:(id)arguments
{
  lCopy = l;
  listCopy = list;
  stringCopy = string;
  argumentsCopy = arguments;
  v12 = [lCopy length];
  if (v12)
  {
    v13 = v12;
    LODWORD(v14) = 0;
    for (i = 0; i < v13; ++i)
    {
      v16 = v14;
      v17 = [lCopy characterAtIndex:i];
      v14 = v17;
      if (v16 != 37)
      {
        if (v17 == 37)
        {
          continue;
        }

        goto LABEL_60;
      }

      if (v17 <= 102)
      {
        if (v17 > 98)
        {
          switch(v17)
          {
            case 'c':
              v33 = [NSString alloc];
              v34 = listCopy;
              listCopy += 8;
              v22 = [v33 initWithFormat:@"%c", *v34];
LABEL_45:
              v35 = v22;
              if (v22)
              {
                goto LABEL_46;
              }

              break;
            case 'd':
              goto LABEL_27;
            case 'f':
              v21 = listCopy;
              listCopy += 8;
              v22 = [NSNumber numberWithDouble:*v21];
              goto LABEL_45;
          }
        }

        else
        {
          switch(v17)
          {
            case '@':
              v32 = listCopy;
              listCopy += 8;
              v22 = *v32;
              goto LABEL_45;
            case 'D':
              goto LABEL_27;
            case 'U':
LABEL_30:
              v24 = listCopy;
              listCopy += 8;
              v22 = [NSNumber numberWithUnsignedInt:*v24];
              goto LABEL_45;
          }
        }
      }

      else if (v17 <= 107)
      {
        switch(v17)
        {
          case 'g':
            v29 = listCopy;
            listCopy += 8;
            v30 = *v29;
            *&v30 = *v29;
            v22 = [NSNumber numberWithFloat:v30];
            goto LABEL_45;
          case 'h':
            v18 = i + 1;
            if (i + 1 >= v13)
            {
              goto LABEL_53;
            }

            if ([lCopy characterAtIndex:i + 1] == 105)
            {
              v31 = listCopy;
              listCopy += 8;
              v20 = [NSNumber numberWithShort:*v31];
            }

            else
            {
              if ([lCopy characterAtIndex:i + 1] != 117)
              {
LABEL_53:
                v36 = 104;
                goto LABEL_61;
              }

              v38 = listCopy;
              listCopy += 8;
              v20 = [NSNumber numberWithUnsignedShort:*v38];
            }

LABEL_56:
            v35 = v20;
            i = v18;
LABEL_57:
            if (v35)
            {
LABEL_46:
              [stringCopy appendString:@"?"];
              [argumentsCopy addObject:v35];

              continue;
            }

            break;
          case 'i':
LABEL_27:
            v23 = listCopy;
            listCopy += 8;
            v22 = [NSNumber numberWithInt:*v23];
            goto LABEL_45;
        }
      }

      else if (v17 > 114)
      {
        if (v17 == 115)
        {
          v28 = listCopy;
          listCopy += 8;
          v22 = [NSString stringWithUTF8String:*v28];
          goto LABEL_45;
        }

        if (v17 == 117)
        {
          goto LABEL_30;
        }
      }

      else
      {
        if (v17 == 108)
        {
          v18 = i + 1;
          if (i + 1 >= v13)
          {
            goto LABEL_47;
          }

          v25 = [lCopy characterAtIndex:i + 1];
          if (v25 == 100)
          {
            v40 = listCopy;
            listCopy += 8;
            v20 = [NSNumber numberWithLong:*v40];
            goto LABEL_56;
          }

          if (v25 == 117)
          {
            v39 = listCopy;
            listCopy += 8;
            v20 = [NSNumber numberWithUnsignedLong:*v39];
            goto LABEL_56;
          }

          if (v25 != 108)
          {
LABEL_47:
            v36 = 108;
            goto LABEL_61;
          }

          i += 2;
          if (i >= v13)
          {
            goto LABEL_68;
          }

          if ([lCopy characterAtIndex:i] == 100)
          {
            v26 = listCopy;
            listCopy += 8;
            v27 = [NSNumber numberWithLongLong:*v26];
          }

          else
          {
            if ([lCopy characterAtIndex:i] != 117)
            {
LABEL_68:
              v36 = 108;
              i = v18;
LABEL_61:
              v44 = v36;
              v41 = stringCopy;
              v42 = @"%C";
LABEL_62:
              [v41 appendFormat:v42, v44];
              continue;
            }

            v43 = listCopy;
            listCopy += 8;
            v27 = [NSNumber numberWithUnsignedLongLong:*v43];
          }

          v35 = v27;
          goto LABEL_57;
        }

        if (v17 == 113)
        {
          v18 = i + 1;
          if (i + 1 >= v13)
          {
            goto LABEL_50;
          }

          if ([lCopy characterAtIndex:i + 1] == 105)
          {
            v19 = listCopy;
            listCopy += 8;
            v20 = [NSNumber numberWithLongLong:*v19];
          }

          else
          {
            if ([lCopy characterAtIndex:i + 1] != 117)
            {
LABEL_50:
              v36 = 113;
              goto LABEL_61;
            }

            v37 = listCopy;
            listCopy += 8;
            v20 = [NSNumber numberWithUnsignedLongLong:*v37];
          }

          goto LABEL_56;
        }
      }

      if (v14 == 64)
      {
        v41 = stringCopy;
        v42 = @"NULL";
        goto LABEL_62;
      }

LABEL_60:
      v36 = v14;
      if (v14)
      {
        goto LABEL_61;
      }
    }
  }
}

- (BOOL)bindStatement:(sqlite3_stmt *)statement WithArgumentsInArray:(id)array orDictionary:(id)dictionary orVAList:(char *)list
{
  arrayCopy = array;
  dictionaryCopy = dictionary;
  listCopy = list;
  v11 = sqlite3_bind_parameter_count(statement);
  v35 = v11;
  if (dictionaryCopy)
  {
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    obj = [dictionaryCopy allKeys];
    v12 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
    if (v12)
    {
      v13 = v12;
      LODWORD(v38) = 0;
      v14 = *v40;
      while (2)
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v40 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v39 + 1) + 8 * i);
          v17 = [[NSString alloc] initWithFormat:@":%@", v16];
          if (self->_traceExecution)
          {
            v18 = [dictionaryCopy objectForKey:v16];
            NSLog(@"%@ = %@", v17, v18);
          }

          v19 = sqlite3_bind_parameter_index(statement, [v17 UTF8String]);
          if (v19 < 1)
          {
            NSLog(@"Could not find index for %@", v16);
          }

          else
          {
            v20 = v19;
            v21 = dictionaryCopy;
            v22 = [dictionaryCopy objectForKey:v16];
            v23 = [(_bmFMDatabase *)self bindObject:v22 toColumn:v20 inStatement:statement];

            if (v23)
            {
              v33 = sqlite3_errmsg(self->_db);
              NSLog(@"Error: unable to bind (%d, %s"), v23, v33;
              sqlite3_finalize(statement);
              self->_isExecutingStatement = 0;

              v25 = 0;
              v32 = 0;
              dictionaryCopy = v21;
              goto LABEL_38;
            }

            LODWORD(v38) = v38 + 1;
            dictionaryCopy = v21;
          }
        }

        v13 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      LODWORD(v38) = 0;
    }

    v26 = 0;
  }

  else
  {
    v24 = 0;
    v25 = 0;
    v38 = v11 & ~(v11 >> 31);
    while (1)
    {
      v26 = v25;
      if (v38 == v24)
      {
        break;
      }

      if (arrayCopy && v24 < [arrayCopy count])
      {
        v27 = [arrayCopy objectAtIndex:v24];
      }

      else
      {
        if (!listCopy)
        {
          LODWORD(v38) = v24;
          break;
        }

        v28 = listCopy;
        listCopy += 8;
        v27 = *v28;
      }

      v25 = v27;

      if (self->_traceExecution)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          NSLog(@"data: %ld bytes", [v25 length]);
        }

        else
        {
          NSLog(@"obj: %@", v25);
        }
      }

      v29 = [(_bmFMDatabase *)self bindObject:v25 toColumn:++v24 inStatement:statement];
      if (v29)
      {
        v30 = v29;
        v31 = sqlite3_errmsg(self->_db);
        NSLog(@"Error: unable to bind (%d, %s"), v30, v31;
        sqlite3_finalize(statement);
        v32 = 0;
        self->_isExecutingStatement = 0;
        dictionaryCopy = 0;
        goto LABEL_38;
      }
    }

    dictionaryCopy = 0;
  }

  if (v38 == v35)
  {
    v32 = 1;
  }

  else
  {
    NSLog(@"Error: the bind count is not correct for the # of variables (executeQuery)");
    sqlite3_finalize(statement);
    v32 = 0;
    self->_isExecutingStatement = 0;
  }

  v25 = v26;
LABEL_38:

  return v32;
}

- (id)executeQuery:(id)query
{
  v3 = [(_bmFMDatabase *)self executeQuery:query withArgumentsInArray:0 orDictionary:0 orVAList:&v6 shouldBind:1];

  return v3;
}

- (id)executeQueryWithFormat:(id)format
{
  formatCopy = format;
  v5 = +[NSMutableString stringWithCapacity:](NSMutableString, "stringWithCapacity:", [formatCopy length]);
  v6 = +[NSMutableArray array];
  [(_bmFMDatabase *)self extractSQL:formatCopy argumentsList:&v10 intoString:v5 arguments:v6];

  v7 = [(_bmFMDatabase *)self executeQuery:v5 withArgumentsInArray:v6];

  return v7;
}

- (id)executeQuery:(id)query values:(id)values error:(id *)error
{
  v7 = [(_bmFMDatabase *)self executeQuery:query withArgumentsInArray:values orDictionary:0 orVAList:0 shouldBind:1];
  v8 = v7;
  if (error && !v7)
  {
    *error = [(_bmFMDatabase *)self lastError];
  }

  return v8;
}

- (BOOL)executeUpdate:(id)update error:(id *)error withArgumentsInArray:(id)array orDictionary:(id)dictionary orVAList:(char *)list
{
  v9 = [(_bmFMDatabase *)self executeQuery:update withArgumentsInArray:array orDictionary:dictionary orVAList:list shouldBind:1];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 internalStepWithError:error] == 101;
  }

  else if (error)
  {
    [(_bmFMDatabase *)self lastError];
    *error = v11 = 0;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)executeUpdateWithFormat:(id)format
{
  formatCopy = format;
  v5 = +[NSMutableString stringWithCapacity:](NSMutableString, "stringWithCapacity:", [formatCopy length]);
  v6 = +[NSMutableArray array];
  [(_bmFMDatabase *)self extractSQL:formatCopy argumentsList:&v8 intoString:v5 arguments:v6];

  LOBYTE(self) = [(_bmFMDatabase *)self executeUpdate:v5 withArgumentsInArray:v6];
  return self;
}

- (BOOL)executeStatements:(id)statements withResultBlock:(id)block
{
  errmsg = 0;
  blockCopy = block;
  statementsCopy = statements;
  sqliteHandle = [(_bmFMDatabase *)self sqliteHandle];
  uTF8String = [statementsCopy UTF8String];

  if (blockCopy)
  {
    v10 = sub_100042704;
  }

  else
  {
    v10 = 0;
  }

  v11 = sqlite3_exec(sqliteHandle, uTF8String, v10, blockCopy, &errmsg);

  if (errmsg)
  {
    if ([(_bmFMDatabase *)self logsErrors])
    {
      NSLog(@"Error inserting batch: %s", errmsg);
    }

    if (errmsg)
    {
      sqlite3_free(errmsg);
    }
  }

  return v11 == 0;
}

- (BOOL)rollback
{
  v3 = [(_bmFMDatabase *)self executeUpdate:@"rollback transaction"];
  if (v3)
  {
    self->_isInTransaction = 0;
  }

  return v3;
}

- (BOOL)commit
{
  v3 = [(_bmFMDatabase *)self executeUpdate:@"commit transaction"];
  if (v3)
  {
    self->_isInTransaction = 0;
  }

  return v3;
}

- (BOOL)beginTransaction
{
  v3 = [(_bmFMDatabase *)self executeUpdate:@"begin exclusive transaction"];
  if (v3)
  {
    self->_isInTransaction = 1;
  }

  return v3;
}

- (BOOL)beginDeferredTransaction
{
  v3 = [(_bmFMDatabase *)self executeUpdate:@"begin deferred transaction"];
  if (v3)
  {
    self->_isInTransaction = 1;
  }

  return v3;
}

- (BOOL)beginImmediateTransaction
{
  v3 = [(_bmFMDatabase *)self executeUpdate:@"begin immediate transaction"];
  if (v3)
  {
    self->_isInTransaction = 1;
  }

  return v3;
}

- (BOOL)beginExclusiveTransaction
{
  v3 = [(_bmFMDatabase *)self executeUpdate:@"begin exclusive transaction"];
  if (v3)
  {
    self->_isInTransaction = 1;
  }

  return v3;
}

- (BOOL)interrupt
{
  db = self->_db;
  if (db)
  {
    sqlite3_interrupt([(_bmFMDatabase *)self sqliteHandle]);
  }

  return db != 0;
}

- (BOOL)startSavePointWithName:(id)name error:(id *)error
{
  nameCopy = name;
  if (!nameCopy)
  {
    sub_100043810(a2, self);
  }

  v8 = [NSString alloc];
  v9 = [nameCopy stringByReplacingOccurrencesOfString:@"'" withString:@"''"];
  v10 = [v8 initWithFormat:@"savepoint '%@';", v9];

  v11 = [(_bmFMDatabase *)self executeUpdate:v10 error:error withArgumentsInArray:0 orDictionary:0 orVAList:0];
  return v11;
}

- (BOOL)releaseSavePointWithName:(id)name error:(id *)error
{
  nameCopy = name;
  if (!nameCopy)
  {
    sub_10004388C(a2, self);
  }

  v8 = [NSString alloc];
  v9 = [nameCopy stringByReplacingOccurrencesOfString:@"'" withString:@"''"];
  v10 = [v8 initWithFormat:@"release savepoint '%@';", v9];

  v11 = [(_bmFMDatabase *)self executeUpdate:v10 error:error withArgumentsInArray:0 orDictionary:0 orVAList:0];
  return v11;
}

- (BOOL)rollbackToSavePointWithName:(id)name error:(id *)error
{
  nameCopy = name;
  if (!nameCopy)
  {
    sub_100043908(a2, self);
  }

  v8 = [NSString alloc];
  v9 = [nameCopy stringByReplacingOccurrencesOfString:@"'" withString:@"''"];
  v10 = [v8 initWithFormat:@"rollback transaction to savepoint '%@';", v9];

  v11 = [(_bmFMDatabase *)self executeUpdate:v10 error:error withArgumentsInArray:0 orDictionary:0 orVAList:0];
  return v11;
}

- (id)inSavePoint:(id)point
{
  pointCopy = point;
  v5 = [NSString alloc];
  v6 = qword_10008BDA0++;
  v7 = [v5 initWithFormat:@"dbSavePoint%ld", v6];
  v17 = 0;
  v16 = 0;
  v8 = [(_bmFMDatabase *)self startSavePointWithName:v7 error:&v16];
  v9 = v16;
  if (v8)
  {
    if (pointCopy)
    {
      pointCopy[2](pointCopy, &v17);
      if (v17)
      {
        v15 = v9;
        [(_bmFMDatabase *)self rollbackToSavePointWithName:v7 error:&v15];
        v10 = v15;

        v9 = v10;
      }
    }

    v14 = v9;
    [(_bmFMDatabase *)self releaseSavePointWithName:v7 error:&v14];
    v11 = v14;

    v9 = v11;
  }

  v12 = v9;

  return v12;
}

- (BOOL)checkpoint:(int)checkpoint name:(id)name logFrameCount:(int *)count checkpointCount:(int *)checkpointCount error:(id *)error
{
  nameCopy = name;
  v14 = sqlite3_wal_checkpoint_v2(self->_db, [nameCopy UTF8String], checkpoint, count, checkpointCount);
  if (v14)
  {
    if (error)
    {
      *error = [(_bmFMDatabase *)self lastError];
    }

    if ([(_bmFMDatabase *)self logsErrors])
    {
      lastErrorMessage = [(_bmFMDatabase *)self lastErrorMessage];
      NSLog(@"%@", lastErrorMessage);
    }

    if ([(_bmFMDatabase *)self crashOnErrors])
    {
      sub_100043984(self, a2);
    }
  }

  return v14 == 0;
}

- (void)setShouldCacheStatements:(BOOL)statements
{
  self->_shouldCacheStatements = statements;
  if (!statements || !self->_cachedStatements && (+[NSMutableDictionary dictionary], v4 = objc_claimAutoreleasedReturnValue(), [(_bmFMDatabase *)self setCachedStatements:v4], v4, !self->_shouldCacheStatements))
  {

    [(_bmFMDatabase *)self setCachedStatements:0];
  }
}

- (void)makeFunctionNamed:(id)named arguments:(int)arguments block:(id)block
{
  namedCopy = named;
  blockCopy = block;
  if (!self->_openFunctions)
  {
    v9 = objc_opt_new();
    openFunctions = self->_openFunctions;
    self->_openFunctions = v9;
  }

  v11 = [blockCopy copy];
  [(NSMutableSet *)self->_openFunctions addObject:v11];
  sqliteHandle = [(_bmFMDatabase *)self sqliteHandle];
  v13 = namedCopy;
  sqlite3_create_function(sqliteHandle, [namedCopy UTF8String], arguments, 1, v11, sub_100043058, 0, 0);
}

- (id)valueData:(void *)data
{
  v4 = sqlite3_value_blob(data);
  v5 = sqlite3_value_bytes(data);
  if (v4)
  {
    v6 = [NSData dataWithBytes:v4 length:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)valueString:(void *)string
{
  v3 = sqlite3_value_text(string);
  if (v3)
  {
    v3 = [NSString stringWithUTF8String:v3];
  }

  return v3;
}

- (void)resultData:(id)data context:(void *)context
{
  dataCopy = data;
  bytes = [dataCopy bytes];
  v7 = [dataCopy length];

  sqlite3_result_blob(context, bytes, v7, 0xFFFFFFFFFFFFFFFFLL);
}

- (void)resultString:(id)string context:(void *)context
{
  uTF8String = [string UTF8String];

  sqlite3_result_text(context, uTF8String, -1, 0xFFFFFFFFFFFFFFFFLL);
}

- (void)resultError:(id)error context:(void *)context
{
  uTF8String = [error UTF8String];

  sqlite3_result_error(context, uTF8String, -1);
}

- (id)stringForQuery:(id)query
{
  v3 = [(_bmFMDatabase *)self executeQuery:query withArgumentsInArray:0 orDictionary:0 orVAList:&v7 shouldBind:1];
  v4 = 0;
  if ([v3 next])
  {
    v4 = [v3 stringForColumnIndex:0];
    [v3 close];
    [v3 setParentDB:0];
  }

  return v4;
}

- (int)intForQuery:(id)query
{
  v3 = [(_bmFMDatabase *)self executeQuery:query withArgumentsInArray:0 orDictionary:0 orVAList:&v6 shouldBind:1];
  if ([v3 next])
  {
    v4 = [v3 intForColumnIndex:0];
    [v3 close];
    [v3 setParentDB:0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int64_t)longForQuery:(id)query
{
  v3 = [(_bmFMDatabase *)self executeQuery:query withArgumentsInArray:0 orDictionary:0 orVAList:&v6 shouldBind:1];
  v4 = 0;
  if ([v3 next])
  {
    v4 = [v3 longForColumnIndex:0];
    [v3 close];
    [v3 setParentDB:0];
  }

  return v4;
}

- (BOOL)BOOLForQuery:(id)query
{
  v3 = [(_bmFMDatabase *)self executeQuery:query withArgumentsInArray:0 orDictionary:0 orVAList:&v6 shouldBind:1];
  if ([v3 next])
  {
    v4 = [v3 BOOLForColumnIndex:0];
    [v3 close];
    [v3 setParentDB:0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (double)doubleForQuery:(id)query
{
  v3 = [(_bmFMDatabase *)self executeQuery:query withArgumentsInArray:0 orDictionary:0 orVAList:&v7 shouldBind:1];
  v4 = 0.0;
  if ([v3 next])
  {
    [v3 doubleForColumnIndex:0];
    v4 = v5;
    [v3 close];
    [v3 setParentDB:0];
  }

  return v4;
}

- (id)dataForQuery:(id)query
{
  v3 = [(_bmFMDatabase *)self executeQuery:query withArgumentsInArray:0 orDictionary:0 orVAList:&v7 shouldBind:1];
  v4 = 0;
  if ([v3 next])
  {
    v4 = [v3 dataForColumnIndex:0];
    [v3 close];
    [v3 setParentDB:0];
  }

  return v4;
}

- (id)dateForQuery:(id)query
{
  v3 = [(_bmFMDatabase *)self executeQuery:query withArgumentsInArray:0 orDictionary:0 orVAList:&v7 shouldBind:1];
  v4 = 0;
  if ([v3 next])
  {
    v4 = [v3 dateForColumnIndex:0];
    [v3 close];
    [v3 setParentDB:0];
  }

  return v4;
}

- (BOOL)tableExists:(id)exists
{
  lowercaseString = [exists lowercaseString];
  v5 = [(_bmFMDatabase *)self executeQuery:@"select [sql] from sqlite_master where [type] = 'table' and lower(name) = ?", lowercaseString];
  next = [v5 next];
  [v5 close];

  return next;
}

- (id)getTableSchema:(id)schema
{
  schemaCopy = schema;
  schemaCopy = [[NSString alloc] initWithFormat:@"pragma table_info('%@')", schemaCopy];

  v6 = [(_bmFMDatabase *)self executeQuery:schemaCopy];

  return v6;
}

- (BOOL)columnExists:(id)exists inTableWithName:(id)name
{
  existsCopy = exists;
  lowercaseString = [name lowercaseString];
  lowercaseString2 = [existsCopy lowercaseString];

  v9 = [(_bmFMDatabase *)self getTableSchema:lowercaseString];
  do
  {
    next = [v9 next];
    if (!next)
    {
      break;
    }

    v11 = [v9 stringForColumn:@"name"];
    lowercaseString3 = [v11 lowercaseString];
    v13 = [lowercaseString3 isEqualToString:lowercaseString2];
  }

  while (!v13);
  [v9 close];

  return next;
}

- (unsigned)applicationID
{
  v2 = [(_bmFMDatabase *)self executeQuery:@"pragma application_id"];
  if ([v2 next])
  {
    v3 = [v2 longLongIntForColumnIndex:0];
  }

  else
  {
    v3 = 0;
  }

  [v2 close];

  return v3;
}

- (unsigned)userVersion
{
  v2 = [(_bmFMDatabase *)self executeQuery:@"pragma user_version"];
  if ([v2 next])
  {
    v3 = [v2 longLongIntForColumnIndex:0];
  }

  else
  {
    v3 = 0;
  }

  [v2 close];

  return v3;
}

- (BOOL)validateSQL:(id)l error:(id *)error
{
  ppStmt = 0;
  lCopy = l;
  sqliteHandle = [(_bmFMDatabase *)self sqliteHandle];
  uTF8String = [lCopy UTF8String];

  v9 = sqlite3_prepare_v2(sqliteHandle, uTF8String, -1, &ppStmt, 0);
  v10 = v9;
  if (error && v9)
  {
    lastErrorCode = [(_bmFMDatabase *)self lastErrorCode];
    lastErrorMessage = [(_bmFMDatabase *)self lastErrorMessage];
    v13 = [NSDictionary dictionaryWithObject:lastErrorMessage forKey:NSLocalizedDescriptionKey];
    *error = [NSError errorWithDomain:NSCocoaErrorDomain code:lastErrorCode userInfo:v13];
  }

  sqlite3_finalize(ppStmt);
  return v10 == 0;
}

@end