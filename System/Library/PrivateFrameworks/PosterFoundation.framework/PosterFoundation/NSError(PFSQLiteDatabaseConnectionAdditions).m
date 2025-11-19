@interface NSError(PFSQLiteDatabaseConnectionAdditions)
+ (id)pbf_sqliteDatabaseErrorWithCode:()PFSQLiteDatabaseConnectionAdditions errorMessage:;
@end

@implementation NSError(PFSQLiteDatabaseConnectionAdditions)

+ (id)pbf_sqliteDatabaseErrorWithCode:()PFSQLiteDatabaseConnectionAdditions errorMessage:
{
  v5 = a4;
  v6 = [MEMORY[0x1E695DF90] dictionary];
  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:sqlite3_errstr(a3)];
  [v6 setObject:v7 forKeyedSubscript:*MEMORY[0x1E696A578]];

  if (v5)
  {
    [v6 setObject:v5 forKeyedSubscript:*MEMORY[0x1E696A588]];
  }

  v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.posterboard.sqlite" code:a3 userInfo:v6];

  return v8;
}

@end