@interface CKQueryCursor(BRValueableAdditions)
+ (uint64_t)newFromSqliteStatement:()BRValueableAdditions atIndex:;
+ (uint64_t)newFromSqliteValue:()BRValueableAdditions;
- (void)sqliteBind:()BRValueableAdditions index:;
@end

@implementation CKQueryCursor(BRValueableAdditions)

+ (uint64_t)newFromSqliteValue:()BRValueableAdditions
{
  if (sqlite3_value_type(a3) == 4)
  {
    v4 = MEMORY[0x277CCAAC8];
    v5 = objc_opt_class();
    v6 = MEMORY[0x277CBEA90];
    v7 = sqlite3_value_blob(a3);
    v8 = [v6 dataWithBytes:v7 length:sqlite3_value_bytes(a3)];
    v9 = [v4 unarchivedObjectOfClass:v5 fromData:v8 error:0];
  }

  else
  {
    if (sqlite3_value_type(a3) != 5)
    {
      +[CKQueryCursor(BRValueableAdditions) newFromSqliteValue:];
    }

    return 0;
  }

  return v9;
}

+ (uint64_t)newFromSqliteStatement:()BRValueableAdditions atIndex:
{
  if (sqlite3_column_type(a3, iCol) == 4)
  {
    v6 = MEMORY[0x277CCAAC8];
    v7 = objc_opt_class();
    v8 = MEMORY[0x277CBEA90];
    v9 = sqlite3_column_blob(a3, iCol);
    v10 = [v8 dataWithBytes:v9 length:{sqlite3_column_bytes(a3, iCol)}];
    v11 = [v6 unarchivedObjectOfClass:v7 fromData:v10 error:0];
  }

  else
  {
    if (sqlite3_column_type(a3, iCol) != 5)
    {
      +[CKQueryCursor(BRValueableAdditions) newFromSqliteStatement:atIndex:];
    }

    return 0;
  }

  return v11;
}

- (void)sqliteBind:()BRValueableAdditions index:
{
  v7 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:self requiringSecureCoding:1 error:0];
  v6 = v7;
  sqlite3_bind_blob(a3, a4, [v7 bytes], objc_msgSend(v7, "length"), 0xFFFFFFFFFFFFFFFFLL);
}

@end