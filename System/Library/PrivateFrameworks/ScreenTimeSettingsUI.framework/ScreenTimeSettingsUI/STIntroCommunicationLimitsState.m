@interface STIntroCommunicationLimitsState
+ (id)createWithEnablementStateEnabledAndLimitType:(int64_t)a3;
+ (id)createWithEnablementStateNotSet;
- (id)_initWithEnablementState:(int64_t)a3 limitType:(int64_t)a4;
@end

@implementation STIntroCommunicationLimitsState

+ (id)createWithEnablementStateNotSet
{
  v2 = [[a1 alloc] _initWithEnablementState:0 limitType:0];

  return v2;
}

+ (id)createWithEnablementStateEnabledAndLimitType:(int64_t)a3
{
  v3 = [[a1 alloc] _initWithEnablementState:1 limitType:a3];

  return v3;
}

- (id)_initWithEnablementState:(int64_t)a3 limitType:(int64_t)a4
{
  v7.receiver = self;
  v7.super_class = STIntroCommunicationLimitsState;
  result = [(STIntroCommunicationLimitsState *)&v7 init];
  *(result + 1) = a3;
  *(result + 2) = a4;
  return result;
}

@end