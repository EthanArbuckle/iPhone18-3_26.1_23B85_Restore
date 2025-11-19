@interface _bmFMDatabase
+ (_bmFMDatabase)databaseWithPath:(id)a3;
+ (_bmFMDatabase)databaseWithURL:(id)a3;
+ (id)sqliteLibVersion;
+ (id)storeableDateFormat:(id)a3;
+ (int)FMDBVersion;
- (BOOL)BOOLForQuery:(id)a3;
- (BOOL)DELETE_FROM:(id)a3 WHERE:(id)a4;
- (BOOL)INSERT_INTO:(id)a3 VALUES:(id)a4;
- (BOOL)UPDATE:(id)a3 SET:(id)a4 WHERE:(id)a5;
- (BOOL)beginDeferredTransaction;
- (BOOL)beginExclusiveTransaction;
- (BOOL)beginImmediateTransaction;
- (BOOL)beginTransaction;
- (BOOL)bindStatement:(sqlite3_stmt *)a3 WithArgumentsInArray:(id)a4 orDictionary:(id)a5 orVAList:(char *)a6;
- (BOOL)checkpoint:(int)a3 name:(id)a4 logFrameCount:(int *)a5 checkpointCount:(int *)a6 error:(id *)a7;
- (BOOL)close;
- (BOOL)columnExists:(id)a3 inTableWithName:(id)a4;
- (BOOL)commit;
- (BOOL)databaseExists;
- (BOOL)executeStatements:(id)a3 withResultBlock:(id)a4;
- (BOOL)executeUpdate:(id)a3 error:(id *)a4 withArgumentsInArray:(id)a5 orDictionary:(id)a6 orVAList:(char *)a7;
- (BOOL)executeUpdateWithFormat:(id)a3;
- (BOOL)goodConnection;
- (BOOL)interrupt;
- (BOOL)open;
- (BOOL)openWithFlags:(int)a3 vfs:(id)a4;
- (BOOL)rekey:(id)a3;
- (BOOL)releaseSavePointWithName:(id)a3 error:(id *)a4;
- (BOOL)rollback;
- (BOOL)rollbackToSavePointWithName:(id)a3 error:(id *)a4;
- (BOOL)setKey:(id)a3;
- (BOOL)startSavePointWithName:(id)a3 error:(id *)a4;
- (BOOL)tableExists:(id)a3;
- (BOOL)validateSQL:(id)a3 error:(id *)a4;
- (NSURL)databaseURL;
- (_bmFMDatabase)initWithPath:(id)a3;
- (_bmFMDatabase)initWithURL:(id)a3;
- (const)sqlitePath;
- (double)doubleForQuery:(id)a3;
- (id)SELECT_FROM:(id)a3 COLUMNS:(id)a4 JOIN:(id)a5 WHERE:(id)a6 GROUP_BY:(id)a7 HAVING:(id)a8 ORDER_BY:(id)a9 LIMIT:(id)a10;
- (id)_SELECT_FROM:(id)a3 COLUMNS:(id)a4 JOIN:(id)a5 WHERE:(id)a6 GROUP_BY:(id)a7 ORDER_BY:(id)a8 LIMIT:(id)a9;
- (id)cachedStatementForQuery:(id)a3;
- (id)dataForQuery:(id)a3;
- (id)dateForQuery:(id)a3;
- (id)errorWithMessage:(id)a3;
- (id)executeQuery:(id)a3;
- (id)executeQuery:(id)a3 values:(id)a4 error:(id *)a5;
- (id)executeQueryWithFormat:(id)a3;
- (id)getTableSchema:(id)a3;
- (id)inSavePoint:(id)a3;
- (id)lastError;
- (id)lastErrorMessage;
- (id)stringForQuery:(id)a3;
- (id)valueData:(void *)a3;
- (id)valueString:(void *)a3;
- (int)bindObject:(id)a3 toColumn:(int)a4 inStatement:(sqlite3_stmt *)a5;
- (int)busyRetryTimeout;
- (int)changes;
- (int)intForQuery:(id)a3;
- (int64_t)lastInsertRowId;
- (int64_t)longForQuery:(id)a3;
- (unsigned)applicationID;
- (unsigned)userVersion;
- (void)clearCachedStatements;
- (void)closeOpenResultSets;
- (void)dealloc;
- (void)extractSQL:(id)a3 argumentsList:(char *)a4 intoString:(id)a5 arguments:(id)a6;
- (void)makeFunctionNamed:(id)a3 arguments:(int)a4 block:(id)a5;
- (void)resultData:(id)a3 context:(void *)a4;
- (void)resultError:(id)a3 context:(void *)a4;
- (void)resultSetDidClose:(id)a3;
- (void)resultString:(id)a3 context:(void *)a4;
- (void)setCachedStatement:(id)a3 forQuery:(id)a4;
- (void)setMaxBusyRetryTimeInterval:(double)a3;
- (void)setShouldCacheStatements:(BOOL)a3;
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

- (id)_SELECT_FROM:(id)a3 COLUMNS:(id)a4 JOIN:(id)a5 WHERE:(id)a6 GROUP_BY:(id)a7 ORDER_BY:(id)a8 LIMIT:(id)a9
{
  v15 = a3;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v41 = a9;
  v20 = [a4 componentsJoinedByString:{@", "}];
  v21 = [NSMutableString stringWithFormat:@"SELECT %@ FROM %@", v20, v15];

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v22 = v16;
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

        [v21 appendString:*(*(&v42 + 1) + 8 * i)];
      }

      v24 = [v22 countByEnumeratingWithState:&v42 objects:v46 count:16];
    }

    while (v24);
  }

  if (v17)
  {
    v40 = self;
    v27 = v19;
    v28 = v18;
    v29 = v15;
    v30 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v17 count] >> 1);
    [v21 appendString:@" WHERE "];
    v31 = [v17 count];
    if (v31)
    {
      v32 = v31;
      for (j = 0; j < v32; j += 2)
      {
        v34 = [v17 objectAtIndexedSubscript:j];
        [v21 appendString:v34];

        v35 = [v17 objectAtIndexedSubscript:j + 1];
        [v30 addObject:v35];
      }
    }

    v15 = v29;
    v18 = v28;
    v19 = v27;
    self = v40;
  }

  else
  {
    v30 = 0;
  }

  if ([v18 count])
  {
    v36 = [v18 componentsJoinedByString:{@", "}];
    [v21 appendFormat:@" GROUP BY %@", v36];
  }

  if ([v19 count])
  {
    v37 = [v19 componentsJoinedByString:{@", "}];
    [v21 appendFormat:@" ORDER BY %@", v37];
  }

  if ([v41 integerValue] >= 1)
  {
    [v21 appendFormat:@" LIMIT %@", v41];
  }

  [v21 appendString:@";"];
  if (v30)
  {
    [(_bmFMDatabase *)self executeQuery:v21 withArgumentsInArray:v30];
  }

  else
  {
    [(_bmFMDatabase *)self executeQuery:v21];
  }
  v38 = ;

  return v38;
}

- (id)SELECT_FROM:(id)a3 COLUMNS:(id)a4 JOIN:(id)a5 WHERE:(id)a6 GROUP_BY:(id)a7 HAVING:(id)a8 ORDER_BY:(id)a9 LIMIT:(id)a10
{
  v15 = a3;
  v16 = a5;
  v17 = a6;
  v46 = a7;
  v18 = a8;
  v19 = a9;
  v20 = a10;
  v21 = [a4 componentsJoinedByString:{@", "}];
  v45 = v15;
  v22 = [NSMutableString stringWithFormat:@"SELECT %@ FROM %@", v21, v15];

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v23 = v16;
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

        [v22 appendString:*(*(&v47 + 1) + 8 * i)];
      }

      v25 = [v23 countByEnumeratingWithState:&v47 objects:v51 count:16];
    }

    while (v25);
  }

  if (v17)
  {
    v28 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v17 count] >> 1);
    [v22 appendString:@" WHERE "];
    v29 = [v17 count];
    if (v29)
    {
      v30 = v29;
      for (j = 0; j < v30; j += 2)
      {
        v32 = [v17 objectAtIndexedSubscript:j];
        [v22 appendString:v32];

        v33 = [v17 objectAtIndexedSubscript:j + 1];
        [v28 addObject:v33];
      }
    }
  }

  else
  {
    v28 = 0;
  }

  v34 = v46;
  if ([v46 count])
  {
    v35 = [v46 componentsJoinedByString:{@", "}];
    [v22 appendFormat:@" GROUP BY %@", v35];
  }

  if (v18)
  {
    if (!v28)
    {
      v28 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v17 count] >> 1);
    }

    [v22 appendString:@" HAVING "];
    v36 = [v18 count];
    if (v36)
    {
      v37 = v36;
      for (k = 0; k < v37; k += 2)
      {
        v39 = [v18 objectAtIndexedSubscript:k];
        [v22 appendString:v39];

        v40 = [v18 objectAtIndexedSubscript:k + 1];
        [v28 addObject:v40];
      }

      v34 = v46;
    }
  }

  if ([v19 count])
  {
    v41 = [v19 componentsJoinedByString:{@", "}];
    [v22 appendFormat:@" ORDER BY %@", v41];
  }

  if ([v20 integerValue] >= 1)
  {
    [v22 appendFormat:@" LIMIT %@", v20];
  }

  [v22 appendString:@";"];
  if (v28)
  {
    [(_bmFMDatabase *)self executeQuery:v22 withArgumentsInArray:v28];
  }

  else
  {
    [(_bmFMDatabase *)self executeQuery:v22];
  }
  v42 = ;

  return v42;
}

- (BOOL)UPDATE:(id)a3 SET:(id)a4 WHERE:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [NSMutableString stringWithFormat:@"UPDATE OR FAIL %@ SET ", a3];
  v10 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v7 count] + (objc_msgSend(v8, "count") >> 1));
  v27 = v7;
  v11 = [v7 allKeys];
  v12 = [v11 count];
  if (v12)
  {
    v13 = v12;
    v14 = 0;
    v15 = v12 - 1;
    do
    {
      v16 = [v11 objectAtIndexedSubscript:v14];
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
  v19 = [v8 count];
  if (v19)
  {
    v20 = v19;
    for (i = 0; i < v20; i += 2)
    {
      v22 = [v8 objectAtIndexedSubscript:i];
      [v9 appendString:v22];

      v23 = [v8 objectAtIndexedSubscript:i + 1];
      [v10 addObject:v23];
    }
  }

  [v9 appendString:@";"];
  v24 = [(_bmFMDatabase *)self executeUpdate:v9 withArgumentsInArray:v10];

  return v24;
}

- (BOOL)INSERT_INTO:(id)a3 VALUES:(id)a4
{
  v5 = a4;
  v6 = [NSMutableString stringWithFormat:@"INSERT INTO %@", a3];
  v7 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v5 count]);
  objc_msgSend(v6, "appendString:", @"(");
  v8 = [v5 count];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v9 = v5;
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

- (BOOL)DELETE_FROM:(id)a3 WHERE:(id)a4
{
  v6 = a4;
  v7 = [NSMutableString stringWithFormat:@"DELETE FROM %@", a3];
  v8 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v6 count] >> 1);
  [v7 appendString:@" WHERE "];
  v9 = [v6 count];
  if (v9)
  {
    v10 = v9;
    for (i = 0; i < v10; i += 2)
    {
      v12 = [v6 objectAtIndexedSubscript:i];
      [v7 appendString:v12];

      v13 = [v6 objectAtIndexedSubscript:i + 1];
      [v8 addObject:v13];
    }
  }

  [v7 appendString:@";"];
  v14 = [(_bmFMDatabase *)self executeUpdate:v7 withArgumentsInArray:v8];

  return v14;
}

+ (_bmFMDatabase)databaseWithPath:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithPath:v4];

  return v5;
}

+ (_bmFMDatabase)databaseWithURL:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithURL:v4];

  return v5;
}

- (_bmFMDatabase)initWithURL:(id)a3
{
  v4 = [a3 path];
  v5 = [(_bmFMDatabase *)self initWithPath:v4];

  return v5;
}

- (_bmFMDatabase)initWithPath:(id)a3
{
  v4 = a3;
  if (!sqlite3_threadsafe())
  {
    sub_100043618();
  }

  v11.receiver = self;
  v11.super_class = _bmFMDatabase;
  v5 = [(_bmFMDatabase *)&v11 init];
  if (v5)
  {
    v6 = [v4 copy];
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
  block[4] = a1;
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

- (BOOL)openWithFlags:(int)a3 vfs:(id)a4
{
  v6 = a4;
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

    v8 = sqlite3_open_v2(-[_bmFMDatabase sqlitePath](self, "sqlitePath"), &self->_db, a3, [v6 UTF8String]);
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

- (void)setMaxBusyRetryTimeInterval:(double)a3
{
  v3 = self;
  self->_maxBusyRetryTimeInterval = a3;
  db = self->_db;
  if (db)
  {
    if (a3 <= 0.0)
    {
      v5 = 0;
      v3 = 0;
    }

    else
    {
      v5 = sub_100040960;
    }

    sqlite3_busy_handler(db, v5, v3);
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
        v10 = [v9 pointerValue];
        [v10 setParentDB:0];
        [v10 close];
        [(NSMutableSet *)self->_openResultSets removeObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

- (void)resultSetDidClose:(id)a3
{
  v4 = [NSValue valueWithNonretainedObject:a3];
  [(NSMutableSet *)self->_openResultSets removeObject:v4];
}

- (void)clearCachedStatements
{
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v3 = [(NSMutableDictionary *)self->_cachedStatements objectEnumerator];
  v4 = [v3 countByEnumeratingWithState:&v18 objects:v23 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v18 + 1) + 8 * v7);
        v14 = 0u;
        v15 = 0u;
        v16 = 0u;
        v17 = 0u;
        v9 = [v8 allObjects];
        v10 = [v9 countByEnumeratingWithState:&v14 objects:v22 count:16];
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
                objc_enumerationMutation(v9);
              }

              [*(*(&v14 + 1) + 8 * v13) close];
              v13 = v13 + 1;
            }

            while (v11 != v13);
            v11 = [v9 countByEnumeratingWithState:&v14 objects:v22 count:16];
          }

          while (v11);
        }

        v7 = v7 + 1;
      }

      while (v7 != v5);
      v5 = [v3 countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v5);
  }

  [(NSMutableDictionary *)self->_cachedStatements removeAllObjects];
}

- (id)cachedStatementForQuery:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_cachedStatements objectForKey:a3];
  v4 = [v3 objectsPassingTest:&stru_100079A90];
  v5 = [v4 anyObject];

  return v5;
}

- (void)setCachedStatement:(id)a3 forQuery:(id)a4
{
  v11 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = v7;
    v9 = [v7 copy];

    [v11 setQuery:v9];
    v10 = [(NSMutableDictionary *)self->_cachedStatements objectForKey:v9];
    if (!v10)
    {
      v10 = +[NSMutableSet set];
    }

    [v10 addObject:v11];
    [(NSMutableDictionary *)self->_cachedStatements setObject:v10 forKey:v9];
  }

  else
  {
    sub_100043644(a2, self);
  }
}

- (BOOL)rekey:(id)a3
{
  v5 = a3;
  v6 = a3;
  v7 = [v6 UTF8String];
  v8 = [v6 UTF8String];

  v9 = [NSData dataWithBytes:v7 length:strlen(v8)];
  LOBYTE(self) = [(_bmFMDatabase *)self rekeyWithData:v9];

  return self;
}

- (BOOL)setKey:(id)a3
{
  v5 = a3;
  v6 = a3;
  v7 = [v6 UTF8String];
  v8 = [v6 UTF8String];

  v9 = [NSData dataWithBytes:v7 length:strlen(v8)];
  LOBYTE(self) = [(_bmFMDatabase *)self setKeyWithData:v9];

  return self;
}

+ (id)storeableDateFormat:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NSDateFormatter);
  [v4 setDateFormat:v3];

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

- (id)errorWithMessage:(id)a3
{
  v4 = [NSDictionary dictionaryWithObject:a3 forKey:NSLocalizedDescriptionKey];
  v5 = [NSError errorWithDomain:@"_bmFMDatabase" code:sqlite3_errcode(self->_db) userInfo:v4];

  return v5;
}

- (id)lastError
{
  v3 = [(_bmFMDatabase *)self lastErrorMessage];
  v4 = [(_bmFMDatabase *)self errorWithMessage:v3];

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

- (int)bindObject:(id)a3 toColumn:(int)a4 inStatement:(sqlite3_stmt *)a5
{
  v8 = a3;
  if (v8)
  {
    v9 = +[NSNull null];

    if (v9 != v8)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = [v8 bytes];
        if (v10)
        {
          v11 = v10;
        }

        else
        {
          v11 = "";
        }

        v12 = sqlite3_bind_blob(a5, a4, v11, [v8 length], 0xFFFFFFFFFFFFFFFFLL);
        goto LABEL_9;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if ([(_bmFMDatabase *)self hasDateFormatter])
        {
          v15 = [(_bmFMDatabase *)self stringFromDate:v8];
LABEL_42:
          v29 = v15;
          v13 = sqlite3_bind_text(a5, a4, [v15 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);

          goto LABEL_10;
        }

        [v8 timeIntervalSince1970];
        goto LABEL_44;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
LABEL_41:
        v15 = [v8 description];
        goto LABEL_42;
      }

      v16 = [v8 objCType];
      if (*v16 != 99 || v16[1])
      {
        v17 = [v8 objCType];
        if (*v17 == 67 && !v17[1])
        {
          v31 = [v8 unsignedCharValue];
          goto LABEL_50;
        }

        v18 = [v8 objCType];
        if (*v18 == 115 && !v18[1])
        {
          v31 = [v8 shortValue];
          goto LABEL_50;
        }

        v19 = [v8 objCType];
        if (*v19 == 83 && !v19[1])
        {
          v31 = [v8 unsignedShortValue];
          goto LABEL_50;
        }

        v20 = [v8 objCType];
        if (*v20 == 105 && !v20[1])
        {
          v31 = [v8 intValue];
          goto LABEL_50;
        }

        v21 = [v8 objCType];
        if (*v21 == 73 && !v21[1])
        {
          v32 = [v8 unsignedIntValue];
        }

        else
        {
          v22 = [v8 objCType];
          if (*v22 == 113 && !v22[1])
          {
            v33 = [v8 longValue];
          }

          else
          {
            v23 = [v8 objCType];
            if (*v23 == 81 && !v23[1])
            {
              v33 = [v8 unsignedLongValue];
            }

            else
            {
              v24 = [v8 objCType];
              if (*v24 == 113 && !v24[1])
              {
                v33 = [v8 longLongValue];
              }

              else
              {
                v25 = [v8 objCType];
                if (*v25 != 81 || v25[1])
                {
                  v26 = [v8 objCType];
                  if (*v26 == 102 && !v26[1])
                  {
                    [v8 floatValue];
                    v30 = v34;
                  }

                  else
                  {
                    v27 = [v8 objCType];
                    if (*v27 != 100 || v27[1])
                    {
                      v28 = [v8 objCType];
                      if (*v28 != 66 || v28[1])
                      {
                        goto LABEL_41;
                      }

                      v31 = [v8 BOOLValue];
LABEL_50:
                      v12 = sqlite3_bind_int(a5, a4, v31);
                      goto LABEL_9;
                    }

                    [v8 doubleValue];
                  }

LABEL_44:
                  v12 = sqlite3_bind_double(a5, a4, v30);
                  goto LABEL_9;
                }

                v33 = [v8 unsignedLongLongValue];
              }
            }
          }

          v32 = v33;
        }

        v12 = sqlite3_bind_int64(a5, a4, v32);
        goto LABEL_9;
      }

      v31 = [v8 charValue];
      goto LABEL_50;
    }
  }

  v12 = sqlite3_bind_null(a5, a4);
LABEL_9:
  v13 = v12;
LABEL_10:

  return v13;
}

- (void)extractSQL:(id)a3 argumentsList:(char *)a4 intoString:(id)a5 arguments:(id)a6
{
  v9 = a3;
  v45 = a4;
  v10 = a5;
  v11 = a6;
  v12 = [v9 length];
  if (v12)
  {
    v13 = v12;
    LODWORD(v14) = 0;
    for (i = 0; i < v13; ++i)
    {
      v16 = v14;
      v17 = [v9 characterAtIndex:i];
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
              v34 = v45;
              v45 += 8;
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
              v21 = v45;
              v45 += 8;
              v22 = [NSNumber numberWithDouble:*v21];
              goto LABEL_45;
          }
        }

        else
        {
          switch(v17)
          {
            case '@':
              v32 = v45;
              v45 += 8;
              v22 = *v32;
              goto LABEL_45;
            case 'D':
              goto LABEL_27;
            case 'U':
LABEL_30:
              v24 = v45;
              v45 += 8;
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
            v29 = v45;
            v45 += 8;
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

            if ([v9 characterAtIndex:i + 1] == 105)
            {
              v31 = v45;
              v45 += 8;
              v20 = [NSNumber numberWithShort:*v31];
            }

            else
            {
              if ([v9 characterAtIndex:i + 1] != 117)
              {
LABEL_53:
                v36 = 104;
                goto LABEL_61;
              }

              v38 = v45;
              v45 += 8;
              v20 = [NSNumber numberWithUnsignedShort:*v38];
            }

LABEL_56:
            v35 = v20;
            i = v18;
LABEL_57:
            if (v35)
            {
LABEL_46:
              [v10 appendString:@"?"];
              [v11 addObject:v35];

              continue;
            }

            break;
          case 'i':
LABEL_27:
            v23 = v45;
            v45 += 8;
            v22 = [NSNumber numberWithInt:*v23];
            goto LABEL_45;
        }
      }

      else if (v17 > 114)
      {
        if (v17 == 115)
        {
          v28 = v45;
          v45 += 8;
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

          v25 = [v9 characterAtIndex:i + 1];
          if (v25 == 100)
          {
            v40 = v45;
            v45 += 8;
            v20 = [NSNumber numberWithLong:*v40];
            goto LABEL_56;
          }

          if (v25 == 117)
          {
            v39 = v45;
            v45 += 8;
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

          if ([v9 characterAtIndex:i] == 100)
          {
            v26 = v45;
            v45 += 8;
            v27 = [NSNumber numberWithLongLong:*v26];
          }

          else
          {
            if ([v9 characterAtIndex:i] != 117)
            {
LABEL_68:
              v36 = 108;
              i = v18;
LABEL_61:
              v44 = v36;
              v41 = v10;
              v42 = @"%C";
LABEL_62:
              [v41 appendFormat:v42, v44];
              continue;
            }

            v43 = v45;
            v45 += 8;
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

          if ([v9 characterAtIndex:i + 1] == 105)
          {
            v19 = v45;
            v45 += 8;
            v20 = [NSNumber numberWithLongLong:*v19];
          }

          else
          {
            if ([v9 characterAtIndex:i + 1] != 117)
            {
LABEL_50:
              v36 = 113;
              goto LABEL_61;
            }

            v37 = v45;
            v45 += 8;
            v20 = [NSNumber numberWithUnsignedLongLong:*v37];
          }

          goto LABEL_56;
        }
      }

      if (v14 == 64)
      {
        v41 = v10;
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

- (BOOL)bindStatement:(sqlite3_stmt *)a3 WithArgumentsInArray:(id)a4 orDictionary:(id)a5 orVAList:(char *)a6
{
  v36 = a4;
  v10 = a5;
  v43 = a6;
  v11 = sqlite3_bind_parameter_count(a3);
  v35 = v11;
  if (v10)
  {
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    obj = [v10 allKeys];
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
            v18 = [v10 objectForKey:v16];
            NSLog(@"%@ = %@", v17, v18);
          }

          v19 = sqlite3_bind_parameter_index(a3, [v17 UTF8String]);
          if (v19 < 1)
          {
            NSLog(@"Could not find index for %@", v16);
          }

          else
          {
            v20 = v19;
            v21 = v10;
            v22 = [v10 objectForKey:v16];
            v23 = [(_bmFMDatabase *)self bindObject:v22 toColumn:v20 inStatement:a3];

            if (v23)
            {
              v33 = sqlite3_errmsg(self->_db);
              NSLog(@"Error: unable to bind (%d, %s"), v23, v33;
              sqlite3_finalize(a3);
              self->_isExecutingStatement = 0;

              v25 = 0;
              v32 = 0;
              v10 = v21;
              goto LABEL_38;
            }

            LODWORD(v38) = v38 + 1;
            v10 = v21;
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

      if (v36 && v24 < [v36 count])
      {
        v27 = [v36 objectAtIndex:v24];
      }

      else
      {
        if (!v43)
        {
          LODWORD(v38) = v24;
          break;
        }

        v28 = v43;
        v43 += 8;
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

      v29 = [(_bmFMDatabase *)self bindObject:v25 toColumn:++v24 inStatement:a3];
      if (v29)
      {
        v30 = v29;
        v31 = sqlite3_errmsg(self->_db);
        NSLog(@"Error: unable to bind (%d, %s"), v30, v31;
        sqlite3_finalize(a3);
        v32 = 0;
        self->_isExecutingStatement = 0;
        v10 = 0;
        goto LABEL_38;
      }
    }

    v10 = 0;
  }

  if (v38 == v35)
  {
    v32 = 1;
  }

  else
  {
    NSLog(@"Error: the bind count is not correct for the # of variables (executeQuery)");
    sqlite3_finalize(a3);
    v32 = 0;
    self->_isExecutingStatement = 0;
  }

  v25 = v26;
LABEL_38:

  return v32;
}

- (id)executeQuery:(id)a3
{
  v3 = [(_bmFMDatabase *)self executeQuery:a3 withArgumentsInArray:0 orDictionary:0 orVAList:&v6 shouldBind:1];

  return v3;
}

- (id)executeQueryWithFormat:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableString stringWithCapacity:](NSMutableString, "stringWithCapacity:", [v4 length]);
  v6 = +[NSMutableArray array];
  [(_bmFMDatabase *)self extractSQL:v4 argumentsList:&v10 intoString:v5 arguments:v6];

  v7 = [(_bmFMDatabase *)self executeQuery:v5 withArgumentsInArray:v6];

  return v7;
}

- (id)executeQuery:(id)a3 values:(id)a4 error:(id *)a5
{
  v7 = [(_bmFMDatabase *)self executeQuery:a3 withArgumentsInArray:a4 orDictionary:0 orVAList:0 shouldBind:1];
  v8 = v7;
  if (a5 && !v7)
  {
    *a5 = [(_bmFMDatabase *)self lastError];
  }

  return v8;
}

- (BOOL)executeUpdate:(id)a3 error:(id *)a4 withArgumentsInArray:(id)a5 orDictionary:(id)a6 orVAList:(char *)a7
{
  v9 = [(_bmFMDatabase *)self executeQuery:a3 withArgumentsInArray:a5 orDictionary:a6 orVAList:a7 shouldBind:1];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 internalStepWithError:a4] == 101;
  }

  else if (a4)
  {
    [(_bmFMDatabase *)self lastError];
    *a4 = v11 = 0;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)executeUpdateWithFormat:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableString stringWithCapacity:](NSMutableString, "stringWithCapacity:", [v4 length]);
  v6 = +[NSMutableArray array];
  [(_bmFMDatabase *)self extractSQL:v4 argumentsList:&v8 intoString:v5 arguments:v6];

  LOBYTE(self) = [(_bmFMDatabase *)self executeUpdate:v5 withArgumentsInArray:v6];
  return self;
}

- (BOOL)executeStatements:(id)a3 withResultBlock:(id)a4
{
  errmsg = 0;
  v6 = a4;
  v7 = a3;
  v8 = [(_bmFMDatabase *)self sqliteHandle];
  v9 = [v7 UTF8String];

  if (v6)
  {
    v10 = sub_100042704;
  }

  else
  {
    v10 = 0;
  }

  v11 = sqlite3_exec(v8, v9, v10, v6, &errmsg);

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

- (BOOL)startSavePointWithName:(id)a3 error:(id *)a4
{
  v7 = a3;
  if (!v7)
  {
    sub_100043810(a2, self);
  }

  v8 = [NSString alloc];
  v9 = [v7 stringByReplacingOccurrencesOfString:@"'" withString:@"''"];
  v10 = [v8 initWithFormat:@"savepoint '%@';", v9];

  v11 = [(_bmFMDatabase *)self executeUpdate:v10 error:a4 withArgumentsInArray:0 orDictionary:0 orVAList:0];
  return v11;
}

- (BOOL)releaseSavePointWithName:(id)a3 error:(id *)a4
{
  v7 = a3;
  if (!v7)
  {
    sub_10004388C(a2, self);
  }

  v8 = [NSString alloc];
  v9 = [v7 stringByReplacingOccurrencesOfString:@"'" withString:@"''"];
  v10 = [v8 initWithFormat:@"release savepoint '%@';", v9];

  v11 = [(_bmFMDatabase *)self executeUpdate:v10 error:a4 withArgumentsInArray:0 orDictionary:0 orVAList:0];
  return v11;
}

- (BOOL)rollbackToSavePointWithName:(id)a3 error:(id *)a4
{
  v7 = a3;
  if (!v7)
  {
    sub_100043908(a2, self);
  }

  v8 = [NSString alloc];
  v9 = [v7 stringByReplacingOccurrencesOfString:@"'" withString:@"''"];
  v10 = [v8 initWithFormat:@"rollback transaction to savepoint '%@';", v9];

  v11 = [(_bmFMDatabase *)self executeUpdate:v10 error:a4 withArgumentsInArray:0 orDictionary:0 orVAList:0];
  return v11;
}

- (id)inSavePoint:(id)a3
{
  v4 = a3;
  v5 = [NSString alloc];
  v6 = qword_10008BDA0++;
  v7 = [v5 initWithFormat:@"dbSavePoint%ld", v6];
  v17 = 0;
  v16 = 0;
  v8 = [(_bmFMDatabase *)self startSavePointWithName:v7 error:&v16];
  v9 = v16;
  if (v8)
  {
    if (v4)
    {
      v4[2](v4, &v17);
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

- (BOOL)checkpoint:(int)a3 name:(id)a4 logFrameCount:(int *)a5 checkpointCount:(int *)a6 error:(id *)a7
{
  v13 = a4;
  v14 = sqlite3_wal_checkpoint_v2(self->_db, [v13 UTF8String], a3, a5, a6);
  if (v14)
  {
    if (a7)
    {
      *a7 = [(_bmFMDatabase *)self lastError];
    }

    if ([(_bmFMDatabase *)self logsErrors])
    {
      v15 = [(_bmFMDatabase *)self lastErrorMessage];
      NSLog(@"%@", v15);
    }

    if ([(_bmFMDatabase *)self crashOnErrors])
    {
      sub_100043984(self, a2);
    }
  }

  return v14 == 0;
}

- (void)setShouldCacheStatements:(BOOL)a3
{
  self->_shouldCacheStatements = a3;
  if (!a3 || !self->_cachedStatements && (+[NSMutableDictionary dictionary], v4 = objc_claimAutoreleasedReturnValue(), [(_bmFMDatabase *)self setCachedStatements:v4], v4, !self->_shouldCacheStatements))
  {

    [(_bmFMDatabase *)self setCachedStatements:0];
  }
}

- (void)makeFunctionNamed:(id)a3 arguments:(int)a4 block:(id)a5
{
  v14 = a3;
  v8 = a5;
  if (!self->_openFunctions)
  {
    v9 = objc_opt_new();
    openFunctions = self->_openFunctions;
    self->_openFunctions = v9;
  }

  v11 = [v8 copy];
  [(NSMutableSet *)self->_openFunctions addObject:v11];
  v12 = [(_bmFMDatabase *)self sqliteHandle];
  v13 = v14;
  sqlite3_create_function(v12, [v14 UTF8String], a4, 1, v11, sub_100043058, 0, 0);
}

- (id)valueData:(void *)a3
{
  v4 = sqlite3_value_blob(a3);
  v5 = sqlite3_value_bytes(a3);
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

- (id)valueString:(void *)a3
{
  v3 = sqlite3_value_text(a3);
  if (v3)
  {
    v3 = [NSString stringWithUTF8String:v3];
  }

  return v3;
}

- (void)resultData:(id)a3 context:(void *)a4
{
  v5 = a3;
  v6 = [v5 bytes];
  v7 = [v5 length];

  sqlite3_result_blob(a4, v6, v7, 0xFFFFFFFFFFFFFFFFLL);
}

- (void)resultString:(id)a3 context:(void *)a4
{
  v5 = [a3 UTF8String];

  sqlite3_result_text(a4, v5, -1, 0xFFFFFFFFFFFFFFFFLL);
}

- (void)resultError:(id)a3 context:(void *)a4
{
  v5 = [a3 UTF8String];

  sqlite3_result_error(a4, v5, -1);
}

- (id)stringForQuery:(id)a3
{
  v3 = [(_bmFMDatabase *)self executeQuery:a3 withArgumentsInArray:0 orDictionary:0 orVAList:&v7 shouldBind:1];
  v4 = 0;
  if ([v3 next])
  {
    v4 = [v3 stringForColumnIndex:0];
    [v3 close];
    [v3 setParentDB:0];
  }

  return v4;
}

- (int)intForQuery:(id)a3
{
  v3 = [(_bmFMDatabase *)self executeQuery:a3 withArgumentsInArray:0 orDictionary:0 orVAList:&v6 shouldBind:1];
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

- (int64_t)longForQuery:(id)a3
{
  v3 = [(_bmFMDatabase *)self executeQuery:a3 withArgumentsInArray:0 orDictionary:0 orVAList:&v6 shouldBind:1];
  v4 = 0;
  if ([v3 next])
  {
    v4 = [v3 longForColumnIndex:0];
    [v3 close];
    [v3 setParentDB:0];
  }

  return v4;
}

- (BOOL)BOOLForQuery:(id)a3
{
  v3 = [(_bmFMDatabase *)self executeQuery:a3 withArgumentsInArray:0 orDictionary:0 orVAList:&v6 shouldBind:1];
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

- (double)doubleForQuery:(id)a3
{
  v3 = [(_bmFMDatabase *)self executeQuery:a3 withArgumentsInArray:0 orDictionary:0 orVAList:&v7 shouldBind:1];
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

- (id)dataForQuery:(id)a3
{
  v3 = [(_bmFMDatabase *)self executeQuery:a3 withArgumentsInArray:0 orDictionary:0 orVAList:&v7 shouldBind:1];
  v4 = 0;
  if ([v3 next])
  {
    v4 = [v3 dataForColumnIndex:0];
    [v3 close];
    [v3 setParentDB:0];
  }

  return v4;
}

- (id)dateForQuery:(id)a3
{
  v3 = [(_bmFMDatabase *)self executeQuery:a3 withArgumentsInArray:0 orDictionary:0 orVAList:&v7 shouldBind:1];
  v4 = 0;
  if ([v3 next])
  {
    v4 = [v3 dateForColumnIndex:0];
    [v3 close];
    [v3 setParentDB:0];
  }

  return v4;
}

- (BOOL)tableExists:(id)a3
{
  v4 = [a3 lowercaseString];
  v5 = [(_bmFMDatabase *)self executeQuery:@"select [sql] from sqlite_master where [type] = 'table' and lower(name) = ?", v4];
  v6 = [v5 next];
  [v5 close];

  return v6;
}

- (id)getTableSchema:(id)a3
{
  v4 = a3;
  v5 = [[NSString alloc] initWithFormat:@"pragma table_info('%@')", v4];

  v6 = [(_bmFMDatabase *)self executeQuery:v5];

  return v6;
}

- (BOOL)columnExists:(id)a3 inTableWithName:(id)a4
{
  v6 = a3;
  v7 = [a4 lowercaseString];
  v8 = [v6 lowercaseString];

  v9 = [(_bmFMDatabase *)self getTableSchema:v7];
  do
  {
    v10 = [v9 next];
    if (!v10)
    {
      break;
    }

    v11 = [v9 stringForColumn:@"name"];
    v12 = [v11 lowercaseString];
    v13 = [v12 isEqualToString:v8];
  }

  while (!v13);
  [v9 close];

  return v10;
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

- (BOOL)validateSQL:(id)a3 error:(id *)a4
{
  ppStmt = 0;
  v6 = a3;
  v7 = [(_bmFMDatabase *)self sqliteHandle];
  v8 = [v6 UTF8String];

  v9 = sqlite3_prepare_v2(v7, v8, -1, &ppStmt, 0);
  v10 = v9;
  if (a4 && v9)
  {
    v11 = [(_bmFMDatabase *)self lastErrorCode];
    v12 = [(_bmFMDatabase *)self lastErrorMessage];
    v13 = [NSDictionary dictionaryWithObject:v12 forKey:NSLocalizedDescriptionKey];
    *a4 = [NSError errorWithDomain:NSCocoaErrorDomain code:v11 userInfo:v13];
  }

  sqlite3_finalize(ppStmt);
  return v10 == 0;
}

@end