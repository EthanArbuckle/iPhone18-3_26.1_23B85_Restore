@interface ACCSQLite
- (ACCSQLite)initWithPath:(id)a3 schema:(id)a4;
- (BOOL)executeSQL:(id)a3 arguments:(char *)a4;
- (BOOL)openWithError:(id *)a3;
- (NSDateFormatter)dateFormatter;
- (id)_createSchemaHash;
- (id)_synchronousModeString;
- (id)_tableNameForClass:(Class)a3;
- (id)allTableNames;
- (id)columnNamesForTable:(id)a3;
- (id)creationDate;
- (id)datePropertyForKey:(id)a3;
- (id)propertyForKey:(id)a3;
- (id)select:(id)a3 from:(id)a4 where:(id)a5 bindings:(id)a6;
- (id)selectFrom:(id)a3 where:(id)a4 bindings:(id)a5 limit:(id)a6;
- (id)statementForSQL:(id)a3;
- (int)changes;
- (int)dbUserVersion;
- (int)userVersion;
- (int64_t)insertOrReplaceInto:(id)a3 values:(id)a4;
- (int64_t)lastInsertRowID;
- (unint64_t)selectCountFrom:(id)a3 where:(id)a4 bindings:(id)a5;
- (void)_periodicVacuum;
- (void)close;
- (void)dealloc;
- (void)deleteFrom:(id)a3 matchingValues:(id)a4;
- (void)deleteFrom:(id)a3 where:(id)a4 bindings:(id)a5;
- (void)dropAllTables;
- (void)open;
- (void)remove;
- (void)removeAllStatements;
- (void)removePropertyForKey:(id)a3;
- (void)select:(id)a3 from:(id)a4 where:(id)a5 bindings:(id)a6 orderBy:(id)a7 limit:(id)a8 block:(id)a9;
- (void)selectFrom:(id)a3 where:(id)a4 bindings:(id)a5 orderBy:(id)a6 limit:(id)a7 block:(id)a8;
- (void)setDateProperty:(id)a3 forKey:(id)a4;
- (void)setProperty:(id)a3 forKey:(id)a4;
- (void)update:(id)a3 set:(id)a4 where:(id)a5 bindings:(id)a6 limit:(id)a7;
@end

@implementation ACCSQLite

- (ACCSQLite)initWithPath:(id)a3 schema:(id)a4
{
  v7 = a3;
  v8 = a4;
  v17.receiver = self;
  v17.super_class = ACCSQLite;
  v9 = [(ACCSQLite *)&v17 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_path, a3);
    objc_storeStrong(&v10->_schema, a4);
    v11 = [(ACCSQLite *)v10 _createSchemaHash];
    schemaVersion = v10->_schemaVersion;
    v10->_schemaVersion = v11;

    v13 = objc_alloc_init(NSMutableDictionary);
    statementsBySQL = v10->_statementsBySQL;
    v10->_statementsBySQL = v13;

    objectClassPrefix = v10->_objectClassPrefix;
    v10->_objectClassPrefix = @"CK";

    v10->_synchronousMode = 1;
    *&v10->_hasMigrated = 256;
  }

  return v10;
}

- (void)dealloc
{
  v3 = objc_autoreleasePoolPush();
  [(ACCSQLite *)self close];
  objc_autoreleasePoolPop(v3);
  v4.receiver = self;
  v4.super_class = ACCSQLite;
  [(ACCSQLite *)&v4 dealloc];
}

- (int)userVersion
{
  v3 = [(ACCSQLite *)self delegate];

  if (!v3)
  {
    return self->_userVersion;
  }

  v4 = [(ACCSQLite *)self delegate];
  v5 = [v4 userVersion];

  return v5;
}

- (id)_synchronousModeString
{
  v2 = [(ACCSQLite *)self synchronousMode];
  if (v2 >= 3)
  {
    [ACCSQLite _synchronousModeString];
  }

  return *(&off_58BA8 + v2);
}

- (id)_createSchemaHash
{
  memset(v8, 0, sizeof(v8));
  v3 = [NSData dataWithBytesNoCopy:v8 length:32 freeWhenDone:0];
  v4 = [(ACCSQLite *)self schema];
  v5 = [v4 dataUsingEncoding:4];

  CC_SHA256([v5 bytes], objc_msgSend(v5, "length"), v8);
  v6 = [v3 CKUppercaseHexStringWithoutSpaces];

  return v6;
}

- (void)_periodicVacuum
{
  v3 = [(ACCSQLite *)self propertyForKey:@"LastVacuum"];
  [v3 floatValue];
  v9 = [NSDate dateWithTimeIntervalSinceReferenceDate:v4];

  [v9 timeIntervalSinceNow];
  if (v5 < -604800.0)
  {
    [(ACCSQLite *)self executeSQL:@"VACUUM"];
    v6 = +[NSDate date];
    [v6 timeIntervalSinceReferenceDate];
    v8 = [NSString stringWithFormat:@"%f", v7];

    [(ACCSQLite *)self setProperty:v8 forKey:@"LastVacuum"];
  }
}

- (BOOL)openWithError:(id *)a3
{
  v5 = self->_path;
  openCount = self->_openCount;
  if (openCount)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    self->_openCount = openCount + 1;
LABEL_3:
    v10 = 1;
    goto LABEL_32;
  }

  v7 = [(NSString *)self->_path stringByDeletingLastPathComponent];
  v11 = +[NSFileManager defaultManager];
  v49 = 0;
  v12 = [v11 createDirectoryAtPath:v7 withIntermediateDirectories:1 attributes:0 error:&v49];
  v13 = v49;
  v14 = v13;
  if (v12)
  {
    goto LABEL_5;
  }

  v21 = [v13 domain];
  if (![v21 isEqualToString:NSCocoaErrorDomain])
  {

LABEL_12:
    v23 = v14;
    v20 = 0;
    v16 = v14;
    goto LABEL_13;
  }

  v22 = [v14 code];

  if (v22 != &stru_1F8.sectname[12])
  {
    goto LABEL_12;
  }

LABEL_5:
  v48 = v14;
  v15 = [v11 attributesOfItemAtPath:v7 error:&v48];
  v16 = v48;

  v17 = [v15 objectForKeyedSubscript:NSFileProtectionKey];
  v18 = [v17 isEqualToString:NSFileProtectionCompleteUntilFirstUserAuthentication];

  if ((v18 & 1) == 0)
  {
    v54 = NSFileProtectionKey;
    v55 = NSFileProtectionCompleteUntilFirstUserAuthentication;
    v19 = [NSDictionary dictionaryWithObjects:&v55 forKeys:&v54 count:1];
    [v11 setAttributes:v19 ofItemAtPath:v7 error:0];
  }

  v14 = 0;
  v20 = 1;
LABEL_13:

  v9 = v14;
  if (!v20)
  {
    goto LABEL_27;
  }

  v24 = sqlite3_open_v2([(NSString *)v5 fileSystemRepresentation], &self->_db, 3145734, 0);
  if (v24)
  {
    v52 = NSLocalizedDescriptionKey;
    v25 = [NSString stringWithFormat:@"Error opening db at %@, rc=%d(0x%x)", self->_path, v24, v24];
    v53 = v25;
    v26 = [NSDictionary dictionaryWithObjects:&v53 forKeys:&v52 count:1];
    v27 = [NSError errorWithDomain:NSCocoaErrorDomain code:0 userInfo:v26];

    v9 = v27;
    goto LABEL_27;
  }

  sqlite3_extended_result_codes(self->_db, 1);
  if (!sqlite3_busy_timeout(self->_db, 300000))
  {
    if ([(ACCSQLite *)self executeSQL:@"pragma journal_mode = WAL"])
    {
      v28 = [(ACCSQLite *)self _synchronousModeString];
      v29 = [(ACCSQLite *)self executeSQL:@"pragma synchronous = %@", v28];

      if (v29)
      {
        if ([(ACCSQLite *)self executeSQL:@"pragma auto_vacuum = FULL"])
        {
          [(ACCSQLite *)self begin];
          v30 = [(ACCSQLite *)self select:&off_635A0 from:@"sqlite_master" where:@"type = ? AND name = ?" bindings:&off_635B8];
          if (![v30 count])
          {
            [(ACCSQLite *)self executeSQL:@"create table if not exists Properties (\n    key    text primary key, \n    value  text\n);\n"];
          }

          v8 = [(ACCSQLite *)self propertyForKey:@"SchemaVersion"];
          v31 = [(ACCSQLite *)self dbUserVersion];
          if (v8)
          {
            v32 = v31;
            v33 = [(ACCSQLite *)self schemaVersion];
            if ([v8 isEqualToString:v33])
            {
              if (![(ACCSQLite *)self userVersion])
              {
                v43 = 0;
                goto LABEL_41;
              }

              v34 = [(ACCSQLite *)self userVersion];

              if (v32 == v34)
              {
LABEL_38:
                v43 = 0;
LABEL_42:
                [(ACCSQLite *)self end];
                if ([(ACCSQLite *)self shouldVacuum])
                {
                  [(ACCSQLite *)self _periodicVacuum];
                }

                if ((v43 & 1) != 0 || self->_hasMigrated)
                {
                  v47 = [(ACCSQLite *)self schemaVersion];
                  [(ACCSQLite *)self setProperty:v47 forKey:@"SchemaVersion"];

                  if ([(ACCSQLite *)self userVersion])
                  {
                    [(ACCSQLite *)self executeSQL:@"pragma user_version = %ld", [(ACCSQLite *)self userVersion]];
                  }
                }

                ++self->_openCount;

                goto LABEL_3;
              }
            }

            else
            {
            }

            v39 = [(ACCSQLite *)self delegate];
            if (v39)
            {
              v40 = v39;
              v41 = [(ACCSQLite *)self delegate];
              v42 = [v41 migrateDatabase:self fromVersion:v32];

              if (v42)
              {
                self->_hasMigrated = 1;
              }
            }

            if (self->_hasMigrated)
            {
              goto LABEL_38;
            }

            [(ACCSQLite *)self removeAllStatements];
            [(ACCSQLite *)self dropAllTables];
            self->_hasMigrated = 1;
          }

          [(ACCSQLite *)self executeSQL:@"create table if not exists Properties (\n    key    text primary key, \n    value  text\n);\n"];
          v44 = [(ACCSQLite *)self schema];
          [(ACCSQLite *)self executeSQL:@"%@", v44];

          v45 = +[NSDate date];
          [v45 timeIntervalSinceReferenceDate];
          v33 = [NSString stringWithFormat:@"%f", v46];

          [(ACCSQLite *)self setProperty:v33 forKey:@"Created"];
          v43 = 1;
LABEL_41:

          goto LABEL_42;
        }
      }
    }
  }

LABEL_27:
  sqlite3_close_v2(self->_db);
  self->_db = 0;
  if (a3)
  {
    if (!v9)
    {
      v50 = NSLocalizedDescriptionKey;
      v35 = [NSString stringWithFormat:@"Error opening db at %@, ", self->_path];
      v51 = v35;
      v36 = [NSDictionary dictionaryWithObjects:&v51 forKeys:&v50 count:1];
      v9 = [NSError errorWithDomain:NSCocoaErrorDomain code:0 userInfo:v36];
    }

    v37 = v9;
    v8 = 0;
    v10 = 0;
    *a3 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

LABEL_32:

  return v10;
}

- (void)open
{
  v6 = 0;
  v3 = [(ACCSQLite *)self openWithError:&v6];
  v4 = v6;
  if ((v3 & 1) == 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(ACCSQLite *)self path];
    *buf = 138412546;
    v8 = v5;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&def_3A0E8, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[#ACCEventLogger] accsqlite: Error opening db at %@: %@", buf, 0x16u);
  }
}

- (void)close
{
  openCount = self->_openCount;
  if (openCount)
  {
    if (openCount == 1)
    {
      [(ACCSQLite *)self removeAllStatements];
      if (sqlite3_close(self->_db))
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          *v4 = 0;
          _os_log_impl(&def_3A0E8, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[#ACCEventLogger] accsqlite: Error closing database", v4, 2u);
        }

        return;
      }

      self->_db = 0;
      openCount = self->_openCount;
    }

    self->_openCount = openCount - 1;
  }
}

- (void)remove
{
  v3 = +[NSFileManager defaultManager];
  [v3 removeItemAtPath:self->_path error:0];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [&off_63588 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(&off_63588);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        v9 = +[NSFileManager defaultManager];
        v10 = [(NSString *)self->_path stringByAppendingString:v8];
        [v9 removeItemAtPath:v10 error:0];

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [&off_63588 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }
}

- (int64_t)lastInsertRowID
{
  db = self->_db;
  if (db)
  {

    return sqlite3_last_insert_rowid(db);
  }

  else
  {
    v7 = v2;
    v8 = v3;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&def_3A0E8, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[#ACCEventLogger] accsqlite: Database is closed", v6, 2u);
    }

    return -1;
  }
}

- (int)changes
{
  db = self->_db;
  if (db)
  {

    return sqlite3_changes(db);
  }

  else
  {
    v7 = v2;
    v8 = v3;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&def_3A0E8, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[#ACCEventLogger] accsqlite: Database is closed", v6, 2u);
    }

    return -1;
  }
}

- (BOOL)executeSQL:(id)a3 arguments:(char *)a4
{
  v6 = a3;
  v7 = [[NSString alloc] initWithFormat:v6 arguments:a4];

  db = self->_db;
  if (db)
  {
    v9 = sqlite3_exec(db, [v7 UTF8String], 0, 0, 0);
    if (!v9)
    {
      v13 = 1;
      goto LABEL_10;
    }

    v10 = v9;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412546;
      v16 = v7;
      v17 = 1024;
      v18 = v10;
      v11 = "[#ACCEventLogger] accsqlite: Error executing SQL: %@ (%d)";
      v12 = 18;
LABEL_7:
      _os_log_impl(&def_3A0E8, &_os_log_default, OS_LOG_TYPE_DEFAULT, v11, &v15, v12);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v15) = 0;
    v11 = "[#ACCEventLogger] accsqlite: Database is closed";
    v12 = 2;
    goto LABEL_7;
  }

  v13 = 0;
LABEL_10:

  return v13;
}

- (id)statementForSQL:(id)a3
{
  v4 = a3;
  if (!self->_db)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&def_3A0E8, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[#ACCEventLogger] accsqlite: Database is closed", buf, 2u);
    }

    goto LABEL_9;
  }

  v5 = [(NSMutableDictionary *)self->_statementsBySQL objectForKeyedSubscript:v4];
  if (v5)
  {
    goto LABEL_10;
  }

  ppStmt = 0;
  v6 = v4;
  if (sqlite3_prepare_v2(self->_db, [v6 UTF8String], -1, &ppStmt, 0))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v11 = v6;
      _os_log_impl(&def_3A0E8, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[#ACCEventLogger] Error preparing statement: %@", buf, 0xCu);
    }

LABEL_9:
    v5 = 0;
    goto LABEL_10;
  }

  v8 = [ACCSQLiteStatement alloc];
  v5 = [(ACCSQLiteStatement *)v8 initWithSQLite:self SQL:v6 handle:ppStmt];
  [(NSMutableDictionary *)self->_statementsBySQL setObject:v5 forKeyedSubscript:v6];

LABEL_10:

  return v5;
}

- (void)removeAllStatements
{
  v3 = [(NSMutableDictionary *)self->_statementsBySQL allValues];
  [v3 makeObjectsPerformSelector:"finalizeStatement"];

  statementsBySQL = self->_statementsBySQL;

  [(NSMutableDictionary *)statementsBySQL removeAllObjects];
}

- (id)allTableNames
{
  v3 = objc_alloc_init(NSMutableArray);
  v4 = [(ACCSQLite *)self statementForSQL:@"select name from sqlite_master where type = 'table'"];
  if ([v4 step])
  {
    do
    {
      v5 = [v4 textAtIndex:0];
      [v3 addObject:v5];
    }

    while (([v4 step] & 1) != 0);
  }

  [v4 reset];

  return v3;
}

- (void)dropAllTables
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [(ACCSQLite *)self allTableNames];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [(ACCSQLite *)self executeSQL:@"drop table %@", *(*(&v8 + 1) + 8 * v7)];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (id)propertyForKey:(id)a3
{
  v4 = a3;
  v5 = [(ACCSQLite *)self statementForSQL:@"select value from Properties where key = ?"];
  [v5 bindText:v4 atIndex:0];

  v6 = 0;
  if ([v5 step])
  {
    v6 = [v5 textAtIndex:0];
  }

  [v5 reset];

  return v6;
}

- (void)setProperty:(id)a3 forKey:(id)a4
{
  v8 = a3;
  v6 = a4;
  if (v8)
  {
    v7 = [(ACCSQLite *)self statementForSQL:@"insert or replace into Properties (key, value) values (?, ?)"];
    [v7 bindText:v6 atIndex:0];

    [v7 bindText:v8 atIndex:1];
    [v7 step];
    [v7 reset];
    v6 = v7;
  }

  else
  {
    [(ACCSQLite *)self removePropertyForKey:v6];
  }
}

- (NSDateFormatter)dateFormatter
{
  dateFormatter = self->_dateFormatter;
  if (!dateFormatter)
  {
    v4 = objc_opt_new();
    [(NSDateFormatter *)v4 setDateFormat:@"yyyy-MM-dd'T'HH:mm:ssZZZZZ"];
    v5 = self->_dateFormatter;
    self->_dateFormatter = v4;

    dateFormatter = self->_dateFormatter;
  }

  return dateFormatter;
}

- (id)datePropertyForKey:(id)a3
{
  v4 = [(ACCSQLite *)self propertyForKey:a3];
  if ([v4 length])
  {
    v5 = [(ACCSQLite *)self dateFormatter];
    v6 = [v5 dateFromString:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setDateProperty:(id)a3 forKey:(id)a4
{
  v8 = a4;
  if (a3)
  {
    v6 = a3;
    v7 = [(ACCSQLite *)self dateFormatter];
    a3 = [v7 stringFromDate:v6];
  }

  [(ACCSQLite *)self setProperty:a3 forKey:v8];
}

- (void)removePropertyForKey:(id)a3
{
  v4 = a3;
  v5 = [(ACCSQLite *)self statementForSQL:@"delete from Properties where key = ?"];
  [v5 bindText:v4 atIndex:0];

  [v5 step];
  [v5 reset];
}

- (id)creationDate
{
  v2 = [(ACCSQLite *)self propertyForKey:@"Created"];
  [v2 floatValue];
  v4 = [NSDate dateWithTimeIntervalSinceReferenceDate:v3];

  return v4;
}

- (id)columnNamesForTable:(id)a3
{
  v4 = [NSString stringWithFormat:@"pragma table_info(%@)", a3];
  v5 = [(ACCSQLite *)self statementForSQL:v4];

  v6 = objc_alloc_init(NSMutableSet);
  if ([v5 step])
  {
    do
    {
      v7 = [v5 textAtIndex:1];
      [v6 addObject:v7];
    }

    while (([v5 step] & 1) != 0);
  }

  [v5 reset];

  return v6;
}

- (id)select:(id)a3 from:(id)a4 where:(id)a5 bindings:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = objc_alloc_init(NSMutableArray);
  v15 = [v10 componentsJoinedByString:{@", "}];
  v16 = [NSMutableString stringWithFormat:@"select %@ from %@", v15, v11];

  if (v12)
  {
    [v16 appendFormat:@" where %@", v12];
  }

  v17 = [(ACCSQLite *)self statementForSQL:v16];
  [v17 bindValues:v13];
  if ([v17 step])
  {
    do
    {
      v18 = [v17 allObjectsByColumnName];
      [v14 addObject:v18];
    }

    while (([v17 step] & 1) != 0);
  }

  [v17 reset];

  return v14;
}

- (void)select:(id)a3 from:(id)a4 where:(id)a5 bindings:(id)a6 orderBy:(id)a7 limit:(id)a8 block:(id)a9
{
  v15 = a3;
  v29 = a4;
  v16 = a5;
  v28 = a6;
  v17 = a7;
  v18 = a8;
  v19 = a9;
  context = objc_autoreleasePoolPush();
  v20 = objc_alloc_init(NSMutableString);
  v27 = v15;
  if ([v15 count])
  {
    v21 = [v15 componentsJoinedByString:{@", "}];
  }

  else
  {
    v21 = @"*";
  }

  [v20 appendFormat:@"select %@ from %@", v21, v29];
  if ([v16 length])
  {
    [v20 appendFormat:@" where %@", v16];
  }

  if (v17)
  {
    v22 = [v17 componentsJoinedByString:{@", "}];
    [v20 appendFormat:@" order by %@", v22];
  }

  if (v18)
  {
    [v20 appendFormat:@" limit %ld", objc_msgSend(v18, "integerValue")];
  }

  v23 = [(ACCSQLite *)self statementForSQL:v20];
  [v23 bindValues:v28];
  v24 = objc_autoreleasePoolPush();
  if ([v23 step])
  {
    while (1)
    {
      v25 = [v23 allObjectsByColumnName];
      if (v19)
      {
        v30 = 0;
        v19[2](v19, v25, &v30);
        if (v30)
        {
          break;
        }
      }

      objc_autoreleasePoolPop(v24);
      v24 = objc_autoreleasePoolPush();
      if (([v23 step] & 1) == 0)
      {
        goto LABEL_16;
      }
    }
  }

LABEL_16:
  objc_autoreleasePoolPop(v24);
  [v23 reset];

  objc_autoreleasePoolPop(context);
}

- (void)selectFrom:(id)a3 where:(id)a4 bindings:(id)a5 orderBy:(id)a6 limit:(id)a7 block:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  context = objc_autoreleasePoolPush();
  v20 = objc_alloc_init(NSMutableString);
  [v20 appendFormat:@"select * from %@", v14];
  if ([v15 length])
  {
    [v20 appendFormat:@" where %@", v15, context];
  }

  if (v17)
  {
    v21 = [v17 componentsJoinedByString:{@", "}];
    [v20 appendFormat:@" order by %@", v21];
  }

  if (v18)
  {
    [v20 appendFormat:@" limit %ld", objc_msgSend(v18, "integerValue")];
  }

  v22 = [(ACCSQLite *)self statementForSQL:v20];
  [v22 bindValues:v16];
  v23 = objc_autoreleasePoolPush();
  if ([v22 step])
  {
    while (1)
    {
      v24 = [v22 allObjectsByColumnName];
      if (v19)
      {
        v26 = 0;
        v19[2](v19, v24, &v26);
        if (v26)
        {
          break;
        }
      }

      objc_autoreleasePoolPop(v23);
      v23 = objc_autoreleasePoolPush();
      if (([v22 step] & 1) == 0)
      {
        goto LABEL_13;
      }
    }
  }

LABEL_13:
  objc_autoreleasePoolPop(v23);
  [v22 reset];

  objc_autoreleasePoolPop(context);
}

- (id)selectFrom:(id)a3 where:(id)a4 bindings:(id)a5 limit:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = objc_alloc_init(NSMutableString);
  [v14 appendFormat:@"select * from %@", v10];
  if ([v11 length])
  {
    [v14 appendFormat:@" where %@", v11];
  }

  if (v13)
  {
    [v14 appendFormat:@" limit %ld", objc_msgSend(v13, "integerValue")];
  }

  v15 = objc_alloc_init(NSMutableArray);
  v16 = [(ACCSQLite *)self statementForSQL:v14];
  [v16 bindValues:v12];
  if ([v16 step])
  {
    do
    {
      v17 = [v16 allObjectsByColumnName];
      [v15 addObject:v17];
    }

    while (([v16 step] & 1) != 0);
  }

  [v16 reset];

  return v15;
}

- (void)update:(id)a3 set:(id)a4 where:(id)a5 bindings:(id)a6 limit:(id)a7
{
  v18 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = objc_alloc_init(NSMutableString);
  [v16 appendFormat:@"update %@", v18];
  [v16 appendFormat:@" set %@", v12];
  if ([v13 length])
  {
    [v16 appendFormat:@" where %@", v13];
  }

  if (v15)
  {
    [v16 appendFormat:@" limit %ld", objc_msgSend(v15, "integerValue")];
  }

  v17 = [(ACCSQLite *)self statementForSQL:v16];
  [v17 bindValues:v14];
    ;
  }

  [v17 reset];
}

- (unint64_t)selectCountFrom:(id)a3 where:(id)a4 bindings:(id)a5
{
  v5 = [(ACCSQLite *)self select:&off_635D0 from:a3 where:a4 bindings:a5];
  v6 = [v5 objectAtIndexedSubscript:0];
  v7 = [v6 objectForKeyedSubscript:@"n"];
  v8 = [v7 unsignedIntegerValue];

  return v8;
}

- (int64_t)insertOrReplaceInto:(id)a3 values:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 allKeys];
  v9 = [v8 sortedArrayUsingSelector:"compare:"];

  v10 = objc_alloc_init(NSMutableArray);
  if ([v9 count])
  {
    v11 = 0;
    do
    {
      v12 = [v9 objectAtIndexedSubscript:v11];
      v13 = [v7 objectForKeyedSubscript:v12];
      [v10 setObject:v13 atIndexedSubscript:v11];

      ++v11;
    }

    while (v11 < [v9 count]);
  }

  v14 = [[NSMutableString alloc] initWithString:@"insert or replace into "];
  [v14 appendString:v6];
  objc_msgSend(v14, "appendString:", @" (");
  if ([v9 count])
  {
    v15 = 0;
    do
    {
      v16 = [v9 objectAtIndexedSubscript:v15];
      [v14 appendString:v16];

      if (v15 != [v9 count] - 1)
      {
        [v14 appendString:{@", "}];
      }

      ++v15;
    }

    while (v15 < [v9 count]);
  }

  [v14 appendString:@") values ("];
  if ([v9 count])
  {
    v17 = 0;
    do
    {
      if (v17 == [v9 count] - 1)
      {
        v18 = @"?";
      }

      else
      {
        v18 = @"?,";
      }

      [v14 appendString:v18];
      ++v17;
    }

    while (v17 < [v9 count]);
  }

  [v14 appendString:@""]);
  v19 = [(ACCSQLite *)self statementForSQL:v14];
  [v19 bindValues:v10];
  [v19 step];
  [v19 reset];
  v20 = [(ACCSQLite *)self lastInsertRowID];

  return v20;
}

- (void)deleteFrom:(id)a3 matchingValues:(id)a4
{
  v18 = self;
  v19 = a3;
  v5 = a4;
  v6 = [v5 allKeys];
  v7 = [v6 sortedArrayUsingSelector:"compare:"];

  v8 = objc_alloc_init(NSMutableArray);
  v9 = objc_alloc_init(NSMutableString);
  if ([v7 count])
  {
    v10 = 0;
    v11 = 0;
    do
    {
      v12 = [v7 objectAtIndexedSubscript:{v11, v18}];
      v13 = [v5 objectForKeyedSubscript:v12];

      v14 = [v7 objectAtIndexedSubscript:v11];
      [v9 appendString:v14];

      if (v13 && (+[NSNull null](NSNull, "null"), v15 = objc_claimAutoreleasedReturnValue(), v16 = [v15 isEqual:v13], v15, (v16 & 1) == 0))
      {
        [v8 setObject:v13 atIndexedSubscript:v10];
        v17 = @"=?";
        ++v10;
      }

      else
      {
        v17 = @" is NULL";
      }

      [v9 appendString:v17];
      if (v11 != [v7 count] - 1)
      {
        [v9 appendString:@" AND "];
      }

      ++v11;
    }

    while (v11 < [v7 count]);
  }

  [(ACCSQLite *)v18 deleteFrom:v19 where:v9 bindings:v8, v18];
}

- (void)deleteFrom:(id)a3 where:(id)a4 bindings:(id)a5
{
  v8 = a5;
  v10 = [NSString stringWithFormat:@"delete from %@ where %@", a3, a4];
  v9 = [(ACCSQLite *)self statementForSQL:v10];
  [v9 bindValues:v8];

  [v9 step];
  [v9 reset];
}

- (id)_tableNameForClass:(Class)a3
{
  v4 = [(objc_class *)a3 ACCSQLiteClassName];
  if ([v4 hasPrefix:self->_objectClassPrefix])
  {
    v5 = [v4 substringFromIndex:{-[NSString length](self->_objectClassPrefix, "length")}];
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [NSString stringWithFormat:@"Object class %@ does not have prefix %@", v4, self->_objectClassPrefix];
      *buf = 138412290;
      v9 = v6;
      _os_log_impl(&def_3A0E8, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[#ACCEventLogger] accsqlite: %@", buf, 0xCu);
    }

    v5 = 0;
  }

  return v5;
}

- (int)dbUserVersion
{
  v2 = [(ACCSQLite *)self statementForSQL:@"pragma user_version"];
  if ([v2 step])
  {
    do
    {
      v3 = [v2 intAtIndex:0];
    }

    while (([v2 step] & 1) != 0);
  }

  else
  {
    v3 = 0;
  }

  [v2 reset];

  return v3;
}

@end