@interface PPSModelURLDecoder
+ (BOOL)isDecodableMetric:(id)a3;
+ (id)decodeValue:(id)a3 withMetric:(id)a4;
+ (id)prefixDecodingDictionary;
@end

@implementation PPSModelURLDecoder

+ (BOOL)isDecodableMetric:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 category];
    if ([&unk_2870180F0 containsObject:v5])
    {
      v6 = [v4 name];
      if ([v6 isEqualToString:@"modelURL"])
      {
        v7 = [v4 subsystem];
        v8 = [v7 isEqualToString:@"ANE"];
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)prefixDecodingDictionary
{
  if (prefixDecodingDictionary_onceToken != -1)
  {
    +[PPSModelURLDecoder prefixDecodingDictionary];
  }

  v3 = prefixDecodingDictionary_modelURLPrefixDecoder;

  return v3;
}

void __46__PPSModelURLDecoder_prefixDecodingDictionary__block_invoke()
{
  v0 = prefixDecodingDictionary_modelURLPrefixDecoder;
  prefixDecodingDictionary_modelURLPrefixDecoder = &unk_287018108;
}

+ (id)decodeValue:(id)a3 withMetric:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v5 length] > 1)
    {
      v24 = v6;
      v8 = [MEMORY[0x277CCAB68] string];
      v9 = +[PPSModelURLDecoder prefixDecodingDictionary];
      v23 = [v5 componentsSeparatedByString:@"/"];
      v10 = [v23 objectAtIndex:0];
      v11 = [v10 length];
      if (v11)
      {
        v12 = v11;
        v13 = 0;
        v14 = v11;
        while (1)
        {
          v15 = v14 - 2;
          v16 = v14 >= 2 ? 2 : v14;
          v17 = [v10 substringWithRange:{v13, v16}];
          v18 = [v9 objectForKey:v17];
          if (!v18)
          {
            break;
          }

          v19 = v18;
          [v8 appendString:v18];

          v13 += 2;
          v14 = v15;
          if (v12 <= v13)
          {
            goto LABEL_13;
          }
        }

        v7 = v5;

        v20 = v23;
        v6 = v24;
      }

      else
      {
LABEL_13:
        v20 = v23;
        if ([v23 count] >= 2)
        {
          v21 = [v5 substringFromIndex:{objc_msgSend(v10, "length")}];
          [v8 appendString:v21];
        }

        v7 = v8;
        v6 = v24;
      }
    }

    else
    {
      v7 = v5;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end