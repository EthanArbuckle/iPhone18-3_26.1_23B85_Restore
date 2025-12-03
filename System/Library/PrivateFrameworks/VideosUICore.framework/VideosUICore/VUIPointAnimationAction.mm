@interface VUIPointAnimationAction
- (CGPoint)fromPoint;
- (void)runActionForKey:(id)key object:(id)object arguments:(id)arguments;
@end

@implementation VUIPointAnimationAction

- (void)runActionForKey:(id)key object:(id)object arguments:(id)arguments
{
  objectCopy = object;
  objc_opt_class();
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && self->_animationToRun && self->_key)
  {
    v6 = objectCopy;
    v7 = [v6 valueForKey:self->_key];
    objc_opt_class();
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [MEMORY[0x277CCAE60] valueWithPoint:{self->_fromPoint.x, self->_fromPoint.y}];
      [(CABasicAnimation *)self->_animationToRun setFromValue:v8];

      [(CABasicAnimation *)self->_animationToRun setToValue:v7];
      [v6 addAnimation:self->_animationToRun forKey:self->_key];
    }
  }
}

- (CGPoint)fromPoint
{
  x = self->_fromPoint.x;
  y = self->_fromPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

@end