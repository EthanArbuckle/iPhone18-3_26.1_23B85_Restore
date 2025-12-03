@interface LSApplicationRecord(SBHSimpleApplicationDataSource)
- (uint64_t)sbh_isValidType;
@end

@implementation LSApplicationRecord(SBHSimpleApplicationDataSource)

- (uint64_t)sbh_isValidType
{
  typeForInstallMachinery = [self typeForInstallMachinery];
  if ([typeForInstallMachinery isEqualToString:*MEMORY[0x1E69635B8]])
  {
    v2 = 1;
  }

  else
  {
    v2 = [typeForInstallMachinery isEqualToString:*MEMORY[0x1E69635A8]];
  }

  return v2;
}

@end