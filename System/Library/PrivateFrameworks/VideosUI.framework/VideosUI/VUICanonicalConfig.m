@interface VUICanonicalConfig
- (VUICanonicalConfig)init;
@end

@implementation VUICanonicalConfig

- (VUICanonicalConfig)init
{
  v5.receiver = self;
  v5.super_class = VUICanonicalConfig;
  v2 = [(VUICanonicalConfig *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->_videoViewOffscreenThresholdToStopPlayback = 0.5;
    v2->_playbackDelayInterval = 2.0;
    objc_storeStrong(&v2->_storeTabIdentifier, @"store");
    objc_storeStrong(&v3->_tvShowsTabIdentifier, @"tv");
  }

  return v3;
}

@end