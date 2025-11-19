@interface _UICursorAccessoryItemView
+ (id)_makeImageView;
+ (id)_makeLabelView;
- ($1945D2EFE1244E2A91EF2AFFF7F2C6FE)content;
- (BOOL)beginTrackingWithTouch:(id)a3 withEvent:(id)a4;
- (CGSize)sizeThatFits:(CGSize)a3;
- (_UICursorAccessoryItemView)initWithFrame:(CGRect)a3;
- (double)horizontalPadding;
- (void)_recomputeColors;
- (void)cancelTrackingWithEvent:(id)a3;
- (void)endTrackingWithTouch:(id)a3 withEvent:(id)a4;
- (void)layoutSubviews;
- (void)setContent:(id *)a3;
- (void)setHighlighted:(BOOL)a3;
@end

@implementation _UICursorAccessoryItemView

+ (id)_makeLabelView
{
  v2 = [UILabel alloc];
  v3 = [(UILabel *)v2 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  +[_UICursorAccessoryView baseFontSize];
  v4 = [off_1E70ECC18 systemFontOfSize:?];
  [(UILabel *)v3 setFont:v4];

  [(UILabel *)v3 setTextAlignment:1];

  return v3;
}

+ (id)_makeImageView
{
  v2 = [[UIImageView alloc] initWithImage:0];
  [(UIImageView *)v2 setContentMode:1];
  +[_UICursorAccessoryView baseFontSize];
  v3 = [UIImageSymbolConfiguration configurationWithPointSize:6 weight:?];
  [(UIImageView *)v2 setPreferredSymbolConfiguration:v3];

  return v2;
}

- (_UICursorAccessoryItemView)initWithFrame:(CGRect)a3
{
  v13.receiver = self;
  v13.super_class = _UICursorAccessoryItemView;
  v3 = [(UIControl *)&v13 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_roundedEdges = 10;
    v5 = [(UIView *)v3 layer];
    [v5 setAllowsGroupBlending:0];

    v6 = [(UIView *)v4 layer];
    [v6 setAllowsGroupOpacity:0];

    v7 = [_UIShapeView alloc];
    v8 = [(UIView *)v7 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    backgroundView = v4->_backgroundView;
    v4->_backgroundView = v8;

    [(UIView *)v4->_backgroundView setUserInteractionEnabled:0];
    [(UIView *)v4 insertSubview:v4->_backgroundView atIndex:0];
    v10 = +[UITraitCollection systemTraitsAffectingColorAppearance];
    v11 = [(UIView *)v4 registerForTraitChanges:v10 withAction:sel__recomputeColors];

    [(_UICursorAccessoryItemView *)v4 _recomputeColors];
    [(UIView *)v4 _setDisableDictationTouchCancellation:1];
  }

  return v4;
}

- (double)horizontalPadding
{
  result = 10.0;
  if (self->_content.type == 3)
  {
    return 3.0;
  }

  return result;
}

- (void)_recomputeColors
{
  if (os_variant_has_internal_diagnostics())
  {
    if (!self)
    {
      v24 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v24, OS_LOG_TYPE_FAULT, "Attempted to begin using the effective theme of a nil view.", buf, 2u);
      }
    }
  }

  else if (!self)
  {
    v25 = *(__UILogGetCategoryCachedImpl("Assert", &_recomputeColors___s_category) + 8);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_188A29000, v25, OS_LOG_TYPE_ERROR, "Attempted to begin using the effective theme of a nil view.", buf, 2u);
    }
  }

  v3 = +[UITraitCollection _currentTraitCollectionIfExists];
  v4 = [(UIView *)self traitCollection];
  [UITraitCollection setCurrentTraitCollection:v4];

  v5 = _UISetCurrentFallbackEnvironment(self);
  v6 = [(UIView *)self traitCollection];
  v7 = [v6 userInterfaceIdiom];

  if (v7 != 6)
  {
    v8 = +[UIColor labelColor];
    v9 = +[UIColor clearColor];
    style = self->_style;
    if (style == 1)
    {
      v15 = [(UIView *)self tintColor];
      [_UICursorAccessoryView grayscaleLuminance:v15];
      v17 = v16;

      if (v17 <= 0.75)
      {
        v11 = +[UIColor whiteColor];
        v18 = MEMORY[0x1E6979CF8];
        v13 = 0.95;
      }

      else
      {
        v11 = +[UIColor blackColor];
        v18 = MEMORY[0x1E6979CE8];
        v13 = 0.7;
      }

      v12 = *v18;
      if (!self->_highlighted)
      {
        goto LABEL_17;
      }

      v19 = [UIColor colorWithWhite:1.0 alpha:0.1];
      v14 = v9;
    }

    else
    {
      if (style == 2)
      {
        v11 = +[UIColor secondaryLabelColor];
        v12 = 0;
        v13 = 1.0;
        v14 = v8;
LABEL_16:

LABEL_17:
        v8 = v11;
LABEL_18:
        v20 = [v9 CGColor];
        v21 = [(_UIShapeView *)self->_backgroundView shapeLayer];
        [v21 setFillColor:v20];

        [(UIView *)self->_imageView setTintColor:v8];
        [(UIView *)self->_imageView setAlpha:v13];
        v22 = [(UIView *)self->_imageView layer];
        [v22 setCompositingFilter:v12];

        [(UILabel *)self->_labelView setTextColor:v8];
        [(UIView *)self->_labelView setAlpha:v13];
        v23 = [(UIView *)self->_labelView layer];
        [v23 setCompositingFilter:v12];

        goto LABEL_19;
      }

      if (!self->_highlighted)
      {
        v12 = 0;
        v13 = 1.0;
        goto LABEL_18;
      }

      v19 = +[UIColor tertiarySystemBackgroundColor];
      v12 = 0;
      v14 = v9;
      v13 = 1.0;
      v11 = v8;
    }

    v9 = v19;
    goto LABEL_16;
  }

  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __46___UICursorAccessoryItemView__recomputeColors__block_invoke;
  v26[3] = &unk_1E70F3590;
  v26[4] = self;
  [UIView animateWithDuration:0 delay:v26 options:&__block_literal_global_277 animations:0.05 completion:0.0];
LABEL_19:
  _UIRestorePreviousFallbackEnvironment(v5);
  [UITraitCollection setCurrentTraitCollection:v3];
}

- (void)setHighlighted:(BOOL)a3
{
  if (self->_highlighted != a3)
  {
    v21 = v3;
    v22 = v4;
    v5 = a3;
    self->_highlighted = a3;
    [(_UICursorAccessoryItemView *)self _recomputeColors];
    v7 = [(UIView *)self traitCollection];
    v8 = [v7 userInterfaceIdiom];

    if (v8 == 6)
    {
      if (v5)
      {
        v16 = MEMORY[0x1E69E9820];
        v17 = 3221225472;
        v18 = __45___UICursorAccessoryItemView_setHighlighted___block_invoke;
        v19 = &unk_1E70F3590;
        v20 = self;
        v9 = &__block_literal_global_15_4;
        v10 = &v16;
      }

      else
      {
        v11 = MEMORY[0x1E69E9820];
        v12 = 3221225472;
        v13 = __45___UICursorAccessoryItemView_setHighlighted___block_invoke_3;
        v14 = &unk_1E70F3590;
        v15 = self;
        v9 = &__block_literal_global_17_3;
        v10 = &v11;
      }

      [UIView animateWithDuration:0 delay:v10 options:v9 animations:0.05 completion:0.0, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20];
    }
  }
}

- (void)setContent:(id *)a3
{
  p_content = &self->_content;
  objc_storeStrong(&self->_content.label, a3->var0);
  objc_storeStrong(&p_content->identifier, a3->var1);
  objc_storeStrong(&p_content->image, a3->var2);
  var3 = a3->var3;
  p_content->type = var3;
  if (var3 - 2 >= 2)
  {
    if (var3 != 1)
    {
      goto LABEL_10;
    }

    labelView = self->_labelView;
    if (!labelView)
    {
      v13 = [objc_opt_class() _makeLabelView];
      v14 = self->_labelView;
      self->_labelView = v13;

      [(UILabel *)self->_labelView setUserInteractionEnabled:0];
      [(UIView *)self addSubview:self->_labelView];
      labelView = self->_labelView;
    }

    [(UILabel *)labelView setText:a3->var0];
    v15 = [a3->var1 stringByAppendingString:@"Label"];
    [self->_labelView setAccessibilityLabel:v15];

    [self->_labelView setAccessibilityIdentifier:a3->var1];
    p_imageView = &self->_imageView;
    [(UIView *)self->_imageView removeFromSuperview];
  }

  else
  {
    imageView = self->_imageView;
    if (!imageView)
    {
      v8 = [objc_opt_class() _makeImageView];
      v9 = self->_imageView;
      self->_imageView = v8;

      [(UIView *)self->_imageView setUserInteractionEnabled:0];
      [(UIView *)self addSubview:self->_imageView];
      imageView = self->_imageView;
    }

    [(UIImageView *)imageView setImage:a3->var2];
    v10 = [a3->var1 stringByAppendingString:@"-Label"];
    [self->_imageView setAccessibilityLabel:v10];

    [self->_imageView setAccessibilityIdentifier:a3->var1];
    p_imageView = &self->_labelView;
    [(UIView *)self->_labelView removeFromSuperview];
  }

  v16 = *p_imageView;
  *p_imageView = 0;

LABEL_10:
  [(_UICursorAccessoryItemView *)self _recomputeColors];

  __destructor_8_sb0_AB8s24n1_S_sb8_sb16_AE(a3);
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v16[1] = *MEMORY[0x1E69E9840];
  type = self->_content.type;
  if (type == 1)
  {
    label = self->_content.label;
    v15 = *off_1E70EC918;
    v10 = [(UILabel *)self->_labelView font:a3.width];
    v16[0] = v10;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    [(NSString *)label sizeWithAttributes:v11];
    v4 = v12;

LABEL_9:
    +[_UICursorAccessoryView glyphWidth];
    if (v13 >= v4)
    {
      v4 = v13;
    }

    +[_UICursorAccessoryView glyphHeight];
    v8 = v14;
    v7 = v4;
    goto LABEL_12;
  }

  if (type != 3)
  {
    v4 = 0.0;
    if (type == 2)
    {
      [_UICursorAccessoryView glyphWidth:a3.width];
      v4 = v5;
    }

    goto LABEL_9;
  }

  image = self->_content.image;

  [(UIImage *)image size:a3.width];
LABEL_12:
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)layoutSubviews
{
  v58.receiver = self;
  v58.super_class = _UICursorAccessoryItemView;
  [(UIView *)&v58 layoutSubviews];
  labelView = self->_labelView;
  if (labelView)
  {
    [(UIView *)labelView sizeToFit];
    [(UIView *)self->_labelView bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    [(UIView *)self bounds];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    [(UIView *)self contentScaleFactor];
    [(UILabel *)self->_labelView setFrame:UIRectCenteredIntegralRectScale(v5, v7, v9, v11, v13, v15, v17, v19, v20)];
  }

  if (self->_imageView)
  {
    if (self->_content.type == 3)
    {
      v21 = *MEMORY[0x1E695EFF8];
      v22 = *(MEMORY[0x1E695EFF8] + 8);
      [(UIImage *)self->_content.image size];
      v24 = v23;
      v26 = v25;
      imageView = self->_imageView;
      v28 = v21;
      v29 = v22;
    }

    else
    {
      +[_UICursorAccessoryView glyphWidth];
      v31 = v30;
      +[_UICursorAccessoryView glyphHeight];
      v26 = v32;
      imageView = self->_imageView;
      v28 = 0.0;
      v29 = 0.0;
      v24 = v31;
    }

    [(UIImageView *)imageView setBounds:v28, v29, v24, v26];
    v33 = [(UIView *)self traitCollection];
    v34 = [v33 userInterfaceIdiom];

    if (v34 == 6)
    {
      [(UIView *)self bounds];
      v36 = v35;
      [(UIView *)self bounds];
      [(UIImageView *)self->_imageView setBounds:v36];
    }

    [(UIView *)self bounds];
    [(UIImageView *)self->_imageView setCenter:v38 + v37 * 0.5, v40 + v39 * 0.5];
    v41 = *(MEMORY[0x1E695EFD0] + 16);
    *&v57.a = *MEMORY[0x1E695EFD0];
    *&v57.c = v41;
    *&v57.tx = *(MEMORY[0x1E695EFD0] + 32);
    if (self->_style == 2)
    {
      CGAffineTransformMakeScale(&v57, 0.78, 0.78);
    }

    v56 = v57;
    [(UIView *)self->_imageView setTransform:&v56];
  }

  if (self->_backgroundView)
  {
    v42 = [(UIView *)self traitCollection];
    v43 = [v42 userInterfaceIdiom];

    [(UIView *)self bounds];
    v45 = v44;
    if (v43 == 6)
    {
      [(UIView *)self bounds];
      [(UIView *)self->_backgroundView setBounds:v45];
      v46 = [(_UIShapeView *)self->_backgroundView shapeLayer];
      [v46 setCornerRadius:22.0];

      [(UIView *)self bounds];
      [(UIView *)self->_backgroundView setCenter:v48 + v47 * 0.5, v50 + v49 * 0.5];
    }

    else
    {
      [(UIView *)self->_backgroundView setFrame:v44];
      roundedEdges = self->_roundedEdges;
      if ((roundedEdges & 8) != 0)
      {
        v52 = ((roundedEdges << 62) >> 63) & 5 | 0xA;
      }

      else
      {
        v52 = ((roundedEdges << 62) >> 63) & 5;
      }

      [(UIView *)self bounds];
      CGRectGetHeight(v59);
      [(UIView *)self bounds];
      v53 = [UIBezierPath bezierPathWithRoundedRect:"bezierPathWithRoundedRect:byRoundingCorners:cornerRadii:" byRoundingCorners:v52 cornerRadii:?];
      v54 = [v53 CGPath];
      v55 = [(_UIShapeView *)self->_backgroundView shapeLayer];
      [v55 setPath:v54];
    }
  }
}

- (BOOL)beginTrackingWithTouch:(id)a3 withEvent:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(_UICursorAccessoryItemView *)self setHighlighted:1];
  v9.receiver = self;
  v9.super_class = _UICursorAccessoryItemView;
  LOBYTE(self) = [(UIControl *)&v9 beginTrackingWithTouch:v7 withEvent:v6];

  return self;
}

- (void)endTrackingWithTouch:(id)a3 withEvent:(id)a4
{
  v5.receiver = self;
  v5.super_class = _UICursorAccessoryItemView;
  [(UIControl *)&v5 endTrackingWithTouch:a3 withEvent:a4];
  [(_UICursorAccessoryItemView *)self setHighlighted:0];
}

- (void)cancelTrackingWithEvent:(id)a3
{
  v4.receiver = self;
  v4.super_class = _UICursorAccessoryItemView;
  [(UIControl *)&v4 cancelTrackingWithEvent:a3];
  [(_UICursorAccessoryItemView *)self setHighlighted:0];
}

- ($1945D2EFE1244E2A91EF2AFFF7F2C6FE)content
{
  p_content = &self->_content;
  retstr->var0 = self->_content.label;
  retstr->var1 = p_content->identifier;
  result = p_content->image;
  type = p_content->type;
  retstr->var2 = result;
  retstr->var3 = type;
  return result;
}

@end