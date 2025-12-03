@interface SBUIRemoteAlertButtonActionResponse
- (SBUIRemoteAlertButtonActionResponse)initWithUnHandledEvents:(unint64_t)events;
- (unint64_t)unHandledEvents;
@end

@implementation SBUIRemoteAlertButtonActionResponse

- (SBUIRemoteAlertButtonActionResponse)initWithUnHandledEvents:(unint64_t)events
{
  v4.receiver = self;
  v4.super_class = SBUIRemoteAlertButtonActionResponse;
  return [(SBUIButtonActionResponse *)&v4 initWithUnHandledButtonEvents:events];
}

- (unint64_t)unHandledEvents
{
  v3.receiver = self;
  v3.super_class = SBUIRemoteAlertButtonActionResponse;
  return [(SBUIButtonActionResponse *)&v3 unHandledButtonEvents];
}

@end