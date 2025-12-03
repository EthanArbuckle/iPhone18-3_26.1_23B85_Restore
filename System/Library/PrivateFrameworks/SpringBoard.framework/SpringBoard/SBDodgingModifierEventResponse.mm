@interface SBDodgingModifierEventResponse
- (id)description;
@end

@implementation SBDodgingModifierEventResponse

- (id)description
{
  v8.receiver = self;
  v8.super_class = SBDodgingModifierEventResponse;
  v3 = [(SBChainableModifierEventResponse *)&v8 description];
  type = [(SBDodgingModifierEventResponse *)self type];
  v5 = @"Generic";
  if (type == 1)
  {
    v5 = @"Invalidation";
  }

  if (type == 2)
  {
    v5 = @"ScheduleEvent";
  }

  v6 = [v3 stringByAppendingFormat:@" %@", v5];

  return v6;
}

@end