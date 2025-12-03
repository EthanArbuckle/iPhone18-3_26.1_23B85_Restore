@interface NSError(SUS)
- (BOOL)isCatalogNotFound;
- (BOOL)isUpToDate;
- (uint64_t)noMatchingUpdateFound;
@end

@implementation NSError(SUS)

- (BOOL)isUpToDate
{
  domain = [self domain];
  v3 = [domain isEqualToString:@"com.apple.softwareupdateservices.errors"];

  if (v3)
  {
    v4 = 3;
    return [self code] == v4;
  }

  domain2 = [self domain];
  v6 = [domain2 isEqualToString:*MEMORY[0x277D646E0]];

  if (v6)
  {
    v4 = 8406;
    return [self code] == v4;
  }

  return 0;
}

- (BOOL)isCatalogNotFound
{
  selfCopy = self;
  domain = [selfCopy domain];
  v3 = [domain isEqualToString:@"com.apple.softwareupdateservices.errors"];

  if (!v3)
  {
    goto LABEL_4;
  }

  if ([selfCopy code] != 57)
  {
    goto LABEL_10;
  }

  userInfo = [selfCopy userInfo];
  v5 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];

  selfCopy = v5;
  if (v5)
  {
LABEL_4:
    domain2 = [selfCopy domain];
    v7 = [domain2 isEqualToString:*MEMORY[0x277D646E0]];

    if (!v7)
    {
      goto LABEL_7;
    }

    if ([selfCopy code] != 8400)
    {
      goto LABEL_10;
    }

    userInfo2 = [selfCopy userInfo];
    v9 = [userInfo2 objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];

    selfCopy = v9;
    if (v9)
    {
LABEL_7:
      domain3 = [selfCopy domain];
      v11 = [domain3 isEqualToString:@"com.apple.MobileAssetError.Download"];

      if (v11)
      {
        if ([selfCopy code] != 44)
        {
          v12 = [selfCopy code] == 40;
          goto LABEL_11;
        }

        goto LABEL_9;
      }

LABEL_10:
      v12 = 0;
      goto LABEL_11;
    }
  }

LABEL_9:
  v12 = 1;
LABEL_11:

  return v12;
}

- (uint64_t)noMatchingUpdateFound
{
  if ([self shouldFallbackToCustomerScan])
  {
    return 1;
  }

  domain = [self domain];
  if ([domain isEqualToString:@"com.apple.softwareupdateservices.errors"])
  {
    v2 = [self code] == 105;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

@end