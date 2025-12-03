@interface PQLResultSet
- (BOOL)checkSuccessWithError:(id *)error;
- (BOOL)enumerateWithError:(id *)error block:(id)block;
- (id)_expandedSQL;
@end

@implementation PQLResultSet

- (BOOL)checkSuccessWithError:(id *)error
{
  error = [(PQLResultSet *)self error];
  if (error)
  {
    if (MBIsInternalInstall())
    {
      _expandedSQL = [(PQLResultSet *)self _expandedSQL];
      v7 = [error _errorWithSQL:_expandedSQL];

      if (!error)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    v7 = error;
    if (error)
    {
LABEL_7:
      v8 = v7;
      *error = v7;
    }
  }

  else
  {
    v7 = 0;
  }

LABEL_8:

  return error == 0;
}

- (BOOL)enumerateWithError:(id *)error block:(id)block
{
  blockCopy = block;
  v7 = 0;
  while ([(PQLResultSet *)self next])
  {
    v8 = objc_autoreleasePoolPush();
    v17 = v7;
    v9 = blockCopy[2](blockCopy, self, &v17);
    excludingNotFound = v17;

    objc_autoreleasePoolPop(v8);
    v7 = excludingNotFound;
    if ((v9 & 1) == 0)
    {
      [(PQLResultSet *)self close];
      if (excludingNotFound)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  excludingNotFound = v7;
  if (v7)
  {
    goto LABEL_8;
  }

LABEL_7:
  error = [(PQLResultSet *)self error];
  excludingNotFound = [error excludingNotFound];

  if (!excludingNotFound)
  {
    v13 = 0;
    v15 = 1;
    goto LABEL_12;
  }

LABEL_8:
  _expandedSQL = [(PQLResultSet *)self _expandedSQL];
  v13 = [excludingNotFound _errorWithSQL:_expandedSQL];

  if (error)
  {
    v14 = v13;
    v15 = 0;
    *error = v13;
  }

  else
  {
    v15 = 0;
  }

LABEL_12:

  return v15;
}

- (id)_expandedSQL
{
  stmt = [(PQLResultSet *)self stmt];
  if (stmt)
  {
    v3 = sqlite3_expanded_sql(stmt);
    v4 = [NSString stringWithUTF8String:v3];
    free(v3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end