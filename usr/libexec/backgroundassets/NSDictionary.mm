@interface NSDictionary
- (BOOL)infoDictionaryHasManagedAssetPacks;
- (BOOL)infoDictionaryUsesAppleHosting;
@end

@implementation NSDictionary

- (BOOL)infoDictionaryHasManagedAssetPacks
{
  v3 = [(NSDictionary *)self objectForKey:@"BAHasManagedAssetPacks"];
  if ([(NSDictionary *)self infoDictionaryUsesAppleHosting])
  {
    bOOLValue = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      bOOLValue = [v3 BOOLValue];
    }

    else
    {
      bOOLValue = 0;
    }
  }

  return bOOLValue;
}

- (BOOL)infoDictionaryUsesAppleHosting
{
  v2 = [(NSDictionary *)self objectForKey:@"BAUsesAppleHosting"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bOOLValue = [v2 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

@end