@interface UIPushBehavior
- (CGPoint)targetPointForItem:(id)item;
- (CGVector)pushDirection;
- (NSArray)items;
- (UIPushBehavior)initWithItems:(NSArray *)items mode:(UIPushBehaviorMode)mode;
- (id)description;
- (void)_associate;
- (void)_dissociate;
- (void)_step;
- (void)addItem:(id)item;
- (void)removeItem:(id)item;
- (void)setActive:(BOOL)active;
- (void)setAngle:(CGFloat)angle;
- (void)setAngle:(CGFloat)angle magnitude:(CGFloat)magnitude;
- (void)setMagnitude:(CGFloat)magnitude;
- (void)setTargetPoint:(CGPoint)point forItem:(id)item;
- (void)setXComponent:(double)component;
- (void)setXComponent:(double)component yComponent:(double)yComponent;
- (void)setYComponent:(double)component;
@end

@implementation UIPushBehavior

- (UIPushBehavior)initWithItems:(NSArray *)items mode:(UIPushBehaviorMode)mode
{
  v6 = items;
  v11.receiver = self;
  v11.super_class = UIPushBehavior;
  v7 = [(UIDynamicBehavior *)&v11 init];
  v8 = v7;
  if (v7)
  {
    v7->_forceVector.dx = 0.0;
    v7->_forceVector.dy = 0.0;
    v7->_active = 1;
    v7->_mode = mode;
    v9 = [(NSArray *)v6 mutableCopy];
    [(UIDynamicBehavior *)v8 _setItems:v9];
  }

  return v8;
}

- (NSArray)items
{
  v2 = MEMORY[0x1E695DEC8];
  _items = [(UIDynamicBehavior *)self _items];
  v4 = [v2 arrayWithArray:_items];

  return v4;
}

- (void)setActive:(BOOL)active
{
  if (self->_active != active)
  {
    self->_active = active;
    _context = [(UIDynamicBehavior *)self _context];
    [_context _tickle];
  }
}

- (void)addItem:(id)item
{
  v8 = item;
  _items = [(UIDynamicBehavior *)self _items];
  v5 = [_items containsObject:v8];

  if ((v5 & 1) == 0)
  {
    _context = [(UIDynamicBehavior *)self _context];
    v7 = [_context _registerBodyForItem:v8];

    [(UIDynamicBehavior *)self _addItem:v8];
  }
}

- (void)removeItem:(id)item
{
  v9 = item;
  _items = [(UIDynamicBehavior *)self _items];
  v5 = [_items containsObject:v9];

  if (v5)
  {
    _context = [(UIDynamicBehavior *)self _context];
    [_context _unregisterBodyForItem:v9 action:0];

    targetPoints = self->_targetPoints;
    v8 = [MEMORY[0x1E696B098] valueWithPointer:v9];
    [(NSMutableDictionary *)targetPoints removeObjectForKey:v8];

    [(UIDynamicBehavior *)self _removeItem:v9];
  }
}

- (CGPoint)targetPointForItem:(id)item
{
  targetPoints = self->_targetPoints;
  v4 = [MEMORY[0x1E696B098] valueWithPointer:item];
  v5 = [(NSMutableDictionary *)targetPoints objectForKey:v4];

  if (v5)
  {
    [v5 CGPointValue];
    v7 = v6;
    v9 = v8;
  }

  else
  {
    v7 = 0.0;
    v9 = 0.0;
  }

  v10 = v7;
  v11 = v9;
  result.y = v11;
  result.x = v10;
  return result;
}

- (void)setTargetPoint:(CGPoint)point forItem:(id)item
{
  y = point.y;
  x = point.x;
  itemCopy = item;
  v8 = itemCopy;
  if (itemCopy)
  {
    v9 = *(MEMORY[0x1E695EFF8] + 8);
    targetPoints = self->_targetPoints;
    v11 = *MEMORY[0x1E695EFF8] == x && v9 == y;
    v17 = itemCopy;
    if (v11)
    {
      v16 = [MEMORY[0x1E696B098] valueWithPointer:{itemCopy, *MEMORY[0x1E695EFF8], v9}];
      [(NSMutableDictionary *)targetPoints removeObjectForKey:v16];

      if ([(NSMutableDictionary *)self->_targetPoints count])
      {
LABEL_12:
        [(UIDynamicBehavior *)self _changedParameterForBody:0];
        v8 = v17;
        goto LABEL_13;
      }

      v14 = self->_targetPoints;
      self->_targetPoints = 0;
    }

    else
    {
      if (!targetPoints)
      {
        v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v13 = self->_targetPoints;
        self->_targetPoints = v12;

        targetPoints = self->_targetPoints;
      }

      v14 = [MEMORY[0x1E696B098] valueWithCGPoint:{x, y}];
      v15 = [MEMORY[0x1E696B098] valueWithPointer:v17];
      [(NSMutableDictionary *)targetPoints setObject:v14 forKey:v15];
    }

    goto LABEL_12;
  }

LABEL_13:
}

- (void)_associate
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  _items = [(UIDynamicBehavior *)self _items];
  v4 = [_items countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(_items);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        _context = [(UIDynamicBehavior *)self _context];
        v10 = [_context _registerBodyForItem:v8];

        [v10 setUsesPreciseCollisionDetection:1];
        ++v7;
      }

      while (v5 != v7);
      v5 = [_items countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }
}

- (void)_dissociate
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  _items = [(UIDynamicBehavior *)self _items];
  v4 = [_items countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(_items);
        }

        v8 = *(*(&v10 + 1) + 8 * v7);
        _context = [(UIDynamicBehavior *)self _context];
        [_context _unregisterBodyForItem:v8 action:0];

        ++v7;
      }

      while (v5 != v7);
      v5 = [_items countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

- (void)setAngle:(CGFloat)angle magnitude:(CGFloat)magnitude
{
  if (self->_magnitude != magnitude || self->_angle != angle)
  {
    self->_magnitude = magnitude;
    self->_angle = angle;
    p_forceVector = &self->_forceVector;
    v6 = self->_magnitude;
    v7 = angle;
    v8 = __sincosf_stret(v7);
    p_forceVector->dx = v6 * v8.__cosval;
    self->_forceVector.dy = v6 * v8.__sinval;

    [(UIDynamicBehavior *)self _changedParameterForBody:0];
  }
}

- (void)setXComponent:(double)component yComponent:(double)yComponent
{
  if (self->_forceVector.dx != component || self->_forceVector.dy != yComponent)
  {
    self->_forceVector.dx = component;
    self->_forceVector.dy = yComponent;
    self->_angle = atan2(yComponent, component);
    self->_magnitude = sqrt(component * component + yComponent * yComponent);

    [(UIDynamicBehavior *)self _changedParameterForBody:0];
  }
}

- (CGVector)pushDirection
{
  dx = self->_forceVector.dx;
  dy = self->_forceVector.dy;
  result.dy = dy;
  result.dx = dx;
  return result;
}

- (void)setXComponent:(double)component
{
  [(UIPushBehavior *)self yComponent];

  [(UIPushBehavior *)self setXComponent:component yComponent:v5];
}

- (void)setYComponent:(double)component
{
  [(UIPushBehavior *)self xComponent];

  [UIPushBehavior setXComponent:"setXComponent:yComponent:" yComponent:?];
}

- (void)setAngle:(CGFloat)angle
{
  [(UIPushBehavior *)self magnitude];

  [(UIPushBehavior *)self setAngle:angle magnitude:v5];
}

- (void)setMagnitude:(CGFloat)magnitude
{
  [(UIPushBehavior *)self angle];

  [UIPushBehavior setAngle:"setAngle:magnitude:" magnitude:?];
}

- (void)_step
{
  v34 = *MEMORY[0x1E69E9840];
  if (self->_active)
  {
    targetPoints = self->_targetPoints;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    obj = [(UIDynamicBehavior *)self _items];
    v4 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v30;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v30 != v6)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v29 + 1) + 8 * i);
          _context = [(UIDynamicBehavior *)self _context];
          v10 = [_context _bodyForItem:v8];

          if (targetPoints)
          {
            v11 = self->_targetPoints;
            v12 = [MEMORY[0x1E696B098] valueWithPointer:v8];
            v13 = [(NSMutableDictionary *)v11 objectForKey:v12];

            if (v13)
            {
              [v13 CGPointValue];
              v15 = v14;
              v17 = v16;
              [v8 center];
              v19 = v15 + v18;
              [v8 center];
              v21 = v17 + v20;
              dx = self->_forceVector.dx;
              dy = self->_forceVector.dy;
              if (self->_mode == 1)
              {
                [v10 applyUnscaledImpulse:dx atPoint:{dy, v19, v21}];
              }

              else
              {
                [v10 applyUnscaledForce:dx atPoint:{dy, v19, v21}];
              }
            }

            else
            {
              v26 = self->_forceVector.dx;
              v27 = self->_forceVector.dy;
              if (self->_mode == 1)
              {
                [v10 applyUnscaledImpulse:{v26, v27}];
              }

              else
              {
                [v10 applyUnscaledForce:{v26, v27}];
              }
            }
          }

          else
          {
            v24 = self->_forceVector.dx;
            v25 = self->_forceVector.dy;
            if (self->_mode == 1)
            {
              [v10 applyUnscaledImpulse:{v24, v25}];
            }

            else
            {
              [v10 applyUnscaledForce:{v24, v25}];
            }
          }
        }

        v5 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v5);
    }

    if (self->_mode == 1)
    {
      self->_active = 0;
    }
  }
}

- (id)description
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AD60];
  v23.receiver = self;
  v23.super_class = UIPushBehavior;
  v4 = [(UIDynamicBehavior *)&v23 description];
  v5 = [v3 stringWithString:v4];

  [v5 appendFormat:@" {%f, %f} - <%f, %f> ", *&self->_forceVector.dx, *&self->_forceVector.dy, *&self->_magnitude, *&self->_angle];
  if (self->_targetPoints)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    _items = [(UIDynamicBehavior *)self _items];
    v7 = [_items countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = v5;
      v10 = *v20;
      do
      {
        v11 = _items;
        for (i = 0; i != v8; ++i)
        {
          if (*v20 != v10)
          {
            objc_enumerationMutation(v11);
          }

          v13 = *(*(&v19 + 1) + 8 * i);
          targetPoints = self->_targetPoints;
          v15 = [MEMORY[0x1E696B098] valueWithPointer:v13];
          v16 = [(NSMutableDictionary *)targetPoints objectForKey:v15];

          if (v16)
          {
            [v16 CGPointValue];
            v17 = NSStringFromCGPoint(v27);
            [v9 appendFormat:@"(%@ -> %@)", v17, v13];
          }
        }

        _items = v11;
        v8 = [v11 countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v8);
      v5 = v9;
    }
  }

  else
  {
    _items = [(UIDynamicBehavior *)self _itemsDescription];
    [v5 appendString:_items];
  }

  return v5;
}

@end