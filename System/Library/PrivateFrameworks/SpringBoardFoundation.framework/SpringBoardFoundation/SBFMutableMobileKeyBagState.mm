@interface SBFMutableMobileKeyBagState
- (SBFMutableMobileKeyBagState)initWithKeyBagInfo:(id)a3 extended:(BOOL)a4;
- (id)_mutableState;
- (id)copyWithZone:(_NSZone *)a3;
- (void)_mutableState;
- (void)setBackOffTime:(double)a3;
- (void)setEscrowCount:(int64_t)a3;
- (void)setFailedAttemptCount:(unint64_t)a3;
- (void)setLockState:(int64_t)a3;
- (void)setPermanentlyBlocked:(BOOL)a3;
- (void)setRecoveryEnabled:(BOOL)a3;
- (void)setRecoveryPossible:(BOOL)a3;
- (void)setRecoveryRequired:(BOOL)a3;
- (void)setShouldWipe:(BOOL)a3;
@end

@implementation SBFMutableMobileKeyBagState

- (SBFMutableMobileKeyBagState)initWithKeyBagInfo:(id)a3 extended:(BOOL)a4
{
  v10.receiver = self;
  v10.super_class = SBFMutableMobileKeyBagState;
  v5 = [(SBFMobileKeyBagState *)&v10 initWithKeyBagInfo:a3 extended:?];
  v6 = v5;
  if (v5)
  {
    v7 = [(NSDictionary *)v5->super._state mutableCopy];
    state = v6->super._state;
    v6->super._state = v7;

    v6->super._extended = a4;
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

- (void)setLockState:(int64_t)a3
{
  if ((a3 - 1) > 6)
  {
    v4 = 0;
  }

  else
  {
    v4 = qword_1BEAD40A0[a3 - 1];
  }

  v6 = [MEMORY[0x1E696AD98] numberWithInteger:v4];
  v5 = [(SBFMutableMobileKeyBagState *)self _mutableState];
  [v5 setObject:v6 forKeyedSubscript:@"kSBFKeyBagInfoLockState"];
}

- (void)setBackOffTime:(double)a3
{
  v5 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  v4 = [(SBFMutableMobileKeyBagState *)self _mutableState];
  [v4 setObject:v5 forKeyedSubscript:@"kSBFKeyBagInfoBackOff"];
}

- (void)setFailedAttemptCount:(unint64_t)a3
{
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v4 = [(SBFMutableMobileKeyBagState *)self _mutableState];
  [v4 setObject:v5 forKeyedSubscript:@"kSBFKeyBagInfoFailedAttempts"];
}

- (void)setPermanentlyBlocked:(BOOL)a3
{
  v5 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  v4 = [(SBFMutableMobileKeyBagState *)self _mutableState];
  [v4 setObject:v5 forKeyedSubscript:@"kSBFKeyBagInfoPermanentlyBlocked"];
}

- (void)setShouldWipe:(BOOL)a3
{
  v5 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  v4 = [(SBFMutableMobileKeyBagState *)self _mutableState];
  [v4 setObject:v5 forKeyedSubscript:@"kSBFKeyBagInfoShouldWipe"];
}

- (void)setRecoveryRequired:(BOOL)a3
{
  v3 = a3;
  v9 = [(NSDictionary *)self->super._state objectForKeyedSubscript:@"kSBFKeyBagInfoKeyBagState"];
  v5 = [v9 longLongValue] & 0xFFFFFFFFFFFFFFDFLL;
  v6 = 32;
  if (!v3)
  {
    v6 = 0;
  }

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v5 | v6];
  v8 = [(SBFMutableMobileKeyBagState *)self _mutableState];
  [v8 setObject:v7 forKeyedSubscript:@"kSBFKeyBagInfoKeyBagState"];
}

- (void)setRecoveryPossible:(BOOL)a3
{
  v3 = a3;
  v9 = [(NSDictionary *)self->super._state objectForKeyedSubscript:@"kSBFKeyBagInfoKeyBagState"];
  v5 = [v9 longLongValue] & 0xFFFFFFFFFFFFFFBFLL;
  v6 = 64;
  if (v3)
  {
    v6 = 0;
  }

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v5 | v6];
  v8 = [(SBFMutableMobileKeyBagState *)self _mutableState];
  [v8 setObject:v7 forKeyedSubscript:@"kSBFKeyBagInfoKeyBagState"];
}

- (void)setRecoveryEnabled:(BOOL)a3
{
  v3 = a3;
  v9 = [(NSDictionary *)self->super._state objectForKeyedSubscript:@"kSBFKeyBagInfoKeyBagState"];
  v5 = [v9 longLongValue] & 0xFFFFFFFFFFFFFDFFLL;
  v6 = 512;
  if (!v3)
  {
    v6 = 0;
  }

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v5 | v6];
  v8 = [(SBFMutableMobileKeyBagState *)self _mutableState];
  [v8 setObject:v7 forKeyedSubscript:@"kSBFKeyBagInfoKeyBagState"];
}

- (void)setEscrowCount:(int64_t)a3
{
  v5 = [MEMORY[0x1E696AD98] numberWithLongLong:a3];
  v4 = [(SBFMutableMobileKeyBagState *)self _mutableState];
  [v4 setObject:v5 forKeyedSubscript:@"kSBFKeyBagInfoRecoveryCountdown"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [SBFMobileKeyBagState alloc];
  state = self->super._state;
  extended = self->super._extended;

  return [(SBFMobileKeyBagState *)v4 initWithKeyBagInfo:state extended:extended];
}

- (void)_mutableState
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBFMobileKeyBagState.m" lineNumber:265 description:@"Unexpected non-mutable _state"];
}

@end