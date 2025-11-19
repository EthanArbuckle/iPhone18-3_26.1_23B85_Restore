@interface _UITabSidebarLensView
- (UIView)liftedContainerView;
- (_UITabSidebarLensView)initWithFrame:(CGRect)a3;
- (void)_updateBackgroundPlacement;
- (void)_updateLensViewFrame;
- (void)layoutSubviews;
- (void)setControlBackgroundColor:(id)a3;
- (void)setLiftedContainerView:(id)a3;
@end

@implementation _UITabSidebarLensView

- (_UITabSidebarLensView)initWithFrame:(CGRect)a3
{
  v12[1] = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = _UITabSidebarLensView;
  v3 = [(UIView *)&v11 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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

- (void)setControlBackgroundColor:(id)a3
{
  if (a3)
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
  if (a1)
  {
    [a1 bounds];
    x = v2;
    y = v4;
    width = v6;
    height = v8;
    if ([a1 isActive])
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
    v12 = [a1 lensView];
    [v12 setCenter:{width * 0.5 + x, height * 0.5 + y}];

    v13 = [a1 lensView];
    [v13 setBounds:{v10, v11, width, height}];
  }
}

- (UIView)liftedContainerView
{
  v2 = [(_UITabSidebarLensView *)self lensView];
  v3 = [v2 liftedContainerView];

  return v3;
}

- (void)setLiftedContainerView:(id)a3
{
  v4 = a3;
  v5 = [(_UITabSidebarLensView *)self lensView];
  [v5 setLiftedContainerView:v4];
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
    v3 = [(UIView *)self traitCollection];
    v4 = [v3 valueForNSIntegerTrait:objc_opt_class()];

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
  v7 = [(_UITabSidebarLensView *)self lensView];
  [v7 setLifted:v5 animated:1 alongsideAnimations:0 completion:0];
}

@end