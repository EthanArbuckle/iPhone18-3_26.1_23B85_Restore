@interface SqliteClient
- (SqliteClient)initWithFile:(id)a3 error:(id *)a4;
- (id)huffmanCode:(id)a3 error:(id *)a4;
- (int)findWord:(id)a3 error:(id *)a4;
- (int)getTotalCount:(id *)a3;
- (void)dealloc;
@end

@implementation SqliteClient

- (SqliteClient)initWithFile:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = +[NSFileManager defaultManager];
  v8 = [v7 fileExistsAtPath:v6];

  if (v8)
  {
    if (!sqlite3_open([v6 UTF8String], &self->_sqlite))
    {
      a4 = self;
      goto LABEL_9;
    }

    if (a4)
    {
      v13 = NSLocalizedDescriptionKey;
      v14 = @"Failed to open sqlite database.";
      v9 = &v14;
      v10 = &v13;
LABEL_7:
      v11 = [NSDictionary dictionaryWithObjects:v9 forKeys:v10 count:1];
      *a4 = [NSError errorWithDomain:@"com.apple.MLRuntime" code:300 userInfo:v11];

      a4 = 0;
    }
  }

  else if (a4)
  {
    v15 = NSLocalizedDescriptionKey;
    v16 = @"Database file does not exist.";
    v9 = &v16;
    v10 = &v15;
    goto LABEL_7;
  }

LABEL_9:

  return a4;
}

- (int)getTotalCount:(id *)a3
{
  pStmt = 0;
  if (sqlite3_prepare_v2(self->_sqlite, [@"select Count(1) from Words" UTF8String], -1, &pStmt, 0))
  {
    if (a3)
    {
      v7 = NSLocalizedDescriptionKey;
      v8 = @"Failed to prepare sqlite for search.";
      v4 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
      *a3 = [NSError errorWithDomain:@"com.apple.MLRuntime" code:300 userInfo:v4];

LABEL_7:
      LODWORD(a3) = 0;
    }
  }

  else
  {
    if (sqlite3_step(pStmt) != 100)
    {
      NSLog(@"Not found in sqlite.");
      goto LABEL_7;
    }

    LODWORD(a3) = sqlite3_column_int(pStmt, 0);
  }

  sqlite3_finalize(pStmt);
  return a3;
}

- (int)findWord:(id)a3 error:(id *)a4
{
  v6 = [NSString stringWithFormat:@"select mCode from Words where mWord=%@", a3];
  ppStmt = 0;
  if (sqlite3_prepare_v2(self->_sqlite, [v6 UTF8String], -1, &ppStmt, 0))
  {
    if (a4)
    {
      v11 = NSLocalizedDescriptionKey;
      v12 = @"Failed to prepare sqlite for search.";
      v7 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
      *a4 = [NSError errorWithDomain:@"com.apple.MLRuntime" code:300 userInfo:v7];
    }

    goto LABEL_7;
  }

  if (sqlite3_step(ppStmt) != 100)
  {
    NSLog(@"Not found in sqlite.");
LABEL_7:
    v8 = -1;
    goto LABEL_8;
  }

  v8 = sqlite3_column_int(ppStmt, 0);
LABEL_8:
  sqlite3_finalize(ppStmt);

  return v8;
}

- (id)huffmanCode:(id)a3 error:(id *)a4
{
  v6 = [NSString stringWithFormat:@"select mCode from Words where mWord=%@", a3];
  ppStmt = 0;
  if (sqlite3_prepare_v2(self->_sqlite, [v6 UTF8String], -1, &ppStmt, 0))
  {
    if (!a4)
    {
      goto LABEL_8;
    }

    v10 = NSLocalizedDescriptionKey;
    v11 = @"Failed to prepare sqlite for search.";
    v7 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
    *a4 = [NSError errorWithDomain:@"com.apple.MLRuntime" code:300 userInfo:v7];
  }

  else
  {
    if (sqlite3_step(ppStmt) == 100)
    {
      a4 = [NSString stringWithUTF8String:sqlite3_column_text(ppStmt, 0)];
      goto LABEL_8;
    }

    NSLog(@"Not found in sqlite.");
  }

  a4 = 0;
LABEL_8:
  sqlite3_finalize(ppStmt);

  return a4;
}

- (void)dealloc
{
  sqlite3_close(self->_sqlite);
  v3.receiver = self;
  v3.super_class = SqliteClient;
  [(SqliteClient *)&v3 dealloc];
}

@end