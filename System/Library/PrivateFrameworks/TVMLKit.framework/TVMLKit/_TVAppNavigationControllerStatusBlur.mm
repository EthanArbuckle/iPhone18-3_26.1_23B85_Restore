@interface _TVAppNavigationControllerStatusBlur
- (_TVAppNavigationControllerStatusBlur)initWithCoder:(id)coder;
- (_TVAppNavigationControllerStatusBlur)initWithFrame:(CGRect)frame;
- (void)_commonInit;
@end

@implementation _TVAppNavigationControllerStatusBlur

- (_TVAppNavigationControllerStatusBlur)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = _TVAppNavigationControllerStatusBlur;
  v3 = [(_TVAppNavigationControllerStatusBlur *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(_TVAppNavigationControllerStatusBlur *)v3 _commonInit];
  }

  return v4;
}

- (_TVAppNavigationControllerStatusBlur)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = _TVAppNavigationControllerStatusBlur;
  v3 = [(_TVAppNavigationControllerStatusBlur *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
  clearColor = [MEMORY[0x277D75348] clearColor];
  [(UIView *)v6 setBackgroundColor:clearColor];

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