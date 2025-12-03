@interface STIntroCommunicationLimitsState
+ (id)createWithEnablementStateEnabledAndLimitType:(int64_t)type;
+ (id)createWithEnablementStateNotSet;
- (id)_initWithEnablementState:(int64_t)state limitType:(int64_t)type;
@end

@implementation STIntroCommunicationLimitsState

+ (id)createWithEnablementStateNotSet
{
  v2 = [[self alloc] _initWithEnablementState:0 limitType:0];

  return v2;
}

+ (id)createWithEnablementStateEnabledAndLimitType:(int64_t)type
{
  v3 = [[self alloc] _initWithEnablementState:1 limitType:type];

  return v3;
}

- (id)_initWithEnablementState:(int64_t)state limitType:(int64_t)type
{
  v7.receiver = self;
  v7.super_class = STIntroCommunicationLimitsState;
  result = [(STIntroCommunicationLimitsState *)&v7 init];
  *(result + 1) = state;
  *(result + 2) = type;
  return result;
}

@end