@interface PrefsUILinkLabel
- (PrefsUILinkLabel)initWithFrame:(CGRect)a3;
- (SEL)action;
- (id)color:(id)a3 byMultiplyingSubComponentsBy:(float)a4;
- (id)target;
- (void)openURL:(id)a3;
- (void)setAction:(SEL)a3;
- (void)setTarget:(id)a3;
- (void)tappedLink:(id)a3;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
@end

@implementation PrefsUILinkLabel

- (PrefsUILinkLabel)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = PrefsUILinkLabel;
  v3 = [(PrefsUILinkLabel *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:v3 action:sel_tappedLink_];
    [(PrefsUILinkLabel *)v3 addGestureRecognizer:v4];
    [(PrefsUILinkLabel *)v3 setDrawsUnderline:1];
    [(PrefsUILinkLabel *)v3 setTarget:v3];
    [(PrefsUILinkLabel *)v3 setAction:sel_openURL_];
  }

  return v3;
}

- (void)setAction:(SEL)a3
{
  p_action = &self->_action;
  if (self->_action != a3)
  {
    if (a3)
    {
      *p_action = a3;
      WeakRetained = objc_loadWeakRetained(&self->_target);
      [(PrefsUILinkLabel *)self setUserInteractionEnabled:WeakRetained != 0];
    }

    else
    {
      *p_action = 0;

      [(PrefsUILinkLabel *)self setUserInteractionEnabled:0];
    }
  }
}

- (void)setTarget:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_target);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_target, obj);
    if (self->_action)
    {
      v6 = objc_loadWeakRetained(&self->_target);
      [(PrefsUILinkLabel *)self setUserInteractionEnabled:v6 != 0];
    }

    else
    {
      [(PrefsUILinkLabel *)self setUserInteractionEnabled:0];
    }

    v5 = obj;
  }
}

- (void)openURL:(id)a3
{
  v5 = [MEMORY[0x1E69DC668] sharedApplication];
  v4 = [(PrefsUILinkLabel *)self URL];
  [v5 openURL:v4 options:MEMORY[0x1E695E0F8] completionHandler:0];
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  if ([(PrefsUILinkLabel *)self action:a3])
  {
    self->_touchingURL = 1;
    [(PrefsUILinkLabel *)self setHighlighted:1];

    [(PrefsUILinkLabel *)self setNeedsDisplay];
  }
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  v5 = [a3 anyObject];
  if (v5)
  {
    v17 = v5;
    [(PrefsUILinkLabel *)self bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    [v17 locationInView:self];
    v19.x = v14;
    v19.y = v15;
    v20.origin.x = v7;
    v20.origin.y = v9;
    v20.size.width = v11;
    v20.size.height = v13;
    v16 = CGRectContainsPoint(v20, v19);
    v5 = v17;
    if (!v16)
    {
      if (self->_touchingURL)
      {
        [(PrefsUILinkLabel *)self setNeedsDisplay];
        v5 = v17;
      }

      self->_touchingURL = 0;
    }
  }
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  [(PrefsUILinkLabel *)self setHighlighted:0, a4];
  self->_touchingURL = 0;

  [(PrefsUILinkLabel *)self setNeedsDisplay];
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  [(PrefsUILinkLabel *)self setHighlighted:0, a4];
  self->_touchingURL = 0;

  [(PrefsUILinkLabel *)self setNeedsDisplay];
}

- (void)tappedLink:(id)a3
{
  if ([(PrefsUILinkLabel *)self action])
  {
    self->_touchingURL = 0;
    [(PrefsUILinkLabel *)self setHighlighted:0];
    [(PrefsUILinkLabel *)self setNeedsDisplay];
    [(PrefsUILinkLabel *)self action];
    v5 = [(PrefsUILinkLabel *)self target];
    v4 = SFPerformSelector();
  }
}

- (id)color:(id)a3 byMultiplyingSubComponentsBy:(float)a4
{
  v5 = a3;
  v10 = 0.0;
  v11 = 0.0;
  v8 = 0.0;
  v9 = 0.0;
  v6 = v5;
  if ([v5 getRed:&v11 green:&v10 blue:&v9 alpha:&v8])
  {
    v6 = [MEMORY[0x1E69DC888] colorWithRed:v11 * a4 green:v10 * a4 blue:v9 * a4 alpha:v8];
  }

  return v6;
}

- (id)target
{
  WeakRetained = objc_loadWeakRetained(&self->_target);

  return WeakRetained;
}

- (SEL)action
{
  if (self->_action)
  {
    return self->_action;
  }

  else
  {
    return 0;
  }
}

@end