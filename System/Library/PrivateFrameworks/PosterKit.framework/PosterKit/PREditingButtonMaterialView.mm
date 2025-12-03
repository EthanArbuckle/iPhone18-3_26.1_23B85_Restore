@interface PREditingButtonMaterialView
+ (id)colorBurnContentImageForImage:(id)image;
- (PREditingButtonMaterialView)initWithFrame:(CGRect)frame backgroundView:(id)view foregroundImage:(id)image;
- (UIEdgeInsets)backgroundInsets;
- (void)_addHighlightViewIfNecessary;
- (void)layoutSubviews;
- (void)setBackgroundInsets:(UIEdgeInsets)insets;
- (void)setBrightness:(double)brightness;
- (void)setForegroundImage:(id)image;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setLegibilityStyle:(int64_t)style;
@end

@implementation PREditingButtonMaterialView

+ (id)colorBurnContentImageForImage:(id)image
{
  imageCopy = image;
  v4 = imageCopy;
  if (imageCopy)
  {
    v5 = objc_getAssociatedObject(imageCopy, "PREditingButtonMaterialViewColorBurnImageAssociationKey");
    if (!v5)
    {
      v6 = [MEMORY[0x1E69DC888] colorWithWhite:0.3 alpha:1.0];
      v5 = [v4 _flatImageWithColor:v6];

      if (v5)
      {
        objc_setAssociatedObject(v4, "PREditingButtonMaterialViewColorBurnImageAssociationKey", v5, 1);
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (PREditingButtonMaterialView)initWithFrame:(CGRect)frame backgroundView:(id)view foregroundImage:(id)image
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v45 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  imageCopy = image;
  v43.receiver = self;
  v43.super_class = PREditingButtonMaterialView;
  height = [(PREditingButtonMaterialView *)&v43 initWithFrame:x, y, width, height];
  v14 = height;
  if (height)
  {
    [(PREditingButtonMaterialView *)height setOpaque:0];
    layer = [(PREditingButtonMaterialView *)v14 layer];
    [layer setAllowsGroupBlending:0];

    if (viewCopy)
    {
      v16 = viewCopy;
      backgroundView = v14->_backgroundView;
      v14->_backgroundView = v16;
    }

    else
    {
      v18 = objc_alloc_init(MEMORY[0x1E69DD250]);
      v19 = v14->_backgroundView;
      v14->_backgroundView = v18;

      v20 = v14->_backgroundView;
      backgroundView = [MEMORY[0x1E69DC888] lightGrayColor];
      [(UIView *)v20 setBackgroundColor:backgroundView];
    }

    [(PREditingButtonMaterialView *)v14 addSubview:v14->_backgroundView];
    v21 = objc_alloc_init(MEMORY[0x1E69DD250]);
    whiteTintView = v14->_whiteTintView;
    v14->_whiteTintView = v21;

    v23 = v14->_whiteTintView;
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    [(UIView *)v23 setBackgroundColor:whiteColor];

    [(UIView *)v14->_whiteTintView setAlpha:0.42];
    [(PREditingButtonMaterialView *)v14 addSubview:v14->_whiteTintView];
    v25 = [objc_opt_class() colorBurnContentImageForImage:imageCopy];
    v26 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v25];
    xColorBurnView = v14->_xColorBurnView;
    v14->_xColorBurnView = v26;

    layer2 = [(UIImageView *)v14->_xColorBurnView layer];
    [layer2 setCompositingFilter:*MEMORY[0x1E6979850]];

    [(PREditingButtonMaterialView *)v14 addSubview:v14->_xColorBurnView];
    v29 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:imageCopy];
    xPlusDView = v14->_xPlusDView;
    v14->_xPlusDView = v29;

    layer3 = [(UIImageView *)v14->_xPlusDView layer];
    v32 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979CE8]];
    [layer3 setCompositingFilter:v32];

    [(UIImageView *)v14->_xPlusDView setAlpha:0.3];
    [(PREditingButtonMaterialView *)v14 addSubview:v14->_xPlusDView];
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    subviews = [(PREditingButtonMaterialView *)v14 subviews];
    v34 = [subviews countByEnumeratingWithState:&v39 objects:v44 count:16];
    if (v34)
    {
      v35 = v34;
      v36 = *v40;
      do
      {
        v37 = 0;
        do
        {
          if (*v40 != v36)
          {
            objc_enumerationMutation(subviews);
          }

          [*(*(&v39 + 1) + 8 * v37++) setUserInteractionEnabled:0];
        }

        while (v35 != v37);
        v35 = [subviews countByEnumeratingWithState:&v39 objects:v44 count:16];
      }

      while (v35);
    }
  }

  return v14;
}

- (void)setBackgroundInsets:(UIEdgeInsets)insets
{
  v3.f64[0] = insets.top;
  v3.f64[1] = insets.left;
  v4.f64[0] = insets.bottom;
  v4.f64[1] = insets.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *&self->_backgroundInsets.top), vceqq_f64(v4, *&self->_backgroundInsets.bottom)))) & 1) == 0)
  {
    self->_backgroundInsets = insets;
    [(PREditingButtonMaterialView *)self setNeedsLayout];
  }
}

- (void)setForegroundImage:(id)image
{
  imageCopy = image;
  foregroundImage = [(PREditingButtonMaterialView *)self foregroundImage];

  if (foregroundImage != imageCopy)
  {
    [(UIImageView *)self->_xPlusDView setImage:imageCopy];
    v5 = [objc_opt_class() colorBurnContentImageForImage:imageCopy];
    [(UIImageView *)self->_xColorBurnView setImage:v5];
    [(PREditingButtonMaterialView *)self setNeedsLayout];
  }
}

- (void)setLegibilityStyle:(int64_t)style
{
  whiteTintView = self->_whiteTintView;
  v5 = 0.42;
  if (style == 2)
  {
    v5 = 0.0;
  }

  v6 = dbl_1A8BF7F30[style == 2];
  [(UIView *)whiteTintView setAlpha:v5];
  xPlusDView = self->_xPlusDView;

  [(UIImageView *)xPlusDView setAlpha:v6];
}

- (void)setHighlighted:(BOOL)highlighted
{
  if (self->_highlighted != highlighted)
  {
    self->_highlighted = highlighted;
    v3 = 0.466666667;
    if (!highlighted)
    {
      v3 = 1.0;
    }

    [(PREditingButtonMaterialView *)self setBrightness:v3];
  }
}

- (void)setBrightness:(double)brightness
{
  [(PREditingButtonMaterialView *)self _addHighlightViewIfNecessary];
  highlightView = self->_highlightView;

  [(UIView *)highlightView setAlpha:1.0 - brightness];
}

- (void)layoutSubviews
{
  v38.receiver = self;
  v38.super_class = PREditingButtonMaterialView;
  [(PREditingButtonMaterialView *)&v38 layoutSubviews];
  [(PREditingButtonMaterialView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(PREditingButtonMaterialView *)self backgroundInsets];
  UIRectIntegralWithScale();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  if (!CGFloatIsValid() || (CGFloatIsValid() & 1) == 0)
  {
    v18 = v10;
    v16 = v8;
    v14 = v6;
    v12 = v4;
  }

  v39.origin.x = v12;
  v39.origin.y = v14;
  v39.size.width = v16;
  v39.size.height = v18;
  v19 = CGRectGetHeight(v39) * 0.5;
  [(UIView *)self->_backgroundView setFrame:v12, v14, v16, v18];
  layer = [(UIView *)self->_backgroundView layer];
  [layer setMasksToBounds:1];

  layer2 = [(UIView *)self->_backgroundView layer];
  v37 = v19;
  [layer2 setCornerRadius:v19];

  layer3 = [(UIView *)self->_backgroundView layer];
  cornerCurve = [layer3 cornerCurve];

  [(UIView *)self->_whiteTintView setFrame:v12, v14, v16, v18];
  layer4 = [(UIView *)self->_whiteTintView layer];
  [layer4 setCornerRadius:v19];

  layer5 = [(UIView *)self->_whiteTintView layer];
  [layer5 setCornerCurve:cornerCurve];

  image = [(UIImageView *)self->_xColorBurnView image];
  [image size];
  BSRectWithSize();
  UIRectCenteredIntegralRectScale();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;

  [(UIImageView *)self->_xColorBurnView setFrame:v28, v30, v32, v34, 0];
  [(UIImageView *)self->_xPlusDView setFrame:v28, v30, v32, v34];
  [(UIView *)self->_highlightView setFrame:v12, v14, v16, v18];
  layer6 = [(UIView *)self->_highlightView layer];
  [layer6 setCornerRadius:v37];

  layer7 = [(UIView *)self->_highlightView layer];
  [layer7 setCornerCurve:cornerCurve];
}

- (void)_addHighlightViewIfNecessary
{
  if (!self->_highlightView)
  {
    v4[5] = v2;
    v4[6] = v3;
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __59__PREditingButtonMaterialView__addHighlightViewIfNecessary__block_invoke;
    v4[3] = &unk_1E7843688;
    v4[4] = self;
    [MEMORY[0x1E69DD250] performWithoutAnimation:v4];
  }
}

uint64_t __59__PREditingButtonMaterialView__addHighlightViewIfNecessary__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E69DD250]);
  v3 = *(a1 + 32);
  v4 = *(v3 + 440);
  *(v3 + 440) = v2;

  v5 = *(*(a1 + 32) + 440);
  v6 = [MEMORY[0x1E69DC888] blackColor];
  [v5 setBackgroundColor:v6];

  [*(*(a1 + 32) + 440) setAlpha:0.0];
  v7 = [*(*(a1 + 32) + 440) layer];
  [v7 setCompositingFilter:*MEMORY[0x1E6979D28]];

  [*(a1 + 32) addSubview:*(*(a1 + 32) + 440)];
  v8 = *(a1 + 32);

  return [v8 layoutIfNeeded];
}

- (UIEdgeInsets)backgroundInsets
{
  top = self->_backgroundInsets.top;
  left = self->_backgroundInsets.left;
  bottom = self->_backgroundInsets.bottom;
  right = self->_backgroundInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end