@interface UIAccessibilityHUDView
+ (CGSize)preferredHUDSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (UIAccessibilityHUDView)initWithHUDItem:(id)a3;
- (UIEdgeInsets)imageInsetsForLayout;
- (id)_contentEffectsForItem:(id)a3;
- (id)layoutManager;
- (void)_show:(BOOL)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)_updateLabelForItem;
- (void)layoutSubviews;
- (void)setItem:(id)a3;
@end

@implementation UIAccessibilityHUDView

- (UIAccessibilityHUDView)initWithHUDItem:(id)a3
{
  v5 = a3;
  v37.receiver = self;
  v37.super_class = UIAccessibilityHUDView;
  v6 = [(UIView *)&v37 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v7 = v6;
  if (v6)
  {
    [(UIView *)v6 setUserInteractionEnabled:0];
    objc_storeStrong(&v7->_item, a3);
    -[UIView setOverrideUserInterfaceStyle:](v7, "setOverrideUserInterfaceStyle:", [v5 customUserInterfaceStyle]);
    v8 = objc_opt_new();
    transformContainer = v7->_transformContainer;
    v7->_transformContainer = v8;

    [(UIView *)v7 addSubview:v7->_transformContainer];
    v10 = [UIBlurEffect effectWithStyle:1200];
    blurEffect = v7->_blurEffect;
    v7->_blurEffect = v10;

    v12 = [[UIVisualEffectView alloc] initWithEffect:v7->_blurEffect];
    effectView = v7->_effectView;
    v7->_effectView = v12;

    [(UIView *)v7->_effectView setClipsToBounds:1];
    v14 = [(UIView *)v7->_effectView layer];
    [v14 setCornerRadius:17.0];

    v15 = *MEMORY[0x1E69796E8];
    v16 = [(UIView *)v7->_effectView layer];
    [v16 setCornerCurve:v15];

    [(UIView *)v7->_transformContainer addSubview:v7->_effectView];
    v17 = objc_opt_new();
    imageView = v7->_imageView;
    v7->_imageView = v17;

    v19 = [UIVisualEffectView alloc];
    v20 = [(UIAccessibilityHUDView *)v7 _contentEffectsForItem:v5];
    v21 = [(UIVisualEffectView *)v19 initWithEffect:v20];
    itemEffectView = v7->_itemEffectView;
    v7->_itemEffectView = v21;

    v23 = [(UIVisualEffectView *)v7->_effectView contentView];
    [v23 addSubview:v7->_itemEffectView];

    [(UIImageView *)v7->_imageView setContentMode:1];
    v24 = [v5 image];
    [(UIImageView *)v7->_imageView setImage:v24];

    v25 = [(UIImageView *)v7->_imageView image];

    if (v25)
    {
      v26 = [(UIVisualEffectView *)v7->_itemEffectView contentView];
      [v26 addSubview:v7->_imageView];
    }

    v27 = [v5 customView];

    if (v27)
    {
      v28 = [v5 customView];
      customView = v7->_customView;
      v7->_customView = v28;

      v30 = [(UIVisualEffectView *)v7->_itemEffectView contentView];
      [v30 addSubview:v7->_customView];
    }

    v31 = objc_opt_new();
    titleLabel = v7->_titleLabel;
    v7->_titleLabel = v31;

    [(UILabel *)v7->_titleLabel setNumberOfLines:0];
    [(UILabel *)v7->_titleLabel setAdjustsFontSizeToFitWidth:1];
    [(UILabel *)v7->_titleLabel setMinimumScaleFactor:0.001];
    [(UILabel *)v7->_titleLabel setBaselineAdjustment:0];
    [(UILabel *)v7->_titleLabel setTextAlignment:1];
    v33 = [(UIVisualEffectView *)v7->_itemEffectView contentView];
    [v33 addSubview:v7->_titleLabel];

    [(UIAccessibilityHUDView *)v7 _updateLabelForItem];
    [(UIView *)v7 setAlpha:0.0];
    v34 = v7->_transformContainer;
    v36[0] = UIAccessibilityHUDSmallTransform;
    v36[1] = unk_18A677740;
    v36[2] = xmmword_18A677750;
    [(UIView *)v34 setTransform:v36];
  }

  return v7;
}

- (void)setItem:(id)a3
{
  v14 = a3;
  v4 = [(UIAccessibilityHUDItem *)self->_item isEqual:v14];
  v5 = v14;
  if (!v4)
  {
    v6 = [v14 flattenImage];
    if (v6 == [(UIAccessibilityHUDItem *)self->_item flattenImage])
    {
      v8 = [v14 disabledAppearance];
      v7 = v8 ^ [(UIAccessibilityHUDItem *)self->_item disabledAppearance];
    }

    else
    {
      v7 = 1;
    }

    v9 = [v14 copy];
    item = self->_item;
    self->_item = v9;

    v11 = [v14 image];
    [(UIImageView *)self->_imageView setImage:v11];

    -[UIView setOverrideUserInterfaceStyle:](self, "setOverrideUserInterfaceStyle:", [v14 customUserInterfaceStyle]);
    [(UIAccessibilityHUDView *)self _updateLabelForItem];
    if (v7)
    {
      itemEffectView = self->_itemEffectView;
      v13 = [(UIAccessibilityHUDView *)self _contentEffectsForItem:v14];
      [(UIVisualEffectView *)itemEffectView setEffect:v13];
    }

    [(UIView *)self setNeedsLayout];
    v5 = v14;
  }
}

- (id)_contentEffectsForItem:(id)a3
{
  v4 = a3;
  if ([v4 flattenImage])
  {
    blurEffect = self->_blurEffect;
    if ([v4 disabledAppearance])
    {
      v6 = 5;
    }

    else
    {
      v6 = 4;
    }

    v7 = [UIVibrancyEffect effectForBlurEffect:blurEffect style:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_updateLabelForItem
{
  v3 = [(UIAccessibilityHUDItem *)self->_item title];
  [(UILabel *)self->_titleLabel setText:v3];

  v5 = [(UIAccessibilityHUDView *)self layoutManager];
  v4 = [v5 labelFontForHUD:self];
  [(UILabel *)self->_titleLabel setFont:v4];
}

- (id)layoutManager
{
  if (_MergedGlobals_5 != -1)
  {
    dispatch_once(&_MergedGlobals_5, &__block_literal_global_5);
  }

  v3 = [(UIAccessibilityHUDItem *)self->_item customView];

  if (v3)
  {
    v4 = &qword_1ED49A4D0;
    goto LABEL_13;
  }

  v5 = [(UIAccessibilityHUDItem *)self->_item image];
  if (v5 && (v6 = v5, -[UIAccessibilityHUDItem title](self->_item, "title"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 length], v7, v6, !v8))
  {
    v4 = &qword_1ED49A4C8;
  }

  else
  {
    v9 = [(UIAccessibilityHUDItem *)self->_item title];
    if ([v9 length])
    {
      v10 = [(UIAccessibilityHUDItem *)self->_item image];

      if (!v10)
      {
        v4 = &qword_1ED49A4C0;
        goto LABEL_13;
      }
    }

    else
    {
    }

    v4 = &qword_1ED49A4B8;
  }

LABEL_13:
  v11 = *v4;

  return v11;
}

void __39__UIAccessibilityHUDView_layoutManager__block_invoke()
{
  v0 = objc_opt_new();
  v1 = qword_1ED49A4B8;
  qword_1ED49A4B8 = v0;

  v2 = objc_opt_new();
  v3 = qword_1ED49A4C0;
  qword_1ED49A4C0 = v2;

  v4 = objc_opt_new();
  v5 = qword_1ED49A4C8;
  qword_1ED49A4C8 = v4;

  v6 = objc_opt_new();
  v7 = qword_1ED49A4D0;
  qword_1ED49A4D0 = v6;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(UIAccessibilityHUDView *)self layoutManager];
  [v6 unscaledSizeForHUD:self containingSize:{width, height}];
  v8 = v7;
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (void)layoutSubviews
{
  v9.receiver = self;
  v9.super_class = UIAccessibilityHUDView;
  [(UIView *)&v9 layoutSubviews];
  [(UIView *)self bounds];
  [(UIView *)self->_transformContainer setBounds:?];
  [(UIView *)self bounds];
  [(UIView *)self->_transformContainer setCenter:v4 + v3 * 0.5, v6 + v5 * 0.5];
  [(UIView *)self->_transformContainer bounds];
  [(UIView *)self->_effectView setFrame:?];
  v7 = [(UIVisualEffectView *)self->_effectView contentView];
  [v7 bounds];
  [(UIView *)self->_itemEffectView setFrame:?];

  v8 = [(UIAccessibilityHUDView *)self layoutManager];
  [v8 layoutSubviewsOfHUD:self];
}

- (void)_show:(BOOL)a3 animated:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v8 = a5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __52__UIAccessibilityHUDView__show_animated_completion___block_invoke;
  aBlock[3] = &unk_1E70F35E0;
  aBlock[4] = self;
  v14 = a3;
  v9 = _Block_copy(aBlock);
  v10 = v9;
  if (v5)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __52__UIAccessibilityHUDView__show_animated_completion___block_invoke_2;
    v11[3] = &unk_1E70F3608;
    v12 = v8;
    [UIView animateWithDuration:v10 animations:v11 completion:0.1];
  }

  else
  {
    (*(v9 + 2))(v9);
    if (v8)
    {
      v8[2](v8);
    }
  }
}

uint64_t __52__UIAccessibilityHUDView__show_animated_completion___block_invoke(uint64_t a1)
{
  v2 = 0.0;
  if (*(a1 + 40))
  {
    v2 = 1.0;
  }

  [*(a1 + 32) setAlpha:v2];
  if (*(a1 + 40) == 1)
  {
    v3 = MEMORY[0x1E695EFD0];
  }

  else
  {
    v3 = &UIAccessibilityHUDSmallTransform;
  }

  v4 = v3[1];
  v8 = *v3;
  v9 = v4;
  v10 = v3[2];
  v5 = *(*(a1 + 32) + 416);
  v7[0] = v8;
  v7[1] = v4;
  v7[2] = v10;
  return [v5 setTransform:v7];
}

uint64_t __52__UIAccessibilityHUDView__show_animated_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

+ (CGSize)preferredHUDSize
{
  v2 = 220.0;
  v3 = 220.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (UIEdgeInsets)imageInsetsForLayout
{
  [(UIAccessibilityHUDItem *)self->_item imageInsets];
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

@end