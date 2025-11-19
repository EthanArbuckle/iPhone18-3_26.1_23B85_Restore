@interface _UIFloatingTabBarPageButton
- (CGRect)_frameInCoordinateSpace:(id)a3 window:(id)a4;
- (CGRect)_sourceRectForPresentationInWindow:(id)a3;
- (CGSize)sizeThatFits:(CGSize)a3;
- (_UIFloatingTabBarPageButton)initWithDirection:(int64_t)a3;
- (double)contentOpacity;
- (id)_imageNameForCurrentDirection;
- (id)_tintColorForButton;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)_configureButton;
- (void)_updateButtonColor;
- (void)layoutSubviews;
- (void)setContentOpacity:(double)a3;
@end

@implementation _UIFloatingTabBarPageButton

- (_UIFloatingTabBarPageButton)initWithDirection:(int64_t)a3
{
  v7.receiver = self;
  v7.super_class = _UIFloatingTabBarPageButton;
  v4 = [(UIView *)&v7 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v5 = v4;
  if (v4)
  {
    v4->_direction = a3;
    [(_UIFloatingTabBarPageButton *)v4 _configureButton];
  }

  return v5;
}

- (double)contentOpacity
{
  v2 = [(_UIFloatingTabBarPageButton *)self button];
  [v2 alpha];
  v4 = v3;

  return v4;
}

- (void)setContentOpacity:(double)a3
{
  v4 = [(_UIFloatingTabBarPageButton *)self button];
  [v4 setAlpha:a3];
}

- (id)_imageNameForCurrentDirection
{
  if ([(_UIFloatingTabBarPageButton *)self direction])
  {
    return @"chevron.right";
  }

  else
  {
    return @"chevron.left";
  }
}

- (void)_configureButton
{
  v21[1] = *MEMORY[0x1E69E9840];
  v3 = [(UIView *)self traitCollection];
  v4 = _UIFloatingTabBarGetPlatformMetrics([v3 userInterfaceIdiom]);

  v5 = +[UIButtonConfiguration plainButtonConfiguration];
  v6 = [(_UIFloatingTabBarPageButton *)self _imageNameForCurrentDirection];
  v7 = [UIImage systemImageNamed:v6];
  [v5 setImage:v7];

  v8 = [(_UIFloatingTabBarPageButton *)self _tintColorForButton];
  [v5 setBaseForegroundColor:v8];

  [v5 setCornerStyle:-1];
  v9 = *MEMORY[0x1E6979E40];
  v10 = [v5 background];
  [v10 setCornerRadius:v9];

  v11 = [v4 symbolConfiguration];
  [v5 setPreferredSymbolConfigurationForImage:v11];

  v12 = [UIButton buttonWithConfiguration:v5 primaryAction:0];
  v13 = +[UIHoverHighlightEffect effect];
  v14 = +[UIShape capsuleShape];
  v15 = [UIHoverStyle styleWithEffect:v13 shape:v14];
  [v12 setHoverStyle:v15];

  [v12 _setContinuousCornerRadius:v9];
  [v12 setSpringLoaded:1];
  [(UIView *)self addSubview:v12];
  objc_storeStrong(&self->_button, v12);
  v21[0] = objc_opt_class();
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
  v17 = [v12 registerForTraitChanges:v16 withAction:sel_setNeedsUpdateConfiguration];

  v20 = objc_opt_class();
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v20 count:1];
  v19 = [(UIView *)self registerForTraitChanges:v18 withAction:sel__updateButtonColor];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = [(_UIFloatingTabBarPageButton *)self button];
  [v5 sizeThatFits:{width, height}];
  v7 = v6;
  v9 = v8;

  v10 = v7 + -10.0;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)layoutSubviews
{
  v12.receiver = self;
  v12.super_class = _UIFloatingTabBarPageButton;
  [(UIView *)&v12 layoutSubviews];
  [(UIView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if ([(_UIFloatingTabBarPageButton *)self direction]== 1)
  {
    v4 = v4 + -10.0;
  }

  v11 = [(_UIFloatingTabBarPageButton *)self button];
  [v11 setFrame:{v4, v6, v8 + 10.0, v10}];
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  if ([(UIView *)self pointInside:v7 withEvent:x, y])
  {
    v10.receiver = self;
    v10.super_class = _UIFloatingTabBarPageButton;
    v8 = [(UIView *)&v10 hitTest:v7 withEvent:x, y];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_updateButtonColor
{
  v3 = [(_UIFloatingTabBarPageButton *)self button];
  v6 = [v3 configuration];

  v4 = [(_UIFloatingTabBarPageButton *)self _tintColorForButton];
  [v6 setBaseForegroundColor:v4];

  v5 = [(_UIFloatingTabBarPageButton *)self button];
  [v5 setConfiguration:v6];
}

- (id)_tintColorForButton
{
  v3 = [(UIView *)self traitCollection];
  v4 = _UIFloatingTabBarGetPlatformMetrics([v3 userInterfaceIdiom]);

  v5 = [v4 contentPaletteProvider];
  v6 = [(UIView *)self traitCollection];
  v7 = v5[2](v5, [v6 userInterfaceStyle]);

  v8 = [v7 inactiveColor];

  return v8;
}

- (CGRect)_frameInCoordinateSpace:(id)a3 window:(id)a4
{
  v5 = a3;
  v6 = [(_UIFloatingTabBarPageButton *)self button];
  [v6 frame];
  [(UIView *)self convertRect:v5 toCoordinateSpace:?];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = v8;
  v16 = v10;
  v17 = v12;
  v18 = v14;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (CGRect)_sourceRectForPresentationInWindow:(id)a3
{
  v3 = [(_UIFloatingTabBarPageButton *)self button];
  [v3 frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

@end