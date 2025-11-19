@interface UIGestureDelayedPress
- (NSString)description;
- (double)timestampForDelivery;
- (id)copyWithZone:(_NSZone *)a3;
- (id)initWithEvent:(void *)a3 press:;
- (int64_t)phaseForDelivery;
- (uint64_t)saveCurrentPressState;
@end

@implementation UIGestureDelayedPress

- (id)initWithEvent:(void *)a3 press:
{
  v6 = a2;
  v7 = a3;
  if (a1)
  {
    v12.receiver = a1;
    v12.super_class = UIGestureDelayedPress;
    v8 = objc_msgSendSuper2(&v12, sel_init);
    a1 = v8;
    if (v8)
    {
      objc_storeStrong(v8 + 6, a2);
      objc_storeStrong(a1 + 3, a3);
      v9 = objc_alloc_init(UIPress);
      v10 = a1[4];
      a1[4] = v9;
    }
  }

  return a1;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[UIGestureDelayedPress allocWithZone:?]];
  v5 = objc_alloc_init(UIPress);
  objc_storeStrong(&v4->_press, self->_press);
  objc_storeStrong(&v4->_event, self->_event);
  stateWhenDelayed = v4->_stateWhenDelayed;
  v4->_stateWhenDelayed = v5;
  v7 = v5;

  v4->_clonedForSecondDelivery = self->_clonedForSecondDelivery;
  [(UIPress *)v7 _loadStateFromPress:self->_stateWhenDelayed];

  return v4;
}

- (uint64_t)saveCurrentPressState
{
  if (result)
  {
    v1 = result;
    v2 = objc_alloc_init(UIPress);
    v3 = *(v1 + 40);
    *(v1 + 40) = v2;

    v4 = *(v1 + 40);
    v5 = *(v1 + 24);

    return [v4 _loadStateFromPress:v5];
  }

  return result;
}

- (int64_t)phaseForDelivery
{
  v2 = 32;
  if (self->_clonedForSecondDelivery)
  {
    v2 = 40;
  }

  return [*(&self->super.isa + v2) phase];
}

- (double)timestampForDelivery
{
  v2 = 32;
  if (self->_clonedForSecondDelivery)
  {
    v2 = 40;
  }

  [*(&self->super.isa + v2) timestamp];
  return result;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E696AD60] string];
  [v3 appendFormat:@"<%@: %p", objc_opt_class(), self];
  if (self && self->_clonedForSecondDelivery)
  {
    [v3 appendString:@"; clone = YES"];
  }

  v4 = [(UIPress *)self->_stateWhenDelayed _phaseDescription];
  [v3 appendFormat:@"; delayed phase = %@", v4];

  if (self->_clonedForSecondDelivery)
  {
    stateWhenDelivered = self->_stateWhenDelivered;
    if (stateWhenDelivered)
    {
      v6 = [(UIPress *)stateWhenDelivered _phaseDescription];
      [v3 appendFormat:@"; current phase = %@", v6];
    }
  }

  [v3 appendFormat:@">"];

  return v3;
}

@end