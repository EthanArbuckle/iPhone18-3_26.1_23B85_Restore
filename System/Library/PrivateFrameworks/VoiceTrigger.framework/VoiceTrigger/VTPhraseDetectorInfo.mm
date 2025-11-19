@interface VTPhraseDetectorInfo
- (VTPhraseDetectorInfo)initWithPhraseConfig:(id)a3;
@end

@implementation VTPhraseDetectorInfo

- (VTPhraseDetectorInfo)initWithPhraseConfig:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = VTPhraseDetectorInfo;
  v6 = [(VTPhraseDetectorInfo *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_phraseConfig, a3);
    v7->_effectiveKeywordThreshold = INFINITY;
    v7->_hasPendingNearMiss = 0;
  }

  return v7;
}

@end