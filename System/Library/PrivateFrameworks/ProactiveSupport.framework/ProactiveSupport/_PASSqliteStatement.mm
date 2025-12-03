@interface _PASSqliteStatement
- (BOOL)isNullForColumnAlias:(const char *)alias;
- (BOOL)isNullForColumnName:(const char *)name table:(const char *)table;
- (_PASSqliteStatement)initWithStatementPointer:(sqlite3_stmt *)pointer columnMapping:(id)mapping;
- (double)getDoubleForColumnAlias:(const char *)alias;
- (double)getDoubleForColumnName:(const char *)name table:(const char *)table;
- (id)description;
- (id)doubleAsNonnullNSNumberForColumnAlias:(const char *)alias;
- (id)doubleAsNonnullNSNumberForColumnName:(const char *)name table:(const char *)table;
- (id)getDoubleAsNSNumberForColumnAlias:(const char *)alias;
- (id)getDoubleAsNSNumberForColumnName:(const char *)name table:(const char *)table;
- (id)getInt64AsNSNumberForColumnAlias:(const char *)alias;
- (id)getInt64AsNSNumberForColumnName:(const char *)name table:(const char *)table;
- (id)getNSDataForColumnAlias:(const char *)alias;
- (id)getNSDataForColumnName:(const char *)name table:(const char *)table;
- (id)getNSNumberForColumn:(int)column;
- (id)getNSNumberForColumnAlias:(const char *)alias;
- (id)getNSNumberForColumnName:(const char *)name table:(const char *)table;
- (id)getNSStringForColumnAlias:(const char *)alias;
- (id)getNSStringForColumnName:(const char *)name table:(const char *)table;
- (id)int64AsNonnullNSNumberForColumnAlias:(const char *)alias;
- (id)int64AsNonnullNSNumberForColumnName:(const char *)name table:(const char *)table;
- (id)nonnullNSDataForColumnAlias:(const char *)alias;
- (id)nonnullNSDataForColumnName:(const char *)name table:(const char *)table;
- (id)nonnullNSNumberForColumnAlias:(const char *)alias;
- (id)nonnullNSNumberForColumnName:(const char *)name table:(const char *)table;
- (id)nonnullNSStringForColumnAlias:(const char *)alias;
- (id)nonnullNSStringForColumnName:(const char *)name table:(const char *)table;
- (int)bindNamedParam:(const char *)param toBlock:(id)block;
- (int)bindNamedParam:(const char *)param toDouble:(double)double;
- (int)bindNamedParam:(const char *)param toDoubleAsNSNumber:(id)number;
- (int)bindNamedParam:(const char *)param toDoubleAsNonnullNSNumber:(id)number;
- (int)bindNamedParam:(const char *)param toInt64:(int64_t)int64;
- (int)bindNamedParam:(const char *)param toInt64AsNSNumber:(id)number;
- (int)bindNamedParam:(const char *)param toInt64AsNonnullNSNumber:(id)number;
- (int)bindNamedParam:(const char *)param toInteger:(int64_t)integer;
- (int)bindNamedParam:(const char *)param toNSArray:(id)array;
- (int)bindNamedParam:(const char *)param toNSData:(id)data;
- (int)bindNamedParam:(const char *)param toNSDictionary:(id)dictionary;
- (int)bindNamedParam:(const char *)param toNSIndexSet:(id)set;
- (int)bindNamedParam:(const char *)param toNSNumber:(id)number;
- (int)bindNamedParam:(const char *)param toNSOrderedSet:(id)set;
- (int)bindNamedParam:(const char *)param toNSSet:(id)set;
- (int)bindNamedParam:(const char *)param toNSString:(id)string;
- (int)bindNamedParam:(const char *)param toNonnullNSData:(id)data;
- (int)bindNamedParam:(const char *)param toNonnullNSNumber:(id)number;
- (int)bindNamedParam:(const char *)param toNonnullNSString:(id)string;
- (int)bindNamedParamToNull:(const char *)null;
- (int64_t)getInt64ForColumnAlias:(const char *)alias;
- (int64_t)getInt64ForColumnName:(const char *)name table:(const char *)table;
- (int64_t)getIntegerForColumnAlias:(const char *)alias;
- (int64_t)getIntegerForColumnName:(const char *)name table:(const char *)table;
- (void)accessBlobBytesForColumnAlias:(const char *)alias usingBlock:(id)block;
- (void)accessBlobBytesForColumnName:(const char *)name table:(const char *)table usingBlock:(id)block;
@end

@implementation _PASSqliteStatement

- (BOOL)isNullForColumnAlias:(const char *)alias
{
  v4 = [(_PASSQLColumnMapping *)self->_columnMapping indexForColumnAlias:alias];

  return [(_PASSqliteStatement *)self isColumnNull:v4];
}

- (id)nonnullNSNumberForColumnAlias:(const char *)alias
{
  v4 = [(_PASSQLColumnMapping *)self->_columnMapping indexForColumnAlias:alias];

  return [(_PASSqliteStatement *)self nonnullNSNumberForColumn:v4];
}

- (id)getNSNumberForColumnAlias:(const char *)alias
{
  v4 = [(_PASSQLColumnMapping *)self->_columnMapping indexForColumnAlias:alias];

  return [(_PASSqliteStatement *)self getNSNumberForColumn:v4];
}

- (id)doubleAsNonnullNSNumberForColumnAlias:(const char *)alias
{
  v4 = [(_PASSQLColumnMapping *)self->_columnMapping indexForColumnAlias:alias];

  return [(_PASSqliteStatement *)self doubleAsNonnullNSNumberForColumn:v4];
}

- (id)getDoubleAsNSNumberForColumnAlias:(const char *)alias
{
  v4 = [(_PASSQLColumnMapping *)self->_columnMapping indexForColumnAlias:alias];

  return [(_PASSqliteStatement *)self getDoubleAsNSNumberForColumn:v4];
}

- (double)getDoubleForColumnAlias:(const char *)alias
{
  v4 = [(_PASSQLColumnMapping *)self->_columnMapping indexForColumnAlias:alias];

  [(_PASSqliteStatement *)self getDoubleForColumn:v4];
  return result;
}

- (id)int64AsNonnullNSNumberForColumnAlias:(const char *)alias
{
  v4 = [(_PASSQLColumnMapping *)self->_columnMapping indexForColumnAlias:alias];

  return [(_PASSqliteStatement *)self int64AsNonnullNSNumberForColumn:v4];
}

- (id)getInt64AsNSNumberForColumnAlias:(const char *)alias
{
  v4 = [(_PASSQLColumnMapping *)self->_columnMapping indexForColumnAlias:alias];

  return [(_PASSqliteStatement *)self getInt64AsNSNumberForColumn:v4];
}

- (int64_t)getInt64ForColumnAlias:(const char *)alias
{
  v4 = [(_PASSQLColumnMapping *)self->_columnMapping indexForColumnAlias:alias];

  return [(_PASSqliteStatement *)self getInt64ForColumn:v4];
}

- (int64_t)getIntegerForColumnAlias:(const char *)alias
{
  v4 = [(_PASSQLColumnMapping *)self->_columnMapping indexForColumnAlias:alias];

  return [(_PASSqliteStatement *)self getIntegerForColumn:v4];
}

- (void)accessBlobBytesForColumnAlias:(const char *)alias usingBlock:(id)block
{
  columnMapping = self->_columnMapping;
  blockCopy = block;
  [(_PASSqliteStatement *)self accessBlobBytesForColumn:[(_PASSQLColumnMapping *)columnMapping indexForColumnAlias:alias] usingBlock:blockCopy];
}

- (id)nonnullNSDataForColumnAlias:(const char *)alias
{
  v4 = [(_PASSQLColumnMapping *)self->_columnMapping indexForColumnAlias:alias];

  return [(_PASSqliteStatement *)self nonnullNSDataForColumn:v4];
}

- (id)getNSDataForColumnAlias:(const char *)alias
{
  v4 = [(_PASSQLColumnMapping *)self->_columnMapping indexForColumnAlias:alias];

  return [(_PASSqliteStatement *)self getNSDataForColumn:v4];
}

- (id)nonnullNSStringForColumnAlias:(const char *)alias
{
  v4 = [(_PASSQLColumnMapping *)self->_columnMapping indexForColumnAlias:alias];

  return [(_PASSqliteStatement *)self nonnullNSStringForColumn:v4];
}

- (id)getNSStringForColumnAlias:(const char *)alias
{
  v4 = [(_PASSQLColumnMapping *)self->_columnMapping indexForColumnAlias:alias];

  return [(_PASSqliteStatement *)self getNSStringForColumn:v4];
}

- (BOOL)isNullForColumnName:(const char *)name table:(const char *)table
{
  v5 = [(_PASSQLColumnMapping *)self->_columnMapping indexForColumnName:name table:table];

  return [(_PASSqliteStatement *)self isColumnNull:v5];
}

- (id)nonnullNSNumberForColumnName:(const char *)name table:(const char *)table
{
  v5 = [(_PASSQLColumnMapping *)self->_columnMapping indexForColumnName:name table:table];

  return [(_PASSqliteStatement *)self nonnullNSNumberForColumn:v5];
}

- (id)getNSNumberForColumnName:(const char *)name table:(const char *)table
{
  v5 = [(_PASSQLColumnMapping *)self->_columnMapping indexForColumnName:name table:table];

  return [(_PASSqliteStatement *)self getNSNumberForColumn:v5];
}

- (id)doubleAsNonnullNSNumberForColumnName:(const char *)name table:(const char *)table
{
  v5 = [(_PASSQLColumnMapping *)self->_columnMapping indexForColumnName:name table:table];

  return [(_PASSqliteStatement *)self doubleAsNonnullNSNumberForColumn:v5];
}

- (id)getDoubleAsNSNumberForColumnName:(const char *)name table:(const char *)table
{
  v5 = [(_PASSQLColumnMapping *)self->_columnMapping indexForColumnName:name table:table];

  return [(_PASSqliteStatement *)self getDoubleAsNSNumberForColumn:v5];
}

- (double)getDoubleForColumnName:(const char *)name table:(const char *)table
{
  v5 = [(_PASSQLColumnMapping *)self->_columnMapping indexForColumnName:name table:table];

  [(_PASSqliteStatement *)self getDoubleForColumn:v5];
  return result;
}

- (id)int64AsNonnullNSNumberForColumnName:(const char *)name table:(const char *)table
{
  v5 = [(_PASSQLColumnMapping *)self->_columnMapping indexForColumnName:name table:table];

  return [(_PASSqliteStatement *)self int64AsNonnullNSNumberForColumn:v5];
}

- (id)getInt64AsNSNumberForColumnName:(const char *)name table:(const char *)table
{
  v5 = [(_PASSQLColumnMapping *)self->_columnMapping indexForColumnName:name table:table];

  return [(_PASSqliteStatement *)self getInt64AsNSNumberForColumn:v5];
}

- (int64_t)getInt64ForColumnName:(const char *)name table:(const char *)table
{
  v5 = [(_PASSQLColumnMapping *)self->_columnMapping indexForColumnName:name table:table];

  return [(_PASSqliteStatement *)self getInt64ForColumn:v5];
}

- (int64_t)getIntegerForColumnName:(const char *)name table:(const char *)table
{
  v5 = [(_PASSQLColumnMapping *)self->_columnMapping indexForColumnName:name table:table];

  return [(_PASSqliteStatement *)self getIntegerForColumn:v5];
}

- (void)accessBlobBytesForColumnName:(const char *)name table:(const char *)table usingBlock:(id)block
{
  columnMapping = self->_columnMapping;
  blockCopy = block;
  [(_PASSqliteStatement *)self accessBlobBytesForColumn:[(_PASSQLColumnMapping *)columnMapping indexForColumnName:name table:table] usingBlock:blockCopy];
}

- (id)nonnullNSDataForColumnName:(const char *)name table:(const char *)table
{
  v5 = [(_PASSQLColumnMapping *)self->_columnMapping indexForColumnName:name table:table];

  return [(_PASSqliteStatement *)self nonnullNSDataForColumn:v5];
}

- (id)getNSDataForColumnName:(const char *)name table:(const char *)table
{
  v5 = [(_PASSQLColumnMapping *)self->_columnMapping indexForColumnName:name table:table];

  return [(_PASSqliteStatement *)self getNSDataForColumn:v5];
}

- (id)nonnullNSStringForColumnName:(const char *)name table:(const char *)table
{
  v5 = [(_PASSQLColumnMapping *)self->_columnMapping indexForColumnName:name table:table];

  return [(_PASSqliteStatement *)self nonnullNSStringForColumn:v5];
}

- (id)getNSStringForColumnName:(const char *)name table:(const char *)table
{
  v5 = [(_PASSQLColumnMapping *)self->_columnMapping indexForColumnName:name table:table];

  return [(_PASSqliteStatement *)self getNSStringForColumn:v5];
}

- (id)getNSNumberForColumn:(int)column
{
  v5 = sqlite3_column_type(self->_stmt, column);
  if (v5 == 5)
  {
    v6 = 0;
  }

  else
  {
    if (v5 == 1)
    {
      [MEMORY[0x1E696AD98] numberWithLongLong:{sqlite3_column_int64(self->_stmt, column)}];
    }

    else
    {
      [MEMORY[0x1E696AD98] numberWithDouble:{sqlite3_column_double(self->_stmt, column)}];
    }
    v6 = ;
  }

  return v6;
}

- (int)bindNamedParam:(const char *)param toBlock:(id)block
{
  stmt = self->_stmt;
  blockCopy = block;
  LODWORD(param) = [(_PASSqliteStatement *)self bindParam:_indexForBindParam(stmt toBlock:param), blockCopy];

  return param;
}

- (int)bindNamedParam:(const char *)param toNSDictionary:(id)dictionary
{
  stmt = self->_stmt;
  dictionaryCopy = dictionary;
  LODWORD(param) = [(_PASSqliteStatement *)self bindParam:_indexForBindParam(stmt toNSDictionary:param), dictionaryCopy];

  return param;
}

- (int)bindNamedParam:(const char *)param toNSOrderedSet:(id)set
{
  stmt = self->_stmt;
  setCopy = set;
  LODWORD(param) = [(_PASSqliteStatement *)self bindParam:_indexForBindParam(stmt toNSOrderedSet:param), setCopy];

  return param;
}

- (int)bindNamedParam:(const char *)param toNSSet:(id)set
{
  stmt = self->_stmt;
  setCopy = set;
  LODWORD(param) = [(_PASSqliteStatement *)self bindParam:_indexForBindParam(stmt toNSSet:param), setCopy];

  return param;
}

- (int)bindNamedParam:(const char *)param toNSArray:(id)array
{
  stmt = self->_stmt;
  arrayCopy = array;
  LODWORD(param) = [(_PASSqliteStatement *)self bindParam:_indexForBindParam(stmt toNSArray:param), arrayCopy];

  return param;
}

- (int)bindNamedParam:(const char *)param toNSIndexSet:(id)set
{
  stmt = self->_stmt;
  setCopy = set;
  LODWORD(param) = [(_PASSqliteStatement *)self bindParam:_indexForBindParam(stmt toNSIndexSet:param), setCopy];

  return param;
}

- (int)bindNamedParam:(const char *)param toNonnullNSNumber:(id)number
{
  stmt = self->_stmt;
  numberCopy = number;
  LODWORD(param) = [(_PASSqliteStatement *)self bindParam:_indexForBindParam(stmt toNonnullNSNumber:param), numberCopy];

  return param;
}

- (int)bindNamedParam:(const char *)param toNSNumber:(id)number
{
  if (number)
  {
    return [(_PASSqliteStatement *)self bindNamedParam:param toNonnullNSNumber:?];
  }

  else
  {
    return [(_PASSqliteStatement *)self bindNamedParamToNull:param];
  }
}

- (int)bindNamedParam:(const char *)param toDoubleAsNonnullNSNumber:(id)number
{
  stmt = self->_stmt;
  numberCopy = number;
  LODWORD(param) = [(_PASSqliteStatement *)self bindParam:_indexForBindParam(stmt toDoubleAsNonnullNSNumber:param), numberCopy];

  return param;
}

- (int)bindNamedParam:(const char *)param toDoubleAsNSNumber:(id)number
{
  if (number)
  {
    return [(_PASSqliteStatement *)self bindNamedParam:param toDoubleAsNonnullNSNumber:?];
  }

  else
  {
    return [(_PASSqliteStatement *)self bindNamedParamToNull:param];
  }
}

- (int)bindNamedParam:(const char *)param toDouble:(double)double
{
  stmt = self->_stmt;
  v6 = _indexForBindParam(stmt, param);

  return sqlite3_bind_double(stmt, v6, double);
}

- (int)bindNamedParam:(const char *)param toInt64AsNonnullNSNumber:(id)number
{
  stmt = self->_stmt;
  numberCopy = number;
  LODWORD(param) = [(_PASSqliteStatement *)self bindParam:_indexForBindParam(stmt toInt64AsNonnullNSNumber:param), numberCopy];

  return param;
}

- (int)bindNamedParam:(const char *)param toInt64AsNSNumber:(id)number
{
  if (number)
  {
    return [(_PASSqliteStatement *)self bindNamedParam:param toInt64AsNonnullNSNumber:?];
  }

  else
  {
    return [(_PASSqliteStatement *)self bindNamedParamToNull:param];
  }
}

- (int)bindNamedParam:(const char *)param toInt64:(int64_t)int64
{
  stmt = self->_stmt;
  v6 = _indexForBindParam(stmt, param);

  return sqlite3_bind_int64(stmt, v6, int64);
}

- (int)bindNamedParam:(const char *)param toInteger:(int64_t)integer
{
  stmt = self->_stmt;
  v6 = _indexForBindParam(stmt, param);

  return sqlite3_bind_int64(stmt, v6, integer);
}

- (int)bindNamedParam:(const char *)param toNonnullNSData:(id)data
{
  stmt = self->_stmt;
  dataCopy = data;
  LODWORD(param) = [(_PASSqliteStatement *)self bindParam:_indexForBindParam(stmt toNonnullNSData:param), dataCopy];

  return param;
}

- (int)bindNamedParam:(const char *)param toNSData:(id)data
{
  stmt = self->_stmt;
  dataCopy = data;
  LODWORD(param) = [(_PASSqliteStatement *)self bindParam:_indexForBindParam(stmt toNSData:param), dataCopy];

  return param;
}

- (int)bindNamedParam:(const char *)param toNonnullNSString:(id)string
{
  stmt = self->_stmt;
  stringCopy = string;
  LODWORD(param) = [(_PASSqliteStatement *)self bindParam:_indexForBindParam(stmt toNonnullNSString:param), stringCopy];

  return param;
}

- (int)bindNamedParam:(const char *)param toNSString:(id)string
{
  stmt = self->_stmt;
  stringCopy = string;
  LODWORD(param) = [(_PASSqliteStatement *)self bindParam:_indexForBindParam(stmt toNSString:param), stringCopy];

  return param;
}

- (int)bindNamedParamToNull:(const char *)null
{
  stmt = self->_stmt;
  v4 = _indexForBindParam(stmt, null);

  return sqlite3_bind_null(stmt, v4);
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithCString:sqlite3_sql(self->_stmt) encoding:4];
  v5 = [v3 initWithFormat:@"<stmt: '%@'>", v4];

  return v5;
}

- (_PASSqliteStatement)initWithStatementPointer:(sqlite3_stmt *)pointer columnMapping:(id)mapping
{
  mappingCopy = mapping;
  if (!pointer)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_PASSqliteStatement.m" lineNumber:222 description:{@"Invalid parameter not satisfying: %@", @"stmt"}];
  }

  v14.receiver = self;
  v14.super_class = _PASSqliteStatement;
  v8 = [(_PASSqliteStatement *)&v14 init];
  v9 = v8;
  if (v8)
  {
    v8->_stmt = pointer;
    if (mappingCopy)
    {
      v10 = mappingCopy;
    }

    else
    {
      v10 = [[_PASSQLColumnMapping alloc] initWithStatementPtr:pointer];
    }

    columnMapping = v9->_columnMapping;
    v9->_columnMapping = v10;
  }

  return v9;
}

@end