@interface MRAnimationPathPhysics
- (MRAnimationPathPhysics)initWithMCAnimationPath:(id)a3;
- (float)computeValueForTime:(double)a3 withContext:(id)a4;
@end

@implementation MRAnimationPathPhysics

- (MRAnimationPathPhysics)initWithMCAnimationPath:(id)a3
{
  v6.receiver = self;
  v6.super_class = MRAnimationPathPhysics;
  v4 = [(MRAnimationPathPhysics *)&v6 init];
  if (v4)
  {
    -[MCAnimationPath setKey:](v4, "setKey:", [a3 key]);
    [a3 staticFriction];
    [(MCAnimationPathPhysics *)v4 setStaticFriction:?];
    [a3 kineticFriction];
    [(MCAnimationPathPhysics *)v4 setKineticFriction:?];
    [a3 skinFriction];
    [(MCAnimationPathPhysics *)v4 setSkinFriction:?];
  }

  return v4;
}

- (float)computeValueForTime:(double)a3 withContext:(id)a4
{
  v5 = a3 - *(&self->mVelocity + 1);
  result = *(&self->super._skinFriction + 1) + self->mBaseValue;
  if (v5 > 0.0)
  {
    v8 = result;
    v9 = -0.7 - result;
    v10 = 1.0;
    if (v9 <= 0.0)
    {
      v11 = v8 + -0.7;
      v10 = 0.0;
      v9 = 0.0;
      if (v11 > 0.0)
      {
        v10 = -1.0;
        v9 = v11;
      }
    }

    v12 = (v5 * 0.0) + v10 * v9 * v9;
    if (self->mDeltaValue == 0.0)
    {
      [(MCAnimationPathPhysics *)self staticFriction];
      v14 = fabsf(v12) < (v13 * v5);
      v15 = 0.0;
      if (!v14)
      {
        v15 = v12;
      }
    }

    else
    {
      [(MCAnimationPathPhysics *)self kineticFriction];
      v17 = 1.0;
      mDeltaValue = self->mDeltaValue;
      v19 = fmin((v16 * v5), 1.0) * fabsf(mDeltaValue);
      v20 = v19;
      if (mDeltaValue > 0.0)
      {
        v17 = -1.0;
      }

      v21 = v12 + v17 * v20;
      [(MCAnimationPathPhysics *)self skinFriction];
      v15 = v21 - ((v22 * self->mDeltaValue) * v5);
    }

    v23 = v15 + self->mDeltaValue;
    mBaseValue = self->mBaseValue;
    *(&self->mVelocity + 1) = a3;
    self->mDeltaValue = v23;
    v25 = mBaseValue + (v23 * v5);
    self->mBaseValue = v25;
    return v25 + *(&self->super._skinFriction + 1);
  }

  return result;
}

@end