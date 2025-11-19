@interface PBCodable(BRCProtocolBufferAdditions)
+ (uint64_t)newFromSqliteStatement:()BRCProtocolBufferAdditions atIndex:;
+ (uint64_t)newFromSqliteValue:()BRCProtocolBufferAdditions;
- (void)sqliteBind:()BRCProtocolBufferAdditions index:;
@end

@implementation PBCodable(BRCProtocolBufferAdditions)

- (void)sqliteBind:()BRCProtocolBufferAdditions index:
{
  v6 = [a1 data];
  [v6 sqliteBind:a3 index:a4];
}

+ (uint64_t)newFromSqliteValue:()BRCProtocolBufferAdditions
{
  if (sqlite3_value_type(a3) != 4)
  {
    return 0;
  }

  v4 = objc_alloc(objc_opt_class());
  v5 = [MEMORY[0x277CBEA90] newFromSqliteValue:a3];
  v6 = [v4 initWithData:v5];

  return v6;
}

+ (uint64_t)newFromSqliteStatement:()BRCProtocolBufferAdditions atIndex:
{
  if (sqlite3_column_type(a3, iCol) != 4)
  {
    return 0;
  }

  v6 = objc_alloc(objc_opt_class());
  v7 = [MEMORY[0x277CBEA90] newFromSqliteStatement:a3 atIndex:iCol];
  v8 = [v6 initWithData:v7];

  return v8;
}

@end