@interface PFSQLiteResultRow
+ (void)resultRowWithStatement:(uint64_t)a1;
- (PFSQLiteResultRow)init;
- (double)doubleAtIndex:(unint64_t)a3;
- (double)doubleForKey:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dataAtIndex:(unint64_t)a3;
- (id)dataForKey:(id)a3;
- (id)keyAtIndex:(unint64_t)a3;
- (id)objectAtIndex:(unint64_t)a3;
- (id)objectForKey:(id)a3;
- (id)stringAtIndex:(unint64_t)a3;
- (id)stringForKey:(id)a3;
- (int64_t)integerAtIndex:(unint64_t)a3;
- (int64_t)integerForKey:(id)a3;
- (void)_columnNames;
- (void)_indexForKey:(void *)result;
- (void)_initWithStatement:(void *)result;
@end

@implementation PFSQLiteResultRow

- (id)keyAtIndex:(unint64_t)a3
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = sqlite3_column_name(self->_statement, a3);

  return [v3 stringWithUTF8String:v4];
}

- (id)objectForKey:(id)a3
{
  v4 = [(PFSQLiteResultRow *)self _indexForKey:a3];

  return [(PFSQLiteResultRow *)self objectAtIndex:v4];
}

- (id)objectAtIndex:(unint64_t)a3
{
  if (a3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = 0;
  }

  else
  {
    v8 = sqlite3_column_type(self->_statement, a3);
    v4 = 0;
    if (v8 <= 2)
    {
      if (v8 == 1)
      {
        v4 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[PFSQLiteResultRow integerAtIndex:](self, "integerAtIndex:", a3)}];
      }

      else if (v8 == 2)
      {
        v9 = MEMORY[0x1E696AD98];
        [(PFSQLiteResultRow *)self doubleAtIndex:a3];
        v4 = [v9 numberWithDouble:?];
      }
    }

    else
    {
      switch(v8)
      {
        case 3:
          v4 = [(PFSQLiteResultRow *)self stringAtIndex:a3];
          break;
        case 4:
          v4 = [(PFSQLiteResultRow *)self dataAtIndex:a3];
          break;
        case 5:
          v4 = [MEMORY[0x1E695DFB0] null];
          break;
      }
    }
  }

  return v4;
}

- (int64_t)integerAtIndex:(unint64_t)a3
{
  if (a3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  else
  {
    return sqlite3_column_int64(self->_statement, a3);
  }
}

- (double)doubleAtIndex:(unint64_t)a3
{
  if (a3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0.0;
  }

  else
  {
    return sqlite3_column_double(self->_statement, a3);
  }
}

- (id)stringAtIndex:(unint64_t)a3
{
  if (a3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = 0;
  }

  else
  {
    v6 = a3;
    v8 = sqlite3_column_bytes(self->_statement, a3);
    v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:sqlite3_column_text(self->_statement length:v6) encoding:{v8, 4}];
  }

  return v4;
}

- (id)dataAtIndex:(unint64_t)a3
{
  if (a3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = 0;
  }

  else
  {
    v6 = a3;
    v8 = sqlite3_column_bytes(self->_statement, a3);
    v4 = [MEMORY[0x1E695DEF0] dataWithBytes:sqlite3_column_blob(self->_statement length:{v6), v8}];
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [_PBFSQLiteFrozenResultRow allocWithZone:a3];

  return [(_PBFSQLiteFrozenResultRow *)v4 _initWithResultRow:?];
}

- (PFSQLiteResultRow)init
{
  if (self)
  {
    v2.receiver = self;
    v2.super_class = PFSQLiteResultRow;
    self = [(PFSQLiteResultRow *)&v2 init];
    if (self)
    {
      self->_statement = 0;
    }
  }

  return self;
}

- (void)_initWithStatement:(void *)result
{
  if (result)
  {
    v3.receiver = result;
    v3.super_class = PFSQLiteResultRow;
    result = objc_msgSendSuper2(&v3, sel_init);
    if (result)
    {
      result[1] = a2;
    }
  }

  return result;
}

+ (void)resultRowWithStatement:(uint64_t)a1
{
  v3 = objc_alloc(objc_opt_self());
  if (v3)
  {
    v5.receiver = v3;
    v5.super_class = PFSQLiteResultRow;
    v3 = objc_msgSendSuper2(&v5, sel_init);
    if (v3)
    {
      v3[1] = a2;
    }
  }

  return v3;
}

- (void)_indexForKey:(void *)result
{
  if (result)
  {
    v2 = result;
    v3 = a2;
    v4 = [(PFSQLiteResultRow *)v2 _columnNames];
    v5 = [v4 indexOfObject:v3];

    return v5;
  }

  return result;
}

- (int64_t)integerForKey:(id)a3
{
  OUTLINED_FUNCTION_4_2(self, a2, a3);
  v3 = OUTLINED_FUNCTION_3_4();

  return [v3 integerAtIndex:?];
}

- (double)doubleForKey:(id)a3
{
  OUTLINED_FUNCTION_4_2(self, a2, a3);
  v3 = OUTLINED_FUNCTION_3_4();

  [v3 doubleAtIndex:?];
  return result;
}

- (id)stringForKey:(id)a3
{
  OUTLINED_FUNCTION_4_2(self, a2, a3);
  v3 = OUTLINED_FUNCTION_3_4();

  return [v3 stringAtIndex:?];
}

- (id)dataForKey:(id)a3
{
  OUTLINED_FUNCTION_4_2(self, a2, a3);
  v3 = OUTLINED_FUNCTION_3_4();

  return [v3 dataAtIndex:?];
}

- (void)_columnNames
{
  if (a1)
  {
    v2 = a1;
    v3 = a1[2];
    if (!v3)
    {
      v4 = [a1 count];
      v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v4];
      if (v4)
      {
        for (i = 0; i != v4; ++i)
        {
          v7 = [v2 keyAtIndex:i];
          [v5 addObject:v7];
        }
      }

      v8 = [v5 copy];
      v9 = v2[2];
      v2[2] = v8;

      v3 = v2[2];
    }

    a1 = v3;
    v1 = vars8;
  }

  return a1;
}

@end