@interface NSError(PFSQLiteAdditions)
+ (id)pf_errorForDatabaseConnection:()PFSQLiteAdditions result:query:userInfo:;
+ (id)pf_errorForDatabaseResult:()PFSQLiteAdditions query:userInfo:;
@end

@implementation NSError(PFSQLiteAdditions)

+ (id)pf_errorForDatabaseConnection:()PFSQLiteAdditions result:query:userInfo:
{
  v9 = a3;
  v10 = a5;
  v11 = a6;
  v12 = [v11 mutableCopy];
  v13 = v12;
  if (v12)
  {
    dictionary = v12;
  }

  else
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
  }

  v15 = dictionary;

  v16 = *MEMORY[0x1E696A588];
  v17 = [v15 objectForKeyedSubscript:*MEMORY[0x1E696A588]];

  if (!v17)
  {
    lastErrorMessage = [v9 lastErrorMessage];
    if (lastErrorMessage)
    {
      [v15 setObject:lastErrorMessage forKeyedSubscript:v16];
    }
  }

  v19 = [MEMORY[0x1E696ABC0] pf_errorForDatabaseResult:a4 query:v10 userInfo:v11];

  return v19;
}

+ (id)pf_errorForDatabaseResult:()PFSQLiteAdditions query:userInfo:
{
  v7 = a4;
  v8 = [a5 mutableCopy];
  v9 = v8;
  if (v8)
  {
    dictionary = v8;
  }

  else
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
  }

  v11 = dictionary;

  v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:sqlite3_errstr(a3)];
  [v11 setObject:v12 forKeyedSubscript:*MEMORY[0x1E696A578]];

  v13 = [v11 objectForKeyedSubscript:@"SQL"];
  if (!v13)
  {
    if (![v7 length])
    {
      goto LABEL_8;
    }

    v13 = [v7 copy];
    [v11 setObject:v13 forKeyedSubscript:@"SQL"];
  }

LABEL_8:
  v14 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.PosterBoard.PFSQLiteErrorDomain" code:a3 userInfo:v11];

  return v14;
}

@end