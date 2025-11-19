@interface RBAnimation
- (BOOL)isEqual:(id)a3;
- (_DWORD)setRBAnimation:(_DWORD *)result;
- (double)activeDuration;
- (float)evaluateAtTime:(double)a3;
- (id).cxx_construct;
- (id)copyWithZone:(_NSZone *)a3;
- (void)addBezierDuration:(double)a3 controlPoint1:(CGPoint)a4 controlPoint2:(CGPoint)a5;
- (void)addDelay:(double)a3;
- (void)addPreset:(unsigned int)a3 duration:(double)a4;
- (void)addRepeatCount:(double)a3 autoreverses:(BOOL)a4;
- (void)addSampledFunctionWithDuration:(double)a3 count:(unint64_t)a4 values:(const float *)a5;
- (void)addSpeed:(double)a3;
- (void)addSpringDuration:(double)a3 mass:(double)a4 stiffness:(double)a5 damping:(double)a6 initialVelocity:(double)a7;
@end

@implementation RBAnimation

- (id).cxx_construct
{
  *(self + 4) = 0;
  *(self + 5) = 0x600000000;
  return self;
}

- (id)copyWithZone:(_NSZone *)a3
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

- (BOOL)isEqual:(id)a3
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return RB::Animation::operator==(&self->_animation, a3 + 8);
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

- (float)evaluateAtTime:(double)a3
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

  *&v7 = a3;
  RB::Animation::eval(v9, LODWORD(self[1].super.isa), v11, v7, v8);
  return result;
}

- (void)addPreset:(unsigned int)a3 duration:(double)a4
{
  if (a3 <= 0xA)
  {
    p_animation = &self->_animation;
    isa = self[1].super.isa;
    v6 = isa + 2;
    if (isa <= 0xFFFFFFFD && HIDWORD(self[1].super.isa) < v6)
    {
      v11 = self;
      v13 = &self->_animation;
      v12 = isa + 2;
      v10 = a4;
      v9 = a3;
      RB::vector<RB::Animation::TermOrArg,6ul,unsigned int>::reserve_slow(&self->_animation, v6);
      p_animation = v13;
      v6 = v12;
      self = v11;
      a3 = v9;
      a4 = v10;
    }

    LODWORD(self[1].super.isa) = v6;
    if (self->_animation.terms_and_args._p_2)
    {
      p_animation = self->_animation.terms_and_args._p_2;
    }

    v7 = &p_animation[4 * v6];
    *(v7 - 2) = [RBAnimation addPreset:duration:]::terms[a3];
    v8 = a4;
    *(v7 - 1) = v8;
  }
}

- (void)addBezierDuration:(double)a3 controlPoint1:(CGPoint)a4 controlPoint2:(CGPoint)a5
{
  x = a4.x;
  v7 = fabsf(x + -0.42) < 0.005;
  if (a4.y != 0.0)
  {
    v7 = 0;
  }

  v8 = a5.x;
  v9 = fabsf(v8 + -0.58);
  v11 = a5.y == 1.0 && v9 < 0.005;
  if (v7 && v11)
  {
    v12 = 4;

LABEL_13:
    [(RBAnimation *)self addPreset:v12 duration:a3];
    return;
  }

  if (a5.x != 1.0)
  {
    v7 = 0;
  }

  if (v7 && a5.y == 1.0)
  {
    v12 = 2;

    goto LABEL_13;
  }

  if (a4.x == 0.0 && v11 && a4.y == 0.0)
  {
    v12 = 3;

    goto LABEL_13;
  }

  p_animation = &self->_animation;
  isa = self[1].super.isa;
  v16 = isa + 6;
  if (isa <= 0xFFFFFFF9 && HIDWORD(self[1].super.isa) < v16)
  {
    v27 = self;
    v28 = isa + 6;
    y = a5.y;
    v22 = a3;
    v25 = a4.y;
    v23 = &self->_animation;
    v24 = a4.x;
    v21 = a5.x;
    RB::vector<RB::Animation::TermOrArg,6ul,unsigned int>::reserve_slow(&self->_animation, v16);
    v8 = v21;
    x = v24;
    v16 = v28;
    p_animation = v23;
    self = v27;
    a4.y = v25;
    a3 = v22;
    a5.y = y;
  }

  LODWORD(self[1].super.isa) = v16;
  if (self->_animation.terms_and_args._p_2)
  {
    p_animation = self->_animation.terms_and_args._p_2;
  }

  v17 = &p_animation[4 * v16];
  *(v17 - 6) = 8;
  v18 = a3;
  *(v17 - 5) = v18;
  *(v17 - 4) = x;
  v19 = a4.y;
  *(v17 - 3) = v19;
  *(v17 - 2) = v8;
  v20 = a5.y;
  *(v17 - 1) = v20;
}

- (void)addSpringDuration:(double)a3 mass:(double)a4 stiffness:(double)a5 damping:(double)a6 initialVelocity:(double)a7
{
  if (a7 == 0.0)
  {
    v13 = 9;
  }

  else
  {
    v13 = 10;
  }

  if (a7 == 0.0)
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
  v20 = a3;
  v21 = a4;
  *(v19 + 4) = v20;
  *(v19 + 8) = v21;
  v22 = a5;
  v23 = a6;
  *(v19 + 12) = v22;
  *(v19 + 16) = v23;
  if (a7 != 0.0)
  {
    v24 = a7;
    *(v19 + 20) = v24;
  }
}

- (void)addSampledFunctionWithDuration:(double)a3 count:(unint64_t)a4 values:(const float *)a5
{
  v9 = 2 * a4 + 3;
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
  *(v14 + 4) = a4;
  v15 = a3;
  *(v14 + 8) = v15;
  v16 = 2 * a4;
  if (2 * a4)
  {
    v17 = (v14 + 12);
    do
    {
      v18 = *a5++;
      *v17++ = v18;
      --v16;
    }

    while (v16);
  }
}

- (void)addSpeed:(double)a3
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
  v10 = a3;
  *(v9 - 1) = v10;
}

- (void)addDelay:(double)a3
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
  v10 = a3;
  *(v9 - 1) = v10;
}

- (void)addRepeatCount:(double)a3 autoreverses:(BOOL)a4
{
  v4 = a4;
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
  if (v4)
  {
    v12 = 14;
  }

  else
  {
    v12 = 13;
  }

  *(v11 - 2) = v12;
  v13 = a3;
  *(v11 - 1) = v13;
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