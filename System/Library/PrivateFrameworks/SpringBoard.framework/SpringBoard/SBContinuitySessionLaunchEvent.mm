@interface SBContinuitySessionLaunchEvent
- (SBContinuitySessionLaunchEvent)initWithType:(id)type payload:(id)payload;
- (id)description;
@end

@implementation SBContinuitySessionLaunchEvent

- (SBContinuitySessionLaunchEvent)initWithType:(id)type payload:(id)payload
{
  typeCopy = type;
  payloadCopy = payload;
  v14.receiver = self;
  v14.super_class = SBContinuitySessionLaunchEvent;
  v8 = [(SBContinuitySessionLaunchEvent *)&v14 init];
  if (v8)
  {
    v9 = [typeCopy copy];
    type = v8->_type;
    v8->_type = v9;

    objc_storeStrong(&v8->_payload, payload);
    uUID = [MEMORY[0x277CCAD78] UUID];
    identifier = v8->_identifier;
    v8->_identifier = uUID;
  }

  return v8;
}

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  [v3 appendString:self->_type withName:@"type"];
  v4 = [v3 appendObject:self->_identifier withName:@"identifier"];
  build = [v3 build];

  return build;
}

@end