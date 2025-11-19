@interface _UILabelContentLayer
- (id)actionForKey:(id)a3;
- (void)display;
- (void)drawInContext:(CGContext *)a3;
@end

@implementation _UILabelContentLayer

- (void)display
{
  v3 = [(_UILabelContentLayer *)self superlayer];
  v4 = [v3 delegate];
  [v4 layerWillDraw:v3];

  v5.receiver = self;
  v5.super_class = _UILabelContentLayer;
  [(_UILabelContentLayer *)&v5 display];
}

- (void)drawInContext:(CGContext *)a3
{
  v11 = [(_UILabelContentLayer *)self superlayer];
  [(_UILabelContentLayer *)self frame];
  v6 = v5;
  v8 = v7;
  CGContextSaveGState(a3);
  CGContextTranslateCTM(a3, -v6, -v8);
  v9 = [v11 delegate];
  v10 = [v9 layer];
  [v10 drawInContext:a3];

  CGContextRestoreGState(a3);
}

- (id)actionForKey:(id)a3
{
  v4 = a3;
  if (self->_wantsAnimation)
  {
    v5 = [(_UILabelContentLayer *)self superlayer];
    v6 = [v5 delegate];
    if (+[UIView _isInAnimationBlockWithAnimationsEnabled](UIView, "_isInAnimationBlockWithAnimationsEnabled") && [v6 _shouldAnimatePropertyWithKey:v4])
    {
      v7 = +[UIView _currentViewAnimationState];
      v8 = [v7 actionForLayer:self forKey:v4 forView:v6];

      if (v8 && +[UIView _isAnimationTracking])
      {
        v9 = +[UIView _currentViewAnimationState];
        [v9 _trackAnimation:v8 withAnimationKey:v4 forKeyPath:v4 inLayer:self];
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end