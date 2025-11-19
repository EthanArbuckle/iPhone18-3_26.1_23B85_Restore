@interface LSApplicationRecord(SBHSimpleApplicationDataSource)
- (uint64_t)sbh_isValidType;
@end

@implementation LSApplicationRecord(SBHSimpleApplicationDataSource)

- (uint64_t)sbh_isValidType
{
  v1 = [a1 typeForInstallMachinery];
  if ([v1 isEqualToString:*MEMORY[0x1E69635B8]])
  {
    v2 = 1;
  }

  else
  {
    v2 = [v1 isEqualToString:*MEMORY[0x1E69635A8]];
  }

  return v2;
}

@end