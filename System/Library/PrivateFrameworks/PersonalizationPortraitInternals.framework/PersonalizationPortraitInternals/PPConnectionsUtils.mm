@interface PPConnectionsUtils
+ (BOOL)isClientAuthorizedForSemanticTriggers:(id)triggers;
+ (BOOL)isValidLinguisticQuery:(id)query;
+ (BOOL)shouldAggregateLabel:(id)label withValue:(id)value query:(id)query;
+ (id)supportedLocationSemanticTypes;
+ (id)triggerTypeFromQuery:(id)query;
+ (unsigned)locationFieldFromSemanticTag:(unsigned __int8)tag;
@end

@implementation PPConnectionsUtils

+ (unsigned)locationFieldFromSemanticTag:(unsigned __int8)tag
{
  if ((tag - 1) > 0x10)
  {
    return 0;
  }

  else
  {
    return byte_232418770[(tag - 1)];
  }
}

+ (id)triggerTypeFromQuery:(id)query
{
  queryCopy = query;
  if ([objc_opt_class() isValidLinguisticQuery:queryCopy])
  {
    if ([queryCopy subtype] == 6)
    {
      if ([queryCopy fields])
      {
        v4 = @"phone";
      }

      else if (([queryCopy fields] & 4) != 0)
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
      if ([queryCopy subtype] == 7 && (objc_msgSend(queryCopy, "fields") & 4) != 0)
      {
        v4 = @"address";
      }
    }
  }

  else
  {
    supportedLocationSemanticTypes = [objc_opt_class() supportedLocationSemanticTypes];
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{objc_msgSend(queryCopy, "semanticTag")}];
    v7 = [supportedLocationSemanticTypes containsObject:v6];

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

+ (BOOL)shouldAggregateLabel:(id)label withValue:(id)value query:(id)query
{
  labelCopy = label;
  valueCopy = value;
  queryCopy = query;
  if ([objc_opt_class() isValidLinguisticQuery:queryCopy] && objc_msgSend(queryCopy, "subtype") != 7)
  {
    fields = [queryCopy fields];
    LOBYTE(v10) = 0;
    if (labelCopy && (fields & 1) == 0)
    {
      v10 = [labelCopy isEqualToString:valueCopy] ^ 1;
    }
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10;
}

+ (BOOL)isValidLinguisticQuery:(id)query
{
  queryCopy = query;
  if ([queryCopy type] == 3 && (objc_msgSend(queryCopy, "subtype") == 6 || objc_msgSend(queryCopy, "subtype") == 7))
  {
    if ([queryCopy fields])
    {
      LOBYTE(v4) = 1;
    }

    else
    {
      v4 = ([queryCopy fields] >> 2) & 1;
    }
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

+ (BOOL)isClientAuthorizedForSemanticTriggers:(id)triggers
{
  triggersCopy = triggers;
  bundleIdentifier = [triggersCopy bundleIdentifier];
  if ([bundleIdentifier isEqualToString:*MEMORY[0x277D3A698]])
  {
    v5 = [triggersCopy semanticTag] == 1;
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