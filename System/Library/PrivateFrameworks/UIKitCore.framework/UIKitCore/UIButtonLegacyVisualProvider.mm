@interface UIButtonLegacyVisualProvider
+ (id)_selectedIndicatorImage;
+ (id)visualProviderForButton:(id)button;
- ($F24F406B2B787EFB06265DBA3D28CBD5)baselineOffsetsAtSize:(CGSize)size;
- (BOOL)_imageNeedsCompositingModeWhenSelected;
- (BOOL)_isExternalRoundedRectButtonWithPressednessState;
- (BOOL)_shouldUpdatePressedness;
- (BOOL)_textNeedsCompositingModeWhenSelected;
- (BOOL)_wantsContentBackdropView;
- (BOOL)useTitleForSelectedIndicatorBounds;
- (CGPoint)menuAttachmentPointForConfiguration:(id)configuration;
- (CGRect)_highlightBoundsForDrawingStyle;
- (CGRect)_highlightRectForImageRect:(CGRect)rect;
- (CGRect)_highlightRectForTextRect:(CGRect)rect;
- (CGRect)_selectedIndicatorBounds;
- (CGRect)_titleRectForContentRect:(CGRect)rect calculatePositionForEmptyTitle:(BOOL)title;
- (CGRect)_visualBoundsWithCornerRadius:(double *)radius hasProposal:(BOOL)proposal shouldUseProposal:(BOOL *)useProposal;
- (CGRect)backgroundRectForBounds:(CGRect)bounds;
- (CGRect)contentRectForBounds:(CGRect)bounds;
- (CGRect)highlightBounds;
- (CGRect)imageRectForContentRect:(CGRect)rect;
- (CGRect)titleRectForContentRect:(CGRect)rect;
- (CGRect)visualBoundsWithCornerRadius:(double *)radius;
- (CGSize)_intrinsicSizeForTitle:(id)title attributedTitle:(id)attributedTitle image:(id)image backgroundImage:(id)backgroundImage titlePaddingInsets:(UIEdgeInsets *)insets;
- (CGSize)intrinsicSizeWithinSize:(CGSize)size;
- (CGSize)sizeThatFits:(CGSize)fits;
- (CGSize)titleShadowOffset;
- (UIEdgeInsets)alignmentRectInsets;
- (double)_borderWidthForState:(unint64_t)state bounds:(CGRect)bounds;
- (id)_createPreparedImageViewWithFrame:(CGRect)frame;
- (id)_fadeOutAnimationWithKeyPath:(id)path;
- (id)_floatingContentView;
- (id)_newImageViewWithFrame:(CGRect)frame;
- (id)_newLabelWithFrame:(CGRect)frame;
- (id)_setupBackgroundView;
- (id)_titleOrImageViewForBaselineLayout;
- (id)_transitionAnimationWithKeyPath:(id)path;
- (id)_viewForBaselineLayout;
- (id)contentBackdropView;
- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location;
- (id)effectiveContentView;
- (id)encodableSubviews;
- (id)imageViewCreateIfNeeded:(BOOL)needed;
- (id)pointerEffectPreviewParameters;
- (id)pointerEffectWithPreview:(id)preview;
- (id)pointerShapeInContainer:(id)container proposal:(id)proposal;
- (id)preferredConfigurationForFocusAnimation:(int64_t)animation inContext:(id)context;
- (id)preferredHoverEffect;
- (id)selectionIndicatorView;
- (id)titleViewCreateIfNeeded:(BOOL)needed;
- (int64_t)lineBreakMode;
- (void)_applyAppropriateTouchInsetsForButton;
- (void)_beginTitleAnimation;
- (void)_deriveTitleRect:(CGRect *)rect imageRect:(CGRect *)imageRect fromContentRect:(CGRect)contentRect calculatePositionForEmptyTitle:(BOOL)title;
- (void)_invalidateContentConstraints;
- (void)_layoutBackgroundImageView;
- (void)_layoutContentBackdropView;
- (void)_layoutHighlightLayer;
- (void)_layoutImageAndTitleViews;
- (void)_prepareMaskAnimationViewIfNecessary;
- (void)_removeContentBackdropView;
- (void)_setupDrawingStyleForState:(unint64_t)state;
- (void)_setupImageView;
- (void)_setupPressednessForState:(unint64_t)state;
- (void)_setupTitleViewRequestingLayout:(BOOL)layout;
- (void)_updateBackgroundImageView;
- (void)_updateEffectsForImageView:(id)view background:(BOOL)background;
- (void)_updateImageView;
- (void)_updateMaskState;
- (void)_updateSelectionViewForState:(unint64_t)state;
- (void)_updateTitleView;
- (void)cleanupForVisualProvider:(id)provider;
- (void)contextMenuInteraction:(id)interaction updateStyleForMenuWithConfiguration:(id)configuration style:(id)style;
- (void)dealloc;
- (void)didChangeFromIdiom:(int64_t)idiom onScreen:(id)screen traverseHierarchy:(BOOL)hierarchy;
- (void)intrinsicContentSizeInvalidatedForChildView:(id)view;
- (void)layoutSubviews;
- (void)populateArchivedSubviews:(id)subviews;
- (void)setContentHorizontalAlignment:(int64_t)alignment;
- (void)setDrawingStroke:(double)stroke forState:(unint64_t)state;
- (void)setExternalFlatEdge:(unint64_t)edge;
- (void)setFont:(id)font isDefaultForIdiom:(BOOL)idiom;
- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated;
- (void)setLineBreakMode:(int64_t)mode;
- (void)setReversesTitleShadowWhenHighlighted:(BOOL)highlighted;
- (void)setSelected:(BOOL)selected;
- (void)setSemanticContentAttribute:(int64_t)attribute;
- (void)setShowsTouchWhenHighlighted:(BOOL)highlighted;
- (void)setTitleShadowOffset:(CGSize)offset;
- (void)setVisualEffectViewEnabled:(BOOL)enabled backgroundColor:(id)color;
- (void)tintColorDidChange;
- (void)traitCollectionDidChange:(id)change;
- (void)updateConstraints;
- (void)willMoveToWindow:(id)window;
@end

@implementation UIButtonLegacyVisualProvider

- (id)_floatingContentView
{
  if ([(UIButton *)self->_button _shouldHaveFloatingAppearance]&& !self->_floatingContentView)
  {
    v3 = [_UIFloatingContentView alloc];
    v4 = [(_UIFloatingContentView *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    floatingContentView = self->_floatingContentView;
    self->_floatingContentView = v4;

    [(_UIFloatingContentView *)self->_floatingContentView setFloatingContentDelegate:self];
    if (_UISolariumMetricsEnabled())
    {
      [(_UIFloatingContentView *)self->_floatingContentView setAsymmetricFocusedSizeIncrease:8.0, 8.0];
      [(_UIFloatingContentView *)self->_floatingContentView setMaintainAspectRatio:1];
    }

    if (!_UIDeviceHasExternalTouchInput())
    {
      [(UIView *)self->_floatingContentView setUserInteractionEnabled:0];
    }

    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __52__UIButtonLegacyVisualProvider__floatingContentView__block_invoke;
    v8[3] = &unk_1E70F3590;
    v8[4] = self;
    [UIView _performSystemAppearanceModifications:v8];
    [(UIView *)self->_button addSubview:self->_floatingContentView];
  }

  v6 = self->_floatingContentView;

  return v6;
}

- (id)effectiveContentView
{
  WeakRetained = objc_loadWeakRetained(&self->_effectiveContentView);
  if (!WeakRetained)
  {
    if ([(UIButton *)self->_button _shouldHaveFloatingAppearance])
    {
      _floatingContentView = [(UIButtonLegacyVisualProvider *)self _floatingContentView];
      WeakRetained = [_floatingContentView contentView];
    }

    else
    {
      WeakRetained = self->_button;
    }

    objc_storeWeak(&self->_effectiveContentView, WeakRetained);
  }

  return WeakRetained;
}

- (void)_updateTitleView
{
  state = [(UIControl *)self->_button state];
  v14 = [(UIButton *)self->_button _attributedTitleForState:state];
  v4 = [(UIButton *)self->_button _titleForState:state];
  if (v14 && [v14 length])
  {
    _content = [(UILabel *)self->_titleView _content];
    if ([_content length] >= 1)
    {
      v6 = [_content contentWithAttributedString:v14];
      v7 = [_content differenceVersusContent:v6];

      if (v7)
      {
        [(UIButtonLegacyVisualProvider *)self _beginTitleAnimation];
      }
    }

    if ((*(&self->_button->_buttonFlags + 2) & 0x80) == 0)
    {
      [(UIButtonLegacyVisualProvider *)self _setupTitleViewRequestingLayout:0];
      [(UILabel *)self->_titleView setAttributedText:v14];
      [(UIView *)self->_titleView setHidden:0];
    }
  }

  else if (v4 && [v4 length])
  {
    text = [(UILabel *)self->_titleView text];
    v9 = text;
    if (text && [text length] && (objc_msgSend(v4, "isEqualToString:", v9) & 1) == 0)
    {
      [(UIButtonLegacyVisualProvider *)self _beginTitleAnimation];
    }

    if ((*(&self->_button->_buttonFlags + 2) & 0x80) == 0)
    {
      [(UIButtonLegacyVisualProvider *)self _setupTitleViewRequestingLayout:0];
      if (([v4 isEqual:v9] & 1) == 0)
      {
        [(UILabel *)self->_titleView setText:v4];
      }

      titleView = self->_titleView;
      v11 = [(UIButton *)self->_button _titleColorForState:state suppressTintColorFollowing:0];
      [(UILabel *)titleView setTextColor:v11];

      v12 = self->_titleView;
      v13 = [(UIButton *)self->_button _shadowColorForState:state];
      [(UILabel *)v12 setShadowColor:v13];

      [(UIView *)self->_titleView setHidden:0];
    }
  }

  else if ((*(&self->_button->_buttonFlags + 2) & 0x80) == 0)
  {
    [(UIView *)self->_titleView setHidden:1];
  }
}

- (void)_setupImageView
{
  if (self->_imageView)
  {
    return;
  }

  button = self->_button;
  [(UIView *)button bounds];
  [(UIButton *)button contentRectForBounds:?];
  [(UIButton *)button imageRectForContentRect:?];
  v5 = [(UIButtonLegacyVisualProvider *)self _createPreparedImageViewWithFrame:?];
  imageView = self->_imageView;
  self->_imageView = v5;

  [(UIImageView *)self->_imageView setSemanticContentAttribute:[(UIView *)self->_button semanticContentAttribute]];
  [(UIImageView *)self->_imageView setContentMode:[(UIButton *)self->_button _imageContentMode]];
  _backgroundView = [(UIButton *)self->_button _backgroundView];
  if (_backgroundView)
  {
    effectiveContentView = [(UIButtonLegacyVisualProvider *)self effectiveContentView];
    v8 = effectiveContentView;
    v9 = self->_imageView;
    selectionView = _backgroundView;
  }

  else
  {
    if (!self->_selectionView)
    {
      contentBackdropView = [(UIButtonLegacyVisualProvider *)self contentBackdropView];

      effectiveContentView2 = [(UIButtonLegacyVisualProvider *)self effectiveContentView];
      v8 = effectiveContentView2;
      v15 = self->_imageView;
      if (contentBackdropView)
      {
        contentBackdropView2 = [(UIButtonLegacyVisualProvider *)self contentBackdropView];
        [v8 insertSubview:v15 above:contentBackdropView2];
      }

      else
      {
        [effectiveContentView2 insertSubview:self->_imageView atIndex:0];
      }

      goto LABEL_7;
    }

    effectiveContentView = [(UIButtonLegacyVisualProvider *)self effectiveContentView];
    v8 = effectiveContentView;
    v9 = self->_imageView;
    selectionView = self->_selectionView;
  }

  [effectiveContentView insertSubview:v9 aboveSubview:selectionView];
LABEL_7:

  v11 = [(UIView *)self->_button viewWithTag:1886548836];
  if (v11)
  {
    effectiveContentView3 = [(UIButtonLegacyVisualProvider *)self effectiveContentView];
    [effectiveContentView3 insertSubview:v11 belowSubview:self->_imageView];
  }
}

- (void)tintColorDidChange
{
  if (![(UIButton *)self->_button _isModernButton]&& ![(UIButton *)self->_button _isCarPlaySystemTypeButton])
  {
    return;
  }

  titleView = self->_titleView;
  if (!titleView || [(UIView *)titleView isHidden])
  {
    v4 = [(UIButton *)self->_button _imageForState:[(UIControl *)self->_button state] applyingConfiguration:0 usesImageForNormalState:0];
    if (!v4 || (imageView = self->_imageView) == 0 || (v10 = v4, v6 = -[UIView isHidden](imageView, "isHidden"), v4 = v10, v6) || (v7 = [v10 renderingMode], v4 = v10, v7 == 1))
    {

      return;
    }

    _defaultRenderingMode = [(UIImageView *)self->_imageView _defaultRenderingMode];

    if (_defaultRenderingMode != 2)
    {
      return;
    }
  }

  [(UIButton *)self->_button setNeedsLayout];
  window = [(UIView *)self->_button window];

  if (window)
  {
    [(UIButtonLegacyVisualProvider *)self _updateTitleView];

    [(UIButtonLegacyVisualProvider *)self _updateImageView];
  }
}

- (void)_layoutContentBackdropView
{
  if ((_UISolariumMetricsEnabled() & 1) == 0)
  {
    contentBackdropView = [(UIButtonLegacyVisualProvider *)self contentBackdropView];
    v4 = contentBackdropView;
    if (contentBackdropView)
    {
      v7 = contentBackdropView;
      isHidden = [contentBackdropView isHidden];
      v4 = v7;
      if ((isHidden & 1) == 0)
      {
        button = self->_button;
        [(UIView *)button bounds];
        [(UIButton *)button backgroundRectForBounds:?];
        [v7 setFrame:?];
        v4 = v7;
      }
    }
  }
}

- (void)_updateImageView
{
  state = [(UIControl *)self->_button state];
  v30 = 0;
  v4 = [(UIButton *)self->_button _imageForState:state applyingConfiguration:0 usesImageForNormalState:&v30 + 1];
  v5 = [(UIImageView *)self->_imageView _checkImageForAdaptation:v4 hasAdapted:&v30];
  image = [(UIImageView *)self->_imageView image];
  v7 = v4;
  v8 = v7;
  if (image == v7)
  {
    v10 = 1;
  }

  else
  {
    if (v7)
    {
      v9 = image == 0;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      v10 = 0;
    }

    else
    {
      v10 = [image isEqual:v7];
    }
  }

  if (v8)
  {
    [(UIButtonLegacyVisualProvider *)self _setupImageView];
    v11 = [(UIButton *)self->_button _preferredConfigurationForState:state];
    [(UIImageView *)self->_imageView setPreferredSymbolConfiguration:v11];

    if ((v30 & 1) == 0)
    {
      [(UIImageView *)self->_imageView setImage:v8];
      if ((v30 & 0x100) == 0 && UIButtonTypeIsModernCircleButton([(UIButton *)self->_button buttonType]))
      {
        traitCollection = [(UIView *)self->_button traitCollection];
        traitCollection2 = [v8 traitCollection];
        v14 = [traitCollection isEqual:traitCollection2];

        if ((v14 & 1) == 0)
        {
          [(UIImageView *)self->_imageView traitCollectionDidChange:0];
        }
      }
    }

    [(UIImageView *)self->_imageView setHidden:0];
    if (HIBYTE(v30) == 1 && [(UIButton *)self->_button adjustsImageWhenHighlighted]&& ![(UIButton *)self->_button showsTouchWhenHighlighted]&& [(UIControl *)self->_button isHighlighted])
    {
      v15 = 2;
    }

    else
    {
      v15 = HIBYTE(v30) == 1 && [(UIButton *)self->_button adjustsImageWhenDisabled]&& ![(UIControl *)self->_button isEnabled];
    }

    [(UIImageView *)self->_imageView setDrawMode:v15];
    if ([(UIButton *)self->_button _isModernButton]|| [(UIButton *)self->_button _isCarPlaySystemTypeButton])
    {
      v16 = [(UIButton *)self->_button _imageColorForState:state];
      tintColor = [(UIView *)self->_imageView tintColor];
      v18 = tintColor;
      if (tintColor != v16 && ([tintColor isEqual:v16] & 1) == 0)
      {
        [(UIView *)self->_imageView setTintColor:v16];
      }
    }

    else
    {
      button = self->_button;
      imageView = self->_imageView;
      if ((*&button->_buttonFlags & 0x10) != 0)
      {
        isEnabled = [(UIControl *)button isEnabled];
        v22 = 0.25;
        if (isEnabled)
        {
          v22 = 1.0;
        }
      }

      else
      {
        v22 = 1.0;
      }

      [(UIView *)imageView setAlpha:v22];
    }

    v24 = self->_button;
    if (*(&v24->_buttonFlags + 3))
    {
      backgroundView = self->_backgroundView;
      traitCollection3 = [(UIView *)v24 traitCollection];
      [(UIImageView *)backgroundView traitCollectionDidChange:traitCollection3];

      *&self->_button->_buttonFlags &= ~0x1000000uLL;
    }
  }

  else if (self->_imageView)
  {
    v19 = [(UIButton *)self->_button _preferredConfigurationForState:state];
    [(UIImageView *)self->_imageView setPreferredSymbolConfiguration:v19];

    [(UIImageView *)self->_imageView setHidden:1];
  }

  v27 = self->_button;
  if ((v10 & 1) == 0)
  {
    [(UIView *)v27 invalidateIntrinsicContentSize];
    v27 = self->_button;
  }

  if ([(UIControl *)v27 _allowsSymbolAnimations])
  {
    v28 = self->_imageView;
    scaleDownEffect = [MEMORY[0x1E6982290] scaleDownEffect];
    if (state)
    {
      [(UIImageView *)v28 addSymbolEffect:scaleDownEffect];
    }

    else
    {
      [(UIImageView *)v28 removeSymbolEffectOfType:scaleDownEffect];
    }
  }
}

- (BOOL)_wantsContentBackdropView
{
  _shouldHaveFloatingAppearance = [(UIButton *)self->_button _shouldHaveFloatingAppearance];
  if (_shouldHaveFloatingAppearance)
  {
    return (*(&self->_button->_buttonFlags + 3) >> 4) & 1;
  }

  return _shouldHaveFloatingAppearance;
}

- (void)_layoutBackgroundImageView
{
  backgroundView = self->_backgroundView;
  if (backgroundView && ![(UIView *)backgroundView isHidden])
  {
    button = self->_button;
    [(UIView *)button bounds];
    [(UIButton *)button backgroundRectForBounds:?];
    v5 = self->_backgroundView;

    [(UIImageView *)v5 setFrame:?];
  }
}

- (BOOL)_shouldUpdatePressedness
{
  if ([(UIButtonLegacyVisualProvider *)self _isExternalRoundedRectButtonWithPressednessState])
  {
    return 1;
  }

  if ([(UIButton *)self->_button _hasDrawingStyle])
  {
    return 0;
  }

  button = self->_button;

  return [(UIButton *)button _isModernButton];
}

- (id)contentBackdropView
{
  if (!self->_contentBackdropView && -[UIButtonLegacyVisualProvider _wantsContentBackdropView](self, "_wantsContentBackdropView") || (objc_opt_respondsToSelector() & 1) != 0 && (-[UIVisualEffectView effect](self->_contentBackdropView, "effect"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 _style], v3, v4 != 5001))
  {
    if ((*&self->_button->_buttonFlags & 0x8000000) != 0)
    {
      v5 = off_1E70E9500;
    }

    else
    {
      v5 = off_1E70EBD48;
    }

    v6 = [(__objc2_class *)*v5 _effectWithStyle:5001 invertAutomaticStyle:1];
    v7 = [[UIVisualEffectView alloc] initWithEffect:v6];
    contentBackdropView = self->_contentBackdropView;
    self->_contentBackdropView = v7;

    [(UIVisualEffectView *)self->_contentBackdropView setAllowsDithering:0];
    if (_UISolariumMetricsEnabled())
    {
      _floatingContentView = [(UIButtonLegacyVisualProvider *)self _floatingContentView];
      [_floatingContentView setSecondaryBackdropView:self->_contentBackdropView];
    }

    else
    {
      v10 = self->_contentBackdropView;
      _floatingContentView2 = [(UIButtonLegacyVisualProvider *)self _floatingContentView];
      [_floatingContentView2 cornerRadius];
      [(UIVisualEffectView *)v10 _setCornerRadius:?];

      _floatingContentView = [(UIButtonLegacyVisualProvider *)self _floatingContentView];
      visualEffectContainerView = [_floatingContentView visualEffectContainerView];
      [visualEffectContainerView addSubview:self->_contentBackdropView];
    }
  }

  else if (self->_contentBackdropView && ![(UIButtonLegacyVisualProvider *)self _wantsContentBackdropView])
  {
    [(UIButtonLegacyVisualProvider *)self _removeContentBackdropView];
  }

  v13 = self->_contentBackdropView;

  return v13;
}

- (void)layoutSubviews
{
  state = [(UIControl *)self->_button state];
  _floatingContentView = [(UIButtonLegacyVisualProvider *)self _floatingContentView];
  [(UIView *)self->_button bounds];
  [_floatingContentView setFrame:?];

  [(UIButtonLegacyVisualProvider *)self _updateContentBackdropView];
  [(UIButtonLegacyVisualProvider *)self _layoutContentBackdropView];
  [(UIButtonLegacyVisualProvider *)self _updateBackgroundImageView];
  [(UIButtonLegacyVisualProvider *)self _layoutBackgroundImageView];
  [(UIButtonLegacyVisualProvider *)self _updateImageView];
  [(UIButtonLegacyVisualProvider *)self _updateTitleView];
  if (!self->_avoidDefaultTitleAndImageLayout)
  {
    [(UIButtonLegacyVisualProvider *)self _layoutImageAndTitleViews];
  }

  [(UIButtonLegacyVisualProvider *)self _applyAppropriateTouchInsetsForButton];
  v5 = [(UIView *)self->_button viewWithTag:1886548836];
  [(UIButton *)self->_button pressFeedbackPosition];
  [v5 setCenter:?];
  [v5 setHidden:(*&self->_button->_buttonFlags & 0x20) == 0];
  _hasDrawingStyle = [(UIButton *)self->_button _hasDrawingStyle];
  maskAnimationView = self->_maskAnimationView;
  if (_hasDrawingStyle)
  {
    [(UIView *)maskAnimationView setHidden:0];
    [(UIButtonLegacyVisualProvider *)self _setupDrawingStyleForState:state];
  }

  else if (maskAnimationView)
  {
    [(UIView *)maskAnimationView setHidden:1];
  }

  if ([(UIButtonLegacyVisualProvider *)self _shouldUpdatePressedness])
  {
    [(UIButtonLegacyVisualProvider *)self _updateSelectionViewForState:state];
    [(UIButtonLegacyVisualProvider *)self _setupPressednessForState:state];
  }

  self->_button->_lastDrawingControlState = state;
  *&self->_button->_buttonFlags &= ~0x40000000uLL;
  _safeHoverStyle = [(UIControl *)self->_button _safeHoverStyle];
  [_safeHoverStyle _invalidateAutomaticHoverShape];

  v9 = +[_UIButtonSettingsDomain rootSettings];
  highlightMode = [v9 highlightMode];

  if (!highlightMode)
  {
    goto LABEL_18;
  }

  NSClassFromString(&cfstr_Uimodernbarbut.isa);
  isKindOfClass = objc_opt_isKindOfClass();
  v12 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v13 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];

  if (isKindOfClass)
  {
    v14 = +[_UIButtonSettingsDomain rootSettings];
    highlightIgnoresBars = [v14 highlightIgnoresBars];

    if (highlightIgnoresBars)
    {
      goto LABEL_18;
    }
  }

  else if (v12 != v13)
  {
    v16 = +[_UIButtonSettingsDomain rootSettings];
    highlightSubclasses = [v16 highlightSubclasses];

    if (!highlightSubclasses)
    {
LABEL_18:
      highlightLayer = self->_highlightLayer;
      if (highlightLayer)
      {
        [(CALayer *)highlightLayer removeFromSuperlayer];
        v19 = self->_highlightLayer;
        self->_highlightLayer = 0;
      }

      return;
    }
  }

  [(UIButtonLegacyVisualProvider *)self _layoutHighlightLayer];
}

- (void)_updateBackgroundImageView
{
  state = [(UIControl *)self->_button state];
  v14 = 0;
  v4 = [(UIButton *)self->_button _backgroundForState:state usesBackgroundForNormalState:&v14];
  v5 = [(UIImageView *)self->_backgroundView _checkImageForAdaptation:v4 hasAdapted:0];
  if (v4)
  {
    _setupBackgroundView = [(UIButtonLegacyVisualProvider *)self _setupBackgroundView];
    [(UIImageView *)self->_backgroundView setImage:v4];
    if ((v14 & 1) == 0 && UIButtonTypeIsModernCircleButton([(UIButton *)self->_button buttonType]))
    {
      traitCollection = [(UIView *)self->_button traitCollection];
      traitCollection2 = [v4 traitCollection];
      v9 = [traitCollection isEqual:traitCollection2];

      if ((v9 & 1) == 0)
      {
        [(UIImageView *)self->_backgroundView traitCollectionDidChange:0];
      }
    }

    [(UIImageView *)self->_backgroundView setHidden:0];
    if (v14 == 1 && [(UIButton *)self->_button adjustsImageWhenHighlighted]&& ![(UIButton *)self->_button showsTouchWhenHighlighted]&& [(UIControl *)self->_button isHighlighted])
    {
      v10 = 2;
    }

    else
    {
      v10 = v14 == 1 && [(UIButton *)self->_button adjustsImageWhenDisabled]&& ![(UIControl *)self->_button isEnabled];
    }

    [(UIImageView *)self->_backgroundView setDrawMode:v10];
    button = self->_button;
    if ((*(&button->_buttonFlags + 3) & 2) != 0)
    {
      backgroundView = self->_backgroundView;
      traitCollection3 = [(UIView *)button traitCollection];
      [(UIImageView *)backgroundView traitCollectionDidChange:traitCollection3];

      *&self->_button->_buttonFlags &= ~0x2000000uLL;
    }
  }

  else
  {
    [(UIImageView *)self->_backgroundView setHidden:1];
  }
}

- (void)_layoutImageAndTitleViews
{
  if (![(NSArray *)self->_contentConstraints count])
  {
    button = self->_button;
    [(UIView *)button bounds];
    [(UIButton *)button contentRectForBounds:?];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    imageView = self->_imageView;
    if (imageView)
    {
      v13 = ![(UIView *)imageView isHidden];
    }

    else
    {
      v13 = 0;
    }

    titleView = self->_titleView;
    if (titleView)
    {
      v15 = ![(UIView *)titleView isHidden];
    }

    else
    {
      v15 = 0;
    }

    v16 = self->_button;
    if ((*(&v16->_buttonFlags + 4) & 4) != 0)
    {
      if (v13)
      {
        v18 = self->_imageView;
        [(UIButton *)v16 imageRectForContentRect:v5, v7, v9, v11];
        [(UIImageView *)v18 setFrame:?];
      }

      if (v15)
      {
        v19 = self->_titleView;
        [(UIButton *)self->_button titleRectForContentRect:v5, v7, v9, v11];

        [(UILabel *)v19 setFrame:?];
      }
    }

    else if ((v13 | v15))
    {
      v17 = *(MEMORY[0x1E695F058] + 16);
      v22 = *MEMORY[0x1E695F058];
      v23 = v17;
      v20 = v22;
      v21 = v17;
      [(UIButtonLegacyVisualProvider *)self _deriveTitleRect:&v20 imageRect:&v22 fromContentRect:0 calculatePositionForEmptyTitle:v5, v7, v9, v11];
      if (v13)
      {
        [(UIImageView *)self->_imageView setFrame:v22, v23];
      }

      if (v15)
      {
        [(UILabel *)self->_titleView setFrame:v20, v21];
      }
    }
  }
}

- (void)_applyAppropriateTouchInsetsForButton
{
  button = self->_button;
  buttonFlags = button->_buttonFlags;
  if (UIButtonTypeIsModernCircleButton((*&buttonFlags >> 6)) || (*&buttonFlags & 0x3FC0) == 0x1C0)
  {
    [(UIView *)button bounds];
    v5 = self->_button;

    [(UIView *)v5 _setTouchInsets:?];
  }
}

- (BOOL)_isExternalRoundedRectButtonWithPressednessState
{
  if (![(UIButton *)self->_button _isCarPlaySystemTypeButton]|| [(UIButton *)self->_button _isEffectivelyDisabledExternalButton])
  {
    return 0;
  }

  button = self->_button;

  return [(UIControl *)button isEnabled];
}

- (void)dealloc
{
  [(_UIButtonMaskAnimationView *)self->_maskAnimationView setDelegate:0];
  v3.receiver = self;
  v3.super_class = UIButtonLegacyVisualProvider;
  [(UIButtonLegacyVisualProvider *)&v3 dealloc];
}

- (UIEdgeInsets)alignmentRectInsets
{
  button = self->_button;
  v4 = 0.0;
  if (UIButtonTypeIsModernCircleButton((*&button->_buttonFlags >> 6)))
  {
    v5 = 0.0;
    v6 = 0.0;
    v7 = 0.0;
    goto LABEL_18;
  }

  traitCollection = [(UIView *)button traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  v10 = self->_button;
  v11 = (*&v10->_buttonFlags >> 6);
  v5 = 1.0;
  v6 = 0.0;
  v7 = 0.0;
  if ((v11 - 3) < 2)
  {
    goto LABEL_18;
  }

  if (v11 == 5)
  {
    v6 = 3.0;
    v5 = 2.0;
    if (userInterfaceIdiom == 5)
    {
      v4 = 2.0;
      goto LABEL_10;
    }

    v6 = 4.0;
    v4 = 3.0;
LABEL_15:
    v7 = 3.0;
    goto LABEL_18;
  }

  if (v11 == 2)
  {
    if (userInterfaceIdiom == 5)
    {
      v4 = 2.0;
      v5 = 3.0;
      v6 = 3.0;
LABEL_10:
      v7 = 2.0;
      goto LABEL_18;
    }

    v4 = 3.0;
    v5 = 4.0;
    v6 = 4.0;
    goto LABEL_15;
  }

  v12 = [(UIButton *)v10 backgroundImageForState:0];
  v13 = v12;
  if (v12)
  {
    [v12 alignmentRectInsets];
    v5 = v14;
    v4 = v15;
    v6 = v16;
    v7 = v17;
  }

  else
  {
    v5 = 0.0;
  }

LABEL_18:
  v18 = v5;
  v19 = v4;
  v20 = v6;
  v21 = v7;
  result.right = v21;
  result.bottom = v20;
  result.left = v19;
  result.top = v18;
  return result;
}

- (id)_viewForBaselineLayout
{
  _titleOrImageViewForBaselineLayout = [(UIButtonLegacyVisualProvider *)self _titleOrImageViewForBaselineLayout];
  if (!_titleOrImageViewForBaselineLayout)
  {
    if ([(UIButton *)self->_button _likelyToHaveTitle])
    {
      [(UIButtonLegacyVisualProvider *)self _setupTitleViewRequestingLayout:0];
      _titleOrImageViewForBaselineLayout = [(UIButton *)self->_button _titleView];
    }

    else
    {
      _titleOrImageViewForBaselineLayout = 0;
    }
  }

  return _titleOrImageViewForBaselineLayout;
}

- (void)updateConstraints
{
  _titleOrImageViewForBaselineLayout = [(UIButtonLegacyVisualProvider *)self _titleOrImageViewForBaselineLayout];
  v4 = _titleOrImageViewForBaselineLayout;
  if (_titleOrImageViewForBaselineLayout && ([_titleOrImageViewForBaselineLayout translatesAutoresizingMaskIntoConstraints] & 1) == 0 && !self->_contentConstraints)
  {
    v104 = [(UIButton *)self->_button _imageForState:[(UIControl *)self->_button state] applyingConfiguration:0 usesImageForNormalState:0];
    if (v104)
    {
      _imageView = [(UIButton *)self->_button _imageView];
    }

    else
    {
      _imageView = 0;
    }

    [_imageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)self->_button contentHuggingPriorityForAxis:0];
    *&v7 = v6 + -1.0;
    [_imageView setContentCompressionResistancePriority:0 forAxis:v7];
    [(UIView *)self->_button contentHuggingPriorityForAxis:1];
    *&v9 = v8 + -1.0;
    [_imageView setContentCompressionResistancePriority:1 forAxis:v9];
    [(UIView *)self->_button contentCompressionResistancePriorityForAxis:0];
    *&v11 = v10 + -1.0;
    [_imageView setContentHuggingPriority:0 forAxis:v11];
    [(UIView *)self->_button contentCompressionResistancePriorityForAxis:1];
    *&v13 = v12 + -1.0;
    [_imageView setContentHuggingPriority:1 forAxis:v13];
    v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v15 = 0;
    v16 = 0;
    v103 = _imageView;
    if (_imageView)
    {
      v17 = v4 == _imageView;
    }

    else
    {
      v17 = 1;
    }

    v18 = v17;
    v91 = v18;
    if (!v17)
    {
      v16 = [(UIView *)self->_button viewWithTag:12000274];
      if (v16)
      {
        v15 = [(UIView *)self->_button viewWithTag:-12000274];
      }

      else
      {
        v15 = 0;
      }

      contentHorizontalAlignment = [(UIControl *)self->_button contentHorizontalAlignment];
      if (v16 || contentHorizontalAlignment)
      {
        if ([(UIControl *)self->_button contentHorizontalAlignment])
        {
          [v16 removeFromSuperview];

          [v15 removeFromSuperview];
          v15 = 0;
          v16 = 0;
        }
      }

      else
      {
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __49__UIButtonLegacyVisualProvider_updateConstraints__block_invoke;
        aBlock[3] = &unk_1E710B8F8;
        aBlock[4] = self;
        v20 = _Block_copy(aBlock);
        v16 = v20[2](v20, 12000274);
        v21 = v20[2](v20, -12000274);

        v15 = v21;
      }
    }

    firstValue = v16;
    v101 = v15;
    v102 = v14;
    userInterfaceLayoutDirection = [UIApp userInterfaceLayoutDirection];
    [(UIButton *)self->_button _combinedContentPaddingInsets];
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v95 = v28;
    [(UIButton *)self->_button imageEdgeInsets];
    v30 = v29;
    v32 = v31;
    v34 = v33;
    v36 = v35;
    [(UIButton *)self->_button titleEdgeInsets];
    v93 = v37;
    v96 = v38;
    v97 = v39;
    v41 = v40;
    v105 = MEMORY[0x1E695DF90];
    v42 = v23 + v30;
    *&v42 = v23 + v30;
    v99 = [MEMORY[0x1E696AD98] numberWithFloat:v42];
    v43 = v25 + v32;
    *&v43 = v25 + v32;
    v44 = [MEMORY[0x1E696AD98] numberWithFloat:v43];
    v45 = v27 + v34;
    v92 = v27 + v34;
    *&v45 = v27 + v34;
    v46 = [MEMORY[0x1E696AD98] numberWithFloat:v45];
    v47 = v95 + v36;
    *&v47 = v95 + v36;
    v48 = [MEMORY[0x1E696AD98] numberWithFloat:v47];
    v49 = v23 + v93;
    v94 = v49;
    *&v49 = v49;
    v50 = [MEMORY[0x1E696AD98] numberWithFloat:v49];
    *&v51 = v25 + v96;
    v52 = [MEMORY[0x1E696AD98] numberWithFloat:v51];
    HIDWORD(v53) = HIDWORD(v97);
    v54 = v27 + v97;
    *&v53 = v54;
    v55 = [MEMORY[0x1E696AD98] numberWithFloat:v53];
    *&v56 = v95 + v41;
    v57 = [MEMORY[0x1E696AD98] numberWithFloat:v56];
    v58 = v32 + v41;
    if (userInterfaceLayoutDirection != 1)
    {
      v58 = v36 + v96;
    }

    *&v58 = v58;
    v59 = [MEMORY[0x1E696AD98] numberWithFloat:v58];
    v106 = [v105 dictionaryWithObjectsAndKeys:{v99, @"topImageInset", v44, @"leftImageInset", v46, @"bottomImageInset", v48, @"rightImageInset", v50, @"topTitleInset", v52, @"leftTitleInset", v55, @"bottomTitleInset", v57, @"rightTitleInset", v59, @"interImageTitleSpace", 0}];

    v60 = _NSDictionaryOfVariableBindings(&cfstr_Layoutview.isa, v4, 0);
    v61 = [v60 mutableCopy];

    if (v103)
    {
      v62 = _NSDictionaryOfVariableBindings(&cfstr_Imageview.isa, v103, 0);
      [v61 addEntriesFromDictionary:v62];
    }

    if (firstValue)
    {
      v63 = _NSDictionaryOfVariableBindings(&cfstr_LeftspacerRigh.isa, firstValue, v101, 0);
      [v61 addEntriesFromDictionary:v63];
    }

    effectiveContentHorizontalAlignment = [(UIControl *)self->_button effectiveContentHorizontalAlignment];
    v65 = v106;
    if (effectiveContentHorizontalAlignment > UIControlContentHorizontalAlignmentLeft)
    {
      if (effectiveContentHorizontalAlignment == UIControlContentHorizontalAlignmentRight)
      {
        v66 = @"|-(>=leftImageInset)-[imageView]-(interImageTitleSpace)-[layoutView]-(rightTitleInset)-|";
        if (v4 == v103)
        {
          v66 = @"|-(>=leftImageInset)-[layoutView]-(rightImageInset)-|";
        }

        v67 = @"|-(>=leftTitleInset)-[layoutView]-(rightTitleInset)-|";
        goto LABEL_48;
      }

      if (effectiveContentHorizontalAlignment == UIControlContentHorizontalAlignmentFill)
      {
        if (v103)
        {
          v68 = @"|-(leftImageInset)-[layoutView]-(rightImageInset)-|";
        }

        else
        {
          v68 = @"|-(leftTitleInset)-[layoutView]-(rightTitleInset)-|";
        }

        if ((v91 & 1) == 0)
        {
          [v103 intrinsicContentSize];
          if (v69 == 0.0)
          {
            v73 = 1.0;
          }

          else
          {
            [v4 intrinsicContentSize];
            v71 = v70;
            [v103 intrinsicContentSize];
            v73 = v71 / v72;
          }

          v90 = [MEMORY[0x1E69977A0] constraintWithItem:v4 attribute:7 relatedBy:0 toItem:v103 attribute:7 multiplier:v73 constant:0.0];
          [v102 addObject:v90];

          v68 = @"|-(leftImageInset)-[imageView]-(interImageTitleSpace)-[layoutView]-(rightTitleInset)-|";
        }

        goto LABEL_51;
      }
    }

    else if (effectiveContentHorizontalAlignment)
    {
      if (effectiveContentHorizontalAlignment == UIControlContentHorizontalAlignmentLeft)
      {
        v66 = @"|-(leftImageInset)-[imageView]-(interImageTitleSpace)-[layoutView]-(>=rightTitleInset)-|";
        if (v4 == v103)
        {
          v66 = @"|-(leftImageInset)-[layoutView]-(>=rightImageInset)-|";
        }

        v67 = @"|-(leftTitleInset)-[layoutView]-(>=rightTitleInset)-|";
LABEL_48:
        if (v103)
        {
          v68 = v66;
        }

        else
        {
          v68 = v67;
        }

LABEL_51:
        if (dyld_program_sdk_at_least())
        {
          v74 = 0x10000;
        }

        else
        {
          v74 = 0;
        }

        v75 = [MEMORY[0x1E69977A0] constraintsWithVisualFormat:v68 options:v74 metrics:v106 views:v61];
        [v102 addObjectsFromArray:v75];

LABEL_59:
        effectiveContentVerticalAlignment = [(UIControl *)self->_button effectiveContentVerticalAlignment];
        if (effectiveContentVerticalAlignment > 2)
        {
          if ((effectiveContentVerticalAlignment - 4) >= 2)
          {
            if (effectiveContentVerticalAlignment != 3)
            {
              goto LABEL_76;
            }

            v83 = @"V:|-(topTitleInset)-[layoutView]-(bottomTitleInset)-|";
            v84 = @"V:|-(topImageInset)-[imageView]-(bottomImageInset)-|";
            goto LABEL_72;
          }
        }

        else if (effectiveContentVerticalAlignment)
        {
          if (effectiveContentVerticalAlignment != 1)
          {
            if (effectiveContentVerticalAlignment == 2)
            {
              v83 = @"V:|-(>=topTitleInset)-[layoutView]-(bottomTitleInset)-|";
              v84 = @"V:|-(>=topImageInset)-[imageView]-(bottomImageInset)-|";
              goto LABEL_72;
            }

LABEL_76:
            v88 = [MEMORY[0x1E69977A0] constraintWithItem:v4 attribute:7 relatedBy:-1 toItem:self->_button attribute:7 multiplier:1.0 constant:0.0];
            [v102 addObject:v88];

            v89 = [MEMORY[0x1E69977A0] constraintWithItem:v4 attribute:8 relatedBy:-1 toItem:self->_button attribute:8 multiplier:1.0 constant:0.0];
            [v102 addObject:v89];

            [(UIView *)self->_button addConstraints:v102];
            [(UIButtonLegacyVisualProvider *)self _setContentConstraints:v102];

            goto LABEL_77;
          }

          v83 = @"V:|-(topTitleInset)-[layoutView]-(>=bottomTitleInset)-|";
          v84 = @"V:|-(topImageInset)-[imageView]-(>=bottomImageInset)-|";
LABEL_72:
          if (v103)
          {
            v87 = [MEMORY[0x1E69977A0] constraintsWithVisualFormat:v84 options:0 metrics:v106 views:v61];
            [v102 addObjectsFromArray:v87];

            v65 = v106;
            if (v4 == v103)
            {
              goto LABEL_76;
            }
          }

          v86 = [MEMORY[0x1E69977A0] constraintsWithVisualFormat:v83 options:0 metrics:v65 views:v61];
          [v102 addObjectsFromArray:v86];
          goto LABEL_75;
        }

        if (v103)
        {
          v85 = [MEMORY[0x1E69977A0] constraintWithItem:v103 attribute:10 relatedBy:0 toItem:self->_button attribute:10 multiplier:1.0 constant:(v23 + v30 - v92) * 0.5];
          [v102 addObject:v85];
        }

        if (v4 == v103)
        {
          goto LABEL_76;
        }

        v86 = [MEMORY[0x1E69977A0] constraintWithItem:v4 attribute:10 relatedBy:0 toItem:self->_button attribute:10 multiplier:1.0 constant:(v94 - v54) * 0.5];
        [v102 addObject:v86];
LABEL_75:

        goto LABEL_76;
      }
    }

    else
    {
      if (v103)
      {
        if (v4 != v103)
        {
          v68 = @"|-(leftImageInset)-[leftSpacer][imageView]-(interImageTitleSpace)-[layoutView][rightSpacer(>=leftSpacer,==leftSpacer@200)]-(rightTitleInset)-|";
          goto LABEL_51;
        }

        v76 = MEMORY[0x1E69977A0];
        button = self->_button;
        v78 = v25 + v32 + (v95 + v36) * -0.5;
        v79 = 1.0;
        v80 = v103;
      }

      else
      {
        v76 = MEMORY[0x1E69977A0];
        button = self->_button;
        v78 = (v25 + v96 - (v95 + v41)) * 0.5;
        v79 = 1.0;
        v80 = v4;
      }

      v81 = [v76 constraintWithItem:v80 attribute:9 relatedBy:0 toItem:button attribute:9 multiplier:v79 constant:v78];
      [v102 addObject:v81];
    }

    dyld_program_sdk_at_least();
    goto LABEL_59;
  }

LABEL_77:
}

- (id)_titleOrImageViewForBaselineLayout
{
  state = [(UIControl *)self->_button state];
  v5 = [(UIButton *)self->_button _imageForState:state applyingConfiguration:0 usesImageForNormalState:0];
  if (!-[UIButton _canHaveTitle](self->_button, "_canHaveTitle") && ![v5 hasBaseline])
  {
    _imageView = 0;
    goto LABEL_13;
  }

  if (v5)
  {
    [(UIButtonLegacyVisualProvider *)self _setupImageView];
  }

  v6 = [(UIButton *)self->_button titleForState:state];
  if (!v6)
  {
    v2 = [(UIButton *)self->_button _attributedTitleForState:state];
    if (!v2)
    {
      _imageView = [(UIButton *)self->_button _imageView];
LABEL_11:

      goto LABEL_12;
    }
  }

  _imageView = [(UIButton *)self->_button _titleView];
  if (!v6)
  {
    goto LABEL_11;
  }

LABEL_12:

  [(UIView *)self->_button contentCompressionResistancePriorityForAxis:0];
  v9 = fmax(v8 + -0.5, 0.5);
  [(UIView *)self->_button contentCompressionResistancePriorityForAxis:1];
  v11 = v10 + -0.5;
  v12 = fmax(v11, 0.5);
  *&v11 = v9;
  [_imageView setContentCompressionResistancePriority:0 forAxis:v11];
  *&v13 = v12;
  [_imageView setContentCompressionResistancePriority:1 forAxis:v13];
LABEL_13:

  return _imageView;
}

- (int64_t)lineBreakMode
{
  titleView = self->_titleView;
  if (titleView)
  {
    return [(UILabel *)titleView lineBreakMode];
  }

  else
  {
    return 5;
  }
}

- (void)_invalidateContentConstraints
{
  if (self->_contentConstraints)
  {
    [(UIView *)self->_button removeConstraints:?];
  }

  [(UIButtonLegacyVisualProvider *)self _setContentConstraints:0];
}

- (id)_setupBackgroundView
{
  if (self->_backgroundView)
  {
    v4 = 0;
  }

  else
  {
    v16[13] = v2;
    v17 = v3;
    button = self->_button;
    [(UIView *)button bounds];
    [(UIButton *)button backgroundRectForBounds:?];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __52__UIButtonLegacyVisualProvider__setupBackgroundView__block_invoke;
    v16[3] = &unk_1E70F3B20;
    v16[4] = self;
    v16[5] = v8;
    v16[6] = v9;
    v16[7] = v10;
    v16[8] = v11;
    [UIView performWithoutAnimation:v16];
    [(UIButtonLegacyVisualProvider *)self _updateEffectsForImageView:self->_backgroundView background:1];
    selectionView = self->_selectionView;
    effectiveContentView = [(UIButtonLegacyVisualProvider *)self effectiveContentView];
    v14 = effectiveContentView;
    backgroundView = self->_backgroundView;
    if (selectionView)
    {
      [effectiveContentView insertSubview:backgroundView aboveSubview:self->_selectionView];
    }

    else
    {
      [effectiveContentView insertSubview:backgroundView atIndex:0];
    }

    v4 = self->_backgroundView;
  }

  return v4;
}

void __52__UIButtonLegacyVisualProvider__setupBackgroundView__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _newImageViewWithFrame:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;
}

- (void)_beginTitleAnimation
{
  button = self->_button;
  if ((*(&button->_buttonFlags + 4) & 2) == 0)
  {
    if ([(UIButton *)button _isModernButton])
    {
      [(UIView *)self->_titleView alpha];
      if (v4 != 0.0)
      {
        if (+[UIView areAnimationsEnabled])
        {
          [(UIButton *)self->_button _setTitleFrozen:1];
          v5 = self->_button;
          v10[0] = MEMORY[0x1E69E9820];
          v10[1] = 3221225472;
          v10[2] = __52__UIButtonLegacyVisualProvider__beginTitleAnimation__block_invoke;
          v10[3] = &unk_1E70F3590;
          v10[4] = self;
          v7[0] = MEMORY[0x1E69E9820];
          v7[1] = 3221225472;
          v7[2] = __52__UIButtonLegacyVisualProvider__beginTitleAnimation__block_invoke_2;
          v7[3] = &unk_1E70F3C60;
          v8 = v5;
          selfCopy = self;
          v6 = v5;
          [UIView animateWithDuration:327684 delay:v10 options:v7 animations:0.17 completion:0.0];
        }
      }
    }
  }
}

- (void)_prepareMaskAnimationViewIfNecessary
{
  if (!self->_maskAnimationView)
  {
    v4 = objc_alloc_init(_UIButtonMaskAnimationView);
    maskAnimationView = self->_maskAnimationView;
    self->_maskAnimationView = v4;

    [(_UIButtonMaskAnimationView *)self->_maskAnimationView setDelegate:self];
    [(UIView *)self->_maskAnimationView setUserInteractionEnabled:0];
    [(_UIButtonMaskAnimationView *)self->_maskAnimationView setHardEdge:[(UIButton *)self->_button _externalFlatEdge]];
    effectiveContentView = [(UIButtonLegacyVisualProvider *)self effectiveContentView];
    [effectiveContentView insertSubview:self->_maskAnimationView atIndex:0];
  }
}

- (CGRect)_highlightBoundsForDrawingStyle
{
  [(UIButton *)self->_button _clippedHighlightBounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  _externalFlatEdge = [(UIButton *)self->_button _externalFlatEdge];
  [(UIButton *)self->_button _highlightCornerRadius];
  if (_externalFlatEdge > 3)
  {
    v15 = v10 + v12;
    v16 = v8 + v12;
    if (_externalFlatEdge != 8)
    {
      v16 = v8;
    }

    if (_externalFlatEdge == 4)
    {
      v10 = v15;
    }

    else
    {
      v8 = v16;
    }
  }

  else if (_externalFlatEdge == 1)
  {
    v6 = v6 - v12;
    v10 = v10 + v12;
  }

  else
  {
    v13 = v4 - v12;
    v14 = v8 + v12;
    if (_externalFlatEdge == 2)
    {
      v8 = v14;
      v4 = v13;
    }
  }

  v17 = v4;
  v18 = v6;
  v19 = v8;
  v20 = v10;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (CGRect)highlightBounds
{
  [(UIView *)self->_button bounds];
  x = v3;
  y = v5;
  width = v7;
  height = v9;
  if (![(UIButton *)self->_button _isCarPlaySystemTypeButton])
  {
    [(UIButton *)self->_button titleRectForContentRect:x, y, width, height];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    [(UIButton *)self->_button imageRectForContentRect:x, y, width, height];
    v37 = v20;
    v38 = v19;
    v35 = v22;
    v36 = v21;
    x = *MEMORY[0x1E695F050];
    y = *(MEMORY[0x1E695F050] + 8);
    width = *(MEMORY[0x1E695F050] + 16);
    height = *(MEMORY[0x1E695F050] + 24);
    v39.origin.x = v12;
    v39.origin.y = v14;
    v39.size.width = v16;
    v39.size.height = v18;
    if (!CGRectIsEmpty(v39))
    {
      [(UIButtonLegacyVisualProvider *)self _highlightRectForTextRect:v12, v14, v16, v18];
      v47.origin.x = v23;
      v47.origin.y = v24;
      v47.size.width = v25;
      v47.size.height = v26;
      v40.origin.x = x;
      v40.origin.y = y;
      v40.size.width = width;
      v40.size.height = height;
      v41 = CGRectUnion(v40, v47);
      x = v41.origin.x;
      y = v41.origin.y;
      width = v41.size.width;
      height = v41.size.height;
    }

    v42.origin.x = v38;
    v42.origin.y = v37;
    v42.size.width = v36;
    v42.size.height = v35;
    if (!CGRectIsEmpty(v42))
    {
      [(UIButtonLegacyVisualProvider *)self _highlightRectForImageRect:v38, v37, v36, v35];
      v48.origin.x = v27;
      v48.origin.y = v28;
      v48.size.width = v29;
      v48.size.height = v30;
      v43.origin.x = x;
      v43.origin.y = y;
      v43.size.width = width;
      v43.size.height = height;
      v44 = CGRectUnion(v43, v48);
      x = v44.origin.x;
      y = v44.origin.y;
      width = v44.size.width;
      height = v44.size.height;
    }

    v45.origin.x = x;
    v45.origin.y = y;
    v45.size.width = width;
    v45.size.height = height;
    if (CGRectIsEmpty(v45))
    {
      x = *MEMORY[0x1E695F058];
      y = *(MEMORY[0x1E695F058] + 8);
      width = *(MEMORY[0x1E695F058] + 16);
      height = *(MEMORY[0x1E695F058] + 24);
    }
  }

  v31 = x;
  v32 = y;
  v33 = width;
  v34 = height;
  result.size.height = v34;
  result.size.width = v33;
  result.origin.y = v32;
  result.origin.x = v31;
  return result;
}

- (void)_updateMaskState
{
  if (![(UIButton *)self->_button _hasDrawingStyle])
  {
    goto LABEL_8;
  }

  layer = [(UIView *)self->_maskAnimationView layer];
  v4 = [layer animationForKey:@"borderWidth"];
  if (!v4)
  {
    [(_UIButtonMaskAnimationView *)self->_maskAnimationView borderWidth];
    if (v5 <= 1.0)
    {

LABEL_8:
      [(UIImageView *)self->_imageView _setMasksTemplateImages:0];
      [(UIImageView *)self->_backgroundView _setMasksTemplateImages:0];
LABEL_9:
      v7 = 0;
      goto LABEL_10;
    }
  }

  _isCarPlaySystemTypeButton = [(UIButton *)self->_button _isCarPlaySystemTypeButton];

  [(UIImageView *)self->_imageView _setMasksTemplateImages:!_isCarPlaySystemTypeButton];
  [(UIImageView *)self->_backgroundView _setMasksTemplateImages:!_isCarPlaySystemTypeButton];
  if (_isCarPlaySystemTypeButton || [(UIButton *)self->_button _hasHighlightColor])
  {
    goto LABEL_9;
  }

  v7 = ![(UIButton *)self->_button _isCarPlaySystemTypeButton];
LABEL_10:
  layer2 = [(UIView *)self->_titleView layer];
  compositingFilter = [layer2 compositingFilter];

  if (v7 && !compositingFilter)
  {
    layer4 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979D98]];
    layer3 = [(UIView *)self->_titleView layer];
    [layer3 setCompositingFilter:layer4];

LABEL_18:

    return;
  }

  if (compositingFilter)
  {
    v11 = v7;
  }

  else
  {
    v11 = 1;
  }

  if ((v11 & 1) == 0)
  {
    layer4 = [(UIView *)self->_titleView layer];
    [layer4 setCompositingFilter:0];
    goto LABEL_18;
  }
}

+ (id)visualProviderForButton:(id)button
{
  v3 = objc_opt_new();

  return v3;
}

- (void)setReversesTitleShadowWhenHighlighted:(BOOL)highlighted
{
  titleView = self->_titleView;
  if (highlighted)
  {
    *&highlighted = [(UIControl *)self->_button isHighlighted];
  }

  [(UILabel *)titleView setReverseShadow:highlighted];
}

- (void)setSemanticContentAttribute:(int64_t)attribute
{
  _backgroundView = [(UIButton *)self->_button _backgroundView];
  [_backgroundView setSemanticContentAttribute:attribute];

  _imageView = [(UIButton *)self->_button _imageView];
  [_imageView setSemanticContentAttribute:attribute];
}

- (void)setSelected:(BOOL)selected
{
  _floatingContentView = [(UIButtonLegacyVisualProvider *)self _floatingContentView];
  [_floatingContentView setControlState:-[UIControl state](self->_button animated:{"state"), +[UIView _isInAnimationBlock](UIView, "_isInAnimationBlock")}];
}

- (void)populateArchivedSubviews:(id)subviews
{
  v8[7] = *MEMORY[0x1E69E9840];
  subviewsCopy = subviews;
  v8[5] = [(UIView *)self->_button viewWithTag:1886548836, self->_titleView, self->_imageView, self->_backgroundView, self->_maskAnimationView, self->_selectionView];
  v5 = self->_contentBackdropView;
  v6 = 0;
  v8[6] = v5;
  do
  {
    if (v8[v6])
    {
      [subviewsCopy removeObject:?];
    }

    ++v6;
  }

  while (v6 != 7);
  for (i = 6; i != -1; --i)
  {
  }
}

- (id)encodableSubviews
{
  effectiveContentView = [(UIButtonLegacyVisualProvider *)self effectiveContentView];
  subviews = [effectiveContentView subviews];

  return subviews;
}

- (void)cleanupForVisualProvider:(id)provider
{
  providerCopy = provider;
  [(UIView *)self->_backgroundView removeFromSuperview];
  if (_UISolariumMetricsEnabled())
  {
    [(_UIFloatingContentView *)self->_floatingContentView removeSecondaryBackdropView];
  }

  else
  {
    [(UIView *)self->_contentBackdropView removeFromSuperview];
  }

  [(UIView *)self->_floatingContentView removeFromSuperview];
  [(UIView *)self->_titleView removeFromSuperview];
  [(UIView *)self->_imageView removeFromSuperview];
  [(UIView *)self->_selectionView removeFromSuperview];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = providerCopy;
    objc_storeStrong(v4 + 2, self->_backgroundView);
    objc_storeStrong(v4 + 3, self->_floatingContentView);
    objc_storeStrong(v4 + 4, self->_contentBackdropView);
    objc_storeStrong(v4 + 6, self->_titleView);
    objc_storeStrong(v4 + 5, self->_imageView);
    objc_storeStrong(v4 + 7, self->_selectionView);
    objc_storeStrong(v4 + 8, self->_highlightLayer);
    objc_storeStrong(v4 + 9, self->_maskAnimationView);
    WeakRetained = objc_loadWeakRetained(&self->_effectiveContentView);
    objc_storeWeak(v4 + 10, WeakRetained);

    effectiveContentView = [v4 effectiveContentView];
    [effectiveContentView addSubview:self->_backgroundView];

    effectiveContentView2 = [v4 effectiveContentView];
    [effectiveContentView2 addSubview:self->_floatingContentView];

    if (_UISolariumMetricsEnabled())
    {
      [(_UIFloatingContentView *)self->_floatingContentView setSecondaryBackdropView:self->_contentBackdropView];
    }

    else
    {
      _floatingContentView = [(UIButtonLegacyVisualProvider *)self _floatingContentView];
      visualEffectContainerView = [_floatingContentView visualEffectContainerView];
      [visualEffectContainerView addSubview:self->_contentBackdropView];
    }

    effectiveContentView3 = [v4 effectiveContentView];
    [effectiveContentView3 addSubview:self->_titleView];

    effectiveContentView4 = [v4 effectiveContentView];
    [effectiveContentView4 addSubview:self->_imageView];

    effectiveContentView5 = [v4 effectiveContentView];
    [effectiveContentView5 addSubview:self->_selectionView];
  }

  [(CALayer *)self->_highlightLayer removeFromSuperlayer];
  [(UIView *)self->_maskAnimationView removeFromSuperview];
  v13 = objc_loadWeakRetained(&self->_effectiveContentView);
  button = self->_button;

  if (v13 != button)
  {
    v15 = objc_loadWeakRetained(&self->_effectiveContentView);
    [v15 removeFromSuperview];
  }

  v16 = [(UIView *)self->_button viewWithTag:1886548836];
  [v16 removeFromSuperview];
}

- (void)setFont:(id)font isDefaultForIdiom:(BOOL)idiom
{
  idiomCopy = idiom;
  fontCopy = font;
  titleView = self->_titleView;
  if (titleView)
  {
    v16 = fontCopy;
    font = [(UILabel *)titleView font];
    v9 = self->_titleView;
    if (v9)
    {
      v10 = (v16 | font) == 0;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      [UILabel _setFont:v9 isDefaultForIdiom:"_setFont:isDefaultForIdiom:"];
    }

    else
    {
      v13 = [font isEqual:?];
      [(UILabel *)self->_titleView _setFont:v16 isDefaultForIdiom:idiomCopy];
      if ((v13 & 1) == 0)
      {
        [(UIView *)self->_button invalidateIntrinsicContentSize];
      }
    }
  }

  else
  {
    if (fontCopy)
    {
      goto LABEL_16;
    }

    traitCollection = [(UIView *)self->_button traitCollection];
    userInterfaceIdiom = [traitCollection userInterfaceIdiom];

    if (userInterfaceIdiom == 6)
    {
      [off_1E70ECC18 preferredFontForTextStyle:@"UICTFontTextStyleHeadline"];
    }

    else
    {
      +[(UILabel *)UIButtonLabel];
    }
    fontCopy = ;
    if (fontCopy)
    {
LABEL_16:
      v16 = fontCopy;
      [(UIButton *)self->_button _setLazyTitleViewFont:fontCopy isDefaultForIdiom:idiomCopy];
    }

    else
    {
      v16 = [(UIButton *)self->_button _lazyTitleViewFontIsDefaultForIdiom:0];
      fontName = [v16 fontName];
      [v16 pointSize];
      NSLog(&cfstr_NilPassedToUib.isa, fontName, v15);
    }
  }
}

- (void)setLineBreakMode:(int64_t)mode
{
  titleView = self->_titleView;
  if (mode != 5 && !titleView)
  {
    [(UIButtonLegacyVisualProvider *)self _setupTitleView];
    titleView = self->_titleView;
  }

  lineBreakMode = [(UILabel *)titleView lineBreakMode];
  v7 = self->_titleView;
  [(UILabel *)v7 setLineBreakMode:mode];
  if (v7)
  {
    v8 = lineBreakMode == mode;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    button = self->_button;

    [(UIView *)button invalidateIntrinsicContentSize];
  }
}

- (CGSize)titleShadowOffset
{
  titleView = self->_titleView;
  if (titleView)
  {
    [(UILabel *)titleView shadowOffset];
  }

  else
  {
    v3 = *MEMORY[0x1E695F060];
    v4 = *(MEMORY[0x1E695F060] + 8);
  }

  result.height = v4;
  result.width = v3;
  return result;
}

- (void)setTitleShadowOffset:(CGSize)offset
{
  height = offset.height;
  width = offset.width;
  titleView = self->_titleView;
  if (!titleView)
  {
    if (offset.width == *MEMORY[0x1E695F060] && offset.height == *(MEMORY[0x1E695F060] + 8))
    {
      titleView = 0;
    }

    else
    {
      [(UIButtonLegacyVisualProvider *)self _setupTitleView];
      titleView = self->_titleView;
    }
  }

  [(UILabel *)titleView shadowOffset];
  v10 = self->_titleView;
  if (v10)
  {
    v11 = v8;
    v12 = v9;
    [(UILabel *)v10 setShadowOffset:width, height];
    if (width != v11 || height != v12)
    {
      button = self->_button;

      [(UIView *)button invalidateIntrinsicContentSize];
    }
  }

  else
  {

    [0 setShadowOffset:{width, height}];
  }
}

- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated
{
  highlightedCopy = highlighted;
  button = self->_button;
  buttonFlags = button->_buttonFlags;
  if ((*&buttonFlags & 0x20) != 0)
  {
    animated = [(UIView *)button viewWithTag:1886548836, animated];
    v9 = animated;
    if (highlightedCopy)
    {
      [animated setAlpha:1.0];
    }

    else
    {
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __56__UIButtonLegacyVisualProvider_setHighlighted_animated___block_invoke;
      v10[3] = &unk_1E70F3590;
      v11 = animated;
      [UIView animateWithDuration:v10 animations:0 completion:0.25];
    }

    buttonFlags = self->_button->_buttonFlags;
  }

  [(UILabel *)self->_titleView setReverseShadow:*&buttonFlags & highlightedCopy, animated];
  [(UIButton *)self->_button setNeedsLayout];
}

- (void)setShowsTouchWhenHighlighted:(BOOL)highlighted
{
  v4 = [(UIView *)self->_button viewWithTag:1886548836];
  buttonFlags = self->_button->_buttonFlags;
  if (v4)
  {
    if ((*&buttonFlags & 0x20) != 0)
    {
      goto LABEL_13;
    }

    v13 = v4;
    [(UIView *)v4 removeFromSuperview];
  }

  else
  {
    if ((*&buttonFlags & 0x20) == 0)
    {
      v4 = 0;
      goto LABEL_13;
    }

    v6 = [UIImageView alloc];
    v7 = _UIImageWithName(@"UIButtonBarPressedIndicator.png");
    v13 = [(UIImageView *)v6 initWithImage:v7];

    [(UIView *)v13 setUserInteractionEnabled:0];
    [(UIView *)v13 setOpaque:0];
    [(UIView *)v13 setTag:1886548836];
    isHighlighted = [(UIControl *)self->_button isHighlighted];
    v9 = 0.0;
    if (isHighlighted)
    {
      v9 = 1.0;
    }

    [(UIView *)v13 setAlpha:v9];
    [(UIButton *)self->_button pressFeedbackPosition];
    [(UIImageView *)v13 setCenter:?];
    imageView = self->_imageView;
    effectiveContentView = [(UIButtonLegacyVisualProvider *)self effectiveContentView];
    v12 = effectiveContentView;
    if (imageView)
    {
      [effectiveContentView insertSubview:v13 belowSubview:self->_imageView];
    }

    else
    {
      [effectiveContentView addSubview:v13];
    }

    [(UIButton *)self->_button setNeedsLayout];
  }

  v4 = v13;
LABEL_13:
}

- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location
{
  v5 = self->_button;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __86__UIButtonLegacyVisualProvider_contextMenuInteraction_configurationForMenuAtLocation___block_invoke;
  v9[3] = &unk_1E70F46B8;
  v10 = v5;
  selfCopy = self;
  v6 = v5;
  v7 = [UIContextMenuConfiguration configurationWithIdentifier:0 previewProvider:0 actionProvider:v9];

  return v7;
}

id __86__UIButtonLegacyVisualProvider_contextMenuInteraction_configurationForMenuAtLocation___block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) menu];
  v5 = [*(a1 + 32) _menuProvider];

  if (v5)
  {
    v6 = [*(a1 + 32) _menuProvider];
    v7 = (v6)[2](v6, *(a1 + 40), v3);

    v4 = v7;
    if (!v7)
    {
      if ([*(a1 + 32) showsMenuAsPrimaryAction])
      {
        if (os_variant_has_internal_diagnostics())
        {
          v15 = __UIFaultDebugAssertLog();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
          {
            v16 = *(a1 + 32);
            *buf = 138412290;
            v24 = v16;
            _os_log_fault_impl(&dword_188A29000, v15, OS_LOG_TYPE_FAULT, "Client configured a button (%@) with a menuProvider and contextMenuIsPrimary=YES, but failed to return a menu, Substituting a dummy menu.", buf, 0xCu);
          }
        }

        else
        {
          v9 = *(__UILogGetCategoryCachedImpl("Assert", &_UIInternalPreference_LabelDisableDefaultClipping_block_invoke___s_category) + 8);
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            v10 = *(a1 + 32);
            *buf = 138412290;
            v24 = v10;
            _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_ERROR, "Client configured a button (%@) with a menuProvider and contextMenuIsPrimary=YES, but failed to return a menu, Substituting a dummy menu.", buf, 0xCu);
          }
        }

        v11 = [*(a1 + 32) titleForState:0];
        v12 = [*(a1 + 32) imageForState:0];
        v17 = MEMORY[0x1E69E9820];
        v18 = 3221225472;
        v19 = __86__UIButtonLegacyVisualProvider_contextMenuInteraction_configurationForMenuAtLocation___block_invoke_19;
        v20 = &unk_1E70F4708;
        v21 = *(a1 + 32);
        v13 = [UIAction actionWithTitle:v11 image:v12 identifier:0 handler:&v17];

        v22 = v13;
        v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v22 count:{1, v17, v18, v19, v20}];
        v4 = [UIMenu menuWithChildren:v14];
      }

      else
      {
        v4 = 0;
      }
    }
  }

  return v4;
}

- (CGPoint)menuAttachmentPointForConfiguration:(id)configuration
{
  button = self->_button;
  imageView = self->_imageView;
  titleView = self->_titleView;
  configurationCopy = configuration;
  v7 = _UIControlMenuSupportTargetedPreviewOverViews(button, titleView, imageView);
  target = [v7 target];
  container = [target container];

  view = [v7 view];
  [view bounds];
  v12 = v11;
  v14 = v13;
  target2 = [v7 target];
  [target2 center];
  v17 = round(v16 - v14 * 0.5);
  v19 = round(v18 - v12 * 0.5);
  _window = [container _window];
  [container convertRect:_window toView:{v19, v17, v12, v14}];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;

  LODWORD(view) = [configurationCopy prefersHorizontalAttachment];
  _window2 = [container _window];
  v30 = _window2;
  if (view)
  {
    v31 = _UIControlMenuAttachmentPointForRectInContainerForHorizontalAttachment(_window2, v22, v24, v26, v28);
  }

  else
  {
    v31 = _UIControlMenuAttachmentPointForRectInContainer(_window2, v22, v24, v26, v28);
  }

  v33 = v31;
  v34 = v32;

  v35 = v33;
  v36 = v34;
  result.y = v36;
  result.x = v35;
  return result;
}

- (void)contextMenuInteraction:(id)interaction updateStyleForMenuWithConfiguration:(id)configuration style:(id)style
{
  styleCopy = style;
  if (styleCopy)
  {
    v18 = styleCopy;
    button = self->_button;
    imageView = self->_imageView;
    titleView = self->_titleView;
    configurationCopy = configuration;
    v12 = _UIControlMenuSupportTargetedPreviewOverViews(button, titleView, imageView);
    [(UIButton *)self->_button menuAttachmentPointForConfiguration:configurationCopy];
    v14 = v13;
    v16 = v15;
    LODWORD(button) = [configurationCopy prefersHorizontalAttachment];

    button = [(UIButtonLegacyVisualProvider *)self button];
    if (button)
    {
      _UIControlMenuSupportUpdateStyleWithHorizontalPreference(v18, button, v12, v14, v16);
    }

    else
    {
      _UIControlMenuSupportUpdateStyle(v18, button, v12, v14, v16);
    }

    styleCopy = v18;
  }
}

- (id)titleViewCreateIfNeeded:(BOOL)needed
{
  if (needed)
  {
    if (![(UIButton *)self->_button _canHaveTitle])
    {
      v4 = 0;
      goto LABEL_8;
    }

    [(UIButtonLegacyVisualProvider *)self _setupTitleView];
    if (dyld_program_sdk_at_least())
    {
      [(UIButtonLegacyVisualProvider *)self _updateTitleView];
    }

    else
    {
      [(UIView *)self->_button layoutBelowIfNeeded];
    }
  }

  v4 = self->_titleView;
LABEL_8:

  return v4;
}

- (id)imageViewCreateIfNeeded:(BOOL)needed
{
  if (!needed)
  {
    p_imageView = &self->_imageView;
LABEL_9:
    v7 = *p_imageView;
    goto LABEL_10;
  }

  button = self->_button;
  if ((*&button->_buttonFlags & 0x3FC0) == 0 || [(UIButton *)button _isSystemProvidedButton])
  {
    p_imageView = &self->_imageView;
    if (!self->_imageView)
    {
      [(UIButton *)self->_button setNeedsLayout];
    }

    [(UIButtonLegacyVisualProvider *)self _setupImageView];
    v6 = self->_button;
    if ((*(&v6->super.super._viewFlags + 7) & 1) == 0)
    {
      [(UIView *)v6 layoutIfNeeded];
    }

    goto LABEL_9;
  }

  v7 = 0;
LABEL_10:

  return v7;
}

- (void)setContentHorizontalAlignment:(int64_t)alignment
{
  [(UILabel *)self->_titleView setTextAlignment:[UIButtonLegacyVisualProvider _NSTextAlignmentForUIControlContentHorizontalAlignment:[(UIControl *)self->_button effectiveContentHorizontalAlignment]]];
  [(UIButtonLegacyVisualProvider *)self _invalidateContentConstraints];
  button = self->_button;

  [(UIButton *)button setNeedsLayout];
}

- (id)pointerEffectPreviewParameters
{
  v3 = objc_opt_new();
  if ([(UIButton *)self->_button buttonType]== UIButtonTypeClose)
  {
    [(UIView *)self->_button bounds];
    v4 = [UIBezierPath bezierPathWithOvalInRect:?];
  }

  else
  {
    if (![(UIControl *)self->_button isSelected])
    {
      goto LABEL_6;
    }

    layer = [(UIView *)self->_button layer];
    [layer cornerRadius];

    [(UIButton *)self->_button _selectedIndicatorBounds];
    v4 = [UIBezierPath bezierPathWithRoundedRect:"bezierPathWithRoundedRect:cornerRadius:" cornerRadius:?];
  }

  v6 = v4;
  [v3 setShadowPath:v4];

LABEL_6:

  return v3;
}

- (id)pointerEffectWithPreview:(id)preview
{
  previewCopy = preview;
  buttonType = [(UIButton *)self->_button buttonType];
  v6 = objc_opt_class();
  if (buttonType == UIButtonTypeClose || ((v7 = v6, [(UIButton *)self->_button _isiOSSystemProvidedButton]) || buttonType == UIButtonTypeCustom) && ([(UIButton *)self->_button _hasVisibleDefaultSelectionIndicator]|| _buttonBackgroundColorIndicatesLiftEffect(self->_button)))
  {
    v7 = objc_opt_class();
  }

  v8 = [v7 effectWithPreview:previewCopy];

  return v8;
}

- (CGRect)_visualBoundsWithCornerRadius:(double *)radius hasProposal:(BOOL)proposal shouldUseProposal:(BOOL *)useProposal
{
  proposalCopy = proposal;
  v111 = -1.0;
  if (useProposal)
  {
    *useProposal = 0;
  }

  v10 = +[_UIPointerSettingsDomain rootSettings];
  buttonSettings = [v10 buttonSettings];

  buttonType = [(UIButton *)self->_button buttonType];
  if (buttonType <= 117)
  {
    if ((buttonType - 2) >= 4)
    {
      if (buttonType < UIButtonTypeDetailDisclosure)
      {
        goto LABEL_15;
      }

      if (buttonType != UIButtonTypeClose)
      {
LABEL_23:
        [(UIView *)self->_button bounds];
        goto LABEL_10;
      }

      button = self->_button;
      [buttonSettings closeButtonOutset];
      v15 = v38;
      [buttonSettings closeButtonMinSize];
LABEL_9:
      __roundCursorForBounds(button, &v111, v15, v16);
LABEL_10:
      v21 = v17;
      v22 = v18;
      v23 = v19;
      v24 = v20;
      goto LABEL_11;
    }

LABEL_8:
    button = self->_button;
    [buttonSettings roundButtonOutset];
    v15 = v14;
    [buttonSettings roundButtonMinSize];
    goto LABEL_9;
  }

  if ((buttonType - 118) < 6)
  {
    goto LABEL_8;
  }

  if ((buttonType - 124) >= 2)
  {
    goto LABEL_23;
  }

LABEL_15:
  if ([(UIButton *)self->_button _hasVisibleDefaultSelectionIndicator])
  {
    v29 = self->_button;
    [(UIButton *)v29 _selectedIndicatorBounds];
    v21 = v30;
    v22 = v31;
    v23 = v32;
    v24 = v33;
    layer = [(UIView *)v29 layer];

    [layer cornerRadius];
    v36 = v35;

    v111 = fmax(v36, 4.0);
    goto LABEL_11;
  }

  if (proposalCopy)
  {
    if (!useProposal)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"UIButtonLegacyVisualProvider.m" lineNumber:816 description:{@"When hasProposal is YES, shouldUseProposal has to be defined."}];
    }

    *useProposal = 1;
    v37 = self->_button;
    goto LABEL_25;
  }

  backgroundColor = [(UIView *)self->_button backgroundColor];
  [backgroundColor alphaComponent];
  v41 = v40;

  v37 = self->_button;
  if (v41 > 0.0)
  {
LABEL_25:
    v17 = __boundingPointerShapeInContainer(v37, &v111);
    goto LABEL_10;
  }

  v42 = v37;
  v43 = buttonSettings;
  [(UIView *)v42 bounds];
  [(UIButton *)v42 contentRectForBounds:?];
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v51 = v50;
  [(UIButton *)v42 titleRectForContentRect:?];
  x = v112.origin.x;
  y = v112.origin.y;
  width = v112.size.width;
  height = v112.size.height;
  IsEmpty = CGRectIsEmpty(v112);
  [(UIButton *)v42 imageRectForContentRect:v45, v47, v49, v51];
  v57 = v113.origin.x;
  v58 = v113.origin.y;
  v59 = v113.size.width;
  v60 = v113.size.height;
  v61 = CGRectIsEmpty(v113);
  effectiveUserInterfaceLayoutDirection = [(UIView *)v42 effectiveUserInterfaceLayoutDirection];
  if (!v61 && !IsEmpty)
  {
    v63 = effectiveUserInterfaceLayoutDirection == 1;
    v114.origin.x = x;
    v114.origin.y = y;
    v114.size.width = width;
    v114.size.height = height;
    v117.origin.x = v57;
    v117.origin.y = v58;
    v117.size.width = v59;
    v117.size.height = v60;
    v115 = CGRectUnion(v114, v117);
    v108 = v115.origin.x;
    v64 = v115.origin.y;
    v65 = v115.size.width;
    v66 = v115.size.height;
    [v43 mixedButtonOutsetLeading];
    v68 = v67;
    [v43 mixedButtonOutsetTrailing];
    v70 = v69;
    [v43 mixedButtonOutsetTop];
    v72 = v71;
    [v43 mixedButtonOutsetBottom];
    v74 = v73;
    [v43 mixedButtonMinWidth];
    v76 = v75;
    [v43 mixedButtonMinHeight];
    v107 = v76;
    v77 = v108;
    v78 = v64;
    v79 = v65;
    v80 = v66;
    v81 = v68;
LABEL_29:
    v82 = v70;
    v83 = v63;
    v84 = v72;
    v85 = v74;
LABEL_34:
    v86 = __outsetRectWithMinimumSize(v83, 0, v77, v78, v79, v80, v81, v82, v84, v85, v107);
    goto LABEL_35;
  }

  if (!v61)
  {
    v90 = effectiveUserInterfaceLayoutDirection == 1;
    [v43 imageButtonOutsetLeading];
    v109 = v91;
    [v43 imageButtonOutsetTrailing];
    v93 = v92;
    [v43 imageButtonOutsetTop];
    v95 = v94;
    [v43 imageButtonOutsetBottom];
    v97 = v96;
    [v43 imageButtonMinWidth];
    v99 = v98;
    [v43 imageButtonMinHeight];
    v107 = v99;
    v77 = v57;
    v78 = v58;
    v79 = v59;
    v80 = v60;
    v81 = v109;
    v82 = v93;
    v83 = v90;
    v84 = v95;
    v85 = v97;
    goto LABEL_34;
  }

  if (!IsEmpty)
  {
    v63 = effectiveUserInterfaceLayoutDirection == 1;
    [v43 textButtonOutsetLeading];
    v110 = v100;
    [v43 textButtonOutsetTrailing];
    v70 = v101;
    [v43 textButtonOutsetTop];
    v72 = v102;
    [v43 textButtonOutsetBottom];
    v74 = v103;
    [v43 textButtonMinWidth];
    v105 = v104;
    [v43 textButtonMinHeight];
    v107 = v105;
    v77 = x;
    v78 = y;
    v79 = width;
    v80 = height;
    v81 = v110;
    goto LABEL_29;
  }

  v86 = __boundingPointerShapeInContainer(v42, &v111);
LABEL_35:
  v21 = v86;
  v22 = v87;
  v23 = v88;
  v24 = v89;

LABEL_11:
  if (radius)
  {
    *radius = v111;
  }

  v25 = v21;
  v26 = v22;
  v27 = v23;
  v28 = v24;
  result.size.height = v28;
  result.size.width = v27;
  result.origin.y = v26;
  result.origin.x = v25;
  return result;
}

- (CGRect)visualBoundsWithCornerRadius:(double *)radius
{
  [(UIButtonLegacyVisualProvider *)self _visualBoundsWithCornerRadius:radius hasProposal:0 shouldUseProposal:0];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (id)pointerShapeInContainer:(id)container proposal:(id)proposal
{
  containerCopy = container;
  proposalCopy = proposal;
  v21 = 0;
  v20 = 0.0;
  [(UIButtonLegacyVisualProvider *)self _visualBoundsWithCornerRadius:&v20 hasProposal:proposalCopy != 0 shouldUseProposal:&v21];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  if (v21 != 1 || (proposalCopy[2](proposalCopy), (v16 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v17 = v20;
    [(UIView *)self->_button convertRect:containerCopy toView:v9, v11, v13, v15, *&v20];
    if (v17 >= 0.0)
    {
      [UIPointerShape shapeWithRoundedRect:"shapeWithRoundedRect:cornerRadius:" cornerRadius:?];
    }

    else
    {
      [UIPointerShape shapeWithRoundedRect:?];
    }
    v16 = ;
  }

  v18 = v16;

  return v18;
}

- (id)preferredHoverEffect
{
  buttonType = [(UIButton *)self->_button buttonType];
  if (buttonType == UIButtonTypeClose)
  {
    goto LABEL_2;
  }

  v5 = buttonType;
  traitCollection = [(UIView *)self->_button traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  _isiOSSystemProvidedButton = [(UIButton *)self->_button _isiOSSystemProvidedButton];
  if (userInterfaceIdiom == 6)
  {
    if (_isiOSSystemProvidedButton)
    {
LABEL_2:
      v4 = +[UIHoverLiftEffect effect];
      goto LABEL_12;
    }
  }

  else
  {
    v9 = !_isiOSSystemProvidedButton;
    if (v5 == UIButtonTypeCustom)
    {
      v9 = 0;
    }

    if (!v9 && ([(UIButton *)self->_button _hasVisibleDefaultSelectionIndicator]|| _buttonBackgroundColorIndicatesLiftEffect(self->_button)))
    {
      goto LABEL_2;
    }
  }

  v4 = 0;
LABEL_12:

  return v4;
}

- (CGRect)backgroundRectForBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  button = self->_button;
  if (UIButtonTypeIsModernCircleButton((*&button->_buttonFlags >> 6)))
  {
    [(UIButton *)button imageRectForContentRect:x, y, width, height];
    x = v8;
    y = v9;
    width = v10;
    height = v11;
  }

  v12 = x;
  v13 = y;
  v14 = width;
  v15 = height;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (CGRect)contentRectForBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v8 = [(UIButton *)self->_button backgroundImageForState:0];
  if (v8)
  {
    [(UIView *)self->_button alignmentRectForFrame:x, y, width, height];
    x = v9;
    y = v10;
    width = v11;
    height = v12;
  }

  [(UIButton *)self->_button _combinedContentPaddingInsets];
  v17 = width - v14 - v16;
  v18 = fmax(v17, 0.0);
  if (v17 >= 0.0)
  {
    v19 = 0.0;
  }

  else
  {
    v19 = v17 * 0.5;
  }

  v20 = height - v13 - v15;
  v21 = v20 * 0.5;
  if (v20 >= 0.0)
  {
    v21 = 0.0;
  }

  v22 = fmax(v20, 0.0);
  v23 = x + v14 + v19;
  v24 = y + v13 + v21;
  [(UIView *)self->_button _currentScreenScale];

  v26 = UIRectIntegralWithScale(v23, v24, v18, v22, v25);
  result.size.height = v29;
  result.size.width = v28;
  result.origin.y = v27;
  result.origin.x = v26;
  return result;
}

- (CGRect)_titleRectForContentRect:(CGRect)rect calculatePositionForEmptyTitle:(BOOL)title
{
  titleCopy = title;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  state = [(UIControl *)self->_button state];
  if (!titleCopy)
  {
    v11 = state;
    v12 = [(UIButton *)self->_button _titleForState:state];
    v13 = v12;
    if (!v12 || ![v12 length])
    {
      v14 = [(UIButton *)self->_button _attributedTitleForState:v11];
      v15 = v14;
      if (!v14 || ![v14 length])
      {
        v21 = *(MEMORY[0x1E695F058] + 16);
        v22 = *MEMORY[0x1E695F058];
        v23 = v21;

        goto LABEL_9;
      }
    }
  }

  v16 = *(MEMORY[0x1E695F058] + 16);
  v22 = *MEMORY[0x1E695F058];
  v23 = v16;
  [(UIButtonLegacyVisualProvider *)self _deriveTitleRect:&v22 imageRect:0 fromContentRect:titleCopy calculatePositionForEmptyTitle:x, y, width, height];
LABEL_9:
  v18 = *(&v22 + 1);
  v17 = *&v22;
  v20 = *(&v23 + 1);
  v19 = *&v23;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (BOOL)useTitleForSelectedIndicatorBounds
{
  titleView = self->_titleView;
  if (titleView)
  {
    LOBYTE(titleView) = ![(UIView *)titleView isHidden];
  }

  return titleView;
}

- (CGRect)titleRectForContentRect:(CGRect)rect
{
  [(UIButtonLegacyVisualProvider *)self _titleRectForContentRect:0 calculatePositionForEmptyTitle:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)imageRectForContentRect:(CGRect)rect
{
  v3 = *(MEMORY[0x1E695F058] + 16);
  v8 = *MEMORY[0x1E695F058];
  v9 = v3;
  [(UIButtonLegacyVisualProvider *)self _deriveTitleRect:0 imageRect:&v8 fromContentRect:0 calculatePositionForEmptyTitle:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
  v5 = *(&v8 + 1);
  v4 = *&v8;
  v7 = *(&v9 + 1);
  v6 = *&v9;
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (void)_deriveTitleRect:(CGRect *)rect imageRect:(CGRect *)imageRect fromContentRect:(CGRect)contentRect calculatePositionForEmptyTitle:(BOOL)title
{
  titleCopy = title;
  height = contentRect.size.height;
  width = contentRect.size.width;
  y = contentRect.origin.y;
  x = contentRect.origin.x;
  v180[2] = *MEMORY[0x1E69E9840];
  state = [(UIControl *)self->_button state];
  effectiveContentVerticalAlignment = [(UIControl *)self->_button effectiveContentVerticalAlignment];
  [(UIButton *)self->_button imageEdgeInsets];
  v17 = x + v16;
  v19 = y + v18;
  v21 = width - (v16 + v20);
  v23 = height - (v18 + v22);
  [(UIView *)self->_button _currentScreenScale];
  v176 = UIPointRoundToScale(v17, v19, v24);
  v171 = v25;
  [(UIView *)self->_button _currentScreenScale];
  v27 = UISizeRoundToScale(v21, v23, v26);
  v175 = v28;
  v29 = *MEMORY[0x1E695F060];
  v30 = *(MEMORY[0x1E695F060] + 8);
  v31 = [(UIButton *)self->_button _imageForState:state applyingConfiguration:1 usesImageForNormalState:0];
  v32 = 0.0;
  v177 = v30;
  v33 = v29;
  if (v31)
  {
    [(UIButton *)self->_button _effectiveSizeForImage:v31, 0.0];
    v33 = v34;
    v177 = v35;
    if (self->_imageView && [v31 renderingMode] != 1)
    {
      v172 = v29;
      imageRectCopy = imageRect;
      _currentImage = [(UIImageView *)self->_imageView _currentImage];
      image = [(UIImageView *)self->_imageView image];
      _primitiveImageAsset = [v31 _primitiveImageAsset];
      if (([v31 isEqual:image] & 1) != 0 || (objc_msgSend(v31, "isEqual:", _currentImage) & 1) != 0 || _primitiveImageAsset && (objc_msgSend(image, "_primitiveImageAsset"), v170 = objc_claimAutoreleasedReturnValue(), v170, _primitiveImageAsset == v170))
      {
        [(UIImageView *)self->_imageView _edgeInsetsForEffects];
        v33 = v33 + v40 + v41;
        v177 = v177 + v42 + v43;
      }

      [v31 baselineOffsetFromBottom];
      v44 = v33;
      v46 = v177 - v45;

      v32 = v46;
      v33 = v44;
      imageRect = imageRectCopy;
      v29 = v172;
    }

    else
    {
      v32 = 0.0;
    }
  }

  v166 = v32;
  v47 = effectiveContentVerticalAlignment & 0xFFFFFFFFFFFFFFFELL;
  v173 = v33;
  if (v33 >= v27)
  {
    v33 = v27;
  }

  v48 = v175;
  if (v177 < v175)
  {
    v48 = v177;
  }

  v168 = v27;
  v169 = v48;
  [(UIButton *)self->_button titleEdgeInsets];
  v50 = x + v49;
  v52 = y + v51;
  v54 = width - (v49 + v53);
  v56 = height - (v51 + v55);
  [(UIView *)self->_button _currentScreenScale];
  v58 = UIPointRoundToScale(v50, v52, v57);
  v60 = v59;
  [(UIView *)self->_button _currentScreenScale];
  v62 = UISizeRoundToScale(v54, v56, v61);
  v167 = v63;
  v178 = 0.0;
  if (v62 - v33 >= 0.0)
  {
    v64 = v62 - v33;
  }

  else
  {
    v64 = 0.0;
  }

  v65 = [(UIButton *)self->_button _attributedTitleForState:state];
  if (![v65 length])
  {
    v75 = [(UIButton *)self->_button _titleForState:state];
    v76 = v75;
    if (titleCopy && ![v75 length])
    {
      v99 = @"X";

      v77 = 1;
      v76 = v99;
    }

    else
    {
      v77 = 0;
    }

    if (![v76 length])
    {
      goto LABEL_85;
    }

    v164 = v77;
    titleView = self->_titleView;
    imageRectCopy2 = imageRect;
    if (titleView)
    {
      buttonFlags = self->_button->_buttonFlags;
      rectCopy = rect;
      if ((*&buttonFlags & 0x800000) != 0)
      {
        v80 = 0;
        v81 = self->_titleView;
      }

      else
      {
        text = [(UILabel *)titleView text];
        if ([text isEqualToString:v76])
        {
          v80 = 0;
        }

        else
        {
          v80 = v76;
        }

        v81 = self->_titleView;
      }

      v92 = v47 != 4;
      v93 = v47 != 4 || effectiveContentVerticalAlignment == 4;
      v94 = effectiveContentVerticalAlignment != 4 || v92;
      numberOfLines = [(UILabel *)v81 numberOfLines];
      if (v93)
      {
        v96 = 0;
      }

      else
      {
        v96 = &v178;
      }

      if (v94)
      {
        v97 = 0;
      }

      else
      {
        v97 = &v178;
      }

      v29 = _UIComputedSizeForLabel(titleView, v80, 0, numberOfLines, 0, v96, v97, v64, 1.79769313e308);
      v30 = v98;
      rect = rectCopy;
      imageRect = imageRectCopy2;
      v77 = v164;
      if ((*&buttonFlags & 0x800000) != 0)
      {
        goto LABEL_85;
      }
    }

    else
    {
      v90 = objc_opt_new();
      [v90 setMaximumNumberOfLines:0];
      text = v90;
      [v90 setWrapsForTruncationMode:1];
      if (v47 == 4)
      {
        hasBaseline = [v31 hasBaseline];
      }

      else
      {
        hasBaseline = 0;
      }

      v77 = v164;
      [text setWantsBaselineOffset:hasBaseline];
      if ((*(&self->_button->_buttonFlags + 2) & 0x80) != 0)
      {
        v104 = 0;
      }

      else
      {
        v159 = +[(UILabel *)UIButtonLabel];
        v161 = *off_1E70EC988;
        v100 = [v159 objectForKeyedSubscript:?];
        v101 = [v100 mutableCopy];
        v102 = v101;
        if (v101)
        {
          v103 = v101;
        }

        else
        {
          v103 = objc_opt_new();
        }

        v105 = v103;

        [v105 setLineBreakMode:{-[UIButton lineBreakMode](self->_button, "lineBreakMode")}];
        v106 = objc_alloc(MEMORY[0x1E696AD40]);
        v179[0] = *off_1E70EC918;
        _font = [(UIButton *)self->_button _font];
        v179[1] = v161;
        v180[0] = _font;
        v180[1] = v105;
        v107 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v180 forKeys:v179 count:2];
        v104 = [v106 initWithString:v76 attributes:v107];

        v77 = v164;
      }

      [v104 boundingRectWithSize:1 options:text context:{v64, 1.79769313e308}];
      v29 = v108;
      v30 = v109;
      if (v47 == 4)
      {
        if (effectiveContentVerticalAlignment == 4)
        {
          [text firstBaselineOffset];
        }

        else
        {
          [text baselineOffset];
        }

        v178 = v110;
      }

      imageRect = imageRectCopy2;
    }

LABEL_85:
    if (v29 >= v64)
    {
      v111 = v64;
    }

    else
    {
      v111 = v29;
    }

    if (v77)
    {
      v73 = 0.0;
    }

    else
    {
      v73 = v111;
    }

LABEL_91:

    goto LABEL_92;
  }

  v66 = self->_titleView;
  if (!v66)
  {
    v76 = objc_opt_new();
    [v76 setMaximumNumberOfLines:0];
    [v76 setWrapsForTruncationMode:1];
    if (v47 == 4)
    {
      hasBaseline2 = [v31 hasBaseline];
    }

    else
    {
      hasBaseline2 = 0;
    }

    [v76 setWantsBaselineOffset:hasBaseline2];
    v83 = +[(UILabel *)UIButtonLabel];
    v84 = [v83 mutableCopy];

    _font2 = [(UIButton *)self->_button _font];
    [v84 setObject:_font2 forKey:*off_1E70EC918];

    v86 = -[NSAttributedString _ui_synthesizeAttributedSubstringFromRange:usingDefaultAttributes:](v65, 0, [v65 length], v84);
    [v86 boundingRectWithSize:65 options:v76 context:{v64, 1.79769313e308}];
    v73 = v87;
    v30 = v88;
    if (v47 == 4)
    {
      if (effectiveContentVerticalAlignment == 4)
      {
        [v76 firstBaselineOffset];
      }

      else
      {
        [v76 baselineOffset];
      }

      v178 = v89;
    }

    goto LABEL_91;
  }

  v67 = v47 != 4;
  v68 = v47 != 4 || effectiveContentVerticalAlignment == 4;
  v69 = effectiveContentVerticalAlignment != 4 || v67;
  numberOfLines2 = [(UILabel *)self->_titleView numberOfLines];
  if (v68)
  {
    v71 = 0;
  }

  else
  {
    v71 = &v178;
  }

  if (v69)
  {
    v72 = 0;
  }

  else
  {
    v72 = &v178;
  }

  v73 = _UIComputedSizeForLabel(v66, 0, v65, numberOfLines2, 0, v71, v72, v64, 1.79769313e308);
  v30 = v74;
LABEL_92:
  v112 = MEMORY[0x1E695F058];
  [(UIButton *)self->_button _roundSize:v173, v177];
  [(UIButton *)self->_button _roundSize:v73, v30];
  v114 = v113;
  v174 = v115;
  v116 = MEMORY[0x1E695EFF8];
  v117 = *MEMORY[0x1E695EFF8];
  effectiveContentHorizontalAlignment = [(UIControl *)self->_button effectiveContentHorizontalAlignment];
  if (effectiveContentHorizontalAlignment == UIControlContentHorizontalAlignmentLeft)
  {
    v121 = v60;
    v129 = *(&self->_button->super.super._viewFlags + 2);
    v126 = v176;
    v130 = v33 + v58;
    v131 = v58;
    v124 = v33;
    if ((v129 & 0x400000) != 0)
    {
      v125 = v131;
    }

    else
    {
      v125 = v130;
    }

    if ((v129 & 0x400000) != 0)
    {
      v126 = v176 + v114;
    }

    goto LABEL_111;
  }

  if (effectiveContentHorizontalAlignment == UIControlContentHorizontalAlignmentRight)
  {
    v126 = v176;
    v127 = v176 + v27;
    v121 = v60;
    if ((*(&self->_button->super.super._viewFlags + 18) & 0x40) != 0)
    {
      v136 = v58 + v62 - v114;
      v124 = v33;
      v125 = v136 - v33;
    }

    else
    {
      v127 = v127 - v114;
      v128 = v58 + v62;
      v124 = v33;
      v125 = v128 - v114;
    }

    v137 = v127 - v124;
    if (v137 >= v176)
    {
      v126 = v137;
    }

LABEL_111:
    v176 = v126;
LABEL_114:
    v123 = v124;
    goto LABEL_115;
  }

  v119 = v33;
  v120 = v58;
  v121 = v60;
  if (effectiveContentHorizontalAlignment != UIControlContentHorizontalAlignmentFill)
  {
    button = self->_button;
    v124 = v119;
    if ((*(&button->super.super._viewFlags + 18) & 0x40) != 0)
    {
      UIFloorToViewScale(button);
      v134 = fmax(v138, v117);
      UIRoundToViewScale(self->_button);
      v125 = v120 + v139 - v124;
    }

    else
    {
      UIFloorToViewScale(button);
      v134 = fmax(v133, v117);
      UIRoundToViewScale(self->_button);
      v125 = v124 + v120 + v135;
    }

    v176 = v176 + v134;
    goto LABEL_114;
  }

  v122 = v119 + v114;
  if (v119 + v114 == 0.0)
  {
    v122 = 1.0;
  }

  v123 = v119;
  v124 = v119 * (v168 / v122);
  v114 = v114 * (v62 / v122);
  v125 = *v112 + v120 + v62 - v114;
LABEL_115:
  v140 = v112[1];
  v141 = *(v116 + 8);
  if (effectiveContentVerticalAlignment > 3)
  {
    if ((effectiveContentVerticalAlignment - 4) >= 2)
    {
LABEL_134:
      v142 = v169;
      UIFloorToViewScale(self->_button);
      v143 = v140 + v171 + fmax(v150, v141);
      UIRoundToViewScale(self->_button);
      v121 = v140 + v121 + v151;
      goto LABEL_135;
    }

    if ([v31 hasBaseline] && v174 > 0.0)
    {
      v181.origin.x = v117;
      v142 = v169;
      v181.origin.y = v141;
      v181.size.width = v123;
      v181.size.height = v169;
      v182 = CGRectOffset(v181, 0.0, v178 - v166 * v169 / v177);
      if (v182.origin.y >= v141)
      {
        v144 = v141;
      }

      else
      {
        v144 = v182.origin.y;
      }

      v145 = -v144;
      v146 = v144 < 0.0;
      v147 = -0.0;
      if (v146)
      {
        v147 = v145;
      }

      v143 = v171 + v182.origin.y + v147;
      v121 = v140 + v121 + v147;
    }

    else
    {
      v142 = v169;
      UIFloorToViewScale(self->_button);
      v143 = v171 + fmax(v148, v141);
      UIRoundToViewScale(self->_button);
      v121 = v121 + v149;
    }
  }

  else
  {
    if (effectiveContentVerticalAlignment == 1)
    {
      v142 = v169;
      v143 = v171;
      goto LABEL_135;
    }

    if (effectiveContentVerticalAlignment != 2)
    {
      if (effectiveContentVerticalAlignment == 3)
      {
        v174 = v167;
        v142 = v175;
        v143 = v171;
        goto LABEL_135;
      }

      goto LABEL_134;
    }

    v142 = v169;
    v143 = v171;
    if (v171 + v175 - v169 >= v171)
    {
      v143 = v171 + v175 - v169;
    }

    v121 = v121 + v167 - v174;
  }

LABEL_135:
  [(UIView *)self->_button _currentScreenScale];
  v153 = UIPointRoundToScale(v176, v143, v152);
  v155 = v154;
  [(UIView *)self->_button _currentScreenScale];
  v157 = UIPointRoundToScale(v125, v121, v156);
  if (imageRect)
  {
    imageRect->origin.x = v153;
    imageRect->origin.y = v155;
    imageRect->size.width = v124;
    imageRect->size.height = v142;
  }

  if (rect)
  {
    rect->origin.x = v157;
    rect->origin.y = v158;
    rect->size.width = v114;
    rect->size.height = v174;
  }
}

_UIButtonContentCenteringSpacer *__49__UIButtonLegacyVisualProvider_updateConstraints__block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = objc_alloc_init(_UIButtonContentCenteringSpacer);
  [(UIView *)v4 setTag:a2];
  [(UIView *)v4 setHidden:1];
  [(UIView *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = [*(a1 + 32) effectiveContentView];
  [v5 addSubview:v4];

  v6 = *(*(a1 + 32) + 8);
  v7 = MEMORY[0x1E69977A0];
  v8 = _NSDictionaryOfVariableBindings(&cfstr_Spacer.isa, v4, 0);
  v9 = [v7 constraintsWithVisualFormat:@"V:|[spacer(0)]" options:0 metrics:0 views:v8];
  [v6 addConstraints:v9];

  return v4;
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)baselineOffsetsAtSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  _viewForBaselineLayout = [(UIButtonLegacyVisualProvider *)self _viewForBaselineLayout];
  v7 = _viewForBaselineLayout;
  if (_viewForBaselineLayout)
  {
    v34 = width;
    if (_viewForBaselineLayout == self->_titleView)
    {
      [(UIButtonLegacyVisualProvider *)self _updateTitleView];
      button = self->_button;
      [(UIButton *)button contentRectForBounds:?];
      [(UIButton *)button titleRectForContentRect:?];
    }

    else
    {
      if (_viewForBaselineLayout != self->_imageView)
      {
        v35 = 0.0;
        v8 = 0.0;
        v9 = 0.0;
        v10 = 0.0;
LABEL_9:
        [(UIImageView *)v7 _baselineOffsetsAtSize:v9, v8];
        v20 = v19;
        v33 = v21;
        [(UIImageView *)v7 alignmentRectInsets];
        v23 = v22;
        v32 = v24;
        [(UIButton *)self->_button alignmentRectInsets];
        v26 = v25;
        v28 = v27;
        v37.origin.x = v10;
        v37.origin.y = v35;
        v37.size.width = v9;
        v37.size.height = v8;
        v11 = v20 + v23 + CGRectGetMinY(v37) - v26;
        v38.origin.x = 0.0;
        v38.origin.y = 0.0;
        v38.size.width = v34;
        v38.size.height = height;
        v29 = CGRectGetHeight(v38);
        v39.origin.x = v10;
        v39.origin.y = v35;
        v39.size.width = v9;
        v39.size.height = v8;
        v12 = v33 + v32 + v29 - CGRectGetMaxY(v39) - v28;
        goto LABEL_10;
      }

      [(UIButtonLegacyVisualProvider *)self _updateImageView];
      v18 = self->_button;
      [(UIButton *)v18 contentRectForBounds:?];
      [(UIButton *)v18 imageRectForContentRect:?];
    }

    v10 = v14;
    v35 = v15;
    v9 = v16;
    v8 = v17;
    goto LABEL_9;
  }

  v11 = 2.22507386e-308;
  v12 = 2.22507386e-308;
LABEL_10:

  v30 = v11;
  v31 = v12;
  result.var1 = v31;
  result.var0 = v30;
  return result;
}

- (CGRect)_highlightRectForTextRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  if (CGRectIsEmpty(rect))
  {
    v8 = *MEMORY[0x1E695F050];
    v9 = *(MEMORY[0x1E695F050] + 8);
    v10 = *(MEMORY[0x1E695F050] + 16);
    v11 = *(MEMORY[0x1E695F050] + 24);
  }

  else
  {
    [(UIButton *)self->_button _pathTitleEdgeInsets];
    v13 = v12;
    v15 = v14;
    v17 = -v16;
    v8 = x - v14;
    v9 = y - v13;
    v10 = width - (-v18 - v15);
    v11 = height - (v17 - v13);
  }

  result.size.height = v11;
  result.size.width = v10;
  result.origin.y = v9;
  result.origin.x = v8;
  return result;
}

- (CGRect)_highlightRectForImageRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  if (CGRectIsEmpty(rect))
  {
    v8 = *MEMORY[0x1E695F050];
    v9 = *(MEMORY[0x1E695F050] + 8);
    v10 = *(MEMORY[0x1E695F050] + 16);
    v11 = *(MEMORY[0x1E695F050] + 24);
  }

  else
  {
    [(UIButton *)self->_button _pathImageEdgeInsets];
    v8 = x - v14;
    v9 = y - v15;
    v10 = width - (-v13 - v14);
    v11 = height - (-v12 - v15);
  }

  if (UIButtonTypeIsModernCircleButton([(UIButton *)self->_button _buttonType]))
  {
    [(UIButton *)self->_button imageRectForContentRect:x, y, width, height];
    v8 = v16;
    v9 = v17;
    v10 = v18;
    v11 = v19;
  }

  v20 = v8;
  v21 = v9;
  v22 = v10;
  v23 = v11;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- (void)intrinsicContentSizeInvalidatedForChildView:(id)view
{
  viewCopy = view;
  imageView = self->_imageView;
  titleView = self->_titleView;
  backgroundView = self->_backgroundView;
  if (titleView != viewCopy && imageView != viewCopy && backgroundView != viewCopy)
  {
    goto LABEL_29;
  }

  v13 = viewCopy;
  if (backgroundView == viewCopy || imageView == viewCopy)
  {
    if (![(UIButton *)self->_button autosizesToFit])
    {
      traitCollection = [(UIView *)self->_button traitCollection];
      if ([traitCollection userInterfaceIdiom] != 3)
      {

        goto LABEL_20;
      }

      IsModernCircleButton = UIButtonTypeIsModernCircleButton([(UIButton *)self->_button buttonType]);

      if (!IsModernCircleButton)
      {
        goto LABEL_20;
      }
    }

    [(UIView *)self->_button sizeToFit];
LABEL_20:
    [(UIButton *)self->_button setNeedsLayout];
  }

  if ([(UIControl *)self->_button effectiveContentHorizontalAlignment]== UIControlContentHorizontalAlignmentFill && (imageView == v13 && self->_titleView || titleView == v13 && self->_imageView))
  {
    [(UIButtonLegacyVisualProvider *)self _invalidateContentConstraints];
  }

  [(UIView *)self->_button invalidateIntrinsicContentSize];
  viewCopy = v13;
LABEL_29:
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  if (!self->_imageView && [(UIButton *)self->_button _hasImageForProperty:@"image"])
  {
    *&self->_button->_buttonFlags |= 0x1000000uLL;
  }

  if (!self->_backgroundView && [(UIButton *)self->_button _hasImageForProperty:@"background"])
  {
    *&self->_button->_buttonFlags |= 0x2000000uLL;
  }

  _focusSystem = [(UIView *)self->_button _focusSystem];

  if (_focusSystem)
  {
    traitCollection = [(UIView *)self->_button traitCollection];
    userInterfaceIdiom = [traitCollection userInterfaceIdiom];

    if (userInterfaceIdiom == 2 || userInterfaceIdiom == 8)
    {
      [(UIButtonLegacyVisualProvider *)self _updateTitleView];
      [(UIButtonLegacyVisualProvider *)self _updateContentBackdropView];
    }

    else if (userInterfaceIdiom == 3)
    {
      [(UIButton *)self->_button setNeedsLayout];
    }
  }
}

- (void)didChangeFromIdiom:(int64_t)idiom onScreen:(id)screen traverseHierarchy:(BOOL)hierarchy
{
  [(UIButtonLegacyVisualProvider *)self _updateEffectsForImageView:self->_imageView background:0, hierarchy];
  backgroundView = self->_backgroundView;

  [(UIButtonLegacyVisualProvider *)self _updateEffectsForImageView:backgroundView background:1];
}

- (CGSize)_intrinsicSizeForTitle:(id)title attributedTitle:(id)attributedTitle image:(id)image backgroundImage:(id)backgroundImage titlePaddingInsets:(UIEdgeInsets *)insets
{
  v84[1] = *MEMORY[0x1E69E9840];
  titleCopy = title;
  attributedTitleCopy = attributedTitle;
  imageCopy = image;
  backgroundImageCopy = backgroundImage;
  if (insets)
  {
    *&insets->top = 0u;
    *&insets->bottom = 0u;
  }

  insetsCopy = insets;
  v17 = *MEMORY[0x1E695F060];
  v16 = *(MEMORY[0x1E695F060] + 8);
  v18 = MEMORY[0x1E695EFF8];
  if (imageCopy)
  {
    [(UIButton *)self->_button _effectiveSizeForImage:imageCopy];
    v20 = v19;
    height = v21;
    if ([(UIButton *)self->_button _hasDrawingStyle])
    {
      [(UIButtonLegacyVisualProvider *)self _highlightRectForImageRect:*v18, v18[1], v20, height];
      if (v20 < v23)
      {
        v20 = v23;
      }

      if (height < v24)
      {
        height = v24;
      }
    }

    if ([imageCopy hasBaseline])
    {
      [imageCopy size];
      [imageCopy baselineOffsetFromBottom];
      v25 = objc_opt_new();
      v26 = 1;
      [v25 setWantsBaselineOffset:1];
      if (!attributedTitleCopy)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v26 = 0;
      v25 = 0;
      if (!attributedTitleCopy)
      {
        goto LABEL_23;
      }
    }
  }

  else
  {
    v26 = 0;
    v25 = 0;
    v20 = *MEMORY[0x1E695F060];
    height = *(MEMORY[0x1E695F060] + 8);
    if (!attributedTitleCopy)
    {
      goto LABEL_23;
    }
  }

  if ([attributedTitleCopy length])
  {
    if ([(UILabel *)self->_titleView adjustsFontForContentSizeCategory]&& [(UIButton *)self->_button _shouldAdjustToTraitCollection])
    {
      traitCollection = [(UIView *)self->_button traitCollection];
      v28 = [attributedTitleCopy _ui_attributedStringAdjustedToTraitCollection:traitCollection];
      v29 = v28;
      if (v28)
      {
        v30 = v28;
      }

      else
      {
        v30 = attributedTitleCopy;
      }

      v31 = titleCopy;
      v32 = v30;

      attributedTitleCopy = v32;
      titleCopy = v31;
      v18 = MEMORY[0x1E695EFF8];
    }

    v33 = +[(UILabel *)UIButtonLabel];
    v34 = [v33 mutableCopy];

    _font = [(UIButton *)self->_button _font];
    [v34 setObject:_font forKey:*off_1E70EC918];

    v36 = -[NSAttributedString _ui_synthesizeAttributedSubstringFromRange:usingDefaultAttributes:](attributedTitleCopy, 0, [attributedTitleCopy length], v34);
    [v36 boundingRectWithSize:65 options:v25 context:{3.40282347e38, 3.40282347e38}];
    v38 = v37;
    v16 = v39;
    [v25 firstBaselineOffset];
    [(UIButton *)self->_button _roundSize:v38, v16];
    v17 = v40;

    goto LABEL_29;
  }

LABEL_23:
  if (titleCopy && [titleCopy length])
  {
    v83 = *off_1E70EC918;
    _font2 = [(UIButton *)self->_button _font];
    v84[0] = _font2;
    v42 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v84 forKeys:&v83 count:1];
    v43 = titleCopy;
  }

  else
  {
    if (![(UIButton *)self->_button _likelyToHaveTitle])
    {
      x = *v18;
      y = v18[1];
      v58 = 1;
      goto LABEL_41;
    }

    v81 = *off_1E70EC918;
    _font2 = [(UIButton *)self->_button _font];
    v82 = _font2;
    v42 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v82 forKeys:&v81 count:1];
    v43 = &stru_1EFB14550;
  }

  [(__CFString *)v43 boundingRectWithSize:1 options:v42 attributes:v25 context:v17, v16];
  v45 = v44;
  v47 = v46;

  [v25 firstBaselineOffset];
  [(UIButton *)self->_button _roundSize:v45, v47];
  v17 = v48;
  v16 = v49;
LABEL_29:
  _hasDrawingStyle = [(UIButton *)self->_button _hasDrawingStyle];
  x = *v18;
  y = v18[1];
  if (_hasDrawingStyle)
  {
    [(UIButtonLegacyVisualProvider *)self _highlightRectForTextRect:*v18, v18[1], v17, v16];
    if (v17 < v53)
    {
      v17 = v53;
    }

    if (v16 < v54)
    {
      v16 = v54;
    }
  }

  if (v16 > 0.0)
  {
    v55 = v26;
  }

  else
  {
    v55 = 0;
  }

  if (v55 != 1)
  {
    v58 = 0;
LABEL_41:
    v87.size.width = v20;
    goto LABEL_42;
  }

  UIRoundToViewScale(self->_button);
  v57 = v56;
  v86.origin.x = x;
  v86.origin.y = y;
  v86.size.width = v20;
  v86.size.height = height;
  v87 = CGRectOffset(v86, 0.0, v57);
  x = v87.origin.x;
  y = v87.origin.y;
  height = v87.size.height;
  v58 = 0;
LABEL_42:
  v89.origin.y = 0.0;
  v59 = x;
  v60 = y;
  v61 = height;
  v89.origin.x = v20;
  v89.size.width = v17;
  v89.size.height = v16;
  v88 = CGRectUnion(v87, v89);
  [(UIButton *)self->_button contentEdgeInsets:v88.origin.x];
  v63 = v62;
  v65 = v64;
  v67 = v66;
  v69 = v68;
  if (imageCopy && (*&self->_button->super.super._viewFlags & 0x400000000000000) != 0 && titleCopy | attributedTitleCopy)
  {
    [UIApp userInterfaceLayoutDirection];
    [(UIButton *)self->_button imageEdgeInsets];
    [(UIButton *)self->_button titleEdgeInsets];
  }

  if (backgroundImageCopy)
  {
    if ([backgroundImageCopy _isResizable])
    {
      [backgroundImageCopy capInsets];
      [backgroundImageCopy alignmentRectInsets];
    }

    [backgroundImageCopy size];
  }

  else
  {
    if (imageCopy)
    {
      v70 = 1;
    }

    else
    {
      v70 = v58;
    }

    if ((v70 & 1) == 0 && v65 == 0.0 && v63 == 0.0 && v69 == 0.0 && v67 == 0.0)
    {
      traitCollection2 = [(UIView *)self->_button traitCollection];
      userInterfaceIdiom = [traitCollection2 userInterfaceIdiom];

      if (insetsCopy)
      {
        v73 = 6.0;
        if (userInterfaceIdiom == 5)
        {
          v73 = 5.0;
        }

        insetsCopy->top = v73;
        insetsCopy->left = 0.0;
        insetsCopy->bottom = v73;
        insetsCopy->right = 0.0;
      }
    }
  }

  UIRoundToViewScale(self->_button);
  v75 = v74;
  UIRoundToViewScale(self->_button);
  v77 = v76;

  v78 = v75;
  v79 = v77;
  result.height = v79;
  result.width = v78;
  return result;
}

- (CGSize)intrinsicSizeWithinSize:(CGSize)size
{
  [(UIButton *)self->_button _setInternalTitlePaddingInsets:0.0, 0.0, 0.0, 0.0];
  state = [(UIControl *)self->_button state];
  v5 = [(UIButton *)self->_button _imageForState:state applyingConfiguration:1 usesImageForNormalState:0];
  if (v5)
  {
    v6 = v5;
    imageView = self->_imageView;
    if (!imageView)
    {
      [(UIButtonLegacyVisualProvider *)self _setupImageView];
      imageView = self->_imageView;
    }

    v8 = [(UIImageView *)imageView _resolvedImageFromImage:v6];
  }

  else
  {
    v8 = 0;
  }

  v9 = [(UIButton *)self->_button _titleForState:state];
  v10 = [(UIButton *)self->_button _attributedTitleForState:state];
  v11 = [(UIButton *)self->_button _backgroundForState:state usesBackgroundForNormalState:0];
  if (v11)
  {
    v12 = v11;
    backgroundView = self->_backgroundView;
    if (!backgroundView)
    {
      _setupBackgroundView = [(UIButtonLegacyVisualProvider *)self _setupBackgroundView];
      backgroundView = self->_backgroundView;
    }

    v15 = [(UIImageView *)backgroundView _resolvedImageFromImage:v12];
  }

  else
  {
    v15 = 0;
  }

  v22 = 0u;
  v23 = 0u;
  [(UIButtonLegacyVisualProvider *)self _intrinsicSizeForTitle:v9 attributedTitle:v10 image:v8 backgroundImage:v15 titlePaddingInsets:&v22];
  v17 = v16;
  v19 = v18;
  [(UIButton *)self->_button _setInternalTitlePaddingInsets:v22, v23];

  v20 = v17;
  v21 = v19;
  result.height = v21;
  result.width = v20;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(UIButton *)self->_button _intrinsicSizeWithinSize:fits.width, fits.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)_removeContentBackdropView
{
  if (_UISolariumMetricsEnabled())
  {
    _floatingContentView = [(UIButtonLegacyVisualProvider *)self _floatingContentView];
    [_floatingContentView removeSecondaryBackdropView];
  }

  else
  {
    [(UIView *)self->_contentBackdropView removeFromSuperview];
  }

  contentBackdropView = self->_contentBackdropView;
  self->_contentBackdropView = 0;
}

- (void)setVisualEffectViewEnabled:(BOOL)enabled backgroundColor:(id)color
{
  colorCopy = color;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __75__UIButtonLegacyVisualProvider_setVisualEffectViewEnabled_backgroundColor___block_invoke;
  v8[3] = &unk_1E70F5AF0;
  enabledCopy = enabled;
  v9 = colorCopy;
  selfCopy = self;
  v7 = colorCopy;
  [UIView _performSystemAppearanceModifications:v8];
  [(UIButtonLegacyVisualProvider *)self _updateContentBackdropView];
}

uint64_t __75__UIButtonLegacyVisualProvider_setVisualEffectViewEnabled_backgroundColor___block_invoke(uint64_t a1)
{
  if (*(a1 + 48))
  {
    v1 = 0;
  }

  else
  {
    v1 = *(a1 + 32);
  }

  return [*(*(a1 + 40) + 24) setBackgroundColor:v1 forState:0];
}

uint64_t __52__UIButtonLegacyVisualProvider__beginTitleAnimation__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _setTitleFrozen:0];
  [*(*(a1 + 40) + 48) frame];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  [*(a1 + 32) setNeedsLayout];
  [*(a1 + 32) layoutIfNeeded];
  [*(*(a1 + 40) + 48) frame];
  v17.origin.x = v10;
  v17.origin.y = v11;
  v17.size.width = v12;
  v17.size.height = v13;
  v16.origin.x = v3;
  v16.origin.y = v5;
  v16.size.width = v7;
  v16.size.height = v9;
  if (!CGRectEqualToRect(v16, v17))
  {
    [*(a1 + 32) _sendSetNeedsLayoutToSuperviewOnTitleAnimationCompletionIfNecessary];
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __52__UIButtonLegacyVisualProvider__beginTitleAnimation__block_invoke_3;
  v15[3] = &unk_1E70F3590;
  v15[4] = *(a1 + 40);
  return [UIView animateWithDuration:327684 delay:v15 options:0 animations:0.3 completion:0.0];
}

- (void)_layoutHighlightLayer
{
  if (!self->_highlightLayer)
  {
    layer = [MEMORY[0x1E6979398] layer];
    highlightLayer = self->_highlightLayer;
    self->_highlightLayer = layer;
  }

  layer2 = [(UIView *)self->_button layer];
  [layer2 bounds];
  [(CALayer *)self->_highlightLayer setFrame:?];

  v6 = +[_UIButtonSettingsDomain rootSettings];
  if ([v6 highlightAlternateColor])
  {
    v7 = 0.0;
    v8 = 1.0;
  }

  else
  {
    v7 = 1.0;
    v8 = 0.0;
  }

  v22 = [UIColor colorWithRed:v7 green:v8 blue:1.0 alpha:1.0];

  v9 = +[_UIButtonSettingsDomain rootSettings];
  highlightBelow = [v9 highlightBelow];

  if (highlightBelow)
  {
    -[CALayer setBackgroundColor:](self->_highlightLayer, "setBackgroundColor:", [v22 CGColor]);
    [(CALayer *)self->_highlightLayer setBorderColor:0];
    [(CALayer *)self->_highlightLayer setBorderWidth:0.0];
    subviews = [(UIView *)self->_button subviews];
    firstObject = [subviews firstObject];

    objc_opt_class();
    v20 = 0;
    if ((objc_opt_isKindOfClass() & 1) != 0 || ([(UIView *)firstObject _hasTransparentBackground]& 1) == 0)
    {
      [(UIView *)self->_button bounds];
      v15 = v14;
      [firstObject bounds];
      v13 = v15 - v16;
      if (v15 - v16 <= 0.0)
      {
        [(UIView *)self->_button bounds];
        v18 = v17;
        [firstObject bounds];
        v13 = v18 - v19;
        if (v18 - v19 <= 0.0)
        {
          v20 = 1;
        }
      }
    }

    layer3 = [(UIView *)self->_button layer];
    [layer3 insertSublayer:self->_highlightLayer atIndex:v20];
  }

  else
  {
    [(CALayer *)self->_highlightLayer setBackgroundColor:0];
    v22 = v22;
    -[CALayer setBorderColor:](self->_highlightLayer, "setBorderColor:", [v22 CGColor]);
    [(CALayer *)self->_highlightLayer setBorderWidth:2.0];
    firstObject = [(UIView *)self->_button layer];
    [firstObject addSublayer:self->_highlightLayer];
  }
}

+ (id)_selectedIndicatorImage
{
  if (qword_1ED49E5B0 != -1)
  {
    dispatch_once(&qword_1ED49E5B0, &__block_literal_global_298);
  }

  v3 = _MergedGlobals_1139;

  return v3;
}

void __55__UIButtonLegacyVisualProvider__selectedIndicatorImage__block_invoke()
{
  v0 = +[UITraitCollection _fallbackTraitCollection];
  v1 = [v0 userInterfaceIdiom];

  if (v1 == 5)
  {
    v2 = 3.0;
  }

  else
  {
    v2 = 4.0;
  }

  v3 = v2 + v2;
  _UIGraphicsBeginImageContextWithOptions(0, 0, v3 + v3 + 1.0, v3 + v3 + 1.0, 0.0);
  v8 = [UIBezierPath bezierPathWithRoundedRect:0.0 cornerRadius:0.0, v3 + v3 + 1.0, v3 + v3 + 1.0, v2];
  [v8 fill];
  v4 = _UIGraphicsGetImageFromCurrentImageContext(0);
  v5 = [v4 resizableImageWithCapInsets:{v2 + v2, v2 + v2, v2 + v2, v2 + v2}];

  v6 = [v5 imageWithRenderingMode:2];

  UIGraphicsEndImageContext();
  v7 = _MergedGlobals_1139;
  _MergedGlobals_1139 = v6;
}

- (BOOL)_imageNeedsCompositingModeWhenSelected
{
  v2 = [(UIButton *)self->_button imageForState:4];
  renderingMode = [v2 renderingMode];

  return (renderingMode & 0xFFFFFFFFFFFFFFFDLL) == 0;
}

- (BOOL)_textNeedsCompositingModeWhenSelected
{
  v3 = [(UIButton *)self->_button attributedTitleForState:0];
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v5 = [(UIButton *)self->_button _titleColorForState:4];

    v4 = v5 == 0;
  }

  return v4;
}

- (void)_setupPressednessForState:(unint64_t)state
{
  v12[1] = *MEMORY[0x1E69E9840];
  button = self->_button;
  if (button->_lastDrawingControlState == state)
  {
    return;
  }

  stateCopy = state;
  _touchHasHighlighted = [(UIControl *)button _touchHasHighlighted];
  array = [MEMORY[0x1E695DF70] array];
  if ([(UIButtonLegacyVisualProvider *)self _isExternalRoundedRectButtonWithPressednessState])
  {
    maskAnimationView = self->_maskAnimationView;
    if (!maskAnimationView)
    {
      goto LABEL_13;
    }
  }

  else
  {
    if (self->_titleView && (((stateCopy & 4) != 0) & stateCopy) == 0 && (*&self->_button->_buttonFlags & 0x800000) == 0)
    {
      [array addObject:?];
    }

    if (!self->_backgroundView || ![(UIButtonLegacyVisualProvider *)self _highlightsBackgroundImage])
    {
      goto LABEL_13;
    }

    maskAnimationView = self->_backgroundView;
  }

  [array addObject:maskAnimationView];
LABEL_13:
  if ([array count])
  {
    [objc_opt_class() _setVisuallyHighlighted:stateCopy & 1 forViews:array initialPress:!_touchHasHighlighted];
  }

  if ((((stateCopy & 4) != 0) & stateCopy) == 0 && self->_imageView)
  {
    if (((*&self->_button->_buttonFlags >> 4) & 1 & (stateCopy >> 1)) != 0)
    {
      v9 = 0.25;
    }

    else
    {
      v9 = 1.0;
    }

    v10 = objc_opt_class();
    v12[0] = self->_imageView;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
    [v10 _setVisuallyHighlighted:stateCopy & 1 forViews:v11 initialPress:!_touchHasHighlighted baseAlpha:v9];
  }

  if (stateCopy)
  {
    [(UIControl *)self->_button _setTouchHasHighlighted:1];
  }
}

- (CGRect)_selectedIndicatorBounds
{
  traitCollection = [(UIView *)self->_button traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  button = self->_button;
  [(UIView *)button bounds];
  [(UIButton *)button contentRectForBounds:?];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  titleView = self->_titleView;
  if (titleView && ![(UIView *)titleView isHidden])
  {
    [(UIButton *)self->_button titleRectForContentRect:v7, v9, v11, v13];
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;
    font = [(UILabel *)self->_titleView font];
    [font pointSize];

    UIRoundToViewScale(self->_button);
    v31 = v30;
    UIRoundToViewScale(self->_button);
    v19 = -v32;
    v20 = -v31;
    v15 = v22;
    v16 = v24;
    v17 = v26;
    v18 = v28;
  }

  else
  {
    [(UIButton *)self->_button imageRectForContentRect:v7, v9, v11, v13];
    if (userInterfaceIdiom == 5)
    {
      v19 = -4.0;
      v20 = -6.0;
    }

    else
    {
      v19 = -5.0;
      v20 = -8.0;
    }
  }

  result = CGRectInset(*&v15, v19, v20);
  v33 = result.size.height + 1.0;
  result.size.height = v33;
  return result;
}

- (void)_updateSelectionViewForState:(unint64_t)state
{
  stateCopy = state;
  if ((state & 4) != 0 && !self->_selectionView)
  {
    _selectedIndicatorImage = [objc_opt_class() _selectedIndicatorImage];
    v6 = [(UIButton *)self->_button _selectedIndicatorViewWithImage:_selectedIndicatorImage];
    selectionView = self->_selectionView;
    self->_selectionView = v6;

    [(UIView *)self->_selectionView setAlpha:0.0];
    [(UIView *)self->_selectionView setUserInteractionEnabled:0];
    contentBackdropView = [(UIButtonLegacyVisualProvider *)self contentBackdropView];

    effectiveContentView = [(UIButtonLegacyVisualProvider *)self effectiveContentView];
    v10 = effectiveContentView;
    v11 = self->_selectionView;
    if (contentBackdropView)
    {
      contentBackdropView2 = [(UIButtonLegacyVisualProvider *)self contentBackdropView];
      [v10 insertSubview:v11 above:contentBackdropView2];
    }

    else
    {
      [effectiveContentView insertSubview:self->_selectionView atIndex:0];
    }
  }

  if (self->_selectionView)
  {
    v13 = self->_button;
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __61__UIButtonLegacyVisualProvider__updateSelectionViewForState___block_invoke;
    v27[3] = &unk_1E70F35B8;
    v27[4] = self;
    v14 = v13;
    v28 = v14;
    [UIView performWithoutAnimation:v27];
    v15 = 0.0;
    if ((stateCopy & 4) != 0)
    {
      [(UIButton *)self->_button _selectedIndicatorAlpha];
    }

    if (stateCopy)
    {
      v16 = v15 * 0.8;
    }

    else
    {
      v16 = v15;
    }

    [(UIView *)self->_selectionView alpha];
    if (v17 != v16)
    {
      v18 = dbl_18A67BCB0[(stateCopy & 4) == 0];
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __61__UIButtonLegacyVisualProvider__updateSelectionViewForState___block_invoke_2;
      v26[3] = &unk_1E70F32F0;
      v26[4] = self;
      *&v26[5] = v16;
      [UIView animateWithDuration:327684 delay:v26 options:0 animations:v18 completion:0.0];
    }
  }

  if ((stateCopy & 4) != 0)
  {
    _textNeedsCompositingModeWhenSelected = [(UIButtonLegacyVisualProvider *)self _textNeedsCompositingModeWhenSelected];
    _imageNeedsCompositingModeWhenSelected = [(UIButtonLegacyVisualProvider *)self _imageNeedsCompositingModeWhenSelected];
    if (_textNeedsCompositingModeWhenSelected)
    {
      v21 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E69798E8]];
      v22 = 1;
      goto LABEL_21;
    }
  }

  else
  {
    _imageNeedsCompositingModeWhenSelected = 0;
  }

  v22 = 0;
  v21 = 0;
LABEL_21:
  layer = [(UIView *)self->_titleView layer];
  [layer setCompositingFilter:v21];

  if (v22)
  {
  }

  if (_imageNeedsCompositingModeWhenSelected)
  {
    v24 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E69798E8]];
  }

  else
  {
    v24 = 0;
  }

  layer2 = [(UIView *)self->_imageView layer];
  [layer2 setCompositingFilter:v24];

  if (_imageNeedsCompositingModeWhenSelected)
  {
  }

  [(UIView *)self->_titleView _setOverrideUserInterfaceRenderingMode:v22];
  [(UIView *)self->_imageView _setOverrideUserInterfaceRenderingMode:_imageNeedsCompositingModeWhenSelected];
}

uint64_t __61__UIButtonLegacyVisualProvider__updateSelectionViewForState___block_invoke(uint64_t a1)
{
  [*(a1 + 40) _selectedIndicatorBounds];
  v2 = *(*(a1 + 32) + 56);

  return [v2 setFrame:?];
}

- (id)_transitionAnimationWithKeyPath:(id)path
{
  v3 = [MEMORY[0x1E6979318] animationWithKeyPath:path];
  LODWORD(v4) = 1041812769;
  LODWORD(v5) = 1043018044;
  LODWORD(v6) = 1044413908;
  LODWORD(v7) = 1.0;
  v8 = [MEMORY[0x1E69793D0] functionWithControlPoints:v4 :v5 :v6 :v7];
  [v3 setTimingFunction:v8];

  [v3 setDuration:0.2625];
  v9 = UIAnimationDragCoefficient();
  [v3 speed];
  *&v11 = v10 / v9;
  [v3 setSpeed:v11];

  return v3;
}

- (id)_fadeOutAnimationWithKeyPath:(id)path
{
  v3 = [MEMORY[0x1E6979318] animationWithKeyPath:path];
  LODWORD(v4) = 1050136617;
  LODWORD(v5) = 988616002;
  LODWORD(v6) = 0.25;
  LODWORD(v7) = 1.0;
  v8 = [MEMORY[0x1E69793D0] functionWithControlPoints:v4 :v5 :v6 :v7];
  [v3 setTimingFunction:v8];

  [v3 setBeginTime:UIAnimationDragCoefficient() * 0.785];
  [v3 setBeginTimeMode:*MEMORY[0x1E69795C0]];
  [v3 setDuration:0.71];
  [v3 setRemovedOnCompletion:0];
  [v3 setFillMode:*MEMORY[0x1E69797E0]];
  v9 = UIAnimationDragCoefficient();
  [v3 speed];
  *&v11 = v10 / v9;
  [v3 setSpeed:v11];

  return v3;
}

- (double)_borderWidthForState:(unint64_t)state bounds:(CGRect)bounds
{
  [(UIButton *)self->_button _drawingStrokeForState:state, bounds.origin.x, bounds.origin.y];
  button = self->_button;

  UIRoundToViewScale(button);
  return result;
}

- (void)_setupDrawingStyleForState:(unint64_t)state
{
  [(UIButtonLegacyVisualProvider *)self _highlightBoundsForDrawingStyle];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [(UIButton *)self->_button _borderColorForState:state];
  maskAnimationView = self->_maskAnimationView;
  if (maskAnimationView && ([(UIView *)maskAnimationView frame], !CGRectIsEmpty(v86)) && +[UIView areAnimationsEnabled])
  {
    v15 = ![(UIButton *)self->_button _isCarPlaySystemTypeButton];
  }

  else
  {
    v15 = 0;
  }

  [(UIButtonLegacyVisualProvider *)self _prepareMaskAnimationViewIfNecessary];
  [(_UIButtonMaskAnimationView *)self->_maskAnimationView setBorderColor:v13];
  layer = [(UIView *)self->_maskAnimationView layer];
  presentationLayer = [layer presentationLayer];

  [(UIView *)self->_maskAnimationView frame];
  v90.origin.x = v18;
  v90.origin.y = v19;
  v90.size.width = v20;
  v90.size.height = v21;
  v87.origin.x = v6;
  v87.origin.y = v8;
  v87.size.width = v10;
  v87.size.height = v12;
  if (!CGRectEqualToRect(v87, v90))
  {
    if (v15)
    {
      [presentationLayer bounds];
      v23 = v22;
      v25 = v24;
      v27 = v26;
      v29 = v28;
      v82 = *(MEMORY[0x1E695EFF8] + 8);
      v83 = *MEMORY[0x1E695EFF8];
      v30 = [(UIButtonLegacyVisualProvider *)self _transitionAnimationWithKeyPath:@"bounds"];
      v31 = [MEMORY[0x1E696B098] valueWithCGRect:{v23, v25, v27, v29}];
      [v30 setFromValue:v31];

      v32 = [MEMORY[0x1E696B098] valueWithCGRect:{v83, v82, v10, v12}];
      [v30 setToValue:v32];

      layer2 = [(UIView *)self->_maskAnimationView layer];
      [layer2 addAnimation:v30 forKey:@"bounds"];

      [presentationLayer position];
      v35 = v34;
      v37 = v36;
      v88.origin.x = v6;
      v88.origin.y = v8;
      v88.size.width = v10;
      v88.size.height = v12;
      MidX = CGRectGetMidX(v88);
      v89.origin.x = v6;
      v89.origin.y = v8;
      v89.size.width = v10;
      v89.size.height = v12;
      MidY = CGRectGetMidY(v89);
      v40 = [(UIButtonLegacyVisualProvider *)self _transitionAnimationWithKeyPath:@"position"];

      v41 = [MEMORY[0x1E696B098] valueWithCGPoint:{v35, v37}];
      [v40 setFromValue:v41];

      v42 = [MEMORY[0x1E696B098] valueWithCGPoint:{MidX, MidY}];
      [v40 setToValue:v42];

      layer3 = [(UIView *)self->_maskAnimationView layer];
      [layer3 addAnimation:v40 forKey:@"position"];
    }

    [(UIView *)self->_maskAnimationView setFrame:v6, v8, v10, v12];
  }

  [(UIButton *)self->_button _highlightCornerRadius];
  v45 = v44;
  layer4 = [(UIView *)self->_maskAnimationView layer];
  [layer4 setCornerRadius:v45];

  [(_UIButtonMaskAnimationView *)self->_maskAnimationView borderWidth];
  v48 = v47;
  [(UIButtonLegacyVisualProvider *)self _borderWidthForState:state bounds:v6, v8, v10, v12];
  v50 = v49;
  [presentationLayer borderWidth];
  v52 = v51;
  [(_UIButtonMaskAnimationView *)self->_maskAnimationView setBorderWidth:v50];
  if (v15)
  {
    if (v50 <= v48)
    {
      if (v50 < v48)
      {
        v53 = [(UIButtonLegacyVisualProvider *)self _transitionAnimationWithKeyPath:@"borderWidth"];
        _wasLastHighlightSuccessful = [(UIControl *)self->_button _wasLastHighlightSuccessful];
        v63 = fabs(v50) < 2.22044605e-16 && _wasLastHighlightSuccessful;
        if (v63)
        {
          [v53 setRemovedOnCompletion:0];
          v50 = 0.75;
          v64 = 0.49;
        }

        else
        {
          v64 = 0.245;
        }

        [v53 setDuration:v64];
        v65 = 1;
LABEL_25:
        borderColor = [(_UIButtonMaskAnimationView *)self->_maskAnimationView borderColor];
        v67 = [borderColor isEqual:v13];

        if ((v67 & 1) == 0)
        {
          if (!v65)
          {
            layer5 = [(UIView *)self->_maskAnimationView layer];
            [layer5 removeAnimationForKey:@"borderColor"];

            v84[0] = MEMORY[0x1E69E9820];
            v84[1] = 3221225472;
            v84[2] = __59__UIButtonLegacyVisualProvider__setupDrawingStyleForState___block_invoke;
            v84[3] = &unk_1E70F35B8;
            v84[4] = self;
            v85 = v13;
            [UIView animateWithDuration:4 delay:v84 options:0 animations:0.1 completion:0.0];

            if (v53)
            {
              goto LABEL_29;
            }

            goto LABEL_33;
          }

          v68 = [(UIButtonLegacyVisualProvider *)self _fadeOutAnimationWithKeyPath:@"borderColor"];
          layer6 = [(UIView *)self->_maskAnimationView layer];
          presentationLayer2 = [layer6 presentationLayer];
          [v68 setFromValue:{objc_msgSend(presentationLayer2, "borderColor")}];

          [v68 setToValue:v13];
          layer7 = [(UIView *)self->_maskAnimationView layer];
          [layer7 addAnimation:v68 forKey:@"borderColor"];

          [(_UIButtonMaskAnimationView *)self->_maskAnimationView setBorderColor:v13];
        }

        if (v53)
        {
LABEL_29:
          v72 = [MEMORY[0x1E696AD98] numberWithDouble:v52];
          [v53 setFromValue:v72];

          v73 = [MEMORY[0x1E696AD98] numberWithDouble:v50];
          [v53 setToValue:v73];

          [v53 setFillMode:*MEMORY[0x1E69797E8]];
          [v53 setDelegate:self->_maskAnimationView];
          layer8 = [(UIView *)self->_maskAnimationView layer];
          [layer8 addAnimation:v53 forKey:@"borderWidth"];

          if (v63)
          {
            layer11 = [(UIButtonLegacyVisualProvider *)self _fadeOutAnimationWithKeyPath:@"opacity"];
            layer9 = [(UIView *)self->_maskAnimationView layer];
            presentationLayer3 = [layer9 presentationLayer];

            v78 = MEMORY[0x1E696AD98];
            [presentationLayer3 opacity];
            v79 = [v78 numberWithFloat:?];
            [layer11 setFromValue:v79];

            [layer11 setToValue:&unk_1EFE2E518];
            [layer11 setDelegate:self->_maskAnimationView];
            layer10 = [(UIView *)self->_maskAnimationView layer];
            [layer10 addAnimation:layer11 forKey:@"opacity"];
          }

          else
          {
            layer11 = [(UIView *)self->_maskAnimationView layer];
            [layer11 removeAnimationForKey:@"opacity"];
          }
        }

LABEL_33:

        goto LABEL_34;
      }

      v53 = 0;
    }

    else
    {
      v53 = [MEMORY[0x1E69794A8] animationWithKeyPath:@"borderWidth"];
      [v53 setMass:1.2];
      [v53 setStiffness:300.0];
      [v53 setDamping:30.0];
      [v53 setVelocity:0.0];
      [v53 setDuration:0.3];
      v54 = UIAnimationDragCoefficient();
      [v53 speed];
      *&v56 = v55 / v54;
      [v53 setSpeed:v56];
    }

    v65 = 0;
    v63 = 0;
    goto LABEL_25;
  }

  layer12 = [(UIView *)self->_maskAnimationView layer];
  [layer12 removeAnimationForKey:@"borderWidth"];

  layer13 = [(UIView *)self->_maskAnimationView layer];
  [layer13 removeAnimationForKey:@"borderColor"];

  layer14 = [(UIView *)self->_maskAnimationView layer];
  [layer14 removeAnimationForKey:@"opacity"];

  borderColor2 = [(_UIButtonMaskAnimationView *)self->_maskAnimationView borderColor];
  v61 = [v13 isEqual:borderColor2];

  if ((v61 & 1) == 0)
  {
    [(_UIButtonMaskAnimationView *)self->_maskAnimationView setBorderColor:v13];
  }

LABEL_34:
  [(UIButtonLegacyVisualProvider *)self _updateMaskState];
}

- (void)willMoveToWindow:(id)window
{
  if (!window)
  {
    [(_UIButtonMaskAnimationView *)self->_maskAnimationView setDelegate:?];
    [(UIView *)self->_maskAnimationView removeFromSuperview];
    maskAnimationView = self->_maskAnimationView;
    self->_maskAnimationView = 0;
  }
}

- (id)_newLabelWithFrame:(CGRect)frame
{
  v4 = [[UIButtonLabel alloc] _initWithFrame:self->_button button:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [v4 setBackgroundColor:0];
  [v4 setBaselineAdjustment:1];
  [v4 setEnabled:1];
  [v4 setOpaque:0];
  [v4 setShadowOffset:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
  [(UILabel *)v4 _setSupportMultiLineShrinkToFit:?];
  [v4 setContentMode:0];
  v5 = 0;
  if ([(UIButton *)self->_button _wantsAccessibilityUnderline])
  {
    v6 = [(UIButton *)self->_button backgroundImageForState:0];
    v5 = v6 == 0;
  }

  [v4 _setWantsUnderlineForAccessibilityButtonShapesEnabled:v5];
  return v4;
}

- (void)_setupTitleViewRequestingLayout:(BOOL)layout
{
  if (!self->_titleView)
  {
    layoutCopy = layout;
    button = self->_button;
    [(UIView *)button bounds];
    [(UIButton *)button contentRectForBounds:?];
    [(UIButton *)button titleRectForContentRect:?];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __64__UIButtonLegacyVisualProvider__setupTitleViewRequestingLayout___block_invoke;
    v19[3] = &unk_1E70F3B20;
    v19[4] = self;
    v19[5] = v6;
    v19[6] = v7;
    v19[7] = v8;
    v19[8] = v9;
    [UIView performWithoutAnimation:v19];
    if ([(UIButton *)self->_button _shouldAdjustToTraitCollection])
    {
      [(UILabel *)self->_titleView setAdjustsFontForContentSizeCategory:[(UIButton *)self->_button _isiOSSystemProvidedButton]];
    }

    v18 = 0;
    v10 = [(UIButton *)self->_button _lazyTitleViewFontIsDefaultForIdiom:&v18];
    [(UILabel *)self->_titleView _setFont:v10 isDefaultForIdiom:v18];
    [(UILabel *)self->_titleView setLineBreakMode:5];
    isHighlighted = 0;
    titleView = self->_titleView;
    v13 = self->_button;
    if (*&v13->_buttonFlags)
    {
      isHighlighted = [(UIControl *)v13 isHighlighted];
    }

    [(UILabel *)titleView setReverseShadow:isHighlighted];
    [(UILabel *)self->_titleView setTextAlignment:2 * ([(UIControl *)self->_button effectiveContentHorizontalAlignment]== UIControlContentHorizontalAlignmentRight)];
    effectiveContentView = [(UIButtonLegacyVisualProvider *)self effectiveContentView];
    [effectiveContentView addSubview:self->_titleView];

    if (layoutCopy)
    {
      [(UIButton *)self->_button setNeedsLayout];
    }
  }

  if ((*(&self->_button->_buttonFlags + 3) & 0x80) != 0)
  {
    _defaultAttributes = [(UILabel *)self->_titleView _defaultAttributes];
    v16 = [_defaultAttributes mutableCopy];

    v17 = [(UIButton *)self->_button _titleColorForState:[(UIControl *)self->_button state] suppressTintColorFollowing:0];
    [v16 setObject:v17 forKeyedSubscript:*off_1E70EC920];

    [(UILabel *)self->_titleView _setDefaultAttributes:v16];
    *&self->_button->_buttonFlags &= ~0x80000000uLL;
  }
}

void __64__UIButtonLegacyVisualProvider__setupTitleViewRequestingLayout___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _newLabelWithFrame:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
  v3 = *(a1 + 32);
  v4 = *(v3 + 48);
  *(v3 + 48) = v2;
}

- (id)preferredConfigurationForFocusAnimation:(int64_t)animation inContext:(id)context
{
  contextCopy = context;
  _floatingContentView = [(UIButtonLegacyVisualProvider *)self _floatingContentView];

  if (_floatingContentView)
  {
    _floatingContentView2 = [(UIButtonLegacyVisualProvider *)self _floatingContentView];
    v9 = [_floatingContentView2 _preferredConfigurationForFocusAnimation:animation inContext:contextCopy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t __52__UIButtonLegacyVisualProvider__floatingContentView__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  v3 = [_UIFocusAnimationConfiguration configurationWithStyle:1];
  [v2 setFocusAnimationConfiguration:v3];

  [*(*(a1 + 32) + 24) setShadowOpacity:0.2];
  [*(*(a1 + 32) + 24) setShadowRadius:16.0];
  v4 = *(*(a1 + 32) + 24);

  return [v4 setShadowVerticalOffset:25.0];
}

- (id)selectionIndicatorView
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selectionView = self->_selectionView;
  }

  else
  {
    selectionView = 0;
  }

  return selectionView;
}

- (void)setExternalFlatEdge:(unint64_t)edge
{
  [(UIButtonLegacyVisualProvider *)self _prepareMaskAnimationViewIfNecessary];
  maskAnimationView = self->_maskAnimationView;

  [(_UIButtonMaskAnimationView *)maskAnimationView setHardEdge:edge];
}

- (void)setDrawingStroke:(double)stroke forState:(unint64_t)state
{
  [(UIButtonLegacyVisualProvider *)self _updateEffectsForImageView:self->_imageView background:0, stroke];
  [(UIButtonLegacyVisualProvider *)self _updateEffectsForImageView:self->_backgroundView background:1];

  [(UIButtonLegacyVisualProvider *)self _updateMaskState];
}

- (void)_updateEffectsForImageView:(id)view background:(BOOL)background
{
  backgroundCopy = background;
  viewCopy = view;
  if ([(UIButtonLegacyVisualProvider *)self _shouldDefaultToTemplatesForImageViewBackground:backgroundCopy])
  {
    v6 = 2;
  }

  else
  {
    v6 = 0;
  }

  [viewCopy _setDefaultRenderingMode:v6];
}

- (id)_newImageViewWithFrame:(CGRect)frame
{
  v4 = [[UIImageView alloc] initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(UIView *)v4 setUserInteractionEnabled:0];
  [(UIView *)v4 setOpaque:0];
  [(UIView *)v4 setClipsToBounds:1];
  [(UIImageView *)v4 setSemanticContentAttribute:[(UIView *)self->_button semanticContentAttribute]];
  return v4;
}

- (id)_createPreparedImageViewWithFrame:(CGRect)frame
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__102;
  v12 = __Block_byref_object_dispose__102;
  v13 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __66__UIButtonLegacyVisualProvider__createPreparedImageViewWithFrame___block_invoke;
  v6[3] = &unk_1E710B920;
  v6[4] = self;
  v6[5] = &v8;
  frameCopy = frame;
  [UIView performWithoutAnimation:v6];
  [(UIButtonLegacyVisualProvider *)self _updateEffectsForImageView:v9[5] background:0];
  v4 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v4;
}

void __66__UIButtonLegacyVisualProvider__createPreparedImageViewWithFrame___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _newImageViewWithFrame:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)}];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

@end