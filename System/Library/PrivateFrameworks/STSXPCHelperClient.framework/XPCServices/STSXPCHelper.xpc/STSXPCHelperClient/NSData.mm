@interface NSData
+ (NSData)dataWithSTSNDEFRecord:(id)record;
+ (NSData)dataWithSTSNDEFRecords:(id)records;
+ (id)STS_dataFromHexString:(id)string;
- (id)STS_asHexString;
- (id)STS_reverseBytes;
- (id)cborEncodeToBstrCbor;
- (id)encodeToBstrCbor;
@end

@implementation NSData

+ (NSData)dataWithSTSNDEFRecord:(id)record
{
  recordCopy = record;
  v4 = +[NSMutableData data];
  v28 = 0;
  header = [recordCopy header];
  [v4 appendBytes:&header length:1];
  type = [recordCopy type];
  if (type)
  {
  }

  else if (![recordCopy typeNameFormat])
  {
    v28 = 0;
    [v4 appendBytes:&v28 length:1];
    v28 = 0;
    [v4 appendBytes:&v28 length:1];
    goto LABEL_22;
  }

  type2 = [recordCopy type];
  v28 = [type2 length];

  [v4 appendBytes:&v28 length:1];
  if ([recordCopy shortRecord])
  {
    v28 = 0;
    payload = [recordCopy payload];
    v8 = [payload length];

    if (v8)
    {
      payload2 = [recordCopy payload];
      v28 = [payload2 length];
    }
  }

  else
  {
    payload3 = [recordCopy payload];
    v11 = [payload3 length];

    if (v11)
    {
      payload4 = [recordCopy payload];
      v13 = [payload4 length];
    }

    else
    {
      v13 = 0;
    }

    v28 = HIBYTE(v13);
    [v4 appendBytes:&v28 length:1];
    v28 = BYTE2(v13);
    [v4 appendBytes:&v28 length:1];
    v28 = BYTE1(v13);
    [v4 appendBytes:&v28 length:1];
    v28 = v13;
  }

  [v4 appendBytes:&v28 length:1];
  if ([recordCopy _idLengthPresent])
  {
    identifier = [recordCopy identifier];
    v15 = [identifier length];

    if (v15)
    {
      identifier2 = [recordCopy identifier];
      v28 = [identifier2 length];

      [v4 appendBytes:&v28 length:1];
    }
  }

  type3 = [recordCopy type];
  v18 = [type3 length];

  if (v18)
  {
    type4 = [recordCopy type];
    [v4 appendData:type4];
  }

  if ([recordCopy _idLengthPresent])
  {
    identifier3 = [recordCopy identifier];
    v21 = [identifier3 length];

    if (v21)
    {
      identifier4 = [recordCopy identifier];
      [v4 appendData:identifier4];
    }
  }

  payload5 = [recordCopy payload];
  v24 = [payload5 length];

  if (v24)
  {
    payload6 = [recordCopy payload];
    [v4 appendData:payload6];
  }

LABEL_22:

  return v4;
}

+ (NSData)dataWithSTSNDEFRecords:(id)records
{
  recordsCopy = records;
  v4 = objc_opt_new();
  if ([recordsCopy count])
  {
    v5 = 0;
    do
    {
      if (!v5)
      {
        v6 = [recordsCopy objectAtIndexedSubscript:0];
        [v6 setMessageBegin:1];
      }

      if (v5 == [recordsCopy count] - 1)
      {
        v7 = [recordsCopy objectAtIndexedSubscript:v5];
        [v7 setMessageEnd:1];
      }

      v8 = [recordsCopy objectAtIndexedSubscript:v5];
      v9 = [NSData dataWithSTSNDEFRecord:v8];
      [v4 appendData:v9];

      ++v5;
    }

    while (v5 < [recordsCopy count]);
  }

  v10 = [v4 copy];

  return v10;
}

- (id)cborEncodeToBstrCbor
{
  v2 = [CBOR cborWithData:self];
  v3 = [CBOR cborWithInteger:24];
  [v2 setTag:v3];

  return v2;
}

- (id)encodeToBstrCbor
{
  cborEncodeToBstrCbor = [(NSData *)self cborEncodeToBstrCbor];
  v3 = [NSData dataWithCBOR:cborEncodeToBstrCbor];

  return v3;
}

+ (id)STS_dataFromHexString:(id)string
{
  stringCopy = string;
  v4 = [stringCopy length];
  if (!v4 || (v4 & 1) != 0)
  {
    sub_100024938(OS_LOG_TYPE_ERROR, 0, "+[NSData(STSExtension) STS_dataFromHexString:]", 25, @"String is of invalid length=%ld", v5, v6, v7, v4);
    v18 = 0;
    goto LABEL_16;
  }

  v8 = [[NSMutableData alloc] initWithLength:v4 >> 1];
  v12 = v8;
  if (!v8)
  {
    sub_100024938(OS_LOG_TYPE_ERROR, 0, "+[NSData(STSExtension) STS_dataFromHexString:]", 31, @"Memory allocation request failed.", v9, v10, v11, v21);
LABEL_14:
    v18 = 0;
    goto LABEL_15;
  }

  mutableBytes = [v8 mutableBytes];
  uTF8String = [stringCopy UTF8String];
  __str[2] = 0;
  v15 = *uTF8String;
  if (*uTF8String)
  {
    v16 = uTF8String + 2;
    do
    {
      __str[0] = v15;
      v17 = *(v16 - 1);
      __str[1] = *(v16 - 1);
      if ((v15 & 0x80) != 0)
      {
        goto LABEL_14;
      }

      v18 = 0;
      if ((_DefaultRuneLocale.__runetype[v15] & 0x10000) == 0 || v17 < 0)
      {
        goto LABEL_15;
      }

      if ((_DefaultRuneLocale.__runetype[v17] & 0x10000) == 0)
      {
        goto LABEL_14;
      }

      *mutableBytes++ = strtoul(__str, 0, 16);
      v19 = *v16;
      v16 += 2;
      v15 = v19;
    }

    while (v19);
  }

  v18 = [v12 copy];
LABEL_15:

LABEL_16:

  return v18;
}

- (id)STS_asHexString
{
  v3 = [(NSData *)self length];
  if (!v3)
  {
    goto LABEL_7;
  }

  v4 = v3;
  v5 = [(NSData *)self length];
  v6 = malloc_type_malloc((2 * v5) | 1, 0x100004077774924uLL);
  if (!v6)
  {
    sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[NSData(STSExtension) STS_asHexString]", 65, self, @"Memory allocation request failed.", v7, v8, v15);
LABEL_7:
    v13 = &stru_100059C08;
    goto LABEL_8;
  }

  v9 = v6;
  v6[2 * v5] = 0;
  bytes = [(NSData *)self bytes];
  v11 = v9;
  do
  {
    v12 = *bytes++;
    sprintf(v11, "%02X", v12);
    v11 += 2;
    --v4;
  }

  while (v4);
  v13 = [NSString stringWithUTF8String:v9];
  free(v9);
LABEL_8:

  return v13;
}

- (id)STS_reverseBytes
{
  v3 = [[NSMutableData alloc] initWithLength:{-[NSData length](self, "length")}];
  mutableBytes = [v3 mutableBytes];
  v5 = [(NSData *)self length]- 1;
  if (v5 >= 0)
  {
    do
    {
      *mutableBytes++ = (v5--)[[(NSData *)self bytes]];
    }

    while (v5 != -1);
  }

  return v3;
}

@end