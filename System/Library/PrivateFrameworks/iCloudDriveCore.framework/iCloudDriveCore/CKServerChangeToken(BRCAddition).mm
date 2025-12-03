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
  data = [self data];
  if ([data length] == 33)
  {
    bytes = [data bytes];
    v7 = *bytes;
    if (v7 == 1)
    {
      v8 = bswap64(*(bytes + 1));
      v9 = *(bytes + 9);
      if (v9 == -129)
      {
        v10 = @"current";
      }

      else
      {
        v22 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:bswap64(v9)];
        stringValue = [v22 stringValue];
        v24 = [BRCDumpContext highlightedString:stringValue type:1 context:v4];

        v10 = 0;
      }

      v25 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v8];
      stringValue2 = [v25 stringValue];
      stringValue4 = [BRCDumpContext highlightedString:stringValue2 type:1 context:v4];

      v21 = MEMORY[0x277CCACA8];
      v30 = stringValue4;
      v31 = v10;
      v19 = @"<%@,%@>";
      goto LABEL_14;
    }
  }

  else
  {
    if ([data length] != 17)
    {
      v17 = MEMORY[0x277CCACA8];
      v20 = [data length];
      stringValue4 = [data base64EncodedStringWithOptions:0];
      v30 = v20;
      v31 = stringValue4;
      v19 = @"unkown-token-size:%lu (%@)";
      goto LABEL_11;
    }

    bytes2 = [data bytes];
    v7 = *bytes2;
    if (v7 == 101)
    {
      v12 = *(bytes2 + 1);
      v13 = *(bytes2 + 9);
      if (v12 == -1)
      {
        v16 = @"beginning";
      }

      else
      {
        v14 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:bswap64(v12)];
        stringValue3 = [v14 stringValue];
        v16 = [BRCDumpContext highlightedString:stringValue3 type:1 context:v4];
      }

      if (v13 == -1)
      {
        stringValue4 = @"beginning";
      }

      else
      {
        v29 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:bswap64(v13)];
        stringValue4 = [v29 stringValue];
      }

      v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"<%@, %@>", v16, stringValue4];

      goto LABEL_15;
    }
  }

  v17 = MEMORY[0x277CCACA8];
  stringValue4 = [data base64EncodedStringWithOptions:0];
  v30 = v7;
  v31 = stringValue4;
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
  data = [self data];
  [data sqliteBind:a3 index:a4];
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