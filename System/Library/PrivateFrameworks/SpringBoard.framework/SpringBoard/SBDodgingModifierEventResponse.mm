@interface SBDodgingModifierEventResponse
- (id)description;
@end

@implementation SBDodgingModifierEventResponse

- (id)description
{
  v8.receiver = self;
  v8.super_class = SBDodgingModifierEventResponse;
  v3 = [(SBChainableModifierEventResponse *)&v8 description];
  v4 = [(SBDodgingModifierEventResponse *)self type];
  v5 = @"Generic";
  if (v4 == 1)
  {
    v5 = @"Invalidation";
  }

  if (v4 == 2)
  {
    v5 = @"ScheduleEvent";
  }

  v6 = [v3 stringByAppendingFormat:@" %@", v5];

  return v6;
}

@end