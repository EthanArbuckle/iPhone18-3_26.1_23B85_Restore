@interface UIGestureDelayedPress
- (NSString)description;
- (double)timestampForDelivery;
- (id)copyWithZone:(_NSZone *)zone;
- (id)initWithEvent:(void *)event press:;
- (int64_t)phaseForDelivery;
- (uint64_t)saveCurrentPressState;
@end

@implementation UIGestureDelayedPress

- (id)initWithEvent:(void *)event press:
{
  v6 = a2;
  eventCopy = event;
  if (self)
  {
    v12.receiver = self;
    v12.super_class = UIGestureDelayedPress;
    v8 = objc_msgSendSuper2(&v12, sel_init);
    self = v8;
    if (v8)
    {
      objc_storeStrong(v8 + 6, a2);
      objc_storeStrong(self + 3, event);
      v9 = objc_alloc_init(UIPress);
      v10 = self[4];
      self[4] = v9;
    }
  }

  return self;
}

- (id)copyWithZone:(_NSZone *)zone
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
  string = [MEMORY[0x1E696AD60] string];
  [string appendFormat:@"<%@: %p", objc_opt_class(), self];
  if (self && self->_clonedForSecondDelivery)
  {
    [string appendString:@"; clone = YES"];
  }

  _phaseDescription = [(UIPress *)self->_stateWhenDelayed _phaseDescription];
  [string appendFormat:@"; delayed phase = %@", _phaseDescription];

  if (self->_clonedForSecondDelivery)
  {
    stateWhenDelivered = self->_stateWhenDelivered;
    if (stateWhenDelivered)
    {
      _phaseDescription2 = [(UIPress *)stateWhenDelivered _phaseDescription];
      [string appendFormat:@"; current phase = %@", _phaseDescription2];
    }
  }

  [string appendFormat:@">"];

  return string;
}

@end