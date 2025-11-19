@interface UIDictationATVLinearView
- (BOOL)isShowing;
- (void)_applyRenderConfig:(id)a3;
- (void)layoutSubviews;
- (void)removeFromSuperview;
- (void)returnToKeyboard;
- (void)setRenderConfig:(id)a3;
- (void)setState:(int)a3;
@end

@implementation UIDictationATVLinearView

- (void)setRenderConfig:(id)a3
{
  v5 = a3;
  if (self->_renderConfig != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_renderConfig, a3);
    [(UIDictationATVLinearView *)self _applyRenderConfig:v6];
    v5 = v6;
  }
}

- (void)_applyRenderConfig:(id)a3
{
  v4 = a3;
  if ([v4 lightKeyboard])
  {
    v5 = 0.4;
  }

  else
  {
    v5 = 0.5;
  }

  v6 = [v4 lightKeyboard];

  if (v6)
  {
    +[UIColor blackColor];
  }

  else
  {
    +[UIColor whiteColor];
  }
  v7 = ;
  if (objc_opt_respondsToSelector())
  {
    [(SUICFlamesView *)self->super._flamesView setDictationColor:v7];
    [(SUICFlamesView *)self->super._flamesView setAlpha:v5];
  }
}

- (void)setState:(int)a3
{
  v3 = *&a3;
  if (a3 == 2)
  {
    [(SUICFlamesView *)self->super._flamesView setState:1];
  }

  else if (a3 == 1)
  {
    [(UIView *)self bounds];
    v6 = v5;
    SUICFlamesViewClass = getSUICFlamesViewClass();
    flamesView = self->super._flamesView;
    if (flamesView)
    {
      [(SUICFlamesView *)flamesView setFrame:0.0, 0.0, v6, 100.0];
    }

    else
    {
      v9 = [SUICFlamesViewClass alloc];
      v10 = [objc_opt_self() mainScreen];
      v11 = [v9 initWithFrame:v10 screen:2 fidelity:{0.0, 0.0, v6, 100.0}];
      v12 = self->super._flamesView;
      self->super._flamesView = v11;
    }

    [(SUICFlamesView *)self->super._flamesView setDelegate:self];
    [(SUICFlamesView *)self->super._flamesView setMode:1];
    [(SUICFlamesView *)self->super._flamesView setState:1];
    [(SUICFlamesView *)self->super._flamesView setNeedsLayout];
    [(UIView *)self addSubview:self->super._flamesView];
    if (self->_renderConfig)
    {
      [(UIDictationATVLinearView *)self _applyRenderConfig:?];
    }

    [(UIView *)self setNeedsLayout];
  }

  v13.receiver = self;
  v13.super_class = UIDictationATVLinearView;
  [(UIDictationView *)&v13 setState:v3];
}

- (void)layoutSubviews
{
  v14.receiver = self;
  v14.super_class = UIDictationATVLinearView;
  [(UIView *)&v14 layoutSubviews];
  [(UIView *)self bounds];
  v4 = v3;
  [(UIView *)self bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [(UIView *)self contentScaleFactor];
  [(SUICFlamesView *)self->super._flamesView setFrame:UIRectCenteredIntegralRectScale(0.0, 0.0, v4, 100.0, v6, v8, v10, v12, v13)];
  [(SUICFlamesView *)self->super._flamesView setNeedsLayout];
}

- (void)removeFromSuperview
{
  v4.receiver = self;
  v4.super_class = UIDictationATVLinearView;
  [(UIView *)&v4 removeFromSuperview];
  [(SUICFlamesView *)self->super._flamesView removeFromSuperview];
  [(SUICFlamesView *)self->super._flamesView setDelegate:0];
  flamesView = self->super._flamesView;
  self->super._flamesView = 0;
}

- (void)returnToKeyboard
{
  v3 = +[UIDictationController sharedInstance];
  v4 = [v3 state];

  if (v4 != 1)
  {
    v5.receiver = self;
    v5.super_class = UIDictationATVLinearView;
    [(UIDictationView *)&v5 returnToKeyboard];
  }
}

- (BOOL)isShowing
{
  v2 = [(UIView *)self superview];
  v3 = v2 != 0;

  return v3;
}

@end