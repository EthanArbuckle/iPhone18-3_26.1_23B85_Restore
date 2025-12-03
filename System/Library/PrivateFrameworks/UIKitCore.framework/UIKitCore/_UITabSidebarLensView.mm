@interface _UITabSidebarLensView
- (UIView)liftedContainerView;
- (_UITabSidebarLensView)initWithFrame:(CGRect)frame;
- (void)_updateBackgroundPlacement;
- (void)_updateLensViewFrame;
- (void)layoutSubviews;
- (void)setControlBackgroundColor:(id)color;
- (void)setLiftedContainerView:(id)view;
@end

@implementation _UITabSidebarLensView

- (_UITabSidebarLensView)initWithFrame:(CGRect)frame
{
  v12[1] = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = _UITabSidebarLensView;
  v3 = [(UIView *)&v11 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [_UILiquidLensView alloc];
    [(UIView *)v3 bounds];
    v5 = [(_UILiquidLensView *)v4 initWithFrame:?];
    lensView = v3->_lensView;
    v3->_lensView = v5;

    v7 = +[UIColor clearColor];
    [(_UILiquidLensView *)v3->_lensView setRestingBackgroundColor:v7];

    [(_UILiquidLensView *)v3->_lensView setStyle:1];
    [(UIView *)v3 addSubview:v3->_lensView];
    v12[0] = objc_opt_class();
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
    v9 = [(UIView *)v3 registerForTraitChanges:v8 withTarget:v3 action:sel__updateBackgroundPlacement];

    [(_UITabSidebarLensView *)v3 _updateBackgroundPlacement];
  }

  return v3;
}

- (void)setControlBackgroundColor:(id)color
{
  if (color)
  {
    lensView = self->_lensView;

    [(_UILiquidLensView *)lensView setRestingBackgroundColor:?];
  }

  else
  {
    v5 = +[UIColor clearColor];
    [(_UILiquidLensView *)self->_lensView setRestingBackgroundColor:v5];
  }
}

- (void)_updateLensViewFrame
{
  if (self)
  {
    [self bounds];
    x = v2;
    y = v4;
    width = v6;
    height = v8;
    if ([self isActive])
    {
      v15.origin.x = x;
      v15.origin.y = y;
      v15.size.width = width;
      v15.size.height = height;
      v16 = CGRectInset(v15, -4.0, -4.0);
      x = v16.origin.x;
      y = v16.origin.y;
      width = v16.size.width;
      height = v16.size.height;
    }

    v10 = *MEMORY[0x1E695EFF8];
    v11 = *(MEMORY[0x1E695EFF8] + 8);
    lensView = [self lensView];
    [lensView setCenter:{width * 0.5 + x, height * 0.5 + y}];

    lensView2 = [self lensView];
    [lensView2 setBounds:{v10, v11, width, height}];
  }
}

- (UIView)liftedContainerView
{
  lensView = [(_UITabSidebarLensView *)self lensView];
  liftedContainerView = [lensView liftedContainerView];

  return liftedContainerView;
}

- (void)setLiftedContainerView:(id)view
{
  viewCopy = view;
  lensView = [(_UITabSidebarLensView *)self lensView];
  [lensView setLiftedContainerView:viewCopy];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = _UITabSidebarLensView;
  [(UIView *)&v3 layoutSubviews];
  [(_UITabSidebarLensView *)self _updateLensViewFrame];
}

- (void)_updateBackgroundPlacement
{
  if (self)
  {
    traitCollection = [(UIView *)self traitCollection];
    v4 = [traitCollection valueForNSIntegerTrait:objc_opt_class()];

    v5 = v4 == 1;
    v6 = 0.0;
    if (v4 == 1)
    {
      v6 = 1.0;
    }
  }

  else
  {
    v5 = 0;
    v6 = 0.0;
  }

  [(UIView *)self setAlpha:v6];
  lensView = [(_UITabSidebarLensView *)self lensView];
  [lensView setLifted:v5 animated:1 alongsideAnimations:0 completion:0];
}

@end