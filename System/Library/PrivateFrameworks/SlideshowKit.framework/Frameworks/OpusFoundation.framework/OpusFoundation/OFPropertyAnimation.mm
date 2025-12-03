@interface OFPropertyAnimation
+ (id)animateWithDuration:(double)duration rootLayer:(id)layer animation:(id)animation progress:(id)progress completion:(id)completion;
+ (id)interpolateValueForKey:(id)key animation:(id)animation progress:(double)progress;
- (CGPoint)animatedPoint;
- (OFPropertyAnimation)init;
- (double)animatedFloat;
- (void)_cleanup;
- (void)animationDidStop:(id)stop finished:(BOOL)finished;
- (void)cancel;
- (void)dealloc;
- (void)handleTimer:(id)timer;
@end

@implementation OFPropertyAnimation

- (OFPropertyAnimation)init
{
  v4.receiver = self;
  v4.super_class = OFPropertyAnimation;
  v2 = [(OFPropertyAnimation *)&v4 init];
  if (v2)
  {
    *(v2 + 1) = [MEMORY[0x277CCACA8] generateUUID];
    *(v2 + 2) = +[OFPropertyAnimationLayer layer];
    *(v2 + 24) = 0u;
    *(v2 + 40) = 0u;
  }

  return v2;
}

- (void)dealloc
{
  animationKey = self->_animationKey;
  if (animationKey)
  {

    self->_animationKey = 0;
  }

  layer = self->_layer;
  if (layer)
  {

    self->_layer = 0;
  }

  propertyAnimation = self->_propertyAnimation;
  if (propertyAnimation)
  {

    self->_propertyAnimation = 0;
  }

  timer = self->_timer;
  if (timer)
  {
    if ([(NSTimer *)timer isValid])
    {
      [(NSTimer *)self->_timer invalidate];
    }

    self->_timer = 0;
  }

  progressBlock = self->_progressBlock;
  if (progressBlock)
  {

    self->_progressBlock = 0;
  }

  completionBlock = self->_completionBlock;
  if (completionBlock)
  {

    self->_completionBlock = 0;
  }

  v9.receiver = self;
  v9.super_class = OFPropertyAnimation;
  [(OFPropertyAnimation *)&v9 dealloc];
}

+ (id)animateWithDuration:(double)duration rootLayer:(id)layer animation:(id)animation progress:(id)progress completion:(id)completion
{
  v13 = objc_alloc_init(OFPropertyAnimation);
  v13->_progressBlock = [progress copy];
  v13->_completionBlock = [completion copy];
  [layer addSublayer:v13->_layer];
  v14 = (*(animation + 2))(animation, v13);
  v13->_propertyAnimation = v14;
  [(CAPropertyAnimation *)v14 setDuration:duration];
  [(CAPropertyAnimation *)v13->_propertyAnimation setRemovedOnCompletion:1];
  [(CAPropertyAnimation *)v13->_propertyAnimation setDelegate:v13];
  [(OFPropertyAnimationLayer *)v13->_layer addAnimation:v13->_propertyAnimation forKey:v13->_animationKey];
  selfCopy = self;

  return v13;
}

- (void)_cleanup
{
  timer = self->_timer;
  if (timer)
  {
    if ([(NSTimer *)timer isValid])
    {
      [(NSTimer *)self->_timer invalidate];
    }

    self->_timer = 0;
  }

  [(OFPropertyAnimationLayer *)self->_layer removeAnimationForKey:self->_animationKey];
  layer = self->_layer;

  [(OFPropertyAnimationLayer *)layer removeFromSuperlayer];
}

- (void)cancel
{
  [(OFPropertyAnimation *)self _cleanup];
  [(OFPropertyAnimation *)self animatedPoint];
  [(OFPropertyAnimation *)self setDestinationAnimatedPoint:?];
  [(OFPropertyAnimation *)self animatedFloat];

  [(OFPropertyAnimation *)self setDestinationAnimatedFloat:?];
}

+ (id)interpolateValueForKey:(id)key animation:(id)animation progress:(double)progress
{
  v8 = objc_alloc_init(OFPropertyAnimation);
  v9 = (*(animation + 2))(animation, v8);
  v8->_propertyAnimation = v9;
  [(CAPropertyAnimation *)v9 setDuration:1.0];
  v10 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:1];
  [(CAPropertyAnimation *)v8->_propertyAnimation applyForTime:v10 presentationObject:v10 modelObject:progress];
  v11 = [v10 valueForKey:key];

  return v11;
}

- (CGPoint)animatedPoint
{
  v2 = [-[OFPropertyAnimationLayer presentationLayer](self->_layer "presentationLayer")];

  [v2 CGPointValue];
  result.y = v4;
  result.x = v3;
  return result;
}

- (double)animatedFloat
{
  v2 = [-[OFPropertyAnimationLayer presentationLayer](self->_layer "presentationLayer")];

  [v2 doubleValue];
  return result;
}

- (void)animationDidStop:(id)stop finished:(BOOL)finished
{
  finishedCopy = finished;
  timer = self->_timer;
  if (timer)
  {
    if ([(NSTimer *)timer isValid])
    {
      [(NSTimer *)self->_timer invalidate];
    }

    self->_timer = 0;
  }

  completionBlock = self->_completionBlock;
  if (completionBlock)
  {
    completionBlock[2](completionBlock, self, finishedCopy);
  }

  [(OFPropertyAnimation *)self _cleanup];

  selfCopy = self;
}

- (void)handleTimer:(id)timer
{
  progressBlock = self->_progressBlock;
  if (progressBlock)
  {
    progressBlock[2](progressBlock, self);
  }
}

@end