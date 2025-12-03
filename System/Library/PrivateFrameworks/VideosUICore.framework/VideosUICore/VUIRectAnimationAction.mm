@interface VUIRectAnimationAction
- (CGRect)fromRect;
- (void)runActionForKey:(id)key object:(id)object arguments:(id)arguments;
@end

@implementation VUIRectAnimationAction

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
      v8 = [MEMORY[0x277CCAE60] valueWithRect:{self->_fromRect.origin.x, self->_fromRect.origin.y, self->_fromRect.size.width, self->_fromRect.size.height}];
      [(CABasicAnimation *)self->_animationToRun setFromValue:v8];

      [(CABasicAnimation *)self->_animationToRun setToValue:v7];
      [v6 addAnimation:self->_animationToRun forKey:self->_key];
    }
  }
}

- (CGRect)fromRect
{
  x = self->_fromRect.origin.x;
  y = self->_fromRect.origin.y;
  width = self->_fromRect.size.width;
  height = self->_fromRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end