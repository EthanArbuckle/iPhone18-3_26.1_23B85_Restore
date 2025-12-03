@interface SBHapticSwitcherEventResponse
- (SBHapticSwitcherEventResponse)initWithHapticType:(int64_t)type phase:(int64_t)phase;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
@end

@implementation SBHapticSwitcherEventResponse

- (SBHapticSwitcherEventResponse)initWithHapticType:(int64_t)type phase:(int64_t)phase
{
  v7.receiver = self;
  v7.super_class = SBHapticSwitcherEventResponse;
  result = [(SBChainableModifierEventResponse *)&v7 init];
  if (result)
  {
    result->_hapticType = type;
    result->_phase = phase;
    result->_hidEventSenderID = 0;
  }

  return result;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v14.receiver = self;
  v14.super_class = SBHapticSwitcherEventResponse;
  v4 = [(SBChainableModifierEventResponse *)&v14 descriptionBuilderWithMultilinePrefix:prefix];
  v5 = v4;
  hapticType = self->_hapticType;
  v7 = @"FlyIn";
  if (hapticType == 2)
  {
    v7 = @"ReduceMotion";
  }

  if (hapticType == 1)
  {
    v8 = @"EmptySwitcher";
  }

  else
  {
    v8 = v7;
  }

  [v4 appendString:v8 withName:@"hapticType"];
  phase = self->_phase;
  v10 = @"Warmup";
  if (phase == 1)
  {
    v10 = @"Actuate";
  }

  if (phase == 2)
  {
    v11 = @"Cooldown";
  }

  else
  {
    v11 = v10;
  }

  [v5 appendString:v11 withName:@"phase"];
  v12 = [v5 appendUInt64:self->_hidEventSenderID withName:@"hidEventSenderID" format:1];

  return v5;
}

@end