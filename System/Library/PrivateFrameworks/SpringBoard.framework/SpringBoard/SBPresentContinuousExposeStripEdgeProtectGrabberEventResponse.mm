@interface SBPresentContinuousExposeStripEdgeProtectGrabberEventResponse
- (id)initForInitialPresentation:(BOOL)presentation;
@end

@implementation SBPresentContinuousExposeStripEdgeProtectGrabberEventResponse

- (id)initForInitialPresentation:(BOOL)presentation
{
  v5.receiver = self;
  v5.super_class = SBPresentContinuousExposeStripEdgeProtectGrabberEventResponse;
  result = [(SBChainableModifierEventResponse *)&v5 init];
  if (result)
  {
    *(result + 40) = presentation;
  }

  return result;
}

@end