@interface SBContinuitySessionLaunchEvent
- (SBContinuitySessionLaunchEvent)initWithType:(id)a3 payload:(id)a4;
- (id)description;
@end

@implementation SBContinuitySessionLaunchEvent

- (SBContinuitySessionLaunchEvent)initWithType:(id)a3 payload:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = SBContinuitySessionLaunchEvent;
  v8 = [(SBContinuitySessionLaunchEvent *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    type = v8->_type;
    v8->_type = v9;

    objc_storeStrong(&v8->_payload, a4);
    v11 = [MEMORY[0x277CCAD78] UUID];
    identifier = v8->_identifier;
    v8->_identifier = v11;
  }

  return v8;
}

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  [v3 appendString:self->_type withName:@"type"];
  v4 = [v3 appendObject:self->_identifier withName:@"identifier"];
  v5 = [v3 build];

  return v5;
}

@end