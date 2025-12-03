@interface WLLockScreenCardView
- (WLLockScreenCardView)initWithFrame:(CGRect)frame;
- (void)dealloc;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setModallyPresented:(BOOL)presented;
- (void)setPass:(id)pass;
@end

@implementation WLLockScreenCardView

- (WLLockScreenCardView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = WLLockScreenCardView;
  v3 = [(WLLockScreenCardView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(WLLockScreenCardView *)v3 setClipsToBounds:0];
  }

  return v4;
}

- (void)dealloc
{
  [(PKPassView *)self->_passView invalidate];
  v3.receiver = self;
  v3.super_class = WLLockScreenCardView;
  [(WLLockScreenCardView *)&v3 dealloc];
}

- (void)prepareForReuse
{
  [(WLLockScreenCardView *)self setPass:0];

  [(WLLockScreenCardView *)self setModallyPresented:0];
}

- (void)setPass:(id)pass
{
  passCopy = pass;
  passView = self->_passView;
  if (passView)
  {
    pass = [(PKPassView *)passView pass];

    if (pass != passCopy)
    {
      [(PKPassView *)self->_passView setModallyPresented:0];
      [(PKPassView *)self->_passView removeFromSuperview];
      [(PKPassView *)self->_passView invalidate];
      v7 = self->_passView;
      self->_passView = 0;
    }
  }

  objc_storeStrong(&self->_pass, pass);
  if (!self->_passView && self->_pass)
  {
    v8 = [[PKPassView alloc] initWithPass:passCopy content:5 suppressedContent:275];
    v9 = self->_passView;
    self->_passView = v8;

    [(PKPassView *)self->_passView setContentMode:5];
    [(PKPassView *)self->_passView setModallyPresented:self->_modallyPresented];
    [(WLLockScreenCardView *)self addSubview:self->_passView];
  }
}

- (void)layoutSubviews
{
  [(PKPassView *)self->_passView frame];
  [(WLLockScreenCardView *)self bounds];
  UIRectCenteredIntegralRect();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  pass = [(PKPassView *)self->_passView pass];
  v12 = PKValueAddedServicesEnabledForPass();

  passView = self->_passView;
  if (v12)
  {
    v14 = 0.0;
  }

  else
  {
    v14 = v6;
  }

  [(PKPassView *)passView setFrame:v4, v14, v8, v10];
}

- (void)setModallyPresented:(BOOL)presented
{
  if (self->_modallyPresented != presented)
  {
    self->_modallyPresented = presented;
    [(PKPassView *)self->_passView setModallyPresented:?];
  }
}

@end