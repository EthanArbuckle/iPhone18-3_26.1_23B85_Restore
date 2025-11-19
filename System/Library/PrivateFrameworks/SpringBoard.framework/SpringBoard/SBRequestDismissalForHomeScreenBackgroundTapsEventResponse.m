@interface SBRequestDismissalForHomeScreenBackgroundTapsEventResponse
- (SBRequestDismissalForHomeScreenBackgroundTapsEventResponse)initWithDismissalRequested:(BOOL)a3;
@end

@implementation SBRequestDismissalForHomeScreenBackgroundTapsEventResponse

- (SBRequestDismissalForHomeScreenBackgroundTapsEventResponse)initWithDismissalRequested:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = SBRequestDismissalForHomeScreenBackgroundTapsEventResponse;
  result = [(SBChainableModifierEventResponse *)&v5 init];
  if (result)
  {
    result->_wantsDismissalForBackgroundTaps = a3;
  }

  return result;
}

@end