@interface SUICFlameGroup
- (SUICFlameGroup)init;
- (id)description;
@end

@implementation SUICFlameGroup

- (SUICFlameGroup)init
{
  v6.receiver = self;
  v6.super_class = SUICFlameGroup;
  v2 = [(SUICFlameGroup *)&v6 init];
  v3 = v2;
  if (v2)
  {
    *(v2 + 3) = xmmword_1C435BBD0;
    *(v2 + 4) = v2 + 24;
    *(v2 + 5) = v2 + 48;
    *(v2 + 12) = xmmword_1C435BBB0;
    *(v2 + 4) = 0;
    v4 = v2;
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  stateTime = self->_stateTime;
  zTime = self->_zTime;
  transitionPhase = self->_transitionPhase;
  v7 = COERCE_FLOAT(*self->_stateModifiers);
  v8 = COERCE_FLOAT(HIDWORD(*self->_stateModifiers));
  v9 = COERCE_FLOAT(*&self->_stateModifiers[8]);
  v10 = COERCE_FLOAT(HIDWORD(*self->_stateModifiers));
  globalAlpha = self->_globalAlpha;
  v12 = [MEMORY[0x1E696AD98] numberWithBool:self->_isAura];
  v13 = [MEMORY[0x1E696AD98] numberWithBool:self->_isDyingOff];
  v14 = [v3 stringWithFormat:@"stateTime: %f  zTime: %f  transitionPhase: %f  stateModifiers: %f, %f, %f, %f  globalAlpha: %f  isAura: %@  isDyingOff: %@", *&stateTime, *&zTime, *&transitionPhase, *&v7, *&v8, *&v9, *&v10, *&globalAlpha, v12, v13];

  return v14;
}

@end