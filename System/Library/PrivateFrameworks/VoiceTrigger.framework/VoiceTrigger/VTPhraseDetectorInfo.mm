@interface VTPhraseDetectorInfo
- (VTPhraseDetectorInfo)initWithPhraseConfig:(id)config;
@end

@implementation VTPhraseDetectorInfo

- (VTPhraseDetectorInfo)initWithPhraseConfig:(id)config
{
  configCopy = config;
  v9.receiver = self;
  v9.super_class = VTPhraseDetectorInfo;
  v6 = [(VTPhraseDetectorInfo *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_phraseConfig, config);
    v7->_effectiveKeywordThreshold = INFINITY;
    v7->_hasPendingNearMiss = 0;
  }

  return v7;
}

@end