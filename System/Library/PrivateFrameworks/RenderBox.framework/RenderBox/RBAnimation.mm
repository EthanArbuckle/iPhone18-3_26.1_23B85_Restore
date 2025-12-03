@interface RBAnimation
- (BOOL)isEqual:(id)equal;
- (_DWORD)setRBAnimation:(_DWORD *)result;
- (double)activeDuration;
- (float)evaluateAtTime:(double)time;
- (id).cxx_construct;
- (id)copyWithZone:(_NSZone *)zone;
- (void)addBezierDuration:(double)duration controlPoint1:(CGPoint)point1 controlPoint2:(CGPoint)point2;
- (void)addDelay:(double)delay;
- (void)addPreset:(unsigned int)preset duration:(double)duration;
- (void)addRepeatCount:(double)count autoreverses:(BOOL)autoreverses;
- (void)addSampledFunctionWithDuration:(double)duration count:(unint64_t)count values:(const float *)values;
- (void)addSpeed:(double)speed;
- (void)addSpringDuration:(double)duration mass:(double)mass stiffness:(double)stiffness damping:(double)damping initialVelocity:(double)velocity;
@end

@implementation RBAnimation

- (id).cxx_construct
{
  *(self + 4) = 0;
  *(self + 5) = 0x600000000;
  return self;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_new();
  v5 = v4;
  v6 = v4 + 2;
  v4[10] = 0;
  if (self->_animation.terms_and_args._p_2)
  {
    p_2 = self->_animation.terms_and_args._p_2;
  }

  else
  {
    p_2 = &self->_animation;
  }

  isa = self[1].super.isa;
  v9 = isa;
  if (v4[11] < isa)
  {
    RB::vector<RB::Animation::TermOrArg,6ul,unsigned int>::reserve_slow(v4 + 2, isa);
    v10 = v5[10];
  }

  else
  {
    if (!isa)
    {
      v14 = 0;
      goto LABEL_13;
    }

    v10 = 0;
  }

  v11 = *(v5 + 4);
  if (!v11)
  {
    v11 = v6;
  }

  v12 = &v11[v10];
  do
  {
    v13 = *p_2++;
    *v12++ = v13;
    --v9;
  }

  while (v9);
  v14 = v5[10];
LABEL_13:
  v5[10] = v14 + isa;
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return RB::Animation::operator==(&self->_animation, equal + 8);
}

- (double)activeDuration
{
  p_animation = &self->_animation;
  if (self->_animation.terms_and_args._p_2)
  {
    p_animation = self->_animation.terms_and_args._p_2;
  }

  return RB::Animation::active_duration(p_animation, LODWORD(self[1].super.isa));
}

- (float)evaluateAtTime:(double)time
{
  p_animation = &self->_animation;
  if (self->_animation.terms_and_args._p_2)
  {
    p_2 = self->_animation.terms_and_args._p_2;
  }

  else
  {
    p_2 = &self->_animation;
  }

  RB::Animation::prepare(p_2, LODWORD(self[1].super.isa), v11);
  if (self->_animation.terms_and_args._p_2)
  {
    v9 = self->_animation.terms_and_args._p_2;
  }

  else
  {
    v9 = p_animation;
  }

  *&v7 = time;
  RB::Animation::eval(v9, LODWORD(self[1].super.isa), v11, v7, v8);
  return result;
}

- (void)addPreset:(unsigned int)preset duration:(double)duration
{
  if (preset <= 0xA)
  {
    p_animation = &self->_animation;
    isa = self[1].super.isa;
    v6 = isa + 2;
    if (isa <= 0xFFFFFFFD && HIDWORD(self[1].super.isa) < v6)
    {
      selfCopy = self;
      v13 = &self->_animation;
      v12 = isa + 2;
      durationCopy = duration;
      presetCopy = preset;
      RB::vector<RB::Animation::TermOrArg,6ul,unsigned int>::reserve_slow(&self->_animation, v6);
      p_animation = v13;
      v6 = v12;
      self = selfCopy;
      preset = presetCopy;
      duration = durationCopy;
    }

    LODWORD(self[1].super.isa) = v6;
    if (self->_animation.terms_and_args._p_2)
    {
      p_animation = self->_animation.terms_and_args._p_2;
    }

    v7 = &p_animation[4 * v6];
    *(v7 - 2) = [RBAnimation addPreset:duration:]::terms[preset];
    durationCopy2 = duration;
    *(v7 - 1) = durationCopy2;
  }
}

- (void)addBezierDuration:(double)duration controlPoint1:(CGPoint)point1 controlPoint2:(CGPoint)point2
{
  x = point1.x;
  v7 = fabsf(x + -0.42) < 0.005;
  if (point1.y != 0.0)
  {
    v7 = 0;
  }

  v8 = point2.x;
  v9 = fabsf(v8 + -0.58);
  v11 = point2.y == 1.0 && v9 < 0.005;
  if (v7 && v11)
  {
    v12 = 4;

LABEL_13:
    [(RBAnimation *)self addPreset:v12 duration:duration];
    return;
  }

  if (point2.x != 1.0)
  {
    v7 = 0;
  }

  if (v7 && point2.y == 1.0)
  {
    v12 = 2;

    goto LABEL_13;
  }

  if (point1.x == 0.0 && v11 && point1.y == 0.0)
  {
    v12 = 3;

    goto LABEL_13;
  }

  p_animation = &self->_animation;
  isa = self[1].super.isa;
  v16 = isa + 6;
  if (isa <= 0xFFFFFFF9 && HIDWORD(self[1].super.isa) < v16)
  {
    selfCopy = self;
    v28 = isa + 6;
    y = point2.y;
    durationCopy = duration;
    v25 = point1.y;
    v23 = &self->_animation;
    v24 = point1.x;
    v21 = point2.x;
    RB::vector<RB::Animation::TermOrArg,6ul,unsigned int>::reserve_slow(&self->_animation, v16);
    v8 = v21;
    x = v24;
    v16 = v28;
    p_animation = v23;
    self = selfCopy;
    point1.y = v25;
    duration = durationCopy;
    point2.y = y;
  }

  LODWORD(self[1].super.isa) = v16;
  if (self->_animation.terms_and_args._p_2)
  {
    p_animation = self->_animation.terms_and_args._p_2;
  }

  v17 = &p_animation[4 * v16];
  *(v17 - 6) = 8;
  durationCopy2 = duration;
  *(v17 - 5) = durationCopy2;
  *(v17 - 4) = x;
  v19 = point1.y;
  *(v17 - 3) = v19;
  *(v17 - 2) = v8;
  v20 = point2.y;
  *(v17 - 1) = v20;
}

- (void)addSpringDuration:(double)duration mass:(double)mass stiffness:(double)stiffness damping:(double)damping initialVelocity:(double)velocity
{
  if (velocity == 0.0)
  {
    v13 = 9;
  }

  else
  {
    v13 = 10;
  }

  if (velocity == 0.0)
  {
    v14 = 5;
  }

  else
  {
    v14 = 6;
  }

  p_animation = &self->_animation;
  isa = self[1].super.isa;
  v17 = isa + v14;
  if (isa < isa + v14 && HIDWORD(self[1].super.isa) < v17)
  {
    RB::vector<RB::Animation::TermOrArg,6ul,unsigned int>::reserve_slow(&self->_animation, v17);
  }

  LODWORD(self[1].super.isa) = v17;
  p_2 = self->_animation.terms_and_args._p_2;
  if (!p_2)
  {
    p_2 = p_animation;
  }

  v19 = p_2 + 4 * v17 + -4 * v14;
  *v19 = v13;
  durationCopy = duration;
  massCopy = mass;
  *(v19 + 4) = durationCopy;
  *(v19 + 8) = massCopy;
  stiffnessCopy = stiffness;
  dampingCopy = damping;
  *(v19 + 12) = stiffnessCopy;
  *(v19 + 16) = dampingCopy;
  if (velocity != 0.0)
  {
    velocityCopy = velocity;
    *(v19 + 20) = velocityCopy;
  }
}

- (void)addSampledFunctionWithDuration:(double)duration count:(unint64_t)count values:(const float *)values
{
  v9 = 2 * count + 3;
  p_animation = &self->_animation;
  isa = self[1].super.isa;
  v12 = isa + v9;
  if (isa < isa + v9 && HIDWORD(self[1].super.isa) < v12)
  {
    RB::vector<RB::Animation::TermOrArg,6ul,unsigned int>::reserve_slow(&self->_animation, v12);
  }

  LODWORD(self[1].super.isa) = v12;
  p_2 = self->_animation.terms_and_args._p_2;
  if (!p_2)
  {
    p_2 = p_animation;
  }

  v14 = p_2 + 4 * v12 + -4 * v9;
  *v14 = 18;
  *(v14 + 4) = count;
  durationCopy = duration;
  *(v14 + 8) = durationCopy;
  v16 = 2 * count;
  if (2 * count)
  {
    v17 = (v14 + 12);
    do
    {
      v18 = *values++;
      *v17++ = v18;
      --v16;
    }

    while (v16);
  }
}

- (void)addSpeed:(double)speed
{
  p_animation = &self->_animation;
  isa = self[1].super.isa;
  v7 = isa + 2;
  if (isa <= 0xFFFFFFFD && HIDWORD(self[1].super.isa) < v7)
  {
    RB::vector<RB::Animation::TermOrArg,6ul,unsigned int>::reserve_slow(&self->_animation, v7);
  }

  LODWORD(self[1].super.isa) = v7;
  p_2 = self->_animation.terms_and_args._p_2;
  if (!p_2)
  {
    p_2 = p_animation;
  }

  v9 = p_2 + 4 * v7;
  *(v9 - 2) = 11;
  speedCopy = speed;
  *(v9 - 1) = speedCopy;
}

- (void)addDelay:(double)delay
{
  p_animation = &self->_animation;
  isa = self[1].super.isa;
  v7 = isa + 2;
  if (isa <= 0xFFFFFFFD && HIDWORD(self[1].super.isa) < v7)
  {
    RB::vector<RB::Animation::TermOrArg,6ul,unsigned int>::reserve_slow(&self->_animation, v7);
  }

  LODWORD(self[1].super.isa) = v7;
  p_2 = self->_animation.terms_and_args._p_2;
  if (!p_2)
  {
    p_2 = p_animation;
  }

  v9 = p_2 + 4 * v7;
  *(v9 - 2) = 12;
  delayCopy = delay;
  *(v9 - 1) = delayCopy;
}

- (void)addRepeatCount:(double)count autoreverses:(BOOL)autoreverses
{
  autoreversesCopy = autoreverses;
  p_animation = &self->_animation;
  isa = self[1].super.isa;
  v9 = isa + 2;
  if (isa <= 0xFFFFFFFD && HIDWORD(self[1].super.isa) < v9)
  {
    RB::vector<RB::Animation::TermOrArg,6ul,unsigned int>::reserve_slow(&self->_animation, v9);
  }

  LODWORD(self[1].super.isa) = v9;
  p_2 = self->_animation.terms_and_args._p_2;
  if (!p_2)
  {
    p_2 = p_animation;
  }

  v11 = p_2 + 4 * v9;
  if (autoreversesCopy)
  {
    v12 = 14;
  }

  else
  {
    v12 = 13;
  }

  *(v11 - 2) = v12;
  countCopy = count;
  *(v11 - 1) = countCopy;
}

- (_DWORD)setRBAnimation:(_DWORD *)result
{
  if (result)
  {
    v2 = result;
    v3 = result + 2;
    result[10] = 0;
    if (*(a2 + 24))
    {
      v4 = *(a2 + 24);
    }

    else
    {
      v4 = a2;
    }

    v5 = *(a2 + 32);
    if (result[11] < v5)
    {
      result = RB::vector<RB::Animation::TermOrArg,6ul,unsigned int>::reserve_slow(result + 2, *(a2 + 32));
      v6 = v2[10];
    }

    else
    {
      if (!v5)
      {
        v11 = 0;
LABEL_14:
        v2[10] = v11 + v5;
        return result;
      }

      v6 = 0;
    }

    v7 = *(v2 + 4);
    if (!v7)
    {
      v7 = v3;
    }

    v8 = &v7[v6];
    v9 = v5;
    do
    {
      v10 = *v4++;
      *v8++ = v10;
      --v9;
    }

    while (v9);
    v11 = v2[10];
    goto LABEL_14;
  }

  return result;
}

@end