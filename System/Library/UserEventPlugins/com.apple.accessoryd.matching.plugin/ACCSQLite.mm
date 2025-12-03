@interface ACCSQLite
- (ACCSQLite)initWithPath:(id)path schema:(id)schema;
- (BOOL)executeSQL:(id)l arguments:(char *)arguments;
- (BOOL)openWithError:(id *)error;
- (NSDateFormatter)dateFormatter;
- (id)_createSchemaHash;
- (id)_synchronousModeString;
- (id)_tableNameForClass:(Class)class;
- (id)allTableNames;
- (id)columnNamesForTable:(id)table;
- (id)creationDate;
- (id)datePropertyForKey:(id)key;
- (id)propertyForKey:(id)key;
- (id)select:(id)select from:(id)from where:(id)where bindings:(id)bindings;
- (id)selectFrom:(id)from where:(id)where bindings:(id)bindings limit:(id)limit;
- (id)statementForSQL:(id)l;
- (int)changes;
- (int)dbUserVersion;
- (int)userVersion;
- (int64_t)insertOrReplaceInto:(id)into values:(id)values;
- (int64_t)lastInsertRowID;
- (unint64_t)selectCountFrom:(id)from where:(id)where bindings:(id)bindings;
- (void)_periodicVacuum;
- (void)close;
- (void)dealloc;
- (void)deleteFrom:(id)from matchingValues:(id)values;
- (void)deleteFrom:(id)from where:(id)where bindings:(id)bindings;
- (void)dropAllTables;
- (void)open;
- (void)remove;
- (void)removeAllStatements;
- (void)removePropertyForKey:(id)key;
- (void)select:(id)select from:(id)from where:(id)where bindings:(id)bindings orderBy:(id)by limit:(id)limit block:(id)block;
- (void)selectFrom:(id)from where:(id)where bindings:(id)bindings orderBy:(id)by limit:(id)limit block:(id)block;
- (void)setDateProperty:(id)property forKey:(id)key;
- (void)setProperty:(id)property forKey:(id)key;
- (void)update:(id)update set:(id)set where:(id)where bindings:(id)bindings limit:(id)limit;
@end

@implementation ACCSQLite

- (ACCSQLite)initWithPath:(id)path schema:(id)schema
{
  pathCopy = path;
  schemaCopy = schema;
  v17.receiver = self;
  v17.super_class = ACCSQLite;
  v9 = [(ACCSQLite *)&v17 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_path, path);
    objc_storeStrong(&v10->_schema, schema);
    _createSchemaHash = [(ACCSQLite *)v10 _createSchemaHash];
    schemaVersion = v10->_schemaVersion;
    v10->_schemaVersion = _createSchemaHash;

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
  delegate = [(ACCSQLite *)self delegate];

  if (!delegate)
  {
    return self->_userVersion;
  }

  delegate2 = [(ACCSQLite *)self delegate];
  userVersion = [delegate2 userVersion];

  return userVersion;
}

- (id)_synchronousModeString
{
  synchronousMode = [(ACCSQLite *)self synchronousMode];
  if (synchronousMode >= 3)
  {
    [ACCSQLite _synchronousModeString];
  }

  return *(&off_58BA8 + synchronousMode);
}

- (id)_createSchemaHash
{
  memset(v8, 0, sizeof(v8));
  v3 = [NSData dataWithBytesNoCopy:v8 length:32 freeWhenDone:0];
  schema = [(ACCSQLite *)self schema];
  v5 = [schema dataUsingEncoding:4];

  CC_SHA256([v5 bytes], objc_msgSend(v5, "length"), v8);
  cKUppercaseHexStringWithoutSpaces = [v3 CKUppercaseHexStringWithoutSpaces];

  return cKUppercaseHexStringWithoutSpaces;
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

- (BOOL)openWithError:(id *)error
{
  v5 = self->_path;
  openCount = self->_openCount;
  if (openCount)
  {
    stringByDeletingLastPathComponent = 0;
    v8 = 0;
    v9 = 0;
    self->_openCount = openCount + 1;
LABEL_3:
    v10 = 1;
    goto LABEL_32;
  }

  stringByDeletingLastPathComponent = [(NSString *)self->_path stringByDeletingLastPathComponent];
  v11 = +[NSFileManager defaultManager];
  v49 = 0;
  v12 = [v11 createDirectoryAtPath:stringByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:&v49];
  v13 = v49;
  v14 = v13;
  if (v12)
  {
    goto LABEL_5;
  }

  domain = [v13 domain];
  if (![domain isEqualToString:NSCocoaErrorDomain])
  {

LABEL_12:
    v23 = v14;
    v20 = 0;
    v16 = v14;
    goto LABEL_13;
  }

  code = [v14 code];

  if (code != &stru_1F8.sectname[12])
  {
    goto LABEL_12;
  }

LABEL_5:
  v48 = v14;
  v15 = [v11 attributesOfItemAtPath:stringByDeletingLastPathComponent error:&v48];
  v16 = v48;

  v17 = [v15 objectForKeyedSubscript:NSFileProtectionKey];
  v18 = [v17 isEqualToString:NSFileProtectionCompleteUntilFirstUserAuthentication];

  if ((v18 & 1) == 0)
  {
    v54 = NSFileProtectionKey;
    v55 = NSFileProtectionCompleteUntilFirstUserAuthentication;
    v19 = [NSDictionary dictionaryWithObjects:&v55 forKeys:&v54 count:1];
    [v11 setAttributes:v19 ofItemAtPath:stringByDeletingLastPathComponent error:0];
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
      _synchronousModeString = [(ACCSQLite *)self _synchronousModeString];
      v29 = [(ACCSQLite *)self executeSQL:@"pragma synchronous = %@", _synchronousModeString];

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
          dbUserVersion = [(ACCSQLite *)self dbUserVersion];
          if (v8)
          {
            v32 = dbUserVersion;
            schemaVersion = [(ACCSQLite *)self schemaVersion];
            if ([v8 isEqualToString:schemaVersion])
            {
              if (![(ACCSQLite *)self userVersion])
              {
                v43 = 0;
                goto LABEL_41;
              }

              userVersion = [(ACCSQLite *)self userVersion];

              if (v32 == userVersion)
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
                  schemaVersion2 = [(ACCSQLite *)self schemaVersion];
                  [(ACCSQLite *)self setProperty:schemaVersion2 forKey:@"SchemaVersion"];

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

            delegate = [(ACCSQLite *)self delegate];
            if (delegate)
            {
              v40 = delegate;
              delegate2 = [(ACCSQLite *)self delegate];
              v42 = [delegate2 migrateDatabase:self fromVersion:v32];

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
          schema = [(ACCSQLite *)self schema];
          [(ACCSQLite *)self executeSQL:@"%@", schema];

          v45 = +[NSDate date];
          [v45 timeIntervalSinceReferenceDate];
          schemaVersion = [NSString stringWithFormat:@"%f", v46];

          [(ACCSQLite *)self setProperty:schemaVersion forKey:@"Created"];
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
  if (error)
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
    *error = v9;
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
    path = [(ACCSQLite *)self path];
    *buf = 138412546;
    v8 = path;
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

- (BOOL)executeSQL:(id)l arguments:(char *)arguments
{
  lCopy = l;
  v7 = [[NSString alloc] initWithFormat:lCopy arguments:arguments];

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

- (id)statementForSQL:(id)l
{
  lCopy = l;
  if (!self->_db)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&def_3A0E8, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[#ACCEventLogger] accsqlite: Database is closed", buf, 2u);
    }

    goto LABEL_9;
  }

  v5 = [(NSMutableDictionary *)self->_statementsBySQL objectForKeyedSubscript:lCopy];
  if (v5)
  {
    goto LABEL_10;
  }

  ppStmt = 0;
  v6 = lCopy;
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
  allValues = [(NSMutableDictionary *)self->_statementsBySQL allValues];
  [allValues makeObjectsPerformSelector:"finalizeStatement"];

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
  allTableNames = [(ACCSQLite *)self allTableNames];
  v4 = [allTableNames countByEnumeratingWithState:&v8 objects:v12 count:16];
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
          objc_enumerationMutation(allTableNames);
        }

        [(ACCSQLite *)self executeSQL:@"drop table %@", *(*(&v8 + 1) + 8 * v7)];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [allTableNames countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (id)propertyForKey:(id)key
{
  keyCopy = key;
  v5 = [(ACCSQLite *)self statementForSQL:@"select value from Properties where key = ?"];
  [v5 bindText:keyCopy atIndex:0];

  v6 = 0;
  if ([v5 step])
  {
    v6 = [v5 textAtIndex:0];
  }

  [v5 reset];

  return v6;
}

- (void)setProperty:(id)property forKey:(id)key
{
  propertyCopy = property;
  keyCopy = key;
  if (propertyCopy)
  {
    v7 = [(ACCSQLite *)self statementForSQL:@"insert or replace into Properties (key, value) values (?, ?)"];
    [v7 bindText:keyCopy atIndex:0];

    [v7 bindText:propertyCopy atIndex:1];
    [v7 step];
    [v7 reset];
    keyCopy = v7;
  }

  else
  {
    [(ACCSQLite *)self removePropertyForKey:keyCopy];
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

- (id)datePropertyForKey:(id)key
{
  v4 = [(ACCSQLite *)self propertyForKey:key];
  if ([v4 length])
  {
    dateFormatter = [(ACCSQLite *)self dateFormatter];
    v6 = [dateFormatter dateFromString:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setDateProperty:(id)property forKey:(id)key
{
  keyCopy = key;
  if (property)
  {
    propertyCopy = property;
    dateFormatter = [(ACCSQLite *)self dateFormatter];
    property = [dateFormatter stringFromDate:propertyCopy];
  }

  [(ACCSQLite *)self setProperty:property forKey:keyCopy];
}

- (void)removePropertyForKey:(id)key
{
  keyCopy = key;
  v5 = [(ACCSQLite *)self statementForSQL:@"delete from Properties where key = ?"];
  [v5 bindText:keyCopy atIndex:0];

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

- (id)columnNamesForTable:(id)table
{
  table = [NSString stringWithFormat:@"pragma table_info(%@)", table];
  v5 = [(ACCSQLite *)self statementForSQL:table];

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

- (id)select:(id)select from:(id)from where:(id)where bindings:(id)bindings
{
  selectCopy = select;
  fromCopy = from;
  whereCopy = where;
  bindingsCopy = bindings;
  v14 = objc_alloc_init(NSMutableArray);
  v15 = [selectCopy componentsJoinedByString:{@", "}];
  fromCopy = [NSMutableString stringWithFormat:@"select %@ from %@", v15, fromCopy];

  if (whereCopy)
  {
    [fromCopy appendFormat:@" where %@", whereCopy];
  }

  v17 = [(ACCSQLite *)self statementForSQL:fromCopy];
  [v17 bindValues:bindingsCopy];
  if ([v17 step])
  {
    do
    {
      allObjectsByColumnName = [v17 allObjectsByColumnName];
      [v14 addObject:allObjectsByColumnName];
    }

    while (([v17 step] & 1) != 0);
  }

  [v17 reset];

  return v14;
}

- (void)select:(id)select from:(id)from where:(id)where bindings:(id)bindings orderBy:(id)by limit:(id)limit block:(id)block
{
  selectCopy = select;
  fromCopy = from;
  whereCopy = where;
  bindingsCopy = bindings;
  byCopy = by;
  limitCopy = limit;
  blockCopy = block;
  context = objc_autoreleasePoolPush();
  v20 = objc_alloc_init(NSMutableString);
  v27 = selectCopy;
  if ([selectCopy count])
  {
    v21 = [selectCopy componentsJoinedByString:{@", "}];
  }

  else
  {
    v21 = @"*";
  }

  [v20 appendFormat:@"select %@ from %@", v21, fromCopy];
  if ([whereCopy length])
  {
    [v20 appendFormat:@" where %@", whereCopy];
  }

  if (byCopy)
  {
    v22 = [byCopy componentsJoinedByString:{@", "}];
    [v20 appendFormat:@" order by %@", v22];
  }

  if (limitCopy)
  {
    [v20 appendFormat:@" limit %ld", objc_msgSend(limitCopy, "integerValue")];
  }

  v23 = [(ACCSQLite *)self statementForSQL:v20];
  [v23 bindValues:bindingsCopy];
  v24 = objc_autoreleasePoolPush();
  if ([v23 step])
  {
    while (1)
    {
      allObjectsByColumnName = [v23 allObjectsByColumnName];
      if (blockCopy)
      {
        v30 = 0;
        blockCopy[2](blockCopy, allObjectsByColumnName, &v30);
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

- (void)selectFrom:(id)from where:(id)where bindings:(id)bindings orderBy:(id)by limit:(id)limit block:(id)block
{
  fromCopy = from;
  whereCopy = where;
  bindingsCopy = bindings;
  byCopy = by;
  limitCopy = limit;
  blockCopy = block;
  context = objc_autoreleasePoolPush();
  v20 = objc_alloc_init(NSMutableString);
  [v20 appendFormat:@"select * from %@", fromCopy];
  if ([whereCopy length])
  {
    [v20 appendFormat:@" where %@", whereCopy, context];
  }

  if (byCopy)
  {
    v21 = [byCopy componentsJoinedByString:{@", "}];
    [v20 appendFormat:@" order by %@", v21];
  }

  if (limitCopy)
  {
    [v20 appendFormat:@" limit %ld", objc_msgSend(limitCopy, "integerValue")];
  }

  v22 = [(ACCSQLite *)self statementForSQL:v20];
  [v22 bindValues:bindingsCopy];
  v23 = objc_autoreleasePoolPush();
  if ([v22 step])
  {
    while (1)
    {
      allObjectsByColumnName = [v22 allObjectsByColumnName];
      if (blockCopy)
      {
        v26 = 0;
        blockCopy[2](blockCopy, allObjectsByColumnName, &v26);
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

- (id)selectFrom:(id)from where:(id)where bindings:(id)bindings limit:(id)limit
{
  fromCopy = from;
  whereCopy = where;
  bindingsCopy = bindings;
  limitCopy = limit;
  v14 = objc_alloc_init(NSMutableString);
  [v14 appendFormat:@"select * from %@", fromCopy];
  if ([whereCopy length])
  {
    [v14 appendFormat:@" where %@", whereCopy];
  }

  if (limitCopy)
  {
    [v14 appendFormat:@" limit %ld", objc_msgSend(limitCopy, "integerValue")];
  }

  v15 = objc_alloc_init(NSMutableArray);
  v16 = [(ACCSQLite *)self statementForSQL:v14];
  [v16 bindValues:bindingsCopy];
  if ([v16 step])
  {
    do
    {
      allObjectsByColumnName = [v16 allObjectsByColumnName];
      [v15 addObject:allObjectsByColumnName];
    }

    while (([v16 step] & 1) != 0);
  }

  [v16 reset];

  return v15;
}

- (void)update:(id)update set:(id)set where:(id)where bindings:(id)bindings limit:(id)limit
{
  updateCopy = update;
  setCopy = set;
  whereCopy = where;
  bindingsCopy = bindings;
  limitCopy = limit;
  v16 = objc_alloc_init(NSMutableString);
  [v16 appendFormat:@"update %@", updateCopy];
  [v16 appendFormat:@" set %@", setCopy];
  if ([whereCopy length])
  {
    [v16 appendFormat:@" where %@", whereCopy];
  }

  if (limitCopy)
  {
    [v16 appendFormat:@" limit %ld", objc_msgSend(limitCopy, "integerValue")];
  }

  v17 = [(ACCSQLite *)self statementForSQL:v16];
  [v17 bindValues:bindingsCopy];
    ;
  }

  [v17 reset];
}

- (unint64_t)selectCountFrom:(id)from where:(id)where bindings:(id)bindings
{
  v5 = [(ACCSQLite *)self select:&off_635D0 from:from where:where bindings:bindings];
  v6 = [v5 objectAtIndexedSubscript:0];
  v7 = [v6 objectForKeyedSubscript:@"n"];
  unsignedIntegerValue = [v7 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (int64_t)insertOrReplaceInto:(id)into values:(id)values
{
  intoCopy = into;
  valuesCopy = values;
  allKeys = [valuesCopy allKeys];
  v9 = [allKeys sortedArrayUsingSelector:"compare:"];

  v10 = objc_alloc_init(NSMutableArray);
  if ([v9 count])
  {
    v11 = 0;
    do
    {
      v12 = [v9 objectAtIndexedSubscript:v11];
      v13 = [valuesCopy objectForKeyedSubscript:v12];
      [v10 setObject:v13 atIndexedSubscript:v11];

      ++v11;
    }

    while (v11 < [v9 count]);
  }

  v14 = [[NSMutableString alloc] initWithString:@"insert or replace into "];
  [v14 appendString:intoCopy];
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
  lastInsertRowID = [(ACCSQLite *)self lastInsertRowID];

  return lastInsertRowID;
}

- (void)deleteFrom:(id)from matchingValues:(id)values
{
  selfCopy = self;
  fromCopy = from;
  valuesCopy = values;
  allKeys = [valuesCopy allKeys];
  v7 = [allKeys sortedArrayUsingSelector:"compare:"];

  v8 = objc_alloc_init(NSMutableArray);
  v9 = objc_alloc_init(NSMutableString);
  if ([v7 count])
  {
    v10 = 0;
    v11 = 0;
    do
    {
      v12 = [v7 objectAtIndexedSubscript:{v11, selfCopy}];
      v13 = [valuesCopy objectForKeyedSubscript:v12];

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

  [(ACCSQLite *)selfCopy deleteFrom:fromCopy where:v9 bindings:v8, selfCopy];
}

- (void)deleteFrom:(id)from where:(id)where bindings:(id)bindings
{
  bindingsCopy = bindings;
  where = [NSString stringWithFormat:@"delete from %@ where %@", from, where];
  v9 = [(ACCSQLite *)self statementForSQL:where];
  [v9 bindValues:bindingsCopy];

  [v9 step];
  [v9 reset];
}

- (id)_tableNameForClass:(Class)class
{
  aCCSQLiteClassName = [(objc_class *)class ACCSQLiteClassName];
  if ([aCCSQLiteClassName hasPrefix:self->_objectClassPrefix])
  {
    v5 = [aCCSQLiteClassName substringFromIndex:{-[NSString length](self->_objectClassPrefix, "length")}];
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [NSString stringWithFormat:@"Object class %@ does not have prefix %@", aCCSQLiteClassName, self->_objectClassPrefix];
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