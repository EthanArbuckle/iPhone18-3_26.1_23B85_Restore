@interface PULayerAnimation
- (BOOL)isReadyToComplete;
- (NSString)description;
- (PULayerAnimation)initWithLayer:(id)layer key:(id)key;
- (void)_updateLayerAnimation;
- (void)animationDidStart:(id)start;
- (void)animationDidStop:(id)stop finished:(BOOL)finished;
- (void)finishImmediately;
- (void)setSpeed:(float)speed timeOffset:(double)offset beginTime:(double)time;
@end

@implementation PULayerAnimation

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  layer = [(PULayerAnimation *)self layer];
  v7 = [(PULayerAnimation *)self key];
  v8 = [v3 stringWithFormat:@"<%@ %p layer: %@; key: %@>", v5, self, layer, v7];;

  return v8;
}

- (void)animationDidStop:(id)stop finished:(BOOL)finished
{
  stopCopy = stop;
  _animation = [(PULayerAnimation *)self _animation];

  if (_animation == stopCopy)
  {
    self->_isAnimationRunning = 0;
    [(PUAnimationGroup *)self completeIfNeeded];

    [(PULayerAnimation *)self _setAnimation:0];
  }
}

- (void)animationDidStart:(id)start
{
  startCopy = start;
  _animation = [(PULayerAnimation *)self _animation];

  if (_animation == startCopy)
  {
    self->_isAnimationRunning = 1;
  }
}

- (void)_updateLayerAnimation
{
  _animation = [(PULayerAnimation *)self _animation];
  v4 = [_animation mutableCopy];

  *&v5 = self->_speed;
  [v4 setSpeed:v5];
  [v4 setTimeOffset:self->_timeOffset];
  [v4 setBeginTime:self->_beginTime];
  [v4 setDelegate:self];
  layer = [(PULayerAnimation *)self layer];
  v7 = [(PULayerAnimation *)self key];
  [layer removeAnimationForKey:v7];
  [layer addAnimation:v4 forKey:v7];
  v8 = [layer animationForKey:v7];

  [(PULayerAnimation *)self _setAnimation:v8];
}

- (void)finishImmediately
{
  v7.receiver = self;
  v7.super_class = PULayerAnimation;
  [(PUAnimationGroup *)&v7 finishImmediately];
  _animation = [(PULayerAnimation *)self _animation];
  layer = [(PULayerAnimation *)self layer];
  v5 = [(PULayerAnimation *)self key];
  v6 = [layer animationForKey:v5];

  if (_animation == v6)
  {
    [layer removeAnimationForKey:v5];
  }
}

- (void)setSpeed:(float)speed timeOffset:(double)offset beginTime:(double)time
{
  _animation = [(PULayerAnimation *)self _animation];
  if (_animation)
  {
    v15 = _animation;
    layer = [(PULayerAnimation *)self layer];
    v11 = [(PULayerAnimation *)self key];
    v12 = [layer animationForKey:v11];

    if (v15 == v12)
    {
      if (speed == 0.0)
      {
        if (offset < 0.0)
        {
          offset = 0.0;
        }

        [v15 duration];
        v14 = v13 + -0.01;
        if (offset >= v14)
        {
          offset = v14;
        }
      }

      if (self->_speed != speed || offset != self->_timeOffset || self->_beginTime != time)
      {
        self->_speed = speed;
        self->_timeOffset = offset;
        self->_beginTime = time;
        [(PULayerAnimation *)self _updateLayerAnimation];
      }
    }

    else
    {
      self->_isAnimationRunning = 0;
      [(PULayerAnimation *)self _setAnimation:0];
    }

    _animation = v15;
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

  _animation = [(PULayerAnimation *)self _animation];
  if (_animation && self->_isAnimationRunning)
  {
    layer = [(PULayerAnimation *)self layer];
    v5 = [(PULayerAnimation *)self key];
    v6 = [layer animationForKey:v5];
    v7 = _animation != v6;
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (PULayerAnimation)initWithLayer:(id)layer key:(id)key
{
  layerCopy = layer;
  keyCopy = key;
  v10 = keyCopy;
  if (layerCopy)
  {
    if (keyCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PULayerAnimation.m" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"layer != nil"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PULayerAnimation.m" lineNumber:31 description:{@"Invalid parameter not satisfying: %@", @"key != nil"}];

LABEL_3:
  v23.receiver = self;
  v23.super_class = PULayerAnimation;
  v11 = [(PULayerAnimation *)&v23 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_layer, layer);
    v13 = [v10 copy];
    key = v12->_key;
    v12->_key = v13;

    v15 = [layerCopy animationForKey:v12->_key];
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