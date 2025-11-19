@interface UIGestureDelayedTouch
- (NSString)description;
- (double)timestampForDelivery;
- (id)copyWithZone:(_NSZone *)a3;
- (id)initWithEvent:(void *)a3 touch:;
- (int64_t)phaseForDelivery;
- (uint64_t)saveCurrentTouchState;
@end

@implementation UIGestureDelayedTouch

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

- (uint64_t)saveCurrentTouchState
{
  if (result)
  {
    v1 = result;
    v2 = objc_alloc_init(UITouch);
    v3 = *(v1 + 40);
    *(v1 + 40) = v2;

    v4 = *(v1 + 40);
    v5 = *(v1 + 24);

    return [v4 _loadStateFromTouch:v5];
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

- (id)initWithEvent:(void *)a3 touch:
{
  v6 = a2;
  v7 = a3;
  if (a1)
  {
    v12.receiver = a1;
    v12.super_class = UIGestureDelayedTouch;
    v8 = objc_msgSendSuper2(&v12, sel_init);
    a1 = v8;
    if (v8)
    {
      objc_storeStrong(v8 + 6, a2);
      objc_storeStrong(a1 + 3, a3);
      v9 = objc_alloc_init(UITouch);
      v10 = a1[4];
      a1[4] = v9;
    }
  }

  return a1;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[UIGestureDelayedTouch allocWithZone:?]];
  v5 = objc_alloc_init(UITouch);
  objc_storeStrong(&v4->_touch, self->_touch);
  objc_storeStrong(&v4->_event, self->_event);
  stateWhenDelayed = v4->_stateWhenDelayed;
  v4->_stateWhenDelayed = v5;
  v7 = v5;

  v4->_clonedForSecondDelivery = self->_clonedForSecondDelivery;
  [(UITouch *)v7 _loadStateFromTouch:self->_stateWhenDelayed];

  return v4;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  touch = self->_touch;
  if (touch)
  {
    v6 = MEMORY[0x1E696AEC0];
    v7 = touch;
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = [v6 stringWithFormat:@"<%@: %p>", v9, v7];
  }

  else
  {
    v10 = @"(nil)";
  }

  [v3 appendFormat:@"<%@: %p; touch = %@", v4, self, v10];

  if (self->_clonedForSecondDelivery)
  {
    [v3 appendString:@"; clone = YES"];
  }

  v11 = [(UITouch *)self->_stateWhenDelayed _phaseDescription];
  [v3 appendFormat:@"; delayed phase = %@", v11];

  if (self->_clonedForSecondDelivery)
  {
    stateWhenDelivered = self->_stateWhenDelivered;
    if (stateWhenDelivered)
    {
      v13 = [(UITouch *)stateWhenDelivered _phaseDescription];
      [v3 appendFormat:@"; current phase = %@", v13];
    }
  }

  [v3 appendFormat:@">"];

  return v3;
}

@end