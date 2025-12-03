@interface UIButton
+ (BOOL)_buttonTypeIsModernUI:(int64_t)i;
+ (BOOL)_buttonTypeIsSystemProvided:(int64_t)provided;
+ (UIButton)buttonWithConfiguration:(UIButtonConfiguration *)configuration primaryAction:(UIAction *)primaryAction;
+ (UIButton)buttonWithType:(UIButtonType)buttonType;
+ (UIButton)buttonWithType:(UIButtonType)buttonType primaryAction:(UIAction *)primaryAction;
+ (UIButton)systemButtonWithImage:(UIImage *)image target:(id)target action:(SEL)action;
+ (id)_defaultBackgroundImageColorForType:(int64_t)type andState:(unint64_t)state;
+ (id)_defaultBackgroundImageForType:(int64_t)type andState:(unint64_t)state;
+ (id)_defaultBackgroundImageNameForType:(int64_t)type andState:(unint64_t)state compact:(BOOL)compact;
+ (id)_defaultImageColorForState:(unint64_t)state button:(id)button;
+ (id)_defaultImageColorForType:(int64_t)type andState:(unint64_t)state idiom:(int64_t)idiom;
+ (id)_defaultImageForType:(int64_t)type andState:(unint64_t)state withConfiguration:(id)configuration;
+ (id)_defaultImageNameForType:(int64_t)type andState:(unint64_t)state;
+ (id)_defaultSymbolConfigurationForType:(int64_t)type andState:(unint64_t)state compact:(BOOL)compact idiom:(int64_t)idiom;
+ (id)_defaultTitleColorForState:(unint64_t)state button:(id)button isTintColor:(BOOL *)color;
+ (void)_registerVisualProviderClass:(Class)class forIdiom:(int64_t)idiom;
+ (void)_setAllowsUnsupportedMacIdiomBehavior:(BOOL)behavior;
+ (void)_setVisuallyHighlighted:(BOOL)highlighted forViews:(id)views initialPress:(BOOL)press baseAlpha:(double)alpha;
+ (void)_setVisuallyHighlighted:(BOOL)highlighted forViews:(id)views initialPress:(BOOL)press highlightBlock:(id)block;
- ($F24F406B2B787EFB06265DBA3D28CBD5)_baselineOffsetsAtSize:(CGSize)size;
- (BOOL)_fontIsDefaultForIdiom;
- (BOOL)_hasBaseline;
- (BOOL)_hasDrawingStyle;
- (BOOL)_hasHighlightColor;
- (BOOL)_hasImageForProperty:(id)property;
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
- (BOOL)_shouldInvalidateBaselineConstraintsForSize:(CGSize)size oldSize:(CGSize)oldSize;
- (BOOL)_unconditionallyWantsSetBoundsFromISEngineLayout;
- (BOOL)_wantsBaselineUpdatingFollowingConstraintsPass;
- (BOOL)beginTrackingWithTouch:(id)touch withEvent:(id)event;
- (BOOL)canBecomeFocused;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (BOOL)scalesLargeContentImage;
- (CGPoint)menuAttachmentPointForConfiguration:(id)configuration;
- (CGPoint)pressFeedbackPosition;
- (CGRect)_clippedHighlightBounds;
- (CGRect)_highlightBounds;
- (CGRect)_selectedIndicatorBounds;
- (CGRect)_visualBounds;
- (CGRect)backgroundRectForBounds:(CGRect)bounds;
- (CGRect)contentRectForBounds:(CGRect)bounds;
- (CGRect)imageRectForContentRect:(CGRect)contentRect;
- (CGRect)titleRectForContentRect:(CGRect)contentRect;
- (CGSize)_effectiveSizeForImage:(id)image;
- (CGSize)_intrinsicSizeWithinSize:(CGSize)size;
- (CGSize)_roundSize:(CGSize)size;
- (CGSize)_titleShadowOffset;
- (CGSize)intrinsicContentSize;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority;
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
- (double)_additionalBaselineSpacingForEdge:(int)edge;
- (double)_autolayoutSpacingAtEdge:(int)edge forAttribute:(id)attribute nextToNeighbor:(id)neighbor edge:(int)a6 attribute:(int64_t)a7 multiplier:(double)multiplier;
- (double)_autolayoutSpacingAtEdge:(int)edge forAttribute:(int64_t)attribute inContainer:(id)container isGuide:(BOOL)guide;
- (double)_baselineOffsetFromBottom;
- (double)_baselineOffsetFromNearestEdgeForLayoutAttribute:(int64_t)attribute;
- (double)_drawingStrokeForState:(unint64_t)state;
- (double)_drawingStrokeForStyle:(int64_t)style;
- (double)_firstBaselineOffsetFromTop;
- (double)_focusSizeIncrease;
- (double)_highlightCornerRadius;
- (double)_preferredMaxLayoutWidth;
- (double)_scaleFactorForImage;
- (id)__vis_debugDescription;
- (id)_allButtonContent;
- (id)_archivableContent:(id *)content;
- (id)_attributedSubtitleForState:(unint64_t)state;
- (id)_attributedTitleForState:(unint64_t)state;
- (id)_attributedTitleForState:(unint64_t)state adjustedToTraitCollection:(id)collection;
- (id)_backgroundForState:(unint64_t)state usesBackgroundForNormalState:(BOOL *)normalState;
- (id)_backgroundView;
- (id)_borderColorForState:(unint64_t)state;
- (id)_configurationUpdateHandler;
- (id)_contentBackdropView;
- (id)_contentForState:(unint64_t)state;
- (id)_contextMenuInteraction:(id)interaction styleForMenuWithConfiguration:(id)configuration;
- (id)_currentImageWithResolvedConfiguration;
- (id)_defaultFocusEffect;
- (id)_defaultFontForIdiom:(int64_t)idiom;
- (id)_effectiveContentView;
- (id)_encodableSubviews;
- (id)_externalBorderColorForState:(unint64_t)state;
- (id)_externalImageColorForState:(unint64_t)state;
- (id)_externalTitleColorForState:(unint64_t)state isTintColor:(BOOL *)color;
- (id)_font;
- (id)_imageColorForState:(unint64_t)state;
- (id)_imageForState:(unint64_t)state applyingConfiguration:(BOOL)configuration usesImageForNormalState:(BOOL *)normalState;
- (id)_imageView;
- (id)_imageViewIfNeeded;
- (id)_layoutDebuggingTitle;
- (id)_lazyTitleViewFontIsDefaultForIdiom:(BOOL *)idiom;
- (id)_morphView;
- (id)_pointerEffect;
- (id)_pointerEffectPreviewParameters;
- (id)_pointerEffectWithPreview:(id)preview;
- (id)_preferredConfigurationForFocusAnimation:(int64_t)animation inContext:(id)context;
- (id)_preferredConfigurationForState:(unint64_t)state includeDefault:(BOOL)default;
- (id)_preferredHoverEffect;
- (id)_preferredHoverShape;
- (id)_selectedIndicatorViewWithImage:(id)image;
- (id)_selectionIndicatorView;
- (id)_shadowColorForState:(unint64_t)state;
- (id)_shapeInContainer:(id)container proposal:(id)proposal;
- (id)_subtitleForState:(unint64_t)state;
- (id)_titleColorForState:(unint64_t)state;
- (id)_titleColorForState:(unint64_t)state suppressTintColorFollowing:(BOOL *)following;
- (id)_titleForState:(unint64_t)state;
- (id)_titleOrImageViewForBaselineLayout;
- (id)_titleView;
- (id)_viewForLoweringBaselineLayoutAttribute:(int)attribute;
- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location;
- (id)contextMenuInteraction:(id)interaction previewForDismissingMenuWithConfiguration:(id)configuration;
- (id)contextMenuInteraction:(id)interaction previewForHighlightingMenuWithConfiguration:(id)configuration;
- (id)largeContentImage;
- (id)largeContentTitle;
- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region;
- (id)pointerInteraction:(id)interaction styleForRegion:(id)region;
- (id)viewForFirstBaselineLayout;
- (id)viewForLastBaselineLayout;
- (id)visualProviderClassForTraitCollection:(id)collection;
- (int64_t)_drawingStyleForState:(unint64_t)state;
- (int64_t)_drawingStyleForStroke:(double)stroke;
- (int64_t)_externalDrawingStyleForState:(unint64_t)state;
- (int64_t)_lineBreakMode;
- (uint64_t)_setContentValue:(void *)value forField:(uint64_t)field state:;
- (unint64_t)defaultAccessibilityTraits;
- (void)_alignmentRectInsetsHaveChangedForChildImageView:(id)view;
- (void)_applyCarPlaySystemButtonCustomizations;
- (void)_applyDynamicSearchBarBackgroundAndCapsuleCornerMaskingConfigurationRequiringGlass:(BOOL)glass;
- (void)_commonInitForPrimaryAction:(id)action;
- (void)_didChangeFromIdiom:(int64_t)idiom onScreen:(id)screen traverseHierarchy:(BOOL)hierarchy;
- (void)_didMoveFromWindow:(id)window toWindow:(id)toWindow;
- (void)_didUpdateFocusInContext:(id)context;
- (void)_intelligenceCollectSubelementsIn:(CGRect)in using:(id)using transformToRoot:(id)root;
- (void)_intrinsicContentSizeInvalidatedForChildView:(id)view;
- (void)_invalidateForPropertyChange;
- (void)_markAndLayoutAsNeededForField:(uint64_t)field state:;
- (void)_populateArchivedSubviews:(id)subviews;
- (void)_prepareForFirstIntrinsicContentSizeCalculation;
- (void)_prepareForSecondIntrinsicContentSizeCalculationWithLayoutEngineBounds:(CGRect)bounds;
- (void)_refreshVisualProvider;
- (void)_refreshVisualProviderForTraitCollection:(id)collection populatingAPIProperties:(BOOL)properties;
- (void)_resetLazyTitleViewFont;
- (void)_selectionInteractionDidBeginHinting:(id)hinting;
- (void)_selectionInteractionDidCancelHinting:(id)hinting;
- (void)_selectionInteractionDidSelect:(id)select;
- (void)_sendActionsForEvents:(unint64_t)events withEvent:(id)event;
- (void)_setAttributedSubtitle:(id)subtitle forState:(unint64_t)state;
- (void)_setAttributedTitle:(id)title forStates:(unint64_t)states;
- (void)_setBackground:(id)background forStates:(unint64_t)states;
- (void)_setBlurEnabled:(BOOL)enabled;
- (void)_setButtonType:(int64_t)type;
- (void)_setConfigurationUpdateHandler:(id)handler;
- (void)_setContent:(id)content forState:(unint64_t)state;
- (void)_setContentBackgroundHidden:(BOOL)hidden;
- (void)_setContentHuggingPriorities:(CGSize)priorities;
- (void)_setDefaultFontForIdiom;
- (void)_setDisableAutomaticTitleAnimations:(BOOL)animations;
- (void)_setDrawingStroke:(double)stroke forState:(unint64_t)state;
- (void)_setDrawingStyle:(int64_t)style forState:(unint64_t)state;
- (void)_setExternalFlatEdge:(unint64_t)edge;
- (void)_setFocusSizeIncrease:(double)increase;
- (void)_setFont:(id)font isDefaultForIdiom:(BOOL)idiom;
- (void)_setFrame:(CGRect)frame deferLayout:(BOOL)layout;
- (void)_setHasActiveMenuPresentation:(BOOL)presentation;
- (void)_setHighlighted:(BOOL)highlighted animated:(BOOL)animated;
- (void)_setHighlightedWithoutUpdatingState:(BOOL)state;
- (void)_setHovered:(BOOL)hovered;
- (void)_setImage:(id)image forStates:(unint64_t)states;
- (void)_setImageColor:(id)color forState:(unint64_t)state;
- (void)_setImageColor:(id)color forStates:(unint64_t)states;
- (void)_setImageContentMode:(int64_t)mode;
- (void)_setLineBreakMode:(int64_t)mode;
- (void)_setMenuProvider:(id)provider;
- (void)_setOn:(BOOL)on;
- (void)_setShadowColor:(id)color forStates:(unint64_t)states;
- (void)_setShouldHandleScrollerMouseEvent:(BOOL)event;
- (void)_setSubtitle:(id)subtitle forState:(unint64_t)state;
- (void)_setTitle:(id)title forStates:(unint64_t)states;
- (void)_setTitleColor:(id)color forStates:(unint64_t)states;
- (void)_setTitleFrozen:(BOOL)frozen;
- (void)_setTitleShadowOffset:(CGSize)offset;
- (void)_setVisualEffectViewEnabled:(BOOL)enabled backgroundColor:(id)color;
- (void)_setVisualProvider:(id)provider;
- (void)_setWantsAccessibilityUnderline:(BOOL)underline;
- (void)_shim_setConfiguration:(id)configuration;
- (void)_takeContentFromArchivableContent:(id)content;
- (void)_titleViewLabelMetricsChanged;
- (void)_uikit_applyValueFromTraitStorage:(id)storage forKeyPath:(id)path;
- (void)_updateBaselineInformationDependentOnBounds;
- (void)_updateConfigurationWithObservationTracking:(id)tracking;
- (void)_updateContextMenuEnabled;
- (void)_updateForAutomaticSelection;
- (void)_updateProperties;
- (void)_willMoveToWindow:(id)window;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)endTrackingWithTouch:(id)touch withEvent:(id)event;
- (void)forcedSelectionOfMenu:(id)menu willChangeTo:(id)to;
- (void)layoutSubviews;
- (void)pointerInteraction:(id)interaction willEnterRegion:(id)region animator:(id)animator;
- (void)pointerInteraction:(id)interaction willExitRegion:(id)region animator:(id)animator;
- (void)setAdjustsImageSizeForAccessibilityContentSizeCategory:(BOOL)category;
- (void)setAdjustsImageWhenDisabled:(BOOL)adjustsImageWhenDisabled;
- (void)setAdjustsImageWhenHighlighted:(BOOL)adjustsImageWhenHighlighted;
- (void)setAttributedTitle:(NSAttributedString *)title forState:(UIControlState)state;
- (void)setAutomaticallyUpdatesConfiguration:(BOOL)automaticallyUpdatesConfiguration;
- (void)setAutosizesToFit:(BOOL)fit;
- (void)setBackgroundImage:(UIImage *)image forState:(UIControlState)state;
- (void)setBackgroundImage:(id)image forStates:(unint64_t)states;
- (void)setBounds:(CGRect)bounds;
- (void)setChangesSelectionAsPrimaryAction:(BOOL)changesSelectionAsPrimaryAction;
- (void)setConfigurationUpdateHandler:(UIButtonConfigurationUpdateHandler)configurationUpdateHandler;
- (void)setContentEdgeInsets:(UIEdgeInsets)contentEdgeInsets;
- (void)setContentHorizontalAlignment:(int64_t)alignment;
- (void)setContentVerticalAlignment:(int64_t)alignment;
- (void)setDisabledDimsImage:(BOOL)image;
- (void)setEnabled:(BOOL)enabled;
- (void)setFrame:(CGRect)frame;
- (void)setImage:(UIImage *)image forState:(UIControlState)state;
- (void)setImage:(id)image forStates:(unint64_t)states;
- (void)setImageEdgeInsets:(UIEdgeInsets)imageEdgeInsets;
- (void)setMenu:(UIMenu *)menu;
- (void)setNeedsLayout;
- (void)setNeedsUpdateConfiguration;
- (void)setPointerStyleProvider:(UIButtonPointerStyleProvider)pointerStyleProvider;
- (void)setPreferredBehavioralStyle:(UIBehavioralStyle)preferredBehavioralStyle;
- (void)setPreferredSymbolConfiguration:(UIImageSymbolConfiguration *)configuration forImageInState:(UIControlState)state;
- (void)setReversesTitleShadowWhenHighlighted:(BOOL)reversesTitleShadowWhenHighlighted;
- (void)setRole:(UIButtonRole)role;
- (void)setSelected:(BOOL)selected;
- (void)setSemanticContentAttribute:(int64_t)attribute;
- (void)setShowsMenuAsPrimaryAction:(BOOL)action;
- (void)setShowsTouchWhenHighlighted:(BOOL)showsTouchWhenHighlighted;
- (void)setTintColor:(UIColor *)tintColor;
- (void)setTitle:(NSString *)title forState:(UIControlState)state;
- (void)setTitle:(id)title forStates:(unint64_t)states;
- (void)setTitleColor:(UIColor *)color forState:(UIControlState)state;
- (void)setTitleColor:(id)color forStates:(unint64_t)states;
- (void)setTitleEdgeInsets:(UIEdgeInsets)titleEdgeInsets;
- (void)setTitleShadowColor:(UIColor *)color forState:(UIControlState)state;
- (void)setTitleShadowColor:(id)color forStates:(unint64_t)states;
- (void)tintColorDidChange;
- (void)traitCollectionDidChange:(id)change;
- (void)updateConstraints;
@end

@implementation UIButton

- (void)layoutSubviews
{
  _visualProvider = [(UIButton *)self _visualProvider];
  [_visualProvider layoutSubviews];

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
      _visualProvider = [(UIButton *)self _visualProvider];
      hasMultilineText = [_visualProvider hasMultilineText];

      return hasMultilineText;
    }
  }

  else
  {
    _visualProvider2 = [(UIButton *)self _visualProvider];
    if (_visualProvider2)
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
    layer = [(UIView *)self layer];
    [layer setNeedsLayout];
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
  traitCollection = [(UIView *)self traitCollection];
  [(UIButton *)self _refreshVisualProviderForTraitCollection:traitCollection];
}

- (BOOL)_isiOSSystemProvidedButton
{
  v3 = objc_opt_class();
  _buttonType = [(UIButton *)self _buttonType];

  return [v3 _buttonTypeIsiOSSystemProvided:_buttonType];
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
    _visualProvider = [(UIButton *)self _visualProvider];
    if (!_visualProvider)
    {
      return;
    }

    v5 = self->_buttonVisualProviderFlags;

    if ((v5 & 4) == 0)
    {
      return;
    }
  }

  _visualProvider2 = [(UIButton *)self _visualProvider];
  [_visualProvider2 setNeedsUpdateConfiguration];

  if (+[UIView _isInAnimationBlockWithAnimationsEnabled])
  {
    _visualProvider3 = [(UIButton *)self _visualProvider];
    [_visualProvider3 updateConfigurationIfNecessary];
  }
}

- (void)_setDefaultFontForIdiom
{
  if ([(UIButton *)self _isiOSSystemProvidedButton]&& [(UIButton *)self _shouldAdjustToTraitCollection])
  {
    traitCollection = [off_1E70ECC18 preferredFontForTextStyle:@"UICTFontTextStyleBody"];
    [UIButton _setFont:"_setFont:isDefaultForIdiom:" isDefaultForIdiom:?];
  }

  else
  {
    traitCollection = [(UIView *)self traitCollection];
    v3 = -[UIButton _defaultFontForIdiom:](self, "_defaultFontForIdiom:", [traitCollection userInterfaceIdiom]);
    [(UIButton *)self _setFont:v3 isDefaultForIdiom:1];
  }
}

- (void)tintColorDidChange
{
  v4.receiver = self;
  v4.super_class = UIButton;
  [(UIView *)&v4 tintColorDidChange];
  _visualProvider = [(UIButton *)self _visualProvider];
  [_visualProvider tintColorDidChange];
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
    background = [v4 background];

    if (!background)
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
  traitCollection = [(UIView *)self traitCollection];
  v3 = [traitCollection userInterfaceIdiom] == 3;

  return v3;
}

- (void)_updateProperties
{
  v4.receiver = self;
  v4.super_class = UIButton;
  [(UIView *)&v4 _updateProperties];
  _visualProvider = [(UIButton *)self _visualProvider];
  [_visualProvider updateProperties];
}

- (id)_backgroundView
{
  _visualProvider = [(UIButton *)self _visualProvider];
  v3 = [_visualProvider backgroundViewCreateIfNeeded:0];

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

- (void)_updateConfigurationWithObservationTracking:(id)tracking
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_188B5A3B4(tracking);
  swift_unknownObjectRelease();
}

- (_UIButtonConfigurationState)_configurationState
{
  v3 = [_UIButtonConfigurationState alloc];
  traitCollection = [(UIView *)self traitCollection];
  v5 = [(UIViewConfigurationState *)v3 initWithTraitCollection:traitCollection];

  state = [(UIControl *)self state];
  [(UIViewConfigurationState *)v5 setDisabled:(state >> 1) & 1];
  [(UIViewConfigurationState *)v5 setHighlighted:state & 1];
  [(UIViewConfigurationState *)v5 setSelected:(state >> 2) & 1];
  [(UIViewConfigurationState *)v5 setFocused:(state >> 3) & 1];

  return v5;
}

- (BOOL)_menuEnabled
{
  _visualProvider = [(UIButton *)self _visualProvider];
  shouldUpdateContextMenuEnabledOnMenuChanges = [objc_opt_class() shouldUpdateContextMenuEnabledOnMenuChanges];

  if (shouldUpdateContextMenuEnabledOnMenuChanges)
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
    _visualProvider = [(UIButton *)self _visualProvider];
    if (_visualProvider)
    {
      v5 = self->_buttonVisualProviderFlags;

      if ((v5 & 0x20) != 0)
      {
LABEL_4:
        _visualProvider2 = [(UIButton *)self _visualProvider];
        if ([_visualProvider2 deferToLazyTitleFont])
        {
          font = self->_lazyTitleViewFont;
        }

        else
        {
          _visualProvider3 = [(UIButton *)self _visualProvider];
          font = [_visualProvider3 font];
        }

        goto LABEL_10;
      }
    }
  }

  font = 0;
LABEL_10:

  return font;
}

- (UIEdgeInsets)alignmentRectInsets
{
  _visualProvider = [(UIButton *)self _visualProvider];
  [_visualProvider alignmentRectInsets];
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
    _visualProvider = [(UIButton *)self _visualProvider];
    if (_visualProvider)
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
  _visualProvider2 = [(UIButton *)self _visualProvider];
  [_visualProvider2 intrinsicContentSize];
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
  _visualProvider = [(UIButton *)self _visualProvider];
  v3 = [_visualProvider imageViewCreateIfNeeded:1];

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
    _visualProvider = [(UIButton *)self _visualProvider];
    if (_visualProvider && (*&self->_buttonVisualProviderFlags & 4) != 0)
    {
      _unconditionallyWantsSetBoundsFromISEngineLayout = 1;
LABEL_7:

      return _unconditionallyWantsSetBoundsFromISEngineLayout;
    }
  }

  v7.receiver = self;
  v7.super_class = UIButton;
  _unconditionallyWantsSetBoundsFromISEngineLayout = [(UIView *)&v7 _unconditionallyWantsSetBoundsFromISEngineLayout];
  if ((buttonVisualProviderFlags & 1) == 0)
  {
    goto LABEL_7;
  }

  return _unconditionallyWantsSetBoundsFromISEngineLayout;
}

- (void)updateConstraints
{
  _visualProvider = [(UIButton *)self _visualProvider];
  [_visualProvider updateConstraints];

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
      _visualProvider = [(UIButton *)self _visualProvider];
      vendsBaselineInformationToAutoLayout = [_visualProvider vendsBaselineInformationToAutoLayout];

      return vendsBaselineInformationToAutoLayout;
    }
  }

  else
  {
    _visualProvider2 = [(UIButton *)self _visualProvider];
    if (_visualProvider2)
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
      _visualProvider = [(UIButton *)self _visualProvider];
      hasBaseline = [_visualProvider hasBaseline];

      return hasBaseline;
    }
  }

  else
  {
    _visualProvider2 = [(UIButton *)self _visualProvider];
    if (_visualProvider2)
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
  _visualProvider = [(UIButton *)self _visualProvider];
  viewForLastBaselineLayout = [_visualProvider viewForLastBaselineLayout];
  v5 = viewForLastBaselineLayout;
  if (viewForLastBaselineLayout)
  {
    viewForLastBaselineLayout2 = viewForLastBaselineLayout;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = UIButton;
    viewForLastBaselineLayout2 = [(UIView *)&v9 viewForLastBaselineLayout];
  }

  v7 = viewForLastBaselineLayout2;

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

  _visualProvider = [(UIButton *)self _visualProvider];
  if (!_visualProvider)
  {
    return 1;
  }

  v5 = self->_buttonVisualProviderFlags;

  if ((v5 & 0x20) == 0)
  {
    return 1;
  }

LABEL_4:
  _visualProvider2 = [(UIButton *)self _visualProvider];
  deferToLazyTitleFont = [_visualProvider2 deferToLazyTitleFont];

  if (deferToLazyTitleFont)
  {
    return self->_lazyTitleViewFontIsDefaultForIdiom;
  }

  _visualProvider3 = [(UIButton *)self _visualProvider];
  fontIsDefaultForIdiom = [_visualProvider3 fontIsDefaultForIdiom];

  return fontIsDefaultForIdiom;
}

- (id)_titleView
{
  _visualProvider = [(UIButton *)self _visualProvider];
  v3 = [_visualProvider titleViewCreateIfNeeded:0];

  return v3;
}

- (id)_imageViewIfNeeded
{
  [(UIView *)self layoutIfNeeded];

  return [(UIButton *)self _imageView];
}

- (id)_imageView
{
  _visualProvider = [(UIButton *)self _visualProvider];
  v3 = [_visualProvider imageViewCreateIfNeeded:0];

  return v3;
}

- (UIButtonConfiguration)configuration
{
  _apiValue = [(_UIButtonConfigurationShim *)self->_configuration _apiValue];
  v3 = [_apiValue copy];

  return v3;
}

- (UILabel)titleLabel
{
  _visualProvider = [(UIButton *)self _visualProvider];
  v3 = [_visualProvider titleViewCreateIfNeeded:1];

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
    _isResizable = [v4 _isResizable];
  }

  else
  {
    _isResizable = 1;
  }

  return _isResizable;
}

- (int64_t)_lineBreakMode
{
  buttonVisualProviderFlags = self->_buttonVisualProviderFlags;
  if (buttonVisualProviderFlags)
  {
    if ((buttonVisualProviderFlags & 0x20) != 0)
    {
LABEL_4:
      _visualProvider = [(UIButton *)self _visualProvider];
      lineBreakMode = [_visualProvider lineBreakMode];

      return lineBreakMode;
    }
  }

  else
  {
    _visualProvider2 = [(UIButton *)self _visualProvider];
    if (_visualProvider2)
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
    selectedElements = [(UIMenu *)self->_menu selectedElements];
    firstObject = [selectedElements firstObject];
    title = [firstObject title];
    [(UIButton *)self setTitle:title forState:0];
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
  _visualProvider = [(UIButton *)self _visualProvider];
  effectiveContentView = [_visualProvider effectiveContentView];

  return effectiveContentView;
}

- (void)_updateContextMenuEnabled
{
  _visualProvider = [(UIButton *)self _visualProvider];
  shouldUpdateContextMenuEnabledOnMenuChanges = [objc_opt_class() shouldUpdateContextMenuEnabledOnMenuChanges];

  if (shouldUpdateContextMenuEnabledOnMenuChanges)
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
  state = [(UIControl *)self state];

  return [(UIButton *)self imageForState:state];
}

- (BOOL)_isSystemProvidedButton
{
  v3 = objc_opt_class();
  _buttonType = [(UIButton *)self _buttonType];

  return [v3 _buttonTypeIsSystemProvided:_buttonType];
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
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIButton.m" lineNumber:2757 description:@"Unexpected use of multiline text content sizing in UIButton"];

    goto LABEL_7;
  }

  _visualProvider = [(UIButton *)self _visualProvider];
  if (!_visualProvider)
  {
    goto LABEL_6;
  }

  v6 = self->_buttonVisualProviderFlags;

  if ((v6 & 4) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  _visualProvider2 = [(UIButton *)self _visualProvider];
  [_visualProvider2 setWidthForMultilineTextLayout:0.0];

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
      _visualProvider = [(UIButton *)self _visualProvider];
      [_visualProvider widthForMultilineTextLayout];
      v8 = v7;

      return v8;
    }
  }

  else
  {
    _visualProvider2 = [(UIButton *)self _visualProvider];
    if (_visualProvider2)
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
  state = [(UIControl *)self state];

  return [(UIButton *)self backgroundImageForState:state];
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
    _visualProvider = [(UIButton *)self _visualProvider];
    if (_visualProvider)
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
  _visualProvider = [(UIButton *)self _visualProvider];
  viewForFirstBaselineLayout = [_visualProvider viewForFirstBaselineLayout];
  v5 = viewForFirstBaselineLayout;
  if (viewForFirstBaselineLayout)
  {
    viewForFirstBaselineLayout2 = viewForFirstBaselineLayout;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = UIButton;
    viewForFirstBaselineLayout2 = [(UIView *)&v9 viewForFirstBaselineLayout];
  }

  v7 = viewForFirstBaselineLayout2;

  return v7;
}

- (NSString)currentTitle
{
  state = [(UIControl *)self state];

  return [(UIButton *)self titleForState:state];
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
  traitCollection = [(UIView *)self traitCollection];
  v4 = -[UIButton _isInCarPlay](self, "_isInCarPlay") && !-[UIButton canBecomeFocused](self, "canBecomeFocused") && ([traitCollection interactionModel] & 1) == 0;

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
    _visualProvider = [(UIButton *)self _visualProvider];
    if (_visualProvider)
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
  _visualProvider2 = [(UIButton *)self _visualProvider];
  [_visualProvider2 highlightBounds];
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

  _visualProvider = [(UIButton *)self _visualProvider];
  canBecomeFocused = [_visualProvider canBecomeFocused];

  return canBecomeFocused;
}

- (void)_intelligenceCollectSubelementsIn:(CGRect)in using:(id)using transformToRoot:(id)root
{
  height = in.size.height;
  width = in.size.width;
  y = in.origin.y;
  x = in.origin.x;
  v11 = _Block_copy(root);
  _Block_copy(v11);
  usingCopy = using;
  selfCopy = self;
  sub_188DE9D6C(usingCopy, selfCopy, v11, x, y, width, height);
  _Block_release(v11);
  _Block_release(v11);
}

- (Class)_intelligenceBaseClass
{
  sub_189044DFC();

  return swift_getObjCClassFromMetadata();
}

- (void)_applyDynamicSearchBarBackgroundAndCapsuleCornerMaskingConfigurationRequiringGlass:(BOOL)glass
{
  glassCopy = glass;
  selfCopy = self;
  sub_1891EB658(glassCopy);
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
  behavioralStyle = [(UIButton *)self behavioralStyle];
  *&self->_buttonVisualProviderFlags = *&self->_buttonVisualProviderFlags & 0xF87F | ((v3 & 0xF) << 7);
  if (behavioralStyle != [(UIButton *)self behavioralStyle])
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
    string = v3;
  }

  else
  {
    v6 = [(UIButton *)self attributedTitleForState:0];
    string = [v6 string];
  }

  return string;
}

+ (BOOL)_buttonTypeIsModernUI:(int64_t)i
{
  if (([self _buttonTypeIsSystemProvided:?] & 1) != 0 || i == 7 || i == 113)
  {
    return 1;
  }

  return UIButtonTypeIsModernCircleButton(i);
}

+ (BOOL)_buttonTypeIsSystemProvided:(int64_t)provided
{
  result = [self _buttonTypeIsiOSSystemProvided:?];
  if (provided == 9999)
  {
    return 1;
  }

  return result;
}

+ (UIButton)systemButtonWithImage:(UIImage *)image target:(id)target action:(SEL)action
{
  v8 = image;
  v9 = target;
  v10 = [self buttonWithType:1];
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
  v7 = [self _defaultSymbolConfigurationForType:buttonType andState:0 compact:0 idiom:{objc_msgSend(v6, "userInterfaceIdiom")}];
  v8 = [self _defaultImageForType:buttonType andState:0 withConfiguration:v7];

  v9 = MEMORY[0x1E695F058];
  if (v8)
  {
    [v8 size];
    mainScreen = [objc_opt_self() mainScreen];
    UIRoundToScreenScale(mainScreen);
    v12 = v11;
    mainScreen2 = [objc_opt_self() mainScreen];
    UIRoundToScreenScale(mainScreen2);
    v15 = v14;
  }

  else
  {
    v12 = *(MEMORY[0x1E695F058] + 16);
    v15 = *(MEMORY[0x1E695F058] + 24);
  }

  v17 = *v9;
  v16 = v9[1];
  v18 = [self _buttonTypeIsModernUI:buttonType];
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
        selfCopy = UIRoundedRectButton;
        goto LABEL_34;
      }

      if (v19 != UIButtonTypeDetailDisclosure && v19 != UIButtonTypeInfoLight)
      {
LABEL_20:
        selfCopy = self;
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
          selfCopy = UIButton;
LABEL_34:
          v27 = [[selfCopy alloc] initWithFrame:{v17, v16, v12, v15}];
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
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"UIButton.m" lineNumber:882 description:{@"UIButtonTypeTextured has never worked properly under ModernUI, replace your usage"}];

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
  v7 = [self buttonWithType:buttonType];
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
  v8 = [self buttonWithType:1];
  [v8 setConfiguration:v7];

  if (v6)
  {
    [v8 _commonInitForPrimaryAction:v6];
  }

  return v8;
}

- (void)_commonInitForPrimaryAction:(id)action
{
  actionCopy = action;
  v8.receiver = self;
  v8.super_class = UIButton;
  [(UIControl *)&v8 _commonInitForPrimaryAction:actionCopy];
  buttonType = [(UIButton *)self buttonType];
  if ((buttonType - 124) < 3 || buttonType <= UIButtonTypeSystem)
  {
    title = [actionCopy title];
    if ([title length])
    {
      [(UIButton *)self setTitle:title forState:0];
    }

    image = [actionCopy image];
    if (image)
    {
      [(UIButton *)self setImage:image forState:0];
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
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIButton.m" lineNumber:1069 description:{@"unsafe to initWithFrame: already initialized UIButton. Use setFrame: instead %@", self}];
  }

  v16.receiver = self;
  v16.super_class = UIButton;
  height = [(UIControl *)&v16 initWithFrame:x, y, width, height];
  v9 = height;
  if (height)
  {
    *(height + 488) = 0u;
    *(height + 504) = 0u;
    *(height + 520) = 0u;
    *(height + 536) = 0u;
    *(height + 552) = 0u;
    *(height + 568) = 0u;
    [height setOpaque:0];
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
    subviews = [(UIView *)v6 subviews];
    v30 = [subviews copy];

    _effectiveContentView = [(UIButton *)v6 _effectiveContentView];
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

          [_effectiveContentView addSubview:{*(*(&v54 + 1) + 8 * i), v54}];
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
  traitCollection = [(UIView *)v6 traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom == 5)
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
      _visualProvider = [(UIButton *)self _visualProvider];
      encodableSubviews = [_visualProvider encodableSubviews];

      goto LABEL_7;
    }
  }

  else
  {
    _visualProvider2 = [(UIButton *)self _visualProvider];
    if (_visualProvider2)
    {
      v5 = self->_buttonVisualProviderFlags;

      if ((v5 & 8) != 0)
      {
        goto LABEL_4;
      }
    }
  }

  encodableSubviews = 0;
LABEL_7:

  return encodableSubviews;
}

- (void)_populateArchivedSubviews:(id)subviews
{
  subviewsCopy = subviews;
  v9.receiver = self;
  v9.super_class = UIButton;
  [(UIView *)&v9 _populateArchivedSubviews:subviewsCopy];
  buttonVisualProviderFlags = self->_buttonVisualProviderFlags;
  if (buttonVisualProviderFlags)
  {
    if ((buttonVisualProviderFlags & 8) == 0)
    {
      goto LABEL_7;
    }

LABEL_6:
    _visualProvider = [(UIButton *)self _visualProvider];
    [_visualProvider populateArchivedSubviews:subviewsCopy];

    goto LABEL_7;
  }

  _visualProvider2 = [(UIButton *)self _visualProvider];
  if (_visualProvider2)
  {
    v7 = self->_buttonVisualProviderFlags;

    if ((v7 & 8) != 0)
    {
      goto LABEL_6;
    }
  }

LABEL_7:
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v30.receiver = self;
  v30.super_class = UIButton;
  [(UIControl *)&v30 encodeWithCoder:coderCopy];
  v29 = 0;
  v6 = [(UIButton *)self _archivableContent:&v29];
  v7 = v29;
  if ([v6 count])
  {
    [coderCopy encodeObject:v6 forKey:@"UIButtonStatefulContent"];
  }

  if ([v7 count])
  {
    [coderCopy encodeObject:v7 forKey:@"UIButtonStatefulContentOverrides"];
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
    _visualProvider = [(UIButton *)self _visualProvider];
    if (!_visualProvider || (*&self->_buttonVisualProviderFlags & 0x20) == 0)
    {
      goto LABEL_14;
    }
  }

  _visualProvider2 = [(UIButton *)self _visualProvider];
  lineBreakMode = [_visualProvider2 lineBreakMode];

  if ((buttonVisualProviderFlags & 1) == 0)
  {
  }

  if (lineBreakMode != 5)
  {
    _visualProvider = [(UIButton *)self _visualProvider];
    [coderCopy encodeInteger:objc_msgSend(_visualProvider forKey:{"lineBreakMode"), @"UILineBreakMode"}];
LABEL_14:
  }

LABEL_15:
  buttonFlags = self->_buttonFlags;
  if (*&buttonFlags)
  {
    [coderCopy encodeBool:1 forKey:@"UIReversesTitleShadowWhenHighlighted"];
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

  [coderCopy encodeBool:1 forKey:@"UIShowsTouchWhenHighlighted"];
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
  [coderCopy encodeBool:1 forKey:@"UIAdjustsImageWhenHighlighted"];
  buttonFlags = self->_buttonFlags;
  if ((*&buttonFlags & 4) != 0)
  {
LABEL_19:
    [coderCopy encodeBool:1 forKey:@"UIAdjustsImageWhenDisabled"];
    buttonFlags = self->_buttonFlags;
  }

LABEL_20:
  if ((*&buttonFlags >> 6))
  {
    [coderCopy encodeInteger:? forKey:?];
    buttonFlags = self->_buttonFlags;
  }

  if ((*&buttonFlags & 0x100000000) != 0)
  {
    [coderCopy encodeBool:1 forKey:@"UIAdjustsImageSizeForAccessibilityContentSizeCategory"];
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
    _visualProvider = [(UIButton *)self _visualProvider];
    if (!_visualProvider || (*&self->_buttonVisualProviderFlags & 0x20) == 0)
    {
      goto LABEL_37;
    }
  }

  _visualProvider3 = [(UIButton *)self _visualProvider];
  font = [_visualProvider3 font];

  if ((v12 & 1) == 0)
  {
  }

  if (font)
  {
    _visualProvider = [(UIButton *)self _visualProvider];
    font2 = [_visualProvider font];
    [coderCopy encodeObject:font2 forKey:@"UIFont"];

LABEL_37:
  }

LABEL_38:
  if ((*&self->_buttonFlags >> 14))
  {
    [coderCopy encodeInteger:? forKey:?];
  }

  v16 = *&self->_contentEdgeInsets.top;
  v17 = *&self->_contentEdgeInsets.bottom;
  if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(v16), vceqzq_f64(v17))))))
  {
    [coderCopy encodeUIEdgeInsets:@"UIContentEdgeInsets" forKey:{*&v16, *&v17}];
  }

  v18 = *&self->_titleEdgeInsets.top;
  v19 = *&self->_titleEdgeInsets.bottom;
  if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(v18), vceqzq_f64(v19))))))
  {
    [coderCopy encodeUIEdgeInsets:@"UITitleEdgeInsets" forKey:{*&v18, *&v19}];
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
    _visualProvider = [(UIButton *)self _visualProvider];
    if (!_visualProvider || (*&self->_buttonVisualProviderFlags & 0x20) == 0)
    {
      goto LABEL_57;
    }
  }

  _visualProvider4 = [(UIButton *)self _visualProvider];
  [_visualProvider4 titleShadowOffset];
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
    _visualProvider = [(UIButton *)self _visualProvider];
    [_visualProvider titleShadowOffset];
    [coderCopy encodeCGSize:@"UITitleShadowOffset" forKey:?];
LABEL_57:
  }

LABEL_58:
  v25 = *&self->_imageEdgeInsets.top;
  v26 = *&self->_imageEdgeInsets.bottom;
  if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(v25), vceqzq_f64(v26))))))
  {
    [coderCopy encodeUIEdgeInsets:@"UIImageEdgeInsets" forKey:{*&v25, *&v26}];
  }

  v27 = (*&self->_buttonVisualProviderFlags >> 7) & 0xF;
  if (v27)
  {
    [coderCopy encodeInteger:v27 forKey:@"UIBehavioralStyle"];
  }

  if ([(UIButton *)self isSpringLoaded])
  {
    [coderCopy encodeBool:1 forKey:@"UISpringLoaded"];
  }

  menu = self->_menu;
  if (menu)
  {
    [coderCopy encodeObject:menu forKey:@"UIButtonMenu"];
  }

  if ((*(&self->_buttonFlags + 4) & 0x20) != 0)
  {
    [coderCopy encodeBool:1 forKey:@"UIButtonChangesSelectionAsPrimaryAction"];
  }

  [coderCopy encodeObject:self->_configuration forKey:@"UIButtonConfiguration"];
}

- (void)_setFrame:(CGRect)frame deferLayout:(BOOL)layout
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  [(UIView *)self frame];
  v11 = v10;
  v13 = v12;
  v19.receiver = self;
  v19.super_class = UIButton;
  [(UIView *)&v19 setFrame:x, y, width, height];
  if (v11 != width || v13 != height)
  {
    [(UIButton *)self setNeedsLayout];
    if (!layout)
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
      _visualProvider = [(UIButton *)self _visualProvider];
      if (!_visualProvider)
      {
        return;
      }

      v17 = self->_buttonVisualProviderFlags;

      if ((v17 & 4) == 0)
      {
        return;
      }
    }

    _visualProvider2 = [(UIButton *)self _visualProvider];
    [_visualProvider2 invalidateLayoutData];
  }
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if (dyld_program_sdk_at_least())
  {
    if (+[UIView _isInAnimationBlockWithAnimationsEnabled])
    {
      window = [(UIView *)self window];
      v9 = window == 0;
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

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
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
      _visualProvider = [(UIButton *)self _visualProvider];
      if (!_visualProvider)
      {
        return;
      }

      v15 = self->_buttonVisualProviderFlags;

      if ((v15 & 4) == 0)
      {
        return;
      }
    }

    _visualProvider2 = [(UIButton *)self _visualProvider];
    [_visualProvider2 invalidateLayoutData];

    return;
  }

  _visualProvider3 = [(UIButton *)self _visualProvider];
  if (_visualProvider3)
  {
    v18 = self->_buttonVisualProviderFlags;

    if ((v18 & 4) != 0)
    {
      goto LABEL_5;
    }
  }
}

- (void)setSelected:(BOOL)selected
{
  selectedCopy = selected;
  if ([(UIControl *)self isSelected]!= selected)
  {
    v6.receiver = self;
    v6.super_class = UIButton;
    [(UIControl *)&v6 setSelected:selectedCopy];
    _visualProvider = [(UIButton *)self _visualProvider];
    [_visualProvider setSelected:selectedCopy];

    [(UIButton *)self setNeedsLayout];
  }
}

- (void)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  if ([(UIControl *)self isEnabled]!= enabled)
  {
    v7.receiver = self;
    v7.super_class = UIButton;
    [(UIControl *)&v7 setEnabled:enabledCopy];
    _visualProvider = [(UIButton *)self _visualProvider];
    [_visualProvider setEnabled:enabledCopy];

    [(UIButton *)self setNeedsLayout];
    selectionInteraction = [(UIButton *)self selectionInteraction];
    [selectionInteraction setEnabled:enabledCopy];
  }
}

- (void)_setHighlightedWithoutUpdatingState:(BOOL)state
{
  v3.receiver = self;
  v3.super_class = UIButton;
  [(UIControl *)&v3 setHighlighted:state];
}

- (void)_setHighlighted:(BOOL)highlighted animated:(BOOL)animated
{
  animatedCopy = animated;
  highlightedCopy = highlighted;
  *&self->_buttonFlags &= ~0x4000000uLL;
  if ([(UIControl *)self isHighlighted]!= highlighted)
  {
    v8.receiver = self;
    v8.super_class = UIButton;
    [(UIControl *)&v8 setHighlighted:highlightedCopy];
    _visualProvider = [(UIButton *)self _visualProvider];
    [_visualProvider setHighlighted:highlightedCopy animated:animatedCopy];
  }
}

- (void)_setHovered:(BOOL)hovered
{
  buttonFlags = self->_buttonFlags;
  if (((((*&buttonFlags & 0x800000000) == 0) ^ hovered) & 1) == 0)
  {
    v4 = 0x800000000;
    if (!hovered)
    {
      v4 = 0;
    }

    self->_buttonFlags = (*&buttonFlags & 0xFFFFFFF7FFFFFFFFLL | v4);
    [(UIButton *)self setNeedsUpdateConfiguration];
  }
}

- (void)_setHasActiveMenuPresentation:(BOOL)presentation
{
  presentationCopy = presentation;
  _hasActiveMenuPresentation = [(UIControl *)self _hasActiveMenuPresentation];
  v6.receiver = self;
  v6.super_class = UIButton;
  [(UIControl *)&v6 _setHasActiveMenuPresentation:presentationCopy];
  if (_hasActiveMenuPresentation != presentationCopy)
  {
    [(UIButton *)self setNeedsUpdateConfiguration];
  }
}

- (void)_didChangeFromIdiom:(int64_t)idiom onScreen:(id)screen traverseHierarchy:(BOOL)hierarchy
{
  hierarchyCopy = hierarchy;
  v10.receiver = self;
  v10.super_class = UIButton;
  screenCopy = screen;
  [(UIView *)&v10 _didChangeFromIdiom:idiom onScreen:screenCopy traverseHierarchy:hierarchyCopy];
  v9 = [(UIButton *)self _visualProvider:v10.receiver];
  [v9 didChangeFromIdiom:idiom onScreen:screenCopy traverseHierarchy:hierarchyCopy];
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
    _visualProvider = [(UIButton *)self _visualProvider];
    [_visualProvider setReversesTitleShadowWhenHighlighted:v4];
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
    _visualProvider = [(UIButton *)self _visualProvider];
    [_visualProvider setShowsTouchWhenHighlighted:v4];
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
    _visualProvider = [(UIButton *)self _visualProvider];
    v2 = [_visualProvider subtitleViewCreateIfNeeded:1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)setContentHorizontalAlignment:(int64_t)alignment
{
  if ([(UIControl *)self contentHorizontalAlignment]!= alignment)
  {
    v6.receiver = self;
    v6.super_class = UIButton;
    [(UIControl *)&v6 setContentHorizontalAlignment:alignment];
    _visualProvider = [(UIButton *)self _visualProvider];
    [_visualProvider setContentHorizontalAlignment:alignment];
  }
}

- (void)setContentVerticalAlignment:(int64_t)alignment
{
  if ([(UIControl *)self contentVerticalAlignment]!= alignment)
  {
    v6.receiver = self;
    v6.super_class = UIButton;
    [(UIControl *)&v6 setContentVerticalAlignment:alignment];
    _visualProvider = [(UIButton *)self _visualProvider];
    [_visualProvider setContentVerticalAlignment:alignment];
  }
}

- (void)setRole:(UIButtonRole)role
{
  self->_buttonFlags = (*&self->_buttonFlags & 0xFFFFFFFFFFC03FFFLL | (role << 14));
  _visualProvider = [(UIButton *)self _visualProvider];
  [_visualProvider setRole:role];
}

- (void)_setVisualProvider:(id)provider
{
  providerCopy = provider;
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
    [providerCopy setButton:self];
  }

  objc_storeStrong(&self->_visualProvider, provider);
  v15 = [(UIButton *)self titleForState:0];
  [providerCopy setTitle:v15 forState:0];

  v16 = [(UIButton *)self attributedTitleForState:0];
  [providerCopy setAttributedTitle:v16 forState:0];

  v17 = [(UIButton *)self imageForState:0];
  [providerCopy setImage:v17 forState:0];

  [providerCopy setEnabled:{-[UIControl isEnabled](self, "isEnabled")}];
  [providerCopy setSelected:{-[UIControl isSelected](self, "isSelected")}];
  if ((*&self->_buttonVisualProviderFlags & 4) != 0)
  {
    if (self->_configuration)
    {
      _visualProvider = [(UIButton *)self _visualProvider];
      [_visualProvider automaticallyUpdateConfigurationIfNecessary:self->_configuration];
      [_visualProvider applyConfiguration];
    }

    else
    {
      [(UIButton *)self setNeedsUpdateConfiguration];
    }
  }

  [providerCopy setContextMenuIsPrimary:{-[UIControl showsMenuAsPrimaryAction](self, "showsMenuAsPrimaryAction")}];
  [(UIView *)self invalidateIntrinsicContentSize];
  menu = [(UIButton *)self menu];
  [providerCopy setMenu:menu];
}

+ (void)_registerVisualProviderClass:(Class)class forIdiom:(int64_t)idiom
{
  v6 = __UIButtonIdiomsToVisualProviderClasses;
  if (!__UIButtonIdiomsToVisualProviderClasses)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v8 = __UIButtonIdiomsToVisualProviderClasses;
    __UIButtonIdiomsToVisualProviderClasses = dictionary;

    v6 = __UIButtonIdiomsToVisualProviderClasses;
  }

  v9 = [MEMORY[0x1E696AD98] numberWithInteger:idiom];
  dictionary2 = [v6 objectForKeyedSubscript:v9];

  if (!dictionary2)
  {
    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    v10 = __UIButtonIdiomsToVisualProviderClasses;
    v11 = [MEMORY[0x1E696AD98] numberWithInteger:idiom];
    [v10 setObject:dictionary2 forKeyedSubscript:v11];
  }

  if (([(objc_class *)class instancesRespondToSelector:sel_automaticallyUpdateConfigurationIfNecessary_]& 1) != 0)
  {
    v12 = 2;
  }

  else
  {
    v12 = objc_opt_respondsToSelector() & 1;
  }

  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v12];
  [dictionary2 setObject:class forKeyedSubscript:v13];
}

- (id)visualProviderClassForTraitCollection:(id)collection
{
  userInterfaceIdiom = [collection userInterfaceIdiom];
  _visualProviderClass = [objc_opt_class() _visualProviderClass];
  if (!_visualProviderClass)
  {
    _visualProviderClass = [objc_opt_class() _visualProviderClassForIdiom:userInterfaceIdiom];
    if (!_visualProviderClass)
    {
      v12 = __UIButtonIdiomsToVisualProviderClasses;
      v13 = [MEMORY[0x1E696AD98] numberWithInteger:userInterfaceIdiom];
      v14 = [v12 objectForKey:v13];

      if (v14)
      {
        nextObject = [v14 objectForKeyedSubscript:&unk_1EFE302F8];
        v15 = [v14 objectForKeyedSubscript:&unk_1EFE30310];
        if (self->_configuration || self->_configurationUpdateHandler)
        {
          if (!nextObject)
          {
            nextObject = v15;
          }

          if (nextObject)
          {
LABEL_20:

            goto LABEL_4;
          }
        }

        else
        {
          if (v15)
          {
            nextObject = v15;
          }

          if (nextObject)
          {
            goto LABEL_20;
          }
        }

        objectEnumerator = [v14 objectEnumerator];
        nextObject = [objectEnumerator nextObject];

        if (nextObject)
        {
          goto LABEL_4;
        }
      }

      if (userInterfaceIdiom != 2 || (_visualProviderClass = objc_opt_class()) == 0)
      {
        _visualProviderClass = objc_opt_class();
      }
    }
  }

  nextObject = _visualProviderClass;
LABEL_4:
  if (self->_visualProvider && nextObject == objc_opt_class() && ![nextObject requiresNewVisualProviderForChanges])
  {
    v10 = 0;
  }

  else
  {
    v7 = [nextObject visualProviderForButton:self];
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

- (void)_refreshVisualProviderForTraitCollection:(id)collection populatingAPIProperties:(BOOL)properties
{
  properties = [(UIButton *)self visualProviderClassForTraitCollection:collection, properties];
  if (properties)
  {
    v6 = properties;
    [(UIButton *)self _setVisualProvider:properties];
    properties = v6;
  }
}

- (void)_setImageContentMode:(int64_t)mode
{
  self->__imageContentMode = mode;
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
    _visualProvider = [(UIButton *)self _visualProvider];
    if (!_visualProvider)
    {
      return;
    }

    v7 = self->_buttonVisualProviderFlags;

    if ((v7 & 0x40) == 0)
    {
      return;
    }
  }

  _visualProvider2 = [(UIButton *)self _visualProvider];
  [_visualProvider2 setImageContentMode:mode];
}

- (void)_setDisableAutomaticTitleAnimations:(BOOL)animations
{
  v3 = 0x200000000;
  if (!animations)
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

  _selectionIndicatorView = [(UIButton *)self _selectionIndicatorView];
  superview = [_selectionIndicatorView superview];
  v5 = superview != 0;

  return v5;
}

- (void)_didUpdateFocusInContext:(id)context
{
  contextCopy = context;
  v9.receiver = self;
  v9.super_class = UIButton;
  [(UIView *)&v9 _didUpdateFocusInContext:contextCopy];
  v6 = [_UIFocusAnimationCoordinatorManager animationCoordinatorForContext:contextCopy];
  if (!v6)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIButton.m" lineNumber:1863 description:@"Received call to _didUpdateFocusInContext: outside of a focus update."];
  }

  _visualProvider = [(UIButton *)self _visualProvider];
  [_visualProvider didUpdateFocusInContext:contextCopy withAnimationCoordinator:v6];
}

- (id)_defaultFocusEffect
{
  _visualProvider = [(UIButton *)self _visualProvider];
  defaultFocusEffect = [_visualProvider defaultFocusEffect];
  v5 = defaultFocusEffect;
  if (defaultFocusEffect)
  {
    _defaultFocusEffect = defaultFocusEffect;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = UIButton;
    _defaultFocusEffect = [(UIView *)&v9 _defaultFocusEffect];
  }

  v7 = _defaultFocusEffect;

  return v7;
}

- (double)_focusSizeIncrease
{
  _visualProvider = [(UIButton *)self _visualProvider];
  [_visualProvider focusSizeIncrease];
  v4 = v3;

  return v4;
}

- (void)_setFocusSizeIncrease:(double)increase
{
  _visualProvider = [(UIButton *)self _visualProvider];
  [_visualProvider setFocusSizeIncrease:increase];
}

- (id)_preferredConfigurationForFocusAnimation:(int64_t)animation inContext:(id)context
{
  contextCopy = context;
  _visualProvider = [(UIButton *)self _visualProvider];
  v8 = [_visualProvider preferredConfigurationForFocusAnimation:animation inContext:contextCopy];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = UIButton;
    v10 = [(UIView *)&v13 _preferredConfigurationForFocusAnimation:animation inContext:contextCopy];
  }

  v11 = v10;

  return v11;
}

- (BOOL)beginTrackingWithTouch:(id)touch withEvent:(id)event
{
  touchCopy = touch;
  eventCopy = event;
  _visualProvider = [(UIButton *)self _visualProvider];
  [_visualProvider touchesBegan];

  if (_UIDeviceHasExternalTouchInput())
  {
    v9 = 0;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = UIButton;
    v9 = [(UIControl *)&v11 beginTrackingWithTouch:touchCopy withEvent:eventCopy];
  }

  return v9;
}

- (void)endTrackingWithTouch:(id)touch withEvent:(id)event
{
  eventCopy = event;
  touchCopy = touch;
  _visualProvider = [(UIButton *)self _visualProvider];
  [_visualProvider touchesEnded];

  v9.receiver = self;
  v9.super_class = UIButton;
  [(UIControl *)&v9 endTrackingWithTouch:touchCopy withEvent:eventCopy];
}

- (void)_selectionInteractionDidBeginHinting:(id)hinting
{
  selfCopy = self;
  _focusBehavior = [(UIView *)selfCopy _focusBehavior];
  buttonSelectionMode = [_focusBehavior buttonSelectionMode];

  if ((buttonSelectionMode & 2) != 0 && [(UIControl *)selfCopy isEnabled])
  {
    *&selfCopy->_buttonFlags |= 0x4000000uLL;
    [(UIButton *)selfCopy setHighlighted:1];
  }
}

- (void)_selectionInteractionDidCancelHinting:(id)hinting
{
  selfCopy = self;
  _focusBehavior = [(UIView *)selfCopy _focusBehavior];
  buttonSelectionMode = [_focusBehavior buttonSelectionMode];

  if ((buttonSelectionMode & 2) != 0 && [(UIControl *)selfCopy isHighlighted])
  {
    *&selfCopy->_buttonFlags |= 0x4000000uLL;
    [(UIButton *)selfCopy setHighlighted:0];
    [(UIControl *)selfCopy _setTouchHasHighlighted:0];
  }
}

- (void)_selectionInteractionDidSelect:(id)select
{
  selfCopy = self;
  _focusBehavior = [(UIView *)selfCopy _focusBehavior];
  buttonSelectionMode = [_focusBehavior buttonSelectionMode];

  if ((buttonSelectionMode & 2) != 0 && [(UIControl *)selfCopy isHighlighted])
  {
    *&selfCopy->_buttonFlags |= 0x4000000uLL;
    [(UIButton *)selfCopy setHighlighted:0];
    [(UIControl *)selfCopy _setTouchHasHighlighted:0];
  }

  _focusBehavior2 = [(UIView *)selfCopy _focusBehavior];
  buttonSelectionMode2 = [_focusBehavior2 buttonSelectionMode];

  if (buttonSelectionMode2)
  {
    [(UIControl *)selfCopy sendActionsForControlEvents:1];
    v8 = 64;
  }

  else
  {
    if ([(UIButton *)selfCopy _isToggleButton])
    {
      [(UIButton *)selfCopy setSelected:[(UIControl *)selfCopy isSelected]^ 1];
    }

    v8 = 0x2000;
  }

  [(UIControl *)selfCopy sendActionsForControlEvents:v8];
}

- (UIEdgeInsets)_pathTitleEdgeInsets
{
  traitCollection = [(UIView *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom == 5)
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
  traitCollection = [(UIView *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom == 5)
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
  attributedTitle = [v2 attributedTitle];
  titleColor = [attributedTitle attribute:*off_1E70EC920 atIndex:0 effectiveRange:0];
  if (!titleColor)
  {
    titleColor = [v2 titleColor];
  }

  v5 = titleColor != 0;

  return v5;
}

+ (void)_setVisuallyHighlighted:(BOOL)highlighted forViews:(id)views initialPress:(BOOL)press highlightBlock:(id)block
{
  pressCopy = press;
  highlightedCopy = highlighted;
  viewsCopy = views;
  blockCopy = block;
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __73__UIButton__setVisuallyHighlighted_forViews_initialPress_highlightBlock___block_invoke;
  v18 = &unk_1E70F37C0;
  v11 = viewsCopy;
  v19 = v11;
  v12 = blockCopy;
  v20 = v12;
  v13 = _Block_copy(&v15);
  v14 = v13;
  if (highlightedCopy && pressCopy)
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

+ (void)_setVisuallyHighlighted:(BOOL)highlighted forViews:(id)views initialPress:(BOOL)press baseAlpha:(double)alpha
{
  pressCopy = press;
  highlightedCopy = highlighted;
  v29 = *MEMORY[0x1E69E9840];
  viewsCopy = views;
  firstObject = [viewsCopy firstObject];
  traitCollection = [firstObject traitCollection];
  v13 = [traitCollection userInterfaceStyle] == 2;

  v14 = dbl_18A674F10[v13];
  v26 = 0u;
  v27 = 0u;
  if (highlightedCopy)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1.0;
  }

  v24 = 0uLL;
  v25 = 0uLL;
  v16 = viewsCopy;
  v17 = [v16 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = v15 * alpha;
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
          [self _setVisuallyHighlighted:highlightedCopy forViews:v16 initialPress:pressCopy highlightBlock:v23];
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

- (id)_selectedIndicatorViewWithImage:(id)image
{
  imageCopy = image;
  v4 = objc_alloc_init(UIImageView);
  [(UIImageView *)v4 setImage:imageCopy];

  return v4;
}

- (CGRect)_selectedIndicatorBounds
{
  traitCollection = [(UIView *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  [(UIView *)self bounds];
  [(UIButton *)self contentRectForBounds:?];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  _visualProvider = [(UIButton *)self _visualProvider];
  useTitleForSelectedIndicatorBounds = [_visualProvider useTitleForSelectedIndicatorBounds];

  if (useTitleForSelectedIndicatorBounds)
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
      _visualProvider2 = [(UIButton *)self _visualProvider];
      if (!_visualProvider2)
      {
        goto LABEL_10;
      }

      v25 = self->_buttonVisualProviderFlags;

      if ((v25 & 0x20) == 0)
      {
        goto LABEL_10;
      }
    }

    _visualProvider3 = [(UIButton *)self _visualProvider];
    font = [_visualProvider3 font];
    [font pointSize];

    goto LABEL_10;
  }

  [(UIButton *)self imageRectForContentRect:v6, v8, v10, v12];
  if (userInterfaceIdiom == 5)
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
  _visualProvider = [(UIButton *)self _visualProvider];
  selectionIndicatorView = [_visualProvider selectionIndicatorView];

  return selectionIndicatorView;
}

- (void)_willMoveToWindow:(id)window
{
  v6.receiver = self;
  v6.super_class = UIButton;
  windowCopy = window;
  [(UIControl *)&v6 _willMoveToWindow:windowCopy];
  v5 = [(UIButton *)self _visualProvider:v6.receiver];
  [v5 willMoveToWindow:windowCopy];
}

- (void)_didMoveFromWindow:(id)window toWindow:(id)toWindow
{
  windowCopy = window;
  toWindowCopy = toWindow;
  v14.receiver = self;
  v14.super_class = UIButton;
  [(UIControl *)&v14 _didMoveFromWindow:windowCopy toWindow:toWindowCopy];
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

- (int64_t)_externalDrawingStyleForState:(unint64_t)state
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

- (id)_externalTitleColorForState:(unint64_t)state isTintColor:(BOOL *)color
{
  if (![(UIButton *)self _isCarPlaySystemTypeButton])
  {
    v7 = 0;
    _externalFocusedTitleColor = 0;
    if (!color)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (![(UIButton *)self canBecomeFocused]|| [(UIView *)self isFocused])
  {
    _externalFocusedTitleColor = [(UIButton *)self _externalFocusedTitleColor];
    v7 = 0;
    if (!color)
    {
      goto LABEL_8;
    }

LABEL_7:
    *color = v7;
    goto LABEL_8;
  }

  _externalFocusedTitleColor = [(UIView *)self tintColor];
  v7 = 1;
  if (color)
  {
    goto LABEL_7;
  }

LABEL_8:

  return _externalFocusedTitleColor;
}

- (id)_externalBorderColorForState:(unint64_t)state
{
  stateCopy = state;
  if (![(UIButton *)self _isCarPlaySystemTypeButton])
  {
    v6 = 0;
    goto LABEL_13;
  }

  if ([(UIButton *)self canBecomeFocused]&& ![(UIView *)self isFocused])
  {
    _externalUnfocusedBorderColor = [(UIButton *)self _externalUnfocusedBorderColor];
  }

  else
  {
    _externalUnfocusedBorderColor = [(UIView *)self tintColor];
  }

  v6 = _externalUnfocusedBorderColor;
  if ((stateCopy & 2) != 0)
  {
    _isEffectivelyDisabledExternalButton = 1;
    if (!v6)
    {
      goto LABEL_13;
    }
  }

  else
  {
    _isEffectivelyDisabledExternalButton = [(UIButton *)self _isEffectivelyDisabledExternalButton];
    if (!v6)
    {
      goto LABEL_13;
    }
  }

  if (_isEffectivelyDisabledExternalButton)
  {
    v8 = [UIColor _disabledColorForColor:v6];

    v6 = v8;
  }

LABEL_13:

  return v6;
}

- (id)_externalImageColorForState:(unint64_t)state
{
  if ([(UIButton *)self _isCarPlaySystemTypeButton])
  {
    v5 = [(UIButton *)self _externalTitleColorForState:state isTintColor:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_setExternalFlatEdge:(unint64_t)edge
{
  self->_externalFlatEdge = edge;
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
    _visualProvider = [(UIButton *)self _visualProvider];
    if (!_visualProvider)
    {
      return;
    }

    v7 = self->_buttonVisualProviderFlags;

    if ((v7 & 0x40) == 0)
    {
      return;
    }
  }

  _visualProvider2 = [(UIButton *)self _visualProvider];
  [_visualProvider2 setExternalFlatEdge:edge];
}

- (id)_borderColorForState:(unint64_t)state
{
  if ([(UIButton *)self _isCarPlaySystemTypeButton])
  {
    v5 = [(UIButton *)self _externalBorderColorForState:state];

    if (v5)
    {
      _inheritedInteractionTintColor = [(UIButton *)self _externalBorderColorForState:state];
      goto LABEL_11;
    }
  }

  if ((state & 1) == 0)
  {
    if ([(UIButton *)self _buttonType]== 3)
    {
      v7 = 0.2;
      v8 = 1.0;
LABEL_9:
      _inheritedInteractionTintColor = [UIColor colorWithWhite:v8 alpha:v7];
      goto LABEL_11;
    }

    if ([(UIButton *)self _buttonType]== 4)
    {
      v8 = 0.8;
      v7 = 1.0;
      goto LABEL_9;
    }
  }

  _inheritedInteractionTintColor = [(UIView *)self _inheritedInteractionTintColor];
LABEL_11:

  return _inheritedInteractionTintColor;
}

- (void)_setTitleFrozen:(BOOL)frozen
{
  v3 = 0x800000;
  if (!frozen)
  {
    v3 = 0;
  }

  self->_buttonFlags = (*&self->_buttonFlags & 0xFFFFFFFFFF7FFFFFLL | v3);
}

- (void)setSemanticContentAttribute:(int64_t)attribute
{
  v6.receiver = self;
  v6.super_class = UIButton;
  [(UIView *)&v6 setSemanticContentAttribute:?];
  _visualProvider = [(UIButton *)self _visualProvider];
  [_visualProvider setSemanticContentAttribute:attribute];
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  view = [beginCopy view];
  v6 = view == self || ![beginCopy _isGestureType:0] || objc_msgSend(beginCopy, "numberOfTouchesRequired") != 1 || objc_msgSend(beginCopy, "numberOfTapsRequired") != 1;

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

- (uint64_t)_setContentValue:(void *)value forField:(uint64_t)field state:
{
  v7 = a2;
  valueCopy = value;
  if (self)
  {
    v9 = [self _contentForState:field];
    if (!v9)
    {
      v9 = objc_alloc_init(UIButtonContent);
      [self _setContent:v9 forState:field];
    }

    if ([valueCopy isEqualToString:@"attributedTitle"])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = [(_NSAttributedStringIntentResolver *)_UIAttributedStringIntentResolver attributedStringByResolvingString:v7];

        v7 = v10;
      }
    }

    v11 = [(UIButtonContent *)v9 valueForKey:valueCopy];
    v12 = v11;
    if (v11 == v7)
    {
      v14 = 0;
    }

    else
    {
      v13 = [v11 isEqual:v7];
      v14 = v13 ^ 1u;
      if ((~self[11] & 0x210000000000000) == 0 && (v13 & 1) == 0)
      {
        [self invalidateIntrinsicContentSize];
      }
    }

    [(UIButtonContent *)v9 setValue:v7 forKey:valueCopy];
    if ([valueCopy isEqualToString:@"title"])
    {
      [(UIButtonContent *)v9 updateVariableLengthStringForView:self];
    }

    if ([valueCopy isEqualToString:@"titleColor"])
    {
      self[77] |= 0x80000000uLL;
    }

    if (!v7 && [(UIButtonContent *)v9 isEmpty])
    {
      [self _setContent:0 forState:field];
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
      if (!field && v16 && [valueCopy isEqualToString:@"background"] && objc_msgSend(self, "_wantsAccessibilityUnderline"))
      {
        _titleView = [self _titleView];
        [_titleView _setWantsUnderlineForAccessibilityButtonShapesEnabled:v7 == 0];
      }
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)_markAndLayoutAsNeededForField:(uint64_t)field state:
{
  v8 = a2;
  if (self)
  {
    if (dyld_program_sdk_at_least())
    {
      if ([self state] == field || !field && (objc_msgSend(self, "_contentForState:", objc_msgSend(self, "state")), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "valueForKey:", v8), v7 = objc_claimAutoreleasedReturnValue(), v7, v6, !v7))
      {
        [self _invalidateForPropertyChange];
      }
    }

    else
    {
      [self setNeedsLayout];
      if ([self state] == field)
      {
        window = [self window];

        if (window)
        {
          [self layoutBelowIfNeeded];
        }
      }
    }
  }
}

- (void)setTitle:(NSString *)title forState:(UIControlState)state
{
  v6 = title;
  v7 = [(UIButton *)self _setContentValue:v6 forField:@"title" state:state];
  _visualProvider = [(UIButton *)self _visualProvider];
  [_visualProvider setTitle:v6 forState:state];

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

- (void)_setImageColor:(id)color forState:(unint64_t)state
{
  if ([(UIButton *)self _setContentValue:color forField:@"imageColor" state:state])
  {

    [(UIButton *)self _markAndLayoutAsNeededForField:state state:?];
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
  _visualProvider = [(UIButton *)self _visualProvider];
  [_visualProvider setImage:v6 forState:state];

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
  _visualProvider = [(UIButton *)self _visualProvider];
  [_visualProvider setPreferredSymbolConfiguration:v6 forImageInState:state];

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
  _visualProvider = [(UIButton *)self _visualProvider];
  [_visualProvider setAttributedTitle:v6 forState:state];

  if ([(UIButton *)self autosizesToFit])
  {
    [(UIView *)self sizeToFit];
  }

  if (v7)
  {

    [(UIButton *)self _markAndLayoutAsNeededForField:state state:?];
  }
}

- (void)_setSubtitle:(id)subtitle forState:(unint64_t)state
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"UIButton.m" lineNumber:2521 description:@"Set a subtitle on the configuration itself"];
}

- (void)_setAttributedSubtitle:(id)subtitle forState:(unint64_t)state
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"UIButton.m" lineNumber:2525 description:@"Set a subtitle on the configuration itself"];
}

- (id)_subtitleForState:(unint64_t)state
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"UIButton.m" lineNumber:2558 description:@"This method currently does nothing. Come back later please."];

  return 0;
}

- (id)_attributedSubtitleForState:(unint64_t)state
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"UIButton.m" lineNumber:2563 description:@"This method currently does nothing. Come back later please."];

  return 0;
}

- (UIColor)currentTitleColor
{
  state = [(UIControl *)self state];

  return [(UIButton *)self titleColorForState:state];
}

- (UIColor)_currentImageColor
{
  state = [(UIControl *)self state];

  return [(UIButton *)self _imageColorForState:state];
}

- (UIColor)currentTitleShadowColor
{
  state = [(UIControl *)self state];

  return [(UIButton *)self titleShadowColorForState:state];
}

- (NSAttributedString)currentAttributedTitle
{
  state = [(UIControl *)self state];

  return [(UIButton *)self attributedTitleForState:state];
}

- (UIImageSymbolConfiguration)currentPreferredSymbolConfiguration
{
  state = [(UIControl *)self state];

  return [(UIButton *)self preferredSymbolConfigurationForImageInState:state];
}

- (id)_currentImageWithResolvedConfiguration
{
  buttonVisualProviderFlags = self->_buttonVisualProviderFlags;
  if (buttonVisualProviderFlags)
  {
    if ((buttonVisualProviderFlags & 0x40) != 0)
    {
LABEL_4:
      _visualProvider = [(UIButton *)self _visualProvider];
      currentImageWithResolvedConfiguration = [_visualProvider currentImageWithResolvedConfiguration];

      goto LABEL_7;
    }
  }

  else
  {
    _visualProvider2 = [(UIButton *)self _visualProvider];
    if (_visualProvider2)
    {
      v5 = self->_buttonVisualProviderFlags;

      if ((v5 & 0x40) != 0)
      {
        goto LABEL_4;
      }
    }
  }

  currentImageWithResolvedConfiguration = 0;
LABEL_7:

  return currentImageWithResolvedConfiguration;
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
  _visualProvider = [(UIButton *)self _visualProvider];
  [_visualProvider contentRectForBounds:{x, y, width, height}];
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
  _visualProvider = [(UIButton *)self _visualProvider];
  [_visualProvider titleRectForContentRect:{x, y, width, height}];
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
  _visualProvider = [(UIButton *)self _visualProvider];
  [_visualProvider imageRectForContentRect:{x, y, width, height}];
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

- (void)_setContentHuggingPriorities:(CGSize)priorities
{
  width = priorities.width;
  if (priorities.width < 1.0 || priorities.height < 1.0)
  {
    v8 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"UIButton content-hugging priorities must be >= 1." userInfo:{0, 1.0, priorities.height}];
    objc_exception_throw(v8);
  }

  height = priorities.height;
  v9.receiver = self;
  v9.super_class = UIButton;
  [(UIView *)&v9 _setContentHuggingPriorities:priorities.width];
  _visualProvider = [(UIButton *)self _visualProvider];
  [_visualProvider setContentHuggingPriorities:{width, height}];
}

- (BOOL)_shouldInvalidateBaselineConstraintsForSize:(CGSize)size oldSize:(CGSize)oldSize
{
  height = oldSize.height;
  width = oldSize.width;
  v6 = size.height;
  v7 = size.width;
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

  _visualProvider = [(UIButton *)self _visualProvider];
  if (!_visualProvider)
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

  _visualProvider2 = [(UIButton *)self _visualProvider];
  vendsBaselineInformationToAutoLayout = [_visualProvider2 vendsBaselineInformationToAutoLayout];

  return vendsBaselineInformationToAutoLayout;
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)_baselineOffsetsAtSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  _visualProvider = [(UIButton *)self _visualProvider];
  [_visualProvider baselineOffsetsAtSize:{width, height}];
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

  _visualProvider = [(UIButton *)self _visualProvider];
  if (!_visualProvider || (v6 = self->_buttonVisualProviderFlags, _visualProvider, (v6 & 4) == 0))
  {
LABEL_6:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIButton.m" lineNumber:2693 description:@"Unexpected use of baseline-updating UIButton"];
  }

LABEL_7:
  _visualProvider2 = [(UIButton *)self _visualProvider];
  [_visualProvider2 updateBaselineInformationDependentOnBounds];
}

- (double)_baselineOffsetFromNearestEdgeForLayoutAttribute:(int64_t)attribute
{
  v12.receiver = self;
  v12.super_class = UIButton;
  [(UIView *)&v12 _baselineOffsetFromNearestEdgeForLayoutAttribute:?];
  v6 = v5;
  buttonVisualProviderFlags = self->_buttonVisualProviderFlags;
  if (buttonVisualProviderFlags)
  {
    if ((attribute - 11) > 1 || (buttonVisualProviderFlags & 4) == 0)
    {
      return v6;
    }
  }

  else
  {
    _visualProvider = [(UIButton *)self _visualProvider];
    _visualProvider3 = _visualProvider;
    if (!_visualProvider || (*&self->_buttonVisualProviderFlags & 4) == 0)
    {
      goto LABEL_12;
    }

    if ((attribute - 11) > 1)
    {
      return v6;
    }
  }

  _visualProvider2 = [(UIButton *)self _visualProvider];
  [_visualProvider2 setVendsBaselineInformationToAutoLayout:1];

  if (attribute == 11)
  {
    _visualProvider3 = [(UIButton *)self _visualProvider];
    [_visualProvider3 setPreviousLastBaselineOffsetForAttributeLowering:v6];
    goto LABEL_12;
  }

  if (attribute == 12)
  {
    _visualProvider3 = [(UIButton *)self _visualProvider];
    [_visualProvider3 setPreviousFirstBaselineOffsetForAttributeLowering:v6];
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
    _visualProvider = [(UIButton *)self _visualProvider];
    if (_visualProvider)
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

- (CGSize)_roundSize:(CGSize)size
{
  v3 = ceil(size.width);
  v4 = ceil(size.height);
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)_prepareForSecondIntrinsicContentSizeCalculationWithLayoutEngineBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  buttonVisualProviderFlags = self->_buttonVisualProviderFlags;
  if (buttonVisualProviderFlags)
  {
    if ((buttonVisualProviderFlags & 4) != 0)
    {
      goto LABEL_7;
    }

LABEL_6:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIButton.m" lineNumber:2764 description:@"Unexpected use of multiline text content sizing in UIButton"];

    goto LABEL_7;
  }

  _visualProvider = [(UIButton *)self _visualProvider];
  if (!_visualProvider)
  {
    goto LABEL_6;
  }

  v11 = self->_buttonVisualProviderFlags;

  if ((v11 & 4) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  _visualProvider2 = [(UIButton *)self _visualProvider];
  [(UIView *)self alignmentRectForFrame:x, y, width, height];
  [_visualProvider2 setWidthForMultilineTextLayout:CGRectGetWidth(v15)];

  v14.receiver = self;
  v14.super_class = UIButton;
  [(UIView *)&v14 _prepareForSecondIntrinsicContentSizeCalculationWithLayoutEngineBounds:x, y, width, height];
}

- (CGSize)_intrinsicSizeWithinSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  _visualProvider = [(UIButton *)self _visualProvider];
  [_visualProvider intrinsicSizeWithinSize:{width, height}];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority
{
  height = size.height;
  width = size.width;
  buttonVisualProviderFlags = self->_buttonVisualProviderFlags;
  if ((buttonVisualProviderFlags & 1) == 0)
  {
    _visualProvider = [(UIButton *)self _visualProvider];
    if (_visualProvider)
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
    *&v22 = priority;
    *&v23 = fittingPriority;
    [(UIView *)&v24 systemLayoutSizeFittingSize:width withHorizontalFittingPriority:height verticalFittingPriority:v22, v23];
    goto LABEL_7;
  }

  if ((buttonVisualProviderFlags & 4) == 0)
  {
    goto LABEL_6;
  }

LABEL_4:
  _visualProvider2 = [(UIButton *)self _visualProvider];
  *&v14 = priority;
  *&v15 = fittingPriority;
  [_visualProvider2 systemLayoutSizeFittingSize:width withHorizontalFittingPriority:height verticalFittingPriority:{v14, v15}];
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
  _visualProvider = [(UIButton *)self _visualProvider];
  contentBackdropView = [_visualProvider contentBackdropView];

  return contentBackdropView;
}

- (void)_setVisualEffectViewEnabled:(BOOL)enabled backgroundColor:(id)color
{
  enabledCopy = enabled;
  colorCopy = color;
  v6 = 0x10000000;
  if (!enabledCopy)
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

  _visualProvider = [(UIButton *)self _visualProvider];
  if (_visualProvider)
  {
    v9 = self->_buttonVisualProviderFlags;

    if ((v9 & 0x10) != 0)
    {
LABEL_8:
      _visualProvider2 = [(UIButton *)self _visualProvider];
      [_visualProvider2 setVisualEffectViewEnabled:enabledCopy backgroundColor:colorCopy];
    }
  }

LABEL_9:
}

- (void)_setBlurEnabled:(BOOL)enabled
{
  if (((((*&self->_buttonFlags & 0x8000000) == 0) ^ enabled) & 1) == 0)
  {
    enabledCopy = enabled;
    v5 = 0x8000000;
    if (!enabled)
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
      _visualProvider = [(UIButton *)self _visualProvider];
      if (!_visualProvider)
      {
        return;
      }

      v8 = self->_buttonVisualProviderFlags;

      if ((v8 & 0x10) == 0)
      {
        return;
      }
    }

    _visualProvider2 = [(UIButton *)self _visualProvider];
    [_visualProvider2 setBlurEnabled:enabledCopy];
  }
}

- (UIView)_imageEffectContainerView
{
  _visualProvider = [(UIButton *)self _visualProvider];
  imageEffectContainerView = [_visualProvider imageEffectContainerView];

  return imageEffectContainerView;
}

- (void)_setWantsAccessibilityUnderline:(BOOL)underline
{
  v3 = 0x20000000;
  if (underline)
  {
    v3 = 0;
  }

  self->_buttonFlags = (*&self->_buttonFlags & 0xFFFFFFFFDFFFFFFFLL | v3);
}

- (void)_setButtonType:(int64_t)type
{
  self->_buttonFlags = (*&self->_buttonFlags & 0xFFFFFFFFFFFFC03FLL | (type << 6));
  if (type == 7)
  {
    [(UIControl *)self setPointerInteractionEnabled:1];
  }

  [(UIButton *)self _refreshVisualProvider];
}

- (void)_setShouldHandleScrollerMouseEvent:(BOOL)event
{
  v3 = 0x400000;
  if (!event)
  {
    v3 = 0;
  }

  self->_buttonFlags = (*&self->_buttonFlags & 0xFFFFFFFFFFBFFFFFLL | v3);
}

- (void)setAutosizesToFit:(BOOL)fit
{
  if (((((*&self->_buttonFlags & 8) == 0) ^ fit) & 1) == 0)
  {
    v3 = 8;
    if (!fit)
    {
      v3 = 0;
    }

    self->_buttonFlags = (*&self->_buttonFlags & 0xFFFFFFFFFFFFFFF7 | v3);
    if (fit)
    {
      [(UIView *)self sizeToFit];
    }
  }
}

- (void)setDisabledDimsImage:(BOOL)image
{
  if (((((*&self->_buttonFlags & 0x10) == 0) ^ image) & 1) == 0)
  {
    v3 = 16;
    if (!image)
    {
      v3 = 0;
    }

    self->_buttonFlags = (*&self->_buttonFlags & 0xFFFFFFFFFFFFFFEFLL | v3);
    [(UIButton *)self setNeedsLayout];
  }
}

- (void)setTitle:(id)title forStates:(unint64_t)states
{
  [(UIButton *)self _setTitle:title forStates:states];
  if ([(UIButton *)self autosizesToFit])
  {
    [(UIView *)self sizeToFit];
  }

  [(UIButton *)self setNeedsLayout];
}

- (void)setTitleColor:(id)color forStates:(unint64_t)states
{
  [(UIButton *)self _setTitleColor:color forStates:states];

  [(UIButton *)self setNeedsLayout];
}

- (void)setTitleShadowColor:(id)color forStates:(unint64_t)states
{
  [(UIButton *)self _setShadowColor:color forStates:states];

  [(UIButton *)self setNeedsLayout];
}

- (void)setImage:(id)image forStates:(unint64_t)states
{
  [(UIButton *)self _setImage:image forStates:states];
  if ([(UIButton *)self autosizesToFit])
  {
    [(UIView *)self sizeToFit];
  }

  [(UIButton *)self setNeedsLayout];
}

- (void)setBackgroundImage:(id)image forStates:(unint64_t)states
{
  [(UIButton *)self _setBackground:image forStates:states];
  if ([(UIButton *)self autosizesToFit])
  {
    [(UIView *)self sizeToFit];
  }

  [(UIButton *)self setNeedsLayout];
}

- (id)_defaultFontForIdiom:(int64_t)idiom
{
  v3 = 15.0;
  if (idiom == 5)
  {
    v3 = 13.0;
  }

  return [off_1E70ECC18 systemFontOfSize:v3];
}

- (void)_setFont:(id)font isDefaultForIdiom:(BOOL)idiom
{
  idiomCopy = idiom;
  fontCopy = font;
  buttonVisualProviderFlags = self->_buttonVisualProviderFlags;
  if (buttonVisualProviderFlags)
  {
    if ((buttonVisualProviderFlags & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  _visualProvider = [(UIButton *)self _visualProvider];
  if (_visualProvider)
  {
    v8 = self->_buttonVisualProviderFlags;

    if ((v8 & 0x20) != 0)
    {
LABEL_6:
      _visualProvider2 = [(UIButton *)self _visualProvider];
      [_visualProvider2 setFont:fontCopy isDefaultForIdiom:idiomCopy];
    }
  }

LABEL_7:
}

- (id)_lazyTitleViewFontIsDefaultForIdiom:(BOOL *)idiom
{
  if (idiom)
  {
    *idiom = self->_lazyTitleViewFontIsDefaultForIdiom;
  }

  return self->_lazyTitleViewFont;
}

- (void)_resetLazyTitleViewFont
{
  lazyTitleViewFont = self->_lazyTitleViewFont;
  self->_lazyTitleViewFont = 0;

  self->_lazyTitleViewFontIsDefaultForIdiom = 0;
}

- (void)_setLineBreakMode:(int64_t)mode
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
    _visualProvider = [(UIButton *)self _visualProvider];
    if (!_visualProvider)
    {
      return;
    }

    v7 = self->_buttonVisualProviderFlags;

    if ((v7 & 0x20) == 0)
    {
      return;
    }
  }

  _visualProvider2 = [(UIButton *)self _visualProvider];
  [_visualProvider2 setLineBreakMode:mode];
}

- (CGSize)_titleShadowOffset
{
  buttonVisualProviderFlags = self->_buttonVisualProviderFlags;
  if ((buttonVisualProviderFlags & 1) == 0)
  {
    _visualProvider = [(UIButton *)self _visualProvider];
    if (_visualProvider)
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
  _visualProvider2 = [(UIButton *)self _visualProvider];
  [_visualProvider2 titleShadowOffset];
  v8 = v7;
  v10 = v9;

LABEL_7:
  v11 = v8;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (void)_setTitleShadowOffset:(CGSize)offset
{
  height = offset.height;
  width = offset.width;
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
    _visualProvider = [(UIButton *)self _visualProvider];
    if (!_visualProvider)
    {
      return;
    }

    v8 = self->_buttonVisualProviderFlags;

    if ((v8 & 0x20) == 0)
    {
      return;
    }
  }

  _visualProvider2 = [(UIButton *)self _visualProvider];
  [_visualProvider2 setTitleShadowOffset:{width, height}];
}

- (double)_drawingStrokeForStyle:(int64_t)style
{
  result = 0.0;
  if (style == 1)
  {
    result = 1.0;
  }

  if (style == 2)
  {
    return -1.0;
  }

  return result;
}

- (int64_t)_drawingStyleForStroke:(double)stroke
{
  v3 = fabs(stroke);
  v4 = 2;
  if (stroke >= 0.0)
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

- (void)_setDrawingStyle:(int64_t)style forState:(unint64_t)state
{
  [(UIButton *)self _drawingStrokeForStyle:style];

  [(UIButton *)self _setDrawingStroke:state forState:?];
}

- (int64_t)_drawingStyleForState:(unint64_t)state
{
  [(UIButton *)self _drawingStrokeForState:state];

  return [(UIButton *)self _drawingStyleForStroke:?];
}

- (void)_setDrawingStroke:(double)stroke forState:(unint64_t)state
{
  if (fabs(stroke) < 2.22044605e-16)
  {
    v7 = 0;
  }

  else
  {
    v7 = [MEMORY[0x1E696AD98] numberWithDouble:stroke];
  }

  v13 = v7;
  [(UIButton *)self _setContentValue:v7 forField:@"drawingStroke" state:state];
  buttonVisualProviderFlags = self->_buttonVisualProviderFlags;
  if (buttonVisualProviderFlags)
  {
    if ((buttonVisualProviderFlags & 0x40) == 0)
    {
      goto LABEL_10;
    }

LABEL_9:
    _visualProvider = [(UIButton *)self _visualProvider];
    [_visualProvider setDrawingStroke:state forState:stroke];

    goto LABEL_10;
  }

  _visualProvider2 = [(UIButton *)self _visualProvider];
  if (_visualProvider2)
  {
    v10 = self->_buttonVisualProviderFlags;

    if ((v10 & 0x40) != 0)
    {
      goto LABEL_9;
    }
  }

LABEL_10:
  [(UIButton *)self setNeedsLayout];
  if ([(UIControl *)self state]== state)
  {
    window = [(UIView *)self window];

    if (window)
    {
      [(UIView *)self layoutBelowIfNeeded];
    }
  }
}

- (double)_drawingStrokeForState:(unint64_t)state
{
  v5 = [(UIButton *)self _contentForState:?];
  drawingStroke = [v5 drawingStroke];

  if (!drawingStroke)
  {
    if ([(UIButton *)self _isCarPlaySystemTypeButton]&& [(UIButton *)self _externalDrawingStyleForState:state])
    {
      v7 = MEMORY[0x1E696AD98];
      [(UIButton *)self _drawingStrokeForStyle:[(UIButton *)self _externalDrawingStyleForState:state]];
      drawingStroke = [v7 numberWithDouble:?];
    }

    else
    {
      v8 = [(UIButton *)self _contentForState:0];
      drawingStroke = [v8 drawingStroke];
    }
  }

  [drawingStroke doubleValue];
  v10 = v9;

  return v10;
}

- (void)_setContentBackgroundHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  v5 = +[UIColor clearColor];
  [(UIButton *)self _setVisualEffectViewEnabled:!hiddenCopy backgroundColor:v5];

  [(UIButton *)self setNeedsLayout];
}

- (BOOL)_isOn
{
  _visualProvider = [(UIButton *)self _visualProvider];
  isOn = [_visualProvider isOn];

  return isOn;
}

- (void)_setOn:(BOOL)on
{
  onCopy = on;
  _visualProvider = [(UIButton *)self _visualProvider];
  [_visualProvider setOn:onCopy];
}

- (void)_setContent:(id)content forState:(unint64_t)state
{
  contentCopy = content;
  contentLookup = self->_contentLookup;
  if (!contentLookup)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v8 = self->_contentLookup;
    self->_contentLookup = dictionary;

    contentLookup = self->_contentLookup;
  }

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:state];
  [(NSMutableDictionary *)contentLookup setObject:contentCopy forKeyedSubscript:v9];
}

- (void)_setImage:(id)image forStates:(unint64_t)states
{
  if (self)
  {
    do
    {
      [(UIButton *)self _setContentValue:image forField:@"image" state:states & -states];
      states &= states - 1;
    }

    while (states);
  }
}

- (void)_setBackground:(id)background forStates:(unint64_t)states
{
  if (self)
  {
    do
    {
      [(UIButton *)self _setContentValue:background forField:@"background" state:states & -states];
      states &= states - 1;
    }

    while (states);
  }
}

- (void)_setTitle:(id)title forStates:(unint64_t)states
{
  if (self)
  {
    do
    {
      [(UIButton *)self _setContentValue:title forField:@"title" state:states & -states];
      states &= states - 1;
    }

    while (states);
  }
}

- (void)_setTitleColor:(id)color forStates:(unint64_t)states
{
  if (self)
  {
    do
    {
      [(UIButton *)self _setContentValue:color forField:@"titleColor" state:states & -states];
      states &= states - 1;
    }

    while (states);
  }
}

- (void)_setImageColor:(id)color forStates:(unint64_t)states
{
  if (self)
  {
    do
    {
      [(UIButton *)self _setContentValue:color forField:@"imageColor" state:states & -states];
      states &= states - 1;
    }

    while (states);
  }
}

- (void)_setShadowColor:(id)color forStates:(unint64_t)states
{
  if (self)
  {
    do
    {
      [(UIButton *)self _setContentValue:color forField:@"shadowColor" state:states & -states];
      states &= states - 1;
    }

    while (states);
  }
}

- (void)_setAttributedTitle:(id)title forStates:(unint64_t)states
{
  if (self)
  {
    do
    {
      [(UIButton *)self _setContentValue:title forField:@"attributedTitle" state:states & -states];
      states &= states - 1;
    }

    while (states);
  }
}

- (id)_contentForState:(unint64_t)state
{
  contentLookup = self->_contentLookup;
  if (contentLookup)
  {
    if ((~state & 3) == 0)
    {
      state &= ~2uLL;
    }

    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:state];
    contentLookup = [contentLookup objectForKeyedSubscript:v4];
  }

  return contentLookup;
}

- (id)_allButtonContent
{
  v2 = [(NSMutableDictionary *)self->_contentLookup copy];

  return v2;
}

- (id)_archivableContent:(id *)content
{
  v48[1] = *MEMORY[0x1E69E9840];
  traitCollection = [(UIView *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  v5 = objc_opt_class();
  buttonFlags = self->_buttonFlags;
  v7 = [objc_opt_class() _defaultSymbolConfigurationForType:(*&buttonFlags >> 6) andState:0 compact:0 idiom:userInterfaceIdiom];
  v47 = [v5 _defaultImageForType:(*&buttonFlags >> 6) andState:0 withConfiguration:v7];
  v8 = objc_opt_class();
  v9 = self->_buttonFlags;
  v10 = [objc_opt_class() _defaultSymbolConfigurationForType:(*&v9 >> 6) andState:1 compact:0 idiom:userInterfaceIdiom];
  v48[0] = [v8 _defaultImageForType:(*&v9 >> 6) andState:1 withConfiguration:v10];

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  dictionary2 = [MEMORY[0x1E695DF90] dictionary];
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
        unsignedIntegerValue = [v40 unsignedIntegerValue];
        v41 = [(NSMutableDictionary *)self->_contentLookup objectForKeyedSubscript:v40];
        image = [v41 image];
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
            v22 = unsignedIntegerValue == v20;
          }

          else
          {
            v22 = 0;
          }

          if (v22)
          {
            v23 = dictionary2;
            v24 = v23;
            if (image && v21 != image)
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

              v29 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:unsignedIntegerValue];
              [v28 addObject:v29];
            }
          }

          v18 = 0;
          v17 = v48;
          v16 = 1;
        }

        while ((v19 & 1) != 0);
        [dictionary setObject:v41 forKey:v40];

        v12 = v39 + 1;
      }

      while (v39 + 1 != v38);
      v38 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v42 objects:v46 count:16];
    }

    while (v38);
  }

  if (content)
  {
    v30 = dictionary2;
    *content = dictionary2;
  }

  for (i = 1; i != -1; --i)
  {
  }

  return dictionary;
}

- (void)_takeContentFromArchivableContent:(id)content
{
  v16 = *MEMORY[0x1E69E9840];
  contentCopy = content;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [contentCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(contentCopy);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        v10 = [contentCopy objectForKey:v9];
        -[UIButton _setContent:forState:](self, "_setContent:forState:", v10, [v9 integerValue]);
      }

      v6 = [contentCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

+ (id)_defaultImageNameForType:(int64_t)type andState:(unint64_t)state
{
  if (type == 7)
  {
    return @"xmark";
  }

  else
  {
    return 0;
  }
}

+ (id)_defaultImageForType:(int64_t)type andState:(unint64_t)state withConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v9 = [self _defaultImageNameForType:type andState:state];
  v10 = v9;
  if (type <= 118)
  {
    if (type <= 3)
    {
      if (type == 2)
      {
        goto LABEL_19;
      }

      if (type != 3)
      {
        goto LABEL_15;
      }
    }

    else if (type != 4)
    {
      if (type == 5)
      {
        v11 = @"plus.circle";
        v12 = @"UIAccessoryButtonPlus";
        goto LABEL_24;
      }

      if (type == 118)
      {
        v11 = @"exclamationmark.circle";
        v12 = @"UIAccessoryButtonExclamationMark";
LABEL_24:

        v10 = v11;
        goto LABEL_25;
      }

      goto LABEL_15;
    }

    if (state)
    {
      goto LABEL_15;
    }

LABEL_19:
    v11 = @"info.circle";
    v12 = @"UIAccessoryButtonInfo";
    goto LABEL_24;
  }

  if (type <= 120)
  {
    if (type == 119)
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

  switch(type)
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
    v14 = [UIImage _systemImageNamed:v10 fallback:v12 withConfiguration:configurationCopy];
    v13 = v10;
  }

  return v14;
}

- (id)_imageForState:(unint64_t)state applyingConfiguration:(BOOL)configuration usesImageForNormalState:(BOOL *)normalState
{
  configurationCopy = configuration;
  v9 = [(UIButton *)self _contentForState:?];
  image = [v9 image];

  if (image)
  {
LABEL_2:
    v11 = 0;
    if (!configurationCopy)
    {
      goto LABEL_9;
    }

    goto LABEL_6;
  }

  v12 = [(UIButton *)self _contentForState:0];
  image = [v12 image];

  if (!image)
  {
    v19 = [(UIButton *)self _preferredConfigurationForState:state];
    image = [(UIButton *)self _defaultImageForState:state withConfiguration:v19];

    if (image)
    {
      goto LABEL_2;
    }

    v20 = [(UIButton *)self _preferredConfigurationForState:state];
    image = [(UIButton *)self _defaultImageForState:0 withConfiguration:v20];
  }

  v11 = 1;
  if (!configurationCopy)
  {
    goto LABEL_9;
  }

LABEL_6:
  if ([image _isSymbolImage])
  {
    v13 = [(UIButton *)self _preferredConfigurationForState:state];
    if (v13)
    {
      v14 = v13;
      symbolConfiguration = [image symbolConfiguration];
      v16 = [v14 configurationByApplyingConfiguration:symbolConfiguration];

      v17 = [image imageWithConfiguration:v16];

      image = v17;
    }
  }

LABEL_9:
  if (normalState)
  {
    *normalState = v11;
  }

  return image;
}

+ (id)_defaultSymbolConfigurationForType:(int64_t)type andState:(unint64_t)state compact:(BOOL)compact idiom:(int64_t)idiom
{
  if (type != 7)
  {
    if (!type)
    {
      idiom = [UIImageSymbolConfiguration configurationWithScale:2, state, compact, idiom];
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (idiom == 6)
  {
    v8 = @"UICTFontTextStyleTitle3";
    v9 = 2;
LABEL_9:
    idiom = [UIImageSymbolConfiguration configurationWithTextStyle:v8 scale:v9, compact];
    goto LABEL_10;
  }

  compactCopy = compact;
  if (_UISolariumEnabled())
  {
LABEL_8:
    v8 = @"UICTFontTextStyleBody";
    v9 = 3;
    goto LABEL_9;
  }

  v12 = 15.0;
  if (idiom == 5)
  {
    v12 = 12.0;
  }

  if (compactCopy)
  {
    v13 = 1;
  }

  else
  {
    v13 = 2;
  }

  idiom = [UIImageSymbolConfiguration configurationWithPointSize:7 weight:v13 scale:v12];
LABEL_10:

  return idiom;
}

- (id)_preferredConfigurationForState:(unint64_t)state includeDefault:(BOOL)default
{
  defaultCopy = default;
  v7 = [(UIButton *)self _contentForState:?];
  preferredSymbolConfiguration = [v7 preferredSymbolConfiguration];

  if (!preferredSymbolConfiguration)
  {
    v11 = [(UIButton *)self _contentForState:0];
    preferredSymbolConfiguration = [v11 preferredSymbolConfiguration];

    if (defaultCopy && !preferredSymbolConfiguration)
    {
      v12 = (*&self->_buttonFlags >> 6);
      traitCollection = [(UIView *)self traitCollection];
      preferredSymbolConfiguration = +[UIButton _defaultSymbolConfigurationForType:andState:compact:idiom:](UIButton, "_defaultSymbolConfigurationForType:andState:compact:idiom:", v12, state, 0, [traitCollection userInterfaceIdiom]);

      if (!preferredSymbolConfiguration)
      {
        v14 = (*&self->_buttonFlags >> 6);
        traitCollection2 = [(UIView *)self traitCollection];
        preferredSymbolConfiguration = +[UIButton _defaultSymbolConfigurationForType:andState:compact:idiom:](UIButton, "_defaultSymbolConfigurationForType:andState:compact:idiom:", v14, 0, 0, [traitCollection2 userInterfaceIdiom]);
      }
    }
  }

  v9 = preferredSymbolConfiguration;

  return preferredSymbolConfiguration;
}

+ (id)_defaultBackgroundImageNameForType:(int64_t)type andState:(unint64_t)state compact:(BOOL)compact
{
  if (type == 7)
  {
    compactCopy = compact;
    if (_UISolariumEnabled())
    {
      v7 = 0;
    }

    else
    {
      v9 = @"UICloseButtonBackground";
      if (compactCopy)
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

+ (id)_defaultBackgroundImageColorForType:(int64_t)type andState:(unint64_t)state
{
  if (type == 7)
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

+ (id)_defaultBackgroundImageForType:(int64_t)type andState:(unint64_t)state
{
  v7 = [self _defaultBackgroundImageNameForType:type andState:state compact:0];
  if (v7)
  {
    v8 = [UIImage kitImageNamed:v7];
    v9 = [self _defaultBackgroundImageColorForType:type andState:state];
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

- (id)_backgroundForState:(unint64_t)state usesBackgroundForNormalState:(BOOL *)normalState
{
  v7 = [(UIButton *)self _contentForState:?];
  background = [v7 background];

  if (background)
  {
LABEL_2:
    v9 = 0;
    if (!normalState)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v11 = [(UIButton *)self _contentForState:0];
  background = [v11 background];

  if (!background)
  {
    v12 = [UIButton _defaultBackgroundImageForType:(*&self->_buttonFlags >> 6) andState:state];
    if (v12)
    {
      background = v12;
      goto LABEL_2;
    }

    background = [UIButton _defaultBackgroundImageForType:(*&self->_buttonFlags >> 6) andState:0];
  }

  v9 = 1;
  if (normalState)
  {
LABEL_3:
    *normalState = v9;
  }

LABEL_4:

  return background;
}

- (id)_titleForState:(unint64_t)state
{
  v4 = [(UIButton *)self _contentForState:state];
  title = [v4 title];

  if (!title)
  {
    v6 = [(UIButton *)self _contentForState:0];
    title = [v6 title];
  }

  return title;
}

+ (id)_defaultTitleColorForState:(unint64_t)state button:(id)button isTintColor:(BOOL *)color
{
  buttonCopy = button;
  v13 = 0;
  if ([buttonCopy _isInCarPlay])
  {
    tintColor = [buttonCopy _externalTitleColorForState:state isTintColor:&v13];
    if (!tintColor)
    {
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  if ([buttonCopy _isModernButton])
  {
    tintColor = [buttonCopy tintColor];
    v13 = 1;
    if (!tintColor)
    {
      goto LABEL_8;
    }

LABEL_6:
    if ((state & 2) != 0)
    {
      v9 = [UIColor _disabledColorForColor:tintColor];

      v13 = 0;
      tintColor = v9;
    }

LABEL_8:
    if (!color)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  if ([buttonCopy _isModernButton])
  {
    tintColor = 0;
    if (color)
    {
LABEL_9:
      v10 = v13;
LABEL_10:
      *color = v10;
    }
  }

  else
  {
    tintColor = +[UIColor whiteColor];
    if (color)
    {
      v10 = 0;
      goto LABEL_10;
    }
  }

LABEL_11:
  v11 = tintColor;

  return v11;
}

- (id)_titleColorForState:(unint64_t)state
{
  v4 = [(UIButton *)self _contentForState:state];
  titleColor = [v4 titleColor];

  if (!titleColor)
  {
    traitCollection = [(UIView *)self traitCollection];
    userInterfaceIdiom = [traitCollection userInterfaceIdiom];

    if (userInterfaceIdiom == 6)
    {
      v8 = [(UIButton *)self _contentForState:0];
      titleColor = [v8 titleColor];
    }

    else
    {
      titleColor = 0;
    }
  }

  return titleColor;
}

- (id)_titleColorForState:(unint64_t)state suppressTintColorFollowing:(BOOL *)following
{
  v7 = [(UIButton *)self _contentForState:?];
  titleColor = [v7 titleColor];

  if (titleColor || (-[UIButton _contentForState:](self, "_contentForState:", 0), v9 = objc_claimAutoreleasedReturnValue(), [v9 titleColor], titleColor = objc_claimAutoreleasedReturnValue(), v9, titleColor))
  {
    v10 = 1;
    if (!following)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v12 = 0;
  titleColor = [UIButton _defaultTitleColorForState:state button:self isTintColor:&v12];
  if (!titleColor)
  {
    titleColor = [UIButton _defaultTitleColorForState:0 button:self isTintColor:&v12];
  }

  v10 = v12 ^ 1;
  if (following)
  {
LABEL_4:
    *following = v10 & 1;
  }

LABEL_5:

  return titleColor;
}

+ (id)_defaultImageColorForType:(int64_t)type andState:(unint64_t)state idiom:(int64_t)idiom
{
  if (type == 7)
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

+ (id)_defaultImageColorForState:(unint64_t)state button:(id)button
{
  buttonCopy = button;
  if ([buttonCopy _isInCarPlay])
  {
    v7 = [buttonCopy _externalImageColorForState:state];
  }

  else
  {
    v7 = 0;
  }

  if ([buttonCopy _isModernButton] && (objc_msgSend(buttonCopy, "isEnabled") & 1) == 0)
  {
    _disabledColor = [buttonCopy _disabledColor];

    v7 = _disabledColor;
  }

  if (!v7)
  {
    buttonType = [buttonCopy buttonType];
    traitCollection = [buttonCopy traitCollection];
    v7 = [self _defaultImageColorForType:buttonType andState:state idiom:{objc_msgSend(traitCollection, "userInterfaceIdiom")}];
  }

  return v7;
}

- (id)_imageColorForState:(unint64_t)state
{
  v5 = [(UIButton *)self _contentForState:?];
  imageColor = [v5 imageColor];

  if (!imageColor)
  {
    v7 = [(UIButton *)self _contentForState:0];
    imageColor = [v7 imageColor];

    if (!imageColor)
    {
      v8 = [UIButton _defaultImageColorForState:state button:self];
      if (!v8)
      {
        v8 = [UIButton _defaultImageColorForState:0 button:self];
      }

      imageColor = v8;
    }
  }

  return imageColor;
}

- (id)_shadowColorForState:(unint64_t)state
{
  v4 = [(UIButton *)self _contentForState:state];
  shadowColor = [v4 shadowColor];

  if (!shadowColor)
  {
    v6 = [(UIButton *)self _contentForState:0];
    shadowColor = [v6 shadowColor];
  }

  return shadowColor;
}

- (id)_attributedTitleForState:(unint64_t)state
{
  traitCollection = [(UIView *)self traitCollection];
  v6 = [(UIButton *)self _attributedTitleForState:state adjustedToTraitCollection:traitCollection];

  return v6;
}

- (id)_attributedTitleForState:(unint64_t)state adjustedToTraitCollection:(id)collection
{
  collectionCopy = collection;
  v7 = [(UIButton *)self _contentForState:state];
  attributedTitle = [v7 attributedTitle];
  if (attributedTitle)
  {
    attributedTitle2 = attributedTitle;
  }

  else
  {
    v10 = [(UIButton *)self _contentForState:0];
    attributedTitle2 = [v10 attributedTitle];

    if (!attributedTitle2)
    {
      goto LABEL_11;
    }
  }

  _visualProvider = [(UIButton *)self _visualProvider];
  if ([_visualProvider adjustsFontForContentSizeCategory])
  {
    _shouldAdjustToTraitCollection = [(UIButton *)self _shouldAdjustToTraitCollection];

    if (!_shouldAdjustToTraitCollection)
    {
      goto LABEL_11;
    }

    v13 = [attributedTitle2 _ui_attributedStringAdjustedToTraitCollection:collectionCopy];
    _visualProvider = v13;
    if (v13)
    {
      v14 = v13;
    }

    else
    {
      v14 = attributedTitle2;
    }

    v15 = v14;

    attributedTitle2 = v15;
  }

LABEL_11:

  return attributedTitle2;
}

- (void)_intrinsicContentSizeInvalidatedForChildView:(id)view
{
  viewCopy = view;
  _visualProvider = [(UIButton *)self _visualProvider];
  [_visualProvider intrinsicContentSizeInvalidatedForChildView:viewCopy];
}

- (void)_alignmentRectInsetsHaveChangedForChildImageView:(id)view
{
  viewCopy = view;
  buttonVisualProviderFlags = self->_buttonVisualProviderFlags;
  if (buttonVisualProviderFlags)
  {
    if ((buttonVisualProviderFlags & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  _visualProvider = [(UIButton *)self _visualProvider];
  if (_visualProvider)
  {
    v6 = self->_buttonVisualProviderFlags;

    if ((v6 & 4) != 0)
    {
LABEL_6:
      _visualProvider2 = [(UIButton *)self _visualProvider];
      [_visualProvider2 alignmentRectInsetsHaveChangedForChildImageView:viewCopy];
    }
  }

LABEL_7:
}

- (BOOL)_hasImageForProperty:(id)property
{
  propertyCopy = property;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  contentLookup = self->_contentLookup;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __33__UIButton__hasImageForProperty___block_invoke;
  v8[3] = &unk_1E7104D70;
  v6 = propertyCopy;
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

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  _visualProvider = [(UIButton *)self _visualProvider];
  [_visualProvider traitCollectionDidChange:changeCopy];

  buttonVisualProviderFlags = self->_buttonVisualProviderFlags;
  if (buttonVisualProviderFlags)
  {
    if ((buttonVisualProviderFlags & 0x20) == 0)
    {
LABEL_12:
      font = 0;
      goto LABEL_18;
    }

LABEL_6:
    _visualProvider2 = [(UIButton *)self _visualProvider];
    if (![_visualProvider2 adjustsFontForContentSizeCategory] || (-[UIView traitCollection](self, "traitCollection"), (v10 = objc_claimAutoreleasedReturnValue()) == 0))
    {

      font = 0;
      if (buttonVisualProviderFlags)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }

    if (changeCopy)
    {
      v11 = v10[13];
      v12 = changeCopy[13];

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

    _visualProvider3 = [(UIButton *)self _visualProvider];
    font = [_visualProvider3 font];
    goto LABEL_17;
  }

  _visualProvider3 = [(UIButton *)self _visualProvider];
  if (_visualProvider3 && (*&self->_buttonVisualProviderFlags & 0x20) != 0)
  {
    goto LABEL_6;
  }

  font = 0;
LABEL_17:

LABEL_18:
  v13 = self->_buttonVisualProviderFlags;
  LOBYTE(v14) = v13;
  if ((v13 & 1) == 0)
  {
    _visualProvider3 = [(UIButton *)self _visualProvider];
    if (!_visualProvider3)
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

  traitCollection = [(UIView *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];
  userInterfaceIdiom2 = [changeCopy userInterfaceIdiom];

  if ((v13 & 1) == 0)
  {
  }

  if (userInterfaceIdiom != userInterfaceIdiom2)
  {
    _visualProvider3 = [(UIButton *)self _visualProvider];
    font2 = [_visualProvider3 font];

    [(UIButton *)self _setDefaultFontForIdiom];
    font = font2;
  }

LABEL_29:
  if ([(UIButton *)self _isCarPlaySystemTypeButton])
  {
    [(UIButton *)self _applyCarPlaySystemButtonCustomizations];
  }

  v27.receiver = self;
  v27.super_class = UIButton;
  [(UIView *)&v27 traitCollectionDidChange:changeCopy];
  if (font)
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
      _visualProvider4 = [(UIButton *)self _visualProvider];
      _visualProvider3 = _visualProvider4;
      if (!_visualProvider4 || (*&self->_buttonVisualProviderFlags & 0x20) == 0)
      {

        goto LABEL_41;
      }
    }

    _visualProvider5 = [(UIButton *)self _visualProvider];
    font3 = [_visualProvider5 font];
    v23 = [font isEqual:font3];

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
    traitCollection2 = [(UIView *)self traitCollection];
    if (traitCollection2)
    {
      if (changeCopy)
      {
        v25 = traitCollection2[13];
        v26 = changeCopy[13];

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
  _visualProvider = [(UIButton *)self _visualProvider];
  [_visualProvider visualBoundsWithCornerRadius:0];
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
  _visualProvider = [(UIButton *)self _visualProvider];
  pointerEffectPreviewParameters = [_visualProvider pointerEffectPreviewParameters];

  return pointerEffectPreviewParameters;
}

- (id)_pointerEffectWithPreview:(id)preview
{
  previewCopy = preview;
  _visualProvider = [(UIButton *)self _visualProvider];
  v6 = [_visualProvider pointerEffectWithPreview:previewCopy];

  return v6;
}

- (id)_pointerEffect
{
  _pointerEffectPreviewParameters = [(UIButton *)self _pointerEffectPreviewParameters];
  v4 = [[UITargetedPreview alloc] initWithView:self parameters:_pointerEffectPreviewParameters];
  v5 = [(UIButton *)self _pointerEffectWithPreview:v4];

  return v5;
}

- (id)_shapeInContainer:(id)container proposal:(id)proposal
{
  proposalCopy = proposal;
  containerCopy = container;
  _visualProvider = [(UIButton *)self _visualProvider];
  v9 = [_visualProvider pointerShapeInContainer:containerCopy proposal:proposalCopy];

  return v9;
}

- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region
{
  regionCopy = region;
  interactionCopy = interaction;
  _pointerInteraction = [(UIControl *)self _pointerInteraction];

  if (_pointerInteraction == interactionCopy)
  {
    if ([(UIControl *)self isSelected])
    {
      v11 = regionCopy;
    }

    else
    {
      [regionCopy rect];
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

- (id)pointerInteraction:(id)interaction styleForRegion:(id)region
{
  interactionCopy = interaction;
  regionCopy = region;
  _pointerInteraction = [(UIControl *)self _pointerInteraction];

  if (_pointerInteraction == interactionCopy)
  {
    _safeHoverStyle = [(UIControl *)self _safeHoverStyle];
    v25.receiver = self;
    v25.super_class = UIButton;
    v11 = [(UIControl *)&v25 pointerInteraction:interactionCopy styleForRegion:regionCopy];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 || ([v11 pointerEffect], (v12 = objc_claimAutoreleasedReturnValue()) != 0) && (v13 = v12, objc_msgSend(_safeHoverStyle, "shape"), v14 = objc_claimAutoreleasedReturnValue(), v14, v13, v14))
    {
      v9 = v11;
    }

    else
    {
      pointerEffect = [v11 pointerEffect];
      shape = [_safeHoverStyle shape];
      if (shape)
      {
        pointerShape = [v11 pointerShape];
      }

      else
      {
        pointerShape = 0;
      }

      if (pointerEffect)
      {
        _pointerEffect = pointerEffect;
      }

      else
      {
        _pointerEffect = [(UIButton *)self _pointerEffect];
      }

      v19 = _pointerEffect;
      if (pointerShape)
      {
        v20 = pointerShape;
      }

      else
      {
        superview = [(UIView *)self superview];
        v20 = [(UIButton *)self _shapeInContainer:superview];
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

- (void)pointerInteraction:(id)interaction willEnterRegion:(id)region animator:(id)animator
{
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __56__UIButton_pointerInteraction_willEnterRegion_animator___block_invoke;
  v8[3] = &unk_1E70F3590;
  v8[4] = self;
  animatorCopy = animator;
  [animatorCopy addAnimations:v8];
  _visualProvider = [(UIButton *)self _visualProvider];
  [_visualProvider pointerWillEnter:animatorCopy];
}

- (void)pointerInteraction:(id)interaction willExitRegion:(id)region animator:(id)animator
{
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __55__UIButton_pointerInteraction_willExitRegion_animator___block_invoke;
  v8[3] = &unk_1E70F3590;
  v8[4] = self;
  animatorCopy = animator;
  [animatorCopy addAnimations:v8];
  _visualProvider = [(UIButton *)self _visualProvider];
  [_visualProvider pointerWillExit:animatorCopy];
}

- (id)_preferredHoverEffect
{
  _visualProvider = [(UIButton *)self _visualProvider];
  preferredHoverEffect = [_visualProvider preferredHoverEffect];

  return preferredHoverEffect;
}

- (id)_preferredHoverShape
{
  _visualProvider = [(UIButton *)self _visualProvider];
  preferredHoverShape = [_visualProvider preferredHoverShape];

  return preferredHoverShape;
}

- (void)setMenu:(UIMenu *)menu
{
  if (self->_menu != menu)
  {
    v4 = menu;
    contextMenuInteraction = [(UIControl *)self contextMenuInteraction];
    _UIControlMenuUpdateVisibleMenu(contextMenuInteraction, self->_menu, v4);

    v6 = [(UIMenu *)v4 copy];
    v7 = self->_menu;
    self->_menu = v6;

    [(UIButton *)self _updateForAutomaticSelection];
    _visualProvider = [(UIButton *)self _visualProvider];
    [_visualProvider setMenu:self->_menu];

    [(UIButton *)self _refreshVisualProvider];

    [(UIButton *)self _updateContextMenuEnabled];
  }
}

- (void)_setMenuProvider:(id)provider
{
  if (self->_menuProvider != provider)
  {
    providerCopy = provider;
    v5 = [providerCopy copy];
    menuProvider = self->_menuProvider;
    self->_menuProvider = v5;

    _visualProvider = [(UIButton *)self _visualProvider];
    [_visualProvider setMenuProvider:providerCopy];

    [(UIButton *)self _updateContextMenuEnabled];
  }
}

- (void)forcedSelectionOfMenu:(id)menu willChangeTo:(id)to
{
  menuCopy = menu;
  title = [to title];
  [(UIButton *)self setTitle:title forState:0];

  _visualProvider = [(UIButton *)self _visualProvider];
  [_visualProvider setMenu:menuCopy];
}

- (void)setShowsMenuAsPrimaryAction:(BOOL)action
{
  actionCopy = action;
  v6.receiver = self;
  v6.super_class = UIButton;
  [(UIControl *)&v6 setShowsMenuAsPrimaryAction:?];
  _visualProvider = [(UIButton *)self _visualProvider];
  [_visualProvider setContextMenuIsPrimary:actionCopy];

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

- (void)_sendActionsForEvents:(unint64_t)events withEvent:(id)event
{
  eventCopy = event;
  if ([(UIButton *)self _isToggleButton]&& ([(UIButton *)self _controlEventsForActionTriggered]& events) != 0)
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
    _visualProvider = [(UIButton *)self _visualProvider];
    [_visualProvider setControlEvent:events];

    goto LABEL_10;
  }

  _visualProvider2 = [(UIButton *)self _visualProvider];
  if (_visualProvider2)
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
  [(UIControl *)&v10 _sendActionsForEvents:events withEvent:eventCopy];
}

- (CGPoint)menuAttachmentPointForConfiguration:(id)configuration
{
  configurationCopy = configuration;
  _visualProvider = [(UIButton *)self _visualProvider];
  [_visualProvider menuAttachmentPointForConfiguration:configurationCopy];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.y = v11;
  result.x = v10;
  return result;
}

- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  interactionCopy = interaction;
  _visualProvider = [(UIButton *)self _visualProvider];
  v9 = [_visualProvider contextMenuInteraction:interactionCopy configurationForMenuAtLocation:{x, y}];

  [v9 setPreferredMenuElementOrder:{-[UIButton preferredMenuElementOrder](self, "preferredMenuElementOrder")}];
  [v9 setPrefersHorizontalAttachment:{-[UIButton prefersHorizontalMenuAttachment](self, "prefersHorizontalMenuAttachment")}];

  return v9;
}

- (id)_contextMenuInteraction:(id)interaction styleForMenuWithConfiguration:(id)configuration
{
  v11.receiver = self;
  v11.super_class = UIButton;
  configurationCopy = configuration;
  interactionCopy = interaction;
  v8 = [(UIControl *)&v11 _contextMenuInteraction:interactionCopy styleForMenuWithConfiguration:configurationCopy];
  v9 = [(UIButton *)self _visualProvider:v11.receiver];
  [v9 contextMenuInteraction:interactionCopy updateStyleForMenuWithConfiguration:configurationCopy style:v8];

  return v8;
}

- (id)contextMenuInteraction:(id)interaction previewForHighlightingMenuWithConfiguration:(id)configuration
{
  interactionCopy = interaction;
  configurationCopy = configuration;
  _contextMenuInteraction = [(UIControl *)self _contextMenuInteraction];

  if (_contextMenuInteraction == interactionCopy)
  {
    _visualProvider = [(UIButton *)self _visualProvider];
    v9 = [_visualProvider contextMenuInteraction:interactionCopy previewForHighlightingMenuWithConfiguration:configurationCopy];
  }

  else
  {
    v12.receiver = self;
    v12.super_class = UIButton;
    v9 = [(UIControl *)&v12 contextMenuInteraction:interactionCopy previewForHighlightingMenuWithConfiguration:configurationCopy];
  }

  return v9;
}

- (id)contextMenuInteraction:(id)interaction previewForDismissingMenuWithConfiguration:(id)configuration
{
  interactionCopy = interaction;
  configurationCopy = configuration;
  _contextMenuInteraction = [(UIControl *)self _contextMenuInteraction];

  if (_contextMenuInteraction == interactionCopy)
  {
    _visualProvider = [(UIButton *)self _visualProvider];
    v9 = [_visualProvider contextMenuInteraction:interactionCopy previewForDismissingMenuWithConfiguration:configurationCopy];
  }

  else
  {
    v12.receiver = self;
    v12.super_class = UIButton;
    v9 = [(UIControl *)&v12 contextMenuInteraction:interactionCopy previewForDismissingMenuWithConfiguration:configurationCopy];
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

  _visualProvider = [(UIButton *)self _visualProvider];
  if (_visualProvider)
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

- (void)_setConfigurationUpdateHandler:(id)handler
{
  handlerCopy = handler;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __43__UIButton__setConfigurationUpdateHandler___block_invoke;
  v6[3] = &unk_1E7104DE8;
  v7 = handlerCopy;
  v5 = handlerCopy;
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

- (void)_shim_setConfiguration:(id)configuration
{
  configurationCopy = configuration;
  _visualProvider2 = self->_configuration;
  v6 = configurationCopy;
  v14 = v6;
  if (_visualProvider2 == v6)
  {

LABEL_16:
    goto LABEL_17;
  }

  if (v6 && _visualProvider2)
  {
    v7 = [(_UIButtonConfigurationShim *)_visualProvider2 isEqual:v6];

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

  _visualProvider = [(UIButton *)self _visualProvider];
  if (_visualProvider)
  {
    v13 = self->_buttonVisualProviderFlags;

    if ((v13 & 4) != 0)
    {
LABEL_15:
      _visualProvider2 = [(UIButton *)self _visualProvider];
      [(_UIButtonConfigurationShim *)_visualProvider2 automaticallyUpdateConfigurationIfNecessary:self->_configuration];
      [(_UIButtonConfigurationShim *)_visualProvider2 applyConfiguration];
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

  _visualProvider = [(UIButton *)self _visualProvider];
  viewForFirstBaselineLayout = [_visualProvider viewForFirstBaselineLayout];

  return viewForFirstBaselineLayout;
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

- (void)setAdjustsImageSizeForAccessibilityContentSizeCategory:(BOOL)category
{
  categoryCopy = category;
  if ([(UIButton *)self adjustsImageSizeForAccessibilityContentSizeCategory]!= category)
  {
    v5 = 0x100000000;
    if (!categoryCopy)
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

- (CGSize)_effectiveSizeForImage:(id)image
{
  v3 = _UIAccessibilityContentSizeCategorySizeForImage(image, self);
  result.height = v4;
  result.width = v3;
  return result;
}

- (double)_scaleFactorForImage
{
  traitCollection = [(UIView *)self traitCollection];
  v3 = _UIAccessibilityContentSizeCategoryImageAdjustingScaleFactorForTraitCollection(traitCollection);

  return v3;
}

- (double)_additionalBaselineSpacingForEdge:(int)edge
{
  result = 0.0;
  if ((*&self->_buttonVisualProviderFlags & 4) != 0)
  {
    if (edge == 6)
    {
      [(UIButton *)self _baselineOffsetsAtSize:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
      return v4;
    }

    else if (edge == 5)
    {
      [(UIButton *)self _baselineOffsetsAtSize:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
    }
  }

  return result;
}

- (id)__vis_debugDescription
{
  configuration = [(UIButton *)self configuration];
  if (configuration)
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
  _currentConfiguration = [(UIButton *)self _currentConfiguration];
  _hasObscuringBackground = [_currentConfiguration _hasObscuringBackground];

  if (!_hasObscuringBackground || ([(UIButton *)self _backgroundView], (_morphView = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v7.receiver = self;
    v7.super_class = UIButton;
    _morphView = [(UIView *)&v7 _morphView];
  }

  return _morphView;
}

- (void)_uikit_applyValueFromTraitStorage:(id)storage forKeyPath:(id)path
{
  v41 = *MEMORY[0x1E69E9840];
  storageCopy = storage;
  pathCopy = path;
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
    [&v35 _uikit_applyValueFromTraitStorage:storageCopy forKeyPath:pathCopy];
    v28 = 0;
    goto LABEL_19;
  }

  v11 = v10;
  selfCopy = self;
  v31 = storageCopy;
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
      if ([pathCopy hasPrefix:v16])
      {
        v17 = v9;
        v18 = v8;
        v19 = pathCopy;
        v20 = [pathCopy substringFromIndex:{objc_msgSend(v16, "length")}];
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
        pathCopy = v19;
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
    self = selfCopy;
    storageCopy = v31;
    v29 = v32;
    goto LABEL_18;
  }

  [MEMORY[0x1E696AEC0] stringWithFormat:@"set%@:forState:", v33];
  v26 = v25 = v12;
  v27 = NSSelectorFromString(v26);

  v28 = v25;
  v29 = v32;
  storageCopy = v31;
  [selfCopy v27];
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
  _largeContentStoredProperties = [(UIView *)self _largeContentStoredProperties];
  didSetLargeContentTitle = [_largeContentStoredProperties didSetLargeContentTitle];

  if (didSetLargeContentTitle)
  {
    v9.receiver = self;
    v9.super_class = UIButton;
    largeContentTitle = [(UIView *)&v9 largeContentTitle];
  }

  else
  {
    titleLabel = [(UIButton *)self titleLabel];
    attributedText = [titleLabel attributedText];
    largeContentTitle = [attributedText string];
  }

  return largeContentTitle;
}

- (id)largeContentImage
{
  _largeContentStoredProperties = [(UIView *)self _largeContentStoredProperties];
  didSetLargeContentImage = [_largeContentStoredProperties didSetLargeContentImage];

  if (didSetLargeContentImage)
  {
    v8.receiver = self;
    v8.super_class = UIButton;
    largeContentImage = [(UIView *)&v8 largeContentImage];
  }

  else
  {
    imageView = [(UIButton *)self imageView];
    largeContentImage = [imageView image];
  }

  return largeContentImage;
}

- (BOOL)scalesLargeContentImage
{
  _largeContentStoredProperties = [(UIView *)self _largeContentStoredProperties];
  didSetScalesLargeContentImage = [_largeContentStoredProperties didSetScalesLargeContentImage];

  if (!didSetScalesLargeContentImage)
  {
    return 1;
  }

  v6.receiver = self;
  v6.super_class = UIButton;
  return [(UIView *)&v6 scalesLargeContentImage];
}

+ (void)_setAllowsUnsupportedMacIdiomBehavior:(BOOL)behavior
{
  if (behavior)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  _UnsupportedFlags_0 = _UnsupportedFlags_0 & 0xDF | v3;
}

- (double)_autolayoutSpacingAtEdge:(int)edge forAttribute:(int64_t)attribute inContainer:(id)container isGuide:(BOOL)guide
{
  v6 = *&edge;
  v12.receiver = self;
  v12.super_class = UIButton;
  [(UIView *)&v12 _autolayoutSpacingAtEdge:*&edge forAttribute:attribute inContainer:container isGuide:guide];
  v9 = v8;
  [(UIButton *)self _additionalBaselineSpacingForEdge:v6];
  return v9 + v10;
}

- (double)_autolayoutSpacingAtEdge:(int)edge forAttribute:(id)attribute nextToNeighbor:(id)neighbor edge:(int)a6 attribute:(int64_t)a7 multiplier:(double)multiplier
{
  v8 = *&a6;
  v10 = *&edge;
  v18.receiver = self;
  v18.super_class = UIButton;
  [(UIView *)&v18 _autolayoutSpacingAtEdge:*&edge forAttribute:attribute nextToNeighbor:neighbor edge:*&a6 attribute:a7 multiplier:multiplier];
  v13 = v12;
  [(UIButton *)self _additionalBaselineSpacingForEdge:v10];
  v15 = v13 + v14;
  if (objc_opt_respondsToSelector())
  {
    [neighbor _additionalBaselineSpacingForEdge:v8];
    return v15 + v16;
  }

  return v15;
}

- (id)_viewForLoweringBaselineLayoutAttribute:(int)attribute
{
  v5.receiver = self;
  v5.super_class = UIButton;
  v3 = [(UIView *)&v5 _viewForLoweringBaselineLayoutAttribute:*&attribute];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  return v3;
}

@end