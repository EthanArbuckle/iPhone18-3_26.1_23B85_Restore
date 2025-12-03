@interface NSError(HKSPSleep)
- (BOOL)hksp_isHealthDatabaseInaccessibleError;
@end

@implementation NSError(HKSPSleep)

- (BOOL)hksp_isHealthDatabaseInaccessibleError
{
  domain = [self domain];
  if ([domain isEqualToString:*MEMORY[0x277CCBDB0]])
  {
    v3 = [self code] == 6;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end