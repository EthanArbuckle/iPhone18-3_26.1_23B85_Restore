@interface NSString(LPPrivate)
- (BOOL)_lp_hasCaseInsensitivePrefix:()LPPrivate;
- (__CFString)_lp_stringByTrimmingWhitespace;
- (float)_lp_similarityToString:()LPPrivate;
- (id)_lp_highLevelDomainFromHost;
- (id)_lp_hostByStrippingTopLevelDomain;
- (id)_lp_stringByDeletingTrailingSlash;
- (id)_lp_stringByDeletingUsernameAndPassword;
@end

@implementation NSString(LPPrivate)

- (id)_lp_highLevelDomainFromHost
{
  if ([a1 length])
  {
    if ([a1 _web_looksLikeIPAddress])
    {
      v2 = a1;
    }

    else
    {
      v3 = [a1 componentsSeparatedByString:@"."];
      v2 = [a1 _lp_highLevelDomainFromComponents:v3 indexOfFirstHighLevelDomainComponent:0 indexOfFirstTopLevelDomainComponent:0];
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (__CFString)_lp_stringByTrimmingWhitespace
{
  v1 = [a1 mutableCopy];
  CFStringTrimWhitespace(v1);

  return v1;
}

- (id)_lp_stringByDeletingUsernameAndPassword
{
  v2 = [MEMORY[0x277CCACE0] componentsWithString:a1];
  v3 = v2;
  if (v2)
  {
    [v2 setUser:0];
    [v3 setPassword:0];
    v4 = [v3 string];
  }

  else
  {
    v4 = a1;
  }

  v5 = v4;

  return v5;
}

- (id)_lp_stringByDeletingTrailingSlash
{
  if ([a1 hasSuffix:@"/"])
  {
    v2 = [a1 substringToIndex:{objc_msgSend(a1, "length") - 1}];
  }

  else
  {
    v2 = a1;
  }

  return v2;
}

- (BOOL)_lp_hasCaseInsensitivePrefix:()LPPrivate
{
  v4 = a3;
  if (v4)
  {
    v5 = [a1 rangeOfString:v4 options:9] != 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_lp_hostByStrippingTopLevelDomain
{
  if ([a1 length])
  {
    if ([a1 _web_looksLikeIPAddress])
    {
      v2 = a1;
    }

    else
    {
      v3 = [a1 componentsSeparatedByString:@"."];
      v6 = 0;
      v2 = [a1 _lp_highLevelDomainFromComponents:v3 indexOfFirstHighLevelDomainComponent:0 indexOfFirstTopLevelDomainComponent:&v6];

      if (v2)
      {
        v4 = [v3 subarrayWithRange:{0, v6}];
        v2 = [v4 componentsJoinedByString:@"."];
      }
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (float)_lp_similarityToString:()LPPrivate
{
  v4 = a3;
  v5 = [a1 length];
  v6 = [v4 length];
  if (v5 <= v6)
  {
    v5 = v6;
  }

  if (v5)
  {
    v7 = (v5 - damerauLevenshteinDistance(a1, v4)) / v5;
  }

  else
  {
    v7 = 1.0;
  }

  return v7;
}

@end