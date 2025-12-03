@interface NSError(PersonaKit)
- (BOOL)pr_isNetworkAvailabilityError;
- (uint64_t)pr_isInPersonaDomain;
@end

@implementation NSError(PersonaKit)

- (BOOL)pr_isNetworkAvailabilityError
{
  domain = [self domain];
  v3 = [domain isEqual:*MEMORY[0x277CCA738]];

  if (!v3)
  {
    domain2 = [self domain];
    v6 = [domain2 isEqual:@"PRPersonaDomain"];

    if (!v6)
    {
      return 0;
    }

    if ([self code] != -9002)
    {
      v4 = -9006;
      return [self code] == v4;
    }

    return 1;
  }

  if ([self code] == -1009 || objc_msgSend(self, "code") == -1001 || objc_msgSend(self, "code") == -1003 || objc_msgSend(self, "code") == -1004 || objc_msgSend(self, "code") == -1020 || objc_msgSend(self, "code") == -1006)
  {
    return 1;
  }

  v4 = -1005;
  return [self code] == v4;
}

- (uint64_t)pr_isInPersonaDomain
{
  domain = [self domain];
  v2 = [domain isEqual:@"PRPersonaDomain"];

  return v2;
}

@end