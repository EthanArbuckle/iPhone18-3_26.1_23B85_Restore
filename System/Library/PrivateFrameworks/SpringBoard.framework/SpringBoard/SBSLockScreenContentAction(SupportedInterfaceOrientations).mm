@interface SBSLockScreenContentAction(SupportedInterfaceOrientations)
- (uint64_t)supportedInterfaceOrientations;
@end

@implementation SBSLockScreenContentAction(SupportedInterfaceOrientations)

- (uint64_t)supportedInterfaceOrientations
{
  v2 = objc_opt_class();
  configurationObject = [self configurationObject];
  v4 = SBSafeCast(v2, configurationObject);

  v5 = [v4 objectForKey:*MEMORY[0x277D66FF8]];
  unsignedIntegerValue = [v5 unsignedIntegerValue];

  return unsignedIntegerValue;
}

@end