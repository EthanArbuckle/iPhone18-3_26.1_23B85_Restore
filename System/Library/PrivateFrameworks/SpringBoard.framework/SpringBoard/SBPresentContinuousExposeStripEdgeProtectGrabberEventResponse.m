@interface SBPresentContinuousExposeStripEdgeProtectGrabberEventResponse
- (id)initForInitialPresentation:(BOOL)a3;
@end

@implementation SBPresentContinuousExposeStripEdgeProtectGrabberEventResponse

- (id)initForInitialPresentation:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = SBPresentContinuousExposeStripEdgeProtectGrabberEventResponse;
  result = [(SBChainableModifierEventResponse *)&v5 init];
  if (result)
  {
    *(result + 40) = a3;
  }

  return result;
}

@end