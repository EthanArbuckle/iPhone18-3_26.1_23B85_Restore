@interface SBSLockScreenContentAction(SupportedInterfaceOrientations)
- (uint64_t)supportedInterfaceOrientations;
@end

@implementation SBSLockScreenContentAction(SupportedInterfaceOrientations)

- (uint64_t)supportedInterfaceOrientations
{
  v2 = objc_opt_class();
  v3 = [a1 configurationObject];
  v4 = SBSafeCast(v2, v3);

  v5 = [v4 objectForKey:*MEMORY[0x277D66FF8]];
  v6 = [v5 unsignedIntegerValue];

  return v6;
}

@end