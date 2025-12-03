@interface RBTransition
+ (RBTransition)defaultTransition;
- (BOOL)isEqual:(id)equal;
- (NSArray)effects;
- (RBAnimation)animation;
- (RBTransition)init;
- (id)copyWithZone:(_NSZone *)zone;
- (uint64_t)_copyOnWrite;
- (uint64_t)setTransition:(uint64_t)result;
- (unint64_t)hash;
- (void)addEffect:(id)effect;
- (void)setAddRemoveDuration:(float)duration;
- (void)setAnimation:(id)animation;
- (void)setMaxChanges:(unsigned int)changes;
- (void)setMethod:(unsigned int)method;
- (void)setReplaceable:(BOOL)replaceable;
@end

@implementation RBTransition

- (RBTransition)init
{
  v3.receiver = self;
  v3.super_class = RBTransition;
  if ([(RBTransition *)&v3 init])
  {
    operator new();
  }

  return 0;
}

- (uint64_t)_copyOnWrite
{
  if (result)
  {
    if (*(*(result + 8) + 8) != 1)
    {
      operator new();
    }

    __dmb(9u);
  }

  return result;
}

+ (RBTransition)defaultTransition
{
  {
    v3 = objc_opt_new();
    *(v3 + 16) = 1;
    +[RBTransition defaultTransition]::default_transition = v3;
  }

  return +[RBTransition defaultTransition]::default_transition;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_new();
  v5 = v4[1];
  p = self->_transition._p;
  if (v5 != p)
  {
    if (v5)
    {
      if (atomic_fetch_add_explicit((v5 + 8), 0xFFFFFFFF, memory_order_release) == 1)
      {
        RB::DisplayList::State::operator=(v5);
      }

      p = self->_transition._p;
    }

    if (p)
    {
      atomic_fetch_add_explicit(p + 2, 1u, memory_order_relaxed);
    }

    v4[1] = p;
  }

  return v4;
}

- (void)setMethod:(unsigned int)method
{
  v4 = rb_transition_method(method);
  if (*(self->_transition._p + 3) != v4)
  {
    if (self->_is_default)
    {
      [(RBTransition *)v4 setMethod:v5];
    }

    v6 = v4;
    [(RBTransition *)self _copyOnWrite];
    *(self->_transition._p + 3) = v6;
  }
}

- (RBAnimation)animation
{
  if (!*(self->_transition._p + 22))
  {
    return 0;
  }

  v3 = objc_opt_new();
  [(RBAnimation *)v3 setRBAnimation:?];

  return v3;
}

- (void)setAnimation:(id)animation
{
  if (self->_is_default)
  {
    [(RBTransition *)self setMethod:a2];
  }

  [(RBTransition *)self _copyOnWrite];
  rb_animation = [(RBAnimation *)animation rb_animation];
  p = self->_transition._p;
  *(p + 22) = 0;
  if (*(rb_animation + 24))
  {
    v7 = *(rb_animation + 24);
  }

  else
  {
    v7 = rb_animation;
  }

  v8 = *(rb_animation + 32);
  if (*(p + 23) < v8)
  {
    RB::vector<RB::Animation::TermOrArg,6ul,unsigned int>::reserve_slow(p + 56, v8);
    v9 = *(p + 22);
  }

  else
  {
    if (!v8)
    {
      v14 = 0;
      goto LABEL_14;
    }

    v9 = 0;
  }

  v10 = *(p + 10);
  if (!v10)
  {
    v10 = p + 56;
  }

  v11 = &v10[4 * v9];
  v12 = v8;
  do
  {
    v13 = *v7++;
    *v11 = v13;
    v11 += 4;
    --v12;
  }

  while (v12);
  v14 = *(p + 22);
LABEL_14:
  *(p + 22) = v14 + v8;
}

- (void)setMaxChanges:(unsigned int)changes
{
  if (*(self->_transition._p + 5) != changes)
  {
    [(RBTransition *)self _copyOnWrite];
    *(self->_transition._p + 5) = changes;
  }
}

- (void)setReplaceable:(BOOL)replaceable
{
  if (*(self->_transition._p + 16) != replaceable)
  {
    [(RBTransition *)self _copyOnWrite];
    *(self->_transition._p + 16) = replaceable;
  }
}

- (void)addEffect:(id)effect
{
  if (self->_is_default)
  {
    [(RBTransition *)self setMethod:a2];
  }

  if (effect)
  {
    [(RBTransition *)self _copyOnWrite];
    v5 = *(effect + 2);
    p = self->_transition._p;
    v7 = *(p + 12);
    if (*(p + 13) < (v7 + 1))
    {
      RB::vector<RB::Symbol::Tag,4ul,unsigned int>::reserve_slow(p + 24, v7 + 1);
      v7 = *(p + 12);
    }

    v8 = *(p + 5);
    if (!v8)
    {
      v8 = p + 24;
    }

    *&v8[4 * v7] = v5;
    ++*(p + 12);
    if (((0x187FA3uLL >> v5) & 1) == 0)
    {
      v9 = (effect + 12);
      if (RB::Transition::_effect_args[v5 & 0x3F] <= 1u)
      {
        v10 = 1;
      }

      else
      {
        v10 = RB::Transition::_effect_args[v5 & 0x3F];
      }

      do
      {
        v11 = self->_transition._p;
        v12 = *(v11 + 12);
        if (*(v11 + 13) < (v12 + 1))
        {
          RB::vector<RB::Symbol::Tag,4ul,unsigned int>::reserve_slow(v11 + 24, v12 + 1);
          v12 = *(v11 + 12);
        }

        v13 = *(v11 + 5);
        if (!v13)
        {
          v13 = v11 + 24;
        }

        v14 = *v9++;
        *&v13[4 * v12] = v14;
        ++*(v11 + 12);
        --v10;
      }

      while (v10);
    }
  }
}

- (NSArray)effects
{
  if (!*(self->_transition._p + 12))
  {
    return MEMORY[0x1E695E0F0];
  }

  array = [MEMORY[0x1E695DF70] array];
  p = self->_transition._p;
  if (*(p + 12))
  {
    v5 = 0;
    do
    {
      v6 = p + 24;
      v7 = *(p + 5);
      if (!v7)
      {
        v7 = v6;
      }

      v8 = &v7[4 * v5];
      v9 = objc_opt_new();
      v10 = v9;
      if (v9)
      {
        v11 = *v8;
        *(v9 + 8) = *v8;
        if (((0x187FA3uLL >> v11) & 1) == 0)
        {
          v12 = (v8 + 4);
          v13 = RB::Transition::_effect_args[v11 & 0x3F];
          v14 = (v9 + 12);
          v15 = 4 * v13;
          do
          {
            v16 = *v12++;
            *v14++ = v16;
            v15 -= 4;
          }

          while (v15);
        }
      }

      [(NSArray *)array addObject:v9];
      v17 = RB::Transition::_effect_args[*v8 & 0x3F];

      v5 += v17 + 1;
      p = self->_transition._p;
    }

    while (v5 < *(p + 12));
  }

  return array;
}

- (void)setAddRemoveDuration:(float)duration
{
  [(RBTransition *)self _copyOnWrite];
  p = self->_transition._p;

  RB::Transition::set_add_remove_duration(p, duration);
}

- (uint64_t)setTransition:(uint64_t)result
{
  if (result)
  {
    v2 = result;
    if (*(result + 16) == 1)
    {
      [(RBTransition *)result setMethod:a2];
    }

    result = *(result + 8);
    if (result != a2)
    {
      if (result)
      {
        if (atomic_fetch_add_explicit((result + 8), 0xFFFFFFFF, memory_order_release) == 1)
        {
          result = RB::DisplayList::State::operator=(result);
        }
      }

      atomic_fetch_add_explicit((a2 + 8), 1u, memory_order_relaxed);
      *(v2 + 8) = a2;
    }
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  p = self->_transition._p;
  v6 = *(equal + 1);

  return RB::Transition::operator==(p, v6);
}

- (unint64_t)hash
{
  p = self->_transition._p;
  v4 = 33 * (-*(p + 16) ^ *(p + 3));
  result = v4 ^ RB::Animation::hash((p + 56));
  v6 = self->_transition._p;
  v7 = *(v6 + 12);
  if (v7)
  {
    v8 = 0;
    v9 = v6 + 24;
    v10 = *(v6 + 5);
    if (!v10)
    {
      v10 = v9;
    }

    do
    {
      v11 = v8;
      v12 = &v10[4 * v8];
      v13 = *v12;
      result = (33 * result) ^ v13;
      v14 = RB::Transition::_effect_args[v13 & 0x3F];
      if (((0x187FA3uLL >> v13) & 1) == 0)
      {
        v15 = *&v12[4 * v11 + 4];
        if (v14 <= 1)
        {
          v16 = 1;
        }

        else
        {
          v16 = RB::Transition::_effect_args[v13 & 0x3F];
        }

        do
        {
          result = (33 * result) ^ v15;
          --v16;
        }

        while (v16);
      }

      v8 = v11 + v14 + 1;
    }

    while (v8 < v7);
  }

  return result;
}

@end