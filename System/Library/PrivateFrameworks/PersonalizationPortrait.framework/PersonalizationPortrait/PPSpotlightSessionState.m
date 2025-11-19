@interface PPSpotlightSessionState
- (PPSpotlightSessionState)init;
@end

@implementation PPSpotlightSessionState

- (PPSpotlightSessionState)init
{
  v12.receiver = self;
  v12.super_class = PPSpotlightSessionState;
  v2 = [(PPSpotlightSessionState *)&v12 init];
  if (v2)
  {
    v3 = objc_opt_new();
    seenSpotlightIds = v2->_seenSpotlightIds;
    v2->_seenSpotlightIds = v3;

    v5 = objc_opt_new();
    seenBundleIds = v2->_seenBundleIds;
    v2->_seenBundleIds = v5;

    v7 = objc_opt_new();
    engagedSpotlightIds = v2->_engagedSpotlightIds;
    v2->_engagedSpotlightIds = v7;

    v9 = objc_opt_new();
    engagedBundleIds = v2->_engagedBundleIds;
    v2->_engagedBundleIds = v9;
  }

  return v2;
}

@end