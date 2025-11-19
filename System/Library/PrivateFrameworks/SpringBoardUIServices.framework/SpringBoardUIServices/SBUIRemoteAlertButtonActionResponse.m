@interface SBUIRemoteAlertButtonActionResponse
- (SBUIRemoteAlertButtonActionResponse)initWithUnHandledEvents:(unint64_t)a3;
- (unint64_t)unHandledEvents;
@end

@implementation SBUIRemoteAlertButtonActionResponse

- (SBUIRemoteAlertButtonActionResponse)initWithUnHandledEvents:(unint64_t)a3
{
  v4.receiver = self;
  v4.super_class = SBUIRemoteAlertButtonActionResponse;
  return [(SBUIButtonActionResponse *)&v4 initWithUnHandledButtonEvents:a3];
}

- (unint64_t)unHandledEvents
{
  v3.receiver = self;
  v3.super_class = SBUIRemoteAlertButtonActionResponse;
  return [(SBUIButtonActionResponse *)&v3 unHandledButtonEvents];
}

@end