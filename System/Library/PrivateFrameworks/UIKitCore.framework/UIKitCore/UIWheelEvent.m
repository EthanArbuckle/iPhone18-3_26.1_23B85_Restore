@interface UIWheelEvent
- (double)_wheelVelocity;
- (int64_t)subtype;
- (void)_setHIDEvent:(__IOHIDEvent *)a3;
@end

@implementation UIWheelEvent

- (void)_setHIDEvent:(__IOHIDEvent *)a3
{
  v17.receiver = self;
  v17.super_class = UIWheelEvent;
  [(UIEvent *)&v17 _setHIDEvent:?];
  if ([(UIEvent *)self _hidEvent]&& [(UIWheelEvent *)self _canHaveVelocity])
  {
    if (!self->_recentScrollEvents)
    {
      v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
      recentScrollEvents = self->_recentScrollEvents;
      self->_recentScrollEvents = v4;
    }

    lastSubtype = self->lastSubtype;
    if (lastSubtype != [(UIWheelEvent *)self subtype])
    {
      [(NSMutableArray *)self->_recentScrollEvents removeAllObjects];
      self->_recentScrollDistance = 0;
      self->lastSubtype = [(UIWheelEvent *)self subtype];
    }

    [(UIEvent *)self timestamp];
    v8 = v7 + -0.5;
    v9 = [(NSMutableArray *)self->_recentScrollEvents copy];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __29__UIWheelEvent__setHIDEvent___block_invoke;
    v16[3] = &unk_1E7121090;
    *&v16[5] = v8;
    v16[4] = self;
    [v9 enumerateObjectsUsingBlock:v16];
    IntegerValue = IOHIDEventGetIntegerValue();
    self->_recentScrollDistance += IntegerValue;
    v11 = objc_alloc(MEMORY[0x1E695DF20]);
    v12 = MEMORY[0x1E696AD98];
    [(UIEvent *)self timestamp];
    v13 = [v12 numberWithDouble:?];
    v14 = [MEMORY[0x1E696AD98] numberWithInteger:IntegerValue];
    v15 = [v11 initWithObjectsAndKeys:{v13, @"scrollTimestamp", v14, @"scrollAmount", 0}];

    [(NSMutableArray *)self->_recentScrollEvents addObject:v15];
  }
}

void __29__UIWheelEvent__setHIDEvent___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v11 = a2;
  v6 = [v11 objectForKey:@"scrollTimestamp"];
  [v6 doubleValue];
  v8 = v7;

  if (v8 >= *(a1 + 40))
  {
    *a4 = 1;
  }

  else
  {
    v9 = [v11 objectForKey:@"scrollAmount"];
    v10 = [v9 integerValue];

    [*(*(a1 + 32) + 136) removeObject:v11];
    *(*(a1 + 32) + 128) -= v10;
  }
}

- (int64_t)subtype
{
  [(UIEvent *)self _hidEvent];
  if (IOHIDEventGetType() != 6)
  {
    return 0;
  }

  [(UIEvent *)self _hidEvent];
  if (IOHIDEventGetIntegerValue() >= 0)
  {
    return 200;
  }

  else
  {
    return 201;
  }
}

- (double)_wheelVelocity
{
  if ([(UIWheelEvent *)self _canHaveVelocity])
  {
    return self->_recentScrollDistance + self->_recentScrollDistance;
  }

  v4.receiver = self;
  v4.super_class = UIWheelEvent;
  [(UIEvent *)&v4 _wheelVelocity];
  return result;
}

@end