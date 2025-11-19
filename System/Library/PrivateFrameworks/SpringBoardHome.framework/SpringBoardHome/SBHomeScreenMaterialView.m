@interface SBHomeScreenMaterialView
+ (id)colorBurnContentImageForImage:(id)a3;
- (UIEdgeInsets)backgroundInsets;
- (id)_initWithFrame:(CGRect)a3 backgroundView:(id)a4 material:(int64_t)a5 wantsGlass:(BOOL)a6 foregroundImage:(id)a7 wantsRimHighlight:(BOOL)a8;
- (void)_addHighlightViewIfNecessary;
- (void)layoutSubviews;
- (void)setBackgroundInsets:(UIEdgeInsets)a3;
- (void)setBrightness:(double)a3;
- (void)setForegroundImage:(id)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setImageSize:(CGSize)a3;
- (void)setLegibilitySettings:(id)a3;
- (void)setLegibilityStyle:(unint64_t)a3;
@end

@implementation SBHomeScreenMaterialView

+ (id)colorBurnContentImageForImage:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    if ([v3 isSymbolImage])
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

- (id)_initWithFrame:(CGRect)a3 backgroundView:(id)a4 material:(int64_t)a5 wantsGlass:(BOOL)a6 foregroundImage:(id)a7 wantsRimHighlight:(BOOL)a8
{
  v8 = a8;
  v10 = a6;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v62 = *MEMORY[0x1E69E9840];
  v17 = a4;
  v18 = a7;
  v60.receiver = self;
  v60.super_class = SBHomeScreenMaterialView;
  v19 = [(SBHomeScreenMaterialView *)&v60 initWithFrame:x, y, width, height];
  v20 = v19;
  if (v19)
  {
    [(SBHomeScreenMaterialView *)v19 setOpaque:0];
    v21 = [(SBHomeScreenMaterialView *)v20 layer];
    [v21 setAllowsGroupBlending:0];

    v20->_wantsGlass = v10;
    if (v10)
    {
      if (a5 == 2)
      {
        [(UIView *)v20 sbh_applyCloseBoxGlass];
      }

      else if (a5)
      {
        [(UIView *)v20 sbh_applyGlass];
      }

      else
      {
        [(UIView *)v20 sbh_applyClearGlass];
      }

      v33 = [objc_opt_class() colorBurnContentImageForImage:v18];
      v46 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v33];
      p_xColorBurnView = &v20->_xColorBurnView;
      xColorBurnView = v20->_xColorBurnView;
      v20->_xColorBurnView = v46;

      v48 = v20->_xColorBurnView;
      v49 = [MEMORY[0x1E69DC888] whiteColor];
      [(UIImageView *)v48 setTintColor:v49];
    }

    else
    {
      if (v17)
      {
        v22 = v17;
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
      if (v8)
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
      v32 = [MEMORY[0x1E69DC888] whiteColor];
      [(UIView *)v31 setBackgroundColor:v32];

      [(UIView *)v20->_whiteTintView setAlpha:0.42];
      [(SBHomeScreenMaterialView *)v20 addSubview:v20->_whiteTintView];
      v33 = [objc_opt_class() colorBurnContentImageForImage:v18];
      v34 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v33];
      v35 = v20->_xColorBurnView;
      v20->_xColorBurnView = v34;

      v36 = v20->_xColorBurnView;
      v37 = [MEMORY[0x1E69DC888] colorWithWhite:0.3 alpha:1.0];
      [(UIImageView *)v36 setTintColor:v37];

      v38 = [(UIImageView *)v20->_xColorBurnView layer];
      [v38 setCompositingFilter:*MEMORY[0x1E6979850]];

      [(SBHomeScreenMaterialView *)v20 addSubview:v20->_xColorBurnView];
      v39 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v18];
      p_xColorBurnView = &v20->_xPlusDView;
      xPlusDView = v20->_xPlusDView;
      v20->_xPlusDView = v39;

      v42 = [(UIImageView *)v20->_xPlusDView layer];
      v43 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979CE8]];
      [v42 setCompositingFilter:v43];

      v44 = v20->_xPlusDView;
      v45 = [MEMORY[0x1E69DC888] blackColor];
      [(UIImageView *)v44 setTintColor:v45];

      [(UIImageView *)v20->_xPlusDView setAlpha:0.3];
    }

    [(SBHomeScreenMaterialView *)v20 addSubview:*p_xColorBurnView];

    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v50 = [(SBHomeScreenMaterialView *)v20 subviews];
    v51 = [v50 countByEnumeratingWithState:&v56 objects:v61 count:16];
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
            objc_enumerationMutation(v50);
          }

          [*(*(&v56 + 1) + 8 * i) setUserInteractionEnabled:0];
        }

        v52 = [v50 countByEnumeratingWithState:&v56 objects:v61 count:16];
      }

      while (v52);
    }
  }

  return v20;
}

- (void)setBackgroundInsets:(UIEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.left;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *&self->_backgroundInsets.top), vceqq_f64(v4, *&self->_backgroundInsets.bottom)))) & 1) == 0)
  {
    self->_backgroundInsets = a3;
    [(SBHomeScreenMaterialView *)self setNeedsLayout];
  }
}

- (void)setForegroundImage:(id)a3
{
  v6 = a3;
  v4 = [(SBHomeScreenMaterialView *)self foregroundImage];

  if (v4 != v6)
  {
    [(UIImageView *)self->_xPlusDView setImage:v6];
    v5 = [objc_opt_class() colorBurnContentImageForImage:v6];
    [(UIImageView *)self->_xColorBurnView setImage:v5];
    [(SBHomeScreenMaterialView *)self setNeedsLayout];
  }
}

- (void)setLegibilityStyle:(unint64_t)a3
{
  if (!self->_wantsGlass)
  {
    v14 = v7;
    v15 = v3;
    whiteTintView = self->_whiteTintView;
    v11 = 0.42;
    if (a3 == 2)
    {
      v11 = 0.0;
    }

    v12 = dbl_1BEE87EA0[a3 == 2];
    [(UIView *)whiteTintView setAlpha:v11, v8, v14, v4, v15, v5];
    xPlusDView = self->_xPlusDView;

    [(UIImageView *)xPlusDView setAlpha:v12];
  }
}

- (void)setLegibilitySettings:(id)a3
{
  if (self->_wantsGlass)
  {
    v5 = [a3 primaryColor];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = [MEMORY[0x1E69DC888] systemWhiteColor];
    }

    v8 = v7;

    [(UIImageView *)self->_xColorBurnView setTintColor:v8];
  }
}

- (void)setHighlighted:(BOOL)a3
{
  if (self->_highlighted != a3)
  {
    self->_highlighted = a3;
    v3 = 0.466666667;
    if (!a3)
    {
      v3 = 1.0;
    }

    [(SBHomeScreenMaterialView *)self setBrightness:v3];
  }
}

- (void)setBrightness:(double)a3
{
  [(SBHomeScreenMaterialView *)self _addHighlightViewIfNecessary];
  highlightView = self->_highlightView;

  [(UIView *)highlightView setAlpha:1.0 - a3];
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
  v8 = [(SBHomeScreenMaterialView *)self layer];
  [v8 setCornerRadius:v7];

  v9 = [(SBHomeScreenMaterialView *)self layer];
  v10 = [v9 cornerCurve];

  [(UIView *)self->_backgroundView setFrame:x, y, width, height];
  v11 = [(UIView *)self->_backgroundView layer];
  [v11 setMasksToBounds:1];

  v12 = [(UIView *)self->_backgroundView layer];
  [v12 setCornerRadius:v7];

  v28 = x;
  [(UIView *)self->_whiteTintView setFrame:x, y, width, height];
  v13 = [(UIView *)self->_whiteTintView layer];
  [v13 setCornerRadius:v7];

  v14 = [(UIView *)self->_whiteTintView layer];
  [v14 setCornerCurve:v10];

  if (self->_imageSize.width == 0.0 && self->_imageSize.height == 0.0)
  {
    v15 = [(UIImageView *)self->_xColorBurnView image];
    [v15 size];
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
  v24 = [(UIView *)self->_highlightView layer];
  [v24 setCornerRadius:v7];

  v25 = [(UIView *)self->_highlightView layer];
  [v25 setCornerCurve:v10];

  [(UIView *)self->_rimView setFrame:v28, y, width, height];
  v26 = [(UIView *)self->_rimView layer];
  [v26 setCornerRadius:v7];

  v27 = [(UIView *)self->_rimView layer];
  [v27 setCornerCurve:v10];
}

- (void)setImageSize:(CGSize)a3
{
  if (self->_imageSize.width != a3.width || self->_imageSize.height != a3.height)
  {
    self->_imageSize = a3;
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