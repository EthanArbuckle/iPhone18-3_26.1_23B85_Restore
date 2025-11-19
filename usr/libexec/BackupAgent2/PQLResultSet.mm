@interface PQLResultSet
- (BOOL)checkSuccessWithError:(id *)a3;
- (BOOL)enumerateWithError:(id *)a3 block:(id)a4;
- (id)_expandedSQL;
@end

@implementation PQLResultSet

- (BOOL)checkSuccessWithError:(id *)a3
{
  v5 = [(PQLResultSet *)self error];
  if (v5)
  {
    if (MBIsInternalInstall())
    {
      v6 = [(PQLResultSet *)self _expandedSQL];
      v7 = [v5 _errorWithSQL:v6];

      if (!a3)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    v7 = v5;
    if (a3)
    {
LABEL_7:
      v8 = v7;
      *a3 = v7;
    }
  }

  else
  {
    v7 = 0;
  }

LABEL_8:

  return v5 == 0;
}

- (BOOL)enumerateWithError:(id *)a3 block:(id)a4
{
  v6 = a4;
  v7 = 0;
  while ([(PQLResultSet *)self next])
  {
    v8 = objc_autoreleasePoolPush();
    v17 = v7;
    v9 = v6[2](v6, self, &v17);
    v10 = v17;

    objc_autoreleasePoolPop(v8);
    v7 = v10;
    if ((v9 & 1) == 0)
    {
      [(PQLResultSet *)self close];
      if (v10)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  v10 = v7;
  if (v7)
  {
    goto LABEL_8;
  }

LABEL_7:
  v11 = [(PQLResultSet *)self error];
  v10 = [v11 excludingNotFound];

  if (!v10)
  {
    v13 = 0;
    v15 = 1;
    goto LABEL_12;
  }

LABEL_8:
  v12 = [(PQLResultSet *)self _expandedSQL];
  v13 = [v10 _errorWithSQL:v12];

  if (a3)
  {
    v14 = v13;
    v15 = 0;
    *a3 = v13;
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
  v2 = [(PQLResultSet *)self stmt];
  if (v2)
  {
    v3 = sqlite3_expanded_sql(v2);
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