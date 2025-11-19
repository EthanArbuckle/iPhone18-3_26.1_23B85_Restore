@interface FBSDisplayIdentity(BaselineSupport)
- (uint64_t)_sb_requiresBaselineController;
@end

@implementation FBSDisplayIdentity(BaselineSupport)

- (uint64_t)_sb_requiresBaselineController
{
  result = [a1 isRootIdentity];
  if (result)
  {
    if ([a1 isAirPlayDisplay] & 1) != 0 || (objc_msgSend(a1, "isRestrictedAirPlayDisplay") & 1) != 0 || (objc_msgSend(a1, "isiPodOnlyDisplay"))
    {
      return 1;
    }

    else
    {

      return [a1 isMusicOnlyDisplay];
    }
  }

  return result;
}

@end