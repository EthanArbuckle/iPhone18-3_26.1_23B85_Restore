@interface UIDictationATVLinearView
- (BOOL)isShowing;
- (void)_applyRenderConfig:(id)config;
- (void)layoutSubviews;
- (void)removeFromSuperview;
- (void)returnToKeyboard;
- (void)setRenderConfig:(id)config;
- (void)setState:(int)state;
@end

@implementation UIDictationATVLinearView

- (void)setRenderConfig:(id)config
{
  configCopy = config;
  if (self->_renderConfig != configCopy)
  {
    v6 = configCopy;
    objc_storeStrong(&self->_renderConfig, config);
    [(UIDictationATVLinearView *)self _applyRenderConfig:v6];
    configCopy = v6;
  }
}

- (void)_applyRenderConfig:(id)config
{
  configCopy = config;
  if ([configCopy lightKeyboard])
  {
    v5 = 0.4;
  }

  else
  {
    v5 = 0.5;
  }

  lightKeyboard = [configCopy lightKeyboard];

  if (lightKeyboard)
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

- (void)setState:(int)state
{
  v3 = *&state;
  if (state == 2)
  {
    [(SUICFlamesView *)self->super._flamesView setState:1];
  }

  else if (state == 1)
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
      mainScreen = [objc_opt_self() mainScreen];
      v11 = [v9 initWithFrame:mainScreen screen:2 fidelity:{0.0, 0.0, v6, 100.0}];
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
  state = [v3 state];

  if (state != 1)
  {
    v5.receiver = self;
    v5.super_class = UIDictationATVLinearView;
    [(UIDictationView *)&v5 returnToKeyboard];
  }
}

- (BOOL)isShowing
{
  superview = [(UIView *)self superview];
  v3 = superview != 0;

  return v3;
}

@end