@interface PPSBasebandDecoder
+ (BOOL)isDecodableMetric:(id)a3;
+ (id)decodeValue:(id)a3 withMetric:(id)a4;
+ (id)flattenResult:(id)a3 withParentKey:(id)a4;
+ (id)hexStringToRawData:(id)a3;
+ (id)transformPayload:(id)a3;
@end

@implementation PPSBasebandDecoder

+ (BOOL)isDecodableMetric:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v3 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(a3, "deviceCapability")}];
  v4 = [&unk_287018090 containsObject:v3];

  return v4;
}

+ (id)decodeValue:(id)a3 withMetric:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v5 && [PPSBasebandDecoder isDecodableMetric:v6])
  {
    v7 = [v6 deviceCapability] - 18;
    if (v7 > 2)
    {
      v11 = 0;
    }

    else
    {
      v8 = off_279A11388[v7];
      v9 = [PPSBasebandDecoder hexStringToRawData:v5];
      v10 = [objc_alloc(*v8) initWithData:v9];
      v11 = [v10 dictionaryRepresentation];
    }

    v13 = [PPSBasebandDecoder transformPayload:v11];
    v12 = [PPSBasebandDecoder flattenResult:v13 withParentKey:0];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)hexStringToRawData:(id)a3
{
  v3 = a3;
  __str[2] = 0;
  v4 = [v3 length];
  v5 = [MEMORY[0x277CBEB28] dataWithCapacity:(v4 + (v4 >> 31)) >> 1];
  if (v4 >= 1)
  {
    v6 = 0;
    do
    {
      __str[0] = *([v3 UTF8String] + v6);
      __str[1] = *([v3 UTF8String] + v6 + 1);
      v8 = strtoul(__str, 0, 16);
      [v5 appendBytes:&v8 length:1];
      v6 += 2;
    }

    while (v6 < v4);
  }

  return v5;
}

+ (id)transformPayload:(id)a3
{
  v3 = a3;
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__0;
  v11 = __Block_byref_object_dispose__0;
  v12 = [MEMORY[0x277CBEB38] dictionary];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __39__PPSBasebandDecoder_transformPayload___block_invoke;
  v6[3] = &unk_279A11340;
  v6[4] = &v7;
  [v3 enumerateKeysAndObjectsUsingBlock:v6];
  v4 = [v8[5] copy];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __39__PPSBasebandDecoder_transformPayload___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v19 = a2;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = a3;
  v5 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v26;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v26 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v25 + 1) + 8 * i);
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v10 = v9;
        v11 = [v10 countByEnumeratingWithState:&v21 objects:v29 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v22;
          do
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v22 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v21 + 1) + 8 * j);
              v16 = [v10 objectForKeyedSubscript:{v15, v19}];
              [*(*(*(a1 + 32) + 8) + 40) setObject:v16 forKeyedSubscript:v15];
            }

            v12 = [v10 countByEnumeratingWithState:&v21 objects:v29 count:16];
          }

          while (v12);
        }
      }

      v6 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v6);
  }

  v17 = v19;
  [*(*(*(a1 + 32) + 8) + 40) setObject:v19 forKeyedSubscript:{@"metric_name", v19}];

  v18 = *MEMORY[0x277D85DE8];
}

+ (id)flattenResult:(id)a3 withParentKey:(id)a4
{
  v5 = a3;
  v6 = a4;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__0;
  v20 = __Block_byref_object_dispose__0;
  v21 = [MEMORY[0x277CBEB38] dictionary];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __50__PPSBasebandDecoder_flattenResult_withParentKey___block_invoke;
  v13 = &unk_279A11368;
  v7 = v6;
  v14 = v7;
  v15 = &v16;
  [v5 enumerateKeysAndObjectsUsingBlock:&v10];
  if ([v17[5] count])
  {
    v8 = [v17[5] copy];
  }

  else
  {
    v8 = 0;
  }

  _Block_object_dispose(&v16, 8);

  return v8;
}

void __50__PPSBasebandDecoder_flattenResult_withParentKey___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  if ([*(a1 + 32) length])
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", *(a1 + 32), v9];
  }

  else
  {
    v6 = v9;
  }

  v7 = v6;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [PPSBasebandDecoder flattenResult:v5 withParentKey:v7];
    [*(*(*(a1 + 40) + 8) + 40) addEntriesFromDictionary:v8];
  }

  else
  {
    [*(*(*(a1 + 40) + 8) + 40) setObject:v5 forKeyedSubscript:v7];
  }
}

@end