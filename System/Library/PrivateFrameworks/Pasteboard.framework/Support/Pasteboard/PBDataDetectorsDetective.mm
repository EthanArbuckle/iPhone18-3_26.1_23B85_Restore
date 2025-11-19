@interface PBDataDetectorsDetective
+ (id)typeForResult:(id)a3;
- (id)detectedPatternValuesInValue:(id)a3;
@end

@implementation PBDataDetectorsDetective

+ (id)typeForResult:(id)a3
{
  [a3 coreResult];
  Category = DDResultGetCategory();
  if (Category > 3)
  {
    switch(Category)
    {
      case 4:
        return @"com.apple.uikit.pasteboard-detection-pattern.dd.event";
      case 5:
        if (DDResultHasType())
        {
          return @"com.apple.uikit.pasteboard-detection-pattern.dd.flight";
        }

        else if (DDResultHasType())
        {
          return @"com.apple.uikit.pasteboard-detection-pattern.dd.shipment";
        }

        else
        {
          return 0;
        }

      case 6:
        return @"com.apple.uikit.pasteboard-detection-pattern.dd.money";
      default:
        return 0;
    }
  }

  else if (Category == 1)
  {
    if (DDResultHasType())
    {
      return @"com.apple.uikit.pasteboard-detection-pattern.dd.email";
    }

    else
    {
      return @"com.apple.uikit.pasteboard-detection-pattern.dd.link";
    }
  }

  else
  {
    v4 = @"com.apple.uikit.pasteboard-detection-pattern.dd.address";
    if (Category != 3)
    {
      v4 = 0;
    }

    if (Category == 2)
    {
      return @"com.apple.uikit.pasteboard-detection-pattern.dd.phone";
    }

    else
    {
      return v4;
    }
  }
}

- (id)detectedPatternValuesInValue:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v4 = [v3 length]) != 0)
  {
    v5 = v4;
    v6 = [[DDScannerServiceConfiguration alloc] initWithScannerType:0 passiveIntent:0];
    [v6 setTimeout:DDScannerSmallTimeout];
    if (v5 >= 0x400)
    {
      v7 = 1024;
    }

    else
    {
      v7 = v5;
    }

    v8 = [DDScannerService scanString:v3 range:0 configuration:v7, v6, v6];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v9 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = 0;
      v12 = *v24;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v24 != v12)
          {
            objc_enumerationMutation(v8);
          }

          v14 = *(*(&v23 + 1) + 8 * i);
          v15 = [PBDataDetectorsDetective typeForResult:v14];
          if (v15)
          {
            if (v11)
            {
              v16 = [v11 objectForKeyedSubscript:v15];
              v17 = v16;
              if (v16)
              {
                [v16 addObject:v14];
              }

              else
              {
                v18 = [NSMutableArray arrayWithObject:v14];
                [v11 setObject:v18 forKeyedSubscript:v15];
              }
            }

            else
            {
              v17 = [NSMutableArray arrayWithObject:v14];
              v11 = [NSMutableDictionary dictionaryWithObject:v17 forKey:v15];
            }
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v10);
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    v19 = v11;
  }

  else
  {
    v19 = &__NSDictionary0__struct;
  }

  v20 = v19;

  return v19;
}

@end