@interface STKCallSetupSessionAction
- (STKCallSetupSessionData)sessionData;
@end

@implementation STKCallSetupSessionAction

- (STKCallSetupSessionData)sessionData
{
  v4.receiver = self;
  v4.super_class = STKCallSetupSessionAction;
  sessionData = [(STKTextSessionAction *)&v4 sessionData];

  return sessionData;
}

@end