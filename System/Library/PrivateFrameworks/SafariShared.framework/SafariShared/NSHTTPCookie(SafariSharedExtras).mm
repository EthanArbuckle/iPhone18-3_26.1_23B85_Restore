@interface NSHTTPCookie(SafariSharedExtras)
- (uint64_t)safari_belongsToDomain:()SafariSharedExtras;
@end

@implementation NSHTTPCookie(SafariSharedExtras)

- (uint64_t)safari_belongsToDomain:()SafariSharedExtras
{
  v4 = a3;
  domain = [self domain];
  if ([domain length] && objc_msgSend(v4, "length"))
  {
    if ([domain hasPrefix:@"."])
    {
      v6 = [domain substringFromIndex:1];
    }

    else
    {
      v6 = domain;
    }

    v8 = v6;
    safari_highLevelDomainFromHost = [v6 safari_highLevelDomainFromHost];
    v10 = safari_highLevelDomainFromHost;
    if (safari_highLevelDomainFromHost)
    {
      v11 = safari_highLevelDomainFromHost;

      v8 = v11;
    }

    v7 = [v4 safari_isHostOrSubdomainOfHost:v8];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end