@interface SBShutdownContext
- (BOOL)isEqual:(id)equal;
- (SBShutdownContext)initWithReason:(id)reason;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation SBShutdownContext

- (SBShutdownContext)initWithReason:(id)reason
{
  reasonCopy = reason;
  v9.receiver = self;
  v9.super_class = SBShutdownContext;
  v6 = [(SBShutdownContext *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_reason, reason);
  }

  return v7;
}

- (id)description
{
  if (self->_fromUserPowerDown)
  {
    v2 = @"YES";
  }

  else
  {
    v2 = @"NO";
  }

  return [MEMORY[0x277CCACA8] stringWithFormat:@"<SBShutdownContext:%p - reason:'%@'; fromUserPowerDown:%@>", self, self->_reason, v2];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [MEMORY[0x277CF0C20] builderWithObject:self ofExpectedClass:objc_opt_class()];
  reason = self->_reason;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __29__SBShutdownContext_isEqual___block_invoke;
  v18[3] = &unk_2783A91C8;
  v7 = equalCopy;
  v19 = v7;
  v8 = [v5 appendObject:reason counterpart:v18];
  fromUserPowerDown = self->_fromUserPowerDown;
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __29__SBShutdownContext_isEqual___block_invoke_2;
  v16 = &unk_2783ACE58;
  v17 = v7;
  v10 = v7;
  v11 = [v5 appendBool:fromUserPowerDown counterpart:&v13];
  LOBYTE(fromUserPowerDown) = [v5 isEqual];

  return fromUserPowerDown;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[SBShutdownContext alloc] initWithReason:self->_reason];
  [(SBShutdownContext *)v4 setFromUserPowerDown:self->_fromUserPowerDown];
  return v4;
}

@end