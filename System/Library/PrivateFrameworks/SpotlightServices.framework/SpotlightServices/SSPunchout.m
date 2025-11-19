@interface SSPunchout
+ (id)punchoutFromSFPunchout:(id)a3;
@end

@implementation SSPunchout

+ (id)punchoutFromSFPunchout:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = objc_alloc_init(SSPunchout);
    v5 = [v3 name];
    [(SFPunchout *)v4 setName:v5];

    v6 = [v3 bundleIdentifier];
    [(SFPunchout *)v4 setBundleIdentifier:v6];

    v7 = [v3 label];
    [(SFPunchout *)v4 setLabel:v7];

    v8 = [v3 urls];
    [(SFPunchout *)v4 setUrls:v8];

    v9 = [v3 userActivityData];
    [(SFPunchout *)v4 setUserActivityData:v9];

    v10 = [v3 actionTarget];
    [(SFPunchout *)v4 setActionTarget:v10];

    -[SFPunchout setIsRunnableInBackground:](v4, "setIsRunnableInBackground:", [v3 isRunnableInBackground]);
    -[SFPunchout setHasClip:](v4, "setHasClip:", [v3 hasClip]);
    v11 = [v3 forceOpenInBrowser];

    [(SFPunchout *)v4 setForceOpenInBrowser:v11];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end