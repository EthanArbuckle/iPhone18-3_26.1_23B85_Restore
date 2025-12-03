@interface PFSQLiteResultRow
+ (void)resultRowWithStatement:(uint64_t)statement;
- (PFSQLiteResultRow)init;
- (double)doubleAtIndex:(unint64_t)index;
- (double)doubleForKey:(id)key;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dataAtIndex:(unint64_t)index;
- (id)dataForKey:(id)key;
- (id)keyAtIndex:(unint64_t)index;
- (id)objectAtIndex:(unint64_t)index;
- (id)objectForKey:(id)key;
- (id)stringAtIndex:(unint64_t)index;
- (id)stringForKey:(id)key;
- (int64_t)integerAtIndex:(unint64_t)index;
- (int64_t)integerForKey:(id)key;
- (void)_columnNames;
- (void)_indexForKey:(void *)result;
- (void)_initWithStatement:(void *)result;
@end

@implementation PFSQLiteResultRow

- (id)keyAtIndex:(unint64_t)index
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = sqlite3_column_name(self->_statement, index);

  return [v3 stringWithUTF8String:v4];
}

- (id)objectForKey:(id)key
{
  v4 = [(PFSQLiteResultRow *)self _indexForKey:key];

  return [(PFSQLiteResultRow *)self objectAtIndex:v4];
}

- (id)objectAtIndex:(unint64_t)index
{
  if (index == 0x7FFFFFFFFFFFFFFFLL)
  {
    null = 0;
  }

  else
  {
    v8 = sqlite3_column_type(self->_statement, index);
    null = 0;
    if (v8 <= 2)
    {
      if (v8 == 1)
      {
        null = [MEMORY[0x1E696AD98] numberWithLongLong:{-[PFSQLiteResultRow integerAtIndex:](self, "integerAtIndex:", index)}];
      }

      else if (v8 == 2)
      {
        v9 = MEMORY[0x1E696AD98];
        [(PFSQLiteResultRow *)self doubleAtIndex:index];
        null = [v9 numberWithDouble:?];
      }
    }

    else
    {
      switch(v8)
      {
        case 3:
          null = [(PFSQLiteResultRow *)self stringAtIndex:index];
          break;
        case 4:
          null = [(PFSQLiteResultRow *)self dataAtIndex:index];
          break;
        case 5:
          null = [MEMORY[0x1E695DFB0] null];
          break;
      }
    }
  }

  return null;
}

- (int64_t)integerAtIndex:(unint64_t)index
{
  if (index == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  else
  {
    return sqlite3_column_int64(self->_statement, index);
  }
}

- (double)doubleAtIndex:(unint64_t)index
{
  if (index == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0.0;
  }

  else
  {
    return sqlite3_column_double(self->_statement, index);
  }
}

- (id)stringAtIndex:(unint64_t)index
{
  if (index == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = 0;
  }

  else
  {
    indexCopy = index;
    v8 = sqlite3_column_bytes(self->_statement, index);
    v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:sqlite3_column_text(self->_statement length:indexCopy) encoding:{v8, 4}];
  }

  return v4;
}

- (id)dataAtIndex:(unint64_t)index
{
  if (index == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = 0;
  }

  else
  {
    indexCopy = index;
    v8 = sqlite3_column_bytes(self->_statement, index);
    v4 = [MEMORY[0x1E695DEF0] dataWithBytes:sqlite3_column_blob(self->_statement length:{indexCopy), v8}];
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [_PBFSQLiteFrozenResultRow allocWithZone:zone];

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

+ (void)resultRowWithStatement:(uint64_t)statement
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
    _columnNames = [(PFSQLiteResultRow *)v2 _columnNames];
    v5 = [_columnNames indexOfObject:v3];

    return v5;
  }

  return result;
}

- (int64_t)integerForKey:(id)key
{
  OUTLINED_FUNCTION_4_2(self, a2, key);
  v3 = OUTLINED_FUNCTION_3_4();

  return [v3 integerAtIndex:?];
}

- (double)doubleForKey:(id)key
{
  OUTLINED_FUNCTION_4_2(self, a2, key);
  v3 = OUTLINED_FUNCTION_3_4();

  [v3 doubleAtIndex:?];
  return result;
}

- (id)stringForKey:(id)key
{
  OUTLINED_FUNCTION_4_2(self, a2, key);
  v3 = OUTLINED_FUNCTION_3_4();

  return [v3 stringAtIndex:?];
}

- (id)dataForKey:(id)key
{
  OUTLINED_FUNCTION_4_2(self, a2, key);
  v3 = OUTLINED_FUNCTION_3_4();

  return [v3 dataAtIndex:?];
}

- (void)_columnNames
{
  if (self)
  {
    selfCopy = self;
    v3 = self[2];
    if (!v3)
    {
      v4 = [self count];
      v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v4];
      if (v4)
      {
        for (i = 0; i != v4; ++i)
        {
          v7 = [selfCopy keyAtIndex:i];
          [v5 addObject:v7];
        }
      }

      v8 = [v5 copy];
      v9 = selfCopy[2];
      selfCopy[2] = v8;

      v3 = selfCopy[2];
    }

    self = v3;
    v1 = vars8;
  }

  return self;
}

@end