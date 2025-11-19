@interface UIButton
+ (BOOL)_buttonTypeIsModernUI:(int64_t)a3;
+ (BOOL)_buttonTypeIsSystemProvided:(int64_t)a3;
+ (UIButton)buttonWithConfiguration:(UIButtonConfiguration *)configuration primaryAction:(UIAction *)primaryAction;
+ (UIButton)buttonWithType:(UIButtonType)buttonType;
+ (UIButton)buttonWithType:(UIButtonType)buttonType primaryAction:(UIAction *)primaryAction;
+ (UIButton)systemButtonWithImage:(UIImage *)image target:(id)target action:(SEL)action;
+ (id)_defaultBackgroundImageColorForType:(int64_t)a3 andState:(unint64_t)a4;
+ (id)_defaultBackgroundImageForType:(int64_t)a3 andState:(unint64_t)a4;
+ (id)_defaultBackgroundImageNameForType:(int64_t)a3 andState:(unint64_t)a4 compact:(BOOL)a5;
+ (id)_defaultImageColorForState:(unint64_t)a3 button:(id)a4;
+ (id)_defaultImageColorForType:(int64_t)a3 andState:(unint64_t)a4 idiom:(int64_t)a5;
+ (id)_defaultImageForType:(int64_t)a3 andState:(unint64_t)a4 withConfiguration:(id)a5;
+ (id)_defaultImageNameForType:(int64_t)a3 andState:(unint64_t)a4;
+ (id)_defaultSymbolConfigurationForType:(int64_t)a3 andState:(unint64_t)a4 compact:(BOOL)a5 idiom:(int64_t)a6;
+ (id)_defaultTitleColorForState:(unint64_t)a3 button:(id)a4 isTintColor:(BOOL *)a5;
+ (void)_registerVisualProviderClass:(Class)a3 forIdiom:(int64_t)a4;
+ (void)_setAllowsUnsupportedMacIdiomBehavior:(BOOL)a3;
+ (void)_setVisuallyHighlighted:(BOOL)a3 forViews:(id)a4 initialPress:(BOOL)a5 baseAlpha:(double)a6;
+ (void)_setVisuallyHighlighted:(BOOL)a3 forViews:(id)a4 initialPress:(BOOL)a5 highlightBlock:(id)a6;
- ($F24F406B2B787EFB06265DBA3D28CBD5)_baselineOffsetsAtSize:(CGSize)a3;
- (BOOL)_fontIsDefaultForIdiom;
- (BOOL)_hasBaseline;
- (BOOL)_hasDrawingStyle;
- (BOOL)_hasHighlightColor;
- (BOOL)_hasImageForProperty:(id)a3;
- (BOOL)_hasVisibleDefaultSelectionIndicator;
- (BOOL)_isEffectivelyDisabledExternalButton;
- (BOOL)_isInCarPlay;
- (BOOL)_isModernButton;
- (BOOL)_isOn;
- (BOOL)_isSystemProvidedButton;
- (BOOL)_isToggleButton;
- (BOOL)_isiOSSystemProvidedButton;
- (BOOL)_likelyToHaveTitle;
- (BOOL)_menuEnabled;
- (BOOL)_needsDoubleUpdateConstraintsPass;
- (BOOL)_shouldInvalidateBaselineConstraintsForSize:(CGSize)a3 oldSize:(CGSize)a4;
- (BOOL)_unconditionallyWantsSetBoundsFromISEngineLayout;
- (BOOL)_wantsBaselineUpdatingFollowingConstraintsPass;
- (BOOL)beginTrackingWithTouch:(id)a3 withEvent:(id)a4;
- (BOOL)canBecomeFocused;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (BOOL)scalesLargeContentImage;
- (CGPoint)menuAttachmentPointForConfiguration:(id)a3;
- (CGPoint)pressFeedbackPosition;
- (CGRect)_clippedHighlightBounds;
- (CGRect)_highlightBounds;
- (CGRect)_selectedIndicatorBounds;
- (CGRect)_visualBounds;
- (CGRect)backgroundRectForBounds:(CGRect)bounds;
- (CGRect)contentRectForBounds:(CGRect)bounds;
- (CGRect)imageRectForContentRect:(CGRect)contentRect;
- (CGRect)titleRectForContentRect:(CGRect)contentRect;
- (CGSize)_effectiveSizeForImage:(id)a3;
- (CGSize)_intrinsicSizeWithinSize:(CGSize)a3;
- (CGSize)_roundSize:(CGSize)a3;
- (CGSize)_titleShadowOffset;
- (CGSize)intrinsicContentSize;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5;
- (Class)_intelligenceBaseClass;
- (NSAttributedString)currentAttributedTitle;
- (NSISEngine)_activeSizeToFitLayoutEngine;
- (NSString)currentTitle;
- (NSString)description;
- (UIButton)initWithCoder:(NSCoder *)coder;
- (UIButton)initWithFrame:(CGRect)frame;
- (UIButton)initWithFrame:(CGRect)frame primaryAction:(UIAction *)primaryAction;
- (UIButtonConfiguration)configuration;
- (UIButtonVisualProvider)_visualProvider;
- (UIColor)_currentImageColor;
- (UIColor)currentTitleColor;
- (UIColor)currentTitleShadowColor;
- (UIEdgeInsets)_combinedContentPaddingInsets;
- (UIEdgeInsets)_internalTitlePaddingInsets;
- (UIEdgeInsets)_pathImageEdgeInsets;
- (UIEdgeInsets)_pathTitleEdgeInsets;
- (UIEdgeInsets)alignmentRectInsets;
- (UIEdgeInsets)contentEdgeInsets;
- (UIEdgeInsets)imageEdgeInsets;
- (UIEdgeInsets)titleEdgeInsets;
- (UIImage)currentBackgroundImage;
- (UIImage)currentImage;
- (UIImageSymbolConfiguration)currentPreferredSymbolConfiguration;
- (UIImageView)imageView;
- (UILabel)subtitleLabel;
- (UILabel)titleLabel;
- (UIView)_imageEffectContainerView;
- (_UIButtonConfigurationState)_configurationState;
- (double)_additionalBaselineSpacingForEdge:(int)a3;
- (double)_autolayoutSpacingAtEdge:(int)a3 forAttribute:(id)a4 nextToNeighbor:(id)a5 edge:(int)a6 attribute:(int64_t)a7 multiplier:(double)a8;
- (double)_autolayoutSpacingAtEdge:(int)a3 forAttribute:(int64_t)a4 inContainer:(id)a5 isGuide:(BOOL)a6;
- (double)_baselineOffsetFromBottom;
- (double)_baselineOffsetFromNearestEdgeForLayoutAttribute:(int64_t)a3;
- (double)_drawingStrokeForState:(unint64_t)a3;
- (double)_drawingStrokeForStyle:(int64_t)a3;
- (double)_firstBaselineOffsetFromTop;
- (double)_focusSizeIncrease;
- (double)_highlightCornerRadius;
- (double)_preferredMaxLayoutWidth;
- (double)_scaleFactorForImage;
- (id)__vis_debugDescription;
- (id)_allButtonContent;
- (id)_archivableContent:(id *)a3;
- (id)_attributedSubtitleForState:(unint64_t)a3;
- (id)_attributedTitleForState:(unint64_t)a3;
- (id)_attributedTitleForState:(unint64_t)a3 adjustedToTraitCollection:(id)a4;
- (id)_backgroundForState:(unint64_t)a3 usesBackgroundForNormalState:(BOOL *)a4;
- (id)_backgroundView;
- (id)_borderColorForState:(unint64_t)a3;
- (id)_configurationUpdateHandler;
- (id)_contentBackdropView;
- (id)_contentForState:(unint64_t)a3;
- (id)_contextMenuInteraction:(id)a3 styleForMenuWithConfiguration:(id)a4;
- (id)_currentImageWithResolvedConfiguration;
- (id)_defaultFocusEffect;
- (id)_defaultFontForIdiom:(int64_t)a3;
- (id)_effectiveContentView;
- (id)_encodableSubviews;
- (id)_externalBorderColorForState:(unint64_t)a3;
- (id)_externalImageColorForState:(unint64_t)a3;
- (id)_externalTitleColorForState:(unint64_t)a3 isTintColor:(BOOL *)a4;
- (id)_font;
- (id)_imageColorForState:(unint64_t)a3;
- (id)_imageForState:(unint64_t)a3 applyingConfiguration:(BOOL)a4 usesImageForNormalState:(BOOL *)a5;
- (id)_imageView;
- (id)_imageViewIfNeeded;
- (id)_layoutDebuggingTitle;
- (id)_lazyTitleViewFontIsDefaultForIdiom:(BOOL *)a3;
- (id)_morphView;
- (id)_pointerEffect;
- (id)_pointerEffectPreviewParameters;
- (id)_pointerEffectWithPreview:(id)a3;
- (id)_preferredConfigurationForFocusAnimation:(int64_t)a3 inContext:(id)a4;
- (id)_preferredConfigurationForState:(unint64_t)a3 includeDefault:(BOOL)a4;
- (id)_preferredHoverEffect;
- (id)_preferredHoverShape;
- (id)_selectedIndicatorViewWithImage:(id)a3;
- (id)_selectionIndicatorView;
- (id)_shadowColorForState:(unint64_t)a3;
- (id)_shapeInContainer:(id)a3 proposal:(id)a4;
- (id)_subtitleForState:(unint64_t)a3;
- (id)_titleColorForState:(unint64_t)a3;
- (id)_titleColorForState:(unint64_t)a3 suppressTintColorFollowing:(BOOL *)a4;
- (id)_titleForState:(unint64_t)a3;
- (id)_titleOrImageViewForBaselineLayout;
- (id)_titleView;
- (id)_viewForLoweringBaselineLayoutAttribute:(int)a3;
- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4;
- (id)contextMenuInteraction:(id)a3 previewForDismissingMenuWithConfiguration:(id)a4;
- (id)contextMenuInteraction:(id)a3 previewForHighlightingMenuWithConfiguration:(id)a4;
- (id)largeContentImage;
- (id)largeContentTitle;
- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5;
- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4;
- (id)viewForFirstBaselineLayout;
- (id)viewForLastBaselineLayout;
- (id)visualProviderClassForTraitCollection:(id)a3;
- (int64_t)_drawingStyleForState:(unint64_t)a3;
- (int64_t)_drawingStyleForStroke:(double)a3;
- (int64_t)_externalDrawingStyleForState:(unint64_t)a3;
- (int64_t)_lineBreakMode;
- (uint64_t)_setContentValue:(void *)a3 forField:(uint64_t)a4 state:;
- (unint64_t)defaultAccessibilityTraits;
- (void)_alignmentRectInsetsHaveChangedForChildImageView:(id)a3;
- (void)_applyCarPlaySystemButtonCustomizations;
- (void)_applyDynamicSearchBarBackgroundAndCapsuleCornerMaskingConfigurationRequiringGlass:(BOOL)a3;
- (void)_commonInitForPrimaryAction:(id)a3;
- (void)_didChangeFromIdiom:(int64_t)a3 onScreen:(id)a4 traverseHierarchy:(BOOL)a5;
- (void)_didMoveFromWindow:(id)a3 toWindow:(id)a4;
- (void)_didUpdateFocusInContext:(id)a3;
- (void)_intelligenceCollectSubelementsIn:(CGRect)a3 using:(id)a4 transformToRoot:(id)a5;
- (void)_intrinsicContentSizeInvalidatedForChildView:(id)a3;
- (void)_invalidateForPropertyChange;
- (void)_markAndLayoutAsNeededForField:(uint64_t)a3 state:;
- (void)_populateArchivedSubviews:(id)a3;
- (void)_prepareForFirstIntrinsicContentSizeCalculation;
- (void)_prepareForSecondIntrinsicContentSizeCalculationWithLayoutEngineBounds:(CGRect)a3;
- (void)_refreshVisualProvider;
- (void)_refreshVisualProviderForTraitCollection:(id)a3 populatingAPIProperties:(BOOL)a4;
- (void)_resetLazyTitleViewFont;
- (void)_selectionInteractionDidBeginHinting:(id)a3;
- (void)_selectionInteractionDidCancelHinting:(id)a3;
- (void)_selectionInteractionDidSelect:(id)a3;
- (void)_sendActionsForEvents:(unint64_t)a3 withEvent:(id)a4;
- (void)_setAttributedSubtitle:(id)a3 forState:(unint64_t)a4;
- (void)_setAttributedTitle:(id)a3 forStates:(unint64_t)a4;
- (void)_setBackground:(id)a3 forStates:(unint64_t)a4;
- (void)_setBlurEnabled:(BOOL)a3;
- (void)_setButtonType:(int64_t)a3;
- (void)_setConfigurationUpdateHandler:(id)a3;
- (void)_setContent:(id)a3 forState:(unint64_t)a4;
- (void)_setContentBackgroundHidden:(BOOL)a3;
- (void)_setContentHuggingPriorities:(CGSize)a3;
- (void)_setDefaultFontForIdiom;
- (void)_setDisableAutomaticTitleAnimations:(BOOL)a3;
- (void)_setDrawingStroke:(double)a3 forState:(unint64_t)a4;
- (void)_setDrawingStyle:(int64_t)a3 forState:(unint64_t)a4;
- (void)_setExternalFlatEdge:(unint64_t)a3;
- (void)_setFocusSizeIncrease:(double)a3;
- (void)_setFont:(id)a3 isDefaultForIdiom:(BOOL)a4;
- (void)_setFrame:(CGRect)a3 deferLayout:(BOOL)a4;
- (void)_setHasActiveMenuPresentation:(BOOL)a3;
- (void)_setHighlighted:(BOOL)a3 animated:(BOOL)a4;
- (void)_setHighlightedWithoutUpdatingState:(BOOL)a3;
- (void)_setHovered:(BOOL)a3;
- (void)_setImage:(id)a3 forStates:(unint64_t)a4;
- (void)_setImageColor:(id)a3 forState:(unint64_t)a4;
- (void)_setImageColor:(id)a3 forStates:(unint64_t)a4;
- (void)_setImageContentMode:(int64_t)a3;
- (void)_setLineBreakMode:(int64_t)a3;
- (void)_setMenuProvider:(id)a3;
- (void)_setOn:(BOOL)a3;
- (void)_setShadowColor:(id)a3 forStates:(unint64_t)a4;
- (void)_setShouldHandleScrollerMouseEvent:(BOOL)a3;
- (void)_setSubtitle:(id)a3 forState:(unint64_t)a4;
- (void)_setTitle:(id)a3 forStates:(unint64_t)a4;
- (void)_setTitleColor:(id)a3 forStates:(unint64_t)a4;
- (void)_setTitleFrozen:(BOOL)a3;
- (void)_setTitleShadowOffset:(CGSize)a3;
- (void)_setVisualEffectViewEnabled:(BOOL)a3 backgroundColor:(id)a4;
- (void)_setVisualProvider:(id)a3;
- (void)_setWantsAccessibilityUnderline:(BOOL)a3;
- (void)_shim_setConfiguration:(id)a3;
- (void)_takeContentFromArchivableContent:(id)a3;
- (void)_titleViewLabelMetricsChanged;
- (void)_uikit_applyValueFromTraitStorage:(id)a3 forKeyPath:(id)a4;
- (void)_updateBaselineInformationDependentOnBounds;
- (void)_updateConfigurationWithObservationTracking:(id)a3;
- (void)_updateContextMenuEnabled;
- (void)_updateForAutomaticSelection;
- (void)_updateProperties;
- (void)_willMoveToWindow:(id)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)endTrackingWithTouch:(id)a3 withEvent:(id)a4;
- (void)forcedSelectionOfMenu:(id)a3 willChangeTo:(id)a4;
- (void)layoutSubviews;
- (void)pointerInteraction:(id)a3 willEnterRegion:(id)a4 animator:(id)a5;
- (void)pointerInteraction:(id)a3 willExitRegion:(id)a4 animator:(id)a5;
- (void)setAdjustsImageSizeForAccessibilityContentSizeCategory:(BOOL)a3;
- (void)setAdjustsImageWhenDisabled:(BOOL)adjustsImageWhenDisabled;
- (void)setAdjustsImageWhenHighlighted:(BOOL)adjustsImageWhenHighlighted;
- (void)setAttributedTitle:(NSAttributedString *)title forState:(UIControlState)state;
- (void)setAutomaticallyUpdatesConfiguration:(BOOL)automaticallyUpdatesConfiguration;
- (void)setAutosizesToFit:(BOOL)a3;
- (void)setBackgroundImage:(UIImage *)image forState:(UIControlState)state;
- (void)setBackgroundImage:(id)a3 forStates:(unint64_t)a4;
- (void)setBounds:(CGRect)a3;
- (void)setChangesSelectionAsPrimaryAction:(BOOL)changesSelectionAsPrimaryAction;
- (void)setConfigurationUpdateHandler:(UIButtonConfigurationUpdateHandler)configurationUpdateHandler;
- (void)setContentEdgeInsets:(UIEdgeInsets)contentEdgeInsets;
- (void)setContentHorizontalAlignment:(int64_t)a3;
- (void)setContentVerticalAlignment:(int64_t)a3;
- (void)setDisabledDimsImage:(BOOL)a3;
- (void)setEnabled:(BOOL)a3;
- (void)setFrame:(CGRect)a3;
- (void)setImage:(UIImage *)image forState:(UIControlState)state;
- (void)setImage:(id)a3 forStates:(unint64_t)a4;
- (void)setImageEdgeInsets:(UIEdgeInsets)imageEdgeInsets;
- (void)setMenu:(UIMenu *)menu;
- (void)setNeedsLayout;
- (void)setNeedsUpdateConfiguration;
- (void)setPointerStyleProvider:(UIButtonPointerStyleProvider)pointerStyleProvider;
- (void)setPreferredBehavioralStyle:(UIBehavioralStyle)preferredBehavioralStyle;
- (void)setPreferredSymbolConfiguration:(UIImageSymbolConfiguration *)configuration forImageInState:(UIControlState)state;
- (void)setReversesTitleShadowWhenHighlighted:(BOOL)reversesTitleShadowWhenHighlighted;
- (void)setRole:(UIButtonRole)role;
- (void)setSelected:(BOOL)a3;
- (void)setSemanticContentAttribute:(int64_t)a3;
- (void)setShowsMenuAsPrimaryAction:(BOOL)a3;
- (void)setShowsTouchWhenHighlighted:(BOOL)showsTouchWhenHighlighted;
- (void)setTintColor:(UIColor *)tintColor;
- (void)setTitle:(NSString *)title forState:(UIControlState)state;
- (void)setTitle:(id)a3 forStates:(unint64_t)a4;
- (void)setTitleColor:(UIColor *)color forState:(UIControlState)state;
- (void)setTitleColor:(id)a3 forStates:(unint64_t)a4;
- (void)setTitleEdgeInsets:(UIEdgeInsets)titleEdgeInsets;
- (void)setTitleShadowColor:(UIColor *)color forState:(UIControlState)state;
- (void)setTitleShadowColor:(id)a3 forStates:(unint64_t)a4;
- (void)tintColorDidChange;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateConstraints;
@end

@implementation UIButton

- (void)layoutSubviews
{
  v3 = [(UIButton *)self _visualProvider];
  [v3 layoutSubviews];

  if ((*(&self->super.super._viewFlags + 7) & 4) != 0)
  {
    v4.receiver = self;
    v4.super_class = UIButton;
    [(UIView *)&v4 layoutSubviews];
  }
}

- (BOOL)_needsDoubleUpdateConstraintsPass
{
  buttonVisualProviderFlags = self->_buttonVisualProviderFlags;
  if (buttonVisualProviderFlags)
  {
    if ((buttonVisualProviderFlags & 4) != 0)
    {
LABEL_4:
      v6 = [(UIButton *)self _visualProvider];
      v7 = [v6 hasMultilineText];

      return v7;
    }
  }

  else
  {
    v4 = [(UIButton *)self _visualProvider];
    if (v4)
    {
      v5 = self->_buttonVisualProviderFlags;

      if ((v5 & 4) != 0)
      {
        goto LABEL_4;
      }
    }
  }

  return 0;
}

- (void)setNeedsLayout
{
  v4.receiver = self;
  v4.super_class = UIButton;
  [(UIView *)&v4 setNeedsLayout];
  if (dyld_program_sdk_at_least())
  {
    [(UIView *)self _is_setNeedsLayout];
    v3 = [(UIView *)self layer];
    [v3 setNeedsLayout];
  }
}

- (UIButtonVisualProvider)_visualProvider
{
  visualProvider = self->_visualProvider;
  if (!visualProvider)
  {
    [(UIButton *)self _refreshVisualProvider];
    visualProvider = self->_visualProvider;
  }

  return visualProvider;
}

- (void)_invalidateForPropertyChange
{
  [(UIControl *)self _invalidatePointerInteraction];
  [(UIButton *)self setNeedsLayout];
  [(UIButton *)self setNeedsUpdateConfiguration];
  *&self->_buttonFlags |= 0x40000000uLL;
}

- (void)_refreshVisualProvider
{
  v3 = [(UIView *)self traitCollection];
  [(UIButton *)self _refreshVisualProviderForTraitCollection:v3];
}

- (BOOL)_isiOSSystemProvidedButton
{
  v3 = objc_opt_class();
  v4 = [(UIButton *)self _buttonType];

  return [v3 _buttonTypeIsiOSSystemProvided:v4];
}

- (void)setNeedsUpdateConfiguration
{
  buttonVisualProviderFlags = self->_buttonVisualProviderFlags;
  if (buttonVisualProviderFlags)
  {
    if ((buttonVisualProviderFlags & 4) == 0)
    {
      return;
    }
  }

  else
  {
    v4 = [(UIButton *)self _visualProvider];
    if (!v4)
    {
      return;
    }

    v5 = self->_buttonVisualProviderFlags;

    if ((v5 & 4) == 0)
    {
      return;
    }
  }

  v6 = [(UIButton *)self _visualProvider];
  [v6 setNeedsUpdateConfiguration];

  if (+[UIView _isInAnimationBlockWithAnimationsEnabled])
  {
    v7 = [(UIButton *)self _visualProvider];
    [v7 updateConfigurationIfNecessary];
  }
}

- (void)_setDefaultFontForIdiom
{
  if ([(UIButton *)self _isiOSSystemProvidedButton]&& [(UIButton *)self _shouldAdjustToTraitCollection])
  {
    v4 = [off_1E70ECC18 preferredFontForTextStyle:@"UICTFontTextStyleBody"];
    [UIButton _setFont:"_setFont:isDefaultForIdiom:" isDefaultForIdiom:?];
  }

  else
  {
    v4 = [(UIView *)self traitCollection];
    v3 = -[UIButton _defaultFontForIdiom:](self, "_defaultFontForIdiom:", [v4 userInterfaceIdiom]);
    [(UIButton *)self _setFont:v3 isDefaultForIdiom:1];
  }
}

- (void)tintColorDidChange
{
  v4.receiver = self;
  v4.super_class = UIButton;
  [(UIView *)&v4 tintColorDidChange];
  v3 = [(UIButton *)self _visualProvider];
  [v3 tintColorDidChange];
}

- (UIEdgeInsets)_combinedContentPaddingInsets
{
  v4 = *&self->_internalTitlePaddingInsets.top;
  v5 = *&self->_internalTitlePaddingInsets.bottom;
  if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(v4), vceqzq_f64(v5))))))
  {
    left = self->_internalTitlePaddingInsets.left;
    right = self->_internalTitlePaddingInsets.right;
  }

  else
  {
    [(UIButton *)self contentEdgeInsets:v2];
  }

  result.bottom = v5.f64[0];
  result.top = v4.f64[0];
  result.right = right;
  result.left = left;
  return result;
}

- (UIEdgeInsets)contentEdgeInsets
{
  top = self->_contentEdgeInsets.top;
  left = self->_contentEdgeInsets.left;
  bottom = self->_contentEdgeInsets.bottom;
  right = self->_contentEdgeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (BOOL)_isModernButton
{
  if ([objc_opt_class() _buttonTypeIsModernUI:{-[UIButton _buttonType](self, "_buttonType")}])
  {
    return 1;
  }

  return [(UIButton *)self _hasDrawingStyle];
}

- (BOOL)_hasDrawingStyle
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  contentLookup = self->_contentLookup;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __28__UIButton__hasDrawingStyle__block_invoke;
  v8[3] = &unk_1E7104D98;
  v8[4] = &v9;
  [(NSMutableDictionary *)contentLookup enumerateKeysAndObjectsUsingBlock:v8];
  if ((v10[3] & 1) == 0 && [(UIButton *)self _isCarPlaySystemTypeButton])
  {
    v4 = [(UIButton *)self _contentForState:[(UIControl *)self state]];
    v5 = [v4 background];

    if (!v5)
    {
      *(v10 + 24) = 1;
    }
  }

  v6 = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  return v6;
}

- (BOOL)_isInCarPlay
{
  v2 = [(UIView *)self traitCollection];
  v3 = [v2 userInterfaceIdiom] == 3;

  return v3;
}

- (void)_updateProperties
{
  v4.receiver = self;
  v4.super_class = UIButton;
  [(UIView *)&v4 _updateProperties];
  v3 = [(UIButton *)self _visualProvider];
  [v3 updateProperties];
}

- (id)_backgroundView
{
  v2 = [(UIButton *)self _visualProvider];
  v3 = [v2 backgroundViewCreateIfNeeded:0];

  return v3;
}

- (UIEdgeInsets)imageEdgeInsets
{
  top = self->_imageEdgeInsets.top;
  left = self->_imageEdgeInsets.left;
  bottom = self->_imageEdgeInsets.bottom;
  right = self->_imageEdgeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)titleEdgeInsets
{
  top = self->_titleEdgeInsets.top;
  left = self->_titleEdgeInsets.left;
  bottom = self->_titleEdgeInsets.bottom;
  right = self->_titleEdgeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

void __28__UIButton__hasDrawingStyle__block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = [a3 drawingStroke];
  [v6 doubleValue];
  v8 = v7;

  if (fabs(v8) >= 2.22044605e-16)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }
}

- (CGPoint)pressFeedbackPosition
{
  v3 = [(UIButton *)self imageForState:1];

  [(UIView *)self bounds];
  [(UIButton *)self contentRectForBounds:?];
  if (v3)
  {
    [(UIButton *)self imageRectForContentRect:?];
  }

  v8 = v4 + v6 * 0.5;
  v9 = v5 + v7 * 0.5;
  result.y = v9;
  result.x = v8;
  return result;
}

- (void)_updateConfigurationWithObservationTracking:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_188B5A3B4(a3);
  swift_unknownObjectRelease();
}

- (_UIButtonConfigurationState)_configurationState
{
  v3 = [_UIButtonConfigurationState alloc];
  v4 = [(UIView *)self traitCollection];
  v5 = [(UIViewConfigurationState *)v3 initWithTraitCollection:v4];

  v6 = [(UIControl *)self state];
  [(UIViewConfigurationState *)v5 setDisabled:(v6 >> 1) & 1];
  [(UIViewConfigurationState *)v5 setHighlighted:v6 & 1];
  [(UIViewConfigurationState *)v5 setSelected:(v6 >> 2) & 1];
  [(UIViewConfigurationState *)v5 setFocused:(v6 >> 3) & 1];

  return v5;
}

- (BOOL)_menuEnabled
{
  v3 = [(UIButton *)self _visualProvider];
  v4 = [objc_opt_class() shouldUpdateContextMenuEnabledOnMenuChanges];

  if (v4)
  {

    return [(UIControl *)self isContextMenuInteractionEnabled];
  }

  else
  {
    return self->_menu || self->_menuProvider != 0;
  }
}

- (id)_font
{
  buttonVisualProviderFlags = self->_buttonVisualProviderFlags;
  if (buttonVisualProviderFlags)
  {
    if ((buttonVisualProviderFlags & 0x20) != 0)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v4 = [(UIButton *)self _visualProvider];
    if (v4)
    {
      v5 = self->_buttonVisualProviderFlags;

      if ((v5 & 0x20) != 0)
      {
LABEL_4:
        v6 = [(UIButton *)self _visualProvider];
        if ([v6 deferToLazyTitleFont])
        {
          v7 = self->_lazyTitleViewFont;
        }

        else
        {
          v8 = [(UIButton *)self _visualProvider];
          v7 = [v8 font];
        }

        goto LABEL_10;
      }
    }
  }

  v7 = 0;
LABEL_10:

  return v7;
}

- (UIEdgeInsets)alignmentRectInsets
{
  v2 = [(UIButton *)self _visualProvider];
  [v2 alignmentRectInsets];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.right = v14;
  result.bottom = v13;
  result.left = v12;
  result.top = v11;
  return result;
}

- (CGSize)intrinsicContentSize
{
  buttonVisualProviderFlags = self->_buttonVisualProviderFlags;
  if ((buttonVisualProviderFlags & 1) == 0)
  {
    v4 = [(UIButton *)self _visualProvider];
    if (v4)
    {
      v5 = self->_buttonVisualProviderFlags;

      if ((v5 & 4) != 0)
      {
        goto LABEL_4;
      }
    }

LABEL_6:
    v13.receiver = self;
    v13.super_class = UIButton;
    [(UIView *)&v13 intrinsicContentSize];
    goto LABEL_7;
  }

  if ((buttonVisualProviderFlags & 4) == 0)
  {
    goto LABEL_6;
  }

LABEL_4:
  v6 = [(UIButton *)self _visualProvider];
  [v6 intrinsicContentSize];
  v8 = v7;
  v10 = v9;

  v11 = v8;
  v12 = v10;
LABEL_7:
  result.height = v12;
  result.width = v11;
  return result;
}

- (UIImageView)imageView
{
  v2 = [(UIButton *)self _visualProvider];
  v3 = [v2 imageViewCreateIfNeeded:1];

  return v3;
}

- (BOOL)_unconditionallyWantsSetBoundsFromISEngineLayout
{
  buttonVisualProviderFlags = self->_buttonVisualProviderFlags;
  if (buttonVisualProviderFlags)
  {
    if ((buttonVisualProviderFlags & 4) != 0)
    {
      return 1;
    }
  }

  else
  {
    v2 = [(UIButton *)self _visualProvider];
    if (v2 && (*&self->_buttonVisualProviderFlags & 4) != 0)
    {
      v5 = 1;
LABEL_7:

      return v5;
    }
  }

  v7.receiver = self;
  v7.super_class = UIButton;
  v5 = [(UIView *)&v7 _unconditionallyWantsSetBoundsFromISEngineLayout];
  if ((buttonVisualProviderFlags & 1) == 0)
  {
    goto LABEL_7;
  }

  return v5;
}

- (void)updateConstraints
{
  v3 = [(UIButton *)self _visualProvider];
  [v3 updateConstraints];

  v4.receiver = self;
  v4.super_class = UIButton;
  [(UIView *)&v4 updateConstraints];
}

- (BOOL)_wantsBaselineUpdatingFollowingConstraintsPass
{
  buttonVisualProviderFlags = self->_buttonVisualProviderFlags;
  if (buttonVisualProviderFlags)
  {
    if ((buttonVisualProviderFlags & 4) != 0)
    {
LABEL_4:
      v6 = [(UIButton *)self _visualProvider];
      v7 = [v6 vendsBaselineInformationToAutoLayout];

      return v7;
    }
  }

  else
  {
    v4 = [(UIButton *)self _visualProvider];
    if (v4)
    {
      v5 = self->_buttonVisualProviderFlags;

      if ((v5 & 4) != 0)
      {
        goto LABEL_4;
      }
    }
  }

  v9.receiver = self;
  v9.super_class = UIButton;
  return [(UIView *)&v9 _wantsBaselineUpdatingFollowingConstraintsPass];
}

- (BOOL)_hasBaseline
{
  buttonVisualProviderFlags = self->_buttonVisualProviderFlags;
  if (buttonVisualProviderFlags)
  {
    if ((buttonVisualProviderFlags & 4) != 0)
    {
LABEL_4:
      v6 = [(UIButton *)self _visualProvider];
      v7 = [v6 hasBaseline];

      return v7;
    }
  }

  else
  {
    v4 = [(UIButton *)self _visualProvider];
    if (v4)
    {
      v5 = self->_buttonVisualProviderFlags;

      if ((v5 & 4) != 0)
      {
        goto LABEL_4;
      }
    }
  }

  v9.receiver = self;
  v9.super_class = UIButton;
  return [(UIView *)&v9 _hasBaseline];
}

- (id)viewForLastBaselineLayout
{
  v3 = [(UIButton *)self _visualProvider];
  v4 = [v3 viewForLastBaselineLayout];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = UIButton;
    v6 = [(UIView *)&v9 viewForLastBaselineLayout];
  }

  v7 = v6;

  return v7;
}

- (BOOL)_fontIsDefaultForIdiom
{
  buttonVisualProviderFlags = self->_buttonVisualProviderFlags;
  if (buttonVisualProviderFlags)
  {
    if ((buttonVisualProviderFlags & 0x20) != 0)
    {
      goto LABEL_4;
    }

    return 1;
  }

  v4 = [(UIButton *)self _visualProvider];
  if (!v4)
  {
    return 1;
  }

  v5 = self->_buttonVisualProviderFlags;

  if ((v5 & 0x20) == 0)
  {
    return 1;
  }

LABEL_4:
  v6 = [(UIButton *)self _visualProvider];
  v7 = [v6 deferToLazyTitleFont];

  if (v7)
  {
    return self->_lazyTitleViewFontIsDefaultForIdiom;
  }

  v10 = [(UIButton *)self _visualProvider];
  v11 = [v10 fontIsDefaultForIdiom];

  return v11;
}

- (id)_titleView
{
  v2 = [(UIButton *)self _visualProvider];
  v3 = [v2 titleViewCreateIfNeeded:0];

  return v3;
}

- (id)_imageViewIfNeeded
{
  [(UIView *)self layoutIfNeeded];

  return [(UIButton *)self _imageView];
}

- (id)_imageView
{
  v2 = [(UIButton *)self _visualProvider];
  v3 = [v2 imageViewCreateIfNeeded:0];

  return v3;
}

- (UIButtonConfiguration)configuration
{
  v2 = [(_UIButtonConfigurationShim *)self->_configuration _apiValue];
  v3 = [v2 copy];

  return v3;
}

- (UILabel)titleLabel
{
  v2 = [(UIButton *)self _visualProvider];
  v3 = [v2 titleViewCreateIfNeeded:1];

  return v3;
}

- (BOOL)_likelyToHaveTitle
{
  if (![(UIButton *)self _canHaveTitle])
  {
    return 0;
  }

  if ((*&self->_buttonFlags & 0x3FC0) != 0)
  {
    return 1;
  }

  v4 = [(UIButton *)self backgroundImageForState:0];
  v5 = v4;
  if (v4)
  {
    v3 = [v4 _isResizable];
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

- (int64_t)_lineBreakMode
{
  buttonVisualProviderFlags = self->_buttonVisualProviderFlags;
  if (buttonVisualProviderFlags)
  {
    if ((buttonVisualProviderFlags & 0x20) != 0)
    {
LABEL_4:
      v6 = [(UIButton *)self _visualProvider];
      v7 = [v6 lineBreakMode];

      return v7;
    }
  }

  else
  {
    v4 = [(UIButton *)self _visualProvider];
    if (v4)
    {
      v5 = self->_buttonVisualProviderFlags;

      if ((v5 & 0x20) != 0)
      {
        goto LABEL_4;
      }
    }
  }

  return 5;
}

- (void)_updateForAutomaticSelection
{
  v3 = [(UIButton *)self _isPopUpMenuButtonWithMenu:self->_menu];
  menu = self->_menu;
  if (v3)
  {
    [(UIMenu *)menu setForceAutomaticSelection:1];
    [(UIMenu *)self->_menu setForcedAutomaticSelectionDelegate:self];
    v8 = [(UIMenu *)self->_menu selectedElements];
    v5 = [v8 firstObject];
    v6 = [v5 title];
    [(UIButton *)self setTitle:v6 forState:0];
  }

  else
  {
    [(UIMenu *)menu setForcedAutomaticSelectionDelegate:0];
    v7 = self->_menu;

    [(UIMenu *)v7 setForceAutomaticSelection:0];
  }
}

- (id)_effectiveContentView
{
  v2 = [(UIButton *)self _visualProvider];
  v3 = [v2 effectiveContentView];

  return v3;
}

- (void)_updateContextMenuEnabled
{
  v3 = [(UIButton *)self _visualProvider];
  v4 = [objc_opt_class() shouldUpdateContextMenuEnabledOnMenuChanges];

  if (v4)
  {
    if (self->_menu)
    {
      v5 = 1;
    }

    else
    {
      v5 = self->_menuProvider != 0;
    }

    [(UIControl *)self setContextMenuInteractionEnabled:v5];
  }
}

- (void)_titleViewLabelMetricsChanged
{
  if ([(UIButton *)self autosizesToFit])
  {
    [(UIView *)self sizeToFit];
  }

  [(UIView *)self invalidateIntrinsicContentSize];

  [(UIButton *)self setNeedsLayout];
}

- (UIImage)currentImage
{
  v3 = [(UIControl *)self state];

  return [(UIButton *)self imageForState:v3];
}

- (BOOL)_isSystemProvidedButton
{
  v3 = objc_opt_class();
  v4 = [(UIButton *)self _buttonType];

  return [v3 _buttonTypeIsSystemProvided:v4];
}

- (void)_prepareForFirstIntrinsicContentSizeCalculation
{
  buttonVisualProviderFlags = self->_buttonVisualProviderFlags;
  if (buttonVisualProviderFlags)
  {
    if ((buttonVisualProviderFlags & 4) != 0)
    {
      goto LABEL_7;
    }

LABEL_6:
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"UIButton.m" lineNumber:2757 description:@"Unexpected use of multiline text content sizing in UIButton"];

    goto LABEL_7;
  }

  v5 = [(UIButton *)self _visualProvider];
  if (!v5)
  {
    goto LABEL_6;
  }

  v6 = self->_buttonVisualProviderFlags;

  if ((v6 & 4) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  v8 = [(UIButton *)self _visualProvider];
  [v8 setWidthForMultilineTextLayout:0.0];

  v9.receiver = self;
  v9.super_class = UIButton;
  [(UIView *)&v9 _prepareForFirstIntrinsicContentSizeCalculation];
}

- (double)_preferredMaxLayoutWidth
{
  buttonVisualProviderFlags = self->_buttonVisualProviderFlags;
  if (buttonVisualProviderFlags)
  {
    if ((buttonVisualProviderFlags & 4) != 0)
    {
LABEL_4:
      v6 = [(UIButton *)self _visualProvider];
      [v6 widthForMultilineTextLayout];
      v8 = v7;

      return v8;
    }
  }

  else
  {
    v4 = [(UIButton *)self _visualProvider];
    if (v4)
    {
      v5 = self->_buttonVisualProviderFlags;

      if ((v5 & 4) != 0)
      {
        goto LABEL_4;
      }
    }
  }

  v10.receiver = self;
  v10.super_class = UIButton;
  [(UIView *)&v10 _preferredMaxLayoutWidth];
  return result;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = UIButton;
  [(UIView *)&v2 dealloc];
}

- (UIImage)currentBackgroundImage
{
  v3 = [(UIControl *)self state];

  return [(UIButton *)self backgroundImageForState:v3];
}

- (double)_baselineOffsetFromBottom
{
  buttonVisualProviderFlags = self->_buttonVisualProviderFlags;
  if (buttonVisualProviderFlags)
  {
    if ((buttonVisualProviderFlags & 4) != 0)
    {
LABEL_4:
      [(UIView *)self bounds];
      [(UIButton *)self _baselineOffsetsAtSize:v6, v7];
      return v8;
    }
  }

  else
  {
    v4 = [(UIButton *)self _visualProvider];
    if (v4)
    {
      v5 = self->_buttonVisualProviderFlags;

      if ((v5 & 4) != 0)
      {
        goto LABEL_4;
      }
    }
  }

  v10.receiver = self;
  v10.super_class = UIButton;
  [(UIView *)&v10 _baselineOffsetFromBottom];
  return result;
}

- (id)viewForFirstBaselineLayout
{
  v3 = [(UIButton *)self _visualProvider];
  v4 = [v3 viewForFirstBaselineLayout];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = UIButton;
    v6 = [(UIView *)&v9 viewForFirstBaselineLayout];
  }

  v7 = v6;

  return v7;
}

- (NSString)currentTitle
{
  v3 = [(UIControl *)self state];

  return [(UIButton *)self titleForState:v3];
}

- (BOOL)_isToggleButton
{
  if ((*(&self->_buttonFlags + 4) & 0x20) == 0)
  {
    return 0;
  }

  if (self->_menu)
  {
    return ![(UIControl *)self showsMenuAsPrimaryAction:v2];
  }

  return 1;
}

- (NSString)description
{
  v6.receiver = self;
  v6.super_class = UIButton;
  v3 = [(UIView *)&v6 description];
  v4 = [v3 mutableCopy];

  if (self->_configuration)
  {
    [v4 appendFormat:@" configuration=%@", self->_configuration];
  }

  return v4;
}

- (BOOL)_isEffectivelyDisabledExternalButton
{
  v3 = [(UIView *)self traitCollection];
  v4 = -[UIButton _isInCarPlay](self, "_isInCarPlay") && !-[UIButton canBecomeFocused](self, "canBecomeFocused") && ([v3 interactionModel] & 1) == 0;

  return v4;
}

- (CGRect)_clippedHighlightBounds
{
  [(UIButton *)self _highlightBounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(UIView *)self bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = v4;
  v20 = v6;
  v21 = v8;
  v22 = v10;

  return CGRectIntersection(*&v19, *&v12);
}

- (CGRect)_highlightBounds
{
  buttonVisualProviderFlags = self->_buttonVisualProviderFlags;
  if ((buttonVisualProviderFlags & 1) == 0)
  {
    v4 = [(UIButton *)self _visualProvider];
    if (v4)
    {
      v5 = self->_buttonVisualProviderFlags;

      if ((v5 & 0x40) != 0)
      {
        goto LABEL_4;
      }
    }

LABEL_6:
    v8 = *MEMORY[0x1E695F058];
    v10 = *(MEMORY[0x1E695F058] + 8);
    v12 = *(MEMORY[0x1E695F058] + 16);
    v14 = *(MEMORY[0x1E695F058] + 24);
    goto LABEL_7;
  }

  if ((buttonVisualProviderFlags & 0x40) == 0)
  {
    goto LABEL_6;
  }

LABEL_4:
  v6 = [(UIButton *)self _visualProvider];
  [v6 highlightBounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

LABEL_7:
  v15 = v8;
  v16 = v10;
  v17 = v12;
  v18 = v14;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (double)_highlightCornerRadius
{
  if ([(UIButton *)self _isCarPlaySystemTypeButton])
  {

    UIRoundToViewScale(self);
  }

  else
  {
    [(UIButton *)self _clippedHighlightBounds];
    if (v4 >= v5)
    {
      v6 = v5;
    }

    else
    {
      v6 = v4;
    }

    return v6 * 0.5;
  }

  return result;
}

- (void)_applyCarPlaySystemButtonCustomizations
{
  v3 = [off_1E70ECC18 systemFontOfSize:16.0];
  [(UIButton *)self _setFont:v3];

  [(UIView *)self setClipsToBounds:1];
}

- (BOOL)canBecomeFocused
{
  v6.receiver = self;
  v6.super_class = UIButton;
  if (![(UIControl *)&v6 canBecomeFocused])
  {
    return 0;
  }

  v3 = [(UIButton *)self _visualProvider];
  v4 = [v3 canBecomeFocused];

  return v4;
}

- (void)_intelligenceCollectSubelementsIn:(CGRect)a3 using:(id)a4 transformToRoot:(id)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v11 = _Block_copy(a5);
  _Block_copy(v11);
  v12 = a4;
  v13 = self;
  sub_188DE9D6C(v12, v13, v11, x, y, width, height);
  _Block_release(v11);
  _Block_release(v11);
}

- (Class)_intelligenceBaseClass
{
  sub_189044DFC();

  return swift_getObjCClassFromMetadata();
}

- (void)_applyDynamicSearchBarBackgroundAndCapsuleCornerMaskingConfigurationRequiringGlass:(BOOL)a3
{
  v3 = a3;
  v4 = self;
  sub_1891EB658(v3);
}

- (unint64_t)defaultAccessibilityTraits
{
  v3.receiver = self;
  v3.super_class = UIButton;
  return [&v3 defaultAccessibilityTraits]| 1;
}

- (void)setPreferredBehavioralStyle:(UIBehavioralStyle)preferredBehavioralStyle
{
  v3 = preferredBehavioralStyle;
  v5 = [(UIButton *)self behavioralStyle];
  *&self->_buttonVisualProviderFlags = *&self->_buttonVisualProviderFlags & 0xF87F | ((v3 & 0xF) << 7);
  if (v5 != [(UIButton *)self behavioralStyle])
  {

    [(UIButton *)self _refreshVisualProvider];
  }
}

- (void)setTintColor:(UIColor *)tintColor
{
  v3.receiver = self;
  v3.super_class = UIButton;
  [(UIView *)&v3 setTintColor:tintColor];
}

- (id)_layoutDebuggingTitle
{
  v3 = [(UIButton *)self titleForState:0];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [(UIButton *)self attributedTitleForState:0];
    v5 = [v6 string];
  }

  return v5;
}

+ (BOOL)_buttonTypeIsModernUI:(int64_t)a3
{
  if (([a1 _buttonTypeIsSystemProvided:?] & 1) != 0 || a3 == 7 || a3 == 113)
  {
    return 1;
  }

  return UIButtonTypeIsModernCircleButton(a3);
}

+ (BOOL)_buttonTypeIsSystemProvided:(int64_t)a3
{
  result = [a1 _buttonTypeIsiOSSystemProvided:?];
  if (a3 == 9999)
  {
    return 1;
  }

  return result;
}

+ (UIButton)systemButtonWithImage:(UIImage *)image target:(id)target action:(SEL)action
{
  v8 = image;
  v9 = target;
  v10 = [a1 buttonWithType:1];
  v11 = v10;
  if (v8)
  {
    [v10 setImage:v8 forState:0];
  }

  if (action)
  {
    [v11 addTarget:v9 action:action forControlEvents:64];
  }

  [v11 sizeToFit];

  return v11;
}

+ (UIButton)buttonWithType:(UIButtonType)buttonType
{
  v6 = +[UITraitCollection _fallbackTraitCollection];
  v7 = [a1 _defaultSymbolConfigurationForType:buttonType andState:0 compact:0 idiom:{objc_msgSend(v6, "userInterfaceIdiom")}];
  v8 = [a1 _defaultImageForType:buttonType andState:0 withConfiguration:v7];

  v9 = MEMORY[0x1E695F058];
  if (v8)
  {
    [v8 size];
    v10 = [objc_opt_self() mainScreen];
    UIRoundToScreenScale(v10);
    v12 = v11;
    v13 = [objc_opt_self() mainScreen];
    UIRoundToScreenScale(v13);
    v15 = v14;
  }

  else
  {
    v12 = *(MEMORY[0x1E695F058] + 16);
    v15 = *(MEMORY[0x1E695F058] + 24);
  }

  v17 = *v9;
  v16 = v9[1];
  v18 = [a1 _buttonTypeIsModernUI:buttonType];
  if (v18)
  {
    v19 = UIButtonTypeCustom;
  }

  else
  {
    v19 = buttonType;
  }

  if (v19 <= 101)
  {
    if (v19 <= UIButtonTypeInfoLight)
    {
      if (v19 == UIButtonTypeSystem)
      {
LABEL_33:
        v23 = UIRoundedRectButton;
        goto LABEL_34;
      }

      if (v19 != UIButtonTypeDetailDisclosure && v19 != UIButtonTypeInfoLight)
      {
LABEL_20:
        v23 = a1;
        goto LABEL_34;
      }
    }

    else
    {
      if (v19 > 99)
      {
        if (v19 == 100)
        {
          v24 = [UINavigationButton alloc];
          v25 = 0;
        }

        else
        {
          v24 = [UINavigationButton alloc];
          v25 = 1;
        }

        goto LABEL_31;
      }

      if (v19 != UIButtonTypeInfoDark)
      {
        if (v19 == UIButtonTypeContactAdd)
        {
          v23 = UIButton;
LABEL_34:
          v27 = [[v23 alloc] initWithFrame:{v17, v16, v12, v15}];
          goto LABEL_35;
        }

        goto LABEL_20;
      }
    }

    p_super = [[UIButton alloc] initWithFrame:v17, v16, v12, v15];
    [(UIButton *)p_super setShowsTouchWhenHighlighted:v18];
    goto LABEL_36;
  }

  if (v19 <= 113)
  {
    if (v19 != 102)
    {
      if (v19 == 110)
      {
        v26 = [MEMORY[0x1E696AAA8] currentHandler];
        [v26 handleFailureInMethod:a2 object:a1 file:@"UIButton.m" lineNumber:882 description:{@"UIButtonTypeTextured has never worked properly under ModernUI, replace your usage"}];

        p_super = 0;
        goto LABEL_36;
      }

      if (v19 == 113)
      {
        v20 = [UIRoundedRectButton alloc];
        v21 = +[UIColor tableCellGroupedBackgroundColor];
        p_super = [(UIRoundedRectButton *)v20 initWithFrame:v21 fillColor:v17, v16, v12, v15];

        goto LABEL_36;
      }

      goto LABEL_20;
    }

    v24 = [UINavigationButton alloc];
    v25 = 2;
LABEL_31:
    p_super = [(UINavigationButton *)v24 initWithTitle:0 style:v25];
    [(UIButton *)p_super setAutosizesToFit:1];
    goto LABEL_36;
  }

  if ((v19 - 114) >= 2)
  {
    if ((v19 - 116) >= 2 && v19 == 9999)
    {
      goto LABEL_33;
    }

    goto LABEL_20;
  }

  v27 = [[UIPopoverButton alloc] initWithFrame:buttonType buttonType:v17, v16, v12, v15];
LABEL_35:
  p_super = &v27->super;
LABEL_36:
  if (buttonType == 124)
  {
    buttonType = UIButtonTypeSystem;
    [(UIButton *)p_super setChangesSelectionAsPrimaryAction:1];
    [(UIButton *)p_super setShowsMenuAsPrimaryAction:1];
  }

  [(UIButton *)p_super _setButtonType:buttonType];
  if (v18)
  {
    [(UIButton *)p_super setAdjustsImageWhenHighlighted:0];
    [(UIButton *)p_super setAdjustsImageWhenDisabled:0];
    [(UIButton *)p_super setShowsTouchWhenHighlighted:0];
    [(UIButton *)p_super _setDefaultFontForIdiom];
  }

  return p_super;
}

+ (UIButton)buttonWithType:(UIButtonType)buttonType primaryAction:(UIAction *)primaryAction
{
  v6 = primaryAction;
  v7 = [a1 buttonWithType:buttonType];
  v8 = v7;
  if (v6)
  {
    [v7 _commonInitForPrimaryAction:v6];
  }

  return v8;
}

+ (UIButton)buttonWithConfiguration:(UIButtonConfiguration *)configuration primaryAction:(UIAction *)primaryAction
{
  v6 = primaryAction;
  v7 = configuration;
  v8 = [a1 buttonWithType:1];
  [v8 setConfiguration:v7];

  if (v6)
  {
    [v8 _commonInitForPrimaryAction:v6];
  }

  return v8;
}

- (void)_commonInitForPrimaryAction:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = UIButton;
  [(UIControl *)&v8 _commonInitForPrimaryAction:v4];
  v5 = [(UIButton *)self buttonType];
  if ((v5 - 124) < 3 || v5 <= UIButtonTypeSystem)
  {
    v6 = [v4 title];
    if ([v6 length])
    {
      [(UIButton *)self setTitle:v6 forState:0];
    }

    v7 = [v4 image];
    if (v7)
    {
      [(UIButton *)self setImage:v7 forState:0];
    }
  }
}

- (UIButton)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if (self->_initialized)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"UIButton.m" lineNumber:1069 description:{@"unsafe to initWithFrame: already initialized UIButton. Use setFrame: instead %@", self}];
  }

  v16.receiver = self;
  v16.super_class = UIButton;
  v8 = [(UIControl *)&v16 initWithFrame:x, y, width, height];
  v9 = v8;
  if (v8)
  {
    *(v8 + 488) = 0u;
    *(v8 + 504) = 0u;
    *(v8 + 520) = 0u;
    *(v8 + 536) = 0u;
    *(v8 + 552) = 0u;
    *(v8 + 568) = 0u;
    [v8 setOpaque:0];
    *&v9->_buttonFlags |= 6uLL;
    [off_1E70ECC18 defaultFontSize];
    v11 = [off_1E70ECC18 systemFontOfSize:v10 + 1.0];
    lazyTitleViewFont = v9->_lazyTitleViewFont;
    v9->_lazyTitleViewFont = v11;

    v9->_initialized = 1;
    _UIButtonCommonInit(v9);
  }

  return v9;
}

- (UIButton)initWithCoder:(NSCoder *)coder
{
  v60 = *MEMORY[0x1E69E9840];
  v4 = coder;
  v58.receiver = self;
  v58.super_class = UIButton;
  v5 = [(UIControl *)&v58 initWithCoder:v4];
  v6 = v5;
  if (!v5)
  {
    goto LABEL_43;
  }

  *&v5->_buttonFlags &= 0xFFFFFFFFFFFFC03FLL;
  if ([(NSCoder *)v4 containsValueForKey:@"UIButtonType"])
  {
    buttonFlags = *&v6->_buttonFlags & 0xFFFFFFFFFFFFC03FLL | ([(NSCoder *)v4 decodeIntegerForKey:@"UIButtonType"]<< 6);
  }

  else
  {
    buttonFlags = v6->_buttonFlags;
  }

  v6->_buttonFlags = (buttonFlags & 0xFFFFFFFFFFC03FFFLL);
  if ([(NSCoder *)v4 containsValueForKey:@"UIButtonRole"])
  {
    v6->_buttonFlags = (*&v6->_buttonFlags & 0xFFFFFFFFFFC03FFFLL | ([(NSCoder *)v4 decodeIntegerForKey:@"UIButtonRole"]<< 14));
  }

  v8 = [(NSCoder *)v4 decodeObjectForKey:@"UIReversesTitleShadowOnHighlight"];

  if (v8)
  {
    v9 = @"UIReversesTitleShadowOnHighlight";
  }

  else
  {
    v9 = @"UIReversesTitleShadowWhenHighlighted";
  }

  v6->_buttonFlags = (*&v6->_buttonFlags & 0xFFFFFFFFFFFFFFFELL | [(NSCoder *)v4 decodeBoolForKey:v9]);
  [(UIButton *)v6 setShowsTouchWhenHighlighted:[(NSCoder *)v4 decodeBoolForKey:@"UIShowsTouchWhenHighlighted"]];
  v10 = [(NSCoder *)v4 decodeBoolForKey:@"UIAdjustsImageWhenHighlighted"];
  v11 = 2;
  if (!v10)
  {
    v11 = 0;
  }

  v6->_buttonFlags = (*&v6->_buttonFlags & 0xFFFFFFFFFFFFFFFDLL | v11);
  v12 = [(NSCoder *)v4 decodeBoolForKey:@"UIAdjustsImageWhenDisabled"];
  v13 = 4;
  if (!v12)
  {
    v13 = 0;
  }

  v6->_buttonFlags = (*&v6->_buttonFlags & 0xFFFFFFFFFFFFFFFBLL | v13);
  v14 = [(NSCoder *)v4 decodeBoolForKey:@"UIAdjustsImageSizeForAccessibilityContentSizeCategory"];
  v15 = 0x100000000;
  if (!v14)
  {
    v15 = 0;
  }

  v6->_buttonFlags = (*&v6->_buttonFlags & 0xFFFFFFFEFFFFFFFFLL | v15);
  [(NSCoder *)v4 decodeUIEdgeInsetsForKey:@"UIContentEdgeInsets"];
  v6->_contentEdgeInsets.top = v16;
  v6->_contentEdgeInsets.left = v17;
  v6->_contentEdgeInsets.bottom = v18;
  v6->_contentEdgeInsets.right = v19;
  [(NSCoder *)v4 decodeUIEdgeInsetsForKey:@"UITitleEdgeInsets"];
  v6->_titleEdgeInsets.top = v20;
  v6->_titleEdgeInsets.left = v21;
  v6->_titleEdgeInsets.bottom = v22;
  v6->_titleEdgeInsets.right = v23;
  [(NSCoder *)v4 decodeUIEdgeInsetsForKey:@"UIImageEdgeInsets"];
  v6->_imageEdgeInsets.top = v24;
  v6->_imageEdgeInsets.left = v25;
  v6->_imageEdgeInsets.bottom = v26;
  v6->_imageEdgeInsets.right = v27;
  v28 = [(NSCoder *)v4 decodeObjectForKey:@"UIButtonStatefulContent"];
  [(UIButton *)v6 _takeContentFromArchivableContent:v28];
  *&v6->_buttonFlags |= 0x80000000uLL;
  if ([(UIButton *)v6 _shouldHaveFloatingAppearance])
  {
    v29 = [(UIView *)v6 subviews];
    v30 = [v29 copy];

    v31 = [(UIButton *)v6 _effectiveContentView];
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v32 = v30;
    v33 = [v32 countByEnumeratingWithState:&v54 objects:v59 count:16];
    if (v33)
    {
      v34 = v33;
      v35 = *v55;
      do
      {
        for (i = 0; i != v34; ++i)
        {
          if (*v55 != v35)
          {
            objc_enumerationMutation(v32);
          }

          [v31 addSubview:{*(*(&v54 + 1) + 8 * i), v54}];
        }

        v34 = [v32 countByEnumeratingWithState:&v54 objects:v59 count:16];
      }

      while (v34);
    }
  }

  [off_1E70ECC18 defaultFontSize];
  v38 = [off_1E70ECC18 systemFontOfSize:v37 + 1.0];
  lazyTitleViewFont = v6->_lazyTitleViewFont;
  v6->_lazyTitleViewFont = v38;

  v40 = [(NSCoder *)v4 decodeObjectForKey:@"UIFont"];
  v41 = [(UIView *)v6 traitCollection];
  v42 = [v41 userInterfaceIdiom];

  if (v42 == 5)
  {
    v43 = [off_1E70ECC18 systemFontOfSize:14.0];
    v44 = [v40 isEqual:v43];

    if (!v44)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  v45 = [off_1E70ECC18 systemFontOfSize:18.0];
  v46 = [v40 isEqual:v45];

  if (v46)
  {
LABEL_29:

    v40 = 0;
  }

LABEL_30:
  [(UIButton *)v6 _setFont:v40];
  if ([(NSCoder *)v4 containsValueForKey:@"UILineBreakMode"])
  {
    [(UIButton *)v6 _setLineBreakMode:[(NSCoder *)v4 decodeIntegerForKey:@"UILineBreakMode"]];
  }

  [(NSCoder *)v4 decodeCGSizeForKey:@"UITitleShadowOffset"];
  [(UIButton *)v6 _setTitleShadowOffset:?];
  *&v6->_buttonVisualProviderFlags = *&v6->_buttonVisualProviderFlags & 0xF87F | (([(NSCoder *)v4 decodeIntegerForKey:@"UIBehavioralStyle"]& 0xF) << 7);
  if ([(NSCoder *)v4 containsValueForKey:@"UISpringLoaded"])
  {
    [(UIButton *)v6 setSpringLoaded:[(NSCoder *)v4 decodeBoolForKey:@"UISpringLoaded"]];
  }

  if ([(NSCoder *)v4 containsValueForKey:@"UIButtonMenu"])
  {
    v47 = [(NSCoder *)v4 decodeObjectOfClass:objc_opt_class() forKey:@"UIButtonMenu"];
    menu = v6->_menu;
    v6->_menu = v47;
  }

  if ([(NSCoder *)v4 containsValueForKey:@"UIButtonChangesSelectionAsPrimaryAction"])
  {
    v49 = [(NSCoder *)v4 decodeBoolForKey:@"UIButtonChangesSelectionAsPrimaryAction"];
    v50 = 0x2000000000;
    if (!v49)
    {
      v50 = 0;
    }

    v6->_buttonFlags = (*&v6->_buttonFlags & 0xFFFFFFDFFFFFFFFFLL | v50);
  }

  [(UIButton *)v6 _updateForAutomaticSelection];
  if ([(NSCoder *)v4 containsValueForKey:@"UIButtonConfiguration"])
  {
    v51 = [(NSCoder *)v4 decodeObjectForKey:@"UIButtonConfiguration"];
    configuration = v6->_configuration;
    v6->_configuration = v51;
  }

  _UIButtonCommonInit(v6);
  [(UIButton *)v6 _refreshVisualProvider];

LABEL_43:
  return v6;
}

- (UIButton)initWithFrame:(CGRect)frame primaryAction:(UIAction *)primaryAction
{
  v5.receiver = self;
  v5.super_class = UIButton;
  return [(UIControl *)&v5 initWithFrame:primaryAction primaryAction:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
}

- (id)_encodableSubviews
{
  buttonVisualProviderFlags = self->_buttonVisualProviderFlags;
  if (buttonVisualProviderFlags)
  {
    if ((buttonVisualProviderFlags & 8) != 0)
    {
LABEL_4:
      v6 = [(UIButton *)self _visualProvider];
      v7 = [v6 encodableSubviews];

      goto LABEL_7;
    }
  }

  else
  {
    v4 = [(UIButton *)self _visualProvider];
    if (v4)
    {
      v5 = self->_buttonVisualProviderFlags;

      if ((v5 & 8) != 0)
      {
        goto LABEL_4;
      }
    }
  }

  v7 = 0;
LABEL_7:

  return v7;
}

- (void)_populateArchivedSubviews:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = UIButton;
  [(UIView *)&v9 _populateArchivedSubviews:v4];
  buttonVisualProviderFlags = self->_buttonVisualProviderFlags;
  if (buttonVisualProviderFlags)
  {
    if ((buttonVisualProviderFlags & 8) == 0)
    {
      goto LABEL_7;
    }

LABEL_6:
    v8 = [(UIButton *)self _visualProvider];
    [v8 populateArchivedSubviews:v4];

    goto LABEL_7;
  }

  v6 = [(UIButton *)self _visualProvider];
  if (v6)
  {
    v7 = self->_buttonVisualProviderFlags;

    if ((v7 & 8) != 0)
    {
      goto LABEL_6;
    }
  }

LABEL_7:
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v30.receiver = self;
  v30.super_class = UIButton;
  [(UIControl *)&v30 encodeWithCoder:v5];
  v29 = 0;
  v6 = [(UIButton *)self _archivableContent:&v29];
  v7 = v29;
  if ([v6 count])
  {
    [v5 encodeObject:v6 forKey:@"UIButtonStatefulContent"];
  }

  if ([v7 count])
  {
    [v5 encodeObject:v7 forKey:@"UIButtonStatefulContentOverrides"];
  }

  buttonVisualProviderFlags = self->_buttonVisualProviderFlags;
  if (buttonVisualProviderFlags)
  {
    if ((buttonVisualProviderFlags & 0x20) == 0)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v3 = [(UIButton *)self _visualProvider];
    if (!v3 || (*&self->_buttonVisualProviderFlags & 0x20) == 0)
    {
      goto LABEL_14;
    }
  }

  v9 = [(UIButton *)self _visualProvider];
  v10 = [v9 lineBreakMode];

  if ((buttonVisualProviderFlags & 1) == 0)
  {
  }

  if (v10 != 5)
  {
    v3 = [(UIButton *)self _visualProvider];
    [v5 encodeInteger:objc_msgSend(v3 forKey:{"lineBreakMode"), @"UILineBreakMode"}];
LABEL_14:
  }

LABEL_15:
  buttonFlags = self->_buttonFlags;
  if (*&buttonFlags)
  {
    [v5 encodeBool:1 forKey:@"UIReversesTitleShadowWhenHighlighted"];
    buttonFlags = self->_buttonFlags;
    if ((*&buttonFlags & 0x20) == 0)
    {
LABEL_17:
      if ((*&buttonFlags & 2) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_30;
    }
  }

  else if ((*&buttonFlags & 0x20) == 0)
  {
    goto LABEL_17;
  }

  [v5 encodeBool:1 forKey:@"UIShowsTouchWhenHighlighted"];
  buttonFlags = self->_buttonFlags;
  if ((*&buttonFlags & 2) == 0)
  {
LABEL_18:
    if ((*&buttonFlags & 4) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_30:
  [v5 encodeBool:1 forKey:@"UIAdjustsImageWhenHighlighted"];
  buttonFlags = self->_buttonFlags;
  if ((*&buttonFlags & 4) != 0)
  {
LABEL_19:
    [v5 encodeBool:1 forKey:@"UIAdjustsImageWhenDisabled"];
    buttonFlags = self->_buttonFlags;
  }

LABEL_20:
  if ((*&buttonFlags >> 6))
  {
    [v5 encodeInteger:? forKey:?];
    buttonFlags = self->_buttonFlags;
  }

  if ((*&buttonFlags & 0x100000000) != 0)
  {
    [v5 encodeBool:1 forKey:@"UIAdjustsImageSizeForAccessibilityContentSizeCategory"];
  }

  v12 = self->_buttonVisualProviderFlags;
  if (v12)
  {
    if ((v12 & 0x20) == 0)
    {
      goto LABEL_38;
    }
  }

  else
  {
    v3 = [(UIButton *)self _visualProvider];
    if (!v3 || (*&self->_buttonVisualProviderFlags & 0x20) == 0)
    {
      goto LABEL_37;
    }
  }

  v13 = [(UIButton *)self _visualProvider];
  v14 = [v13 font];

  if ((v12 & 1) == 0)
  {
  }

  if (v14)
  {
    v3 = [(UIButton *)self _visualProvider];
    v15 = [v3 font];
    [v5 encodeObject:v15 forKey:@"UIFont"];

LABEL_37:
  }

LABEL_38:
  if ((*&self->_buttonFlags >> 14))
  {
    [v5 encodeInteger:? forKey:?];
  }

  v16 = *&self->_contentEdgeInsets.top;
  v17 = *&self->_contentEdgeInsets.bottom;
  if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(v16), vceqzq_f64(v17))))))
  {
    [v5 encodeUIEdgeInsets:@"UIContentEdgeInsets" forKey:{*&v16, *&v17}];
  }

  v18 = *&self->_titleEdgeInsets.top;
  v19 = *&self->_titleEdgeInsets.bottom;
  if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(v18), vceqzq_f64(v19))))))
  {
    [v5 encodeUIEdgeInsets:@"UITitleEdgeInsets" forKey:{*&v18, *&v19}];
  }

  v20 = self->_buttonVisualProviderFlags;
  if (v20)
  {
    if ((v20 & 0x20) == 0)
    {
      goto LABEL_58;
    }
  }

  else
  {
    v3 = [(UIButton *)self _visualProvider];
    if (!v3 || (*&self->_buttonVisualProviderFlags & 0x20) == 0)
    {
      goto LABEL_57;
    }
  }

  v21 = [(UIButton *)self _visualProvider];
  [v21 titleShadowOffset];
  v24 = v23 != *(MEMORY[0x1E695F060] + 8) || v22 != *MEMORY[0x1E695F060];

  if (v20)
  {
    if (!v24)
    {
      goto LABEL_58;
    }

    goto LABEL_56;
  }

  if (v24)
  {
LABEL_56:
    v3 = [(UIButton *)self _visualProvider];
    [v3 titleShadowOffset];
    [v5 encodeCGSize:@"UITitleShadowOffset" forKey:?];
LABEL_57:
  }

LABEL_58:
  v25 = *&self->_imageEdgeInsets.top;
  v26 = *&self->_imageEdgeInsets.bottom;
  if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(v25), vceqzq_f64(v26))))))
  {
    [v5 encodeUIEdgeInsets:@"UIImageEdgeInsets" forKey:{*&v25, *&v26}];
  }

  v27 = (*&self->_buttonVisualProviderFlags >> 7) & 0xF;
  if (v27)
  {
    [v5 encodeInteger:v27 forKey:@"UIBehavioralStyle"];
  }

  if ([(UIButton *)self isSpringLoaded])
  {
    [v5 encodeBool:1 forKey:@"UISpringLoaded"];
  }

  menu = self->_menu;
  if (menu)
  {
    [v5 encodeObject:menu forKey:@"UIButtonMenu"];
  }

  if ((*(&self->_buttonFlags + 4) & 0x20) != 0)
  {
    [v5 encodeBool:1 forKey:@"UIButtonChangesSelectionAsPrimaryAction"];
  }

  [v5 encodeObject:self->_configuration forKey:@"UIButtonConfiguration"];
}

- (void)_setFrame:(CGRect)a3 deferLayout:(BOOL)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(UIView *)self frame];
  v11 = v10;
  v13 = v12;
  v19.receiver = self;
  v19.super_class = UIButton;
  [(UIView *)&v19 setFrame:x, y, width, height];
  if (v11 != width || v13 != height)
  {
    [(UIButton *)self setNeedsLayout];
    if (!a4)
    {
      [(UIView *)self layoutBelowIfNeeded];
    }

    buttonVisualProviderFlags = self->_buttonVisualProviderFlags;
    if (buttonVisualProviderFlags)
    {
      if ((buttonVisualProviderFlags & 4) == 0)
      {
        return;
      }
    }

    else
    {
      v16 = [(UIButton *)self _visualProvider];
      if (!v16)
      {
        return;
      }

      v17 = self->_buttonVisualProviderFlags;

      if ((v17 & 4) == 0)
      {
        return;
      }
    }

    v18 = [(UIButton *)self _visualProvider];
    [v18 invalidateLayoutData];
  }
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (dyld_program_sdk_at_least())
  {
    if (+[UIView _isInAnimationBlockWithAnimationsEnabled])
    {
      v8 = [(UIView *)self window];
      v9 = v8 == 0;
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = 0;
  }

  [(UIButton *)self _setFrame:v9 deferLayout:x, y, width, height];
}

- (void)setBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(UIView *)self bounds];
  v9 = v8;
  v11 = v10;
  v20.receiver = self;
  v20.super_class = UIButton;
  [(UIView *)&v20 setBounds:x, y, width, height];
  if (v9 != width || v11 != height)
  {
    goto LABEL_5;
  }

  if ((~*&self->super.super._viewFlags & 0x110000000000000) != 0)
  {
    return;
  }

  buttonVisualProviderFlags = self->_buttonVisualProviderFlags;
  if (buttonVisualProviderFlags)
  {
    if ((buttonVisualProviderFlags & 4) == 0)
    {
      return;
    }

LABEL_5:
    [(UIButton *)self setNeedsLayout];
    v13 = self->_buttonVisualProviderFlags;
    if (v13)
    {
      if ((v13 & 4) == 0)
      {
        return;
      }
    }

    else
    {
      v14 = [(UIButton *)self _visualProvider];
      if (!v14)
      {
        return;
      }

      v15 = self->_buttonVisualProviderFlags;

      if ((v15 & 4) == 0)
      {
        return;
      }
    }

    v19 = [(UIButton *)self _visualProvider];
    [v19 invalidateLayoutData];

    return;
  }

  v17 = [(UIButton *)self _visualProvider];
  if (v17)
  {
    v18 = self->_buttonVisualProviderFlags;

    if ((v18 & 4) != 0)
    {
      goto LABEL_5;
    }
  }
}

- (void)setSelected:(BOOL)a3
{
  v3 = a3;
  if ([(UIControl *)self isSelected]!= a3)
  {
    v6.receiver = self;
    v6.super_class = UIButton;
    [(UIControl *)&v6 setSelected:v3];
    v5 = [(UIButton *)self _visualProvider];
    [v5 setSelected:v3];

    [(UIButton *)self setNeedsLayout];
  }
}

- (void)setEnabled:(BOOL)a3
{
  v3 = a3;
  if ([(UIControl *)self isEnabled]!= a3)
  {
    v7.receiver = self;
    v7.super_class = UIButton;
    [(UIControl *)&v7 setEnabled:v3];
    v5 = [(UIButton *)self _visualProvider];
    [v5 setEnabled:v3];

    [(UIButton *)self setNeedsLayout];
    v6 = [(UIButton *)self selectionInteraction];
    [v6 setEnabled:v3];
  }
}

- (void)_setHighlightedWithoutUpdatingState:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = UIButton;
  [(UIControl *)&v3 setHighlighted:a3];
}

- (void)_setHighlighted:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  *&self->_buttonFlags &= ~0x4000000uLL;
  if ([(UIControl *)self isHighlighted]!= a3)
  {
    v8.receiver = self;
    v8.super_class = UIButton;
    [(UIControl *)&v8 setHighlighted:v5];
    v7 = [(UIButton *)self _visualProvider];
    [v7 setHighlighted:v5 animated:v4];
  }
}

- (void)_setHovered:(BOOL)a3
{
  buttonFlags = self->_buttonFlags;
  if (((((*&buttonFlags & 0x800000000) == 0) ^ a3) & 1) == 0)
  {
    v4 = 0x800000000;
    if (!a3)
    {
      v4 = 0;
    }

    self->_buttonFlags = (*&buttonFlags & 0xFFFFFFF7FFFFFFFFLL | v4);
    [(UIButton *)self setNeedsUpdateConfiguration];
  }
}

- (void)_setHasActiveMenuPresentation:(BOOL)a3
{
  v3 = a3;
  v5 = [(UIControl *)self _hasActiveMenuPresentation];
  v6.receiver = self;
  v6.super_class = UIButton;
  [(UIControl *)&v6 _setHasActiveMenuPresentation:v3];
  if (v5 != v3)
  {
    [(UIButton *)self setNeedsUpdateConfiguration];
  }
}

- (void)_didChangeFromIdiom:(int64_t)a3 onScreen:(id)a4 traverseHierarchy:(BOOL)a5
{
  v5 = a5;
  v10.receiver = self;
  v10.super_class = UIButton;
  v8 = a4;
  [(UIView *)&v10 _didChangeFromIdiom:a3 onScreen:v8 traverseHierarchy:v5];
  v9 = [(UIButton *)self _visualProvider:v10.receiver];
  [v9 didChangeFromIdiom:a3 onScreen:v8 traverseHierarchy:v5];
}

- (void)setContentEdgeInsets:(UIEdgeInsets)contentEdgeInsets
{
  v3.f64[0] = contentEdgeInsets.top;
  v3.f64[1] = contentEdgeInsets.left;
  v4.f64[0] = contentEdgeInsets.bottom;
  v4.f64[1] = contentEdgeInsets.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_contentEdgeInsets.top, v3), vceqq_f64(*&self->_contentEdgeInsets.bottom, v4)))) & 1) == 0)
  {
    self->_contentEdgeInsets = contentEdgeInsets;
    if (contentEdgeInsets.left != 0.0 || contentEdgeInsets.top != 0.0 || contentEdgeInsets.right != 0.0 || contentEdgeInsets.bottom != 0.0)
    {
      *&self->_internalTitlePaddingInsets.top = 0u;
      *&self->_internalTitlePaddingInsets.bottom = 0u;
    }

    if ([(UIButton *)self autosizesToFit])
    {
      [(UIView *)self sizeToFit];
    }

    [(UIView *)self invalidateIntrinsicContentSize];

    [(UIButton *)self setNeedsLayout];
  }
}

- (void)setTitleEdgeInsets:(UIEdgeInsets)titleEdgeInsets
{
  v3.f64[0] = titleEdgeInsets.top;
  v3.f64[1] = titleEdgeInsets.left;
  v4.f64[0] = titleEdgeInsets.bottom;
  v4.f64[1] = titleEdgeInsets.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_titleEdgeInsets.top, v3), vceqq_f64(*&self->_titleEdgeInsets.bottom, v4)))) & 1) == 0)
  {
    self->_titleEdgeInsets = titleEdgeInsets;
    if ([(UIButton *)self autosizesToFit])
    {
      [(UIView *)self sizeToFit];
    }

    [(UIView *)self invalidateIntrinsicContentSize];

    [(UIButton *)self setNeedsLayout];
  }
}

- (void)setReversesTitleShadowWhenHighlighted:(BOOL)reversesTitleShadowWhenHighlighted
{
  if ((*&self->_buttonFlags & 1) != reversesTitleShadowWhenHighlighted)
  {
    v4 = reversesTitleShadowWhenHighlighted;
    self->_buttonFlags = (*&self->_buttonFlags & 0xFFFFFFFFFFFFFFFELL | reversesTitleShadowWhenHighlighted);
    v5 = [(UIButton *)self _visualProvider];
    [v5 setReversesTitleShadowWhenHighlighted:v4];
  }
}

- (void)setAdjustsImageWhenHighlighted:(BOOL)adjustsImageWhenHighlighted
{
  if (((((*&self->_buttonFlags & 2) == 0) ^ adjustsImageWhenHighlighted) & 1) == 0)
  {
    v4 = 2;
    if (!adjustsImageWhenHighlighted)
    {
      v4 = 0;
    }

    self->_buttonFlags = (*&self->_buttonFlags & 0xFFFFFFFFFFFFFFFDLL | v4);
    if ([(UIControl *)self isHighlighted])
    {

      [(UIButton *)self setNeedsLayout];
    }
  }
}

- (void)setAdjustsImageWhenDisabled:(BOOL)adjustsImageWhenDisabled
{
  if (((((*&self->_buttonFlags & 4) == 0) ^ adjustsImageWhenDisabled) & 1) == 0)
  {
    v4 = 4;
    if (!adjustsImageWhenDisabled)
    {
      v4 = 0;
    }

    self->_buttonFlags = (*&self->_buttonFlags & 0xFFFFFFFFFFFFFFFBLL | v4);
    if (![(UIControl *)self isEnabled])
    {

      [(UIButton *)self setNeedsLayout];
    }
  }
}

- (void)setShowsTouchWhenHighlighted:(BOOL)showsTouchWhenHighlighted
{
  if (((((*&self->_buttonFlags & 0x20) == 0) ^ showsTouchWhenHighlighted) & 1) == 0)
  {
    v4 = showsTouchWhenHighlighted;
    v5 = 32;
    if (!showsTouchWhenHighlighted)
    {
      v5 = 0;
    }

    self->_buttonFlags = (*&self->_buttonFlags & 0xFFFFFFFFFFFFFFDFLL | v5);
    v6 = [(UIButton *)self _visualProvider];
    [v6 setShowsTouchWhenHighlighted:v4];
  }
}

- (void)setImageEdgeInsets:(UIEdgeInsets)imageEdgeInsets
{
  v3.f64[0] = imageEdgeInsets.top;
  v3.f64[1] = imageEdgeInsets.left;
  v4.f64[0] = imageEdgeInsets.bottom;
  v4.f64[1] = imageEdgeInsets.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_imageEdgeInsets.top, v3), vceqq_f64(*&self->_imageEdgeInsets.bottom, v4)))) & 1) == 0)
  {
    self->_imageEdgeInsets = imageEdgeInsets;
    if ([(UIButton *)self autosizesToFit])
    {
      [(UIView *)self sizeToFit];
    }

    [(UIView *)self invalidateIntrinsicContentSize];

    [(UIButton *)self setNeedsLayout];
  }
}

- (UILabel)subtitleLabel
{
  if ((*&self->_buttonVisualProviderFlags & 4) != 0)
  {
    v3 = [(UIButton *)self _visualProvider];
    v2 = [v3 subtitleViewCreateIfNeeded:1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)setContentHorizontalAlignment:(int64_t)a3
{
  if ([(UIControl *)self contentHorizontalAlignment]!= a3)
  {
    v6.receiver = self;
    v6.super_class = UIButton;
    [(UIControl *)&v6 setContentHorizontalAlignment:a3];
    v5 = [(UIButton *)self _visualProvider];
    [v5 setContentHorizontalAlignment:a3];
  }
}

- (void)setContentVerticalAlignment:(int64_t)a3
{
  if ([(UIControl *)self contentVerticalAlignment]!= a3)
  {
    v6.receiver = self;
    v6.super_class = UIButton;
    [(UIControl *)&v6 setContentVerticalAlignment:a3];
    v5 = [(UIButton *)self _visualProvider];
    [v5 setContentVerticalAlignment:a3];
  }
}

- (void)setRole:(UIButtonRole)role
{
  self->_buttonFlags = (*&self->_buttonFlags & 0xFFFFFFFFFFC03FFFLL | (role << 14));
  v4 = [(UIButton *)self _visualProvider];
  [v4 setRole:role];
}

- (void)_setVisualProvider:(id)a3
{
  v20 = a3;
  [(UIButtonVisualProvider *)self->_visualProvider cleanupForVisualProvider:?];
  buttonVisualProviderFlags = self->_buttonVisualProviderFlags;
  if ((buttonVisualProviderFlags & 2) != 0)
  {
    [(UIButtonVisualProvider *)self->_visualProvider setButton:0];
    buttonVisualProviderFlags = self->_buttonVisualProviderFlags;
  }

  *&self->_buttonVisualProviderFlags = buttonVisualProviderFlags | 1;
  if (objc_opt_respondsToSelector())
  {
    v6 = 2;
  }

  else
  {
    v6 = 0;
  }

  *&self->_buttonVisualProviderFlags = *&self->_buttonVisualProviderFlags & 0xFFFD | v6;
  if (objc_opt_respondsToSelector())
  {
    v7 = 4;
  }

  else
  {
    v7 = 0;
  }

  *&self->_buttonVisualProviderFlags = *&self->_buttonVisualProviderFlags & 0xFFFB | v7;
  if (objc_opt_respondsToSelector())
  {
    v8 = 8;
  }

  else
  {
    v8 = 0;
  }

  *&self->_buttonVisualProviderFlags = *&self->_buttonVisualProviderFlags & 0xFFF7 | v8;
  if (objc_opt_respondsToSelector())
  {
    v9 = 16;
  }

  else
  {
    v9 = 0;
  }

  *&self->_buttonVisualProviderFlags = *&self->_buttonVisualProviderFlags & 0xFFEF | v9;
  if (objc_opt_respondsToSelector())
  {
    v10 = 32;
  }

  else
  {
    v10 = 0;
  }

  *&self->_buttonVisualProviderFlags = *&self->_buttonVisualProviderFlags & 0xFFDF | v10;
  if (objc_opt_respondsToSelector())
  {
    v11 = 64;
  }

  else
  {
    v11 = 0;
  }

  *&self->_buttonVisualProviderFlags = *&self->_buttonVisualProviderFlags & 0xFFBF | v11;
  v12 = objc_opt_respondsToSelector();
  v13 = self->_buttonVisualProviderFlags;
  if (v12)
  {
    v14 = 2048;
  }

  else
  {
    v14 = 0;
  }

  *&self->_buttonVisualProviderFlags = v13 & 0xF7FF | v14;
  if ((v13 & 2) != 0)
  {
    [v20 setButton:self];
  }

  objc_storeStrong(&self->_visualProvider, a3);
  v15 = [(UIButton *)self titleForState:0];
  [v20 setTitle:v15 forState:0];

  v16 = [(UIButton *)self attributedTitleForState:0];
  [v20 setAttributedTitle:v16 forState:0];

  v17 = [(UIButton *)self imageForState:0];
  [v20 setImage:v17 forState:0];

  [v20 setEnabled:{-[UIControl isEnabled](self, "isEnabled")}];
  [v20 setSelected:{-[UIControl isSelected](self, "isSelected")}];
  if ((*&self->_buttonVisualProviderFlags & 4) != 0)
  {
    if (self->_configuration)
    {
      v18 = [(UIButton *)self _visualProvider];
      [v18 automaticallyUpdateConfigurationIfNecessary:self->_configuration];
      [v18 applyConfiguration];
    }

    else
    {
      [(UIButton *)self setNeedsUpdateConfiguration];
    }
  }

  [v20 setContextMenuIsPrimary:{-[UIControl showsMenuAsPrimaryAction](self, "showsMenuAsPrimaryAction")}];
  [(UIView *)self invalidateIntrinsicContentSize];
  v19 = [(UIButton *)self menu];
  [v20 setMenu:v19];
}

+ (void)_registerVisualProviderClass:(Class)a3 forIdiom:(int64_t)a4
{
  v6 = __UIButtonIdiomsToVisualProviderClasses;
  if (!__UIButtonIdiomsToVisualProviderClasses)
  {
    v7 = [MEMORY[0x1E695DF90] dictionary];
    v8 = __UIButtonIdiomsToVisualProviderClasses;
    __UIButtonIdiomsToVisualProviderClasses = v7;

    v6 = __UIButtonIdiomsToVisualProviderClasses;
  }

  v9 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  v14 = [v6 objectForKeyedSubscript:v9];

  if (!v14)
  {
    v14 = [MEMORY[0x1E695DF90] dictionary];
    v10 = __UIButtonIdiomsToVisualProviderClasses;
    v11 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
    [v10 setObject:v14 forKeyedSubscript:v11];
  }

  if (([(objc_class *)a3 instancesRespondToSelector:sel_automaticallyUpdateConfigurationIfNecessary_]& 1) != 0)
  {
    v12 = 2;
  }

  else
  {
    v12 = objc_opt_respondsToSelector() & 1;
  }

  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v12];
  [v14 setObject:a3 forKeyedSubscript:v13];
}

- (id)visualProviderClassForTraitCollection:(id)a3
{
  v4 = [a3 userInterfaceIdiom];
  v5 = [objc_opt_class() _visualProviderClass];
  if (!v5)
  {
    v5 = [objc_opt_class() _visualProviderClassForIdiom:v4];
    if (!v5)
    {
      v12 = __UIButtonIdiomsToVisualProviderClasses;
      v13 = [MEMORY[0x1E696AD98] numberWithInteger:v4];
      v14 = [v12 objectForKey:v13];

      if (v14)
      {
        v6 = [v14 objectForKeyedSubscript:&unk_1EFE302F8];
        v15 = [v14 objectForKeyedSubscript:&unk_1EFE30310];
        if (self->_configuration || self->_configurationUpdateHandler)
        {
          if (!v6)
          {
            v6 = v15;
          }

          if (v6)
          {
LABEL_20:

            goto LABEL_4;
          }
        }

        else
        {
          if (v15)
          {
            v6 = v15;
          }

          if (v6)
          {
            goto LABEL_20;
          }
        }

        v16 = [v14 objectEnumerator];
        v6 = [v16 nextObject];

        if (v6)
        {
          goto LABEL_4;
        }
      }

      if (v4 != 2 || (v5 = objc_opt_class()) == 0)
      {
        v5 = objc_opt_class();
      }
    }
  }

  v6 = v5;
LABEL_4:
  if (self->_visualProvider && v6 == objc_opt_class() && ![v6 requiresNewVisualProviderForChanges])
  {
    v10 = 0;
  }

  else
  {
    v7 = [v6 visualProviderForButton:self];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = [UIButtonLegacyVisualProvider visualProviderForButton:self];
    }

    v10 = v9;
  }

  return v10;
}

- (void)_refreshVisualProviderForTraitCollection:(id)a3 populatingAPIProperties:(BOOL)a4
{
  v5 = [(UIButton *)self visualProviderClassForTraitCollection:a3, a4];
  if (v5)
  {
    v6 = v5;
    [(UIButton *)self _setVisualProvider:v5];
    v5 = v6;
  }
}

- (void)_setImageContentMode:(int64_t)a3
{
  self->__imageContentMode = a3;
  buttonVisualProviderFlags = self->_buttonVisualProviderFlags;
  if (buttonVisualProviderFlags)
  {
    if ((buttonVisualProviderFlags & 0x40) == 0)
    {
      return;
    }
  }

  else
  {
    v6 = [(UIButton *)self _visualProvider];
    if (!v6)
    {
      return;
    }

    v7 = self->_buttonVisualProviderFlags;

    if ((v7 & 0x40) == 0)
    {
      return;
    }
  }

  v8 = [(UIButton *)self _visualProvider];
  [v8 setImageContentMode:a3];
}

- (void)_setDisableAutomaticTitleAnimations:(BOOL)a3
{
  v3 = 0x200000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_buttonFlags = (*&self->_buttonFlags & 0xFFFFFFFDFFFFFFFFLL | v3);
}

- (BOOL)_hasVisibleDefaultSelectionIndicator
{
  if (![(UIControl *)self isSelected])
  {
    return 0;
  }

  v3 = [(UIButton *)self _selectionIndicatorView];
  v4 = [v3 superview];
  v5 = v4 != 0;

  return v5;
}

- (void)_didUpdateFocusInContext:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = UIButton;
  [(UIView *)&v9 _didUpdateFocusInContext:v5];
  v6 = [_UIFocusAnimationCoordinatorManager animationCoordinatorForContext:v5];
  if (!v6)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"UIButton.m" lineNumber:1863 description:@"Received call to _didUpdateFocusInContext: outside of a focus update."];
  }

  v7 = [(UIButton *)self _visualProvider];
  [v7 didUpdateFocusInContext:v5 withAnimationCoordinator:v6];
}

- (id)_defaultFocusEffect
{
  v3 = [(UIButton *)self _visualProvider];
  v4 = [v3 defaultFocusEffect];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = UIButton;
    v6 = [(UIView *)&v9 _defaultFocusEffect];
  }

  v7 = v6;

  return v7;
}

- (double)_focusSizeIncrease
{
  v2 = [(UIButton *)self _visualProvider];
  [v2 focusSizeIncrease];
  v4 = v3;

  return v4;
}

- (void)_setFocusSizeIncrease:(double)a3
{
  v4 = [(UIButton *)self _visualProvider];
  [v4 setFocusSizeIncrease:a3];
}

- (id)_preferredConfigurationForFocusAnimation:(int64_t)a3 inContext:(id)a4
{
  v6 = a4;
  v7 = [(UIButton *)self _visualProvider];
  v8 = [v7 preferredConfigurationForFocusAnimation:a3 inContext:v6];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = UIButton;
    v10 = [(UIView *)&v13 _preferredConfigurationForFocusAnimation:a3 inContext:v6];
  }

  v11 = v10;

  return v11;
}

- (BOOL)beginTrackingWithTouch:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(UIButton *)self _visualProvider];
  [v8 touchesBegan];

  if (_UIDeviceHasExternalTouchInput())
  {
    v9 = 0;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = UIButton;
    v9 = [(UIControl *)&v11 beginTrackingWithTouch:v6 withEvent:v7];
  }

  return v9;
}

- (void)endTrackingWithTouch:(id)a3 withEvent:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(UIButton *)self _visualProvider];
  [v8 touchesEnded];

  v9.receiver = self;
  v9.super_class = UIButton;
  [(UIControl *)&v9 endTrackingWithTouch:v7 withEvent:v6];
}

- (void)_selectionInteractionDidBeginHinting:(id)a3
{
  v5 = self;
  v3 = [(UIView *)v5 _focusBehavior];
  v4 = [v3 buttonSelectionMode];

  if ((v4 & 2) != 0 && [(UIControl *)v5 isEnabled])
  {
    *&v5->_buttonFlags |= 0x4000000uLL;
    [(UIButton *)v5 setHighlighted:1];
  }
}

- (void)_selectionInteractionDidCancelHinting:(id)a3
{
  v5 = self;
  v3 = [(UIView *)v5 _focusBehavior];
  v4 = [v3 buttonSelectionMode];

  if ((v4 & 2) != 0 && [(UIControl *)v5 isHighlighted])
  {
    *&v5->_buttonFlags |= 0x4000000uLL;
    [(UIButton *)v5 setHighlighted:0];
    [(UIControl *)v5 _setTouchHasHighlighted:0];
  }
}

- (void)_selectionInteractionDidSelect:(id)a3
{
  v3 = self;
  v4 = [(UIView *)v3 _focusBehavior];
  v5 = [v4 buttonSelectionMode];

  if ((v5 & 2) != 0 && [(UIControl *)v3 isHighlighted])
  {
    *&v3->_buttonFlags |= 0x4000000uLL;
    [(UIButton *)v3 setHighlighted:0];
    [(UIControl *)v3 _setTouchHasHighlighted:0];
  }

  v6 = [(UIView *)v3 _focusBehavior];
  v7 = [v6 buttonSelectionMode];

  if (v7)
  {
    [(UIControl *)v3 sendActionsForControlEvents:1];
    v8 = 64;
  }

  else
  {
    if ([(UIButton *)v3 _isToggleButton])
    {
      [(UIButton *)v3 setSelected:[(UIControl *)v3 isSelected]^ 1];
    }

    v8 = 0x2000;
  }

  [(UIControl *)v3 sendActionsForControlEvents:v8];
}

- (UIEdgeInsets)_pathTitleEdgeInsets
{
  v3 = [(UIView *)self traitCollection];
  v4 = [v3 userInterfaceIdiom];

  if (v4 == 5)
  {
    v5 = 8.0;
  }

  else
  {
    v5 = 10.0;
  }

  UIRoundToViewScale(self);
  v7 = v6 + 1.0;
  v8 = v5;
  v9 = v5;
  result.right = v9;
  result.bottom = v7;
  result.left = v8;
  result.top = v6;
  return result;
}

- (UIEdgeInsets)_pathImageEdgeInsets
{
  v3 = [(UIView *)self traitCollection];
  v4 = [v3 userInterfaceIdiom];

  if (v4 == 5)
  {
    v5 = 8.0;
  }

  else
  {
    v5 = 11.0;
  }

  UIRoundToViewScale(self);
  v7 = v6 + 1.0;
  v8 = v5;
  v9 = v5;
  result.right = v9;
  result.bottom = v7;
  result.left = v8;
  result.top = v6;
  return result;
}

- (BOOL)_hasHighlightColor
{
  v2 = [(UIButton *)self _contentForState:1];
  v3 = [v2 attributedTitle];
  v4 = [v3 attribute:*off_1E70EC920 atIndex:0 effectiveRange:0];
  if (!v4)
  {
    v4 = [v2 titleColor];
  }

  v5 = v4 != 0;

  return v5;
}

+ (void)_setVisuallyHighlighted:(BOOL)a3 forViews:(id)a4 initialPress:(BOOL)a5 highlightBlock:(id)a6
{
  v7 = a5;
  v8 = a3;
  v9 = a4;
  v10 = a6;
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __73__UIButton__setVisuallyHighlighted_forViews_initialPress_highlightBlock___block_invoke;
  v18 = &unk_1E70F37C0;
  v11 = v9;
  v19 = v11;
  v12 = v10;
  v20 = v12;
  v13 = _Block_copy(&v15);
  v14 = v13;
  if (v8 && v7)
  {
    (*(v13 + 2))(v13);
  }

  else
  {
    [UIView animateWithDuration:327684 delay:v13 options:0 animations:0.47 completion:0.0, v15, v16, v17, v18, v19];
  }
}

void __73__UIButton__setVisuallyHighlighted_forViews_initialPress_highlightBlock___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        (*(*(a1 + 40) + 16))(*(a1 + 40));
        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

+ (void)_setVisuallyHighlighted:(BOOL)a3 forViews:(id)a4 initialPress:(BOOL)a5 baseAlpha:(double)a6
{
  v7 = a5;
  v8 = a3;
  v29 = *MEMORY[0x1E69E9840];
  v10 = a4;
  v11 = [v10 firstObject];
  v12 = [v11 traitCollection];
  v13 = [v12 userInterfaceStyle] == 2;

  v14 = dbl_18A674F10[v13];
  v26 = 0u;
  v27 = 0u;
  if (v8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1.0;
  }

  v24 = 0uLL;
  v25 = 0uLL;
  v16 = v10;
  v17 = [v16 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = v15 * a6;
    v20 = *v25;
    while (2)
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v25 != v20)
        {
          objc_enumerationMutation(v16);
        }

        [*(*(&v24 + 1) + 8 * i) alpha];
        if (v19 != v22)
        {

          v23[0] = MEMORY[0x1E69E9820];
          v23[1] = 3221225472;
          v23[2] = __68__UIButton__setVisuallyHighlighted_forViews_initialPress_baseAlpha___block_invoke;
          v23[3] = &__block_descriptor_40_e16_v16__0__UIView_8l;
          *&v23[4] = v19;
          [a1 _setVisuallyHighlighted:v8 forViews:v16 initialPress:v7 highlightBlock:v23];
          goto LABEL_14;
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v18)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:
}

- (id)_selectedIndicatorViewWithImage:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(UIImageView);
  [(UIImageView *)v4 setImage:v3];

  return v4;
}

- (CGRect)_selectedIndicatorBounds
{
  v3 = [(UIView *)self traitCollection];
  v4 = [v3 userInterfaceIdiom];

  [(UIView *)self bounds];
  [(UIButton *)self contentRectForBounds:?];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [(UIButton *)self _visualProvider];
  v14 = [v13 useTitleForSelectedIndicatorBounds];

  if (v14)
  {
    [(UIButton *)self titleRectForContentRect:v6, v8, v10, v12];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;
    buttonVisualProviderFlags = self->_buttonVisualProviderFlags;
    if (buttonVisualProviderFlags)
    {
      if ((buttonVisualProviderFlags & 0x20) == 0)
      {
LABEL_10:
        UIRoundToViewScale(self);
        v35 = v34;
        UIRoundToViewScale(self);
        v30 = -v36;
        v31 = -v35;
        v26 = v16;
        v27 = v18;
        v28 = v20;
        v29 = v22;
        goto LABEL_12;
      }
    }

    else
    {
      v24 = [(UIButton *)self _visualProvider];
      if (!v24)
      {
        goto LABEL_10;
      }

      v25 = self->_buttonVisualProviderFlags;

      if ((v25 & 0x20) == 0)
      {
        goto LABEL_10;
      }
    }

    v32 = [(UIButton *)self _visualProvider];
    v33 = [v32 font];
    [v33 pointSize];

    goto LABEL_10;
  }

  [(UIButton *)self imageRectForContentRect:v6, v8, v10, v12];
  if (v4 == 5)
  {
    v30 = -4.0;
    v31 = -6.0;
  }

  else
  {
    v30 = -5.0;
    v31 = -8.0;
  }

LABEL_12:
  result = CGRectInset(*&v26, v30, v31);
  v37 = result.size.height + 1.0;
  result.size.height = v37;
  return result;
}

- (id)_selectionIndicatorView
{
  v2 = [(UIButton *)self _visualProvider];
  v3 = [v2 selectionIndicatorView];

  return v3;
}

- (void)_willMoveToWindow:(id)a3
{
  v6.receiver = self;
  v6.super_class = UIButton;
  v4 = a3;
  [(UIControl *)&v6 _willMoveToWindow:v4];
  v5 = [(UIButton *)self _visualProvider:v6.receiver];
  [v5 willMoveToWindow:v4];
}

- (void)_didMoveFromWindow:(id)a3 toWindow:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = UIButton;
  [(UIControl *)&v14 _didMoveFromWindow:v6 toWindow:v7];
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  contentLookup = self->_contentLookup;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __40__UIButton__didMoveFromWindow_toWindow___block_invoke;
  v9[3] = &unk_1E7104D70;
  v9[4] = self;
  v9[5] = &v10;
  [(NSMutableDictionary *)contentLookup enumerateKeysAndObjectsUsingBlock:v9];
  if (*(v11 + 24) == 1)
  {
    if ((~*&self->super.super._viewFlags & 0x210000000000000) == 0)
    {
      [(UIView *)self invalidateIntrinsicContentSize];
    }

    if ([(UIButton *)self autosizesToFit])
    {
      [(UIView *)self sizeToFit];
    }

    [(UIButton *)self _invalidateForPropertyChange];
  }

  _Block_object_dispose(&v10, 8);
}

void __40__UIButton__didMoveFromWindow_toWindow___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a3;
  v8 = [a2 unsignedIntValue];
  v9 = [*(a1 + 32) state];
  v10 = [v7 updateVariableLengthStringForView:*(a1 + 32)];

  if (v10)
  {
    if (v9 == v8 || !v8 && ([*(a1 + 32) _contentForState:v9], v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "title"), v12 = objc_claimAutoreleasedReturnValue(), v12, v11, !v12))
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
      *a4 = 1;
    }
  }
}

- (int64_t)_externalDrawingStyleForState:(unint64_t)a3
{
  if ([(UIButton *)self _isCarPlaySystemTypeButton])
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

- (id)_externalTitleColorForState:(unint64_t)a3 isTintColor:(BOOL *)a4
{
  if (![(UIButton *)self _isCarPlaySystemTypeButton])
  {
    v7 = 0;
    v6 = 0;
    if (!a4)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (![(UIButton *)self canBecomeFocused]|| [(UIView *)self isFocused])
  {
    v6 = [(UIButton *)self _externalFocusedTitleColor];
    v7 = 0;
    if (!a4)
    {
      goto LABEL_8;
    }

LABEL_7:
    *a4 = v7;
    goto LABEL_8;
  }

  v6 = [(UIView *)self tintColor];
  v7 = 1;
  if (a4)
  {
    goto LABEL_7;
  }

LABEL_8:

  return v6;
}

- (id)_externalBorderColorForState:(unint64_t)a3
{
  v3 = a3;
  if (![(UIButton *)self _isCarPlaySystemTypeButton])
  {
    v6 = 0;
    goto LABEL_13;
  }

  if ([(UIButton *)self canBecomeFocused]&& ![(UIView *)self isFocused])
  {
    v5 = [(UIButton *)self _externalUnfocusedBorderColor];
  }

  else
  {
    v5 = [(UIView *)self tintColor];
  }

  v6 = v5;
  if ((v3 & 2) != 0)
  {
    v7 = 1;
    if (!v6)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v7 = [(UIButton *)self _isEffectivelyDisabledExternalButton];
    if (!v6)
    {
      goto LABEL_13;
    }
  }

  if (v7)
  {
    v8 = [UIColor _disabledColorForColor:v6];

    v6 = v8;
  }

LABEL_13:

  return v6;
}

- (id)_externalImageColorForState:(unint64_t)a3
{
  if ([(UIButton *)self _isCarPlaySystemTypeButton])
  {
    v5 = [(UIButton *)self _externalTitleColorForState:a3 isTintColor:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_setExternalFlatEdge:(unint64_t)a3
{
  self->_externalFlatEdge = a3;
  buttonVisualProviderFlags = self->_buttonVisualProviderFlags;
  if (buttonVisualProviderFlags)
  {
    if ((buttonVisualProviderFlags & 0x40) == 0)
    {
      return;
    }
  }

  else
  {
    v6 = [(UIButton *)self _visualProvider];
    if (!v6)
    {
      return;
    }

    v7 = self->_buttonVisualProviderFlags;

    if ((v7 & 0x40) == 0)
    {
      return;
    }
  }

  v8 = [(UIButton *)self _visualProvider];
  [v8 setExternalFlatEdge:a3];
}

- (id)_borderColorForState:(unint64_t)a3
{
  if ([(UIButton *)self _isCarPlaySystemTypeButton])
  {
    v5 = [(UIButton *)self _externalBorderColorForState:a3];

    if (v5)
    {
      v6 = [(UIButton *)self _externalBorderColorForState:a3];
      goto LABEL_11;
    }
  }

  if ((a3 & 1) == 0)
  {
    if ([(UIButton *)self _buttonType]== 3)
    {
      v7 = 0.2;
      v8 = 1.0;
LABEL_9:
      v6 = [UIColor colorWithWhite:v8 alpha:v7];
      goto LABEL_11;
    }

    if ([(UIButton *)self _buttonType]== 4)
    {
      v8 = 0.8;
      v7 = 1.0;
      goto LABEL_9;
    }
  }

  v6 = [(UIView *)self _inheritedInteractionTintColor];
LABEL_11:

  return v6;
}

- (void)_setTitleFrozen:(BOOL)a3
{
  v3 = 0x800000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_buttonFlags = (*&self->_buttonFlags & 0xFFFFFFFFFF7FFFFFLL | v3);
}

- (void)setSemanticContentAttribute:(int64_t)a3
{
  v6.receiver = self;
  v6.super_class = UIButton;
  [(UIView *)&v6 setSemanticContentAttribute:?];
  v5 = [(UIButton *)self _visualProvider];
  [v5 setSemanticContentAttribute:a3];
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = [v4 view];
  v6 = v5 == self || ![v4 _isGestureType:0] || objc_msgSend(v4, "numberOfTouchesRequired") != 1 || objc_msgSend(v4, "numberOfTapsRequired") != 1;

  return v6;
}

UISpringLoadedInteraction *__28__UIButton_setSpringLoaded___block_invoke()
{
  v0 = [[UISpringLoadedInteraction alloc] initWithActivationHandler:&__block_literal_global_389_0];

  return v0;
}

void __28__UIButton_setSpringLoaded___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 view];
  [v2 sendActionsForControlEvents:64];
}

- (uint64_t)_setContentValue:(void *)a3 forField:(uint64_t)a4 state:
{
  v7 = a2;
  v8 = a3;
  if (a1)
  {
    v9 = [a1 _contentForState:a4];
    if (!v9)
    {
      v9 = objc_alloc_init(UIButtonContent);
      [a1 _setContent:v9 forState:a4];
    }

    if ([v8 isEqualToString:@"attributedTitle"])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = [(_NSAttributedStringIntentResolver *)_UIAttributedStringIntentResolver attributedStringByResolvingString:v7];

        v7 = v10;
      }
    }

    v11 = [(UIButtonContent *)v9 valueForKey:v8];
    v12 = v11;
    if (v11 == v7)
    {
      v14 = 0;
    }

    else
    {
      v13 = [v11 isEqual:v7];
      v14 = v13 ^ 1u;
      if ((~a1[11] & 0x210000000000000) == 0 && (v13 & 1) == 0)
      {
        [a1 invalidateIntrinsicContentSize];
      }
    }

    [(UIButtonContent *)v9 setValue:v7 forKey:v8];
    if ([v8 isEqualToString:@"title"])
    {
      [(UIButtonContent *)v9 updateVariableLengthStringForView:a1];
    }

    if ([v8 isEqualToString:@"titleColor"])
    {
      a1[77] |= 0x80000000uLL;
    }

    if (!v7 && [(UIButtonContent *)v9 isEmpty])
    {
      [a1 _setContent:0 forState:a4];
    }

    if (v14)
    {
      if (v7)
      {
        v15 = v12 == 0;
      }

      else
      {
        v15 = 1;
      }

      v16 = v15;
      if (!a4 && v16 && [v8 isEqualToString:@"background"] && objc_msgSend(a1, "_wantsAccessibilityUnderline"))
      {
        v17 = [a1 _titleView];
        [v17 _setWantsUnderlineForAccessibilityButtonShapesEnabled:v7 == 0];
      }
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)_markAndLayoutAsNeededForField:(uint64_t)a3 state:
{
  v8 = a2;
  if (a1)
  {
    if (dyld_program_sdk_at_least())
    {
      if ([a1 state] == a3 || !a3 && (objc_msgSend(a1, "_contentForState:", objc_msgSend(a1, "state")), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "valueForKey:", v8), v7 = objc_claimAutoreleasedReturnValue(), v7, v6, !v7))
      {
        [a1 _invalidateForPropertyChange];
      }
    }

    else
    {
      [a1 setNeedsLayout];
      if ([a1 state] == a3)
      {
        v5 = [a1 window];

        if (v5)
        {
          [a1 layoutBelowIfNeeded];
        }
      }
    }
  }
}

- (void)setTitle:(NSString *)title forState:(UIControlState)state
{
  v6 = title;
  v7 = [(UIButton *)self _setContentValue:v6 forField:@"title" state:state];
  v8 = [(UIButton *)self _visualProvider];
  [v8 setTitle:v6 forState:state];

  if ([(UIButton *)self autosizesToFit])
  {
    [(UIView *)self sizeToFit];
  }

  if (v7)
  {

    [(UIButton *)self _markAndLayoutAsNeededForField:state state:?];
  }
}

- (void)setTitleColor:(UIColor *)color forState:(UIControlState)state
{
  if ([(UIButton *)self _setContentValue:@"titleColor" forField:state state:?])
  {

    [(UIButton *)self _markAndLayoutAsNeededForField:state state:?];
  }
}

- (void)_setImageColor:(id)a3 forState:(unint64_t)a4
{
  if ([(UIButton *)self _setContentValue:a3 forField:@"imageColor" state:a4])
  {

    [(UIButton *)self _markAndLayoutAsNeededForField:a4 state:?];
  }
}

- (void)setTitleShadowColor:(UIColor *)color forState:(UIControlState)state
{
  if ([(UIButton *)self _setContentValue:@"shadowColor" forField:state state:?])
  {

    [(UIButton *)self _markAndLayoutAsNeededForField:state state:?];
  }
}

- (void)setImage:(UIImage *)image forState:(UIControlState)state
{
  v6 = image;
  v7 = [(UIButton *)self _setContentValue:v6 forField:@"image" state:state];
  v8 = [(UIButton *)self _visualProvider];
  [v8 setImage:v6 forState:state];

  if ([(UIButton *)self autosizesToFit])
  {
    [(UIView *)self sizeToFit];
  }

  if (v7)
  {

    [(UIButton *)self _markAndLayoutAsNeededForField:state state:?];
  }
}

- (void)setBackgroundImage:(UIImage *)image forState:(UIControlState)state
{
  v6 = [(UIButton *)self _setContentValue:@"background" forField:state state:?];
  if ([(UIButton *)self autosizesToFit])
  {
    [(UIView *)self sizeToFit];
  }

  if (v6)
  {

    [(UIButton *)self _markAndLayoutAsNeededForField:state state:?];
  }
}

- (void)setPreferredSymbolConfiguration:(UIImageSymbolConfiguration *)configuration forImageInState:(UIControlState)state
{
  v6 = configuration;
  v7 = [(UIButton *)self _setContentValue:v6 forField:@"preferredSymbolConfiguration" state:state];
  v8 = [(UIButton *)self _visualProvider];
  [v8 setPreferredSymbolConfiguration:v6 forImageInState:state];

  if ([(UIButton *)self autosizesToFit])
  {
    [(UIView *)self sizeToFit];
  }

  if (v7)
  {

    [(UIButton *)self _markAndLayoutAsNeededForField:state state:?];
  }
}

- (void)setAttributedTitle:(NSAttributedString *)title forState:(UIControlState)state
{
  v6 = title;
  v7 = [(UIButton *)self _setContentValue:v6 forField:@"attributedTitle" state:state];
  v8 = [(UIButton *)self _visualProvider];
  [v8 setAttributedTitle:v6 forState:state];

  if ([(UIButton *)self autosizesToFit])
  {
    [(UIView *)self sizeToFit];
  }

  if (v7)
  {

    [(UIButton *)self _markAndLayoutAsNeededForField:state state:?];
  }
}

- (void)_setSubtitle:(id)a3 forState:(unint64_t)a4
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"UIButton.m" lineNumber:2521 description:@"Set a subtitle on the configuration itself"];
}

- (void)_setAttributedSubtitle:(id)a3 forState:(unint64_t)a4
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"UIButton.m" lineNumber:2525 description:@"Set a subtitle on the configuration itself"];
}

- (id)_subtitleForState:(unint64_t)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"UIButton.m" lineNumber:2558 description:@"This method currently does nothing. Come back later please."];

  return 0;
}

- (id)_attributedSubtitleForState:(unint64_t)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"UIButton.m" lineNumber:2563 description:@"This method currently does nothing. Come back later please."];

  return 0;
}

- (UIColor)currentTitleColor
{
  v3 = [(UIControl *)self state];

  return [(UIButton *)self titleColorForState:v3];
}

- (UIColor)_currentImageColor
{
  v3 = [(UIControl *)self state];

  return [(UIButton *)self _imageColorForState:v3];
}

- (UIColor)currentTitleShadowColor
{
  v3 = [(UIControl *)self state];

  return [(UIButton *)self titleShadowColorForState:v3];
}

- (NSAttributedString)currentAttributedTitle
{
  v3 = [(UIControl *)self state];

  return [(UIButton *)self attributedTitleForState:v3];
}

- (UIImageSymbolConfiguration)currentPreferredSymbolConfiguration
{
  v3 = [(UIControl *)self state];

  return [(UIButton *)self preferredSymbolConfigurationForImageInState:v3];
}

- (id)_currentImageWithResolvedConfiguration
{
  buttonVisualProviderFlags = self->_buttonVisualProviderFlags;
  if (buttonVisualProviderFlags)
  {
    if ((buttonVisualProviderFlags & 0x40) != 0)
    {
LABEL_4:
      v6 = [(UIButton *)self _visualProvider];
      v7 = [v6 currentImageWithResolvedConfiguration];

      goto LABEL_7;
    }
  }

  else
  {
    v4 = [(UIButton *)self _visualProvider];
    if (v4)
    {
      v5 = self->_buttonVisualProviderFlags;

      if ((v5 & 0x40) != 0)
      {
        goto LABEL_4;
      }
    }
  }

  v7 = 0;
LABEL_7:

  return v7;
}

- (CGRect)backgroundRectForBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  if (UIButtonTypeIsModernCircleButton((*&self->_buttonFlags >> 6)))
  {
    [(UIButton *)self imageRectForContentRect:x, y, width, height];
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
  v7 = [(UIButton *)self _visualProvider];
  [v7 contentRectForBounds:{x, y, width, height}];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v16 = v9;
  v17 = v11;
  v18 = v13;
  v19 = v15;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (CGRect)titleRectForContentRect:(CGRect)contentRect
{
  height = contentRect.size.height;
  width = contentRect.size.width;
  y = contentRect.origin.y;
  x = contentRect.origin.x;
  v7 = [(UIButton *)self _visualProvider];
  [v7 titleRectForContentRect:{x, y, width, height}];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v16 = v9;
  v17 = v11;
  v18 = v13;
  v19 = v15;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (CGRect)imageRectForContentRect:(CGRect)contentRect
{
  height = contentRect.size.height;
  width = contentRect.size.width;
  y = contentRect.origin.y;
  x = contentRect.origin.x;
  v7 = [(UIButton *)self _visualProvider];
  [v7 imageRectForContentRect:{x, y, width, height}];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v16 = v9;
  v17 = v11;
  v18 = v13;
  v19 = v15;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (void)_setContentHuggingPriorities:(CGSize)a3
{
  width = a3.width;
  if (a3.width < 1.0 || a3.height < 1.0)
  {
    v8 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"UIButton content-hugging priorities must be >= 1." userInfo:{0, 1.0, a3.height}];
    objc_exception_throw(v8);
  }

  height = a3.height;
  v9.receiver = self;
  v9.super_class = UIButton;
  [(UIView *)&v9 _setContentHuggingPriorities:a3.width];
  v7 = [(UIButton *)self _visualProvider];
  [v7 setContentHuggingPriorities:{width, height}];
}

- (BOOL)_shouldInvalidateBaselineConstraintsForSize:(CGSize)a3 oldSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v6 = a3.height;
  v7 = a3.width;
  buttonVisualProviderFlags = self->_buttonVisualProviderFlags;
  if (buttonVisualProviderFlags)
  {
    if ((buttonVisualProviderFlags & 4) != 0)
    {
      goto LABEL_4;
    }

LABEL_9:
    v15.receiver = self;
    v15.super_class = UIButton;
    return [(UIView *)&v15 _shouldInvalidateBaselineConstraintsForSize:v7 oldSize:v6, width, height];
  }

  v10 = [(UIButton *)self _visualProvider];
  if (!v10)
  {
    goto LABEL_9;
  }

  v11 = self->_buttonVisualProviderFlags;

  if ((v11 & 4) == 0)
  {
    goto LABEL_9;
  }

LABEL_4:
  if ((*(&self->super.super._viewFlags + 7) & 1) != 0 || v7 == width && v6 == height)
  {
    return 0;
  }

  v13 = [(UIButton *)self _visualProvider];
  v14 = [v13 vendsBaselineInformationToAutoLayout];

  return v14;
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)_baselineOffsetsAtSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = [(UIButton *)self _visualProvider];
  [v5 baselineOffsetsAtSize:{width, height}];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.var1 = v11;
  result.var0 = v10;
  return result;
}

- (void)_updateBaselineInformationDependentOnBounds
{
  buttonVisualProviderFlags = self->_buttonVisualProviderFlags;
  if (buttonVisualProviderFlags)
  {
    if ((buttonVisualProviderFlags & 4) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v5 = [(UIButton *)self _visualProvider];
  if (!v5 || (v6 = self->_buttonVisualProviderFlags, v5, (v6 & 4) == 0))
  {
LABEL_6:
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"UIButton.m" lineNumber:2693 description:@"Unexpected use of baseline-updating UIButton"];
  }

LABEL_7:
  v8 = [(UIButton *)self _visualProvider];
  [v8 updateBaselineInformationDependentOnBounds];
}

- (double)_baselineOffsetFromNearestEdgeForLayoutAttribute:(int64_t)a3
{
  v12.receiver = self;
  v12.super_class = UIButton;
  [(UIView *)&v12 _baselineOffsetFromNearestEdgeForLayoutAttribute:?];
  v6 = v5;
  buttonVisualProviderFlags = self->_buttonVisualProviderFlags;
  if (buttonVisualProviderFlags)
  {
    if ((a3 - 11) > 1 || (buttonVisualProviderFlags & 4) == 0)
    {
      return v6;
    }
  }

  else
  {
    v8 = [(UIButton *)self _visualProvider];
    v9 = v8;
    if (!v8 || (*&self->_buttonVisualProviderFlags & 4) == 0)
    {
      goto LABEL_12;
    }

    if ((a3 - 11) > 1)
    {
      return v6;
    }
  }

  v10 = [(UIButton *)self _visualProvider];
  [v10 setVendsBaselineInformationToAutoLayout:1];

  if (a3 == 11)
  {
    v9 = [(UIButton *)self _visualProvider];
    [v9 setPreviousLastBaselineOffsetForAttributeLowering:v6];
    goto LABEL_12;
  }

  if (a3 == 12)
  {
    v9 = [(UIButton *)self _visualProvider];
    [v9 setPreviousFirstBaselineOffsetForAttributeLowering:v6];
LABEL_12:
  }

  return v6;
}

- (double)_firstBaselineOffsetFromTop
{
  buttonVisualProviderFlags = self->_buttonVisualProviderFlags;
  if (buttonVisualProviderFlags)
  {
    if ((buttonVisualProviderFlags & 4) != 0)
    {
LABEL_4:
      [(UIView *)self bounds];
      [(UIButton *)self _baselineOffsetsAtSize:v6, v7];
      return result;
    }
  }

  else
  {
    v4 = [(UIButton *)self _visualProvider];
    if (v4)
    {
      v5 = self->_buttonVisualProviderFlags;

      if ((v5 & 4) != 0)
      {
        goto LABEL_4;
      }
    }
  }

  v9.receiver = self;
  v9.super_class = UIButton;
  [(UIView *)&v9 _firstBaselineOffsetFromTop];
  return result;
}

- (CGSize)_roundSize:(CGSize)a3
{
  v3 = ceil(a3.width);
  v4 = ceil(a3.height);
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)_prepareForSecondIntrinsicContentSizeCalculationWithLayoutEngineBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  buttonVisualProviderFlags = self->_buttonVisualProviderFlags;
  if (buttonVisualProviderFlags)
  {
    if ((buttonVisualProviderFlags & 4) != 0)
    {
      goto LABEL_7;
    }

LABEL_6:
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"UIButton.m" lineNumber:2764 description:@"Unexpected use of multiline text content sizing in UIButton"];

    goto LABEL_7;
  }

  v10 = [(UIButton *)self _visualProvider];
  if (!v10)
  {
    goto LABEL_6;
  }

  v11 = self->_buttonVisualProviderFlags;

  if ((v11 & 4) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  v13 = [(UIButton *)self _visualProvider];
  [(UIView *)self alignmentRectForFrame:x, y, width, height];
  [v13 setWidthForMultilineTextLayout:CGRectGetWidth(v15)];

  v14.receiver = self;
  v14.super_class = UIButton;
  [(UIView *)&v14 _prepareForSecondIntrinsicContentSizeCalculationWithLayoutEngineBounds:x, y, width, height];
}

- (CGSize)_intrinsicSizeWithinSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = [(UIButton *)self _visualProvider];
  [v5 intrinsicSizeWithinSize:{width, height}];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5
{
  height = a3.height;
  width = a3.width;
  buttonVisualProviderFlags = self->_buttonVisualProviderFlags;
  if ((buttonVisualProviderFlags & 1) == 0)
  {
    v11 = [(UIButton *)self _visualProvider];
    if (v11)
    {
      v12 = self->_buttonVisualProviderFlags;

      if ((v12 & 4) != 0)
      {
        goto LABEL_4;
      }
    }

LABEL_6:
    v24.receiver = self;
    v24.super_class = UIButton;
    *&v22 = a4;
    *&v23 = a5;
    [(UIView *)&v24 systemLayoutSizeFittingSize:width withHorizontalFittingPriority:height verticalFittingPriority:v22, v23];
    goto LABEL_7;
  }

  if ((buttonVisualProviderFlags & 4) == 0)
  {
    goto LABEL_6;
  }

LABEL_4:
  v13 = [(UIButton *)self _visualProvider];
  *&v14 = a4;
  *&v15 = a5;
  [v13 systemLayoutSizeFittingSize:width withHorizontalFittingPriority:height verticalFittingPriority:{v14, v15}];
  v17 = v16;
  v19 = v18;

  v20 = v17;
  v21 = v19;
LABEL_7:
  result.height = v21;
  result.width = v20;
  return result;
}

- (id)_contentBackdropView
{
  v2 = [(UIButton *)self _visualProvider];
  v3 = [v2 contentBackdropView];

  return v3;
}

- (void)_setVisualEffectViewEnabled:(BOOL)a3 backgroundColor:(id)a4
{
  v4 = a3;
  v11 = a4;
  v6 = 0x10000000;
  if (!v4)
  {
    v6 = 0;
  }

  self->_buttonFlags = (*&self->_buttonFlags & 0xFFFFFFFFEFFFFFFFLL | v6);
  buttonVisualProviderFlags = self->_buttonVisualProviderFlags;
  if (buttonVisualProviderFlags)
  {
    if ((buttonVisualProviderFlags & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v8 = [(UIButton *)self _visualProvider];
  if (v8)
  {
    v9 = self->_buttonVisualProviderFlags;

    if ((v9 & 0x10) != 0)
    {
LABEL_8:
      v10 = [(UIButton *)self _visualProvider];
      [v10 setVisualEffectViewEnabled:v4 backgroundColor:v11];
    }
  }

LABEL_9:
}

- (void)_setBlurEnabled:(BOOL)a3
{
  if (((((*&self->_buttonFlags & 0x8000000) == 0) ^ a3) & 1) == 0)
  {
    v3 = a3;
    v5 = 0x8000000;
    if (!a3)
    {
      v5 = 0;
    }

    self->_buttonFlags = (*&self->_buttonFlags & 0xFFFFFFFFF7FFFFFFLL | v5);
    buttonVisualProviderFlags = self->_buttonVisualProviderFlags;
    if (buttonVisualProviderFlags)
    {
      if ((buttonVisualProviderFlags & 0x10) == 0)
      {
        return;
      }
    }

    else
    {
      v7 = [(UIButton *)self _visualProvider];
      if (!v7)
      {
        return;
      }

      v8 = self->_buttonVisualProviderFlags;

      if ((v8 & 0x10) == 0)
      {
        return;
      }
    }

    v9 = [(UIButton *)self _visualProvider];
    [v9 setBlurEnabled:v3];
  }
}

- (UIView)_imageEffectContainerView
{
  v2 = [(UIButton *)self _visualProvider];
  v3 = [v2 imageEffectContainerView];

  return v3;
}

- (void)_setWantsAccessibilityUnderline:(BOOL)a3
{
  v3 = 0x20000000;
  if (a3)
  {
    v3 = 0;
  }

  self->_buttonFlags = (*&self->_buttonFlags & 0xFFFFFFFFDFFFFFFFLL | v3);
}

- (void)_setButtonType:(int64_t)a3
{
  self->_buttonFlags = (*&self->_buttonFlags & 0xFFFFFFFFFFFFC03FLL | (a3 << 6));
  if (a3 == 7)
  {
    [(UIControl *)self setPointerInteractionEnabled:1];
  }

  [(UIButton *)self _refreshVisualProvider];
}

- (void)_setShouldHandleScrollerMouseEvent:(BOOL)a3
{
  v3 = 0x400000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_buttonFlags = (*&self->_buttonFlags & 0xFFFFFFFFFFBFFFFFLL | v3);
}

- (void)setAutosizesToFit:(BOOL)a3
{
  if (((((*&self->_buttonFlags & 8) == 0) ^ a3) & 1) == 0)
  {
    v3 = 8;
    if (!a3)
    {
      v3 = 0;
    }

    self->_buttonFlags = (*&self->_buttonFlags & 0xFFFFFFFFFFFFFFF7 | v3);
    if (a3)
    {
      [(UIView *)self sizeToFit];
    }
  }
}

- (void)setDisabledDimsImage:(BOOL)a3
{
  if (((((*&self->_buttonFlags & 0x10) == 0) ^ a3) & 1) == 0)
  {
    v3 = 16;
    if (!a3)
    {
      v3 = 0;
    }

    self->_buttonFlags = (*&self->_buttonFlags & 0xFFFFFFFFFFFFFFEFLL | v3);
    [(UIButton *)self setNeedsLayout];
  }
}

- (void)setTitle:(id)a3 forStates:(unint64_t)a4
{
  [(UIButton *)self _setTitle:a3 forStates:a4];
  if ([(UIButton *)self autosizesToFit])
  {
    [(UIView *)self sizeToFit];
  }

  [(UIButton *)self setNeedsLayout];
}

- (void)setTitleColor:(id)a3 forStates:(unint64_t)a4
{
  [(UIButton *)self _setTitleColor:a3 forStates:a4];

  [(UIButton *)self setNeedsLayout];
}

- (void)setTitleShadowColor:(id)a3 forStates:(unint64_t)a4
{
  [(UIButton *)self _setShadowColor:a3 forStates:a4];

  [(UIButton *)self setNeedsLayout];
}

- (void)setImage:(id)a3 forStates:(unint64_t)a4
{
  [(UIButton *)self _setImage:a3 forStates:a4];
  if ([(UIButton *)self autosizesToFit])
  {
    [(UIView *)self sizeToFit];
  }

  [(UIButton *)self setNeedsLayout];
}

- (void)setBackgroundImage:(id)a3 forStates:(unint64_t)a4
{
  [(UIButton *)self _setBackground:a3 forStates:a4];
  if ([(UIButton *)self autosizesToFit])
  {
    [(UIView *)self sizeToFit];
  }

  [(UIButton *)self setNeedsLayout];
}

- (id)_defaultFontForIdiom:(int64_t)a3
{
  v3 = 15.0;
  if (a3 == 5)
  {
    v3 = 13.0;
  }

  return [off_1E70ECC18 systemFontOfSize:v3];
}

- (void)_setFont:(id)a3 isDefaultForIdiom:(BOOL)a4
{
  v4 = a4;
  v10 = a3;
  buttonVisualProviderFlags = self->_buttonVisualProviderFlags;
  if (buttonVisualProviderFlags)
  {
    if ((buttonVisualProviderFlags & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v7 = [(UIButton *)self _visualProvider];
  if (v7)
  {
    v8 = self->_buttonVisualProviderFlags;

    if ((v8 & 0x20) != 0)
    {
LABEL_6:
      v9 = [(UIButton *)self _visualProvider];
      [v9 setFont:v10 isDefaultForIdiom:v4];
    }
  }

LABEL_7:
}

- (id)_lazyTitleViewFontIsDefaultForIdiom:(BOOL *)a3
{
  if (a3)
  {
    *a3 = self->_lazyTitleViewFontIsDefaultForIdiom;
  }

  return self->_lazyTitleViewFont;
}

- (void)_resetLazyTitleViewFont
{
  lazyTitleViewFont = self->_lazyTitleViewFont;
  self->_lazyTitleViewFont = 0;

  self->_lazyTitleViewFontIsDefaultForIdiom = 0;
}

- (void)_setLineBreakMode:(int64_t)a3
{
  buttonVisualProviderFlags = self->_buttonVisualProviderFlags;
  if (buttonVisualProviderFlags)
  {
    if ((buttonVisualProviderFlags & 0x20) == 0)
    {
      return;
    }
  }

  else
  {
    v6 = [(UIButton *)self _visualProvider];
    if (!v6)
    {
      return;
    }

    v7 = self->_buttonVisualProviderFlags;

    if ((v7 & 0x20) == 0)
    {
      return;
    }
  }

  v8 = [(UIButton *)self _visualProvider];
  [v8 setLineBreakMode:a3];
}

- (CGSize)_titleShadowOffset
{
  buttonVisualProviderFlags = self->_buttonVisualProviderFlags;
  if ((buttonVisualProviderFlags & 1) == 0)
  {
    v4 = [(UIButton *)self _visualProvider];
    if (v4)
    {
      v5 = self->_buttonVisualProviderFlags;

      if ((v5 & 0x20) != 0)
      {
        goto LABEL_4;
      }
    }

LABEL_6:
    v8 = *MEMORY[0x1E695F060];
    v10 = *(MEMORY[0x1E695F060] + 8);
    goto LABEL_7;
  }

  if ((buttonVisualProviderFlags & 0x20) == 0)
  {
    goto LABEL_6;
  }

LABEL_4:
  v6 = [(UIButton *)self _visualProvider];
  [v6 titleShadowOffset];
  v8 = v7;
  v10 = v9;

LABEL_7:
  v11 = v8;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (void)_setTitleShadowOffset:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  buttonVisualProviderFlags = self->_buttonVisualProviderFlags;
  if (buttonVisualProviderFlags)
  {
    if ((buttonVisualProviderFlags & 0x20) == 0)
    {
      return;
    }
  }

  else
  {
    v7 = [(UIButton *)self _visualProvider];
    if (!v7)
    {
      return;
    }

    v8 = self->_buttonVisualProviderFlags;

    if ((v8 & 0x20) == 0)
    {
      return;
    }
  }

  v9 = [(UIButton *)self _visualProvider];
  [v9 setTitleShadowOffset:{width, height}];
}

- (double)_drawingStrokeForStyle:(int64_t)a3
{
  result = 0.0;
  if (a3 == 1)
  {
    result = 1.0;
  }

  if (a3 == 2)
  {
    return -1.0;
  }

  return result;
}

- (int64_t)_drawingStyleForStroke:(double)a3
{
  v3 = fabs(a3);
  v4 = 2;
  if (a3 >= 0.0)
  {
    v4 = 1;
  }

  if (v3 >= 2.22044605e-16)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

- (void)_setDrawingStyle:(int64_t)a3 forState:(unint64_t)a4
{
  [(UIButton *)self _drawingStrokeForStyle:a3];

  [(UIButton *)self _setDrawingStroke:a4 forState:?];
}

- (int64_t)_drawingStyleForState:(unint64_t)a3
{
  [(UIButton *)self _drawingStrokeForState:a3];

  return [(UIButton *)self _drawingStyleForStroke:?];
}

- (void)_setDrawingStroke:(double)a3 forState:(unint64_t)a4
{
  if (fabs(a3) < 2.22044605e-16)
  {
    v7 = 0;
  }

  else
  {
    v7 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  }

  v13 = v7;
  [(UIButton *)self _setContentValue:v7 forField:@"drawingStroke" state:a4];
  buttonVisualProviderFlags = self->_buttonVisualProviderFlags;
  if (buttonVisualProviderFlags)
  {
    if ((buttonVisualProviderFlags & 0x40) == 0)
    {
      goto LABEL_10;
    }

LABEL_9:
    v11 = [(UIButton *)self _visualProvider];
    [v11 setDrawingStroke:a4 forState:a3];

    goto LABEL_10;
  }

  v9 = [(UIButton *)self _visualProvider];
  if (v9)
  {
    v10 = self->_buttonVisualProviderFlags;

    if ((v10 & 0x40) != 0)
    {
      goto LABEL_9;
    }
  }

LABEL_10:
  [(UIButton *)self setNeedsLayout];
  if ([(UIControl *)self state]== a4)
  {
    v12 = [(UIView *)self window];

    if (v12)
    {
      [(UIView *)self layoutBelowIfNeeded];
    }
  }
}

- (double)_drawingStrokeForState:(unint64_t)a3
{
  v5 = [(UIButton *)self _contentForState:?];
  v6 = [v5 drawingStroke];

  if (!v6)
  {
    if ([(UIButton *)self _isCarPlaySystemTypeButton]&& [(UIButton *)self _externalDrawingStyleForState:a3])
    {
      v7 = MEMORY[0x1E696AD98];
      [(UIButton *)self _drawingStrokeForStyle:[(UIButton *)self _externalDrawingStyleForState:a3]];
      v6 = [v7 numberWithDouble:?];
    }

    else
    {
      v8 = [(UIButton *)self _contentForState:0];
      v6 = [v8 drawingStroke];
    }
  }

  [v6 doubleValue];
  v10 = v9;

  return v10;
}

- (void)_setContentBackgroundHidden:(BOOL)a3
{
  v3 = a3;
  v5 = +[UIColor clearColor];
  [(UIButton *)self _setVisualEffectViewEnabled:!v3 backgroundColor:v5];

  [(UIButton *)self setNeedsLayout];
}

- (BOOL)_isOn
{
  v2 = [(UIButton *)self _visualProvider];
  v3 = [v2 isOn];

  return v3;
}

- (void)_setOn:(BOOL)a3
{
  v3 = a3;
  v4 = [(UIButton *)self _visualProvider];
  [v4 setOn:v3];
}

- (void)_setContent:(id)a3 forState:(unint64_t)a4
{
  v10 = a3;
  contentLookup = self->_contentLookup;
  if (!contentLookup)
  {
    v7 = [MEMORY[0x1E695DF90] dictionary];
    v8 = self->_contentLookup;
    self->_contentLookup = v7;

    contentLookup = self->_contentLookup;
  }

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
  [(NSMutableDictionary *)contentLookup setObject:v10 forKeyedSubscript:v9];
}

- (void)_setImage:(id)a3 forStates:(unint64_t)a4
{
  if (self)
  {
    do
    {
      [(UIButton *)self _setContentValue:a3 forField:@"image" state:a4 & -a4];
      a4 &= a4 - 1;
    }

    while (a4);
  }
}

- (void)_setBackground:(id)a3 forStates:(unint64_t)a4
{
  if (self)
  {
    do
    {
      [(UIButton *)self _setContentValue:a3 forField:@"background" state:a4 & -a4];
      a4 &= a4 - 1;
    }

    while (a4);
  }
}

- (void)_setTitle:(id)a3 forStates:(unint64_t)a4
{
  if (self)
  {
    do
    {
      [(UIButton *)self _setContentValue:a3 forField:@"title" state:a4 & -a4];
      a4 &= a4 - 1;
    }

    while (a4);
  }
}

- (void)_setTitleColor:(id)a3 forStates:(unint64_t)a4
{
  if (self)
  {
    do
    {
      [(UIButton *)self _setContentValue:a3 forField:@"titleColor" state:a4 & -a4];
      a4 &= a4 - 1;
    }

    while (a4);
  }
}

- (void)_setImageColor:(id)a3 forStates:(unint64_t)a4
{
  if (self)
  {
    do
    {
      [(UIButton *)self _setContentValue:a3 forField:@"imageColor" state:a4 & -a4];
      a4 &= a4 - 1;
    }

    while (a4);
  }
}

- (void)_setShadowColor:(id)a3 forStates:(unint64_t)a4
{
  if (self)
  {
    do
    {
      [(UIButton *)self _setContentValue:a3 forField:@"shadowColor" state:a4 & -a4];
      a4 &= a4 - 1;
    }

    while (a4);
  }
}

- (void)_setAttributedTitle:(id)a3 forStates:(unint64_t)a4
{
  if (self)
  {
    do
    {
      [(UIButton *)self _setContentValue:a3 forField:@"attributedTitle" state:a4 & -a4];
      a4 &= a4 - 1;
    }

    while (a4);
  }
}

- (id)_contentForState:(unint64_t)a3
{
  contentLookup = self->_contentLookup;
  if (contentLookup)
  {
    if ((~a3 & 3) == 0)
    {
      a3 &= ~2uLL;
    }

    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
    contentLookup = [contentLookup objectForKeyedSubscript:v4];
  }

  return contentLookup;
}

- (id)_allButtonContent
{
  v2 = [(NSMutableDictionary *)self->_contentLookup copy];

  return v2;
}

- (id)_archivableContent:(id *)a3
{
  v48[1] = *MEMORY[0x1E69E9840];
  v3 = [(UIView *)self traitCollection];
  v4 = [v3 userInterfaceIdiom];

  v5 = objc_opt_class();
  buttonFlags = self->_buttonFlags;
  v7 = [objc_opt_class() _defaultSymbolConfigurationForType:(*&buttonFlags >> 6) andState:0 compact:0 idiom:v4];
  v47 = [v5 _defaultImageForType:(*&buttonFlags >> 6) andState:0 withConfiguration:v7];
  v8 = objc_opt_class();
  v9 = self->_buttonFlags;
  v10 = [objc_opt_class() _defaultSymbolConfigurationForType:(*&v9 >> 6) andState:1 compact:0 idiom:v4];
  v48[0] = [v8 _defaultImageForType:(*&v9 >> 6) andState:1 withConfiguration:v10];

  v36 = [MEMORY[0x1E695DF90] dictionary];
  v11 = [MEMORY[0x1E695DF90] dictionary];
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = self->_contentLookup;
  v38 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v42 objects:v46 count:16];
  if (v38)
  {
    v35 = *v43;
    do
    {
      v12 = 0;
      do
      {
        if (*v43 != v35)
        {
          v13 = v12;
          objc_enumerationMutation(obj);
          v12 = v13;
        }

        v39 = v12;
        v40 = *(*(&v42 + 1) + 8 * v12);
        v14 = [v40 unsignedIntegerValue];
        v41 = [(NSMutableDictionary *)self->_contentLookup objectForKeyedSubscript:v40];
        v15 = [v41 image];
        v16 = 0;
        v17 = &v47;
        v18 = 1;
        do
        {
          v19 = v18;
          v20 = *(&xmmword_18A64C520 + v16);
          v21 = *v17;
          if (*v17)
          {
            v22 = v14 == v20;
          }

          else
          {
            v22 = 0;
          }

          if (v22)
          {
            v23 = v11;
            v24 = v23;
            if (v15 && v21 != v15)
            {
              v25 = [v23 objectForKey:@"image"];
              v26 = [v24 objectForKey:@"image"];
              v27 = v26 == 0;

              if (v27)
              {
                v28 = [MEMORY[0x1E695DFA8] set];

                [v24 setObject:v28 forKey:@"image"];
              }

              else
              {
                v28 = v25;
              }

              v29 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v14];
              [v28 addObject:v29];
            }
          }

          v18 = 0;
          v17 = v48;
          v16 = 1;
        }

        while ((v19 & 1) != 0);
        [v36 setObject:v41 forKey:v40];

        v12 = v39 + 1;
      }

      while (v39 + 1 != v38);
      v38 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v42 objects:v46 count:16];
    }

    while (v38);
  }

  if (a3)
  {
    v30 = v11;
    *a3 = v11;
  }

  for (i = 1; i != -1; --i)
  {
  }

  return v36;
}

- (void)_takeContentFromArchivableContent:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        v10 = [v4 objectForKey:v9];
        -[UIButton _setContent:forState:](self, "_setContent:forState:", v10, [v9 integerValue]);
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

+ (id)_defaultImageNameForType:(int64_t)a3 andState:(unint64_t)a4
{
  if (a3 == 7)
  {
    return @"xmark";
  }

  else
  {
    return 0;
  }
}

+ (id)_defaultImageForType:(int64_t)a3 andState:(unint64_t)a4 withConfiguration:(id)a5
{
  v8 = a5;
  v9 = [a1 _defaultImageNameForType:a3 andState:a4];
  v10 = v9;
  if (a3 <= 118)
  {
    if (a3 <= 3)
    {
      if (a3 == 2)
      {
        goto LABEL_19;
      }

      if (a3 != 3)
      {
        goto LABEL_15;
      }
    }

    else if (a3 != 4)
    {
      if (a3 == 5)
      {
        v11 = @"plus.circle";
        v12 = @"UIAccessoryButtonPlus";
        goto LABEL_24;
      }

      if (a3 == 118)
      {
        v11 = @"exclamationmark.circle";
        v12 = @"UIAccessoryButtonExclamationMark";
LABEL_24:

        v10 = v11;
        goto LABEL_25;
      }

      goto LABEL_15;
    }

    if (a4)
    {
      goto LABEL_15;
    }

LABEL_19:
    v11 = @"info.circle";
    v12 = @"UIAccessoryButtonInfo";
    goto LABEL_24;
  }

  if (a3 <= 120)
  {
    if (a3 == 119)
    {
      v11 = @"questionmark.circle";
      v12 = @"UIAccessoryButtonQuestionMark";
    }

    else
    {
      v11 = @"checkmark.circle";
      v12 = @"UIAccessoryButtonCheckmark";
    }

    goto LABEL_24;
  }

  switch(a3)
  {
    case 'y':
      v11 = @"minus.circle";
      v12 = @"UIAccessoryButtonMinus";
      goto LABEL_24;
    case 'z':
      v11 = @"xmark.circle";
      v12 = @"UIAccessoryButtonX";
      goto LABEL_24;
    case '{':
      v12 = 0;
      v11 = @"chevron.forward.circle";
      goto LABEL_24;
  }

LABEL_15:
  v12 = 0;
  v13 = 0;
  v14 = 0;
  if (v9)
  {
LABEL_25:
    v14 = [UIImage _systemImageNamed:v10 fallback:v12 withConfiguration:v8];
    v13 = v10;
  }

  return v14;
}

- (id)_imageForState:(unint64_t)a3 applyingConfiguration:(BOOL)a4 usesImageForNormalState:(BOOL *)a5
{
  v6 = a4;
  v9 = [(UIButton *)self _contentForState:?];
  v10 = [v9 image];

  if (v10)
  {
LABEL_2:
    v11 = 0;
    if (!v6)
    {
      goto LABEL_9;
    }

    goto LABEL_6;
  }

  v12 = [(UIButton *)self _contentForState:0];
  v10 = [v12 image];

  if (!v10)
  {
    v19 = [(UIButton *)self _preferredConfigurationForState:a3];
    v10 = [(UIButton *)self _defaultImageForState:a3 withConfiguration:v19];

    if (v10)
    {
      goto LABEL_2;
    }

    v20 = [(UIButton *)self _preferredConfigurationForState:a3];
    v10 = [(UIButton *)self _defaultImageForState:0 withConfiguration:v20];
  }

  v11 = 1;
  if (!v6)
  {
    goto LABEL_9;
  }

LABEL_6:
  if ([v10 _isSymbolImage])
  {
    v13 = [(UIButton *)self _preferredConfigurationForState:a3];
    if (v13)
    {
      v14 = v13;
      v15 = [v10 symbolConfiguration];
      v16 = [v14 configurationByApplyingConfiguration:v15];

      v17 = [v10 imageWithConfiguration:v16];

      v10 = v17;
    }
  }

LABEL_9:
  if (a5)
  {
    *a5 = v11;
  }

  return v10;
}

+ (id)_defaultSymbolConfigurationForType:(int64_t)a3 andState:(unint64_t)a4 compact:(BOOL)a5 idiom:(int64_t)a6
{
  if (a3 != 7)
  {
    if (!a3)
    {
      v6 = [UIImageSymbolConfiguration configurationWithScale:2, a4, a5, a6];
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (a6 == 6)
  {
    v8 = @"UICTFontTextStyleTitle3";
    v9 = 2;
LABEL_9:
    v6 = [UIImageSymbolConfiguration configurationWithTextStyle:v8 scale:v9, a5];
    goto LABEL_10;
  }

  v10 = a5;
  if (_UISolariumEnabled())
  {
LABEL_8:
    v8 = @"UICTFontTextStyleBody";
    v9 = 3;
    goto LABEL_9;
  }

  v12 = 15.0;
  if (a6 == 5)
  {
    v12 = 12.0;
  }

  if (v10)
  {
    v13 = 1;
  }

  else
  {
    v13 = 2;
  }

  v6 = [UIImageSymbolConfiguration configurationWithPointSize:7 weight:v13 scale:v12];
LABEL_10:

  return v6;
}

- (id)_preferredConfigurationForState:(unint64_t)a3 includeDefault:(BOOL)a4
{
  v4 = a4;
  v7 = [(UIButton *)self _contentForState:?];
  v8 = [v7 preferredSymbolConfiguration];

  if (!v8)
  {
    v11 = [(UIButton *)self _contentForState:0];
    v8 = [v11 preferredSymbolConfiguration];

    if (v4 && !v8)
    {
      v12 = (*&self->_buttonFlags >> 6);
      v13 = [(UIView *)self traitCollection];
      v8 = +[UIButton _defaultSymbolConfigurationForType:andState:compact:idiom:](UIButton, "_defaultSymbolConfigurationForType:andState:compact:idiom:", v12, a3, 0, [v13 userInterfaceIdiom]);

      if (!v8)
      {
        v14 = (*&self->_buttonFlags >> 6);
        v15 = [(UIView *)self traitCollection];
        v8 = +[UIButton _defaultSymbolConfigurationForType:andState:compact:idiom:](UIButton, "_defaultSymbolConfigurationForType:andState:compact:idiom:", v14, 0, 0, [v15 userInterfaceIdiom]);
      }
    }
  }

  v9 = v8;

  return v8;
}

+ (id)_defaultBackgroundImageNameForType:(int64_t)a3 andState:(unint64_t)a4 compact:(BOOL)a5
{
  if (a3 == 7)
  {
    v6 = a5;
    if (_UISolariumEnabled())
    {
      v7 = 0;
    }

    else
    {
      v9 = @"UICloseButtonBackground";
      if (v6)
      {
        v9 = @"UICloseButtonBackgroundCompact";
      }

      v7 = v9;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)_defaultBackgroundImageColorForType:(int64_t)a3 andState:(unint64_t)a4
{
  if (a3 == 7)
  {
    if (_UISolariumEnabled())
    {
      v6 = 0;
    }

    else
    {
      v6 = +[UIColor tertiarySystemFillColor];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)_defaultBackgroundImageForType:(int64_t)a3 andState:(unint64_t)a4
{
  v7 = [a1 _defaultBackgroundImageNameForType:a3 andState:a4 compact:0];
  if (v7)
  {
    v8 = [UIImage kitImageNamed:v7];
    v9 = [a1 _defaultBackgroundImageColorForType:a3 andState:a4];
    if (v9)
    {
      v10 = [v8 imageWithTintColor:v9];

      v8 = v10;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_backgroundForState:(unint64_t)a3 usesBackgroundForNormalState:(BOOL *)a4
{
  v7 = [(UIButton *)self _contentForState:?];
  v8 = [v7 background];

  if (v8)
  {
LABEL_2:
    v9 = 0;
    if (!a4)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v11 = [(UIButton *)self _contentForState:0];
  v8 = [v11 background];

  if (!v8)
  {
    v12 = [UIButton _defaultBackgroundImageForType:(*&self->_buttonFlags >> 6) andState:a3];
    if (v12)
    {
      v8 = v12;
      goto LABEL_2;
    }

    v8 = [UIButton _defaultBackgroundImageForType:(*&self->_buttonFlags >> 6) andState:0];
  }

  v9 = 1;
  if (a4)
  {
LABEL_3:
    *a4 = v9;
  }

LABEL_4:

  return v8;
}

- (id)_titleForState:(unint64_t)a3
{
  v4 = [(UIButton *)self _contentForState:a3];
  v5 = [v4 title];

  if (!v5)
  {
    v6 = [(UIButton *)self _contentForState:0];
    v5 = [v6 title];
  }

  return v5;
}

+ (id)_defaultTitleColorForState:(unint64_t)a3 button:(id)a4 isTintColor:(BOOL *)a5
{
  v7 = a4;
  v13 = 0;
  if ([v7 _isInCarPlay])
  {
    v8 = [v7 _externalTitleColorForState:a3 isTintColor:&v13];
    if (!v8)
    {
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  if ([v7 _isModernButton])
  {
    v8 = [v7 tintColor];
    v13 = 1;
    if (!v8)
    {
      goto LABEL_8;
    }

LABEL_6:
    if ((a3 & 2) != 0)
    {
      v9 = [UIColor _disabledColorForColor:v8];

      v13 = 0;
      v8 = v9;
    }

LABEL_8:
    if (!a5)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  if ([v7 _isModernButton])
  {
    v8 = 0;
    if (a5)
    {
LABEL_9:
      v10 = v13;
LABEL_10:
      *a5 = v10;
    }
  }

  else
  {
    v8 = +[UIColor whiteColor];
    if (a5)
    {
      v10 = 0;
      goto LABEL_10;
    }
  }

LABEL_11:
  v11 = v8;

  return v11;
}

- (id)_titleColorForState:(unint64_t)a3
{
  v4 = [(UIButton *)self _contentForState:a3];
  v5 = [v4 titleColor];

  if (!v5)
  {
    v6 = [(UIView *)self traitCollection];
    v7 = [v6 userInterfaceIdiom];

    if (v7 == 6)
    {
      v8 = [(UIButton *)self _contentForState:0];
      v5 = [v8 titleColor];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (id)_titleColorForState:(unint64_t)a3 suppressTintColorFollowing:(BOOL *)a4
{
  v7 = [(UIButton *)self _contentForState:?];
  v8 = [v7 titleColor];

  if (v8 || (-[UIButton _contentForState:](self, "_contentForState:", 0), v9 = objc_claimAutoreleasedReturnValue(), [v9 titleColor], v8 = objc_claimAutoreleasedReturnValue(), v9, v8))
  {
    v10 = 1;
    if (!a4)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v12 = 0;
  v8 = [UIButton _defaultTitleColorForState:a3 button:self isTintColor:&v12];
  if (!v8)
  {
    v8 = [UIButton _defaultTitleColorForState:0 button:self isTintColor:&v12];
  }

  v10 = v12 ^ 1;
  if (a4)
  {
LABEL_4:
    *a4 = v10 & 1;
  }

LABEL_5:

  return v8;
}

+ (id)_defaultImageColorForType:(int64_t)a3 andState:(unint64_t)a4 idiom:(int64_t)a5
{
  if (a3 == 7)
  {
    if (_UISolariumEnabled())
    {
      +[UIColor labelColor];
    }

    else
    {
      +[UIColor secondaryLabelColor];
    }
    v7 = ;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)_defaultImageColorForState:(unint64_t)a3 button:(id)a4
{
  v6 = a4;
  if ([v6 _isInCarPlay])
  {
    v7 = [v6 _externalImageColorForState:a3];
  }

  else
  {
    v7 = 0;
  }

  if ([v6 _isModernButton] && (objc_msgSend(v6, "isEnabled") & 1) == 0)
  {
    v8 = [v6 _disabledColor];

    v7 = v8;
  }

  if (!v7)
  {
    v9 = [v6 buttonType];
    v10 = [v6 traitCollection];
    v7 = [a1 _defaultImageColorForType:v9 andState:a3 idiom:{objc_msgSend(v10, "userInterfaceIdiom")}];
  }

  return v7;
}

- (id)_imageColorForState:(unint64_t)a3
{
  v5 = [(UIButton *)self _contentForState:?];
  v6 = [v5 imageColor];

  if (!v6)
  {
    v7 = [(UIButton *)self _contentForState:0];
    v6 = [v7 imageColor];

    if (!v6)
    {
      v8 = [UIButton _defaultImageColorForState:a3 button:self];
      if (!v8)
      {
        v8 = [UIButton _defaultImageColorForState:0 button:self];
      }

      v6 = v8;
    }
  }

  return v6;
}

- (id)_shadowColorForState:(unint64_t)a3
{
  v4 = [(UIButton *)self _contentForState:a3];
  v5 = [v4 shadowColor];

  if (!v5)
  {
    v6 = [(UIButton *)self _contentForState:0];
    v5 = [v6 shadowColor];
  }

  return v5;
}

- (id)_attributedTitleForState:(unint64_t)a3
{
  v5 = [(UIView *)self traitCollection];
  v6 = [(UIButton *)self _attributedTitleForState:a3 adjustedToTraitCollection:v5];

  return v6;
}

- (id)_attributedTitleForState:(unint64_t)a3 adjustedToTraitCollection:(id)a4
{
  v6 = a4;
  v7 = [(UIButton *)self _contentForState:a3];
  v8 = [v7 attributedTitle];
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v10 = [(UIButton *)self _contentForState:0];
    v9 = [v10 attributedTitle];

    if (!v9)
    {
      goto LABEL_11;
    }
  }

  v11 = [(UIButton *)self _visualProvider];
  if ([v11 adjustsFontForContentSizeCategory])
  {
    v12 = [(UIButton *)self _shouldAdjustToTraitCollection];

    if (!v12)
    {
      goto LABEL_11;
    }

    v13 = [v9 _ui_attributedStringAdjustedToTraitCollection:v6];
    v11 = v13;
    if (v13)
    {
      v14 = v13;
    }

    else
    {
      v14 = v9;
    }

    v15 = v14;

    v9 = v15;
  }

LABEL_11:

  return v9;
}

- (void)_intrinsicContentSizeInvalidatedForChildView:(id)a3
{
  v4 = a3;
  v5 = [(UIButton *)self _visualProvider];
  [v5 intrinsicContentSizeInvalidatedForChildView:v4];
}

- (void)_alignmentRectInsetsHaveChangedForChildImageView:(id)a3
{
  v8 = a3;
  buttonVisualProviderFlags = self->_buttonVisualProviderFlags;
  if (buttonVisualProviderFlags)
  {
    if ((buttonVisualProviderFlags & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v5 = [(UIButton *)self _visualProvider];
  if (v5)
  {
    v6 = self->_buttonVisualProviderFlags;

    if ((v6 & 4) != 0)
    {
LABEL_6:
      v7 = [(UIButton *)self _visualProvider];
      [v7 alignmentRectInsetsHaveChangedForChildImageView:v8];
    }
  }

LABEL_7:
}

- (BOOL)_hasImageForProperty:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  contentLookup = self->_contentLookup;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __33__UIButton__hasImageForProperty___block_invoke;
  v8[3] = &unk_1E7104D70;
  v6 = v4;
  v9 = v6;
  v10 = &v11;
  [(NSMutableDictionary *)contentLookup enumerateKeysAndObjectsUsingBlock:v8];
  LOBYTE(contentLookup) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return contentLookup;
}

void __33__UIButton__hasImageForProperty___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = [a3 valueForKey:*(a1 + 32)];

  if (v6)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = [(UIButton *)self _visualProvider];
  [v6 traitCollectionDidChange:v5];

  buttonVisualProviderFlags = self->_buttonVisualProviderFlags;
  if (buttonVisualProviderFlags)
  {
    if ((buttonVisualProviderFlags & 0x20) == 0)
    {
LABEL_12:
      v8 = 0;
      goto LABEL_18;
    }

LABEL_6:
    v9 = [(UIButton *)self _visualProvider];
    if (![v9 adjustsFontForContentSizeCategory] || (-[UIView traitCollection](self, "traitCollection"), (v10 = objc_claimAutoreleasedReturnValue()) == 0))
    {

      v8 = 0;
      if (buttonVisualProviderFlags)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }

    if (v5)
    {
      v11 = v10[13];
      v12 = v5[13];

      if ((buttonVisualProviderFlags & 1) == 0)
      {
      }

      if (v11 == v12)
      {
        goto LABEL_12;
      }
    }

    else
    {

      if ((buttonVisualProviderFlags & 1) == 0)
      {
      }
    }

    v3 = [(UIButton *)self _visualProvider];
    v8 = [v3 font];
    goto LABEL_17;
  }

  v3 = [(UIButton *)self _visualProvider];
  if (v3 && (*&self->_buttonVisualProviderFlags & 0x20) != 0)
  {
    goto LABEL_6;
  }

  v8 = 0;
LABEL_17:

LABEL_18:
  v13 = self->_buttonVisualProviderFlags;
  LOBYTE(v14) = v13;
  if ((v13 & 1) == 0)
  {
    v3 = [(UIButton *)self _visualProvider];
    if (!v3)
    {
LABEL_28:

      goto LABEL_29;
    }

    v14 = self->_buttonVisualProviderFlags;
  }

  if ((v14 & 0x20) == 0 || ![(UIButton *)self _fontIsDefaultForIdiom])
  {
    if (v13)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v15 = [(UIView *)self traitCollection];
  v16 = [v15 userInterfaceIdiom];
  v17 = [v5 userInterfaceIdiom];

  if ((v13 & 1) == 0)
  {
  }

  if (v16 != v17)
  {
    v3 = [(UIButton *)self _visualProvider];
    v18 = [v3 font];

    [(UIButton *)self _setDefaultFontForIdiom];
    v8 = v18;
  }

LABEL_29:
  if ([(UIButton *)self _isCarPlaySystemTypeButton])
  {
    [(UIButton *)self _applyCarPlaySystemButtonCustomizations];
  }

  v27.receiver = self;
  v27.super_class = UIButton;
  [(UIView *)&v27 traitCollectionDidChange:v5];
  if (v8)
  {
    v19 = self->_buttonVisualProviderFlags;
    if (v19)
    {
      if ((v19 & 0x20) == 0)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v20 = [(UIButton *)self _visualProvider];
      v3 = v20;
      if (!v20 || (*&self->_buttonVisualProviderFlags & 0x20) == 0)
      {

        goto LABEL_41;
      }
    }

    v21 = [(UIButton *)self _visualProvider];
    v22 = [v21 font];
    v23 = [v8 isEqual:v22];

    if (v19)
    {
      if (v23)
      {
        goto LABEL_41;
      }
    }

    else
    {

      if (v23)
      {
        goto LABEL_41;
      }
    }

LABEL_47:
    [(UIView *)self _invalidateIntrinsicContentSizeNeedingLayout:1];
    goto LABEL_48;
  }

LABEL_41:
  if ([(UIButton *)self adjustsImageSizeForAccessibilityContentSizeCategory])
  {
    v24 = [(UIView *)self traitCollection];
    if (v24)
    {
      if (v5)
      {
        v25 = v24[13];
        v26 = v5[13];

        if (v25 == v26)
        {
          goto LABEL_48;
        }
      }

      else
      {
      }

      goto LABEL_47;
    }
  }

LABEL_48:
}

- (CGRect)_visualBounds
{
  v2 = [(UIButton *)self _visualProvider];
  [v2 visualBoundsWithCornerRadius:0];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (void)setPointerStyleProvider:(UIButtonPointerStyleProvider)pointerStyleProvider
{
  if (self->_pointerStyleProvider != pointerStyleProvider)
  {
    v4 = [pointerStyleProvider copy];
    v5 = self->_pointerStyleProvider;
    self->_pointerStyleProvider = v4;

    if (self->_pointerStyleProvider)
    {
      [(UIControl *)self setPointerInteractionEnabled:1];
    }

    [(UIControl *)self _invalidatePointerInteraction];
  }
}

- (id)_pointerEffectPreviewParameters
{
  v2 = [(UIButton *)self _visualProvider];
  v3 = [v2 pointerEffectPreviewParameters];

  return v3;
}

- (id)_pointerEffectWithPreview:(id)a3
{
  v4 = a3;
  v5 = [(UIButton *)self _visualProvider];
  v6 = [v5 pointerEffectWithPreview:v4];

  return v6;
}

- (id)_pointerEffect
{
  v3 = [(UIButton *)self _pointerEffectPreviewParameters];
  v4 = [[UITargetedPreview alloc] initWithView:self parameters:v3];
  v5 = [(UIButton *)self _pointerEffectWithPreview:v4];

  return v5;
}

- (id)_shapeInContainer:(id)a3 proposal:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(UIButton *)self _visualProvider];
  v9 = [v8 pointerShapeInContainer:v7 proposal:v6];

  return v9;
}

- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5
{
  v7 = a5;
  v8 = a3;
  v9 = [(UIControl *)self _pointerInteraction];

  if (v9 == v8)
  {
    if ([(UIControl *)self isSelected])
    {
      v11 = v7;
    }

    else
    {
      [v7 rect];
      v11 = [UIPointerRegion regionWithRect:@"com.apple.UIKit.UIButton.selectedRegion" identifier:?];
    }

    v10 = v11;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(UIControl *)self _pointerInteraction];

  if (v8 == v6)
  {
    v10 = [(UIControl *)self _safeHoverStyle];
    v25.receiver = self;
    v25.super_class = UIButton;
    v11 = [(UIControl *)&v25 pointerInteraction:v6 styleForRegion:v7];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 || ([v11 pointerEffect], (v12 = objc_claimAutoreleasedReturnValue()) != 0) && (v13 = v12, objc_msgSend(v10, "shape"), v14 = objc_claimAutoreleasedReturnValue(), v14, v13, v14))
    {
      v9 = v11;
    }

    else
    {
      v15 = [v11 pointerEffect];
      v16 = [v10 shape];
      if (v16)
      {
        v17 = [v11 pointerShape];
      }

      else
      {
        v17 = 0;
      }

      if (v15)
      {
        v18 = v15;
      }

      else
      {
        v18 = [(UIButton *)self _pointerEffect];
      }

      v19 = v18;
      if (v17)
      {
        v20 = v17;
      }

      else
      {
        v21 = [(UIView *)self superview];
        v20 = [(UIButton *)self _shapeInContainer:v21];
      }

      pointerStyleProvider = self->_pointerStyleProvider;
      if (pointerStyleProvider)
      {
        pointerStyleProvider[2](pointerStyleProvider, self, v19, v20);
      }

      else
      {
        [UIPointerStyle styleWithEffect:v19 shape:v20];
      }
      v23 = ;

      v9 = v23;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)pointerInteraction:(id)a3 willEnterRegion:(id)a4 animator:(id)a5
{
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __56__UIButton_pointerInteraction_willEnterRegion_animator___block_invoke;
  v8[3] = &unk_1E70F3590;
  v8[4] = self;
  v6 = a5;
  [v6 addAnimations:v8];
  v7 = [(UIButton *)self _visualProvider];
  [v7 pointerWillEnter:v6];
}

- (void)pointerInteraction:(id)a3 willExitRegion:(id)a4 animator:(id)a5
{
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __55__UIButton_pointerInteraction_willExitRegion_animator___block_invoke;
  v8[3] = &unk_1E70F3590;
  v8[4] = self;
  v6 = a5;
  [v6 addAnimations:v8];
  v7 = [(UIButton *)self _visualProvider];
  [v7 pointerWillExit:v6];
}

- (id)_preferredHoverEffect
{
  v2 = [(UIButton *)self _visualProvider];
  v3 = [v2 preferredHoverEffect];

  return v3;
}

- (id)_preferredHoverShape
{
  v2 = [(UIButton *)self _visualProvider];
  v3 = [v2 preferredHoverShape];

  return v3;
}

- (void)setMenu:(UIMenu *)menu
{
  if (self->_menu != menu)
  {
    v4 = menu;
    v5 = [(UIControl *)self contextMenuInteraction];
    _UIControlMenuUpdateVisibleMenu(v5, self->_menu, v4);

    v6 = [(UIMenu *)v4 copy];
    v7 = self->_menu;
    self->_menu = v6;

    [(UIButton *)self _updateForAutomaticSelection];
    v8 = [(UIButton *)self _visualProvider];
    [v8 setMenu:self->_menu];

    [(UIButton *)self _refreshVisualProvider];

    [(UIButton *)self _updateContextMenuEnabled];
  }
}

- (void)_setMenuProvider:(id)a3
{
  if (self->_menuProvider != a3)
  {
    v4 = a3;
    v5 = [v4 copy];
    menuProvider = self->_menuProvider;
    self->_menuProvider = v5;

    v7 = [(UIButton *)self _visualProvider];
    [v7 setMenuProvider:v4];

    [(UIButton *)self _updateContextMenuEnabled];
  }
}

- (void)forcedSelectionOfMenu:(id)a3 willChangeTo:(id)a4
{
  v6 = a3;
  v7 = [a4 title];
  [(UIButton *)self setTitle:v7 forState:0];

  v8 = [(UIButton *)self _visualProvider];
  [v8 setMenu:v6];
}

- (void)setShowsMenuAsPrimaryAction:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = UIButton;
  [(UIControl *)&v6 setShowsMenuAsPrimaryAction:?];
  v5 = [(UIButton *)self _visualProvider];
  [v5 setContextMenuIsPrimary:v3];

  [(UIButton *)self _refreshVisualProvider];
  [(UIButton *)self _updateForAutomaticSelection];
}

- (void)setChangesSelectionAsPrimaryAction:(BOOL)changesSelectionAsPrimaryAction
{
  v3 = 0x2000000000;
  if (!changesSelectionAsPrimaryAction)
  {
    v3 = 0;
  }

  self->_buttonFlags = (*&self->_buttonFlags & 0xFFFFFFDFFFFFFFFFLL | v3);
  [(UIButton *)self _updateForAutomaticSelection];
}

- (void)_sendActionsForEvents:(unint64_t)a3 withEvent:(id)a4
{
  v6 = a4;
  if ([(UIButton *)self _isToggleButton]&& ([(UIButton *)self _controlEventsForActionTriggered]& a3) != 0)
  {
    [(UIButton *)self setSelected:[(UIControl *)self isSelected]^ 1];
  }

  if (*&self->_buttonVisualProviderFlags)
  {
    if ((*&self->_buttonVisualProviderFlags & 0x800) == 0)
    {
      goto LABEL_10;
    }

LABEL_9:
    v9 = [(UIButton *)self _visualProvider];
    [v9 setControlEvent:a3];

    goto LABEL_10;
  }

  v7 = [(UIButton *)self _visualProvider];
  if (v7)
  {
    buttonVisualProviderFlags = self->_buttonVisualProviderFlags;

    if ((buttonVisualProviderFlags & 0x800) != 0)
    {
      goto LABEL_9;
    }
  }

LABEL_10:
  v10.receiver = self;
  v10.super_class = UIButton;
  [(UIControl *)&v10 _sendActionsForEvents:a3 withEvent:v6];
}

- (CGPoint)menuAttachmentPointForConfiguration:(id)a3
{
  v4 = a3;
  v5 = [(UIButton *)self _visualProvider];
  [v5 menuAttachmentPointForConfiguration:v4];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.y = v11;
  result.x = v10;
  return result;
}

- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = a3;
  v8 = [(UIButton *)self _visualProvider];
  v9 = [v8 contextMenuInteraction:v7 configurationForMenuAtLocation:{x, y}];

  [v9 setPreferredMenuElementOrder:{-[UIButton preferredMenuElementOrder](self, "preferredMenuElementOrder")}];
  [v9 setPrefersHorizontalAttachment:{-[UIButton prefersHorizontalMenuAttachment](self, "prefersHorizontalMenuAttachment")}];

  return v9;
}

- (id)_contextMenuInteraction:(id)a3 styleForMenuWithConfiguration:(id)a4
{
  v11.receiver = self;
  v11.super_class = UIButton;
  v6 = a4;
  v7 = a3;
  v8 = [(UIControl *)&v11 _contextMenuInteraction:v7 styleForMenuWithConfiguration:v6];
  v9 = [(UIButton *)self _visualProvider:v11.receiver];
  [v9 contextMenuInteraction:v7 updateStyleForMenuWithConfiguration:v6 style:v8];

  return v8;
}

- (id)contextMenuInteraction:(id)a3 previewForHighlightingMenuWithConfiguration:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(UIControl *)self _contextMenuInteraction];

  if (v8 == v6)
  {
    v10 = [(UIButton *)self _visualProvider];
    v9 = [v10 contextMenuInteraction:v6 previewForHighlightingMenuWithConfiguration:v7];
  }

  else
  {
    v12.receiver = self;
    v12.super_class = UIButton;
    v9 = [(UIControl *)&v12 contextMenuInteraction:v6 previewForHighlightingMenuWithConfiguration:v7];
  }

  return v9;
}

- (id)contextMenuInteraction:(id)a3 previewForDismissingMenuWithConfiguration:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(UIControl *)self _contextMenuInteraction];

  if (v8 == v6)
  {
    v10 = [(UIButton *)self _visualProvider];
    v9 = [v10 contextMenuInteraction:v6 previewForDismissingMenuWithConfiguration:v7];
  }

  else
  {
    v12.receiver = self;
    v12.super_class = UIButton;
    v9 = [(UIControl *)&v12 contextMenuInteraction:v6 previewForDismissingMenuWithConfiguration:v7];
  }

  return v9;
}

- (void)setConfigurationUpdateHandler:(UIButtonConfigurationUpdateHandler)configurationUpdateHandler
{
  if (self->_configurationUpdateHandler == configurationUpdateHandler)
  {
    return;
  }

  v4 = [configurationUpdateHandler copy];
  v5 = self->_configurationUpdateHandler;
  self->_configurationUpdateHandler = v4;

  buttonVisualProviderFlags = self->_buttonVisualProviderFlags;
  if (buttonVisualProviderFlags)
  {
    if ((buttonVisualProviderFlags & 4) != 0)
    {
      goto LABEL_9;
    }

LABEL_8:
    [(UIButton *)self _refreshVisualProvider];
    goto LABEL_9;
  }

  v7 = [(UIButton *)self _visualProvider];
  if (v7)
  {
    v8 = self->_buttonVisualProviderFlags;

    if ((v8 & 4) == 0)
    {
      goto LABEL_8;
    }
  }

LABEL_9:

  [(UIButton *)self setNeedsUpdateConfiguration];
}

- (id)_configurationUpdateHandler
{
  if (self->_configurationUpdateHandler)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __39__UIButton__configurationUpdateHandler__block_invoke;
    aBlock[3] = &unk_1E7104DC0;
    aBlock[4] = self;
    v3 = _Block_copy(aBlock);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_setConfigurationUpdateHandler:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __43__UIButton__setConfigurationUpdateHandler___block_invoke;
  v6[3] = &unk_1E7104DE8;
  v7 = v4;
  v5 = v4;
  [(UIButton *)self setConfigurationUpdateHandler:v6];
}

void __43__UIButton__setConfigurationUpdateHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v3 _configurationState];
  (*(v2 + 16))(v2, v3, v4);
}

- (void)setAutomaticallyUpdatesConfiguration:(BOOL)automaticallyUpdatesConfiguration
{
  buttonFlags = self->_buttonFlags;
  if (((((*&buttonFlags & 0x1000000000) == 0) ^ automaticallyUpdatesConfiguration) & 1) == 0)
  {
    v4 = 0x1000000000;
    if (!automaticallyUpdatesConfiguration)
    {
      v4 = 0;
    }

    self->_buttonFlags = (*&buttonFlags & 0xFFFFFFEFFFFFFFFFLL | v4);
    if (automaticallyUpdatesConfiguration)
    {
      [(UIButton *)self setNeedsUpdateConfiguration];
    }
  }
}

- (void)_shim_setConfiguration:(id)a3
{
  v4 = a3;
  v5 = self->_configuration;
  v6 = v4;
  v14 = v6;
  if (v5 == v6)
  {

LABEL_16:
    goto LABEL_17;
  }

  if (v6 && v5)
  {
    v7 = [(_UIButtonConfigurationShim *)v5 isEqual:v6];

    if (v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v8 = self->_configuration != 0;
  v9 = [(_UIButtonConfigurationShim *)v14 copy];
  configuration = self->_configuration;
  self->_configuration = v9;

  if ((((v14 == 0) ^ v8) & 1) == 0)
  {
    [(UIButton *)self _refreshVisualProvider];
  }

  buttonVisualProviderFlags = self->_buttonVisualProviderFlags;
  if (buttonVisualProviderFlags)
  {
    if ((buttonVisualProviderFlags & 4) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  v12 = [(UIButton *)self _visualProvider];
  if (v12)
  {
    v13 = self->_buttonVisualProviderFlags;

    if ((v13 & 4) != 0)
    {
LABEL_15:
      v5 = [(UIButton *)self _visualProvider];
      [(_UIButtonConfigurationShim *)v5 automaticallyUpdateConfigurationIfNecessary:self->_configuration];
      [(_UIButtonConfigurationShim *)v5 applyConfiguration];
      goto LABEL_16;
    }
  }

LABEL_17:
}

- (id)_titleOrImageViewForBaselineLayout
{
  if (os_variant_has_internal_diagnostics())
  {
    v7 = __UIFaultDebugAssertLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_188A29000, v7, OS_LOG_TYPE_FAULT, "Use [UIButton viewForBaselineLayout], [UIButton viewForFirstBaselineLayout], or [UIButton viewForLastBaselineLayout] instead of calling IPI", buf, 2u);
    }
  }

  else
  {
    v3 = *(__UILogGetCategoryCachedImpl("Assert", &_titleOrImageViewForBaselineLayout___s_category) + 8);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_impl(&dword_188A29000, v3, OS_LOG_TYPE_ERROR, "Use [UIButton viewForBaselineLayout], [UIButton viewForFirstBaselineLayout], or [UIButton viewForLastBaselineLayout] instead of calling IPI", v8, 2u);
    }
  }

  v4 = [(UIButton *)self _visualProvider];
  v5 = [v4 viewForFirstBaselineLayout];

  return v5;
}

- (UIEdgeInsets)_internalTitlePaddingInsets
{
  top = self->_internalTitlePaddingInsets.top;
  left = self->_internalTitlePaddingInsets.left;
  bottom = self->_internalTitlePaddingInsets.bottom;
  right = self->_internalTitlePaddingInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (NSISEngine)_activeSizeToFitLayoutEngine
{
  WeakRetained = objc_loadWeakRetained(&self->_activeSizeToFitLayoutEngine);

  return WeakRetained;
}

- (void)setAdjustsImageSizeForAccessibilityContentSizeCategory:(BOOL)a3
{
  v3 = a3;
  if ([(UIButton *)self adjustsImageSizeForAccessibilityContentSizeCategory]!= a3)
  {
    v5 = 0x100000000;
    if (!v3)
    {
      v5 = 0;
    }

    self->_buttonFlags = (*&self->_buttonFlags & 0xFFFFFFFEFFFFFFFFLL | v5);
    [(UIView *)self invalidateIntrinsicContentSize];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __117__UIButton_UIAccessibilityContentSizeCategoryImageAdjusting__setAdjustsImageSizeForAccessibilityContentSizeCategory___block_invoke;
    v6[3] = &unk_1E70F3590;
    v6[4] = self;
    [UIView performWithoutAnimation:v6];
  }
}

- (CGSize)_effectiveSizeForImage:(id)a3
{
  v3 = _UIAccessibilityContentSizeCategorySizeForImage(a3, self);
  result.height = v4;
  result.width = v3;
  return result;
}

- (double)_scaleFactorForImage
{
  v2 = [(UIView *)self traitCollection];
  v3 = _UIAccessibilityContentSizeCategoryImageAdjustingScaleFactorForTraitCollection(v2);

  return v3;
}

- (double)_additionalBaselineSpacingForEdge:(int)a3
{
  result = 0.0;
  if ((*&self->_buttonVisualProviderFlags & 4) != 0)
  {
    if (a3 == 6)
    {
      [(UIButton *)self _baselineOffsetsAtSize:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
      return v4;
    }

    else if (a3 == 5)
    {
      [(UIButton *)self _baselineOffsetsAtSize:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
    }
  }

  return result;
}

- (id)__vis_debugDescription
{
  v2 = [(UIButton *)self configuration];
  if (v2)
  {
    v3 = @"Config";
  }

  else
  {
    v3 = @"Legacy";
  }

  v4 = v3;

  return v3;
}

- (id)_morphView
{
  v3 = [(UIButton *)self _currentConfiguration];
  v4 = [v3 _hasObscuringBackground];

  if (!v4 || ([(UIButton *)self _backgroundView], (v5 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v7.receiver = self;
    v7.super_class = UIButton;
    v5 = [(UIView *)&v7 _morphView];
  }

  return v5;
}

- (void)_uikit_applyValueFromTraitStorage:(id)a3 forKeyPath:(id)a4
{
  v41 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (qword_1ED49EDC0 != -1)
  {
    dispatch_once(&qword_1ED49EDC0, &__block_literal_global_333);
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v8 = &_MergedGlobals_1108;
  v9 = qword_1ED49EDB8;
  v10 = [v9 countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (!v10)
  {

    v33 = 0;
    v29 = 0;
LABEL_18:
    v35.receiver = self;
    v35.super_class = UIButton;
    [&v35 _uikit_applyValueFromTraitStorage:v6 forKeyPath:v7];
    v28 = 0;
    goto LABEL_19;
  }

  v11 = v10;
  v30 = self;
  v31 = v6;
  v32 = 0;
  v33 = 0;
  v12 = 0;
  v13 = *v37;
  do
  {
    v14 = 0;
    v34 = v11;
    do
    {
      if (*v37 != v13)
      {
        objc_enumerationMutation(v9);
      }

      v15 = *(*(&v36 + 1) + 8 * v14);
      v16 = [v8[439] objectForKey:v15];
      if ([v7 hasPrefix:v16])
      {
        v17 = v9;
        v18 = v8;
        v19 = v7;
        v20 = [v7 substringFromIndex:{objc_msgSend(v16, "length")}];
        if ([qword_1ED49EDB0 containsObject:v20])
        {
          v21 = v20;

          v22 = v16;
          v23 = v12;
          v12 = v22;

          v24 = v15;
          v32 = v24;
          v33 = v21;
        }

        v8 = v18;
        v9 = v17;
        v7 = v19;
        v11 = v34;
      }

      ++v14;
    }

    while (v11 != v14);
    v11 = [v9 countByEnumeratingWithState:&v36 objects:v40 count:16];
  }

  while (v11);

  if (!v12)
  {
    self = v30;
    v6 = v31;
    v29 = v32;
    goto LABEL_18;
  }

  [MEMORY[0x1E696AEC0] stringWithFormat:@"set%@:forState:", v33];
  v26 = v25 = v12;
  v27 = NSSelectorFromString(v26);

  v28 = v25;
  v29 = v32;
  v6 = v31;
  [v30 v27];
LABEL_19:
}

void __70__UIButton_UIIBPrivate___uikit_applyValueFromTraitStorage_forKeyPath___block_invoke()
{
  v5[5] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"Title", @"AttributedTitle", @"TitleColor", @"TitleShadowColor", @"Image", @"BackgroundImage", 0}];
  v1 = qword_1ED49EDB0;
  qword_1ED49EDB0 = v0;

  v4[0] = &unk_1EFE30CB8;
  v4[1] = &unk_1EFE30CD0;
  v5[0] = @"normal";
  v5[1] = @"highlighted";
  v4[2] = &unk_1EFE30CE8;
  v4[3] = &unk_1EFE30D00;
  v5[2] = @"disabled";
  v5[3] = @"selected";
  v4[4] = &unk_1EFE30D18;
  v5[4] = @"focused";
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:5];
  v3 = qword_1ED49EDB8;
  qword_1ED49EDB8 = v2;
}

- (id)largeContentTitle
{
  v3 = [(UIView *)self _largeContentStoredProperties];
  v4 = [v3 didSetLargeContentTitle];

  if (v4)
  {
    v9.receiver = self;
    v9.super_class = UIButton;
    v5 = [(UIView *)&v9 largeContentTitle];
  }

  else
  {
    v6 = [(UIButton *)self titleLabel];
    v7 = [v6 attributedText];
    v5 = [v7 string];
  }

  return v5;
}

- (id)largeContentImage
{
  v3 = [(UIView *)self _largeContentStoredProperties];
  v4 = [v3 didSetLargeContentImage];

  if (v4)
  {
    v8.receiver = self;
    v8.super_class = UIButton;
    v5 = [(UIView *)&v8 largeContentImage];
  }

  else
  {
    v6 = [(UIButton *)self imageView];
    v5 = [v6 image];
  }

  return v5;
}

- (BOOL)scalesLargeContentImage
{
  v3 = [(UIView *)self _largeContentStoredProperties];
  v4 = [v3 didSetScalesLargeContentImage];

  if (!v4)
  {
    return 1;
  }

  v6.receiver = self;
  v6.super_class = UIButton;
  return [(UIView *)&v6 scalesLargeContentImage];
}

+ (void)_setAllowsUnsupportedMacIdiomBehavior:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  _UnsupportedFlags_0 = _UnsupportedFlags_0 & 0xDF | v3;
}

- (double)_autolayoutSpacingAtEdge:(int)a3 forAttribute:(int64_t)a4 inContainer:(id)a5 isGuide:(BOOL)a6
{
  v6 = *&a3;
  v12.receiver = self;
  v12.super_class = UIButton;
  [(UIView *)&v12 _autolayoutSpacingAtEdge:*&a3 forAttribute:a4 inContainer:a5 isGuide:a6];
  v9 = v8;
  [(UIButton *)self _additionalBaselineSpacingForEdge:v6];
  return v9 + v10;
}

- (double)_autolayoutSpacingAtEdge:(int)a3 forAttribute:(id)a4 nextToNeighbor:(id)a5 edge:(int)a6 attribute:(int64_t)a7 multiplier:(double)a8
{
  v8 = *&a6;
  v10 = *&a3;
  v18.receiver = self;
  v18.super_class = UIButton;
  [(UIView *)&v18 _autolayoutSpacingAtEdge:*&a3 forAttribute:a4 nextToNeighbor:a5 edge:*&a6 attribute:a7 multiplier:a8];
  v13 = v12;
  [(UIButton *)self _additionalBaselineSpacingForEdge:v10];
  v15 = v13 + v14;
  if (objc_opt_respondsToSelector())
  {
    [a5 _additionalBaselineSpacingForEdge:v8];
    return v15 + v16;
  }

  return v15;
}

- (id)_viewForLoweringBaselineLayoutAttribute:(int)a3
{
  v5.receiver = self;
  v5.super_class = UIButton;
  v3 = [(UIView *)&v5 _viewForLoweringBaselineLayoutAttribute:*&a3];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  return v3;
}

@end