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
  if ([self length])
  {
    if ([self _web_looksLikeIPAddress])
    {
      selfCopy = self;
    }

    else
    {
      v3 = [self componentsSeparatedByString:@"."];
      selfCopy = [self _lp_highLevelDomainFromComponents:v3 indexOfFirstHighLevelDomainComponent:0 indexOfFirstTopLevelDomainComponent:0];
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (__CFString)_lp_stringByTrimmingWhitespace
{
  v1 = [self mutableCopy];
  CFStringTrimWhitespace(v1);

  return v1;
}

- (id)_lp_stringByDeletingUsernameAndPassword
{
  v2 = [MEMORY[0x277CCACE0] componentsWithString:self];
  v3 = v2;
  if (v2)
  {
    [v2 setUser:0];
    [v3 setPassword:0];
    selfCopy = [v3 string];
  }

  else
  {
    selfCopy = self;
  }

  v5 = selfCopy;

  return v5;
}

- (id)_lp_stringByDeletingTrailingSlash
{
  if ([self hasSuffix:@"/"])
  {
    selfCopy = [self substringToIndex:{objc_msgSend(self, "length") - 1}];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (BOOL)_lp_hasCaseInsensitivePrefix:()LPPrivate
{
  v4 = a3;
  if (v4)
  {
    v5 = [self rangeOfString:v4 options:9] != 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_lp_hostByStrippingTopLevelDomain
{
  if ([self length])
  {
    if ([self _web_looksLikeIPAddress])
    {
      selfCopy = self;
    }

    else
    {
      v3 = [self componentsSeparatedByString:@"."];
      v6 = 0;
      selfCopy = [self _lp_highLevelDomainFromComponents:v3 indexOfFirstHighLevelDomainComponent:0 indexOfFirstTopLevelDomainComponent:&v6];

      if (selfCopy)
      {
        v4 = [v3 subarrayWithRange:{0, v6}];
        selfCopy = [v4 componentsJoinedByString:@"."];
      }
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (float)_lp_similarityToString:()LPPrivate
{
  v4 = a3;
  v5 = [self length];
  v6 = [v4 length];
  if (v5 <= v6)
  {
    v5 = v6;
  }

  if (v5)
  {
    v7 = (v5 - damerauLevenshteinDistance(self, v4)) / v5;
  }

  else
  {
    v7 = 1.0;
  }

  return v7;
}

@end