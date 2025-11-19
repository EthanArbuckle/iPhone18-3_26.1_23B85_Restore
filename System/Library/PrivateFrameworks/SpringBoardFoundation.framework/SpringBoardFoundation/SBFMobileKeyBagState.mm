@interface SBFMobileKeyBagState
- (BOOL)isEqual:(id)a3;
- (BOOL)permanentlyBlocked;
- (BOOL)recoveryEnabled;
- (BOOL)recoveryPossible;
- (BOOL)recoveryRequired;
- (BOOL)shouldWipe;
- (SBFMobileKeyBagState)initWithKeyBagInfo:(id)a3 extended:(BOOL)a4;
- (double)backOffTime;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)publicDescription;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (int64_t)escrowCount;
- (int64_t)lockState;
- (unint64_t)failedAttemptCount;
@end

@implementation SBFMobileKeyBagState

- (int64_t)lockState
{
  if (self->_extended)
  {
    v2 = @"kSBFKeyBagInfoExtendedLockState";
  }

  else
  {
    v2 = @"kSBFKeyBagInfoLockState";
  }

  v3 = [(NSDictionary *)self->_state objectForKeyedSubscript:v2];
  v4 = [v3 integerValue];

  if (v4 <= 7)
  {
    return qword_1BEAD4060[v4];
  }

  return v4;
}

- (double)backOffTime
{
  v2 = [(NSDictionary *)self->_state objectForKeyedSubscript:@"kSBFKeyBagInfoBackOff"];
  [v2 doubleValue];
  v4 = v3;

  return v4;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [(SBFMobileKeyBagState *)self lockState];
  if (v4 > 7)
  {
    v5 = 0;
  }

  else
  {
    v5 = off_1E8080470[v4];
  }

  [v3 appendString:v5 withName:@"lockState"];
  v6 = [v3 appendBool:-[SBFMobileKeyBagState isEffectivelyLocked](self withName:{"isEffectivelyLocked"), @"isEffectivelyLocked"}];

  return v3;
}

- (unint64_t)failedAttemptCount
{
  v2 = [(NSDictionary *)self->_state objectForKeyedSubscript:@"kSBFKeyBagInfoFailedAttempts"];
  v3 = [v2 unsignedIntegerValue];

  return v3;
}

- (BOOL)permanentlyBlocked
{
  v2 = [(NSDictionary *)self->_state objectForKeyedSubscript:@"kSBFKeyBagInfoPermanentlyBlocked"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)recoveryRequired
{
  v2 = [(NSDictionary *)self->_state objectForKeyedSubscript:@"kSBFKeyBagInfoKeyBagState"];
  v3 = ([v2 longLongValue] >> 5) & 1;

  return v3;
}

- (BOOL)shouldWipe
{
  v2 = [(NSDictionary *)self->_state objectForKeyedSubscript:@"kSBFKeyBagInfoShouldWipe"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)recoveryPossible
{
  v2 = [(NSDictionary *)self->_state objectForKeyedSubscript:@"kSBFKeyBagInfoKeyBagState"];
  v3 = ([v2 longLongValue] & 0x40) == 0;

  return v3;
}

- (int64_t)escrowCount
{
  v2 = [(NSDictionary *)self->_state objectForKeyedSubscript:@"kSBFKeyBagInfoRecoveryCountdown"];
  v3 = [v2 longLongValue];

  return v3;
}

- (id)publicDescription
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [(SBFMobileKeyBagState *)self lockState];
  if (v4 > 7)
  {
    v5 = 0;
  }

  else
  {
    v5 = off_1E8080470[v4];
  }

  [v3 appendString:v5 withName:@"lockState"];
  v6 = [v3 appendBool:-[SBFMobileKeyBagState isEffectivelyLocked](self withName:{"isEffectivelyLocked"), @"isEffectivelyLocked"}];
  v7 = [v3 appendBool:-[SBFMobileKeyBagState permanentlyBlocked](self withName:{"permanentlyBlocked"), @"permanentlyBlocked"}];
  v8 = [v3 appendBool:-[SBFMobileKeyBagState recoveryRequired](self withName:{"recoveryRequired"), @"recoveryRequired"}];
  v9 = [v3 appendBool:-[SBFMobileKeyBagState recoveryPossible](self withName:{"recoveryPossible"), @"recoveryPossible"}];
  v10 = [v3 appendBool:-[SBFMobileKeyBagState shouldWipe](self withName:{"shouldWipe"), @"shouldWipe"}];
  v11 = [v3 build];

  return v11;
}

- (SBFMobileKeyBagState)initWithKeyBagInfo:(id)a3 extended:(BOOL)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = SBFMobileKeyBagState;
  v7 = [(SBFMobileKeyBagState *)&v11 init];
  if (v7)
  {
    v8 = [v6 copy];
    state = v7->_state;
    v7->_state = v8;

    v7->_extended = a4;
  }

  return v7;
}

- (BOOL)recoveryEnabled
{
  v2 = [(NSDictionary *)self->_state objectForKeyedSubscript:@"kSBFKeyBagInfoKeyBagState"];
  v3 = ([v2 longLongValue] >> 9) & 1;

  return v3;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [SBFMutableMobileKeyBagState alloc];
  state = self->_state;
  extended = self->_extended;

  return [(SBFMutableMobileKeyBagState *)v4 initWithKeyBagInfo:state extended:extended];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(NSDictionary *)self->_state isEqual:v4[1]]&& self->_extended == *(v4 + 16);

  return v5;
}

- (id)succinctDescription
{
  v2 = [(SBFMobileKeyBagState *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBFMobileKeyBagState *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [(SBFMobileKeyBagState *)self succinctDescriptionBuilder];
  v5 = [v4 appendBool:-[SBFMobileKeyBagState permanentlyBlocked](self withName:{"permanentlyBlocked"), @"permanentlyBlocked"}];
  v6 = [v4 appendBool:-[SBFMobileKeyBagState shouldWipe](self withName:{"shouldWipe"), @"shouldWipe"}];
  v7 = [v4 appendBool:-[SBFMobileKeyBagState recoveryRequired](self withName:{"recoveryRequired"), @"recoveryRequired"}];
  v8 = [v4 appendBool:-[SBFMobileKeyBagState recoveryPossible](self withName:{"recoveryPossible"), @"recoveryPossible"}];
  v9 = MEMORY[0x1E696AD98];
  [(SBFMobileKeyBagState *)self backOffTime];
  v10 = [v9 numberWithDouble:?];
  v11 = [v4 appendObject:v10 withName:@"backOffTime"];

  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[SBFMobileKeyBagState failedAttemptCount](self, "failedAttemptCount")}];
  v13 = [v4 appendObject:v12 withName:@"failedAttemptCount"];

  v14 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[SBFMobileKeyBagState escrowCount](self, "escrowCount")}];
  v15 = [v4 appendObject:v14 withName:@"escrowCount"];

  return v4;
}

@end