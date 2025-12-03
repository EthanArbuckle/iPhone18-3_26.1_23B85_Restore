@interface SBFMobileKeyBagState
- (BOOL)isEqual:(id)equal;
- (BOOL)permanentlyBlocked;
- (BOOL)recoveryEnabled;
- (BOOL)recoveryPossible;
- (BOOL)recoveryRequired;
- (BOOL)shouldWipe;
- (SBFMobileKeyBagState)initWithKeyBagInfo:(id)info extended:(BOOL)extended;
- (double)backOffTime;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)mutableCopyWithZone:(_NSZone *)zone;
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
  integerValue = [v3 integerValue];

  if (integerValue <= 7)
  {
    return qword_1BEAD4060[integerValue];
  }

  return integerValue;
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
  lockState = [(SBFMobileKeyBagState *)self lockState];
  if (lockState > 7)
  {
    v5 = 0;
  }

  else
  {
    v5 = off_1E8080470[lockState];
  }

  [v3 appendString:v5 withName:@"lockState"];
  v6 = [v3 appendBool:-[SBFMobileKeyBagState isEffectivelyLocked](self withName:{"isEffectivelyLocked"), @"isEffectivelyLocked"}];

  return v3;
}

- (unint64_t)failedAttemptCount
{
  v2 = [(NSDictionary *)self->_state objectForKeyedSubscript:@"kSBFKeyBagInfoFailedAttempts"];
  unsignedIntegerValue = [v2 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (BOOL)permanentlyBlocked
{
  v2 = [(NSDictionary *)self->_state objectForKeyedSubscript:@"kSBFKeyBagInfoPermanentlyBlocked"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
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
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
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
  longLongValue = [v2 longLongValue];

  return longLongValue;
}

- (id)publicDescription
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  lockState = [(SBFMobileKeyBagState *)self lockState];
  if (lockState > 7)
  {
    v5 = 0;
  }

  else
  {
    v5 = off_1E8080470[lockState];
  }

  [v3 appendString:v5 withName:@"lockState"];
  v6 = [v3 appendBool:-[SBFMobileKeyBagState isEffectivelyLocked](self withName:{"isEffectivelyLocked"), @"isEffectivelyLocked"}];
  v7 = [v3 appendBool:-[SBFMobileKeyBagState permanentlyBlocked](self withName:{"permanentlyBlocked"), @"permanentlyBlocked"}];
  v8 = [v3 appendBool:-[SBFMobileKeyBagState recoveryRequired](self withName:{"recoveryRequired"), @"recoveryRequired"}];
  v9 = [v3 appendBool:-[SBFMobileKeyBagState recoveryPossible](self withName:{"recoveryPossible"), @"recoveryPossible"}];
  v10 = [v3 appendBool:-[SBFMobileKeyBagState shouldWipe](self withName:{"shouldWipe"), @"shouldWipe"}];
  build = [v3 build];

  return build;
}

- (SBFMobileKeyBagState)initWithKeyBagInfo:(id)info extended:(BOOL)extended
{
  infoCopy = info;
  v11.receiver = self;
  v11.super_class = SBFMobileKeyBagState;
  v7 = [(SBFMobileKeyBagState *)&v11 init];
  if (v7)
  {
    v8 = [infoCopy copy];
    state = v7->_state;
    v7->_state = v8;

    v7->_extended = extended;
  }

  return v7;
}

- (BOOL)recoveryEnabled
{
  v2 = [(NSDictionary *)self->_state objectForKeyedSubscript:@"kSBFKeyBagInfoKeyBagState"];
  v3 = ([v2 longLongValue] >> 9) & 1;

  return v3;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [SBFMutableMobileKeyBagState alloc];
  state = self->_state;
  extended = self->_extended;

  return [(SBFMutableMobileKeyBagState *)v4 initWithKeyBagInfo:state extended:extended];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(NSDictionary *)self->_state isEqual:equalCopy[1]]&& self->_extended == *(equalCopy + 16);

  return v5;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBFMobileKeyBagState *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBFMobileKeyBagState *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  succinctDescriptionBuilder = [(SBFMobileKeyBagState *)self succinctDescriptionBuilder];
  v5 = [succinctDescriptionBuilder appendBool:-[SBFMobileKeyBagState permanentlyBlocked](self withName:{"permanentlyBlocked"), @"permanentlyBlocked"}];
  v6 = [succinctDescriptionBuilder appendBool:-[SBFMobileKeyBagState shouldWipe](self withName:{"shouldWipe"), @"shouldWipe"}];
  v7 = [succinctDescriptionBuilder appendBool:-[SBFMobileKeyBagState recoveryRequired](self withName:{"recoveryRequired"), @"recoveryRequired"}];
  v8 = [succinctDescriptionBuilder appendBool:-[SBFMobileKeyBagState recoveryPossible](self withName:{"recoveryPossible"), @"recoveryPossible"}];
  v9 = MEMORY[0x1E696AD98];
  [(SBFMobileKeyBagState *)self backOffTime];
  v10 = [v9 numberWithDouble:?];
  v11 = [succinctDescriptionBuilder appendObject:v10 withName:@"backOffTime"];

  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[SBFMobileKeyBagState failedAttemptCount](self, "failedAttemptCount")}];
  v13 = [succinctDescriptionBuilder appendObject:v12 withName:@"failedAttemptCount"];

  v14 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[SBFMobileKeyBagState escrowCount](self, "escrowCount")}];
  v15 = [succinctDescriptionBuilder appendObject:v14 withName:@"escrowCount"];

  return succinctDescriptionBuilder;
}

@end