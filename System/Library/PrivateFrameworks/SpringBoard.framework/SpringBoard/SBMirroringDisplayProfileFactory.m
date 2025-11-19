@interface SBMirroringDisplayProfileFactory
- (BOOL)displayProfile:(id)a3 shouldConnectToDisplay:(id)a4;
@end

@implementation SBMirroringDisplayProfileFactory

- (BOOL)displayProfile:(id)a3 shouldConnectToDisplay:(id)a4
{
  v4 = [a4 identity];
  if ([v4 isRootIdentity])
  {
    if ([v4 isAirPlayDisplay] & 1) != 0 || (objc_msgSend(v4, "isRestrictedAirPlayDisplay") & 1) != 0 || (objc_msgSend(v4, "isiPodOnlyDisplay"))
    {
      v5 = 1;
    }

    else
    {
      v5 = [v4 isMusicOnlyDisplay];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end