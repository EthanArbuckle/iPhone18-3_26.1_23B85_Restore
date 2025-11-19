@interface STKCallSetupSessionAction
- (STKCallSetupSessionData)sessionData;
@end

@implementation STKCallSetupSessionAction

- (STKCallSetupSessionData)sessionData
{
  v4.receiver = self;
  v4.super_class = STKCallSetupSessionAction;
  v2 = [(STKTextSessionAction *)&v4 sessionData];

  return v2;
}

@end