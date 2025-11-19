@interface PPConnectionsUtils
+ (BOOL)isClientAuthorizedForSemanticTriggers:(id)a3;
+ (BOOL)isValidLinguisticQuery:(id)a3;
+ (BOOL)shouldAggregateLabel:(id)a3 withValue:(id)a4 query:(id)a5;
+ (id)supportedLocationSemanticTypes;
+ (id)triggerTypeFromQuery:(id)a3;
+ (unsigned)locationFieldFromSemanticTag:(unsigned __int8)a3;
@end

@implementation PPConnectionsUtils

+ (unsigned)locationFieldFromSemanticTag:(unsigned __int8)a3
{
  if ((a3 - 1) > 0x10)
  {
    return 0;
  }

  else
  {
    return byte_232418770[(a3 - 1)];
  }
}

+ (id)triggerTypeFromQuery:(id)a3
{
  v3 = a3;
  if ([objc_opt_class() isValidLinguisticQuery:v3])
  {
    if ([v3 subtype] == 6)
    {
      if ([v3 fields])
      {
        v4 = @"phone";
      }

      else if (([v3 fields] & 4) != 0)
      {
        v4 = @"location";
      }

      else
      {
        v4 = @"unknown";
      }
    }

    else
    {
      v4 = @"unknown";
      if ([v3 subtype] == 7 && (objc_msgSend(v3, "fields") & 4) != 0)
      {
        v4 = @"address";
      }
    }
  }

  else
  {
    v5 = [objc_opt_class() supportedLocationSemanticTypes];
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{objc_msgSend(v3, "semanticTag")}];
    v7 = [v5 containsObject:v6];

    if (v7)
    {
      v4 = @"semantic";
    }

    else
    {
      v4 = @"unknown";
    }
  }

  return v4;
}

+ (BOOL)shouldAggregateLabel:(id)a3 withValue:(id)a4 query:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if ([objc_opt_class() isValidLinguisticQuery:v9] && objc_msgSend(v9, "subtype") != 7)
  {
    v12 = [v9 fields];
    LOBYTE(v10) = 0;
    if (v7 && (v12 & 1) == 0)
    {
      v10 = [v7 isEqualToString:v8] ^ 1;
    }
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10;
}

+ (BOOL)isValidLinguisticQuery:(id)a3
{
  v3 = a3;
  if ([v3 type] == 3 && (objc_msgSend(v3, "subtype") == 6 || objc_msgSend(v3, "subtype") == 7))
  {
    if ([v3 fields])
    {
      LOBYTE(v4) = 1;
    }

    else
    {
      v4 = ([v3 fields] >> 2) & 1;
    }
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

+ (BOOL)isClientAuthorizedForSemanticTriggers:(id)a3
{
  v3 = a3;
  v4 = [v3 bundleIdentifier];
  if ([v4 isEqualToString:*MEMORY[0x277D3A698]])
  {
    v5 = [v3 semanticTag] == 1;
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

+ (id)supportedLocationSemanticTypes
{
  if (supportedLocationSemanticTypes_onceToken != -1)
  {
    dispatch_once(&supportedLocationSemanticTypes_onceToken, &__block_literal_global_2972);
  }

  v3 = supportedLocationSemanticTypes_supportedLocationSemanticTypes;

  return v3;
}

void __52__PPConnectionsUtils_supportedLocationSemanticTypes__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{&unk_284783AC8, &unk_284783AE0, &unk_284783AF8, &unk_284783B10, &unk_284783B28, &unk_284783B40, &unk_284783B58, &unk_284783B70, 0}];
  objc_autoreleasePoolPop(v0);
  v2 = supportedLocationSemanticTypes_supportedLocationSemanticTypes;
  supportedLocationSemanticTypes_supportedLocationSemanticTypes = v1;
}

@end