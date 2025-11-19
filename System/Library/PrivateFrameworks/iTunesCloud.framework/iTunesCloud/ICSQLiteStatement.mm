@interface ICSQLiteStatement
- (BOOL)isReadOnly;
- (ICSQLiteStatement)initWithStatement:(sqlite3_stmt *)a3 connection:(id)a4;
- (NSDictionary)columnIndexByName;
- (NSString)SQL;
- (int)clearBindings;
- (int)finalizeStatement;
- (int)reset;
- (int)step;
- (void)bindData:(id)a3 atPosition:(int)a4;
- (void)bindDataCopy:(id)a3 atPosition:(int)a4;
- (void)bindDouble:(double)a3 atPosition:(int)a4;
- (void)bindFloat:(float)a3 atPosition:(int)a4;
- (void)bindInt64:(int64_t)a3 atPosition:(int)a4;
- (void)bindInt:(int)a3 atPosition:(int)a4;
- (void)bindNullAtPosition:(int)a3;
- (void)bindNumber:(id)a3 atPosition:(int)a4;
- (void)bindString:(id)a3 atPosition:(int)a4;
- (void)bindStringCopy:(id)a3 atPosition:(int)a4;
@end

@implementation ICSQLiteStatement

- (int)clearBindings
{
  statement = self->_statement;
  if (statement)
  {

    return sqlite3_clear_bindings(statement);
  }

  else
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"Statement already finalized", v2, v3}];
    return 21;
  }
}

- (void)bindStringCopy:(id)a3 atPosition:(int)a4
{
  statement = self->_statement;
  if (statement)
  {
    v6 = [a3 UTF8String];

    sqlite3_bind_text(statement, a4, v6, -1, 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    v7 = MEMORY[0x1E695DF30];
    v8 = *MEMORY[0x1E695D930];

    [v7 raise:v8 format:@"Statement already finalized"];
  }
}

- (void)bindString:(id)a3 atPosition:(int)a4
{
  v6 = a3;
  theString = v6;
  if (!self->_statement)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"Statement already finalized"];
    goto LABEL_12;
  }

  FastestEncoding = CFStringGetFastestEncoding(v6);
  if (FastestEncoding == 256)
  {
    CharactersPtr = CFStringGetCharactersPtr(theString);
    v9 = theString;
    if (CharactersPtr)
    {
      statement = self->_statement;
      Length = CFStringGetLength(theString);
      sqlite3_bind_text16(statement, a4, CharactersPtr, 2 * Length, 0);
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  v8 = FastestEncoding == 134217984;
  v9 = theString;
  if (!v8 || (CStringPtr = CFStringGetCStringPtr(theString, 0x8000100u), v9 = theString, !CStringPtr))
  {
LABEL_10:
    v17 = self->_statement;
    CStringPtr = [(__CFString *)v9 UTF8String];
    v11 = v17;
    v12 = a4;
    v13 = -1;
    goto LABEL_11;
  }

  v11 = self->_statement;
  v12 = a4;
  v13 = 0;
LABEL_11:
  sqlite3_bind_text(v11, v12, CStringPtr, -1, v13);
LABEL_12:
}

- (void)bindNumber:(id)a3 atPosition:(int)a4
{
  v6 = a3;
  v10 = v6;
  if (self->_statement)
  {
    Type = CFNumberGetType(v6);
    if (Type > kCFNumberCGFloatType)
    {
      goto LABEL_8;
    }

    if (((1 << Type) & 0x38E) != 0)
    {
      sqlite3_bind_int(self->_statement, a4, [(__CFNumber *)v10 intValue]);
      goto LABEL_9;
    }

    if (((1 << Type) & 0x10060) != 0)
    {
      statement = self->_statement;
      [(__CFNumber *)v10 doubleValue];
      sqlite3_bind_double(statement, a4, v9);
    }

    else
    {
LABEL_8:
      sqlite3_bind_int64(self->_statement, a4, [(__CFNumber *)v10 longLongValue]);
    }
  }

  else
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"Statement already finalized"];
  }

LABEL_9:
}

- (void)bindNullAtPosition:(int)a3
{
  statement = self->_statement;
  if (statement)
  {
    sqlite3_bind_null(statement, a3);
  }

  else
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"Statement already finalized"];
  }
}

- (void)bindInt64:(int64_t)a3 atPosition:(int)a4
{
  statement = self->_statement;
  if (statement)
  {
    sqlite3_bind_int64(statement, a4, a3);
  }

  else
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"Statement already finalized"];
  }
}

- (void)bindInt:(int)a3 atPosition:(int)a4
{
  statement = self->_statement;
  if (statement)
  {
    sqlite3_bind_int(statement, a4, a3);
  }

  else
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"Statement already finalized"];
  }
}

- (void)bindFloat:(float)a3 atPosition:(int)a4
{
  statement = self->_statement;
  if (statement)
  {
    sqlite3_bind_double(statement, a4, a3);
  }

  else
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"Statement already finalized"];
  }
}

- (void)bindDouble:(double)a3 atPosition:(int)a4
{
  statement = self->_statement;
  if (statement)
  {
    sqlite3_bind_double(statement, a4, a3);
  }

  else
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"Statement already finalized", a3}];
  }
}

- (void)bindDataCopy:(id)a3 atPosition:(int)a4
{
  v6 = a3;
  statement = self->_statement;
  v9 = v6;
  if (statement)
  {
    v8 = v6;
    sqlite3_bind_blob(statement, a4, [v9 bytes], objc_msgSend(v9, "length"), 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"Statement already finalized"];
  }
}

- (void)bindData:(id)a3 atPosition:(int)a4
{
  v6 = a3;
  statement = self->_statement;
  v9 = v6;
  if (statement)
  {
    v8 = v6;
    sqlite3_bind_blob(statement, a4, [v9 bytes], objc_msgSend(v9, "length"), 0);
  }

  else
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"Statement already finalized"];
  }
}

- (int)step
{
  statement = self->_statement;
  if (statement)
  {

    return sqlite3_step(statement);
  }

  else
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"Statement already finalized", v2, v3}];
    return 21;
  }
}

- (NSString)SQL
{
  statement = self->_statement;
  if (statement)
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:sqlite3_sql(statement)];
  }

  else
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"Statement already finalized"];
    v3 = &stru_1F2C4A680;
  }

  return v3;
}

- (int)reset
{
  statement = self->_statement;
  if (statement)
  {

    return sqlite3_reset(statement);
  }

  else
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"Statement already finalized", v2, v3}];
    return 21;
  }
}

- (BOOL)isReadOnly
{
  statement = self->_statement;
  if (statement)
  {
    return sqlite3_stmt_readonly(statement) != 0;
  }

  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"Statement already finalized"];
  return 1;
}

- (int)finalizeStatement
{
  statement = self->_statement;
  if (statement)
  {
    v4 = sqlite3_finalize(statement);
    strongSelf = self->_strongSelf;
    self->_statement = 0;
    self->_strongSelf = 0;

    LODWORD(statement) = v4;
  }

  return statement;
}

- (NSDictionary)columnIndexByName
{
  statement = self->_statement;
  if (statement)
  {
    v4 = sqlite3_column_count(statement);
    v5 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:v4];
    if (v4 >= 1)
    {
      v6 = 0;
      do
      {
        v7 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:v6];
        v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:{sqlite3_column_name(self->_statement, v6)}];
        [v5 setObject:v7 forKey:v8];

        v6 = (v6 + 1);
      }

      while (v4 != v6);
    }
  }

  else
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"Statement already finalized"];
    v5 = 0;
  }

  return v5;
}

- (ICSQLiteStatement)initWithStatement:(sqlite3_stmt *)a3 connection:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = ICSQLiteStatement;
  v8 = [(ICSQLiteStatement *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_connection, a4);
    v9->_statement = a3;
    objc_storeStrong(&v9->_strongSelf, v9);
  }

  return v9;
}

@end