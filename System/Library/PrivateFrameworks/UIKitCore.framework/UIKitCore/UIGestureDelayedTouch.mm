@interface UIGestureDelayedTouch
- (NSString)description;
- (double)timestampForDelivery;
- (id)copyWithZone:(_NSZone *)zone;
- (id)initWithEvent:(void *)event touch:;
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

- (id)initWithEvent:(void *)event touch:
{
  v6 = a2;
  eventCopy = event;
  if (self)
  {
    v12.receiver = self;
    v12.super_class = UIGestureDelayedTouch;
    v8 = objc_msgSendSuper2(&v12, sel_init);
    self = v8;
    if (v8)
    {
      objc_storeStrong(v8 + 6, a2);
      objc_storeStrong(self + 3, event);
      v9 = objc_alloc_init(UITouch);
      v10 = self[4];
      self[4] = v9;
    }
  }

  return self;
}

- (id)copyWithZone:(_NSZone *)zone
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
  string = [MEMORY[0x1E696AD60] string];
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

  [string appendFormat:@"<%@: %p; touch = %@", v4, self, v10];

  if (self->_clonedForSecondDelivery)
  {
    [string appendString:@"; clone = YES"];
  }

  _phaseDescription = [(UITouch *)self->_stateWhenDelayed _phaseDescription];
  [string appendFormat:@"; delayed phase = %@", _phaseDescription];

  if (self->_clonedForSecondDelivery)
  {
    stateWhenDelivered = self->_stateWhenDelivered;
    if (stateWhenDelivered)
    {
      _phaseDescription2 = [(UITouch *)stateWhenDelivered _phaseDescription];
      [string appendFormat:@"; current phase = %@", _phaseDescription2];
    }
  }

  [string appendFormat:@">"];

  return string;
}

@end