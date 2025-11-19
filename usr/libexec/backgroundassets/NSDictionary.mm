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
    v4 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = [v3 BOOLValue];
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

- (BOOL)infoDictionaryUsesAppleHosting
{
  v2 = [(NSDictionary *)self objectForKey:@"BAUsesAppleHosting"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 BOOLValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end