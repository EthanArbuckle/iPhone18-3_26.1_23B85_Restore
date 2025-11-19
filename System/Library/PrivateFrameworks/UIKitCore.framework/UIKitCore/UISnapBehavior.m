@interface UISnapBehavior
- (CGPoint)snapPoint;
- (UISnapBehavior)init;
- (UISnapBehavior)initWithItem:(id)item snapToPoint:(CGPoint)point;
- (id)description;
- (void)_associate;
- (void)_dissociate;
- (void)_setFrequency:(double)a3;
- (void)setSnapPoint:(CGPoint)snapPoint;
@end

@implementation UISnapBehavior

- (UISnapBehavior)init
{
  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"init is undefined for objects of type %@", objc_opt_class()}];

  return 0;
}

- (UISnapBehavior)initWithItem:(id)item snapToPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v7 = item;
  v11.receiver = self;
  v11.super_class = UISnapBehavior;
  v8 = [(UIDynamicBehavior *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(UIDynamicBehavior *)v8 _addItem:v7];
    v9->_anchorPoint.x = x;
    v9->_anchorPoint.y = y;
    v9->_damping = 0.5;
    v9->_distance = 50.0;
    v9->_frequency = 4.0;
    *&v9->_stateFlags &= ~1u;
  }

  return v9;
}

- (void)_setFrequency:(double)a3
{
  if (self->_frequency != a3)
  {
    self->_frequency = a3;
    [(UIDynamicBehavior *)self _changedParameterForBody:0];
  }
}

- (void)setSnapPoint:(CGPoint)snapPoint
{
  if (snapPoint.x != self->_anchorPoint.x || snapPoint.y != self->_anchorPoint.y)
  {
    self->_anchorPoint = snapPoint;
    [(PKPhysicsBody *)self->_anchorBody setPosition:?];
    [(UIDynamicBehavior *)self _changedParameterForBody:self->_anchorBody];
    v6 = [(UIDynamicBehavior *)self _context];
    v7 = [(UIDynamicBehavior *)self _items];
    v8 = [v7 firstObject];
    v9 = [v6 _bodyForItem:v8];

    [v9 setResting:0];
  }
}

- (CGPoint)snapPoint
{
  x = self->_anchorPoint.x;
  y = self->_anchorPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (void)_associate
{
  v3 = [(UIDynamicBehavior *)self _items];
  v4 = [v3 objectAtIndex:0];

  v5 = [(UIDynamicBehavior *)self _context];
  v6 = [v5 _registerBodyForItem:v4];

  [v4 bounds];
  v9 = [PKExtendedPhysicsBody bodyWithRectangleOfSize:v7, v8];
  [v9 setPosition:{self->_anchorPoint.x, self->_anchorPoint.y}];
  [v9 setDynamic:0];
  v10 = [(UIDynamicBehavior *)self _context];
  v11 = [v10 _world];

  [v11 addBody:v9];
  frequency = self->_frequency;
  distance = self->_distance;
  [v4 bounds];
  v15 = v14 * 0.5;
  [v4 bounds];
  v21[1] = 3221225472;
  v21[0] = MEMORY[0x1E69E9820];
  v21[2] = __28__UISnapBehavior__associate__block_invoke;
  v21[3] = &unk_1E7106C78;
  v22 = v6;
  v23 = v9;
  v27 = v15;
  v28 = v16 * 0.5;
  v29 = distance;
  v30 = frequency;
  v24 = self;
  v25 = v4;
  v26 = v11;
  v17 = v11;
  v18 = v4;
  v19 = v9;
  v20 = v6;
  [v17 _runBlockOutsideOfTimeStep:v21];
}

void __28__UISnapBehavior__associate__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E69C4A30] jointWithBodyA:*(a1 + 32) bodyB:*(a1 + 40) localAnchorA:-*(a1 + 72) localAnchorB:{-*(a1 + 80), -*(a1 + 72) - *(a1 + 88), -*(a1 + 80)}];
  [v2 setDamping:*(*(a1 + 48) + 64)];
  [v2 setFrequency:*(a1 + 96)];
  [*(a1 + 56) bounds];
  [v2 setLength:v3 * 0.5];
  [*(a1 + 64) addJoint:v2];
  v4 = [MEMORY[0x1E69C4A30] jointWithBodyA:*(a1 + 32) bodyB:*(a1 + 40) localAnchorA:-*(a1 + 72) localAnchorB:{-*(a1 + 80), -*(a1 + 72), -*(a1 + 80) - *(a1 + 88)}];
  [v4 setDamping:*(*(a1 + 48) + 64)];
  [v4 setFrequency:*(a1 + 96)];
  [*(a1 + 56) bounds];
  [v4 setLength:v5 * 0.5];
  [*(a1 + 64) addJoint:v4];
  v6 = [MEMORY[0x1E69C4A30] jointWithBodyA:*(a1 + 32) bodyB:*(a1 + 40) localAnchorA:*(a1 + 72) localAnchorB:{*(a1 + 80), *(a1 + 72) + *(a1 + 88), *(a1 + 80)}];
  [v6 setDamping:*(*(a1 + 48) + 64)];
  [v6 setFrequency:*(a1 + 96)];
  [*(a1 + 64) addJoint:v6];
  v7 = [MEMORY[0x1E69C4A30] jointWithBodyA:*(a1 + 32) bodyB:*(a1 + 40) localAnchorA:*(a1 + 72) localAnchorB:{*(a1 + 80), *(a1 + 72), *(a1 + 80) + *(a1 + 88)}];
  [v7 setDamping:*(*(a1 + 48) + 64)];
  [v7 setFrequency:*(a1 + 96)];
  [*(a1 + 64) addJoint:v7];
  v8 = dispatch_time(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __28__UISnapBehavior__associate__block_invoke_2;
  block[3] = &unk_1E70F4378;
  v9 = v2;
  v18 = v9;
  v22 = *(a1 + 88);
  v10 = v4;
  v19 = v10;
  v11 = v6;
  v20 = v11;
  v12 = v7;
  v21 = v12;
  dispatch_after(v8, MEMORY[0x1E69E96A0], block);
  v13 = *(a1 + 48);
  if (!*(v13 + 96))
  {
    v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v15 = *(a1 + 48);
    v16 = *(v15 + 96);
    *(v15 + 96) = v14;

    [*(*(a1 + 48) + 96) addObject:v9];
    [*(*(a1 + 48) + 96) addObject:v10];
    [*(*(a1 + 48) + 96) addObject:v11];
    [*(*(a1 + 48) + 96) addObject:v12];
    v13 = *(a1 + 48);
  }

  objc_storeStrong((v13 + 104), *(a1 + 40));
}

uint64_t __28__UISnapBehavior__associate__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setLength:*(a1 + 64)];
  [*(a1 + 40) setLength:*(a1 + 64)];
  [*(a1 + 48) setLength:*(a1 + 64)];
  v2 = *(a1 + 64);
  v3 = *(a1 + 56);

  return [v3 setLength:v2];
}

- (void)_dissociate
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [(UIDynamicBehavior *)self _context];
  v4 = [v3 _world];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_joints;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      v9 = 0;
      do
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [v4 removeJoint:{*(*(&v15 + 1) + 8 * v9++), v15}];
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  [v4 removeBody:self->_anchorBody];
  v10 = [(UIDynamicBehavior *)self _items];
  v11 = [v10 objectAtIndex:0];

  v12 = [(UIDynamicBehavior *)self _context];
  [v12 _unregisterBodyForItem:v11 action:0];

  anchorBody = self->_anchorBody;
  self->_anchorBody = 0;

  joints = self->_joints;
  self->_joints = 0;
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v10.receiver = self;
  v10.super_class = UISnapBehavior;
  v4 = [(UIDynamicBehavior *)&v10 description];
  v5 = [v3 stringWithString:v4];

  v6 = [(UIDynamicBehavior *)self _items];
  v7 = [v6 objectAtIndex:0];

  [v5 appendFormat:@" %@ <-", v7];
  if ((*&self->_stateFlags & 2) != 0)
  {
    [v5 appendFormat:@"(D:%f)", *&self->_damping];
  }

  v8 = NSStringFromCGPoint(self->_anchorPoint);
  [v5 appendFormat:@"-> %@", v8];

  return v5;
}

@end