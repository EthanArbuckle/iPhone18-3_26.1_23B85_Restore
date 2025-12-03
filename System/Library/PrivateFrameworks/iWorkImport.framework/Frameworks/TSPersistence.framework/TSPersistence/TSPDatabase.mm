@interface TSPDatabase
- (BOOL)closeWithError:(id *)error;
- (BOOL)documentVersion:(id *)version closedCleanlyToken:(int64_t *)token error:(id *)error;
- (BOOL)documentVersion:(unint64_t *)version error:(id *)error;
- (BOOL)insertDataStateWithSize:(int)size identifier:(int64_t *)identifier error:(id *)error;
- (BOOL)insertObjectWithIdentifier:(int64_t)identifier stateIdentifier:(const ObjectStateIdentifier *)stateIdentifier classType:(int)type error:(id *)error;
- (BOOL)insertRelationshipWithSourceIdentifier:(int64_t)identifier targetIdentifier:(int64_t)targetIdentifier error:(id *)error;
- (BOOL)lastObjectIdentifier:(int64_t *)identifier error:(id *)error;
- (BOOL)numberOfDatabaseObjects:(unint64_t *)objects error:(id *)error;
- (BOOL)parseArchive:(Message *)archive forObject:(id)object error:(id *)error;
- (BOOL)setClosedCleanlyToken:(int64_t)token error:(id *)error;
- (BOOL)setDocumentVersion:(id)version error:(id *)error;
- (BOOL)updateDataStateWithIdentifier:(int64_t)identifier size:(int)size error:(id *)error;
- (BOOL)upgradeFromSchemaVersion:(int)version error:(id *)error;
- (TSPDatabase)init;
- (TSPDatabase)initWithPath:(id)path error:(id *)error;
- (id)initReadonlyWithPath:(id)path error:(id *)error;
- (id)objectFromStatement:(sqlite3_stmt *)statement;
- (id)queryFirstObjectWithStatement:(sqlite3_stmt *)statement error:(id *)error;
- (id)queryObjectWithIdentifier:(int64_t)identifier error:(id *)error;
- (id)queryObjectsWithMessageTypes:(const int *)types messageTypesCount:(int)count error:(id *)error;
- (sqlite3_blob)openBlobForObject:(id)object error:(id *)error;
- (sqlite3_blob)openDataStateBlobWithIdentifier:(int64_t)identifier error:(id *)error;
- (sqlite3_blob)openDataStateBlobWithIdentifier:(int64_t)identifier willWrite:(BOOL)write error:(id *)error;
- (void)filterIdentifiers:(const void *)identifiers error:(id *)error;
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

- (TSPDatabase)initWithPath:(id)path error:(id *)error
{
  pathCopy = path;
  v8 = objc_msgSend_stringByAppendingPathComponent_(pathCopy, v7, @"index.db");
  v17.receiver = self;
  v17.super_class = TSPDatabase;
  v9 = [(TSUDatabase *)&v17 initWithPath:v8 error:error];

  if (v9)
  {
    v12 = objc_alloc(MEMORY[0x277CBEBC0]);
    inited = objc_msgSend_initFileURLWithPath_(v12, v13, pathCopy);
    packageURL = v9->_packageURL;
    v9->_packageURL = inited;

    v9->_incrementalVacuum = 1;
  }

  else
  {
    sub_276A59230(error, v10, v11);
  }

  return v9;
}

- (id)initReadonlyWithPath:(id)path error:(id *)error
{
  pathCopy = path;
  v8 = objc_msgSend_stringByAppendingPathComponent_(pathCopy, v7, @"index.db");
  v17.receiver = self;
  v17.super_class = TSPDatabase;
  v9 = [(TSUDatabase *)&v17 initReadonlyWithPath:v8 error:error];

  if (v9)
  {
    v12 = objc_alloc(MEMORY[0x277CBEBC0]);
    inited = objc_msgSend_initFileURLWithPath_(v12, v13, pathCopy);
    v15 = v9[6];
    v9[6] = inited;

    *(v9 + 56) = 1;
  }

  else
  {
    sub_276A59230(error, v10, v11);
  }

  return v9;
}

- (BOOL)closeWithError:(id *)error
{
  v8.receiver = self;
  v8.super_class = TSPDatabase;
  v6 = [(TSUDatabase *)&v8 closeWithError:?];
  if (!v6)
  {
    sub_276A59230(error, v4, v5);
  }

  return v6;
}

- (BOOL)documentVersion:(unint64_t *)version error:(id *)error
{
  if (!version)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPDatabase documentVersion:error:]");
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDatabase.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v11, v8, v10, 90, 0, "invalid nil value for '%{public}s'", "version");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
  }

  v19 = 0;
  if (objc_msgSend_prepareStatement_sql_error_(self, a2, &v19, "select version from document", error))
  {
    if (objc_msgSend_startSingleResultQuery_error_(self, v14, v19, error))
    {
      *version = sqlite3_column_int64(v19, 0);
      v16 = 1;
      if (objc_msgSend_endSingleResultQuery_shouldFinalize_error_(self, v17, v19, 1, error))
      {
        return v16;
      }
    }

    else if (error)
    {
      *error = objc_msgSend_tsp_errorWithCode_(MEMORY[0x277CCA9B8], v14, 6);
    }
  }

  sub_276A59230(error, v14, v15);
  return 0;
}

- (BOOL)lastObjectIdentifier:(int64_t *)identifier error:(id *)error
{
  if (!identifier)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPDatabase lastObjectIdentifier:error:]");
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDatabase.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v11, v8, v10, 111, 0, "invalid nil value for '%{public}s'", "identifier");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
  }

  v20 = 0;
  if (objc_msgSend_prepareStatement_sql_error_(self, a2, &v20, "select max(identifier) from objects", error) && objc_msgSend_startSingleResultQuery_error_(self, v14, v20, error))
  {
    v16 = sqlite3_column_int64(v20, 0);
    shouldFinalize_error = objc_msgSend_endSingleResultQuery_shouldFinalize_error_(self, v17, v20, 1, error);
    if (identifier && shouldFinalize_error)
    {
      *identifier = v16;
      return 1;
    }

    if (shouldFinalize_error)
    {
      return 1;
    }
  }

  sub_276A59230(error, v14, v15);
  return 0;
}

- (BOOL)numberOfDatabaseObjects:(unint64_t *)objects error:(id *)error
{
  if (!objects)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPDatabase numberOfDatabaseObjects:error:]");
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDatabase.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v11, v8, v10, 132, 0, "invalid nil value for '%{public}s'", "numberOfObjects");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
  }

  v20 = 0;
  if (objc_msgSend_prepareStatement_sql_error_(self, a2, &v20, "select count(*) from objects", error) && objc_msgSend_startSingleResultQuery_error_(self, v14, v20, error))
  {
    v16 = sqlite3_column_int(v20, 0);
    shouldFinalize_error = objc_msgSend_endSingleResultQuery_shouldFinalize_error_(self, v17, v20, 1, error);
    if (objects && shouldFinalize_error)
    {
      *objects = v16;
      return 1;
    }

    if (shouldFinalize_error)
    {
      return 1;
    }
  }

  sub_276A59230(error, v14, v15);
  return 0;
}

- (void)filterIdentifiers:(const void *)identifiers error:(id *)error
{
  v4 = identifiers + 8;
  if (*identifiers == identifiers + 8)
  {
    operator new();
  }

  v10 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v11 = *identifiers;
  if (*identifiers != v4)
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
  if (objc_msgSend_prepareStatement_sql_error_(self, v25, &pStmt, v24, error))
  {
    operator new();
  }

  sqlite3_finalize(pStmt);
  TSUHandleSqlite();
  sub_276A59230(error, v26, v27);

  return 0;
}

- (sqlite3_blob)openDataStateBlobWithIdentifier:(int64_t)identifier error:(id *)error
{
  ppBlob = 0;
  sqlite3_blob_open(*(&self->super.super.isa + *MEMORY[0x277D81390]), "main", "dataStates", "state", identifier, 0, &ppBlob);
  v7 = TSUHandleSqlite();
  if ((v7 & 1) == 0)
  {
    sub_276A59230(error, v5, v6);
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

- (sqlite3_blob)openBlobForObject:(id)object error:(id *)error
{
  objectCopy = object;
  if (objc_msgSend_hasDataState(objectCopy, v7, v8))
  {
    v11 = objc_msgSend_dataState(objectCopy, v9, v10);
    v13 = objc_msgSend_openDataStateBlobWithIdentifier_error_(self, v12, v11, error);
  }

  else
  {
    if (*MEMORY[0x277D81408] != -1)
    {
      sub_276BD4E10();
    }

    if (*error)
    {
      v13 = 0;
    }

    else
    {
      objc_msgSend_tsu_errorWithCode_userInfo_(MEMORY[0x277CCA9B8], v9, 1, 0);
      *error = v13 = 0;
    }
  }

  return v13;
}

- (id)queryObjectWithIdentifier:(int64_t)identifier error:(id *)error
{
  pStmt = 0;
  if (objc_msgSend_prepareStatement_sql_error_(self, a2, &pStmt, "select identifier, class, stateType, state from objects where identifier = ?", error) && (sqlite3_bind_int64(pStmt, 1, identifier), TSUHandleSqlite()))
  {
    v8 = objc_msgSend_queryFirstObjectWithStatement_error_(self, v7, pStmt, error);
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

- (id)queryObjectsWithMessageTypes:(const int *)types messageTypesCount:(int)count error:(id *)error
{
  v9 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, types);
  pStmt = 0;
  v12 = objc_msgSend_stringWithString_(MEMORY[0x277CCAB68], v10, @"(");
  if (count >= 1)
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

    while (count != v13);
  }

  objc_msgSend_appendString_(v12, v11, @""));
  v15 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v14, @"select identifier, class, stateType, state from objects where class in %@", v12);
  v16 = v15;
  v19 = objc_msgSend_UTF8String(v16, v17, v18);

  v21 = objc_msgSend_prepareStatement_sql_error_(self, v20, &pStmt, v19, error);
  if (count >= 1)
  {
    v22 = 0;
    countCopy = count;
    do
    {
      if (v21)
      {
        v24 = v22 + 1;
        sqlite3_bind_int64(pStmt, v22 + 1, types[v22]);
        v21 = TSUHandleSqlite();
        v22 = v24;
      }

      else
      {
        v21 = 0;
        ++v22;
      }
    }

    while (v22 != countCopy);
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

- (id)queryFirstObjectWithStatement:(sqlite3_stmt *)statement error:(id *)error
{
  v6 = sqlite3_step(statement);
  if (v6 != 101)
  {
    if (v6 == 100)
    {
      v8 = objc_msgSend_objectFromStatement_(self, v7, statement);
      goto LABEL_6;
    }

    sqlite3_sql(statement);
    TSUHandleSqlite();
  }

  v8 = 0;
LABEL_6:

  return v8;
}

- (id)objectFromStatement:(sqlite3_stmt *)statement
{
  v5 = sqlite3_column_int64(statement, 0);
  v6 = sqlite3_column_int(statement, 1);
  if (sqlite3_column_int(statement, 2))
  {
    v7 = sqlite3_column_text(statement, 3);
    v8 = objc_alloc(MEMORY[0x277CCACA8]);
    v10 = objc_msgSend_initWithCString_encoding_(v8, v9, v7, 4);
    v12 = objc_msgSend_databaseObjectWithIdentifier_classType_fileState_packageURL_(TSPDatabaseObject, v11, v5, v6, v10, self->_packageURL);
  }

  else
  {
    v13 = sqlite3_column_int64(statement, 3);
    v12 = objc_msgSend_databaseObjectWithIdentifier_classType_dataState_(TSPDatabaseObject, v14, v5, v6, v13);
  }

  return v12;
}

- (BOOL)upgradeFromSchemaVersion:(int)version error:(id *)error
{
  if (self->_incrementalVacuum)
  {
    v25 = 0;
    if (objc_msgSend_prepareStatement_sql_error_(self, a2, &v25, "pragma auto_vacuum", error) && objc_msgSend_startSingleResultQuery_error_(self, a2, v25, error) && objc_msgSend_executeUpdateWithSql_error_(self, a2, "pragma auto_vacuum = 2", error))
    {
      v7 = objc_msgSend_executeUpdateWithSql_error_(self, a2, "vacuum", error);
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

  if (version >= 6)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPDatabase upgradeFromSchemaVersion:error:]");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDatabase.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v13, v10, v12, 337, 0, "Invalid schema version");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
    if (v7)
    {
LABEL_11:
      shouldFinalize_error = objc_msgSend_beginTransactionWithError_(self, a2, error);
      goto LABEL_14;
    }
  }

  else
  {
    if (version == 5)
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
  if (version == 1)
  {
    if (shouldFinalize_error && objc_msgSend_executeUpdateWithSql_error_(self, a2, "alter table objects rename to temp_migration_objects", error) && objc_msgSend_executeUpdateWithSql_error_(self, a2, "create table objects (identifier integer primary key, class integer, stateType integer, state)", error) && objc_msgSend_executeUpdateWithSql_error_(self, a2, "insert into objects (identifier, class, stateType, state) select identifier, class, stateType, state from temp_migration_objects", error) && objc_msgSend_executeUpdateWithSql_error_(self, a2, "drop table temp_migration_objects", error) && objc_msgSend_executeUpdateWithSql_error_(self, a2, "alter table relationships rename to temp_migration_relationships", error))
    {
      shouldFinalize_error = objc_msgSend_executeUpdateWithSql_error_(self, a2, "create table relationships (sourceObject integer, targetObject integer, primary key(sourceObject, targetObject))", error);
      v25 = 0;
      if (!shouldFinalize_error)
      {
LABEL_34:
        version = 2;
        goto LABEL_35;
      }

      if (objc_msgSend_prepareStatement_sql_error_(self, a2, &v25, "insert into relationships (sourceObject, targetObject) select sourceObject, targetObject from temp_migration_relationships where updateType != ?", error))
      {
        sqlite3_bind_int(v25, 1, 0);
        shouldFinalize_error = TSUHandleSqlite();
        if (shouldFinalize_error)
        {
          shouldFinalize_error = objc_msgSend_executeUpdate_shouldFinalize_error_(self, a2, v25, 1, error);
          v25 = 0;
          if (shouldFinalize_error)
          {
            shouldFinalize_error = objc_msgSend_executeUpdateWithSql_error_(self, a2, "drop table temp_migration_relationships", error);
          }
        }

        goto LABEL_34;
      }
    }

    shouldFinalize_error = 0;
    goto LABEL_34;
  }

  if (!version)
  {
    if (!shouldFinalize_error || !objc_msgSend_executeUpdateWithSql_error_(self, a2, "create table document (version integer, compatibleVersion integer, closedCleanly integer)", error) || !objc_msgSend_executeUpdateWithSql_error_(self, a2, "create table objects (identifier integer primary key, class integer, stateType integer, state)", error) || !objc_msgSend_executeUpdateWithSql_error_(self, a2, "create table relationships (sourceObject integer, targetObject integer, primary key(sourceObject, targetObject))", error) || (objc_msgSend_executeUpdateWithSql_error_(self, a2, "create table dataStates (identifier integer primary key, state blob)", error) & 1) == 0)
    {
      goto LABEL_60;
    }

    v16 = objc_msgSend_executeUpdateWithSql_error_(self, a2, "create table cullingState (identifier integer primary key, change integer)", error);
    goto LABEL_50;
  }

LABEL_35:
  if (version == 2 && shouldFinalize_error)
  {
    if (objc_msgSend_executeUpdateWithSql_error_(self, a2, "create table cullingState (identifier integer primary key, change integer)", error))
    {
LABEL_38:
      v17 = objc_msgSend_executeUpdateWithSql_error_(self, a2, "create table document (version integer, compatibleVersion integer, closedCleanly integer)", error);
      v25 = 0;
      if (v17)
      {
        if (objc_msgSend_prepareStatement_sql_error_(self, a2, &v25, "insert into document (version, compatibleVersion) values (?, ?)", error))
        {
          sqlite3_bind_int64(v25, 1, 0x2CBCC7AB8);
          v17 = TSUHandleSqlite();
          if (v17)
          {
            sqlite3_bind_int64(v25, 2, 0x2CBCC7AB8);
            v17 = TSUHandleSqlite();
            if (v17)
            {
              v17 = objc_msgSend_executeUpdate_shouldFinalize_error_(self, a2, v25, 1, error);
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
    v17 = (version != 2) & shouldFinalize_error;
    if ((version - 4) < 0xFFFFFFFE)
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
  version = 4;
LABEL_47:
  if (version != 4 || !v17)
  {
    if (version == 4)
    {
      versionCopy = 5;
    }

    else
    {
      versionCopy = version;
    }

    if (((version != 4) & v17) != 0)
    {
      v18 = objc_msgSend_setSchemaVersion_error_(self, a2, versionCopy, error);
      goto LABEL_57;
    }

LABEL_60:
    objc_msgSend_commitTransactionWithError_(self, a2, error);
    goto LABEL_61;
  }

  v16 = objc_msgSend_executeUpdateWithSql_error_(self, a2, "alter table document add column closedCleanly integer", error);
LABEL_50:
  if ((v16 & 1) == 0)
  {
    goto LABEL_60;
  }

  v18 = objc_msgSend_setSchemaVersion_error_(self, a2, 5, error);
LABEL_57:
  v21 = v18;
  if (objc_msgSend_commitTransactionWithError_(self, v19, error) && (v21 & 1) != 0)
  {
    return 1;
  }

LABEL_61:
  sub_276A59230(error, v22, v23);
  return 0;
}

- (BOOL)setDocumentVersion:(id)version error:(id *)error
{
  var1 = version.var1;
  var0 = version.var0;
  v22 = 0;
  if (objc_msgSend_prepareStatement_sql_error_(self, a2, &v22, "update document set version=?, compatibleVersion=? where 1=1") && (sqlite3_bind_int64(v22, 1, var0), TSUHandleSqlite()) && (sqlite3_bind_int64(v22, 2, var1), TSUHandleSqlite()))
  {
    shouldFinalize_error = objc_msgSend_executeUpdate_shouldFinalize_error_(self, v8, v22, 1, error);
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
        sub_276A59230(error, v11, v12);
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

    if (!objc_msgSend_prepareStatement_sql_error_(self, v11, &v22, "insert into document (version, compatibleVersion) values (?, ?)", error))
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
    if ((objc_msgSend_executeUpdate_shouldFinalize_error_(self, v11, v22, 1, error) & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  return v20;
}

- (BOOL)setClosedCleanlyToken:(int64_t)token error:(id *)error
{
  v21 = 0;
  if (objc_msgSend_prepareStatement_sql_error_(self, a2, &v21, "update document set closedCleanly=? where 1=1", error) && (sqlite3_bind_int64(v21, 1, token), TSUHandleSqlite()))
  {
    shouldFinalize_error = objc_msgSend_executeUpdate_shouldFinalize_error_(self, v7, v21, 1, error);
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
        sub_276A59230(error, v10, v11);
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

    if (!objc_msgSend_prepareStatement_sql_error_(self, v10, &v21, "insert into document (closedCleanly) values (?)", error))
    {
      goto LABEL_16;
    }

    sqlite3_bind_int64(v21, 1, token);
    if (!TSUHandleSqlite())
    {
      goto LABEL_16;
    }

    v19 = 1;
    if ((objc_msgSend_executeUpdate_shouldFinalize_error_(self, v10, v21, 1, error) & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  return v19;
}

- (BOOL)documentVersion:(id *)version closedCleanlyToken:(int64_t *)token error:(id *)error
{
  if (version)
  {
    if (token)
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
    if (token)
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
  if (objc_msgSend_prepareStatement_sql_error_(self, a2, &v28, "select version, compatibleVersion, closedCleanly from document", error))
  {
    if (objc_msgSend_startSingleResultQuery_error_(self, v23, v28, error))
    {
      version->var0 = sqlite3_column_int64(v28, 0);
      v25 = 1;
      version->var1 = sqlite3_column_int64(v28, 1);
      *token = sqlite3_column_int64(v28, 2);
      if (objc_msgSend_endSingleResultQuery_shouldFinalize_error_(self, v26, v28, 1, error))
      {
        return v25;
      }
    }

    else if (error)
    {
      *error = objc_msgSend_tsp_errorWithCode_(MEMORY[0x277CCA9B8], v23, 6);
    }
  }

  sub_276A59230(error, v23, v24);
  return 0;
}

- (BOOL)insertObjectWithIdentifier:(int64_t)identifier stateIdentifier:(const ObjectStateIdentifier *)stateIdentifier classType:(int)type error:(id *)error
{
  v11 = sub_276AE3C74(stateIdentifier);
  v13 = objc_msgSend_prepareStatement_sql_error_(self, v12, &self->_insertObjectStatement, "insert into objects (identifier, class, stateType, state) values (?, ?, ?, ?)", error);
  if (v13)
  {
    sqlite3_bind_int64(self->_insertObjectStatement, 1, identifier);
    v13 = TSUHandleSqlite();
    if (v13)
    {
      sqlite3_bind_int(self->_insertObjectStatement, 2, type);
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
    v17 = sub_276AE3C7C(stateIdentifier, v14);
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

    v18 = sub_276AE3D54(stateIdentifier, v14);
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

  if (objc_msgSend_executeUpdate_shouldFinalize_error_(self, v14, self->_insertObjectStatement, 0, error))
  {
    return 1;
  }

LABEL_13:
  sub_276A59230(error, v14, v15);
  return 0;
}

- (BOOL)insertDataStateWithSize:(int)size identifier:(int64_t *)identifier error:(id *)error
{
  if (!identifier)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPDatabase insertDataStateWithSize:identifier:error:]");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDatabase.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v13, v10, v12, 539, 0, "Invalid parameter not satisfying: %{public}s", "identifier != NULL");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
  }

  if (objc_msgSend_prepareStatement_sql_error_(self, a2, &self->_insertDataStateStatement, "insert into dataStates (state) values (?)", error) && (sqlite3_bind_zeroblob(self->_insertDataStateStatement, 1, size), TSUHandleSqlite()) && objc_msgSend_executeUpdate_shouldFinalize_error_(self, v16, self->_insertDataStateStatement, 0, error))
  {
    *identifier = sqlite3_last_insert_rowid(*(&self->super.super.isa + *MEMORY[0x277D81390]));
    return 1;
  }

  else
  {
    sub_276A59230(error, v16, v17);
    return 0;
  }
}

- (BOOL)updateDataStateWithIdentifier:(int64_t)identifier size:(int)size error:(id *)error
{
  if (objc_msgSend_prepareStatement_sql_error_(self, a2, &self->_updateDataStateStatement, "update dataStates set state = ? where identifier = ?"))
  {
    sqlite3_bind_zeroblob(self->_updateDataStateStatement, 1, size);
    if (TSUHandleSqlite())
    {
      sqlite3_bind_int64(self->_updateDataStateStatement, 2, identifier);
      if (TSUHandleSqlite())
      {
        if (objc_msgSend_executeUpdate_shouldFinalize_error_(self, v9, self->_updateDataStateStatement, 0, error))
        {
          return 1;
        }
      }
    }
  }

  sub_276A59230(error, v9, v10);
  return 0;
}

- (sqlite3_blob)openDataStateBlobWithIdentifier:(int64_t)identifier willWrite:(BOOL)write error:(id *)error
{
  ppBlob = 0;
  sqlite3_blob_open(*(&self->super.super.isa + *MEMORY[0x277D81390]), "main", "dataStates", "state", identifier, write, &ppBlob);
  v8 = TSUHandleSqlite();
  if ((v8 & 1) == 0)
  {
    sub_276A59230(error, v6, v7);
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

- (BOOL)insertRelationshipWithSourceIdentifier:(int64_t)identifier targetIdentifier:(int64_t)targetIdentifier error:(id *)error
{
  if (objc_msgSend_prepareStatement_sql_error_(self, a2, &self->_insertRelationshipStatement, "insert into relationships (sourceObject, targetObject) values (?, ?)"))
  {
    sqlite3_bind_int64(self->_insertRelationshipStatement, 1, identifier);
    if (TSUHandleSqlite())
    {
      sqlite3_bind_int64(self->_insertRelationshipStatement, 2, targetIdentifier);
      if (TSUHandleSqlite())
      {
        if (objc_msgSend_executeUpdate_shouldFinalize_error_(self, v9, self->_insertRelationshipStatement, 0, error))
        {
          return 1;
        }
      }
    }
  }

  sub_276A59230(error, v9, v10);
  return 0;
}

- (BOOL)parseArchive:(Message *)archive forObject:(id)object error:(id *)error
{
  objectCopy = object;
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 0;
  if (objc_msgSend_hasDataState(objectCopy, v9, v10))
  {
    v12 = objc_msgSend_openBlobForObject_error_(self, v11, objectCopy, error);
    *(v35 + 24) = v12 != 0;
    if (v12)
    {
      sub_276A5C7F4(&v31, v12);
      google::protobuf::MessageLite::ParseFromZeroCopyStream(archive, &v31);
    }
  }

  else
  {
    v13 = objc_alloc(MEMORY[0x277D811D0]);
    v16 = objc_msgSend_fileURL(objectCopy, v14, v15);
    v18 = objc_msgSend_initForReadingURL_error_(v13, v17, v16, error);

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
        google::protobuf::MessageLite::ParseFromZeroCopyStream(archive, &v31);
      }

      if (error)
      {
        *error = v26[5];
      }

      _Block_object_dispose(&v25, 8);
    }
  }

  v22 = *(v35 + 24);
  _Block_object_dispose(&v34, 8);

  return v22;
}

@end