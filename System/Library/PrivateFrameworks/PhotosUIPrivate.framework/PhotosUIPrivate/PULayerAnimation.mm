@interface PULayerAnimation
- (BOOL)isReadyToComplete;
- (NSString)description;
- (PULayerAnimation)initWithLayer:(id)a3 key:(id)a4;
- (void)_updateLayerAnimation;
- (void)animationDidStart:(id)a3;
- (void)animationDidStop:(id)a3 finished:(BOOL)a4;
- (void)finishImmediately;
- (void)setSpeed:(float)a3 timeOffset:(double)a4 beginTime:(double)a5;
@end

@implementation PULayerAnimation

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(PULayerAnimation *)self layer];
  v7 = [(PULayerAnimation *)self key];
  v8 = [v3 stringWithFormat:@"<%@ %p layer: %@; key: %@>", v5, self, v6, v7];;

  return v8;
}

- (void)animationDidStop:(id)a3 finished:(BOOL)a4
{
  v5 = a3;
  v6 = [(PULayerAnimation *)self _animation];

  if (v6 == v5)
  {
    self->_isAnimationRunning = 0;
    [(PUAnimationGroup *)self completeIfNeeded];

    [(PULayerAnimation *)self _setAnimation:0];
  }
}

- (void)animationDidStart:(id)a3
{
  v4 = a3;
  v5 = [(PULayerAnimation *)self _animation];

  if (v5 == v4)
  {
    self->_isAnimationRunning = 1;
  }
}

- (void)_updateLayerAnimation
{
  v3 = [(PULayerAnimation *)self _animation];
  v4 = [v3 mutableCopy];

  *&v5 = self->_speed;
  [v4 setSpeed:v5];
  [v4 setTimeOffset:self->_timeOffset];
  [v4 setBeginTime:self->_beginTime];
  [v4 setDelegate:self];
  v6 = [(PULayerAnimation *)self layer];
  v7 = [(PULayerAnimation *)self key];
  [v6 removeAnimationForKey:v7];
  [v6 addAnimation:v4 forKey:v7];
  v8 = [v6 animationForKey:v7];

  [(PULayerAnimation *)self _setAnimation:v8];
}

- (void)finishImmediately
{
  v7.receiver = self;
  v7.super_class = PULayerAnimation;
  [(PUAnimationGroup *)&v7 finishImmediately];
  v3 = [(PULayerAnimation *)self _animation];
  v4 = [(PULayerAnimation *)self layer];
  v5 = [(PULayerAnimation *)self key];
  v6 = [v4 animationForKey:v5];

  if (v3 == v6)
  {
    [v4 removeAnimationForKey:v5];
  }
}

- (void)setSpeed:(float)a3 timeOffset:(double)a4 beginTime:(double)a5
{
  v9 = [(PULayerAnimation *)self _animation];
  if (v9)
  {
    v15 = v9;
    v10 = [(PULayerAnimation *)self layer];
    v11 = [(PULayerAnimation *)self key];
    v12 = [v10 animationForKey:v11];

    if (v15 == v12)
    {
      if (a3 == 0.0)
      {
        if (a4 < 0.0)
        {
          a4 = 0.0;
        }

        [v15 duration];
        v14 = v13 + -0.01;
        if (a4 >= v14)
        {
          a4 = v14;
        }
      }

      if (self->_speed != a3 || a4 != self->_timeOffset || self->_beginTime != a5)
      {
        self->_speed = a3;
        self->_timeOffset = a4;
        self->_beginTime = a5;
        [(PULayerAnimation *)self _updateLayerAnimation];
      }
    }

    else
    {
      self->_isAnimationRunning = 0;
      [(PULayerAnimation *)self _setAnimation:0];
    }

    v9 = v15;
  }
}

- (BOOL)isReadyToComplete
{
  v9.receiver = self;
  v9.super_class = PULayerAnimation;
  if (![(PUAnimationGroup *)&v9 isReadyToComplete])
  {
    return 0;
  }

  v3 = [(PULayerAnimation *)self _animation];
  if (v3 && self->_isAnimationRunning)
  {
    v4 = [(PULayerAnimation *)self layer];
    v5 = [(PULayerAnimation *)self key];
    v6 = [v4 animationForKey:v5];
    v7 = v3 != v6;
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (PULayerAnimation)initWithLayer:(id)a3 key:(id)a4
{
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v8)
  {
    if (v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"PULayerAnimation.m" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"layer != nil"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  v22 = [MEMORY[0x1E696AAA8] currentHandler];
  [v22 handleFailureInMethod:a2 object:self file:@"PULayerAnimation.m" lineNumber:31 description:{@"Invalid parameter not satisfying: %@", @"key != nil"}];

LABEL_3:
  v23.receiver = self;
  v23.super_class = PULayerAnimation;
  v11 = [(PULayerAnimation *)&v23 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_layer, a3);
    v13 = [v10 copy];
    key = v12->_key;
    v12->_key = v13;

    v15 = [v8 animationForKey:v12->_key];
    animation = v12->__animation;
    v12->__animation = v15;

    [(CAAnimation *)v12->__animation speed];
    v12->_speed = v17;
    [(CAAnimation *)v12->__animation timeOffset];
    v12->_timeOffset = v18;
    [(CAAnimation *)v12->__animation beginTime];
    v12->_beginTime = v19;
    v12->_isAnimationRunning = v12->_speed > 0.0;
  }

  return v12;
}

@end