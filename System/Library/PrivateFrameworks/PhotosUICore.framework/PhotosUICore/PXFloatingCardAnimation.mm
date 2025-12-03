@interface PXFloatingCardAnimation
+ (id)animationUsingDefaultSpringWithInitialVelocity:(double)velocity delay:(double)delay;
+ (id)animationWithDuration:(double)duration curve:(int64_t)curve delay:(double)delay;
+ (id)animationWithMass:(double)mass stiffness:(double)stiffness damping:(double)damping initialVelocity:(double)velocity delay:(double)delay;
- (PXFloatingCardAnimation)coordinatedUnitAnimation;
- (PXFloatingCardAnimation)initWithDuration:(double)duration curve:(int64_t)curve delay:(double)delay;
- (PXFloatingCardAnimation)initWithMass:(double)mass stiffness:(double)stiffness damping:(double)damping initialVelocity:(double)velocity delay:(double)delay calculateCoordinatedAnimation:(BOOL)animation;
- (id)description;
- (id)initUsingDefaultSpringWithInitialVelocity:(double)velocity delay:(double)delay;
- (void)applyAnimations:(id)animations completion:(id)completion;
@end

@implementation PXFloatingCardAnimation

- (id)description
{
  type = self->_type;
  if (type == 2)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"<DefaultSpringAnimation duration: %g, delay: %g, initialVelocity: %g>", *&self->_duration, *&self->_delay, self->_typeParameters.basic.curve, v4, v5, v6];
  }

  else if (type == 1)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"<SpringAnimation duration: %g, delay: %g, mass: %g, stiffness: %g, damping: %g, initialVelocity: %g>", *&self->_duration, *&self->_delay, self->_typeParameters.basic.curve, *&self->_typeParameters.spring.stiffness, *&self->_typeParameters.spring.damping, *&self->_typeParameters.spring.initialVelocity];
  }

  else
  {
    if (type)
    {
      goto LABEL_8;
    }

    [MEMORY[0x1E696AEC0] stringWithFormat:@"<BasicAnimation duration: %g, delay: %g, curve: %ld>", *&self->_duration, *&self->_delay, self->_typeParameters.basic.curve, v4, v5, v6];
  }
  a2 = ;
LABEL_8:

  return a2;
}

- (void)applyAnimations:(id)animations completion:(id)completion
{
  animationsCopy = animations;
  completionCopy = completion;
  type = self->_type;
  switch(type)
  {
    case 2uLL:
      [MEMORY[0x1E69DD250] _animateUsingDefaultDampedSpringWithDelay:2 initialSpringVelocity:animationsCopy options:completionCopy animations:self->_delay completion:self->_typeParameters.spring.mass];
      break;
    case 1uLL:
      [MEMORY[0x1E69DD250] _animateUsingSpringWithDuration:2 delay:animationsCopy options:completionCopy mass:self->_duration stiffness:self->_delay damping:self->_typeParameters.spring.mass initialVelocity:self->_typeParameters.spring.stiffness animations:self->_typeParameters.spring.damping completion:self->_typeParameters.spring.initialVelocity];
      break;
    case 0uLL:
      v8 = self->_typeParameters.basic.curve - 1;
      if (v8 >= 3)
      {
        v9 = 2;
      }

      else
      {
        v9 = (v8 << 16) + 65538;
      }

      [MEMORY[0x1E69DD250] animateWithDuration:v9 delay:animationsCopy options:completionCopy animations:self->_duration completion:self->_delay];
      break;
  }
}

- (PXFloatingCardAnimation)coordinatedUnitAnimation
{
  if (self->_coordinatedUnitAnimation)
  {
    self = self->_coordinatedUnitAnimation;
  }

  return self;
}

- (id)initUsingDefaultSpringWithInitialVelocity:(double)velocity delay:(double)delay
{
  v7.receiver = self;
  v7.super_class = PXFloatingCardAnimation;
  result = [(PXFloatingCardAnimation *)&v7 init];
  if (result)
  {
    *(result + 1) = 2;
    *(result + 2) = velocity;
    *(result + 7) = delay;
  }

  return result;
}

- (PXFloatingCardAnimation)initWithMass:(double)mass stiffness:(double)stiffness damping:(double)damping initialVelocity:(double)velocity delay:(double)delay calculateCoordinatedAnimation:(BOOL)animation
{
  animationCopy = animation;
  v31.receiver = self;
  v31.super_class = PXFloatingCardAnimation;
  v14 = [(PXFloatingCardAnimation *)&v31 init];
  v15 = v14;
  if (v14)
  {
    v14->_type = 1;
    v14->_typeParameters.spring.mass = mass;
    v14->_typeParameters.spring.stiffness = stiffness;
    v14->_typeParameters.spring.damping = damping;
    v14->_typeParameters.spring.initialVelocity = velocity;
    v16 = [[PXFloatingCardSpringInfo alloc] initWithMass:mass stiffness:stiffness damping:damping initialVelocity:velocity];
    [(PXFloatingCardSpringInfo *)v16 settlingTime];
    v15->_duration = v17;
    v15->_delay = delay;
    if (animationCopy)
    {
      [(PXFloatingCardSpringInfo *)v16 undershootTime];
      v19 = v18;
      [(PXFloatingCardSpringInfo *)v16 overshootTime];
      v21 = v20;
      if (v19 <= 0.0)
      {
        v23 = 0;
      }

      else
      {
        [(PXFloatingCardSpringInfo *)v16 valueAtTime:v19];
        v23 = v22 > 1.005;
      }

      if (v21 > 0.0)
      {
        [(PXFloatingCardSpringInfo *)v16 valueAtTime:v21];
        if (v24 < -0.005)
        {
          v25 = [PXFloatingCardAnimation alloc];
          if (v23)
          {
            v26 = v21 - v19;
            delayCopy = v19 + delay;
          }

          else
          {
            v26 = v21;
            delayCopy = delay;
          }

          delay = [(PXFloatingCardAnimation *)v25 initWithDuration:5 curve:v26 delay:delayCopy];
          goto LABEL_14;
        }
      }

      if (v23)
      {
        delay = [[PXFloatingCardAnimation alloc] initWithMass:0 stiffness:mass damping:stiffness initialVelocity:damping delay:0.0 calculateCoordinatedAnimation:v19 + delay];
LABEL_14:
        coordinatedUnitAnimation = v15->_coordinatedUnitAnimation;
        v15->_coordinatedUnitAnimation = delay;
      }
    }
  }

  return v15;
}

- (PXFloatingCardAnimation)initWithDuration:(double)duration curve:(int64_t)curve delay:(double)delay
{
  v9.receiver = self;
  v9.super_class = PXFloatingCardAnimation;
  result = [(PXFloatingCardAnimation *)&v9 init];
  if (result)
  {
    result->_type = 0;
    result->_typeParameters.basic.curve = curve;
    result->_duration = duration;
    result->_delay = delay;
  }

  return result;
}

+ (id)animationUsingDefaultSpringWithInitialVelocity:(double)velocity delay:(double)delay
{
  v4 = [[self alloc] initUsingDefaultSpringWithInitialVelocity:velocity delay:delay];

  return v4;
}

+ (id)animationWithMass:(double)mass stiffness:(double)stiffness damping:(double)damping initialVelocity:(double)velocity delay:(double)delay
{
  v7 = [[self alloc] initWithMass:mass stiffness:stiffness damping:damping initialVelocity:velocity delay:delay];

  return v7;
}

+ (id)animationWithDuration:(double)duration curve:(int64_t)curve delay:(double)delay
{
  v5 = [[self alloc] initWithDuration:curve curve:duration delay:delay];

  return v5;
}

@end