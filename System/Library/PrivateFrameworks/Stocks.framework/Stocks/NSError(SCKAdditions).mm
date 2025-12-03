@interface NSError(SCKAdditions)
- (uint64_t)sck_hasUnderlyingErrorCode:()SCKAdditions;
@end

@implementation NSError(SCKAdditions)

- (uint64_t)sck_hasUnderlyingErrorCode:()SCKAdditions
{
  domain = [self domain];
  v6 = [domain isEqualToString:*MEMORY[0x277CBBF50]];

  if (!v6)
  {
    return 0;
  }

  if ([self code] != a3)
  {
    if ([self code] == 2)
    {
      userInfo = [self userInfo];
      v9 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CBBFB0]];

      allValues = [v9 allValues];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __52__NSError_SCKAdditions__sck_hasUnderlyingErrorCode___block_invoke;
      v14[3] = &__block_descriptor_40_e24_B32__0__NSError_8Q16_B24l;
      v14[4] = a3;
      v11 = [allValues indexesOfObjectsPassingTest:v14];

      v12 = [v11 count];
      v7 = v12 == [v9 count];

      return v7;
    }

    return 0;
  }

  return 1;
}

@end