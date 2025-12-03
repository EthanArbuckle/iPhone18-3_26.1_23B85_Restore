@interface UIDebuggingInformationContainerView
- (void)layoutSubviews;
- (void)setShadowHidden:(BOOL)hidden;
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

    layer = [(UIView *)v4 layer];
    [layer setCornerRadius:23.0];

    v7 = +[UIColor blackColor];
    cGColor = [v7 CGColor];
    layer2 = [(UIView *)v4 layer];
    [layer2 setShadowColor:cGColor];

    layer3 = [(UIView *)v4 layer];
    LODWORD(v11) = 1053609165;
    [layer3 setShadowOpacity:v11];

    layer4 = [(UIView *)v4 layer];
    [layer4 setShadowRadius:17.0];

    layer5 = [(UIView *)v4 layer];
    [layer5 setShadowOffset:{0.0, 4.0}];

    layer6 = [(UIView *)v4 layer];
    [layer6 setMasksToBounds:0];

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

- (void)setShadowHidden:(BOOL)hidden
{
  self->_shadowHidden = hidden;
  if (hidden)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = 1.0;
  }

  layer = [(UIView *)self->_shadowView layer];
  *&v4 = v3;
  [layer setOpacity:v4];
}

@end