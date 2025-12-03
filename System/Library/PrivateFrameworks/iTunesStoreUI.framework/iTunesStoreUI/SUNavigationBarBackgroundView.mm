@interface SUNavigationBarBackgroundView
- (SUNavigationBarBackgroundView)initWithFrame:(CGRect)frame;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setBackdropStyle:(int64_t)style;
- (void)setSeparatorOnTop:(BOOL)top;
@end

@implementation SUNavigationBarBackgroundView

- (SUNavigationBarBackgroundView)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = SUNavigationBarBackgroundView;
  v3 = [(SUNavigationBarBackgroundView *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(SUNavigationBarBackgroundView *)v3 setAutoresizingMask:18];
    [(SUNavigationBarBackgroundView *)v4 setUserInteractionEnabled:0];
    v5 = [objc_alloc(MEMORY[0x1E69DD370]) initWithPrivateStyle:10060];
    v4->_backdropView = v5;
    [(SUNavigationBarBackgroundView *)v4 addSubview:v5];

    v6 = objc_alloc_init(MEMORY[0x1E69DD250]);
    v4->_borderView = v6;
    -[UIView setBackgroundColor:](v6, "setBackgroundColor:", [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.3]);
    [(SUNavigationBarBackgroundView *)v4 addSubview:v4->_borderView];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SUNavigationBarBackgroundView;
  [(SUNavigationBarBackgroundView *)&v3 dealloc];
}

- (void)setBackdropStyle:(int64_t)style
{
  backdropView = self->_backdropView;
  v5 = [objc_alloc(MEMORY[0x1E69DD370]) initWithPrivateStyle:style];
  self->_backdropView = v5;
  [(_UIBackdropView *)backdropView frame];
  [(_UIBackdropView *)v5 setFrame:?];
  [(SUNavigationBarBackgroundView *)self insertSubview:self->_backdropView atIndex:0];

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__SUNavigationBarBackgroundView_setBackdropStyle___block_invoke;
  v7[3] = &unk_1E8164348;
  v7[4] = backdropView;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __50__SUNavigationBarBackgroundView_setBackdropStyle___block_invoke_2;
  v6[3] = &unk_1E8164B70;
  v6[4] = backdropView;
  [MEMORY[0x1E69DD250] animateWithDuration:v7 animations:v6 completion:0.3];
}

- (void)setSeparatorOnTop:(BOOL)top
{
  if (self->_separatorOnTop != top)
  {
    self->_separatorOnTop = top;
    [(SUNavigationBarBackgroundView *)self setNeedsLayout];
  }
}

- (void)layoutSubviews
{
  v11.receiver = self;
  v11.super_class = SUNavigationBarBackgroundView;
  [(SUNavigationBarBackgroundView *)&v11 layoutSubviews];
  [(SUNavigationBarBackgroundView *)self bounds];
  v4 = v3;
  v6 = v5;
  [(_UIBackdropView *)self->_backdropView setFrame:?];
  borderView = self->_borderView;
  v8 = 0.0;
  if (!self->_separatorOnTop)
  {
    [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
    v8 = v6 + -1.0 / v9;
  }

  [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
  [(UIView *)borderView setFrame:0.0, v8, v4, 1.0 / v10];
}

@end