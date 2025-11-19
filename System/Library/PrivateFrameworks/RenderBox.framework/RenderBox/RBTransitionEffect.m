@interface RBTransitionEffect
- (BOOL)isEqual:(id)a3;
- (float)argumentValueAtIndex:(unint64_t)a3;
- (float)beginTime;
- (float)duration;
- (unint64_t)animationIndex;
- (unsigned)integerArgumentValueAtIndex:(unint64_t)a3;
- (void)setAnimationIndex:(unint64_t)a3;
- (void)setArgumentValue:(float)a3 atIndex:(unint64_t)a4;
- (void)setIntegerArgumentValue:(unsigned int)a3 atIndex:(unint64_t)a4;
@end

@implementation RBTransitionEffect

- (float)beginTime
{
  effect = self->_effect;
  result = *(&effect + 2) * 0.0039216;
  if ((*&effect & 0x40) != 0)
  {
    return 0.0;
  }

  return result;
}

- (float)duration
{
  effect = self->_effect;
  result = HIBYTE(*&effect) * 0.0039216;
  if ((*&effect & 0x40) != 0)
  {
    return 1.0;
  }

  return result;
}

- (unint64_t)animationIndex
{
  effect = self->_effect;
  if (*(&effect + 2) == *(&effect + 3) || (*&self->_effect & 0x40) == 0)
  {
    return *(&effect + 2) & ((*&effect << 25) >> 31);
  }

  else
  {
    return 0;
  }
}

- (void)setAnimationIndex:(unint64_t)a3
{
  v3 = a3;
  RB::Transition::Effect::set_insert_animation(&self->_effect, a3);

  RB::Transition::Effect::set_remove_animation(&self->_effect, v3);
}

- (float)argumentValueAtIndex:(unint64_t)a3
{
  result = 0.0;
  if (a3 <= 1)
  {
    return self->_args[a3].arg;
  }

  return result;
}

- (void)setArgumentValue:(float)a3 atIndex:(unint64_t)a4
{
  if (a4 <= 1)
  {
    self->_args[a4].arg = a3;
  }
}

- (unsigned)integerArgumentValueAtIndex:(unint64_t)a3
{
  if (a3 > 1)
  {
    return 0;
  }

  else
  {
    return self->_args[a3].int_arg;
  }
}

- (void)setIntegerArgumentValue:(unsigned int)a3 atIndex:(unint64_t)a4
{
  if (a4 <= 1)
  {
    self->_args[a4].int_arg = a3;
  }
}

- (BOOL)isEqual:(id)a3
{
  if (!a3 || *&self->_effect != *(a3 + 2))
  {
    return 0;
  }

  v3 = 0;
  args = self->_args;
  do
  {
    v5.effect = args[v3];
    v6 = *(a3 + v3 * 4 + 12);
    result = v5.int_arg == v6;
  }

  while (v5.int_arg == v6 && v3++ != 1);
  return result;
}

@end