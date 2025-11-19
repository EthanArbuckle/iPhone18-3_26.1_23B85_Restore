@interface UIFieldBehavior
+ (UIFieldBehavior)dragField;
+ (UIFieldBehavior)electricField;
+ (UIFieldBehavior)fieldWithEvaluationBlock:(void *)block;
+ (UIFieldBehavior)linearGravityFieldWithVector:(CGVector)direction;
+ (UIFieldBehavior)magneticField;
+ (UIFieldBehavior)noiseFieldWithSmoothness:(CGFloat)smoothness animationSpeed:(CGFloat)speed;
+ (UIFieldBehavior)radialGravityFieldWithPosition:(CGPoint)position;
+ (UIFieldBehavior)springField;
+ (UIFieldBehavior)turbulenceFieldWithSmoothness:(CGFloat)smoothness animationSpeed:(CGFloat)speed;
+ (UIFieldBehavior)velocityFieldWithVector:(CGVector)direction;
+ (UIFieldBehavior)vortexField;
- (CGFloat)animationSpeed;
- (CGFloat)smoothness;
- (CGPoint)position;
- (CGVector)direction;
- (NSArray)items;
- (UIFieldBehavior)init;
- (id)_initWithField:(id)a3;
- (void)_addFieldItem:(id)a3;
- (void)_associate;
- (void)_changedParameter;
- (void)_dissociate;
- (void)addItem:(id)item;
- (void)removeItem:(id)item;
- (void)setAnimationSpeed:(CGFloat)animationSpeed;
- (void)setDirection:(CGVector)direction;
- (void)setEnabled:(BOOL)a3;
- (void)setFalloff:(CGFloat)falloff;
- (void)setMinimumRadius:(CGFloat)minimumRadius;
- (void)setPosition:(CGPoint)position;
- (void)setRegion:(UIRegion *)region;
- (void)setSmoothness:(CGFloat)smoothness;
- (void)setStrength:(CGFloat)strength;
@end

@implementation UIFieldBehavior

+ (UIFieldBehavior)dragField
{
  v2 = [a1 alloc];
  v3 = [MEMORY[0x1E69C49E0] field];
  v4 = [v2 _initWithField:v3];

  return v4;
}

+ (UIFieldBehavior)vortexField
{
  v2 = [a1 alloc];
  v3 = [MEMORY[0x1E69C4A28] field];
  v4 = [v2 _initWithField:v3];

  return v4;
}

+ (UIFieldBehavior)radialGravityFieldWithPosition:(CGPoint)position
{
  y = position.y;
  x = position.x;
  v5 = [a1 alloc];
  v6 = [MEMORY[0x1E69C4A08] field];
  v7 = [v5 _initWithField:v6];

  [v7 setPosition:{x, y}];

  return v7;
}

+ (UIFieldBehavior)linearGravityFieldWithVector:(CGVector)direction
{
  dy = direction.dy;
  dx = direction.dx;
  v5 = [a1 alloc];
  v6 = [MEMORY[0x1E69C49F0] field];
  v7 = [v5 _initWithField:v6];

  [v7 setDirection:{dx, dy}];

  return v7;
}

+ (UIFieldBehavior)velocityFieldWithVector:(CGVector)direction
{
  dy = direction.dy;
  dx = direction.dx;
  v5 = [a1 alloc];
  v6 = [MEMORY[0x1E69C4A20] fieldWithGrid:0];
  v7 = [v5 _initWithField:v6];

  [v7 setDirection:{dx, dy}];

  return v7;
}

+ (UIFieldBehavior)noiseFieldWithSmoothness:(CGFloat)smoothness animationSpeed:(CGFloat)speed
{
  v6 = [a1 alloc];
  v7 = [MEMORY[0x1E69C4A00] field];
  v8 = [v6 _initWithField:v7];

  v8[56] |= 1u;
  [v8 setSmoothness:smoothness];
  [v8 setAnimationSpeed:speed];

  return v8;
}

+ (UIFieldBehavior)turbulenceFieldWithSmoothness:(CGFloat)smoothness animationSpeed:(CGFloat)speed
{
  v6 = [a1 alloc];
  v7 = [MEMORY[0x1E69C4A18] field];
  v8 = [v6 _initWithField:v7];

  v8[56] |= 1u;
  [v8 setSmoothness:smoothness];
  [v8 setAnimationSpeed:speed];

  return v8;
}

+ (UIFieldBehavior)springField
{
  v2 = [a1 alloc];
  v3 = [MEMORY[0x1E69C4A10] field];
  v4 = [v2 _initWithField:v3];

  return v4;
}

+ (UIFieldBehavior)electricField
{
  v2 = [a1 alloc];
  v3 = [MEMORY[0x1E69C49E8] field];
  v4 = [v2 _initWithField:v3];

  return v4;
}

+ (UIFieldBehavior)magneticField
{
  v2 = [a1 alloc];
  v3 = [MEMORY[0x1E69C49F8] field];
  v4 = [v2 _initWithField:v3];

  return v4;
}

+ (UIFieldBehavior)fieldWithEvaluationBlock:(void *)block
{
  v5 = block;
  if (!v5)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:a1 file:@"UIFieldBehavior.mm" lineNumber:114 description:{@"Invalid parameter not satisfying: %@", @"block"}];
  }

  v16 = 0;
  v17 = &v16;
  v18 = 0x3042000000;
  v19 = __Block_byref_object_copy__72;
  v20 = __Block_byref_object_dispose__72;
  v21 = 0;
  v6 = [a1 alloc];
  v7 = MEMORY[0x1E69C49D8];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __44__UIFieldBehavior_fieldWithEvaluationBlock___block_invoke;
  v13[3] = &unk_1E7106C08;
  v15 = &v16;
  v8 = v5;
  v14 = v8;
  v9 = [v7 fieldWithCustomBatchBlock:v13];
  v10 = [v6 _initWithField:v9];

  objc_storeWeak(v17 + 5, v10);
  _Block_object_dispose(&v16, 8);
  objc_destroyWeak(&v21);

  return v10;
}

void __44__UIFieldBehavior_fieldWithEvaluationBlock___block_invoke(uint64_t a1, int a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((*(*(a1 + 40) + 8) + 40));
  if (a2 >= 1 && WeakRetained)
  {
    v6 = 0;
    v7 = 0;
    v8 = a2;
    do
    {
      v9 = (*a3 + v6);
      v11 = *v9;
      v10 = v9[1];
      v12 = (*(a3 + 16) + v6);
      v13 = *v12;
      v14 = v12[1];
      v15 = *(a1 + 32);
      PKGet_PTM_RATIO();
      v17 = (*(v15 + 16))(v15, WeakRetained, v11 * v16, v10 * v16, v13, v14, *(*(a3 + 32) + 4 * v7), *(*(a3 + 48) + 4 * v7), *(a3 + 64));
      *&v18 = v18;
      v19 = *(a3 + 72) + 4 * *(a3 + 80) * v7;
      *v19 = v17;
      *(v19 + 4) = LODWORD(v18);
      *(v19 + 8) = 0;
      ++v7;
      v6 += 12;
    }

    while (v8 != v7);
  }
}

- (id)_initWithField:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"UIFieldBehavior.mm" lineNumber:139 description:{@"Invalid parameter not satisfying: %@", @"field"}];
  }

  v15.receiver = self;
  v15.super_class = UIFieldBehavior;
  v7 = [(UIDynamicBehavior *)&v15 init];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
    v10 = v6;
    objc_storeStrong(v9 + 6, a3);
    v11 = +[UIRegion infiniteRegion];
    [v9 setRegion:v11];

    [v10 setScale:0.00781250185];
    LODWORD(v12) = 1.0;
    [v10 setStrength:v12];
  }

  return v8;
}

- (UIFieldBehavior)init
{
  [MEMORY[0x1E695DF30] raise:@"Invalid initialization" format:@"Use one of the supplied convenience initializers"];

  return 0;
}

- (void)_addFieldItem:(id)a3
{
  v6 = a3;
  v4 = [(UIDynamicBehavior *)self dynamicAnimator];
  v5 = [v4 _registerBodyForItem:v6];

  [v5 setUsesPreciseCollisionDetection:1];
  [v5 setResting:0];
  [v5 setFieldBitMask:{objc_msgSend(v5, "fieldBitMask") | -[PKPhysicsField categoryBitMask](self->_field, "categoryBitMask")}];
}

- (void)_changedParameter
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = [(UIDynamicBehavior *)self dynamicAnimator];
  if (v3)
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v4 = [(UIFieldBehavior *)self items];
    v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v5)
    {
      v6 = *v10;
      do
      {
        v7 = 0;
        do
        {
          if (*v10 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v8 = [v3 _bodyForItem:*(*(&v9 + 1) + 8 * v7)];
          [v8 setResting:0];

          ++v7;
        }

        while (v5 != v7);
        v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v5);
    }

    [v3 _tickle];
  }
}

- (void)addItem:(id)item
{
  v6 = item;
  v4 = [(UIDynamicBehavior *)self _items];
  if (([v4 containsObject:v6] & 1) == 0)
  {
    [(UIDynamicBehavior *)self _addItem:v6];
    v5 = [(UIDynamicBehavior *)self dynamicAnimator];
    if (v5)
    {
      [(UIFieldBehavior *)self _addFieldItem:v6];
      [v5 _tickle];
    }
  }
}

- (void)removeItem:(id)item
{
  v4 = item;
  v5 = [(UIDynamicBehavior *)self _items];
  if ([v5 containsObject:v4])
  {
    v6 = [(UIDynamicBehavior *)self dynamicAnimator];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __30__UIFieldBehavior_removeItem___block_invoke;
    v7[3] = &unk_1E7106C30;
    v7[4] = self;
    [v6 _unregisterBodyForItem:v4 action:v7];
    [v6 _tickle];
    [(UIDynamicBehavior *)self _removeItem:v4];
  }
}

void __30__UIFieldBehavior_removeItem___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setFieldBitMask:{objc_msgSend(v3, "fieldBitMask") & ~objc_msgSend(*(*(a1 + 32) + 48), "categoryBitMask")}];
  [v3 setResting:0];
}

- (NSArray)items
{
  v2 = MEMORY[0x1E695DEC8];
  v3 = [(UIDynamicBehavior *)self _items];
  v4 = [v2 arrayWithArray:v3];

  return v4;
}

- (void)setPosition:(CGPoint)position
{
  x = position.x;
  y = position.y;
  PKGet_INV_PTM_RATIO();
  v4.f64[0] = x;
  v4.f64[1] = y;
  [(PKPhysicsField *)self->_field setPosition:COERCE_DOUBLE(vmul_n_f32(vcvt_f32_f64(v4), v5))];

  [(UIFieldBehavior *)self _changedParameter];
}

- (CGPoint)position
{
  [(PKPhysicsField *)self->_field position];
  v6 = v2;
  PKGet_PTM_RATIO();
  v4 = vmulq_n_f64(vcvtq_f64_f32(v6), v3);
  v5 = v4.f64[1];
  result.x = v4.f64[0];
  result.y = v5;
  return result;
}

- (void)setRegion:(UIRegion *)region
{
  v6 = region;
  objc_storeStrong(&self->_region, region);
  v5 = [(UIRegion *)v6 _region];
  [(PKPhysicsField *)self->_field setRegion:v5];

  [(UIFieldBehavior *)self _changedParameter];
}

- (void)setStrength:(CGFloat)strength
{
  *&strength = strength;
  [(PKPhysicsField *)self->_field setStrength:strength];

  [(UIFieldBehavior *)self _changedParameter];
}

- (void)setFalloff:(CGFloat)falloff
{
  *&falloff = falloff;
  [(PKPhysicsField *)self->_field setFalloff:falloff];

  [(UIFieldBehavior *)self _changedParameter];
}

- (void)setMinimumRadius:(CGFloat)minimumRadius
{
  *&minimumRadius = minimumRadius;
  [(PKPhysicsField *)self->_field setMinimumRadius:minimumRadius];

  [(UIFieldBehavior *)self _changedParameter];
}

- (void)setEnabled:(BOOL)a3
{
  [(PKPhysicsField *)self->_field setEnabled:a3];

  [(UIFieldBehavior *)self _changedParameter];
}

- (void)setDirection:(CGVector)direction
{
  *&v4 = direction.dx;
  *&v5 = direction.dy;
  [(PKPhysicsField *)self->_field setDirection:COERCE_DOUBLE(__PAIR64__(v5, v4))];

  [(UIFieldBehavior *)self _changedParameter];
}

- (CGVector)direction
{
  [(PKPhysicsField *)self->_field direction];
  v3 = vcvtq_f64_f32(v2);
  v4 = v3.f64[1];
  result.dx = v3.f64[0];
  result.dy = v4;
  return result;
}

- (void)setSmoothness:(CGFloat)smoothness
{
  if (*&self->_fieldFlags)
  {
    *&smoothness = smoothness;
    [(PKPhysicsField *)self->_field setSmoothness:smoothness];

    [(UIFieldBehavior *)self _changedParameter];
  }
}

- (CGFloat)smoothness
{
  result = 0.0;
  if (*&self->_fieldFlags)
  {
    [(PKPhysicsField *)self->_field smoothness];
    return v3;
  }

  return result;
}

- (void)setAnimationSpeed:(CGFloat)animationSpeed
{
  if (*&self->_fieldFlags)
  {
    *&animationSpeed = animationSpeed;
    [(PKPhysicsField *)self->_field setAnimationSpeed:animationSpeed];

    [(UIFieldBehavior *)self _changedParameter];
  }
}

- (CGFloat)animationSpeed
{
  result = 0.0;
  if (*&self->_fieldFlags)
  {
    [(PKPhysicsField *)self->_field animationSpeed];
    return v3;
  }

  return result;
}

- (void)_associate
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = [(UIDynamicBehavior *)self dynamicAnimator];
  v4 = [v3 _world];
  [v4 addField:self->_field];

  [(UIDynamicBehavior *)self _items];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v5 = v10 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v6)
  {
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v5);
        }

        [(UIFieldBehavior *)self _addFieldItem:*(*(&v9 + 1) + 8 * v8++), v9];
      }

      while (v6 != v8);
      v6 = [v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)_dissociate
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [(UIDynamicBehavior *)self dynamicAnimator];
  v4 = [v3 _world];
  [v4 removeField:self->_field];

  v5 = [(PKPhysicsField *)self->_field categoryBitMask];
  [(UIDynamicBehavior *)self _items];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v6 = v14 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        v11[0] = MEMORY[0x1E69E9820];
        v11[1] = 3221225472;
        v11[2] = __30__UIFieldBehavior__dissociate__block_invoke;
        v11[3] = &__block_descriptor_36_e31_v16__0__PKExtendedPhysicsBody_8l;
        v12 = v5;
        [v3 _unregisterBodyForItem:v10 action:v11];
        ++v9;
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }
}

void __30__UIFieldBehavior__dissociate__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setFieldBitMask:{objc_msgSend(v3, "fieldBitMask") & ~*(a1 + 32)}];
}

@end