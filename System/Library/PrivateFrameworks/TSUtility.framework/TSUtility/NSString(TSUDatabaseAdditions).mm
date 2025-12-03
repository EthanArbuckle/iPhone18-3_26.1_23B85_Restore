@interface NSString(TSUDatabaseAdditions)
+ (const)stringWithSqlStatement:()TSUDatabaseAdditions columnIndex:;
- (uint64_t)bindToSqlStatement:()TSUDatabaseAdditions index:error:;
- (uint64_t)initWithSqlStatement:()TSUDatabaseAdditions columnIndex:;
@end

@implementation NSString(TSUDatabaseAdditions)

- (uint64_t)initWithSqlStatement:()TSUDatabaseAdditions columnIndex:
{
  v5 = sqlite3_column_text(a3, iCol);

  return [self initWithUTF8String:v5];
}

- (uint64_t)bindToSqlStatement:()TSUDatabaseAdditions index:error:
{
  v9 = [self lengthOfBytesUsingEncoding:4];
  if (HIDWORD(v9))
  {
    return 0;
  }

  if (!sqlite3_bind_text(a3, a4, [self UTF8String], v9, 0xFFFFFFFFFFFFFFFFLL))
  {
    return 1;
  }

  TSULogErrorInFunction("[NSString(TSUDatabaseAdditions) bindToSqlStatement:index:error:]", "/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUDatabase.m", 445, @"Couldn't bind string to SQL statement", v11, v12, v13, v14, v16);
  if (!a5 || *a5)
  {
    return 0;
  }

  v15 = [MEMORY[0x277CCA9B8] tsuErrorWithCode:0];
  result = 0;
  *a5 = v15;
  return result;
}

+ (const)stringWithSqlStatement:()TSUDatabaseAdditions columnIndex:
{
  result = sqlite3_column_text(a3, iCol);
  if (result)
  {
    v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithSqlStatement:a3 columnIndex:iCol];

    return v7;
  }

  return result;
}

@end