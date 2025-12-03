@interface NSError(SiriCoreUtilities)
- (uint64_t)siriCore_isNetworkDownError;
@end

@implementation NSError(SiriCoreUtilities)

- (uint64_t)siriCore_isNetworkDownError
{
  userInfo = [self userInfo];
  v3 = [userInfo objectForKey:*MEMORY[0x277CCA7E8]];
  v4 = v3;
  if (v3)
  {
    selfCopy = v3;
  }

  else
  {
    selfCopy = self;
  }

  v6 = selfCopy;

  if ([v6 code] == 50)
  {
    domain = [v6 domain];
    if ([domain isEqualToString:*MEMORY[0x277CD9248]])
    {
      v8 = 1;
    }

    else
    {
      domain2 = [v6 domain];
      v8 = [domain2 isEqualToString:*MEMORY[0x277CCA5B8]];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end