@interface BKMousePointerAnimation
- (BKMousePointerAnimation)initWithRelativeTranslation:(CGPoint)a3 destinationPoint:(CGPoint)a4 animationDriver:(id)a5 updateRate:(int64_t)a6 applierBlock:(id)a7 completionBlock:(id)a8;
- (CGPoint)destinationPoint;
- (void)displayLinkFired:(id)a3;
- (void)start;
- (void)stop;
@end

@implementation BKMousePointerAnimation

- (CGPoint)destinationPoint
{
  x = self->_destinationPoint.x;
  y = self->_destinationPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (void)stop
{
  [(CADisplayLink *)self->_displayLink invalidate];
  displayLink = self->_displayLink;
  self->_displayLink = 0;

  v4 = objc_retainBlock(self->_completionBlock);
  if (v4)
  {
    v6 = v4;
    (*(v4 + 2))(v4, 0, self);
    completionBlock = self->_completionBlock;
    self->_completionBlock = 0;

    v4 = v6;
  }
}

- (void)start
{
  self->_initialTimestamp = CACurrentMediaTime();
  if (self->_targetFPS >= 1)
  {
    v3 = [CADisplayLink displayLinkWithTarget:self selector:"displayLinkFired:"];
    displayLink = self->_displayLink;
    self->_displayLink = v3;

    [(CADisplayLink *)self->_displayLink setPreferredFramesPerSecond:self->_targetFPS];
    v5 = self->_displayLink;
    v6 = +[NSRunLoop mainRunLoop];
    [(CADisplayLink *)v5 addToRunLoop:v6 forMode:NSRunLoopCommonModes];
  }
}

- (void)displayLinkFired:(id)a3
{
  [a3 timestamp];
  [(BKMousePointerAnimationDriver *)self->_animationDriver applyForTime:v4 - self->_initialTimestamp];
  [(BKMousePointerAnimationDriver *)self->_animationDriver currentTranslation];
  v7 = self->_lastSentOriginRelativeOffset.y + v6 - self->_lastSentOriginRelativeOffset.y;
  self->_lastSentOriginRelativeOffset.x = self->_lastSentOriginRelativeOffset.x + v5 - self->_lastSentOriginRelativeOffset.x;
  self->_lastSentOriginRelativeOffset.y = v7;
  applierBlock = self->_applierBlock;
  if (applierBlock && (applierBlock[2]() & 1) == 0)
  {
    [(BKMousePointerAnimation *)self stop];
  }

  if ([(BKMousePointerAnimation *)self isComplete])
  {
    [(CADisplayLink *)self->_displayLink invalidate];
    displayLink = self->_displayLink;
    self->_displayLink = 0;

    v10 = objc_retainBlock(self->_completionBlock);
    if (v10)
    {
      v12 = v10;
      (*(v10 + 2))(v10, 1, self);
      completionBlock = self->_completionBlock;
      self->_completionBlock = 0;

      v10 = v12;
    }
  }
}

- (BKMousePointerAnimation)initWithRelativeTranslation:(CGPoint)a3 destinationPoint:(CGPoint)a4 animationDriver:(id)a5 updateRate:(int64_t)a6 applierBlock:(id)a7 completionBlock:(id)a8
{
  y = a4.y;
  x = a4.x;
  v14 = a3.y;
  v15 = a3.x;
  v17 = a5;
  v18 = a7;
  v19 = a8;
  v27.receiver = self;
  v27.super_class = BKMousePointerAnimation;
  v20 = [(BKMousePointerAnimation *)&v27 init];
  v21 = v20;
  if (v20)
  {
    v20->_initialTimestamp = 0.0;
    v20->_lastSentOriginRelativeOffset = CGPointZero;
    v20->_relativeTranslation.x = v15;
    v20->_relativeTranslation.y = v14;
    v20->_destinationPoint.x = x;
    v20->_destinationPoint.y = y;
    objc_storeStrong(&v20->_animationDriver, a5);
    v21->_targetFPS = a6;
    v22 = [v18 copy];
    applierBlock = v21->_applierBlock;
    v21->_applierBlock = v22;

    v24 = [v19 copy];
    completionBlock = v21->_completionBlock;
    v21->_completionBlock = v24;
  }

  return v21;
}

@end