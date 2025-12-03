@interface RBTransitionEffect
- (BOOL)isEqual:(id)equal;
- (float)argumentValueAtIndex:(unint64_t)index;
- (float)beginTime;
- (float)duration;
- (unint64_t)animationIndex;
- (unsigned)integerArgumentValueAtIndex:(unint64_t)index;
- (void)setAnimationIndex:(unint64_t)index;
- (void)setArgumentValue:(float)value atIndex:(unint64_t)index;
- (void)setIntegerArgumentValue:(unsigned int)value atIndex:(unint64_t)index;
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

- (void)setAnimationIndex:(unint64_t)index
{
  indexCopy = index;
  RB::Transition::Effect::set_insert_animation(&self->_effect, index);

  RB::Transition::Effect::set_remove_animation(&self->_effect, indexCopy);
}

- (float)argumentValueAtIndex:(unint64_t)index
{
  result = 0.0;
  if (index <= 1)
  {
    return self->_args[index].arg;
  }

  return result;
}

- (void)setArgumentValue:(float)value atIndex:(unint64_t)index
{
  if (index <= 1)
  {
    self->_args[index].arg = value;
  }
}

- (unsigned)integerArgumentValueAtIndex:(unint64_t)index
{
  if (index > 1)
  {
    return 0;
  }

  else
  {
    return self->_args[index].int_arg;
  }
}

- (void)setIntegerArgumentValue:(unsigned int)value atIndex:(unint64_t)index
{
  if (index <= 1)
  {
    self->_args[index].int_arg = value;
  }
}

- (BOOL)isEqual:(id)equal
{
  if (!equal || *&self->_effect != *(equal + 2))
  {
    return 0;
  }

  v3 = 0;
  args = self->_args;
  do
  {
    v5.effect = args[v3];
    v6 = *(equal + v3 * 4 + 12);
    result = v5.int_arg == v6;
  }

  while (v5.int_arg == v6 && v3++ != 1);
  return result;
}

@end