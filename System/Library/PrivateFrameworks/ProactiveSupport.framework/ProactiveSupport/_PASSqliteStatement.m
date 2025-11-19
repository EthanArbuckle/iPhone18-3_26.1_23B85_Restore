@interface _PASSqliteStatement
- (BOOL)isNullForColumnAlias:(const char *)a3;
- (BOOL)isNullForColumnName:(const char *)a3 table:(const char *)a4;
- (_PASSqliteStatement)initWithStatementPointer:(sqlite3_stmt *)a3 columnMapping:(id)a4;
- (double)getDoubleForColumnAlias:(const char *)a3;
- (double)getDoubleForColumnName:(const char *)a3 table:(const char *)a4;
- (id)description;
- (id)doubleAsNonnullNSNumberForColumnAlias:(const char *)a3;
- (id)doubleAsNonnullNSNumberForColumnName:(const char *)a3 table:(const char *)a4;
- (id)getDoubleAsNSNumberForColumnAlias:(const char *)a3;
- (id)getDoubleAsNSNumberForColumnName:(const char *)a3 table:(const char *)a4;
- (id)getInt64AsNSNumberForColumnAlias:(const char *)a3;
- (id)getInt64AsNSNumberForColumnName:(const char *)a3 table:(const char *)a4;
- (id)getNSDataForColumnAlias:(const char *)a3;
- (id)getNSDataForColumnName:(const char *)a3 table:(const char *)a4;
- (id)getNSNumberForColumn:(int)a3;
- (id)getNSNumberForColumnAlias:(const char *)a3;
- (id)getNSNumberForColumnName:(const char *)a3 table:(const char *)a4;
- (id)getNSStringForColumnAlias:(const char *)a3;
- (id)getNSStringForColumnName:(const char *)a3 table:(const char *)a4;
- (id)int64AsNonnullNSNumberForColumnAlias:(const char *)a3;
- (id)int64AsNonnullNSNumberForColumnName:(const char *)a3 table:(const char *)a4;
- (id)nonnullNSDataForColumnAlias:(const char *)a3;
- (id)nonnullNSDataForColumnName:(const char *)a3 table:(const char *)a4;
- (id)nonnullNSNumberForColumnAlias:(const char *)a3;
- (id)nonnullNSNumberForColumnName:(const char *)a3 table:(const char *)a4;
- (id)nonnullNSStringForColumnAlias:(const char *)a3;
- (id)nonnullNSStringForColumnName:(const char *)a3 table:(const char *)a4;
- (int)bindNamedParam:(const char *)a3 toBlock:(id)a4;
- (int)bindNamedParam:(const char *)a3 toDouble:(double)a4;
- (int)bindNamedParam:(const char *)a3 toDoubleAsNSNumber:(id)a4;
- (int)bindNamedParam:(const char *)a3 toDoubleAsNonnullNSNumber:(id)a4;
- (int)bindNamedParam:(const char *)a3 toInt64:(int64_t)a4;
- (int)bindNamedParam:(const char *)a3 toInt64AsNSNumber:(id)a4;
- (int)bindNamedParam:(const char *)a3 toInt64AsNonnullNSNumber:(id)a4;
- (int)bindNamedParam:(const char *)a3 toInteger:(int64_t)a4;
- (int)bindNamedParam:(const char *)a3 toNSArray:(id)a4;
- (int)bindNamedParam:(const char *)a3 toNSData:(id)a4;
- (int)bindNamedParam:(const char *)a3 toNSDictionary:(id)a4;
- (int)bindNamedParam:(const char *)a3 toNSIndexSet:(id)a4;
- (int)bindNamedParam:(const char *)a3 toNSNumber:(id)a4;
- (int)bindNamedParam:(const char *)a3 toNSOrderedSet:(id)a4;
- (int)bindNamedParam:(const char *)a3 toNSSet:(id)a4;
- (int)bindNamedParam:(const char *)a3 toNSString:(id)a4;
- (int)bindNamedParam:(const char *)a3 toNonnullNSData:(id)a4;
- (int)bindNamedParam:(const char *)a3 toNonnullNSNumber:(id)a4;
- (int)bindNamedParam:(const char *)a3 toNonnullNSString:(id)a4;
- (int)bindNamedParamToNull:(const char *)a3;
- (int64_t)getInt64ForColumnAlias:(const char *)a3;
- (int64_t)getInt64ForColumnName:(const char *)a3 table:(const char *)a4;
- (int64_t)getIntegerForColumnAlias:(const char *)a3;
- (int64_t)getIntegerForColumnName:(const char *)a3 table:(const char *)a4;
- (void)accessBlobBytesForColumnAlias:(const char *)a3 usingBlock:(id)a4;
- (void)accessBlobBytesForColumnName:(const char *)a3 table:(const char *)a4 usingBlock:(id)a5;
@end

@implementation _PASSqliteStatement

- (BOOL)isNullForColumnAlias:(const char *)a3
{
  v4 = [(_PASSQLColumnMapping *)self->_columnMapping indexForColumnAlias:a3];

  return [(_PASSqliteStatement *)self isColumnNull:v4];
}

- (id)nonnullNSNumberForColumnAlias:(const char *)a3
{
  v4 = [(_PASSQLColumnMapping *)self->_columnMapping indexForColumnAlias:a3];

  return [(_PASSqliteStatement *)self nonnullNSNumberForColumn:v4];
}

- (id)getNSNumberForColumnAlias:(const char *)a3
{
  v4 = [(_PASSQLColumnMapping *)self->_columnMapping indexForColumnAlias:a3];

  return [(_PASSqliteStatement *)self getNSNumberForColumn:v4];
}

- (id)doubleAsNonnullNSNumberForColumnAlias:(const char *)a3
{
  v4 = [(_PASSQLColumnMapping *)self->_columnMapping indexForColumnAlias:a3];

  return [(_PASSqliteStatement *)self doubleAsNonnullNSNumberForColumn:v4];
}

- (id)getDoubleAsNSNumberForColumnAlias:(const char *)a3
{
  v4 = [(_PASSQLColumnMapping *)self->_columnMapping indexForColumnAlias:a3];

  return [(_PASSqliteStatement *)self getDoubleAsNSNumberForColumn:v4];
}

- (double)getDoubleForColumnAlias:(const char *)a3
{
  v4 = [(_PASSQLColumnMapping *)self->_columnMapping indexForColumnAlias:a3];

  [(_PASSqliteStatement *)self getDoubleForColumn:v4];
  return result;
}

- (id)int64AsNonnullNSNumberForColumnAlias:(const char *)a3
{
  v4 = [(_PASSQLColumnMapping *)self->_columnMapping indexForColumnAlias:a3];

  return [(_PASSqliteStatement *)self int64AsNonnullNSNumberForColumn:v4];
}

- (id)getInt64AsNSNumberForColumnAlias:(const char *)a3
{
  v4 = [(_PASSQLColumnMapping *)self->_columnMapping indexForColumnAlias:a3];

  return [(_PASSqliteStatement *)self getInt64AsNSNumberForColumn:v4];
}

- (int64_t)getInt64ForColumnAlias:(const char *)a3
{
  v4 = [(_PASSQLColumnMapping *)self->_columnMapping indexForColumnAlias:a3];

  return [(_PASSqliteStatement *)self getInt64ForColumn:v4];
}

- (int64_t)getIntegerForColumnAlias:(const char *)a3
{
  v4 = [(_PASSQLColumnMapping *)self->_columnMapping indexForColumnAlias:a3];

  return [(_PASSqliteStatement *)self getIntegerForColumn:v4];
}

- (void)accessBlobBytesForColumnAlias:(const char *)a3 usingBlock:(id)a4
{
  columnMapping = self->_columnMapping;
  v7 = a4;
  [(_PASSqliteStatement *)self accessBlobBytesForColumn:[(_PASSQLColumnMapping *)columnMapping indexForColumnAlias:a3] usingBlock:v7];
}

- (id)nonnullNSDataForColumnAlias:(const char *)a3
{
  v4 = [(_PASSQLColumnMapping *)self->_columnMapping indexForColumnAlias:a3];

  return [(_PASSqliteStatement *)self nonnullNSDataForColumn:v4];
}

- (id)getNSDataForColumnAlias:(const char *)a3
{
  v4 = [(_PASSQLColumnMapping *)self->_columnMapping indexForColumnAlias:a3];

  return [(_PASSqliteStatement *)self getNSDataForColumn:v4];
}

- (id)nonnullNSStringForColumnAlias:(const char *)a3
{
  v4 = [(_PASSQLColumnMapping *)self->_columnMapping indexForColumnAlias:a3];

  return [(_PASSqliteStatement *)self nonnullNSStringForColumn:v4];
}

- (id)getNSStringForColumnAlias:(const char *)a3
{
  v4 = [(_PASSQLColumnMapping *)self->_columnMapping indexForColumnAlias:a3];

  return [(_PASSqliteStatement *)self getNSStringForColumn:v4];
}

- (BOOL)isNullForColumnName:(const char *)a3 table:(const char *)a4
{
  v5 = [(_PASSQLColumnMapping *)self->_columnMapping indexForColumnName:a3 table:a4];

  return [(_PASSqliteStatement *)self isColumnNull:v5];
}

- (id)nonnullNSNumberForColumnName:(const char *)a3 table:(const char *)a4
{
  v5 = [(_PASSQLColumnMapping *)self->_columnMapping indexForColumnName:a3 table:a4];

  return [(_PASSqliteStatement *)self nonnullNSNumberForColumn:v5];
}

- (id)getNSNumberForColumnName:(const char *)a3 table:(const char *)a4
{
  v5 = [(_PASSQLColumnMapping *)self->_columnMapping indexForColumnName:a3 table:a4];

  return [(_PASSqliteStatement *)self getNSNumberForColumn:v5];
}

- (id)doubleAsNonnullNSNumberForColumnName:(const char *)a3 table:(const char *)a4
{
  v5 = [(_PASSQLColumnMapping *)self->_columnMapping indexForColumnName:a3 table:a4];

  return [(_PASSqliteStatement *)self doubleAsNonnullNSNumberForColumn:v5];
}

- (id)getDoubleAsNSNumberForColumnName:(const char *)a3 table:(const char *)a4
{
  v5 = [(_PASSQLColumnMapping *)self->_columnMapping indexForColumnName:a3 table:a4];

  return [(_PASSqliteStatement *)self getDoubleAsNSNumberForColumn:v5];
}

- (double)getDoubleForColumnName:(const char *)a3 table:(const char *)a4
{
  v5 = [(_PASSQLColumnMapping *)self->_columnMapping indexForColumnName:a3 table:a4];

  [(_PASSqliteStatement *)self getDoubleForColumn:v5];
  return result;
}

- (id)int64AsNonnullNSNumberForColumnName:(const char *)a3 table:(const char *)a4
{
  v5 = [(_PASSQLColumnMapping *)self->_columnMapping indexForColumnName:a3 table:a4];

  return [(_PASSqliteStatement *)self int64AsNonnullNSNumberForColumn:v5];
}

- (id)getInt64AsNSNumberForColumnName:(const char *)a3 table:(const char *)a4
{
  v5 = [(_PASSQLColumnMapping *)self->_columnMapping indexForColumnName:a3 table:a4];

  return [(_PASSqliteStatement *)self getInt64AsNSNumberForColumn:v5];
}

- (int64_t)getInt64ForColumnName:(const char *)a3 table:(const char *)a4
{
  v5 = [(_PASSQLColumnMapping *)self->_columnMapping indexForColumnName:a3 table:a4];

  return [(_PASSqliteStatement *)self getInt64ForColumn:v5];
}

- (int64_t)getIntegerForColumnName:(const char *)a3 table:(const char *)a4
{
  v5 = [(_PASSQLColumnMapping *)self->_columnMapping indexForColumnName:a3 table:a4];

  return [(_PASSqliteStatement *)self getIntegerForColumn:v5];
}

- (void)accessBlobBytesForColumnName:(const char *)a3 table:(const char *)a4 usingBlock:(id)a5
{
  columnMapping = self->_columnMapping;
  v9 = a5;
  [(_PASSqliteStatement *)self accessBlobBytesForColumn:[(_PASSQLColumnMapping *)columnMapping indexForColumnName:a3 table:a4] usingBlock:v9];
}

- (id)nonnullNSDataForColumnName:(const char *)a3 table:(const char *)a4
{
  v5 = [(_PASSQLColumnMapping *)self->_columnMapping indexForColumnName:a3 table:a4];

  return [(_PASSqliteStatement *)self nonnullNSDataForColumn:v5];
}

- (id)getNSDataForColumnName:(const char *)a3 table:(const char *)a4
{
  v5 = [(_PASSQLColumnMapping *)self->_columnMapping indexForColumnName:a3 table:a4];

  return [(_PASSqliteStatement *)self getNSDataForColumn:v5];
}

- (id)nonnullNSStringForColumnName:(const char *)a3 table:(const char *)a4
{
  v5 = [(_PASSQLColumnMapping *)self->_columnMapping indexForColumnName:a3 table:a4];

  return [(_PASSqliteStatement *)self nonnullNSStringForColumn:v5];
}

- (id)getNSStringForColumnName:(const char *)a3 table:(const char *)a4
{
  v5 = [(_PASSQLColumnMapping *)self->_columnMapping indexForColumnName:a3 table:a4];

  return [(_PASSqliteStatement *)self getNSStringForColumn:v5];
}

- (id)getNSNumberForColumn:(int)a3
{
  v5 = sqlite3_column_type(self->_stmt, a3);
  if (v5 == 5)
  {
    v6 = 0;
  }

  else
  {
    if (v5 == 1)
    {
      [MEMORY[0x1E696AD98] numberWithLongLong:{sqlite3_column_int64(self->_stmt, a3)}];
    }

    else
    {
      [MEMORY[0x1E696AD98] numberWithDouble:{sqlite3_column_double(self->_stmt, a3)}];
    }
    v6 = ;
  }

  return v6;
}

- (int)bindNamedParam:(const char *)a3 toBlock:(id)a4
{
  stmt = self->_stmt;
  v7 = a4;
  LODWORD(a3) = [(_PASSqliteStatement *)self bindParam:_indexForBindParam(stmt toBlock:a3), v7];

  return a3;
}

- (int)bindNamedParam:(const char *)a3 toNSDictionary:(id)a4
{
  stmt = self->_stmt;
  v7 = a4;
  LODWORD(a3) = [(_PASSqliteStatement *)self bindParam:_indexForBindParam(stmt toNSDictionary:a3), v7];

  return a3;
}

- (int)bindNamedParam:(const char *)a3 toNSOrderedSet:(id)a4
{
  stmt = self->_stmt;
  v7 = a4;
  LODWORD(a3) = [(_PASSqliteStatement *)self bindParam:_indexForBindParam(stmt toNSOrderedSet:a3), v7];

  return a3;
}

- (int)bindNamedParam:(const char *)a3 toNSSet:(id)a4
{
  stmt = self->_stmt;
  v7 = a4;
  LODWORD(a3) = [(_PASSqliteStatement *)self bindParam:_indexForBindParam(stmt toNSSet:a3), v7];

  return a3;
}

- (int)bindNamedParam:(const char *)a3 toNSArray:(id)a4
{
  stmt = self->_stmt;
  v7 = a4;
  LODWORD(a3) = [(_PASSqliteStatement *)self bindParam:_indexForBindParam(stmt toNSArray:a3), v7];

  return a3;
}

- (int)bindNamedParam:(const char *)a3 toNSIndexSet:(id)a4
{
  stmt = self->_stmt;
  v7 = a4;
  LODWORD(a3) = [(_PASSqliteStatement *)self bindParam:_indexForBindParam(stmt toNSIndexSet:a3), v7];

  return a3;
}

- (int)bindNamedParam:(const char *)a3 toNonnullNSNumber:(id)a4
{
  stmt = self->_stmt;
  v7 = a4;
  LODWORD(a3) = [(_PASSqliteStatement *)self bindParam:_indexForBindParam(stmt toNonnullNSNumber:a3), v7];

  return a3;
}

- (int)bindNamedParam:(const char *)a3 toNSNumber:(id)a4
{
  if (a4)
  {
    return [(_PASSqliteStatement *)self bindNamedParam:a3 toNonnullNSNumber:?];
  }

  else
  {
    return [(_PASSqliteStatement *)self bindNamedParamToNull:a3];
  }
}

- (int)bindNamedParam:(const char *)a3 toDoubleAsNonnullNSNumber:(id)a4
{
  stmt = self->_stmt;
  v7 = a4;
  LODWORD(a3) = [(_PASSqliteStatement *)self bindParam:_indexForBindParam(stmt toDoubleAsNonnullNSNumber:a3), v7];

  return a3;
}

- (int)bindNamedParam:(const char *)a3 toDoubleAsNSNumber:(id)a4
{
  if (a4)
  {
    return [(_PASSqliteStatement *)self bindNamedParam:a3 toDoubleAsNonnullNSNumber:?];
  }

  else
  {
    return [(_PASSqliteStatement *)self bindNamedParamToNull:a3];
  }
}

- (int)bindNamedParam:(const char *)a3 toDouble:(double)a4
{
  stmt = self->_stmt;
  v6 = _indexForBindParam(stmt, a3);

  return sqlite3_bind_double(stmt, v6, a4);
}

- (int)bindNamedParam:(const char *)a3 toInt64AsNonnullNSNumber:(id)a4
{
  stmt = self->_stmt;
  v7 = a4;
  LODWORD(a3) = [(_PASSqliteStatement *)self bindParam:_indexForBindParam(stmt toInt64AsNonnullNSNumber:a3), v7];

  return a3;
}

- (int)bindNamedParam:(const char *)a3 toInt64AsNSNumber:(id)a4
{
  if (a4)
  {
    return [(_PASSqliteStatement *)self bindNamedParam:a3 toInt64AsNonnullNSNumber:?];
  }

  else
  {
    return [(_PASSqliteStatement *)self bindNamedParamToNull:a3];
  }
}

- (int)bindNamedParam:(const char *)a3 toInt64:(int64_t)a4
{
  stmt = self->_stmt;
  v6 = _indexForBindParam(stmt, a3);

  return sqlite3_bind_int64(stmt, v6, a4);
}

- (int)bindNamedParam:(const char *)a3 toInteger:(int64_t)a4
{
  stmt = self->_stmt;
  v6 = _indexForBindParam(stmt, a3);

  return sqlite3_bind_int64(stmt, v6, a4);
}

- (int)bindNamedParam:(const char *)a3 toNonnullNSData:(id)a4
{
  stmt = self->_stmt;
  v7 = a4;
  LODWORD(a3) = [(_PASSqliteStatement *)self bindParam:_indexForBindParam(stmt toNonnullNSData:a3), v7];

  return a3;
}

- (int)bindNamedParam:(const char *)a3 toNSData:(id)a4
{
  stmt = self->_stmt;
  v7 = a4;
  LODWORD(a3) = [(_PASSqliteStatement *)self bindParam:_indexForBindParam(stmt toNSData:a3), v7];

  return a3;
}

- (int)bindNamedParam:(const char *)a3 toNonnullNSString:(id)a4
{
  stmt = self->_stmt;
  v7 = a4;
  LODWORD(a3) = [(_PASSqliteStatement *)self bindParam:_indexForBindParam(stmt toNonnullNSString:a3), v7];

  return a3;
}

- (int)bindNamedParam:(const char *)a3 toNSString:(id)a4
{
  stmt = self->_stmt;
  v7 = a4;
  LODWORD(a3) = [(_PASSqliteStatement *)self bindParam:_indexForBindParam(stmt toNSString:a3), v7];

  return a3;
}

- (int)bindNamedParamToNull:(const char *)a3
{
  stmt = self->_stmt;
  v4 = _indexForBindParam(stmt, a3);

  return sqlite3_bind_null(stmt, v4);
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithCString:sqlite3_sql(self->_stmt) encoding:4];
  v5 = [v3 initWithFormat:@"<stmt: '%@'>", v4];

  return v5;
}

- (_PASSqliteStatement)initWithStatementPointer:(sqlite3_stmt *)a3 columnMapping:(id)a4
{
  v7 = a4;
  if (!a3)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"_PASSqliteStatement.m" lineNumber:222 description:{@"Invalid parameter not satisfying: %@", @"stmt"}];
  }

  v14.receiver = self;
  v14.super_class = _PASSqliteStatement;
  v8 = [(_PASSqliteStatement *)&v14 init];
  v9 = v8;
  if (v8)
  {
    v8->_stmt = a3;
    if (v7)
    {
      v10 = v7;
    }

    else
    {
      v10 = [[_PASSQLColumnMapping alloc] initWithStatementPtr:a3];
    }

    columnMapping = v9->_columnMapping;
    v9->_columnMapping = v10;
  }

  return v9;
}

@end