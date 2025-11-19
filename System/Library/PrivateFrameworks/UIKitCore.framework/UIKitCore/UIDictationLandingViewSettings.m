@interface UIDictationLandingViewSettings
+ (id)sharedInstance;
- (UIDictationLandingViewSettings)init;
@end

@implementation UIDictationLandingViewSettings

+ (id)sharedInstance
{
  v2 = gSettings;
  if (!gSettings)
  {
    v3 = objc_alloc_init(UIDictationLandingViewSettings);
    v4 = gSettings;
    gSettings = v3;

    v2 = gSettings;
  }

  return v2;
}

- (UIDictationLandingViewSettings)init
{
  v6.receiver = self;
  v6.super_class = UIDictationLandingViewSettings;
  v2 = [(UIDictationLandingViewSettings *)&v6 init];
  v3 = v2;
  if (v2)
  {
    [(UIDictationLandingViewSettings *)v2 setUseBlackWave:0];
    [(UIDictationLandingViewSettings *)v3 setFadeInDuration:0.416];
    [(UIDictationLandingViewSettings *)v3 setFadeOutDuration:0.2];
    [(UIDictationLandingViewSettings *)v3 setShrinkDuration:0.316];
    [(UIDictationLandingViewSettings *)v3 setColorTransitionInDuration:0.3];
    [(UIDictationLandingViewSettings *)v3 setColorTransitionOutDuration:0.3];
    [(UIDictationLandingViewSettings *)v3 setCircleRPM:83.0];
    v4 = v3;
  }

  return v3;
}

@end