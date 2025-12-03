@interface _UILabelContentLayer
- (id)actionForKey:(id)key;
- (void)display;
- (void)drawInContext:(CGContext *)context;
@end

@implementation _UILabelContentLayer

- (void)display
{
  superlayer = [(_UILabelContentLayer *)self superlayer];
  delegate = [superlayer delegate];
  [delegate layerWillDraw:superlayer];

  v5.receiver = self;
  v5.super_class = _UILabelContentLayer;
  [(_UILabelContentLayer *)&v5 display];
}

- (void)drawInContext:(CGContext *)context
{
  superlayer = [(_UILabelContentLayer *)self superlayer];
  [(_UILabelContentLayer *)self frame];
  v6 = v5;
  v8 = v7;
  CGContextSaveGState(context);
  CGContextTranslateCTM(context, -v6, -v8);
  delegate = [superlayer delegate];
  layer = [delegate layer];
  [layer drawInContext:context];

  CGContextRestoreGState(context);
}

- (id)actionForKey:(id)key
{
  keyCopy = key;
  if (self->_wantsAnimation)
  {
    superlayer = [(_UILabelContentLayer *)self superlayer];
    delegate = [superlayer delegate];
    if (+[UIView _isInAnimationBlockWithAnimationsEnabled](UIView, "_isInAnimationBlockWithAnimationsEnabled") && [delegate _shouldAnimatePropertyWithKey:keyCopy])
    {
      v7 = +[UIView _currentViewAnimationState];
      v8 = [v7 actionForLayer:self forKey:keyCopy forView:delegate];

      if (v8 && +[UIView _isAnimationTracking])
      {
        v9 = +[UIView _currentViewAnimationState];
        [v9 _trackAnimation:v8 withAnimationKey:keyCopy forKeyPath:keyCopy inLayer:self];
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