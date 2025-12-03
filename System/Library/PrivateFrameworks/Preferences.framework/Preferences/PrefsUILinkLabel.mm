@interface PrefsUILinkLabel
- (PrefsUILinkLabel)initWithFrame:(CGRect)frame;
- (SEL)action;
- (id)color:(id)color byMultiplyingSubComponentsBy:(float)by;
- (id)target;
- (void)openURL:(id)l;
- (void)setAction:(SEL)action;
- (void)setTarget:(id)target;
- (void)tappedLink:(id)link;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
@end

@implementation PrefsUILinkLabel

- (PrefsUILinkLabel)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = PrefsUILinkLabel;
  v3 = [(PrefsUILinkLabel *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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

- (void)setAction:(SEL)action
{
  p_action = &self->_action;
  if (self->_action != action)
  {
    if (action)
    {
      *p_action = action;
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

- (void)setTarget:(id)target
{
  obj = target;
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

- (void)openURL:(id)l
{
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  v4 = [(PrefsUILinkLabel *)self URL];
  [mEMORY[0x1E69DC668] openURL:v4 options:MEMORY[0x1E695E0F8] completionHandler:0];
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  if ([(PrefsUILinkLabel *)self action:began])
  {
    self->_touchingURL = 1;
    [(PrefsUILinkLabel *)self setHighlighted:1];

    [(PrefsUILinkLabel *)self setNeedsDisplay];
  }
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  anyObject = [moved anyObject];
  if (anyObject)
  {
    v17 = anyObject;
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
    anyObject = v17;
    if (!v16)
    {
      if (self->_touchingURL)
      {
        [(PrefsUILinkLabel *)self setNeedsDisplay];
        anyObject = v17;
      }

      self->_touchingURL = 0;
    }
  }
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  [(PrefsUILinkLabel *)self setHighlighted:0, event];
  self->_touchingURL = 0;

  [(PrefsUILinkLabel *)self setNeedsDisplay];
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  [(PrefsUILinkLabel *)self setHighlighted:0, event];
  self->_touchingURL = 0;

  [(PrefsUILinkLabel *)self setNeedsDisplay];
}

- (void)tappedLink:(id)link
{
  if ([(PrefsUILinkLabel *)self action])
  {
    self->_touchingURL = 0;
    [(PrefsUILinkLabel *)self setHighlighted:0];
    [(PrefsUILinkLabel *)self setNeedsDisplay];
    [(PrefsUILinkLabel *)self action];
    target = [(PrefsUILinkLabel *)self target];
    v4 = SFPerformSelector();
  }
}

- (id)color:(id)color byMultiplyingSubComponentsBy:(float)by
{
  colorCopy = color;
  v10 = 0.0;
  v11 = 0.0;
  v8 = 0.0;
  v9 = 0.0;
  v6 = colorCopy;
  if ([colorCopy getRed:&v11 green:&v10 blue:&v9 alpha:&v8])
  {
    v6 = [MEMORY[0x1E69DC888] colorWithRed:v11 * by green:v10 * by blue:v9 * by alpha:v8];
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