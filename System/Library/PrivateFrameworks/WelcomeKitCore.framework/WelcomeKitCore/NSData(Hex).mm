@interface NSData(Hex)
+ (id)wl_dataFromHexEncodedData:()Hex;
+ (id)wl_dataFromHexEncodedString:()Hex;
+ (id)wl_lengthPrefixedBlobSequenceFromDataArray:()Hex;
- (BOOL)wl_blobIsComplete;
- (id)wl_arrayOfDataFromLengthPrefixedBlobSequenceWithExpectedCount:()Hex;
- (id)wl_dataFromLengthPrefixedBlob;
- (id)wl_hexEncodedData;
- (id)wl_hexEncodedString;
- (id)wl_lengthPrefixedBlob;
- (id)wl_utf8String;
@end

@implementation NSData(Hex)

- (BOOL)wl_blobIsComplete
{
  if ([a1 length] < 5)
  {
    return 0;
  }

  v2 = [a1 subdataWithRange:{0, 4}];
  v3 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v2 encoding:4];
  v4 = [v3 integerValue];
  v5 = [a1 length] == v4 + 4;

  return v5;
}

+ (id)wl_lengthPrefixedBlobSequenceFromDataArray:()Hex
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB28]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v15 + 1) + 8 * i) wl_lengthPrefixedBlob];
        [v4 appendData:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  if ([v5 count] < 2)
  {
    v11 = v4;
  }

  else
  {
    v11 = [v4 wl_lengthPrefixedBlob];
  }

  v12 = v11;

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)wl_lengthPrefixedBlob
{
  v2 = [MEMORY[0x277CBEB28] dataWithCapacity:{objc_msgSend(a1, "length") + 4}];
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%.4lu", objc_msgSend(a1, "length")];
  v4 = [v3 dataUsingEncoding:4];
  [v2 appendData:v4];

  [v2 appendData:a1];

  return v2;
}

- (id)wl_arrayOfDataFromLengthPrefixedBlobSequenceWithExpectedCount:()Hex
{
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:?];
  v6 = a1;
  v7 = v6;
  if (a3 >= 2)
  {
    v8 = [v6 wl_dataFromLengthPrefixedBlob];

    v7 = v8;
  }

  if ([v5 count] < a3)
  {
    while ([v7 length] >= 4)
    {
      v9 = [v7 subdataWithRange:{0, 4}];
      v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v9 encoding:4];
      v11 = [v10 integerValue];
      v12 = [v7 subdataWithRange:{4, objc_msgSend(v7, "length") - 4}];

      if ([v12 length] < v11)
      {

        v7 = v12;
        break;
      }

      v13 = [v12 subdataWithRange:{0, v11}];
      [v5 addObject:v13];
      v7 = [v12 subdataWithRange:{v11, objc_msgSend(v12, "length") - v11}];

      if ([v5 count] >= a3)
      {
        break;
      }
    }
  }

  if ([v7 length])
  {

    v5 = 0;
  }

  if ([v5 count] != a3)
  {

    v5 = 0;
  }

  return v5;
}

- (id)wl_dataFromLengthPrefixedBlob
{
  v1 = [a1 wl_arrayOfDataFromLengthPrefixedBlobSequenceWithExpectedCount:1];
  v2 = [v1 firstObject];

  return v2;
}

- (id)wl_hexEncodedData
{
  v1 = [a1 wl_hexEncodedString];
  v2 = [v1 dataUsingEncoding:4];

  return v2;
}

+ (id)wl_dataFromHexEncodedData:()Hex
{
  v4 = [a3 wl_utf8String];
  v5 = [a1 wl_dataFromHexEncodedString:v4];

  return v5;
}

- (id)wl_hexEncodedString
{
  v2 = 2 * [a1 length];
  v3 = malloc_type_malloc(v2, 0xEE4DBB81uLL);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __34__NSData_Hex__wl_hexEncodedString__block_invoke;
  v6[3] = &__block_descriptor_40_e29_v40__0r_v8__NSRange_QQ_16_B32l;
  v6[4] = v3;
  [a1 enumerateByteRangesUsingBlock:v6];
  v4 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v3 length:v2 encoding:4];
  free(v3);

  return v4;
}

+ (id)wl_dataFromHexEncodedString:()Hex
{
  v3 = a3;
  if ([v3 length])
  {
    _WLLog();
    v12 = 0;
    goto LABEL_17;
  }

  v4 = [v3 length] >> 1;
  v5 = malloc_type_malloc(v4, 0x3F4F812uLL);
  if (![v3 length])
  {
LABEL_14:
    v12 = [MEMORY[0x277CBEA90] dataWithBytes:v5 length:v4];
    goto LABEL_15;
  }

  v6 = 0;
  while (1)
  {
    v7 = [v3 characterAtIndex:v6];
    v16 = v7;
    if ((v7 - 48) >= 0xA)
    {
      break;
    }

    v8 = -48;
LABEL_10:
    v9 = v8 + v7;
    v10 = v6 >> 1;
    if (v6)
    {
      v11 = v5[v10] | v9;
    }

    else
    {
      v11 = 16 * v9;
    }

    v5[v10] = v11;
    if (++v6 >= [v3 length])
    {
      goto LABEL_14;
    }
  }

  if ((v7 - 97) < 6)
  {
    v8 = -87;
    goto LABEL_10;
  }

  if ((v7 - 65) <= 5)
  {
    v8 = -55;
    goto LABEL_10;
  }

  v14 = [MEMORY[0x277CCACA8] stringWithCharacters:&v16 length:1];
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v6];
  _WLLog();

  v12 = 0;
LABEL_15:
  free(v5);
LABEL_17:

  return v12;
}

- (id)wl_utf8String
{
  v1 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:a1 encoding:4];

  return v1;
}

@end