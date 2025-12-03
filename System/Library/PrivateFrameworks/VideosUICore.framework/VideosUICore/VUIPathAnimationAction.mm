@interface VUIPathAnimationAction
- (void)dealloc;
- (void)runActionForKey:(id)key object:(id)object arguments:(id)arguments;
- (void)setFromPath:(CGPath *)path;
@end

@implementation VUIPathAnimationAction

- (void)runActionForKey:(id)key object:(id)object arguments:(id)arguments
{
  objectCopy = object;
  objc_opt_class();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (self->_animationToRun)
    {
      key = self->_key;
      if (key)
      {
        v7 = objectCopy;
        v8 = [v7 valueForKey:key];
        [(CABasicAnimation *)self->_animationToRun setFromValue:self->_fromPath];
        [(CABasicAnimation *)self->_animationToRun setToValue:v8];
        [v7 addAnimation:self->_animationToRun forKey:self->_key];
      }
    }
  }
}

- (void)setFromPath:(CGPath *)path
{
  CGPathRetain(path);
  CGPathRelease(self->_fromPath);
  self->_fromPath = path;
}

- (void)dealloc
{
  CGPathRelease(self->_fromPath);
  v3.receiver = self;
  v3.super_class = VUIPathAnimationAction;
  [(VUIPathAnimationAction *)&v3 dealloc];
}

@end