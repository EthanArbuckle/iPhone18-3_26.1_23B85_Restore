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

  v5 = [a1 attributes];
  v6 = *MEMORY[0x277D288F8];
  v7 = [v5 objectForKey:*MEMORY[0x277D288F8]];
  v8 = [v7 integerValue];

  v9 = [v4 attributes];
  v10 = [v9 objectForKey:v6];
  v11 = [v10 integerValue];

  if (v8 >= v11)
  {
    if (v8 == v11)
    {
      v12 = [a1 isPremium];
      goto LABEL_7;
    }

LABEL_6:
    v12 = 1;
    goto LABEL_7;
  }

  v12 = 0;
LABEL_7:

  return v12;
}

- (BOOL)isPremium
{
  v1 = [a1 attributes];
  v2 = [v1 objectForKey:@"Footprint"];

  v3 = v2 && ([v2 isEqualToString:@"Premium"] & 1) != 0;
  return v3;
}

- (id)path
{
  v1 = [a1 getLocalUrl];
  v2 = [v1 path];

  return v2;
}

- (id)compatibilityVersion
{
  v1 = [a1 attributes];
  v2 = [v1 objectForKey:*MEMORY[0x277D288F0]];

  return v2;
}

- (id)version
{
  v1 = [a1 attributes];
  v2 = [v1 objectForKey:*MEMORY[0x277D288F8]];

  return v2;
}

- (id)footprint
{
  v1 = [a1 attributes];
  v2 = [v1 objectForKey:@"Footprint"];

  return v2;
}

- (id)languages
{
  v1 = [a1 attributes];
  v2 = [v1 objectForKey:@"Languages"];

  return v2;
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(a1, "hash")}];
  v4 = [a1 version];
  if ([a1 isVTAssetInstalled])
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  if ([a1 canBePurged])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  v7 = [a1 languages];
  v8 = [v7 componentsJoinedByString:{@", "}];
  if ([a1 isPremium])
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  v10 = [v2 stringWithFormat:@"MAAsset<%@> version: %@ installed: %@; canBePurged: %@; languages: %@; premium: %@ ", v3, v4, v5, v6, v8, v9];;

  return v10;
}

@end