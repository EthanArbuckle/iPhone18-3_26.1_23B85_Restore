@interface SBHomeScreenMaterialView
+ (id)colorBurnContentImageForImage:(id)image;
- (UIEdgeInsets)backgroundInsets;
- (id)_initWithFrame:(CGRect)frame backgroundView:(id)view material:(int64_t)material wantsGlass:(BOOL)glass foregroundImage:(id)image wantsRimHighlight:(BOOL)highlight;
- (void)_addHighlightViewIfNecessary;
- (void)layoutSubviews;
- (void)setBackgroundInsets:(UIEdgeInsets)insets;
- (void)setBrightness:(double)brightness;
- (void)setForegroundImage:(id)image;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setImageSize:(CGSize)size;
- (void)setLegibilitySettings:(id)settings;
- (void)setLegibilityStyle:(unint64_t)style;
@end

@implementation SBHomeScreenMaterialView

+ (id)colorBurnContentImageForImage:(id)image
{
  imageCopy = image;
  v4 = imageCopy;
  if (imageCopy)
  {
    if ([imageCopy isSymbolImage])
    {
      v5 = v4;
    }

    else
    {
      v5 = objc_getAssociatedObject(v4, "SBHomeScreenMaterialViewColorBurnImageAssociationKey");
      if (!v5)
      {
        v5 = [v4 imageWithRenderingMode:2];
        if (v5)
        {
          objc_setAssociatedObject(v4, "SBHomeScreenMaterialViewColorBurnImageAssociationKey", v5, 1);
        }
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_initWithFrame:(CGRect)frame backgroundView:(id)view material:(int64_t)material wantsGlass:(BOOL)glass foregroundImage:(id)image wantsRimHighlight:(BOOL)highlight
{
  highlightCopy = highlight;
  glassCopy = glass;
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v62 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  imageCopy = image;
  v60.receiver = self;
  v60.super_class = SBHomeScreenMaterialView;
  height = [(SBHomeScreenMaterialView *)&v60 initWithFrame:x, y, width, height];
  v20 = height;
  if (height)
  {
    [(SBHomeScreenMaterialView *)height setOpaque:0];
    layer = [(SBHomeScreenMaterialView *)v20 layer];
    [layer setAllowsGroupBlending:0];

    v20->_wantsGlass = glassCopy;
    if (glassCopy)
    {
      if (material == 2)
      {
        [(UIView *)v20 sbh_applyCloseBoxGlass];
      }

      else if (material)
      {
        [(UIView *)v20 sbh_applyGlass];
      }

      else
      {
        [(UIView *)v20 sbh_applyClearGlass];
      }

      v33 = [objc_opt_class() colorBurnContentImageForImage:imageCopy];
      v46 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v33];
      p_xColorBurnView = &v20->_xColorBurnView;
      xColorBurnView = v20->_xColorBurnView;
      v20->_xColorBurnView = v46;

      v48 = v20->_xColorBurnView;
      whiteColor = [MEMORY[0x1E69DC888] whiteColor];
      [(UIImageView *)v48 setTintColor:whiteColor];
    }

    else
    {
      if (viewCopy)
      {
        v22 = viewCopy;
        backgroundView = v20->_backgroundView;
        v20->_backgroundView = v22;
      }

      else
      {
        v24 = objc_alloc_init(MEMORY[0x1E69DD250]);
        v25 = v20->_backgroundView;
        v20->_backgroundView = v24;

        v26 = v20->_backgroundView;
        backgroundView = [MEMORY[0x1E69DC888] lightGrayColor];
        [(UIView *)v26 setBackgroundColor:backgroundView];
      }

      [(SBHomeScreenMaterialView *)v20 addSubview:v20->_backgroundView];
      if (highlightCopy)
      {
        v27 = objc_alloc_init(MEMORY[0x1E69DD250]);
        rimView = v20->_rimView;
        v20->_rimView = v27;

        [(UIView *)v20->_rimView sbh_applyCloseBoxFauxGlassRim];
        [(SBHomeScreenMaterialView *)v20 addSubview:v20->_rimView];
      }

      v29 = objc_alloc_init(MEMORY[0x1E69DD250]);
      whiteTintView = v20->_whiteTintView;
      v20->_whiteTintView = v29;

      v31 = v20->_whiteTintView;
      whiteColor2 = [MEMORY[0x1E69DC888] whiteColor];
      [(UIView *)v31 setBackgroundColor:whiteColor2];

      [(UIView *)v20->_whiteTintView setAlpha:0.42];
      [(SBHomeScreenMaterialView *)v20 addSubview:v20->_whiteTintView];
      v33 = [objc_opt_class() colorBurnContentImageForImage:imageCopy];
      v34 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v33];
      v35 = v20->_xColorBurnView;
      v20->_xColorBurnView = v34;

      v36 = v20->_xColorBurnView;
      v37 = [MEMORY[0x1E69DC888] colorWithWhite:0.3 alpha:1.0];
      [(UIImageView *)v36 setTintColor:v37];

      layer2 = [(UIImageView *)v20->_xColorBurnView layer];
      [layer2 setCompositingFilter:*MEMORY[0x1E6979850]];

      [(SBHomeScreenMaterialView *)v20 addSubview:v20->_xColorBurnView];
      v39 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:imageCopy];
      p_xColorBurnView = &v20->_xPlusDView;
      xPlusDView = v20->_xPlusDView;
      v20->_xPlusDView = v39;

      layer3 = [(UIImageView *)v20->_xPlusDView layer];
      v43 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979CE8]];
      [layer3 setCompositingFilter:v43];

      v44 = v20->_xPlusDView;
      blackColor = [MEMORY[0x1E69DC888] blackColor];
      [(UIImageView *)v44 setTintColor:blackColor];

      [(UIImageView *)v20->_xPlusDView setAlpha:0.3];
    }

    [(SBHomeScreenMaterialView *)v20 addSubview:*p_xColorBurnView];

    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    subviews = [(SBHomeScreenMaterialView *)v20 subviews];
    v51 = [subviews countByEnumeratingWithState:&v56 objects:v61 count:16];
    if (v51)
    {
      v52 = v51;
      v53 = *v57;
      do
      {
        for (i = 0; i != v52; ++i)
        {
          if (*v57 != v53)
          {
            objc_enumerationMutation(subviews);
          }

          [*(*(&v56 + 1) + 8 * i) setUserInteractionEnabled:0];
        }

        v52 = [subviews countByEnumeratingWithState:&v56 objects:v61 count:16];
      }

      while (v52);
    }
  }

  return v20;
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
    [(SBHomeScreenMaterialView *)self setNeedsLayout];
  }
}

- (void)setForegroundImage:(id)image
{
  imageCopy = image;
  foregroundImage = [(SBHomeScreenMaterialView *)self foregroundImage];

  if (foregroundImage != imageCopy)
  {
    [(UIImageView *)self->_xPlusDView setImage:imageCopy];
    v5 = [objc_opt_class() colorBurnContentImageForImage:imageCopy];
    [(UIImageView *)self->_xColorBurnView setImage:v5];
    [(SBHomeScreenMaterialView *)self setNeedsLayout];
  }
}

- (void)setLegibilityStyle:(unint64_t)style
{
  if (!self->_wantsGlass)
  {
    v14 = v7;
    v15 = v3;
    whiteTintView = self->_whiteTintView;
    v11 = 0.42;
    if (style == 2)
    {
      v11 = 0.0;
    }

    v12 = dbl_1BEE87EA0[style == 2];
    [(UIView *)whiteTintView setAlpha:v11, v8, v14, v4, v15, v5];
    xPlusDView = self->_xPlusDView;

    [(UIImageView *)xPlusDView setAlpha:v12];
  }
}

- (void)setLegibilitySettings:(id)settings
{
  if (self->_wantsGlass)
  {
    primaryColor = [settings primaryColor];
    v6 = primaryColor;
    if (primaryColor)
    {
      systemWhiteColor = primaryColor;
    }

    else
    {
      systemWhiteColor = [MEMORY[0x1E69DC888] systemWhiteColor];
    }

    v8 = systemWhiteColor;

    [(UIImageView *)self->_xColorBurnView setTintColor:v8];
  }
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

    [(SBHomeScreenMaterialView *)self setBrightness:v3];
  }
}

- (void)setBrightness:(double)brightness
{
  [(SBHomeScreenMaterialView *)self _addHighlightViewIfNecessary];
  highlightView = self->_highlightView;

  [(UIView *)highlightView setAlpha:1.0 - brightness];
}

- (void)layoutSubviews
{
  v29.receiver = self;
  v29.super_class = SBHomeScreenMaterialView;
  [(SBHomeScreenMaterialView *)&v29 layoutSubviews];
  [(SBHomeScreenMaterialView *)self bounds];
  [(SBHomeScreenMaterialView *)self backgroundInsets];
  UIRectIntegralWithScale();
  x = v30.origin.x;
  y = v30.origin.y;
  width = v30.size.width;
  height = v30.size.height;
  v7 = CGRectGetHeight(v30) * 0.5;
  layer = [(SBHomeScreenMaterialView *)self layer];
  [layer setCornerRadius:v7];

  layer2 = [(SBHomeScreenMaterialView *)self layer];
  cornerCurve = [layer2 cornerCurve];

  [(UIView *)self->_backgroundView setFrame:x, y, width, height];
  layer3 = [(UIView *)self->_backgroundView layer];
  [layer3 setMasksToBounds:1];

  layer4 = [(UIView *)self->_backgroundView layer];
  [layer4 setCornerRadius:v7];

  v28 = x;
  [(UIView *)self->_whiteTintView setFrame:x, y, width, height];
  layer5 = [(UIView *)self->_whiteTintView layer];
  [layer5 setCornerRadius:v7];

  layer6 = [(UIView *)self->_whiteTintView layer];
  [layer6 setCornerCurve:cornerCurve];

  if (self->_imageSize.width == 0.0 && self->_imageSize.height == 0.0)
  {
    image = [(UIImageView *)self->_xColorBurnView image];
    [image size];
  }

  BSRectWithSize();
  UIRectCenteredIntegralRectScale();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  [(UIImageView *)self->_xColorBurnView setFrame:0];
  [(UIImageView *)self->_xPlusDView setFrame:v17, v19, v21, v23];
  [(UIView *)self->_highlightView setFrame:v28, y, width, height];
  layer7 = [(UIView *)self->_highlightView layer];
  [layer7 setCornerRadius:v7];

  layer8 = [(UIView *)self->_highlightView layer];
  [layer8 setCornerCurve:cornerCurve];

  [(UIView *)self->_rimView setFrame:v28, y, width, height];
  layer9 = [(UIView *)self->_rimView layer];
  [layer9 setCornerRadius:v7];

  layer10 = [(UIView *)self->_rimView layer];
  [layer10 setCornerCurve:cornerCurve];
}

- (void)setImageSize:(CGSize)size
{
  if (self->_imageSize.width != size.width || self->_imageSize.height != size.height)
  {
    self->_imageSize = size;
    [(SBHomeScreenMaterialView *)self setNeedsLayout];
  }
}

- (void)_addHighlightViewIfNecessary
{
  if (!self->_highlightView)
  {
    v4[5] = v2;
    v4[6] = v3;
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __56__SBHomeScreenMaterialView__addHighlightViewIfNecessary__block_invoke;
    v4[3] = &unk_1E8088C90;
    v4[4] = self;
    [MEMORY[0x1E69DD250] performWithoutAnimation:v4];
  }
}

uint64_t __56__SBHomeScreenMaterialView__addHighlightViewIfNecessary__block_invoke(uint64_t a1)
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