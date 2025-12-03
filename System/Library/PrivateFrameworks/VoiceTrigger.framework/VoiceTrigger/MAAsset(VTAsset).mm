@interface MAAsset(VTAsset)
- (BOOL)isPremium;
- (id)compatibilityVersion;
- (id)description;
- (id)footprint;
- (id)languages;
- (id)path;
- (id)version;
- (uint64_t)isLatestCompareTo:()VTAsset;
@end

@implementation MAAsset(VTAsset)

- (uint64_t)isLatestCompareTo:()VTAsset
{
  v4 = a3;
  if (!v4)
  {
    goto LABEL_6;
  }

  attributes = [self attributes];
  v6 = *MEMORY[0x277D288F8];
  v7 = [attributes objectForKey:*MEMORY[0x277D288F8]];
  integerValue = [v7 integerValue];

  attributes2 = [v4 attributes];
  v10 = [attributes2 objectForKey:v6];
  integerValue2 = [v10 integerValue];

  if (integerValue >= integerValue2)
  {
    if (integerValue == integerValue2)
    {
      isPremium = [self isPremium];
      goto LABEL_7;
    }

LABEL_6:
    isPremium = 1;
    goto LABEL_7;
  }

  isPremium = 0;
LABEL_7:

  return isPremium;
}

- (BOOL)isPremium
{
  attributes = [self attributes];
  v2 = [attributes objectForKey:@"Footprint"];

  v3 = v2 && ([v2 isEqualToString:@"Premium"] & 1) != 0;
  return v3;
}

- (id)path
{
  getLocalUrl = [self getLocalUrl];
  path = [getLocalUrl path];

  return path;
}

- (id)compatibilityVersion
{
  attributes = [self attributes];
  v2 = [attributes objectForKey:*MEMORY[0x277D288F0]];

  return v2;
}

- (id)version
{
  attributes = [self attributes];
  v2 = [attributes objectForKey:*MEMORY[0x277D288F8]];

  return v2;
}

- (id)footprint
{
  attributes = [self attributes];
  v2 = [attributes objectForKey:@"Footprint"];

  return v2;
}

- (id)languages
{
  attributes = [self attributes];
  v2 = [attributes objectForKey:@"Languages"];

  return v2;
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(self, "hash")}];
  version = [self version];
  if ([self isVTAssetInstalled])
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  if ([self canBePurged])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  languages = [self languages];
  v8 = [languages componentsJoinedByString:{@", "}];
  if ([self isPremium])
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  v10 = [v2 stringWithFormat:@"MAAsset<%@> version: %@ installed: %@; canBePurged: %@; languages: %@; premium: %@ ", v3, version, v5, v6, v8, v9];;

  return v10;
}

@end