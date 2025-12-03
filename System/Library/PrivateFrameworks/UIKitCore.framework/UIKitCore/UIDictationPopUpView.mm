@interface UIDictationPopUpView
- (void)layoutSubviews;
- (void)returnToKeyboard;
- (void)setState:(int)state;
@end

@implementation UIDictationPopUpView

- (void)returnToKeyboard
{
  v3 = +[UIDictationController sharedInstance];
  state = [v3 state];

  if (state != 1)
  {
    v5 = +[UIKeyboardDictationMenu sharedInstance];
    [v5 hide];

    [(SUICFlamesView *)self->super._flamesView removeFromSuperview];
    [(SUICFlamesView *)self->super._flamesView setDelegate:0];
    flamesView = self->super._flamesView;
    self->super._flamesView = 0;

    v7.receiver = self;
    v7.super_class = UIDictationPopUpView;
    [(UIDictationView *)&v7 returnToKeyboard];
  }
}

- (void)setState:(int)state
{
  v3 = *&state;
  if (state == 1)
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
    [(UIView *)self addSubview:self->super._endpointButton];
    [(UIView *)self addSubview:self->super._endpointButtonLandscape];
    [(UIView *)self setNeedsLayout];
  }

  v13.receiver = self;
  v13.super_class = UIDictationPopUpView;
  [(UIDictationView *)&v13 setState:v3];
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = UIDictationPopUpView;
  [(UIView *)&v5 layoutSubviews];
  [(UIView *)self bounds];
  v4 = v3 * 0.5;
  [(UIView *)self bounds];
  [(SUICFlamesView *)self->super._flamesView setFrame:0.0, v4];
  [(SUICFlamesView *)self->super._flamesView setNeedsLayout];
}

@end