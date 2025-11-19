@interface TSPDatabase
- (BOOL)closeWithError:(id *)a3;
- (BOOL)documentVersion:(id *)a3 closedCleanlyToken:(int64_t *)a4 error:(id *)a5;
- (BOOL)documentVersion:(unint64_t *)a3 error:(id *)a4;
- (BOOL)insertDataStateWithSize:(int)a3 identifier:(int64_t *)a4 error:(id *)a5;
- (BOOL)insertObjectWithIdentifier:(int64_t)a3 stateIdentifier:(const ObjectStateIdentifier *)a4 classType:(int)a5 error:(id *)a6;
- (BOOL)insertRelationshipWithSourceIdentifier:(int64_t)a3 targetIdentifier:(int64_t)a4 error:(id *)a5;
- (BOOL)lastObjectIdentifier:(int64_t *)a3 error:(id *)a4;
- (BOOL)numberOfDatabaseObjects:(unint64_t *)a3 error:(id *)a4;
- (BOOL)setClosedCleanlyToken:(int64_t)a3 error:(id *)a4;
- (BOOL)setDocumentVersion:(id)a3 error:(id *)a4;
- (BOOL)updateDataStateWithIdentifier:(int64_t)a3 size:(int)a4 error:(id *)a5;
- (BOOL)upgradeFromSchemaVersion:(int)a3 error:(id *)a4;
- (TSPDatabase)init;
- (TSPDatabase)initWithPath:(id)a3 error:(id *)a4;
- (id)initReadonlyWithPath:(id)a3 error:(id *)a4;
- (id)objectFromStatement:(sqlite3_stmt *)a3;
- (id)queryFirstObjectWithStatement:(sqlite3_stmt *)a3 error:(id *)a4;
- (id)queryObjectWithIdentifier:(int64_t)a3 error:(id *)a4;
- (id)queryObjectsWithMessageTypes:(const int *)a3 messageTypesCount:(int)a4 error:(id *)a5;
- (sqlite3_blob)openBlobForObject:(id)a3 error:(id *)a4;
- (sqlite3_blob)openDataStateBlobWithIdentifier:(int64_t)a3 error:(id *)a4;
- (sqlite3_blob)openDataStateBlobWithIdentifier:(int64_t)a3 willWrite:(BOOL)a4 error:(id *)a5;
- (void)filterIdentifiers:(const void *)a3 error:(id *)a4;
@end

@implementation TSPDatabase

- (TSPDatabase)init
{
  v2 = +[TSUAssertionHandler _atomicIncrementAssertCount];
  if (TSUAssertCat_init_token != -1)
  {
    dispatch_once(&TSUAssertCat_init_token, &stru_1001C6B80);
  }

  v3 = TSUAssertCat_log_t;
  if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109890;
    v10 = v2;
    v11 = 2082;
    v12 = "[TSPDatabase init]";
    v13 = 2082;
    v14 = "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPDatabase.mm";
    v15 = 1024;
    v16 = 57;
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Do not call method", buf, 0x22u);
  }

  v4 = [NSString stringWithUTF8String:"[TSPDatabase init]"];
  v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPDatabase.mm"];
  [TSUAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:57 isFatal:0 description:"Do not call method"];

  +[TSUAssertionHandler logBacktraceThrottled];
  v6 = [NSString stringWithFormat:@"%s: %s", "Do not call method", "[TSPDatabase init]"];
  v7 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (TSPDatabase)initWithPath:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 stringByAppendingPathComponent:@"index.db"];
  v12.receiver = self;
  v12.super_class = TSPDatabase;
  v8 = [(TSUDatabase *)&v12 initWithPath:v7 error:a4];

  if (v8)
  {
    v9 = [[NSURL alloc] initFileURLWithPath:v6];
    packageURL = v8->_packageURL;
    v8->_packageURL = v9;

    v8->_incrementalVacuum = 1;
  }

  else
  {
    sub_100020CA0(a4);
  }

  return v8;
}

- (id)initReadonlyWithPath:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 stringByAppendingPathComponent:@"index.db"];
  v12.receiver = self;
  v12.super_class = TSPDatabase;
  v8 = [(TSUDatabase *)&v12 initReadonlyWithPath:v7 error:a4];

  if (v8)
  {
    v9 = [[NSURL alloc] initFileURLWithPath:v6];
    v10 = v8[6];
    v8[6] = v9;

    *(v8 + 56) = 1;
  }

  else
  {
    sub_100020CA0(a4);
  }

  return v8;
}

- (BOOL)closeWithError:(id *)a3
{
  v6.receiver = self;
  v6.super_class = TSPDatabase;
  v4 = [(TSUDatabase *)&v6 closeWithError:?];
  if (!v4)
  {
    sub_100020CA0(a3);
  }

  return v4;
}

- (BOOL)documentVersion:(unint64_t *)a3 error:(id *)a4
{
  if (!a3)
  {
    +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_1001535AC();
    }

    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_1001535C0();
    }

    v7 = [NSString stringWithUTF8String:"[TSPDatabase documentVersion:error:]"];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPDatabase.mm"];
    [TSUAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:90 isFatal:0 description:"invalid nil value for '%{public}s'", "version"];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  v11 = 0;
  if ([(TSUDatabase *)self prepareStatement:&v11 sql:"select version from document" error:a4])
  {
    if ([(TSUDatabase *)self startSingleResultQuery:v11 error:a4])
    {
      *a3 = sqlite3_column_int64(v11, 0);
      v9 = 1;
      if ([(TSUDatabase *)self endSingleResultQuery:v11 shouldFinalize:1 error:a4])
      {
        return v9;
      }
    }

    else if (a4)
    {
      *a4 = [NSError tsp_errorWithCode:6];
    }
  }

  sub_100020CA0(a4);
  return 0;
}

- (BOOL)lastObjectIdentifier:(int64_t *)a3 error:(id *)a4
{
  if (!a3)
  {
    +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_10015365C();
    }

    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_100153670();
    }

    v7 = [NSString stringWithUTF8String:"[TSPDatabase lastObjectIdentifier:error:]"];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPDatabase.mm"];
    [TSUAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:111 isFatal:0 description:"invalid nil value for '%{public}s'", "identifier"];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  v12 = 0;
  if ([(TSUDatabase *)self prepareStatement:&v12 sql:"select max(identifier) from objects" error:a4]&& [(TSUDatabase *)self startSingleResultQuery:v12 error:a4])
  {
    v9 = sqlite3_column_int64(v12, 0);
    v10 = [(TSUDatabase *)self endSingleResultQuery:v12 shouldFinalize:1 error:a4];
    if (a3 && v10)
    {
      *a3 = v9;
      return 1;
    }

    if (v10)
    {
      return 1;
    }
  }

  sub_100020CA0(a4);
  return 0;
}

- (BOOL)numberOfDatabaseObjects:(unint64_t *)a3 error:(id *)a4
{
  if (!a3)
  {
    +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_10015370C();
    }

    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_100153720();
    }

    v7 = [NSString stringWithUTF8String:"[TSPDatabase numberOfDatabaseObjects:error:]"];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPDatabase.mm"];
    [TSUAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:132 isFatal:0 description:"invalid nil value for '%{public}s'", "numberOfObjects"];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  v12 = 0;
  if ([(TSUDatabase *)self prepareStatement:&v12 sql:"select count(*) from objects" error:a4]&& [(TSUDatabase *)self startSingleResultQuery:v12 error:a4])
  {
    v9 = sqlite3_column_int(v12, 0);
    v10 = [(TSUDatabase *)self endSingleResultQuery:v12 shouldFinalize:1 error:a4];
    if (a3 && v10)
    {
      *a3 = v9;
      return 1;
    }

    if (v10)
    {
      return 1;
    }
  }

  sub_100020CA0(a4);
  return 0;
}

- (void)filterIdentifiers:(const void *)a3 error:(id *)a4
{
  v4 = a3 + 8;
  if (*a3 == a3 + 8)
  {
    operator new();
  }

  v9 = objc_alloc_init(NSMutableString);
  v10 = *a3;
  if (*a3 != v4)
  {
    do
    {
      [v9 appendFormat:@"%llu, ", *(v10 + 4)];
      v11 = *(v10 + 1);
      if (v11)
      {
        do
        {
          v12 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v12 = *(v10 + 2);
          v13 = *v12 == v10;
          v10 = v12;
        }

        while (!v13);
      }

      v10 = v12;
    }

    while (v12 != v4);
  }

  if ([v9 length])
  {
    [v9 deleteCharactersInRange:{objc_msgSend(v9, "length") - 1, 1}];
  }

  v14 = [[NSString alloc] initWithFormat:@"select identifier from objects where identifier in (%@)"];
  pStmt = 0;
  if (-[TSUDatabase prepareStatement:sql:error:](self, "prepareStatement:sql:error:", &pStmt, [v14 cStringUsingEncoding:4], a4))
  {
    operator new();
  }

  v15 = sqlite3_finalize(pStmt);
  TSUHandleSqlite(v15, a4, 1, self, a2, 181, 0, v16, v9);
  sub_100020CA0(a4);

  return 0;
}

- (sqlite3_blob)openDataStateBlobWithIdentifier:(int64_t)a3 error:(id *)a4
{
  ppBlob = 0;
  v7 = sqlite3_blob_open(self->super._db, "main", "dataStates", "state", a3, 0, &ppBlob);
  v9 = TSUHandleSqlite(v7, a4, 1, self, a2, 198, @"Opening database blob", v8, v11);
  if (!v9)
  {
    sub_100020CA0(a4);
  }

  if (v9)
  {
    return ppBlob;
  }

  else
  {
    return 0;
  }
}

- (sqlite3_blob)openBlobForObject:(id)a3 error:(id *)a4
{
  v6 = a3;
  if ([v6 hasDataState])
  {
    v7 = -[TSPDatabase openDataStateBlobWithIdentifier:error:](self, "openDataStateBlobWithIdentifier:error:", [v6 dataState], a4);
  }

  else
  {
    if (TSUDefaultCat_init_token != -1)
    {
      sub_1001537BC();
    }

    if (os_log_type_enabled(TSUDefaultCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_1001537D0();
    }

    if (*a4)
    {
      v7 = 0;
    }

    else
    {
      [NSError tsu_errorWithCode:1 userInfo:0];
      *a4 = v7 = 0;
    }
  }

  return v7;
}

- (id)queryObjectWithIdentifier:(int64_t)a3 error:(id *)a4
{
  pStmt = 0;
  if ([(TSUDatabase *)self prepareStatement:&pStmt sql:"select identifier error:class, stateType, state from objects where identifier = ?", a4]&& (v8 = sqlite3_bind_int64(pStmt, 1, a3), TSUHandleSqlite(v8, a4, 1, self, a2, 227, 0, v9, v18)))
  {
    v10 = [(TSPDatabase *)self queryFirstObjectWithStatement:pStmt error:a4];
    v11 = v10 != 0;
    v12 = v10;
  }

  else
  {
    v11 = 0;
    v12 = 0;
  }

  v13 = sqlite3_finalize(pStmt);
  if (TSUHandleSqlite(v13, a4, 1, self, a2, 234, @"Finalizing statement", v14, v18) && v11)
  {
    v15 = v12;
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;

  return v16;
}

- (id)queryObjectsWithMessageTypes:(const int *)a3 messageTypesCount:(int)a4 error:(id *)a5
{
  v10 = +[NSMutableArray array];
  pStmt = 0;
  v11 = +[NSMutableString stringWithString:](NSMutableString, "stringWithString:", @"(");
  if (a4 >= 1)
  {
    v12 = 0;
    do
    {
      if (v12)
      {
        [v11 appendString:{@", "}];
      }

      [v11 appendString:@"?"];
      ++v12;
    }

    while (a4 != v12);
  }

  [v11 appendString:@""]);
  v29 = v11;
  v13 = [NSString stringWithFormat:@"select identifier, class, stateType, state from objects where class in %@"];
  v14 = [v13 UTF8String];

  v15 = [(TSUDatabase *)self prepareStatement:&pStmt sql:v14 error:a5];
  if (a4 >= 1)
  {
    v16 = 0;
    v17 = a4;
    do
    {
      if (v15)
      {
        v18 = v16 + 1;
        v19 = sqlite3_bind_int64(pStmt, v16 + 1, a3[v16]);
        v15 = TSUHandleSqlite(v19, a5, 1, self, a2, 260, 0, v20, v29);
        v16 = v18;
      }

      else
      {
        v15 = 0;
        ++v16;
      }
    }

    while (v16 != v17);
  }

  v21 = sqlite3_step(pStmt);
  while (v21 == 100)
  {
    v22 = [(TSPDatabase *)self objectFromStatement:pStmt];
    [v10 addObject:v22];
    v21 = sqlite3_step(pStmt);
  }

  if (v21 != 101)
  {
    v23 = sqlite3_sql(pStmt);
    TSUHandleSqlite(v21, a5, 1, self, a2, 273, @"Executing query %s", v24, v23);
    v15 = 0;
  }

  v25 = sqlite3_finalize(pStmt);
  if (TSUHandleSqlite(v25, a5, 1, self, a2, 277, @"Finalizing statement", v26, v29) && v15)
  {
    v27 = [v10 copy];
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

- (id)queryFirstObjectWithStatement:(sqlite3_stmt *)a3 error:(id *)a4
{
  v8 = sqlite3_step(a3);
  if (v8 != 101)
  {
    v9 = v8;
    if (v8 == 100)
    {
      v10 = [(TSPDatabase *)self objectFromStatement:a3];
      goto LABEL_6;
    }

    v11 = sqlite3_sql(a3);
    TSUHandleSqlite(v9, a4, 1, self, a2, 287, @"Executing query %s", v12, v11);
  }

  v10 = 0;
LABEL_6:

  return v10;
}

- (id)objectFromStatement:(sqlite3_stmt *)a3
{
  v5 = sqlite3_column_int64(a3, 0);
  v6 = sqlite3_column_int(a3, 1);
  if (sqlite3_column_int(a3, 2))
  {
    v7 = [[NSString alloc] initWithCString:sqlite3_column_text(a3 encoding:{3), 4}];
    v8 = [TSPDatabaseObject databaseObjectWithIdentifier:v5 classType:v6 fileState:v7 packageURL:self->_packageURL];
  }

  else
  {
    v8 = [TSPDatabaseObject databaseObjectWithIdentifier:v5 classType:v6 dataState:sqlite3_column_int64(a3, 3)];
  }

  return v8;
}

- (BOOL)upgradeFromSchemaVersion:(int)a3 error:(id *)a4
{
  if (self->_incrementalVacuum)
  {
    v25 = 0;
    if ([(TSUDatabase *)self prepareStatement:&v25 sql:"pragma auto_vacuum" error:a4]&& [(TSUDatabase *)self startSingleResultQuery:v25 error:a4]&& [(TSUDatabase *)self executeUpdateWithSql:"pragma auto_vacuum = 2" error:a4])
    {
      v8 = [(TSUDatabase *)self executeUpdateWithSql:"vacuum" error:a4];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 1;
  }

  if (a3 >= 6)
  {
    +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_100153810();
    }

    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_100153838();
    }

    v10 = [NSString stringWithUTF8String:"[TSPDatabase upgradeFromSchemaVersion:error:]"];
    v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPDatabase.mm"];
    [TSUAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:337 isFatal:0 description:"Invalid schema version"];

    +[TSUAssertionHandler logBacktraceThrottled];
    if (v8)
    {
LABEL_11:
      v9 = [(TSUDatabase *)self beginTransactionWithError:a4];
      goto LABEL_18;
    }
  }

  else
  {
    if (a3 == 5)
    {
      return 1;
    }

    if (v8)
    {
      goto LABEL_11;
    }
  }

  v9 = 0;
LABEL_18:
  if (a3 == 1)
  {
    if (v9 && [(TSUDatabase *)self executeUpdateWithSql:"alter table objects rename to temp_migration_objects" error:a4]&& [(TSUDatabase *)self executeUpdateWithSql:"create table objects (identifier integer primary key error:class integer, stateType integer, state)", a4]&& [(TSUDatabase *)self executeUpdateWithSql:"insert into objects (identifier error:class, stateType, state) select identifier, class, stateType, state from temp_migration_objects", a4]&& [(TSUDatabase *)self executeUpdateWithSql:"drop table temp_migration_objects" error:a4]&& [(TSUDatabase *)self executeUpdateWithSql:"alter table relationships rename to temp_migration_relationships" error:a4])
    {
      v9 = [(TSUDatabase *)self executeUpdateWithSql:"create table relationships (sourceObject integer error:targetObject integer, primary key(sourceObject, targetObject))", a4];
      v25 = 0;
      if (!v9)
      {
LABEL_38:
        a3 = 2;
        goto LABEL_39;
      }

      if ([(TSUDatabase *)self prepareStatement:&v25 sql:"insert into relationships (sourceObject error:targetObject) select sourceObject, targetObject from temp_migration_relationships where updateType != ?", a4])
      {
        v13 = sqlite3_bind_int(v25, 1, 0);
        v9 = TSUHandleSqlite(v13, a4, 1, self, a2, 388, 0, v14, v23);
        if (v9)
        {
          v9 = [(TSUDatabase *)self executeUpdate:v25 shouldFinalize:1 error:a4];
          v25 = 0;
          if (v9)
          {
            v9 = [(TSUDatabase *)self executeUpdateWithSql:"drop table temp_migration_relationships" error:a4];
          }
        }

        goto LABEL_38;
      }
    }

    v9 = 0;
    goto LABEL_38;
  }

  if (!a3)
  {
    if (!v9 || ![(TSUDatabase *)self executeUpdateWithSql:"create table document (version integer error:compatibleVersion integer, closedCleanly integer)", a4]|| ![(TSUDatabase *)self executeUpdateWithSql:"create table objects (identifier integer primary key error:class integer, stateType integer, state)", a4]|| ![(TSUDatabase *)self executeUpdateWithSql:"create table relationships (sourceObject integer error:targetObject integer, primary key(sourceObject, targetObject))", a4]|| ![(TSUDatabase *)self executeUpdateWithSql:"create table dataStates (identifier integer primary key error:state blob)", a4])
    {
      goto LABEL_63;
    }

    v12 = "create table cullingState (identifier integer primary key, change integer)";
LABEL_54:
    if ([(TSUDatabase *)self executeUpdateWithSql:v12 error:a4])
    {
      v20 = 5;
      goto LABEL_60;
    }

LABEL_63:
    [(TSUDatabase *)self commitTransactionWithError:a4];
    goto LABEL_64;
  }

LABEL_39:
  if (a3 == 2 && v9)
  {
    if ([(TSUDatabase *)self executeUpdateWithSql:"create table cullingState (identifier integer primary key error:change integer)", a4])
    {
      goto LABEL_42;
    }

    goto LABEL_49;
  }

  v15 = a3 != 2 && v9;
  if ((a3 - 4) >= 0xFFFFFFFE)
  {
    if (v15)
    {
LABEL_42:
      v15 = [(TSUDatabase *)self executeUpdateWithSql:"create table document (version integer error:compatibleVersion integer, closedCleanly integer)", a4];
      v25 = 0;
      if (v15)
      {
        if ([(TSUDatabase *)self prepareStatement:&v25 sql:"insert into document (version error:compatibleVersion) values (?, ?)", a4])
        {
          v16 = sqlite3_bind_int64(v25, 1, 0x2CBCC7AB8);
          v15 = TSUHandleSqlite(v16, a4, 1, self, a2, 413, 0, v17, v23);
          if (v15)
          {
            v18 = sqlite3_bind_int64(v25, 2, 0x2CBCC7AB8);
            v15 = TSUHandleSqlite(v18, a4, 1, self, a2, 414, 0, v19, v24);
            if (v15)
            {
              v15 = [(TSUDatabase *)self executeUpdate:v25 shouldFinalize:1 error:a4];
            }
          }
        }

        else
        {
          v15 = 0;
        }
      }

      goto LABEL_50;
    }

LABEL_49:
    v15 = 0;
    v25 = 0;
LABEL_50:
    a3 = 4;
  }

  if (a3 == 4 && v15)
  {
    v12 = "alter table document add column closedCleanly integer";
    goto LABEL_54;
  }

  if (a3 == 4)
  {
    v20 = 5;
  }

  else
  {
    v20 = a3;
  }

  if (((a3 != 4) & v15) == 0)
  {
    goto LABEL_63;
  }

LABEL_60:
  v21 = [(TSUDatabase *)self setSchemaVersion:v20 error:a4];
  if ([(TSUDatabase *)self commitTransactionWithError:a4]&& (v21 & 1) != 0)
  {
    return 1;
  }

LABEL_64:
  sub_100020CA0(a4);
  return 0;
}

- (BOOL)setDocumentVersion:(id)a3 error:(id *)a4
{
  var1 = a3.var1;
  var0 = a3.var0;
  v25 = 0;
  if ([(TSUDatabase *)self prepareStatement:&v25 sql:"update document set version=? error:compatibleVersion=? where 1=1"]&& (v9 = sqlite3_bind_int64(v25, 1, var0), TSUHandleSqlite(v9, a4, 1, self, a2, 440, 0, v10, v23)) && (v11 = sqlite3_bind_int64(v25, 2, var1), TSUHandleSqlite(v11, a4, 1, self, a2, 441, 0, v12, v23)))
  {
    v13 = [(TSUDatabase *)self executeUpdate:v25 shouldFinalize:1 error:a4];
  }

  else
  {
    v13 = 0;
  }

  v14 = sqlite3_changes(self->super._db);
  if (v14)
  {
    if (v14 >= 2)
    {
      +[TSUAssertionHandler _atomicIncrementAssertCount];
      if (TSUAssertCat_init_token != -1)
      {
        sub_1001538C8();
      }

      if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
      {
        sub_1001538F0();
      }

      v15 = [NSString stringWithUTF8String:"[TSPDatabase setDocumentVersion:error:]"];
      v16 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPDatabase.mm"];
      [TSUAssertionHandler handleFailureInFunction:v15 file:v16 lineNumber:453 isFatal:0 description:"Updated more than one row when setting the document version. Expecting this table to contain a maximum of one row"];

      +[TSUAssertionHandler logBacktraceThrottled];
      if ((v13 & 1) == 0)
      {
        goto LABEL_22;
      }

      return 1;
    }

    if (v13)
    {
      return 1;
    }

LABEL_22:
    sub_100020CA0(a4);
    return 0;
  }

  v25 = 0;
  if (!v13)
  {
    goto LABEL_22;
  }

  if (![(TSUDatabase *)self prepareStatement:&v25 sql:"insert into document (version error:compatibleVersion) values (?, ?)", a4])
  {
    goto LABEL_22;
  }

  v17 = sqlite3_bind_int64(v25, 1, var0);
  if (!TSUHandleSqlite(v17, a4, 1, self, a2, 449, 0, v18, v23))
  {
    goto LABEL_22;
  }

  v19 = sqlite3_bind_int64(v25, 2, var1);
  if (!TSUHandleSqlite(v19, a4, 1, self, a2, 450, 0, v20, v24))
  {
    goto LABEL_22;
  }

  v21 = 1;
  if (![(TSUDatabase *)self executeUpdate:v25 shouldFinalize:1 error:a4])
  {
    goto LABEL_22;
  }

  return v21;
}

- (BOOL)setClosedCleanlyToken:(int64_t)a3 error:(id *)a4
{
  v19 = 0;
  if ([(TSUDatabase *)self prepareStatement:&v19 sql:"update document set closedCleanly=? where 1=1" error:a4]&& (v8 = sqlite3_bind_int64(v19, 1, a3), TSUHandleSqlite(v8, a4, 1, self, a2, 462, 0, v9, v18)))
  {
    v10 = [(TSUDatabase *)self executeUpdate:v19 shouldFinalize:1 error:a4];
  }

  else
  {
    v10 = 0;
  }

  v11 = sqlite3_changes(self->super._db);
  if (v11)
  {
    if (v11 >= 2)
    {
      +[TSUAssertionHandler _atomicIncrementAssertCount];
      if (TSUAssertCat_init_token != -1)
      {
        sub_100153980();
      }

      if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
      {
        sub_1001539A8();
      }

      v12 = [NSString stringWithUTF8String:"[TSPDatabase setClosedCleanlyToken:error:]"];
      v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPDatabase.mm"];
      [TSUAssertionHandler handleFailureInFunction:v12 file:v13 lineNumber:472 isFatal:0 description:"Updated more than one row when setting the document version. Expecting this table to contain a maximum of one row"];

      +[TSUAssertionHandler logBacktraceThrottled];
      if ((v10 & 1) == 0)
      {
        goto LABEL_20;
      }

      return 1;
    }

    if (v10)
    {
      return 1;
    }

LABEL_20:
    sub_100020CA0(a4);
    return 0;
  }

  v19 = 0;
  if (!v10)
  {
    goto LABEL_20;
  }

  if (![(TSUDatabase *)self prepareStatement:&v19 sql:"insert into document (closedCleanly) values (?)" error:a4])
  {
    goto LABEL_20;
  }

  v14 = sqlite3_bind_int64(v19, 1, a3);
  if (!TSUHandleSqlite(v14, a4, 1, self, a2, 469, 0, v15, v18))
  {
    goto LABEL_20;
  }

  v16 = 1;
  if (![(TSUDatabase *)self executeUpdate:v19 shouldFinalize:1 error:a4])
  {
    goto LABEL_20;
  }

  return v16;
}

- (BOOL)documentVersion:(id *)a3 closedCleanlyToken:(int64_t *)a4 error:(id *)a5
{
  if (a3)
  {
    if (a4)
    {
      goto LABEL_14;
    }

    goto LABEL_9;
  }

  +[TSUAssertionHandler _atomicIncrementAssertCount];
  if (TSUAssertCat_init_token != -1)
  {
    sub_100153A38();
  }

  if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
  {
    sub_100153A4C();
  }

  v9 = [NSString stringWithUTF8String:"[TSPDatabase documentVersion:closedCleanlyToken:error:]"];
  v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPDatabase.mm"];
  [TSUAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:479 isFatal:0 description:"invalid nil value for '%{public}s'", "version"];

  +[TSUAssertionHandler logBacktraceThrottled];
  if (!a4)
  {
LABEL_9:
    +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_100153AE8();
    }

    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_100153B10();
    }

    v11 = [NSString stringWithUTF8String:"[TSPDatabase documentVersion:closedCleanlyToken:error:]"];
    v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPDatabase.mm"];
    [TSUAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:480 isFatal:0 description:"invalid nil value for '%{public}s'", "closedCleanlyToken"];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

LABEL_14:
  v15 = 0;
  if ([(TSUDatabase *)self prepareStatement:&v15 sql:"select version error:compatibleVersion, closedCleanly from document", a5])
  {
    if ([(TSUDatabase *)self startSingleResultQuery:v15 error:a5])
    {
      a3->var0 = sqlite3_column_int64(v15, 0);
      v13 = 1;
      a3->var1 = sqlite3_column_int64(v15, 1);
      *a4 = sqlite3_column_int64(v15, 2);
      if ([(TSUDatabase *)self endSingleResultQuery:v15 shouldFinalize:1 error:a5])
      {
        return v13;
      }
    }

    else if (a5)
    {
      *a5 = [NSError tsp_errorWithCode:6];
    }
  }

  sub_100020CA0(a5);
  return 0;
}

- (BOOL)insertObjectWithIdentifier:(int64_t)a3 stateIdentifier:(const ObjectStateIdentifier *)a4 classType:(int)a5 error:(id *)a6
{
  hasDataState = TSP::ObjectStateIdentifier::hasDataState(a4);
  v13 = [(TSUDatabase *)self prepareStatement:&self->_insertObjectStatement sql:"insert into objects (identifier error:class, stateType, state) values (?, ?, ?, ?)", a6];
  if (v13)
  {
    v14 = sqlite3_bind_int64(self->_insertObjectStatement, 1, a3);
    v13 = TSUHandleSqlite(v14, a6, 1, self, a2, 509, 0, v15, v31);
    if (v13)
    {
      v16 = sqlite3_bind_int(self->_insertObjectStatement, 2, a5);
      v13 = TSUHandleSqlite(v16, a6, 1, self, a2, 510, 0, v17, v31);
      if (v13)
      {
        v18 = sqlite3_bind_int(self->_insertObjectStatement, 3, hasDataState ^ 1);
        v13 = TSUHandleSqlite(v18, a6, 1, self, a2, 511, 0, v19, v31);
      }
    }
  }

  if (hasDataState)
  {
    if (!v13)
    {
      goto LABEL_13;
    }

    insertObjectStatement = self->_insertObjectStatement;
    v21 = TSP::ObjectStateIdentifier::dataState(a4);
    v22 = sqlite3_bind_int64(insertObjectStatement, 4, v21);
    if (!TSUHandleSqlite(v22, a6, 1, self, a2, 515, 0, v23, v31))
    {
      goto LABEL_13;
    }
  }

  else
  {
    if (!v13)
    {
      goto LABEL_13;
    }

    v24 = TSP::ObjectStateIdentifier::fileState(a4);
    v25 = [v24 maximumLengthOfBytesUsingEncoding:4];
    v26 = malloc_type_malloc(v25, 0x100004077774924uLL);
    [v24 getCString:v26 maxLength:v25 encoding:4];
    v27 = sqlite3_bind_text(self->_insertObjectStatement, 4, v26, -1, &_free);
    v29 = TSUHandleSqlite(v27, a6, 1, self, a2, 525, 0, v28, v31);

    if (!v29)
    {
      goto LABEL_13;
    }
  }

  if ([(TSUDatabase *)self executeUpdate:self->_insertObjectStatement shouldFinalize:0 error:a6])
  {
    return 1;
  }

LABEL_13:
  sub_100020CA0(a6);
  return 0;
}

- (BOOL)insertDataStateWithSize:(int)a3 identifier:(int64_t *)a4 error:(id *)a5
{
  if (!a4)
  {
    +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_100153BAC();
    }

    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_100153BC0();
    }

    v10 = [NSString stringWithUTF8String:"[TSPDatabase insertDataStateWithSize:identifier:error:]"];
    v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPDatabase.mm"];
    v15 = "identifier != NULL";
    [TSUAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:539 isFatal:0 description:"Invalid parameter not satisfying: %{public}s"];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  if ([(TSUDatabase *)self prepareStatement:&self->_insertDataStateStatement sql:"insert into dataStates (state) values (?)" error:a5]&& (v12 = sqlite3_bind_zeroblob(self->_insertDataStateStatement, 1, a3), TSUHandleSqlite(v12, a5, 1, self, a2, 543, 0, v13, v15)) && [(TSUDatabase *)self executeUpdate:self->_insertDataStateStatement shouldFinalize:0 error:a5])
  {
    *a4 = sqlite3_last_insert_rowid(self->super._db);
    return 1;
  }

  else
  {
    sub_100020CA0(a5);
    return 0;
  }
}

- (BOOL)updateDataStateWithIdentifier:(int64_t)a3 size:(int)a4 error:(id *)a5
{
  if ([(TSUDatabase *)self prepareStatement:&self->_updateDataStateStatement sql:"update dataStates set state = ? where identifier = ?" error:?])
  {
    v10 = sqlite3_bind_zeroblob(self->_updateDataStateStatement, 1, a4);
    if (TSUHandleSqlite(v10, a5, 1, self, a2, 557, 0, v11, v15))
    {
      v12 = sqlite3_bind_int64(self->_updateDataStateStatement, 2, a3);
      if (TSUHandleSqlite(v12, a5, 1, self, a2, 558, 0, v13, v16) && [(TSUDatabase *)self executeUpdate:self->_updateDataStateStatement shouldFinalize:0 error:a5])
      {
        return 1;
      }
    }
  }

  sub_100020CA0(a5);
  return 0;
}

- (sqlite3_blob)openDataStateBlobWithIdentifier:(int64_t)a3 willWrite:(BOOL)a4 error:(id *)a5
{
  ppBlob = 0;
  v8 = sqlite3_blob_open(self->super._db, "main", "dataStates", "state", a3, a4, &ppBlob);
  v10 = TSUHandleSqlite(v8, a5, 1, self, a2, 568, @"Opening database blob", v9, v12);
  if (!v10)
  {
    sub_100020CA0(a5);
  }

  if (v10)
  {
    return ppBlob;
  }

  else
  {
    return 0;
  }
}

- (BOOL)insertRelationshipWithSourceIdentifier:(int64_t)a3 targetIdentifier:(int64_t)a4 error:(id *)a5
{
  if ([(TSUDatabase *)self prepareStatement:&self->_insertRelationshipStatement sql:"insert into relationships (sourceObject error:targetObject) values (?, ?)"])
  {
    v10 = sqlite3_bind_int64(self->_insertRelationshipStatement, 1, a3);
    if (TSUHandleSqlite(v10, a5, 1, self, a2, 580, 0, v11, v15))
    {
      v12 = sqlite3_bind_int64(self->_insertRelationshipStatement, 2, a4);
      if (TSUHandleSqlite(v12, a5, 1, self, a2, 581, 0, v13, v16) && [(TSUDatabase *)self executeUpdate:self->_insertRelationshipStatement shouldFinalize:0 error:a5])
      {
        return 1;
      }
    }
  }

  sub_100020CA0(a5);
  return 0;
}

@end