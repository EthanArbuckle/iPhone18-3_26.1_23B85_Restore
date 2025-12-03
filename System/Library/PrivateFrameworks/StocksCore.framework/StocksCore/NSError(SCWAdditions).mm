@interface NSError(SCWAdditions)
- (uint64_t)sc_hasUnderlyingErrorCode:()SCWAdditions;
@end

@implementation NSError(SCWAdditions)

- (uint64_t)sc_hasUnderlyingErrorCode:()SCWAdditions
{
  domain = [self domain];
  v6 = [domain isEqualToString:*MEMORY[0x1E695B740]];

  if (!v6)
  {
    return 0;
  }

  if ([self code] != a3)
  {
    if ([self code] == 2)
    {
      userInfo = [self userInfo];
      v9 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E695B798]];

      allValues = [v9 allValues];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __51__NSError_SCWAdditions__sc_hasUnderlyingErrorCode___block_invoke;
      v12[3] = &__block_descriptor_40_e17_B16__0__NSError_8l;
      v12[4] = a3;
      v7 = [allValues scw_containsObjectPassingTest:v12];

      return v7;
    }

    return 0;
  }

  return 1;
}

@end