@interface ICSQLiteRow
- (ICSQLiteRow)initWithStatement:(id)a3;
- (double)doubleForColumnName:(id)a3;
- (id)dataForColumnIndex:(int)a3;
- (id)dataForColumnName:(id)a3;
- (id)numberForColumnIndex:(int)a3;
- (id)numberForColumnName:(id)a3;
- (id)stringForColumnIndex:(int)a3;
- (id)stringForColumnName:(id)a3;
- (int)columnIndexForColumnName:(id)a3;
- (int)intForColumnName:(id)a3;
- (int64_t)int64ForColumnName:(id)a3;
@end

@implementation ICSQLiteRow

- (int)columnIndexForColumnName:(id)a3
{
  v4 = a3;
  columnIndexByName = self->_columnIndexByName;
  if (!columnIndexByName)
  {
    v6 = [(ICSQLiteStatement *)self->_statementWrapper columnIndexByName];
    v7 = self->_columnIndexByName;
    self->_columnIndexByName = v6;

    columnIndexByName = self->_columnIndexByName;
  }

  v8 = [(NSDictionary *)columnIndexByName objectForKey:v4];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 intValue];
  }

  else
  {
    v10 = -1;
  }

  return v10;
}

- (id)stringForColumnName:(id)a3
{
  v4 = [(ICSQLiteRow *)self columnIndexForColumnName:a3];
  if ((v4 & 0x80000000) != 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(ICSQLiteRow *)self stringForColumnIndex:v4];
  }

  return v5;
}

- (id)stringForColumnIndex:(int)a3
{
  if (sqlite3_column_type(self->_statement, a3) == 5)
  {
    v5 = 0;
  }

  else
  {
    v5 = sqlite3_column_text(self->_statement, a3);
    if (v5)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v5];
    }
  }

  return v5;
}

- (id)numberForColumnName:(id)a3
{
  v4 = [(ICSQLiteRow *)self columnIndexForColumnName:a3];
  if ((v4 & 0x80000000) != 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(ICSQLiteRow *)self numberForColumnIndex:v4];
  }

  return v5;
}

- (id)numberForColumnIndex:(int)a3
{
  v5 = sqlite3_column_type(self->_statement, a3);
  if (v5 == 1)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithLongLong:{sqlite3_column_int64(self->_statement, a3)}];
  }

  else if (v5 == 2)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithDouble:{sqlite3_column_double(self->_statement, a3)}];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (int64_t)int64ForColumnName:(id)a3
{
  v4 = [(ICSQLiteRow *)self columnIndexForColumnName:a3];
  if (v4 < 0)
  {
    return 0;
  }

  v5 = v4;
  statement = self->_statement;

  return sqlite3_column_int64(statement, v5);
}

- (int)intForColumnName:(id)a3
{
  v4 = [(ICSQLiteRow *)self columnIndexForColumnName:a3];
  if (v4 < 0)
  {
    return 0;
  }

  v5 = v4;
  statement = self->_statement;

  return sqlite3_column_int(statement, v5);
}

- (double)doubleForColumnName:(id)a3
{
  v4 = [(ICSQLiteRow *)self columnIndexForColumnName:a3];
  if (v4 < 0)
  {
    return 0.0;
  }

  v5 = v4;
  statement = self->_statement;

  return sqlite3_column_double(statement, v5);
}

- (id)dataForColumnName:(id)a3
{
  v4 = [(ICSQLiteRow *)self columnIndexForColumnName:a3];
  if ((v4 & 0x80000000) != 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(ICSQLiteRow *)self dataForColumnIndex:v4];
  }

  return v5;
}

- (id)dataForColumnIndex:(int)a3
{
  if (sqlite3_column_type(self->_statement, a3) == 5)
  {
    v5 = 0;
  }

  else
  {
    v6 = sqlite3_column_blob(self->_statement, a3);
    v5 = [MEMORY[0x1E695DEF0] dataWithBytes:v6 length:{sqlite3_column_bytes(self->_statement, a3)}];
  }

  return v5;
}

- (ICSQLiteRow)initWithStatement:(id)a3
{
  v5 = a3;
  v8.receiver = self;
  v8.super_class = ICSQLiteRow;
  v6 = [(ICSQLiteRow *)&v8 init];
  if (v6)
  {
    v6->_statement = [v5 sqlite3_stmt];
    objc_storeStrong(&v6->_statementWrapper, a3);
  }

  return v6;
}

@end