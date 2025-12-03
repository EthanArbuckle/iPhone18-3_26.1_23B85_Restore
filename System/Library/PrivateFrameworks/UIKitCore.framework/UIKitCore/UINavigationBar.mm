@interface UINavigationBar
+ (CGSize)defaultSize;
+ (CGSize)defaultSizeForOrientation:(int64_t)orientation;
+ (CGSize)defaultSizeWithPrompt;
+ (CGSize)defaultSizeWithPromptForOrientation:(int64_t)orientation;
+ (Class)_visualProviderClassForNavigationBar:(id)bar;
+ (id)_defaultVisualStyleForOrientation:(int64_t)orientation;
+ (id)_visualProviderForNavigationBar:(id)bar;
+ (id)defaultPromptFont;
+ (void)_initializeForIdiom:(int64_t)idiom;
- ($1AB5FA073B851C12C2339EC22442E995)_layoutHeightsForNavigationItem:(id)item fittingWidth:(double)width;
- (BOOL)_accessibilityHUDGestureManager:(id)manager shouldBeginAtPoint:(CGPoint)point;
- (BOOL)_accessibilityHUDGestureManager:(id)manager shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)recognizer;
- (BOOL)_allowInteractionDuringTransition;
- (BOOL)_canPerformCustomizeBarActionWithSender:(id)sender;
- (BOOL)_canPreemptTransition;
- (BOOL)_delegateWantsNavigationBarHidden;
- (BOOL)_didVisibleItemsChangeWithNewItems:(id)items oldItems:(id)oldItems;
- (BOOL)_hasBackButton;
- (BOOL)_hasFixedMaximumHeight;
- (BOOL)_heightDependentOnOrientation;
- (BOOL)_isAnimationEnabled;
- (BOOL)_shouldAnimatePropertyWithKey:(id)key;
- (BOOL)_shouldCrossFadeBackgroundVisility;
- (BOOL)_shouldDecodeSubviews;
- (BOOL)_subclassImplementsDrawRect;
- (BOOL)_suppressBackIndicator;
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (BOOL)isTranslucent;
- (CGRect)_incomingNavigationBarFrame;
- (CGRect)availableTitleArea;
- (CGRect)promptBounds;
- (CGSize)defaultSizeForOrientation:(int64_t)orientation;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (NSArray)_animationIds;
- (NSDirectionalEdgeInsets)_resolvedLargeTitleMargins;
- (NSDirectionalEdgeInsets)_resolvedLayoutMargins;
- (NSDirectionalEdgeInsets)_resolvedSearchBarMargins;
- (NSString)_backdropViewLayerGroupName;
- (NSString)description;
- (UIEdgeInsets)_additionalSafeAreaInsets;
- (UIEdgeInsets)_safeAreaInsetsForFrame:(CGRect)frame inSuperview:(id)superview ignoreViewController:(BOOL)controller;
- (UIImage)backIndicatorImage;
- (UIImage)backIndicatorTransitionMaskImage;
- (UIImage)backgroundImageForBarMetrics:(UIBarMetrics)barMetrics;
- (UIImage)backgroundImageForBarPosition:(UIBarPosition)barPosition barMetrics:(UIBarMetrics)barMetrics;
- (UINavigationBar)initWithCoder:(id)coder;
- (UINavigationBar)initWithFrame:(CGRect)frame;
- (UINavigationBarAppearance)standardAppearance;
- (UINavigationItem)popNavigationItemAnimated:(BOOL)animated;
- (UIView)currentLeftView;
- (UIView)currentRightView;
- (_UINavigationBarDelegatePrivate)_privateDelegate;
- (_UINavigationItemButtonView)currentBackButton;
- (double)_autolayoutSpacingAtEdge:(int)edge forAttribute:(int64_t)attribute inContainer:(id)container isGuide:(BOOL)guide;
- (double)_backIndicatorLeftMargin;
- (double)_effectiveBackIndicatorLeftMargin;
- (double)_heightIncludingBackground;
- (double)defaultBackButtonAlignmentHeight;
- (double)defaultHeightForMetrics:(int64_t)metrics;
- (id)_accessibility_contentsOfNavigationBar;
- (id)_accessibility_navigationController;
- (id)_backButtonForBackItem:(id)item topItem:(id)topItem;
- (id)_backgroundViewForPalette:(id)palette;
- (id)_currentLeftViews;
- (id)_currentRightViews;
- (id)_currentVisualStyle;
- (id)_defaultTitleFontFittingHeight:(double)height withScaleAdjustment:(double)adjustment;
- (id)_defaultTitleFontWithScaleAdjustment:(double)adjustment;
- (id)_effectiveDelegate;
- (id)_effectiveDelegateForItem:(id)item;
- (id)_effectiveSearchControllerForNavigationItem:(id)item;
- (id)_popNavigationItemWithTransition:(int)transition;
- (id)_systemDefaultFocusGroupIdentifier;
- (id)_titleTextColor;
- (id)_traitCollectionForChildEnvironment:(id)environment;
- (id)animationFactory;
- (id)delegate;
- (id)hitTest:(CGPoint)test forEvent:(__GSEvent *)event;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (int)_transitionForOldItems:(id)items newItems:(id)newItems;
- (int64_t)_currentBarStyle;
- (int64_t)_effectiveMetricsForMetrics:(int64_t)metrics;
- (int64_t)_sceneDraggingBehaviorOnPan;
- (int64_t)effectiveInterfaceOrientation;
- (void)_accessibilityButtonShapesDidChangeNotification:(id)notification;
- (void)_accessibilityButtonShapesParametersDidChange;
- (void)_accessibilityHUDGestureManager:(id)manager gestureLiftedAtPoint:(CGPoint)point;
- (void)_accessibility_triggerBackButton;
- (void)_addItem:(id)item withEffectiveDelegate:(id)delegate transition:(int)transition;
- (void)_addItems:(id)items withEffectiveDelegate:(id)delegate transition:(int)transition;
- (void)_applySPIAppearanceToButtons;
- (void)_barSizeDidChange:(CGSize)change;
- (void)_beginRenamingIfPossible;
- (void)_cancelInteractiveTransition;
- (void)_cancelInteractiveTransition:(double)transition completionSpeed:(double)speed completionCurve:(int64_t)curve;
- (void)_commonNavBarInit;
- (void)_completePopOperationAnimated:(BOOL)animated transitionAssistant:(id)assistant;
- (void)_completePushOperationAnimated:(BOOL)animated transitionAssistant:(id)assistant;
- (void)_configurePaletteConstraintsIfNecessary;
- (void)_customViewChangedForButtonItem:(id)item;
- (void)_didChangeFromIdiom:(int64_t)idiom onScreen:(id)screen traverseHierarchy:(BOOL)hierarchy;
- (void)_didMoveFromWindow:(id)window toWindow:(id)toWindow;
- (void)_effectiveBarTintColorDidChangeWithPreviousColor:(id)color;
- (void)_evaluateBackIndicatorForHilightedState:(BOOL)state ofBarButtonItem:(id)item inNavigationItem:(id)navigationItem;
- (void)_fadeAllViewsIn;
- (void)_fadeAllViewsOut;
- (void)_finishInteractiveTransition:(double)transition completionSpeed:(double)speed completionCurve:(int64_t)curve;
- (void)_getBackgroundImage:(id *)image shouldRespectOversizedBackgroundImage:(BOOL *)backgroundImage actualBarMetrics:(int64_t *)metrics actualBarPosition:(int64_t *)position;
- (void)_installDefaultAppearance;
- (void)_palette:(id)_palette isAttaching:(BOOL)attaching didComplete:(BOOL)complete;
- (void)_performUpdatesIgnoringLock:(id)lock;
- (void)_popNavigationItemWithTransitionAssistant:(id)assistant;
- (void)_popNestedNavigationItem;
- (void)_populateArchivedSubviews:(id)subviews;
- (void)_prepareToAnimateTransition;
- (void)_propagateEffectiveBarTintColorWithPreviousColor:(id)color;
- (void)_pushNavigationItem:(id)item transition:(int)transition;
- (void)_pushNavigationItem:(id)item transitionAssistant:(id)assistant;
- (void)_pushNavigationItemUsingCurrentTransition:(id)transition;
- (void)_redisplayItems;
- (void)_reenableUserInteraction;
- (void)_reenableUserInteractionWhenReadyWithContext:(id)context;
- (void)_sendNavigationBarAnimateTransition;
- (void)_sendNavigationBarDidChangeStyle;
- (void)_sendNavigationBarResize;
- (void)_sendNavigationPopForBackBarButtonItem:(id)item;
- (void)_sendResizeForPromptChange;
- (void)_setAccessibilityButtonBackgroundTintColor:(id)color;
- (void)_setAdditionalSafeAreaInsets:(UIEdgeInsets)insets;
- (void)_setAdjacentBarEdges:(unint64_t)edges;
- (void)_setAlwaysUseDefaultMetrics:(BOOL)metrics;
- (void)_setBackButtonBackgroundImage:(id)image mini:(id)mini forStates:(unint64_t)states;
- (void)_setBackIndicatorLeftMargin:(double)margin;
- (void)_setBackdropViewLayerGroupName:(id)name;
- (void)_setBackgroundImage:(id)image mini:(id)mini;
- (void)_setBarPosition:(int64_t)position;
- (void)_setBarStyle:(int64_t)style;
- (void)_setButtonBackgroundImage:(id)image mini:(id)mini forStates:(unint64_t)states;
- (void)_setButtonItemTextColor:(id)color shadowColor:(id)shadowColor forState:(unint64_t)state;
- (void)_setButtonTextShadowOffset:(CGSize)offset;
- (void)_setDecodedItems:(id)items;
- (void)_setDecodedUnlockedWithNavigationControllerDelegate:(BOOL)delegate;
- (void)_setDeferShadowToSearchBar:(BOOL)bar;
- (void)_setEdgesRequiringContentMargin:(unint64_t)margin;
- (void)_setForceScrollEdgeAppearance:(BOOL)appearance;
- (void)_setHidesShadow:(BOOL)shadow;
- (void)_setItems:(id)items transition:(int)transition reset:(BOOL)reset;
- (void)_setItemsUpToItem:(id)item transition:(int)transition;
- (void)_setNeedsBackgroundViewUpdate;
- (void)_setPrompt:(id)prompt;
- (void)_setReversesButtonTextShadowOffsetWhenPressed:(BOOL)pressed;
- (void)_setupAXHUDGestureIfNecessary;
- (void)_traitCollectionDidChangeOnSubtreeInternal:(const _UITraitCollectionChangeDescription *)internal;
- (void)_uikit_applyValueFromTraitStorage:(id)storage forKeyPath:(id)path;
- (void)_updateActiveBarMetrics;
- (void)_updateAppearancesForNewVisualProvider;
- (void)_updateBackButtonVisibilityIfTop:(id)top animated:(BOOL)animated;
- (void)_updateContentIfTopItem:(id)item animated:(BOOL)animated;
- (void)_updateInteractiveTransition:(double)transition;
- (void)_updateNavigationBarItem:(id)item forStyle:(int64_t)style previousTintColor:(id)color;
- (void)_updateNavigationBarItemsForStyle:(int64_t)style;
- (void)_updateNavigationBarItemsForStyle:(int64_t)style previousTintColor:(id)color;
- (void)_updateOpacity;
- (void)_updatePalette:(id)palette;
- (void)_updatePaletteBackgroundIfNecessary;
- (void)_updateTitleViewIfTop:(id)top;
- (void)_upgradeAppearanceAPI;
- (void)_willMoveToWindow:(id)window;
- (void)addConstraint:(id)constraint;
- (void)dealloc;
- (void)didAddSubview:(id)subview;
- (void)didMoveToWindow;
- (void)encodeWithCoder:(id)coder;
- (void)invalidateIntrinsicContentSize;
- (void)layoutMarginsDidChange;
- (void)layoutSublayersOfLayer:(id)layer;
- (void)layoutSubviews;
- (void)pushNavigationItem:(UINavigationItem *)item animated:(BOOL)animated;
- (void)removeConstraint:(id)constraint;
- (void)runToolbarCustomizationPalette:(id)palette;
- (void)safeAreaInsetsDidChange;
- (void)setBackIndicatorImage:(UIImage *)backIndicatorImage;
- (void)setBackIndicatorTransitionMaskImage:(UIImage *)backIndicatorTransitionMaskImage;
- (void)setBackgroundEffects:(id)effects;
- (void)setBackgroundImage:(UIImage *)backgroundImage forBarPosition:(UIBarPosition)barPosition barMetrics:(UIBarMetrics)barMetrics;
- (void)setBarTintColor:(UIColor *)barTintColor;
- (void)setBounds:(CGRect)bounds;
- (void)setButton:(int)button enabled:(BOOL)enabled;
- (void)setCenter:(CGPoint)center;
- (void)setCompactAppearance:(UINavigationBarAppearance *)compactAppearance;
- (void)setCompactScrollEdgeAppearance:(UINavigationBarAppearance *)compactScrollEdgeAppearance;
- (void)setDelegate:(id)delegate;
- (void)setForceFullHeightInLandscape:(BOOL)landscape;
- (void)setFrame:(CGRect)frame;
- (void)setInsetsLayoutMarginsFromSafeArea:(BOOL)area;
- (void)setItems:(NSArray *)items animated:(BOOL)animated;
- (void)setLargeTitleTextAttributes:(NSDictionary *)largeTitleTextAttributes;
- (void)setLocked:(BOOL)locked;
- (void)setNeedsLayout;
- (void)setPrefersLargeTitles:(BOOL)prefersLargeTitles;
- (void)setRequestedContentSize:(int64_t)size;
- (void)setScrollEdgeAppearance:(UINavigationBarAppearance *)scrollEdgeAppearance;
- (void)setSemanticContentAttribute:(int64_t)attribute;
- (void)setShadowImage:(UIImage *)shadowImage;
- (void)setStandardAppearance:(UINavigationBarAppearance *)standardAppearance;
- (void)setTintColor:(UIColor *)tintColor;
- (void)setTitleTextAttributes:(NSDictionary *)titleTextAttributes;
- (void)setTitleVerticalPositionAdjustment:(CGFloat)adjustment forBarMetrics:(UIBarMetrics)barMetrics;
- (void)setTranslatesAutoresizingMaskIntoConstraints:(BOOL)constraints;
- (void)setTranslucent:(BOOL)translucent;
- (void)tintColorDidChange;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
- (void)traitCollectionDidChange:(id)change;
- (void)updateConstraints;
- (void)updatePrompt;
- (void)updateProperties;
@end

@implementation UINavigationBar

- (BOOL)_subclassImplementsDrawRect
{
  if (!__drawRectUINavigationBarIMP)
  {
    __drawRectUINavigationBarIMP = [UINavigationBar instanceMethodForSelector:sel_drawRect_];
  }

  v3 = [(UINavigationBar *)self methodForSelector:sel_drawRect_];
  if (v3)
  {
    v4 = v3 == __drawRectUINavigationBarIMP;
  }

  else
  {
    v4 = 1;
  }

  return !v4;
}

- (void)layoutMarginsDidChange
{
  v3.receiver = self;
  v3.super_class = UINavigationBar;
  [(UIView *)&v3 layoutMarginsDidChange];
  [(UINavigationBar *)self setNeedsLayout];
  if (self)
  {
    self->_resolvedLayoutMargins.trailing = -1.79769313e308;
    self->_resolvedLayoutMargins.leading = -1.79769313e308;
    [(_UINavigationBarVisualProvider *)self->_visualProvider navigationBarInvalidatedResolvedLayoutMargins];
  }
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_setupAXHUDGestureIfNecessary
{
  if (!self->_axHUDGestureManager)
  {
    if (dyld_program_sdk_at_least())
    {
      traitCollection = [(UIView *)self traitCollection];
      _isLargeContentViewerEnabled = [traitCollection _isLargeContentViewerEnabled];

      if (_isLargeContentViewerEnabled)
      {
        v5 = [[UIAccessibilityHUDGestureManager alloc] initWithView:self delegate:self];
        axHUDGestureManager = self->_axHUDGestureManager;
        self->_axHUDGestureManager = v5;
      }
    }
  }
}

- (id)_effectiveDelegate
{
  topItem = [(UINavigationBar *)self topItem];
  v4 = [(UINavigationBar *)self _effectiveDelegateForItem:topItem];

  return v4;
}

- (void)_commonNavBarInit
{
  v9[1] = *MEMORY[0x1E69E9840];
  _isAlwaysHidden = [(UINavigationBar *)self _isAlwaysHidden];
  if (!self->_barPosition)
  {
    self->_barPosition = 2;
  }

  if (!_isAlwaysHidden)
  {
    -[_UINavigationBarVisualProvider _shim_setUseContentView:](self->_visualProvider, "_shim_setUseContentView:", [objc_opt_class() _supportsCanvasView]);
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:self selector:sel__accessibilityButtonShapesDidChangeNotification_ name:@"UIAccessibilityButtonShapesEnabledStatusDidChangeNotification" object:0];
  }

  *&self->_resolvedLayoutMargins.top = xmmword_18A678760;
  *&self->_resolvedLayoutMargins.bottom = xmmword_18A678760;
  [(_UINavigationBarVisualProvider *)self->_visualProvider prepare];
  if (self->_standardAppearance)
  {
    v5 = 2;
  }

  else
  {
    v5 = _UIBarAppearanceAPIVersion();
  }

  [(_UINavigationBarVisualProvider *)self->_visualProvider setAppearanceAPIVersion:v5];
  if ([(_UINavigationBarVisualProvider *)self->_visualProvider appearanceAPIVersion]>= 2)
  {
    [(UINavigationBar *)self _installDefaultAppearance];
  }

  [(UINavigationBar *)self _setupAXHUDGestureIfNecessary];
  v9[0] = 0x1EFE32398;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  v7 = [(UIView *)self _registerForTraitTokenChanges:v6 withTarget:self action:sel__setupAXHUDGestureIfNecessary];

  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel__largeContentViewerEnabledStatusDidChange_ name:@"UILargeContentViewerInteractionEnabledStatusDidChangeNotification" object:0];
}

- (void)layoutSubviews
{
  v28 = *MEMORY[0x1E69E9840];
  kdebug_trace();
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __33__UINavigationBar_layoutSubviews__block_invoke;
  aBlock[3] = &unk_1E70F3590;
  aBlock[4] = self;
  v4 = _Block_copy(aBlock);
  v20.receiver = self;
  v20.super_class = UINavigationBar;
  [(UIView *)&v20 layoutSubviews];
  if (![(UINavigationBar *)self _isAlwaysHidden])
  {
    topItem = [(_UINavigationBarItemStack *)self->_stack topItem];
    _navigationBar = [topItem _navigationBar];

    if ([(UIView *)self isHidden])
    {
      if (_navigationBar != self && _navigationBar != 0)
      {
LABEL_34:

        goto LABEL_35;
      }
    }

    if (_navigationBar != self && _navigationBar != 0)
    {
      window = [(UIView *)self window];
      if (window && ([(UIView *)_navigationBar window], (v10 = objc_claimAutoreleasedReturnValue()) != 0))
      {
      }

      else
      {
        v11 = dyld_program_sdk_at_least();
        v12 = v11;
        if (window)
        {

          if ((v12 & 1) == 0)
          {
            goto LABEL_30;
          }
        }

        else if (!v11)
        {
          goto LABEL_30;
        }
      }

      if (_UIIsPrivateMainBundle())
      {
        if (os_variant_has_internal_diagnostics())
        {
          v13 = __UIFaultDebugAssertLog();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
          {
            topItem2 = [(_UINavigationBarItemStack *)self->_stack topItem];
            *buf = 138412802;
            selfCopy4 = self;
            v24 = 2112;
            v25 = topItem2;
            v26 = 2112;
            v27 = _navigationBar;
            _os_log_fault_impl(&dword_188A29000, v13, OS_LOG_TYPE_FAULT, "Skipping layout for visible navigation bar, %@, because the top item's navigation bar doesn't match.  topItem = %@, topItem's navigation bar = %@", buf, 0x20u);
          }
        }

        else
        {
          v13 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED49AAD0) + 8);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            topItem3 = [(_UINavigationBarItemStack *)self->_stack topItem];
            *buf = 138412802;
            selfCopy4 = self;
            v24 = 2112;
            v25 = topItem3;
            v26 = 2112;
            v27 = _navigationBar;
            _os_log_impl(&dword_188A29000, v13, OS_LOG_TYPE_ERROR, "Skipping layout for visible navigation bar, %@, because the top item's navigation bar doesn't match.  topItem = %@, topItem's navigation bar = %@", buf, 0x20u);
          }
        }

        goto LABEL_34;
      }

      _UIIsPrivateMainBundle();
      if (dyld_program_sdk_at_least())
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        topItem4 = [(_UINavigationBarItemStack *)self->_stack topItem];
        [currentHandler handleFailureInMethod:a2 object:self file:@"UINavigationBar.m" lineNumber:4033 description:@"Layout requested for visible navigation bar, %@, when the top item belongs to a different navigation bar. topItem = %@, navigation bar = %@, possibly from a client attempt to nest wrapped navigation controllers.", self, topItem4, _navigationBar];
      }

      else if (os_variant_has_internal_diagnostics())
      {
        currentHandler = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(currentHandler, OS_LOG_TYPE_FAULT))
        {
          topItem5 = [(_UINavigationBarItemStack *)self->_stack topItem];
          *buf = 138412802;
          selfCopy4 = self;
          v24 = 2112;
          v25 = topItem5;
          v26 = 2112;
          v27 = _navigationBar;
          _os_log_fault_impl(&dword_188A29000, currentHandler, OS_LOG_TYPE_FAULT, "Layout requested for visible navigation bar, %@, when the top item belongs to a different navigation bar. topItem = %@, navigation bar = %@, possibly from a client attempt to nest wrapped navigation controllers.This mismatch may cause a layout feedback loop. This will become an assert in a future version.", buf, 0x20u);
        }
      }

      else
      {
        currentHandler = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED49AAD8) + 8);
        if (os_log_type_enabled(currentHandler, OS_LOG_TYPE_ERROR))
        {
          topItem6 = [(_UINavigationBarItemStack *)self->_stack topItem];
          *buf = 138412802;
          selfCopy4 = self;
          v24 = 2112;
          v25 = topItem6;
          v26 = 2112;
          v27 = _navigationBar;
          _os_log_impl(&dword_188A29000, currentHandler, OS_LOG_TYPE_ERROR, "Layout requested for visible navigation bar, %@, when the top item belongs to a different navigation bar. topItem = %@, navigation bar = %@, possibly from a client attempt to nest wrapped navigation controllers.This mismatch may cause a layout feedback loop. This will become an assert in a future version.", buf, 0x20u);
        }
      }
    }

LABEL_30:
    [(_UINavigationBarVisualProvider *)self->_visualProvider _shim];
    if (![(_UINavigationBarItemStack *)self->_stack state])
    {
      *&self->_navbarFlags |= 8u;
      if ([(_UINavigationBarVisualProvider *)self->_visualProvider _shim])
      {
        [(UINavigationBar *)self _updateActiveBarMetrics];
      }

      [(_UINavigationBarVisualProvider *)self->_visualProvider layoutSubviews];
      *&self->_navbarFlags &= ~8u;
    }

    goto LABEL_34;
  }

LABEL_35:
  v4[2](v4);
}

- (BOOL)isTranslucent
{
  barStyle = self->_barStyle;
  _effectiveBarTintColor = [(UINavigationBar *)self _effectiveBarTintColor];
  _screen = [(UIView *)self _screen];
  IsTranslucentOnScreen = _UIBarStyleWithTintColorIsTranslucentOnScreen(barStyle, _effectiveBarTintColor, _screen);

  v14 = IsTranslucentOnScreen;
  barTranslucence = self->_barTranslucence;
  if (barTranslucence)
  {
    return barTranslucence == 1;
  }

  else
  {
    _screen2 = [(UIView *)self _screen];
    _userInterfaceIdiom = [_screen2 _userInterfaceIdiom];

    if (_userInterfaceIdiom != 3)
    {
      v10 = self->_appearanceStorage;
      if ([(_UIBarAppearanceStorage *)v10 hasAnyCustomBackgroundImage])
      {
        _screen3 = [(UIView *)self _screen];
        v12 = -[_UINavigationBarAppearanceStorage representativeImageForIdiom:](v10, "representativeImageForIdiom:", [_screen3 _userInterfaceIdiom]);

        [v12 _isInvisibleAndGetIsTranslucent:&v14];
      }

      return v14;
    }
  }

  return IsTranslucentOnScreen;
}

- (void)_updateOpacity
{
  isOpaque = [(UIView *)self isOpaque];
  isTranslucent = [(UINavigationBar *)self isTranslucent];
  if (isOpaque == isTranslucent)
  {
    [(UIView *)self setOpaque:isTranslucent ^ 1u];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained navigationBarDidChangeOpacity:self];
    }
  }
}

- (void)setNeedsLayout
{
  if ((*&self->_navbarFlags & 8) == 0)
  {
    if (_UIInternalPreferencesRevisionOnce != -1)
    {
      dispatch_once(&_UIInternalPreferencesRevisionOnce, &__block_literal_global_5_11);
    }

    v3 = _UIInternalPreferencesRevisionVar;
    if (_UIInternalPreferencesRevisionVar >= 1)
    {
      v4 = _UIInternalPreference_NavigationBarGetPPIDInSetNeedsLayout;
      if (_UIInternalPreferencesRevisionVar != _UIInternalPreference_NavigationBarGetPPIDInSetNeedsLayout)
      {
        while (v3 >= v4)
        {
          _UIInternalPreferenceSync(v3, &_UIInternalPreference_NavigationBarGetPPIDInSetNeedsLayout, @"NavigationBarGetPPIDInSetNeedsLayout", _UIInternalPreferenceUpdateBool);
          v4 = _UIInternalPreference_NavigationBarGetPPIDInSetNeedsLayout;
          if (v3 == _UIInternalPreference_NavigationBarGetPPIDInSetNeedsLayout)
          {
            goto LABEL_5;
          }
        }

        if (byte_1ED48AA4C)
        {
          getppid();
        }
      }
    }

LABEL_5:
    kdebug_trace();
    v5.receiver = self;
    v5.super_class = UINavigationBar;
    [(UIView *)&v5 setNeedsLayout];
  }
}

- (void)_redisplayItems
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  stack = self->_stack;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __34__UINavigationBar__redisplayItems__block_invoke;
  v18[3] = &unk_1E70F7618;
  v5 = v3;
  v19 = v5;
  [(_UINavigationBarItemStack *)stack iterateEntries:v18];
  [(UINavigationBar *)self _setItems:0 transition:0 reset:1];
  if (_UISolariumEnabled())
  {
    [(UIView *)self layoutIfNeeded];
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        item = [v11 item];
        _stackEntry = [item _stackEntry];
        [_stackEntry updateStateFromCounterpart:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v20 count:16];
    }

    while (v8);
  }
}

- (void)updateProperties
{
  v4.receiver = self;
  v4.super_class = UINavigationBar;
  [(UIView *)&v4 updateProperties];
  if (_UISMCBarsEnabled())
  {
    traitCollection = [(UIView *)self traitCollection];
    -[UIView setTintAdjustmentMode:](self, "setTintAdjustmentMode:", 2 * ([traitCollection activeAppearance] == 0));
  }

  [(_UINavigationBarVisualProvider *)self->_visualProvider updateProperties];
}

- (void)updateConstraints
{
  v3.receiver = self;
  v3.super_class = UINavigationBar;
  [(UIView *)&v3 updateConstraints];
  [(_UINavigationBarVisualProvider *)self->_visualProvider updateConstraints];
}

- (NSDirectionalEdgeInsets)_resolvedLayoutMargins
{
  p_resolvedLayoutMargins = &self->_resolvedLayoutMargins;
  leading = self->_resolvedLayoutMargins.leading;
  if (leading == -1.79769313e308 || (trailing = self->_resolvedLayoutMargins.trailing, trailing == -1.79769313e308))
  {
    [(UIView *)self _rawLayoutMargins];
    v7 = v6 == -1.79769313e308;
    v9 = v8 == -1.79769313e308;
    _shouldReverseLayoutDirection = [(UIView *)self _shouldReverseLayoutDirection];
    if (_shouldReverseLayoutDirection)
    {
      v11 = v7;
    }

    else
    {
      v11 = v9;
    }

    if (!_shouldReverseLayoutDirection)
    {
      v9 = v7;
    }

    [(UIView *)self directionalLayoutMargins];
    v13 = v12;
    v15 = v14;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      v17 = v13;
      v18 = v15;
      if (v9 || v11)
      {
        [WeakRetained _layoutMarginsforNavigationBar:self];
      }
    }

    else
    {
      v17 = v13;
      v18 = v15;
    }

    if (v9)
    {
      v19 = v17;
    }

    else
    {
      v19 = v13;
    }

    p_resolvedLayoutMargins->leading = v19;
    if (v11)
    {
      v20 = v18;
    }

    else
    {
      v20 = v15;
    }

    p_resolvedLayoutMargins->trailing = v20;

    leading = p_resolvedLayoutMargins->leading;
    trailing = p_resolvedLayoutMargins->trailing;
  }

  top = p_resolvedLayoutMargins->top;
  bottom = p_resolvedLayoutMargins->bottom;
  result.trailing = trailing;
  result.bottom = bottom;
  result.leading = leading;
  result.top = top;
  return result;
}

- (void)invalidateIntrinsicContentSize
{
  v3.receiver = self;
  v3.super_class = UINavigationBar;
  [(UIView *)&v3 invalidateIntrinsicContentSize];
  [(_UINavigationBarVisualProvider *)self->_visualProvider invalidateIntrinsicContentSize];
}

- (void)_sendNavigationBarResize
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained _navigationBarChangedSize:self];
  }
}

- (void)_updatePaletteBackgroundIfNecessary
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __54__UINavigationBar__updatePaletteBackgroundIfNecessary__block_invoke;
    v4[3] = &unk_1E70F7998;
    v4[4] = self;
    [WeakRetained _updatePalettesWithBlock:v4];
  }
}

- (UIImage)backIndicatorTransitionMaskImage
{
  backIndicatorImage = [(_UINavigationBarAppearanceStorage *)self->_appearanceStorage backIndicatorImage];

  if (backIndicatorImage)
  {
    backIndicatorTransitionMaskImage = [(_UINavigationBarAppearanceStorage *)self->_appearanceStorage backIndicatorTransitionMaskImage];
  }

  else
  {
    backIndicatorTransitionMaskImage = 0;
  }

  return backIndicatorTransitionMaskImage;
}

- (UIImage)backIndicatorImage
{
  backIndicatorTransitionMaskImage = [(_UINavigationBarAppearanceStorage *)self->_appearanceStorage backIndicatorTransitionMaskImage];

  if (backIndicatorTransitionMaskImage)
  {
    backIndicatorImage = [(_UINavigationBarAppearanceStorage *)self->_appearanceStorage backIndicatorImage];
  }

  else
  {
    backIndicatorImage = 0;
  }

  return backIndicatorImage;
}

- (void)_setNeedsBackgroundViewUpdate
{
  if (![(UIView *)self _isInLayoutSubviews])
  {

    [(UINavigationBar *)self setNeedsLayout];
  }
}

- (void)didMoveToWindow
{
  if (dyld_program_sdk_at_least())
  {
    v3.receiver = self;
    v3.super_class = UINavigationBar;
    [(UIView *)&v3 didMoveToWindow];
  }

  [(_UINavigationBarVisualProvider *)self->_visualProvider barDidMoveToWindow];
}

- (void)_configurePaletteConstraintsIfNecessary
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained _updatePaletteConstraints];
  }
}

- (void)safeAreaInsetsDidChange
{
  v3.receiver = self;
  v3.super_class = UINavigationBar;
  [(UIView *)&v3 safeAreaInsetsDidChange];
  [(_UINavigationBarVisualProvider *)self->_visualProvider safeAreaInsetsDidChange];
  if ([(UIView *)self insetsLayoutMarginsFromSafeArea])
  {
    self->_resolvedLayoutMargins.trailing = -1.79769313e308;
    self->_resolvedLayoutMargins.leading = -1.79769313e308;
    [(_UINavigationBarVisualProvider *)self->_visualProvider navigationBarInvalidatedResolvedLayoutMargins];
  }
}

- (void)tintColorDidChange
{
  v25 = *MEMORY[0x1E69E9840];
  v22.receiver = self;
  v22.super_class = UINavigationBar;
  [(UIView *)&v22 tintColorDidChange];
  topItem = [(UINavigationBar *)self topItem];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  leftBarButtonItems = [topItem leftBarButtonItems];
  v5 = [leftBarButtonItems countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    do
    {
      v8 = 0;
      do
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(leftBarButtonItems);
        }

        [*(*(&v18 + 1) + 8 * v8++) _updateView];
      }

      while (v6 != v8);
      v6 = [leftBarButtonItems countByEnumeratingWithState:&v18 objects:v24 count:16];
    }

    while (v6);
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  rightBarButtonItems = [topItem rightBarButtonItems];
  v10 = [rightBarButtonItems countByEnumeratingWithState:&v14 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v15;
    do
    {
      v13 = 0;
      do
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(rightBarButtonItems);
        }

        [*(*(&v14 + 1) + 8 * v13++) _updateView];
      }

      while (v11 != v13);
      v11 = [rightBarButtonItems countByEnumeratingWithState:&v14 objects:v23 count:16];
    }

    while (v11);
  }

  [(UINavigationBar *)self _updateNavigationBarItemsForStyle:[(UINavigationBar *)self _currentBarStyle]];
}

- (int64_t)_currentBarStyle
{
  result = self->_barStyle;
  if (result == 1 && self->_barTranslucence == 1)
  {
    return 2;
  }

  return result;
}

- (void)_upgradeAppearanceAPI
{
  if ([(_UINavigationBarVisualProvider *)self->_visualProvider appearanceAPIVersion]<= 1)
  {
    [(_UINavigationBarVisualProvider *)self->_visualProvider setAppearanceAPIVersion:2];
    if ([(_UINavigationBarVisualProvider *)self->_visualProvider appearanceAPIVersion]!= 2)
    {
      window = [(UIView *)self window];

      if (window)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        traitCollection = [(UIView *)self traitCollection];
        v6 = _NSStringFromUIUserInterfaceIdiom([traitCollection userInterfaceIdiom]);
        [currentHandler handleFailureInMethod:a2 object:self file:@"UINavigationBar.m" lineNumber:920 description:{@"New Bar Appearance API is not supported in this configuration. Are you using a legacy navigation bar? Idiom: %@, Navigation bar: %@", v6, self}];
      }
    }
  }
}

- (NSDirectionalEdgeInsets)_resolvedSearchBarMargins
{
  [(_UINavigationBarVisualProvider *)self->_visualProvider resolvedSearchBarMargins];
  result.trailing = v5;
  result.bottom = v4;
  result.leading = v3;
  result.top = v2;
  return result;
}

- (NSString)_backdropViewLayerGroupName
{
  traitCollection = [(UIView *)self traitCollection];
  v3 = objc_opt_self();
  v4 = [traitCollection objectForTrait:v3];

  return v4;
}

- (BOOL)_shouldDecodeSubviews
{
  v2 = [objc_opt_class() _visualProviderClassForNavigationBar:self];

  return [v2 shouldDecodeSubviews];
}

- (BOOL)_isAnimationEnabled
{
  if (self->_animationDisabledCount)
  {
    return 0;
  }

  superview = [(UIView *)self superview];
  if (superview)
  {
    window = [(UIView *)self window];
    v2 = window != 0;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)updatePrompt
{
  _shim_promptText = [(_UINavigationBarVisualProvider *)self->_visualProvider _shim_promptText];
  topItem = [(UINavigationBar *)self topItem];
  prompt = [topItem prompt];

  if ([(_UINavigationBarItemStack *)self->_stack isPushingOrPopping])
  {
    if (_shim_promptText)
    {
      v5 = 1;
    }

    else
    {
      v5 = prompt == 0;
    }

    if (v5)
    {
      if (_shim_promptText)
      {
        v6 = prompt == 0;
      }

      else
      {
        v6 = 0;
      }

      if (!v6)
      {
        goto LABEL_14;
      }

      prompt = &stru_1EFB14550;
    }

    else
    {

      prompt = 0;
    }

    transitionAssistant = [(_UINavigationBarItemStack *)self->_stack transitionAssistant];
    [transitionAssistant setShouldUpdatePromptAfterTransition:1];
  }

LABEL_14:
  [(UINavigationBar *)self _setPrompt:prompt];
}

- (void)_installDefaultAppearance
{
  if (!self->_standardAppearance)
  {
    v3 = [UINavigationBarAppearance alloc];
    traitCollection = [(UIView *)self traitCollection];
    v5 = -[UIBarAppearance initWithIdiom:](v3, "initWithIdiom:", [traitCollection userInterfaceIdiom]);
    standardAppearance = self->_standardAppearance;
    self->_standardAppearance = v5;

    appearanceObserver = [(_UINavigationBarVisualProvider *)self->_visualProvider appearanceObserver];
    v8 = self->_standardAppearance;
    if (v8)
    {
      v9 = appearanceObserver;
      objc_storeWeak(&v8->super._changeObserver, appearanceObserver);
      appearanceObserver = v9;
    }
  }
}

- (UINavigationBarAppearance)standardAppearance
{
  standardAppearance = self->_standardAppearance;
  if (!standardAppearance)
  {
    [(UINavigationBar *)self _installDefaultAppearance];
    standardAppearance = self->_standardAppearance;
  }

  return standardAppearance;
}

- (void)_sendNavigationBarDidChangeStyle
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v5 = objc_opt_respondsToSelector();
    v4 = v6;
    if (v5)
    {
      [v6 _navigationBarDidChangeStyle:self];
      v4 = v6;
    }
  }
}

- (BOOL)_hasFixedMaximumHeight
{
  if ([(_UINavigationBarVisualProvider *)self->_visualProvider wantsLargeTitleDisplayed])
  {
    return 0;
  }

  refreshControlHost = [(_UINavigationBarVisualProvider *)self->_visualProvider refreshControlHost];
  v3 = refreshControlHost == 0;

  return v3;
}

- (id)_accessibility_navigationController
{
  _effectiveDelegate = [(UINavigationBar *)self _effectiveDelegate];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = _effectiveDelegate;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (void)dealloc
{
  [(_UINavigationBarVisualProvider *)self->_visualProvider teardown];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:@"UIAccessibilityButtonShapesEnabledStatusDidChangeNotification" object:0];

  stack = self->_stack;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __26__UINavigationBar_dealloc__block_invoke;
  v6[3] = &unk_1E70F79C0;
  v6[4] = self;
  [(_UINavigationBarItemStack *)stack iterateItems:v6];
  if (self->_navControllerAnimatingContext)
  {
    [(UINavigationBar *)self _reenableUserInteraction];
  }

  v5.receiver = self;
  v5.super_class = UINavigationBar;
  [(UIView *)&v5 dealloc];
}

void __26__UINavigationBar_dealloc__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 _navigationBar];
  v4 = *(a1 + 32);

  if (v3 == v4)
  {
    [v5 _removeTitleAndButtonViews];
    [v5 _setNavigationBar:0];
  }
}

- (void)_fadeAllViewsIn
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = [(_UINavigationBarVisualProvider *)self->_visualProvider _shim_displayViewsIncludingHiddenBackButtonViews:0];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
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

        [*(*(&v7 + 1) + 8 * v6++) setAlpha:1.0];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)_reenableUserInteraction
{
  [(UIView *)self setUserInteractionEnabled:1];
  [(_UIViewControllerTransitionContext *)self->_navControllerAnimatingContext _enableInteractionForDisabledViews];
  navControllerAnimatingContext = self->_navControllerAnimatingContext;
  self->_navControllerAnimatingContext = 0;
}

- (NSString)description
{
  v8.receiver = self;
  v8.super_class = UINavigationBar;
  v3 = [(UIView *)&v8 description];
  v4 = [v3 mutableCopy];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v4 appendFormat:@" delegate=%p", v6];
  }

  if ([objc_opt_class() _forceLegacyVisualProvider])
  {
    [v4 appendFormat:@" forcedLegacyProvider"];
  }

  if (self->_standardAppearance)
  {
    [v4 appendFormat:@" standardAppearance=%p", self->_standardAppearance];
  }

  if (self->_scrollEdgeAppearance)
  {
    [v4 appendFormat:@" scrollEdgeAppearance=%p", self->_scrollEdgeAppearance];
  }

  if (self->_compactAppearance)
  {
    [v4 appendFormat:@" compactAppearance=%p", self->_compactAppearance];
  }

  if (self->_compactScrollEdgeAppearance)
  {
    [v4 appendFormat:@" compactScrollEdgeAppearance=%p", self->_compactScrollEdgeAppearance];
  }

  if ((*&self->_navbarFlags & 0x80) == 0)
  {
    [v4 appendString:@" no-scroll-edge-support"];
  }

  return v4;
}

- (void)_setDecodedUnlockedWithNavigationControllerDelegate:(BOOL)delegate
{
  if (delegate)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_navbarFlags = *&self->_navbarFlags & 0xFDFF | v3;
}

- (void)_performUpdatesIgnoringLock:(id)lock
{
  v4 = *&self->_navbarFlags & 2;
  *&self->_navbarFlags = *&self->_navbarFlags & 0xFFF9 | 4;
  (*(lock + 2))(lock, a2);
  *&self->_navbarFlags = *&self->_navbarFlags & 0xFFF9 | v4;
}

- (void)_applySPIAppearanceToButtons
{
  v15 = *MEMORY[0x1E69E9840];
  subviews = [(UIView *)self subviews];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [subviews countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(subviews);
        }

        v8 = *(*(&v10 + 1) + 8 * v7);
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
        {
          barButtonAppearanceStorage = [(_UINavigationBarAppearanceStorage *)self->_appearanceStorage barButtonAppearanceStorage];
          [v8 _applyBarButtonAppearanceStorage:barButtonAppearanceStorage withTaggedSelectors:0];

          [v8 setNeedsDisplay];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [subviews countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

- (void)_setBackgroundImage:(id)image mini:(id)mini
{
  miniCopy = mini;
  [(UINavigationBar *)self setBackgroundImage:image forBarMetrics:0];
  [(UINavigationBar *)self setBackgroundImage:miniCopy forBarMetrics:1];
}

- (void)_setButtonBackgroundImage:(id)image mini:(id)mini forStates:(unint64_t)states
{
  imageCopy = image;
  miniCopy = mini;
  if (states >= 2)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UINavigationBar.m" lineNumber:474 description:@"Normal and Highlighted (pressed) states are the only supported states"];
  }

  appearanceStorage = self->_appearanceStorage;
  if (!appearanceStorage)
  {
    v11 = objc_alloc_init(_UINavigationBarAppearanceStorage);
    v12 = self->_appearanceStorage;
    self->_appearanceStorage = v11;

    appearanceStorage = self->_appearanceStorage;
  }

  barButtonAppearanceStorage = [(_UINavigationBarAppearanceStorage *)appearanceStorage barButtonAppearanceStorage];
  v14 = [barButtonAppearanceStorage backgroundImageForState:states style:8 isMini:0];
  if (v14 == imageCopy)
  {
    v15 = [barButtonAppearanceStorage backgroundImageForState:states style:8 isMini:1];

    if (v15 == miniCopy)
    {
      goto LABEL_9;
    }
  }

  else
  {
  }

  [barButtonAppearanceStorage setBackgroundImage:imageCopy forState:states style:8 isMini:0];
  [barButtonAppearanceStorage setBackgroundImage:miniCopy forState:states style:8 isMini:1];
  [(UINavigationBar *)self _applySPIAppearanceToButtons];
LABEL_9:
}

- (void)_setBackButtonBackgroundImage:(id)image mini:(id)mini forStates:(unint64_t)states
{
  imageCopy = image;
  miniCopy = mini;
  if (states >= 2)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UINavigationBar.m" lineNumber:490 description:@"Normal and Highlighted (pressed) states are the only supported states"];
  }

  appearanceStorage = self->_appearanceStorage;
  if (!appearanceStorage)
  {
    v11 = objc_alloc_init(_UINavigationBarAppearanceStorage);
    v12 = self->_appearanceStorage;
    self->_appearanceStorage = v11;

    appearanceStorage = self->_appearanceStorage;
  }

  barButtonAppearanceStorage = [(_UINavigationBarAppearanceStorage *)appearanceStorage barButtonAppearanceStorage];
  v14 = [barButtonAppearanceStorage backButtonBackgroundImageForState:states isMini:0];
  if (v14 == imageCopy)
  {
    v15 = [barButtonAppearanceStorage backButtonBackgroundImageForState:states isMini:1];

    if (v15 == miniCopy)
    {
      goto LABEL_9;
    }
  }

  else
  {
  }

  [barButtonAppearanceStorage setBackButtonBackgroundImage:imageCopy forState:states isMini:0];
  [barButtonAppearanceStorage setBackButtonBackgroundImage:miniCopy forState:states isMini:1];
  [(UINavigationBar *)self _applySPIAppearanceToButtons];
LABEL_9:
}

- (void)_setButtonItemTextColor:(id)color shadowColor:(id)shadowColor forState:(unint64_t)state
{
  colorCopy = color;
  shadowColorCopy = shadowColor;
  appearanceStorage = self->_appearanceStorage;
  if (!appearanceStorage)
  {
    v10 = objc_alloc_init(_UINavigationBarAppearanceStorage);
    v11 = self->_appearanceStorage;
    self->_appearanceStorage = v10;

    appearanceStorage = self->_appearanceStorage;
  }

  barButtonAppearanceStorage = [(_UINavigationBarAppearanceStorage *)appearanceStorage barButtonAppearanceStorage];
  v13 = [barButtonAppearanceStorage textAttributesForState:state];
  if (colorCopy || shadowColorCopy || v13)
  {
    v14 = [v13 mutableCopy];
    if (!v14)
    {
      v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    v15 = *off_1E70EC920;
    if (colorCopy)
    {
      [v14 setObject:colorCopy forKey:v15];
    }

    else
    {
      [v14 removeObjectForKey:v15];
    }

    v16 = *off_1E70EC9B0;
    v17 = [v13 objectForKey:*off_1E70EC9B0];
    if (v17)
    {
      if (!shadowColorCopy)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v17 = objc_alloc_init(off_1E70ECB90);
      [v17 setShadowOffset:{0.0, -1.0}];
      [v17 setShadowColor:0];
      if (!shadowColorCopy)
      {
        goto LABEL_19;
      }
    }

    if (state == 1)
    {
      if ([(_UINavigationBarAppearanceStorage *)self->_appearanceStorage reversesShadowOffset])
      {
        v18 = [barButtonAppearanceStorage textAttributeForKey:v16 state:0];
        v19 = v18;
        if (v18)
        {
          [v18 shadowOffset];
        }

        else
        {
          v21 = -1.0;
          v20 = 0.0;
        }

        [v17 setShadowOffset:{-v20, -v21}];
      }

      goto LABEL_23;
    }

LABEL_19:
    if (!shadowColorCopy)
    {
      [v14 removeObjectForKey:v16];
LABEL_24:
      if (([v14 isEqualToDictionary:v13] & 1) == 0)
      {
        [barButtonAppearanceStorage setTextAttributes:v14 forState:state];
        [(UINavigationBar *)self _applySPIAppearanceToButtons];
      }

      goto LABEL_27;
    }

LABEL_23:
    [v14 setObject:v17 forKey:v16];
    goto LABEL_24;
  }

LABEL_27:
}

- (void)_setButtonTextShadowOffset:(CGSize)offset
{
  height = offset.height;
  width = offset.width;
  appearanceStorage = self->_appearanceStorage;
  if (!appearanceStorage)
  {
    v7 = objc_alloc_init(_UINavigationBarAppearanceStorage);
    v8 = self->_appearanceStorage;
    self->_appearanceStorage = v7;

    appearanceStorage = self->_appearanceStorage;
  }

  barButtonAppearanceStorage = [(_UINavigationBarAppearanceStorage *)appearanceStorage barButtonAppearanceStorage];
  v9 = [barButtonAppearanceStorage textAttributesForState:0];
  v10 = [barButtonAppearanceStorage textAttributesForState:1];
  v11 = [v9 mutableCopy];
  if (!v11)
  {
    v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v12 = [v10 mutableCopy];
  if (!v12)
  {
    v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  reversesShadowOffset = [(_UINavigationBarAppearanceStorage *)self->_appearanceStorage reversesShadowOffset];
  v14 = *off_1E70EC9B0;
  v15 = [v9 objectForKey:*off_1E70EC9B0];
  v16 = [v10 objectForKey:v14];
  v17 = v16;
  if (v15)
  {
    if (v16)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v15 = objc_alloc_init(off_1E70ECB90);
    [v15 setShadowColor:0];
    if (v17)
    {
      goto LABEL_9;
    }
  }

  v17 = objc_alloc_init(off_1E70ECB90);
  [v17 setShadowColor:0];
LABEL_9:
  [v15 setShadowOffset:{width, height}];
  v18 = -width;
  v19 = -height;
  if (!reversesShadowOffset)
  {
    v19 = height;
    v18 = width;
  }

  [v17 setShadowOffset:{v18, v19}];
  [v11 setObject:v15 forKey:v14];
  [v12 setObject:v17 forKey:v14];
  if (([v11 isEqualToDictionary:v9] & 1) == 0)
  {
    [barButtonAppearanceStorage setTextAttributes:v11 forState:0];
    if ([v12 isEqual:v10])
    {
LABEL_16:
      [(UINavigationBar *)self _applySPIAppearanceToButtons];
      goto LABEL_17;
    }

LABEL_15:
    [barButtonAppearanceStorage setTextAttributes:v12 forState:1];
    goto LABEL_16;
  }

  if (([v12 isEqual:v10] & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_17:
}

- (void)_setReversesButtonTextShadowOffsetWhenPressed:(BOOL)pressed
{
  pressedCopy = pressed;
  appearanceStorage = self->_appearanceStorage;
  if (pressed)
  {
    if (!appearanceStorage)
    {
      v6 = objc_alloc_init(_UINavigationBarAppearanceStorage);
      v7 = self->_appearanceStorage;
      self->_appearanceStorage = v6;

      appearanceStorage = self->_appearanceStorage;
    }
  }

  else if (!appearanceStorage)
  {
    return;
  }

  barButtonAppearanceStorage = [(_UINavigationBarAppearanceStorage *)appearanceStorage barButtonAppearanceStorage];
  v8 = [barButtonAppearanceStorage textAttributesForState:0];
  v9 = [barButtonAppearanceStorage textAttributesForState:1];
  v10 = v9;
  if (pressedCopy || (!v8 ? (v11 = v9 == 0) : (v11 = 0), !v11))
  {
    v12 = [v9 mutableCopy];
    if (!v12)
    {
      v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    [(_UINavigationBarAppearanceStorage *)self->_appearanceStorage setReversesShadowOffset:pressedCopy];
    v13 = *off_1E70EC9B0;
    v14 = [v8 objectForKey:*off_1E70EC9B0];
    v15 = [v10 objectForKey:v13];
    if (v15)
    {
      if (v14)
      {
LABEL_14:
        [v14 shadowOffset];
LABEL_18:
        v18 = -v16;
        v19 = -v17;
        if (pressedCopy)
        {
          v16 = -v16;
          v17 = -v17;
        }

        [v15 setShadowOffset:{v16, v17, v18, v19}];
        [v12 setObject:v15 forKey:v13];
        if (([v12 isEqual:v10] & 1) == 0)
        {
          [barButtonAppearanceStorage setTextAttributes:v12 forState:1];
          [(UINavigationBar *)self _applySPIAppearanceToButtons];
        }

        goto LABEL_23;
      }
    }

    else
    {
      v15 = objc_alloc_init(off_1E70ECB90);
      [v15 setShadowColor:0];
      if (v14)
      {
        goto LABEL_14;
      }
    }

    v17 = -1.0;
    v16 = 0.0;
    goto LABEL_18;
  }

LABEL_23:
}

- (id)_backgroundViewForPalette:(id)palette
{
  paletteCopy = palette;
  v4 = [_UIBarBackground alloc];
  [paletteCopy bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = [(_UIBarBackground *)v4 initWithFrame:v6, v8, v10, v12];
  [(_UIBarBackground *)v13 setTopAligned:1];
  v14 = objc_alloc_init(_UIBarBackgroundLayoutLegacy);
  [(_UIBarBackground *)v13 setLayout:v14];

  return v13;
}

- (void)_palette:(id)_palette isAttaching:(BOOL)attaching didComplete:(BOOL)complete
{
  if (attaching)
  {
    [(UINavigationBar *)self _updatePalette:_palette, attaching, complete];
  }
}

- (id)_effectiveDelegateForItem:(id)item
{
  itemCopy = item;
  if ((*&self->_navbarFlags & 0x40) == 0 || (v5 = objc_loadWeakRetained(&self->_delegate), [v5 _effectiveDelegateForNavigationItem:itemCopy], WeakRetained = objc_claimAutoreleasedReturnValue(), v5, !WeakRetained))
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
  }

  return WeakRetained;
}

- (double)_heightIncludingBackground
{
  if (self->_barPosition == 3)
  {
    visualProvider = self->_visualProvider;

    [(_UINavigationBarVisualProvider *)visualProvider _shim_backgroundHeight];
  }

  else
  {
    [(UIView *)self frame:v2];
    return v6;
  }

  return result;
}

- (void)_setBackdropViewLayerGroupName:(id)name
{
  nameCopy = name;
  traitOverrides = [(UIView *)self traitOverrides];
  v5 = objc_opt_self();
  if (nameCopy)
  {
    [traitOverrides setObject:nameCopy forTrait:v5];
  }

  else
  {
    v6 = [traitOverrides containsTrait:v5];

    if (!v6)
    {
      goto LABEL_6;
    }

    traitOverrides = [(UIView *)self traitOverrides];
    v5 = objc_opt_self();
    [traitOverrides removeTrait:v5];
  }

LABEL_6:
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)key
{
  keyCopy = key;
  if ([keyCopy hasPrefix:@"filters"])
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = UINavigationBar;
    v5 = [(UIView *)&v7 _shouldAnimatePropertyWithKey:keyCopy];
  }

  return v5;
}

- (void)setBackIndicatorImage:(UIImage *)backIndicatorImage
{
  v4 = backIndicatorImage;
  appearanceStorage = self->_appearanceStorage;
  if (v4 | appearanceStorage)
  {
    v9 = v4;
    if (!appearanceStorage)
    {
      v6 = objc_alloc_init(_UINavigationBarAppearanceStorage);
      v7 = self->_appearanceStorage;
      self->_appearanceStorage = v6;

      appearanceStorage = self->_appearanceStorage;
    }

    backIndicatorImage = [(_UINavigationBarAppearanceStorage *)appearanceStorage backIndicatorImage];

    v4 = v9;
    if (backIndicatorImage != v9)
    {
      [(_UINavigationBarAppearanceStorage *)self->_appearanceStorage setBackIndicatorImage:v9];
      [(_UINavigationBarVisualProvider *)self->_visualProvider changeAppearance];
      v4 = v9;
    }
  }
}

- (void)setBackIndicatorTransitionMaskImage:(UIImage *)backIndicatorTransitionMaskImage
{
  v4 = backIndicatorTransitionMaskImage;
  appearanceStorage = self->_appearanceStorage;
  if (v4 | appearanceStorage)
  {
    v9 = v4;
    if (!appearanceStorage)
    {
      v6 = objc_alloc_init(_UINavigationBarAppearanceStorage);
      v7 = self->_appearanceStorage;
      self->_appearanceStorage = v6;

      appearanceStorage = self->_appearanceStorage;
    }

    backIndicatorTransitionMaskImage = [(_UINavigationBarAppearanceStorage *)appearanceStorage backIndicatorTransitionMaskImage];

    v4 = v9;
    if (backIndicatorTransitionMaskImage != v9)
    {
      [(_UINavigationBarAppearanceStorage *)self->_appearanceStorage setBackIndicatorTransitionMaskImage:v9];
      [(_UINavigationBarVisualProvider *)self->_visualProvider changeAppearance];
      v4 = v9;
    }
  }
}

- (double)_backIndicatorLeftMargin
{
  backIndicatorLeftMargin = [(_UINavigationBarAppearanceStorage *)self->_appearanceStorage backIndicatorLeftMargin];
  [backIndicatorLeftMargin doubleValue];
  v4 = v3;

  return v4;
}

- (void)_setBackIndicatorLeftMargin:(double)margin
{
  appearanceStorage = self->_appearanceStorage;
  if (!appearanceStorage)
  {
    v6 = objc_alloc_init(_UINavigationBarAppearanceStorage);
    v7 = self->_appearanceStorage;
    self->_appearanceStorage = v6;

    appearanceStorage = self->_appearanceStorage;
  }

  backIndicatorLeftMargin = [(_UINavigationBarAppearanceStorage *)appearanceStorage backIndicatorLeftMargin];
  [backIndicatorLeftMargin doubleValue];
  v10 = v9;

  if (v10 != margin)
  {
    v11 = self->_appearanceStorage;
    v12 = [MEMORY[0x1E696AD98] numberWithDouble:margin];
    [(_UINavigationBarAppearanceStorage *)v11 setBackIndicatorLeftMargin:v12];

    [(UINavigationBar *)self setNeedsLayout];
  }
}

- (double)_effectiveBackIndicatorLeftMargin
{
  backIndicatorImage = [(_UINavigationBarAppearanceStorage *)self->_appearanceStorage backIndicatorImage];
  if (backIndicatorImage)
  {
    v4 = backIndicatorImage;
    backIndicatorTransitionMaskImage = [(_UINavigationBarAppearanceStorage *)self->_appearanceStorage backIndicatorTransitionMaskImage];
    if (backIndicatorTransitionMaskImage)
    {
      v6 = backIndicatorTransitionMaskImage;
      backIndicatorLeftMargin = [(_UINavigationBarAppearanceStorage *)self->_appearanceStorage backIndicatorLeftMargin];

      if (backIndicatorLeftMargin)
      {
        backIndicatorLeftMargin2 = [(_UINavigationBarAppearanceStorage *)self->_appearanceStorage backIndicatorLeftMargin];
        [backIndicatorLeftMargin2 doubleValue];
        v10 = v9;
        goto LABEL_9;
      }
    }

    else
    {
    }
  }

  backIndicatorLeftMargin2 = [(UINavigationBar *)self _currentVisualStyle];
  [(UIView *)self _contentMargin];
  v12 = v11;
  [backIndicatorLeftMargin2 horizontalMarginAdjustment];
  v14 = v12 - v13;
  if (v14 >= 0.0)
  {
    v10 = v14;
  }

  else
  {
    v10 = 0.0;
  }

LABEL_9:

  return v10;
}

- (void)setSemanticContentAttribute:(int64_t)attribute
{
  v5.receiver = self;
  v5.super_class = UINavigationBar;
  [(UIView *)&v5 setSemanticContentAttribute:?];
  [(_UINavigationBarVisualProvider *)self->_visualProvider setSemanticContentAttribute:attribute];
}

- (void)_setAccessibilityButtonBackgroundTintColor:(id)color
{
  colorCopy = color;
  if (self->_accessibilityButtonBackgroundTintColor != colorCopy)
  {
    v6 = colorCopy;
    objc_storeStrong(&self->_accessibilityButtonBackgroundTintColor, color);
    [(UINavigationBar *)self _accessibilityButtonShapesParametersDidChange];
    colorCopy = v6;
  }
}

- (void)_updateAppearancesForNewVisualProvider
{
  [(UINavigationBar *)self _installDefaultAppearance];
  appearanceObserver = [(_UINavigationBarVisualProvider *)self->_visualProvider appearanceObserver];
  standardAppearance = self->_standardAppearance;
  if (standardAppearance)
  {
    objc_storeWeak(&standardAppearance->super._changeObserver, appearanceObserver);
  }

  appearanceObserver2 = [(_UINavigationBarVisualProvider *)self->_visualProvider appearanceObserver];
  compactAppearance = self->_compactAppearance;
  if (compactAppearance)
  {
    objc_storeWeak(&compactAppearance->super._changeObserver, appearanceObserver2);
  }

  appearanceObserver3 = [(_UINavigationBarVisualProvider *)self->_visualProvider appearanceObserver];
  scrollEdgeAppearance = self->_scrollEdgeAppearance;
  if (scrollEdgeAppearance)
  {
    objc_storeWeak(&scrollEdgeAppearance->super._changeObserver, appearanceObserver3);
  }

  appearanceObserver4 = [(_UINavigationBarVisualProvider *)self->_visualProvider appearanceObserver];
  compactScrollEdgeAppearance = self->_compactScrollEdgeAppearance;
  if (compactScrollEdgeAppearance)
  {
    objc_storeWeak(&compactScrollEdgeAppearance->super._changeObserver, appearanceObserver4);
  }

  if ((*&self->_navbarFlags & 0x800) != 0)
  {
    [(UINavigationBar *)self _upgradeAppearanceAPI];
  }

  [(UINavigationBar *)self setNeedsLayout];
}

- (void)setCompactAppearance:(UINavigationBarAppearance *)compactAppearance
{
  v4 = compactAppearance;
  v5 = self->_compactAppearance;
  v6 = v4;
  v17 = v6;
  if (v5 == v6)
  {

LABEL_17:
    *&self->_navbarFlags |= 0x800u;
    [(UINavigationBar *)self _upgradeAppearanceAPI];
    goto LABEL_18;
  }

  if (v6 && v5)
  {
    v7 = [(UIBarAppearance *)v5 isEqual:v6];

    if (v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v8 = self->_compactAppearance;
  if (v8)
  {
    objc_storeWeak(&v8->super._changeObserver, 0);
  }

  v9 = [(UIBarAppearance *)v17 copy];
  v10 = self->_compactAppearance;
  self->_compactAppearance = v9;

  [(UINavigationBar *)self _installDefaultAppearance];
  appearanceObserver = [(_UINavigationBarVisualProvider *)self->_visualProvider appearanceObserver];
  v12 = self->_compactAppearance;
  if (v12)
  {
    objc_storeWeak(&v12->super._changeObserver, appearanceObserver);
  }

  if (!_UIBarsApplyChromelessEverywhere() || ![(UINavigationBar *)self isMinibar])
  {
    goto LABEL_17;
  }

  stack = [(_UINavigationBarVisualProvider *)self->_visualProvider stack];
  topEntry = [stack topEntry];
  activeLayout = [topEntry activeLayout];
  if (activeLayout)
  {
    v16 = activeLayout[36];

    *&self->_navbarFlags |= 0x800u;
    [(UINavigationBar *)self _upgradeAppearanceAPI];
    if (v16 == 1.0)
    {
      goto LABEL_18;
    }
  }

  else
  {

    *&self->_navbarFlags |= 0x800u;
    [(UINavigationBar *)self _upgradeAppearanceAPI];
  }

  [(UINavigationBar *)self setNeedsLayout];
LABEL_18:
}

- (void)setStandardAppearance:(UINavigationBarAppearance *)standardAppearance
{
  v4 = standardAppearance;
  v5 = self->_standardAppearance;
  v6 = v4;
  v17 = v6;
  if (v5 == v6)
  {

LABEL_16:
    *&self->_navbarFlags |= 0x800u;
    [(UINavigationBar *)self _upgradeAppearanceAPI];
    goto LABEL_17;
  }

  if (v6 && v5)
  {
    v7 = [(UIBarAppearance *)v5 isEqual:v6];

    if (v7)
    {
      goto LABEL_16;
    }
  }

  else
  {
  }

  v8 = self->_standardAppearance;
  if (v8)
  {
    objc_storeWeak(&v8->super._changeObserver, 0);
  }

  v9 = [(UIBarAppearance *)v17 copy];
  v10 = self->_standardAppearance;
  self->_standardAppearance = v9;

  [(UINavigationBar *)self _installDefaultAppearance];
  appearanceObserver = [(_UINavigationBarVisualProvider *)self->_visualProvider appearanceObserver];
  v12 = self->_standardAppearance;
  if (v12)
  {
    objc_storeWeak(&v12->super._changeObserver, appearanceObserver);
  }

  if (!_UIBarsApplyChromelessEverywhere())
  {
    goto LABEL_16;
  }

  stack = [(_UINavigationBarVisualProvider *)self->_visualProvider stack];
  topEntry = [stack topEntry];
  activeLayout = [topEntry activeLayout];
  if (activeLayout)
  {
    v16 = activeLayout[36];

    *&self->_navbarFlags |= 0x800u;
    [(UINavigationBar *)self _upgradeAppearanceAPI];
    if (v16 == 1.0)
    {
      goto LABEL_17;
    }
  }

  else
  {

    *&self->_navbarFlags |= 0x800u;
    [(UINavigationBar *)self _upgradeAppearanceAPI];
  }

  [(UINavigationBar *)self setNeedsLayout];
LABEL_17:
}

- (void)setScrollEdgeAppearance:(UINavigationBarAppearance *)scrollEdgeAppearance
{
  v4 = scrollEdgeAppearance;
  stack = self->_scrollEdgeAppearance;
  v6 = v4;
  v16 = v6;
  if (stack == v6)
  {

LABEL_7:
LABEL_17:
    *&self->_navbarFlags |= 0x800u;
    [(UINavigationBar *)self _upgradeAppearanceAPI];
    goto LABEL_18;
  }

  if (v6 && stack)
  {
    v7 = [(UIBarAppearance *)stack isEqual:v6];

    if (v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v8 = self->_scrollEdgeAppearance;
  if (v8)
  {
    objc_storeWeak(&v8->super._changeObserver, 0);
  }

  v9 = [(UIBarAppearance *)v16 copy];
  v10 = self->_scrollEdgeAppearance;
  self->_scrollEdgeAppearance = v9;

  [(UINavigationBar *)self _installDefaultAppearance];
  appearanceObserver = [(_UINavigationBarVisualProvider *)self->_visualProvider appearanceObserver];
  v12 = self->_scrollEdgeAppearance;
  if (v12)
  {
    objc_storeWeak(&v12->super._changeObserver, appearanceObserver);
  }

  if (!_UIBarsApplyChromelessEverywhere())
  {
    goto LABEL_17;
  }

  stack = [(_UINavigationBarVisualProvider *)self->_visualProvider stack];
  topEntry = [(UINavigationBarAppearance *)stack topEntry];
  activeLayout = [topEntry activeLayout];
  if (!activeLayout)
  {

    goto LABEL_7;
  }

  v15 = activeLayout[36];

  *&self->_navbarFlags |= 0x800u;
  [(UINavigationBar *)self _upgradeAppearanceAPI];
  if (v15 == 1.0)
  {
    [(UINavigationBar *)self setNeedsLayout];
  }

LABEL_18:
}

- (void)setCompactScrollEdgeAppearance:(UINavigationBarAppearance *)compactScrollEdgeAppearance
{
  v4 = compactScrollEdgeAppearance;
  stack = self->_compactScrollEdgeAppearance;
  v6 = v4;
  v16 = v6;
  if (stack == v6)
  {

LABEL_7:
LABEL_18:
    *&self->_navbarFlags |= 0x800u;
    [(UINavigationBar *)self _upgradeAppearanceAPI];
    goto LABEL_19;
  }

  if (v6 && stack)
  {
    v7 = [(UIBarAppearance *)stack isEqual:v6];

    if (v7)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  v8 = self->_compactScrollEdgeAppearance;
  if (v8)
  {
    objc_storeWeak(&v8->super._changeObserver, 0);
  }

  v9 = [(UIBarAppearance *)v16 copy];
  v10 = self->_compactScrollEdgeAppearance;
  self->_compactScrollEdgeAppearance = v9;

  [(UINavigationBar *)self _installDefaultAppearance];
  appearanceObserver = [(_UINavigationBarVisualProvider *)self->_visualProvider appearanceObserver];
  v12 = self->_compactScrollEdgeAppearance;
  if (v12)
  {
    objc_storeWeak(&v12->super._changeObserver, appearanceObserver);
  }

  if (!_UIBarsApplyChromelessEverywhere() || ![(UINavigationBar *)self isMinibar])
  {
    goto LABEL_18;
  }

  stack = [(_UINavigationBarVisualProvider *)self->_visualProvider stack];
  topEntry = [(UINavigationBarAppearance *)stack topEntry];
  activeLayout = [topEntry activeLayout];
  if (!activeLayout)
  {

    goto LABEL_7;
  }

  v15 = activeLayout[36];

  *&self->_navbarFlags |= 0x800u;
  [(UINavigationBar *)self _upgradeAppearanceAPI];
  if (v15 == 1.0)
  {
    [(UINavigationBar *)self setNeedsLayout];
  }

LABEL_19:
}

- (void)setTintColor:(UIColor *)tintColor
{
  v3.receiver = self;
  v3.super_class = UINavigationBar;
  [(UIView *)&v3 setTintColor:tintColor];
}

- (void)setBarTintColor:(UIColor *)barTintColor
{
  v8 = barTintColor;
  v5 = [(UIColor *)v8 isEqual:self->_barTintColor];
  v6 = v8;
  if (!v5 && self->_barTintColor != v8)
  {
    _effectiveBarTintColor = [(UINavigationBar *)self _effectiveBarTintColor];
    objc_storeStrong(&self->_barTintColor, barTintColor);
    [(UINavigationBar *)self _effectiveBarTintColorDidChangeWithPreviousColor:_effectiveBarTintColor];

    v6 = v8;
  }
}

- (void)_effectiveBarTintColorDidChangeWithPreviousColor:(id)color
{
  colorCopy = color;
  _effectiveBarTintColor = [(UINavigationBar *)self _effectiveBarTintColor];
  v5 = [colorCopy isEqual:_effectiveBarTintColor];

  if ((v5 & 1) == 0)
  {
    [(UINavigationBar *)self _propagateEffectiveBarTintColorWithPreviousColor:colorCopy];
  }

  if (![(UINavigationBar *)self isTranslucent])
  {
    [(UINavigationBar *)self _setNeedsBackgroundViewUpdate];
  }
}

- (UIImage)backgroundImageForBarMetrics:(UIBarMetrics)barMetrics
{
  appearanceStorage = self->_appearanceStorage;
  if ((barMetrics - 101) >= 2)
  {
    v4 = UIBarMetricsDefault;
  }

  else
  {
    v4 = barMetrics;
  }

  if (barMetrics >= 2)
  {
    v5 = v4;
  }

  else
  {
    v5 = barMetrics;
  }

  return [(_UIBarAppearanceStorage *)appearanceStorage backgroundImageForBarPosition:0 barMetrics:v5];
}

- (void)setBackgroundImage:(UIImage *)backgroundImage forBarPosition:(UIBarPosition)barPosition barMetrics:(UIBarMetrics)barMetrics
{
  v8 = backgroundImage;
  v9 = v8;
  if (barPosition == 4)
  {
    if (byte_1ED49AAA9)
    {
      goto LABEL_23;
    }

    byte_1ED49AAA9 = 1;
    v10 = "(UIBarPosition)UIBarPositionBottomAttached";
    goto LABEL_7;
  }

  if (barPosition == UIBarPositionBottom)
  {
    if (_MergedGlobals_53)
    {
      goto LABEL_23;
    }

    _MergedGlobals_53 = 1;
    v10 = "UIBarPositionBottom";
LABEL_7:
    v18 = v8;
    NSLog(&cfstr_SCustomization_0.isa, "UINavigationBar", @"background image", v10);
LABEL_21:
    v9 = v18;
    goto LABEL_23;
  }

  appearanceStorage = self->_appearanceStorage;
  if (v8 | appearanceStorage)
  {
    v18 = v8;
    if (!appearanceStorage)
    {
      v12 = objc_alloc_init(_UINavigationBarAppearanceStorage);
      v13 = self->_appearanceStorage;
      self->_appearanceStorage = v12;

      v9 = v18;
    }

    if (([v9 _isResizable] & 1) == 0)
    {
      [v18 size];
      if (v14 > 1.0)
      {
        v15 = [v18 resizableImageWithCapInsets:{0.0, 0.0, 0.0, 0.0}];

        v18 = v15;
      }
    }

    if ((barMetrics - 101) >= 2)
    {
      v16 = UIBarMetricsDefault;
    }

    else
    {
      v16 = barMetrics;
    }

    if (barMetrics >= 2)
    {
      barMetrics = v16;
    }

    v17 = [(_UIBarAppearanceStorage *)self->_appearanceStorage backgroundImageForBarPosition:barPosition barMetrics:barMetrics];

    v9 = v18;
    if (v18 != v17)
    {
      [(_UIBarAppearanceStorage *)self->_appearanceStorage setBackgroundImage:v18 forBarPosition:barPosition barMetrics:barMetrics];
      [(UINavigationBar *)self _setNeedsBackgroundViewUpdate];
      [(UIView *)self _updateNeedsDisplayOnBoundsChange];
      [(UINavigationBar *)self _sendNavigationBarDidChangeStyle];
      goto LABEL_21;
    }
  }

  else
  {
    v9 = 0;
  }

LABEL_23:
}

- (UIImage)backgroundImageForBarPosition:(UIBarPosition)barPosition barMetrics:(UIBarMetrics)barMetrics
{
  if (barPosition == 4)
  {
    if ((byte_1ED49AAAB & 1) == 0)
    {
      byte_1ED49AAAB = 1;
      v4 = "(UIBarPosition)UIBarPositionBottomAttached";
      goto LABEL_7;
    }

LABEL_8:
    v5 = 0;
    goto LABEL_10;
  }

  if (barPosition == UIBarPositionBottom)
  {
    if ((byte_1ED49AAAA & 1) == 0)
    {
      byte_1ED49AAAA = 1;
      v4 = "UIBarPositionBottom";
LABEL_7:
      NSLog(&cfstr_SCustomization_0.isa, a2, "UINavigationBar", @"background image", v4);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  v5 = [_UIBarAppearanceStorage backgroundImageForBarPosition:"backgroundImageForBarPosition:barMetrics:" barMetrics:?];
LABEL_10:

  return v5;
}

- (void)setTitleTextAttributes:(NSDictionary *)titleTextAttributes
{
  v4 = titleTextAttributes;
  appearanceStorage = self->_appearanceStorage;
  if (!(v4 | appearanceStorage))
  {
    return;
  }

  v6 = v4;
  if (!appearanceStorage)
  {
    v7 = objc_alloc_init(_UINavigationBarAppearanceStorage);
    v8 = self->_appearanceStorage;
    self->_appearanceStorage = v7;
  }

  _ui_attributesForDictionaryContainingUIStringDrawingKeys = [v6 _ui_attributesForDictionaryContainingUIStringDrawingKeys];

  textAttributes = [(_UINavigationBarAppearanceStorage *)self->_appearanceStorage textAttributes];
  v10 = textAttributes;
  if (textAttributes)
  {
    v11 = _ui_attributesForDictionaryContainingUIStringDrawingKeys == 0;
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    [(_UINavigationBarAppearanceStorage *)self->_appearanceStorage setTextAttributes:0];
    goto LABEL_18;
  }

  if (textAttributes)
  {
    v12 = _ui_attributesForDictionaryContainingUIStringDrawingKeys == 0;
  }

  else
  {
    v12 = 1;
  }

  if (!v12)
  {
    v13 = [_ui_attributesForDictionaryContainingUIStringDrawingKeys isEqualToDictionary:textAttributes];
    [(_UINavigationBarAppearanceStorage *)self->_appearanceStorage setTextAttributes:_ui_attributesForDictionaryContainingUIStringDrawingKeys];
    if (v13)
    {
      goto LABEL_19;
    }

LABEL_18:
    [(_UINavigationBarVisualProvider *)self->_visualProvider changeAppearance];
    goto LABEL_19;
  }

  [(_UINavigationBarAppearanceStorage *)self->_appearanceStorage setTextAttributes:_ui_attributesForDictionaryContainingUIStringDrawingKeys];
  if (_ui_attributesForDictionaryContainingUIStringDrawingKeys && !v10)
  {
    goto LABEL_18;
  }

LABEL_19:
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v11.receiver = self;
  v11.super_class = UINavigationBar;
  [(UIView *)&v11 traitCollectionDidChange:changeCopy];
  userInterfaceIdiom = [changeCopy userInterfaceIdiom];
  traitCollection = [(UIView *)self traitCollection];
  userInterfaceIdiom2 = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom == userInterfaceIdiom2)
  {
    v8 = 0;
  }

  else
  {
    v8 = [objc_opt_class() _visualProviderForNavigationBar:self];
    if (([v8 isMemberOfClass:objc_opt_class()] & 1) == 0)
    {
      isLocked = [(UINavigationBar *)self isLocked];
      [(_UINavigationBarVisualProvider *)self->_visualProvider teardown];
      objc_storeStrong(&self->_visualProvider, v8);
      _isAlwaysHidden = [(UINavigationBar *)self _isAlwaysHidden];
      [(UINavigationBar *)self _updateOpacity];
      if (!_isAlwaysHidden)
      {
        -[_UINavigationBarVisualProvider _shim_setUseContentView:](self->_visualProvider, "_shim_setUseContentView:", [objc_opt_class() _supportsCanvasView]);
      }

      [(_UINavigationBarVisualProvider *)self->_visualProvider prepare];
      [(_UINavigationBarVisualProvider *)self->_visualProvider setStack:self->_stack];
      [(_UINavigationBarVisualProvider *)self->_visualProvider updateTopNavigationItemAnimated:0];
      [(_UINavigationBarVisualProvider *)self->_visualProvider updateTopNavigationItemTitleView];
      [(UINavigationBar *)self _updateAppearancesForNewVisualProvider];
      [(UINavigationBar *)self setLocked:isLocked];
      [(UINavigationBar *)self setNeedsLayout];
      [(UIView *)self layoutIfNeeded];
    }
  }

  [(_UINavigationBarVisualProvider *)self->_visualProvider traitCollectionDidChange:changeCopy];
}

- (void)_traitCollectionDidChangeOnSubtreeInternal:(const _UITraitCollectionChangeDescription *)internal
{
  v5.receiver = self;
  v5.super_class = UINavigationBar;
  [(UIView *)&v5 _traitCollectionDidChangeOnSubtreeInternal:?];
  [(_UINavigationBarVisualProvider *)self->_visualProvider traitCollectionDidChangeOnSubtree:internal->var0];
}

- (id)_traitCollectionForChildEnvironment:(id)environment
{
  v8.receiver = self;
  v8.super_class = UINavigationBar;
  environmentCopy = environment;
  v5 = [(UIView *)&v8 _traitCollectionForChildEnvironment:environmentCopy];
  v6 = [(_UINavigationBarVisualProvider *)self->_visualProvider traitCollectionForChild:environmentCopy baseTraitCollection:v5, v8.receiver, v8.super_class];

  return v6;
}

- (void)setTitleVerticalPositionAdjustment:(CGFloat)adjustment forBarMetrics:(UIBarMetrics)barMetrics
{
  appearanceStorage = self->_appearanceStorage;
  if (adjustment != 0.0 || appearanceStorage != 0)
  {
    if (!appearanceStorage)
    {
      v9 = objc_alloc_init(_UINavigationBarAppearanceStorage);
      v10 = self->_appearanceStorage;
      self->_appearanceStorage = v9;

      appearanceStorage = self->_appearanceStorage;
    }

    [(_UINavigationBarAppearanceStorage *)appearanceStorage titleVerticalAdjustmentForBarMetrics:barMetrics];
    if (v11 != adjustment)
    {
      [(_UINavigationBarAppearanceStorage *)self->_appearanceStorage setTitleVerticalAdjustment:barMetrics forBarMetrics:adjustment];

      [(UINavigationBar *)self setNeedsLayout];
    }
  }
}

- (void)setShadowImage:(UIImage *)shadowImage
{
  v4 = shadowImage;
  appearanceStorage = self->_appearanceStorage;
  if (v4 | appearanceStorage)
  {
    v6 = v4;
    v13 = v4;
    if (!appearanceStorage)
    {
      v7 = objc_alloc_init(_UINavigationBarAppearanceStorage);
      v8 = self->_appearanceStorage;
      self->_appearanceStorage = v7;

      v6 = v13;
    }

    if (([v6 _isResizable] & 1) == 0)
    {
      [v13 size];
      if (v9 > 1.0)
      {
        v10 = [v13 resizableImageWithCapInsets:{0.0, 0.0, 0.0, 0.0}];

        v13 = v10;
      }
    }

    shadowImage = [(_UINavigationBarAppearanceStorage *)self->_appearanceStorage shadowImage];

    v12 = v13;
    if (v13 != shadowImage)
    {
      [(_UINavigationBarAppearanceStorage *)self->_appearanceStorage setShadowImage:v13];
      [(UINavigationBar *)self _setNeedsBackgroundViewUpdate];
      v12 = v13;
    }
  }

  else
  {
    v12 = 0;
  }
}

- (void)_setHidesShadow:(BOOL)shadow
{
  shadowCopy = shadow;
  appearanceStorage = self->_appearanceStorage;
  if (!appearanceStorage)
  {
    v6 = objc_alloc_init(_UINavigationBarAppearanceStorage);
    v7 = self->_appearanceStorage;
    self->_appearanceStorage = v6;

    appearanceStorage = self->_appearanceStorage;
  }

  if ([(_UINavigationBarAppearanceStorage *)appearanceStorage hidesShadow]!= shadowCopy)
  {
    [(_UINavigationBarAppearanceStorage *)self->_appearanceStorage setHidesShadow:shadowCopy];
    visualProvider = self->_visualProvider;

    [(_UINavigationBarVisualProvider *)visualProvider changeAppearance];
  }
}

- (void)_setDeferShadowToSearchBar:(BOOL)bar
{
  barCopy = bar;
  appearanceStorage = self->_appearanceStorage;
  if (!appearanceStorage)
  {
    v6 = objc_alloc_init(_UINavigationBarAppearanceStorage);
    v7 = self->_appearanceStorage;
    self->_appearanceStorage = v6;

    appearanceStorage = self->_appearanceStorage;
  }

  if ([(_UINavigationBarAppearanceStorage *)appearanceStorage deferShadowToSearchBar]!= barCopy)
  {
    [(_UINavigationBarAppearanceStorage *)self->_appearanceStorage setDeferShadowToSearchBar:barCopy];
    visualProvider = self->_visualProvider;
    v9 = 1.0;
    if (barCopy)
    {
      v9 = 0.0;
    }

    [(_UINavigationBarVisualProvider *)visualProvider _shim_setShadowAlpha:v9];
  }
}

- (void)_setAlwaysUseDefaultMetrics:(BOOL)metrics
{
  if (self->_alwaysUseDefaultMetrics != metrics)
  {
    self->_alwaysUseDefaultMetrics = metrics;
    [(UINavigationBar *)self setNeedsLayout];
  }
}

+ (id)_defaultVisualStyleForOrientation:(int64_t)orientation
{
  if (qword_1ED49AAB8 != -1)
  {
    dispatch_once(&qword_1ED49AAB8, &__block_literal_global_64);
  }

  [qword_1ED49AAB0 setMetrics:_UIUseMiniHeightInLandscape((orientation - 3) < 2)];
  [qword_1ED49AAB0 setInPopover:0];
  v4 = qword_1ED49AAB0;

  return v4;
}

void __53__UINavigationBar__defaultVisualStyleForOrientation___block_invoke()
{
  v0 = [_UINavigationBarVisualStyle visualStyleForIdiom:-1];
  v1 = qword_1ED49AAB0;
  qword_1ED49AAB0 = v0;
}

- (id)_currentVisualStyle
{
  if (([(_UINavigationBarVisualProvider *)self->_visualProvider _shim]& 1) != 0)
  {
    visualStyle = self->_visualStyle;
    if (!visualStyle)
    {
      _screen = [(UIView *)self _screen];
      v5 = _screen;
      if (_screen)
      {
        _userInterfaceIdiom = [_screen _userInterfaceIdiom];
      }

      else
      {
        _userInterfaceIdiom = -1;
      }

      v9 = [_UINavigationBarVisualStyle visualStyleForIdiom:_userInterfaceIdiom];
      v10 = self->_visualStyle;
      self->_visualStyle = v9;

      visualStyle = self->_visualStyle;
    }

    v8 = visualStyle;
  }

  else
  {
    if (os_variant_has_internal_diagnostics())
    {
      v12 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v12, OS_LOG_TYPE_FAULT, "Requesting visual style in an implementation that has disabled it, returning nil. Behavior of caller is undefined.", buf, 2u);
      }
    }

    else
    {
      v7 = *(__UILogGetCategoryCachedImpl("Assert", &_currentVisualStyle___s_category) + 8);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *v13 = 0;
        _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_ERROR, "Requesting visual style in an implementation that has disabled it, returning nil. Behavior of caller is undefined.", v13, 2u);
      }
    }

    v8 = 0;
  }

  return v8;
}

- (double)defaultBackButtonAlignmentHeight
{
  _currentVisualStyle = [(UINavigationBar *)self _currentVisualStyle];
  [_currentVisualStyle buttonHeight];
  v5 = v4;
  currentBackButton = [(UINavigationBar *)self currentBackButton];
  isMinibar = [(UINavigationBar *)self isMinibar];
  if ([currentBackButton _wantsAccessibilityButtonShapes])
  {
    _UINavigationButtonAccessibilityBackground(1, isMinibar);
  }

  else
  {
    [currentBackButton _backButtonBackgroundImageForState:0 barMetrics:isMinibar];
  }
  v8 = ;
  v9 = v8;
  if (v8)
  {
    [v8 alignmentRectInsets];
    v11 = v10;
    v13 = v12;
    [v9 size];
    v5 = v14 - (v11 + v13);
  }

  return v5;
}

- (double)defaultHeightForMetrics:(int64_t)metrics
{
  _currentVisualStyle = [(UINavigationBar *)self _currentVisualStyle];
  v5 = _currentVisualStyle;
  if (_currentVisualStyle)
  {
    [_currentVisualStyle barHeightForMetrics:metrics];
    v7 = v6;
  }

  else
  {
    if (os_variant_has_internal_diagnostics())
    {
      v10 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v10, OS_LOG_TYPE_FAULT, "defaultHeightForMetrics: should be avoided as it does not handle many cases for layout of modern bars. If you think you need this, please discuss with UIKit.", buf, 2u);
      }
    }

    else
    {
      v8 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED49AAC0) + 8);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *v11 = 0;
        _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_ERROR, "defaultHeightForMetrics: should be avoided as it does not handle many cases for layout of modern bars. If you think you need this, please discuss with UIKit.", v11, 2u);
      }
    }

    if (qword_1ED49AAC8 != -1)
    {
      dispatch_once(&qword_1ED49AAC8, &__block_literal_global_255);
    }

    v7 = 0.0;
    if (byte_1ED49AAAC == 1)
    {
      if (metrics)
      {
        v7 = 32.0;
      }

      else if (_UIBarsUseNewPadHeights())
      {
        v7 = 50.0;
      }

      else
      {
        v7 = 44.0;
      }
    }
  }

  return v7;
}

void __43__UINavigationBar_defaultHeightForMetrics___block_invoke()
{
  v0 = [MEMORY[0x1E696AAE8] mainBundle];
  v1 = [v0 bundleIdentifier];

  byte_1ED49AAAC = [&unk_1EFE2B500 containsObject:v1];
}

- (CGSize)defaultSizeForOrientation:(int64_t)orientation
{
  _currentVisualStyle = [(UINavigationBar *)self _currentVisualStyle];
  if (_currentVisualStyle)
  {
    _shim_promptText = [(_UINavigationBarVisualProvider *)self->_visualProvider _shim_promptText];
    v7 = [_currentVisualStyle navigationBar:self metricsForOrientation:orientation hasPrompt:_shim_promptText != 0];

    _screen = [(UIView *)self _screen];
    [_screen _mainSceneBoundsForInterfaceOrientation:orientation];
    v10 = v9;
    [_currentVisualStyle barHeightForMetrics:v7];
    v12 = v11;
  }

  else
  {
    [(UINavigationBar *)self sizeThatFits:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
    v10 = v13;
    v12 = v14;
  }

  v15 = v10;
  v16 = v12;
  result.height = v16;
  result.width = v15;
  return result;
}

+ (CGSize)defaultSizeForOrientation:(int64_t)orientation
{
  v4 = [self _defaultVisualStyleForOrientation:?];
  mainScreen = [objc_opt_self() mainScreen];
  [mainScreen _mainSceneBoundsForInterfaceOrientation:orientation];
  v7 = v6;
  [v4 barHeight];
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

+ (CGSize)defaultSizeWithPromptForOrientation:(int64_t)orientation
{
  v4 = [self _defaultVisualStyleForOrientation:?];
  mainScreen = [objc_opt_self() mainScreen];
  [mainScreen _mainSceneBoundsForInterfaceOrientation:orientation];
  v7 = v6;
  [v4 barPromptHeight];
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

+ (CGSize)defaultSize
{
  [self defaultSizeForOrientation:1];
  result.height = v3;
  result.width = v2;
  return result;
}

+ (CGSize)defaultSizeWithPrompt
{
  [self defaultSizeWithPromptForOrientation:1];
  result.height = v3;
  result.width = v2;
  return result;
}

+ (id)defaultPromptFont
{
  v2 = [self _defaultVisualStyleForOrientation:1];
  promptFont = [v2 promptFont];

  return promptFont;
}

+ (void)_initializeForIdiom:(int64_t)idiom
{
  v26[2] = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (idiom == 2 || idiom == 8)
    {
      v22 = _UIAppearanceContainerForUserInterfaceIdiom();
      v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v22 count:1];
      v4 = [(UIBarItem *)UIBarButtonItem appearanceWhenContainedInInstancesOfClasses:v19];

      v5 = [off_1E70ECC18 preferredFontForTextStyle:{@"UICTFontTextStyleHeadline", *off_1E70EC918}];
      v21 = v5;
      v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
      [v4 setTitleTextAttributes:v6 forState:0];
    }

    else
    {
      if (idiom != 3)
      {
        return;
      }

      v4 = [UITraitCollection traitCollectionWithUserInterfaceIdiom:3];
      v5 = [(UIView *)UINavigationBar appearanceForTraitCollection:v4];
      v6 = [(UIBarItem *)UIBarButtonItem appearanceForTraitCollection:v4];
      v7 = objc_alloc_init(UIImage);
      [v5 setBackgroundImage:v7 forBarMetrics:0];

      v8 = +[UIColor _externalBarBackgroundColor];
      [v5 setBackgroundColor:v8];

      v25[0] = *off_1E70EC918;
      v9 = v25[0];
      v10 = [off_1E70ECC18 systemFontOfSize:17.0];
      v26[0] = v10;
      v25[1] = *off_1E70EC920;
      v11 = +[UIColor _externalSystemWhiteColor];
      v26[1] = v11;
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:2];
      [v5 setTitleTextAttributes:v12];

      [v5 setTitleVerticalPositionAdjustment:0 forBarMetrics:0.0];
      v13 = [UIImage _kitImageNamed:@"UINavigationBarBackIndicatorDefault" withTrait:v4];
      imageFlippedForRightToLeftLayoutDirection = [v13 imageFlippedForRightToLeftLayoutDirection];
      [v5 setBackIndicatorImage:imageFlippedForRightToLeftLayoutDirection];

      v15 = [UIImage _kitImageNamed:@"UINavigationBarTitleTransitionBackIndicatorMask" withTrait:v4];
      imageFlippedForRightToLeftLayoutDirection2 = [v15 imageFlippedForRightToLeftLayoutDirection];
      [v5 setBackIndicatorTransitionMaskImage:imageFlippedForRightToLeftLayoutDirection2];

      [v5 _setBackIndicatorLeftMargin:12.0];
      v23 = v9;
      v17 = [off_1E70ECC18 systemFontOfSize:17.0];
      v24 = v17;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
      [v6 setTitleTextAttributes:v18 forState:0];
    }
  }
}

+ (Class)_visualProviderClassForNavigationBar:(id)bar
{
  barCopy = bar;
  if (([objc_opt_class() _requiresModernVisualProvider] & 1) == 0 && objc_msgSend(objc_opt_class(), "_forceLegacyVisualProvider") || (objc_msgSend(barCopy, "traitCollection"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "userInterfaceIdiom"), v4, v6 = _UISMCBarsEnabled(), v5 == 3) || (v6 & 1) == 0)
  {
    v7 = objc_opt_class();
  }

  else
  {
    v7 = +[_UINavigationBarVisualProviderModernIOSSwiftClassProvider modernIOSSwiftClass];
  }

  v8 = v7;

  return v8;
}

+ (id)_visualProviderForNavigationBar:(id)bar
{
  barCopy = bar;
  v5 = [objc_alloc(objc_msgSend(self _visualProviderClassForNavigationBar:{barCopy)), "initWithNavigationBar:", barCopy}];

  return v5;
}

- (UINavigationBar)initWithFrame:(CGRect)frame
{
  v9.receiver = self;
  v9.super_class = UINavigationBar;
  v3 = [(UIView *)&v9 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [objc_opt_class() _visualProviderForNavigationBar:v3];
    visualProvider = v3->_visualProvider;
    v3->_visualProvider = v4;

    v6 = objc_alloc_init(_UINavigationBarItemStack);
    stack = v3->_stack;
    v3->_stack = v6;

    [(_UINavigationBarVisualProvider *)v3->_visualProvider setStack:v3->_stack];
    [(UINavigationBar *)v3 _updateOpacity];
    [(UINavigationBar *)v3 _commonNavBarInit];
  }

  return v3;
}

- (UINavigationBar)initWithCoder:(id)coder
{
  coderCopy = coder;
  v48.receiver = self;
  v48.super_class = UINavigationBar;
  v5 = [(UIView *)&v48 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [objc_opt_class() _visualProviderForNavigationBar:v5];
    visualProvider = v5->_visualProvider;
    v5->_visualProvider = v6;

    v5->_barStyle = 0;
    if ([coderCopy containsValueForKey:@"UIBarStyle"])
    {
      v5->_barStyle = [coderCopy decodeIntegerForKey:@"UIBarStyle"];
    }

    if (dyld_program_sdk_at_least())
    {
      if ([coderCopy containsValueForKey:@"UIBarPrefersLargeTitles"])
      {
        v5->_prefersLargeTitles = [coderCopy decodeBoolForKey:@"UIBarPrefersLargeTitles"];
      }

      if ([coderCopy containsValueForKey:@"UIBarBackgroundImages"])
      {
        v8 = [coderCopy decodeObjectForKey:@"UIBarBackgroundImages"];
        appearanceStorage = v5->_appearanceStorage;
        if (!appearanceStorage)
        {
          v10 = objc_alloc_init(_UINavigationBarAppearanceStorage);
          v11 = v5->_appearanceStorage;
          v5->_appearanceStorage = v10;

          appearanceStorage = v5->_appearanceStorage;
        }

        [(_UIBarAppearanceStorage *)appearanceStorage setAllBackgroundImages:v8];
      }

      if ([coderCopy containsValueForKey:@"UIBarLargeTitleTextAttributes"])
      {
        v12 = [coderCopy decodeObjectForKey:@"UIBarLargeTitleTextAttributes"];
        largeTitleTextAttributes = v5->_largeTitleTextAttributes;
        v5->_largeTitleTextAttributes = v12;
      }
    }

    if ([coderCopy decodeBoolForKey:@"UIIsLocked"])
    {
      v14 = 2;
    }

    else
    {
      v14 = 0;
    }

    *&v5->_navbarFlags = *&v5->_navbarFlags & 0xFFFD | v14;
    v15 = [coderCopy decodeObjectForKey:@"UIBarTintColor"];
    barTintColor = v5->_barTintColor;
    v5->_barTintColor = v15;

    [(UIView *)v5 setClipsToBounds:0];
    v17 = [coderCopy decodeObjectForKey:@"UIDelegate"];
    objc_storeWeak(&v5->_delegate, v17);

    WeakRetained = objc_loadWeakRetained(&v5->_delegate);
    v19 = objc_opt_respondsToSelector();

    if (v19)
    {
      *&v5->_navbarFlags |= 0x10u;
    }

    v20 = objc_loadWeakRetained(&v5->_delegate);
    v21 = objc_opt_respondsToSelector();

    if (v21)
    {
      *&v5->_navbarFlags |= 0x20u;
    }

    v22 = objc_loadWeakRetained(&v5->_delegate);
    v23 = objc_opt_respondsToSelector();

    if (v23)
    {
      *&v5->_navbarFlags |= 0x40u;
    }

    v24 = objc_loadWeakRetained(&v5->_delegate);
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      *&v5->_navbarFlags |= 0x80u;
    }

    if ([coderCopy containsValueForKey:@"UIShadowImage"])
    {
      v26 = [coderCopy decodeObjectForKey:@"UIShadowImage"];
      [(UINavigationBar *)v5 setShadowImage:v26];
    }

    if ([coderCopy containsValueForKey:@"UITitleTextAttributes"])
    {
      v27 = [coderCopy decodeObjectForKey:@"UITitleTextAttributes"];
      [(UINavigationBar *)v5 setTitleTextAttributes:v27];
    }

    if ([coderCopy containsValueForKey:@"UIBarPosition"])
    {
      v5->_barPosition = [coderCopy decodeIntegerForKey:@"UIBarPosition"];
    }

    if ([coderCopy containsValueForKey:@"UIBarTranslucence"])
    {
      v5->_barTranslucence = [coderCopy decodeIntegerForKey:@"UIBarTranslucence"];
    }

    if ([coderCopy containsValueForKey:@"UIBackIndicatorImage"])
    {
      v28 = [coderCopy decodeObjectForKey:@"UIBackIndicatorImage"];
      [(UINavigationBar *)v5 setBackIndicatorImage:v28];
    }

    if ([coderCopy containsValueForKey:@"UIBackIndicatorTransitionMask"])
    {
      v29 = [coderCopy decodeObjectForKey:@"UIBackIndicatorTransitionMask"];
      [(UINavigationBar *)v5 setBackIndicatorTransitionMaskImage:v29];
    }

    v30 = [coderCopy decodeObjectForKey:@"UINavigationBarStandardAppearance"];
    standardAppearance = v5->_standardAppearance;
    v5->_standardAppearance = v30;

    appearanceObserver = [(_UINavigationBarVisualProvider *)v5->_visualProvider appearanceObserver];
    v33 = v5->_standardAppearance;
    if (v33)
    {
      objc_storeWeak(&v33->super._changeObserver, appearanceObserver);
    }

    if (v5->_standardAppearance)
    {
      v34 = [coderCopy decodeObjectForKey:@"UINavigationBarCompactAppearance"];
      compactAppearance = v5->_compactAppearance;
      v5->_compactAppearance = v34;

      appearanceObserver2 = [(_UINavigationBarVisualProvider *)v5->_visualProvider appearanceObserver];
      v37 = v5->_compactAppearance;
      if (v37)
      {
        objc_storeWeak(&v37->super._changeObserver, appearanceObserver2);
      }

      v38 = [coderCopy decodeObjectForKey:@"UINavigationBarScrollEdgeAppearance"];
      scrollEdgeAppearance = v5->_scrollEdgeAppearance;
      v5->_scrollEdgeAppearance = v38;

      appearanceObserver3 = [(_UINavigationBarVisualProvider *)v5->_visualProvider appearanceObserver];
      v41 = v5->_scrollEdgeAppearance;
      if (v41)
      {
        objc_storeWeak(&v41->super._changeObserver, appearanceObserver3);
      }

      v42 = [coderCopy decodeObjectForKey:@"UINavigationBarCompactScrollEdgeAppearance"];
      compactScrollEdgeAppearance = v5->_compactScrollEdgeAppearance;
      v5->_compactScrollEdgeAppearance = v42;

      appearanceObserver4 = [(_UINavigationBarVisualProvider *)v5->_visualProvider appearanceObserver];
      v45 = v5->_compactScrollEdgeAppearance;
      if (v45)
      {
        objc_storeWeak(&v45->super._changeObserver, appearanceObserver4);
      }

      *&v5->_navbarFlags |= 0x800u;
    }

    [(UINavigationBar *)v5 _commonNavBarInit];
    v46 = [coderCopy decodeObjectForKey:@"UIItems"];
    [(UINavigationBar *)v5 _setDecodedItems:v46];
  }

  return v5;
}

- (void)_setDecodedItems:(id)items
{
  itemsCopy = items;
  stack = self->_stack;
  if (stack)
  {
    if ([(_UINavigationBarItemStack *)stack stackItemsAreEqualTo:itemsCopy])
    {
      goto LABEL_8;
    }

    v6 = self->_stack;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __36__UINavigationBar__setDecodedItems___block_invoke;
    v12[3] = &unk_1E70F79C0;
    v12[4] = self;
    [(_UINavigationBarItemStack *)v6 iterateItems:v12];
    [(_UINavigationBarItemStack *)self->_stack setItems:itemsCopy withTransitionAssistant:0];
    v7 = self->_stack;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __36__UINavigationBar__setDecodedItems___block_invoke_2;
    v11[3] = &unk_1E70F79C0;
    v11[4] = self;
    [(_UINavigationBarItemStack *)v7 iterateItems:v11];
  }

  else
  {
    v8 = [[_UINavigationBarItemStack alloc] initWithItems:itemsCopy];
    v9 = self->_stack;
    self->_stack = v8;

    [(_UINavigationBarVisualProvider *)self->_visualProvider setStack:self->_stack];
  }

  topItem = [(_UINavigationBarItemStack *)self->_stack topItem];
  if (topItem)
  {
    [(_UINavigationBarVisualProvider *)self->_visualProvider setupTopNavigationItem];
  }

  [(_UINavigationBarItemStack *)self->_stack completeOperation];
  [(UINavigationBar *)self _accessibility_navigationBarContentsDidChange];

LABEL_8:
}

void __36__UINavigationBar__setDecodedItems___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 472);
  v3 = a2;
  [v2 removeContentForItem:v3];
  [v3 _setNavigationBar:0];
}

void __36__UINavigationBar__setDecodedItems___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 472);
  v4 = a2;
  [v3 removeContentForItem:v4];
  [v4 _setNavigationBar:*(a1 + 32)];
}

- (void)_populateArchivedSubviews:(id)subviews
{
  v5.receiver = self;
  v5.super_class = UINavigationBar;
  subviewsCopy = subviews;
  [(UIView *)&v5 _populateArchivedSubviews:subviewsCopy];
  [(_UINavigationBarVisualProvider *)self->_visualProvider updateArchivedSubviews:subviewsCopy, v5.receiver, v5.super_class];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v22.receiver = self;
  v22.super_class = UINavigationBar;
  [(UIView *)&v22 encodeWithCoder:coderCopy];
  barStyle = self->_barStyle;
  if (barStyle)
  {
    [coderCopy encodeInteger:barStyle forKey:@"UIBarStyle"];
  }

  if (dyld_program_sdk_at_least())
  {
    if (self->_prefersLargeTitles)
    {
      [coderCopy encodeBool:1 forKey:@"UIBarPrefersLargeTitles"];
    }

    allBackgroundImages = [(_UIBarAppearanceStorage *)self->_appearanceStorage allBackgroundImages];
    if (allBackgroundImages)
    {
      [coderCopy encodeObject:allBackgroundImages forKey:@"UIBarBackgroundImages"];
    }

    largeTitleTextAttributes = self->_largeTitleTextAttributes;
    if (largeTitleTextAttributes)
    {
      [coderCopy encodeObject:largeTitleTextAttributes forKey:@"UIBarLargeTitleTextAttributes"];
    }
  }

  if ((*&self->_navbarFlags & 2) != 0)
  {
    [coderCopy encodeBool:1 forKey:@"UIIsLocked"];
  }

  barTintColor = self->_barTintColor;
  if (barTintColor)
  {
    [coderCopy encodeObject:barTintColor forKey:@"UIBarTintColor"];
  }

  topItem = [(_UINavigationBarItemStack *)self->_stack topItem];

  if (topItem)
  {
    items = [(_UINavigationBarItemStack *)self->_stack items];
    [coderCopy encodeObject:items forKey:@"UIItems"];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    [coderCopy encodeConditionalObject:WeakRetained forKey:@"UIDelegate"];
  }

  shadowImage = [(UINavigationBar *)self shadowImage];
  if (shadowImage)
  {
    [coderCopy encodeObject:shadowImage forKey:@"UIShadowImage"];
  }

  titleTextAttributes = [(UINavigationBar *)self titleTextAttributes];
  if (titleTextAttributes)
  {
    [coderCopy encodeObject:titleTextAttributes forKey:@"UITitleTextAttributes"];
  }

  barPosition = self->_barPosition;
  if (barPosition)
  {
    [coderCopy encodeInteger:barPosition forKey:@"UIBarPosition"];
  }

  barTranslucence = self->_barTranslucence;
  if (barTranslucence)
  {
    [coderCopy encodeInteger:barTranslucence forKey:@"UIBarTranslucence"];
  }

  backIndicatorImage = [(UINavigationBar *)self backIndicatorImage];

  if (backIndicatorImage)
  {
    [coderCopy encodeObject:backIndicatorImage forKey:@"UIBackIndicatorImage"];
  }

  backIndicatorTransitionMaskImage = [(UINavigationBar *)self backIndicatorTransitionMaskImage];

  if (backIndicatorTransitionMaskImage)
  {
    [coderCopy encodeObject:backIndicatorTransitionMaskImage forKey:@"UIBackIndicatorTransitionMask"];
  }

  if ([(_UINavigationBarVisualProvider *)self->_visualProvider appearanceAPIVersion]>= 2)
  {
    standardAppearance = self->_standardAppearance;
    if (standardAppearance)
    {
      [coderCopy encodeObject:standardAppearance forKey:@"UINavigationBarStandardAppearance"];
    }

    compactAppearance = self->_compactAppearance;
    if (compactAppearance)
    {
      [coderCopy encodeObject:compactAppearance forKey:@"UINavigationBarCompactAppearance"];
    }

    scrollEdgeAppearance = self->_scrollEdgeAppearance;
    if (scrollEdgeAppearance)
    {
      [coderCopy encodeObject:scrollEdgeAppearance forKey:@"UINavigationBarScrollEdgeAppearance"];
    }

    compactScrollEdgeAppearance = self->_compactScrollEdgeAppearance;
    if (compactScrollEdgeAppearance)
    {
      [coderCopy encodeObject:compactScrollEdgeAppearance forKey:@"UINavigationBarCompactScrollEdgeAppearance"];
    }
  }
}

- (void)setLocked:(BOOL)locked
{
  if (locked)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_navbarFlags = *&self->_navbarFlags & 0xFFFD | v3;
}

- (id)_defaultTitleFontFittingHeight:(double)height withScaleAdjustment:(double)adjustment
{
  if (adjustment == 0.0)
  {
    adjustmentCopy = 1.0;
  }

  else
  {
    adjustmentCopy = adjustment;
  }

  textAttributes = [(_UINavigationBarAppearanceStorage *)self->_appearanceStorage textAttributes];
  v8 = [textAttributes objectForKey:*off_1E70EC918];

  if (v8)
  {
    [v8 pointSize];
    if (v9 != 0.0)
    {
      goto LABEL_18;
    }

    _currentVisualStyle = [(UINavigationBar *)self _currentVisualStyle];
    [_currentVisualStyle headingFontSize];
    v12 = v11;
    v13 = [v8 fontWithSize:?];

    if (height > 0.0 && (-[_UINavigationBarItemStack topItem](self->_stack, "topItem"), v14 = objc_claimAutoreleasedReturnValue(), v15 = [v14 _hasDefaultTitleView], v14, v15) && (objc_msgSend(v13, "lineHeight"), v16 + 2.0 > height))
    {
      do
      {
        v8 = [v13 fontWithSize:v12];

        v12 = v12 + -1.0;
        [v8 lineHeight];
        v13 = v8;
      }

      while (v17 + 2.0 > height);
    }

    else
    {
      v8 = v13;
    }

    if (adjustmentCopy < 1.0)
    {
      [v8 pointSize];
      v22 = [v8 fontWithSize:adjustmentCopy * v21];

      v8 = v22;
    }

    goto LABEL_16;
  }

  traitCollection = [(UIView *)self traitCollection];
  v19 = +[_UINavigationBarTitleFontProvider providerForIdiom:](_UINavigationBarTitleFontProvider, "providerForIdiom:", [traitCollection userInterfaceIdiom]);
  _currentVisualStyle = [v19 defaultInlineTitleFont];

  if (adjustmentCopy < 1.0)
  {
    [_currentVisualStyle pointSize];
    v8 = [_currentVisualStyle fontWithSize:adjustmentCopy * v20];
LABEL_16:

    goto LABEL_18;
  }

  v8 = _currentVisualStyle;
LABEL_18:

  return v8;
}

- (id)_defaultTitleFontWithScaleAdjustment:(double)adjustment
{
  [(UIView *)self bounds];

  return [(UINavigationBar *)self _defaultTitleFontFittingHeight:v5 withScaleAdjustment:adjustment];
}

- (void)_customViewChangedForButtonItem:(id)item
{
  itemCopy = item;
  topItem = [(_UINavigationBarItemStack *)self->_stack topItem];
  view = [itemCopy view];
  leftBarButtonItems = [topItem leftBarButtonItems];
  v7 = leftBarButtonItems;
  if (leftBarButtonItems)
  {
    v8 = [leftBarButtonItems indexOfObject:itemCopy];
  }

  else
  {
    v8 = 0x7FFFFFFFFFFFFFFFLL;
  }

  rightBarButtonItems = [topItem rightBarButtonItems];
  v10 = rightBarButtonItems;
  if (rightBarButtonItems)
  {
    v11 = [rightBarButtonItems indexOfObject:itemCopy];
    if (v8 == 0x7FFFFFFFFFFFFFFFLL)
    {
      if (v11 == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_19;
      }

      v12 = indexOfViewForIndexOfItem(v11, v10);
      if (v12 == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_18;
      }

      v13 = v12;
      if (view)
      {
        v14 = topItem;
        v15 = v13;
        v16 = view;
        v17 = 0;
LABEL_14:
        [v14 _replaceCustomLeftRightViewAtIndex:v15 withView:v16 left:v17];
        goto LABEL_18;
      }

      v20 = [itemCopy createViewForNavigationItem:topItem];
      v21 = topItem;
      v22 = v13;
      v23 = v20;
      v24 = 0;
      goto LABEL_17;
    }
  }

  else if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_19;
  }

  v18 = indexOfViewForIndexOfItem(v8, v7);
  if (v18 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v19 = v18;
    if (view)
    {
      v14 = topItem;
      v15 = v19;
      v16 = view;
      v17 = 1;
      goto LABEL_14;
    }

    v20 = [itemCopy createViewForNavigationItem:topItem];
    v21 = topItem;
    v22 = v19;
    v23 = v20;
    v24 = 1;
LABEL_17:
    [v21 _replaceCustomLeftRightViewAtIndex:v22 withView:v23 left:v24];
  }

LABEL_18:
  [topItem updateNavigationBarButtonsAnimated:0];
LABEL_19:
}

- (void)_pushNavigationItemUsingCurrentTransition:(id)transition
{
  transitionCopy = transition;
  currentPushTransition = self->_currentPushTransition;
  v8 = transitionCopy;
  if (currentPushTransition)
  {
    v6 = [(UINavigationBar *)self _effectiveDelegateForItem:transitionCopy];
    v7 = [_UINavigationBarTransitionAssistant pushTransitionAssistantForNavigationBar:self delegate:v6 crossfade:currentPushTransition == 6];
  }

  else
  {
    [(UINavigationBar *)self _disableAnimation];
    v7 = 0;
  }

  [(UINavigationBar *)self _pushNavigationItem:v8 transitionAssistant:v7];
  [v8 _updateViewsForBarSizeChangeAndApply:0];
  if (![(UINavigationBar *)self _isAlwaysHidden])
  {
    [(_UINavigationBarVisualProvider *)self->_visualProvider updateTopNavigationItemAnimated:[(UINavigationBar *)self _isAnimationEnabled]];
    [(UINavigationBar *)self updatePrompt];
  }

  if (!currentPushTransition)
  {
    [(UINavigationBar *)self _enableAnimation];
  }
}

- (void)pushNavigationItem:(UINavigationItem *)item animated:(BOOL)animated
{
  v4 = animated;
  v10 = item;
  if ([(UINavigationBar *)self isLocked])
  {
    v7 = MEMORY[0x1E695DF30];
    v8 = *MEMORY[0x1E695D930];
    v9 = NSStringFromSelector(a2);
    [v7 raise:v8 format:{@"Cannot call %@ directly on a UINavigationBar managed by a controller.", v9}];
  }

  else
  {
    if ((*&self->_navbarFlags & 4) == 0)
    {
      self->_currentPushTransition = v4;
    }

    [(UINavigationBar *)self _pushNavigationItemUsingCurrentTransition:v10];
  }
}

- (NSArray)_animationIds
{
  transitionAssistant = [(_UINavigationBarItemStack *)self->_stack transitionAssistant];
  animationIDs = [transitionAssistant animationIDs];

  return animationIDs;
}

- (void)_pushNavigationItem:(id)item transition:(int)transition
{
  itemCopy = item;
  self->_currentPushTransition = transition;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __50__UINavigationBar__pushNavigationItem_transition___block_invoke;
  v8[3] = &unk_1E70F79E8;
  v8[4] = self;
  v9 = itemCopy;
  transitionCopy = transition;
  v7 = itemCopy;
  [(UINavigationBar *)self _performUpdatesIgnoringLock:v8];
}

- (void)_updateInteractiveTransition:(double)transition
{
  transitionAssistant = [(_UINavigationBarItemStack *)self->_stack transitionAssistant];
  [transitionAssistant updateInteractiveTransitionPercent:{fmax(transition, 0.0)}];
}

- (void)_finishInteractiveTransition:(double)transition completionSpeed:(double)speed completionCurve:(int64_t)curve
{
  transitionAssistant = [(_UINavigationBarItemStack *)self->_stack transitionAssistant];
  [transitionAssistant finishInteractiveTransitionPercent:curve completionSpeed:transition completionCurve:speed];

  stack = self->_stack;

  [(_UINavigationBarItemStack *)stack endInteractiveTransition];
}

- (void)_cancelInteractiveTransition:(double)transition completionSpeed:(double)speed completionCurve:(int64_t)curve
{
  transitionAssistant = [(_UINavigationBarItemStack *)self->_stack transitionAssistant];
  [transitionAssistant cancelInteractiveTransitionPercent:curve completionSpeed:transition completionCurve:speed];

  [(_UINavigationBarItemStack *)self->_stack endInteractiveTransition];
  previousTopItem = [(_UINavigationBarItemStack *)self->_stack previousTopItem];
  LODWORD(transitionAssistant) = [previousTopItem _backgroundHidden];

  if (transitionAssistant)
  {
    visualProvider = self->_visualProvider;

    [(_UINavigationBarVisualProvider *)visualProvider _shim_setShadowAlpha:0.0];
  }
}

- (void)_completePushOperationAnimated:(BOOL)animated transitionAssistant:(id)assistant
{
  animatedCopy = animated;
  assistantCopy = assistant;
  _effectiveDelegate = [(UINavigationBar *)self _effectiveDelegate];
  v7 = objc_opt_respondsToSelector();
  v8 = v7;
  if (!animatedCopy)
  {
    goto LABEL_6;
  }

  if ((v7 & 1) == 0)
  {
    [(UINavigationBar *)self _reenableUserInteraction];
  }

  if ([assistantCopy cancelledTransition])
  {
    [(UINavigationBar *)self _cancelInteractiveTransition];
  }

  else
  {
LABEL_6:
    topItem = [(_UINavigationBarItemStack *)self->_stack topItem];
    [(_UINavigationBarItemStack *)self->_stack completeOperation];
    [(UINavigationBar *)self _accessibility_navigationBarContentsDidChange];
    if (objc_opt_respondsToSelector())
    {
      [_effectiveDelegate navigationBar:self didPushItem:topItem];
    }
  }

  if ((animatedCopy & v8) == 1)
  {
    [_effectiveDelegate _navigationBarDidEndAnimation:self];
  }
}

- (void)_pushNavigationItem:(id)item transitionAssistant:(id)assistant
{
  itemCopy = item;
  assistantCopy = assistant;
  v9 = [(UINavigationBar *)self _effectiveDelegateForItem:itemCopy];
  if ((objc_opt_respondsToSelector() & 1) == 0 || [v9 navigationBar:self shouldPushItem:itemCopy])
  {
    if (_UINavigationBarShouldCheckLegacyViolation(self))
    {
      searchController = [itemCopy searchController];

      if (searchController)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"UINavigationBar.m" lineNumber:2073 description:@"UISearchController integration not supported when forcing the legacy provider. Remove your +_forceLegacyVisualProvider override."];
      }

      titleView = [itemCopy titleView];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler2 handleFailureInMethod:a2 object:self file:@"UINavigationBar.m" lineNumber:2075 description:@"_UINavigationBarTitleView not supported when forcing the legacy provider. Remove your +_forceLegacyVisualProvider override."];
      }

      _weeTitle = [itemCopy _weeTitle];

      if (_weeTitle)
      {
        currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler3 handleFailureInMethod:a2 object:self file:@"UINavigationBar.m" lineNumber:2076 description:@"Wee Title not supported when forcing the legacy provider. Remove your +_forceLegacyVisualProvider override."];
      }
    }

    [itemCopy _setNavigationBar:self];
    [(_UINavigationBarItemStack *)self->_stack pushItem:itemCopy withTransitionAssistant:assistantCopy];
    if (objc_opt_respondsToSelector())
    {
      [v9 _navigationBarDidUpdateStack:self];
    }

    [(_UINavigationBarVisualProvider *)self->_visualProvider prepareForPush];
    previousTopItem = [(_UINavigationBarItemStack *)self->_stack previousTopItem];
    if (previousTopItem && (v15 = previousTopItem, v16 = [(UINavigationBar *)self _isAnimationEnabled], v15, v16))
    {
      visualProvider = self->_visualProvider;
      if (visualProvider && ![(_UINavigationBarVisualProvider *)visualProvider allowsUserInteractionDuringTransitions])
      {
        [(UIView *)self setUserInteractionEnabled:0];
      }

      v18 = 1;
    }

    else
    {
      v18 = 0;
    }

    v19 = self->_visualProvider;
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __59__UINavigationBar__pushNavigationItem_transitionAssistant___block_invoke;
    v25[3] = &unk_1E70F7A10;
    v25[4] = self;
    [(_UINavigationBarVisualProvider *)v19 pushAnimated:v18 completion:v25];
    transitionAssistant = [(_UINavigationBarItemStack *)self->_stack transitionAssistant];
    [transitionAssistant finishTrackingInteractiveTransition];

    transitionAssistant2 = [(_UINavigationBarItemStack *)self->_stack transitionAssistant];
    [transitionAssistant2 setShouldHideBackButtonDuringTransition:0];
  }
}

- (UINavigationItem)popNavigationItemAnimated:(BOOL)animated
{
  v3 = animated;
  if ([(UINavigationBar *)self isLocked])
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695D930];
    v8 = NSStringFromSelector(a2);
    [v6 raise:v7 format:{@"Cannot call %@ directly on a UINavigationBar managed by a controller.", v8}];

    v9 = 0;
  }

  else
  {
    if (v3)
    {
      if ((*(&self->super._viewFlags + 18) & 0x40) != 0)
      {
        v10 = 1;
      }

      else
      {
        v10 = 2;
      }
    }

    else
    {
      v10 = 0;
    }

    v9 = [(UINavigationBar *)self _popNavigationItemWithTransition:v10];
  }

  return v9;
}

- (void)_popNestedNavigationItem
{
  _shim_popNestedNavigationItem = [(_UINavigationBarItemStack *)self->_stack _shim_popNestedNavigationItem];
  _navigationBar = [_shim_popNestedNavigationItem _navigationBar];

  if (_navigationBar == self)
  {
    [_shim_popNestedNavigationItem _setNavigationBar:0];
  }
}

- (id)_popNavigationItemWithTransition:(int)transition
{
  _effectiveDelegate = [(UINavigationBar *)self _effectiveDelegate];
  topItem = [(_UINavigationBarItemStack *)self->_stack topItem];
  if ((objc_opt_respondsToSelector() & 1) != 0 || (objc_opt_respondsToSelector() & 1) == 0 || [_effectiveDelegate navigationBar:self shouldPopItem:topItem])
  {
    if (transition)
    {
      _effectiveDelegate2 = [(UINavigationBar *)self _effectiveDelegate];
      v8 = [_UINavigationBarTransitionAssistant popTransitionAssistantForNavigationBar:self delegate:_effectiveDelegate2 crossfade:transition == 6];
    }

    else
    {
      [(UINavigationBar *)self _disableAnimation];
      v8 = 0;
    }

    [(UINavigationBar *)self _popNavigationItemWithTransitionAssistant:v8];
    if (![(UINavigationBar *)self _isAlwaysHidden])
    {
      topItem2 = [(_UINavigationBarItemStack *)self->_stack topItem];
      [topItem2 _updateViewsForBarSizeChangeAndApply:0];
      [(_UINavigationBarVisualProvider *)self->_visualProvider updateTopNavigationItemAnimated:[(UINavigationBar *)self _isAnimationEnabled]];
      [(UINavigationBar *)self updatePrompt];
    }

    if (!transition)
    {
      [(UINavigationBar *)self _enableAnimation];
    }
  }

  return topItem;
}

- (void)_completePopOperationAnimated:(BOOL)animated transitionAssistant:(id)assistant
{
  animatedCopy = animated;
  assistantCopy = assistant;
  _effectiveDelegate = [(UINavigationBar *)self _effectiveDelegate];
  v7 = objc_opt_respondsToSelector();
  v8 = v7;
  if (!animatedCopy)
  {
    goto LABEL_6;
  }

  if ((v7 & 1) == 0)
  {
    [(UINavigationBar *)self _reenableUserInteraction];
  }

  if ([assistantCopy cancelledTransition])
  {
    [(UINavigationBar *)self _cancelInteractiveTransition];
  }

  else
  {
LABEL_6:
    previousTopItem = [(_UINavigationBarItemStack *)self->_stack previousTopItem];
    if ([objc_opt_class() _forceLegacyVisualProvider])
    {
      [previousTopItem _removeTitleAndButtonViews];
    }

    _navigationBar = [previousTopItem _navigationBar];
    v11 = _navigationBar;
    if (_navigationBar == self || _navigationBar && (-[UINavigationBar items](_navigationBar, "items"), v12 = objc_claimAutoreleasedReturnValue(), v13 = [v12 containsObject:previousTopItem], v12, (v13 & 1) == 0))
    {
      [previousTopItem _setNavigationBar:0];
    }

    _searchControllerIfAllowed = [previousTopItem _searchControllerIfAllowed];
    searchBar = [_searchControllerIfAllowed searchBar];

    superview = [searchBar superview];

    if (superview == self)
    {
      [searchBar removeFromSuperview];
    }

    [(_UINavigationBarItemStack *)self->_stack completeOperation];
    [(UINavigationBar *)self _accessibility_navigationBarContentsDidChange];
    if (objc_opt_respondsToSelector())
    {
      [_effectiveDelegate navigationBar:self didPopItem:previousTopItem];
    }
  }

  if ((animatedCopy & v8) == 1)
  {
    [_effectiveDelegate _navigationBarDidEndAnimation:self];
  }
}

- (void)_popNavigationItemWithTransitionAssistant:(id)assistant
{
  [(_UINavigationBarItemStack *)self->_stack popItemWithTransitionAssistant:assistant];
  previousTopItem = [(_UINavigationBarItemStack *)self->_stack previousTopItem];
  [(_UINavigationBarVisualProvider *)self->_visualProvider prepareForPop];
  _isAnimationEnabled = [(UINavigationBar *)self _isAnimationEnabled];
  if (previousTopItem)
  {
    v6 = _isAnimationEnabled;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    visualProvider = self->_visualProvider;
    if (visualProvider)
    {
      if (![(_UINavigationBarVisualProvider *)visualProvider allowsUserInteractionDuringTransitions])
      {
        [(UIView *)self setUserInteractionEnabled:0];
      }
    }
  }

  v8 = self->_visualProvider;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __61__UINavigationBar__popNavigationItemWithTransitionAssistant___block_invoke;
  v12[3] = &unk_1E70F7A10;
  v12[4] = self;
  [(_UINavigationBarVisualProvider *)v8 popAnimated:v6 completion:v12];
  _effectiveDelegate = [(UINavigationBar *)self _effectiveDelegate];
  if (objc_opt_respondsToSelector())
  {
    [_effectiveDelegate _navigationBarDidUpdateStack:self];
  }

  transitionAssistant = [(_UINavigationBarItemStack *)self->_stack transitionAssistant];
  [transitionAssistant finishTrackingInteractiveTransition];

  transitionAssistant2 = [(_UINavigationBarItemStack *)self->_stack transitionAssistant];
  [transitionAssistant2 setShouldHideBackButtonDuringTransition:0];
}

- (int)_transitionForOldItems:(id)items newItems:(id)newItems
{
  itemsCopy = items;
  lastObject = [newItems lastObject];
  lastObject2 = [itemsCopy lastObject];

  if (lastObject == lastObject2)
  {
    v8 = 0;
  }

  else if ([itemsCopy containsObject:lastObject])
  {
    v8 = 2;
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (void)setItems:(NSArray *)items animated:(BOOL)animated
{
  v4 = animated;
  v12 = items;
  if ([(UINavigationBar *)self isLocked])
  {
    v7 = MEMORY[0x1E695DF30];
    v8 = *MEMORY[0x1E695D930];
    v9 = NSStringFromSelector(a2);
    [v7 raise:v8 format:{@"Cannot call %@ directly on a UINavigationBar managed by a controller.", v9}];
  }

  else
  {
    if (v4)
    {
      items = [(UINavigationBar *)self items];
      v11 = [(UINavigationBar *)self _transitionForOldItems:items newItems:v12];
    }

    else
    {
      v11 = 0;
    }

    [(UINavigationBar *)self _setItems:v12 transition:v11];
  }
}

- (BOOL)_didVisibleItemsChangeWithNewItems:(id)items oldItems:(id)oldItems
{
  itemsCopy = items;
  oldItemsCopy = oldItems;
  v7 = [oldItemsCopy count];
  v8 = [itemsCopy count];
  v9 = v8;
  if (v7 <= 1)
  {
    v10 = 1;
  }

  else
  {
    v10 = v7;
  }

  if (v8 <= 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = v8;
  }

  if (v10 == v11)
  {
    lastObject = [oldItemsCopy lastObject];
    lastObject2 = [itemsCopy lastObject];

    v14 = lastObject == lastObject2;
    v15 = lastObject != lastObject2;
    if (v14 && v7 >= 2)
    {
      v16 = [oldItemsCopy objectAtIndexedSubscript:(v7 - 2)];
      v17 = [itemsCopy objectAtIndexedSubscript:v9 - 2];
      v15 = v16 != v17;
    }
  }

  else
  {
    v15 = 1;
  }

  return v15;
}

- (void)_setItems:(id)items transition:(int)transition reset:(BOOL)reset
{
  v88 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  v9 = itemsCopy;
  if (reset)
  {
    resetCopy2 = reset;
    items = [(_UINavigationBarItemStack *)self->_stack items];

    items2 = 0;
    v12 = 1;
    goto LABEL_10;
  }

  if (itemsCopy)
  {
    items = itemsCopy;
  }

  else
  {
    items = MEMORY[0x1E695E0F0];
  }

  if (![(_UINavigationBarItemStack *)self->_stack stackItemsAreEqualTo:items])
  {
    resetCopy2 = reset;
    items2 = [(_UINavigationBarItemStack *)self->_stack items];
    v12 = [(UINavigationBar *)self _didVisibleItemsChangeWithNewItems:items oldItems:items2]|| (transition - 3) < 0xFFFFFFFE;
LABEL_10:
    v62 = v12;
    if (transition != 2)
    {
      v82 = 0u;
      v83 = 0u;
      v80 = 0u;
      v81 = 0u;
      v13 = items2;
      v14 = [v13 countByEnumeratingWithState:&v80 objects:v87 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v81;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v81 != v16)
            {
              objc_enumerationMutation(v13);
            }

            [*(*(&v80 + 1) + 8 * i) _setNavigationBar:0];
          }

          v15 = [v13 countByEnumeratingWithState:&v80 objects:v87 count:16];
        }

        while (v15);
      }
    }

    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    items = items;
    v18 = [items countByEnumeratingWithState:&v76 objects:v86 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v77;
      do
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v77 != v20)
          {
            objc_enumerationMutation(items);
          }

          [*(*(&v76 + 1) + 8 * j) _setNavigationBar:self];
        }

        v19 = [items countByEnumeratingWithState:&v76 objects:v86 count:16];
      }

      while (v19);
    }

    _effectiveDelegate = [(UINavigationBar *)self _effectiveDelegate];
    if (transition == 1)
    {
      v23 = [_UINavigationBarTransitionAssistant pushTransitionAssistantForNavigationBar:self delegate:_effectiveDelegate crossfade:0];
      [(_UINavigationBarItemStack *)self->_stack setItems:items withTransitionAssistant:v23];
      [(_UINavigationBarVisualProvider *)self->_visualProvider prepareForPush];
      previousBackItem = [(_UINavigationBarItemStack *)self->_stack previousBackItem];
      [previousBackItem _setNavigationBar:self];

      goto LABEL_30;
    }

    if (transition == 2)
    {
      v23 = [_UINavigationBarTransitionAssistant popTransitionAssistantForNavigationBar:self delegate:_effectiveDelegate crossfade:0];
      [(_UINavigationBarItemStack *)self->_stack setItems:items withTransitionAssistant:v23];
      [(_UINavigationBarVisualProvider *)self->_visualProvider prepareForPop];
LABEL_30:

      [(UINavigationBar *)self _barStyle];
      _isAnimationEnabled = [(UINavigationBar *)self _isAnimationEnabled];
      if (_isAnimationEnabled && (visualProvider = self->_visualProvider) != 0)
      {
        v27 = ![(_UINavigationBarVisualProvider *)visualProvider allowsUserInteractionDuringTransitions];
      }

      else
      {
        v27 = 0;
      }

      if (transition == 1)
      {
        if (v27)
        {
          [(UIView *)self setUserInteractionEnabled:0];
        }

        if (objc_opt_respondsToSelector())
        {
          [_effectiveDelegate _navigationBarDidUpdateStack:self];
        }

        v28 = self->_visualProvider;
        v64[0] = MEMORY[0x1E69E9820];
        v64[1] = 3221225472;
        v64[2] = __46__UINavigationBar__setItems_transition_reset___block_invoke_2;
        v64[3] = &unk_1E70F7A10;
        v64[4] = self;
        [(_UINavigationBarVisualProvider *)v28 pushAnimated:_isAnimationEnabled completion:v64];
      }

      else
      {
        if (v27)
        {
          [(UIView *)self setUserInteractionEnabled:0];
        }

        v29 = _UISolariumEnabled();
        v30 = v29;
        if (v29 && (objc_opt_respondsToSelector() & 1) != 0)
        {
          [_effectiveDelegate _navigationBarDidUpdateStack:self];
        }

        v31 = self->_visualProvider;
        v63[0] = MEMORY[0x1E69E9820];
        v63[1] = 3221225472;
        v63[2] = __46__UINavigationBar__setItems_transition_reset___block_invoke_3;
        v63[3] = &unk_1E70F7A10;
        v63[4] = self;
        [(_UINavigationBarVisualProvider *)v31 popAnimated:_isAnimationEnabled completion:v63];
        if (v30 & 1) == 0 && (objc_opt_respondsToSelector())
        {
          [_effectiveDelegate _navigationBarDidUpdateStack:self];
        }
      }

      topItem = [(_UINavigationBarItemStack *)self->_stack topItem];
      [topItem _updateViewsForBarSizeChangeAndApply:0];
      [(_UINavigationBarVisualProvider *)self->_visualProvider updateTopNavigationItemAnimated:_isAnimationEnabled];

LABEL_49:
      transitionAssistant = [(_UINavigationBarItemStack *)self->_stack transitionAssistant];
      [transitionAssistant finishTrackingInteractiveTransition];

      goto LABEL_50;
    }

    [(_UINavigationBarItemStack *)self->_stack setItems:items withTransitionAssistant:0];
    [(_UINavigationBarVisualProvider *)self->_visualProvider prepareForStackChange];
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v34 = items2;
    v35 = [v34 countByEnumeratingWithState:&v72 objects:v85 count:16];
    if (v35)
    {
      v36 = v35;
      v37 = *v73;
      do
      {
        for (k = 0; k != v36; ++k)
        {
          if (*v73 != v37)
          {
            objc_enumerationMutation(v34);
          }

          [(_UINavigationBarVisualProvider *)self->_visualProvider removeContentForItem:*(*(&v72 + 1) + 8 * k)];
        }

        v36 = [v34 countByEnumeratingWithState:&v72 objects:v85 count:16];
      }

      while (v36);
    }

    v60 = _effectiveDelegate;

    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v39 = items;
    v40 = [v39 countByEnumeratingWithState:&v68 objects:v84 count:16];
    if (v40)
    {
      v41 = v40;
      v42 = *v69;
      do
      {
        for (m = 0; m != v41; ++m)
        {
          if (*v69 != v42)
          {
            objc_enumerationMutation(v39);
          }

          [(_UINavigationBarVisualProvider *)self->_visualProvider removeContentForItem:*(*(&v68 + 1) + 8 * m)];
        }

        v41 = [v39 countByEnumeratingWithState:&v68 objects:v84 count:16];
      }

      while (v41);
    }

    lastObject = [v34 lastObject];
    _searchControllerIfAllowed = [lastObject _searchControllerIfAllowed];
    topItem2 = [(_UINavigationBarItemStack *)self->_stack topItem];
    _searchControllerIfAllowed2 = [topItem2 _searchControllerIfAllowed];
    if (_searchControllerIfAllowed != _searchControllerIfAllowed2)
    {
      v59 = items2;
      backItem = [(_UINavigationBarItemStack *)self->_stack backItem];
      _searchControllerIfAllowed3 = [backItem _searchControllerIfAllowed];
      v50 = _searchControllerIfAllowed3;
      if (_searchControllerIfAllowed == _searchControllerIfAllowed3)
      {

        items2 = v59;
      }

      else
      {
        [(_UINavigationBarItemStack *)self->_stack items];
        v58 = _searchControllerIfAllowed;
        v52 = v51 = lastObject;
        v57 = [v52 containsObject:v51];

        lastObject = v51;
        _searchControllerIfAllowed = v58;

        items2 = v59;
        if (v57)
        {
LABEL_76:

          _barStyle = [(UINavigationBar *)self _barStyle];
          _effectiveDelegate = v60;
          if (v62)
          {
            v56 = _barStyle;
            [(UINavigationBar *)self _disableAnimation];
            [(UINavigationBar *)self _setBarStyle:v56];
            [(_UINavigationBarVisualProvider *)self->_visualProvider setupTopNavigationItem];
            [(UINavigationBar *)self setNeedsLayout];
            [(UINavigationBar *)self _enableAnimation];
            [(_UINavigationBarItemStack *)self->_stack completeOperation];
            [(UINavigationBar *)self _accessibility_navigationBarContentsDidChange];
            if (!resetCopy2 && (objc_opt_respondsToSelector() & 1) != 0)
            {
              [v60 _navigationBarDidUpdateStack:self];
            }
          }

          goto LABEL_49;
        }

        if ([v58 isActive])
        {
          _viewControllerForAncestor = [(UIView *)self _viewControllerForAncestor];
          v54 = [_viewControllerForAncestor _splitViewControllerEnforcingClass:1];

          if (!v54 || ([v54 _isExpanding] & 1) == 0)
          {
            v65[0] = MEMORY[0x1E69E9820];
            v65[1] = 3221225472;
            v65[2] = __46__UINavigationBar__setItems_transition_reset___block_invoke;
            v65[3] = &unk_1E70F35B8;
            v66 = v58;
            v67 = lastObject;
            [UIView performWithoutAnimation:v65];
          }
        }

        topItem2 = [v58 searchBar];
        _searchControllerIfAllowed2 = [topItem2 _viewStackedInNavigationBar];
        [_searchControllerIfAllowed2 removeFromSuperview];
      }
    }

    goto LABEL_76;
  }

LABEL_50:
}

void __46__UINavigationBar__setItems_transition_reset___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setActive:0];
  v2 = [*(a1 + 40) _stackEntry];
  [v2 setSearchActive:0];
}

- (void)_setItemsUpToItem:(id)item transition:(int)transition
{
  v4 = *&transition;
  itemCopy = item;
  if (![(_UINavigationBarItemStack *)self->_stack state])
  {
    array = [MEMORY[0x1E695DF70] array];
    stack = self->_stack;
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __48__UINavigationBar__setItemsUpToItem_transition___block_invoke;
    v15 = &unk_1E70F7640;
    v9 = itemCopy;
    v16 = v9;
    v10 = array;
    v17 = v10;
    [(_UINavigationBarItemStack *)stack iterateItems:&v12];
    if (v4)
    {
      [v10 addObject:{v9, v12, v13, v14, v15, v16}];
      [(UINavigationBar *)self _setItems:v10 transition:0 reset:0];
      v11 = [(UINavigationBar *)self _popNavigationItemWithTransition:v4];
    }

    else
    {
      [(UINavigationBar *)self _setItems:v10 transition:0 reset:0, v12, v13, v14, v15, v16];
    }
  }
}

uint64_t __48__UINavigationBar__setItemsUpToItem_transition___block_invoke(uint64_t result, uint64_t a2, _BYTE *a3)
{
  if (*(result + 32) != a2)
  {
    return [*(result + 40) addObject:a2];
  }

  *a3 = 1;
  return result;
}

- (void)_addItem:(id)item withEffectiveDelegate:(id)delegate transition:(int)transition
{
  v5 = *&transition;
  itemCopy = item;
  [(UINavigationBar *)self setLocked:0];
  topItem = [(_UINavigationBarItemStack *)self->_stack topItem];

  if (topItem != itemCopy)
  {
    [(UINavigationBar *)self _pushNavigationItem:itemCopy transition:v5];
  }

  [(UINavigationBar *)self setLocked:1];
}

- (void)_addItems:(id)items withEffectiveDelegate:(id)delegate transition:(int)transition
{
  v20 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  delegateCopy = delegate;
  lastObject = [itemsCopy lastObject];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = itemsCopy;
  v11 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [UINavigationBar _addItem:"_addItem:withEffectiveDelegate:transition:" withEffectiveDelegate:v15 transition:?];
      }

      v12 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v12);
  }
}

- (int64_t)_effectiveMetricsForMetrics:(int64_t)metrics
{
  forceFullHeightInLandscape = [(UINavigationBar *)self forceFullHeightInLandscape];
  metricsCopy = 101;
  if (metrics != 102)
  {
    metricsCopy = metrics;
  }

  if (metrics == 1)
  {
    metricsCopy = 0;
  }

  if (forceFullHeightInLandscape)
  {
    return metricsCopy;
  }

  else
  {
    return metrics;
  }
}

- (int64_t)effectiveInterfaceOrientation
{
  if (![(UINavigationBar *)self forceFullHeightInLandscape])
  {
    window = [(UIView *)self window];
    if (window)
    {
      v5 = window;
LABEL_5:
      _windowInterfaceOrientation = [v5 _windowInterfaceOrientation];
      if (!_windowInterfaceOrientation)
      {
        _windowInterfaceOrientation = [UIApp _sceneInterfaceOrientationFromWindow:v5];
      }

      v3 = _windowInterfaceOrientation;
      goto LABEL_12;
    }

    if ((*&self->_navbarFlags & 0x20) != 0)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v5 = [WeakRetained _navigationBarWindowForInterfaceOrientation:self];

      if (v5)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v5 = 0;
    }

    v3 = 1;
LABEL_12:

    return v3;
  }

  return 1;
}

- (void)setRequestedContentSize:(int64_t)size
{
  v6 = _UINavigationBarShouldCheckLegacyViolation(self);
  if (size && v6)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UINavigationBar.m" lineNumber:2566 description:@"Explicit content size not supported when forcing the legacy provider. Remove your +_forceLegacyVisualProvider override."];
  }

  if (self->_requestedContentSize != size)
  {
    self->_requestedContentSize = size;
    visualProvider = self->_visualProvider;

    [(_UINavigationBarVisualProvider *)visualProvider changeLayout];
  }
}

- (void)setPrefersLargeTitles:(BOOL)prefersLargeTitles
{
  v3 = prefersLargeTitles;
  if (_UINavigationBarShouldCheckLegacyViolation(self) && v3)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UINavigationBar.m" lineNumber:2577 description:@"Large titles not supported when forcing the legacy provider. Remove your +_forceLegacyVisualProvider override."];
  }

  if (self->_prefersLargeTitles != v3)
  {
    self->_prefersLargeTitles = v3;
    visualProvider = self->_visualProvider;

    [(_UINavigationBarVisualProvider *)visualProvider changeLayout];
  }
}

- (void)setBackgroundEffects:(id)effects
{
  effectsCopy = effects;
  backgroundEffects = self->_backgroundEffects;
  if (backgroundEffects != effectsCopy)
  {
    v9 = effectsCopy;
    v6 = [(NSArray *)backgroundEffects isEqualToArray:effectsCopy];
    effectsCopy = v9;
    if (!v6)
    {
      v7 = [(NSArray *)v9 copy];
      v8 = self->_backgroundEffects;
      self->_backgroundEffects = v7;

      [(_UINavigationBarVisualProvider *)self->_visualProvider changeAppearance];
      effectsCopy = v9;
    }
  }
}

- (void)setLargeTitleTextAttributes:(NSDictionary *)largeTitleTextAttributes
{
  if (self->_largeTitleTextAttributes != largeTitleTextAttributes)
  {
    v4 = [(NSDictionary *)largeTitleTextAttributes copy];
    v5 = self->_largeTitleTextAttributes;
    self->_largeTitleTextAttributes = v4;

    [(_UINavigationBarVisualProvider *)self->_visualProvider changeAppearance];
    visualProvider = self->_visualProvider;

    [(_UINavigationBarVisualProvider *)visualProvider changeLayout];
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(_UINavigationBarVisualProvider *)self->_visualProvider sizeThatFits:fits.width, fits.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- ($1AB5FA073B851C12C2339EC22442E995)_layoutHeightsForNavigationItem:(id)item fittingWidth:(double)width
{
  itemCopy = item;
  objc_storeStrong(&self->_visualProvider->_itemForMeasuring, item);
  if ([(_UINavigationBarVisualProvider *)self->_visualProvider shouldUseHeightRangeFittingWidth])
  {
    [(_UINavigationBarVisualProvider *)self->_visualProvider layoutHeightsFittingWidth:width];
    v9 = v8;
    v11 = v10;
    v13 = v12;
  }

  else
  {
    [(UINavigationBar *)self sizeThatFits:width, 0.0];
    v13 = v14;
    v11 = v14;
    v9 = v14;
  }

  visualProvider = self->_visualProvider;
  itemForMeasuring = visualProvider->_itemForMeasuring;
  visualProvider->_itemForMeasuring = 0;

  v17 = v9;
  v18 = v11;
  v19 = v13;
  result.var2 = v19;
  result.var1 = v18;
  result.var0 = v17;
  return result;
}

- (BOOL)_heightDependentOnOrientation
{
  if (self->_requestedContentSize)
  {
    return 0;
  }

  window = [(UIView *)self window];
  screen = [window screen];

  if (screen)
  {
    v2 = _UIUseMiniHeightInLandscape(1u);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (NSDirectionalEdgeInsets)_resolvedLargeTitleMargins
{
  [(_UINavigationBarVisualProvider *)self->_visualProvider resolvedLargeTitleMargins];
  result.trailing = v5;
  result.bottom = v4;
  result.leading = v3;
  result.top = v2;
  return result;
}

- (void)setInsetsLayoutMarginsFromSafeArea:(BOOL)area
{
  areaCopy = area;
  insetsLayoutMarginsFromSafeArea = [(UIView *)self insetsLayoutMarginsFromSafeArea];
  v6.receiver = self;
  v6.super_class = UINavigationBar;
  [(UIView *)&v6 setInsetsLayoutMarginsFromSafeArea:areaCopy];
  if (self)
  {
    if (insetsLayoutMarginsFromSafeArea != areaCopy)
    {
      self->_resolvedLayoutMargins.trailing = -1.79769313e308;
      self->_resolvedLayoutMargins.leading = -1.79769313e308;
      [(_UINavigationBarVisualProvider *)self->_visualProvider navigationBarInvalidatedResolvedLayoutMargins];
    }
  }
}

- (CGSize)intrinsicContentSize
{
  [(_UINavigationBarVisualProvider *)self->_visualProvider intrinsicContentSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)_setAdditionalSafeAreaInsets:(UIEdgeInsets)insets
{
  v3.f64[0] = insets.top;
  v3.f64[1] = insets.left;
  v4.f64[0] = insets.bottom;
  v4.f64[1] = insets.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_additionalSafeAreaInsets.top, v3), vceqq_f64(*&self->_additionalSafeAreaInsets.bottom, v4)))) & 1) == 0)
  {
    self->_additionalSafeAreaInsets = insets;
    [(UIView *)self _updateSafeAreaInsets];
  }
}

- (UIEdgeInsets)_safeAreaInsetsForFrame:(CGRect)frame inSuperview:(id)superview ignoreViewController:(BOOL)controller
{
  v14.receiver = self;
  v14.super_class = UINavigationBar;
  [(UIView *)&v14 _safeAreaInsetsForFrame:superview inSuperview:controller ignoreViewController:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v7 = v6 + self->_additionalSafeAreaInsets.top;
  v9 = v8 + self->_additionalSafeAreaInsets.left;
  v11 = v10 + self->_additionalSafeAreaInsets.bottom;
  v13 = v12 + self->_additionalSafeAreaInsets.right;
  result.right = v13;
  result.bottom = v11;
  result.left = v9;
  result.top = v7;
  return result;
}

- (void)_cancelInteractiveTransition
{
  transitionAssistant = [(_UINavigationBarItemStack *)self->_stack transitionAssistant];
  cancelledTransition = [transitionAssistant cancelledTransition];

  if (cancelledTransition)
  {
    if ([(_UINavigationBarItemStack *)self->_stack state]== 1)
    {
      topItem = [(_UINavigationBarItemStack *)self->_stack topItem];
      _navigationBar = [topItem _navigationBar];

      if (_navigationBar == self)
      {
        [topItem _removeTitleAndButtonViews];
        [topItem _removeBarButtonItemViews];
        [topItem _setNavigationBar:0];
      }
    }

    [(_UINavigationBarItemStack *)self->_stack cancelOperation];
    topItem2 = [(_UINavigationBarItemStack *)self->_stack topItem];
    backItem = [(_UINavigationBarItemStack *)self->_stack backItem];
    _navigationBar2 = [backItem _navigationBar];
    if (_navigationBar2)
    {
      v9 = _navigationBar2;
      _hasLegacyProvider = [(UINavigationBar *)self _hasLegacyProvider];

      if (_hasLegacyProvider)
      {
        backButtonView = [backItem backButtonView];
        [backButtonView _setAbbreviatedTitleIndex:0x7FFFFFFFFFFFFFFFLL];
      }
    }

    [topItem2 updateNavigationBarButtonsAnimated:0];
  }
}

- (void)_reenableUserInteractionWhenReadyWithContext:(id)context
{
  contextCopy = context;
  objc_storeStrong(&self->_navControllerAnimatingContext, context);
  if (![(_UINavigationBarItemStack *)self->_stack state])
  {
    [(UINavigationBar *)self _reenableUserInteraction];
  }
}

- (id)hitTest:(CGPoint)test forEvent:(__GSEvent *)event
{
  y = test.y;
  x = test.x;
  visualProvider = self->_visualProvider;
  v10.receiver = self;
  v10.super_class = UINavigationBar;
  v7 = [(UIView *)&v10 hitTest:event forEvent:?];
  v8 = [(_UINavigationBarVisualProvider *)visualProvider hitTest:v7 defaultViewHit:x, y];

  return v8;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  visualProvider = self->_visualProvider;
  v10.receiver = self;
  v10.super_class = UINavigationBar;
  v7 = [(UIView *)&v10 hitTest:event withEvent:?];
  v8 = [(_UINavigationBarVisualProvider *)visualProvider hitTest:v7 defaultViewHit:x, y];

  return v8;
}

- (void)_evaluateBackIndicatorForHilightedState:(BOOL)state ofBarButtonItem:(id)item inNavigationItem:(id)navigationItem
{
  stateCopy = state;
  itemCopy = item;
  navigationItemCopy = navigationItem;
  if (itemCopy && navigationItemCopy && [itemCopy _showsBackButtonIndicator] && (objc_msgSend(itemCopy, "isHidden") & 1) == 0)
  {
    topItem = [(_UINavigationBarItemStack *)self->_stack topItem];
    v10 = topItem;
    if (topItem != navigationItemCopy)
    {

      goto LABEL_12;
    }

    if ([navigationItemCopy _leftItemsWantBackButton])
    {
      itemCount = [(_UINavigationBarItemStack *)self->_stack itemCount];

      if (itemCount > 1)
      {
        goto LABEL_12;
      }
    }

    else
    {
    }

    [(UINavigationBar *)self _setBackIndicatorPressed:stateCopy initialPress:0];
  }

LABEL_12:
}

- (BOOL)_allowInteractionDuringTransition
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if ((objc_opt_respondsToSelector() & 1) != 0 && [WeakRetained enableBackButtonDuringTransition])
  {
    transitionAssistant = [(_UINavigationBarItemStack *)self->_stack transitionAssistant];
    v5 = [transitionAssistant interactive] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (BOOL)_canPreemptTransition
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    _isCurrentTransitionPreemptable = [WeakRetained _isCurrentTransitionPreemptable];
  }

  else
  {
    _isCurrentTransitionPreemptable = 0;
  }

  return _isCurrentTransitionPreemptable;
}

- (BOOL)_shouldCrossFadeBackgroundVisility
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    _shouldCrossFadeNavigationBarBackgroundVisibility = [WeakRetained _shouldCrossFadeNavigationBarBackgroundVisibility];
  }

  else
  {
    _shouldCrossFadeNavigationBarBackgroundVisibility = 0;
  }

  return _shouldCrossFadeNavigationBarBackgroundVisibility;
}

- (id)animationFactory
{
  if (objc_opt_respondsToSelector())
  {
    visualProvider = self->_visualProvider;
  }

  else
  {
    visualProvider = 0;
  }

  return visualProvider;
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  visualProvider = self->_visualProvider;
  eventCopy = event;
  beganCopy = began;
  if ([(_UINavigationBarVisualProvider *)visualProvider _shim_wantsCustomTouchHandlingForTouches:beganCopy])
  {
    [(_UINavigationBarVisualProvider *)self->_visualProvider _shim_touchesBegan:beganCopy withEvent:eventCopy];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = UINavigationBar;
    [(UIResponder *)&v9 touchesBegan:beganCopy withEvent:eventCopy];
  }
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  visualProvider = self->_visualProvider;
  eventCopy = event;
  movedCopy = moved;
  if ([(_UINavigationBarVisualProvider *)visualProvider _shim_wantsCustomTouchHandlingForTouches:movedCopy])
  {
    [(_UINavigationBarVisualProvider *)self->_visualProvider _shim_touchesMoved:movedCopy withEvent:eventCopy];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = UINavigationBar;
    [(UIResponder *)&v9 touchesMoved:movedCopy withEvent:eventCopy];
  }
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  visualProvider = self->_visualProvider;
  eventCopy = event;
  endedCopy = ended;
  if ([(_UINavigationBarVisualProvider *)visualProvider _shim_wantsCustomTouchHandlingForTouches:endedCopy])
  {
    [(_UINavigationBarVisualProvider *)self->_visualProvider _shim_touchesEnded:endedCopy withEvent:eventCopy];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = UINavigationBar;
    [(UIResponder *)&v9 touchesEnded:endedCopy withEvent:eventCopy];
  }
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  visualProvider = self->_visualProvider;
  eventCopy = event;
  cancelledCopy = cancelled;
  if ([(_UINavigationBarVisualProvider *)visualProvider _shim_wantsCustomTouchHandlingForTouches:cancelledCopy])
  {
    [(_UINavigationBarVisualProvider *)self->_visualProvider _shim_touchesCancelled:cancelledCopy withEvent:eventCopy];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = UINavigationBar;
    [(UIResponder *)&v9 touchesCancelled:cancelledCopy withEvent:eventCopy];
  }
}

- (void)_willMoveToWindow:(id)window
{
  windowCopy = window;
  v9.receiver = self;
  v9.super_class = UINavigationBar;
  [(UIView *)&v9 _willMoveToWindow:windowCopy];
  if (windowCopy)
  {
    screen = [windowCopy screen];
    v6 = [(UINavigationBar *)self _shouldShowBackButtonForScreen:screen];

    if (!v6)
    {
      backItem = [(_UINavigationBarItemStack *)self->_stack backItem];
      existingBackButtonView = [backItem existingBackButtonView];

      if (existingBackButtonView)
      {
        [existingBackButtonView removeFromSuperview];
        [(UINavigationBar *)self setNeedsLayout];
      }
    }
  }
}

- (void)_didMoveFromWindow:(id)window toWindow:(id)toWindow
{
  v26.receiver = self;
  v26.super_class = UINavigationBar;
  [(UIView *)&v26 _didMoveFromWindow:window toWindow:?];
  if (toWindow)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      -[UINavigationBar _setBarPosition:](self, "_setBarPosition:", [WeakRetained positionForBar:self]);
    }

    screen = [toWindow screen];
    [screen scale];
    v9 = v8;
    layer = [(UIView *)self layer];
    [layer setRasterizationScale:v9];

    [(UINavigationBar *)self _setNeedsBackgroundViewUpdate];
    [(UINavigationBar *)self _configurePaletteConstraintsIfNecessary];
    idiom = [(_UINavigationBarVisualStyle *)self->_visualStyle idiom];
    if (idiom != [screen _userInterfaceIdiom])
    {
      visualStyle = self->_visualStyle;
      self->_visualStyle = 0;
    }

    [(_UINavigationBarVisualProvider *)self->_visualProvider _shim_updateBackIndicator];
    topItem = [(_UINavigationBarItemStack *)self->_stack topItem];
    v14 = topItem;
    if ((*&self->_navbarFlags & 0x100) != 0)
    {
      _effectiveDelegate = [(UINavigationBar *)self _effectiveDelegate];
      _searchControllerIfAllowed = [_effectiveDelegate _effectiveSearchControllerForSearchBarGivenTopNavigationItem:v14];

      _effectiveDelegate2 = [(UINavigationBar *)self _effectiveDelegate];
      traitCollection = [(UIView *)self traitCollection];
      _hasIntegratedSearchBarInNavigationBar = [_effectiveDelegate2 _shouldDisplaySearchBarInlineForEffectiveSearchControllerGivenTopNavigationItem:v14 traitCollection:traitCollection];
    }

    else
    {
      _searchControllerIfAllowed = [(_UINavigationBarVisualStyle *)topItem _searchControllerIfAllowed];
      _hasIntegratedSearchBarInNavigationBar = [(_UINavigationBarVisualStyle *)v14 _hasIntegratedSearchBarInNavigationBar];
    }

    searchBar = [_searchControllerIfAllowed searchBar];
    v22 = searchBar;
    if (searchBar)
    {
      [searchBar _setHostedInlineByNavigationBar:_hasIntegratedSearchBarInNavigationBar];
      if ((_hasIntegratedSearchBarInNavigationBar & 1) == 0)
      {
        [v22 _setHostedInlineByToolbar:{-[_UINavigationBarVisualStyle _hasIntegratedSearchBarInToolbar](v14, "_hasIntegratedSearchBarInToolbar")}];
      }
    }

    if (dyld_program_sdk_at_least())
    {
      os_variant_has_internal_diagnostics();
      v23 = +[UITraitCollection _currentTraitCollectionIfExists];
      traitCollection2 = [(UIView *)self traitCollection];
      [UITraitCollection setCurrentTraitCollection:traitCollection2];

      v25 = _UISetCurrentFallbackEnvironment(self);
      [(UINavigationBar *)self traitCollectionDidChange:0];
      _UIRestorePreviousFallbackEnvironment(v25);
      [UITraitCollection setCurrentTraitCollection:v23];
    }
  }

  else
  {
    if (!self->_visualStyle)
    {
      return;
    }

    currentBackButton = [(UINavigationBar *)self currentBackButton];
    [currentBackButton setPressed:0];

    v14 = self->_visualStyle;
    self->_visualStyle = 0;
  }
}

- (_UINavigationBarDelegatePrivate)_privateDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  if ([(UINavigationBar *)self isLocked])
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"Cannot manually set the delegate on a UINavigationBar managed by a controller."];
  }

  else
  {
    if ((*&self->_navbarFlags & 0x200) != 0)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);

      if (WeakRetained != obj)
      {
        *&self->_navbarFlags |= 0x400u;
      }
    }

    v5 = objc_storeWeak(&self->_delegate, obj);
    if (objc_opt_respondsToSelector())
    {
      v6 = 16;
    }

    else
    {
      v6 = 0;
    }

    *&self->_navbarFlags = *&self->_navbarFlags & 0xFFEF | v6;

    v7 = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      v8 = 32;
    }

    else
    {
      v8 = 0;
    }

    *&self->_navbarFlags = *&self->_navbarFlags & 0xFFDF | v8;

    v9 = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      v10 = 64;
    }

    else
    {
      v10 = 0;
    }

    *&self->_navbarFlags = *&self->_navbarFlags & 0xFFBF | v10;

    v11 = objc_loadWeakRetained(&self->_delegate);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = 128;
    }

    else
    {
      v12 = 0;
    }

    *&self->_navbarFlags = *&self->_navbarFlags & 0xFF7F | v12;

    v13 = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      v14 = 256;
    }

    else
    {
      v14 = 0;
    }

    *&self->_navbarFlags = *&self->_navbarFlags & 0xFEFF | v14;
  }
}

- (void)setTranslatesAutoresizingMaskIntoConstraints:(BOOL)constraints
{
  constraintsCopy = constraints;
  if ([(UINavigationBar *)self isLocked])
  {
    v5 = MEMORY[0x1E695DF30];
    v6 = *MEMORY[0x1E695D930];

    [v5 raise:v6 format:@"Cannot choose layout method for UINavigationBar managed by a controller"];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = UINavigationBar;
    [(UIView *)&v7 setTranslatesAutoresizingMaskIntoConstraints:constraintsCopy];
  }
}

- (void)addConstraint:(id)constraint
{
  constraintCopy = constraint;
  if ([(_UINavigationBarVisualProvider *)self->_visualProvider _shim_throwConstraintExceptions])
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"Cannot modify constraints for UINavigationBar managed by a controller"];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = UINavigationBar;
    [(UIView *)&v5 addConstraint:constraintCopy];
  }
}

- (void)removeConstraint:(id)constraint
{
  constraintCopy = constraint;
  if ([(_UINavigationBarVisualProvider *)self->_visualProvider _shim_throwConstraintExceptions])
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"Cannot modify constraints for UINavigationBar managed by a controller"];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = UINavigationBar;
    [(UIView *)&v5 removeConstraint:constraintCopy];
  }
}

- (void)_updateNavigationBarItem:(id)item forStyle:(int64_t)style previousTintColor:(id)color
{
  itemCopy = item;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [itemCopy setControlSize:{-[UINavigationBar isMinibar](self, "isMinibar")}];
    [itemCopy setBarStyle:style];
    _effectiveBarTintColor = [(UINavigationBar *)self _effectiveBarTintColor];
    [itemCopy setNavigationBarTintColor:_effectiveBarTintColor];

    if ([itemCopy _wantsAccessibilityButtonShapes])
    {
      [itemCopy setNeedsLayout];
    }

    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [itemCopy setControlSize:{-[UINavigationBar isMinibar](self, "isMinibar")}];
LABEL_7:
    [itemCopy setBarStyle:style];
    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [itemCopy setStyle:style];
  }

  else
  {
    v8 = +[UIDevice currentDevice];
    userInterfaceIdiom = [v8 userInterfaceIdiom];

    if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [itemCopy _updateLabelColor];
      }
    }
  }

LABEL_8:
}

- (void)didAddSubview:(id)subview
{
  visualProvider = self->_visualProvider;
  subviewCopy = subview;
  [(_UINavigationBarVisualProvider *)visualProvider barDidAddSubview:subviewCopy];
  _currentBarStyle = [(UINavigationBar *)self _currentBarStyle];
  _effectiveBarTintColor = [(UINavigationBar *)self _effectiveBarTintColor];
  [(UINavigationBar *)self _updateNavigationBarItem:subviewCopy forStyle:_currentBarStyle previousTintColor:_effectiveBarTintColor];
}

- (void)_updateNavigationBarItemsForStyle:(int64_t)style previousTintColor:(id)color
{
  if ([(UIView *)self _areAccessibilityButtonShapesEnabled])
  {
    stack = self->_stack;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __71__UINavigationBar__updateNavigationBarItemsForStyle_previousTintColor___block_invoke;
    v7[3] = &__block_descriptor_40_e30_v24__0__UINavigationItem_8_B16l;
    v7[4] = style;
    [(_UINavigationBarItemStack *)stack iterateItems:v7];
  }
}

void __71__UINavigationBar__updateNavigationBarItemsForStyle_previousTintColor___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 backButtonView];
  [v3 setStyle:*(a1 + 32)];
  [v3 setNeedsLayout];
}

- (void)_updateNavigationBarItemsForStyle:(int64_t)style
{
  _effectiveBarTintColor = [(UINavigationBar *)self _effectiveBarTintColor];
  [(UINavigationBar *)self _updateNavigationBarItemsForStyle:style previousTintColor:_effectiveBarTintColor];
}

- (void)_setBarStyle:(int64_t)style
{
  if (self->_barStyle != style)
  {
    self->_barStyle = style;
    [(UINavigationBar *)self _setNeedsBackgroundViewUpdate];
    [(_UINavigationBarVisualProvider *)self->_visualProvider changeAppearance];
    _effectiveBarTintColor = [(UINavigationBar *)self _effectiveBarTintColor];

    if (!_effectiveBarTintColor)
    {
      [(UINavigationBar *)self _updateNavigationBarItemsForStyle:[(UINavigationBar *)self _currentBarStyle]];
      [(UINavigationBar *)self _updateOpacity];
      [(UIView *)self setNeedsDisplay];
      [(UINavigationBar *)self _updatePaletteBackgroundIfNecessary];
      [(_UINavigationBarVisualProvider *)self->_visualProvider changeAppearance];
    }

    [(UINavigationBar *)self _sendNavigationBarDidChangeStyle];
  }
}

- (void)setTranslucent:(BOOL)translucent
{
  barTranslucence = self->_barTranslucence;
  v8 = 1;
  if (!translucent)
  {
    v8 = 2;
  }

  self->_barTranslucence = v8;
  if (barTranslucence != v8)
  {
    v12 = v4;
    v13 = v3;
    barStyle = self->_barStyle;
    if (translucent || barStyle != 2)
    {
      if (barStyle != 1)
      {
LABEL_12:
        [(UINavigationBar *)self _updateOpacity:v12];
        [(UINavigationBar *)self _setNeedsBackgroundViewUpdate];
        [(UIView *)self setNeedsDisplay];

        [(UINavigationBar *)self _updatePaletteBackgroundIfNecessary];
        return;
      }
    }

    else
    {
      self->_barStyle = 1;
    }

    if (translucent)
    {
      v11 = 2;
    }

    else
    {
      v11 = 1;
    }

    [(UINavigationBar *)self _updateNavigationBarItemsForStyle:v11, v4, v13, v5];
    goto LABEL_12;
  }
}

- (void)setForceFullHeightInLandscape:(BOOL)landscape
{
  navbarFlags = self->_navbarFlags;
  if ((navbarFlags & 1) != landscape)
  {
    *&self->_navbarFlags = navbarFlags & 0xFFFE | landscape;
    [(UINavigationBar *)self invalidateIntrinsicContentSize];

    [(UINavigationBar *)self setNeedsLayout];
  }
}

- (id)_titleTextColor
{
  _currentVisualStyle = [(UINavigationBar *)self _currentVisualStyle];
  traitCollection = [(UIView *)self traitCollection];
  v5 = [_currentVisualStyle defaultTitleColorForUserInterfaceStyle:objc_msgSend(traitCollection barStyle:{"userInterfaceStyle"), self->_barStyle}];

  return v5;
}

- (void)_propagateEffectiveBarTintColorWithPreviousColor:(id)color
{
  colorCopy = color;
  [(UINavigationBar *)self _setNeedsBackgroundViewUpdate];
  [(UINavigationBar *)self _updateNavigationBarItemsForStyle:[(UINavigationBar *)self _currentBarStyle] previousTintColor:colorCopy];

  [(UIView *)self setNeedsDisplay];
}

- (void)_updateTitleViewIfTop:(id)top
{
  stack = self->_stack;
  topCopy = top;
  topItem = [(_UINavigationBarItemStack *)stack topItem];

  if (topItem == topCopy)
  {
    visualProvider = self->_visualProvider;

    [(_UINavigationBarVisualProvider *)visualProvider updateTopNavigationItemTitleView];
  }
}

- (id)_currentLeftViews
{
  topItem = [(UINavigationBar *)self topItem];
  _customLeftViews = [topItem _customLeftViews];
  v5 = [_customLeftViews mutableCopy];

  if (![v5 count])
  {
    if (![(UINavigationBar *)self _hasBackButton])
    {
      goto LABEL_11;
    }

    goto LABEL_6;
  }

  topItem2 = [(UINavigationBar *)self topItem];
  if (![topItem2 leftItemsSupplementBackButton])
  {
LABEL_10:

    goto LABEL_11;
  }

  _hasBackButton = [(UINavigationBar *)self _hasBackButton];

  if (_hasBackButton)
  {
LABEL_6:
    if (!v5)
    {
      v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    backItem = [(UINavigationBar *)self backItem];
    topItem2 = [backItem backButtonView];

    if (topItem2)
    {
      [v5 insertObject:topItem2 atIndex:0];
    }

    goto LABEL_10;
  }

LABEL_11:

  return v5;
}

- (UIView)currentLeftView
{
  currentBackButton = [(UINavigationBar *)self currentBackButton];
  _currentLeftViews = [(UINavigationBar *)self _currentLeftViews];
  if ([_currentLeftViews count])
  {
    topItem = [(UINavigationBar *)self topItem];
    if ([topItem leftItemsSupplementBackButton])
    {
      v6 = currentBackButton;
    }

    else
    {
      v6 = [_currentLeftViews objectAtIndex:0];
    }

    v7 = v6;
  }

  else
  {
    v7 = currentBackButton;
  }

  return v7;
}

- (id)_currentRightViews
{
  topItem = [(UINavigationBar *)self topItem];
  _customRightViews = [topItem _customRightViews];

  return _customRightViews;
}

- (UIView)currentRightView
{
  _currentRightViews = [(UINavigationBar *)self _currentRightViews];
  if ([_currentRightViews count])
  {
    v3 = [_currentRightViews objectAtIndex:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_setForceScrollEdgeAppearance:(BOOL)appearance
{
  appearanceCopy = appearance;
  if (_UIBarsApplyChromelessEverywhere() && [(UINavigationBar *)self _effectiveDelegateSupportsScrollEdgeTransitionProgress])
  {
    if (os_variant_has_internal_diagnostics())
    {
      v6 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v6, OS_LOG_TYPE_FAULT, "forceScrollEdgeAppearance IPI should not be used for chromeless-everywhere to avoid possible conflicts", buf, 2u);
      }
    }

    else
    {
      v5 = *(__UILogGetCategoryCachedImpl("Assert", &_setForceScrollEdgeAppearance____s_category) + 8);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *v7 = 0;
        _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_ERROR, "forceScrollEdgeAppearance IPI should not be used for chromeless-everywhere to avoid possible conflicts", v7, 2u);
      }
    }
  }

  [(_UINavigationBarVisualProvider *)self->_visualProvider setForceScrollEdgeAppearance:appearanceCopy];
}

- (id)_effectiveSearchControllerForNavigationItem:(id)item
{
  itemCopy = item;
  _searchControllerIfAllowed = [itemCopy _searchControllerIfAllowed];
  if (!_searchControllerIfAllowed)
  {
    topItem = [(UINavigationBar *)self topItem];
    _effectiveDelegate = topItem;
    if (topItem == itemCopy)
    {
      navbarFlags = self->_navbarFlags;

      if ((navbarFlags & 0x100) == 0)
      {
        _searchControllerIfAllowed = 0;
        goto LABEL_8;
      }

      _effectiveDelegate = [(UINavigationBar *)self _effectiveDelegate];
      _searchControllerIfAllowed = [_effectiveDelegate _effectiveSearchControllerForSearchBarGivenTopNavigationItem:itemCopy];
    }

    else
    {
      _searchControllerIfAllowed = 0;
    }
  }

LABEL_8:

  return _searchControllerIfAllowed;
}

- (BOOL)_hasBackButton
{
  topItem = [(_UINavigationBarItemStack *)self->_stack topItem];
  if ([topItem hidesBackButton])
  {
    v4 = 0;
  }

  else
  {
    backItem = [(_UINavigationBarItemStack *)self->_stack backItem];
    if (backItem)
    {
      v4 = [(UINavigationBar *)self _shouldShowBackButtonForNavigationItem:backItem];
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

- (_UINavigationItemButtonView)currentBackButton
{
  backItem = [(_UINavigationBarItemStack *)self->_stack backItem];
  topItem = [(_UINavigationBarItemStack *)self->_stack topItem];
  v5 = [(UINavigationBar *)self _backButtonForBackItem:backItem topItem:topItem];

  return v5;
}

- (id)_backButtonForBackItem:(id)item topItem:(id)topItem
{
  itemCopy = item;
  topItemCopy = topItem;
  v8 = topItemCopy;
  if (itemCopy && ([topItemCopy hidesBackButton] & 1) == 0 && -[UINavigationBar _shouldShowBackButtonForNavigationItem:](self, "_shouldShowBackButtonForNavigationItem:", itemCopy))
  {
    backButtonView = [itemCopy backButtonView];
  }

  else
  {
    backButtonView = 0;
  }

  return backButtonView;
}

- (BOOL)_delegateWantsNavigationBarHidden
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    isNavigationBarHidden = [WeakRetained isNavigationBarHidden];
  }

  else
  {
    isNavigationBarHidden = 0;
  }

  return isNavigationBarHidden;
}

- (void)_sendResizeForPromptChange
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained navigationBarDidResizeForPrompt:self];
  }
}

- (void)_prepareToAnimateTransition
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained _navigationBarPrepareToAnimateTransition:self];
  }
}

- (void)_sendNavigationBarAnimateTransition
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained _navigationBarWillBeginCoordinatedTransitionAnimations:self];
  }
}

- (CGRect)_incomingNavigationBarFrame
{
  _accessibility_navigationController = [(UINavigationBar *)self _accessibility_navigationController];
  v4 = _accessibility_navigationController;
  if (_accessibility_navigationController)
  {
    [_accessibility_navigationController _incomingNavigationBarFrame];
  }

  else
  {
    [(UIView *)self frame];
  }

  v9 = v5;
  v10 = v6;
  v11 = v7;
  v12 = v8;

  v13 = v9;
  v14 = v10;
  v15 = v11;
  v16 = v12;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (void)_setPrompt:(id)prompt
{
  visualProvider = self->_visualProvider;
  promptCopy = prompt;
  [(_UINavigationBarVisualProvider *)visualProvider _shim_setPromptText:promptCopy animated:[(UINavigationBar *)self _isAnimationEnabled]];
}

- (CGRect)promptBounds
{
  v2 = *MEMORY[0x1E695F058];
  v3 = *(MEMORY[0x1E695F058] + 8);
  v4 = *(MEMORY[0x1E695F058] + 16);
  v5 = *(MEMORY[0x1E695F058] + 24);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)_updateContentIfTopItem:(id)item animated:(BOOL)animated
{
  stack = self->_stack;
  itemCopy = item;
  topItem = [(_UINavigationBarItemStack *)stack topItem];

  if (topItem == itemCopy)
  {
    if (animated)
    {
      [(_UINavigationBarVisualProvider *)self->_visualProvider updateTopNavigationItemAnimated:[(UINavigationBar *)self _isAnimationEnabled]];
    }

    else
    {
      [(UINavigationBar *)self _disableAnimation];
      [(_UINavigationBarVisualProvider *)self->_visualProvider updateTopNavigationItemAnimated:[(UINavigationBar *)self _isAnimationEnabled]];
      [(UINavigationBar *)self _enableAnimation];
    }

    [(UINavigationBar *)self _accessibility_navigationBarContentsDidChange];
  }
}

- (void)_updateBackButtonVisibilityIfTop:(id)top animated:(BOOL)animated
{
  animatedCopy = animated;
  topCopy = top;
  topItem = [(_UINavigationBarItemStack *)self->_stack topItem];

  v7 = topCopy;
  if (topItem == topCopy)
  {
    -[_UINavigationBarVisualProvider setBackButtonVisible:animated:](self->_visualProvider, "setBackButtonVisible:animated:", [topCopy hidesBackButton] ^ 1, animatedCopy);
    v7 = topCopy;
  }
}

- (void)setButton:(int)button enabled:(BOOL)enabled
{
  enabledCopy = enabled;
  NSLog(&cfstr_ThisMethodIsDe.isa, a2);
  topItem = [(_UINavigationBarItemStack *)self->_stack topItem];
  rightBarButtonItem = [topItem rightBarButtonItem];
  view = [rightBarButtonItem view];

  leftBarButtonItem = [topItem leftBarButtonItem];
  view2 = [leftBarButtonItem view];

  if (button == 1)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v12 = view2;
    if (isKindOfClass)
    {
LABEL_4:
      [v12 setEnabled:enabledCopy];
    }
  }

  else if (!button)
  {
    objc_opt_class();
    v11 = objc_opt_isKindOfClass();
    v12 = view;
    if (v11)
    {
      goto LABEL_4;
    }
  }
}

- (void)_getBackgroundImage:(id *)image shouldRespectOversizedBackgroundImage:(BOOL *)backgroundImage actualBarMetrics:(int64_t *)metrics actualBarPosition:(int64_t *)position
{
  _activeBarMetrics = [(UINavigationBar *)self _activeBarMetrics];
  _barPosition = [(UINavigationBar *)self _barPosition];
  if (dyld_program_sdk_at_least())
  {
    v13 = [(_UIBarAppearanceStorage *)self->_appearanceStorage backgroundImageForBarPosition:_barPosition barMetrics:_activeBarMetrics];
    if (v13)
    {
      goto LABEL_27;
    }

    v13 = [(_UIBarAppearanceStorage *)self->_appearanceStorage backgroundImageForBarPosition:0 barMetrics:_activeBarMetrics];
    if (v13)
    {
      goto LABEL_4;
    }

    switch(_activeBarMetrics)
    {
      case 0:
LABEL_47:
        v13 = 0;
        goto LABEL_27;
      case 102:
        v24 = 1;
        v13 = [(_UIBarAppearanceStorage *)self->_appearanceStorage backgroundImageForBarPosition:_barPosition barMetrics:1];
        if (v13)
        {
          goto LABEL_27;
        }

        break;
      case 101:
        v13 = [(_UIBarAppearanceStorage *)self->_appearanceStorage backgroundImageForBarPosition:_barPosition barMetrics:0];
        if (v13)
        {
          goto LABEL_27;
        }

        v24 = 0;
        break;
      default:
LABEL_48:
        v13 = [(_UIBarAppearanceStorage *)self->_appearanceStorage backgroundImageForBarPosition:_barPosition barMetrics:0];
        if (!v13)
        {
          v13 = [(_UIBarAppearanceStorage *)self->_appearanceStorage backgroundImageForBarPosition:0 barMetrics:0];
          if (v13)
          {
            _barPosition = 0;
          }
        }

        goto LABEL_27;
    }

    v13 = [(_UIBarAppearanceStorage *)self->_appearanceStorage backgroundImageForBarPosition:0 barMetrics:v24];
    if (v13)
    {
LABEL_4:
      _barPosition = 0;
      goto LABEL_27;
    }

    if (_activeBarMetrics == 101)
    {
      goto LABEL_47;
    }

    goto LABEL_48;
  }

  positionCopy = position;
  v14 = _activeBarMetrics;
  v15 = _barPosition;
  [(UIView *)self bounds];
  v17 = v16 == 54.0 || v16 == 74.0;
  v18 = v16 == 54.0 || v16 <= 32.0;
  _barPosition2 = [(UINavigationBar *)self _barPosition];
  v20 = 102;
  if (!v17)
  {
    v20 = 1;
  }

  v21 = 101;
  if (!v17)
  {
    v21 = 0;
  }

  if (v18)
  {
    v22 = v20;
  }

  else
  {
    v22 = v21;
  }

  v13 = [(_UIBarAppearanceStorage *)self->_appearanceStorage backgroundImageForBarPosition:_barPosition2 barMetrics:v22];
  if (_barPosition2 == 3 && !v13)
  {
    v13 = [(_UIBarAppearanceStorage *)self->_appearanceStorage backgroundImageForBarPosition:0 barMetrics:v22];
  }

  if (v13 == 0 && v17)
  {
    v13 = [(_UIBarAppearanceStorage *)self->_appearanceStorage backgroundImageForBarPosition:_barPosition2 barMetrics:v18];
  }

  _barPosition = v15;
  if (v13)
  {
    _activeBarMetrics = v14;
LABEL_26:
    position = positionCopy;
    goto LABEL_27;
  }

  v13 = [(_UIBarAppearanceStorage *)self->_appearanceStorage backgroundImageForBarPosition:0 barMetrics:v22];
  _activeBarMetrics = v14;
  if (v13)
  {
    goto LABEL_26;
  }

  v13 = [(_UIBarAppearanceStorage *)self->_appearanceStorage backgroundImageForBarPosition:_barPosition2 barMetrics:0];
  position = positionCopy;
  if (!v13)
  {
    v13 = [(_UIBarAppearanceStorage *)self->_appearanceStorage backgroundImageForBarPosition:0 barMetrics:0];
  }

LABEL_27:
  v23 = v13;
  *image = v23;
  if (backgroundImage)
  {
    *backgroundImage = 0;
  }

  if (metrics)
  {
    *metrics = _activeBarMetrics;
  }

  if (position)
  {
    *position = _barPosition;
  }
}

- (void)_updatePalette:(id)palette
{
  paletteCopy = palette;
  _backgroundView = [paletteCopy _backgroundView];
  if (([paletteCopy _paletteOverridesPinningBar] & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = _backgroundView;
      _backgroundViewLayout = [paletteCopy _backgroundViewLayout];
      backgroundEffects = [(UINavigationBar *)self backgroundEffects];
      if (backgroundEffects)
      {
        [_backgroundViewLayout configureWithEffects:backgroundEffects];
      }

      else if ([paletteCopy _supportsSpecialSearchBarTransitions] && (-[_UINavigationBarItemStack topItem](self->_stack, "topItem"), v9 = objc_claimAutoreleasedReturnValue(), layout = objc_msgSend(v9, "_backgroundHidden"), v9, layout))
      {
        [_backgroundViewLayout configureAsTransparent];
      }

      else
      {
        barStyle = self->_barStyle;
        v11 = [(UINavigationBar *)self backgroundImageForBarMetrics:[(UINavigationBar *)self _activeBarMetrics]];
        layout = v11;
        if (v11 && (([v11 size], v13 == *MEMORY[0x1E695F060]) ? (v14 = v12 == *(MEMORY[0x1E695F060] + 8)) : (v14 = 0), v14))
        {
          [_backgroundViewLayout configureImage:layout forceOpaque:-[UINavigationBar isTranslucent](self barStyle:{"isTranslucent") ^ 1, self->_barStyle}];
        }

        else
        {
          _effectiveBarTintColor = [(UINavigationBar *)self _effectiveBarTintColor];
          [_backgroundViewLayout configureEffectForStyle:barStyle backgroundTintColor:_effectiveBarTintColor forceOpaque:{-[UINavigationBar isTranslucent](self, "isTranslucent") ^ 1}];
        }

        if (barStyle == 3 || [paletteCopy paletteShadowIsHidden])
        {
          [_backgroundViewLayout configureWithoutShadow];
        }

        else
        {
          [_backgroundViewLayout configureShadowForBarStyle:barStyle];
        }
      }

      _backdropViewLayerGroupName = [(UINavigationBar *)self _backdropViewLayerGroupName];
      [v6 setGroupName:_backdropViewLayerGroupName];

      topEntry = [(_UINavigationBarItemStack *)self->_stack topEntry];
      activeLayout = [topEntry activeLayout];

      if (activeLayout)
      {
        topEntry = activeLayout[22];
        layout = [topEntry layout];
        [layout backgroundAlpha];
        v20 = v19;
      }

      else
      {
        v20 = 1.0;
      }

      layout2 = [v6 layout];
      [layout2 setBackgroundAlpha:v20];

      if (activeLayout)
      {
      }

      [v6 transitionBackgroundViews];
      [paletteCopy _propagateBackgroundToContents];
    }
  }
}

- (void)_accessibilityButtonShapesParametersDidChange
{
  v18 = *MEMORY[0x1E69E9840];
  [(_UINavigationBarVisualProvider *)self->_visualProvider _shim_updateBackIndicator];
  currentBackButton = [(UINavigationBar *)self currentBackButton];
  _accessibilityButtonBackgroundTintColor = [(UINavigationBar *)self _accessibilityButtonBackgroundTintColor];
  if (currentBackButton && [currentBackButton _showsAccessibilityBackgroundWhenEnabled])
  {
    [currentBackButton _setWantsBlendModeForAccessibilityBackgrounds:_accessibilityButtonBackgroundTintColor == 0];
    [currentBackButton _setAccessibilityBackgroundTintColor:_accessibilityButtonBackgroundTintColor];
    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  subviews = [(UIView *)self subviews];
  v6 = [subviews countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(subviews);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [v11 _showsAccessibilityBackgroundWhenEnabled])
        {
          [v11 _setWantsBlendModeForAccessibilityBackgrounds:_accessibilityButtonBackgroundTintColor == 0];
          [v11 _setAccessibilityBackgroundTintColor:_accessibilityButtonBackgroundTintColor];
          v8 = 1;
        }
      }

      v7 = [subviews countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  if ((v12 | v8))
  {
    [(UINavigationBar *)self setNeedsLayout];
  }
}

- (void)_accessibilityButtonShapesDidChangeNotification:(id)notification
{
  if (!_AXSButtonShapesEnabled())
  {
    [__barButtonAccessibilityBackgroundImages removeAllObjects];
  }

  [(UINavigationBar *)self _accessibilityButtonShapesParametersDidChange];
}

- (void)_didChangeFromIdiom:(int64_t)idiom onScreen:(id)screen traverseHierarchy:(BOOL)hierarchy
{
  v9.receiver = self;
  v9.super_class = UINavigationBar;
  [(UIView *)&v9 _didChangeFromIdiom:idiom onScreen:screen traverseHierarchy:hierarchy];
  _screen = [(UIView *)self _screen];
  _userInterfaceIdiom = [_screen _userInterfaceIdiom];

  if (_userInterfaceIdiom != idiom && (idiom == 3 || _userInterfaceIdiom == 3))
  {
    [(UINavigationBar *)self _accessibilityButtonShapesParametersDidChange];
  }
}

- (BOOL)_suppressBackIndicator
{
  _screen = [(UIView *)self _screen];
  if (_screen)
  {
    _screen2 = [(UIView *)self _screen];
    v5 = ![(UINavigationBar *)self _shouldShowBackButtonForScreen:_screen2];
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (void)_setBarPosition:(int64_t)position
{
  positionCopy = 2;
  if (position)
  {
    positionCopy = position;
  }

  if (self->_barPosition != positionCopy)
  {
    self->_barPosition = positionCopy;
    [(_UINavigationBarVisualProvider *)self->_visualProvider changeAppearance];
  }
}

- (void)_barSizeDidChange:(CGSize)change
{
  [(_UINavigationBarVisualProvider *)self->_visualProvider recordBarSize:change.width, change.height];
  [(_UINavigationBarVisualProvider *)self->_visualProvider barSizeChanged];
  visualProvider = self->_visualProvider;

  [(_UINavigationBarVisualProvider *)visualProvider _shim_updateBackgroundViewIgnoringFlag];
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  [(UIView *)self frame];
  if ((_UIRectEquivalentToRectWithAccuracy(x, y, width, height, v8, v9, v10, v11, 0.00000011920929) & 1) == 0)
  {
    [(UIView *)self frame];
    v13 = v12;
    v15 = v14;
    v17.receiver = self;
    v17.super_class = UINavigationBar;
    [(UIView *)&v17 setFrame:x, y, width, height];
    if (width != v13 || height != v15)
    {
      [(UINavigationBar *)self _barSizeDidChange:v13, v15];
    }
  }
}

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  [(UIView *)self bounds];
  if ((_UIRectEquivalentToRectWithAccuracy(x, y, width, height, v8, v9, v10, v11, 0.00000011920929) & 1) == 0)
  {
    [(UIView *)self bounds];
    v13 = v12;
    v15 = v14;
    v17.receiver = self;
    v17.super_class = UINavigationBar;
    [(UIView *)&v17 setBounds:x, y, width, height];
    if (width != v13 || height != v15)
    {
      [(UINavigationBar *)self _barSizeDidChange:v13, v15];
    }
  }
}

- (void)setCenter:(CGPoint)center
{
  y = center.y;
  x = center.x;
  [(UIView *)self center];
  v8 = vabdd_f64(y, v7);
  if (vabdd_f64(x, v6) >= 0.00000011920929 || v8 >= 0.00000011920929)
  {
    v10.receiver = self;
    v10.super_class = UINavigationBar;
    [(UIView *)&v10 setCenter:x, y];
    [(_UINavigationBarVisualProvider *)self->_visualProvider _shim_updateBackgroundViewIgnoringFlag];
  }
}

- (CGRect)availableTitleArea
{
  v2 = *MEMORY[0x1E695F058];
  v3 = *(MEMORY[0x1E695F058] + 8);
  v4 = *(MEMORY[0x1E695F058] + 16);
  v5 = *(MEMORY[0x1E695F058] + 24);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)_fadeAllViewsOut
{
  v12 = *MEMORY[0x1E69E9840];
  _allViews = [(UINavigationBar *)self _allViews];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = [_allViews countByEnumeratingWithState:&v7 objects:v11 count:16];
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
          objc_enumerationMutation(_allViews);
        }

        [*(*(&v7 + 1) + 8 * v6++) setAlpha:0.0];
      }

      while (v4 != v6);
      v4 = [_allViews countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)layoutSublayersOfLayer:(id)layer
{
  layerCopy = layer;
  if ((*&self->_navbarFlags & 0x10) == 0 || (WeakRetained = objc_loadWeakRetained(&self->_delegate), v6 = [WeakRetained _freezeLayoutForOrientationChangeOnDismissal], WeakRetained, (v6 & 1) == 0))
  {
    visualProvider = self->_visualProvider;
    topItem = [(UINavigationBar *)self topItem];
    backItem = [(UINavigationBar *)self backItem];
    [(_UINavigationBarVisualProvider *)visualProvider _shim_updateUserContentGuideForTopItem:topItem backItem:backItem];

    v10.receiver = self;
    v10.super_class = UINavigationBar;
    [(UIView *)&v10 layoutSublayersOfLayer:layerCopy];
  }
}

- (void)_updateActiveBarMetrics
{
  if (!self->_appearanceStorage)
  {
    v3 = objc_alloc_init(_UINavigationBarAppearanceStorage);
    appearanceStorage = self->_appearanceStorage;
    self->_appearanceStorage = v3;
  }

  _currentVisualStyle = [(UINavigationBar *)self _currentVisualStyle];
  if (self->_alwaysUseDefaultMetrics)
  {
    v5 = 0;
  }

  else
  {
    effectiveInterfaceOrientation = [(UINavigationBar *)self effectiveInterfaceOrientation];
    _shim_promptText = [(_UINavigationBarVisualProvider *)self->_visualProvider _shim_promptText];
    v5 = [_currentVisualStyle navigationBar:self metricsForOrientation:effectiveInterfaceOrientation hasPrompt:_shim_promptText != 0];
  }

  v8 = [(UINavigationBar *)self _effectiveMetricsForMetrics:v5];
  [(_UINavigationBarAppearanceStorage *)self->_appearanceStorage setActiveBarMetrics:v8];
  [(_UINavigationBarVisualStyle *)self->_visualStyle setMetrics:v8];
}

- (void)_sendNavigationPopForBackBarButtonItem:(id)item
{
  itemCopy = item;
  action = [itemCopy action];
  if (__useCustomBackButtonAction != 1 || action == 0)
  {
    _effectiveDelegate = [(UINavigationBar *)self _effectiveDelegate];
    if (objc_opt_respondsToSelector())
    {
      topItem = [(_UINavigationBarItemStack *)self->_stack topItem];
      [_effectiveDelegate _popNavigationBar:self item:topItem];
    }

    else
    {
      isLocked = [(UINavigationBar *)self isLocked];
      [(UINavigationBar *)self setLocked:0];
      v11 = [(UINavigationBar *)self popNavigationItemAnimated:1];
      [(UINavigationBar *)self setLocked:isLocked];
    }
  }

  else
  {
    v7 = action;
    v8 = UIApp;
    _effectiveDelegate = [itemCopy target];
    [v8 sendAction:v7 to:_effectiveDelegate from:self forEvent:0];
  }
}

- (void)_setEdgesRequiringContentMargin:(unint64_t)margin
{
  if (self->_edgesRequiringContentMargin != margin)
  {
    self->_edgesRequiringContentMargin = margin;
    [(UINavigationBar *)self setNeedsLayout];
  }
}

- (void)_setAdjacentBarEdges:(unint64_t)edges
{
  if (self->_adjacentBarEdges != edges)
  {
    self->_adjacentBarEdges = edges;
    [(UINavigationBar *)self setNeedsLayout];
  }
}

- (BOOL)_canPerformCustomizeBarActionWithSender:(id)sender
{
  if ([(UIView *)self isHidden])
  {
    return 0;
  }

  visualProvider = self->_visualProvider;

  return [(_UINavigationBarVisualProvider *)visualProvider _supportsCustomization];
}

- (void)runToolbarCustomizationPalette:(id)palette
{
  if ([(UINavigationBar *)self _canPerformCustomizeBarActionWithSender:palette])
  {

    [(UINavigationBar *)self _beginCustomizingBar];
  }
}

- (void)_beginRenamingIfPossible
{
  topItem = [(UINavigationBar *)self topItem];
  _canRename = [topItem _canRename];

  if (_canRename)
  {
    visualProvider = self->_visualProvider;

    [(_UINavigationBarVisualProvider *)visualProvider _beginRenaming];
  }
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  senderCopy = sender;
  if (sel_rename_ == action)
  {
    topItem = [(UINavigationBar *)self topItem];
    _canRename = [topItem _canRename];
  }

  else
  {
    if (sel_runToolbarCustomizationPalette_ == action)
    {
      v7 = [(UINavigationBar *)self _canPerformCustomizeBarActionWithSender:senderCopy];
    }

    else
    {
      v11.receiver = self;
      v11.super_class = UINavigationBar;
      v7 = [(UIView *)&v11 canPerformAction:action withSender:senderCopy];
    }

    _canRename = v7;
  }

  return _canRename;
}

- (id)_accessibility_contentsOfNavigationBar
{
  v3 = objc_alloc_init(_UINavigationBarContents);
  topItem = [(_UINavigationBarItemStack *)self->_stack topItem];
  backItem = [(_UINavigationBarItemStack *)self->_stack backItem];
  [(_UINavigationBarContents *)v3 setTopItem:topItem];
  [(_UINavigationBarContents *)v3 setBackItem:backItem];
  _staticNavBarButtonItem = [(UINavigationBar *)self _staticNavBarButtonItem];
  [(_UINavigationBarContents *)v3 setStaticBarButtonItem:_staticNavBarButtonItem];

  if (topItem)
  {
    array = [MEMORY[0x1E695DF70] array];
    array2 = [MEMORY[0x1E695DF70] array];
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __57__UINavigationBar__accessibility_contentsOfNavigationBar__block_invoke;
    v19 = &unk_1E70F7A58;
    v20 = array;
    v21 = array2;
    v9 = array2;
    v10 = array;
    v11 = _Block_copy(&v16);
    leftBarButtonItems = [topItem leftBarButtonItems];
    [leftBarButtonItems enumerateObjectsUsingBlock:v11];

    rightBarButtonItems = [topItem rightBarButtonItems];
    [rightBarButtonItems enumerateObjectsUsingBlock:v11];

    [(_UINavigationBarContents *)v3 setCancelBarButtonItems:v10];
    [(_UINavigationBarContents *)v3 setOtherBarButtonItems:v9];
  }

  if (backItem)
  {
    _effectiveBackBarButtonItem = [backItem _effectiveBackBarButtonItem];
    [(_UINavigationBarContents *)v3 setBackBarButtonItem:_effectiveBackBarButtonItem];
  }

  if (topItem)
  {
    [(_UINavigationBarVisualProvider *)self->_visualProvider provideViewsForContents:v3 topItem:topItem backItem:backItem];
  }

  return v3;
}

void __57__UINavigationBar__accessibility_contentsOfNavigationBar__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  if (![v5 isSystemItem])
  {
    goto LABEL_5;
  }

  v3 = [v5 systemItem];
  if ((v3 - 5) < 2)
  {
    goto LABEL_7;
  }

  if (v3 == 1)
  {
    v4 = 32;
  }

  else
  {
LABEL_5:
    v4 = 40;
  }

  [*(a1 + v4) addObject:v5];
LABEL_7:
}

- (void)_accessibility_triggerBackButton
{
  if (![(_UINavigationBarItemStack *)self->_stack state])
  {
    topItem = [(_UINavigationBarItemStack *)self->_stack topItem];
    _effectiveBackBarButtonItem = [topItem _effectiveBackBarButtonItem];
    [(UINavigationBar *)self _sendNavigationPopForBackBarButtonItem:_effectiveBackBarButtonItem];
  }
}

- (BOOL)_accessibilityHUDGestureManager:(id)manager shouldBeginAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  if ([(_UINavigationBarItemStack *)self->_stack state])
  {
    return 0;
  }

  visualProvider = self->_visualProvider;

  return [(_UINavigationBarVisualProvider *)visualProvider _accessibility_shouldBeginHUDGestureAtPoint:x, y];
}

- (BOOL)_accessibilityHUDGestureManager:(id)manager shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)recognizer
{
  v31 = *MEMORY[0x1E69E9840];
  recognizerCopy = recognizer;
  topItem = [(_UINavigationBarItemStack *)self->_stack topItem];
  leftBarButtonItems = [topItem leftBarButtonItems];
  v8 = leftBarButtonItems;
  v9 = MEMORY[0x1E695E0F0];
  if (leftBarButtonItems)
  {
    v10 = leftBarButtonItems;
  }

  else
  {
    v10 = MEMORY[0x1E695E0F0];
  }

  v11 = v10;

  topItem2 = [(_UINavigationBarItemStack *)self->_stack topItem];
  rightBarButtonItems = [topItem2 rightBarButtonItems];
  v14 = rightBarButtonItems;
  if (rightBarButtonItems)
  {
    v15 = rightBarButtonItems;
  }

  else
  {
    v15 = v9;
  }

  v16 = v15;

  [v11 arrayByAddingObjectsFromArray:v16];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v17 = v29 = 0u;
  v18 = [v17 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v18)
  {
    v19 = *v27;
    while (2)
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v27 != v19)
        {
          objc_enumerationMutation(v17);
        }

        v21 = *(*(&v26 + 1) + 8 * i);
        view = [recognizerCopy view];
        view2 = [v21 view];
        v24 = [view isDescendantOfView:view2];

        if (v24)
        {
          LOBYTE(v18) = 1;
          goto LABEL_17;
        }
      }

      v18 = [v17 countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v18)
      {
        continue;
      }

      break;
    }
  }

LABEL_17:

  return v18;
}

- (void)_accessibilityHUDGestureManager:(id)manager gestureLiftedAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  managerCopy = manager;
  v7 = [(_UINavigationBarVisualProvider *)self->_visualProvider _accessibility_controlToActivateForHUDGestureLiftAtPoint:x, y];
  if (v7)
  {
    view = [managerCopy view];
    [v7 convertPoint:view fromView:{x, y}];
    [v7 _activateForAccessibilityHUDLiftAtPoint:?];
  }
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  visualProvider = self->_visualProvider;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __48__UINavigationBar_gestureRecognizerShouldBegin___block_invoke;
  v5[3] = &unk_1E70F7A80;
  v5[4] = self;
  return [(_UINavigationBarVisualProvider *)visualProvider gestureRecognizerShouldBegin:begin defaultAnswer:v5];
}

id __48__UINavigationBar_gestureRecognizerShouldBegin___block_invoke(uint64_t a1, uint64_t a2)
{
  v3.receiver = *(a1 + 32);
  v3.super_class = UINavigationBar;
  return objc_msgSendSuper2(&v3, sel_gestureRecognizerShouldBegin_, a2);
}

- (id)_systemDefaultFocusGroupIdentifier
{
  _focusBehavior = [(UIView *)self _focusBehavior];
  focusGroupContainmentBehavior = [_focusBehavior focusGroupContainmentBehavior];

  if ((focusGroupContainmentBehavior & 0x20) != 0)
  {
    _systemDefaultFocusGroupIdentifier = _UIFocusGroupIdentifierForInstance(self);
  }

  else
  {
    v7.receiver = self;
    v7.super_class = UINavigationBar;
    _systemDefaultFocusGroupIdentifier = [(UIView *)&v7 _systemDefaultFocusGroupIdentifier];
  }

  return _systemDefaultFocusGroupIdentifier;
}

- (int64_t)_sceneDraggingBehaviorOnPan
{
  if ([(_UINavigationBarVisualProvider *)self->_visualProvider isInCustomization])
  {
    return 2;
  }

  return [(UINavigationBar *)self barPosition]== 3 && ![(UIView *)self isHidden];
}

- (UIEdgeInsets)_additionalSafeAreaInsets
{
  top = self->_additionalSafeAreaInsets.top;
  left = self->_additionalSafeAreaInsets.left;
  bottom = self->_additionalSafeAreaInsets.bottom;
  right = self->_additionalSafeAreaInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (void)_uikit_applyValueFromTraitStorage:(id)storage forKeyPath:(id)path
{
  storageCopy = storage;
  pathCopy = path;
  if ([pathCopy hasPrefix:@"titleTextAttributes."] && objc_msgSend(pathCopy, "length") >= 0x15)
  {
    v8 = [pathCopy substringFromIndex:20];
    titleTextAttributes = [(UINavigationBar *)self titleTextAttributes];
    v10 = [titleTextAttributes mutableCopy];

    [v10 setValue:storageCopy forKeyPath:v8];
    [(UINavigationBar *)self setTitleTextAttributes:v10];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = UINavigationBar;
    [&v11 _uikit_applyValueFromTraitStorage:storageCopy forKeyPath:pathCopy];
  }
}

- (double)_autolayoutSpacingAtEdge:(int)edge forAttribute:(int64_t)attribute inContainer:(id)container isGuide:(BOOL)guide
{
  result = 0.0;
  if (guide)
  {
    v7.receiver = self;
    v7.super_class = UINavigationBar;
    [(UIView *)&v7 _autolayoutSpacingAtEdge:*&edge forAttribute:attribute inContainer:container isGuide:1, 0.0];
  }

  return result;
}

@end