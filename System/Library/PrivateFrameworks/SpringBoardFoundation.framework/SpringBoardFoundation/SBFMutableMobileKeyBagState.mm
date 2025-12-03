@interface SBFMutableMobileKeyBagState
- (SBFMutableMobileKeyBagState)initWithKeyBagInfo:(id)info extended:(BOOL)extended;
- (id)_mutableState;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_mutableState;
- (void)setBackOffTime:(double)time;
- (void)setEscrowCount:(int64_t)count;
- (void)setFailedAttemptCount:(unint64_t)count;
- (void)setLockState:(int64_t)state;
- (void)setPermanentlyBlocked:(BOOL)blocked;
- (void)setRecoveryEnabled:(BOOL)enabled;
- (void)setRecoveryPossible:(BOOL)possible;
- (void)setRecoveryRequired:(BOOL)required;
- (void)setShouldWipe:(BOOL)wipe;
@end

@implementation SBFMutableMobileKeyBagState

- (SBFMutableMobileKeyBagState)initWithKeyBagInfo:(id)info extended:(BOOL)extended
{
  v10.receiver = self;
  v10.super_class = SBFMutableMobileKeyBagState;
  v5 = [(SBFMobileKeyBagState *)&v10 initWithKeyBagInfo:info extended:?];
  v6 = v5;
  if (v5)
  {
    v7 = [(NSDictionary *)v5->super._state mutableCopy];
    state = v6->super._state;
    v6->super._state = v7;

    v6->super._extended = extended;
  }

  return v6;
}

- (id)_mutableState
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [(SBFMutableMobileKeyBagState *)a2 _mutableState];
  }

  state = self->super._state;

  return state;
}

- (void)setLockState:(int64_t)state
{
  if ((state - 1) > 6)
  {
    v4 = 0;
  }

  else
  {
    v4 = qword_1BEAD40A0[state - 1];
  }

  v6 = [MEMORY[0x1E696AD98] numberWithInteger:v4];
  _mutableState = [(SBFMutableMobileKeyBagState *)self _mutableState];
  [_mutableState setObject:v6 forKeyedSubscript:@"kSBFKeyBagInfoLockState"];
}

- (void)setBackOffTime:(double)time
{
  v5 = [MEMORY[0x1E696AD98] numberWithDouble:time];
  _mutableState = [(SBFMutableMobileKeyBagState *)self _mutableState];
  [_mutableState setObject:v5 forKeyedSubscript:@"kSBFKeyBagInfoBackOff"];
}

- (void)setFailedAttemptCount:(unint64_t)count
{
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:count];
  _mutableState = [(SBFMutableMobileKeyBagState *)self _mutableState];
  [_mutableState setObject:v5 forKeyedSubscript:@"kSBFKeyBagInfoFailedAttempts"];
}

- (void)setPermanentlyBlocked:(BOOL)blocked
{
  v5 = [MEMORY[0x1E696AD98] numberWithBool:blocked];
  _mutableState = [(SBFMutableMobileKeyBagState *)self _mutableState];
  [_mutableState setObject:v5 forKeyedSubscript:@"kSBFKeyBagInfoPermanentlyBlocked"];
}

- (void)setShouldWipe:(BOOL)wipe
{
  v5 = [MEMORY[0x1E696AD98] numberWithBool:wipe];
  _mutableState = [(SBFMutableMobileKeyBagState *)self _mutableState];
  [_mutableState setObject:v5 forKeyedSubscript:@"kSBFKeyBagInfoShouldWipe"];
}

- (void)setRecoveryRequired:(BOOL)required
{
  requiredCopy = required;
  v9 = [(NSDictionary *)self->super._state objectForKeyedSubscript:@"kSBFKeyBagInfoKeyBagState"];
  v5 = [v9 longLongValue] & 0xFFFFFFFFFFFFFFDFLL;
  v6 = 32;
  if (!requiredCopy)
  {
    v6 = 0;
  }

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v5 | v6];
  _mutableState = [(SBFMutableMobileKeyBagState *)self _mutableState];
  [_mutableState setObject:v7 forKeyedSubscript:@"kSBFKeyBagInfoKeyBagState"];
}

- (void)setRecoveryPossible:(BOOL)possible
{
  possibleCopy = possible;
  v9 = [(NSDictionary *)self->super._state objectForKeyedSubscript:@"kSBFKeyBagInfoKeyBagState"];
  v5 = [v9 longLongValue] & 0xFFFFFFFFFFFFFFBFLL;
  v6 = 64;
  if (possibleCopy)
  {
    v6 = 0;
  }

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v5 | v6];
  _mutableState = [(SBFMutableMobileKeyBagState *)self _mutableState];
  [_mutableState setObject:v7 forKeyedSubscript:@"kSBFKeyBagInfoKeyBagState"];
}

- (void)setRecoveryEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v9 = [(NSDictionary *)self->super._state objectForKeyedSubscript:@"kSBFKeyBagInfoKeyBagState"];
  v5 = [v9 longLongValue] & 0xFFFFFFFFFFFFFDFFLL;
  v6 = 512;
  if (!enabledCopy)
  {
    v6 = 0;
  }

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v5 | v6];
  _mutableState = [(SBFMutableMobileKeyBagState *)self _mutableState];
  [_mutableState setObject:v7 forKeyedSubscript:@"kSBFKeyBagInfoKeyBagState"];
}

- (void)setEscrowCount:(int64_t)count
{
  v5 = [MEMORY[0x1E696AD98] numberWithLongLong:count];
  _mutableState = [(SBFMutableMobileKeyBagState *)self _mutableState];
  [_mutableState setObject:v5 forKeyedSubscript:@"kSBFKeyBagInfoRecoveryCountdown"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [SBFMobileKeyBagState alloc];
  state = self->super._state;
  extended = self->super._extended;

  return [(SBFMobileKeyBagState *)v4 initWithKeyBagInfo:state extended:extended];
}

- (void)_mutableState
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"SBFMobileKeyBagState.m" lineNumber:265 description:@"Unexpected non-mutable _state"];
}

@end