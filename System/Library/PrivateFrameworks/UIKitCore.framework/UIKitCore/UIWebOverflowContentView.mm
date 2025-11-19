@interface UIWebOverflowContentView
- (UIWebOverflowContentView)initWithLayer:(id)a3;
- (id)superview;
- (void)_setCachedSubviews:(id)a3;
- (void)dealloc;
- (void)fixUpViewAfterInsertion;
- (void)replaceLayer:(id)a3;
@end

@implementation UIWebOverflowContentView

- (UIWebOverflowContentView)initWithLayer:(id)a3
{
  [a3 bounds];
  v8.receiver = self;
  v8.super_class = UIWebOverflowContentView;
  v5 = [(UIView *)&v8 initWithFrame:?];
  v6 = v5;
  if (v5)
  {
    [(UIWebOverflowContentView *)v5 replaceLayer:a3];
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

- (void)replaceLayer:(id)a3
{
  [(UIView *)self _replaceLayer:?];

  [(UIWebOverflowContentView *)self setWebLayer:a3];
}

- (id)superview
{
  v2 = [(CALayer *)[(UIView *)self layer] superlayer];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  while (1)
  {
    if ([(CALayer *)v3 delegate])
    {
      [(CALayer *)v3 delegate];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }
    }

    v3 = [(CALayer *)v3 superlayer];
    if (!v3)
    {
      return 0;
    }
  }

  return [(CALayer *)v3 delegate];
}

- (void)fixUpViewAfterInsertion
{
  [(UIView *)self _webCustomViewWasAddedAsSubviewOfView:?];

  [(UIView *)self _invalidateSubviewCache];
}

- (void)_setCachedSubviews:(id)a3
{
  subviewCache = self->super._subviewCache;
  if (subviewCache != a3)
  {

    if ((*(&self->super._viewFlags + 1) & 8) != 0)
    {
      v6 = 0;
    }

    else
    {
      v6 = a3;
    }

    self->super._subviewCache = v6;
  }
}

@end