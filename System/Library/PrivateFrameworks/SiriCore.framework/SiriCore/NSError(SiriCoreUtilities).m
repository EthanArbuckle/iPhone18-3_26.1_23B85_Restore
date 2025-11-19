@interface NSError(SiriCoreUtilities)
- (uint64_t)siriCore_isNetworkDownError;
@end

@implementation NSError(SiriCoreUtilities)

- (uint64_t)siriCore_isNetworkDownError
{
  v2 = [a1 userInfo];
  v3 = [v2 objectForKey:*MEMORY[0x277CCA7E8]];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = a1;
  }

  v6 = v5;

  if ([v6 code] == 50)
  {
    v7 = [v6 domain];
    if ([v7 isEqualToString:*MEMORY[0x277CD9248]])
    {
      v8 = 1;
    }

    else
    {
      v9 = [v6 domain];
      v8 = [v9 isEqualToString:*MEMORY[0x277CCA5B8]];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end