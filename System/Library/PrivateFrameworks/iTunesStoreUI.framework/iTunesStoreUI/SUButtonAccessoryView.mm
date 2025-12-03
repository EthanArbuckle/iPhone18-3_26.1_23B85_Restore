@interface SUButtonAccessoryView
- (SUButtonAccessoryView)initWithDefaultSize;
- (SUGradientButton)button;
- (void)dealloc;
- (void)layoutSubviews;
@end

@implementation SUButtonAccessoryView

- (SUButtonAccessoryView)initWithDefaultSize
{
  [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];

  return [(SUButtonAccessoryView *)self initWithFrame:0.0, 0.0];
}

- (void)dealloc
{
  self->_button = 0;
  v3.receiver = self;
  v3.super_class = SUButtonAccessoryView;
  [(SUButtonAccessoryView *)&v3 dealloc];
}

- (SUGradientButton)button
{
  button = self->_button;
  if (!button)
  {
    v4 = objc_alloc_init(SUGradientButton);
    self->_button = v4;
    titleLabel = [(SUGradientButton *)v4 titleLabel];
    [titleLabel setFont:{objc_msgSend(MEMORY[0x1E69DB878], "boldSystemFontOfSize:", 17.0)}];
    [(SUGradientButton *)self->_button sizeToFit];
    button = self->_button;
  }

  if ([(SUGradientButton *)button superview]!= self)
  {
    [(SUButtonAccessoryView *)self addSubview:self->_button];
  }

  return self->_button;
}

- (void)layoutSubviews
{
  button = self->_button;
  if (button)
  {
    [(SUGradientButton *)button frame];
    v5 = v4;
    [(SUButtonAccessoryView *)self bounds];
    v7 = self->_button;
    v8 = v6 + -9.0 + -9.0;

    [(SUGradientButton *)v7 setFrame:9.0, 16.0, v8, v5];
  }
}

@end