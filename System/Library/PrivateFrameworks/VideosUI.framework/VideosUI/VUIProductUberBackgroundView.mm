@interface VUIProductUberBackgroundView
- (CGSize)imageSize;
- (CGSize)vui_layoutSubviews:(CGSize)subviews computationOnly:(BOOL)only;
- (VUIProductUberBackgroundView)initWithFrame:(CGRect)frame;
- (double)_gradientHeightForSizeClass:(int64_t)class mainRect:(CGRect)rect;
- (void)_configureGradientLayer:(id)layer currentSizeClass:(int64_t)class mainRect:(CGRect)rect;
- (void)configureBlurEffectAndGradientWithInterfaceStyle:(unint64_t)style mainRect:(CGRect)rect;
- (void)configureBlurWithInterfaceStyle:(unint64_t)style;
- (void)configureBlurWithInterfaceStyle:(unint64_t)style mainRect:(CGRect)rect;
- (void)resetBlurEffectAndGradient;
- (void)setImageOffset:(double)offset;
- (void)setImageView:(id)view;
@end

@implementation VUIProductUberBackgroundView

- (VUIProductUberBackgroundView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = VUIProductUberBackgroundView;
  v3 = [(VUIProductUberBackgroundView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(VUIProductUberBackgroundView *)v3 setAutoresizingMask:1];
    v4->_configuredBlurInterfaceStyle = 0;
  }

  return v4;
}

- (void)setImageView:(id)view
{
  viewCopy = view;
  if (self->_imageView != viewCopy)
  {
    v7 = viewCopy;
    [(VUIProductUberBackgroundView *)self vui_addSubview:viewCopy oldView:?];
    v6 = v7;
    if (self->_imageView != v7)
    {
      objc_storeStrong(&self->_imageView, view);
      v6 = v7;
    }

    [(UIView *)v6 setVuiContentMode:2];
    [(VUIProductUberBackgroundView *)self vui_setNeedsLayout];
    viewCopy = v7;
  }
}

- (void)configureBlurWithInterfaceStyle:(unint64_t)style
{
  [(VUIProductUberBackgroundView *)self bounds];

  [(VUIProductUberBackgroundView *)self configureBlurWithInterfaceStyle:style mainRect:?];
}

- (void)configureBlurWithInterfaceStyle:(unint64_t)style mainRect:(CGRect)rect
{
  if (style)
  {
    if (!self->_blurEffectView || self->_configuredBlurInterfaceStyle != style)
    {
      [(VUIProductUberBackgroundView *)self configureBlurEffectAndGradientWithInterfaceStyle:style mainRect:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
      self->_configuredBlurInterfaceStyle = style;
    }
  }

  else
  {

    [(VUIProductUberBackgroundView *)self resetBlurEffectAndGradient:rect.origin.x];
  }
}

- (void)setImageOffset:(double)offset
{
  VUIRoundValue();
  self->_contentOffset = v5;
  [(VUIProductUberBackgroundView *)self bounds];
  if (offset > 0.0)
  {
    [(UIView *)self->_imageView _setContentRectInPixels:0.0 forContentSize:fmin(self->_contentOffset * -0.28, 0.0), v6, v7, v6, v7];
  }

  imageView = self->_imageView;

  [(UIView *)imageView setFrame:0.0];
}

- (CGSize)vui_layoutSubviews:(CGSize)subviews computationOnly:(BOOL)only
{
  height = subviews.height;
  width = subviews.width;
  if (!only)
  {
    imageView = self->_imageView;
    if (imageView)
    {
      contentOffset = self->_contentOffset;
      v9 = height - contentOffset;
      v10 = subviews.width;
    }

    else
    {
      contentOffset = *(MEMORY[0x1E695F058] + 8);
      v10 = *(MEMORY[0x1E695F058] + 16);
      v9 = *(MEMORY[0x1E695F058] + 24);
    }

    [(UIView *)imageView setFrame:*MEMORY[0x1E695F058], contentOffset, v10, v9];
    [(VUIProductUberBackgroundView *)self vui_bringSubviewToFront:self->_blurEffectView];
    v18.origin.x = 0.0;
    v18.origin.y = 0.0;
    v18.size.width = width;
    v18.size.height = height;
    v11 = [MEMORY[0x1E69DD2E8] vui_currentSizeClassForWindowWidth:CGRectGetWidth(v18)];
    v12 = MEMORY[0x1E69DD2E8];
    [(CAGradientLayer *)self->_gradientLayer frame];
    if (v11 != [v12 vui_currentSizeClassForWindowWidth:CGRectGetWidth(v19)] && self->_isChannelBanner)
    {
      [(VUIProductUberBackgroundView *)self _configureGradientLayer:self->_gradientLayer currentSizeClass:v11 mainRect:0.0, 0.0, width, height];
    }

    [(VUIProductUberBackgroundView *)self _gradientHeightForSizeClass:v11 mainRect:0.0, 0.0, width, height];
    v14 = v13;
    [(CAGradientLayer *)self->_gradientLayer setFrame:0.0, 0.0, width, v13];
    [(CAGradientLayer *)self->_gradientLayer removeAllAnimations];
    [(UIVisualEffectView *)self->_blurEffectView setFrame:0.0, height - v14, width, v14];
  }

  v15 = width;
  v16 = height;
  result.height = v16;
  result.width = v15;
  return result;
}

- (void)configureBlurEffectAndGradientWithInterfaceStyle:(unint64_t)style mainRect:(CGRect)rect
{
  if (!self->_gradientLayer)
  {
    height = rect.size.height;
    width = rect.size.width;
    y = rect.origin.y;
    x = rect.origin.x;
    layer = [MEMORY[0x1E6979380] layer];
    [(CAGradientLayer *)layer setShouldRasterize:0];
    vui_main = [MEMORY[0x1E69DCEB0] vui_main];
    [vui_main vui_scale];
    [(CAGradientLayer *)layer setRasterizationScale:?];

    v23.origin.x = x;
    v23.origin.y = y;
    v23.size.width = width;
    v23.size.height = height;
    -[VUIProductUberBackgroundView _configureGradientLayer:currentSizeClass:mainRect:](self, "_configureGradientLayer:currentSizeClass:mainRect:", layer, [MEMORY[0x1E69DD2E8] vui_currentSizeClassForWindowWidth:CGRectGetWidth(v23)], x, y, width, height);
    gradientLayer = self->_gradientLayer;
    self->_gradientLayer = layer;
  }

  if (style == 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = 2;
  }

  v14 = [MEMORY[0x1E69DC730] effectWithStyle:{v13, rect.origin.x, rect.origin.y, rect.size.width, rect.size.height}];
  blurEffectView = self->_blurEffectView;
  v21 = v14;
  if (blurEffectView)
  {
    [(UIVisualEffectView *)blurEffectView setEffect:v14];
  }

  else
  {
    v16 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:v14];
    v17 = self->_blurEffectView;
    self->_blurEffectView = v16;
    v18 = v16;

    [(VUIProductUberBackgroundView *)self addSubview:self->_blurEffectView];
  }

  layer2 = [(UIVisualEffectView *)self->_blurEffectView layer];
  [layer2 addSublayer:self->_gradientLayer];

  layer3 = [(UIVisualEffectView *)self->_blurEffectView layer];
  [layer3 setAllowsGroupBlending:1];
}

- (void)resetBlurEffectAndGradient
{
  [(UIVisualEffectView *)self->_blurEffectView removeFromSuperview];
  blurEffectView = self->_blurEffectView;
  self->_blurEffectView = 0;

  [(CAGradientLayer *)self->_gradientLayer removeFromSuperlayer];
  gradientLayer = self->_gradientLayer;
  self->_gradientLayer = 0;
}

- (double)_gradientHeightForSizeClass:(int64_t)class mainRect:(CGRect)rect
{
  if (self->_isChannelBanner)
  {
    return dbl_1E4297820[(class - 3) < 3];
  }

  VUIRoundValue();
  v4 = v6;
  if (!UIAccessibilityIsReduceTransparencyEnabled() || self->_highestSubviewY <= 0.0)
  {
    return v4;
  }

  VUIRoundValue();
  return result;
}

- (void)_configureGradientLayer:(id)layer currentSizeClass:(int64_t)class mainRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v31[5] = *MEMORY[0x1E69E9840];
  layerCopy = layer;
  v12 = layerCopy;
  if (self->_isChannelBanner)
  {
    [(VUIProductUberBackgroundView *)self _gradientHeightForSizeClass:class mainRect:x, y, width, height];
    v14 = v13;
    v15 = class - 3;
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    cGColor = [whiteColor CGColor];
    if (v15 >= 3)
    {
      v30 = cGColor;
      v18 = &unk_1F5E5EB38;
      v19 = &v30;
    }

    else
    {
      v31[0] = cGColor;
      v18 = &unk_1F5E5EB20;
      v19 = v31;
    }

    v23 = [MEMORY[0x1E69DC888] colorWithRed:1.0 green:1.0 blue:1.0 alpha:0.74];
    v19[1] = [v23 CGColor];
    v24 = [MEMORY[0x1E69DC888] colorWithRed:1.0 green:1.0 blue:1.0 alpha:0.1];
    v19[2] = [v24 CGColor];
    v25 = [MEMORY[0x1E69DC888] colorWithRed:1.0 green:1.0 blue:1.0 alpha:0.0];
    v19[3] = [v25 CGColor];
    v26 = [MEMORY[0x1E69DC888] colorWithRed:1.0 green:1.0 blue:1.0 alpha:0.0];
    v19[4] = [v26 CGColor];
    v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:5];
    [v12 setColors:v27];

    v28 = [VUIUtilities gradientLayerLocationsFromSpacings:v18 height:v14];
    [v12 setLocations:v28];

    [v12 setStartPoint:{0.5, 0.0}];
    [v12 setEndPoint:{0.5, 1.0}];
  }

  else
  {
    [layerCopy setStartPoint:{0.5, 0.0}];
    [v12 setEndPoint:{0.5, 1.0}];
    [v12 setLocations:&unk_1F5E5EB50];
    whiteColor2 = [MEMORY[0x1E69DC888] whiteColor];
    v29[0] = [whiteColor2 CGColor];
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    v29[1] = [clearColor CGColor];
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:2];
    [v12 setColors:v22];
  }

  [v12 setCompositingFilter:*MEMORY[0x1E69798E8]];
}

- (CGSize)imageSize
{
  width = self->_imageSize.width;
  height = self->_imageSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end