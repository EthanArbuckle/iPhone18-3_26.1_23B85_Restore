@interface TSPDatabase
- (BOOL)closeWithError:(id *)a3;
- (BOOL)documentVersion:(id *)a3 closedCleanlyToken:(int64_t *)a4 error:(id *)a5;
- (BOOL)documentVersion:(unint64_t *)a3 error:(id *)a4;
- (BOOL)insertDataStateWithSize:(int)a3 identifier:(int64_t *)a4 error:(id *)a5;
- (BOOL)insertObjectWithIdentifier:(int64_t)a3 stateIdentifier:(const ObjectStateIdentifier *)a4 classType:(int)a5 error:(id *)a6;
- (BOOL)insertRelationshipWithSourceIdentifier:(int64_t)a3 targetIdentifier:(int64_t)a4 error:(id *)a5;
- (BOOL)lastObjectIdentifier:(int64_t *)a3 error:(id *)a4;
- (BOOL)numberOfDatabaseObjects:(unint64_t *)a3 error:(id *)a4;
- (BOOL)parseArchive:(Message *)a3 forObject:(id)a4 error:(id *)a5;
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
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPDatabase init]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDatabase.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v6, v3, v5, 57, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v7, v8);
  v9 = MEMORY[0x277CBEAD8];
  v11 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v10, @"%s: %s", "Do not call method", "[TSPDatabase init]");
  v13 = objc_msgSend_exceptionWithName_reason_userInfo_(v9, v12, *MEMORY[0x277CBE658], v11, 0);
  v14 = v13;

  objc_exception_throw(v13);
}

- (TSPDatabase)initWithPath:(id)a3 error:(id *)a4
{
  v6 = a3;
  v8 = objc_msgSend_stringByAppendingPathComponent_(v6, v7, @"index.db");
  v17.receiver = self;
  v17.super_class = TSPDatabase;
  v9 = [(TSUDatabase *)&v17 initWithPath:v8 error:a4];

  if (v9)
  {
    v12 = objc_alloc(MEMORY[0x277CBEBC0]);
    inited = objc_msgSend_initFileURLWithPath_(v12, v13, v6);
    packageURL = v9->_packageURL;
    v9->_packageURL = inited;

    v9->_incrementalVacuum = 1;
  }

  else
  {
    sub_276A59230(a4, v10, v11);
  }

  return v9;
}

- (id)initReadonlyWithPath:(id)a3 error:(id *)a4
{
  v6 = a3;
  v8 = objc_msgSend_stringByAppendingPathComponent_(v6, v7, @"index.db");
  v17.receiver = self;
  v17.super_class = TSPDatabase;
  v9 = [(TSUDatabase *)&v17 initReadonlyWithPath:v8 error:a4];

  if (v9)
  {
    v12 = objc_alloc(MEMORY[0x277CBEBC0]);
    inited = objc_msgSend_initFileURLWithPath_(v12, v13, v6);
    v15 = v9[6];
    v9[6] = inited;

    *(v9 + 56) = 1;
  }

  else
  {
    sub_276A59230(a4, v10, v11);
  }

  return v9;
}

- (BOOL)closeWithError:(id *)a3
{
  v8.receiver = self;
  v8.super_class = TSPDatabase;
  v6 = [(TSUDatabase *)&v8 closeWithError:?];
  if (!v6)
  {
    sub_276A59230(a3, v4, v5);
  }

  return v6;
}

- (BOOL)documentVersion:(unint64_t *)a3 error:(id *)a4
{
  if (!a3)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPDatabase documentVersion:error:]");
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDatabase.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v11, v8, v10, 90, 0, "invalid nil value for '%{public}s'", "version");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
  }

  v19 = 0;
  if (objc_msgSend_prepareStatement_sql_error_(self, a2, &v19, "select version from document", a4))
  {
    if (objc_msgSend_startSingleResultQuery_error_(self, v14, v19, a4))
    {
      *a3 = sqlite3_column_int64(v19, 0);
      v16 = 1;
      if (objc_msgSend_endSingleResultQuery_shouldFinalize_error_(self, v17, v19, 1, a4))
      {
        return v16;
      }
    }

    else if (a4)
    {
      *a4 = objc_msgSend_tsp_errorWithCode_(MEMORY[0x277CCA9B8], v14, 6);
    }
  }

  sub_276A59230(a4, v14, v15);
  return 0;
}

- (BOOL)lastObjectIdentifier:(int64_t *)a3 error:(id *)a4
{
  if (!a3)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPDatabase lastObjectIdentifier:error:]");
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDatabase.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v11, v8, v10, 111, 0, "invalid nil value for '%{public}s'", "identifier");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
  }

  v20 = 0;
  if (objc_msgSend_prepareStatement_sql_error_(self, a2, &v20, "select max(identifier) from objects", a4) && objc_msgSend_startSingleResultQuery_error_(self, v14, v20, a4))
  {
    v16 = sqlite3_column_int64(v20, 0);
    shouldFinalize_error = objc_msgSend_endSingleResultQuery_shouldFinalize_error_(self, v17, v20, 1, a4);
    if (a3 && shouldFinalize_error)
    {
      *a3 = v16;
      return 1;
    }

    if (shouldFinalize_error)
    {
      return 1;
    }
  }

  sub_276A59230(a4, v14, v15);
  return 0;
}

- (BOOL)numberOfDatabaseObjects:(unint64_t *)a3 error:(id *)a4
{
  if (!a3)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPDatabase numberOfDatabaseObjects:error:]");
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDatabase.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v11, v8, v10, 132, 0, "invalid nil value for '%{public}s'", "numberOfObjects");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
  }

  v20 = 0;
  if (objc_msgSend_prepareStatement_sql_error_(self, a2, &v20, "select count(*) from objects", a4) && objc_msgSend_startSingleResultQuery_error_(self, v14, v20, a4))
  {
    v16 = sqlite3_column_int(v20, 0);
    shouldFinalize_error = objc_msgSend_endSingleResultQuery_shouldFinalize_error_(self, v17, v20, 1, a4);
    if (a3 && shouldFinalize_error)
    {
      *a3 = v16;
      return 1;
    }

    if (shouldFinalize_error)
    {
      return 1;
    }
  }

  sub_276A59230(a4, v14, v15);
  return 0;
}

- (void)filterIdentifiers:(const void *)a3 error:(id *)a4
{
  v4 = a3 + 8;
  if (*a3 == a3 + 8)
  {
    operator new();
  }

  v10 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v11 = *a3;
  if (*a3 != v4)
  {
    do
    {
      objc_msgSend_appendFormat_(v10, v8, @"%llu,", *(v11 + 4));
      v12 = *(v11 + 1);
      if (v12)
      {
        do
        {
          v13 = v12;
          v12 = *v12;
        }

        while (v12);
      }

      else
      {
        do
        {
          v13 = *(v11 + 2);
          v14 = *v13 == v11;
          v11 = v13;
        }

        while (!v14);
      }

      v11 = v13;
    }

    while (v13 != v4);
  }

  if (objc_msgSend_length(v10, v8, v9))
  {
    v17 = objc_msgSend_length(v10, v15, v16);
    objc_msgSend_deleteCharactersInRange_(v10, v18, v17 - 1, 1);
  }

  v19 = objc_alloc(MEMORY[0x277CCACA8]);
  v21 = objc_msgSend_initWithFormat_(v19, v20, @"select identifier from objects where identifier in (%@)", v10);
  pStmt = 0;
  v22 = v21;
  v24 = objc_msgSend_cStringUsingEncoding_(v22, v23, 4);
  if (objc_msgSend_prepareStatement_sql_error_(self, v25, &pStmt, v24, a4))
  {
    operator new();
  }

  sqlite3_finalize(pStmt);
  TSUHandleSqlite();
  sub_276A59230(a4, v26, v27);

  return 0;
}

- (sqlite3_blob)openDataStateBlobWithIdentifier:(int64_t)a3 error:(id *)a4
{
  ppBlob = 0;
  sqlite3_blob_open(*(&self->super.super.isa + *MEMORY[0x277D81390]), "main", "dataStates", "state", a3, 0, &ppBlob);
  v7 = TSUHandleSqlite();
  if ((v7 & 1) == 0)
  {
    sub_276A59230(a4, v5, v6);
  }

  if (v7)
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
  if (objc_msgSend_hasDataState(v6, v7, v8))
  {
    v11 = objc_msgSend_dataState(v6, v9, v10);
    v13 = objc_msgSend_openDataStateBlobWithIdentifier_error_(self, v12, v11, a4);
  }

  else
  {
    if (*MEMORY[0x277D81408] != -1)
    {
      sub_276BD4E10();
    }

    if (*a4)
    {
      v13 = 0;
    }

    else
    {
      objc_msgSend_tsu_errorWithCode_userInfo_(MEMORY[0x277CCA9B8], v9, 1, 0);
      *a4 = v13 = 0;
    }
  }

  return v13;
}

- (id)queryObjectWithIdentifier:(int64_t)a3 error:(id *)a4
{
  pStmt = 0;
  if (objc_msgSend_prepareStatement_sql_error_(self, a2, &pStmt, "select identifier, class, stateType, state from objects where identifier = ?", a4) && (sqlite3_bind_int64(pStmt, 1, a3), TSUHandleSqlite()))
  {
    v8 = objc_msgSend_queryFirstObjectWithStatement_error_(self, v7, pStmt, a4);
    v9 = v8 != 0;
    v10 = v8;
  }

  else
  {
    v9 = 0;
    v10 = 0;
  }

  sqlite3_finalize(pStmt);
  if ((TSUHandleSqlite() & v9) != 0)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  return v12;
}

- (id)queryObjectsWithMessageTypes:(const int *)a3 messageTypesCount:(int)a4 error:(id *)a5
{
  v9 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, a3);
  pStmt = 0;
  v12 = objc_msgSend_stringWithString_(MEMORY[0x277CCAB68], v10, @"(");
  if (a4 >= 1)
  {
    v13 = 0;
    do
    {
      if (v13)
      {
        objc_msgSend_appendString_(v12, v11, @", ");
      }

      objc_msgSend_appendString_(v12, v11, @"?");
      ++v13;
    }

    while (a4 != v13);
  }

  objc_msgSend_appendString_(v12, v11, @""));
  v15 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v14, @"select identifier, class, stateType, state from objects where class in %@", v12);
  v16 = v15;
  v19 = objc_msgSend_UTF8String(v16, v17, v18);

  v21 = objc_msgSend_prepareStatement_sql_error_(self, v20, &pStmt, v19, a5);
  if (a4 >= 1)
  {
    v22 = 0;
    v23 = a4;
    do
    {
      if (v21)
      {
        v24 = v22 + 1;
        sqlite3_bind_int64(pStmt, v22 + 1, a3[v22]);
        v21 = TSUHandleSqlite();
        v22 = v24;
      }

      else
      {
        v21 = 0;
        ++v22;
      }
    }

    while (v22 != v23);
  }

  v26 = sqlite3_step(pStmt);
  while (v26 == 100)
  {
    v27 = objc_msgSend_objectFromStatement_(self, v25, pStmt);
    objc_msgSend_addObject_(v9, v28, v27);
    v26 = sqlite3_step(pStmt);
  }

  if (v26 != 101)
  {
    sqlite3_sql(pStmt);
    TSUHandleSqlite();
    v21 = 0;
  }

  sqlite3_finalize(pStmt);
  if ((TSUHandleSqlite() & v21) == 1)
  {
    v31 = objc_msgSend_copy(v9, v29, v30);
  }

  else
  {
    v31 = 0;
  }

  return v31;
}

- (id)queryFirstObjectWithStatement:(sqlite3_stmt *)a3 error:(id *)a4
{
  v6 = sqlite3_step(a3);
  if (v6 != 101)
  {
    if (v6 == 100)
    {
      v8 = objc_msgSend_objectFromStatement_(self, v7, a3);
      goto LABEL_6;
    }

    sqlite3_sql(a3);
    TSUHandleSqlite();
  }

  v8 = 0;
LABEL_6:

  return v8;
}

- (id)objectFromStatement:(sqlite3_stmt *)a3
{
  v5 = sqlite3_column_int64(a3, 0);
  v6 = sqlite3_column_int(a3, 1);
  if (sqlite3_column_int(a3, 2))
  {
    v7 = sqlite3_column_text(a3, 3);
    v8 = objc_alloc(MEMORY[0x277CCACA8]);
    v10 = objc_msgSend_initWithCString_encoding_(v8, v9, v7, 4);
    v12 = objc_msgSend_databaseObjectWithIdentifier_classType_fileState_packageURL_(TSPDatabaseObject, v11, v5, v6, v10, self->_packageURL);
  }

  else
  {
    v13 = sqlite3_column_int64(a3, 3);
    v12 = objc_msgSend_databaseObjectWithIdentifier_classType_dataState_(TSPDatabaseObject, v14, v5, v6, v13);
  }

  return v12;
}

- (BOOL)upgradeFromSchemaVersion:(int)a3 error:(id *)a4
{
  if (self->_incrementalVacuum)
  {
    v25 = 0;
    if (objc_msgSend_prepareStatement_sql_error_(self, a2, &v25, "pragma auto_vacuum", a4) && objc_msgSend_startSingleResultQuery_error_(self, a2, v25, a4) && objc_msgSend_executeUpdateWithSql_error_(self, a2, "pragma auto_vacuum = 2", a4))
    {
      v7 = objc_msgSend_executeUpdateWithSql_error_(self, a2, "vacuum", a4);
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 1;
  }

  if (a3 >= 6)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPDatabase upgradeFromSchemaVersion:error:]");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDatabase.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v13, v10, v12, 337, 0, "Invalid schema version");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
    if (v7)
    {
LABEL_11:
      shouldFinalize_error = objc_msgSend_beginTransactionWithError_(self, a2, a4);
      goto LABEL_14;
    }
  }

  else
  {
    if (a3 == 5)
    {
      return 1;
    }

    if (v7)
    {
      goto LABEL_11;
    }
  }

  shouldFinalize_error = 0;
LABEL_14:
  if (a3 == 1)
  {
    if (shouldFinalize_error && objc_msgSend_executeUpdateWithSql_error_(self, a2, "alter table objects rename to temp_migration_objects", a4) && objc_msgSend_executeUpdateWithSql_error_(self, a2, "create table objects (identifier integer primary key, class integer, stateType integer, state)", a4) && objc_msgSend_executeUpdateWithSql_error_(self, a2, "insert into objects (identifier, class, stateType, state) select identifier, class, stateType, state from temp_migration_objects", a4) && objc_msgSend_executeUpdateWithSql_error_(self, a2, "drop table temp_migration_objects", a4) && objc_msgSend_executeUpdateWithSql_error_(self, a2, "alter table relationships rename to temp_migration_relationships", a4))
    {
      shouldFinalize_error = objc_msgSend_executeUpdateWithSql_error_(self, a2, "create table relationships (sourceObject integer, targetObject integer, primary key(sourceObject, targetObject))", a4);
      v25 = 0;
      if (!shouldFinalize_error)
      {
LABEL_34:
        a3 = 2;
        goto LABEL_35;
      }

      if (objc_msgSend_prepareStatement_sql_error_(self, a2, &v25, "insert into relationships (sourceObject, targetObject) select sourceObject, targetObject from temp_migration_relationships where updateType != ?", a4))
      {
        sqlite3_bind_int(v25, 1, 0);
        shouldFinalize_error = TSUHandleSqlite();
        if (shouldFinalize_error)
        {
          shouldFinalize_error = objc_msgSend_executeUpdate_shouldFinalize_error_(self, a2, v25, 1, a4);
          v25 = 0;
          if (shouldFinalize_error)
          {
            shouldFinalize_error = objc_msgSend_executeUpdateWithSql_error_(self, a2, "drop table temp_migration_relationships", a4);
          }
        }

        goto LABEL_34;
      }
    }

    shouldFinalize_error = 0;
    goto LABEL_34;
  }

  if (!a3)
  {
    if (!shouldFinalize_error || !objc_msgSend_executeUpdateWithSql_error_(self, a2, "create table document (version integer, compatibleVersion integer, closedCleanly integer)", a4) || !objc_msgSend_executeUpdateWithSql_error_(self, a2, "create table objects (identifier integer primary key, class integer, stateType integer, state)", a4) || !objc_msgSend_executeUpdateWithSql_error_(self, a2, "create table relationships (sourceObject integer, targetObject integer, primary key(sourceObject, targetObject))", a4) || (objc_msgSend_executeUpdateWithSql_error_(self, a2, "create table dataStates (identifier integer primary key, state blob)", a4) & 1) == 0)
    {
      goto LABEL_60;
    }

    v16 = objc_msgSend_executeUpdateWithSql_error_(self, a2, "create table cullingState (identifier integer primary key, change integer)", a4);
    goto LABEL_50;
  }

LABEL_35:
  if (a3 == 2 && shouldFinalize_error)
  {
    if (objc_msgSend_executeUpdateWithSql_error_(self, a2, "create table cullingState (identifier integer primary key, change integer)", a4))
    {
LABEL_38:
      v17 = objc_msgSend_executeUpdateWithSql_error_(self, a2, "create table document (version integer, compatibleVersion integer, closedCleanly integer)", a4);
      v25 = 0;
      if (v17)
      {
        if (objc_msgSend_prepareStatement_sql_error_(self, a2, &v25, "insert into document (version, compatibleVersion) values (?, ?)", a4))
        {
          sqlite3_bind_int64(v25, 1, 0x2CBCC7AB8);
          v17 = TSUHandleSqlite();
          if (v17)
          {
            sqlite3_bind_int64(v25, 2, 0x2CBCC7AB8);
            v17 = TSUHandleSqlite();
            if (v17)
            {
              v17 = objc_msgSend_executeUpdate_shouldFinalize_error_(self, a2, v25, 1, a4);
            }
          }
        }

        else
        {
          v17 = 0;
        }
      }

      goto LABEL_46;
    }
  }

  else
  {
    v17 = (a3 != 2) & shouldFinalize_error;
    if ((a3 - 4) < 0xFFFFFFFE)
    {
      goto LABEL_47;
    }

    if (v17)
    {
      goto LABEL_38;
    }
  }

  v17 = 0;
  v25 = 0;
LABEL_46:
  a3 = 4;
LABEL_47:
  if (a3 != 4 || !v17)
  {
    if (a3 == 4)
    {
      v20 = 5;
    }

    else
    {
      v20 = a3;
    }

    if (((a3 != 4) & v17) != 0)
    {
      v18 = objc_msgSend_setSchemaVersion_error_(self, a2, v20, a4);
      goto LABEL_57;
    }

LABEL_60:
    objc_msgSend_commitTransactionWithError_(self, a2, a4);
    goto LABEL_61;
  }

  v16 = objc_msgSend_executeUpdateWithSql_error_(self, a2, "alter table document add column closedCleanly integer", a4);
LABEL_50:
  if ((v16 & 1) == 0)
  {
    goto LABEL_60;
  }

  v18 = objc_msgSend_setSchemaVersion_error_(self, a2, 5, a4);
LABEL_57:
  v21 = v18;
  if (objc_msgSend_commitTransactionWithError_(self, v19, a4) && (v21 & 1) != 0)
  {
    return 1;
  }

LABEL_61:
  sub_276A59230(a4, v22, v23);
  return 0;
}

- (BOOL)setDocumentVersion:(id)a3 error:(id *)a4
{
  var1 = a3.var1;
  var0 = a3.var0;
  v22 = 0;
  if (objc_msgSend_prepareStatement_sql_error_(self, a2, &v22, "update document set version=?, compatibleVersion=? where 1=1") && (sqlite3_bind_int64(v22, 1, var0), TSUHandleSqlite()) && (sqlite3_bind_int64(v22, 2, var1), TSUHandleSqlite()))
  {
    shouldFinalize_error = objc_msgSend_executeUpdate_shouldFinalize_error_(self, v8, v22, 1, a4);
  }

  else
  {
    shouldFinalize_error = 0;
  }

  v10 = sqlite3_changes(*(&self->super.super.isa + *MEMORY[0x277D81390]));
  if (v10)
  {
    if (v10 < 2)
    {
      if ((shouldFinalize_error & 1) == 0)
      {
LABEL_18:
        sub_276A59230(a4, v11, v12);
        return 0;
      }
    }

    else
    {
      v13 = MEMORY[0x277D81150];
      v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSPDatabase setDocumentVersion:error:]");
      v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDatabase.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v17, v14, v16, 453, 0, "Updated more than one row when setting the document version. Expecting this table to contain a maximum of one row");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19);
      if ((shouldFinalize_error & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    return 1;
  }

  else
  {
    v22 = 0;
    if (!shouldFinalize_error)
    {
      goto LABEL_18;
    }

    if (!objc_msgSend_prepareStatement_sql_error_(self, v11, &v22, "insert into document (version, compatibleVersion) values (?, ?)", a4))
    {
      goto LABEL_18;
    }

    sqlite3_bind_int64(v22, 1, var0);
    if (!TSUHandleSqlite())
    {
      goto LABEL_18;
    }

    sqlite3_bind_int64(v22, 2, var1);
    if (!TSUHandleSqlite())
    {
      goto LABEL_18;
    }

    v20 = 1;
    if ((objc_msgSend_executeUpdate_shouldFinalize_error_(self, v11, v22, 1, a4) & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  return v20;
}

- (BOOL)setClosedCleanlyToken:(int64_t)a3 error:(id *)a4
{
  v21 = 0;
  if (objc_msgSend_prepareStatement_sql_error_(self, a2, &v21, "update document set closedCleanly=? where 1=1", a4) && (sqlite3_bind_int64(v21, 1, a3), TSUHandleSqlite()))
  {
    shouldFinalize_error = objc_msgSend_executeUpdate_shouldFinalize_error_(self, v7, v21, 1, a4);
  }

  else
  {
    shouldFinalize_error = 0;
  }

  v9 = sqlite3_changes(*(&self->super.super.isa + *MEMORY[0x277D81390]));
  if (v9)
  {
    if (v9 < 2)
    {
      if ((shouldFinalize_error & 1) == 0)
      {
LABEL_16:
        sub_276A59230(a4, v10, v11);
        return 0;
      }
    }

    else
    {
      v12 = MEMORY[0x277D81150];
      v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSPDatabase setClosedCleanlyToken:error:]");
      v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDatabase.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v16, v13, v15, 472, 0, "Updated more than one row when setting the document version. Expecting this table to contain a maximum of one row");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18);
      if ((shouldFinalize_error & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    return 1;
  }

  else
  {
    v21 = 0;
    if (!shouldFinalize_error)
    {
      goto LABEL_16;
    }

    if (!objc_msgSend_prepareStatement_sql_error_(self, v10, &v21, "insert into document (closedCleanly) values (?)", a4))
    {
      goto LABEL_16;
    }

    sqlite3_bind_int64(v21, 1, a3);
    if (!TSUHandleSqlite())
    {
      goto LABEL_16;
    }

    v19 = 1;
    if ((objc_msgSend_executeUpdate_shouldFinalize_error_(self, v10, v21, 1, a4) & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  return v19;
}

- (BOOL)documentVersion:(id *)a3 closedCleanlyToken:(int64_t *)a4 error:(id *)a5
{
  if (a3)
  {
    if (a4)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPDatabase documentVersion:closedCleanlyToken:error:]");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDatabase.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v13, v10, v12, 479, 0, "invalid nil value for '%{public}s'", "version");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
    if (a4)
    {
      goto LABEL_6;
    }
  }

  v16 = MEMORY[0x277D81150];
  v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPDatabase documentVersion:closedCleanlyToken:error:]");
  v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDatabase.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v20, v17, v19, 480, 0, "invalid nil value for '%{public}s'", "closedCleanlyToken");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22);
LABEL_6:
  v28 = 0;
  if (objc_msgSend_prepareStatement_sql_error_(self, a2, &v28, "select version, compatibleVersion, closedCleanly from document", a5))
  {
    if (objc_msgSend_startSingleResultQuery_error_(self, v23, v28, a5))
    {
      a3->var0 = sqlite3_column_int64(v28, 0);
      v25 = 1;
      a3->var1 = sqlite3_column_int64(v28, 1);
      *a4 = sqlite3_column_int64(v28, 2);
      if (objc_msgSend_endSingleResultQuery_shouldFinalize_error_(self, v26, v28, 1, a5))
      {
        return v25;
      }
    }

    else if (a5)
    {
      *a5 = objc_msgSend_tsp_errorWithCode_(MEMORY[0x277CCA9B8], v23, 6);
    }
  }

  sub_276A59230(a5, v23, v24);
  return 0;
}

- (BOOL)insertObjectWithIdentifier:(int64_t)a3 stateIdentifier:(const ObjectStateIdentifier *)a4 classType:(int)a5 error:(id *)a6
{
  v11 = sub_276AE3C74(a4);
  v13 = objc_msgSend_prepareStatement_sql_error_(self, v12, &self->_insertObjectStatement, "insert into objects (identifier, class, stateType, state) values (?, ?, ?, ?)", a6);
  if (v13)
  {
    sqlite3_bind_int64(self->_insertObjectStatement, 1, a3);
    v13 = TSUHandleSqlite();
    if (v13)
    {
      sqlite3_bind_int(self->_insertObjectStatement, 2, a5);
      v13 = TSUHandleSqlite();
      if (v13)
      {
        sqlite3_bind_int(self->_insertObjectStatement, 3, v11 ^ 1);
        v13 = TSUHandleSqlite();
      }
    }
  }

  if (v11)
  {
    if ((v13 & 1) == 0)
    {
      goto LABEL_13;
    }

    insertObjectStatement = self->_insertObjectStatement;
    v17 = sub_276AE3C7C(a4, v14);
    sqlite3_bind_int64(insertObjectStatement, 4, v17);
    if (!TSUHandleSqlite())
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

    v18 = sub_276AE3D54(a4, v14);
    v20 = objc_msgSend_maximumLengthOfBytesUsingEncoding_(v18, v19, 4);
    v21 = malloc_type_malloc(v20, 0x100004077774924uLL);
    objc_msgSend_getCString_maxLength_encoding_(v18, v22, v21, v20, 4);
    sqlite3_bind_text(self->_insertObjectStatement, 4, v21, -1, MEMORY[0x277D86138]);
    v23 = TSUHandleSqlite();

    if ((v23 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  if (objc_msgSend_executeUpdate_shouldFinalize_error_(self, v14, self->_insertObjectStatement, 0, a6))
  {
    return 1;
  }

LABEL_13:
  sub_276A59230(a6, v14, v15);
  return 0;
}

- (BOOL)insertDataStateWithSize:(int)a3 identifier:(int64_t *)a4 error:(id *)a5
{
  if (!a4)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPDatabase insertDataStateWithSize:identifier:error:]");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDatabase.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v13, v10, v12, 539, 0, "Invalid parameter not satisfying: %{public}s", "identifier != NULL");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
  }

  if (objc_msgSend_prepareStatement_sql_error_(self, a2, &self->_insertDataStateStatement, "insert into dataStates (state) values (?)", a5) && (sqlite3_bind_zeroblob(self->_insertDataStateStatement, 1, a3), TSUHandleSqlite()) && objc_msgSend_executeUpdate_shouldFinalize_error_(self, v16, self->_insertDataStateStatement, 0, a5))
  {
    *a4 = sqlite3_last_insert_rowid(*(&self->super.super.isa + *MEMORY[0x277D81390]));
    return 1;
  }

  else
  {
    sub_276A59230(a5, v16, v17);
    return 0;
  }
}

- (BOOL)updateDataStateWithIdentifier:(int64_t)a3 size:(int)a4 error:(id *)a5
{
  if (objc_msgSend_prepareStatement_sql_error_(self, a2, &self->_updateDataStateStatement, "update dataStates set state = ? where identifier = ?"))
  {
    sqlite3_bind_zeroblob(self->_updateDataStateStatement, 1, a4);
    if (TSUHandleSqlite())
    {
      sqlite3_bind_int64(self->_updateDataStateStatement, 2, a3);
      if (TSUHandleSqlite())
      {
        if (objc_msgSend_executeUpdate_shouldFinalize_error_(self, v9, self->_updateDataStateStatement, 0, a5))
        {
          return 1;
        }
      }
    }
  }

  sub_276A59230(a5, v9, v10);
  return 0;
}

- (sqlite3_blob)openDataStateBlobWithIdentifier:(int64_t)a3 willWrite:(BOOL)a4 error:(id *)a5
{
  ppBlob = 0;
  sqlite3_blob_open(*(&self->super.super.isa + *MEMORY[0x277D81390]), "main", "dataStates", "state", a3, a4, &ppBlob);
  v8 = TSUHandleSqlite();
  if ((v8 & 1) == 0)
  {
    sub_276A59230(a5, v6, v7);
  }

  if (v8)
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
  if (objc_msgSend_prepareStatement_sql_error_(self, a2, &self->_insertRelationshipStatement, "insert into relationships (sourceObject, targetObject) values (?, ?)"))
  {
    sqlite3_bind_int64(self->_insertRelationshipStatement, 1, a3);
    if (TSUHandleSqlite())
    {
      sqlite3_bind_int64(self->_insertRelationshipStatement, 2, a4);
      if (TSUHandleSqlite())
      {
        if (objc_msgSend_executeUpdate_shouldFinalize_error_(self, v9, self->_insertRelationshipStatement, 0, a5))
        {
          return 1;
        }
      }
    }
  }

  sub_276A59230(a5, v9, v10);
  return 0;
}

- (BOOL)parseArchive:(Message *)a3 forObject:(id)a4 error:(id *)a5
{
  v8 = a4;
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 0;
  if (objc_msgSend_hasDataState(v8, v9, v10))
  {
    v12 = objc_msgSend_openBlobForObject_error_(self, v11, v8, a5);
    *(v35 + 24) = v12 != 0;
    if (v12)
    {
      sub_276A5C7F4(&v31, v12);
      google::protobuf::MessageLite::ParseFromZeroCopyStream(a3, &v31);
    }
  }

  else
  {
    v13 = objc_alloc(MEMORY[0x277D811D0]);
    v16 = objc_msgSend_fileURL(v8, v14, v15);
    v18 = objc_msgSend_initForReadingURL_error_(v13, v17, v16, a5);

    *(v35 + 24) = v18 != 0;
    if (v18)
    {
      v25 = 0;
      v26 = &v25;
      v27 = 0x3032000000;
      v28 = sub_276A7CB1C;
      v29 = sub_276A7CB2C;
      v30 = 0;
      sub_276A00FEC(&v31);
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = sub_276A7CB34;
      v24[3] = &unk_27A6E5B00;
      v24[4] = &v34;
      v24[5] = &v25;
      v24[6] = &v31;
      objc_msgSend_readWithHandlerAndWait_(v18, v19, v24);
      objc_msgSend_close(v18, v20, v21);

      if (*(v35 + 24) == 1)
      {
        google::protobuf::MessageLite::ParseFromZeroCopyStream(a3, &v31);
      }

      if (a5)
      {
        *a5 = v26[5];
      }

      _Block_object_dispose(&v25, 8);
    }
  }

  v22 = *(v35 + 24);
  _Block_object_dispose(&v34, 8);

  return v22;
}

@end