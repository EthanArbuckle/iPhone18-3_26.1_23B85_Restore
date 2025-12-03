@interface UISegmentedControl
+ (BOOL)_selectFocusedSegmentAfterFocusUpdateForTraitCollection:(id)collection;
+ (BOOL)_updateDynamicShadowView:(id)view withAnimationDelegate:(id)delegate useDynamicShadow:(BOOL)shadow animated:(BOOL)animated;
+ (BOOL)automaticallyNotifiesObserversForKey:(id)key;
+ (CATransform3D)_hiddenSelectionTransformForTraitCollection:(SEL)collection;
+ (CATransform3D)_highlightSelectionTransformForTraitCollection:(SEL)collection;
+ (CGColor)_backgroundPrimaryColorSelected:(BOOL)selected highlighted:(BOOL)highlighted traitCollection:(id)collection tintColor:(id)color;
+ (CGColor)_dividerPrimaryColorBackground:(BOOL)background traitCollection:(id)collection tintColor:(id)color;
+ (CGRect)_selectionFrameForBounds:(CGRect)bounds hasMaterial:(BOOL)material size:(int)size traitCollection:(id)collection accessibilityView:(BOOL)view;
+ (double)_cornerRadiusForTraitCollection:(id)collection size:(CGSize)size controlSize:(int)controlSize;
+ (double)_cornerRadiusForTraitCollection:(id)collection size:(int)size;
+ (double)_defaultHeight;
+ (double)_defaultHeightForTraitCollection:(id)collection size:(int)size;
+ (double)_effectiveCornerRadiusForTraitCollection:(id)collection hasMaterial:(BOOL)material size:(CGSize)size controlSize:(int)controlSize selected:(BOOL)selected;
+ (double)_hiddenSelectionScaleForTraitCollection:(id)collection;
+ (double)_highlightSelectionScaleForTraitCollection:(id)collection;
+ (double)_lineWidthForTraitCollection:(id)collection size:(int)size;
+ (double)_sectionIndicatorInsetForTraitCollection:(id)collection hasMaterial:(BOOL)material size:(int)size;
+ (double)_sectionIndicatorInsetForTraitCollection:(id)collection size:(int)size;
+ (double)_sectionIndicatorOverflowForTraitCollection:(id)collection size:(int)size;
+ (double)_selectionOffsetAdjustmentForSegment:(id)segment;
+ (double)defaultHeightForStyle:(int64_t)style;
+ (double)defaultHeightForStyle:(int64_t)style size:(int)size;
+ (id)_fontForTraitCollection:(id)collection size:(int)size selected:(BOOL)selected hasMaterial:(BOOL)material;
+ (id)_highlightPinchAnimationForKey:(id)key fromValue:(id)value toValue:(id)toValue;
+ (id)_modernBackgroundSelected:(BOOL)selected shadow:(int64_t)shadow maximumSize:(CGSize)size highlighted:(BOOL)highlighted hasMaterial:(BOOL)material traitCollection:(id)collection tintColor:(id)color size:(int)self0;
+ (id)_modernDividerImageBackground:(BOOL)background traitCollection:(id)collection tintColor:(id)color size:(int)size;
+ (id)_selectionFadeAnimationForKey:(id)key fromValue:(id)value toValue:(id)toValue;
+ (id)_selectionOpacityAnimationFromValue:(float)value toValue:(float)toValue;
+ (id)_selectionPopAnimationForKey:(id)key fromValue:(id)value toValue:(id)toValue;
+ (void)_registerStyleProvider:(id)provider forIdiom:(int64_t)idiom;
- ($F24F406B2B787EFB06265DBA3D28CBD5)_baselineOffsetsAtSize:(CGSize)size;
- (BOOL)_animateHighlightingSelectionByDefault;
- (BOOL)_disableSlidingControl;
- (BOOL)_focusSystem:(id)system containsChildOfHostEnvironment:(id)environment;
- (BOOL)_hasEnabledSegment;
- (BOOL)_shouldConsumeEventWithPresses:(id)presses;
- (BOOL)canBecomeFocused;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (BOOL)hasBackdropViewOrMaterial;
- (BOOL)isEnabledForSegmentAtIndex:(NSUInteger)segment;
- (BOOL)pointMostlyInside:(CGPoint)inside withEvent:(id)event;
- (CGFloat)widthForSegmentAtIndex:(NSUInteger)segment;
- (CGRect)bounds;
- (CGRect)frame;
- (CGSize)_intrinsicSizeWithinSize:(CGSize)size;
- (CGSize)contentOffsetForSegmentAtIndex:(NSUInteger)segment;
- (NSInteger)segmentIndexForActionIdentifier:(UIActionIdentifier)actionIdentifier;
- (NSString)titleForSegmentAtIndex:(NSUInteger)segment;
- (UIAction)actionForSegmentAtIndex:(NSUInteger)segment;
- (UIEdgeInsets)alignmentRectInsets;
- (UIImage)backgroundImageForState:(UIControlState)state barMetrics:(UIBarMetrics)barMetrics;
- (UIImage)dividerImageForLeftSegmentState:(UIControlState)leftState rightSegmentState:(UIControlState)rightState barMetrics:(UIBarMetrics)barMetrics;
- (UIImage)imageForSegmentAtIndex:(NSUInteger)segment;
- (UIOffset)contentPositionAdjustmentForSegmentType:(UISegmentedControlSegment)leftCenterRightOrAlone barMetrics:(UIBarMetrics)barMetrics;
- (UISegmentedControl)initWithCoder:(NSCoder *)coder;
- (UISegmentedControl)initWithFrame:(CGRect)frame;
- (UISegmentedControl)initWithFrame:(CGRect)frame actions:(NSArray *)actions;
- (UISegmentedControl)initWithFrame:(CGRect)frame withStyle:(int64_t)style withItems:(id)items;
- (UISegmentedControl)initWithItems:(NSArray *)items;
- (_UIHostedFocusSystem)_internalFocusSystem;
- (double)_barHeight;
- (id)_accessibilitySegmentItemAtIndex:(unint64_t)index;
- (id)_additionalTrackingViews;
- (id)_attributedTitleForSegmentAtIndex:(unint64_t)index;
- (id)_badgeValueForSegmentAtIndex:(unint64_t)index;
- (id)_basicAnimationForView:(id)view withKeyPath:(id)path;
- (id)_containerViewForLegacyFocusRing;
- (id)_createAndAddSegmentAtIndex:(int)index position:(unsigned int)position withInfo:(id)info;
- (id)_createSegmentAtIndex:(int)index position:(unsigned int)position withInfo:(id)info;
- (id)_feedbackGenerator;
- (id)_pointerEffectWithPreview:(void *)preview forSegment:(uint64_t)segment selected:;
- (id)_preferredFocusEnvironmentsForFocusSystem:(id)system;
- (id)_segmentAtIndex:(int)index;
- (id)_selectedSegmentVibrancyEffect;
- (id)_uiktest_labelsWithState:(unint64_t)state;
- (id)_viewForLoweringBaselineLayoutAttribute:(int)attribute;
- (id)focusItemsInRect:(CGRect)rect;
- (id)infoViewForSegment:(int64_t)segment;
- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region;
- (id)pointerInteraction:(id)interaction styleForRegion:(id)region;
- (id)viewForLastBaselineLayout;
- (int)_closestSegmentIndexAtPoint:(CGPoint)point;
- (int64_t)_segmentIndexToHighlight:(BOOL *)highlight;
- (void)__initWithFrameCommonOperations;
- (void)_animateContentChangeWithAnimations:(id)animations completion:(id)completion;
- (void)_axLongPressHandler:(id)handler;
- (void)_cancelDelayedFocusAction;
- (void)_clearSelectedSegment;
- (void)_commonSegmentedControlInit;
- (void)_diagnoseFocusabilityForReport:(id)report;
- (void)_didMoveFromWindow:(id)window toWindow:(id)toWindow;
- (void)_emitValueChanged;
- (void)_focusSystem:(id)system didFinishUpdatingFocusInContext:(id)context;
- (void)_highlightSegment:(int64_t)segment;
- (void)_insertHighlightView;
- (void)_insertSegment:(int)segment withInfo:(id)info animated:(BOOL)animated;
- (void)_insertSelectionViewForSegment:(id)segment;
- (void)_installVisualStyleDefaults;
- (void)_reevaluateClipping;
- (void)_resetForAppearanceChange;
- (void)_selectFocusedSegment;
- (void)_sendDelayedFocusActionIfNecessary;
- (void)_sendValueChanged;
- (void)_setAction:(id)action forSegmentAtIndex:(unint64_t)index;
- (void)_setAlwaysEmitValueChanged:(BOOL)changed;
- (void)_setAnimatingOutDynamicShdaow:(BOOL)shdaow;
- (void)_setAppearanceIsTiled:(BOOL)tiled leftCapWidth:(unint64_t)width rightCapWidth:(unint64_t)capWidth;
- (void)_setAttributedTitle:(id)title forSegmentAtIndex:(unint64_t)index;
- (void)_setAutosizeText:(BOOL)text;
- (void)_setBackgroundImage:(id)image forState:(unint64_t)state barMetrics:(int64_t)metrics;
- (void)_setBackgroundTintColor:(id)color;
- (void)_setBackgroundVerticalPositionAdjustment:(double)adjustment forBarMetrics:(int64_t)metrics;
- (void)_setBadgeValue:(id)value forSegmentAtIndex:(unint64_t)index;
- (void)_setControlSize:(int)size andInvalidate:(BOOL)invalidate;
- (void)_setDividerImage:(id)image forLeftSegmentState:(unint64_t)state rightSegmentState:(unint64_t)segmentState barMetrics:(int64_t)metrics;
- (void)_setEnabled:(BOOL)enabled forcePropagateToSegments:(BOOL)segments;
- (void)_setHighlightedSegmentHighlighted:(BOOL)highlighted;
- (void)_setHoverOnSegment:(int64_t)segment hovered:(BOOL)hovered;
- (void)_setNeedsBackgroundAndContentViewUpdate;
- (void)_setSegmentedControlAppearance:(id *)appearance;
- (void)_setSelected:(BOOL)selected forSegmentAtIndex:(int)index forceInfoDisplay:(BOOL)display;
- (void)_setSelected:(BOOL)selected highlighted:(BOOL)highlighted forSegmentAtIndex:(int)index forceInfoDisplay:(BOOL)display;
- (void)_setSelectedSegmentIndex:(int64_t)index notify:(BOOL)notify animate:(BOOL)animate;
- (void)_setSelectedSegmentVibrancyEffect:(id)effect;
- (void)_setTitleTextAttributes:(id)attributes forState:(unint64_t)state;
- (void)_setUseGlass:(BOOL)glass;
- (void)_setUseSpringBoardVibrancy:(BOOL)vibrancy;
- (void)_tapSegmentAtPoint:(CGPoint)point touchDown:(BOOL)down;
- (void)_updateAxLongPressGestureRecognizer;
- (void)_updateDividerImageForSegmentAtIndex:(unint64_t)index;
- (void)_updateDynamicShadow:(BOOL)shadow animated:(BOOL)animated;
- (void)_updateForGlassIfNeededForSuperview:(void *)superview traitCollection:;
- (void)_updateHighlightToPosition:(CGPoint)position bounds:(CGRect)bounds highlight:(BOOL)highlight;
- (void)_updateSelectionIndicator;
- (void)_updateSelectionToSegment:(id)segment highlight:(BOOL)highlight shouldAnimate:(BOOL)animate sameSegment:(BOOL)sameSegment;
- (void)addSegmentWithTitle:(id)title;
- (void)animationDidStop:(id)stop finished:(BOOL)finished;
- (void)dealloc;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)encodeWithCoder:(id)coder;
- (void)insertSegmentWithAction:(UIAction *)action atIndex:(NSUInteger)segment animated:(BOOL)animated;
- (void)layoutSubviews;
- (void)pointerInteraction:(id)interaction willEnterRegion:(id)region animator:(id)animator;
- (void)pointerInteraction:(id)interaction willExitRegion:(id)region animator:(id)animator;
- (void)pressesBegan:(id)began withEvent:(id)event;
- (void)pressesCancelled:(id)cancelled withEvent:(id)event;
- (void)pressesChanged:(id)changed withEvent:(id)event;
- (void)pressesEnded:(id)ended withEvent:(id)event;
- (void)removeAllSegments;
- (void)removeSegmentAtIndex:(NSUInteger)segment animated:(BOOL)animated;
- (void)setAction:(UIAction *)action forSegmentAtIndex:(NSUInteger)segment;
- (void)setAdjustsForContentSizeCategory:(BOOL)category;
- (void)setAlpha:(double)alpha;
- (void)setAlwaysNotifiesDelegateOfSegmentClicks:(BOOL)clicks;
- (void)setApportionsSegmentWidthsByContent:(BOOL)apportionsSegmentWidthsByContent;
- (void)setBackgroundImage:(UIImage *)backgroundImage forState:(UIControlState)state barMetrics:(UIBarMetrics)barMetrics;
- (void)setBarStyle:(int64_t)style;
- (void)setBounds:(CGRect)bounds;
- (void)setContentOffset:(CGSize)offset forSegmentAtIndex:(NSUInteger)segment;
- (void)setContentPositionAdjustment:(UIOffset)adjustment forSegmentType:(UISegmentedControlSegment)leftCenterRightOrAlone barMetrics:(UIBarMetrics)barMetrics;
- (void)setControlSize:(int)size;
- (void)setDividerImage:(UIImage *)dividerImage forLeftSegmentState:(UIControlState)leftState rightSegmentState:(UIControlState)rightState barMetrics:(UIBarMetrics)barMetrics;
- (void)setEnabled:(BOOL)enabled forSegmentAtIndex:(NSUInteger)segment;
- (void)setFrame:(CGRect)frame;
- (void)setImage:(UIImage *)image forSegmentAtIndex:(NSUInteger)segment;
- (void)setImagePadding:(CGSize)padding forSegment:(unint64_t)segment;
- (void)setMomentary:(BOOL)momentary;
- (void)setSelectedSegmentTintColor:(UIColor *)selectedSegmentTintColor;
- (void)setTitle:(NSString *)title forSegmentAtIndex:(NSUInteger)segment;
- (void)setTitleTextAttributes:(NSDictionary *)attributes forState:(UIControlState)state;
- (void)setTransparentBackground:(BOOL)background;
- (void)setWidth:(CGFloat)width forSegmentAtIndex:(NSUInteger)segment;
- (void)sizeToFit;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
- (void)traitCollectionDidChange:(id)change;
- (void)willMoveToSuperview:(id)superview;
@end

@implementation UISegmentedControl

- (void)sizeToFit
{
  segmentedControlFlags = self->_segmentedControlFlags;
  if ((*&segmentedControlFlags & 0x40) == 0)
  {
    self->_segmentedControlFlags = (*&segmentedControlFlags | 0x40);
    v4.receiver = self;
    v4.super_class = UISegmentedControl;
    [(UIView *)&v4 sizeToFit];
    *&self->_segmentedControlFlags &= ~0x40uLL;
  }
}

- (double)_barHeight
{
  if ((*(&self->_segmentedControlFlags + 1) & 0x40) != 0)
  {
    v7 = [(UISegmentedControl *)self titleTextAttributesForState:0];
    v8 = [v7 objectForKey:*off_1E70EC918];
    v9 = v8;
    if (v8)
    {
      traitCollection2 = v8;
    }

    else
    {
      v10 = objc_opt_class();
      traitCollection = [(UIView *)self traitCollection];
      traitCollection2 = [v10 _fontForTraitCollection:traitCollection size:-[UISegmentedControl controlSize](self selected:"controlSize") hasMaterial:{0, 0}];
    }

    [traitCollection2 lineHeight];
    UICeilToViewScale(self);
  }

  else
  {
    v3 = objc_opt_class();
    appearanceStorage = self->_appearanceStorage;
    traitCollection2 = [(UIView *)self traitCollection];
    v6 = segmentBarHeight(v3, appearanceStorage, traitCollection2, *&self->_segmentedControlFlags & 3);
  }

  v12 = v6;

  return v12;
}

- (BOOL)_disableSlidingControl
{
  if ([(UISegmentedControl *)self isMomentary]|| _AXSReduceMotionEnabled())
  {
    return 1;
  }

  v5 = [self->_appearanceStorage backgroundImageForState:0 isMini:0 withFallback:1];
  v3 = v5 != 0;

  return v3;
}

- (CGRect)frame
{
  if ((~*&self->_segmentedControlFlags & 0x820) == 0)
  {
    [(UISegmentedControl *)self _resetForAppearanceChange];
  }

  v7.receiver = self;
  v7.super_class = UISegmentedControl;
  [(UIView *)&v7 frame];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)bounds
{
  if ((~*&self->_segmentedControlFlags & 0x820) == 0)
  {
    [(UISegmentedControl *)self _resetForAppearanceChange];
  }

  v7.receiver = self;
  v7.super_class = UISegmentedControl;
  [(UIView *)&v7 bounds];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (void)__initWithFrameCommonOperations
{
  [(UISegmentedControl *)self _commonSegmentedControlInit];
  [(UISegmentedControl *)self _installVisualStyleDefaults];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  segments = self->_segments;
  self->_segments = v3;

  v5 = objc_opt_class();
  traitCollection = [(UIView *)self traitCollection];
  v8 = UISegmentedControlStyleProviderForIdiom(v5, [traitCollection userInterfaceIdiom]);

  if ([v8 useTVStyleFocusSelection])
  {
    createBackdropView = [v8 createBackdropView];

    if (!createBackdropView)
    {
      [UIView _performSystemAppearanceModifications:&__block_literal_global_609_0];
    }
  }
}

- (void)_commonSegmentedControlInit
{
  [(UIView *)self setOpaque:0];
  self->_highlightedSegment = -1;
  self->_selectedSegment = -1;
  v3 = objc_opt_class();
  traitCollection = [(UIView *)self traitCollection];
  v21 = UISegmentedControlStyleProviderForIdiom(v3, [traitCollection userInterfaceIdiom]);

  self->_hoveredSegment = -1;
  LODWORD(v3) = [v21 disablePointerEffects];
  pointerInteraction = [(UIControl *)self pointerInteraction];
  [pointerInteraction setEnabled:v3 ^ 1];

  self->_initiallyDraggedSegment = -1;
  self->_enabledAlpha = 1.0;
  if ([v21 useSelectionIndicatorStyling])
  {
    -[UIView setClipsToBounds:](self, "setClipsToBounds:", [v21 useTVStyleFocusSelection] ^ 1);
    v6 = objc_opt_class();
    traitCollection2 = [(UIView *)self traitCollection];
    [(UISegmentedControl *)self bounds];
    [v6 _cornerRadiusForTraitCollection:traitCollection2 size:-[UISegmentedControl controlSize](self controlSize:{"controlSize"), v8, v9}];
    [(UIView *)self _setCornerRadius:?];
  }

  else
  {
    [(UIView *)self setClipsToBounds:0];
  }

  v10 = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:sel__axLongPressHandler_];
  [(UISegmentedControl *)self setAxLongPressGestureRecognizer:v10];

  axLongPressGestureRecognizer = [(UISegmentedControl *)self axLongPressGestureRecognizer];
  [axLongPressGestureRecognizer setMinimumPressDuration:0.15];

  axLongPressGestureRecognizer2 = [(UISegmentedControl *)self axLongPressGestureRecognizer];
  [axLongPressGestureRecognizer2 setAllowableMovement:50.0];

  [(UISegmentedControl *)self _updateAxLongPressGestureRecognizer];
  if ([v21 useTVStyleFocusSelection])
  {
    [(UISegmentedControl *)self _setUseGlass:_UISolariumEnabled()];
    v13 = objc_opt_class();
    traitCollection3 = [(UIView *)self traitCollection];
    [(UISegmentedControl *)self bounds];
    [v13 _cornerRadiusForTraitCollection:traitCollection3 size:-[UISegmentedControl controlSize](self controlSize:{"controlSize"), v15, v16}];
    [(UIView *)self _setCornerRadius:?];

    layer = [(UIView *)self layer];
    [layer setCornerCurve:*MEMORY[0x1E69796E8]];
  }

  v18 = objc_opt_class();
  MethodImplementation = class_getMethodImplementation(v18, sel__createInfoViewForSegmentAtIndex_item_);
  v20 = objc_opt_class();
  self->_segmentedControlFlags = (*&self->_segmentedControlFlags & 0xFFFFFFFFFDFFFFFFLL | ((MethodImplementation != class_getMethodImplementation(v20, sel__createInfoViewForSegmentAtIndex_item_)) << 25));
}

- (void)_updateAxLongPressGestureRecognizer
{
  v3 = objc_opt_class();
  traitCollection = [(UIView *)self traitCollection];
  v8 = UISegmentedControlStyleProviderForIdiom(v3, [traitCollection userInterfaceIdiom]);

  preferredContentSizeCategory = [UIApp preferredContentSizeCategory];
  if (!UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory) || (*(&self->_segmentedControlFlags + 1) & 0x40) != 0)
  {
  }

  else
  {
    supportsAXPopover = [v8 supportsAXPopover];

    if (supportsAXPopover)
    {
      axLongPressGestureRecognizer = [(UISegmentedControl *)self axLongPressGestureRecognizer];
      [(UIView *)self addGestureRecognizer:axLongPressGestureRecognizer];
      goto LABEL_7;
    }
  }

  axLongPressGestureRecognizer = [(UISegmentedControl *)self axLongPressGestureRecognizer];
  [(UIView *)self removeGestureRecognizer:axLongPressGestureRecognizer];
LABEL_7:
}

- (void)_installVisualStyleDefaults
{
  v105 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_class();
  traitCollection = [(UIView *)self traitCollection];
  v5 = UISegmentedControlStyleProviderForIdiom(v3, [traitCollection userInterfaceIdiom]);

  if (objc_opt_respondsToSelector())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = *&self->_segmentedControlFlags & 0xFFFFFFFDFFFFFFFFLL | ((v6 != 0) << 33);
  self->_segmentedControlFlags = v7;
  if (v6)
  {
    useLensView = [v6 useLensView];
    v9 = 0x400000000;
    if (!useLensView)
    {
      v9 = 0;
    }

    self->_segmentedControlFlags = (*&self->_segmentedControlFlags & 0xFFFFFFFBFFFFFFFFLL | v9);
    useC2Animation = [v6 useC2Animation];
    v11 = 0x800000000;
    if (!useC2Animation)
    {
      v11 = 0;
    }

    self->_segmentedControlFlags = (*&self->_segmentedControlFlags & 0xFFFFFFF7FFFFFFFFLL | v11);
    allowFreeSelectionSliding = [v6 allowFreeSelectionSliding];
    v13 = 0x2000000000;
    if (!allowFreeSelectionSliding)
    {
      v13 = 0;
    }

    segmentedControlFlags = self->_segmentedControlFlags;
  }

  else
  {
    v13 = 0;
    segmentedControlFlags = v7 & 0xFFFFFFF3FFFFFFFFLL;
  }

  self->_segmentedControlFlags = (segmentedControlFlags & 0xFFFFFFDFFFFFFFFFLL | v13);
  hasTransparentBackgroundByDefault = [v5 hasTransparentBackgroundByDefault];
  v16 = hasTransparentBackgroundByDefault;
  if (hasTransparentBackgroundByDefault)
  {
    [(UISegmentedControl *)self setTransparentBackground:1];
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && [v5 apportionsSegmentWidthsByContentByDefault])
  {
    [(UISegmentedControl *)self setApportionsSegmentWidthsByContent:1];
  }

  defaultBackgroundTintColor = [v5 defaultBackgroundTintColor];
  if (defaultBackgroundTintColor && !self->_backgroundTintColor)
  {
    [(UISegmentedControl *)self _setBackgroundTintColor:defaultBackgroundTintColor];
  }

  if ([v5 supportsDynamicTypeByDefault])
  {
    [(UISegmentedControl *)self setAdjustsForContentSizeCategory:1];
  }

  [v5 defaultInterSegmentSpacing];
  if (v18 != 0.0)
  {
    [(UISegmentedControl *)self _setInterSegmentSpacing:?];
  }

  selectedSegmentDefaultVibrancyEffect = [v5 selectedSegmentDefaultVibrancyEffect];
  [v5 selectedSegmentDefaultBlurEffect];
  v83 = v82 = v6;
  if ((*(&self->_segmentedControlFlags + 3) & 1) == 0)
  {
    if (selectedSegmentDefaultVibrancyEffect)
    {
      v19 = selectedSegmentDefaultVibrancyEffect;
    }

    else
    {
      v19 = v83;
    }

    v20 = v19;
    v21 = self->_selectedSegmentVisualEffect;
    v22 = v20;
    v23 = v22;
    if (v21 != v22)
    {
      if (v22 && v21)
      {
        v24 = [(UIVisualEffect *)v21 isEqual:v22];

        if (v24)
        {
          goto LABEL_54;
        }
      }

      else
      {
      }

      objc_storeStrong(&self->_selectedSegmentVisualEffect, v19);
      selectionIndicatorView = self->_selectionIndicatorView;
      if (selectionIndicatorView)
      {
        [(UIView *)selectionIndicatorView removeFromSuperview];
        v26 = self->_selectionIndicatorView;
        self->_selectionIndicatorView = 0;

        selectionImageView = self->_selectionImageView;
        self->_selectionImageView = 0;

        selfCopy = self;
        backdropView = selfCopy->_backdropView;
        if (backdropView)
        {
          if ((*(&self->_segmentedControlFlags + 3) & 0x80) != 0)
          {
            [(UIView *)backdropView contentView];
          }

          else
          {
            [(UIView *)selfCopy viewWithTag:-2031];
          }
          v30 = ;
        }

        else
        {
          v30 = selfCopy;
        }

        v31 = v30;

        v32 = [(UIView *)v31 viewWithTag:-2030];

        if (v32)
        {
          [v32 removeFromSuperview];
        }
      }

      v33 = defaultBackgroundTintColor;
      v99 = 0u;
      v100 = 0u;
      v97 = 0u;
      v98 = 0u;
      v34 = self->_segments;
      v35 = [(NSMutableArray *)v34 countByEnumeratingWithState:&v97 objects:v104 count:16];
      if (v35)
      {
        v36 = v35;
        v37 = *v98;
        do
        {
          for (i = 0; i != v36; ++i)
          {
            if (*v98 != v37)
            {
              objc_enumerationMutation(v34);
            }

            [*(*(&v97 + 1) + 8 * i) _removeSelectionIndicator];
          }

          v36 = [(NSMutableArray *)v34 countByEnumeratingWithState:&v97 objects:v104 count:16];
        }

        while (v36);
      }

      [(UISegmentedControl *)self _setNeedsBackgroundAndContentViewUpdate];
      defaultBackgroundTintColor = v33;
      goto LABEL_54;
    }

LABEL_54:
    v6 = v82;
  }

  if ((v16 & 1) != 0 || (objc_opt_respondsToSelector() & 1) == 0)
  {
    backgroundBlurEffect = 0;
  }

  else
  {
    backgroundBlurEffect = [v5 backgroundBlurEffect];
  }

  createBackdropView = [v5 createBackdropView];
  v41 = self->_backdropView;
  self->_backdropView = createBackdropView;

  v42 = self->_segmentedControlFlags;
  self->_segmentedControlFlags = (*&v42 & 0xFFFFFFFFEFFFFFFFLL | ((self->_backdropView != 0) << 28));
  if (self->_backdropView)
  {
    v81 = backgroundBlurEffect;
    v43 = [UIView alloc];
    [(UISegmentedControl *)self bounds];
    v44 = [(UIView *)v43 initWithFrame:?];
    [(UIView *)v44 setTag:-2031];
    [(UIView *)v44 setAutoresizingMask:18];
    v45 = defaultBackgroundTintColor;
    if ((*(&self->_segmentedControlFlags + 4) & 4) != 0)
    {
      if (self->_selectionIndicatorView)
      {
        [(UIView *)v44 addSubview:?];
      }

      v59 = [UIView alloc];
      [(UISegmentedControl *)self bounds];
      v60 = [(UIView *)v59 initWithFrame:?];
      [(UIView *)v60 setTag:-2032];
      [(UIView *)v60 setAutoresizingMask:18];
      [(UIView *)v44 addSubview:v60];
      v95 = 0u;
      v96 = 0u;
      v93 = 0u;
      v94 = 0u;
      v61 = self->_segments;
      v62 = [(NSMutableArray *)v61 countByEnumeratingWithState:&v93 objects:v103 count:16];
      if (v62)
      {
        v63 = v62;
        v64 = *v94;
        do
        {
          for (j = 0; j != v63; ++j)
          {
            if (*v94 != v64)
            {
              objc_enumerationMutation(v61);
            }

            [(UIView *)v60 addSubview:*(*(&v93 + 1) + 8 * j)];
          }

          v63 = [(NSMutableArray *)v61 countByEnumeratingWithState:&v93 objects:v103 count:16];
        }

        while (v63);
      }

      v6 = v82;
    }

    else
    {
      v91 = 0u;
      v92 = 0u;
      v89 = 0u;
      v90 = 0u;
      subviews = [(UIView *)self subviews];
      v47 = [subviews countByEnumeratingWithState:&v89 objects:v102 count:16];
      if (v47)
      {
        v48 = v47;
        v49 = *v90;
        do
        {
          for (k = 0; k != v48; ++k)
          {
            if (*v90 != v49)
            {
              objc_enumerationMutation(subviews);
            }

            [(UIView *)v44 addSubview:*(*(&v89 + 1) + 8 * k)];
          }

          v48 = [subviews countByEnumeratingWithState:&v89 objects:v102 count:16];
        }

        while (v48);
      }

      [(UIView *)v44 setClipsToBounds:[(UIView *)self clipsToBounds]];
      [(UIView *)self _cornerRadius];
      [(UIVisualEffectView *)v44 _setCornerRadius:?];
    }

    v66 = [(UIView *)self viewWithTag:-2031];
    defaultBackgroundTintColor = v45;
    if (v66)
    {
      v67 = v66;
      [v66 removeFromSuperview];
    }

    [(UIView *)self insertSubview:v44 atIndex:0];
    [(UISegmentedControl *)self bounds];
    [(UIView *)self->_backdropView setFrame:?];
    [(UIView *)self->_backdropView setAutoresizingMask:18];
    [(UIView *)self insertSubview:self->_backdropView atIndex:0];
    if ((*(&self->_segmentedControlFlags + 4) & 4) == 0)
    {
      [(UIView *)self setClipsToBounds:0];
      [(UIView *)self _setCornerRadius:0.0];
    }
  }

  else
  {
    if (!backgroundBlurEffect)
    {
      goto LABEL_93;
    }

    v80 = defaultBackgroundTintColor;
    self->_segmentedControlFlags = (*&v42 | 0x90000000);
    [(UISegmentedControl *)self setTransparentBackground:1];
    v81 = backgroundBlurEffect;
    v44 = [[UIVisualEffectView alloc] initWithEffect:backgroundBlurEffect];
    v51 = self->_backdropView;
    self->_backdropView = &v44->super;

    v87 = 0u;
    v88 = 0u;
    v85 = 0u;
    v86 = 0u;
    subviews2 = [(UIView *)self subviews];
    v53 = [subviews2 countByEnumeratingWithState:&v85 objects:v101 count:16];
    if (v53)
    {
      v54 = v53;
      v55 = *v86;
      do
      {
        for (m = 0; m != v54; ++m)
        {
          if (*v86 != v55)
          {
            objc_enumerationMutation(subviews2);
          }

          v57 = *(*(&v85 + 1) + 8 * m);
          contentView = [(UIVisualEffectView *)v44 contentView];
          [contentView addSubview:v57];
        }

        v54 = [subviews2 countByEnumeratingWithState:&v85 objects:v101 count:16];
      }

      while (v54);
    }

    [(UISegmentedControl *)self bounds];
    [(UIView *)self->_backdropView setFrame:?];
    [(UIView *)self->_backdropView setAutoresizingMask:18];
    [(UIView *)self insertSubview:self->_backdropView atIndex:0];
    v6 = v82;
    defaultBackgroundTintColor = v80;
  }

  backgroundBlurEffect = v81;

LABEL_93:
  v68 = objc_opt_respondsToSelector();
  v69 = 0x100000;
  if ((v68 & 1) == 0)
  {
    v69 = 0;
  }

  self->_segmentedControlFlags = (*&self->_segmentedControlFlags & 0xFFFFFFFFFFEFFFFFLL | v69);
  v70 = objc_opt_respondsToSelector();
  v71 = 0x200000;
  if ((v70 & 1) == 0)
  {
    v71 = 0;
  }

  self->_segmentedControlFlags = (*&self->_segmentedControlFlags & 0xFFFFFFFFFFDFFFFFLL | v71);
  v72 = objc_opt_respondsToSelector();
  v73 = 0x400000;
  if ((v72 & 1) == 0)
  {
    v73 = 0;
  }

  self->_segmentedControlFlags = (*&self->_segmentedControlFlags & 0xFFFFFFFFFFBFFFFFLL | v73);
  v74 = objc_opt_respondsToSelector();
  v75 = 0x800000;
  if ((v74 & 1) == 0)
  {
    v75 = 0;
  }

  self->_segmentedControlFlags = (*&self->_segmentedControlFlags & 0xFFFFFFFFFF7FFFFFLL | v75);
  v76 = objc_opt_respondsToSelector();
  v77 = 0x8000000;
  if ((v76 & 1) == 0)
  {
    v77 = 0;
  }

  self->_segmentedControlFlags = (*&self->_segmentedControlFlags & 0xFFFFFFFFF7FFFFFFLL | v77);
  v78 = objc_opt_respondsToSelector();
  v79 = 0x4000000;
  if ((v78 & 1) == 0)
  {
    v79 = 0;
  }

  self->_segmentedControlFlags = (*&self->_segmentedControlFlags & 0xFFFFFFFFFBFFFFFFLL | v79);
}

- (_UIHostedFocusSystem)_internalFocusSystem
{
  _focusSystem = [(UIView *)self _focusSystem];

  if (_focusSystem)
  {
    internalFocusSystem = self->_internalFocusSystem;
    if (!internalFocusSystem)
    {
      v5 = [[_UIHostedFocusSystem alloc] _initWithHostEnvironment:self];
      v6 = self->_internalFocusSystem;
      self->_internalFocusSystem = v5;

      [(_UIHostedFocusSystem *)self->_internalFocusSystem setDelegate:self];
      [(UIFocusSystem *)self->_internalFocusSystem _setEnabled:[(UIView *)self isFocused]];
      [(UIFocusSystem *)self->_internalFocusSystem setNeedsFocusUpdate];
      internalFocusSystem = self->_internalFocusSystem;
    }

    v7 = internalFocusSystem;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_resetForAppearanceChange
{
  v14 = *MEMORY[0x1E69E9840];
  *&self->_segmentedControlFlags &= ~0x800uLL;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_segments;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v9 + 1) + 8 * v7++) updateForAppearance:{self->_appearanceStorage, v9}];
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  if ([(NSMutableArray *)self->_segments count])
  {
    v8 = 0;
    do
    {
      [(UISegmentedControl *)self _updateDividerImageForSegmentAtIndex:v8++, v9];
    }

    while ([(NSMutableArray *)self->_segments count]> v8);
  }

  if ((*&self->_segmentedControlFlags & 0x60) == 0x20)
  {
    [(UISegmentedControl *)self sizeToFit];
  }

  [(UIView *)self invalidateIntrinsicContentSize];
}

- (void)_setNeedsBackgroundAndContentViewUpdate
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = self->_segments;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7++) setNeedsBackgroundAndContentViewUpdate];
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  [(UIView *)self setNeedsLayout];
}

- (void)layoutSubviews
{
  v143 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  backdropView = selfCopy->_backdropView;
  if (backdropView)
  {
    if ((*(&selfCopy->_segmentedControlFlags + 3) & 0x80) != 0)
    {
      [(UIView *)backdropView contentView];
    }

    else
    {
      [(UIView *)selfCopy viewWithTag:-2031];
    }
    v4 = ;
  }

  else
  {
    v4 = selfCopy;
  }

  v5 = v4;

  v6 = selfCopy;
  v7 = v6->_backdropView;
  v133 = v6;
  if (!v7)
  {
    goto LABEL_12;
  }

  segmentedControlFlags = v6->_segmentedControlFlags;
  if ((*&segmentedControlFlags & 0x80000000) != 0)
  {
    p_super = [(UIView *)v7 contentView];
    goto LABEL_14;
  }

  if ((*&segmentedControlFlags & 0x400000000) != 0)
  {
LABEL_12:
    v9 = v6;
  }

  else
  {
    v9 = [(UIView *)v6 viewWithTag:-2031];
  }

  p_super = &v9->super.super;
LABEL_14:

  v10 = UISegmentedControlSegmentContentView(v6);
  if ((*(&v6->_segmentedControlFlags + 1) & 8) != 0)
  {
    [(UISegmentedControl *)v6 _resetForAppearanceChange];
  }

  [(UISegmentedControl *)v6 bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = [v6->_appearanceStorage anyDividerImageForMini:0];
  v20 = v19;
  v128 = v5;
  if (v19)
  {
    [v19 size];
    innerSegmentSpacing = v21;
  }

  else
  {
    if ((*(&v6->_segmentedControlFlags + 1) & 0x20) != 0)
    {
      innerSegmentSpacing = v6->_innerSegmentSpacing;
    }

    else
    {
      v23 = objc_opt_class();
      traitCollection = [(UIView *)v6 traitCollection];
      [v23 _dividerWidthForTraitCollection:traitCollection size:{-[UISegmentedControl controlSize](v6, "controlSize")}];
      innerSegmentSpacing = v25;
    }

    v21 = 0.0;
  }

  v131 = v21;
  v26 = [(NSMutableArray *)v6->_segments count];
  v27 = v6->_segments;
  v127 = v20;
  if ((*(&v6->super.super._viewFlags + 18) & 0x40) != 0)
  {
    reverseObjectEnumerator = [(NSMutableArray *)v6->_segments reverseObjectEnumerator];
    allObjects = [reverseObjectEnumerator allObjects];

    v27 = allObjects;
  }

  v125 = v14;
  v141[0] = MEMORY[0x1E69E9820];
  v141[1] = 3221225472;
  v141[2] = __36__UISegmentedControl_layoutSubviews__block_invoke;
  v141[3] = &__block_descriptor_40_e26_v32__0__UISegment_8Q16_B24l;
  v141[4] = v26;
  [(NSMutableArray *)v27 enumerateObjectsUsingBlock:v141, 496];
  v30 = malloc_type_malloc(8 * v26, 0x100004000313F17uLL);
  v31 = v26;
  rect[0] = v26 - 1;
  v32 = v16 - innerSegmentSpacing * (v26 - 1);
  if (v26 < 1)
  {
    v34 = 0.0;
  }

  else
  {
    v33 = 0;
    v34 = 0.0;
    do
    {
      v35 = [(NSMutableArray *)v27 objectAtIndex:v33];
      v36 = v35;
      v37 = v35[72];
      if (v37 <= 0.0)
      {
        [v35 _idealWidth];
        v34 = v34 + v37;
      }

      else
      {
        v32 = v32 - v37;
        v31 = v31 + -1.0;
      }

      v30[v33] = v37;

      ++v33;
    }

    while (v26 != v33);
  }

  v38 = v6->_segmentedControlFlags;
  v39 = objc_opt_class();
  traitCollection2 = [(UIView *)v133 traitCollection];
  v41 = UISegmentedControlStyleProviderForIdiom(v39, [traitCollection2 userInterfaceIdiom]);

  v126 = v41;
  useSelectionIndicatorStyling = [v41 useSelectionIndicatorStyling];
  if (v26 < 1)
  {
    v129 = 0;
    v72 = v133;
  }

  else
  {
    v42 = 0;
    v43 = v32 / v34;
    v44 = 0.0;
    v45 = v32 / v31;
    do
    {
      v46 = [(NSMutableArray *)v27 objectAtIndex:v42];
      if (v46[72] == 0.0)
      {
        if ((*&v38 & 0x200) != 0)
        {
          v49 = v43 * v30[v42];
          v50 = floor(v49);
          v48 = ceil(v131 + v49);
          if (v42 < rect[0])
          {
            v48 = v50;
          }
        }

        else
        {
          v47 = floor(v45 + v44);
          v48 = ceil(v45 + v44);
          if (v42 < rect[0])
          {
            v48 = v47;
          }

          v44 = v45 - v48;
        }

        v30[v42] = v48;
      }

      ++v42;
    }

    while (v26 != v42);
    v51 = 0;
    v129 = 0;
    v52 = 1.0;
    do
    {
      v53 = [(NSMutableArray *)v27 objectAtIndex:v51];
      v54 = v53;
      v55 = floor(v12 + v30[v51]);
      if (v26 - 1 == v51)
      {
        v56 = 2;
      }

      else
      {
        v56 = 1;
      }

      if (!v51)
      {
        v56 = 0;
      }

      if (v26 == 1)
      {
        v57 = 3;
      }

      else
      {
        v57 = v56;
      }

      [v53 setSegmentPosition:v57];
      [v54 setFrame:{v12, v125, v55 - v12, v18}];
      v58 = v54[65];
      if (v58)
      {
        [(UIView *)p_super insertSubview:v58 atIndex:v51];
        [v54 frame];
        [v58 setFrame:?];
      }

      if ((*&v133->_segmentedControlFlags & 0x4080) != 0 && (*&v133->_segmentedControlFlags & 0x1000) == 0)
      {
        label = [v54 label];
        v61 = label;
        if (label && ([label setAssociatedLabel:0], objc_msgSend(v54, "_positionInfo"), objc_msgSend(v61, "_actualScaleFactor"), v63 = v62, objc_msgSend(v61, "transform"), v64 = v63 * v140, v63 * v140 < v52))
        {
          v65 = v61;

          v129 = v65;
        }

        else
        {
          v64 = v52;
        }

        v52 = v64;
      }

      if (v58)
      {
        v66 = v58;
      }

      else
      {
        v66 = v54;
      }

      v67 = v66;
      v68 = [v67 viewWithTag:-1030];
      [v68 frame];
      [v68 setFrame:?];
      if (useSelectionIndicatorStyling)
      {
        v69 = v51 + 1;
      }

      else
      {
        selectedSegment = v133->_selectedSegment;
        v69 = v51 + 1;
        if (v51 != selectedSegment && v69 != selectedSegment)
        {
          [(UIView *)v10 sendSubviewToBack:v54];
        }
      }

      [v54 setShowDivider:v51 < rect[0]];
      v12 = innerSegmentSpacing + v55;

      v51 = v69;
    }

    while (v69 != v26);
    v72 = v133;
    if (v52 < 1.0)
    {
      v138[0] = MEMORY[0x1E69E9820];
      v138[1] = 3221225472;
      v138[2] = __36__UISegmentedControl_layoutSubviews__block_invoke_2;
      v138[3] = &unk_1E7104F10;
      v129 = v129;
      v139 = v129;
      [(NSMutableArray *)v27 enumerateObjectsUsingBlock:v138];
    }
  }

  free(v30);
  if ((v72->_selectedSegment & 0x8000000000000000) == 0 && (*(&v72->_segmentedControlFlags + 2) & 8) == 0)
  {
    v73 = [(NSMutableArray *)v27 objectAtIndex:?];
    [(UIView *)v10 bringSubviewToFront:v73];
  }

  if (useSelectionIndicatorStyling)
  {
    if ((*&v72->_segmentedControlFlags & 0x80010) != 0x10)
    {
      goto LABEL_94;
    }
  }

  else
  {
    v74 = v72->_selectedSegment;
    if (v74 >= 1)
    {
      v75 = [(NSMutableArray *)v27 objectAtIndex:v74 - 1];
      [(UIView *)v10 bringSubviewToFront:v75];
    }

    if ((*&v72->_segmentedControlFlags & 0x80010) != 0x10)
    {
      goto LABEL_92;
    }
  }

  if ((v72->_highlightedSegment & 0x8000000000000000) == 0)
  {
    v76 = [(NSMutableArray *)v27 objectAtIndex:?];
    [(UIView *)v10 bringSubviewToFront:v76];
  }

  if ((useSelectionIndicatorStyling & 1) == 0)
  {
    highlightedSegment = v72->_highlightedSegment;
    if (highlightedSegment >= 1)
    {
      v78 = [(NSMutableArray *)v27 objectAtIndex:highlightedSegment - 1];
      [(UIView *)v10 bringSubviewToFront:v78];
    }

LABEL_92:
    if (v72->_removedSegment)
    {
      [(UIView *)v10 sendSubviewToBack:?];
    }
  }

LABEL_94:
  v136 = 0u;
  v137 = 0u;
  *&rect[3] = 0u;
  v135 = 0u;
  v79 = v27;
  v80 = [(NSMutableArray *)v79 countByEnumeratingWithState:&rect[3] objects:v142 count:16];
  if (v80)
  {
    v81 = v80;
    v82 = *v135;
    do
    {
      for (i = 0; i != v81; ++i)
      {
        if (*v135 != v82)
        {
          objc_enumerationMutation(v79);
        }

        v84 = *(rect[4] + 8 * i);
        badgeView = [v84 badgeView];
        v86 = badgeView;
        if (badgeView)
        {
          superview = [badgeView superview];

          if (!superview)
          {
            [(UIView *)v10 addSubview:v86];
          }

          [v84 frame];
          v89 = v88;
          *rect = v88;
          v91 = v90;
          v93 = v92;
          v95 = v94;
          [v86 frame];
          v97 = v96;
          v99 = v98;
          v101 = v100;
          v103 = v102;
          v144.origin.x = v89;
          v144.origin.y = v91;
          v144.size.width = v93;
          v144.size.height = v95;
          MaxX = CGRectGetMaxX(v144);
          v145.origin.x = v97;
          v145.origin.y = v99;
          v145.size.width = v101;
          v145.size.height = v103;
          v105 = ceil(MaxX - CGRectGetWidth(v145) * 0.5 + -6.0);
          *&v146.origin.x = rect[0];
          v146.origin.y = v91;
          v146.size.width = v93;
          v146.size.height = v95;
          MinY = CGRectGetMinY(v146);
          v147.origin.x = v105;
          v147.origin.y = v99;
          v147.size.width = v101;
          v147.size.height = v103;
          [v86 setFrame:{v105, ceil(MinY - CGRectGetHeight(v147) * 0.5 + 6.0), v101, v103}];
          [(UIView *)v10 bringSubviewToFront:v86];
        }
      }

      v81 = [(NSMutableArray *)v79 countByEnumeratingWithState:&rect[3] objects:v142 count:16];
    }

    while (v81);
  }

  v107 = v133;
  if (v133->_focusedSegment)
  {
    [(UIView *)v10 bringSubviewToFront:?];
  }

  v108 = v133->_backdropView;
  if (v108)
  {
    if ((*(&v133->_segmentedControlFlags + 3) & 0x80) == 0)
    {
      v109 = [(UIView *)v133 viewWithTag:-2031];
      if (v128 == v10)
      {
        [(UIView *)v133 sendSubviewToBack:v109];
      }

      else
      {
        [(UIView *)v133 bringSubviewToFront:v109];
      }

      v108 = v133->_backdropView;
    }

    [(UIView *)v133 sendSubviewToBack:v108];
    v110 = 0.0;
    if (v26 > 0)
    {
      v110 = 1.0;
    }

    [(UIView *)v133->_backdropView setAlpha:v110];
  }

  if (useSelectionIndicatorStyling)
  {
    if ((*(&v133->_segmentedControlFlags + 4) & 2) != 0 && [v126 alwaysUseConcentricCornerRadius])
    {
      if (v133->_backdropView && (*(&v133->_segmentedControlFlags + 3) & 0x80) != 0)
      {
        [(UIView *)p_super _setCornerRadius:0.0];
        [(UISegmentedControl *)v133 bounds];
        v112 = v118 * 0.5;
        v113 = v133->_backdropView;
      }

      else
      {
        [(UISegmentedControl *)v133 bounds];
        v112 = v111 * 0.5;
        v113 = p_super;
      }

      [(UIView *)v113 _setCornerRadius:v112];
    }

    else
    {
      v114 = objc_opt_class();
      traitCollection3 = [(UIView *)v133 traitCollection];
      [(UISegmentedControl *)v133 bounds];
      [v114 _cornerRadiusForTraitCollection:traitCollection3 size:-[UISegmentedControl controlSize](v133 controlSize:{"controlSize"), v116, v117}];
      [(UIView *)p_super _setCornerRadius:?];

      v107 = v133;
    }

    [(UISegmentedControl *)v107 _updateSelectionIndicator];
    selectionIndicatorView = v107->_selectionIndicatorView;
    if (selectionIndicatorView)
    {
      if (v10 == v128)
      {
        hoveredSegment = v107->_hoveredSegment;
        if (hoveredSegment == -1 || (v121 = v107->_selectedSegment, v121 == -1) || v121 == hoveredSegment)
        {
          -[UIView insertSubview:atIndex:](v128, "insertSubview:atIndex:", selectionIndicatorView, [*(&v107->super.super.super.super.isa + v124) count]);
        }

        else
        {
          v122 = [*(&v107->super.super.super.super.isa + v124) objectAtIndexedSubscript:?];
          [(UIView *)v128 insertSubview:selectionIndicatorView belowSubview:v122];

          v107 = v133;
        }
      }

      else
      {
        [(UIView *)v128 insertSubview:v107->_selectionIndicatorView belowSubview:v10];
      }

      v123 = [(UIView *)v128 viewWithTag:-2030];
      if (v123)
      {
        [(UIView *)v128 insertSubview:v123 belowSubview:v107->_selectionIndicatorView];
      }
    }
  }

  rect[1] = v107;
  rect[2] = UISegmentedControl;
  objc_msgSendSuper2(&rect[1], sel_layoutSubviews);
}

uint64_t __36__UISegmentedControl_layoutSubviews__block_invoke(uint64_t a1, void *a2, int a3)
{
  v3 = *(a1 + 32);
  if (v3 - 1 == a3)
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (v3 == 1)
  {
    v5 = 3;
  }

  else
  {
    v5 = v4;
  }

  return [a2 setSegmentPosition:v5];
}

- (void)_updateSelectionIndicator
{
  v3 = objc_opt_class();
  traitCollection = [(UIView *)self traitCollection];
  v5 = UISegmentedControlStyleProviderForIdiom(v3, [traitCollection userInterfaceIdiom]);

  if ([v5 useSelectionIndicatorStyling] && ((*(&self->_segmentedControlFlags + 2) & 0x40) == 0 || !objc_msgSend(v5, "shouldHideSelectionOnFocusUpdate") || (*(&self->_segmentedControlFlags + 1) & 0x80) == 0))
  {
    v74 = 0;
    v6 = [(UISegmentedControl *)self _segmentIndexToHighlight:&v74];
    animateSlidingSelectionByDefault = 0;
    if (+[UIView areAnimationsEnabled])
    {
      window = [(UIView *)self window];
      if (window)
      {
        animateSlidingSelectionByDefault = [v5 animateSlidingSelectionByDefault];
      }

      else
      {
        animateSlidingSelectionByDefault = 0;
      }
    }

    selectionIndicatorSegment = self->_selectionIndicatorSegment;
    self->_selectionIndicatorSegment = v6;
    if (v6 == -1)
    {
      v11 = 0;
    }

    else
    {
      v10 = [(NSMutableArray *)self->_segments objectAtIndexedSubscript:v6];
      v11 = v10;
      if (v10)
      {
        [v10 frame];
        if (v12 > 0.0)
        {
          [v11 frame];
          if (v13 > 0.0 && (v6 != selectionIndicatorSegment || ![v11 isHovered] || objc_msgSend(v11, "isAnimatingSelectionIndicator")) && (!objc_msgSend(v11, "_wantsFocusWithoutSelectionForStyleProvider:", v5) || (objc_msgSend(v11, "isFocused") & 1) == 0))
          {
            selectionIndicatorView = self->_selectionIndicatorView;
            v15 = &OBJC_IVAR___UITextHighlightView__contentClippingEffectView;
            if (selectionIndicatorView)
            {
              if ((*(&self->_segmentedControlFlags + 4) & 4) != 0)
              {
                v31 = selectionIndicatorView;
                v32 = v31;
                segmentedControlFlags = self->_segmentedControlFlags;
                if ((*&segmentedControlFlags & 0x20000000) == 0)
                {
                  v34 = *MEMORY[0x1E6979CF8] & ((*&segmentedControlFlags << 27) >> 63);
                  restingBackgroundView = [(UIView *)v31 restingBackgroundView];
                  layer = [restingBackgroundView layer];
                  [layer setCompositingFilter:v34];

                  selectedSegmentTintColor = [(UISegmentedControl *)self selectedSegmentTintColor];
                  v38 = selectedSegmentTintColor;
                  if (!selectedSegmentTintColor)
                  {
                    v38 = +[UIColor _controlForegroundColor];
                  }

                  restingBackgroundView2 = [(UIView *)v32 restingBackgroundView];
                  [restingBackgroundView2 setBackgroundColor:v38];

                  if (!selectedSegmentTintColor)
                  {
                  }

                  v15 = &OBJC_IVAR___UITextHighlightView__contentClippingEffectView;
                }
              }

              else
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  if ([v5 useGeneratedImages])
                  {
                    v71 = objc_opt_class();
                    [(UIView *)self->_selectionImageView bounds];
                    v17 = v16;
                    v19 = v18;
                    v68 = (*&self->_segmentedControlFlags >> 29) & 1;
                    traitCollection2 = [(UIView *)self traitCollection];
                    selectedSegmentTintColor2 = [(UISegmentedControl *)self selectedSegmentTintColor];
                    LODWORD(v63) = *&self->_segmentedControlFlags & 3;
                    v21 = [v71 _modernBackgroundSelected:1 shadow:1 maximumSize:0 highlighted:v68 hasMaterial:traitCollection2 traitCollection:selectedSegmentTintColor2 tintColor:v17 size:{v19, v63}];

                    v22 = v21;
                  }

                  else
                  {
                    v22 = 0;
                  }

                  v73 = v22;
                  [(UIImageView *)self->_selectionImageView setImage:?];
                  selfCopy = self;
                  backdropView = selfCopy->_backdropView;
                  if (backdropView)
                  {
                    if ((*(&self->_segmentedControlFlags + 3) & 0x80) != 0)
                    {
                      [(UIView *)backdropView contentView];
                    }

                    else
                    {
                      [(UIView *)selfCopy viewWithTag:-2031];
                    }
                    v48 = ;
                  }

                  else
                  {
                    v48 = selfCopy;
                  }

                  v51 = v48;

                  v52 = [(UIView *)v51 viewWithTag:-2030];

                  if (v52)
                  {
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v70 = objc_opt_class();
                      [v52 bounds];
                      v54 = v53;
                      v56 = v55;
                      v67 = (*&self->_segmentedControlFlags >> 29) & 1;
                      traitCollection3 = [(UIView *)selfCopy traitCollection];
                      selectedSegmentTintColor3 = [(UISegmentedControl *)selfCopy selectedSegmentTintColor];
                      LODWORD(v63) = *&self->_segmentedControlFlags & 3;
                      v59 = [v70 _modernBackgroundSelected:1 shadow:2 maximumSize:0 highlighted:v67 hasMaterial:traitCollection3 traitCollection:selectedSegmentTintColor3 tintColor:v54 size:{v56, v63}];

                      [v52 setImage:v59];
                    }
                  }

                  v15 = &OBJC_IVAR___UITextHighlightView__contentClippingEffectView;
                }

                else
                {
                  transparentBackground = [(UISegmentedControl *)self transparentBackground];
                  _useDynamicShadow = [(UISegmentedControl *)self _useDynamicShadow];
                  traitCollection4 = [(UIView *)self traitCollection];
                  selectedSegmentTintColor4 = [(UISegmentedControl *)self selectedSegmentTintColor];
                  v66 = transparentBackground;
                  if ([v5 useGeneratedImages])
                  {
                    v64 = objc_opt_class();
                    [(UIView *)self->_selectionImageView bounds];
                    LODWORD(v63) = *&self->_segmentedControlFlags & 3;
                    v42 = selectedSegmentTintColor4;
                    v45 = [v64 _modernBackgroundSelected:1 shadow:transparentBackground || _useDynamicShadow maximumSize:0 highlighted:(*&self->_segmentedControlFlags >> 29) & 1 hasMaterial:traitCollection4 traitCollection:selectedSegmentTintColor4 tintColor:v43 size:{v44, v63}];
                  }

                  else
                  {
                    v45 = 0;
                    v42 = selectedSegmentTintColor4;
                  }

                  [(UIImageView *)self->_selectionImageView setImage:v45];
                  if (_useDynamicShadow)
                  {
                    v15 = &OBJC_IVAR___UITextHighlightView__contentClippingEffectView;
                    if (!v66 && [objc_opt_class() _useShadowForSelectedTintColor:v42 traitCollection:traitCollection4])
                    {
                      [(UISegmentedControl *)self _updateDynamicShadow:1 animated:0];
                    }
                  }

                  else
                  {
                    [(UIView *)self->_selectionImageView layer];
                    v50 = v49 = v42;
                    [v50 setShadowOpacity:0.0];

                    v42 = v49;
                    v15 = &OBJC_IVAR___UITextHighlightView__contentClippingEffectView;
                  }
                }
              }
            }

            else
            {
              [(UISegmentedControl *)self _insertSelectionViewForSegment:v11];
              animateSlidingSelectionByDefault = 0;
            }

            v60 = v15[58];
            if (*(&self->super.super.super.super.isa + v60) && (objc_opt_respondsToSelector() & 1) != 0)
            {
              v61 = *(&self->super.super.super.super.isa + v60);
              traitCollection5 = [(UIView *)self traitCollection];
              [v61 setCompositingMode:{objc_msgSend(v5, "selectedSegmentCompositingModeForTraitCollection:", traitCollection5)}];
            }

            [(UISegmentedControl *)self _updateSelectionToSegment:v11 highlight:v74 shouldAnimate:animateSlidingSelectionByDefault sameSegment:v6 == selectionIndicatorSegment];
LABEL_34:

            goto LABEL_35;
          }
        }
      }
    }

    [(UIView *)self->_highlightIndicatorView removeFromSuperview];
    highlightIndicatorView = self->_highlightIndicatorView;
    self->_highlightIndicatorView = 0;

    [(UIView *)self->_selectionIndicatorView removeFromSuperview];
    v24 = self->_selectionIndicatorView;
    self->_selectionIndicatorView = 0;

    selectionImageView = self->_selectionImageView;
    self->_selectionImageView = 0;

    selfCopy2 = self;
    v27 = selfCopy2->_backdropView;
    if (v27)
    {
      if ((*(&self->_segmentedControlFlags + 3) & 0x80) != 0)
      {
        [(UIView *)v27 contentView];
      }

      else
      {
        [(UIView *)selfCopy2 viewWithTag:-2031];
      }
      v28 = ;
    }

    else
    {
      v28 = selfCopy2;
    }

    v29 = v28;

    v30 = [(UIView *)v29 viewWithTag:-2030];

    if (v30)
    {
      [v30 removeFromSuperview];
    }

    goto LABEL_34;
  }

LABEL_35:
}

- (BOOL)_animateHighlightingSelectionByDefault
{
  if ((*(&self->_segmentedControlFlags + 2) & 0x80) == 0)
  {
    return 0;
  }

  v4 = objc_opt_class();
  traitCollection = [(UIView *)self traitCollection];
  v6 = UISegmentedControlStyleProviderForIdiom(v4, [traitCollection userInterfaceIdiom]);

  LOBYTE(traitCollection) = [v6 animateHighlightingSelectionByDefault];
  return traitCollection;
}

- (BOOL)hasBackdropViewOrMaterial
{
  segmentedControlFlags = self->_segmentedControlFlags;
  if ((*&segmentedControlFlags & 0x200000000) != 0)
  {
    v3 = 0x20000000;
  }

  else
  {
    v3 = 0x10000000;
  }

  return (v3 & *&segmentedControlFlags) != 0;
}

- (id)_viewForLoweringBaselineLayoutAttribute:(int)attribute
{
  v19 = *MEMORY[0x1E69E9840];
  v17.receiver = self;
  v17.super_class = UISegmentedControl;
  v4 = [(UIView *)&v17 _viewForLoweringBaselineLayoutAttribute:*&attribute];
  v5 = v4;
  if (v4 && [v4 translatesAutoresizingMaskIntoConstraints])
  {
    [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = self->_segments;
    v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          viewForLastBaselineLayout = [*(*(&v13 + 1) + 8 * i) viewForLastBaselineLayout];
          [viewForLastBaselineLayout setTranslatesAutoresizingMaskIntoConstraints:0];
        }

        v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v18 count:16];
      }

      while (v8);
    }
  }

  return v5;
}

+ (void)_registerStyleProvider:(id)provider forIdiom:(int64_t)idiom
{
  providerCopy = provider;
  if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    v5 = qword_1ED4974C8;
    if (!qword_1ED4974C8)
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      v7 = qword_1ED4974C8;
      qword_1ED4974C8 = dictionary;

      v5 = qword_1ED4974C8;
    }

    v8 = [MEMORY[0x1E696AD98] numberWithInteger:idiom];
    [v5 setObject:providerCopy forKey:v8];
  }
}

+ (BOOL)automaticallyNotifiesObserversForKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqualToString:@"selectedSegmentIndex"])
  {
    v5 = 0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___UISegmentedControl;
    v5 = objc_msgSendSuper2(&v7, sel_automaticallyNotifiesObserversForKey_, keyCopy);
  }

  return v5;
}

+ (double)_defaultHeightForTraitCollection:(id)collection size:(int)size
{
  v4 = *&size;
  collectionCopy = collection;
  v7 = UISegmentedControlStyleProviderForIdiom(self, [collectionCopy userInterfaceIdiom]);
  [v7 defaultHeightForControlSize:v4 traitCollection:collectionCopy];
  v9 = v8;

  return v9;
}

+ (double)_defaultHeight
{
  v3 = +[UITraitCollection _fallbackTraitCollection];
  [self _defaultHeightForTraitCollection:v3 size:0];
  v5 = v4;

  return v5;
}

+ (double)defaultHeightForStyle:(int64_t)style size:(int)size
{
  v4 = *&size;
  v6 = +[UITraitCollection _fallbackTraitCollection];
  [self _defaultHeightForTraitCollection:v6 size:v4];
  v8 = v7;

  return v8;
}

+ (double)defaultHeightForStyle:(int64_t)style
{
  v4 = +[UITraitCollection _fallbackTraitCollection];
  [self _defaultHeightForTraitCollection:v4 size:0];
  v6 = v5;

  return v6;
}

- (void)setApportionsSegmentWidthsByContent:(BOOL)apportionsSegmentWidthsByContent
{
  v4 = 512;
  if (!apportionsSegmentWidthsByContent)
  {
    v4 = 0;
  }

  self->_segmentedControlFlags = (*&self->_segmentedControlFlags & 0xFFFFFFFFFFFFFDFFLL | v4);
  [(UIView *)self setNeedsLayout];

  [(UIView *)self invalidateIntrinsicContentSize];
}

- (void)_setUseGlass:(BOOL)glass
{
  if (((((*&self->_segmentedControlFlags & 0x40000000) == 0) ^ glass) & 1) == 0)
  {
    v5 = 0x40000000;
    if (!glass)
    {
      v5 = 0;
    }

    self->_segmentedControlFlags = (*&self->_segmentedControlFlags & 0xFFFFFFFFBFFFFFFFLL | v5);
    superview = [(UIView *)self superview];
    traitCollection = [(UIView *)self traitCollection];
    [(UISegmentedControl *)self _updateForGlassIfNeededForSuperview:superview traitCollection:traitCollection];
  }
}

- (void)_updateForGlassIfNeededForSuperview:(void *)superview traitCollection:
{
  v39 = *MEMORY[0x1E69E9840];
  v5 = a2;
  superviewCopy = superview;
  if (!self)
  {
    goto LABEL_41;
  }

  v7 = v5;
  v8 = superviewCopy;
  if ((*(self + 627) & 0x40) != 0)
  {
    goto LABEL_12;
  }

  objc_opt_class();
  if (v7)
  {
    superview = v7;
    while ((objc_opt_isKindOfClass() & 1) == 0)
    {
      superview = [superview superview];
      if (!superview)
      {
        goto LABEL_7;
      }
    }

LABEL_12:
    v11 = 1;
    goto LABEL_15;
  }

LABEL_7:
  v10 = v8;
  if (qword_1ED4974D0 != -1)
  {
    dispatch_once(&qword_1ED4974D0, &__block_literal_global_167);
  }

  if (_MergedGlobals_58 == 1 && [v10 _controlsShouldAddGlass])
  {
    v11 = [v10 _containedInBarBackgroundMaterial] ^ 1;
  }

  else
  {
    v11 = 0;
  }

LABEL_15:
  v12 = *(self + 624);
  if ((v12 & 0x290000000) != 0x210000000 || v11 == ((v12 >> 29) & 1))
  {
    goto LABEL_41;
  }

  v14 = objc_opt_class();
  traitCollection = [self traitCollection];
  v16 = UISegmentedControlStyleProviderForIdiom(v14, [traitCollection userInterfaceIdiom]);
  if (objc_opt_respondsToSelector())
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  v18 = *(self + 624);
  if (v11)
  {
    *(self + 624) = v18 | 0x20000000;
    useTVStyleFocusSelection = [v17 useTVStyleFocusSelection];
    backgroundMaterial = [v17 backgroundMaterial];
    if (useTVStyleFocusSelection)
    {
      [*(self + 488) _setBackground:backgroundMaterial];

      [self addSubview:*(self + 488)];
      if ((v12 & 0x400000000) == 0)
      {
        goto LABEL_30;
      }
    }

    else
    {
      [self _setBackground:backgroundMaterial];

      if ((v12 & 0x400000000) == 0)
      {
        goto LABEL_30;
      }
    }
  }

  else
  {
    *(self + 624) = v18 & 0xFFFFFFFFDFFFFFFFLL;
    if ([v17 useTVStyleFocusSelection])
    {
      [*(self + 488) _setBackground:0];
    }

    [self _setBackground:0];
    if ((v12 & 0x400000000) == 0)
    {
      goto LABEL_30;
    }
  }

  [*(self + 456) removeFromSuperview];
  v21 = *(self + 456);
  *(self + 456) = 0;

  [self _updateSelectionIndicator];
LABEL_30:
  [self setTransparentBackground:v11];
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v22 = *(self + 496);
  v23 = [v22 countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v35;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v35 != v25)
        {
          objc_enumerationMutation(v22);
        }

        [*(*(&v34 + 1) + 8 * i) _setHasMaterial:{(*(self + 624) >> 29) & 1, v34}];
      }

      v24 = [v22 countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v24);
  }

  [self frame];
  v28 = v27;
  v30 = v29;
  v32 = v31;
  if (v11)
  {
    [v17 defaultHeightWithBackgroundMaterial];
  }

  else
  {
    [self _barHeight];
  }

  [self setFrame:{v28, v30, v32, v33, v34}];
  [self setNeedsLayout];
  [self invalidateIntrinsicContentSize];

LABEL_41:
}

- (void)willMoveToSuperview:(id)superview
{
  v6.receiver = self;
  v6.super_class = UISegmentedControl;
  superviewCopy = superview;
  [(UIView *)&v6 willMoveToSuperview:superviewCopy];
  v5 = [(UIView *)self traitCollection:v6.receiver];
  [(UISegmentedControl *)self _updateForGlassIfNeededForSuperview:superviewCopy traitCollection:v5];
}

void __67__UISegmentedControl__shouldEffectivelyUseGlassForTraitCollection___block_invoke()
{
  if (dyld_program_sdk_at_least())
  {
    v0 = _UIMainBundleIdentifier();
    _MergedGlobals_58 = [&unk_1EFE2BCE0 containsObject:v0] ^ 1;
  }

  else
  {
    _MergedGlobals_58 = 0;
  }
}

void __53__UISegmentedControl___initWithFrameCommonOperations__block_invoke()
{
  v0 = [UITraitCollection traitCollectionWithUserInterfaceStyle:1];
  v5 = [(UIView *)UISegmentedControl appearanceForTraitCollection:v0];

  v1 = [UITraitCollection traitCollectionWithUserInterfaceStyle:2];
  v2 = [(UIView *)UISegmentedControl appearanceForTraitCollection:v1];

  v3 = [UIColor colorWithWhite:0.0 alpha:0.1];
  [v5 setBackgroundColor:v3];

  v4 = [UIColor colorWithWhite:1.0 alpha:0.05];
  [v2 setBackgroundColor:v4];
}

- (UISegmentedControl)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = UISegmentedControl;
  v3 = [(UIControl *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(UISegmentedControl *)v3 __initWithFrameCommonOperations];
  }

  return v4;
}

- (UISegmentedControl)initWithItems:(NSArray *)items
{
  v4 = items;
  if (dyld_program_sdk_at_least())
  {
    v16.receiver = self;
    v16.super_class = UISegmentedControl;
    v5 = [(UIControl *)&v16 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    [(UISegmentedControl *)v5 __initWithFrameCommonOperations];
    if (!v5)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v5 = [(UISegmentedControl *)self initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    if (!v5)
    {
      goto LABEL_17;
    }
  }

  v5->_segmentedControlFlags = (*&v5->_segmentedControlFlags & 0xFFFFFFFFFFFFFFDCLL | 0x20);
  v6 = [(NSArray *)v4 count];
  v7 = v6;
  if (v6 >= 1)
  {
    v8 = 0;
    v9 = (v6 - 1);
    v10 = v6 & 0x7FFFFFFF;
    do
    {
      if (v9 == v8)
      {
        v11 = 2;
      }

      else
      {
        v11 = 1;
      }

      if (!v8)
      {
        v11 = 0;
      }

      if (v7 == 1)
      {
        v12 = 3;
      }

      else
      {
        v12 = v11;
      }

      v13 = [(NSArray *)v4 objectAtIndex:v8];
      v14 = [(UISegmentedControl *)v5 _createAndAddSegmentAtIndex:v8 position:v12 withInfo:v13];

      ++v8;
    }

    while (v10 != v8);
  }

  [(UISegmentedControl *)v5 sizeToFit];
LABEL_17:

  return v5;
}

- (UISegmentedControl)initWithFrame:(CGRect)frame actions:(NSArray *)actions
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v9 = actions;
  height = [(UISegmentedControl *)self initWithFrame:x, y, width, height];
  if (height)
  {
    v11 = [MEMORY[0x1E695DFB8] orderedSetWithArray:v9];
    v12 = [v11 count];
    v13 = v12;
    if (v12 >= 1)
    {
      v14 = 0;
      v15 = (v12 - 1);
      v16 = v12 & 0x7FFFFFFF;
      do
      {
        if (v15 == v14)
        {
          v17 = 2;
        }

        else
        {
          v17 = 1;
        }

        if (!v14)
        {
          v17 = 0;
        }

        if (v13 == 1)
        {
          v18 = 3;
        }

        else
        {
          v18 = v17;
        }

        v19 = [v11 objectAtIndexedSubscript:v14];
        v20 = [(UISegmentedControl *)height _createAndAddSegmentAtIndex:v14 position:v18 withInfo:v19];

        ++v14;
      }

      while (v16 != v14);
    }
  }

  return height;
}

- (UISegmentedControl)initWithCoder:(NSCoder *)coder
{
  v4 = coder;
  v24.receiver = self;
  v24.super_class = UISegmentedControl;
  v5 = [(UIControl *)&v24 initWithCoder:v4];
  v6 = v5;
  if (v5)
  {
    [(UISegmentedControl *)v5 _commonSegmentedControlInit];
    v7 = [(NSCoder *)v4 decodeBoolForKey:@"UIMomentary"];
    v8 = 8;
    if (!v7)
    {
      v8 = 0;
    }

    v6->_segmentedControlFlags = (*&v6->_segmentedControlFlags & 0xFFFFFFFFFFFFFFF7 | v8);
    v9 = [(NSCoder *)v4 decodeBoolForKey:@"UISegmentedControlAlwaysEmitValueChanged"];
    v10 = 4;
    if (!v9)
    {
      v10 = 0;
    }

    v6->_segmentedControlFlags = (*&v6->_segmentedControlFlags & 0xFFFFFFFFFFFFFFFBLL | v10);
    v11 = [(NSCoder *)v4 decodeBoolForKey:@"UIUseProportionalWidthSegments"];
    v12 = 512;
    if (!v11)
    {
      v12 = 0;
    }

    v6->_segmentedControlFlags = (*&v6->_segmentedControlFlags & 0xFFFFFFFFFFFFFDFFLL | v12);
    v13 = [(NSCoder *)v4 decodeObjectForKey:@"UISegments"];
    v14 = [v13 mutableCopy];
    v15 = v14;
    if (!v14)
    {
      v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    objc_storeStrong(&v6->_segments, v15);
    if (!v14)
    {
    }

    v16 = [(NSCoder *)v4 decodeBoolForKey:@"UIAutosizeToFitSegments"];
    v17 = 32;
    if (!v16)
    {
      v17 = 0;
    }

    v6->_segmentedControlFlags = (*&v6->_segmentedControlFlags & 0xFFFFFFFFFFFFFFDFLL | v17);
    [(UISegmentedControl *)v6 setControlSize:[(NSCoder *)v4 decodeIntegerForKey:@"UISegmentedControlSize"]];
    v18 = [(NSCoder *)v4 decodeIntegerForKey:@"UISelectedSegmentIndex"];
    if ((v18 & 0x8000000000000000) != 0 || (v19 = v18, v18 >= [(NSMutableArray *)v6->_segments count]))
    {
      v19 = -1;
    }

    [(UISegmentedControl *)v6 _setSelectedSegmentIndex:v19 notify:0 animate:0];
    [(UISegmentedControl *)v6 _setEnabled:[(UIControl *)v6 isEnabled] forcePropagateToSegments:1];
    if ([(NSCoder *)v4 containsValueForKey:@"UISpringLoaded"])
    {
      [(UISegmentedControl *)v6 setSpringLoaded:[(NSCoder *)v4 decodeBoolForKey:@"UISpringLoaded"]];
    }

    v20 = [(NSCoder *)v4 decodeObjectForKey:@"UISegmentedControlSelectedSegmentTintColor"];
    [(UISegmentedControl *)v6 setSelectedSegmentTintColor:v20];

    v21 = [(NSCoder *)v4 decodeObjectForKey:@"UISegmentedControlSelectedSegmentVibrancyEffect"];
    [(UISegmentedControl *)v6 _setSelectedSegmentVibrancyEffect:v21];

    v22 = [(NSCoder *)v4 decodeObjectForKey:@"UISegmentedControlBackgroundTintColor"];
    [(UISegmentedControl *)v6 _setBackgroundTintColor:v22];

    [(UISegmentedControl *)v6 _installVisualStyleDefaults];
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = UISegmentedControl;
  [(UIControl *)&v13 encodeWithCoder:coderCopy];
  segmentedControlFlags = self->_segmentedControlFlags;
  if ((*&segmentedControlFlags & 8) != 0)
  {
    [coderCopy encodeBool:1 forKey:@"UIMomentary"];
    segmentedControlFlags = self->_segmentedControlFlags;
  }

  if ((*&segmentedControlFlags & 4) != 0)
  {
    [coderCopy encodeBool:1 forKey:@"UISegmentedControlAlwaysEmitValueChanged"];
  }

  if ([(NSMutableArray *)self->_segments count])
  {
    [coderCopy encodeObject:self->_segments forKey:@"UISegments"];
  }

  v6 = self->_segmentedControlFlags;
  if ((*&v6 & 3) != 0)
  {
    [coderCopy encodeInteger:*&self->_segmentedControlFlags & 3 forKey:@"UISegmentedControlSize"];
    v6 = self->_segmentedControlFlags;
  }

  if ((*&v6 & 0x20) != 0)
  {
    [coderCopy encodeBool:1 forKey:@"UIAutosizeToFitSegments"];
    v6 = self->_segmentedControlFlags;
  }

  if ((*&v6 & 0x200) != 0)
  {
    [coderCopy encodeBool:1 forKey:@"UIUseProportionalWidthSegments"];
  }

  [coderCopy encodeInteger:self->_selectedSegment forKey:@"UISelectedSegmentIndex"];
  if ([(UISegmentedControl *)self isSpringLoaded])
  {
    [coderCopy encodeBool:1 forKey:@"UISpringLoaded"];
  }

  selectedSegmentTintColor = [(UISegmentedControl *)self selectedSegmentTintColor];

  if (selectedSegmentTintColor)
  {
    selectedSegmentTintColor2 = [(UISegmentedControl *)self selectedSegmentTintColor];
    [coderCopy encodeObject:selectedSegmentTintColor2 forKey:@"UISegmentedControlSelectedSegmentTintColor"];
  }

  _selectedSegmentVibrancyEffect = [(UISegmentedControl *)self _selectedSegmentVibrancyEffect];

  if (_selectedSegmentVibrancyEffect)
  {
    _selectedSegmentVibrancyEffect2 = [(UISegmentedControl *)self _selectedSegmentVibrancyEffect];
    [coderCopy encodeObject:_selectedSegmentVibrancyEffect2 forKey:@"UISegmentedControlSelectedSegmentVibrancyEffect"];
  }

  _backgroundTintColor = [(UISegmentedControl *)self _backgroundTintColor];

  if (_backgroundTintColor)
  {
    _backgroundTintColor2 = [(UISegmentedControl *)self _backgroundTintColor];
    [coderCopy encodeObject:_backgroundTintColor2 forKey:@"UISegmentedControlBackgroundTintColor"];
  }
}

- (void)dealloc
{
  [(UISegmentedControl *)self removeAllSegments];
  v3.receiver = self;
  v3.super_class = UISegmentedControl;
  [(UIView *)&v3 dealloc];
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v16.receiver = self;
  v16.super_class = UISegmentedControl;
  [(UIView *)&v16 traitCollectionDidChange:changeCopy];
  traitCollection = [(UIView *)self traitCollection];
  userInterfaceIdiom = [changeCopy userInterfaceIdiom];
  if (userInterfaceIdiom != [traitCollection userInterfaceIdiom])
  {
    traitCollection2 = [(UIView *)self traitCollection];
    userInterfaceIdiom2 = [traitCollection2 userInterfaceIdiom];

    if (userInterfaceIdiom2 != -1 && [changeCopy userInterfaceIdiom] != -1)
    {
      [(UISegmentedControl *)self _installVisualStyleDefaults];
    }
  }

  if ([traitCollection hasDifferentColorAppearanceComparedToTraitCollection:changeCopy])
  {
    [(UISegmentedControl *)self _setNeedsBackgroundAndContentViewUpdate];
  }

  if (traitCollection && (!changeCopy || traitCollection[13] != changeCopy[13]))
  {
    [(UISegmentedControl *)self _updateAxLongPressGestureRecognizer];
  }

  superview = [(UIView *)self superview];
  [(UISegmentedControl *)self _updateForGlassIfNeededForSuperview:superview traitCollection:traitCollection];

  traitCollection3 = [(UIView *)self traitCollection];
  if (traitCollection3)
  {
    if (changeCopy)
    {
      v11 = traitCollection3[15];
      v12 = changeCopy[15];

      if (v11 == v12)
      {
        goto LABEL_17;
      }
    }

    else
    {
    }

    [(UISegmentedControl *)self _setNeedsAppearanceUpdate];
  }

LABEL_17:
  if ((*(&self->_segmentedControlFlags + 2) & 0x10) != 0)
  {
    v13 = objc_opt_class();
    traitCollection4 = [(UIView *)self traitCollection];
    v15 = UISegmentedControlStyleProviderForIdiom(v13, [traitCollection4 userInterfaceIdiom]);

    [v15 updateSegmentedControl:self fromTraitCollection:changeCopy];
  }
}

- (void)_didMoveFromWindow:(id)window toWindow:(id)toWindow
{
  toWindowCopy = toWindow;
  v10.receiver = self;
  v10.super_class = UISegmentedControl;
  [(UIControl *)&v10 _didMoveFromWindow:window toWindow:toWindowCopy];
  if (toWindowCopy)
  {
    layer = [(UIView *)self layer];
    screen = [toWindowCopy screen];
    [screen scale];
    [layer setRasterizationScale:?];

    _internalFocusSystem = [(UISegmentedControl *)self _internalFocusSystem];
  }
}

- (void)_setSegmentedControlAppearance:(id *)appearance
{
  appearanceStorage = self->_appearanceStorage;
  if (!appearanceStorage)
  {
    v6 = objc_alloc_init(_UISegmentedControlAppearanceStorage);
    v7 = self->_appearanceStorage;
    self->_appearanceStorage = v6;

    appearanceStorage = self->_appearanceStorage;
  }

  [appearanceStorage setDetail:appearance];

  [(UISegmentedControl *)self _setNeedsAppearanceUpdate];
}

- (void)_setAppearanceIsTiled:(BOOL)tiled leftCapWidth:(unint64_t)width rightCapWidth:(unint64_t)capWidth
{
  tiledCopy = tiled;
  appearanceStorage = self->_appearanceStorage;
  if (!appearanceStorage)
  {
    v10 = objc_alloc_init(_UISegmentedControlAppearanceStorage);
    v11 = self->_appearanceStorage;
    self->_appearanceStorage = v10;

    appearanceStorage = self->_appearanceStorage;
  }

  [appearanceStorage setIsTiled:tiledCopy leftCapWidth:width rightCapWidth:capWidth];

  [(UISegmentedControl *)self _setNeedsAppearanceUpdate];
}

- (void)_setControlSize:(int)size andInvalidate:(BOOL)invalidate
{
  invalidateCopy = invalidate;
  v5 = *&size;
  v25 = *MEMORY[0x1E69E9840];
  segmentedControlFlags = self->_segmentedControlFlags;
  self->_segmentedControlFlags = (*&segmentedControlFlags & 0xFFFFFFFFFFFFFFFCLL | size & 3);
  if ((*&segmentedControlFlags & 0x20) != 0)
  {
    [(UISegmentedControl *)self sizeToFit];
  }

  else
  {
    [(UISegmentedControl *)self frame];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    [(UISegmentedControl *)self _barHeight];
    [(UISegmentedControl *)self setFrame:v9, v11, v13, v14];
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v15 = self->_segments;
  v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v21;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v21 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [*(*(&v20 + 1) + 8 * i) setControlSize:{v5, v20}];
      }

      v17 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v17);
  }

  if (invalidateCopy)
  {
    [(UIView *)self setNeedsLayout];
    [(UIView *)self invalidateIntrinsicContentSize];
  }
}

- (void)setControlSize:(int)size
{
  if ((*&self->_segmentedControlFlags & 3) != size)
  {
    [UISegmentedControl _setControlSize:"_setControlSize:andInvalidate:" andInvalidate:?];
  }
}

- (void)setMomentary:(BOOL)momentary
{
  if (((((*&self->_segmentedControlFlags & 8) == 0) ^ momentary) & 1) == 0)
  {
    v3 = 8;
    if (!momentary)
    {
      v3 = 0;
    }

    self->_segmentedControlFlags = (*&self->_segmentedControlFlags & 0xFFFFFFFFFFFFFFF7 | v3);
    segments = self->_segments;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __35__UISegmentedControl_setMomentary___block_invoke;
    v5[3] = &__block_descriptor_33_e15_v32__0_8Q16_B24l;
    v6 = momentary;
    [(NSMutableArray *)segments enumerateObjectsUsingBlock:v5];
  }
}

- (void)_setAutosizeText:(BOOL)text
{
  v15 = *MEMORY[0x1E69E9840];
  if (((((*&self->_segmentedControlFlags & 0x80) == 0) ^ text) & 1) == 0)
  {
    v4 = 128;
    if (!text)
    {
      v4 = 0;
    }

    self->_segmentedControlFlags = (*&self->_segmentedControlFlags & 0xFFFFFFFFFFFFFF7FLL | v4);
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = self->_segments;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v11;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [*(*(&v10 + 1) + 8 * i) setAutosizeText:{(*&self->_segmentedControlFlags >> 7) & 1, v10}];
        }

        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }
  }
}

- (void)setBarStyle:(int64_t)style
{
  v14 = *MEMORY[0x1E69E9840];
  if (self->_barStyle != style)
  {
    self->_barStyle = style;
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = self->_segments;
    v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v10;
      do
      {
        v8 = 0;
        do
        {
          if (*v10 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v9 + 1) + 8 * v8++) setBarStyle:{self->_barStyle, v9}];
        }

        while (v6 != v8);
        v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }
  }
}

- (void)setTransparentBackground:(BOOL)background
{
  if (((((*&self->_segmentedControlFlags & 0x100) == 0) ^ background) & 1) == 0)
  {
    v3 = 256;
    if (!background)
    {
      v3 = 0;
    }

    self->_segmentedControlFlags = (*&self->_segmentedControlFlags & 0xFFFFFFFFFFFFFEFFLL | v3);
    [(UISegmentedControl *)self _setNeedsAppearanceUpdate];
  }
}

- (void)setAdjustsForContentSizeCategory:(BOOL)category
{
  v15 = *MEMORY[0x1E69E9840];
  if (((((*&self->_segmentedControlFlags & 0x4000) == 0) ^ category) & 1) == 0)
  {
    v4 = 0x4000;
    if (!category)
    {
      v4 = 0;
    }

    self->_segmentedControlFlags = (*&self->_segmentedControlFlags & 0xFFFFFFFFFFFFBFFFLL | v4);
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = self->_segments;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v11;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [*(*(&v10 + 1) + 8 * i) setAdjustsForContentSizeCategory:{(*&self->_segmentedControlFlags >> 14) & 1, v10}];
        }

        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }

    [(UIView *)self setNeedsLayout];
    [(UIView *)self invalidateIntrinsicContentSize];
    [(UISegmentedControl *)self _setNeedsAppearanceUpdate];
    [(UISegmentedControl *)self _updateAxLongPressGestureRecognizer];
  }
}

- (void)_setAnimatingOutDynamicShdaow:(BOOL)shdaow
{
  v3 = 0x20000;
  if (!shdaow)
  {
    v3 = 0;
  }

  self->_segmentedControlFlags = (*&self->_segmentedControlFlags & 0xFFFFFFFFFFFDFFFFLL | v3);
}

- (void)insertSegmentWithAction:(UIAction *)action atIndex:(NSUInteger)segment animated:(BOOL)animated
{
  v5 = animated;
  v11 = action;
  identifier = [(UIAction *)v11 identifier];
  v9 = [(UISegmentedControl *)self segmentIndexForActionIdentifier:identifier];

  if (v9 == segment)
  {
    [(UISegmentedControl *)self _setAction:v11 forSegmentAtIndex:segment];
  }

  else
  {
    [(UISegmentedControl *)self _insertSegment:segment withInfo:v11 animated:v5];

    if (v9 != 0x7FFFFFFFFFFFFFFFLL)
    {
      if (v9 <= segment)
      {
        v10 = v9;
      }

      else
      {
        v10 = v9 + 1;
      }

      [(UISegmentedControl *)self removeSegmentAtIndex:v10 animated:v5];
    }
  }
}

- (id)_accessibilitySegmentItemAtIndex:(unint64_t)index
{
  if ([(NSMutableArray *)self->_segments count]<= index)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(NSMutableArray *)self->_segments objectAtIndex:index];
  }

  return v5;
}

- (void)removeSegmentAtIndex:(NSUInteger)segment animated:(BOOL)animated
{
  v4 = animated;
  if (segment < [(NSMutableArray *)self->_segments count])
  {
    v7 = [(NSMutableArray *)self->_segments count]- 1;
    v8 = [(NSMutableArray *)self->_segments objectAtIndex:segment];
    if (self->_selectedSegment == segment)
    {
      [(UISegmentedControl *)self setSelectedSegmentIndex:-1];
    }

    if (!v4)
    {
      [v8 removeFromSuperview];
    }

    [(NSMutableArray *)self->_segments removeObjectAtIndex:segment];
    selectedSegment = self->_selectedSegment;
    if (selectedSegment > segment)
    {
      [(UISegmentedControl *)self setSelectedSegmentIndex:selectedSegment - 1];
    }

    if ((*&self->_segmentedControlFlags & 0x20) != 0)
    {
      [(UISegmentedControl *)self sizeToFit];
    }

    [(UIView *)self setNeedsLayout];
    [(UIView *)self invalidateIntrinsicContentSize];
    if (v4)
    {
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __52__UISegmentedControl_removeSegmentAtIndex_animated___block_invoke;
      v13[3] = &unk_1E70F7780;
      v13[4] = self;
      v16 = segment == 0;
      v14 = v8;
      v15 = segment;
      v17 = v7 == segment;
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __52__UISegmentedControl_removeSegmentAtIndex_animated___block_invoke_2;
      v11[3] = &unk_1E70F5AC0;
      v10 = v14;
      v12 = v10;
      [UIView animateWithDuration:0 delay:v13 options:v11 animations:0.25 completion:0.0];
      if (!segment || v7 == segment)
      {
        [(UIView *)self sendSubviewToBack:v10];
      }
    }

    [(UISegmentedControl *)self setRemovedSegment:0];
  }
}

void __52__UISegmentedControl_removeSegmentAtIndex_animated___block_invoke(uint64_t a1)
{
  [*(a1 + 32) layoutIfNeeded];
  [*(a1 + 40) frame];
  v6 = v4;
  if (*(a1 + 56) == 1)
  {
    v7 = *(a1 + 40);

    [v7 animateRemoveForWidth:v4 * -0.5 + 5.0];
  }

  else
  {
    v8 = v2;
    v9 = v3;
    v10 = v5;
    v14 = [*(*(a1 + 32) + 496) objectAtIndex:*(a1 + 48) - 1];
    [v14 frame];
    v13 = v11 + v12 + v6 * -0.5 - v8;
    if ((*(a1 + 57) & 1) == 0)
    {
      [*(a1 + 40) setFrame:{v8 + v13, v9, v6, v10}];
      v13 = 0.0;
    }

    [*(a1 + 40) animateRemoveForWidth:v13];
  }
}

- (void)removeAllSegments
{
  self->_selectedSegment = -1;
  self->_highlightedSegment = -1;
  self->_hoveredSegment = -1;
  self->_initiallyDraggedSegment = -1;
  [(NSMutableArray *)self->_segments makeObjectsPerformSelector:sel_removeFromSuperview];
  segments = self->_segments;

  [(NSMutableArray *)segments removeAllObjects];
}

- (void)setTitle:(NSString *)title forSegmentAtIndex:(NSUInteger)segment
{
  v6 = title;
  v7 = [(NSMutableArray *)self->_segments objectAtIndexedSubscript:segment];
  objectValue = [v7 objectValue];
  v9 = v6;
  v11 = v9;
  if (objectValue == v9)
  {

    goto LABEL_11;
  }

  if (v9 && objectValue)
  {
    v10 = [(NSString *)objectValue isEqual:v9];

    if (v10)
    {
      goto LABEL_11;
    }
  }

  else
  {
  }

  [v7 setObjectValue:v11];
  if ((*&self->_segmentedControlFlags & 0x20) != 0)
  {
    [(UISegmentedControl *)self sizeToFit];
  }

  [(UIView *)self invalidateIntrinsicContentSize];
LABEL_11:
}

- (NSString)titleForSegmentAtIndex:(NSUInteger)segment
{
  v3 = [(NSMutableArray *)self->_segments objectAtIndexedSubscript:segment];
  objectValue = [v3 objectValue];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    string = [objectValue string];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = objectValue;
    }

    else
    {
      v6 = 0;
    }

    string = v6;
  }

  v7 = string;

  return v7;
}

- (void)_setAction:(id)action forSegmentAtIndex:(unint64_t)index
{
  actionCopy = action;
  v6 = [(NSMutableArray *)self->_segments objectAtIndexedSubscript:index];
  [v6 setAction:actionCopy];
  image = [actionCopy image];
  if (image)
  {
    title = image;
  }

  else
  {
    title = [actionCopy title];
  }

  v9 = title;

  objectValue = [v6 objectValue];
  v11 = v9;
  v12 = v11;
  if (objectValue == v11)
  {

    goto LABEL_17;
  }

  if (v11 && objectValue)
  {
    v13 = [objectValue isEqual:v11];

    if (v13)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  image2 = [actionCopy image];
  if (image2)
  {
    [v6 setObjectValue:image2];
  }

  else
  {
    title2 = [actionCopy title];
    [v6 setObjectValue:title2];
  }

  if ((*&self->_segmentedControlFlags & 0x20) != 0)
  {
    [(UISegmentedControl *)self sizeToFit];
  }

  [(UIView *)self invalidateIntrinsicContentSize];
LABEL_17:
}

- (void)setAction:(UIAction *)action forSegmentAtIndex:(NSUInteger)segment
{
  v11 = action;
  identifier = [(UIAction *)v11 identifier];
  v8 = [(UISegmentedControl *)self segmentIndexForActionIdentifier:identifier];

  if (v8 != 0x7FFFFFFFFFFFFFFFLL && v8 != segment)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UISegmentedControl.m" lineNumber:4610 description:{@"Attempting to set the action of segment at index %lu with an action whose identifier is the same as the segment at index %lu (action=%@). Identifiers are required to be unique.", segment, v8, v11}];
  }

  [(UISegmentedControl *)self _setAction:v11 forSegmentAtIndex:segment];
}

- (UIAction)actionForSegmentAtIndex:(NSUInteger)segment
{
  if ([(NSMutableArray *)self->_segments count]<= segment)
  {
    action = 0;
  }

  else
  {
    v5 = [(NSMutableArray *)self->_segments objectAtIndexedSubscript:segment];
    action = [v5 action];
  }

  return action;
}

- (NSInteger)segmentIndexForActionIdentifier:(UIActionIdentifier)actionIdentifier
{
  v4 = actionIdentifier;
  v5 = [(NSMutableArray *)self->_segments count];
  if (v5 < 1)
  {
LABEL_6:
    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = v5;
    v7 = 0;
    while (1)
    {
      v8 = [(NSMutableArray *)self->_segments objectAtIndexedSubscript:v7];
      action = [v8 action];

      if (action)
      {
        identifier = [action identifier];
        v11 = [identifier isEqualToString:v4];

        if (v11)
        {
          break;
        }
      }

      if (v6 == ++v7)
      {
        goto LABEL_6;
      }
    }
  }

  return v7;
}

- (void)_setAttributedTitle:(id)title forSegmentAtIndex:(unint64_t)index
{
  titleCopy = title;
  v7 = [(NSMutableArray *)self->_segments objectAtIndexedSubscript:index];
  objectValue = [v7 objectValue];
  v9 = titleCopy;
  v11 = v9;
  if (objectValue == v9)
  {

    goto LABEL_11;
  }

  if (v9 && objectValue)
  {
    v10 = [objectValue isEqual:v9];

    if (v10)
    {
      goto LABEL_11;
    }
  }

  else
  {
  }

  [v7 setObjectValue:v11];
  if ((*&self->_segmentedControlFlags & 0x20) != 0)
  {
    [(UISegmentedControl *)self sizeToFit];
  }

  [(UIView *)self invalidateIntrinsicContentSize];
LABEL_11:
}

- (id)_attributedTitleForSegmentAtIndex:(unint64_t)index
{
  v3 = [(NSMutableArray *)self->_segments objectAtIndexedSubscript:index];
  objectValue = [v3 objectValue];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = objectValue;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  return v5;
}

- (void)setImage:(UIImage *)image forSegmentAtIndex:(NSUInteger)segment
{
  v6 = image;
  v7 = [(NSMutableArray *)self->_segments objectAtIndexedSubscript:segment];
  objectValue = [v7 objectValue];
  v9 = v6;
  v11 = v9;
  if (objectValue == v9)
  {

    goto LABEL_11;
  }

  if (v9 && objectValue)
  {
    v10 = [(UIImage *)objectValue isEqual:v9];

    if (v10)
    {
      goto LABEL_11;
    }
  }

  else
  {
  }

  [v7 setObjectValue:v11];
  if ((*&self->_segmentedControlFlags & 0x20) != 0)
  {
    [(UISegmentedControl *)self sizeToFit];
  }

  [(UIView *)self invalidateIntrinsicContentSize];
LABEL_11:
}

- (UIImage)imageForSegmentAtIndex:(NSUInteger)segment
{
  v3 = [(NSMutableArray *)self->_segments objectAtIndexedSubscript:segment];
  objectValue = [v3 objectValue];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = objectValue;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  return v5;
}

- (void)setWidth:(CGFloat)width forSegmentAtIndex:(NSUInteger)segment
{
  v6 = [(NSMutableArray *)self->_segments objectAtIndexedSubscript:segment];
  if (v6[72] != width)
  {
    v7 = v6;
    v6[72] = width;
    if ((*&self->_segmentedControlFlags & 0x20) != 0)
    {
      [(UISegmentedControl *)self sizeToFit];
    }

    [(UIView *)self setNeedsLayout];
    [(UIView *)self invalidateIntrinsicContentSize];
    v6 = v7;
  }
}

- (CGFloat)widthForSegmentAtIndex:(NSUInteger)segment
{
  v3 = [(NSMutableArray *)self->_segments objectAtIndexedSubscript:segment];
  v4 = v3[72];

  return v4;
}

- (void)setContentOffset:(CGSize)offset forSegmentAtIndex:(NSUInteger)segment
{
  height = offset.height;
  width = offset.width;
  v8 = [(NSMutableArray *)self->_segments objectAtIndexedSubscript:?];
  if (width != v8[73] || height != v8[74])
  {
    v11 = v8;
    v10 = [(NSMutableArray *)self->_segments objectAtIndexedSubscript:segment];
    [v10 setContentOffset:{width, height}];

    if ((*&self->_segmentedControlFlags & 0x20) != 0)
    {
      [(UISegmentedControl *)self sizeToFit];
    }

    [(UIView *)self invalidateIntrinsicContentSize];
    v8 = v11;
  }
}

- (CGSize)contentOffsetForSegmentAtIndex:(NSUInteger)segment
{
  v3 = [(NSMutableArray *)self->_segments objectAtIndexedSubscript:segment];
  v4 = v3[73];
  v5 = v3[74];

  v6 = v4;
  v7 = v5;
  result.height = v7;
  result.width = v6;
  return result;
}

- (void)setEnabled:(BOOL)enabled forSegmentAtIndex:(NSUInteger)segment
{
  v5 = enabled;
  v9 = [(NSMutableArray *)self->_segments objectAtIndex:segment];
  isEnabled = [v9 isEnabled];
  [v9 setEnabled:v5];
  if (isEnabled != v5)
  {
    anyDividerImage = [self->_appearanceStorage anyDividerImage];

    if (anyDividerImage)
    {
      [(UISegmentedControl *)self _updateDividerImageForSegmentAtIndex:segment];
    }
  }

  if (!v5 && self->_selectedSegment == segment)
  {
    [(UISegmentedControl *)self setSelectedSegmentIndex:-1];
  }
}

- (BOOL)isEnabledForSegmentAtIndex:(NSUInteger)segment
{
  v3 = [(NSMutableArray *)self->_segments objectAtIndex:segment];
  isEnabled = [v3 isEnabled];

  return isEnabled;
}

- (void)_setSelectedSegmentIndex:(int64_t)index notify:(BOOL)notify animate:(BOOL)animate
{
  animateCopy = animate;
  notifyCopy = notify;
  if ([(NSMutableArray *)self->_segments count]> index && [(UISegmentedControl *)self _shouldSelectSegmentAtIndex:index])
  {
    [(UISegmentedControl *)self willChangeValueForKey:@"selectedSegmentIndex"];
    if (self->_selectedSegment == index)
    {
      if ((*&self->_segmentedControlFlags & 4) != 0 && notifyCopy)
      {
        [(UISegmentedControl *)self _emitValueChanged];
      }
    }

    else
    {
      v9 = objc_opt_class();
      traitCollection = [(UIView *)self traitCollection];
      v11 = UISegmentedControlStyleProviderForIdiom(v9, [traitCollection userInterfaceIdiom]);

      [MEMORY[0x1E6979518] begin];
      selectedSegment = self->_selectedSegment;
      if ((selectedSegment & 0x8000000000000000) != 0 || selectedSegment >= [(NSMutableArray *)self->_segments count])
      {
        v13 = 0;
      }

      else
      {
        v13 = [(NSMutableArray *)self->_segments objectAtIndex:self->_selectedSegment];
      }

      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __62__UISegmentedControl__setSelectedSegmentIndex_notify_animate___block_invoke;
      aBlock[3] = &unk_1E7101EF0;
      v14 = v13;
      v26 = v14;
      selfCopy = self;
      v30 = animateCopy;
      indexCopy = index;
      v15 = v11;
      v28 = v15;
      v16 = _Block_copy(aBlock);
      v17 = v16;
      if (animateCopy)
      {
        v20 = MEMORY[0x1E69E9820];
        v21 = 3221225472;
        v22 = __62__UISegmentedControl__setSelectedSegmentIndex_notify_animate___block_invoke_2;
        v23 = &unk_1E70F5AC0;
        v24 = v14;
        [UIView animateWithDuration:327685 delay:v17 options:&v20 animations:0.2 completion:0.0];
        pointerInteraction = v24;
      }

      else
      {
        (*(v16 + 2))(v16);
        [v14 setWasSelected:0];
        pointerInteraction = [(UIControl *)self pointerInteraction];
        [pointerInteraction invalidate];
      }

      [MEMORY[0x1E6979518] commit];
      if (notifyCopy && ((*&self->_segmentedControlFlags & 8) == 0 || self->_selectedSegment != -1))
      {
        [(UISegmentedControl *)self _emitValueChanged:v20];
      }

      if ([v15 useSelectionIndicatorStyling] && !-[UISegmentedControl _disableSlidingControl](self, "_disableSlidingControl"))
      {
        [(UIView *)self setNeedsLayout];
      }

      if ((*&self->_segmentedControlFlags & 8) == 0)
      {
        _internalFocusSystem = [(UISegmentedControl *)self _internalFocusSystem];
        [_internalFocusSystem setNeedsFocusUpdate];
      }
    }

    [(UISegmentedControl *)self didChangeValueForKey:@"selectedSegmentIndex"];
  }
}

void __62__UISegmentedControl__setSelectedSegmentIndex_notify_animate___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setWasSelected:1];
  v2 = *(a1 + 40);
  v3 = *(v2 + 504);
  if ((v3 & 0x8000000000000000) == 0)
  {
    v4 = [*(v2 + 496) count];
    v2 = *(a1 + 40);
    if (v3 < v4)
    {
      [v2 _setSelected:0 forSegmentAtIndex:*(v2 + 504) forceInfoDisplay:*(a1 + 64)];
      v2 = *(a1 + 40);
    }
  }

  *(v2 + 504) = *(a1 + 56);
  if ((*(*(a1 + 40) + 504) & 0x8000000000000000) == 0)
  {
    v5 = [*(a1 + 48) useSelectionIndicatorStyling];
    v6 = *(a1 + 40);
    if (v5 && (*(v6 + 626) & 8) == 0)
    {
      v7 = [*(v6 + 496) objectAtIndex:*(v6 + 504)];
      [v6 bringSubviewToFront:v7];

      v6 = *(a1 + 40);
    }

    [v6 _setSelected:1 forSegmentAtIndex:*(v6 + 504) forceInfoDisplay:*(a1 + 64)];
    if (([*(a1 + 48) useSelectionIndicatorStyling] & 1) == 0)
    {
      v8 = *(a1 + 40);
      v9 = *(v8 + 504);
      if (v9 >= 1)
      {
        v10 = [*(v8 + 496) objectAtIndex:v9 - 1];
        [*(a1 + 40) bringSubviewToFront:v10];
      }
    }
  }
}

- (void)_emitValueChanged
{
  v3 = objc_opt_class();
  traitCollection = [(UIView *)self traitCollection];
  v5 = UISegmentedControlStyleProviderForIdiom(v3, [traitCollection userInterfaceIdiom]);

  if ([v5 useSelectionIndicatorStyling])
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __39__UISegmentedControl__emitValueChanged__block_invoke;
    v6[3] = &unk_1E70F3590;
    v6[4] = self;
    [UIApp _performBlockAfterCATransactionCommits:v6];
  }

  else
  {
    [(UISegmentedControl *)self _sendValueChanged];
  }
}

- (void)_sendValueChanged
{
  selectedSegment = self->_selectedSegment;
  if ((selectedSegment & 0x8000000000000000) == 0 && selectedSegment < [(NSMutableArray *)self->_segments count])
  {
    v4 = [(NSMutableArray *)self->_segments objectAtIndexedSubscript:self->_selectedSegment];
    action = [v4 action];

    if (action)
    {
      [(UIControl *)self sendAction:action];
    }
  }

  [(UIControl *)self sendActionsForControlEvents:4096];
}

- (void)_animateContentChangeWithAnimations:(id)animations completion:(id)completion
{
  completionCopy = completion;
  animationsCopy = animations;
  [UIView _animateWithDuration:4 delay:self options:animationsCopy factory:completionCopy animations:1.06 / UIAnimationDragCoefficient() completion:0.0];
}

- (id)_basicAnimationForView:(id)view withKeyPath:(id)path
{
  v4 = [MEMORY[0x1E69794A8] animationWithKeyPath:path];
  [v4 setMass:0.6];
  [v4 setStiffness:350.0];
  [v4 setDamping:23.0];
  [v4 setVelocity:0.0];
  v5 = UIAnimationDragCoefficient();
  [v4 speed];
  *&v7 = v6 / v5;
  [v4 setSpeed:v7];

  return v4;
}

- (void)_setSelected:(BOOL)selected highlighted:(BOOL)highlighted forSegmentAtIndex:(int)index forceInfoDisplay:(BOOL)display
{
  displayCopy = display;
  highlightedCopy = highlighted;
  selectedCopy = selected;
  indexCopy = index;
  v11 = [(NSMutableArray *)self->_segments objectAtIndex:index];
  [v11 setSelectionIndicatorDragged:(*&self->_segmentedControlFlags >> 12) & 1];
  [v11 setSelected:selectedCopy highlighted:highlightedCopy];
  [(UISegmentedControl *)self _updateDividerImageForSegmentAtIndex:indexCopy];
  if (displayCopy)
  {
    [v11 _forceInfoDisplay];
  }
}

- (void)_setSelected:(BOOL)selected forSegmentAtIndex:(int)index forceInfoDisplay:(BOOL)display
{
  displayCopy = display;
  selectedCopy = selected;
  indexCopy = index;
  v9 = [(NSMutableArray *)self->_segments objectAtIndex:index];
  [v9 setSelectionIndicatorDragged:(*&self->_segmentedControlFlags >> 12) & 1];
  [v9 setSelected:selectedCopy];
  [(UISegmentedControl *)self _updateDividerImageForSegmentAtIndex:indexCopy];
  if (displayCopy)
  {
    [v9 _forceInfoDisplay];
  }
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  [(UISegmentedControl *)self frame];
  v10 = height == v9 && width == v8;
  v12.receiver = self;
  v12.super_class = UISegmentedControl;
  [(UIView *)&v12 setFrame:x, y, width, height];
  segmentedControlFlags = self->_segmentedControlFlags;
  if ((*&segmentedControlFlags & 0x40) == 0)
  {
    self->_segmentedControlFlags = (*&segmentedControlFlags & 0xFFFFFFFFFFFFFF9FLL);
  }

  if (!v10)
  {
    [(UIView *)self setNeedsLayout];
  }
}

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  [(UISegmentedControl *)self bounds];
  v10 = height == v9 && width == v8;
  v12.receiver = self;
  v12.super_class = UISegmentedControl;
  [(UIView *)&v12 setBounds:x, y, width, height];
  segmentedControlFlags = self->_segmentedControlFlags;
  if ((*&segmentedControlFlags & 0x40) == 0)
  {
    self->_segmentedControlFlags = (*&segmentedControlFlags & 0xFFFFFFFFFFFFFF9FLL);
  }

  if (!v10)
  {
    [(UIView *)self setNeedsLayout];
    [(UIView *)self layoutBelowIfNeeded];
  }
}

- (id)viewForLastBaselineLayout
{
  if ((*(&self->super.super._viewFlags + 17) & 0x40) != 0)
  {
    v5.receiver = self;
    v5.super_class = UISegmentedControl;
    viewForLastBaselineLayout = [(UIView *)&v5 viewForLastBaselineLayout];
  }

  else
  {
    lastObject = [(NSMutableArray *)self->_segments lastObject];
    viewForLastBaselineLayout = [lastObject viewForLastBaselineLayout];
  }

  return viewForLastBaselineLayout;
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)_baselineOffsetsAtSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  lastObject = [(NSMutableArray *)self->_segments lastObject];
  if (lastObject)
  {
    [(UISegmentedControl *)self alignmentRectInsets];
    v8 = v7;
    v10 = v9;
    [lastObject _baselineOffsetsAtSize:{width, height + v7 + v9}];
    v12 = v11 - v8;
    v14 = v13 - v10;
  }

  else
  {
    v12 = 2.22507386e-308;
    v14 = 2.22507386e-308;
  }

  v15 = v12;
  v16 = v14;
  result.var1 = v16;
  result.var0 = v15;
  return result;
}

- (CGSize)_intrinsicSizeWithinSize:(CGSize)size
{
  [(UISegmentedControl *)self frame:size.width];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  if ((*(&self->_segmentedControlFlags + 1) & 8) != 0)
  {
    [(UISegmentedControl *)self _resetForAppearanceChange];
  }

  v12 = [(NSMutableArray *)self->_segments count];
  v13 = [self->_appearanceStorage anyDividerImageForMini:0];
  v14 = v13;
  if (!v13)
  {
    traitCollection = [(UIView *)self traitCollection];
    [UISegmentedControl _dividerWidthForTraitCollection:traitCollection size:[(UISegmentedControl *)self controlSize]];
    v16 = v27;

    if (v12)
    {
      goto LABEL_5;
    }

LABEL_15:
    v28 = *MEMORY[0x1E695F060];
    goto LABEL_19;
  }

  [v13 size];
  v16 = v15;
  if (!v12)
  {
    goto LABEL_15;
  }

LABEL_5:
  if ((*(&self->_segmentedControlFlags + 1) & 2) != 0)
  {
    v29 = 0;
    v25 = 0.0;
    do
    {
      v30 = [(NSMutableArray *)self->_segments objectAtIndex:v29];
      [v30 _idealWidth];
      v25 = v25 + v31;

      ++v29;
    }

    while (v12 != v29);
  }

  else
  {
    v17 = 0;
    v18 = 0;
    v19 = 0.0;
    v20 = 0.0;
    do
    {
      v21 = [(NSMutableArray *)self->_segments objectAtIndex:v17];
      v22 = v21;
      v23 = v21[72];
      if (v23 == 0.0)
      {
        [v21 _idealWidth];
        if (v19 < v24)
        {
          v19 = v24;
        }
      }

      else
      {
        v20 = v20 + v23;
        ++v18;
      }

      ++v17;
    }

    while (v12 != v17);
    v25 = v20 + v19 * (v12 - v18);
  }

  v28 = v16 * (v12 - 1) + v25;
LABEL_19:
  v32 = objc_opt_class();
  traitCollection2 = [(UIView *)self traitCollection];
  v34 = UISegmentedControlStyleProviderForIdiom(v32, [traitCollection2 userInterfaceIdiom]);
  if (objc_opt_respondsToSelector())
  {
    v35 = v34;
  }

  else
  {
    v35 = 0;
  }

  if (v35 && (*(&self->_segmentedControlFlags + 3) & 0x20) != 0)
  {
    [v35 defaultHeightWithBackgroundMaterial];
  }

  else
  {
    [(UISegmentedControl *)self _barHeight];
  }

  v37 = v36;
  [(UISegmentedControl *)self setFrame:v5, v7, v9, v11];

  v38 = v28;
  v39 = v37;
  result.height = v39;
  result.width = v38;
  return result;
}

- (UIEdgeInsets)alignmentRectInsets
{
  appearanceStorage = self->_appearanceStorage;
  v4 = self->_barStyle == 2 && (*&self->_segmentedControlFlags & 3) == 1;
  v5 = [appearanceStorage backgroundImageForState:0 isMini:v4 withFallback:1];
  v6 = v5;
  if (v5)
  {
    [v5 alignmentRectInsets];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
  }

  else
  {
    v15 = objc_opt_class();
    traitCollection = [(UIView *)self traitCollection];
    v17 = UISegmentedControlStyleProviderForIdiom(v15, [traitCollection userInterfaceIdiom]);

    if (self->_barStyle > 2uLL)
    {
      v40.receiver = self;
      v40.super_class = UISegmentedControl;
      [(UIView *)&v40 alignmentRectInsets];
      v8 = v32;
      v10 = v33;
      v12 = v34;
      v14 = v35;
    }

    else
    {
      controlSize = [(UISegmentedControl *)self controlSize];
      [(UISegmentedControl *)self bounds];
      v20 = v19;
      v22 = v21;
      v24 = v23;
      v26 = v25;
      traitCollection2 = [(UIView *)self traitCollection];
      [v17 alignmentInsetsForControlSize:controlSize bounds:traitCollection2 traitCollection:{v20, v22, v24, v26}];
      v8 = v28;
      v10 = v29;
      v12 = v30;
      v14 = v31;
    }
  }

  v36 = v8;
  v37 = v10;
  v38 = v12;
  v39 = v14;
  result.right = v39;
  result.bottom = v38;
  result.left = v37;
  result.top = v36;
  return result;
}

+ (CGRect)_selectionFrameForBounds:(CGRect)bounds hasMaterial:(BOOL)material size:(int)size traitCollection:(id)collection accessibilityView:(BOOL)view
{
  v8 = *&size;
  materialCopy = material;
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  collectionCopy = collection;
  v16 = collectionCopy;
  if (view)
  {
    goto LABEL_11;
  }

  v17 = UISegmentedControlStyleProviderForIdiom(self, [collectionCopy userInterfaceIdiom]);
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {

    v17 = 0;
LABEL_7:
    [self _sectionIndicatorOverflowForTraitCollection:v16 size:v8];
    v19 = -v20;
    goto LABEL_8;
  }

  if (!v17 || ![v17 useLensView])
  {
    goto LABEL_7;
  }

  [self _sectionIndicatorInsetForTraitCollection:v16 hasMaterial:materialCopy size:v8];
  v19 = v18;
LABEL_8:
  v29.origin.x = x;
  v29.origin.y = y;
  v29.size.width = width;
  v29.size.height = height;
  v30 = CGRectInset(v29, v19, v19);
  v21 = v30.origin.x;
  v22 = v30.origin.y;
  v23 = v30.size.width;
  v24 = v30.size.height;
  if (!CGRectIsNull(v30))
  {
    x = v21;
    y = v22;
    width = v23;
    height = v24;
  }

LABEL_11:
  v25 = x;
  v26 = y;
  v27 = width;
  v28 = height;
  result.size.height = v28;
  result.size.width = v27;
  result.origin.y = v26;
  result.origin.x = v25;
  return result;
}

+ (double)_hiddenSelectionScaleForTraitCollection:(id)collection
{
  v3 = UISegmentedControlStyleProviderForIdiom(self, [collection userInterfaceIdiom]);
  [v3 segmentHidingFinalScaleFactor];
  v5 = v4;

  return v5;
}

+ (CATransform3D)_hiddenSelectionTransformForTraitCollection:(SEL)collection
{
  [a2 _hiddenSelectionScaleForTraitCollection:a4];

  return CATransform3DMakeScale(retstr, v5, v5, 1.0);
}

+ (double)_highlightSelectionScaleForTraitCollection:(id)collection
{
  v3 = UISegmentedControlStyleProviderForIdiom(self, [collection userInterfaceIdiom]);
  [v3 segmentSelectionScaleFactor];
  v5 = v4;

  return v5;
}

+ (CATransform3D)_highlightSelectionTransformForTraitCollection:(SEL)collection
{
  [a2 _highlightSelectionScaleForTraitCollection:a4];

  return CATransform3DMakeScale(retstr, v5, v5, 1.0);
}

+ (id)_selectionPopAnimationForKey:(id)key fromValue:(id)value toValue:(id)toValue
{
  v7 = MEMORY[0x1E69794A8];
  toValueCopy = toValue;
  valueCopy = value;
  v10 = [v7 animationWithKeyPath:key];
  [v10 setMass:1.0];
  [v10 setStiffness:503.551245];
  [v10 setDamping:44.8798951];
  [v10 setDuration:0.411544483];
  *&v11 = 1.0 / UIAnimationDragCoefficient();
  [v10 setSpeed:v11];
  [v10 setFillMode:*MEMORY[0x1E69797E0]];
  [v10 setFromValue:valueCopy];

  [v10 setToValue:toValueCopy];

  return v10;
}

+ (id)_selectionOpacityAnimationFromValue:(float)value toValue:(float)toValue
{
  v6 = [MEMORY[0x1E69794A8] animationWithKeyPath:@"opacity"];
  [v6 setMass:1.0];
  [v6 setStiffness:2741.55678];
  [v6 setDamping:209.43951];
  [v6 setDuration:0.176376207];
  *&v7 = 1.0 / UIAnimationDragCoefficient();
  [v6 setSpeed:v7];
  if (toValue == 0.0)
  {
    [v6 setBeginTime:CACurrentMediaTime() + 0.1];
  }

  [v6 setFillMode:*MEMORY[0x1E69797E0]];
  *&v8 = value;
  v9 = [MEMORY[0x1E696AD98] numberWithFloat:v8];
  [v6 setFromValue:v9];

  *&v10 = toValue;
  v11 = [MEMORY[0x1E696AD98] numberWithFloat:v10];
  [v6 setToValue:v11];

  return v6;
}

+ (id)_highlightPinchAnimationForKey:(id)key fromValue:(id)value toValue:(id)toValue
{
  v7 = MEMORY[0x1E6979318];
  toValueCopy = toValue;
  valueCopy = value;
  v10 = [v7 animationWithKeyPath:key];
  [v10 setDuration:0.5];
  v11 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979ED0]];
  [v10 setTimingFunction:v11];

  [v10 setFromValue:valueCopy];
  [v10 setToValue:toValueCopy];

  return v10;
}

+ (id)_selectionFadeAnimationForKey:(id)key fromValue:(id)value toValue:(id)toValue
{
  v7 = MEMORY[0x1E69794A8];
  toValueCopy = toValue;
  valueCopy = value;
  v10 = [v7 animationWithKeyPath:key];
  [v10 setMass:0.2];
  [v10 setStiffness:100.0];
  [v10 setDamping:10.0];
  [v10 setDuration:0.5];
  v11 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EB8]];
  [v10 setTimingFunction:v11];

  [v10 setFillMode:*MEMORY[0x1E69797D8]];
  [v10 setFromValue:valueCopy];

  [v10 setToValue:toValueCopy];

  return v10;
}

- (int64_t)_segmentIndexToHighlight:(BOOL *)highlight
{
  if ([(UISegmentedControl *)self _disableSlidingControl])
  {
    *highlight = 0;
    return -1;
  }

  else if (((*(&self->_segmentedControlFlags + 1) & 0x10) != 0 || [(UISegmentedControl *)self _animateHighlightingSelectionByDefault]) && (result = self->_highlightedSegment, (result & 0x8000000000000000) == 0))
  {
    *highlight = 1;
  }

  else
  {
    selectedSegment = self->_selectedSegment;
    *highlight = 0;
    if (selectedSegment < 0)
    {
      return -1;
    }

    else
    {
      return selectedSegment;
    }
  }

  return result;
}

+ (BOOL)_updateDynamicShadowView:(id)view withAnimationDelegate:(id)delegate useDynamicShadow:(BOOL)shadow animated:(BOOL)animated
{
  LODWORD(layer11) = animated;
  shadowCopy = shadow;
  v71[3] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  delegateCopy = delegate;
  if (viewCopy)
  {
    v11 = layer11;
  }

  else
  {
    v11 = 1;
  }

  if (!shadowCopy)
  {
    if (v11)
    {
      if (!viewCopy)
      {
        goto LABEL_22;
      }
    }

    else
    {
      layer = [viewCopy layer];
      [layer shadowOpacity];
      v38 = v37;

      if (v38 == 0.0)
      {
        goto LABEL_22;
      }
    }

    v39 = +[UIColor _controlShadowColor];
    [v39 alphaComponent];
    v41 = v40;

    v42 = MEMORY[0x1E695F060];
    if (layer11)
    {
      v43 = [MEMORY[0x1E6979318] animationWithKeyPath:@"shadowOpacity"];
      [v43 setDuration:0.41];
      v44 = *MEMORY[0x1E6979EB8];
      v45 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EB8]];
      [v43 setTimingFunction:v45];

      v46 = [MEMORY[0x1E696AD98] numberWithDouble:v41];
      [v43 setToValue:v46];

      v47 = [MEMORY[0x1E6979318] animationWithKeyPath:@"shadowRadius"];
      [v47 setDuration:0.41];
      v48 = [MEMORY[0x1E69793D0] functionWithName:v44];
      [v47 setTimingFunction:v48];

      [v47 setToValue:&unk_1EFE2E2E8];
      v49 = [MEMORY[0x1E6979318] animationWithKeyPath:@"shadowOffset"];
      [v49 setDuration:0.41];
      v50 = [MEMORY[0x1E69793D0] functionWithName:v44];
      [v49 setTimingFunction:v50];

      v51 = [MEMORY[0x1E696B098] valueWithSize:{0.0, 2.5}];
      [v49 setToValue:v51];

      layer2 = [viewCopy layer];
      presentationLayer = [layer2 presentationLayer];
      [presentationLayer shadowOpacity];
      v55 = v54;

      if (v55 == 0.0)
      {
        [v43 setFromValue:&unk_1EFE2E2C8];
        [v47 setFromValue:&unk_1EFE2E2D8];
        v56 = [MEMORY[0x1E696B098] valueWithSize:{*v42, v42[1]}];
        [v49 setFromValue:v56];
      }

      animation = [MEMORY[0x1E6979308] animation];
      [animation setDuration:0.41];
      v70[0] = v43;
      v70[1] = v47;
      v70[2] = v49;
      v58 = [MEMORY[0x1E695DEC8] arrayWithObjects:v70 count:3];
      [animation setAnimations:v58];

      [animation setDelegate:delegateCopy];
      layer3 = [viewCopy layer];
      [layer3 addAnimation:animation forKey:@"ShadowAnimation"];
    }

    layer4 = [viewCopy layer];
    v60 = v41;
    *&v62 = v60;
    [layer4 setShadowOpacity:v62];

    layer5 = [viewCopy layer];
    [layer5 setShadowRadius:3.0];

    v64 = *v42;
    v65 = v42[1];
    layer6 = [viewCopy layer];
    [layer6 setShadowOffset:{v64, v65}];
    goto LABEL_25;
  }

  if (v11)
  {
    if (!viewCopy)
    {
      goto LABEL_22;
    }

    goto LABEL_12;
  }

  layer7 = [viewCopy layer];
  [layer7 shadowOpacity];
  v14 = v13;

  if (v14 == 0.0)
  {
LABEL_12:
    if (layer11)
    {
      v15 = [MEMORY[0x1E6979318] animationWithKeyPath:@"shadowOpacity"];
      [v15 setDuration:0.41];
      v16 = *MEMORY[0x1E6979EB8];
      v17 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EB8]];
      [v15 setTimingFunction:v17];

      [v15 setToValue:&unk_1EFE2E2C8];
      v18 = [MEMORY[0x1E6979318] animationWithKeyPath:@"shadowRadius"];
      [v18 setDuration:0.41];
      v19 = [MEMORY[0x1E69793D0] functionWithName:v16];
      [v18 setTimingFunction:v19];

      [v18 setToValue:&unk_1EFE2E2D8];
      v20 = [MEMORY[0x1E6979318] animationWithKeyPath:@"shadowOffset"];
      [v20 setDuration:0.41];
      v21 = [MEMORY[0x1E69793D0] functionWithName:v16];
      [v20 setTimingFunction:v21];

      v22 = *MEMORY[0x1E695F060];
      v23 = *(MEMORY[0x1E695F060] + 8);
      v24 = [MEMORY[0x1E696B098] valueWithSize:{*MEMORY[0x1E695F060], v23}];
      [v20 setToValue:v24];

      layer8 = [viewCopy layer];
      presentationLayer2 = [layer8 presentationLayer];
      [presentationLayer2 shadowOpacity];
      v28 = v27;

      if (v28 == 0.0)
      {
        v29 = MEMORY[0x1E696AD98];
        v30 = +[UIColor _controlShadowColor];
        [v30 alphaComponent];
        v31 = [v29 numberWithDouble:?];
        [v15 setFromValue:v31];

        [v18 setFromValue:&unk_1EFE2E2E8];
        v32 = [MEMORY[0x1E696B098] valueWithSize:{0.0, 2.5}];
        [v20 setFromValue:v32];
      }

      animation2 = [MEMORY[0x1E6979308] animation];
      v71[0] = v15;
      v71[1] = v18;
      v71[2] = v20;
      v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:v71 count:3];
      [animation2 setAnimations:v34];

      layer9 = [viewCopy layer];
      [layer9 addAnimation:animation2 forKey:@"ShadowAnimation"];
    }

    else
    {
      v22 = *MEMORY[0x1E695F060];
      v23 = *(MEMORY[0x1E695F060] + 8);
    }

    layer10 = [viewCopy layer];
    LODWORD(v68) = 1025758986;
    [layer10 setShadowOpacity:v68];

    layer11 = [viewCopy layer];
    [layer11 setShadowRadius:2.30769231];

    layer6 = [viewCopy layer];
    [layer6 setShadowOffset:{v22, v23}];
    LOBYTE(layer11) = 0;
LABEL_25:

    goto LABEL_26;
  }

LABEL_22:
  LOBYTE(layer11) = 0;
LABEL_26:

  return layer11;
}

- (void)_updateDynamicShadow:(BOOL)shadow animated:(BOOL)animated
{
  if ([objc_opt_class() _updateDynamicShadowView:self->_selectionIndicatorView withAnimationDelegate:self useDynamicShadow:shadow animated:animated])
  {
    *&self->_segmentedControlFlags |= 0x20000uLL;
  }
}

- (void)_insertSelectionViewForSegment:(id)segment
{
  segmentCopy = segment;
  v4 = objc_opt_class();
  traitCollection = [(UIView *)self traitCollection];
  v6 = UISegmentedControlStyleProviderForIdiom(v4, [traitCollection userInterfaceIdiom]);

  v7 = objc_opt_class();
  [segmentCopy bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = (*&self->_segmentedControlFlags >> 29) & 1;
  controlSize = [(UISegmentedControl *)self controlSize];
  traitCollection2 = [(UIView *)self traitCollection];
  [v7 _selectionFrameForBounds:v16 hasMaterial:controlSize size:traitCollection2 traitCollection:1 accessibilityView:{v9, v11, v13, v15}];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;

  segmentedControlFlags = self->_segmentedControlFlags;
  if ((*&segmentedControlFlags & 0x400000000) != 0)
  {
    if ((*&segmentedControlFlags & 0x20000000) != 0)
    {
      v37 = [_UILiquidLensView alloc];
      v38 = objc_opt_new();
      v39 = [(_UILiquidLensView *)v37 initWithRestingBackground:v38];

      [(_UILiquidLensView *)v39 setStyle:1];
      [(_UILiquidLensView *)v39 setFrame:v20, v22, v24, v26];
    }

    else
    {
      v35 = objc_opt_new();
      [v35 setUserInteractionEnabled:0];
      selectedSegmentTintColor = [(UISegmentedControl *)self selectedSegmentTintColor];
      if (selectedSegmentTintColor)
      {
        [v35 setBackgroundColor:selectedSegmentTintColor];
      }

      else
      {
        v55 = +[UIColor _controlForegroundColor];
        [v35 setBackgroundColor:v55];
      }

      if ((*(&self->_segmentedControlFlags + 4) & 0x10) != 0)
      {
        v56 = *MEMORY[0x1E6979CF8];
        layer = [v35 layer];
        [layer setCompositingFilter:v56];
      }

      v39 = [[_UILiquidLensView alloc] initWithRestingBackground:v35];
      [(_UILiquidLensView *)v39 setStyle:1];
      [(_UILiquidLensView *)v39 setFrame:v20, v22, v24, v26];
    }

    [(_UILiquidLensView *)v39 setWarpsContentBelow:1];
    v58 = UISegmentedControlSegmentContentView(self);
    [(_UILiquidLensView *)v39 setLiftedContentView:v58];

    [segmentCopy center];
    [(UIView *)v39 setCenter:?];
    selectionIndicatorView = self->_selectionIndicatorView;
    self->_selectionIndicatorView = v39;
  }

  else if (self->_selectedSegmentVisualEffect)
  {
    v28 = [[UIVisualEffectView alloc] initWithEffect:self->_selectedSegmentVisualEffect];
    v29 = self->_selectionIndicatorView;
    self->_selectionIndicatorView = &v28->super;

    [(UISegmentedControl *)self bounds];
    [(UIView *)self->_selectionIndicatorView setFrame:?];
    [(UIView *)self->_selectionIndicatorView setAutoresizingMask:18];
    if ([v6 useGeneratedImages])
    {
      v30 = objc_opt_class();
      v31 = (*&self->_segmentedControlFlags >> 29) & 1;
      traitCollection3 = [(UIView *)self traitCollection];
      selectedSegmentTintColor2 = [(UISegmentedControl *)self selectedSegmentTintColor];
      LODWORD(v66) = *&self->_segmentedControlFlags & 3;
      selectionIndicatorView = [v30 _modernBackgroundSelected:1 shadow:1 maximumSize:0 highlighted:v31 hasMaterial:traitCollection3 traitCollection:selectedSegmentTintColor2 tintColor:v24 size:{v26, v66}];
    }

    else
    {
      selectionIndicatorView = 0;
    }

    v45 = [[UIImageView alloc] initWithImage:selectionIndicatorView];
    selectionImageView = self->_selectionImageView;
    self->_selectionImageView = v45;

    [(UIImageView *)self->_selectionImageView setFrame:v20, v22, v24, v26];
    [segmentCopy center];
    [(UIImageView *)self->_selectionImageView setCenter:?];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      contentView = [(UIView *)self->_selectionIndicatorView contentView];
      [contentView addSubview:self->_selectionImageView];
    }

    else
    {
      [(UIView *)self->_selectionIndicatorView setMaskView:self->_selectionImageView];
    }

    if ([v6 hasShadowWithSelectedSegmentEffect] && objc_msgSend(v6, "useGeneratedImages"))
    {
      createSelectedSegmentEffectShadowView = [v6 createSelectedSegmentEffectShadowView];
      if (!createSelectedSegmentEffectShadowView)
      {
        v49 = objc_opt_class();
        v67 = (*&self->_segmentedControlFlags >> 29) & 1;
        traitCollection4 = [(UIView *)self traitCollection];
        selectedSegmentTintColor3 = [(UISegmentedControl *)self selectedSegmentTintColor];
        LODWORD(v66) = *&self->_segmentedControlFlags & 3;
        v68 = [v49 _modernBackgroundSelected:1 shadow:2 maximumSize:0 highlighted:v67 hasMaterial:traitCollection4 traitCollection:selectedSegmentTintColor3 tintColor:v24 size:{v26, v66}];

        createSelectedSegmentEffectShadowView = [[UIImageView alloc] initWithImage:selectionIndicatorView];
      }

      [(UIView *)createSelectedSegmentEffectShadowView setTag:-2030];
      [(UIView *)createSelectedSegmentEffectShadowView setAutoresizingMask:18];
      [(UIImageView *)createSelectedSegmentEffectShadowView setFrame:v20, v22, v24, v26];
      selfCopy = self;
      backdropView = selfCopy->_backdropView;
      if (backdropView)
      {
        if ((*(&self->_segmentedControlFlags + 3) & 0x80) != 0)
        {
          [(UIView *)backdropView contentView];
        }

        else
        {
          [(UIView *)selfCopy viewWithTag:-2031];
        }
        v54 = ;
      }

      else
      {
        v54 = selfCopy;
      }

      v65 = v54;

      [(UIView *)v65 addSubview:createSelectedSegmentEffectShadowView];
    }
  }

  else
  {
    transparentBackground = [(UISegmentedControl *)self transparentBackground];
    _useDynamicShadow = [(UISegmentedControl *)self _useDynamicShadow];
    selectionIndicatorView = [(UIView *)self traitCollection];
    selectedSegmentTintColor4 = [(UISegmentedControl *)self selectedSegmentTintColor];
    if ([v6 useGeneratedImages])
    {
      v43 = objc_opt_class();
      LODWORD(v66) = *&self->_segmentedControlFlags & 3;
      v44 = [v43 _modernBackgroundSelected:1 shadow:transparentBackground || _useDynamicShadow maximumSize:0 highlighted:(*&self->_segmentedControlFlags >> 29) & 1 hasMaterial:selectionIndicatorView traitCollection:selectedSegmentTintColor4 tintColor:v24 size:{v26, v66}];
    }

    else
    {
      v44 = 0;
    }

    v59 = [[UIImageView alloc] initWithImage:v44];
    v60 = self->_selectionImageView;
    self->_selectionImageView = v59;

    [(UIImageView *)self->_selectionImageView setFrame:v20, v22, v24, v26];
    objc_storeStrong(&self->_selectionIndicatorView, self->_selectionImageView);
    if (!transparentBackground && [objc_opt_class() _useShadowForSelectedTintColor:selectedSegmentTintColor4 traitCollection:selectionIndicatorView])
    {
      [(UISegmentedControl *)self _updateDynamicShadow:1 animated:0];
    }
  }

  selfCopy2 = self;
  v62 = selfCopy2->_backdropView;
  if (v62)
  {
    if ((*(&self->_segmentedControlFlags + 3) & 0x80) != 0)
    {
      [(UIView *)v62 contentView];
    }

    else
    {
      [(UIView *)selfCopy2 viewWithTag:-2031];
    }
    v63 = ;
  }

  else
  {
    v63 = selfCopy2;
  }

  v64 = v63;

  [(UIView *)v64 insertSubview:selfCopy2->_selectionIndicatorView atIndex:[(NSMutableArray *)selfCopy2->_segments count]];
  [(UIView *)selfCopy2 setNeedsLayout];
}

+ (double)_selectionOffsetAdjustmentForSegment:(id)segment
{
  segmentCopy = segment;
  traitCollection = [segmentCopy traitCollection];
  v6 = UISegmentedControlStyleProviderForIdiom(self, [traitCollection userInterfaceIdiom]);

  if ((objc_opt_respondsToSelector() & 1) == 0 || (v7 = 0.0, ([v6 useLensView] & 1) == 0))
  {
    if (![segmentCopy segmentPosition] || (v7 = 0.0, objc_msgSend(segmentCopy, "segmentPosition") == 2))
    {
      traitCollection2 = [segmentCopy traitCollection];
      [self _sectionIndicatorOverflowForTraitCollection:traitCollection2 size:{objc_msgSend(segmentCopy, "controlSize")}];
      v10 = v9 + v9;

      [v6 segmentSelectionScaleFactor];
      v12 = (1.0 - v11) * 0.5;
      [segmentCopy frame];
      v14 = v12 * (v10 + v13);
      [segmentCopy frame];
      v7 = v14 - v12 * (v10 + v15);
      segmentPosition = [segmentCopy segmentPosition];
      if (segmentPosition != 2)
      {
        if (segmentPosition)
        {
          v7 = 0.0;
        }

        else
        {
          v7 = -v7;
        }
      }
    }
  }

  return v7;
}

- (void)animationDidStop:(id)stop finished:(BOOL)finished
{
  finishedCopy = finished;
  stopCopy = stop;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  segmentedControlFlags = self->_segmentedControlFlags;
  if (isKindOfClass)
  {
    self->_segmentedControlFlags = (*&segmentedControlFlags & 0xFFFFFFFFFFFDFFFFLL);
    if (!finishedCopy)
    {
      return;
    }

    [(UISegmentedControl *)self _updateSelectionIndicator];
    if (self->_selectedSegment == -1)
    {
      return;
    }

    v15 = [(NSMutableArray *)self->_segments objectAtIndexedSubscript:?];
    [v15 _updateSelectionIndicator];
  }

  else
  {
    self->_segmentedControlFlags = (*&segmentedControlFlags & 0xFFFFFFFFFFFBFFFFLL);
    pointerInteraction = [(UIControl *)self pointerInteraction];
    [pointerInteraction invalidate];

    selectedSegment = self->_selectedSegment;
    if ((selectedSegment & 0x8000000000000000) != 0 || selectedSegment >= [(NSMutableArray *)self->_segments count])
    {
      return;
    }

    v15 = [(NSMutableArray *)self->_segments objectAtIndexedSubscript:self->_selectedSegment];
    if ([v15 isAnimatingSelectionIndicator] && objc_msgSend(v15, "isHovered"))
    {
      [(UIView *)self->_selectionIndicatorView removeFromSuperview];
      selectionIndicatorView = self->_selectionIndicatorView;
      self->_selectionIndicatorView = 0;

      selectionImageView = self->_selectionImageView;
      self->_selectionImageView = 0;

      v13 = [(UIView *)self viewWithTag:-2030];
      v14 = v13;
      if (v13)
      {
        [v13 removeFromSuperview];
      }
    }

    [v15 setAnimatingSelectionIndicator:0];
  }
}

- (void)_updateSelectionToSegment:(id)segment highlight:(BOOL)highlight shouldAnimate:(BOOL)animate sameSegment:(BOOL)sameSegment
{
  animateCopy = animate;
  highlightCopy = highlight;
  segmentCopy = segment;
  if (self)
  {
    v9 = &OBJC_IVAR___UISegmentedControl__selectionImageView;
    segmentedControlFlags = self->_segmentedControlFlags;
    v11 = (*&segmentedControlFlags & 0x400000000) >> 34;
    v196 = (*&segmentedControlFlags >> 35) & 1;
    if ((*&segmentedControlFlags & 0x400000000) != 0)
    {
      v9 = &OBJC_IVAR___UISegmentedControl__selectionIndicatorView;
    }

    v190 = (*&segmentedControlFlags & 0x400000000) >> 34;
  }

  else
  {
    LODWORD(v196) = 0;
    LOBYTE(v11) = 0;
    v190 = 0;
    v9 = &OBJC_IVAR___UISegmentedControl__selectionImageView;
  }

  v12 = *(&self->super.super.super.super.isa + *v9);
  v262 = 0u;
  v261 = 0u;
  v260 = 0u;
  v259 = 0u;
  v258 = 0u;
  v257 = 0u;
  v256 = 0u;
  v255 = 0u;
  layer = [v12 layer];
  presentationLayer = [layer presentationLayer];
  layer2 = [v12 layer];
  v16 = layer2;
  if (presentationLayer)
  {
    presentationLayer2 = [layer2 presentationLayer];
    v18 = presentationLayer2;
    if (presentationLayer2)
    {
      [presentationLayer2 transform];
    }

    else
    {
      v262 = 0u;
      v261 = 0u;
      v260 = 0u;
      v259 = 0u;
      v258 = 0u;
      v257 = 0u;
      v256 = 0u;
      v255 = 0u;
    }
  }

  else if (layer2)
  {
    [layer2 transform];
  }

  else
  {
    v262 = 0u;
    v261 = 0u;
    v260 = 0u;
    v259 = 0u;
    v258 = 0u;
    v257 = 0u;
    v256 = 0u;
    v255 = 0u;
  }

  layer3 = [v12 layer];
  presentationLayer3 = [layer3 presentationLayer];
  layer4 = [v12 layer];
  v22 = layer4;
  if (presentationLayer3)
  {
    presentationLayer4 = [layer4 presentationLayer];
    [presentationLayer4 position];
    v25 = v24;
    v27 = v26;
  }

  else
  {
    [layer4 position];
    v25 = v28;
    v27 = v29;
  }

  layer5 = [v12 layer];
  presentationLayer5 = [layer5 presentationLayer];
  layer6 = [v12 layer];
  v33 = layer6;
  if (presentationLayer5)
  {
    presentationLayer6 = [layer6 presentationLayer];
    [presentationLayer6 bounds];
    v192 = v36;
    v193 = v35;
    v38 = v37;
    v40 = v39;
  }

  else
  {
    [layer6 bounds];
    v192 = v42;
    v193 = v41;
    v38 = v43;
    v40 = v44;
  }

  _backing_outermostLayer = [(UIView *)segmentCopy _backing_outermostLayer];
  [_backing_outermostLayer position];
  v47 = v46;
  v49 = v48;

  v191 = v38;
  v194 = v40;
  if ((*(&self->_segmentedControlFlags + 4) & 0x20) != 0 && self->_initiallyDraggedSegment != -1)
  {
    v50 = [(NSMutableArray *)self->_segments objectAtIndexedSubscript:?];
    _backing_outermostLayer2 = [(UIView *)v50 _backing_outermostLayer];
    [_backing_outermostLayer2 position];
    v53 = v52;
    draggedSegmentOffset = self->_draggedSegmentOffset;

    segmentPosition = [segmentCopy segmentPosition];
    if (segmentPosition != 3)
    {
      v56 = v53 + draggedSegmentOffset;
      if (segmentPosition == 2)
      {
        if (v47 >= v56)
        {
          v58 = v53 + draggedSegmentOffset;
        }

        else
        {
          v58 = v47;
        }

        v47 = v58 + (1.0 - 1.0 / ((v56 - v58) / 12.0 * 0.55 + 1.0)) * 12.0;
      }

      else if (segmentPosition)
      {
        v47 = v53 + draggedSegmentOffset;
      }

      else
      {
        if (v47 >= v56)
        {
          v57 = v47;
        }

        else
        {
          v57 = v53 + draggedSegmentOffset;
        }

        v47 = v57 - (1.0 - 1.0 / ((v56 - v57) / 12.0 * -0.55 + 1.0)) * 12.0;
      }
    }
  }

  v59 = objc_opt_class();
  _backing_outermostLayer3 = [(UIView *)segmentCopy _backing_outermostLayer];
  [_backing_outermostLayer3 bounds];
  v62 = v61;
  v64 = v63;
  v66 = v65;
  v68 = v67;
  v69 = (*&self->_segmentedControlFlags >> 29) & 1;
  controlSize = [(UISegmentedControl *)self controlSize];
  traitCollection = [(UIView *)self traitCollection];
  [v59 _selectionFrameForBounds:v69 hasMaterial:controlSize size:traitCollection traitCollection:0 accessibilityView:{v62, v64, v66, v68}];
  width = v72;
  height = v74;

  v76 = MEMORY[0x1E695EFF8];
  selfCopy = self;
  backdropView = selfCopy->_backdropView;
  if (backdropView)
  {
    if ((*(&self->_segmentedControlFlags + 3) & 0x80) != 0)
    {
      [(UIView *)backdropView contentView];
    }

    else
    {
      [(UIView *)selfCopy viewWithTag:-2031];
    }
    v79 = ;
  }

  else
  {
    v79 = selfCopy;
  }

  v80 = v79;
  v82 = *v76;
  v81 = v76[1];

  v83 = [(UIView *)v80 viewWithTag:-2030];

  if ([(UISegmentedControl *)selfCopy _animateHighlightingSelectionByDefault])
  {
    if (highlightCopy && sameSegment || ([(UISegmentedControl *)selfCopy _updateHighlightToPosition:highlightCopy bounds:v47 highlight:v49, v82, v81, width, height], highlightCopy))
    {
      if ([segmentCopy isHighlighted])
      {
        [(UIView *)selfCopy->_highlightImageView center];
        v85 = v84;
        v87 = v86;
        [v12 center];
        v90 = v87 == v89 && v85 == v88;
      }

      else
      {
        v90 = 1;
      }

      [(UIImageView *)selfCopy->_highlightImageView setHidden:v90];
      goto LABEL_120;
    }

    layer7 = [v12 layer];
    [(UIView *)layer7 position];
    if (v93 != v47 || v92 != v49)
    {
      highlightImageView = selfCopy->_highlightImageView;

      if (!highlightImageView)
      {
        goto LABEL_62;
      }

      v188 = selfCopy->_selectionImageView;
      objc_storeStrong(&selfCopy->_selectionImageView, selfCopy->_highlightImageView);
      [(UIImageView *)selfCopy->_selectionImageView setHidden:0];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        contentView = [(UIView *)selfCopy->_selectionIndicatorView contentView];
        [contentView addSubview:selfCopy->_selectionImageView];
      }

      v96 = selfCopy->_highlightImageView;
      selfCopy->_highlightImageView = 0;

      layer8 = [(UIView *)selfCopy->_selectionImageView layer];
      animationKeys = [layer8 animationKeys];
      v99 = [animationKeys containsObject:@"HighlightScaleUp"];

      if (v99)
      {
        memset(&v254, 0, sizeof(v254));
        layer9 = [(UIView *)selfCopy->_selectionImageView layer];
        presentationLayer7 = [layer9 presentationLayer];
        v102 = presentationLayer7;
        if (presentationLayer7)
        {
          [presentationLayer7 transform];
        }

        else
        {
          memset(&v254, 0, sizeof(v254));
        }

        v253 = v254;
        layer10 = [v83 layer];
        a = v253;
        [layer10 setTransform:&a];

        layer11 = [v83 layer];
        v104 = objc_opt_class();
        v251 = v254;
        v105 = [MEMORY[0x1E696B098] valueWithBytes:&v251 objCType:"{CATransform3D=dddddddddddddddd}"];
        v106 = *(MEMORY[0x1E69792E8] + 80);
        v250[4] = *(MEMORY[0x1E69792E8] + 64);
        v250[5] = v106;
        v107 = *(MEMORY[0x1E69792E8] + 112);
        v250[6] = *(MEMORY[0x1E69792E8] + 96);
        v250[7] = v107;
        v108 = *(MEMORY[0x1E69792E8] + 16);
        v250[0] = *MEMORY[0x1E69792E8];
        v250[1] = v108;
        v109 = *(MEMORY[0x1E69792E8] + 48);
        v250[2] = *(MEMORY[0x1E69792E8] + 32);
        v250[3] = v109;
        v110 = [MEMORY[0x1E696B098] valueWithBytes:v250 objCType:"{CATransform3D=dddddddddddddddd}"];
        v111 = [v104 _highlightPinchAnimationForKey:@"transform" fromValue:v105 toValue:v110];
        [layer11 addAnimation:v111 forKey:@"ShadowScale"];
      }

      [MEMORY[0x1E6979518] begin];
      v112 = MEMORY[0x1E6979518];
      v248[0] = MEMORY[0x1E69E9820];
      v248[1] = 3221225472;
      v248[2] = __84__UISegmentedControl__updateSelectionToSegment_highlight_shouldAnimate_sameSegment___block_invoke;
      v248[3] = &unk_1E70F3590;
      v249 = v188;
      layer7 = v188;
      [v112 setCompletionBlock:v248];
      v113 = [objc_opt_class() _selectionFadeAnimationForKey:@"opacity" fromValue:&unk_1EFE30388 toValue:&unk_1EFE303A0];
      v91Layer = [(UIView *)layer7 layer];
      [v91Layer addAnimation:v113 forKey:@"SelectionFadeOut"];

      v91Layer2 = [(UIView *)layer7 layer];
      [v91Layer2 setOpacity:0.0];

      [MEMORY[0x1E6979518] commit];
    }
  }

LABEL_62:
  if (v196)
  {
    if (segmentCopy)
    {
      v116 = v11;
      if (highlightCopy)
      {
        if (v11)
        {
          v263.origin.x = v82;
          v263.origin.y = v81;
          v263.size.width = width;
          v263.size.height = height;
          v264 = CGRectInset(v263, -12.0, -8.0);
          width = v264.size.width;
          height = v264.size.height;
          v117 = v12;
          v242[0] = MEMORY[0x1E69E9820];
          v242[1] = 3221225472;
          v242[2] = __84__UISegmentedControl__updateSelectionToSegment_highlight_shouldAnimate_sameSegment___block_invoke_708;
          v242[3] = &unk_1E70F3B20;
          v245 = 0;
          v243 = v117;
          v244 = 0;
          v246 = width;
          v247 = height;
          v118 = animateCopy;
          [v117 setLifted:1 animated:animateCopy alongsideAnimations:v242 completion:0];

          v81 = 0.0;
          v82 = 0.0;
        }

        else
        {
          v142 = objc_opt_class();
          traitCollection2 = [(UIView *)selfCopy traitCollection];
          [v142 _highlightSelectionScaleForTraitCollection:traitCollection2];
          v145 = v144;

          width = width * v145;
          height = height * v145;
          v118 = animateCopy;
        }

        [objc_opt_class() _selectionOffsetAdjustmentForSegment:segmentCopy];
        v47 = v47 + v146;
        if (!v118)
        {
LABEL_89:
          if (+[UIView _isInAnimationBlock])
          {
            [v12 setCenter:{v47, v49}];
            if ((v116 & 1) == 0)
            {
              [v12 setBounds:{v82, v81, width, height}];
            }
          }

          else
          {
            v211[0] = MEMORY[0x1E69E9820];
            v211[1] = 3221225472;
            v211[2] = __84__UISegmentedControl__updateSelectionToSegment_highlight_shouldAnimate_sameSegment___block_invoke_6;
            v211[3] = &unk_1E71016A8;
            v212 = v12;
            v213 = v47;
            v214 = v49;
            v219 = v190;
            v215 = v82;
            v216 = v81;
            v217 = width;
            v218 = height;
            [UIView _animateByRetargetingAnimations:v211 completion:0];
          }

          goto LABEL_120;
        }

        goto LABEL_83;
      }
    }

    else
    {
      v121 = objc_opt_class();
      traitCollection3 = [(UIView *)selfCopy traitCollection];
      [v121 _hiddenSelectionScaleForTraitCollection:traitCollection3];
      v124 = v123;

      width = width * v124;
      height = height * v124;
      v116 = v11;
    }

    if ((v116 & 1) == 0 || highlightCopy)
    {
      if (!animateCopy)
      {
        goto LABEL_89;
      }
    }

    else
    {
      v125 = v12;
      v126 = v125;
      if ((*(&self->_segmentedControlFlags + 4) & 0x40) != 0 && ([v125 lifted] & 1) == 0 && !sameSegment)
      {
        v265.origin.x = v82;
        v265.origin.y = v81;
        v265.size.width = width;
        v265.size.height = height;
        v266 = CGRectInset(v265, -12.0, -8.0);
        v127 = v266.size.width;
        v128 = v266.size.height;
        v236[0] = MEMORY[0x1E69E9820];
        v236[1] = 3221225472;
        v236[2] = __84__UISegmentedControl__updateSelectionToSegment_highlight_shouldAnimate_sameSegment___block_invoke_2;
        v236[3] = &unk_1E70F3B20;
        v239 = 0;
        v237 = v126;
        v238 = 0;
        v240 = v127;
        v241 = v128;
        [v237 setLifted:1 animated:animateCopy alongsideAnimations:v236 completion:0];
      }

      v230[0] = MEMORY[0x1E69E9820];
      v230[1] = 3221225472;
      v230[2] = __84__UISegmentedControl__updateSelectionToSegment_highlight_shouldAnimate_sameSegment___block_invoke_3;
      v230[3] = &unk_1E70F3B20;
      v231 = v126;
      v232 = v82;
      v233 = v81;
      v234 = width;
      v235 = height;
      v129 = v126;
      [v129 setLifted:0 animated:animateCopy alongsideAnimations:v230 completion:0];

      if (!animateCopy)
      {
        goto LABEL_89;
      }
    }

LABEL_83:
    v132 = segmentCopy;
    v133 = dbl_18A679AD0[(*&self->_segmentedControlFlags & 0x1000) == 0];
    v134 = [UIViewSpringAnimationBehavior behaviorWithDampingRatio:0.85 response:dbl_18A674F10[(*&self->_segmentedControlFlags & 0x1000) == 0]];
    v135 = [UIViewSpringAnimationBehavior behaviorWithDampingRatio:0.85 response:v133];
    v226[0] = MEMORY[0x1E69E9820];
    v226[1] = 3221225472;
    v226[2] = __84__UISegmentedControl__updateSelectionToSegment_highlight_shouldAnimate_sameSegment___block_invoke_4;
    v226[3] = &unk_1E70F6848;
    v136 = v12;
    v227 = v136;
    v228 = v47;
    v229 = v49;
    [UIView _animateUsingSpringBehavior:v134 tracking:0 animations:v226 completion:0];
    if ((v116 & 1) == 0)
    {
      v220[0] = MEMORY[0x1E69E9820];
      v220[1] = 3221225472;
      v220[2] = __84__UISegmentedControl__updateSelectionToSegment_highlight_shouldAnimate_sameSegment___block_invoke_5;
      v220[3] = &unk_1E70F3B20;
      v221 = v136;
      v222 = v82;
      v223 = v81;
      v224 = width;
      v225 = height;
      [UIView _animateUsingSpringBehavior:v135 tracking:0 animations:v220 completion:0];
    }

    segmentCopy = v132;
    goto LABEL_120;
  }

  memset(&v254, 0, sizeof(v254));
  if (segmentCopy)
  {
    if (!highlightCopy)
    {
      v137 = *(MEMORY[0x1E69792E8] + 80);
      *&v254.m31 = *(MEMORY[0x1E69792E8] + 64);
      *&v254.m33 = v137;
      v138 = *(MEMORY[0x1E69792E8] + 112);
      *&v254.m41 = *(MEMORY[0x1E69792E8] + 96);
      *&v254.m43 = v138;
      v139 = *(MEMORY[0x1E69792E8] + 16);
      *&v254.m11 = *MEMORY[0x1E69792E8];
      *&v254.m13 = v139;
      v140 = *(MEMORY[0x1E69792E8] + 32);
      v141 = *(MEMORY[0x1E69792E8] + 48);
LABEL_99:
      *&v254.m21 = v140;
      *&v254.m23 = v141;
      goto LABEL_100;
    }

    v119 = objc_opt_class();
    traitCollection4 = [(UIView *)selfCopy traitCollection];
    if (v119)
    {
      [v119 _highlightSelectionTransformForTraitCollection:traitCollection4];
    }

    else
    {
      memset(&v254, 0, sizeof(v254));
    }

LABEL_98:
    [objc_opt_class() _selectionOffsetAdjustmentForSegment:segmentCopy];
    b = v254;
    CATransform3DTranslate(&a, &b, v147, 0.0, 0.0);
    *&v254.m31 = *&a.m31;
    *&v254.m33 = *&a.m33;
    *&v254.m41 = *&a.m41;
    *&v254.m43 = *&a.m43;
    *&v254.m11 = *&a.m11;
    *&v254.m13 = *&a.m13;
    v140 = *&a.m21;
    v141 = *&a.m23;
    goto LABEL_99;
  }

  v130 = objc_opt_class();
  traitCollection5 = [(UIView *)selfCopy traitCollection];
  if (v130)
  {
    [v130 _hiddenSelectionTransformForTraitCollection:traitCollection5];
  }

  else
  {
    memset(&v254, 0, sizeof(v254));
  }

  if (highlightCopy)
  {
    goto LABEL_98;
  }

LABEL_100:
  if (!animateCopy)
  {
    goto LABEL_118;
  }

  v189 = segmentCopy;
  layer12 = [v12 layer];
  v149 = layer12;
  if (layer12)
  {
    [layer12 transform];
  }

  else
  {
    memset(&a, 0, sizeof(a));
  }

  b = v254;
  if (!CATransform3DEqualToTransform(&a, &b))
  {
    goto LABEL_111;
  }

  if (sameSegment)
  {
LABEL_117:

    segmentCopy = v189;
    goto LABEL_118;
  }

  layer13 = [v12 layer];
  [layer13 position];
  if (v152 != v47 || v151 != v49)
  {

LABEL_111:
LABEL_112:
    layer14 = [v12 layer];
    v156 = objc_opt_class();
    v209[4] = v259;
    v209[5] = v260;
    v209[6] = v261;
    v209[7] = v262;
    v209[0] = v255;
    v209[1] = v256;
    v209[2] = v257;
    v209[3] = v258;
    v157 = [MEMORY[0x1E696B098] valueWithBytes:v209 objCType:"{CATransform3D=dddddddddddddddd}"];
    v208 = v254;
    v158 = [MEMORY[0x1E696B098] valueWithBytes:&v208 objCType:"{CATransform3D=dddddddddddddddd}"];
    v159 = [v156 _selectionPopAnimationForKey:@"transform" fromValue:v157 toValue:v158];
    [layer14 addAnimation:v159 forKey:@"SelectionScale"];

    v160 = objc_opt_class();
    v207[0] = v25;
    v207[1] = v27;
    v161 = [MEMORY[0x1E696B098] valueWithBytes:v207 objCType:"{CGPoint=dd}"];
    *v206 = v47;
    *&v206[1] = v49;
    v162 = [MEMORY[0x1E696B098] valueWithBytes:v206 objCType:"{CGPoint=dd}"];
    v149 = [v160 _selectionPopAnimationForKey:@"position" fromValue:v161 toValue:v162];

    if (!sameSegment && [v189 isHovered])
    {
      *&self->_segmentedControlFlags |= 0x40000uLL;
      pointerInteraction = [(UIControl *)selfCopy pointerInteraction];
      [pointerInteraction invalidate];

      [v149 setDelegate:selfCopy];
      [v189 setAnimatingSelectionIndicator:1];
    }

    layer15 = [v12 layer];
    [layer15 addAnimation:v149 forKey:@"SelectionPosition"];

    layer16 = [v12 layer];
    v166 = objc_opt_class();
    v205[0] = v193;
    v205[1] = v192;
    v205[2] = v191;
    v205[3] = v194;
    v167 = [MEMORY[0x1E696B098] valueWithBytes:v205 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
    *v204 = v82;
    *&v204[1] = v81;
    *&v204[2] = width;
    *&v204[3] = height;
    v168 = [MEMORY[0x1E696B098] valueWithBytes:v204 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
    v169 = [v166 _selectionPopAnimationForKey:@"bounds" fromValue:v167 toValue:v168];
    [layer16 addAnimation:v169 forKey:@"SelectionBounds"];

    if (v83)
    {
      layer17 = [v83 layer];
      v171 = objc_opt_class();
      v203[4] = v259;
      v203[5] = v260;
      v203[6] = v261;
      v203[7] = v262;
      v203[0] = v255;
      v203[1] = v256;
      v203[2] = v257;
      v203[3] = v258;
      v172 = [MEMORY[0x1E696B098] valueWithBytes:v203 objCType:"{CATransform3D=dddddddddddddddd}"];
      v202 = v254;
      v173 = [MEMORY[0x1E696B098] valueWithBytes:&v202 objCType:"{CATransform3D=dddddddddddddddd}"];
      v174 = [v171 _selectionPopAnimationForKey:@"transform" fromValue:v172 toValue:v173];
      [layer17 addAnimation:v174 forKey:@"SelectionScale"];

      layer18 = [v83 layer];
      [layer18 addAnimation:v149 forKey:@"SelectionPosition"];

      layer19 = [v83 layer];
      v177 = objc_opt_class();
      v201[0] = v193;
      v201[1] = v192;
      v201[2] = v191;
      v201[3] = v194;
      v178 = [MEMORY[0x1E696B098] valueWithBytes:v201 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
      *v200 = v82;
      *&v200[1] = v81;
      *&v200[2] = width;
      *&v200[3] = height;
      v179 = [MEMORY[0x1E696B098] valueWithBytes:v200 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
      v180 = [v177 _selectionPopAnimationForKey:@"bounds" fromValue:v178 toValue:v179];
      [layer19 addAnimation:v180 forKey:@"SelectionBounds"];
    }

    goto LABEL_117;
  }

  layer20 = [v12 layer];
  [layer20 bounds];
  v268.origin.x = v82;
  v268.origin.y = v81;
  v268.size.width = width;
  v268.size.height = height;
  v154 = CGRectEqualToRect(v267, v268);

  segmentCopy = v189;
  if (!v154)
  {
    goto LABEL_112;
  }

LABEL_118:
  layer21 = [v12 layer];
  [layer21 setPosition:{v47, v49}];

  layer22 = [v12 layer];
  [layer22 setBounds:{v82, v81, width, height}];

  v199 = v254;
  layer23 = [v12 layer];
  a = v199;
  [layer23 setTransform:&a];

  if (v83)
  {
    layer24 = [v83 layer];
    [layer24 setPosition:{v47, v49}];

    layer25 = [v83 layer];
    [layer25 setBounds:{v82, v81, width, height}];

    v198 = v254;
    layer26 = [v83 layer];
    a = v198;
    [layer26 setTransform:&a];
  }

LABEL_120:
}

uint64_t __84__UISegmentedControl__updateSelectionToSegment_highlight_shouldAnimate_sameSegment___block_invoke_6(uint64_t a1)
{
  result = [*(a1 + 32) setCenter:{*(a1 + 40), *(a1 + 48)}];
  if ((*(a1 + 88) & 1) == 0)
  {
    v3 = *(a1 + 56);
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
    v6 = *(a1 + 80);
    v7 = *(a1 + 32);

    return [v7 setBounds:{v3, v4, v5, v6}];
  }

  return result;
}

- (void)_updateHighlightToPosition:(CGPoint)position bounds:(CGRect)bounds highlight:(BOOL)highlight
{
  highlightCopy = highlight;
  if (highlight)
  {
    height = bounds.size.height;
    width = bounds.size.width;
    y = bounds.origin.y;
    x = bounds.origin.x;
    v11 = position.y;
    v12 = position.x;
    highlightImageView = self->_highlightImageView;
    if (!highlightImageView)
    {
      v14 = [UIImageView alloc];
      [(UIView *)self->_selectionImageView frame];
      v15 = [(UIImageView *)v14 initWithFrame:?];
      v16 = self->_highlightImageView;
      self->_highlightImageView = v15;

      image = [(UIImageView *)self->_selectionImageView image];
      [(UIImageView *)self->_highlightImageView setImage:image];

      [(UISegmentedControl *)self _insertHighlightView];
      highlightImageView = self->_highlightImageView;
    }

    [(UIImageView *)highlightImageView setCenter:v12, v11];
    [(UIImageView *)self->_highlightImageView setBounds:x, y, width, height];
  }

  v18 = self->_highlightImageView;
  if (v18)
  {
    v19 = [(UIView *)v18 layer:position.x];
    animationKeys = [v19 animationKeys];
    v21 = [animationKeys containsObject:@"HighlightScaleUp"];

    if ((v21 & 1) == 0)
    {
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      layer = [(UIView *)self->_highlightImageView layer];
      v23 = layer;
      if (layer)
      {
        [layer transform];
      }

      else
      {
        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        v42 = 0u;
        v43 = 0u;
        v40 = 0u;
        v41 = 0u;
      }

      memset(&v39, 0, sizeof(v39));
      if (highlightCopy)
      {
        CATransform3DMakeScale(&v39, 0.98, 0.98, 1.0);
        v24 = @"HighlightScaleDown";
      }

      else
      {
        v25 = *(MEMORY[0x1E69792E8] + 80);
        *&v39.m31 = *(MEMORY[0x1E69792E8] + 64);
        *&v39.m33 = v25;
        v26 = *(MEMORY[0x1E69792E8] + 112);
        *&v39.m41 = *(MEMORY[0x1E69792E8] + 96);
        *&v39.m43 = v26;
        v27 = *(MEMORY[0x1E69792E8] + 16);
        *&v39.m11 = *MEMORY[0x1E69792E8];
        *&v39.m13 = v27;
        v28 = *(MEMORY[0x1E69792E8] + 48);
        *&v39.m21 = *(MEMORY[0x1E69792E8] + 32);
        *&v39.m23 = v28;
        v24 = @"HighlightScaleUp";
      }

      layer2 = [(UIView *)self->_highlightImageView layer];
      v30 = objc_opt_class();
      v38[4] = v44;
      v38[5] = v45;
      v38[6] = v46;
      v38[7] = v47;
      v38[0] = v40;
      v38[1] = v41;
      v38[2] = v42;
      v38[3] = v43;
      v31 = [MEMORY[0x1E696B098] valueWithBytes:v38 objCType:"{CATransform3D=dddddddddddddddd}"];
      v37 = v39;
      v32 = [MEMORY[0x1E696B098] valueWithBytes:&v37 objCType:"{CATransform3D=dddddddddddddddd}"];
      v33 = [v30 _highlightPinchAnimationForKey:@"transform" fromValue:v31 toValue:v32];
      [layer2 addAnimation:v33 forKey:v24];

      v36 = v39;
      layer3 = [(UIView *)self->_highlightImageView layer];
      v35 = v36;
      [layer3 setTransform:&v35];
    }
  }
}

- (void)_insertHighlightView
{
  v3 = objc_opt_class();
  traitCollection = [(UIView *)self traitCollection];
  v20 = UISegmentedControlStyleProviderForIdiom(v3, [traitCollection userInterfaceIdiom]);

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v7 = 0;
    goto LABEL_10;
  }

  highlightedSegmentDefaultVibrancyEffect = [v20 highlightedSegmentDefaultVibrancyEffect];
  if (!highlightedSegmentDefaultVibrancyEffect)
  {
    v7 = 0;
    goto LABEL_10;
  }

  selectedSegmentVisualEffect = self->_selectedSegmentVisualEffect;
  v7 = highlightedSegmentDefaultVibrancyEffect;
  v8 = selectedSegmentVisualEffect;
  v9 = v8;
  if (v7 == v8)
  {

    goto LABEL_10;
  }

  if (v8)
  {
    v10 = [(UIVisualEffect *)v7 isEqual:v8];

    if ((v10 & 1) == 0)
    {
      goto LABEL_18;
    }

LABEL_10:
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_14;
    }

    p_selectionIndicatorView = &self->_selectionIndicatorView;
    goto LABEL_12;
  }

LABEL_18:
  p_selectionIndicatorView = &self->_highlightIndicatorView;
  highlightIndicatorView = self->_highlightIndicatorView;
  if (highlightIndicatorView)
  {
    goto LABEL_13;
  }

  v14 = [[UIVisualEffectView alloc] initWithEffect:v7];
  v15 = *p_selectionIndicatorView;
  *p_selectionIndicatorView = v14;

  [(UISegmentedControl *)self bounds];
  [*p_selectionIndicatorView setFrame:?];
  [*p_selectionIndicatorView setAutoresizingMask:18];
  selfCopy = self;
  backdropView = selfCopy->_backdropView;
  if (backdropView)
  {
    if ((*(&selfCopy->_segmentedControlFlags + 3) & 0x80) != 0)
    {
      [(UIView *)backdropView contentView];
    }

    else
    {
      [(UIView *)selfCopy viewWithTag:-2031];
    }
    v18 = ;
  }

  else
  {
    v18 = selfCopy;
  }

  v19 = v18;

  [(UIView *)v19 addSubview:*p_selectionIndicatorView];
LABEL_12:
  highlightIndicatorView = *p_selectionIndicatorView;
LABEL_13:
  contentView = [(UIView *)highlightIndicatorView contentView];
  [contentView addSubview:self->_highlightImageView];

LABEL_14:
}

void __36__UISegmentedControl_layoutSubviews__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 label];
  if (v3 && v3 != *(a1 + 32))
  {
    v4 = v3;
    [v3 setAssociatedLabel:?];
    v3 = v4;
  }
}

- (void)_setHighlightedSegmentHighlighted:(BOOL)highlighted
{
  highlightedSegment = self->_highlightedSegment;
  if ((highlightedSegment & 0x8000000000000000) == 0)
  {
    highlightedCopy = highlighted;
    if (highlightedSegment < [(NSMutableArray *)self->_segments count])
    {
      v6 = [(NSMutableArray *)self->_segments objectAtIndex:self->_highlightedSegment];
      [v6 setSelectionIndicatorDragged:(*&self->_segmentedControlFlags >> 12) & 1];
      [v6 setHighlighted:highlightedCopy];
      [(UISegmentedControl *)self _updateDividerImageForSegmentAtIndex:self->_highlightedSegment];
    }
  }

  [(UISegmentedControl *)self _updateSelectionIndicator];
}

- (void)_highlightSegment:(int64_t)segment
{
  highlightedSegment = self->_highlightedSegment;
  if (highlightedSegment != segment)
  {
    if (highlightedSegment != -1)
    {
      [(UISegmentedControl *)self _setHighlightedSegmentHighlighted:0];
    }

    segmentedControlFlags = self->_segmentedControlFlags;
    if ((*&segmentedControlFlags & 0x10) != 0 && self->_highlightedSegment != -1)
    {
      self->_segmentedControlFlags = (*&segmentedControlFlags & 0xFFFFFFFEFFFFFFFFLL | ((self->_selectedSegment != segment) << 32));
    }

    self->_highlightedSegment = segment;
    if (segment != -1)
    {
      [(UISegmentedControl *)self _setHighlightedSegmentHighlighted:1];
    }

    [(UISegmentedControl *)self _updateSelectionIndicator];
  }
}

- (void)_setHoverOnSegment:(int64_t)segment hovered:(BOOL)hovered
{
  if ((segment & 0x8000000000000000) == 0)
  {
    hoveredCopy = hovered;
    if ([(NSMutableArray *)self->_segments count]> segment)
    {
      v7 = [(NSMutableArray *)self->_segments objectAtIndex:segment];
      [v7 setHovered:hoveredCopy];
      [(UISegmentedControl *)self _updateDividerImageForSegmentAtIndex:segment];
    }
  }

  if (self->_selectedSegment == segment)
  {

    [(UISegmentedControl *)self _updateSelectionIndicator];
  }
}

- (id)_feedbackGenerator
{
  if ((*(&self->_segmentedControlFlags + 3) & 4) != 0)
  {
    v2 = objc_getAssociatedObject(self, sel__feedbackGenerator);
    if (!v2)
    {
      v4 = objc_opt_class();
      traitCollection = [(UIView *)self traitCollection];
      v6 = UISegmentedControlStyleProviderForIdiom(v4, [traitCollection userInterfaceIdiom]);

      v2 = [v6 feedbackGeneratorForSegmentedControl:self];
      objc_setAssociatedObject(self, sel__feedbackGenerator, v2, 1);
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (BOOL)pointMostlyInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  v7 = objc_opt_class();
  traitCollection = [(UIView *)self traitCollection];
  v9 = UISegmentedControlStyleProviderForIdiom(v7, [traitCollection userInterfaceIdiom]);

  [v9 mostlyInsideMargin];
  v11 = v10;
  [(UISegmentedControl *)self bounds];
  v15 = CGRectInset(v14, -v11, -v11);
  v13.x = x;
  v13.y = y;
  LOBYTE(self) = CGRectContainsPoint(v15, v13);

  return self;
}

- (id)_segmentAtIndex:(int)index
{
  if (index < 0)
  {
    v6 = 0;
  }

  else
  {
    if ([(NSMutableArray *)self->_segments count]<= index)
    {
      v6 = 0;
    }

    else
    {
      v6 = [(NSMutableArray *)self->_segments objectAtIndexedSubscript:index];
    }
  }

  return v6;
}

- (int)_closestSegmentIndexAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v6 = [(NSMutableArray *)self->_segments count];
  v7 = v6;
  if (!v6)
  {
    return -1;
  }

  v8 = 0;
  v9 = -1;
  v10 = 1000000.0;
  while (1)
  {
    v11 = [(NSMutableArray *)self->_segments objectAtIndex:v8];
    [v11 frame];
    v19.x = x;
    v19.y = y;
    if (CGRectContainsPoint(v20, v19))
    {
      break;
    }

    [v11 frame];
    UIDistanceBetweenPointAndRect(x, y, v12, v13, v14, v15);
    v17 = v16;
    if (v10 > v17)
    {
      v10 = v17;
      v9 = v8;
    }

    if (v7 == ++v8)
    {
      return v9;
    }
  }

  return v8;
}

- (void)_tapSegmentAtPoint:(CGPoint)point touchDown:(BOOL)down
{
  downCopy = down;
  v6 = [(UISegmentedControl *)self _closestSegmentIndexAtPoint:point.x, point.y];
  if ((v6 & 0x80000000) == 0)
  {
    v7 = v6;
    v8 = [(NSMutableArray *)self->_segments objectAtIndex:v6];
    isUserInteractionEnabled = [v8 isUserInteractionEnabled];

    segmentedControlFlags = self->_segmentedControlFlags;
    if (isUserInteractionEnabled)
    {
      if ((*&segmentedControlFlags & 0x10) != 0)
      {
        v11 = objc_opt_class();
        traitCollection = [(UIView *)self traitCollection];
        v18 = UISegmentedControlStyleProviderForIdiom(v11, [traitCollection userInterfaceIdiom]);

        if ([v18 animateSlidingSelectionByDefault] && !-[UISegmentedControl _disableSlidingControl](self, "_disableSlidingControl") && downCopy)
        {
          selectedSegment = self->_selectedSegment;
          v14 = self->_segmentedControlFlags;
          self->_segmentedControlFlags = (*&v14 & 0xFFFFFFFFFFFFEFFFLL | ((selectedSegment == v7) << 12));
          if ((*&v14 & 0x2000000000) != 0)
          {
            if (selectedSegment == v7)
            {
              self->_initiallyDraggedSegment = v7;
              self->_draggedSegmentOffset = 0.0;
            }

            else
            {
              self->_initiallyDraggedSegment = -1;
            }
          }

          if (self->_hoveredSegment != -1)
          {
            pointerInteraction = [(UIControl *)self pointerInteraction];
            [pointerInteraction invalidate];

            [(UISegmentedControl *)self _setHoverOnSegment:self->_selectedSegment hovered:0];
          }
        }

        highlightedSegment = self->_highlightedSegment;
        if (highlightedSegment == v7)
        {
          [(UISegmentedControl *)self _setHighlightedSegmentHighlighted:1];
        }

        else
        {
          if (self->_hoveredSegment == highlightedSegment)
          {
            pointerInteraction2 = [(UIControl *)self pointerInteraction];
            [pointerInteraction2 invalidate];
          }

          [(UISegmentedControl *)self _highlightSegment:v7];
        }
      }

      else
      {
        self->_segmentedControlFlags = (*&segmentedControlFlags & 0xFFFFFFFFFFFFEFEFLL);
        [(UISegmentedControl *)self _setSelectedSegmentIndex:v7 notify:1 animate:1];
        if ((*&self->_segmentedControlFlags & 8) != 0)
        {

          [(UISegmentedControl *)self performSelector:sel__clearSelectedSegment withObject:0 afterDelay:0.2];
        }
      }
    }

    else
    {
      self->_segmentedControlFlags = (*&segmentedControlFlags & 0xFFFFFFFFFFFFEFEFLL);
    }
  }
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  eventCopy = event;
  v5 = objc_opt_class();
  traitCollection = [(UIView *)self traitCollection];
  v7 = UISegmentedControlStyleProviderForIdiom(v5, [traitCollection userInterfaceIdiom]);

  if (([v7 useTVStyleFocusSelection] & 1) == 0)
  {
    v8 = eventCopy;
    if ([v8 _buttonMask])
    {
      _buttonMask = [v8 _buttonMask];

      if ((_buttonMask & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    else
    {
    }

    [(UIView *)self layoutIfNeeded];
    v10 = [v8 _firstTouchForView:self];
    [v10 locationInView:self];
    v12 = v11;
    v14 = v13;
    if (![v7 limitInternalLayoutAndInteractionToDefaultHeight] || (v15 = -[UISegmentedControl controlSize](self, "controlSize"), -[UIView traitCollection](self, "traitCollection"), v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "defaultHeightForControlSize:traitCollection:", v15, v16), v18 = v17, v16, v14 <= v18))
    {
      shouldTrack = [(UISegmentedControl *)self shouldTrack];
      segmentedControlFlags = self->_segmentedControlFlags;
      v21 = 16;
      if (!shouldTrack)
      {
        v21 = 0;
      }

      self->_segmentedControlFlags = (*&segmentedControlFlags & 0xFFFFFFFFFFFFFFEFLL | v21);
      if ((*&segmentedControlFlags & 0x8000000) != 0)
      {
        [v7 setActiveSegmentControl:self];
        [v7 touchesBegan];
        [v7 setActiveSegmentControl:0];
      }

      else
      {
        _feedbackGenerator = [(UISegmentedControl *)self _feedbackGenerator];
        [_feedbackGenerator pressedDown];
      }

      *&self->_segmentedControlFlags &= ~0x100000000uLL;
      [(UISegmentedControl *)self _tapSegmentAtPoint:1 touchDown:v12, v14];
    }
  }

LABEL_15:
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  eventCopy = event;
  v5 = objc_opt_class();
  traitCollection = [(UIView *)self traitCollection];
  v7 = UISegmentedControlStyleProviderForIdiom(v5, [traitCollection userInterfaceIdiom]);

  if (([v7 useTVStyleFocusSelection] & 1) == 0 && (*&self->_segmentedControlFlags & 0x10) != 0)
  {
    v8 = [eventCopy _firstTouchForView:self];
    [v8 locationInView:self];
    v10 = v9;
    v12 = v11;
    segmentedControlFlags = self->_segmentedControlFlags;
    if ((*&segmentedControlFlags & 0x2000000000) != 0 && self->_initiallyDraggedSegment != -1)
    {
      [v8 previousLocationInView:self];
      self->_draggedSegmentOffset = self->_draggedSegmentOffset + v10 - v14;
      segmentedControlFlags = self->_segmentedControlFlags;
    }

    if ((*&segmentedControlFlags & 0x1000) != 0 || [(UISegmentedControl *)self pointMostlyInside:eventCopy withEvent:v10, v12])
    {
      [(UISegmentedControl *)self _tapSegmentAtPoint:0 touchDown:v10, v12];
    }

    else
    {
      [(UISegmentedControl *)self _setHighlightedSegmentHighlighted:0];
    }
  }
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  eventCopy = event;
  v5 = objc_opt_class();
  traitCollection = [(UIView *)self traitCollection];
  v7 = UISegmentedControlStyleProviderForIdiom(v5, [traitCollection userInterfaceIdiom]);

  if (([v7 useTVStyleFocusSelection] & 1) == 0)
  {
    segmentedControlFlags = self->_segmentedControlFlags;
    if ((*&segmentedControlFlags & 0x10) != 0)
    {
      self->_segmentedControlFlags = (*&segmentedControlFlags & 0xFFFFFFFFFFFFEFEFLL);
      self->_initiallyDraggedSegment = -1;
      v9 = [eventCopy _firstTouchForView:self];
      [v9 locationInView:self];
      if ((*&segmentedControlFlags & 0x1000) != 0 || [(UISegmentedControl *)self pointMostlyInside:eventCopy withEvent:?])
      {
        [(UISegmentedControl *)self _setSelectedSegmentIndex:self->_highlightedSegment notify:1 animate:1];
      }

      v10 = self->_segmentedControlFlags;
      if ((v10 & 0x8000000) != 0)
      {
        [v7 setActiveSegmentControl:self];
        [v7 touchesEnded];
        [v7 setActiveSegmentControl:0];
        v10 = self->_segmentedControlFlags;
      }

      else if ((v10 & 0x100000000) != 0)
      {
        _feedbackGenerator = [(UISegmentedControl *)self _feedbackGenerator];
        [_feedbackGenerator pressedUp];

        v10 = *&self->_segmentedControlFlags & 0xFFFFFFFEFFFFFFFFLL;
      }

      self->_segmentedControlFlags = (v10 | 0x4000000000);
      [(UISegmentedControl *)self _highlightSegment:-1];
      *&self->_segmentedControlFlags &= ~0x4000000000uLL;
    }
  }
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  v5 = objc_opt_class();
  traitCollection = [(UIView *)self traitCollection];
  v8 = UISegmentedControlStyleProviderForIdiom(v5, [traitCollection userInterfaceIdiom]);

  if (([v8 useTVStyleFocusSelection] & 1) == 0)
  {
    segmentedControlFlags = self->_segmentedControlFlags;
    if ((*&segmentedControlFlags & 0x10) != 0)
    {
      self->_segmentedControlFlags = (*&segmentedControlFlags & 0xFFFFFFFFFFFFEFEFLL);
      self->_initiallyDraggedSegment = -1;
      [(UISegmentedControl *)self _highlightSegment:-1];
    }
  }
}

- (void)pressesBegan:(id)began withEvent:(id)event
{
  beganCopy = began;
  eventCopy = event;
  if ([(UISegmentedControl *)self _shouldConsumeEventWithPresses:beganCopy])
  {
    [(UISegment *)self->_focusedSegment _setHighlighted:1 animated:1];
    [(UISegmentedControl *)self _selectFocusedSegment];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = UISegmentedControl;
    [(UIResponder *)&v8 pressesBegan:beganCopy withEvent:eventCopy];
  }
}

- (void)pressesChanged:(id)changed withEvent:(id)event
{
  changedCopy = changed;
  eventCopy = event;
  if (![(UISegmentedControl *)self _shouldConsumeEventWithPresses:changedCopy])
  {
    v8.receiver = self;
    v8.super_class = UISegmentedControl;
    [(UIResponder *)&v8 pressesChanged:changedCopy withEvent:eventCopy];
  }
}

- (void)pressesCancelled:(id)cancelled withEvent:(id)event
{
  cancelledCopy = cancelled;
  eventCopy = event;
  if ([(UISegmentedControl *)self _shouldConsumeEventWithPresses:cancelledCopy])
  {
    [(UISegment *)self->_focusedSegment _setHighlighted:0 animated:1];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = UISegmentedControl;
    [(UIResponder *)&v8 pressesCancelled:cancelledCopy withEvent:eventCopy];
  }
}

- (void)pressesEnded:(id)ended withEvent:(id)event
{
  endedCopy = ended;
  eventCopy = event;
  if ([(UISegmentedControl *)self _shouldConsumeEventWithPresses:endedCopy])
  {
    [(UISegmentedControl *)self setSelectedSegmentIndex:[(NSMutableArray *)self->_segments indexOfObject:self->_focusedSegment]];
    [(UISegment *)self->_focusedSegment _setHighlighted:0 animated:1];
    if ((*&self->_segmentedControlFlags & 8) != 0)
    {
      [(UISegmentedControl *)self performSelector:sel__clearSelectedSegment withObject:0 afterDelay:0.2];
    }
  }

  else
  {
    v8.receiver = self;
    v8.super_class = UISegmentedControl;
    [(UIResponder *)&v8 pressesEnded:endedCopy withEvent:eventCopy];
  }
}

- (BOOL)_shouldConsumeEventWithPresses:(id)presses
{
  v4 = _UIPressesContainsPressType(presses, 4);
  if (v4)
  {
    focusedSegment = self->_focusedSegment;

    LOBYTE(v4) = [(UISegment *)focusedSegment isEnabled];
  }

  return v4;
}

- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region
{
  requestCopy = request;
  regionCopy = region;
  v9 = objc_opt_class();
  traitCollection = [(UIView *)self traitCollection];
  v11 = UISegmentedControlStyleProviderForIdiom(v9, [traitCollection userInterfaceIdiom]);

  if ([v11 useSelectionIndicatorStyling])
  {
    if ((*(&self->_segmentedControlFlags + 1) & 0x410) != 0)
    {
      height = regionCopy;
      goto LABEL_9;
    }

    [requestCopy location];
    v13 = [(UISegmentedControl *)self _closestSegmentIndexAtPoint:?];
    if ((v13 & 0x80000000) == 0)
    {
      v14 = v13;
      v15 = [(NSMutableArray *)self->_segments objectAtIndex:v13];
      if ([v15 isUserInteractionEnabled])
      {
        [v15 frame];
        v24 = CGRectInset(v23, -1.0, 0.0);
        x = v24.origin.x;
        y = v24.origin.y;
        width = v24.size.width;
        height = v24.size.height;
        v20 = [[_UISegmentedControlSegmentHoverIdentifier alloc] initWithIndex:v14 selected:self->_selectedSegment == v14];
        height = [UIPointerRegion regionWithRect:v20 identifier:x, y, width, height];

        goto LABEL_9;
      }
    }
  }

  height = 0;
LABEL_9:

  return height;
}

- (id)_pointerEffectWithPreview:(void *)preview forSegment:(uint64_t)segment selected:
{
  previewCopy = preview;
  if (self)
  {
    v8 = a2;
    v9 = objc_opt_class();
    traitCollection = [self traitCollection];
    v11 = UISegmentedControlStyleProviderForIdiom(v9, [traitCollection userInterfaceIdiom]);

    if (objc_opt_respondsToSelector())
    {
      v12 = [v11 pointerEffectClassForSegment:previewCopy selected:segment];
    }

    else
    {
      v12 = objc_opt_class();
    }

    v13 = [v12 effectWithPreview:v8];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)pointerInteraction:(id)interaction styleForRegion:(id)region
{
  regionCopy = region;
  identifier = [regionCopy identifier];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v57 = +[UIPointerStyle hiddenPointerStyle];
    goto LABEL_24;
  }

  identifier2 = [regionCopy identifier];
  index = [identifier2 index];
  if ((index & 0x8000000000000000) == 0)
  {
    v10 = index;
    v11 = [(NSMutableArray *)self->_segments objectAtIndex:index];
    v12 = self->_selectedSegment == v10;
    v13 = objc_opt_class();
    traitCollection = [(UIView *)self traitCollection];
    v15 = (*&self->_segmentedControlFlags >> 29) & 1;
    [(UISegmentedControl *)self bounds];
    [v13 _effectiveCornerRadiusForTraitCollection:traitCollection hasMaterial:v15 size:-[UISegmentedControl controlSize](self controlSize:"controlSize") selected:{v12, v16, v17}];
    v19 = v18;

    v20 = objc_opt_class();
    traitCollection2 = [(UIView *)self traitCollection];
    [v20 _sectionIndicatorInsetForTraitCollection:traitCollection2 hasMaterial:(*&self->_segmentedControlFlags >> 29) & 1 size:{-[UISegmentedControl controlSize](self, "controlSize")}];
    v23 = v22;

    [v11 bounds];
    x = v24;
    y = v25;
    width = v26;
    height = v27;
    if ((*(&self->_segmentedControlFlags + 1) & 0x20) != 0)
    {
      v75 = CGRectInset(*&v24, self->_innerSegmentSpacing * -0.5, 0.0);
      x = v75.origin.x;
      y = v75.origin.y;
      width = v75.size.width;
      height = v75.size.height;
    }

    if (v10 == self->_selectedSegment)
    {
      v76.origin.x = x;
      v76.origin.y = y;
      v76.size.width = width;
      v76.size.height = height;
      v77 = CGRectInset(v76, v23, v23);
      v32 = v77.origin.x;
      v33 = v77.origin.y;
      v34 = v77.size.width;
      v35 = v77.size.height;
      superview = [(UIView *)self superview];
      if ([(UITargetedPreview *)superview clipsToBounds])
      {
        v36Superview = [(UITargetedPreview *)superview superview];

        superview = v36Superview;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v36Superview2 = [(UITargetedPreview *)superview superview];

        superview = v36Superview2;
      }

      [v11 frame];
      [(UIView *)self convertPoint:superview toView:v40 + v39 * 0.5, v42 + v41 * 0.5];
      v45 = [[UIPreviewTarget alloc] initWithContainer:superview center:v43, v44];
      v46 = objc_opt_new();
      v47 = [[UITargetedPreview alloc] initWithView:v11 parameters:v46 target:v45];
      v48 = [(UISegmentedControl *)self _pointerEffectWithPreview:v47 forSegment:v11 selected:1];
      [v11 convertRect:superview toView:{v32, v33, v34, v35}];
      v50 = v49;
      v52 = v51;
      v54 = v53;
      v56 = v55;

      goto LABEL_22;
    }

    v58 = objc_opt_class();
    traitCollection3 = [(UIView *)self traitCollection];
    [v58 _dividerWidthForTraitCollection:traitCollection3 size:{-[UISegmentedControl controlSize](self, "controlSize")}];
    v61 = v60;

    segmentPosition = [v11 segmentPosition];
    if (segmentPosition == 3)
    {
      v63 = v23;
    }

    else
    {
      if (segmentPosition == 2)
      {
        x = x - v61;
      }

      else
      {
        if (segmentPosition)
        {
          v63 = -v61;
          goto LABEL_21;
        }

        x = v23 + x;
      }

      width = width - (v23 - v61);
      v63 = 0.0;
    }

LABEL_21:
    v78.origin.x = x;
    v78.origin.y = y;
    v78.size.width = width;
    v78.size.height = height;
    v79 = CGRectInset(v78, v63, v23);
    v64 = v79.origin.x;
    v65 = v79.origin.y;
    v66 = v79.size.width;
    v67 = v79.size.height;
    superview = [[UITargetedPreview alloc] initWithView:v11];
    v48 = [(UISegmentedControl *)self _pointerEffectWithPreview:superview forSegment:v11 selected:0];
    [v11 convertRect:self toView:{v64, v65, v66, v67}];
    v50 = v68;
    v52 = v69;
    v54 = v70;
    v56 = v71;
LABEL_22:

    v72 = [UIPointerShape shapeWithRoundedRect:v50 cornerRadius:v52, v54, v56, v19];
    v57 = [UIPointerStyle styleWithEffect:v48 shape:v72];

    goto LABEL_23;
  }

  v57 = 0;
LABEL_23:

LABEL_24:

  return v57;
}

- (void)pointerInteraction:(id)interaction willEnterRegion:(id)region animator:(id)animator
{
  regionCopy = region;
  animatorCopy = animator;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __66__UISegmentedControl_pointerInteraction_willEnterRegion_animator___block_invoke;
  v23[3] = &unk_1E70F3590;
  v23[4] = self;
  [animatorCopy addAnimations:v23];
  if (![(UISegmentedControl *)self transparentBackground])
  {
    _selectedSegmentVibrancyEffect = [(UISegmentedControl *)self _selectedSegmentVibrancyEffect];
    if (_selectedSegmentVibrancyEffect)
    {
    }

    else
    {
      v10 = objc_opt_class();
      selectedSegmentTintColor = [(UISegmentedControl *)self selectedSegmentTintColor];
      traitCollection = [(UIView *)self traitCollection];
      LODWORD(v10) = [v10 _useShadowForSelectedTintColor:selectedSegmentTintColor traitCollection:traitCollection];

      if (v10)
      {
        if (self->_selectedSegment != -1)
        {
          v13 = [(NSMutableArray *)self->_segments objectAtIndexedSubscript:?];
          v21[0] = MEMORY[0x1E69E9820];
          v21[1] = 3221225472;
          v21[2] = __66__UISegmentedControl_pointerInteraction_willEnterRegion_animator___block_invoke_2;
          v21[3] = &unk_1E70F3590;
          v22 = v13;
          v14 = v13;
          [animatorCopy addAnimations:v21];
        }

        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 3221225472;
        v20[2] = __66__UISegmentedControl_pointerInteraction_willEnterRegion_animator___block_invoke_3;
        v20[3] = &unk_1E70F3590;
        v20[4] = self;
        [animatorCopy addAnimations:v20];
      }
    }
  }

  identifier = [regionCopy identifier];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    identifier2 = [regionCopy identifier];
    index = [identifier2 index];
    self->_hoveredSegment = index;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __66__UISegmentedControl_pointerInteraction_willEnterRegion_animator___block_invoke_4;
    v19[3] = &unk_1E70F32F0;
    v19[4] = self;
    v19[5] = index;
    [animatorCopy addAnimations:v19];
  }
}

uint64_t __66__UISegmentedControl_pointerInteraction_willEnterRegion_animator___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _updateDynamicShadow:1 animated:1];
  v2 = *(a1 + 32);

  return [v2 _updateSelectionIndicator];
}

- (void)pointerInteraction:(id)interaction willExitRegion:(id)region animator:(id)animator
{
  regionCopy = region;
  animatorCopy = animator;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __65__UISegmentedControl_pointerInteraction_willExitRegion_animator___block_invoke;
  v23[3] = &unk_1E70F3590;
  v23[4] = self;
  [animatorCopy addAnimations:v23];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __65__UISegmentedControl_pointerInteraction_willExitRegion_animator___block_invoke_2;
  aBlock[3] = &unk_1E70F35B8;
  aBlock[4] = self;
  v9 = animatorCopy;
  v22 = v9;
  v10 = _Block_copy(aBlock);
  identifier = [regionCopy identifier];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    identifier2 = [regionCopy identifier];
    index = [identifier2 index];
    v15 = index;
    if (self->_hoveredSegment == index)
    {
      self->_hoveredSegment = -1;
    }

    if (index == self->_selectedSegment)
    {
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __65__UISegmentedControl_pointerInteraction_willExitRegion_animator___block_invoke_5;
      v20[3] = &unk_1E70F3590;
      v20[4] = self;
      [v9 addAnimations:v20];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __65__UISegmentedControl_pointerInteraction_willExitRegion_animator___block_invoke_6;
      v17[3] = &unk_1E7104F38;
      v17[4] = self;
      v19 = v15;
      v18 = v10;
      [v9 addCompletion:v17];
    }

    else
    {
      if ((*(&self->_segmentedControlFlags + 2) & 8) == 0)
      {
        v10[2](v10);
      }

      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __65__UISegmentedControl_pointerInteraction_willExitRegion_animator___block_invoke_7;
      v16[3] = &unk_1E70F32F0;
      v16[4] = self;
      v16[5] = v15;
      [v9 addAnimations:v16];
    }
  }

  else
  {
    v10[2](v10);
  }
}

void __65__UISegmentedControl_pointerInteraction_willExitRegion_animator___block_invoke_2(uint64_t a1)
{
  if (([*(a1 + 32) transparentBackground] & 1) == 0)
  {
    v2 = [*(a1 + 32) _selectedSegmentVibrancyEffect];
    if (v2)
    {
    }

    else
    {
      v3 = objc_opt_class();
      v4 = [*(a1 + 32) selectedSegmentTintColor];
      v5 = [*(a1 + 32) traitCollection];
      LODWORD(v3) = [v3 _useShadowForSelectedTintColor:v4 traitCollection:v5];

      if (v3)
      {
        v6 = *(a1 + 32);
        if (*(v6 + 504) != -1)
        {
          v7 = [*(v6 + 496) objectAtIndexedSubscript:?];
          v8 = *(a1 + 40);
          v12[0] = MEMORY[0x1E69E9820];
          v12[1] = 3221225472;
          v12[2] = __65__UISegmentedControl_pointerInteraction_willExitRegion_animator___block_invoke_3;
          v12[3] = &unk_1E70F3590;
          v13 = v7;
          v9 = v7;
          [v8 addAnimations:v12];

          v6 = *(a1 + 32);
        }

        v10 = *(a1 + 40);
        v11[0] = MEMORY[0x1E69E9820];
        v11[1] = 3221225472;
        v11[2] = __65__UISegmentedControl_pointerInteraction_willExitRegion_animator___block_invoke_4;
        v11[3] = &unk_1E70F3590;
        v11[4] = v6;
        [v10 addAnimations:v11];
      }
    }
  }
}

uint64_t __65__UISegmentedControl_pointerInteraction_willExitRegion_animator___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) _updateDynamicShadow:0 animated:1];
  v2 = *(a1 + 32);

  return [v2 _updateSelectionIndicator];
}

uint64_t __65__UISegmentedControl_pointerInteraction_willExitRegion_animator___block_invoke_6(void *a1, int a2)
{
  *(a1[4] + 624) &= ~0x80000uLL;
  result = a1[4];
  if (a2 && *(result + 528) != a1[6])
  {
    [result hoverOffSegment:?];
    result = a1[4];
  }

  if ((*(result + 626) & 1) == 0)
  {
    v4 = *(a1[5] + 16);

    return v4();
  }

  return result;
}

- (void)_setEnabled:(BOOL)enabled forcePropagateToSegments:(BOOL)segments
{
  segmentsCopy = segments;
  enabledCopy = enabled;
  v28 = *MEMORY[0x1E69E9840];
  isEnabled = [(UIControl *)self isEnabled];
  v8 = isEnabled;
  if (!enabledCopy && isEnabled)
  {
    [(UIView *)self alpha];
    self->_enabledAlpha = v9;
  }

  v26.receiver = self;
  v26.super_class = UISegmentedControl;
  [(UIControl *)&v26 setEnabled:enabledCopy];
  v10 = v8 ^ enabledCopy;
  if (v8 != enabledCopy || segmentsCopy)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v11 = self->_segments;
    v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v23;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v23 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v22 + 1) + 8 * i);
          if (enabledCopy)
          {
            isEnabled2 = [*(*(&v22 + 1) + 8 * i) isEnabled];
          }

          else
          {
            isEnabled2 = 1;
          }

          [v16 _setEnabledAppearance:{isEnabled2, v22}];
        }

        v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v13);
    }

    layer = [(UIView *)self layer];
    [layer setShouldRasterize:enabledCopy ^ 1];
  }

  if (v10)
  {
    if (enabledCopy)
    {
      enabledAlpha = self->_enabledAlpha;
    }

    else
    {
      [(UIView *)self alpha];
      v21 = v20;
      enabledAlpha = 0.5;
      if (v21 <= 0.5)
      {
        return;
      }
    }

    [(UISegmentedControl *)self setAlpha:enabledAlpha, v22];
  }
}

- (void)setAlpha:(double)alpha
{
  isEnabled = [(UIControl *)self isEnabled];
  alphaCopy = 0.5;
  if (alpha < 0.5 || isEnabled)
  {
    alphaCopy = alpha;
  }

  v8.receiver = self;
  v8.super_class = UISegmentedControl;
  [(UIView *)&v8 setAlpha:alphaCopy];
}

- (void)_setAlwaysEmitValueChanged:(BOOL)changed
{
  v3 = 4;
  if (!changed)
  {
    v3 = 0;
  }

  self->_segmentedControlFlags = (*&self->_segmentedControlFlags & 0xFFFFFFFFFFFFFFFBLL | v3);
}

- (void)setSelectedSegmentTintColor:(UIColor *)selectedSegmentTintColor
{
  v5 = selectedSegmentTintColor;
  v6 = self->_selectedSegmentTintColor;
  v7 = v5;
  v10 = v7;
  if (v6 == v7)
  {

LABEL_11:
    v9 = v10;
    goto LABEL_12;
  }

  if (!v7 || !v6)
  {

    goto LABEL_8;
  }

  v8 = [(UIColor *)v6 isEqual:v7];

  v9 = v10;
  if (!v8)
  {
LABEL_8:
    objc_storeStrong(&self->_selectedSegmentTintColor, selectedSegmentTintColor);
    if ((*(&self->_segmentedControlFlags + 4) & 4) != 0)
    {
      [(UIView *)self->_selectionIndicatorView setTintColor:v10];
    }

    [(UISegmentedControl *)self _setNeedsBackgroundAndContentViewUpdate];
    goto LABEL_11;
  }

LABEL_12:
}

- (void)_setSelectedSegmentVibrancyEffect:(id)effect
{
  v28 = *MEMORY[0x1E69E9840];
  effectCopy = effect;
  *&self->_segmentedControlFlags |= 0x1000000uLL;
  v6 = self->_selectedSegmentVisualEffect;
  v7 = effectCopy;
  v8 = v7;
  if (v6 == v7)
  {
  }

  else
  {
    if (v7 && v6)
    {
      v9 = [(UIVisualEffect *)v6 isEqual:v7];

      if (v9)
      {
        goto LABEL_26;
      }
    }

    else
    {
    }

    objc_storeStrong(&self->_selectedSegmentVisualEffect, effect);
    selectionIndicatorView = self->_selectionIndicatorView;
    if (selectionIndicatorView)
    {
      [(UIView *)selectionIndicatorView removeFromSuperview];
      v11 = self->_selectionIndicatorView;
      self->_selectionIndicatorView = 0;

      selectionImageView = self->_selectionImageView;
      self->_selectionImageView = 0;

      selfCopy = self;
      backdropView = selfCopy->_backdropView;
      if (backdropView)
      {
        if ((*(&self->_segmentedControlFlags + 3) & 0x80) != 0)
        {
          [(UIView *)backdropView contentView];
        }

        else
        {
          [(UIView *)selfCopy viewWithTag:-2031];
        }
        v15 = ;
      }

      else
      {
        v15 = selfCopy;
      }

      v16 = v15;

      v17 = [(UIView *)v16 viewWithTag:-2030];

      if (v17)
      {
        [v17 removeFromSuperview];
      }
    }

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v18 = self->_segments;
    v19 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v24;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v24 != v21)
          {
            objc_enumerationMutation(v18);
          }

          [*(*(&v23 + 1) + 8 * i) _removeSelectionIndicator];
        }

        v20 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v20);
    }

    [(UISegmentedControl *)self _setNeedsBackgroundAndContentViewUpdate];
  }

LABEL_26:
}

- (id)_selectedSegmentVibrancyEffect
{
  if (*(&self->_segmentedControlFlags + 3))
  {
    v3 = self->_selectedSegmentVisualEffect;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_setBackgroundTintColor:(id)color
{
  colorCopy = color;
  v6 = self->_backgroundTintColor;
  v7 = colorCopy;
  v9 = v7;
  if (v6 == v7)
  {

    goto LABEL_9;
  }

  if (!v7 || !v6)
  {

    goto LABEL_8;
  }

  v8 = [(UIColor *)v6 isEqual:v7];

  if (!v8)
  {
LABEL_8:
    objc_storeStrong(&self->_backgroundTintColor, color);
    [(UISegmentedControl *)self _setNeedsBackgroundAndContentViewUpdate];
  }

LABEL_9:
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  view = [beginCopy view];
  if (view != self && [beginCopy _isGestureType:0] && objc_msgSend(beginCopy, "numberOfTouchesRequired") == 1)
  {
    numberOfTapsRequired = [beginCopy numberOfTapsRequired];

    if (numberOfTapsRequired == 1)
    {
      goto LABEL_16;
    }
  }

  else
  {
  }

  if (![beginCopy _isGestureType:8] || objc_msgSend(beginCopy, "minimumNumberOfTouches") > 1)
  {
    if ([beginCopy _isGestureType:16])
    {
      v9 = (*&self->_segmentedControlFlags & 0x10) == 0;
      goto LABEL_17;
    }

LABEL_15:
    v9 = 1;
    goto LABEL_17;
  }

  if ((*&self->_segmentedControlFlags & 0x10) != 0)
  {
LABEL_16:
    v9 = 0;
    goto LABEL_17;
  }

  if (![(UISegmentedControl *)self shouldTrack])
  {
    goto LABEL_15;
  }

  [beginCopy locationInView:self];
  if (![(UIView *)self pointInside:0 withEvent:?])
  {
    goto LABEL_15;
  }

  [beginCopy translationInView:self];
  v9 = fabs(v7) <= fabs(v8);
LABEL_17:

  return v9;
}

- (void)_axLongPressHandler:(id)handler
{
  handlerCopy = handler;
  preferredContentSizeCategory = [UIApp preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  if (IsAccessibilityCategory)
  {
    axLongPressGestureRecognizer = [(UISegmentedControl *)self axLongPressGestureRecognizer];
    v7 = [handlerCopy isEqual:axLongPressGestureRecognizer];

    if (v7)
    {
      axLongPressGestureRecognizer2 = [(UISegmentedControl *)self axLongPressGestureRecognizer];
      state = [axLongPressGestureRecognizer2 state];

      if (state == 1)
      {
        v10 = [[UIAccessibilityLargeTextSegmentedViewController alloc] initWithSegmentedControl:self segments:self->_segments delegate:self];
        _viewControllerForAncestor = [(UIView *)self _viewControllerForAncestor];
        [_viewControllerForAncestor presentViewController:v10 animated:1 completion:0];
      }
    }
  }
}

- (BOOL)canBecomeFocused
{
  v3 = objc_opt_class();
  traitCollection = [(UIView *)self traitCollection];
  v5 = UISegmentedControlStyleProviderForIdiom(v3, [traitCollection userInterfaceIdiom]);

  v8.receiver = self;
  v8.super_class = UISegmentedControl;
  if ([(UIControl *)&v8 canBecomeFocused]&& [(UISegmentedControl *)self _hasEnabledSegment])
  {
    if ([v5 useTVStyleFocusSelection])
    {
      v6 = ![(UIView *)self isFocused];
    }

    else
    {
      LOBYTE(v6) = 1;
    }
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (id)_containerViewForLegacyFocusRing
{
  if (!self->_focusedSegment)
  {
    if (self->_selectedSegment < 0 || ([(NSMutableArray *)self->_segments objectAtIndexedSubscript:?], v5 = objc_claimAutoreleasedReturnValue(), v6 = self->_focusedSegment, self->_focusedSegment = v5, v6, !self->_focusedSegment))
    {
      if ([(NSMutableArray *)self->_segments count])
      {
        v7 = [(NSMutableArray *)self->_segments objectAtIndexedSubscript:0];
        focusedSegment = self->_focusedSegment;
        self->_focusedSegment = v7;
      }
    }
  }

  v3 = self->_focusedSegment;

  return v3;
}

- (void)_diagnoseFocusabilityForReport:(id)report
{
  reportCopy = report;
  if (![(UISegmentedControl *)self _hasEnabledSegment])
  {
    v4 = [_UIDebugIssue issueWithDescription:@"This segmented control does not have any enabled segments. Segmented controls must have at least one enabled segment in order to be focusable."];
    [reportCopy addIssue:v4];
  }
}

- (BOOL)_hasEnabledSegment
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = self->_segments;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v7 + 1) + 8 * i) isEnabled])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (void)_selectFocusedSegment
{
  v3 = self->_focusedSegment;
  v4 = v3;
  if (v3)
  {
    v7 = v3;
    isSelected = [(UISegment *)v3 isSelected];
    v4 = v7;
    if (!isSelected)
    {
      [(UISegmentedControl *)self _cancelDelayedFocusAction];
      v6 = [(NSMutableArray *)self->_segments indexOfObject:v7];
      v4 = v7;
      if (v6 != 0x7FFFFFFFFFFFFFFFLL)
      {
        [(UISegmentedControl *)self _setSelectedSegmentIndex:v6 notify:1 animate:1];
        v4 = v7;
        *&self->_segmentedControlFlags &= ~0x8000uLL;
      }
    }
  }
}

+ (BOOL)_selectFocusedSegmentAfterFocusUpdateForTraitCollection:(id)collection
{
  v3 = UISegmentedControlStyleProviderForIdiom(self, [collection userInterfaceIdiom]);
  useTVStyleFocusSelection = [v3 useTVStyleFocusSelection];

  return useTVStyleFocusSelection;
}

- (void)_sendDelayedFocusActionIfNecessary
{
  traitCollection = [(UIView *)self traitCollection];
  v4 = [UISegmentedControl _selectFocusedSegmentAfterFocusUpdateForTraitCollection:traitCollection];

  if (v4)
  {
    [(UISegmentedControl *)self _cancelDelayedFocusAction];

    [(UISegmentedControl *)self performSelector:sel__selectFocusedSegment withObject:0 afterDelay:0.31];
  }
}

- (void)_cancelDelayedFocusAction
{
  v3 = objc_opt_class();

  [v3 cancelPreviousPerformRequestsWithTarget:self selector:sel__selectFocusedSegment object:0];
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  contextCopy = context;
  v9.receiver = self;
  v9.super_class = UISegmentedControl;
  [(UIView *)&v9 didUpdateFocusInContext:contextCopy withAnimationCoordinator:coordinator];
  _internalFocusSystem = [(UISegmentedControl *)self _internalFocusSystem];
  nextFocusedItem = [contextCopy nextFocusedItem];

  if (nextFocusedItem == self)
  {
    -[UISegmentedControl set_lastExternalFocusHeading:](self, "set_lastExternalFocusHeading:", [contextCopy focusHeading]);
    [_internalFocusSystem _setEnabled:1];
    [_internalFocusSystem setNeedsFocusUpdate];
  }

  else
  {
    [_internalFocusSystem _setEnabled:0];
  }
}

- (id)focusItemsInRect:(CGRect)rect
{
  v8.receiver = self;
  v8.super_class = UISegmentedControl;
  v4 = [(UIView *)&v8 focusItemsInRect:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __39__UISegmentedControl_focusItemsInRect___block_invoke;
  v7[3] = &unk_1E70FF900;
  v7[4] = self;
  v5 = [v4 bs_filter:v7];

  return v5;
}

- (BOOL)_focusSystem:(id)system containsChildOfHostEnvironment:(id)environment
{
  environmentCopy = environment;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)_preferredFocusEnvironmentsForFocusSystem:(id)system
{
  v4 = [(NSMutableArray *)self->_segments mutableCopy];
  v5 = v4;
  if ((self->_selectedSegment & 0x8000000000000000) == 0)
  {
    v6 = [v4 objectAtIndexedSubscript:?];
    [v5 removeObject:v6];
    [v5 insertObject:v6 atIndex:0];
  }

  traitCollection = [(UIView *)self traitCollection];
  v8 = [UISegmentedControl _selectFocusedSegmentAfterFocusUpdateForTraitCollection:traitCollection];

  if (!v8)
  {
    _lastExternalFocusHeading = [(UISegmentedControl *)self _lastExternalFocusHeading];
    if (_lastExternalFocusHeading > 31)
    {
      if (_lastExternalFocusHeading != 32)
      {
        if (_lastExternalFocusHeading == 256)
        {
LABEL_14:
          segments = self->_segments;
LABEL_15:
          firstObject = [(NSMutableArray *)segments firstObject];
LABEL_16:
          v13 = firstObject;
          if (firstObject)
          {
            [v5 removeObject:firstObject];
            [v5 insertObject:v13 atIndex:0];
          }

          goto LABEL_18;
        }

        if (_lastExternalFocusHeading != 512)
        {
          goto LABEL_18;
        }
      }

      segments = self->_segments;
    }

    else
    {
      v10 = *(&self->super.super._viewFlags + 2);
      switch(_lastExternalFocusHeading)
      {
        case 4:
          segments = self->_segments;
          if ((v10 & 0x400000) != 0)
          {
            goto LABEL_15;
          }

          break;
        case 8:
          segments = self->_segments;
          if ((v10 & 0x400000) == 0)
          {
            goto LABEL_15;
          }

          break;
        case 16:
          goto LABEL_14;
        default:
          goto LABEL_18;
      }
    }

    firstObject = [(NSMutableArray *)segments lastObject];
    goto LABEL_16;
  }

LABEL_18:

  return v5;
}

- (void)_focusSystem:(id)system didFinishUpdatingFocusInContext:(id)context
{
  contextCopy = context;
  v5 = objc_opt_class();
  traitCollection = [(UIView *)self traitCollection];
  v7 = UISegmentedControlStyleProviderForIdiom(v5, [traitCollection userInterfaceIdiom]);

  if (-[UISegmentedControl _supportsHidingSelectionIndicatorOnFocusUpdate](self, "_supportsHidingSelectionIndicatorOnFocusUpdate") && [v7 shouldHideSelectionOnFocusUpdate])
  {
    nextFocusedView = [contextCopy nextFocusedView];
    v9 = [nextFocusedView isDescendantOfView:self];

    segmentedControlFlags = self->_segmentedControlFlags;
    if (v9)
    {
      self->_segmentedControlFlags = (*&segmentedControlFlags | 0x8000);
      [(UIView *)self->_selectionIndicatorView removeFromSuperview];
      selectionIndicatorView = self->_selectionIndicatorView;
      self->_selectionIndicatorView = 0;
    }

    else
    {
      self->_segmentedControlFlags = (*&segmentedControlFlags & 0xFFFFFFFFFFFF7FFFLL);
      if (!self->_selectionIndicatorView)
      {
        [(UISegmentedControl *)self _updateSelectionIndicator];
      }
    }
  }

  nextFocusedItem = [contextCopy nextFocusedItem];
  focusedSegment = self->_focusedSegment;
  self->_focusedSegment = nextFocusedItem;

  [(UIView *)self setNeedsLayout];
  [(UISegmentedControl *)self _sendDelayedFocusActionIfNecessary];
}

- (void)_reevaluateClipping
{
  if (self)
  {
    v2 = objc_opt_class();
    traitCollection = [self traitCollection];
    v7 = UISegmentedControlStyleProviderForIdiom(v2, [traitCollection userInterfaceIdiom]);

    if ([v7 useSelectionIndicatorStyling] && (objc_msgSend(v7, "useTVStyleFocusSelection") & 1) == 0)
    {
      v6 = self[70];
      if (v6)
      {
        v4 = [v6 hasAPICustomizedImages] ^ 1;
      }

      else
      {
        v4 = 1;
      }
    }

    else
    {
      v4 = 0;
    }

    if ((self[78] & 0x490000000) == 0x10000000)
    {
      v5 = [self viewWithTag:-2031];
      [v5 setClipsToBounds:v4];
    }

    else
    {
      [self setClipsToBounds:v4];
    }
  }
}

- (void)_setBackgroundImage:(id)image forState:(unint64_t)state barMetrics:(int64_t)metrics
{
  imageCopy = image;
  appearanceStorage = self->_appearanceStorage;
  v13 = imageCopy;
  if (imageCopy)
  {
    if (!appearanceStorage)
    {
      v10 = objc_alloc_init(_UISegmentedControlAppearanceStorage);
      v11 = self->_appearanceStorage;
      self->_appearanceStorage = v10;

      appearanceStorage = self->_appearanceStorage;
    }
  }

  else if (!appearanceStorage)
  {
    goto LABEL_7;
  }

  v12 = [appearanceStorage backgroundImageForState:state isMini:metrics == 1];

  imageCopy = v13;
  if (v12 != v13)
  {
    [self->_appearanceStorage setBackgroundImage:v13 forState:state isMini:metrics == 1];
    [(UISegmentedControl *)self _setNeedsAppearanceUpdate];
    imageCopy = v13;
  }

LABEL_7:
}

- (void)setBackgroundImage:(UIImage *)backgroundImage forState:(UIControlState)state barMetrics:(UIBarMetrics)barMetrics
{
  v8 = backgroundImage;
  if ((barMetrics - 101) > 1)
  {
    v9 = v8;
    [(UISegmentedControl *)self _setBackgroundImage:v8 forState:state barMetrics:barMetrics];
    [(UISegmentedControl *)self _reevaluateClipping];
  }

  else
  {
    if (setBackgroundImage_forState_barMetrics__didWarn)
    {
      goto LABEL_6;
    }

    setBackgroundImage_forState_barMetrics__didWarn = 1;
    v9 = v8;
    NSLog(&cfstr_SCustomization.isa, "UISegmentedControl", @"background image", "UIBarMetricsDefaultPrompt", "UIBarMetricsCompactPrompt");
  }

  v8 = v9;
LABEL_6:
}

- (UIImage)backgroundImageForState:(UIControlState)state barMetrics:(UIBarMetrics)barMetrics
{
  if ((barMetrics - 101) > 1)
  {
    uIBarMetricsCompact = [self->_appearanceStorage backgroundImageForState:state isMini:barMetrics == UIBarMetricsCompact];
  }

  else
  {
    if ((backgroundImageForState_barMetrics__didWarn & 1) == 0)
    {
      backgroundImageForState_barMetrics__didWarn = 1;
      NSLog(&cfstr_SCustomization.isa, a2, state, "UISegmentedControl", @"background image", "UIBarMetricsDefaultPrompt", "UIBarMetricsCompactPrompt");
    }

    uIBarMetricsCompact = 0;
  }

  return uIBarMetricsCompact;
}

- (void)_setDividerImage:(id)image forLeftSegmentState:(unint64_t)state rightSegmentState:(unint64_t)segmentState barMetrics:(int64_t)metrics
{
  imageCopy = image;
  appearanceStorage = self->_appearanceStorage;
  v15 = imageCopy;
  if (imageCopy)
  {
    if (!appearanceStorage)
    {
      v12 = objc_alloc_init(_UISegmentedControlAppearanceStorage);
      v13 = self->_appearanceStorage;
      self->_appearanceStorage = v12;

      appearanceStorage = self->_appearanceStorage;
    }
  }

  else if (!appearanceStorage)
  {
    goto LABEL_7;
  }

  v14 = [appearanceStorage dividerImageForLeftSegmentState:state rightSegmentState:segmentState isMini:metrics == 1];

  imageCopy = v15;
  if (v14 != v15)
  {
    [self->_appearanceStorage setDividerImage:v15 forLeftSegmentState:state rightSegmentState:segmentState isMini:metrics == 1];
    [(UISegmentedControl *)self _setNeedsAppearanceUpdate];
    imageCopy = v15;
  }

LABEL_7:
}

- (void)setDividerImage:(UIImage *)dividerImage forLeftSegmentState:(UIControlState)leftState rightSegmentState:(UIControlState)rightState barMetrics:(UIBarMetrics)barMetrics
{
  v10 = dividerImage;
  if ((barMetrics - 101) > 1)
  {
    v11 = v10;
    [(UISegmentedControl *)self _setDividerImage:v10 forLeftSegmentState:leftState rightSegmentState:rightState barMetrics:barMetrics];
    [(UISegmentedControl *)self _reevaluateClipping];
  }

  else
  {
    if (setDividerImage_forLeftSegmentState_rightSegmentState_barMetrics__didWarn)
    {
      goto LABEL_6;
    }

    setDividerImage_forLeftSegmentState_rightSegmentState_barMetrics__didWarn = 1;
    v11 = v10;
    NSLog(&cfstr_SCustomization.isa, "UISegmentedControl", @"divider image", "UIBarMetricsDefaultPrompt", "UIBarMetricsCompactPrompt");
  }

  v10 = v11;
LABEL_6:
}

- (UIImage)dividerImageForLeftSegmentState:(UIControlState)leftState rightSegmentState:(UIControlState)rightState barMetrics:(UIBarMetrics)barMetrics
{
  if ((barMetrics - 101) > 1)
  {
    uIBarMetricsCompact = [self->_appearanceStorage dividerImageForLeftSegmentState:leftState rightSegmentState:rightState isMini:barMetrics == UIBarMetricsCompact];
  }

  else
  {
    if ((dividerImageForLeftSegmentState_rightSegmentState_barMetrics__didWarn & 1) == 0)
    {
      dividerImageForLeftSegmentState_rightSegmentState_barMetrics__didWarn = 1;
      NSLog(&cfstr_SCustomization.isa, a2, leftState, rightState, "UISegmentedControl", @"divider image", "UIBarMetricsDefaultPrompt", "UIBarMetricsCompactPrompt");
    }

    uIBarMetricsCompact = 0;
  }

  return uIBarMetricsCompact;
}

- (void)_setTitleTextAttributes:(id)attributes forState:(unint64_t)state
{
  attributesCopy = attributes;
  appearanceStorage = self->_appearanceStorage;
  if (attributesCopy)
  {
    if (!appearanceStorage)
    {
      v8 = objc_alloc_init(_UISegmentedControlAppearanceStorage);
      v9 = self->_appearanceStorage;
      self->_appearanceStorage = v8;
    }
  }

  else if (!appearanceStorage)
  {
    return;
  }

  _ui_attributesForDictionaryContainingUIStringDrawingKeys = [attributesCopy _ui_attributesForDictionaryContainingUIStringDrawingKeys];

  v10 = [self->_appearanceStorage textAttributesForState:state];
  if (_ui_attributesForDictionaryContainingUIStringDrawingKeys | v10 && ([_ui_attributesForDictionaryContainingUIStringDrawingKeys isEqualToDictionary:v10] & 1) == 0)
  {
    [self->_appearanceStorage setTextAttributes:_ui_attributesForDictionaryContainingUIStringDrawingKeys forState:state];
    [(UISegmentedControl *)self _setNeedsAppearanceUpdate];
  }
}

- (void)setTitleTextAttributes:(NSDictionary *)attributes forState:(UIControlState)state
{
  v16 = *MEMORY[0x1E69E9840];
  [(UISegmentedControl *)self _setTitleTextAttributes:attributes forState:?];
  if (state == 4)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = self->_segments;
    v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v12;
      do
      {
        v10 = 0;
        do
        {
          if (*v12 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v11 + 1) + 8 * v10++) updateMasking];
        }

        while (v8 != v10);
        v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }
  }
}

- (void)_setBackgroundVerticalPositionAdjustment:(double)adjustment forBarMetrics:(int64_t)metrics
{
  appearanceStorage = self->_appearanceStorage;
  if (adjustment != 0.0 || appearanceStorage != 0)
  {
    if (!appearanceStorage)
    {
      v9 = objc_alloc_init(_UISegmentedControlAppearanceStorage);
      v10 = self->_appearanceStorage;
      self->_appearanceStorage = v9;

      appearanceStorage = self->_appearanceStorage;
    }

    [appearanceStorage backgroundPositionAdjustmentForBarMetrics:metrics];
    if (v11 != adjustment)
    {
      [self->_appearanceStorage setBackgroundPositionAdjustment:metrics forBarMetrics:adjustment];
      superview = [(UIView *)self superview];
      [superview setNeedsLayout];
    }
  }
}

- (void)setContentPositionAdjustment:(UIOffset)adjustment forSegmentType:(UISegmentedControlSegment)leftCenterRightOrAlone barMetrics:(UIBarMetrics)barMetrics
{
  v33 = *MEMORY[0x1E69E9840];
  if ((barMetrics - 101) <= 1)
  {
    if ((setContentPositionAdjustment_forSegmentType_barMetrics__didWarn & 1) == 0)
    {
      setContentPositionAdjustment_forSegmentType_barMetrics__didWarn = 1;
      NSLog(&cfstr_SCustomization.isa, a2, leftCenterRightOrAlone, adjustment.horizontal, adjustment.vertical, "UISegmentedControl", @"segment content position adjustment", "UIBarMetricsDefaultPrompt", "UIBarMetricsCompactPrompt");
    }

    return;
  }

  vertical = adjustment.vertical;
  horizontal = adjustment.horizontal;
  appearanceStorage = self->_appearanceStorage;
  if (appearanceStorage)
  {
    goto LABEL_8;
  }

  if (adjustment.horizontal != 0.0 || adjustment.vertical != 0.0)
  {
    v11 = objc_alloc_init(_UISegmentedControlAppearanceStorage);
    v12 = self->_appearanceStorage;
    self->_appearanceStorage = v11;

    appearanceStorage = self->_appearanceStorage;
LABEL_8:
    v13 = [appearanceStorage contentPositionOffsetForSegment:leftCenterRightOrAlone inMiniBar:barMetrics == UIBarMetricsCompact noFallback:1];
    v14 = v13;
    if (v13)
    {
      [v13 UIOffsetValue];
    }

    else
    {
      v16 = 0.0;
      v15 = 0.0;
    }

    if (horizontal == v15 && vertical == v16)
    {
LABEL_29:

      return;
    }

    v26 = v14;
    v18 = self->_appearanceStorage;
    *v31 = horizontal;
    *&v31[1] = vertical;
    v19 = [MEMORY[0x1E696B098] valueWithBytes:v31 objCType:"{UIOffset=dd}"];
    [v18 setContentPositionOffset:v19 forSegment:leftCenterRightOrAlone inMiniBar:barMetrics == UIBarMetricsCompact];

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v20 = self->_segments;
    v21 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (!v21)
    {
      goto LABEL_28;
    }

    v22 = v21;
    v23 = *v28;
LABEL_17:
    v24 = 0;
    while (1)
    {
      if (*v28 != v23)
      {
        objc_enumerationMutation(v20);
      }

      v25 = *(*(&v27 + 1) + 8 * v24);
      if (*(v25 + 560))
      {
        if (leftCenterRightOrAlone == UISegmentedControlSegmentAny)
        {
          goto LABEL_25;
        }
      }

      else
      {
        objc_storeStrong((v25 + 560), self->_appearanceStorage);
        if (leftCenterRightOrAlone == UISegmentedControlSegmentAny)
        {
          goto LABEL_25;
        }
      }

      if (((*(v25 + 640) >> 6) & 7) + 1 == leftCenterRightOrAlone)
      {
LABEL_25:
        [v25 _positionInfoWithoutAnimation];
        [v25 _invalidateInfoConstraints];
      }

      if (v22 == ++v24)
      {
        v22 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v27 objects:v32 count:16];
        if (!v22)
        {
LABEL_28:

          v14 = v26;
          goto LABEL_29;
        }

        goto LABEL_17;
      }
    }
  }
}

- (UIOffset)contentPositionAdjustmentForSegmentType:(UISegmentedControlSegment)leftCenterRightOrAlone barMetrics:(UIBarMetrics)barMetrics
{
  if ((barMetrics - 101) > 1)
  {
    uIBarMetricsCompact = [self->_appearanceStorage contentPositionOffsetForSegment:leftCenterRightOrAlone inMiniBar:barMetrics == UIBarMetricsCompact];
    v7 = uIBarMetricsCompact;
    if (uIBarMetricsCompact)
    {
      [uIBarMetricsCompact UIOffsetValue];
      v4 = v8;
      v5 = v9;
    }

    else
    {
      v4 = 0.0;
      v5 = 0.0;
    }
  }

  else
  {
    v4 = 0.0;
    if ((contentPositionAdjustmentForSegmentType_barMetrics__didWarn & 1) == 0)
    {
      contentPositionAdjustmentForSegmentType_barMetrics__didWarn = 1;
      NSLog(&cfstr_SCustomization.isa, a2, leftCenterRightOrAlone, "UISegmentedControl", @"segment content position adjustment", "UIBarMetricsDefaultPrompt", "UIBarMetricsCompactPrompt");
    }

    v5 = 0.0;
  }

  v10 = v4;
  v11 = v5;
  result.vertical = v11;
  result.horizontal = v10;
  return result;
}

- (id)_badgeValueForSegmentAtIndex:(unint64_t)index
{
  v3 = [(NSMutableArray *)self->_segments objectAtIndex:index];
  badgeValue = [v3 badgeValue];

  return badgeValue;
}

- (void)_setBadgeValue:(id)value forSegmentAtIndex:(unint64_t)index
{
  segments = self->_segments;
  valueCopy = value;
  v8 = [(NSMutableArray *)segments objectAtIndex:index];
  [v8 setBadgeValue:valueCopy];

  [(UIView *)self setNeedsLayout];
}

+ (CGColor)_backgroundPrimaryColorSelected:(BOOL)selected highlighted:(BOOL)highlighted traitCollection:(id)collection tintColor:(id)color
{
  highlightedCopy = highlighted;
  selectedCopy = selected;
  collectionCopy = collection;
  colorCopy = color;
  v12 = UISegmentedControlStyleProviderForIdiom(self, [collectionCopy userInterfaceIdiom]);
  if ((objc_opt_respondsToSelector() & 1) == 0 || ([v12 highlightColorForSegmentSelected:selectedCopy highlighted:highlightedCopy traitCollection:collectionCopy tintColor:colorCopy], (v13 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    if (selectedCopy)
    {
      if (!colorCopy)
      {
        v14 = +[UIColor _controlForegroundColor];
LABEL_10:
        v13 = v14;
        goto LABEL_11;
      }
    }

    else
    {
      if (highlightedCopy)
      {
        v14 = +[UIColor _controlHighlightColor];
        goto LABEL_10;
      }

      if (!colorCopy)
      {
        v14 = +[UIColor tertiarySystemFillColor];
        goto LABEL_10;
      }
    }

    v14 = colorCopy;
    goto LABEL_10;
  }

LABEL_11:
  v15 = [v13 resolvedColorWithTraitCollection:collectionCopy];
  cGColor = [v15 CGColor];

  return cGColor;
}

+ (id)_modernBackgroundSelected:(BOOL)selected shadow:(int64_t)shadow maximumSize:(CGSize)size highlighted:(BOOL)highlighted hasMaterial:(BOOL)material traitCollection:(id)collection tintColor:(id)color size:(int)self0
{
  materialCopy = material;
  highlightedCopy = highlighted;
  height = size.height;
  width = size.width;
  selectedCopy = selected;
  collectionCopy = collection;
  colorCopy = color;
  if (qword_1ED4974E0 != -1)
  {
    dispatch_once(&qword_1ED4974E0, &__block_literal_global_788);
  }

  v75 = colorCopy;
  v20 = [self _backgroundPrimaryColorSelected:selectedCopy highlighted:highlightedCopy traitCollection:collectionCopy tintColor:colorCopy];
  v21 = UISegmentedControlStyleProviderForIdiom(self, [collectionCopy userInterfaceIdiom]);
  useSelectionIndicatorStyling = [v21 useSelectionIndicatorStyling];
  [self _cornerRadiusForTraitCollection:collectionCopy size:a10 controlSize:{width, height}];
  v24 = v23;
  [self _sectionIndicatorInsetForTraitCollection:collectionCopy hasMaterial:materialCopy size:a10];
  v26 = v25;
  [self _sectionIndicatorOverflowForTraitCollection:collectionCopy size:a10];
  v28 = v26 + v27;
  [self _effectiveCornerRadiusForTraitCollection:collectionCopy hasMaterial:materialCopy size:a10 controlSize:selectedCopy selected:{width, height}];
  v30 = v29;
  usesContinuousCurveCorners = [v21 usesContinuousCurveCorners];
  if (![v21 useTVStyleFocusSelection])
  {
    v33 = v30;
    if (!usesContinuousCurveCorners)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (width == height)
  {
    v32 = 0;
  }

  else
  {
    v32 = usesContinuousCurveCorners;
  }

  v33 = v30;
  if (v32)
  {
LABEL_10:
    v33 = ceil(v30 * 1.528665);
  }

LABEL_11:
  v34 = 0.0;
  if ((selectedCopy || highlightedCopy) & useSelectionIndicatorStyling)
  {
    v34 = v28;
  }

  v35 = v34 + v33;
  v36 = 2.0;
  if (!(useSelectionIndicatorStyling ^ 1 | selectedCopy))
  {
    v36 = 1.0;
  }

  v37 = ceil(v30) + v34;
  v38 = width * v36 * 0.5;
  if (v35 < v38)
  {
    v38 = v35;
  }

  if (v37 >= v38)
  {
    v39 = v37;
  }

  else
  {
    v39 = v38;
  }

  if (v35 >= height * 0.5)
  {
    v35 = height * 0.5;
  }

  if (v37 >= v35)
  {
    v40 = v37;
  }

  else
  {
    v40 = v35;
  }

  if (shadow < 3 && selectedCopy)
  {
    v41 = shadow + 1;
  }

  else
  {
    v41 = 0;
  }

  v42 = [_UISegmentedControlCacheKey alloc];
  [collectionCopy displayScale];
  v44 = [(_UISegmentedControlCacheKey *)v42 initWithCornerRadius:v41 capSize:v20 scale:v24 state:v39 primaryColor:v40, v43];
  v45 = [qword_1ED4974D8 objectForKey:v44];
  if (!v45)
  {
    v46 = v39 + v39 + 1.0;
    v47 = v40 + v40 + 1.0;
    [collectionCopy displayScale];
    _UIGraphicsBeginImageContextWithOptions(0, 0, v46, v47, v48);
    useSelectionIndicatorStyling2 = [v21 useSelectionIndicatorStyling];
    if (useSelectionIndicatorStyling2)
    {
      ContextStack = GetContextStack(0);
      if (*ContextStack < 1)
      {
        v50 = 0;
      }

      else
      {
        v50 = ContextStack[3 * (*ContextStack - 1) + 1];
      }

      CGContextSetFillColorWithColor(v50, v20);
      v63 = 0.0;
      if (selectedCopy)
      {
        if (shadow != 1 && CGColorGetAlpha(v20) >= 1.0)
        {
          v64 = +[UIColor _controlShadowColor];
          cGColor = [v64 CGColor];

          v66 = GetContextStack(0);
          if (*v66 < 1)
          {
            v67 = 0;
          }

          else
          {
            v67 = v66[3 * (*v66 - 1) + 1];
          }

          v77.width = 0.0;
          v77.height = 2.5;
          CGContextSetShadowWithColor(v67, v77, 6.0, cGColor);
        }

        v78.origin.x = 0.0;
        v78.origin.y = 0.0;
        v78.size.width = v39 + v39 + 1.0;
        v78.size.height = v40 + v40 + 1.0;
        *(&v63 - 1) = CGRectInset(v78, v28, v28);
        v46 = v69;
        v47 = v70;
      }

      else
      {
        v68 = 0.0;
      }

      v61 = [UIBezierPath bezierPathWithRoundedRect:v68 cornerRadius:v63, v46, v47, v30];
      [v61 fill];
      if (shadow == 2 && selectedCopy)
      {
        [v61 fillWithBlendMode:16 alpha:1.0];
      }

      goto LABEL_51;
    }

    [self _lineWidthForTraitCollection:collectionCopy size:a10];
    v52 = v51;
    v53 = +[UIColor blackColor];
    [v53 set];

    v54 = 0.0;
    v55 = 0.0;
    if (!selectedCopy)
    {
      v56 = v39 + v39 + 1.0;
      v57 = v40 + v40 + 1.0;
      *&v55 = CGRectInset(*&v55, v52 * 0.5, v52 * 0.5);
      v46 = v58;
      v47 = v59;
      v24 = v24 - v52 * 0.5;
    }

    v60 = [UIBezierPath bezierPathWithRoundedRect:v55 cornerRadius:v54, v46, v47, v24];
    v61 = v60;
    if (!selectedCopy)
    {
      [v60 setLineWidth:v52];
      [v61 stroke];
      if (!highlightedCopy)
      {
LABEL_51:

        v71 = _UIGraphicsGetImageFromCurrentImageContext(0);
        UIGraphicsEndImageContext();
        v45 = [v71 resizableImageWithCapInsets:{v40, v39, v40, v39}];

        if ((useSelectionIndicatorStyling2 & 1) == 0)
        {
          v72 = [v45 imageWithRenderingMode:2];

          v45 = v72;
        }

        if (v45)
        {
          [qword_1ED4974D8 setObject:v45 forKey:v44];
        }

        goto LABEL_55;
      }

      v62 = [UIColor colorWithWhite:0.0 alpha:0.15];
      [v62 set];
    }

    [v61 fill];
    goto LABEL_51;
  }

LABEL_55:

  return v45;
}

void __122__UISegmentedControl__modernBackgroundSelected_shadow_maximumSize_highlighted_hasMaterial_traitCollection_tintColor_size___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DEE0]);
  v1 = qword_1ED4974D8;
  qword_1ED4974D8 = v0;
}

+ (CGColor)_dividerPrimaryColorBackground:(BOOL)background traitCollection:(id)collection tintColor:(id)color
{
  backgroundCopy = background;
  collectionCopy = collection;
  colorCopy = color;
  v10 = UISegmentedControlStyleProviderForIdiom(self, [collectionCopy userInterfaceIdiom]);
  if ([v10 useSelectionIndicatorStyling])
  {
    if (backgroundCopy)
    {
      if (colorCopy)
      {
        v11 = colorCopy;
      }

      else
      {
        v11 = +[UIColor tertiarySystemFillColor];
      }
    }

    else
    {
      v11 = +[UIColor systemFillColor];
    }

    v13 = v11;
    v14 = [v11 resolvedColorWithTraitCollection:collectionCopy];
    cGColor = [v14 CGColor];
  }

  else
  {
    cGColor = 0;
  }

  return cGColor;
}

+ (id)_modernDividerImageBackground:(BOOL)background traitCollection:(id)collection tintColor:(id)color size:(int)size
{
  v6 = *&size;
  backgroundCopy = background;
  collectionCopy = collection;
  colorCopy = color;
  if (qword_1ED4974F0 != -1)
  {
    dispatch_once(&qword_1ED4974F0, &__block_literal_global_792);
  }

  v12 = [self _dividerPrimaryColorBackground:backgroundCopy traitCollection:collectionCopy tintColor:colorCopy];
  v13 = [_UISegmentedControlCacheKey alloc];
  [collectionCopy displayScale];
  v14 = [(_UISegmentedControlCacheKey *)v13 initWithSize:v6 scale:v12 primaryColor:backgroundCopy background:?];
  v15 = [qword_1ED4974E8 objectForKey:v14];
  if (!v15)
  {
    [self _dividerWidthForTraitCollection:collectionCopy size:v6];
    v17 = v16;
    v18 = UISegmentedControlStyleProviderForIdiom(self, [collectionCopy userInterfaceIdiom]);
    v19 = v18;
    if (v17 >= 0.0001)
    {
      if ([v18 useSelectionIndicatorStyling])
      {
        if (v6 == 1)
        {
          v20 = 5.0;
        }

        else
        {
          v20 = 7.0;
        }

        v21 = v20 + v20 + v17 + 1.0;
        [collectionCopy displayScale];
        _UIGraphicsBeginImageContextWithOptions(0, 0, v17, v21, v22);
        ContextStack = GetContextStack(0);
        if (*ContextStack < 1)
        {
          v24 = 0;
        }

        else
        {
          v24 = ContextStack[3 * (*ContextStack - 1) + 1];
        }

        v28 = v17 * 0.5;
        CGContextSetFillColorWithColor(v24, v12);
        v29 = 0;
        v30 = 0;
        if (backgroundCopy)
        {
          UIRectFillUsingOperation(1, 0.0, 0.0, v17, v21);
        }

        else
        {
          v31 = v17;
          v32 = v20 + v20 + v17 + 1.0;
          v37 = CGRectInset(*&v29, 0.0, v20);
          v33 = [UIBezierPath bezierPathWithRoundedRect:v37.origin.x cornerRadius:v37.origin.y, v37.size.width, v37.size.height, v28];
          [v33 fill];
        }

        v34 = _UIGraphicsGetImageFromCurrentImageContext(0);
        UIGraphicsEndImageContext();
        v15 = [v34 resizableImageWithCapInsets:{v20 + v28, 0.0, v20 + v28, 0.0}];

        if (!v15)
        {
          goto LABEL_21;
        }
      }

      else
      {
        _UIGraphicsBeginImageContextWithOptions(0, 0, v17, 1.0, 0.0);
        v25 = +[UIColor blackColor];
        [v25 set];

        UIRectFillUsingOperation(1, 0.0, 0.0, v17, 1.0);
        v26 = _UIGraphicsGetImageFromCurrentImageContext(0);
        UIGraphicsEndImageContext();
        v27 = [v26 imageWithRenderingMode:2];

        v15 = [(UIImage *)[_UISegmentedControlDividerImage alloc] _initWithOtherImage:v27];
        if (!v15)
        {
          goto LABEL_21;
        }
      }
    }

    else
    {
      v15 = objc_alloc_init(UIImage);
      if (!v15)
      {
        goto LABEL_21;
      }
    }

    [qword_1ED4974E8 setObject:v15 forKey:v14];
LABEL_21:
  }

  return v15;
}

void __83__UISegmentedControl__modernDividerImageBackground_traitCollection_tintColor_size___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DEE0]);
  v1 = qword_1ED4974E8;
  qword_1ED4974E8 = v0;
}

+ (double)_sectionIndicatorOverflowForTraitCollection:(id)collection size:(int)size
{
  v4 = UISegmentedControlStyleProviderForIdiom(self, [collection userInterfaceIdiom]);
  if ([v4 useTVStyleFocusSelection])
  {
    v5 = 0.0;
  }

  else
  {
    v5 = 3.0;
  }

  return v5;
}

+ (double)_lineWidthForTraitCollection:(id)collection size:(int)size
{
  v4 = *&size;
  v5 = UISegmentedControlStyleProviderForIdiom(self, [collection userInterfaceIdiom]);
  [v5 dividerWidthForControlSize:v4];
  v7 = v6;

  return v7;
}

+ (double)_sectionIndicatorInsetForTraitCollection:(id)collection size:(int)size
{
  v4 = *&size;
  v5 = UISegmentedControlStyleProviderForIdiom(self, [collection userInterfaceIdiom]);
  [v5 selectionIndicatorInsetForControlSize:v4];
  v7 = v6;

  return v7;
}

+ (double)_sectionIndicatorInsetForTraitCollection:(id)collection hasMaterial:(BOOL)material size:(int)size
{
  v5 = *&size;
  if (material)
  {
    v6 = UISegmentedControlStyleProviderForIdiom(self, [collection userInterfaceIdiom]);
    if (objc_opt_respondsToSelector())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    [v7 selectionIndicatorInsetWithMaterialForControlSize:v5];
    v10 = v9;

    return v10;
  }

  else
  {

    [self _sectionIndicatorInsetForTraitCollection:collection size:*&size];
  }

  return result;
}

+ (double)_cornerRadiusForTraitCollection:(id)collection size:(int)size
{
  v4 = *&size;
  v5 = UISegmentedControlStyleProviderForIdiom(self, [collection userInterfaceIdiom]);
  [v5 cornerRadiusForControlSize:v4];
  v7 = v6;

  return v7;
}

+ (double)_cornerRadiusForTraitCollection:(id)collection size:(CGSize)size controlSize:(int)controlSize
{
  v5 = *&controlSize;
  height = size.height;
  collectionCopy = collection;
  v9 = UISegmentedControlStyleProviderForIdiom(self, [collectionCopy userInterfaceIdiom]);
  if ((objc_opt_respondsToSelector() & 1) != 0 && [v9 alwaysUseConcentricCornerRadius])
  {
    v10 = height * 0.5;
  }

  else
  {
    [self _cornerRadiusForTraitCollection:collectionCopy size:v5];
    v10 = v11;
  }

  return v10;
}

+ (double)_effectiveCornerRadiusForTraitCollection:(id)collection hasMaterial:(BOOL)material size:(CGSize)size controlSize:(int)controlSize selected:(BOOL)selected
{
  selectedCopy = selected;
  v8 = *&controlSize;
  height = size.height;
  width = size.width;
  materialCopy = material;
  collectionCopy = collection;
  [self _cornerRadiusForTraitCollection:collectionCopy size:v8 controlSize:{width, height}];
  v15 = v14;
  if (selectedCopy)
  {
    [self _sectionIndicatorInsetForTraitCollection:collectionCopy hasMaterial:materialCopy size:v8];
    v17 = v16;
    v18 = UISegmentedControlStyleProviderForIdiom(self, [collectionCopy userInterfaceIdiom]);
    if ([v18 useSelectionIndicatorStyling])
    {
      v15 = v15 - v17;
    }
  }

  return v15;
}

+ (id)_fontForTraitCollection:(id)collection size:(int)size selected:(BOOL)selected hasMaterial:(BOOL)material
{
  materialCopy = material;
  selectedCopy = selected;
  v8 = *&size;
  collectionCopy = collection;
  if (qword_1ED497500 != -1)
  {
    dispatch_once(&qword_1ED497500, &__block_literal_global_795);
  }

  v11 = [collectionCopy legibilityWeight] == 1;
  v12 = UISegmentedControlStyleProviderForIdiom(self, [collectionCopy userInterfaceIdiom]);
  v13 = [[_UISegmentedControlFontCacheKey alloc] initWithStyleProvider:v12 size:v8 selected:selectedCopy bold:v11 hasMaterial:materialCopy];
  v14 = [qword_1ED4974F8 objectForKey:v13];
  if (!v14)
  {
    if (materialCopy)
    {
      v15 = UISegmentedControlStyleProviderForIdiom(self, [collectionCopy userInterfaceIdiom]);
      if (objc_opt_respondsToSelector())
      {
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }

      fontWithBackgroundMaterial = [v16 fontWithBackgroundMaterial];
      v18 = fontWithBackgroundMaterial;
      if (fontWithBackgroundMaterial)
      {
        v19 = fontWithBackgroundMaterial;
      }

      else
      {
        v19 = [v12 fontForControlSize:v8 selected:selectedCopy];
      }

      v14 = v19;
    }

    else
    {
      v14 = [v12 fontForControlSize:v8 selected:selectedCopy];
    }

    [qword_1ED4974F8 setObject:v14 forKey:v13];
  }

  return v14;
}

void __72__UISegmentedControl__fontForTraitCollection_size_selected_hasMaterial___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DEE0]);
  v1 = qword_1ED4974F8;
  qword_1ED4974F8 = v0;
}

- (id)_createSegmentAtIndex:(int)index position:(unsigned int)position withInfo:(id)info
{
  infoCopy = info;
  v24 = infoCopy;
  if ((*(&self->_segmentedControlFlags + 3) & 2) != 0)
  {
    v22 = [(UISegmentedControl *)self _createInfoViewForSegmentAtIndex:index item:infoCopy];
  }

  else
  {
    v22 = 0;
  }

  v8 = [UISegment alloc];
  segmentedControlFlags = self->_segmentedControlFlags;
  barStyle = self->_barStyle;
  v21 = v8;
  tintColor = [(UIView *)self tintColor];
  appearanceStorage = self->_appearanceStorage;
  v12 = self->_segmentedControlFlags;
  v13 = (*&v12 >> 7) & 1;
  v14 = (*&v12 >> 14) & 1;
  v15 = (*&v12 >> 29) & 1;
  traitCollection = [(UIView *)self traitCollection];
  BYTE2(v19) = v15;
  BYTE1(v19) = v14;
  LOBYTE(v19) = v13;
  v17 = [UISegment initWithInfo:v21 size:"initWithInfo:size:barStyle:tintColor:appearanceStorage:position:autosizeText:adjustsForContentSizeCategory:hasMaterial:customInfoView:traitCollection:" barStyle:v24 tintColor:segmentedControlFlags & 3 appearanceStorage:barStyle position:tintColor autosizeText:appearanceStorage adjustsForContentSizeCategory:position hasMaterial:v19 customInfoView:v22 traitCollection:traitCollection];

  [(UISegment *)v17 setMomentary:(*&self->_segmentedControlFlags >> 3) & 1];

  return v17;
}

- (id)_createAndAddSegmentAtIndex:(int)index position:(unsigned int)position withInfo:(id)info
{
  v7 = [(UISegmentedControl *)self _createSegmentAtIndex:*&index position:*&position withInfo:info];
  v8 = [(NSMutableArray *)self->_segments count];
  if (v8 >= index)
  {
    indexCopy = index;
  }

  else
  {
    indexCopy = v8;
  }

  v10 = indexCopy;
  [(NSMutableArray *)self->_segments insertObject:v7 atIndex:indexCopy];
  v11 = UISegmentedControlSegmentContentView(self);
  [v11 insertSubview:v7 atIndex:v10];

  [v7 _finishInitialSegmentSetup];
  [(UIView *)self setNeedsLayout];

  return v7;
}

- (void)_insertSegment:(int)segment withInfo:(id)info animated:(BOOL)animated
{
  animatedCopy = animated;
  infoCopy = info;
  v9 = [(NSMutableArray *)self->_segments count];
  v10 = v9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __55__UISegmentedControl__insertSegment_withInfo_animated___block_invoke;
  aBlock[3] = &unk_1E70F36D0;
  aBlock[4] = self;
  if (v9 >= segment)
  {
    segmentCopy = segment;
  }

  else
  {
    segmentCopy = v9;
  }

  v35 = segmentCopy;
  v36 = v9;
  v12 = infoCopy;
  v34 = v12;
  v13 = _Block_copy(aBlock);
  v14 = v13;
  if (animatedCopy)
  {
    v13[2](v13);
    v15 = [(NSMutableArray *)self->_segments objectAtIndex:segmentCopy];
    [v15 animateAdd:1];
    v16 = __OFSUB__(segmentCopy, 1);
    v17 = (segmentCopy - 1);
    if (v17 < 0 == v16)
    {
      [v15 frame];
      v19 = v18;
      v21 = v20;
      v23 = v22;
      v24 = [(NSMutableArray *)self->_segments objectAtIndex:v17];
      [v24 frame];
      v27 = v25 + v26;

      [v15 setFrame:{v27, v19, v21, v23}];
    }

    if (v10 > segment)
    {
      [v15 setShowDivider:1];
    }

    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __55__UISegmentedControl__insertSegment_withInfo_animated___block_invoke_2;
    v31[3] = &unk_1E70F35B8;
    v31[4] = self;
    v32 = v15;
    v28 = v15;
    [UIView animateWithDuration:0 delay:v31 options:0 animations:0.25 completion:0.0];
  }

  else
  {
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __55__UISegmentedControl__insertSegment_withInfo_animated___block_invoke_3;
    v29[3] = &unk_1E70F0F78;
    v30 = v13;
    [UIView performWithoutAnimation:v29];
    v28 = v30;
  }
}

uint64_t __55__UISegmentedControl__insertSegment_withInfo_animated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _createAndAddSegmentAtIndex:? position:? withInfo:?];
  v3 = *(a1 + 32);
  v4 = *(v3 + 504);
  if (v4 >= *(a1 + 48))
  {
    [v3 setSelectedSegmentIndex:v4 + 1];
    v3 = *(a1 + 32);
  }

  if ((*(v3 + 624) & 0x20) != 0)
  {
    [v3 sizeToFit];
    v3 = *(a1 + 32);
  }

  [v3 invalidateIntrinsicContentSize];
  v5 = *(a1 + 32);

  return [v5 setNeedsLayout];
}

uint64_t __55__UISegmentedControl__insertSegment_withInfo_animated___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) layoutIfNeeded];
  v2 = *(a1 + 40);

  return [v2 animateAdd:0];
}

- (void)_clearSelectedSegment
{
  if ((*&self->_segmentedControlFlags & 8) != 0)
  {
    [(UISegmentedControl *)self setSelectedSegmentIndex:-1];
  }
}

- (void)_updateDividerImageForSegmentAtIndex:(unint64_t)index
{
  if (index)
  {
    v13 = [(NSMutableArray *)self->_segments objectAtIndex:index - 1];
  }

  else
  {
    v13 = 0;
  }

  v5 = [(NSMutableArray *)self->_segments objectAtIndex:index];
  if ([(NSMutableArray *)self->_segments count]- 1 <= index)
  {
    v6 = 0;
  }

  else
  {
    v6 = [(NSMutableArray *)self->_segments objectAtIndex:index + 1];
  }

  v7 = *(&self->super.super._viewFlags + 2);
  v8 = (v7 & 0x400000) == 0;
  if ((v7 & 0x400000) != 0)
  {
    v9 = v6;
  }

  else
  {
    v9 = v13;
  }

  if (v8)
  {
    v10 = v6;
  }

  else
  {
    v10 = v13;
  }

  v11 = v9;
  v12 = v10;
  if (v12)
  {
    [v5 updateDividerViewForChangedSegment:v12];
  }

  [v5 updateDividerViewForChangedSegment:v5];
  [v11 setSelectionIndicatorDragged:(*&self->_segmentedControlFlags >> 12) & 1];
  [v11 updateDividerViewForChangedSegment:v5];
}

- (id)_uiktest_labelsWithState:(unint64_t)state
{
  v20 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = self->_segments;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        if ([v11 _segmentState] == state)
        {
          _segmentLabel = [v11 _segmentLabel];
          [array addObject:_segmentLabel];
        }
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v13 = [MEMORY[0x1E695DEC8] arrayWithArray:array];

  return v13;
}

UISpringLoadedInteraction *__38__UISegmentedControl_setSpringLoaded___block_invoke()
{
  v0 = [UISpringLoadedInteraction alloc];
  v1 = objc_opt_new();
  v2 = objc_opt_new();
  v3 = [(UISpringLoadedInteraction *)v0 initWithInteractionBehavior:v1 interactionEffect:v2 activationHandler:&__block_literal_global_804];

  return v3;
}

void __38__UISegmentedControl_setSpringLoaded___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v9 = [a2 view];
  [v4 locationInView:v9];
  v6 = v5;
  v8 = v7;

  [v9 _tapSegmentAtPoint:0 touchDown:{v6, v8}];
}

- (id)_additionalTrackingViews
{
  v5[1] = *MEMORY[0x1E69E9840];
  if (self && (*(&self->_segmentedControlFlags + 4) & 4) != 0)
  {
    v5[0] = self->_selectionIndicatorView;
    _additionalTrackingViews = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  }

  else
  {
    v4.receiver = self;
    v4.super_class = UISegmentedControl;
    _additionalTrackingViews = [(UIControl *)&v4 _additionalTrackingViews];
  }

  return _additionalTrackingViews;
}

- (id)infoViewForSegment:(int64_t)segment
{
  v3 = [(NSMutableArray *)self->_segments objectAtIndex:segment];
  v4 = v3[64];
  v5 = v4;

  return v4;
}

- (void)_setUseSpringBoardVibrancy:(BOOL)vibrancy
{
  vibrancyCopy = vibrancy;
  v25 = *MEMORY[0x1E69E9840];
  if ([UIApp _isSpringBoard])
  {
    v5 = 0x1000000000;
    if (!vibrancyCopy)
    {
      v5 = 0;
    }

    self->_segmentedControlFlags = (*&self->_segmentedControlFlags & 0xFFFFFFEFFFFFFFFFLL | v5);
    [(UISegmentedControl *)self _updateSelectionIndicator];
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    obj = self->_segments;
    v6 = [(NSMutableArray *)obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v21;
      if (vibrancyCopy)
      {
        v9 = 0x100000;
      }

      else
      {
        v9 = 0;
      }

      v10 = *MEMORY[0x1E6979CF8];
      if (vibrancyCopy)
      {
        v11 = *MEMORY[0x1E6979CF8];
      }

      else
      {
        v11 = 0;
      }

      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v21 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v20 + 1) + 8 * i);
          if (v13)
          {
            *(v13 + 640) = *(v13 + 640) & 0xFFEFFFFF | v9;
            layer = [*(v13 + 512) layer];
            [layer setCompositingFilter:v11];

            if ([(UISegment *)v13 _useLensView])
            {
              v15 = *(v13 + 528);
              if ((*(v13 + 640) & 0x100000) != 0)
              {
                v16 = v10;
              }

              else
              {
                v16 = 0;
              }

              restingBackgroundView = [v15 restingBackgroundView];
              layer2 = [restingBackgroundView layer];
              [layer2 setCompositingFilter:v16];
            }
          }
        }

        v7 = [(NSMutableArray *)obj countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v7);
    }
  }
}

- (UISegmentedControl)initWithFrame:(CGRect)frame withStyle:(int64_t)style withItems:(id)items
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  itemsCopy = items;
  height = [(UISegmentedControl *)self initWithFrame:x, y, width, height];
  if (height)
  {
    v12 = [itemsCopy count];
    v13 = v12;
    if (v12 >= 1)
    {
      v14 = 0;
      v15 = (v12 - 1);
      v16 = v12 & 0x7FFFFFFF;
      do
      {
        if (v15 == v14)
        {
          v17 = 2;
        }

        else
        {
          v17 = 1;
        }

        if (!v14)
        {
          v17 = 0;
        }

        if (v13 == 1)
        {
          v18 = 3;
        }

        else
        {
          v18 = v17;
        }

        v19 = [itemsCopy objectAtIndex:v14];
        v20 = [(UISegmentedControl *)height _createAndAddSegmentAtIndex:v14 position:v18 withInfo:v19];

        ++v14;
      }

      while (v16 != v14);
    }
  }

  return height;
}

- (void)setAlwaysNotifiesDelegateOfSegmentClicks:(BOOL)clicks
{
  v3 = 4;
  if (!clicks)
  {
    v3 = 0;
  }

  self->_segmentedControlFlags = (*&self->_segmentedControlFlags & 0xFFFFFFFFFFFFFFFBLL | v3);
}

- (void)setImagePadding:(CGSize)padding forSegment:(unint64_t)segment
{
  height = padding.height;
  width = padding.width;
  v7 = [(NSMutableArray *)self->_segments objectAtIndex:segment];
  [v7 setContentOffset:{width, height}];

  if ((*&self->_segmentedControlFlags & 0x20) != 0)
  {
    [(UISegmentedControl *)self sizeToFit];
  }

  [(UIView *)self invalidateIntrinsicContentSize];
}

- (void)addSegmentWithTitle:(id)title
{
  titleCopy = title;
  [(UISegmentedControl *)self insertSegmentWithTitle:titleCopy atIndex:[(UISegmentedControl *)self numberOfSegments] animated:0];
}

@end