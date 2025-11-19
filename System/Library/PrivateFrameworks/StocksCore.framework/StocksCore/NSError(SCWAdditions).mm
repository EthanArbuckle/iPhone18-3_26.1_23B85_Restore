@interface NSError(SCWAdditions)
- (uint64_t)sc_hasUnderlyingErrorCode:()SCWAdditions;
@end

@implementation NSError(SCWAdditions)

- (uint64_t)sc_hasUnderlyingErrorCode:()SCWAdditions
{
  v5 = [a1 domain];
  v6 = [v5 isEqualToString:*MEMORY[0x1E695B740]];

  if (!v6)
  {
    return 0;
  }

  if ([a1 code] != a3)
  {
    if ([a1 code] == 2)
    {
      v8 = [a1 userInfo];
      v9 = [v8 objectForKeyedSubscript:*MEMORY[0x1E695B798]];

      v10 = [v9 allValues];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __51__NSError_SCWAdditions__sc_hasUnderlyingErrorCode___block_invoke;
      v12[3] = &__block_descriptor_40_e17_B16__0__NSError_8l;
      v12[4] = a3;
      v7 = [v10 scw_containsObjectPassingTest:v12];

      return v7;
    }

    return 0;
  }

  return 1;
}

@end