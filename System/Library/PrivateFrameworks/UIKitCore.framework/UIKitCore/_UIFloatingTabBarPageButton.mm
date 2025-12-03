@interface _UIFloatingTabBarPageButton
- (CGRect)_frameInCoordinateSpace:(id)space window:(id)window;
- (CGRect)_sourceRectForPresentationInWindow:(id)window;
- (CGSize)sizeThatFits:(CGSize)fits;
- (_UIFloatingTabBarPageButton)initWithDirection:(int64_t)direction;
- (double)contentOpacity;
- (id)_imageNameForCurrentDirection;
- (id)_tintColorForButton;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)_configureButton;
- (void)_updateButtonColor;
- (void)layoutSubviews;
- (void)setContentOpacity:(double)opacity;
@end

@implementation _UIFloatingTabBarPageButton

- (_UIFloatingTabBarPageButton)initWithDirection:(int64_t)direction
{
  v7.receiver = self;
  v7.super_class = _UIFloatingTabBarPageButton;
  v4 = [(UIView *)&v7 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v5 = v4;
  if (v4)
  {
    v4->_direction = direction;
    [(_UIFloatingTabBarPageButton *)v4 _configureButton];
  }

  return v5;
}

- (double)contentOpacity
{
  button = [(_UIFloatingTabBarPageButton *)self button];
  [button alpha];
  v4 = v3;

  return v4;
}

- (void)setContentOpacity:(double)opacity
{
  button = [(_UIFloatingTabBarPageButton *)self button];
  [button setAlpha:opacity];
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
  traitCollection = [(UIView *)self traitCollection];
  v4 = _UIFloatingTabBarGetPlatformMetrics([traitCollection userInterfaceIdiom]);

  v5 = +[UIButtonConfiguration plainButtonConfiguration];
  _imageNameForCurrentDirection = [(_UIFloatingTabBarPageButton *)self _imageNameForCurrentDirection];
  v7 = [UIImage systemImageNamed:_imageNameForCurrentDirection];
  [v5 setImage:v7];

  _tintColorForButton = [(_UIFloatingTabBarPageButton *)self _tintColorForButton];
  [v5 setBaseForegroundColor:_tintColorForButton];

  [v5 setCornerStyle:-1];
  v9 = *MEMORY[0x1E6979E40];
  background = [v5 background];
  [background setCornerRadius:v9];

  symbolConfiguration = [v4 symbolConfiguration];
  [v5 setPreferredSymbolConfigurationForImage:symbolConfiguration];

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

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  button = [(_UIFloatingTabBarPageButton *)self button];
  [button sizeThatFits:{width, height}];
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

  button = [(_UIFloatingTabBarPageButton *)self button];
  [button setFrame:{v4, v6, v8 + 10.0, v10}];
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  if ([(UIView *)self pointInside:eventCopy withEvent:x, y])
  {
    v10.receiver = self;
    v10.super_class = _UIFloatingTabBarPageButton;
    v8 = [(UIView *)&v10 hitTest:eventCopy withEvent:x, y];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_updateButtonColor
{
  button = [(_UIFloatingTabBarPageButton *)self button];
  configuration = [button configuration];

  _tintColorForButton = [(_UIFloatingTabBarPageButton *)self _tintColorForButton];
  [configuration setBaseForegroundColor:_tintColorForButton];

  button2 = [(_UIFloatingTabBarPageButton *)self button];
  [button2 setConfiguration:configuration];
}

- (id)_tintColorForButton
{
  traitCollection = [(UIView *)self traitCollection];
  v4 = _UIFloatingTabBarGetPlatformMetrics([traitCollection userInterfaceIdiom]);

  contentPaletteProvider = [v4 contentPaletteProvider];
  traitCollection2 = [(UIView *)self traitCollection];
  v7 = contentPaletteProvider[2](contentPaletteProvider, [traitCollection2 userInterfaceStyle]);

  inactiveColor = [v7 inactiveColor];

  return inactiveColor;
}

- (CGRect)_frameInCoordinateSpace:(id)space window:(id)window
{
  spaceCopy = space;
  button = [(_UIFloatingTabBarPageButton *)self button];
  [button frame];
  [(UIView *)self convertRect:spaceCopy toCoordinateSpace:?];
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

- (CGRect)_sourceRectForPresentationInWindow:(id)window
{
  button = [(_UIFloatingTabBarPageButton *)self button];
  [button frame];
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