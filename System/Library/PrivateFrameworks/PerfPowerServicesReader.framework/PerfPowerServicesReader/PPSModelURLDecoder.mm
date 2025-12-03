@interface PPSModelURLDecoder
+ (BOOL)isDecodableMetric:(id)metric;
+ (id)decodeValue:(id)value withMetric:(id)metric;
+ (id)prefixDecodingDictionary;
@end

@implementation PPSModelURLDecoder

+ (BOOL)isDecodableMetric:(id)metric
{
  metricCopy = metric;
  v4 = metricCopy;
  if (metricCopy)
  {
    category = [metricCopy category];
    if ([&unk_2870180F0 containsObject:category])
    {
      name = [v4 name];
      if ([name isEqualToString:@"modelURL"])
      {
        subsystem = [v4 subsystem];
        v8 = [subsystem isEqualToString:@"ANE"];
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

+ (id)decodeValue:(id)value withMetric:(id)metric
{
  valueCopy = value;
  metricCopy = metric;
  if (valueCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [valueCopy length] > 1)
    {
      v24 = metricCopy;
      string = [MEMORY[0x277CCAB68] string];
      v9 = +[PPSModelURLDecoder prefixDecodingDictionary];
      v23 = [valueCopy componentsSeparatedByString:@"/"];
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
          [string appendString:v18];

          v13 += 2;
          v14 = v15;
          if (v12 <= v13)
          {
            goto LABEL_13;
          }
        }

        v7 = valueCopy;

        v20 = v23;
        metricCopy = v24;
      }

      else
      {
LABEL_13:
        v20 = v23;
        if ([v23 count] >= 2)
        {
          v21 = [valueCopy substringFromIndex:{objc_msgSend(v10, "length")}];
          [string appendString:v21];
        }

        v7 = string;
        metricCopy = v24;
      }
    }

    else
    {
      v7 = valueCopy;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end