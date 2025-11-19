@interface _TVAppNavigationControllerStatusBlur
- (_TVAppNavigationControllerStatusBlur)initWithCoder:(id)a3;
- (_TVAppNavigationControllerStatusBlur)initWithFrame:(CGRect)a3;
- (void)_commonInit;
@end

@implementation _TVAppNavigationControllerStatusBlur

- (_TVAppNavigationControllerStatusBlur)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = _TVAppNavigationControllerStatusBlur;
  v3 = [(_TVAppNavigationControllerStatusBlur *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(_TVAppNavigationControllerStatusBlur *)v3 _commonInit];
  }

  return v4;
}

- (_TVAppNavigationControllerStatusBlur)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = _TVAppNavigationControllerStatusBlur;
  v3 = [(_TVAppNavigationControllerStatusBlur *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(_TVAppNavigationControllerStatusBlur *)v3 _commonInit];
  }

  return v4;
}

- (void)_commonInit
{
  v3 = objc_alloc(MEMORY[0x277D75D18]);
  [(_TVAppNavigationControllerStatusBlur *)self bounds];
  v4 = [v3 initWithFrame:?];
  dimmingView = self->_dimmingView;
  self->_dimmingView = v4;

  v6 = self->_dimmingView;
  v7 = [MEMORY[0x277D75348] clearColor];
  [(UIView *)v6 setBackgroundColor:v7];

  [(UIView *)self->_dimmingView setAutoresizingMask:18];
  [(_TVAppNavigationControllerStatusBlur *)self addSubview:self->_dimmingView];
  v8 = [objc_alloc(MEMORY[0x277D75D68]) initWithEffect:0];
  visualEffectView = self->_visualEffectView;
  self->_visualEffectView = v8;

  [(UIVisualEffectView *)self->_visualEffectView setAutoresizingMask:18];
  v10 = self->_visualEffectView;
  [(_TVAppNavigationControllerStatusBlur *)self bounds];
  [(UIVisualEffectView *)v10 setFrame:?];
  v11 = self->_visualEffectView;

  [(_TVAppNavigationControllerStatusBlur *)self addSubview:v11];
}

@end