@interface SBRequestDismissalForHomeScreenBackgroundTapsEventResponse
- (SBRequestDismissalForHomeScreenBackgroundTapsEventResponse)initWithDismissalRequested:(BOOL)requested;
@end

@implementation SBRequestDismissalForHomeScreenBackgroundTapsEventResponse

- (SBRequestDismissalForHomeScreenBackgroundTapsEventResponse)initWithDismissalRequested:(BOOL)requested
{
  v5.receiver = self;
  v5.super_class = SBRequestDismissalForHomeScreenBackgroundTapsEventResponse;
  result = [(SBChainableModifierEventResponse *)&v5 init];
  if (result)
  {
    result->_wantsDismissalForBackgroundTaps = requested;
  }

  return result;
}

@end