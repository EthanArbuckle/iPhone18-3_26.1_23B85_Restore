@interface NSData
+ (NSData)dataWithSTSNDEFRecord:(id)a3;
+ (NSData)dataWithSTSNDEFRecords:(id)a3;
+ (id)STS_dataFromHexString:(id)a3;
- (id)STS_asHexString;
- (id)STS_reverseBytes;
- (id)cborEncodeToBstrCbor;
- (id)encodeToBstrCbor;
@end

@implementation NSData

+ (NSData)dataWithSTSNDEFRecord:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableData data];
  v28 = 0;
  v27 = [v3 header];
  [v4 appendBytes:&v27 length:1];
  v5 = [v3 type];
  if (v5)
  {
  }

  else if (![v3 typeNameFormat])
  {
    v28 = 0;
    [v4 appendBytes:&v28 length:1];
    v28 = 0;
    [v4 appendBytes:&v28 length:1];
    goto LABEL_22;
  }

  v6 = [v3 type];
  v28 = [v6 length];

  [v4 appendBytes:&v28 length:1];
  if ([v3 shortRecord])
  {
    v28 = 0;
    v7 = [v3 payload];
    v8 = [v7 length];

    if (v8)
    {
      v9 = [v3 payload];
      v28 = [v9 length];
    }
  }

  else
  {
    v10 = [v3 payload];
    v11 = [v10 length];

    if (v11)
    {
      v12 = [v3 payload];
      v13 = [v12 length];
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
  if ([v3 _idLengthPresent])
  {
    v14 = [v3 identifier];
    v15 = [v14 length];

    if (v15)
    {
      v16 = [v3 identifier];
      v28 = [v16 length];

      [v4 appendBytes:&v28 length:1];
    }
  }

  v17 = [v3 type];
  v18 = [v17 length];

  if (v18)
  {
    v19 = [v3 type];
    [v4 appendData:v19];
  }

  if ([v3 _idLengthPresent])
  {
    v20 = [v3 identifier];
    v21 = [v20 length];

    if (v21)
    {
      v22 = [v3 identifier];
      [v4 appendData:v22];
    }
  }

  v23 = [v3 payload];
  v24 = [v23 length];

  if (v24)
  {
    v25 = [v3 payload];
    [v4 appendData:v25];
  }

LABEL_22:

  return v4;
}

+ (NSData)dataWithSTSNDEFRecords:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  if ([v3 count])
  {
    v5 = 0;
    do
    {
      if (!v5)
      {
        v6 = [v3 objectAtIndexedSubscript:0];
        [v6 setMessageBegin:1];
      }

      if (v5 == [v3 count] - 1)
      {
        v7 = [v3 objectAtIndexedSubscript:v5];
        [v7 setMessageEnd:1];
      }

      v8 = [v3 objectAtIndexedSubscript:v5];
      v9 = [NSData dataWithSTSNDEFRecord:v8];
      [v4 appendData:v9];

      ++v5;
    }

    while (v5 < [v3 count]);
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
  v2 = [(NSData *)self cborEncodeToBstrCbor];
  v3 = [NSData dataWithCBOR:v2];

  return v3;
}

+ (id)STS_dataFromHexString:(id)a3
{
  v3 = a3;
  v4 = [v3 length];
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

  v13 = [v8 mutableBytes];
  v14 = [v3 UTF8String];
  __str[2] = 0;
  v15 = *v14;
  if (*v14)
  {
    v16 = v14 + 2;
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

      *v13++ = strtoul(__str, 0, 16);
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
  v10 = [(NSData *)self bytes];
  v11 = v9;
  do
  {
    v12 = *v10++;
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
  v4 = [v3 mutableBytes];
  v5 = [(NSData *)self length]- 1;
  if (v5 >= 0)
  {
    do
    {
      *v4++ = (v5--)[[(NSData *)self bytes]];
    }

    while (v5 != -1);
  }

  return v3;
}

@end