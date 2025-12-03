@interface FBSDisplayIdentity(NonInteractiveSupport)
- (uint64_t)sb_physicalDisplaySupportingNonInteractiveDisplayMode;
@end

@implementation FBSDisplayIdentity(NonInteractiveSupport)

- (uint64_t)sb_physicalDisplaySupportingNonInteractiveDisplayMode
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