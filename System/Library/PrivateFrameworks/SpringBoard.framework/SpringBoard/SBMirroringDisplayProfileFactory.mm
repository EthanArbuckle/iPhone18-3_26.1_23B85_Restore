@interface SBMirroringDisplayProfileFactory
- (BOOL)displayProfile:(id)profile shouldConnectToDisplay:(id)display;
@end

@implementation SBMirroringDisplayProfileFactory

- (BOOL)displayProfile:(id)profile shouldConnectToDisplay:(id)display
{
  identity = [display identity];
  if ([identity isRootIdentity])
  {
    if ([identity isAirPlayDisplay] & 1) != 0 || (objc_msgSend(identity, "isRestrictedAirPlayDisplay") & 1) != 0 || (objc_msgSend(identity, "isiPodOnlyDisplay"))
    {
      isMusicOnlyDisplay = 1;
    }

    else
    {
      isMusicOnlyDisplay = [identity isMusicOnlyDisplay];
    }
  }

  else
  {
    isMusicOnlyDisplay = 0;
  }

  return isMusicOnlyDisplay;
}

@end