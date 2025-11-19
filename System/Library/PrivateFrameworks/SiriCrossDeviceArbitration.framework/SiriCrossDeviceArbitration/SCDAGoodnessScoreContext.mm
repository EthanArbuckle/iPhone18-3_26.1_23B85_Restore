@interface SCDAGoodnessScoreContext
- (SCDAGoodnessScoreContext)init;
@end

@implementation SCDAGoodnessScoreContext

- (SCDAGoodnessScoreContext)init
{
  v6.receiver = self;
  v6.super_class = SCDAGoodnessScoreContext;
  v2 = [(SCDAGoodnessScoreContext *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DFD8] setWithObject:&unk_1F562E2E8];
    reasons = v2->_reasons;
    v2->_reasons = v3;

    v2->_mediaPlaybackInterruptedTime = 0.0;
    v2->_recentlyWonBySmallAmount = 0;
  }

  return v2;
}

@end