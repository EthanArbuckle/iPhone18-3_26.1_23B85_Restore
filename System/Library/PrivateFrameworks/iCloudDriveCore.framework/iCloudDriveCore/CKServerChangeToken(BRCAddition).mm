@interface CKServerChangeToken(BRCAddition)
+ (uint64_t)newFromSqliteStatement:()BRCAddition atIndex:;
+ (uint64_t)newFromSqliteValue:()BRCAddition;
- (id)descriptionWithContext:()BRCAddition;
- (void)sqliteBind:()BRCAddition index:;
@end

@implementation CKServerChangeToken(BRCAddition)

- (id)descriptionWithContext:()BRCAddition
{
  v4 = a3;
  v5 = [a1 data];
  if ([v5 length] == 33)
  {
    v6 = [v5 bytes];
    v7 = *v6;
    if (v7 == 1)
    {
      v8 = bswap64(*(v6 + 1));
      v9 = *(v6 + 9);
      if (v9 == -129)
      {
        v10 = @"current";
      }

      else
      {
        v22 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:bswap64(v9)];
        v23 = [v22 stringValue];
        v24 = [BRCDumpContext highlightedString:v23 type:1 context:v4];

        v10 = 0;
      }

      v25 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v8];
      v26 = [v25 stringValue];
      v18 = [BRCDumpContext highlightedString:v26 type:1 context:v4];

      v21 = MEMORY[0x277CCACA8];
      v30 = v18;
      v31 = v10;
      v19 = @"<%@,%@>";
      goto LABEL_14;
    }
  }

  else
  {
    if ([v5 length] != 17)
    {
      v17 = MEMORY[0x277CCACA8];
      v20 = [v5 length];
      v18 = [v5 base64EncodedStringWithOptions:0];
      v30 = v20;
      v31 = v18;
      v19 = @"unkown-token-size:%lu (%@)";
      goto LABEL_11;
    }

    v11 = [v5 bytes];
    v7 = *v11;
    if (v7 == 101)
    {
      v12 = *(v11 + 1);
      v13 = *(v11 + 9);
      if (v12 == -1)
      {
        v16 = @"beginning";
      }

      else
      {
        v14 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:bswap64(v12)];
        v15 = [v14 stringValue];
        v16 = [BRCDumpContext highlightedString:v15 type:1 context:v4];
      }

      if (v13 == -1)
      {
        v18 = @"beginning";
      }

      else
      {
        v29 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:bswap64(v13)];
        v18 = [v29 stringValue];
      }

      v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"<%@, %@>", v16, v18];

      goto LABEL_15;
    }
  }

  v17 = MEMORY[0x277CCACA8];
  v18 = [v5 base64EncodedStringWithOptions:0];
  v30 = v7;
  v31 = v18;
  v19 = @"unkown-token-version:%d (%@)";
LABEL_11:
  v21 = v17;
LABEL_14:
  v27 = [v21 stringWithFormat:v19, v30, v31];
LABEL_15:

  return v27;
}

- (void)sqliteBind:()BRCAddition index:
{
  v6 = [a1 data];
  [v6 sqliteBind:a3 index:a4];
}

+ (uint64_t)newFromSqliteValue:()BRCAddition
{
  v0 = [MEMORY[0x277CBEA90] newFromSqliteValue:?];
  if (v0)
  {
    v1 = [objc_alloc(MEMORY[0x277CBC670]) initWithData:v0];
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

+ (uint64_t)newFromSqliteStatement:()BRCAddition atIndex:
{
  v0 = [MEMORY[0x277CBEA90] newFromSqliteStatement:? atIndex:?];
  if (v0)
  {
    v1 = [objc_alloc(MEMORY[0x277CBC670]) initWithData:v0];
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

@end