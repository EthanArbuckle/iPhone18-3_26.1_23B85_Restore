@interface STKNotifySessionAction
- (STKNotifySessionData)sessionData;
@end

@implementation STKNotifySessionAction

- (STKNotifySessionData)sessionData
{
  v4.receiver = self;
  v4.super_class = STKNotifySessionAction;
  sessionData = [(STKTextSessionAction *)&v4 sessionData];

  return sessionData;
}

@end