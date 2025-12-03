@interface SBRebootContext
- (BOOL)isEqual:(id)equal;
- (SBRebootContext)initWithReason:(id)reason;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation SBRebootContext

- (SBRebootContext)initWithReason:(id)reason
{
  reasonCopy = reason;
  v9.receiver = self;
  v9.super_class = SBRebootContext;
  v6 = [(SBRebootContext *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_reason, reason);
  }

  return v7;
}

- (id)description
{
  if (self->_isDark)
  {
    v2 = @"YES";
  }

  else
  {
    v2 = @"NO";
  }

  return [MEMORY[0x277CCACA8] stringWithFormat:@"<SBRebootContext:%p - reason:'%@'; dark:%@>", self, self->_reason, v2];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [MEMORY[0x277CF0C20] builderWithObject:self ofExpectedClass:objc_opt_class()];
  reason = self->_reason;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __27__SBRebootContext_isEqual___block_invoke;
  v20[3] = &unk_2783A91C8;
  v7 = equalCopy;
  v21 = v7;
  v8 = [v5 appendObject:reason counterpart:v20];
  isDark = self->_isDark;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __27__SBRebootContext_isEqual___block_invoke_2;
  v18[3] = &unk_2783ACE58;
  v10 = v7;
  v19 = v10;
  v11 = [v5 appendBool:isDark counterpart:v18];
  fromOTASoftwareUpdate = self->_fromOTASoftwareUpdate;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __27__SBRebootContext_isEqual___block_invoke_3;
  v16[3] = &unk_2783ACE58;
  v17 = v10;
  v13 = v10;
  v14 = [v5 appendBool:fromOTASoftwareUpdate counterpart:v16];
  LOBYTE(fromOTASoftwareUpdate) = [v5 isEqual];

  return fromOTASoftwareUpdate;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[SBRebootContext alloc] initWithReason:self->_reason];
  [(SBRebootContext *)v4 setDark:self->_isDark];
  return v4;
}

@end