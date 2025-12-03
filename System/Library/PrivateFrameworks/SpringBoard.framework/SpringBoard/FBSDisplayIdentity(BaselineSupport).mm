@interface FBSDisplayIdentity(BaselineSupport)
- (uint64_t)_sb_requiresBaselineController;
@end

@implementation FBSDisplayIdentity(BaselineSupport)

- (uint64_t)_sb_requiresBaselineController
{
  result = [self isRootIdentity];
  if (result)
  {
    if ([self isAirPlayDisplay] & 1) != 0 || (objc_msgSend(self, "isRestrictedAirPlayDisplay") & 1) != 0 || (objc_msgSend(self, "isiPodOnlyDisplay"))
    {
      return 1;
    }

    else
    {

      return [self isMusicOnlyDisplay];
    }
  }

  return result;
}

@end