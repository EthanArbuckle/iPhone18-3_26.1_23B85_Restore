@interface VUIButton
- (BOOL)_hasBackgroundImage;
- (BOOL)_hasImage;
- (BOOL)_hasProgressBar;
- (BOOL)_hasSubtitle;
- (BOOL)_hasTitle;
- (BOOL)onlyHasImage;
- (CGPoint)_centerWithViewSize:(CGSize)a3 withParentSize:(CGSize)a4;
- (CGRect)_barButtonPointerShapeRect;
- (CGRect)_symbolButtonPointerShapeRect;
- (CGSize)_availableSizeForLabelInButtonWithSize:(CGSize)a3;
- (CGSize)_calculateContentSizeForCustomButtonThatFit:(CGSize)a3;
- (CGSize)_calculateContentSizeForImageThatFit:(CGSize)a3;
- (CGSize)_calculateContentSizeForPrimaryButtonThatFit:(CGSize)a3;
- (CGSize)_computeSizeThatFits:(CGSize)a3;
- (CGSize)_imageSizeThatFits:(CGSize)a3;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (CGSize)vui_layoutSubviews:(CGSize)a3 computationOnly:(BOOL)a4;
- (UIEdgeInsets)imageMargin;
- (UIEdgeInsets)padding;
- (VUIButton)initWithType:(unint64_t)a3 interfaceStyle:(unint64_t)a4;
- (double)bottomMarginWithBaselineMargin:(double)a3;
- (double)topMarginToLabel:(id)a3 withBaselineMargin:(double)a4;
- (double)topMarginWithBaselineMargin:(double)a3;
- (double)vuiBaselineHeight;
- (double)vui_baselineOffsetFromBottom;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)largeContentImage;
- (id)largeContentTitle;
- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4;
- (unint64_t)numberOfLinesRequiredForLabelWithButtonWidth:(double)a3;
- (void)_addLongPressGesture;
- (void)_buttonTapped:(id)a3;
- (void)_configure;
- (void)_crossFadeButtonImageTo:(id)a3;
- (void)_removeLongPressGestureIfNeeded;
- (void)_setPointerInteractionEnabled:(BOOL)a3;
- (void)_setupBarButtonItem;
- (void)_setupBlurEffectBackdropView;
- (void)_updateBackdropViewCornerRadius;
- (void)_updateBorder;
- (void)_updateLayout;
- (void)buttonLongPressed:(id)a3;
- (void)layoutSubviews;
- (void)revertTintColor;
- (void)saturateTintColorAndBackgroundColor;
- (void)setBackdropGroupName:(id)a3;
- (void)setBackgroundImage:(id)a3 forHighlightedState:(BOOL)a4;
- (void)setBackgroundImageView:(id)a3;
- (void)setBlurEnabled:(BOOL)a3;
- (void)setBorderColor:(id)a3;
- (void)setButtonShape:(unint64_t)a3;
- (void)setButtonType:(unint64_t)a3;
- (void)setCornerRadius:(double)a3;
- (void)setEnabled:(BOOL)a3;
- (void)setHighlightColor:(id)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setImageView:(id)a3;
- (void)setImageView:(id)a3 forHighlightedState:(BOOL)a4;
- (void)setProgressBarView:(id)a3;
- (void)setScrolledNonUberPercentage:(double)a3;
- (void)setSecondaryBackgroundColor:(id)a3;
- (void)setSelectActionHandler:(id)a3;
- (void)setSubtitleContentView:(id)a3;
- (void)setSupportsLongPress:(BOOL)a3;
- (void)setTextContentView:(id)a3;
- (void)setTintColor:(id)a3;
- (void)setUberButtonType:(unint64_t)a3;
- (void)setVuiTag:(int64_t)a3;
- (void)tintColorDidChange;
- (void)vui_prepareForReuse;
@end

@implementation VUIButton

- (VUIButton)initWithType:(unint64_t)a3 interfaceStyle:(unint64_t)a4
{
  v21[1] = *MEMORY[0x1E69E9840];
  v18.receiver = self;
  v18.super_class = VUIButton;
  v5 = [(VUIButton *)&v18 initWithFrame:a3, a4, *MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v6 = v5;
  if (v5)
  {
    v5->_buttonType = a3;
    v5->_supportsLongPress = 0;
    [(VUIButton *)v5 _configure];
    v6->_allowsUberTinting = 1;
    [(VUIButton *)v6 addTarget:v6 action:sel__buttonTapped_ forControlEvents:64];
    [(VUIButton *)v6 setShowsLargeContentViewer:1];
    objc_initWeak(&location, v6);
    v21[0] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __41__VUIButton_initWithType_interfaceStyle___block_invoke;
    v15[3] = &unk_1E872E760;
    objc_copyWeak(&v16, &location);
    [(VUIButton *)v6 vui_registerForTraitChanges:v7 withHandler:v15];

    v20 = objc_opt_class();
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v20 count:1];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __41__VUIButton_initWithType_interfaceStyle___block_invoke_2;
    v13[3] = &unk_1E872E760;
    objc_copyWeak(&v14, &location);
    [(VUIButton *)v6 vui_registerForTraitChanges:v8 withHandler:v13];

    v19 = objc_opt_class();
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v19 count:1];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __41__VUIButton_initWithType_interfaceStyle___block_invoke_3;
    v11[3] = &unk_1E872E760;
    objc_copyWeak(&v12, &location);
    [(VUIButton *)v6 vui_registerForTraitChanges:v9 withHandler:v11];

    objc_destroyWeak(&v12);
    objc_destroyWeak(&v14);
    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  return v6;
}

void __41__VUIButton_initWithType_interfaceStyle___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained buttonBackgroundColor];
  [WeakRetained setVuiBackgroundColor:v1];

  if ([WeakRetained buttonType] == 3)
  {
    [WeakRetained _setupBlurEffectBackdropView];
  }

  [WeakRetained _updateBorder];
}

void __41__VUIButton_initWithType_interfaceStyle___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained vui_setNeedsLayout];
  [WeakRetained invalidateIntrinsicContentSize];
}

void __41__VUIButton_initWithType_interfaceStyle___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained vui_setNeedsLayout];
}

- (void)tintColorDidChange
{
  v3.receiver = self;
  v3.super_class = VUIButton;
  [(VUIButton *)&v3 tintColorDidChange];
  if ([(VUIButton *)self tintAdjustmentMode]== 2)
  {
    [(VUIButton *)self saturateTintColorAndBackgroundColor];
    self->_isTintColorAndBackgroundColorSaturated = 1;
  }

  else if (self->_isTintColorAndBackgroundColorSaturated)
  {
    [(VUIButton *)self revertTintColor];
    self->_isTintColorAndBackgroundColorSaturated = 0;
  }
}

- (void)setCornerRadius:(double)a3
{
  if (self->_cornerRadius != a3)
  {
    self->_cornerRadius = a3;
    if (self->_backdropView)
    {
      [(VUIButton *)self _updateBackdropViewCornerRadius];
    }

    else
    {
      v5 = [(VUIButton *)self vuiLayer];
      [v5 setCornerRadius:a3];
    }

    v6 = [(VUIButton *)self secondaryBackgroundView];

    if (v6)
    {
      v8 = [(VUIButton *)self secondaryBackgroundView];
      v7 = [v8 vuiLayer];
      [v7 setCornerRadius:a3];
    }
  }
}

- (void)setSecondaryBackgroundColor:(id)a3
{
  v10 = a3;
  objc_storeStrong(&self->_secondaryBackgroundColor, a3);
  v5 = [(VUIButton *)self secondaryBackgroundView];

  if (!v5)
  {
    v6 = objc_alloc(MEMORY[0x1E69DD250]);
    v7 = [v6 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    [(VUIButton *)self setSecondaryBackgroundView:v7];
    v8 = [v7 vuiLayer];
    [(VUIButton *)self cornerRadius];
    [v8 setCornerRadius:?];

    [(VUIButton *)self insertSubview:v7 atIndex:0];
  }

  v9 = [(VUIButton *)self secondaryBackgroundView];
  [v9 setBackgroundColor:v10];

  [(VUIButton *)self setNeedsLayout];
}

- (void)setBlurEnabled:(BOOL)a3
{
  if (self->_blurEnabled != a3)
  {
    self->_blurEnabled = a3;
    [(VUIButton *)self _setupBlurEffectBackdropView];
  }
}

- (void)setBorderColor:(id)a3
{
  objc_storeStrong(&self->_borderColor, a3);

  [(VUIButton *)self _updateBorder];
}

- (void)setButtonType:(unint64_t)a3
{
  if (self->_buttonType != a3)
  {
    if (!a3)
    {
      [(UIVisualEffectView *)self->_backdropView removeFromSuperview];
      backdropView = self->_backdropView;
      self->_backdropView = 0;
    }

    self->_buttonType = a3;

    [(VUIButton *)self _configure];
  }
}

- (void)setUberButtonType:(unint64_t)a3
{
  if (self->_uberButtonType != a3)
  {
    self->_uberButtonType = a3;
    if (self->_buttonType == 3)
    {
      [(VUIButton *)self _setupBlurEffectBackdropView];
    }
  }
}

- (void)setSubtitleContentView:(id)a3
{
  v5 = a3;
  [(VUIButton *)self vui_addSubview:v5 oldView:self->_subtitleContentView];
  if (self->_subtitleContentView != v5)
  {
    objc_storeStrong(&self->_subtitleContentView, a3);
  }

  [(VUIButton *)self vui_setNeedsLayout];
}

- (void)setTextContentView:(id)a3
{
  v6 = a3;
  [(VUIButton *)self vui_addSubview:v6 oldView:self->_textContentView];
  if (self->_textContentView != v6)
  {
    objc_storeStrong(&self->_textContentView, a3);
  }

  v5 = [(VUIButton *)self buttonType];
  if (v5 == 7 || v5 == 2)
  {
    [(VUILabel *)self->_textContentView _setWantsUnderlineForAccessibilityButtonShapesEnabled:1];
  }

  [(VUIButton *)self vui_setNeedsLayout];
}

- (void)setVuiTag:(int64_t)a3
{
  if (self->_vuiTag != a3)
  {
    self->_vuiTag = a3;
    [(VUIButton *)self setTag:?];
  }
}

- (void)setImageView:(id)a3
{
  v5 = a3;
  [(VUIButton *)self vui_addSubview:v5 oldView:self->_imageView];
  if (self->_imageView != v5)
  {
    objc_storeStrong(&self->_imageView, a3);
    v6 = [(VUIImageView *)self->_imageView image];
    originalImage = self->_originalImage;
    self->_originalImage = v6;
  }

  [(VUIButton *)self vui_setNeedsLayout];
  imagesViewDefaultState = self->_imagesViewDefaultState;
  self->_imagesViewDefaultState = v5;
}

- (void)setProgressBarView:(id)a3
{
  v5 = a3;
  [(VUIButton *)self vui_addSubview:v5 oldView:self->_progressBarView];
  if (self->_progressBarView != v5)
  {
    objc_storeStrong(&self->_progressBarView, a3);
  }

  [(VUIButton *)self vui_setNeedsLayout];
}

- (void)setBackgroundImageView:(id)a3
{
  v5 = a3;
  backgroundImageView = self->_backgroundImageView;
  if (backgroundImageView != v5)
  {
    v9 = v5;
    [(UIView *)backgroundImageView removeFromSuperview];
    v7 = [(VUIButton *)self subviews];
    v8 = [v7 firstObject];

    [(VUIButton *)self vui_insertSubview:v9 belowSubview:v8 oldView:self->_backgroundImageView];
    objc_storeStrong(&self->_backgroundImageView, a3);
    objc_storeStrong(&self->_backgroundImagesViewDefaultState, a3);

    v5 = v9;
  }
}

- (void)setButtonShape:(unint64_t)a3
{
  if (self->_buttonShape != a3)
  {
    self->_buttonShape = a3;
  }
}

- (void)setImageView:(id)a3 forHighlightedState:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v11 = v6;
  if (v4)
  {
    [v6 bounds];
    v8 = v7;
    v10 = v9;
    [(VUIImageView *)self->_imagesViewDefaultState bounds];
    [v11 setBounds:{v8, v10}];
    [(VUIButton *)self setImagesViewHighlightedState:v11];
  }

  else
  {
    [(VUIButton *)self setImageView:v6];
  }
}

- (void)setBackgroundImage:(id)a3 forHighlightedState:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v11 = v6;
  if (v4)
  {
    [v6 bounds];
    v8 = v7;
    v10 = v9;
    [(VUIImageView *)self->_backgroundImagesViewDefaultState bounds];
    [v11 setBounds:{v8, v10}];
    [(VUIButton *)self setBackgroundImagesViewHighlightedState:v11];
  }

  else
  {
    [(VUIButton *)self setBackgroundImageView:v6];
  }
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v18.receiver = self;
  v18.super_class = VUIButton;
  [(VUIButton *)&v18 setHighlighted:?];
  if (([(VUIButton *)self isHidden]& 1) == 0)
  {
    [(VUIButton *)self alpha];
    if (v5 != 0.0)
    {
      v6 = [(VUIButton *)self buttonType]== 7;
      if (v3)
      {
        if (v6)
        {
          if ([(VUIButton *)self buttonType]== 7)
          {
            [(VUIButton *)self setAlpha:0.5];
          }
        }

        else
        {
          v7 = [(VUIButton *)self highlightColor];
          [(VUIButton *)self setVuiBackgroundColor:v7];
        }

        if (self->_imagesViewHighlightedState)
        {
          [(VUIButton *)self setImageView:?];
        }

        v8 = 768;
      }

      else
      {
        if (v6)
        {
          if ([(VUIButton *)self buttonType]== 7)
          {
            [(VUIButton *)self setAlpha:1.0];
          }
        }

        else
        {
          v9 = [(VUIButton *)self buttonBackgroundColor];
          [(VUIButton *)self setVuiBackgroundColor:v9];
        }

        if (self->_imagesViewDefaultState)
        {
          [(VUIButton *)self setImageView:?];
        }

        v8 = 760;
      }

      if (*(&self->super.super.super.super.isa + v8))
      {
        [(VUIButton *)self setBackgroundImageView:?];
      }

      v10 = [(VUIButton *)self textContentView];
      [v10 setHighlighted:v3];

      if (![(VUIButton *)self buttonType]|| [(VUIButton *)self buttonType]== 3)
      {
        v11 = [(VUIButton *)self imageView];
        [v11 vui_setSelected:v3 animated:0 withAnimationCoordinator:0];
      }

      if (self->_backdropView)
      {
        v12 = [(VUIButton *)self buttonBackgroundColor];
        if (!v12 || (v13 = v12, -[VUIButton buttonBackgroundColor](self, "buttonBackgroundColor"), v14 = objc_claimAutoreleasedReturnValue(), [MEMORY[0x1E69DC888] clearColor], v15 = objc_claimAutoreleasedReturnValue(), v15, v14, v13, v14 == v15))
        {
          v16 = [(VUIButton *)self layer];
          v17 = 0.0;
          if (v3)
          {
            [(VUIButton *)self cornerRadius];
          }

          [v16 setCornerRadius:v17];
        }
      }
    }
  }
}

- (void)setEnabled:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = VUIButton;
  [(VUIButton *)&v7 setEnabled:?];
  v5 = [(VUIButton *)self textContentView];
  [v5 setEnabled:v3];

  v6 = [(VUIButton *)self subtitleContentView];
  [v6 setEnabled:v3];
}

- (CGSize)intrinsicContentSize
{
  [(VUIButton *)self sizeThatFits:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(VUIButton *)self vui_layoutSubviews:1 computationOnly:a3.width, a3.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = VUIButton;
  [(VUIButton *)&v5 layoutSubviews];
  [(VUIButton *)self bounds];
  [(VUIButton *)self vui_layoutSubviews:0 computationOnly:v3, v4];
}

- (void)setSelectActionHandler:(id)a3
{
  if (self->_selectActionHandler != a3)
  {
    v4 = _Block_copy(a3);
    selectActionHandler = self->_selectActionHandler;
    self->_selectActionHandler = v4;
  }
}

- (void)setBackdropGroupName:(id)a3
{
  v5 = a3;
  if (self->_backdropGroupName != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_backdropGroupName, a3);
    [(UIVisualEffectView *)self->_backdropView _setGroupName:v6];
    v5 = v6;
  }
}

- (void)setSupportsLongPress:(BOOL)a3
{
  if (self->_supportsLongPress != a3)
  {
    v3 = a3;
    self->_supportsLongPress = a3;
    [(VUIButton *)self _removeLongPressGestureIfNeeded];
    if (v3)
    {

      [(VUIButton *)self _addLongPressGesture];
    }
  }
}

- (void)setHighlightColor:(id)a3
{
  v5 = a3;
  if (self->_highlightColor != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_highlightColor, a3);
    v5 = v6;
  }
}

- (CGSize)vui_layoutSubviews:(CGSize)a3 computationOnly:(BOOL)a4
{
  height = a3.height;
  width = a3.width;
  if (!a4)
  {
    if (self->_backdropView)
    {
      if (MEMORY[0x1E6913230]())
      {
        [(VUIButton *)self bounds];
        v10 = v9;
        v12 = v11;
        [(VUIButton *)self bounds];
        v14 = v13;
        v16 = v15;
        v18 = v17;
        v20 = v19;
        if ([(VUIButton *)self buttonShape]== 1)
        {
          if (v10 >= v12)
          {
            v18 = v12;
          }

          else
          {
            v18 = v10;
          }

          v14 = (v10 - v18) * 0.5;
          v16 = (v12 - v18) * 0.5;
          v20 = v18;
        }

        [(UIVisualEffectView *)self->_backdropView setFrame:v14, v16, v18, v20];
        if ([(VUIButton *)self buttonType]!= 7 && [(VUIButton *)self buttonShape]!= 2 && [(VUIButton *)self buttonShape]!= 1)
        {
          goto LABEL_19;
        }

        v30.origin.x = v14;
        v30.origin.y = v16;
        v30.size.width = v18;
        v30.size.height = v20;
        v21 = CGRectGetHeight(v30) * 0.5;
        [(VUIButton *)self setCornerRadius:v21];
        v22 = [(VUIButton *)self layer];
        [v22 setCornerRadius:v21];

        backdropView = self->_backdropView;
      }

      else
      {
        v24 = self->_backdropView;
        [(VUIButton *)self bounds];
        [(UIVisualEffectView *)v24 setFrame:?];
        if ([(VUIButton *)self buttonType]!= 7 && [(VUIButton *)self buttonShape]!= 2 && [(VUIButton *)self buttonShape]!= 1)
        {
          goto LABEL_19;
        }

        [(VUIButton *)self bounds];
        v21 = CGRectGetHeight(v31) * 0.5;
        [(VUIButton *)self setCornerRadius:v21];
        backdropView = self;
      }

      v25 = [backdropView layer];
      [v25 setCornerRadius:v21];
    }

LABEL_19:
    [(VUIButton *)self _updateLayout];
    v26 = [(VUIButton *)self buttonBackgroundColor];
    [(VUIButton *)self setVuiBackgroundColor:v26];

    goto LABEL_20;
  }

  [(VUIButton *)self _computeSizeThatFits:a3.width, a3.height];
  width = v7;
  height = v8;
LABEL_20:
  v27 = width;
  v28 = height;
  result.height = v28;
  result.width = v27;
  return result;
}

- (double)vuiBaselineHeight
{
  v3 = [(VUIButton *)self textContentView];
  objc_opt_class();
  v4 = 0.0;
  if (objc_opt_isKindOfClass())
  {
    v5 = *MEMORY[0x1E695F060];
    v6 = *(MEMORY[0x1E695F060] + 8);
    [(VUIButton *)self _computeSizeThatFits:*MEMORY[0x1E695F060], v6];
    v8 = v7;
    [v3 vui_sizeThatFits:{v5, v6}];
    v10 = (v8 - v9) * 0.5;
    [v3 vuiBaselineHeight];
    v4 = v11 + v10;
  }

  return v4;
}

- (double)topMarginToLabel:(id)a3 withBaselineMargin:(double)a4
{
  v6 = a3;
  if ([(VUIButton *)self buttonType]== 2 && ([(VUIButton *)self textContentView], v7 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v7, (isKindOfClass & 1) != 0))
  {
    v9 = [(VUIButton *)self textContentView];
    [v9 topMarginToLabel:v6 withBaselineMargin:a4];
    v11 = v10;
  }

  else
  {
    v14.receiver = self;
    v14.super_class = VUIButton;
    [(UIView *)&v14 topMarginWithBaselineMargin:a4];
    v11 = v12;
  }

  return v11;
}

- (double)vui_baselineOffsetFromBottom
{
  if ([(VUIButton *)self buttonType]!= 2)
  {
    return 0.0;
  }

  v3 = [(VUIButton *)self textContentView];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    return 0.0;
  }

  v5 = [(VUIButton *)self textContentView];
  [v5 vui_baselineOffsetFromBottom];
  v7 = v6;

  return v7;
}

- (void)vui_prepareForReuse
{
  [(VUIImageView *)self->_imageView setImage:0];
  textContentView = self->_textContentView;

  [(VUILabel *)textContentView setVuiText:0];
}

- (void)setTintColor:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = VUIButton;
  [(VUIButton *)&v7 setTintColor:v4];
  if ([(VUIButton *)self tintAdjustmentMode]== 2)
  {
    [(VUIButton *)self setImageTintColor:v4];
  }

  else
  {
    v5 = [(VUIButton *)self textContentView];
    [v5 setTextColor:v4];

    v6 = [(VUILabel *)self->_textContentView textLayout];
    [v6 setColor:v4];
    [v6 setDarkColor:v4];
    [(VUIButton *)self setImageTintColor:v4];
    [(VUIImageView *)self->_imageView _setTintColor:v4];
  }
}

- (void)saturateTintColorAndBackgroundColor
{
  v4 = [MEMORY[0x1E69DC888] systemMidGrayColor];
  v3 = [(VUIButton *)self imageTintColor];

  if (v3)
  {
    [(VUIImageView *)self->_imageView _setTintColor:v4];
  }

  [(VUILabel *)self->_textContentView setTextColor:v4];
}

- (void)revertTintColor
{
  if (self->_imageView)
  {
    v3 = [(VUIButton *)self imageTintColor];
    [(VUIImageView *)self->_imageView _setTintColor:v3];
  }

  textContentView = self->_textContentView;

  [(VUILabel *)textContentView revertTintColor];
}

- (double)topMarginWithBaselineMargin:(double)a3
{
  if ([(VUIButton *)self buttonType]== 2 && ([(VUIButton *)self textContentView], v5 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v5, (isKindOfClass & 1) != 0))
  {
    v7 = [(VUIButton *)self textContentView];
    [v7 topMarginWithBaselineMargin:a3];
    v9 = v8;

    return v9;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = VUIButton;
    [(UIView *)&v11 topMarginWithBaselineMargin:a3];
  }

  return result;
}

- (double)bottomMarginWithBaselineMargin:(double)a3
{
  if ([(VUIButton *)self buttonType]== 2 && ([(VUIButton *)self textContentView], v5 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v5, (isKindOfClass & 1) != 0))
  {
    v7 = [(VUIButton *)self textContentView];
    [v7 bottomMarginWithBaselineMargin:a3];
    v9 = v8;

    return v9;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = VUIButton;
    [(UIView *)&v11 bottomMarginWithBaselineMargin:a3];
  }

  return result;
}

- (BOOL)onlyHasImage
{
  v3 = [(VUIButton *)self _hasImage];
  if (v3)
  {
    if ([(VUIButton *)self _hasTitle]|| [(VUIButton *)self _hasSubtitle])
    {
      LOBYTE(v3) = 0;
    }

    else
    {
      LOBYTE(v3) = ![(VUIButton *)self _hasProgressBar];
    }
  }

  return v3;
}

- (unint64_t)numberOfLinesRequiredForLabelWithButtonWidth:(double)a3
{
  if (![(VUIButton *)self _hasTitle])
  {
    return 0;
  }

  [(VUIButton *)self _availableSizeForLabelInButtonWithSize:a3, 1.79769313e308];
  v6 = v5;
  v7 = [(VUIButton *)self textContentView];
  v8 = [v7 numberOfLinesRequiredForTextWidth:v6];

  return v8;
}

- (void)_crossFadeButtonImageTo:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(VUIButton *)self imageView];
    v6 = [v5 image];

    if (v6 != v4)
    {
      objc_initWeak(&location, self);
      v7 = [(VUIButton *)self imageView];
      v8 = MEMORY[0x1E69DD250];
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __37__VUIButton__crossFadeButtonImageTo___block_invoke;
      v9[3] = &unk_1E872F038;
      objc_copyWeak(&v11, &location);
      v10 = v4;
      [v8 transitionWithView:v7 duration:5242880 options:v9 animations:0 completion:0.200000003];

      objc_destroyWeak(&v11);
      objc_destroyWeak(&location);
    }
  }
}

void __37__VUIButton__crossFadeButtonImageTo___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = *(a1 + 32);
  v3 = [WeakRetained imageView];
  [v3 setImage:v2];
}

- (CGSize)_imageSizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = [(VUIButton *)self imageView];
  [v5 vui_sizeThatFits:{width, height}];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (CGSize)_computeSizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = *MEMORY[0x1E695F060];
  v7 = *(MEMORY[0x1E695F060] + 8);
  [(VUIButton *)self _imageSizeThatFits:?];
  imageMaxHeight = v8;
  v10 = [(VUIButton *)self buttonType];
  v11 = [(VUIButton *)self vuiTraitCollection];
  v12 = [v11 isAXEnabled];

  v13 = [(VUIButton *)self maxContentSizeCategoryForIdealHeight];
  v14 = _os_feature_enabled_impl();
  if (v13)
  {
    v15 = v12;
  }

  else
  {
    v15 = 0;
  }

  if (v14)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  if (v10 <= 4)
  {
    if (v10 < 2)
    {
LABEL_11:
      [(VUIButton *)self _calculateContentSizeForPrimaryButtonThatFit:width, height];
      imageMaxHeight = v17;
LABEL_33:
      [(VUIButton *)self padding];
      [(VUIButton *)self padding];
      [(VUIButton *)self padding];
      v37 = v36;
      [(VUIButton *)self padding];
      v25 = imageMaxHeight + v37 + v38;
      goto LABEL_34;
    }

    if (v10 != 2)
    {
      if (v10 == 3)
      {
        goto LABEL_11;
      }

LABEL_28:
      imageMaxHeight = v7;
      goto LABEL_33;
    }

    goto LABEL_31;
  }

  if (v10 > 6)
  {
    if (v10 == 7)
    {
      if ([(VUIButton *)self _hasImage]&& [(VUIButton *)self _hasTitle])
      {
        v27 = [(VUIButton *)self textContentView];
        [v27 sizeThatFits:{width, height}];
        v29 = v28;

        [(VUIButton *)self imageMargin];
        v31 = imageMaxHeight + v30;
        [(VUIButton *)self imageMargin];
        if (v31 + v32 >= v29)
        {
          imageMaxHeight = v31 + v32;
        }

        else
        {
          imageMaxHeight = v29;
        }

        [(VUIButton *)self imageMargin];
        v33 = [(VUIButton *)self textContentView];
        v34 = [v33 textLayout];
        [v34 margin];

        goto LABEL_32;
      }

      if ([(VUIButton *)self _hasImage])
      {
        imageMaxHeight = self->_imageMaxHeight;
        goto LABEL_33;
      }

LABEL_31:
      v33 = [(VUIButton *)self textContentView];
      [v33 sizeThatFits:{width, height}];
      imageMaxHeight = v35;
LABEL_32:

      goto LABEL_33;
    }

    if (v10 != 9)
    {
      goto LABEL_28;
    }

    [(VUIButton *)self _calculateContentSizeForCustomButtonThatFit:width, height];
    v25 = v26;
  }

  else
  {
    if (v10 == 5)
    {
      goto LABEL_33;
    }

    if ([(VUIButton *)self _hasTitle])
    {
      v18 = [(VUIButton *)self textContentView];
      [v18 sizeThatFits:{width, height}];
      imageMaxHeight = v19;
    }

    [(VUIButton *)self padding];
    [(VUIButton *)self padding];
    [(VUIButton *)self minWidth];
    [(VUIButton *)self padding];
    v21 = v20;
    [(VUIButton *)self padding];
    v23 = imageMaxHeight + v21 + v22;
    [(VUIButton *)self minHeight];
    if (v23 >= v24)
    {
      v25 = v23;
    }

    else
    {
      v25 = v24;
    }
  }

LABEL_34:
  if ((v16 & 1) == 0)
  {
    [(VUIButton *)self height];
    if (v39 > 0.0)
    {
      [(VUIButton *)self height];
      v25 = v40;
    }
  }

  v41 = [(VUIButton *)self onlyHasImage];
  [(VUIButton *)self width];
  v43 = v42;
  [(VUIButton *)self height];
  if (v16)
  {
    v45 = v6;
  }

  else
  {
    v45 = v43;
  }

  if (v16)
  {
    v46 = v7;
  }

  else
  {
    v46 = v44;
  }

  if (v45 <= 0.0 || v46 <= 0.0)
  {
    [(VUIButton *)self minWidth];
    [(VUIButton *)self minHeight];
    v67 = v47;
    [(VUIButton *)self maxWidth];
    [(VUIButton *)self maxHeight];
    if (v16)
    {
      v48 = 1.79769313e308;
    }

    v49 = v46;
    v50 = v46;
    if (v46 > 0.0)
    {
      goto LABEL_56;
    }

    if (height > 0.0 && (height < v48 || v48 <= 0.0))
    {
      v46 = v67;
      v49 = height;
    }

    else
    {
      if (v48 > 0.0)
      {
        v46 = v67;
        v49 = v48;
        v50 = v48;
        goto LABEL_56;
      }

      v46 = v67;
      v49 = v48;
    }

    v50 = height;
LABEL_56:
    if (v25 >= v46)
    {
      if (v50 >= v49 && v49 > 0.0 || v50 <= 0.0)
      {
        v53 = v49;
      }

      else
      {
        v53 = v50;
      }

      if (v25 <= v53 || v53 <= 0.0)
      {
        v46 = v25;
      }

      else
      {
        v46 = v53;
      }
    }
  }

  VUICeilValue();
  v56 = v55;
  if (v16)
  {
    [(VUIButton *)self height];
    if (v57 > 0.0)
    {
      v58 = MEMORY[0x1E69DF6D0];
      [(VUIButton *)self height];
      v60 = v59;
      v61 = [(VUIButton *)self vuiTraitCollection];
      [v58 scaleContentSizeValue:v61 forTraitCollection:-[VUIButton maxContentSizeCategoryForIdealHeight](self maximumContentSizeCategory:{"maxContentSizeCategoryForIdealHeight"), v60}];
      v63 = v62;

      if (v63 > v46)
      {
        v46 = v63;
      }
    }
  }

  if (v41)
  {
    [(VUIButton *)self height];
    if (v64 > 0.0)
    {
      if (_os_feature_enabled_impl())
      {
        v56 = v46;
      }
    }
  }

  v65 = v56;
  v66 = v46;
  result.height = v66;
  result.width = v65;
  return result;
}

- (CGSize)_availableSizeForLabelInButtonWithSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(VUIButton *)self padding];
  v8 = width - v6 - v7;
  if ([(VUIButton *)self _hasImage])
  {
    if ([(VUIButton *)self _hasTitle])
    {
      [(VUIButton *)self _calculateContentSizeForImageThatFit:width, height];
      v10 = v8 - v9;
      [(VUIButton *)self imageMargin];
      v12 = v10 - v11;
      v13 = [(VUIButton *)self textContentView];
      v14 = [v13 textLayout];
      [v14 margin];
      v16 = v15;

      v8 = v12 - v16;
      if ([(VUIButton *)self _hasProgressBar])
      {
        v17 = [(VUIButton *)self progressBarView];
        [v17 vui_sizeThatFits:{width, height}];
        v19 = v18;

        v8 = v8 - v19;
      }
    }
  }

  v20 = fmax(v8, 0.0);
  v21 = height;
  result.height = v21;
  result.width = v20;
  return result;
}

- (CGSize)_calculateContentSizeForCustomButtonThatFit:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  if ([(VUIButton *)self _hasImage]&& [(VUIButton *)self _hasTitle])
  {
    [(VUIButton *)self _calculateContentSizeForImageThatFit:width, height];
    v7 = v6;
    v9 = v8;
    v10 = width - v6;
    v11 = [(VUIButton *)self textContentView];
    [v11 sizeThatFits:{v10, height}];
    v13 = v12;
    v15 = v14;

    if (v9 >= v15)
    {
      v15 = v9;
    }

    [(VUIButton *)self imageMargin];
    v17 = v7 + v16;
    v18 = [(VUIButton *)self textContentView];
    v19 = [v18 textLayout];
    [v19 margin];
    v21 = v13 + v17 + v20;

    goto LABEL_11;
  }

  if (![(VUIButton *)self _hasImage])
  {
    v18 = [(VUIButton *)self textContentView];
    [v18 sizeThatFits:{width, height}];
    v21 = v24;
    v15 = v25;
LABEL_11:

    v22 = v21;
    v23 = v15;
    goto LABEL_12;
  }

  [(VUIButton *)self _calculateContentSizeForImageThatFit:width, height];
LABEL_12:
  result.height = v23;
  result.width = v22;
  return result;
}

- (CGSize)_calculateContentSizeForPrimaryButtonThatFit:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  if ([(VUIButton *)self _hasImage]&& [(VUIButton *)self _hasTitle]&& [(VUIButton *)self _hasProgressBar])
  {
    v6 = [(VUIButton *)self textContentView];
    v7 = [v6 textLayout];
    [v7 margin];
    v9 = v8;

    [(VUIButton *)self imageMargin];
    v11 = v10;
    [(VUIButton *)self _calculateContentSizeForImageThatFit:width, height];
    v13 = v12;
    v15 = v14;
    v16 = [(VUIButton *)self progressBarView];
    [v16 vui_sizeThatFits:{width, height}];
    v18 = v17;

    [(VUIButton *)self _availableSizeForLabelInButtonWithSize:width, height];
    v20 = v19;
    v22 = v21;
    v23 = [(VUIButton *)self textContentView];
    [v23 sizeThatFits:{v20, v22}];
    v25 = v24;
    v27 = v26;

    if (v15 >= v27)
    {
      v28 = v15;
    }

    else
    {
      v28 = v27;
    }

    v29 = v18 + v9 + v11 + v13 + v25;
  }

  else if ([(VUIButton *)self _hasImage]&& [(VUIButton *)self _hasTitle])
  {
    [(VUIButton *)self _calculateContentSizeForImageThatFit:width, height];
    v31 = v30;
    v33 = v32;
    v34 = [(VUIButton *)self textContentView];
    v35 = [v34 textLayout];
    [v35 margin];
    v37 = v36;

    [(VUIButton *)self imageMargin];
    v39 = v38;
    [(VUIButton *)self _availableSizeForLabelInButtonWithSize:width, height];
    v41 = v40;
    v43 = v42;
    v44 = [(VUIButton *)self textContentView];
    [v44 sizeThatFits:{v41, v43}];
    v46 = v45;
    v48 = v47;

    if (v33 >= v48)
    {
      v28 = v33;
    }

    else
    {
      v28 = v48;
    }

    v29 = v37 + v31 + v39 + v46;
  }

  else if ([(VUIButton *)self _hasImage])
  {

    [(VUIButton *)self _calculateContentSizeForImageThatFit:width, height];
  }

  else
  {
    v49 = [(VUIButton *)self textContentView];
    [v49 sizeThatFits:{width, height}];
    v51 = v50;
    v53 = v52;

    v29 = v51;
    v28 = v53;
  }

  result.height = v28;
  result.width = v29;
  return result;
}

- (CGSize)_calculateContentSizeForImageThatFit:(CGSize)a3
{
  [(VUIButton *)self _imageSizeThatFits:a3.width, a3.height];
  v5 = v4;
  v7 = v6;
  [(VUIButton *)self imageMargin];
  v9 = v7 + v8;
  [(VUIButton *)self imageMargin];
  v11 = v9 + v10;
  v12 = v5;
  result.height = v11;
  result.width = v12;
  return result;
}

- (BOOL)_hasSubtitle
{
  v2 = [(VUIButton *)self subtitleContentView];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)_hasTitle
{
  v2 = [(VUIButton *)self textContentView];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)_hasImage
{
  v2 = [(VUIButton *)self imageView];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)_hasProgressBar
{
  v2 = [(VUIButton *)self progressBarView];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)_hasBackgroundImage
{
  v2 = [(VUIButton *)self backgroundImageView];
  v3 = v2 != 0;

  return v3;
}

- (void)_configure
{
  v3 = [(VUIButton *)self buttonBackgroundColor];
  [(VUIButton *)self setVuiBackgroundColor:v3];

  [(VUIButton *)self cornerRadius];
  [(VUIButton *)self setCornerRadius:?];
  v4 = [(VUIButton *)self shadow];

  if (v4)
  {
    v5 = [(VUIButton *)self layer];
    v6 = [(VUIButton *)self shadow];
    [v6 shadowOffset];
    [v5 setShadowOffset:?];

    v7 = [(VUIButton *)self layer];
    v8 = [(VUIButton *)self shadow];
    [v8 shadowBlurRadius];
    [v7 setShadowRadius:?];

    v9 = [(VUIButton *)self layer];
    v10 = [(VUIButton *)self shadow];
    v11 = [v10 shadowColor];
    [v9 setShadowColor:{objc_msgSend(v11, "CGColor")}];

    v12 = [(VUIButton *)self layer];
    [v12 setMasksToBounds:0];

    v13 = [(VUIButton *)self layer];
    LODWORD(v14) = 1.0;
    [v13 setShadowOpacity:v14];
  }

  if ([(VUIButton *)self buttonType]== 7 || ![(VUIButton *)self buttonType]|| [(VUIButton *)self buttonType]== 3)
  {
    v15 = 1;
LABEL_7:
    [(VUIButton *)self _setPointerInteractionEnabled:v15];
    goto LABEL_8;
  }

  if (![(VUIButton *)self usesSymbolPointerInteraction])
  {
    v15 = 0;
    goto LABEL_7;
  }

LABEL_8:
  if ([(VUIButton *)self buttonType]== 3)
  {
    [(VUIButton *)self _setupBlurEffectBackdropView];
  }

  if ([(VUIButton *)self buttonType]== 7)
  {
    [(VUIButton *)self _setupBarButtonItem];
  }

  [(VUIButton *)self _updateBorder];
}

- (void)_updateBorder
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __26__VUIButton__updateBorder__block_invoke;
  aBlock[3] = &unk_1E872D768;
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __26__VUIButton__updateBorder__block_invoke_2;
  v16[3] = &unk_1E872D768;
  v16[4] = self;
  v4 = _Block_copy(v16);
  borderColor = self->_borderColor;
  if (!borderColor)
  {
    goto LABEL_7;
  }

  v6 = [MEMORY[0x1E69DC888] clearColor];
  if (borderColor == v6)
  {

    goto LABEL_7;
  }

  borderWidth = self->_borderWidth;

  if (borderWidth == 0.0)
  {
LABEL_7:
    v3[2](v3);
LABEL_8:
    v13 = v4;
    goto LABEL_9;
  }

  backdropView = self->_backdropView;
  if (!backdropView)
  {
    v14 = [(VUIButton *)self vuiLayer];
    [v14 setBorderColor:{-[UIColor CGColor](self->_borderColor, "CGColor")}];

    v15 = [(VUIButton *)self vuiLayer];
    [v15 setBorderWidth:self->_borderWidth];

    goto LABEL_8;
  }

  v9 = [(UIVisualEffectView *)backdropView vuiLayer];
  [v9 setBorderColor:{-[UIColor CGColor](self->_borderColor, "CGColor")}];

  v10 = [(UIVisualEffectView *)self->_backdropView vuiLayer];
  [v10 setBorderWidth:self->_borderWidth];

  v11 = [(UIVisualEffectView *)self->_backdropView vuiLayer];
  [v11 setCornerRadius:self->_cornerRadius];

  v12 = [(UIVisualEffectView *)self->_backdropView vuiLayer];
  [v12 setCornerCurve:*MEMORY[0x1E69796E8]];

  v13 = v3;
LABEL_9:
  (v13[2])();
}

void __26__VUIButton__updateBorder__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) vuiLayer];
  v3 = [MEMORY[0x1E69DC888] clearColor];
  [v2 setBorderColor:{objc_msgSend(v3, "CGColor")}];

  v4 = [*(a1 + 32) vuiLayer];
  [v4 setBorderWidth:0.0];
}

void __26__VUIButton__updateBorder__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) backdropView];
  v3 = [v2 vuiLayer];
  v4 = [MEMORY[0x1E69DC888] clearColor];
  [v3 setBorderColor:{objc_msgSend(v4, "CGColor")}];

  v5 = [*(a1 + 32) backdropView];
  v6 = [v5 vuiLayer];
  [v6 setBorderWidth:0.0];

  v7 = [*(a1 + 32) backdropView];
  v8 = [v7 vuiLayer];
  [v8 setCornerRadius:0.0];

  v10 = [*(a1 + 32) backdropView];
  v9 = [v10 vuiLayer];
  [v9 setCornerCurve:*MEMORY[0x1E69796E0]];
}

- (void)_addLongPressGesture
{
  if ([(VUIButton *)self supportsLongPress])
  {
    v3 = [objc_alloc(MEMORY[0x1E69DCC48]) initWithTarget:self action:sel_buttonLongPressed_];
    [v3 setNumberOfTouchesRequired:1];
    [(VUIButton *)self addGestureRecognizer:v3];
    [(VUIButton *)self setLongPressGestureRecognizer:v3];
  }
}

- (void)_removeLongPressGestureIfNeeded
{
  v3 = [(VUIButton *)self longPressGestureRecognizer];

  if (v3)
  {
    v4 = [(VUIButton *)self longPressGestureRecognizer];
    [(VUIButton *)self removeGestureRecognizer:v4];

    [(VUIButton *)self setLongPressGestureRecognizer:0];
  }
}

- (void)buttonLongPressed:(id)a3
{
  v8 = a3;
  v4 = [v8 state] == 1;
  v5 = v8;
  if (v4)
  {
    v6 = [(VUIButton *)self longPressGestureRecognizer];
    if (v6 == v8)
    {
      v7 = [(VUIButton *)self longPressActionHandler];

      v5 = v8;
      if (!v7)
      {
        goto LABEL_7;
      }

      v6 = [(VUIButton *)self longPressActionHandler];
      (v6)[2](v6, self);
    }

    v5 = v8;
  }

LABEL_7:
}

- (void)_buttonTapped:(id)a3
{
  v4 = [(VUIButton *)self selectActionHandler];

  if (v4)
  {
    v5 = [(VUIButton *)self selectActionHandler];
    v5[2](v5, self);
  }
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  if (([(VUIButton *)self isHidden]& 1) != 0 || ([(VUIButton *)self alpha], v7 == 0.0))
  {
    v8 = 0;
  }

  else
  {
    [(VUIButton *)self bounds];
    v11 = fmax(44.0 - v10, 0.0);
    v13 = fmax(44.0 - v12, 0.0);
    [(VUIButton *)self bounds];
    v18 = CGRectInset(v17, v11 * -0.5, v13 * -0.5);
    v16.x = x;
    v16.y = y;
    if (CGRectContainsPoint(v18, v16))
    {
      v14 = self;
    }

    else
    {
      v14 = 0;
    }

    v8 = v14;
  }

  return v8;
}

- (void)_updateLayout
{
  v159 = *MEMORY[0x1E69E9840];
  [(VUIButton *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  [(VUIButton *)self padding];
  v10 = v9;
  v152 = v6 - (v9 + v11);
  v154 = v8 - (v12 + v13);
  if (![(VUIButton *)self _hasTitle]&& ![(VUIButton *)self _hasImage]&& ![(VUIButton *)self _hasProgressBar])
  {
    [(VUIButton *)self bounds];
    v152 = v14;
    v154 = v15;
  }

  v16 = MEMORY[0x1E695F058];
  v18 = *(MEMORY[0x1E695F058] + 16);
  v17 = *(MEMORY[0x1E695F058] + 24);
  v19 = [(VUIButton *)self _hasTitle];
  v153 = v17;
  rect = v17;
  v20 = v18;
  if (v19)
  {
    v21 = [(VUIButton *)self textContentView];
    [v21 sizeThatFits:{v152, v154}];
    v23 = v22;

    VUICeilValue();
    v20 = fmin(v152, v24);
    rect = fmin(v154, v23);
  }

  v149 = v20;
  v147 = v153;
  v150 = v18;
  if ([(VUIButton *)self _hasSubtitle])
  {
    v25 = [(VUIButton *)self subtitleContentView];
    [v25 sizeThatFits:{v152, v154}];
    v27 = v26;

    VUICeilValue();
    v150 = fmin(v152, v28);
    v147 = fmin(v154, v27);
  }

  v29 = v4 + v10;
  v30 = v152;
  v31 = v18;
  v144 = v29;
  if ([(VUIButton *)self _hasProgressBar])
  {
    v32 = [(VUIButton *)self progressBarView];
    [v32 vui_sizeThatFits:{v152, v154}];

    VUICeilValue();
    v31 = fmin(v152, v33);
  }

  v35 = *v16;
  v34 = v16[1];
  VUIRoundValue();
  v145 = v34;
  if ([(VUIButton *)self _hasImage])
  {
    v151 = v35;
    v36 = v150;
    if (v149 >= v150)
    {
      v36 = v149;
    }

    v37 = v36 + v31;
    [(VUIButton *)self _imageSizeThatFits:v152, v154];
    v18 = v38;
    v153 = v39;
    v40 = [(VUIButton *)self textContentView];
    v41 = [v40 textLayout];
    [v41 margin];
    v43 = v42;
    v142 = v44;

    [(VUIButton *)self imageMargin];
    v141 = v45;
    v47 = v46;
    v48 = [(VUIButton *)self _hasProgressBar];
    v49 = fmax(v43, v47);
    if (v48)
    {
      v49 = v43 + v47;
    }

    v140 = v18 + v49;
    v50 = v37 + v18 + v49;
    if (v50 > v152)
    {
      v51 = v152 - v18 - v49 - v31;
      VUICeilValue();
      v53 = v52;
      if ([(VUIButton *)self _hasTitle])
      {
        v54 = [(VUIButton *)self textContentView];
        [v54 sizeThatFits:{v53, v154}];
        v56 = v55;
        v58 = v57;

        if ([(VUIButton *)self _hasProgressBar])
        {
          v59 = v56;
        }

        else
        {
          v59 = v51;
        }

        v149 = v59;
        rect = fmin(v154, v58);
      }

      if ([(VUIButton *)self _hasSubtitle])
      {
        v60 = [(VUIButton *)self subtitleContentView];
        [v60 sizeThatFits:{v53, v154}];
        v62 = v61;
        v64 = v63;

        if ([(VUIButton *)self _hasProgressBar])
        {
          v65 = v62;
        }

        else
        {
          v65 = v51;
        }

        v150 = v65;
        v147 = fmin(v154, v64);
      }

      if ([(VUIButton *)self _hasProgressBar])
      {
        v160.origin.x = v151;
        v160.origin.y = v145;
        v160.size.width = v149;
        v160.size.height = rect;
        Width = CGRectGetWidth(v160);
        v161.origin.x = v151;
        v161.origin.y = v145;
        v161.size.width = v150;
        v161.size.height = v147;
        v67 = CGRectGetWidth(v161);
        if (Width >= v67)
        {
          v67 = Width;
        }

        v68 = v51 - v67;
        v69 = [(VUIButton *)self progressBarView];
        [v69 vui_sizeThatFits:{v68, v154}];

        v30 = v152;
        v50 = v152;
      }

      else
      {
        v30 = v152;
        v50 = v152;
      }
    }

    v148 = v144 + (v30 - v50) * 0.5;
    if ([(VUIButton *)self _hasTitle])
    {
      VUIRoundValue();
      v143 = v70;
      if ([(VUIButton *)self imageTrailsTextContent])
      {
        v148 = v148 + v142 + v141 + v149;
      }
    }

    else
    {
      VUIRoundValue();
      v72 = v71;
      if ([(VUIButton *)self verticallyCenterContent])
      {
        v73 = [(VUIImageView *)self->_imageView image];
        [v73 alignmentRectInsets];
        v75 = v74;
        v77 = v76;

        v78 = (v75 - v77) * 0.5;
        v79 = VUIDefaultLogObject();
        if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218240;
          v156 = self;
          v157 = 2048;
          v158 = v78;
          _os_log_impl(&dword_1E323F000, v79, OS_LOG_TYPE_DEFAULT, "VUIButton(%p):: adjust image to be perfectly center, offset:%f", buf, 0x16u);
        }
      }

      VUIRoundValue();
      v143 = v80;
      v148 = v72;
    }
  }

  else
  {
    v143 = v34;
    v148 = v35;
  }

  if ([(VUIButton *)self _hasProgressBar])
  {
    v162.origin.x = v148;
    v162.origin.y = v143;
    v162.size.width = v18;
    v162.size.height = v153;
    CGRectGetMaxX(v162);
    [(VUIButton *)self imageMargin];
    if ([(VUIButton *)self _hasTitle])
    {
      v81 = [(VUIButton *)self textContentView];
      v82 = [v81 textLayout];
      [v82 margin];
    }
  }

  if ([(VUIButton *)self _hasTitle])
  {
    v83 = [(VUIButton *)self textContentView];
    v84 = [v83 textLayout];
    [v84 margin];

    [(VUIButton *)self _hasSubtitle];
    [(VUIButton *)self _hasSubtitle];
  }

  if ([(VUIButton *)self _hasImage])
  {
    [(VUIButton *)self bounds];
    [(VUIButton *)self vuiIsRTL];
    v30 = v152;
    VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
    v86 = v85;
    v88 = v87;
    v90 = v89;
    v92 = v91;
    v93 = [(VUIButton *)self imageView];
    [v93 setFrame:{v86, v88, v90, v92}];
  }

  if ([(VUIButton *)self _hasProgressBar])
  {
    [(VUIButton *)self bounds];
    [(VUIButton *)self vuiIsRTL];
    VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
    v95 = v94;
    v97 = v96;
    v99 = v98;
    v101 = v100;
    v102 = [(VUIButton *)self progressBarView];
    [v102 setFrame:{v95, v97, v99, v101}];
  }

  if ([(VUIButton *)self _hasTitle])
  {
    [(VUIButton *)self bounds];
    [(VUIButton *)self vuiIsRTL];
    VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
    v104 = v103;
    v106 = v105;
    v108 = v107;
    v110 = v109;
    v111 = [(VUIButton *)self textContentView];
    [v111 setFrame:{v104, v106, v108, v110}];
  }

  if ([(VUIButton *)self _hasSubtitle])
  {
    [(VUIButton *)self bounds];
    [(VUIButton *)self vuiIsRTL];
    VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
    v113 = v112;
    v115 = v114;
    v117 = v116;
    v119 = v118;
    v120 = [(VUIButton *)self subtitleContentView];
    [v120 setFrame:{v113, v115, v117, v119}];
  }

  if ([(VUIButton *)self _hasBackgroundImage])
  {
    [(VUIButton *)self imageMaxWidth];
    v122 = v121;
    [(VUIButton *)self imageMaxHeight];
    v124 = v123;
    if (v122 == *MEMORY[0x1E695F060] && v123 == *(MEMORY[0x1E695F060] + 8))
    {
      v125 = [(VUIButton *)self backgroundImageView];
      [v125 vui_sizeThatFits:{v30, v154}];
      v122 = v126;
      v124 = v127;
    }

    [(VUIButton *)self _centerWithViewSize:v122 withParentSize:v124, v30, v154];
    [(VUIButton *)self bounds];
    [(VUIButton *)self vuiIsRTL];
    VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
    v129 = v128;
    v131 = v130;
    v133 = v132;
    v135 = v134;
    v136 = [(VUIButton *)self backgroundImageView];
    [v136 setFrame:{v129, v131, v133, v135}];
  }

  v137 = [(VUIButton *)self secondaryBackgroundView];

  if (v137)
  {
    v138 = [(VUIButton *)self secondaryBackgroundView];
    [(VUIButton *)self bounds];
    [v138 setFrame:?];
  }

  if ([(VUIButton *)self buttonType]== 6 || [(VUIButton *)self buttonShape]== 2 || [(VUIButton *)self buttonShape]== 1)
  {
    [(VUIButton *)self frame];
    [(VUIButton *)self setCornerRadius:v139 * 0.5];
  }
}

- (CGPoint)_centerWithViewSize:(CGSize)a3 withParentSize:(CGSize)a4
{
  v4 = (a4.width - a3.width) * 0.5;
  v5 = (a4.height - a3.height) * 0.5;
  result.y = v5;
  result.x = v4;
  return result;
}

- (void)_setupBlurEffectBackdropView
{
  v16[1] = *MEMORY[0x1E69E9840];
  if (!self->_backdropView)
  {
    v3 = objc_alloc_init(MEMORY[0x1E69DD298]);
    [(VUIButton *)self insertSubview:v3 atIndex:0];
    v4 = [(VUIButton *)self layer];
    [v4 setMasksToBounds:1];

    [(VUIButton *)self setBackdropView:v3];
  }

  if (self->_buttonType == 7 && MEMORY[0x1E6913230]())
  {
    [(UIVisualEffectView *)self->_backdropView setAllowsBlurring:1];
    v14 = [MEMORY[0x1E69DC730] effectWithStyle:16];
    [(UIVisualEffectView *)self->_backdropView setEffect:?];
  }

  else
  {
    uberButtonType = self->_uberButtonType;
    if (uberButtonType == 1)
    {
      [(UIVisualEffectView *)self->_backdropView setAllowsBlurring:1];
      backdropView = self->_backdropView;
      v10 = [MEMORY[0x1E69DC730] effectWithBlurRadius:50.0];
      v15[0] = v10;
      v11 = [MEMORY[0x1E69DC898] colorEffectSaturate:1.6];
      v15[1] = v11;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
      [(UIVisualEffectView *)backdropView setBackgroundEffects:v13];
    }

    else
    {
      if (uberButtonType)
      {
        return;
      }

      [(UIVisualEffectView *)self->_backdropView setAllowsBlurring:0];
      v6 = [(VUIButton *)self traitCollection];
      v7 = [v6 userInterfaceStyle];

      if (v7 == 2)
      {
        v8 = 14;
      }

      else
      {
        v8 = 19;
      }

      v9 = self->_backdropView;
      v10 = [MEMORY[0x1E69DC730] effectWithStyle:v8];
      v16[0] = v10;
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
      [(UIVisualEffectView *)v9 setBackgroundEffects:v11];
    }
  }
}

- (void)_updateBackdropViewCornerRadius
{
  [(VUIButton *)self cornerRadius];
  v4 = v3;
  [(UIVisualEffectView *)self->_backdropView _setCornerRadius:1 continuous:15 maskedCorners:?];
  v5 = [(VUIButton *)self buttonBackgroundColor];
  if (v5)
  {
    v6 = v5;
    v7 = [(VUIButton *)self buttonBackgroundColor];
    v8 = [MEMORY[0x1E69DC888] clearColor];

    if (v7 != v8)
    {
      v9 = [(VUIButton *)self vuiLayer];
      [v9 setCornerRadius:v4];
    }
  }
}

- (void)_setupBarButtonItem
{
  if ((MEMORY[0x1E6913230](self, a2) & 1) == 0)
  {
    v3 = [MEMORY[0x1E69DC730] effectWithStyle:16];
    backdropView = self->_backdropView;
    v6 = v3;
    if (backdropView)
    {
      [(UIVisualEffectView *)backdropView setEffect:v3];
    }

    else
    {
      v5 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:v3];
      [v5 setEffect:v6];
      [(VUIButton *)self insertSubview:v5 atIndex:0];
      [(VUIButton *)self setBackdropView:v5];
      [(UIVisualEffectView *)self->_backdropView setHidden:1];
    }
  }
}

- (void)_setPointerInteractionEnabled:(BOOL)a3
{
  v3 = a3;
  pointerInteraction = self->_pointerInteraction;
  if (v3)
  {
    if (!pointerInteraction)
    {
      v6 = [objc_alloc(MEMORY[0x1E69DCDB0]) initWithDelegate:self];
      v7 = self->_pointerInteraction;
      self->_pointerInteraction = v6;

      v8 = self->_pointerInteraction;

      [(VUIButton *)self addInteraction:v8];
    }
  }

  else if (pointerInteraction)
  {
    [(VUIButton *)self removeInteraction:?];
    v9 = self->_pointerInteraction;
    self->_pointerInteraction = 0;
  }
}

- (CGRect)_barButtonPointerShapeRect
{
  [(VUIButton *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(VUIButton *)self padding];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  if ([(VUIButton *)self _hasImage]&& ![(VUIButton *)self _hasTitle]|| [(VUIButton *)self _hasImage]&& ![(VUIButton *)self _hasTitle])
  {
    v8 = v8 - v14 - v18;
    v10 = v10 - v12 - v16;
    v4 = v14;
    v6 = v12;
  }

  v19 = v4;
  v20 = v6;
  v21 = v8;
  v22 = v10;

  return CGRectInset(*&v19, -6.0, -6.0);
}

- (CGRect)_symbolButtonPointerShapeRect
{
  v3 = [(VUIButton *)self imageView];
  v4 = [v3 image];
  [v4 size];
  v6 = v5;
  v8 = v7;

  v9 = v6 * 1.4;
  v10 = v8 * 1.4;
  [(VUIButton *)self bounds];
  v12 = (v11 - v9) * 0.5;
  [(VUIButton *)self bounds];
  v14 = (v13 - v10) * 0.5 + (v9 - v10) * -0.5;
  if (v9 > v10)
  {
    v15 = v9;
  }

  else
  {
    v15 = v10;
  }

  if (v9 > v10)
  {
    v16 = v12;
  }

  else
  {
    v14 = (v13 - v10) * 0.5;
    v16 = v12 + (v10 - v9) * -0.5;
  }

  v17 = v15;
  result.size.height = v17;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v16;
  return result;
}

- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4
{
  v5 = [a3 view];
  if (!v5)
  {
    v7 = 0;
    goto LABEL_10;
  }

  if ([(VUIButton *)self buttonType]== 7)
  {
    [(VUIButton *)self _barButtonPointerShapeRect];
    v6 = MEMORY[0x1E69DC728];
  }

  else
  {
    if (![(VUIButton *)self usesSymbolPointerInteraction])
    {
      v8 = [objc_alloc(MEMORY[0x1E69DD070]) initWithView:v5];
      v9 = [MEMORY[0x1E69DCD98] effectWithPreview:v8];
      v7 = [MEMORY[0x1E69DCDD0] styleWithEffect:v9 shape:0];
      goto LABEL_9;
    }

    [(VUIButton *)self _symbolButtonPointerShapeRect];
    v6 = MEMORY[0x1E69DC728];
  }

  v8 = [v6 bezierPathWithRoundedRect:? cornerRadius:?];
  v9 = objc_alloc_init(MEMORY[0x1E69DCE28]);
  [v9 setVisiblePath:v8];
  v10 = [objc_alloc(MEMORY[0x1E69DD070]) initWithView:v5 parameters:v9];
  v11 = [MEMORY[0x1E69DCD98] effectWithPreview:v10];
  v7 = [MEMORY[0x1E69DCDD0] styleWithEffect:v11 shape:0];

LABEL_9:
LABEL_10:

  return v7;
}

- (id)largeContentTitle
{
  v3 = [(VUIButton *)self accessibilityLabel];
  v4 = [v3 length];

  if (v4)
  {
    v5 = [(VUIButton *)self accessibilityLabel];
  }

  else
  {
    v6 = [(VUIButton *)self textContentView];

    if (v6)
    {
      v7 = [(VUIButton *)self textContentView];
      v5 = [v7 text];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (id)largeContentImage
{
  v3 = [(VUIButton *)self imageView];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v5 = [(VUIButton *)self imageView];
  if (isKindOfClass)
  {
    goto LABEL_4;
  }

  objc_opt_class();
  v6 = objc_opt_isKindOfClass();

  if (v6)
  {
    v5 = [(VUIButton *)self imageView];
LABEL_4:
    v7 = [v5 image];

    goto LABEL_6;
  }

  v7 = 0;
LABEL_6:

  return v7;
}

- (void)setScrolledNonUberPercentage:(double)a3
{
  if (a3 == 0.0)
  {
    [(UIVisualEffectView *)self->_backdropView setHidden:0];

    [(VUIButton *)self setVuiBackgroundColor:0];
  }

  else
  {
    [(VUIButton *)self setVuiBackgroundColor:self->_buttonBackgroundColor];
    v4 = [(VUIButton *)self backdropView];
    [v4 setHidden:1];
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

- (UIEdgeInsets)imageMargin
{
  top = self->_imageMargin.top;
  left = self->_imageMargin.left;
  bottom = self->_imageMargin.bottom;
  right = self->_imageMargin.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end