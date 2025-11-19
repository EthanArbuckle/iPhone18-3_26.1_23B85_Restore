@interface PREditingButtonMaterialView
+ (id)colorBurnContentImageForImage:(id)a3;
- (PREditingButtonMaterialView)initWithFrame:(CGRect)a3 backgroundView:(id)a4 foregroundImage:(id)a5;
- (UIEdgeInsets)backgroundInsets;
- (void)_addHighlightViewIfNecessary;
- (void)layoutSubviews;
- (void)setBackgroundInsets:(UIEdgeInsets)a3;
- (void)setBrightness:(double)a3;
- (void)setForegroundImage:(id)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setLegibilityStyle:(int64_t)a3;
@end

@implementation PREditingButtonMaterialView

+ (id)colorBurnContentImageForImage:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = objc_getAssociatedObject(v3, "PREditingButtonMaterialViewColorBurnImageAssociationKey");
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

- (PREditingButtonMaterialView)initWithFrame:(CGRect)a3 backgroundView:(id)a4 foregroundImage:(id)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v45 = *MEMORY[0x1E69E9840];
  v11 = a4;
  v12 = a5;
  v43.receiver = self;
  v43.super_class = PREditingButtonMaterialView;
  v13 = [(PREditingButtonMaterialView *)&v43 initWithFrame:x, y, width, height];
  v14 = v13;
  if (v13)
  {
    [(PREditingButtonMaterialView *)v13 setOpaque:0];
    v15 = [(PREditingButtonMaterialView *)v14 layer];
    [v15 setAllowsGroupBlending:0];

    if (v11)
    {
      v16 = v11;
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
    v24 = [MEMORY[0x1E69DC888] whiteColor];
    [(UIView *)v23 setBackgroundColor:v24];

    [(UIView *)v14->_whiteTintView setAlpha:0.42];
    [(PREditingButtonMaterialView *)v14 addSubview:v14->_whiteTintView];
    v25 = [objc_opt_class() colorBurnContentImageForImage:v12];
    v26 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v25];
    xColorBurnView = v14->_xColorBurnView;
    v14->_xColorBurnView = v26;

    v28 = [(UIImageView *)v14->_xColorBurnView layer];
    [v28 setCompositingFilter:*MEMORY[0x1E6979850]];

    [(PREditingButtonMaterialView *)v14 addSubview:v14->_xColorBurnView];
    v29 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v12];
    xPlusDView = v14->_xPlusDView;
    v14->_xPlusDView = v29;

    v31 = [(UIImageView *)v14->_xPlusDView layer];
    v32 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979CE8]];
    [v31 setCompositingFilter:v32];

    [(UIImageView *)v14->_xPlusDView setAlpha:0.3];
    [(PREditingButtonMaterialView *)v14 addSubview:v14->_xPlusDView];
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v33 = [(PREditingButtonMaterialView *)v14 subviews];
    v34 = [v33 countByEnumeratingWithState:&v39 objects:v44 count:16];
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
            objc_enumerationMutation(v33);
          }

          [*(*(&v39 + 1) + 8 * v37++) setUserInteractionEnabled:0];
        }

        while (v35 != v37);
        v35 = [v33 countByEnumeratingWithState:&v39 objects:v44 count:16];
      }

      while (v35);
    }
  }

  return v14;
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
    [(PREditingButtonMaterialView *)self setNeedsLayout];
  }
}

- (void)setForegroundImage:(id)a3
{
  v6 = a3;
  v4 = [(PREditingButtonMaterialView *)self foregroundImage];

  if (v4 != v6)
  {
    [(UIImageView *)self->_xPlusDView setImage:v6];
    v5 = [objc_opt_class() colorBurnContentImageForImage:v6];
    [(UIImageView *)self->_xColorBurnView setImage:v5];
    [(PREditingButtonMaterialView *)self setNeedsLayout];
  }
}

- (void)setLegibilityStyle:(int64_t)a3
{
  whiteTintView = self->_whiteTintView;
  v5 = 0.42;
  if (a3 == 2)
  {
    v5 = 0.0;
  }

  v6 = dbl_1A8BF7F30[a3 == 2];
  [(UIView *)whiteTintView setAlpha:v5];
  xPlusDView = self->_xPlusDView;

  [(UIImageView *)xPlusDView setAlpha:v6];
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

    [(PREditingButtonMaterialView *)self setBrightness:v3];
  }
}

- (void)setBrightness:(double)a3
{
  [(PREditingButtonMaterialView *)self _addHighlightViewIfNecessary];
  highlightView = self->_highlightView;

  [(UIView *)highlightView setAlpha:1.0 - a3];
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
  v20 = [(UIView *)self->_backgroundView layer];
  [v20 setMasksToBounds:1];

  v21 = [(UIView *)self->_backgroundView layer];
  v37 = v19;
  [v21 setCornerRadius:v19];

  v22 = [(UIView *)self->_backgroundView layer];
  v23 = [v22 cornerCurve];

  [(UIView *)self->_whiteTintView setFrame:v12, v14, v16, v18];
  v24 = [(UIView *)self->_whiteTintView layer];
  [v24 setCornerRadius:v19];

  v25 = [(UIView *)self->_whiteTintView layer];
  [v25 setCornerCurve:v23];

  v26 = [(UIImageView *)self->_xColorBurnView image];
  [v26 size];
  BSRectWithSize();
  UIRectCenteredIntegralRectScale();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;

  [(UIImageView *)self->_xColorBurnView setFrame:v28, v30, v32, v34, 0];
  [(UIImageView *)self->_xPlusDView setFrame:v28, v30, v32, v34];
  [(UIView *)self->_highlightView setFrame:v12, v14, v16, v18];
  v35 = [(UIView *)self->_highlightView layer];
  [v35 setCornerRadius:v37];

  v36 = [(UIView *)self->_highlightView layer];
  [v36 setCornerCurve:v23];
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