@interface BKMousePointerAnimationDriver
- (BKMousePointerAnimationDriver)initWithRelativeTranslation:(CGPoint)a3;
- (BOOL)isComplete;
- (CGPoint)currentTranslation;
- (CGPoint)relativeTranslation;
- (void)applyForTime:(double)a3;
@end

@implementation BKMousePointerAnimationDriver

- (CGPoint)currentTranslation
{
  x = self->_currentTranslation.x;
  y = self->_currentTranslation.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)relativeTranslation
{
  x = self->_relativeTranslation.x;
  y = self->_relativeTranslation.y;
  result.y = y;
  result.x = x;
  return result;
}

- (BOOL)isComplete
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 1;
}

- (void)applyForTime:(double)a3
{
  objc_opt_class();

  NSRequestConcreteImplementation();
}

- (BKMousePointerAnimationDriver)initWithRelativeTranslation:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6.receiver = self;
  v6.super_class = BKMousePointerAnimationDriver;
  result = [(BKMousePointerAnimationDriver *)&v6 init];
  if (result)
  {
    result->_relativeTranslation.x = x;
    result->_relativeTranslation.y = y;
    result->_currentTranslation = CGPointZero;
  }

  return result;
}

@end