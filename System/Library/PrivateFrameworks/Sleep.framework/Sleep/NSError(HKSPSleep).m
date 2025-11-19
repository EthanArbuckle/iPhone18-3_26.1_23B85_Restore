@interface NSError(HKSPSleep)
- (BOOL)hksp_isHealthDatabaseInaccessibleError;
@end

@implementation NSError(HKSPSleep)

- (BOOL)hksp_isHealthDatabaseInaccessibleError
{
  v2 = [a1 domain];
  if ([v2 isEqualToString:*MEMORY[0x277CCBDB0]])
  {
    v3 = [a1 code] == 6;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end