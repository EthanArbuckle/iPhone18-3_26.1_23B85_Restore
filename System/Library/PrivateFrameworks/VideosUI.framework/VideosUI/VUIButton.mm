@interface VUIButton
- (BOOL)_hasBackgroundImage;
- (BOOL)_hasImage;
- (BOOL)_hasProgressBar;
- (BOOL)_hasSubtitle;
- (BOOL)_hasTitle;
- (BOOL)onlyHasImage;
- (CGPoint)_centerWithViewSize:(CGSize)size withParentSize:(CGSize)parentSize;
- (CGRect)_barButtonPointerShapeRect;
- (CGRect)_symbolButtonPointerShapeRect;
- (CGSize)_availableSizeForLabelInButtonWithSize:(CGSize)size;
- (CGSize)_calculateContentSizeForCustomButtonThatFit:(CGSize)fit;
- (CGSize)_calculateContentSizeForImageThatFit:(CGSize)fit;
- (CGSize)_calculateContentSizeForPrimaryButtonThatFit:(CGSize)fit;
- (CGSize)_computeSizeThatFits:(CGSize)fits;
- (CGSize)_imageSizeThatFits:(CGSize)fits;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (CGSize)vui_layoutSubviews:(CGSize)subviews computationOnly:(BOOL)only;
- (UIEdgeInsets)imageMargin;
- (UIEdgeInsets)padding;
- (VUIButton)initWithType:(unint64_t)type interfaceStyle:(unint64_t)style;
- (double)bottomMarginWithBaselineMargin:(double)margin;
- (double)topMarginToLabel:(id)label withBaselineMargin:(double)margin;
- (double)topMarginWithBaselineMargin:(double)margin;
- (double)vuiBaselineHeight;
- (double)vui_baselineOffsetFromBottom;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (id)largeContentImage;
- (id)largeContentTitle;
- (id)pointerInteraction:(id)interaction styleForRegion:(id)region;
- (unint64_t)numberOfLinesRequiredForLabelWithButtonWidth:(double)width;
- (void)_addLongPressGesture;
- (void)_buttonTapped:(id)tapped;
- (void)_configure;
- (void)_crossFadeButtonImageTo:(id)to;
- (void)_removeLongPressGestureIfNeeded;
- (void)_setPointerInteractionEnabled:(BOOL)enabled;
- (void)_setupBarButtonItem;
- (void)_setupBlurEffectBackdropView;
- (void)_updateBackdropViewCornerRadius;
- (void)_updateBorder;
- (void)_updateLayout;
- (void)buttonLongPressed:(id)pressed;
- (void)layoutSubviews;
- (void)revertTintColor;
- (void)saturateTintColorAndBackgroundColor;
- (void)setBackdropGroupName:(id)name;
- (void)setBackgroundImage:(id)image forHighlightedState:(BOOL)state;
- (void)setBackgroundImageView:(id)view;
- (void)setBlurEnabled:(BOOL)enabled;
- (void)setBorderColor:(id)color;
- (void)setButtonShape:(unint64_t)shape;
- (void)setButtonType:(unint64_t)type;
- (void)setCornerRadius:(double)radius;
- (void)setEnabled:(BOOL)enabled;
- (void)setHighlightColor:(id)color;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setImageView:(id)view;
- (void)setImageView:(id)view forHighlightedState:(BOOL)state;
- (void)setProgressBarView:(id)view;
- (void)setScrolledNonUberPercentage:(double)percentage;
- (void)setSecondaryBackgroundColor:(id)color;
- (void)setSelectActionHandler:(id)handler;
- (void)setSubtitleContentView:(id)view;
- (void)setSupportsLongPress:(BOOL)press;
- (void)setTextContentView:(id)view;
- (void)setTintColor:(id)color;
- (void)setUberButtonType:(unint64_t)type;
- (void)setVuiTag:(int64_t)tag;
- (void)tintColorDidChange;
- (void)vui_prepareForReuse;
@end

@implementation VUIButton

- (VUIButton)initWithType:(unint64_t)type interfaceStyle:(unint64_t)style
{
  v21[1] = *MEMORY[0x1E69E9840];
  v18.receiver = self;
  v18.super_class = VUIButton;
  v5 = [(VUIButton *)&v18 initWithFrame:type, style, *MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v6 = v5;
  if (v5)
  {
    v5->_buttonType = type;
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

- (void)setCornerRadius:(double)radius
{
  if (self->_cornerRadius != radius)
  {
    self->_cornerRadius = radius;
    if (self->_backdropView)
    {
      [(VUIButton *)self _updateBackdropViewCornerRadius];
    }

    else
    {
      vuiLayer = [(VUIButton *)self vuiLayer];
      [vuiLayer setCornerRadius:radius];
    }

    secondaryBackgroundView = [(VUIButton *)self secondaryBackgroundView];

    if (secondaryBackgroundView)
    {
      secondaryBackgroundView2 = [(VUIButton *)self secondaryBackgroundView];
      vuiLayer2 = [secondaryBackgroundView2 vuiLayer];
      [vuiLayer2 setCornerRadius:radius];
    }
  }
}

- (void)setSecondaryBackgroundColor:(id)color
{
  colorCopy = color;
  objc_storeStrong(&self->_secondaryBackgroundColor, color);
  secondaryBackgroundView = [(VUIButton *)self secondaryBackgroundView];

  if (!secondaryBackgroundView)
  {
    v6 = objc_alloc(MEMORY[0x1E69DD250]);
    v7 = [v6 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    [(VUIButton *)self setSecondaryBackgroundView:v7];
    vuiLayer = [v7 vuiLayer];
    [(VUIButton *)self cornerRadius];
    [vuiLayer setCornerRadius:?];

    [(VUIButton *)self insertSubview:v7 atIndex:0];
  }

  secondaryBackgroundView2 = [(VUIButton *)self secondaryBackgroundView];
  [secondaryBackgroundView2 setBackgroundColor:colorCopy];

  [(VUIButton *)self setNeedsLayout];
}

- (void)setBlurEnabled:(BOOL)enabled
{
  if (self->_blurEnabled != enabled)
  {
    self->_blurEnabled = enabled;
    [(VUIButton *)self _setupBlurEffectBackdropView];
  }
}

- (void)setBorderColor:(id)color
{
  objc_storeStrong(&self->_borderColor, color);

  [(VUIButton *)self _updateBorder];
}

- (void)setButtonType:(unint64_t)type
{
  if (self->_buttonType != type)
  {
    if (!type)
    {
      [(UIVisualEffectView *)self->_backdropView removeFromSuperview];
      backdropView = self->_backdropView;
      self->_backdropView = 0;
    }

    self->_buttonType = type;

    [(VUIButton *)self _configure];
  }
}

- (void)setUberButtonType:(unint64_t)type
{
  if (self->_uberButtonType != type)
  {
    self->_uberButtonType = type;
    if (self->_buttonType == 3)
    {
      [(VUIButton *)self _setupBlurEffectBackdropView];
    }
  }
}

- (void)setSubtitleContentView:(id)view
{
  viewCopy = view;
  [(VUIButton *)self vui_addSubview:viewCopy oldView:self->_subtitleContentView];
  if (self->_subtitleContentView != viewCopy)
  {
    objc_storeStrong(&self->_subtitleContentView, view);
  }

  [(VUIButton *)self vui_setNeedsLayout];
}

- (void)setTextContentView:(id)view
{
  viewCopy = view;
  [(VUIButton *)self vui_addSubview:viewCopy oldView:self->_textContentView];
  if (self->_textContentView != viewCopy)
  {
    objc_storeStrong(&self->_textContentView, view);
  }

  buttonType = [(VUIButton *)self buttonType];
  if (buttonType == 7 || buttonType == 2)
  {
    [(VUILabel *)self->_textContentView _setWantsUnderlineForAccessibilityButtonShapesEnabled:1];
  }

  [(VUIButton *)self vui_setNeedsLayout];
}

- (void)setVuiTag:(int64_t)tag
{
  if (self->_vuiTag != tag)
  {
    self->_vuiTag = tag;
    [(VUIButton *)self setTag:?];
  }
}

- (void)setImageView:(id)view
{
  viewCopy = view;
  [(VUIButton *)self vui_addSubview:viewCopy oldView:self->_imageView];
  if (self->_imageView != viewCopy)
  {
    objc_storeStrong(&self->_imageView, view);
    image = [(VUIImageView *)self->_imageView image];
    originalImage = self->_originalImage;
    self->_originalImage = image;
  }

  [(VUIButton *)self vui_setNeedsLayout];
  imagesViewDefaultState = self->_imagesViewDefaultState;
  self->_imagesViewDefaultState = viewCopy;
}

- (void)setProgressBarView:(id)view
{
  viewCopy = view;
  [(VUIButton *)self vui_addSubview:viewCopy oldView:self->_progressBarView];
  if (self->_progressBarView != viewCopy)
  {
    objc_storeStrong(&self->_progressBarView, view);
  }

  [(VUIButton *)self vui_setNeedsLayout];
}

- (void)setBackgroundImageView:(id)view
{
  viewCopy = view;
  backgroundImageView = self->_backgroundImageView;
  if (backgroundImageView != viewCopy)
  {
    v9 = viewCopy;
    [(UIView *)backgroundImageView removeFromSuperview];
    subviews = [(VUIButton *)self subviews];
    firstObject = [subviews firstObject];

    [(VUIButton *)self vui_insertSubview:v9 belowSubview:firstObject oldView:self->_backgroundImageView];
    objc_storeStrong(&self->_backgroundImageView, view);
    objc_storeStrong(&self->_backgroundImagesViewDefaultState, view);

    viewCopy = v9;
  }
}

- (void)setButtonShape:(unint64_t)shape
{
  if (self->_buttonShape != shape)
  {
    self->_buttonShape = shape;
  }
}

- (void)setImageView:(id)view forHighlightedState:(BOOL)state
{
  stateCopy = state;
  viewCopy = view;
  v11 = viewCopy;
  if (stateCopy)
  {
    [viewCopy bounds];
    v8 = v7;
    v10 = v9;
    [(VUIImageView *)self->_imagesViewDefaultState bounds];
    [v11 setBounds:{v8, v10}];
    [(VUIButton *)self setImagesViewHighlightedState:v11];
  }

  else
  {
    [(VUIButton *)self setImageView:viewCopy];
  }
}

- (void)setBackgroundImage:(id)image forHighlightedState:(BOOL)state
{
  stateCopy = state;
  imageCopy = image;
  v11 = imageCopy;
  if (stateCopy)
  {
    [imageCopy bounds];
    v8 = v7;
    v10 = v9;
    [(VUIImageView *)self->_backgroundImagesViewDefaultState bounds];
    [v11 setBounds:{v8, v10}];
    [(VUIButton *)self setBackgroundImagesViewHighlightedState:v11];
  }

  else
  {
    [(VUIButton *)self setBackgroundImageView:imageCopy];
  }
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v18.receiver = self;
  v18.super_class = VUIButton;
  [(VUIButton *)&v18 setHighlighted:?];
  if (([(VUIButton *)self isHidden]& 1) == 0)
  {
    [(VUIButton *)self alpha];
    if (v5 != 0.0)
    {
      v6 = [(VUIButton *)self buttonType]== 7;
      if (highlightedCopy)
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
          highlightColor = [(VUIButton *)self highlightColor];
          [(VUIButton *)self setVuiBackgroundColor:highlightColor];
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
          buttonBackgroundColor = [(VUIButton *)self buttonBackgroundColor];
          [(VUIButton *)self setVuiBackgroundColor:buttonBackgroundColor];
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

      textContentView = [(VUIButton *)self textContentView];
      [textContentView setHighlighted:highlightedCopy];

      if (![(VUIButton *)self buttonType]|| [(VUIButton *)self buttonType]== 3)
      {
        imageView = [(VUIButton *)self imageView];
        [imageView vui_setSelected:highlightedCopy animated:0 withAnimationCoordinator:0];
      }

      if (self->_backdropView)
      {
        buttonBackgroundColor2 = [(VUIButton *)self buttonBackgroundColor];
        if (!buttonBackgroundColor2 || (v13 = buttonBackgroundColor2, -[VUIButton buttonBackgroundColor](self, "buttonBackgroundColor"), v14 = objc_claimAutoreleasedReturnValue(), [MEMORY[0x1E69DC888] clearColor], v15 = objc_claimAutoreleasedReturnValue(), v15, v14, v13, v14 == v15))
        {
          layer = [(VUIButton *)self layer];
          v17 = 0.0;
          if (highlightedCopy)
          {
            [(VUIButton *)self cornerRadius];
          }

          [layer setCornerRadius:v17];
        }
      }
    }
  }
}

- (void)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v7.receiver = self;
  v7.super_class = VUIButton;
  [(VUIButton *)&v7 setEnabled:?];
  textContentView = [(VUIButton *)self textContentView];
  [textContentView setEnabled:enabledCopy];

  subtitleContentView = [(VUIButton *)self subtitleContentView];
  [subtitleContentView setEnabled:enabledCopy];
}

- (CGSize)intrinsicContentSize
{
  [(VUIButton *)self sizeThatFits:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(VUIButton *)self vui_layoutSubviews:1 computationOnly:fits.width, fits.height];
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

- (void)setSelectActionHandler:(id)handler
{
  if (self->_selectActionHandler != handler)
  {
    v4 = _Block_copy(handler);
    selectActionHandler = self->_selectActionHandler;
    self->_selectActionHandler = v4;
  }
}

- (void)setBackdropGroupName:(id)name
{
  nameCopy = name;
  if (self->_backdropGroupName != nameCopy)
  {
    v6 = nameCopy;
    objc_storeStrong(&self->_backdropGroupName, name);
    [(UIVisualEffectView *)self->_backdropView _setGroupName:v6];
    nameCopy = v6;
  }
}

- (void)setSupportsLongPress:(BOOL)press
{
  if (self->_supportsLongPress != press)
  {
    pressCopy = press;
    self->_supportsLongPress = press;
    [(VUIButton *)self _removeLongPressGestureIfNeeded];
    if (pressCopy)
    {

      [(VUIButton *)self _addLongPressGesture];
    }
  }
}

- (void)setHighlightColor:(id)color
{
  colorCopy = color;
  if (self->_highlightColor != colorCopy)
  {
    v6 = colorCopy;
    objc_storeStrong(&self->_highlightColor, color);
    colorCopy = v6;
  }
}

- (CGSize)vui_layoutSubviews:(CGSize)subviews computationOnly:(BOOL)only
{
  height = subviews.height;
  width = subviews.width;
  if (!only)
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
        layer = [(VUIButton *)self layer];
        [layer setCornerRadius:v21];

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

      layer2 = [backdropView layer];
      [layer2 setCornerRadius:v21];
    }

LABEL_19:
    [(VUIButton *)self _updateLayout];
    buttonBackgroundColor = [(VUIButton *)self buttonBackgroundColor];
    [(VUIButton *)self setVuiBackgroundColor:buttonBackgroundColor];

    goto LABEL_20;
  }

  [(VUIButton *)self _computeSizeThatFits:subviews.width, subviews.height];
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
  textContentView = [(VUIButton *)self textContentView];
  objc_opt_class();
  v4 = 0.0;
  if (objc_opt_isKindOfClass())
  {
    v5 = *MEMORY[0x1E695F060];
    v6 = *(MEMORY[0x1E695F060] + 8);
    [(VUIButton *)self _computeSizeThatFits:*MEMORY[0x1E695F060], v6];
    v8 = v7;
    [textContentView vui_sizeThatFits:{v5, v6}];
    v10 = (v8 - v9) * 0.5;
    [textContentView vuiBaselineHeight];
    v4 = v11 + v10;
  }

  return v4;
}

- (double)topMarginToLabel:(id)label withBaselineMargin:(double)margin
{
  labelCopy = label;
  if ([(VUIButton *)self buttonType]== 2 && ([(VUIButton *)self textContentView], v7 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v7, (isKindOfClass & 1) != 0))
  {
    textContentView = [(VUIButton *)self textContentView];
    [textContentView topMarginToLabel:labelCopy withBaselineMargin:margin];
    v11 = v10;
  }

  else
  {
    v14.receiver = self;
    v14.super_class = VUIButton;
    [(UIView *)&v14 topMarginWithBaselineMargin:margin];
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

  textContentView = [(VUIButton *)self textContentView];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    return 0.0;
  }

  textContentView2 = [(VUIButton *)self textContentView];
  [textContentView2 vui_baselineOffsetFromBottom];
  v7 = v6;

  return v7;
}

- (void)vui_prepareForReuse
{
  [(VUIImageView *)self->_imageView setImage:0];
  textContentView = self->_textContentView;

  [(VUILabel *)textContentView setVuiText:0];
}

- (void)setTintColor:(id)color
{
  colorCopy = color;
  v7.receiver = self;
  v7.super_class = VUIButton;
  [(VUIButton *)&v7 setTintColor:colorCopy];
  if ([(VUIButton *)self tintAdjustmentMode]== 2)
  {
    [(VUIButton *)self setImageTintColor:colorCopy];
  }

  else
  {
    textContentView = [(VUIButton *)self textContentView];
    [textContentView setTextColor:colorCopy];

    textLayout = [(VUILabel *)self->_textContentView textLayout];
    [textLayout setColor:colorCopy];
    [textLayout setDarkColor:colorCopy];
    [(VUIButton *)self setImageTintColor:colorCopy];
    [(VUIImageView *)self->_imageView _setTintColor:colorCopy];
  }
}

- (void)saturateTintColorAndBackgroundColor
{
  systemMidGrayColor = [MEMORY[0x1E69DC888] systemMidGrayColor];
  imageTintColor = [(VUIButton *)self imageTintColor];

  if (imageTintColor)
  {
    [(VUIImageView *)self->_imageView _setTintColor:systemMidGrayColor];
  }

  [(VUILabel *)self->_textContentView setTextColor:systemMidGrayColor];
}

- (void)revertTintColor
{
  if (self->_imageView)
  {
    imageTintColor = [(VUIButton *)self imageTintColor];
    [(VUIImageView *)self->_imageView _setTintColor:imageTintColor];
  }

  textContentView = self->_textContentView;

  [(VUILabel *)textContentView revertTintColor];
}

- (double)topMarginWithBaselineMargin:(double)margin
{
  if ([(VUIButton *)self buttonType]== 2 && ([(VUIButton *)self textContentView], v5 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v5, (isKindOfClass & 1) != 0))
  {
    textContentView = [(VUIButton *)self textContentView];
    [textContentView topMarginWithBaselineMargin:margin];
    v9 = v8;

    return v9;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = VUIButton;
    [(UIView *)&v11 topMarginWithBaselineMargin:margin];
  }

  return result;
}

- (double)bottomMarginWithBaselineMargin:(double)margin
{
  if ([(VUIButton *)self buttonType]== 2 && ([(VUIButton *)self textContentView], v5 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v5, (isKindOfClass & 1) != 0))
  {
    textContentView = [(VUIButton *)self textContentView];
    [textContentView bottomMarginWithBaselineMargin:margin];
    v9 = v8;

    return v9;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = VUIButton;
    [(UIView *)&v11 bottomMarginWithBaselineMargin:margin];
  }

  return result;
}

- (BOOL)onlyHasImage
{
  _hasImage = [(VUIButton *)self _hasImage];
  if (_hasImage)
  {
    if ([(VUIButton *)self _hasTitle]|| [(VUIButton *)self _hasSubtitle])
    {
      LOBYTE(_hasImage) = 0;
    }

    else
    {
      LOBYTE(_hasImage) = ![(VUIButton *)self _hasProgressBar];
    }
  }

  return _hasImage;
}

- (unint64_t)numberOfLinesRequiredForLabelWithButtonWidth:(double)width
{
  if (![(VUIButton *)self _hasTitle])
  {
    return 0;
  }

  [(VUIButton *)self _availableSizeForLabelInButtonWithSize:width, 1.79769313e308];
  v6 = v5;
  textContentView = [(VUIButton *)self textContentView];
  v8 = [textContentView numberOfLinesRequiredForTextWidth:v6];

  return v8;
}

- (void)_crossFadeButtonImageTo:(id)to
{
  toCopy = to;
  if (toCopy)
  {
    imageView = [(VUIButton *)self imageView];
    image = [imageView image];

    if (image != toCopy)
    {
      objc_initWeak(&location, self);
      imageView2 = [(VUIButton *)self imageView];
      v8 = MEMORY[0x1E69DD250];
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __37__VUIButton__crossFadeButtonImageTo___block_invoke;
      v9[3] = &unk_1E872F038;
      objc_copyWeak(&v11, &location);
      v10 = toCopy;
      [v8 transitionWithView:imageView2 duration:5242880 options:v9 animations:0 completion:0.200000003];

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

- (CGSize)_imageSizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  imageView = [(VUIButton *)self imageView];
  [imageView vui_sizeThatFits:{width, height}];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (CGSize)_computeSizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  v6 = *MEMORY[0x1E695F060];
  v7 = *(MEMORY[0x1E695F060] + 8);
  [(VUIButton *)self _imageSizeThatFits:?];
  imageMaxHeight = v8;
  buttonType = [(VUIButton *)self buttonType];
  vuiTraitCollection = [(VUIButton *)self vuiTraitCollection];
  isAXEnabled = [vuiTraitCollection isAXEnabled];

  maxContentSizeCategoryForIdealHeight = [(VUIButton *)self maxContentSizeCategoryForIdealHeight];
  v14 = _os_feature_enabled_impl();
  if (maxContentSizeCategoryForIdealHeight)
  {
    v15 = isAXEnabled;
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

  if (buttonType <= 4)
  {
    if (buttonType < 2)
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

    if (buttonType != 2)
    {
      if (buttonType == 3)
      {
        goto LABEL_11;
      }

LABEL_28:
      imageMaxHeight = v7;
      goto LABEL_33;
    }

    goto LABEL_31;
  }

  if (buttonType > 6)
  {
    if (buttonType == 7)
    {
      if ([(VUIButton *)self _hasImage]&& [(VUIButton *)self _hasTitle])
      {
        textContentView = [(VUIButton *)self textContentView];
        [textContentView sizeThatFits:{width, height}];
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
        textContentView2 = [(VUIButton *)self textContentView];
        textLayout = [textContentView2 textLayout];
        [textLayout margin];

        goto LABEL_32;
      }

      if ([(VUIButton *)self _hasImage])
      {
        imageMaxHeight = self->_imageMaxHeight;
        goto LABEL_33;
      }

LABEL_31:
      textContentView2 = [(VUIButton *)self textContentView];
      [textContentView2 sizeThatFits:{width, height}];
      imageMaxHeight = v35;
LABEL_32:

      goto LABEL_33;
    }

    if (buttonType != 9)
    {
      goto LABEL_28;
    }

    [(VUIButton *)self _calculateContentSizeForCustomButtonThatFit:width, height];
    v25 = v26;
  }

  else
  {
    if (buttonType == 5)
    {
      goto LABEL_33;
    }

    if ([(VUIButton *)self _hasTitle])
    {
      textContentView3 = [(VUIButton *)self textContentView];
      [textContentView3 sizeThatFits:{width, height}];
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

  onlyHasImage = [(VUIButton *)self onlyHasImage];
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
      vuiTraitCollection2 = [(VUIButton *)self vuiTraitCollection];
      [v58 scaleContentSizeValue:vuiTraitCollection2 forTraitCollection:-[VUIButton maxContentSizeCategoryForIdealHeight](self maximumContentSizeCategory:{"maxContentSizeCategoryForIdealHeight"), v60}];
      v63 = v62;

      if (v63 > v46)
      {
        v46 = v63;
      }
    }
  }

  if (onlyHasImage)
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

- (CGSize)_availableSizeForLabelInButtonWithSize:(CGSize)size
{
  height = size.height;
  width = size.width;
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
      textContentView = [(VUIButton *)self textContentView];
      textLayout = [textContentView textLayout];
      [textLayout margin];
      v16 = v15;

      v8 = v12 - v16;
      if ([(VUIButton *)self _hasProgressBar])
      {
        progressBarView = [(VUIButton *)self progressBarView];
        [progressBarView vui_sizeThatFits:{width, height}];
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

- (CGSize)_calculateContentSizeForCustomButtonThatFit:(CGSize)fit
{
  height = fit.height;
  width = fit.width;
  if ([(VUIButton *)self _hasImage]&& [(VUIButton *)self _hasTitle])
  {
    [(VUIButton *)self _calculateContentSizeForImageThatFit:width, height];
    v7 = v6;
    v9 = v8;
    v10 = width - v6;
    textContentView = [(VUIButton *)self textContentView];
    [textContentView sizeThatFits:{v10, height}];
    v13 = v12;
    v15 = v14;

    if (v9 >= v15)
    {
      v15 = v9;
    }

    [(VUIButton *)self imageMargin];
    v17 = v7 + v16;
    textContentView2 = [(VUIButton *)self textContentView];
    textLayout = [textContentView2 textLayout];
    [textLayout margin];
    v21 = v13 + v17 + v20;

    goto LABEL_11;
  }

  if (![(VUIButton *)self _hasImage])
  {
    textContentView2 = [(VUIButton *)self textContentView];
    [textContentView2 sizeThatFits:{width, height}];
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

- (CGSize)_calculateContentSizeForPrimaryButtonThatFit:(CGSize)fit
{
  height = fit.height;
  width = fit.width;
  if ([(VUIButton *)self _hasImage]&& [(VUIButton *)self _hasTitle]&& [(VUIButton *)self _hasProgressBar])
  {
    textContentView = [(VUIButton *)self textContentView];
    textLayout = [textContentView textLayout];
    [textLayout margin];
    v9 = v8;

    [(VUIButton *)self imageMargin];
    v11 = v10;
    [(VUIButton *)self _calculateContentSizeForImageThatFit:width, height];
    v13 = v12;
    v15 = v14;
    progressBarView = [(VUIButton *)self progressBarView];
    [progressBarView vui_sizeThatFits:{width, height}];
    v18 = v17;

    [(VUIButton *)self _availableSizeForLabelInButtonWithSize:width, height];
    v20 = v19;
    v22 = v21;
    textContentView2 = [(VUIButton *)self textContentView];
    [textContentView2 sizeThatFits:{v20, v22}];
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
    textContentView3 = [(VUIButton *)self textContentView];
    textLayout2 = [textContentView3 textLayout];
    [textLayout2 margin];
    v37 = v36;

    [(VUIButton *)self imageMargin];
    v39 = v38;
    [(VUIButton *)self _availableSizeForLabelInButtonWithSize:width, height];
    v41 = v40;
    v43 = v42;
    textContentView4 = [(VUIButton *)self textContentView];
    [textContentView4 sizeThatFits:{v41, v43}];
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
    textContentView5 = [(VUIButton *)self textContentView];
    [textContentView5 sizeThatFits:{width, height}];
    v51 = v50;
    v53 = v52;

    v29 = v51;
    v28 = v53;
  }

  result.height = v28;
  result.width = v29;
  return result;
}

- (CGSize)_calculateContentSizeForImageThatFit:(CGSize)fit
{
  [(VUIButton *)self _imageSizeThatFits:fit.width, fit.height];
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
  subtitleContentView = [(VUIButton *)self subtitleContentView];
  v3 = subtitleContentView != 0;

  return v3;
}

- (BOOL)_hasTitle
{
  textContentView = [(VUIButton *)self textContentView];
  v3 = textContentView != 0;

  return v3;
}

- (BOOL)_hasImage
{
  imageView = [(VUIButton *)self imageView];
  v3 = imageView != 0;

  return v3;
}

- (BOOL)_hasProgressBar
{
  progressBarView = [(VUIButton *)self progressBarView];
  v3 = progressBarView != 0;

  return v3;
}

- (BOOL)_hasBackgroundImage
{
  backgroundImageView = [(VUIButton *)self backgroundImageView];
  v3 = backgroundImageView != 0;

  return v3;
}

- (void)_configure
{
  buttonBackgroundColor = [(VUIButton *)self buttonBackgroundColor];
  [(VUIButton *)self setVuiBackgroundColor:buttonBackgroundColor];

  [(VUIButton *)self cornerRadius];
  [(VUIButton *)self setCornerRadius:?];
  shadow = [(VUIButton *)self shadow];

  if (shadow)
  {
    layer = [(VUIButton *)self layer];
    shadow2 = [(VUIButton *)self shadow];
    [shadow2 shadowOffset];
    [layer setShadowOffset:?];

    layer2 = [(VUIButton *)self layer];
    shadow3 = [(VUIButton *)self shadow];
    [shadow3 shadowBlurRadius];
    [layer2 setShadowRadius:?];

    layer3 = [(VUIButton *)self layer];
    shadow4 = [(VUIButton *)self shadow];
    shadowColor = [shadow4 shadowColor];
    [layer3 setShadowColor:{objc_msgSend(shadowColor, "CGColor")}];

    layer4 = [(VUIButton *)self layer];
    [layer4 setMasksToBounds:0];

    layer5 = [(VUIButton *)self layer];
    LODWORD(v14) = 1.0;
    [layer5 setShadowOpacity:v14];
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

  clearColor = [MEMORY[0x1E69DC888] clearColor];
  if (borderColor == clearColor)
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
    vuiLayer = [(VUIButton *)self vuiLayer];
    [vuiLayer setBorderColor:{-[UIColor CGColor](self->_borderColor, "CGColor")}];

    vuiLayer2 = [(VUIButton *)self vuiLayer];
    [vuiLayer2 setBorderWidth:self->_borderWidth];

    goto LABEL_8;
  }

  vuiLayer3 = [(UIVisualEffectView *)backdropView vuiLayer];
  [vuiLayer3 setBorderColor:{-[UIColor CGColor](self->_borderColor, "CGColor")}];

  vuiLayer4 = [(UIVisualEffectView *)self->_backdropView vuiLayer];
  [vuiLayer4 setBorderWidth:self->_borderWidth];

  vuiLayer5 = [(UIVisualEffectView *)self->_backdropView vuiLayer];
  [vuiLayer5 setCornerRadius:self->_cornerRadius];

  vuiLayer6 = [(UIVisualEffectView *)self->_backdropView vuiLayer];
  [vuiLayer6 setCornerCurve:*MEMORY[0x1E69796E8]];

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
  longPressGestureRecognizer = [(VUIButton *)self longPressGestureRecognizer];

  if (longPressGestureRecognizer)
  {
    longPressGestureRecognizer2 = [(VUIButton *)self longPressGestureRecognizer];
    [(VUIButton *)self removeGestureRecognizer:longPressGestureRecognizer2];

    [(VUIButton *)self setLongPressGestureRecognizer:0];
  }
}

- (void)buttonLongPressed:(id)pressed
{
  pressedCopy = pressed;
  v4 = [pressedCopy state] == 1;
  v5 = pressedCopy;
  if (v4)
  {
    longPressGestureRecognizer = [(VUIButton *)self longPressGestureRecognizer];
    if (longPressGestureRecognizer == pressedCopy)
    {
      longPressActionHandler = [(VUIButton *)self longPressActionHandler];

      v5 = pressedCopy;
      if (!longPressActionHandler)
      {
        goto LABEL_7;
      }

      longPressGestureRecognizer = [(VUIButton *)self longPressActionHandler];
      (longPressGestureRecognizer)[2](longPressGestureRecognizer, self);
    }

    v5 = pressedCopy;
  }

LABEL_7:
}

- (void)_buttonTapped:(id)tapped
{
  selectActionHandler = [(VUIButton *)self selectActionHandler];

  if (selectActionHandler)
  {
    selectActionHandler2 = [(VUIButton *)self selectActionHandler];
    selectActionHandler2[2](selectActionHandler2, self);
  }
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
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
      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }

    v8 = selfCopy;
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
  _hasTitle = [(VUIButton *)self _hasTitle];
  v153 = v17;
  rect = v17;
  v20 = v18;
  if (_hasTitle)
  {
    textContentView = [(VUIButton *)self textContentView];
    [textContentView sizeThatFits:{v152, v154}];
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
    subtitleContentView = [(VUIButton *)self subtitleContentView];
    [subtitleContentView sizeThatFits:{v152, v154}];
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
    progressBarView = [(VUIButton *)self progressBarView];
    [progressBarView vui_sizeThatFits:{v152, v154}];

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
    textContentView2 = [(VUIButton *)self textContentView];
    textLayout = [textContentView2 textLayout];
    [textLayout margin];
    v43 = v42;
    v142 = v44;

    [(VUIButton *)self imageMargin];
    v141 = v45;
    v47 = v46;
    _hasProgressBar = [(VUIButton *)self _hasProgressBar];
    v49 = fmax(v43, v47);
    if (_hasProgressBar)
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
        textContentView3 = [(VUIButton *)self textContentView];
        [textContentView3 sizeThatFits:{v53, v154}];
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
        subtitleContentView2 = [(VUIButton *)self subtitleContentView];
        [subtitleContentView2 sizeThatFits:{v53, v154}];
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
        progressBarView2 = [(VUIButton *)self progressBarView];
        [progressBarView2 vui_sizeThatFits:{v68, v154}];

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
        image = [(VUIImageView *)self->_imageView image];
        [image alignmentRectInsets];
        v75 = v74;
        v77 = v76;

        v78 = (v75 - v77) * 0.5;
        v79 = VUIDefaultLogObject();
        if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218240;
          selfCopy = self;
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
      textContentView4 = [(VUIButton *)self textContentView];
      textLayout2 = [textContentView4 textLayout];
      [textLayout2 margin];
    }
  }

  if ([(VUIButton *)self _hasTitle])
  {
    textContentView5 = [(VUIButton *)self textContentView];
    textLayout3 = [textContentView5 textLayout];
    [textLayout3 margin];

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
    imageView = [(VUIButton *)self imageView];
    [imageView setFrame:{v86, v88, v90, v92}];
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
    progressBarView3 = [(VUIButton *)self progressBarView];
    [progressBarView3 setFrame:{v95, v97, v99, v101}];
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
    textContentView6 = [(VUIButton *)self textContentView];
    [textContentView6 setFrame:{v104, v106, v108, v110}];
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
    subtitleContentView3 = [(VUIButton *)self subtitleContentView];
    [subtitleContentView3 setFrame:{v113, v115, v117, v119}];
  }

  if ([(VUIButton *)self _hasBackgroundImage])
  {
    [(VUIButton *)self imageMaxWidth];
    v122 = v121;
    [(VUIButton *)self imageMaxHeight];
    v124 = v123;
    if (v122 == *MEMORY[0x1E695F060] && v123 == *(MEMORY[0x1E695F060] + 8))
    {
      backgroundImageView = [(VUIButton *)self backgroundImageView];
      [backgroundImageView vui_sizeThatFits:{v30, v154}];
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
    backgroundImageView2 = [(VUIButton *)self backgroundImageView];
    [backgroundImageView2 setFrame:{v129, v131, v133, v135}];
  }

  secondaryBackgroundView = [(VUIButton *)self secondaryBackgroundView];

  if (secondaryBackgroundView)
  {
    secondaryBackgroundView2 = [(VUIButton *)self secondaryBackgroundView];
    [(VUIButton *)self bounds];
    [secondaryBackgroundView2 setFrame:?];
  }

  if ([(VUIButton *)self buttonType]== 6 || [(VUIButton *)self buttonShape]== 2 || [(VUIButton *)self buttonShape]== 1)
  {
    [(VUIButton *)self frame];
    [(VUIButton *)self setCornerRadius:v139 * 0.5];
  }
}

- (CGPoint)_centerWithViewSize:(CGSize)size withParentSize:(CGSize)parentSize
{
  v4 = (parentSize.width - size.width) * 0.5;
  v5 = (parentSize.height - size.height) * 0.5;
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
    layer = [(VUIButton *)self layer];
    [layer setMasksToBounds:1];

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
      traitCollection = [(VUIButton *)self traitCollection];
      userInterfaceStyle = [traitCollection userInterfaceStyle];

      if (userInterfaceStyle == 2)
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
  buttonBackgroundColor = [(VUIButton *)self buttonBackgroundColor];
  if (buttonBackgroundColor)
  {
    v6 = buttonBackgroundColor;
    buttonBackgroundColor2 = [(VUIButton *)self buttonBackgroundColor];
    clearColor = [MEMORY[0x1E69DC888] clearColor];

    if (buttonBackgroundColor2 != clearColor)
    {
      vuiLayer = [(VUIButton *)self vuiLayer];
      [vuiLayer setCornerRadius:v4];
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

- (void)_setPointerInteractionEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  pointerInteraction = self->_pointerInteraction;
  if (enabledCopy)
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
  imageView = [(VUIButton *)self imageView];
  image = [imageView image];
  [image size];
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

- (id)pointerInteraction:(id)interaction styleForRegion:(id)region
{
  view = [interaction view];
  if (!view)
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
      v8 = [objc_alloc(MEMORY[0x1E69DD070]) initWithView:view];
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
  v10 = [objc_alloc(MEMORY[0x1E69DD070]) initWithView:view parameters:v9];
  v11 = [MEMORY[0x1E69DCD98] effectWithPreview:v10];
  v7 = [MEMORY[0x1E69DCDD0] styleWithEffect:v11 shape:0];

LABEL_9:
LABEL_10:

  return v7;
}

- (id)largeContentTitle
{
  accessibilityLabel = [(VUIButton *)self accessibilityLabel];
  v4 = [accessibilityLabel length];

  if (v4)
  {
    accessibilityLabel2 = [(VUIButton *)self accessibilityLabel];
  }

  else
  {
    textContentView = [(VUIButton *)self textContentView];

    if (textContentView)
    {
      textContentView2 = [(VUIButton *)self textContentView];
      accessibilityLabel2 = [textContentView2 text];
    }

    else
    {
      accessibilityLabel2 = 0;
    }
  }

  return accessibilityLabel2;
}

- (id)largeContentImage
{
  imageView = [(VUIButton *)self imageView];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  imageView2 = [(VUIButton *)self imageView];
  if (isKindOfClass)
  {
    goto LABEL_4;
  }

  objc_opt_class();
  v6 = objc_opt_isKindOfClass();

  if (v6)
  {
    imageView2 = [(VUIButton *)self imageView];
LABEL_4:
    image = [imageView2 image];

    goto LABEL_6;
  }

  image = 0;
LABEL_6:

  return image;
}

- (void)setScrolledNonUberPercentage:(double)percentage
{
  if (percentage == 0.0)
  {
    [(UIVisualEffectView *)self->_backdropView setHidden:0];

    [(VUIButton *)self setVuiBackgroundColor:0];
  }

  else
  {
    [(VUIButton *)self setVuiBackgroundColor:self->_buttonBackgroundColor];
    backdropView = [(VUIButton *)self backdropView];
    [backdropView setHidden:1];
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