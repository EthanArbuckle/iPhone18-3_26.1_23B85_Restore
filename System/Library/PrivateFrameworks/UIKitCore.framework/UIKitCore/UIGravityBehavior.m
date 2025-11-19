@interface UIGravityBehavior
- (CGPoint)denormalizedGravity;
- (CGPoint)gravity;
- (CGVector)gravityDirection;
- (NSArray)items;
- (UIGravityBehavior)initWithItems:(NSArray *)items;
- (id)description;
- (void)_addGravityItem:(id)a3;
- (void)_associate;
- (void)_dissociate;
- (void)_setAngle:(double)a3 magnitude:(double)a4;
- (void)addItem:(id)item;
- (void)removeItem:(id)item;
- (void)setAngle:(CGFloat)angle;
- (void)setAngle:(CGFloat)angle magnitude:(CGFloat)magnitude;
- (void)setGravity:(CGPoint)a3;
- (void)setMagnitude:(CGFloat)magnitude;
- (void)setXComponent:(double)a3;
- (void)setYComponent:(double)a3;
@end

@implementation UIGravityBehavior

- (UIGravityBehavior)initWithItems:(NSArray *)items
{
  v4 = items;
  v9.receiver = self;
  v9.super_class = UIGravityBehavior;
  v5 = [(UIDynamicBehavior *)&v9 init];
  v6 = v5;
  if (v5)
  {
    v5->_gravity = xmmword_18A64B720;
    v7 = [(NSArray *)v4 mutableCopy];
    [(UIDynamicBehavior *)v6 _setItems:v7];
  }

  return v6;
}

- (void)_addGravityItem:(id)a3
{
  v4 = a3;
  v5 = [(UIDynamicBehavior *)self _context];
  v6 = [v5 _registerBodyForItem:v4];

  [v6 setUsesPreciseCollisionDetection:1];
  [v6 setAffectedByGravity:1];
  [v6 setResting:0];
}

- (void)addItem:(id)item
{
  v8 = item;
  v4 = [(UIDynamicBehavior *)self _items];
  v5 = [v4 containsObject:v8];

  if ((v5 & 1) == 0)
  {
    [(UIDynamicBehavior *)self _addItem:v8];
    v6 = [(UIDynamicBehavior *)self _context];

    if (v6)
    {
      [(UIGravityBehavior *)self _addGravityItem:v8];
      v7 = [(UIDynamicBehavior *)self _context];
      [v7 _tickle];
    }
  }
}

- (void)removeItem:(id)item
{
  v8 = item;
  v4 = [(UIDynamicBehavior *)self _items];
  v5 = [v4 containsObject:v8];

  if (v5)
  {
    v6 = [(UIDynamicBehavior *)self _context];
    [v6 _unregisterBodyForItem:v8 action:&__block_literal_global_197];

    v7 = [(UIDynamicBehavior *)self _context];
    [v7 _tickle];

    [(UIDynamicBehavior *)self _removeItem:v8];
  }
}

void __32__UIGravityBehavior_removeItem___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setAffectedByGravity:0];
  [v2 setResting:0];
}

- (CGVector)gravityDirection
{
  x = self->_gravity.x;
  y = self->_gravity.y;
  result.dy = y;
  result.dx = x;
  return result;
}

- (CGPoint)gravity
{
  x = self->_gravity.x;
  y = self->_gravity.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)denormalizedGravity
{
  [(UIGravityBehavior *)self gravity];
  v4 = v3 * 10.0;
  [(UIGravityBehavior *)self gravity];
  v6 = v5 * 10.0;
  v7 = v4;
  result.y = v6;
  result.x = v7;
  return result;
}

- (void)setAngle:(CGFloat)angle
{
  [(UIGravityBehavior *)self magnitude];

  [(UIGravityBehavior *)self setAngle:angle magnitude:v5];
}

- (void)setMagnitude:(CGFloat)magnitude
{
  [(UIGravityBehavior *)self angle];

  [UIGravityBehavior setAngle:"setAngle:magnitude:" magnitude:?];
}

- (void)setXComponent:(double)a3
{
  [(UIGravityBehavior *)self yComponent];

  [(UIGravityBehavior *)self setGravity:a3, v5];
}

- (void)setYComponent:(double)a3
{
  [(UIGravityBehavior *)self xComponent];

  [(UIGravityBehavior *)self setGravity:?];
}

- (void)_setAngle:(double)a3 magnitude:(double)a4
{
  v6 = a3;
  v7 = __sincosf_stret(v6);

  [(UIGravityBehavior *)self setGravity:v7.__cosval * a4, v7.__sinval * a4];
}

- (void)setAngle:(CGFloat)angle magnitude:(CGFloat)magnitude
{
  v6 = angle;
  v7 = __sincosf_stret(v6);

  [(UIGravityBehavior *)self setGravity:v7.__cosval * magnitude, v7.__sinval * magnitude];
}

- (void)setGravity:(CGPoint)a3
{
  if (a3.x != self->_gravity.x || a3.y != self->_gravity.y)
  {
    self->_gravity = a3;
    v6 = [(UIDynamicBehavior *)self _context];
    v7 = [v6 _world];
    [(UIGravityBehavior *)self gravity];
    v9 = v8 * 10.0;
    [(UIGravityBehavior *)self gravity];
    [v7 setGravity:{v9, v10 * 10.0}];

    [(UIDynamicBehavior *)self _changedParameterForBody:0];
  }
}

- (NSArray)items
{
  v2 = MEMORY[0x1E695DEC8];
  v3 = [(UIDynamicBehavior *)self _items];
  v4 = [v2 arrayWithArray:v3];

  return v4;
}

- (void)_associate
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [(UIDynamicBehavior *)self _context];
  v4 = [v3 _world];
  [(UIGravityBehavior *)self gravity];
  v6 = v5 * 10.0;
  [(UIGravityBehavior *)self gravity];
  [v4 setGravity:{v6, v7 * 10.0}];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v8 = [(UIDynamicBehavior *)self _items];
  v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [(UIGravityBehavior *)self _addGravityItem:*(*(&v13 + 1) + 8 * v12++)];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

- (void)_dissociate
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [(UIDynamicBehavior *)self _context];
  v4 = [v3 _world];
  [v4 setGravity:{0.0, 0.0}];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(UIDynamicBehavior *)self _items];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        v11 = [(UIDynamicBehavior *)self _context];
        [v11 _unregisterBodyForItem:v10 action:&__block_literal_global_2_9];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v9.receiver = self;
  v9.super_class = UIGravityBehavior;
  v4 = [(UIDynamicBehavior *)&v9 description];
  v5 = NSStringFromCGPoint(self->_gravity);
  v6 = [(UIDynamicBehavior *)self _itemsDescription];
  v7 = [v3 stringWithFormat:@"%@ %@ %@", v4, v5, v6];

  return v7;
}

@end