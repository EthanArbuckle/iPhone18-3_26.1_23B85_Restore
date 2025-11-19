@interface SBHFloatingDockSeparatorView
- (SBHFloatingDockSeparatorView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation SBHFloatingDockSeparatorView

- (SBHFloatingDockSeparatorView)initWithFrame:(CGRect)a3
{
  v22.receiver = self;
  v22.super_class = SBHFloatingDockSeparatorView;
  v3 = [(SBHFloatingDockSeparatorView *)&v22 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(SBHFloatingDockSeparatorView *)v3 setOpaque:0];
    v5 = [(SBHFloatingDockSeparatorView *)v4 layer];
    [v5 setAllowsGroupBlending:0];

    v6 = objc_alloc_init(MEMORY[0x1E69DD250]);
    whiteTintView = v4->_whiteTintView;
    v4->_whiteTintView = v6;

    v8 = v4->_whiteTintView;
    v9 = [MEMORY[0x1E69DC888] whiteColor];
    [(UIView *)v8 setBackgroundColor:v9];

    [(UIView *)v4->_whiteTintView setAlpha:0.42];
    [(SBHFloatingDockSeparatorView *)v4 addSubview:v4->_whiteTintView];
    v10 = objc_alloc_init(MEMORY[0x1E69DD250]);
    xColorBurnView = v4->_xColorBurnView;
    v4->_xColorBurnView = v10;

    v12 = v4->_xColorBurnView;
    v13 = [MEMORY[0x1E69DC888] colorWithWhite:0.3 alpha:1.0];
    [(UIView *)v12 setTintColor:v13];

    v14 = [(UIView *)v4->_xColorBurnView layer];
    [v14 setCompositingFilter:*MEMORY[0x1E6979850]];

    [(SBHFloatingDockSeparatorView *)v4 addSubview:v4->_xColorBurnView];
    v15 = objc_alloc_init(MEMORY[0x1E69DD250]);
    xPlusDView = v4->_xPlusDView;
    v4->_xPlusDView = v15;

    v17 = [(UIView *)v4->_xPlusDView layer];
    v18 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979CE8]];
    [v17 setCompositingFilter:v18];

    v19 = v4->_xPlusDView;
    v20 = [MEMORY[0x1E69DC888] blackColor];
    [(UIView *)v19 setTintColor:v20];

    [(UIView *)v4->_xPlusDView setAlpha:0.3];
    [(SBHFloatingDockSeparatorView *)v4 addSubview:v4->_xPlusDView];
  }

  return v4;
}

- (void)layoutSubviews
{
  v11.receiver = self;
  v11.super_class = SBHFloatingDockSeparatorView;
  [(SBHFloatingDockSeparatorView *)&v11 layoutSubviews];
  [(SBHFloatingDockSeparatorView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(UIView *)self->_whiteTintView setFrame:?];
  [(UIView *)self->_xColorBurnView setFrame:v4, v6, v8, v10];
  [(UIView *)self->_xPlusDView setFrame:v4, v6, v8, v10];
}

@end