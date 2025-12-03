@interface SBScheduleEventDodgingModifierEventResponse
- (SBScheduleEventDodgingModifierEventResponse)initWithName:(id)name;
- (id)description;
@end

@implementation SBScheduleEventDodgingModifierEventResponse

- (SBScheduleEventDodgingModifierEventResponse)initWithName:(id)name
{
  nameCopy = name;
  v9.receiver = self;
  v9.super_class = SBScheduleEventDodgingModifierEventResponse;
  v5 = [(SBChainableModifierEventResponse *)&v9 init];
  if (v5)
  {
    v6 = [nameCopy copy];
    name = v5->_name;
    v5->_name = v6;
  }

  return v5;
}

- (id)description
{
  v6.receiver = self;
  v6.super_class = SBScheduleEventDodgingModifierEventResponse;
  v3 = [(SBDodgingModifierEventResponse *)&v6 description];
  v4 = [v3 stringByAppendingFormat:@" %@", self->_name];

  return v4;
}

@end