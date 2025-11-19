@interface VUIPathAnimationAction
- (void)dealloc;
- (void)runActionForKey:(id)a3 object:(id)a4 arguments:(id)a5;
- (void)setFromPath:(CGPath *)a3;
@end

@implementation VUIPathAnimationAction

- (void)runActionForKey:(id)a3 object:(id)a4 arguments:(id)a5
{
  v9 = a4;
  objc_opt_class();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (self->_animationToRun)
    {
      key = self->_key;
      if (key)
      {
        v7 = v9;
        v8 = [v7 valueForKey:key];
        [(CABasicAnimation *)self->_animationToRun setFromValue:self->_fromPath];
        [(CABasicAnimation *)self->_animationToRun setToValue:v8];
        [v7 addAnimation:self->_animationToRun forKey:self->_key];
      }
    }
  }
}

- (void)setFromPath:(CGPath *)a3
{
  CGPathRetain(a3);
  CGPathRelease(self->_fromPath);
  self->_fromPath = a3;
}

- (void)dealloc
{
  CGPathRelease(self->_fromPath);
  v3.receiver = self;
  v3.super_class = VUIPathAnimationAction;
  [(VUIPathAnimationAction *)&v3 dealloc];
}

@end