@interface VUIProgressView
- (CGSize)sizeThatFits:(CGSize)fits;
- (UIEdgeInsets)padding;
- (VUIProgressView)initWithFrame:(CGRect)frame;
- (id)_maskImageForProgressBar;
- (void)_layoutMaterialView;
- (void)_updateForStyleChange;
- (void)layoutSubviews;
- (void)setCompleteTintColor:(id)color;
- (void)setCornerRadius:(double)radius;
- (void)setGradientEndColor:(id)color;
- (void)setGradientStartColor:(id)color;
- (void)setMaterialView:(id)view;
- (void)setPadding:(UIEdgeInsets)padding;
- (void)setProgress:(double)progress;
- (void)setProgressTintColor:(id)color;
- (void)setSelected:(BOOL)selected animated:(BOOL)animated;
- (void)setShouldProgressBarUseRoundCorner:(BOOL)corner;
- (void)setStyle:(unint64_t)style;
- (void)setUseMaterial:(BOOL)material;
@end

@implementation VUIProgressView

- (VUIProgressView)initWithFrame:(CGRect)frame
{
  v16.receiver = self;
  v16.super_class = VUIProgressView;
  v3 = [(VUIProgressView *)&v16 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [v3 setBackgroundColor:clearColor];

    [v3 setClipsToBounds:0];
    *(v3 + 55) = 0x4000000000000000;
    *(v3 + 54) = 0x4008000000000000;
    v5 = [MEMORY[0x1E69DC888] colorWithWhite:0.2 alpha:0.9];
    v6 = *(v3 + 60);
    *(v3 + 60) = v5;

    v7 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:1.0];
    v8 = *(v3 + 57);
    *(v3 + 57) = v7;

    v9 = *(MEMORY[0x1E69DDCE0] + 16);
    *(v3 + 504) = *MEMORY[0x1E69DDCE0];
    *(v3 + 520) = v9;
    v3[418] = 0;
    v3[417] = 0;
    v3[416] = 1;
    v10 = [VUIProgressBarView alloc];
    [v3 bounds];
    v11 = [(VUIProgressBarView *)v10 initWithFrame:?];
    v12 = *(v3 + 51);
    *(v3 + 51) = v11;

    v13 = *(v3 + 51);
    clearColor2 = [MEMORY[0x1E69DC888] clearColor];
    [v13 setBackgroundColor:clearColor2];

    [*(v3 + 51) setAutoresizingMask:18];
    [*(v3 + 51) setCornerRadius:*(v3 + 54)];
    [*(v3 + 51) setCompleteTintColor:*(v3 + 60)];
    [*(v3 + 51) setProgressTintColor:*(v3 + 57)];
    [*(v3 + 51) setPadding:{*(v3 + 63), *(v3 + 64), *(v3 + 65), *(v3 + 66)}];
    [*(v3 + 51) setShouldProgressBarUseRoundCorner:v3[418]];
    [v3 addSubview:*(v3 + 51)];
    [v3 _updateForStyleChange];
  }

  return v3;
}

- (void)layoutSubviews
{
  v27 = *MEMORY[0x1E69E9840];
  v25.receiver = self;
  v25.super_class = VUIProgressView;
  [(VUIProgressView *)&v25 layoutSubviews];
  [(VUIProgressView *)self bounds];
  if (!CGRectEqualToRect(v28, *MEMORY[0x1E695F058]))
  {
    [(VUIProgressView *)self bounds];
    v4 = v3 + -6.0;
    v6 = v5 + -2.0;
    v8 = v7 + 12.0;
    v10 = v9 + 10.0;
    shadowImageView = [(VUIProgressView *)self shadowImageView];
    [shadowImageView setFrame:{v4, v6, v8, v10}];

    if (self->_materialView)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      materialView = self->_materialView;
      if (isKindOfClass)
      {
        _maskImageForProgressBar = [(VUIProgressView *)self _maskImageForProgressBar];
        [(UIView *)materialView _setMaskImage:_maskImageForProgressBar];
      }

      else
      {
        _maskImageForProgressBar = [(UIView *)materialView layer];
        [(VUIProgressView *)self bounds];
        [_maskImageForProgressBar setFrame:?];
        sublayers = [_maskImageForProgressBar sublayers];
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v16 = [sublayers countByEnumeratingWithState:&v21 objects:v26 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v22;
          do
          {
            v19 = 0;
            do
            {
              if (*v22 != v18)
              {
                objc_enumerationMutation(sublayers);
              }

              v20 = *(*(&v21 + 1) + 8 * v19);
              [(VUIProgressView *)self bounds];
              [v20 setFrame:?];
              ++v19;
            }

            while (v17 != v19);
            v17 = [sublayers countByEnumeratingWithState:&v21 objects:v26 count:16];
          }

          while (v17);
        }
      }
    }
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  [(VUIProgressView *)self height:fits.width];
  v5 = v4;
  v6 = width;
  result.height = v5;
  result.width = v6;
  return result;
}

- (void)setCompleteTintColor:(id)color
{
  colorCopy = color;
  if (([(UIColor *)self->_completeTintColor isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_completeTintColor, color);
    [(VUIProgressBarView *)self->_progressBarView setCompleteTintColor:colorCopy];
  }
}

- (void)setCornerRadius:(double)radius
{
  if (vabdd_f64(self->_cornerRadius, radius) > 0.00000011920929)
  {
    self->_cornerRadius = radius;
    [(VUIProgressBarView *)self->_progressBarView setCornerRadius:?];
  }
}

- (void)setProgress:(double)progress
{
  if (vabdd_f64(self->_progress, progress) > 0.00000011920929)
  {
    self->_progress = progress;
    [(VUIProgressBarView *)self->_progressBarView setProgress:?];
  }
}

- (void)setProgressTintColor:(id)color
{
  colorCopy = color;
  if (([(UIColor *)self->_progressTintColor isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_progressTintColor, color);
    [(VUIProgressBarView *)self->_progressBarView setProgressTintColor:colorCopy];
  }
}

- (void)setGradientStartColor:(id)color
{
  colorCopy = color;
  if (([(UIColor *)self->_gradientStartColor isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_gradientStartColor, color);
    [(VUIProgressBarView *)self->_progressBarView setGradientStartColor:colorCopy];
  }
}

- (void)setGradientEndColor:(id)color
{
  colorCopy = color;
  if (([(UIColor *)self->_gradientEndColor isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_gradientEndColor, color);
    [(VUIProgressBarView *)self->_progressBarView setGradientEndColor:colorCopy];
  }
}

- (void)setPadding:(UIEdgeInsets)padding
{
  v3.f64[0] = padding.top;
  v3.f64[1] = padding.left;
  v4.f64[0] = padding.bottom;
  v4.f64[1] = padding.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *&self->_padding.top), vceqq_f64(v4, *&self->_padding.bottom)))) & 1) == 0)
  {
    self->_padding = padding;
    [(VUIProgressBarView *)self->_progressBarView setPadding:?];
  }
}

- (void)setShouldProgressBarUseRoundCorner:(BOOL)corner
{
  if (self->_shouldProgressBarUseRoundCorner != corner)
  {
    self->_shouldProgressBarUseRoundCorner = corner;
    [(VUIProgressBarView *)self->_progressBarView setShouldProgressBarUseRoundCorner:?];
    [(VUIProgressView *)self setNeedsLayout];

    [(VUIProgressView *)self setNeedsDisplay];
  }
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
  selectedCopy = selected;
  v6 = [(VUIProgressView *)self layer:selected];
  [v6 setAllowsEdgeAntialiasing:selectedCopy];

  layer = [(VUIProgressBarView *)self->_progressBarView layer];
  [layer setAllowsEdgeAntialiasing:selectedCopy];
}

- (void)setStyle:(unint64_t)style
{
  if (self->_style != style)
  {
    self->_style = style;
    [(VUIProgressView *)self _updateForStyleChange];
  }
}

- (void)setUseMaterial:(BOOL)material
{
  v11[1] = *MEMORY[0x1E69E9840];
  if (self->_useMaterial != material)
  {
    self->_useMaterial = material;
    [(VUIProgressBarView *)self->_progressBarView setUseMaterial:?];
    if (!self->_useMaterial)
    {
      [(UIView *)self->_materialView removeFromSuperview];
LABEL_14:
      [(VUIProgressView *)self setNeedsLayout];
      [(VUIProgressView *)self setNeedsDisplay];
      return;
    }

    if (self->_materialView)
    {
      if (!self->_useVisualEffectForMaterial)
      {
        goto LABEL_7;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (self->_useVisualEffectForMaterial)
        {
LABEL_13:
          [(VUIProgressView *)self _layoutMaterialView];
          goto LABEL_14;
        }

LABEL_7:
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          goto LABEL_8;
        }

        goto LABEL_13;
      }
    }

LABEL_8:
    if (self->_useVisualEffectForMaterial)
    {
      v4 = objc_alloc(MEMORY[0x1E69DD298]);
      v5 = [VUIProgressBarBlurEffect effectWithStyle:4004];
      v6 = [v4 initWithEffect:v5];
    }

    else
    {
      v6 = objc_alloc_init(MEMORY[0x1E69DD250]);
      v5 = objc_alloc_init(MEMORY[0x1E6979310]);
      v7 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.25];
      [v5 setBackgroundColor:{objc_msgSend(v7, "CGColor")}];
      [v5 setMasksToBounds:1];
      [v5 setCornerRadius:self->_cornerRadius];
      v8 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979CF8]];
      v11[0] = v8;
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
      [v5 setFilters:v9];
      layer = [v6 layer];
      [layer addSublayer:v5];
    }

    [(VUIProgressView *)self bounds];
    v13 = CGRectInset(v12, -20.0, -20.0);
    [v6 setFrame:{v13.origin.x, v13.origin.y, v13.size.width, v13.size.height}];
    [v6 setAutoresizingMask:18];
    [(VUIProgressView *)self setMaterialView:v6];

    goto LABEL_14;
  }
}

- (void)setMaterialView:(id)view
{
  viewCopy = view;
  materialView = self->_materialView;
  if (materialView != viewCopy)
  {
    v7 = viewCopy;
    [(UIView *)materialView removeFromSuperview];
    objc_storeStrong(&self->_materialView, view);
    [(VUIProgressView *)self _layoutMaterialView];
    viewCopy = v7;
  }
}

- (void)_layoutMaterialView
{
  if (self->_useMaterial)
  {
    materialView = self->_materialView;
    if (materialView)
    {
      [(VUIProgressView *)self bounds];
      v6 = CGRectInset(v5, -20.0, -20.0);
      [(UIView *)materialView setFrame:v6.origin.x, v6.origin.y, v6.size.width, v6.size.height];
      [(UIView *)self->_materialView setAutoresizingMask:18];
      if (![(UIView *)self->_materialView isDescendantOfView:self])
      {
        [(VUIProgressView *)self insertSubview:self->_materialView belowSubview:self->_progressBarView];
      }
    }
  }

  [(VUIProgressView *)self setNeedsLayout];

  [(VUIProgressView *)self setNeedsDisplay];
}

- (id)_maskImageForProgressBar
{
  [(UIView *)self->_materialView bounds];
  v4 = v3;
  v6 = v5;
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen scale];
  v9 = v8;
  v17.width = v4;
  v17.height = v6;
  UIGraphicsBeginImageContextWithOptions(v17, 0, v9);

  blackColor = [MEMORY[0x1E69DC888] blackColor];
  [blackColor setFill];

  v11 = MEMORY[0x1E69DC728];
  materialView = self->_materialView;
  [(VUIProgressView *)self bounds];
  [(UIView *)materialView convertRect:self fromView:?];
  v13 = [v11 bezierPathWithRoundedRect:? cornerRadius:?];
  [v13 fill];

  v14 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v14;
}

- (void)_updateForStyleChange
{
  style = self->_style;
  shadowImageView = self->_shadowImageView;
  if (style)
  {
    if (!shadowImageView)
    {
      return;
    }

    [(UIImageView *)shadowImageView removeFromSuperview];
    v5 = self->_shadowImageView;
    self->_shadowImageView = 0;
  }

  else
  {
    if (shadowImageView)
    {
      return;
    }

    v6 = MEMORY[0x1E69DCAB8];
    vui_videosUIBundle = [MEMORY[0x1E696AAE8] vui_videosUIBundle];
    v8 = [v6 imageNamed:@"ProgressBarShadow" inBundle:vui_videosUIBundle];
    v11 = [v8 resizableImageWithCapInsets:{7.0, 11.0, 7.0, 11.0}];

    v9 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v11];
    v10 = self->_shadowImageView;
    self->_shadowImageView = v9;

    [(VUIProgressView *)self insertSubview:self->_shadowImageView atIndex:0];
    v5 = v11;
  }
}

- (UIEdgeInsets)padding
{
  top = self->_padding.top;
  left = self->_padding.left;
  bottom = self->_padding.bottom;
  right = self->_padding.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end