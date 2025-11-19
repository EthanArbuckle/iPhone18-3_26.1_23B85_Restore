@interface _UIDynamicValueAnimation
+ (id)_dynamicValueAnimationMatchingCASpringAnimationWithMass:(double)a3 stiffness:(double)a4 damping:(float)a5 velocity:(float)a6 fromValue:(double)a7 toValue:(double)a8;
- (BOOL)_animateForInterval:(double)a3;
- (_UIDynamicValueAnimation)initWithValue:(double)a3 velocity:(double)a4 unitSize:(double)a5;
- (double)settlingDuration;
- (void)_appendSubclassDescription:(id)a3 atLevel:(int)a4;
- (void)_setDecelerationFactor:(double)a3;
- (void)_stopAnimation;
- (void)_updateStepFunction;
- (void)addActiveValue:(id)a3;
- (void)dealloc;
- (void)removeActiveValue:(id)a3;
- (void)runWithCompletion:(id)a3;
- (void)runWithValueApplier:(id)a3 completion:(id)a4 forScreen:(id)a5 runLoopMode:(id)a6;
- (void)setActiveValues:(id)a3;
- (void)setFriction:(double)a3;
@end

@implementation _UIDynamicValueAnimation

+ (id)_dynamicValueAnimationMatchingCASpringAnimationWithMass:(double)a3 stiffness:(double)a4 damping:(float)a5 velocity:(float)a6 fromValue:(double)a7 toValue:(double)a8
{
  v12 = [[_UIDynamicValueAnimation alloc] initWithValue:a7 velocity:(a8 - a7) * a6 unitSize:0.001];
  v13 = [_UIDynamicAnimationActiveValue activeValue:0 ofType:a8];
  [v13 _setBoundaryPull:a4 / 1000.0 / a3];
  [(_UIDynamicValueAnimation *)v12 _setDecelerationFactor:1.0 - a5 / a3 * 0.001];
  [(_UIDynamicValueAnimation *)v12 addActiveValue:v13];

  return v12;
}

- (_UIDynamicValueAnimation)initWithValue:(double)a3 velocity:(double)a4 unitSize:(double)a5
{
  if (a5 <= 0.0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"unit size must be > 0"];
  }

  v10.receiver = self;
  v10.super_class = _UIDynamicValueAnimation;
  result = [(_UIDynamicAnimation *)&v10 init];
  if (result)
  {
    result->_value = a3;
    result->_velocity = a4 / 1000.0;
    result->_unitSize = a5;
    result->_friction = 0.08;
    result->_decelerationFactor = 0.998;
    result->_decelerationLnFactor = -0.00200200267;
    result->_multiplier = 1.0;
    result->_stepFunction = _UIDynamicAnimationStepFrictionOnly;
  }

  return result;
}

- (double)settlingDuration
{
  value = self->_value;
  velocity = self->_velocity;
  v5 = [objc_msgSend(objc_opt_self() "mainScreen")];
  v6 = 0.0;
  if (!_UIDynamicAnimationIsAtRest(self))
  {
    v7 = 1.0 / v5 * 1000.0;
    do
    {
      (self->_stepFunction)(self, v7);
      v6 = v7 + v6;
    }

    while (!_UIDynamicAnimationIsAtRest(self));
  }

  result = v6 / 1000.0;
  self->_value = value;
  self->_velocity = velocity;
  return result;
}

- (void)dealloc
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  activeValues = self->_activeValues;
  v4 = [(NSMutableArray *)activeValues countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(activeValues);
        }

        [*(*(&v9 + 1) + 8 * i) removeObserver:self forKeyPath:@"type"];
      }

      v5 = [(NSMutableArray *)activeValues countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8.receiver = self;
  v8.super_class = _UIDynamicValueAnimation;
  [(_UIDynamicAnimation *)&v8 dealloc];
}

- (void)_stopAnimation
{
  self->_applier = 0;
  self->_viewApplier = 0;
  v3.receiver = self;
  v3.super_class = _UIDynamicValueAnimation;
  [(_UIDynamicAnimation *)&v3 _stopAnimation];
}

- (void)_updateStepFunction
{
  v23 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  activeValues = self->_activeValues;
  v4 = [(NSMutableArray *)activeValues countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (!v4)
  {
    v17 = [(NSMutableArray *)self->_activeValues count];
    v16 = _UIDynamicAnimationStepFrictionOnly;
    if (!v17)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  v5 = v4;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = *v19;
  do
  {
    for (i = 0; i != v5; ++i)
    {
      if (*v19 != v9)
      {
        objc_enumerationMutation(activeValues);
      }

      v11 = *(*(&v18 + 1) + 8 * i);
      if ([v11 type] == 1)
      {
        if ([v11 _isLowerBoundary])
        {
          ++v7;
        }

        else
        {
          v12 = [v11 _isUpperBoundary];
          v6 += v12;
          v8 |= v12 ^ 1;
        }
      }

      else
      {
        v8 = 1;
      }
    }

    v5 = [(NSMutableArray *)activeValues countByEnumeratingWithState:&v18 objects:v22 count:16];
  }

  while (v5);
  v13 = [(NSMutableArray *)self->_activeValues count];
  v15 = v7 > 1 || v6 > 1;
  if (!v13)
  {
    v15 = 1;
  }

  v16 = _UIDynamicAnimationStepFrictionOnly;
  if (v13)
  {
    v16 = _UIDynamicAnimationStep;
  }

  if (((v15 | v8) & 1) == 0)
  {
LABEL_24:
    v16 = _UIDynamicAnimationStepFrictionAndSoftStopOnly;
  }

LABEL_25:
  self->_stepFunction = v16;
}

- (void)addActiveValue:(id)a3
{
  if (a3)
  {
    activeValues = self->_activeValues;
    if (!activeValues)
    {
      activeValues = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:0];
      self->_activeValues = activeValues;
    }

    [(NSMutableArray *)activeValues addObject:a3];
    [a3 addObserver:self forKeyPath:@"type" options:0 context:0];

    [(_UIDynamicValueAnimation *)self _updateStepFunction];
  }
}

- (void)removeActiveValue:(id)a3
{
  if ([(NSMutableArray *)self->_activeValues containsObject:?])
  {
    [a3 removeObserver:self forKeyPath:@"type"];
    [(NSMutableArray *)self->_activeValues removeObject:a3];

    [(_UIDynamicValueAnimation *)self _updateStepFunction];
  }
}

- (void)setActiveValues:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  activeValues = self->_activeValues;
  if (activeValues != a3)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v6 = [(NSMutableArray *)activeValues countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v20;
      do
      {
        v9 = 0;
        do
        {
          if (*v20 != v8)
          {
            objc_enumerationMutation(activeValues);
          }

          [*(*(&v19 + 1) + 8 * v9++) removeObserver:self forKeyPath:@"type"];
        }

        while (v7 != v9);
        v7 = [(NSMutableArray *)activeValues countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v7);
    }

    v10 = [a3 mutableCopy];
    self->_activeValues = v10;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v16;
      do
      {
        v14 = 0;
        do
        {
          if (*v16 != v13)
          {
            objc_enumerationMutation(v10);
          }

          [*(*(&v15 + 1) + 8 * v14++) addObserver:self forKeyPath:@"type" options:0 context:0];
        }

        while (v12 != v14);
        v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
      }

      while (v12);
    }

    [(_UIDynamicValueAnimation *)self _updateStepFunction];
  }
}

- (BOOL)_animateForInterval:(double)a3
{
  if ((a3 * 1000.0) < 1)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    value = self->_value;
    (self->_stepFunction)();
    v5 = _UIDynamicAnimationIsAtRest(self);
    v7[4] = self;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __48___UIDynamicValueAnimation__animateForInterval___block_invoke;
    v8[3] = &unk_1E70F5C50;
    v8[4] = self;
    *&v8[5] = value;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __48___UIDynamicValueAnimation__animateForInterval___block_invoke_2;
    v7[3] = &unk_1E70F5C78;
    [(_UIDynamicAnimation *)self _callAppliers:v8 additionalEndAppliers:v7 done:v5];
  }

  return v5;
}

- (void)runWithValueApplier:(id)a3 completion:(id)a4 forScreen:(id)a5 runLoopMode:(id)a6
{
  if (a3)
  {
    if ((*(&self->super + 20) & 2) != 0)
    {
      return;
    }

    self->_applier = [a3 copy];
    goto LABEL_8;
  }

  if (!self->_applier && !self->_viewApplier)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"valueApplier must be non-nil", a5, a6}];
  }

  if ((*(&self->super + 20) & 2) == 0)
  {
LABEL_8:
    v9.receiver = self;
    v9.super_class = _UIDynamicValueAnimation;
    [(_UIDynamicAnimation *)&v9 runWithCompletion:a4];
  }
}

- (void)runWithCompletion:(id)a3
{
  if (*&self->_applier == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Dynamic animations without pre-set appliers must be run with an explicit applier. Use runWithValueApplier:completion:"];
  }

  [(_UIDynamicValueAnimation *)self runWithValueApplier:0 completion:a3];
}

- (void)setFriction:(double)a3
{
  if (a3 > 1.0)
  {
    a3 = 1.0;
  }

  v3 = fmax(a3, 0.0);
  self->_friction = v3;
  v4 = v3 * -0.025 + 1.0;
  self->_decelerationFactor = v4;
  self->_decelerationLnFactor = log(v4);
}

- (void)_setDecelerationFactor:(double)a3
{
  v3 = 1.0;
  if ((1.0 - a3) / 0.025 <= 1.0)
  {
    v3 = (1.0 - a3) / 0.025;
  }

  self->_friction = fmax(v3, 0.0);
  self->_decelerationFactor = a3;
  self->_decelerationLnFactor = log(a3);
}

- (void)_appendSubclassDescription:(id)a3 atLevel:(int)a4
{
  v24 = *MEMORY[0x1E69E9840];
  [(_UIDynamicValueAnimation *)self value];
  [a3 appendFormat:@"; value = %f", v7];
  [(_UIDynamicValueAnimation *)self velocity];
  [a3 appendFormat:@"; velocity = %f", v8];
  [(_UIDynamicValueAnimation *)self friction];
  if (v9 != 0.002)
  {
    [(_UIDynamicValueAnimation *)self friction];
    [a3 appendFormat:@"; friction = %f", v10];
  }

  if ([(NSMutableArray *)self->_activeValues count])
  {
    [a3 appendString:@"; active values = {"];
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    activeValues = self->_activeValues;
    v12 = [(NSMutableArray *)activeValues countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v20;
      v15 = 1;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v20 != v14)
          {
            objc_enumerationMutation(activeValues);
          }

          v17 = *(*(&v19 + 1) + 8 * i);
          if ((v15 & 1) == 0)
          {
            [a3 appendString:{@", "}];
          }

          [v17 _appendDescriptionToString:a3 atLevel:(a4 + 1)];
          v15 = 0;
        }

        v13 = [(NSMutableArray *)activeValues countByEnumeratingWithState:&v19 objects:v23 count:16];
        v15 = 0;
      }

      while (v13);
    }

    [a3 appendString:@"\n"];
    if (a4)
    {
      v18 = 1;
      do
      {
        [a3 appendString:@"    "];
        ++v18;
      }

      while (v18 <= a4);
    }

    [a3 appendString:@"}"];
  }
}

@end