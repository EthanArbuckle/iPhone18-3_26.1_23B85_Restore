@interface NSError(PersonaKit)
- (BOOL)pr_isNetworkAvailabilityError;
- (uint64_t)pr_isInPersonaDomain;
@end

@implementation NSError(PersonaKit)

- (BOOL)pr_isNetworkAvailabilityError
{
  v2 = [a1 domain];
  v3 = [v2 isEqual:*MEMORY[0x277CCA738]];

  if (!v3)
  {
    v5 = [a1 domain];
    v6 = [v5 isEqual:@"PRPersonaDomain"];

    if (!v6)
    {
      return 0;
    }

    if ([a1 code] != -9002)
    {
      v4 = -9006;
      return [a1 code] == v4;
    }

    return 1;
  }

  if ([a1 code] == -1009 || objc_msgSend(a1, "code") == -1001 || objc_msgSend(a1, "code") == -1003 || objc_msgSend(a1, "code") == -1004 || objc_msgSend(a1, "code") == -1020 || objc_msgSend(a1, "code") == -1006)
  {
    return 1;
  }

  v4 = -1005;
  return [a1 code] == v4;
}

- (uint64_t)pr_isInPersonaDomain
{
  v1 = [a1 domain];
  v2 = [v1 isEqual:@"PRPersonaDomain"];

  return v2;
}

@end