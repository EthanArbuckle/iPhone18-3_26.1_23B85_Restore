@interface ICSQLiteQueryResults
- (ICSQLiteQueryResults)initWithStatement:(id)statement;
- (NSNumber)firstNumberValue;
- (NSString)firstStringValue;
- (int64_t)firstInt64Value;
- (void)enumerateRowsUsingBlock:(id)block;
@end

@implementation ICSQLiteQueryResults

- (NSString)firstStringValue
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__28719;
  v9 = __Block_byref_object_dispose__28720;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __40__ICSQLiteQueryResults_firstStringValue__block_invoke;
  v4[3] = &unk_1E7BF7340;
  v4[4] = &v5;
  [(ICSQLiteQueryResults *)self enumerateRowsUsingBlock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __40__ICSQLiteQueryResults_firstStringValue__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  if (a2)
  {
    v6 = [a2 stringForColumnIndex:0];
    v7 = *(*(a1 + 32) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  *a4 = 1;
}

- (NSNumber)firstNumberValue
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__28719;
  v9 = __Block_byref_object_dispose__28720;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __40__ICSQLiteQueryResults_firstNumberValue__block_invoke;
  v4[3] = &unk_1E7BF7340;
  v4[4] = &v5;
  [(ICSQLiteQueryResults *)self enumerateRowsUsingBlock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __40__ICSQLiteQueryResults_firstNumberValue__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  if (a2)
  {
    v6 = [a2 numberForColumnIndex:0];
    v7 = *(*(a1 + 32) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  *a4 = 1;
}

- (int64_t)firstInt64Value
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __39__ICSQLiteQueryResults_firstInt64Value__block_invoke;
  v4[3] = &unk_1E7BF7340;
  v4[4] = &v5;
  [(ICSQLiteQueryResults *)self enumerateRowsUsingBlock:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __39__ICSQLiteQueryResults_firstInt64Value__block_invoke(uint64_t result, void *a2, uint64_t a3, _BYTE *a4)
{
  if (a2)
  {
    v5 = result;
    result = [a2 int64ForColumnIndex:0];
    *(*(*(v5 + 32) + 8) + 24) = result;
  }

  *a4 = 1;
  return result;
}

- (void)enumerateRowsUsingBlock:(id)block
{
  blockCopy = block;
  v5 = [[ICSQLiteRow alloc] initWithStatement:self->_statement];
  sqlite3_stmt = [(ICSQLiteStatement *)self->_statement sqlite3_stmt];
  v7 = 0;
  while (1)
  {
    v8 = objc_autoreleasePoolPush();
    v14 = 0;
    v9 = sqlite3_step(sqlite3_stmt);
    if (v9 > 9)
    {
      break;
    }

    if ((v9 - 5) < 2)
    {
      if (v7 > 9)
      {
        goto LABEL_19;
      }

      usleep(0xF4240u);
      ++v7;
      goto LABEL_11;
    }

    if (v9)
    {
      goto LABEL_18;
    }

LABEL_10:
    blockCopy[2](blockCopy, v5, 0, &v14);
LABEL_11:
    v10 = v14;
    objc_autoreleasePoolPop(v8);
    if (v10)
    {
      goto LABEL_20;
    }
  }

  if (v9 > 99)
  {
    if (v9 != 100)
    {
      if (v9 != 101)
      {
        goto LABEL_18;
      }

LABEL_19:
      objc_autoreleasePoolPop(v8);
LABEL_20:
      [(ICSQLiteStatement *)self->_statement reset];
      goto LABEL_23;
    }

    goto LABEL_10;
  }

  if (v9 == 10)
  {
    objc_autoreleasePoolPop(v8);
    connection = [(ICSQLiteStatement *)self->_statement connection];
    [connection resetAfterIOError];
  }

  else
  {
    if (v9 != 11 && v9 != 26)
    {
LABEL_18:
      connection2 = [(ICSQLiteStatement *)self->_statement connection];
      currentError = [connection2 currentError];

      (blockCopy)[2](blockCopy, 0, currentError, &v14);
      goto LABEL_19;
    }

    objc_autoreleasePoolPop(v8);
    connection = [(ICSQLiteStatement *)self->_statement connection];
    [connection resetAfterCorruptionError];
  }

LABEL_23:
}

- (ICSQLiteQueryResults)initWithStatement:(id)statement
{
  statementCopy = statement;
  v9.receiver = self;
  v9.super_class = ICSQLiteQueryResults;
  v6 = [(ICSQLiteQueryResults *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_statement, statement);
  }

  return v7;
}

@end