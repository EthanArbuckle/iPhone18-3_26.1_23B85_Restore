@interface UIWebOverflowContentView
- (UIWebOverflowContentView)initWithLayer:(id)layer;
- (id)superview;
- (void)_setCachedSubviews:(id)subviews;
- (void)dealloc;
- (void)fixUpViewAfterInsertion;
- (void)replaceLayer:(id)layer;
@end

@implementation UIWebOverflowContentView

- (UIWebOverflowContentView)initWithLayer:(id)layer
{
  [layer bounds];
  v8.receiver = self;
  v8.super_class = UIWebOverflowContentView;
  v5 = [(UIView *)&v8 initWithFrame:?];
  v6 = v5;
  if (v5)
  {
    [(UIWebOverflowContentView *)v5 replaceLayer:layer];
  }

  return v6;
}

- (void)dealloc
{
  self->_webLayer = 0;
  v3.receiver = self;
  v3.super_class = UIWebOverflowContentView;
  [(UIView *)&v3 dealloc];
}

- (void)replaceLayer:(id)layer
{
  [(UIView *)self _replaceLayer:?];

  [(UIWebOverflowContentView *)self setWebLayer:layer];
}

- (id)superview
{
  superlayer = [(CALayer *)[(UIView *)self layer] superlayer];
  if (!superlayer)
  {
    return 0;
  }

  superlayer2 = superlayer;
  while (1)
  {
    if ([(CALayer *)superlayer2 delegate])
    {
      [(CALayer *)superlayer2 delegate];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }
    }

    superlayer2 = [(CALayer *)superlayer2 superlayer];
    if (!superlayer2)
    {
      return 0;
    }
  }

  return [(CALayer *)superlayer2 delegate];
}

- (void)fixUpViewAfterInsertion
{
  [(UIView *)self _webCustomViewWasAddedAsSubviewOfView:?];

  [(UIView *)self _invalidateSubviewCache];
}

- (void)_setCachedSubviews:(id)subviews
{
  subviewCache = self->super._subviewCache;
  if (subviewCache != subviews)
  {

    if ((*(&self->super._viewFlags + 1) & 8) != 0)
    {
      subviewsCopy = 0;
    }

    else
    {
      subviewsCopy = subviews;
    }

    self->super._subviewCache = subviewsCopy;
  }
}

@end