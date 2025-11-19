@interface UIDebuggingInformationContainerView
- (void)layoutSubviews;
- (void)setShadowHidden:(BOOL)a3;
@end

@implementation UIDebuggingInformationContainerView

- (void)layoutSubviews
{
  v19.receiver = self;
  v19.super_class = UIDebuggingInformationContainerView;
  [(UIView *)&v19 layoutSubviews];
  shadowView = self->_shadowView;
  if (!shadowView)
  {
    v4 = objc_alloc_init(UIView);
    v5 = +[UIColor whiteColor];
    [(UIView *)v4 setBackgroundColor:v5];

    v6 = [(UIView *)v4 layer];
    [v6 setCornerRadius:23.0];

    v7 = +[UIColor blackColor];
    v8 = [v7 CGColor];
    v9 = [(UIView *)v4 layer];
    [v9 setShadowColor:v8];

    v10 = [(UIView *)v4 layer];
    LODWORD(v11) = 1053609165;
    [v10 setShadowOpacity:v11];

    v12 = [(UIView *)v4 layer];
    [v12 setShadowRadius:17.0];

    v13 = [(UIView *)v4 layer];
    [v13 setShadowOffset:{0.0, 4.0}];

    v14 = [(UIView *)v4 layer];
    [v14 setMasksToBounds:0];

    v15 = self->_shadowView;
    self->_shadowView = v4;
    v16 = v4;

    v17 = +[UIColor clearColor];

    [(UIView *)self setBackgroundColor:v17];
    shadowView = self->_shadowView;
  }

  [(UIView *)self insertSubview:shadowView atIndex:0];
  v18 = self->_shadowView;
  [(UIView *)self bounds];
  v21 = CGRectInset(v20, 10.0, 10.0);
  [(UIView *)v18 setFrame:v21.origin.x, v21.origin.y, v21.size.width, v21.size.height];
}

- (void)setShadowHidden:(BOOL)a3
{
  self->_shadowHidden = a3;
  if (a3)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = 1.0;
  }

  v5 = [(UIView *)self->_shadowView layer];
  *&v4 = v3;
  [v5 setOpacity:v4];
}

@end