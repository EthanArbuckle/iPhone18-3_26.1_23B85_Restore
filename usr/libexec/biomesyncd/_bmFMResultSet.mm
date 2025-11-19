@interface _bmFMResultSet
- (BOOL)BOOLForColumn:(id)a3;
- (BOOL)bindWithArray:(id)a3 orDictionary:(id)a4 orVAList:(char *)a5;
- (BOOL)columnIsNull:(id)a3;
- (NSDictionary)resultDictionary;
- (NSMutableDictionary)columnNameToIndexMap;
- (const)UTF8StringForColumn:(id)a3;
- (double)doubleForColumn:(id)a3;
- (double)doubleForColumnIndex:(int)a3;
- (id)columnNameForIndex:(int)a3;
- (id)dataForColumn:(id)a3;
- (id)dataNoCopyForColumn:(id)a3;
- (id)dateForColumn:(id)a3;
- (id)objectForColumn:(id)a3;
- (id)resultDict;
- (id)stringForColumn:(id)a3;
- (int)columnCount;
- (int)columnIndexForName:(id)a3;
- (int)intForColumn:(id)a3;
- (int)intForColumnIndex:(int)a3;
- (int)internalStepWithError:(id *)a3;
- (int64_t)longForColumn:(id)a3;
- (int64_t)longForColumnIndex:(int)a3;
- (int64_t)longLongIntForColumn:(id)a3;
- (int64_t)longLongIntForColumnIndex:(int)a3;
- (unint64_t)unsignedLongLongIntForColumn:(id)a3;
- (void)_tryLogSqliteColumnError:(int)a3;
- (void)close;
- (void)dealloc;
- (void)enumerateWithBlock:(id)a3;
- (void)kvcMagic:(id)a3;
@end

@implementation _bmFMResultSet

- (NSMutableDictionary)columnNameToIndexMap
{
  if (!self->_columnNameToIndexMap)
  {
    v3 = sqlite3_column_count([(_bmFMStatement *)self->_statement statement]);
    v4 = [[NSMutableDictionary alloc] initWithCapacity:v3];
    columnNameToIndexMap = self->_columnNameToIndexMap;
    self->_columnNameToIndexMap = v4;

    if (v3 >= 1)
    {
      v6 = 0;
      do
      {
        v7 = self->_columnNameToIndexMap;
        v8 = [NSNumber numberWithInt:v6];
        v9 = [NSString stringWithUTF8String:sqlite3_column_name([(_bmFMStatement *)self->_statement statement], v6)];
        v10 = [v9 lowercaseString];
        [(NSMutableDictionary *)v7 setObject:v8 forKey:v10];

        v6 = (v6 + 1);
      }

      while (v3 != v6);
    }
  }

  v11 = self->_columnNameToIndexMap;

  return v11;
}

- (void)close
{
  [(_bmFMStatement *)self->_statement reset];
  statement = self->_statement;
  self->_statement = 0;

  [(_bmFMDatabase *)self->_parentDB resultSetDidClose:self];

  [(_bmFMResultSet *)self setParentDB:0];
}

- (void)dealloc
{
  [(_bmFMResultSet *)self close];
  query = self->_query;
  self->_query = 0;

  columnNameToIndexMap = self->_columnNameToIndexMap;
  self->_columnNameToIndexMap = 0;

  v5.receiver = self;
  v5.super_class = _bmFMResultSet;
  [(_bmFMResultSet *)&v5 dealloc];
}

- (void)enumerateWithBlock:(id)a3
{
  v4 = a3;
LABEL_2:
  v5 = objc_autoreleasePoolPush();
  v6 = 10;
  while ([(_bmFMResultSet *)self next])
  {
    v7 = 0;
    v4[2](v4, self, &v7);
    if (v7 == 1)
    {
      break;
    }

    if (!--v6)
    {
      objc_autoreleasePoolPop(v5);
      goto LABEL_2;
    }
  }

  objc_autoreleasePoolPop(v5);
}

- (int)columnCount
{
  v2 = [(_bmFMStatement *)self->_statement statement];

  return sqlite3_column_count(v2);
}

- (void)kvcMagic:(id)a3
{
  v10 = a3;
  v4 = sqlite3_column_count([(_bmFMStatement *)self->_statement statement]);
  if (v4 >= 1)
  {
    v5 = v4;
    v6 = 0;
    do
    {
      v7 = sqlite3_column_text([(_bmFMStatement *)self->_statement statement], v6);
      if (v7)
      {
        v8 = [NSString stringWithUTF8String:v7];
        v9 = [NSString stringWithUTF8String:sqlite3_column_name([(_bmFMStatement *)self->_statement statement], v6)];
        [v10 setValue:v8 forKey:v9];
      }

      else
      {
        [(_bmFMResultSet *)self _tryLogSqliteColumnError:v6];
      }

      v6 = (v6 + 1);
    }

    while (v5 != v6);
  }
}

- (id)resultDict
{
  v3 = sqlite3_data_count([(_bmFMStatement *)self->_statement statement]);
  if (v3)
  {
    v4 = [NSMutableDictionary dictionaryWithCapacity:v3];
    v5 = [(_bmFMResultSet *)self columnNameToIndexMap];
    v6 = [v5 keyEnumerator];

    v7 = [v6 nextObject];
    if (v7)
    {
      v8 = v7;
      do
      {
        v9 = [(_bmFMResultSet *)self objectForColumnName:v8];
        [v4 setObject:v9 forKey:v8];

        v10 = [v6 nextObject];

        v8 = v10;
      }

      while (v10);
    }

    v11 = [v4 copy];
  }

  else
  {
    NSLog(@"Warning: There seem to be no columns in this set.");
    v11 = 0;
  }

  return v11;
}

- (NSDictionary)resultDictionary
{
  v3 = sqlite3_data_count([(_bmFMStatement *)self->_statement statement]);
  if (v3)
  {
    v4 = [NSMutableDictionary dictionaryWithCapacity:v3];
    v5 = sqlite3_column_count([(_bmFMStatement *)self->_statement statement]);
    if (v5 >= 1)
    {
      v6 = v5;
      v7 = 0;
      do
      {
        v8 = [NSString stringWithUTF8String:sqlite3_column_name([(_bmFMStatement *)self->_statement statement], v7)];
        v9 = [(_bmFMResultSet *)self objectForColumnIndex:v7];
        [v4 setObject:v9 forKey:v8];

        v7 = (v7 + 1);
      }

      while (v6 != v7);
    }
  }

  else
  {
    NSLog(@"Warning: There seem to be no columns in this set.");
    v4 = 0;
  }

  return v4;
}

- (int)internalStepWithError:(id *)a3
{
  v5 = sqlite3_step([(_bmFMStatement *)self->_statement statement]);
  v6 = v5;
  if ((v5 - 5) <= 1)
  {
    v7 = [(_bmFMDatabase *)self->_parentDB databasePath];
    NSLog(@"%s:%d Database busy (%@)", "[_bmFMResultSet internalStepWithError:]", 189, v7);

    NSLog(@"Database busy", v12, v13);
LABEL_3:
    if (!a3)
    {
      goto LABEL_8;
    }

    parentDB = self->_parentDB;
    goto LABEL_5;
  }

  if ((v5 & 0xFFFFFFFE) == 0x64)
  {
LABEL_7:
    if (v6 == 100)
    {
      return v6;
    }

    goto LABEL_8;
  }

  v10 = sqlite3_errmsg([(_bmFMDatabase *)self->_parentDB sqliteHandle]);
  if (v6 != 21)
  {
    if (v6 == 1)
    {
      NSLog(@"Error calling sqlite3_step (%d: %s) rs", 1, v10);
      goto LABEL_3;
    }

    NSLog(@"Unknown error calling sqlite3_step (%d: %s) rs", v6, v10);
    if (a3)
    {
      *a3 = [(_bmFMDatabase *)self->_parentDB lastError];
    }

    goto LABEL_7;
  }

  NSLog(@"Error calling sqlite3_step (%d: %s) rs", 21, v10);
  if (a3)
  {
    parentDB = self->_parentDB;
    if (parentDB)
    {
LABEL_5:
      *a3 = [(_bmFMDatabase *)parentDB lastError];
      goto LABEL_8;
    }

    v11 = [NSDictionary dictionaryWithObject:@"parentDB does not exist" forKey:NSLocalizedDescriptionKey];
    *a3 = [NSError errorWithDomain:@"_bmFMDatabase" code:21 userInfo:v11];
  }

LABEL_8:
  if (self->_shouldAutoClose)
  {
    [(_bmFMResultSet *)self close];
  }

  return v6;
}

- (int)columnIndexForName:(id)a3
{
  v4 = [a3 lowercaseString];
  v5 = [(_bmFMResultSet *)self columnNameToIndexMap];
  v6 = [v5 objectForKey:v4];

  if (v6)
  {
    v7 = [v6 intValue];
  }

  else
  {
    NSLog(@"Warning: I could not find the column named '%@'.", v4);
    v7 = -1;
  }

  return v7;
}

- (int)intForColumn:(id)a3
{
  v4 = [(_bmFMResultSet *)self columnIndexForName:a3];

  return [(_bmFMResultSet *)self intForColumnIndex:v4];
}

- (int)intForColumnIndex:(int)a3
{
  v4 = [(_bmFMStatement *)self->_statement statement];

  return sqlite3_column_int(v4, a3);
}

- (int64_t)longForColumn:(id)a3
{
  v4 = [(_bmFMResultSet *)self columnIndexForName:a3];

  return [(_bmFMResultSet *)self longForColumnIndex:v4];
}

- (int64_t)longForColumnIndex:(int)a3
{
  v4 = [(_bmFMStatement *)self->_statement statement];

  return sqlite3_column_int64(v4, a3);
}

- (int64_t)longLongIntForColumn:(id)a3
{
  v4 = [(_bmFMResultSet *)self columnIndexForName:a3];

  return [(_bmFMResultSet *)self longLongIntForColumnIndex:v4];
}

- (int64_t)longLongIntForColumnIndex:(int)a3
{
  v4 = [(_bmFMStatement *)self->_statement statement];

  return sqlite3_column_int64(v4, a3);
}

- (unint64_t)unsignedLongLongIntForColumn:(id)a3
{
  v4 = [(_bmFMResultSet *)self columnIndexForName:a3];

  return [(_bmFMResultSet *)self unsignedLongLongIntForColumnIndex:v4];
}

- (BOOL)BOOLForColumn:(id)a3
{
  v4 = [(_bmFMResultSet *)self columnIndexForName:a3];

  return [(_bmFMResultSet *)self BOOLForColumnIndex:v4];
}

- (double)doubleForColumn:(id)a3
{
  v4 = [(_bmFMResultSet *)self columnIndexForName:a3];

  [(_bmFMResultSet *)self doubleForColumnIndex:v4];
  return result;
}

- (double)doubleForColumnIndex:(int)a3
{
  v4 = [(_bmFMStatement *)self->_statement statement];

  return sqlite3_column_double(v4, a3);
}

- (id)stringForColumn:(id)a3
{
  v4 = [(_bmFMResultSet *)self columnIndexForName:a3];

  return [(_bmFMResultSet *)self stringForColumnIndex:v4];
}

- (id)dateForColumn:(id)a3
{
  v4 = [(_bmFMResultSet *)self columnIndexForName:a3];

  return [(_bmFMResultSet *)self dateForColumnIndex:v4];
}

- (id)dataForColumn:(id)a3
{
  v4 = [(_bmFMResultSet *)self columnIndexForName:a3];

  return [(_bmFMResultSet *)self dataForColumnIndex:v4];
}

- (id)dataNoCopyForColumn:(id)a3
{
  v4 = [(_bmFMResultSet *)self columnIndexForName:a3];

  return [(_bmFMResultSet *)self dataNoCopyForColumnIndex:v4];
}

- (BOOL)columnIsNull:(id)a3
{
  v4 = [(_bmFMResultSet *)self columnIndexForName:a3];

  return [(_bmFMResultSet *)self columnIndexIsNull:v4];
}

- (const)UTF8StringForColumn:(id)a3
{
  v4 = [(_bmFMResultSet *)self columnIndexForName:a3];

  return [(_bmFMResultSet *)self UTF8StringForColumnIndex:v4];
}

- (id)objectForColumn:(id)a3
{
  v4 = [(_bmFMResultSet *)self columnIndexForName:a3];

  return [(_bmFMResultSet *)self objectForColumnIndex:v4];
}

- (id)columnNameForIndex:(int)a3
{
  v3 = sqlite3_column_name([(_bmFMStatement *)self->_statement statement], a3);

  return [NSString stringWithUTF8String:v3];
}

- (BOOL)bindWithArray:(id)a3 orDictionary:(id)a4 orVAList:(char *)a5
{
  statement = self->_statement;
  v9 = a4;
  v10 = a3;
  [(_bmFMStatement *)statement reset];
  LOBYTE(a5) = [(_bmFMDatabase *)self->_parentDB bindStatement:[(_bmFMStatement *)self->_statement statement] WithArgumentsInArray:v10 orDictionary:v9 orVAList:a5];

  return a5;
}

- (void)_tryLogSqliteColumnError:(int)a3
{
  p_parentDB = &self->_parentDB;
  if ([(_bmFMDatabase *)self->_parentDB lastErrorCode])
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000454C8(p_parentDB, self, a3);
    }
  }
}

@end