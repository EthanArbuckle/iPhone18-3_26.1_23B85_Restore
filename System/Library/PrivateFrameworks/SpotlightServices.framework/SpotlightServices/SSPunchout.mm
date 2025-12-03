@interface SSPunchout
+ (id)punchoutFromSFPunchout:(id)punchout;
@end

@implementation SSPunchout

+ (id)punchoutFromSFPunchout:(id)punchout
{
  if (punchout)
  {
    punchoutCopy = punchout;
    v4 = objc_alloc_init(SSPunchout);
    name = [punchoutCopy name];
    [(SFPunchout *)v4 setName:name];

    bundleIdentifier = [punchoutCopy bundleIdentifier];
    [(SFPunchout *)v4 setBundleIdentifier:bundleIdentifier];

    label = [punchoutCopy label];
    [(SFPunchout *)v4 setLabel:label];

    urls = [punchoutCopy urls];
    [(SFPunchout *)v4 setUrls:urls];

    userActivityData = [punchoutCopy userActivityData];
    [(SFPunchout *)v4 setUserActivityData:userActivityData];

    actionTarget = [punchoutCopy actionTarget];
    [(SFPunchout *)v4 setActionTarget:actionTarget];

    -[SFPunchout setIsRunnableInBackground:](v4, "setIsRunnableInBackground:", [punchoutCopy isRunnableInBackground]);
    -[SFPunchout setHasClip:](v4, "setHasClip:", [punchoutCopy hasClip]);
    forceOpenInBrowser = [punchoutCopy forceOpenInBrowser];

    [(SFPunchout *)v4 setForceOpenInBrowser:forceOpenInBrowser];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end