@interface UINavigationBar
+ (CGSize)defaultSize;
+ (CGSize)defaultSizeForOrientation:(int64_t)a3;
+ (CGSize)defaultSizeWithPrompt;
+ (CGSize)defaultSizeWithPromptForOrientation:(int64_t)a3;
+ (Class)_visualProviderClassForNavigationBar:(id)a3;
+ (id)_defaultVisualStyleForOrientation:(int64_t)a3;
+ (id)_visualProviderForNavigationBar:(id)a3;
+ (id)defaultPromptFont;
+ (void)_initializeForIdiom:(int64_t)a3;
- ($1AB5FA073B851C12C2339EC22442E995)_layoutHeightsForNavigationItem:(id)a3 fittingWidth:(double)a4;
- (BOOL)_accessibilityHUDGestureManager:(id)a3 shouldBeginAtPoint:(CGPoint)a4;
- (BOOL)_accessibilityHUDGestureManager:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (BOOL)_allowInteractionDuringTransition;
- (BOOL)_canPerformCustomizeBarActionWithSender:(id)a3;
- (BOOL)_canPreemptTransition;
- (BOOL)_delegateWantsNavigationBarHidden;
- (BOOL)_didVisibleItemsChangeWithNewItems:(id)a3 oldItems:(id)a4;
- (BOOL)_hasBackButton;
- (BOOL)_hasFixedMaximumHeight;
- (BOOL)_heightDependentOnOrientation;
- (BOOL)_isAnimationEnabled;
- (BOOL)_shouldAnimatePropertyWithKey:(id)a3;
- (BOOL)_shouldCrossFadeBackgroundVisility;
- (BOOL)_shouldDecodeSubviews;
- (BOOL)_subclassImplementsDrawRect;
- (BOOL)_suppressBackIndicator;
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (BOOL)isTranslucent;
- (CGRect)_incomingNavigationBarFrame;
- (CGRect)availableTitleArea;
- (CGRect)promptBounds;
- (CGSize)defaultSizeForOrientation:(int64_t)a3;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (NSArray)_animationIds;
- (NSDirectionalEdgeInsets)_resolvedLargeTitleMargins;
- (NSDirectionalEdgeInsets)_resolvedLayoutMargins;
- (NSDirectionalEdgeInsets)_resolvedSearchBarMargins;
- (NSString)_backdropViewLayerGroupName;
- (NSString)description;
- (UIEdgeInsets)_additionalSafeAreaInsets;
- (UIEdgeInsets)_safeAreaInsetsForFrame:(CGRect)a3 inSuperview:(id)a4 ignoreViewController:(BOOL)a5;
- (UIImage)backIndicatorImage;
- (UIImage)backIndicatorTransitionMaskImage;
- (UIImage)backgroundImageForBarMetrics:(UIBarMetrics)barMetrics;
- (UIImage)backgroundImageForBarPosition:(UIBarPosition)barPosition barMetrics:(UIBarMetrics)barMetrics;
- (UINavigationBar)initWithCoder:(id)a3;
- (UINavigationBar)initWithFrame:(CGRect)a3;
- (UINavigationBarAppearance)standardAppearance;
- (UINavigationItem)popNavigationItemAnimated:(BOOL)animated;
- (UIView)currentLeftView;
- (UIView)currentRightView;
- (_UINavigationBarDelegatePrivate)_privateDelegate;
- (_UINavigationItemButtonView)currentBackButton;
- (double)_autolayoutSpacingAtEdge:(int)a3 forAttribute:(int64_t)a4 inContainer:(id)a5 isGuide:(BOOL)a6;
- (double)_backIndicatorLeftMargin;
- (double)_effectiveBackIndicatorLeftMargin;
- (double)_heightIncludingBackground;
- (double)defaultBackButtonAlignmentHeight;
- (double)defaultHeightForMetrics:(int64_t)a3;
- (id)_accessibility_contentsOfNavigationBar;
- (id)_accessibility_navigationController;
- (id)_backButtonForBackItem:(id)a3 topItem:(id)a4;
- (id)_backgroundViewForPalette:(id)a3;
- (id)_currentLeftViews;
- (id)_currentRightViews;
- (id)_currentVisualStyle;
- (id)_defaultTitleFontFittingHeight:(double)a3 withScaleAdjustment:(double)a4;
- (id)_defaultTitleFontWithScaleAdjustment:(double)a3;
- (id)_effectiveDelegate;
- (id)_effectiveDelegateForItem:(id)a3;
- (id)_effectiveSearchControllerForNavigationItem:(id)a3;
- (id)_popNavigationItemWithTransition:(int)a3;
- (id)_systemDefaultFocusGroupIdentifier;
- (id)_titleTextColor;
- (id)_traitCollectionForChildEnvironment:(id)a3;
- (id)animationFactory;
- (id)delegate;
- (id)hitTest:(CGPoint)a3 forEvent:(__GSEvent *)a4;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (int)_transitionForOldItems:(id)a3 newItems:(id)a4;
- (int64_t)_currentBarStyle;
- (int64_t)_effectiveMetricsForMetrics:(int64_t)a3;
- (int64_t)_sceneDraggingBehaviorOnPan;
- (int64_t)effectiveInterfaceOrientation;
- (void)_accessibilityButtonShapesDidChangeNotification:(id)a3;
- (void)_accessibilityButtonShapesParametersDidChange;
- (void)_accessibilityHUDGestureManager:(id)a3 gestureLiftedAtPoint:(CGPoint)a4;
- (void)_accessibility_triggerBackButton;
- (void)_addItem:(id)a3 withEffectiveDelegate:(id)a4 transition:(int)a5;
- (void)_addItems:(id)a3 withEffectiveDelegate:(id)a4 transition:(int)a5;
- (void)_applySPIAppearanceToButtons;
- (void)_barSizeDidChange:(CGSize)a3;
- (void)_beginRenamingIfPossible;
- (void)_cancelInteractiveTransition;
- (void)_cancelInteractiveTransition:(double)a3 completionSpeed:(double)a4 completionCurve:(int64_t)a5;
- (void)_commonNavBarInit;
- (void)_completePopOperationAnimated:(BOOL)a3 transitionAssistant:(id)a4;
- (void)_completePushOperationAnimated:(BOOL)a3 transitionAssistant:(id)a4;
- (void)_configurePaletteConstraintsIfNecessary;
- (void)_customViewChangedForButtonItem:(id)a3;
- (void)_didChangeFromIdiom:(int64_t)a3 onScreen:(id)a4 traverseHierarchy:(BOOL)a5;
- (void)_didMoveFromWindow:(id)a3 toWindow:(id)a4;
- (void)_effectiveBarTintColorDidChangeWithPreviousColor:(id)a3;
- (void)_evaluateBackIndicatorForHilightedState:(BOOL)a3 ofBarButtonItem:(id)a4 inNavigationItem:(id)a5;
- (void)_fadeAllViewsIn;
- (void)_fadeAllViewsOut;
- (void)_finishInteractiveTransition:(double)a3 completionSpeed:(double)a4 completionCurve:(int64_t)a5;
- (void)_getBackgroundImage:(id *)a3 shouldRespectOversizedBackgroundImage:(BOOL *)a4 actualBarMetrics:(int64_t *)a5 actualBarPosition:(int64_t *)a6;
- (void)_installDefaultAppearance;
- (void)_palette:(id)a3 isAttaching:(BOOL)a4 didComplete:(BOOL)a5;
- (void)_performUpdatesIgnoringLock:(id)a3;
- (void)_popNavigationItemWithTransitionAssistant:(id)a3;
- (void)_popNestedNavigationItem;
- (void)_populateArchivedSubviews:(id)a3;
- (void)_prepareToAnimateTransition;
- (void)_propagateEffectiveBarTintColorWithPreviousColor:(id)a3;
- (void)_pushNavigationItem:(id)a3 transition:(int)a4;
- (void)_pushNavigationItem:(id)a3 transitionAssistant:(id)a4;
- (void)_pushNavigationItemUsingCurrentTransition:(id)a3;
- (void)_redisplayItems;
- (void)_reenableUserInteraction;
- (void)_reenableUserInteractionWhenReadyWithContext:(id)a3;
- (void)_sendNavigationBarAnimateTransition;
- (void)_sendNavigationBarDidChangeStyle;
- (void)_sendNavigationBarResize;
- (void)_sendNavigationPopForBackBarButtonItem:(id)a3;
- (void)_sendResizeForPromptChange;
- (void)_setAccessibilityButtonBackgroundTintColor:(id)a3;
- (void)_setAdditionalSafeAreaInsets:(UIEdgeInsets)a3;
- (void)_setAdjacentBarEdges:(unint64_t)a3;
- (void)_setAlwaysUseDefaultMetrics:(BOOL)a3;
- (void)_setBackButtonBackgroundImage:(id)a3 mini:(id)a4 forStates:(unint64_t)a5;
- (void)_setBackIndicatorLeftMargin:(double)a3;
- (void)_setBackdropViewLayerGroupName:(id)a3;
- (void)_setBackgroundImage:(id)a3 mini:(id)a4;
- (void)_setBarPosition:(int64_t)a3;
- (void)_setBarStyle:(int64_t)a3;
- (void)_setButtonBackgroundImage:(id)a3 mini:(id)a4 forStates:(unint64_t)a5;
- (void)_setButtonItemTextColor:(id)a3 shadowColor:(id)a4 forState:(unint64_t)a5;
- (void)_setButtonTextShadowOffset:(CGSize)a3;
- (void)_setDecodedItems:(id)a3;
- (void)_setDecodedUnlockedWithNavigationControllerDelegate:(BOOL)a3;
- (void)_setDeferShadowToSearchBar:(BOOL)a3;
- (void)_setEdgesRequiringContentMargin:(unint64_t)a3;
- (void)_setForceScrollEdgeAppearance:(BOOL)a3;
- (void)_setHidesShadow:(BOOL)a3;
- (void)_setItems:(id)a3 transition:(int)a4 reset:(BOOL)a5;
- (void)_setItemsUpToItem:(id)a3 transition:(int)a4;
- (void)_setNeedsBackgroundViewUpdate;
- (void)_setPrompt:(id)a3;
- (void)_setReversesButtonTextShadowOffsetWhenPressed:(BOOL)a3;
- (void)_setupAXHUDGestureIfNecessary;
- (void)_traitCollectionDidChangeOnSubtreeInternal:(const _UITraitCollectionChangeDescription *)a3;
- (void)_uikit_applyValueFromTraitStorage:(id)a3 forKeyPath:(id)a4;
- (void)_updateActiveBarMetrics;
- (void)_updateAppearancesForNewVisualProvider;
- (void)_updateBackButtonVisibilityIfTop:(id)a3 animated:(BOOL)a4;
- (void)_updateContentIfTopItem:(id)a3 animated:(BOOL)a4;
- (void)_updateInteractiveTransition:(double)a3;
- (void)_updateNavigationBarItem:(id)a3 forStyle:(int64_t)a4 previousTintColor:(id)a5;
- (void)_updateNavigationBarItemsForStyle:(int64_t)a3;
- (void)_updateNavigationBarItemsForStyle:(int64_t)a3 previousTintColor:(id)a4;
- (void)_updateOpacity;
- (void)_updatePalette:(id)a3;
- (void)_updatePaletteBackgroundIfNecessary;
- (void)_updateTitleViewIfTop:(id)a3;
- (void)_upgradeAppearanceAPI;
- (void)_willMoveToWindow:(id)a3;
- (void)addConstraint:(id)a3;
- (void)dealloc;
- (void)didAddSubview:(id)a3;
- (void)didMoveToWindow;
- (void)encodeWithCoder:(id)a3;
- (void)invalidateIntrinsicContentSize;
- (void)layoutMarginsDidChange;
- (void)layoutSublayersOfLayer:(id)a3;
- (void)layoutSubviews;
- (void)pushNavigationItem:(UINavigationItem *)item animated:(BOOL)animated;
- (void)removeConstraint:(id)a3;
- (void)runToolbarCustomizationPalette:(id)a3;
- (void)safeAreaInsetsDidChange;
- (void)setBackIndicatorImage:(UIImage *)backIndicatorImage;
- (void)setBackIndicatorTransitionMaskImage:(UIImage *)backIndicatorTransitionMaskImage;
- (void)setBackgroundEffects:(id)a3;
- (void)setBackgroundImage:(UIImage *)backgroundImage forBarPosition:(UIBarPosition)barPosition barMetrics:(UIBarMetrics)barMetrics;
- (void)setBarTintColor:(UIColor *)barTintColor;
- (void)setBounds:(CGRect)a3;
- (void)setButton:(int)a3 enabled:(BOOL)a4;
- (void)setCenter:(CGPoint)a3;
- (void)setCompactAppearance:(UINavigationBarAppearance *)compactAppearance;
- (void)setCompactScrollEdgeAppearance:(UINavigationBarAppearance *)compactScrollEdgeAppearance;
- (void)setDelegate:(id)delegate;
- (void)setForceFullHeightInLandscape:(BOOL)a3;
- (void)setFrame:(CGRect)a3;
- (void)setInsetsLayoutMarginsFromSafeArea:(BOOL)a3;
- (void)setItems:(NSArray *)items animated:(BOOL)animated;
- (void)setLargeTitleTextAttributes:(NSDictionary *)largeTitleTextAttributes;
- (void)setLocked:(BOOL)a3;
- (void)setNeedsLayout;
- (void)setPrefersLargeTitles:(BOOL)prefersLargeTitles;
- (void)setRequestedContentSize:(int64_t)a3;
- (void)setScrollEdgeAppearance:(UINavigationBarAppearance *)scrollEdgeAppearance;
- (void)setSemanticContentAttribute:(int64_t)a3;
- (void)setShadowImage:(UIImage *)shadowImage;
- (void)setStandardAppearance:(UINavigationBarAppearance *)standardAppearance;
- (void)setTintColor:(UIColor *)tintColor;
- (void)setTitleTextAttributes:(NSDictionary *)titleTextAttributes;
- (void)setTitleVerticalPositionAdjustment:(CGFloat)adjustment forBarMetrics:(UIBarMetrics)barMetrics;
- (void)setTranslatesAutoresizingMaskIntoConstraints:(BOOL)a3;
- (void)setTranslucent:(BOOL)translucent;
- (void)tintColorDidChange;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
- (void)traitCollectionDidChange:(id)a3;
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
      v3 = [(UIView *)self traitCollection];
      v4 = [v3 _isLargeContentViewerEnabled];

      if (v4)
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
  v3 = [(UINavigationBar *)self topItem];
  v4 = [(UINavigationBar *)self _effectiveDelegateForItem:v3];

  return v4;
}

- (void)_commonNavBarInit
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = [(UINavigationBar *)self _isAlwaysHidden];
  if (!self->_barPosition)
  {
    self->_barPosition = 2;
  }

  if (!v3)
  {
    -[_UINavigationBarVisualProvider _shim_setUseContentView:](self->_visualProvider, "_shim_setUseContentView:", [objc_opt_class() _supportsCanvasView]);
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    [v4 addObserver:self selector:sel__accessibilityButtonShapesDidChangeNotification_ name:@"UIAccessibilityButtonShapesEnabledStatusDidChangeNotification" object:0];
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

  v8 = [MEMORY[0x1E696AD88] defaultCenter];
  [v8 addObserver:self selector:sel__largeContentViewerEnabledStatusDidChange_ name:@"UILargeContentViewerInteractionEnabledStatusDidChangeNotification" object:0];
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
    v5 = [(_UINavigationBarItemStack *)self->_stack topItem];
    v6 = [v5 _navigationBar];

    if ([(UIView *)self isHidden])
    {
      if (v6 != self && v6 != 0)
      {
LABEL_34:

        goto LABEL_35;
      }
    }

    if (v6 != self && v6 != 0)
    {
      v9 = [(UIView *)self window];
      if (v9 && ([(UIView *)v6 window], (v10 = objc_claimAutoreleasedReturnValue()) != 0))
      {
      }

      else
      {
        v11 = dyld_program_sdk_at_least();
        v12 = v11;
        if (v9)
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
            v19 = [(_UINavigationBarItemStack *)self->_stack topItem];
            *buf = 138412802;
            v23 = self;
            v24 = 2112;
            v25 = v19;
            v26 = 2112;
            v27 = v6;
            _os_log_fault_impl(&dword_188A29000, v13, OS_LOG_TYPE_FAULT, "Skipping layout for visible navigation bar, %@, because the top item's navigation bar doesn't match.  topItem = %@, topItem's navigation bar = %@", buf, 0x20u);
          }
        }

        else
        {
          v13 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED49AAD0) + 8);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            v14 = [(_UINavigationBarItemStack *)self->_stack topItem];
            *buf = 138412802;
            v23 = self;
            v24 = 2112;
            v25 = v14;
            v26 = 2112;
            v27 = v6;
            _os_log_impl(&dword_188A29000, v13, OS_LOG_TYPE_ERROR, "Skipping layout for visible navigation bar, %@, because the top item's navigation bar doesn't match.  topItem = %@, topItem's navigation bar = %@", buf, 0x20u);
          }
        }

        goto LABEL_34;
      }

      _UIIsPrivateMainBundle();
      if (dyld_program_sdk_at_least())
      {
        v15 = [MEMORY[0x1E696AAA8] currentHandler];
        v16 = [(_UINavigationBarItemStack *)self->_stack topItem];
        [v15 handleFailureInMethod:a2 object:self file:@"UINavigationBar.m" lineNumber:4033 description:@"Layout requested for visible navigation bar, %@, when the top item belongs to a different navigation bar. topItem = %@, navigation bar = %@, possibly from a client attempt to nest wrapped navigation controllers.", self, v16, v6];
      }

      else if (os_variant_has_internal_diagnostics())
      {
        v15 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
        {
          v18 = [(_UINavigationBarItemStack *)self->_stack topItem];
          *buf = 138412802;
          v23 = self;
          v24 = 2112;
          v25 = v18;
          v26 = 2112;
          v27 = v6;
          _os_log_fault_impl(&dword_188A29000, v15, OS_LOG_TYPE_FAULT, "Layout requested for visible navigation bar, %@, when the top item belongs to a different navigation bar. topItem = %@, navigation bar = %@, possibly from a client attempt to nest wrapped navigation controllers.This mismatch may cause a layout feedback loop. This will become an assert in a future version.", buf, 0x20u);
        }
      }

      else
      {
        v15 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED49AAD8) + 8);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          v17 = [(_UINavigationBarItemStack *)self->_stack topItem];
          *buf = 138412802;
          v23 = self;
          v24 = 2112;
          v25 = v17;
          v26 = 2112;
          v27 = v6;
          _os_log_impl(&dword_188A29000, v15, OS_LOG_TYPE_ERROR, "Layout requested for visible navigation bar, %@, when the top item belongs to a different navigation bar. topItem = %@, navigation bar = %@, possibly from a client attempt to nest wrapped navigation controllers.This mismatch may cause a layout feedback loop. This will become an assert in a future version.", buf, 0x20u);
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
  v4 = [(UINavigationBar *)self _effectiveBarTintColor];
  v5 = [(UIView *)self _screen];
  IsTranslucentOnScreen = _UIBarStyleWithTintColorIsTranslucentOnScreen(barStyle, v4, v5);

  v14 = IsTranslucentOnScreen;
  barTranslucence = self->_barTranslucence;
  if (barTranslucence)
  {
    return barTranslucence == 1;
  }

  else
  {
    v8 = [(UIView *)self _screen];
    v9 = [v8 _userInterfaceIdiom];

    if (v9 != 3)
    {
      v10 = self->_appearanceStorage;
      if ([(_UIBarAppearanceStorage *)v10 hasAnyCustomBackgroundImage])
      {
        v11 = [(UIView *)self _screen];
        v12 = -[_UINavigationBarAppearanceStorage representativeImageForIdiom:](v10, "representativeImageForIdiom:", [v11 _userInterfaceIdiom]);

        [v12 _isInvisibleAndGetIsTranslucent:&v14];
      }

      return v14;
    }
  }

  return IsTranslucentOnScreen;
}

- (void)_updateOpacity
{
  v3 = [(UIView *)self isOpaque];
  v4 = [(UINavigationBar *)self isTranslucent];
  if (v3 == v4)
  {
    [(UIView *)self setOpaque:v4 ^ 1u];
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
        v12 = [v11 item];
        v13 = [v12 _stackEntry];
        [v13 updateStateFromCounterpart:v11];
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
    v3 = [(UIView *)self traitCollection];
    -[UIView setTintAdjustmentMode:](self, "setTintAdjustmentMode:", 2 * ([v3 activeAppearance] == 0));
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
    v10 = [(UIView *)self _shouldReverseLayoutDirection];
    if (v10)
    {
      v11 = v7;
    }

    else
    {
      v11 = v9;
    }

    if (!v10)
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
  v3 = [(_UINavigationBarAppearanceStorage *)self->_appearanceStorage backIndicatorImage];

  if (v3)
  {
    v4 = [(_UINavigationBarAppearanceStorage *)self->_appearanceStorage backIndicatorTransitionMaskImage];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (UIImage)backIndicatorImage
{
  v3 = [(_UINavigationBarAppearanceStorage *)self->_appearanceStorage backIndicatorTransitionMaskImage];

  if (v3)
  {
    v4 = [(_UINavigationBarAppearanceStorage *)self->_appearanceStorage backIndicatorImage];
  }

  else
  {
    v4 = 0;
  }

  return v4;
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
  v3 = [(UINavigationBar *)self topItem];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = [v3 leftBarButtonItems];
  v5 = [v4 countByEnumeratingWithState:&v18 objects:v24 count:16];
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
          objc_enumerationMutation(v4);
        }

        [*(*(&v18 + 1) + 8 * v8++) _updateView];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v18 objects:v24 count:16];
    }

    while (v6);
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v9 = [v3 rightBarButtonItems];
  v10 = [v9 countByEnumeratingWithState:&v14 objects:v23 count:16];
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
          objc_enumerationMutation(v9);
        }

        [*(*(&v14 + 1) + 8 * v13++) _updateView];
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v14 objects:v23 count:16];
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
      v4 = [(UIView *)self window];

      if (v4)
      {
        v7 = [MEMORY[0x1E696AAA8] currentHandler];
        v5 = [(UIView *)self traitCollection];
        v6 = _NSStringFromUIUserInterfaceIdiom([v5 userInterfaceIdiom]);
        [v7 handleFailureInMethod:a2 object:self file:@"UINavigationBar.m" lineNumber:920 description:{@"New Bar Appearance API is not supported in this configuration. Are you using a legacy navigation bar? Idiom: %@, Navigation bar: %@", v6, self}];
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
  v2 = [(UIView *)self traitCollection];
  v3 = objc_opt_self();
  v4 = [v2 objectForTrait:v3];

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

  v4 = [(UIView *)self superview];
  if (v4)
  {
    v5 = [(UIView *)self window];
    v2 = v5 != 0;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)updatePrompt
{
  v8 = [(_UINavigationBarVisualProvider *)self->_visualProvider _shim_promptText];
  v3 = [(UINavigationBar *)self topItem];
  v4 = [v3 prompt];

  if ([(_UINavigationBarItemStack *)self->_stack isPushingOrPopping])
  {
    if (v8)
    {
      v5 = 1;
    }

    else
    {
      v5 = v4 == 0;
    }

    if (v5)
    {
      if (v8)
      {
        v6 = v4 == 0;
      }

      else
      {
        v6 = 0;
      }

      if (!v6)
      {
        goto LABEL_14;
      }

      v4 = &stru_1EFB14550;
    }

    else
    {

      v4 = 0;
    }

    v7 = [(_UINavigationBarItemStack *)self->_stack transitionAssistant];
    [v7 setShouldUpdatePromptAfterTransition:1];
  }

LABEL_14:
  [(UINavigationBar *)self _setPrompt:v4];
}

- (void)_installDefaultAppearance
{
  if (!self->_standardAppearance)
  {
    v3 = [UINavigationBarAppearance alloc];
    v4 = [(UIView *)self traitCollection];
    v5 = -[UIBarAppearance initWithIdiom:](v3, "initWithIdiom:", [v4 userInterfaceIdiom]);
    standardAppearance = self->_standardAppearance;
    self->_standardAppearance = v5;

    v7 = [(_UINavigationBarVisualProvider *)self->_visualProvider appearanceObserver];
    v8 = self->_standardAppearance;
    if (v8)
    {
      v9 = v7;
      objc_storeWeak(&v8->super._changeObserver, v7);
      v7 = v9;
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

  v4 = [(_UINavigationBarVisualProvider *)self->_visualProvider refreshControlHost];
  v3 = v4 == 0;

  return v3;
}

- (id)_accessibility_navigationController
{
  v2 = [(UINavigationBar *)self _effectiveDelegate];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
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
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:@"UIAccessibilityButtonShapesEnabledStatusDidChangeNotification" object:0];

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

- (void)_setDecodedUnlockedWithNavigationControllerDelegate:(BOOL)a3
{
  if (a3)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_navbarFlags = *&self->_navbarFlags & 0xFDFF | v3;
}

- (void)_performUpdatesIgnoringLock:(id)a3
{
  v4 = *&self->_navbarFlags & 2;
  *&self->_navbarFlags = *&self->_navbarFlags & 0xFFF9 | 4;
  (*(a3 + 2))(a3, a2);
  *&self->_navbarFlags = *&self->_navbarFlags & 0xFFF9 | v4;
}

- (void)_applySPIAppearanceToButtons
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = [(UIView *)self subviews];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * v7);
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
        {
          v9 = [(_UINavigationBarAppearanceStorage *)self->_appearanceStorage barButtonAppearanceStorage];
          [v8 _applyBarButtonAppearanceStorage:v9 withTaggedSelectors:0];

          [v8 setNeedsDisplay];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

- (void)_setBackgroundImage:(id)a3 mini:(id)a4
{
  v6 = a4;
  [(UINavigationBar *)self setBackgroundImage:a3 forBarMetrics:0];
  [(UINavigationBar *)self setBackgroundImage:v6 forBarMetrics:1];
}

- (void)_setButtonBackgroundImage:(id)a3 mini:(id)a4 forStates:(unint64_t)a5
{
  v17 = a3;
  v9 = a4;
  if (a5 >= 2)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"UINavigationBar.m" lineNumber:474 description:@"Normal and Highlighted (pressed) states are the only supported states"];
  }

  appearanceStorage = self->_appearanceStorage;
  if (!appearanceStorage)
  {
    v11 = objc_alloc_init(_UINavigationBarAppearanceStorage);
    v12 = self->_appearanceStorage;
    self->_appearanceStorage = v11;

    appearanceStorage = self->_appearanceStorage;
  }

  v13 = [(_UINavigationBarAppearanceStorage *)appearanceStorage barButtonAppearanceStorage];
  v14 = [v13 backgroundImageForState:a5 style:8 isMini:0];
  if (v14 == v17)
  {
    v15 = [v13 backgroundImageForState:a5 style:8 isMini:1];

    if (v15 == v9)
    {
      goto LABEL_9;
    }
  }

  else
  {
  }

  [v13 setBackgroundImage:v17 forState:a5 style:8 isMini:0];
  [v13 setBackgroundImage:v9 forState:a5 style:8 isMini:1];
  [(UINavigationBar *)self _applySPIAppearanceToButtons];
LABEL_9:
}

- (void)_setBackButtonBackgroundImage:(id)a3 mini:(id)a4 forStates:(unint64_t)a5
{
  v17 = a3;
  v9 = a4;
  if (a5 >= 2)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"UINavigationBar.m" lineNumber:490 description:@"Normal and Highlighted (pressed) states are the only supported states"];
  }

  appearanceStorage = self->_appearanceStorage;
  if (!appearanceStorage)
  {
    v11 = objc_alloc_init(_UINavigationBarAppearanceStorage);
    v12 = self->_appearanceStorage;
    self->_appearanceStorage = v11;

    appearanceStorage = self->_appearanceStorage;
  }

  v13 = [(_UINavigationBarAppearanceStorage *)appearanceStorage barButtonAppearanceStorage];
  v14 = [v13 backButtonBackgroundImageForState:a5 isMini:0];
  if (v14 == v17)
  {
    v15 = [v13 backButtonBackgroundImageForState:a5 isMini:1];

    if (v15 == v9)
    {
      goto LABEL_9;
    }
  }

  else
  {
  }

  [v13 setBackButtonBackgroundImage:v17 forState:a5 isMini:0];
  [v13 setBackButtonBackgroundImage:v9 forState:a5 isMini:1];
  [(UINavigationBar *)self _applySPIAppearanceToButtons];
LABEL_9:
}

- (void)_setButtonItemTextColor:(id)a3 shadowColor:(id)a4 forState:(unint64_t)a5
{
  v22 = a3;
  v8 = a4;
  appearanceStorage = self->_appearanceStorage;
  if (!appearanceStorage)
  {
    v10 = objc_alloc_init(_UINavigationBarAppearanceStorage);
    v11 = self->_appearanceStorage;
    self->_appearanceStorage = v10;

    appearanceStorage = self->_appearanceStorage;
  }

  v12 = [(_UINavigationBarAppearanceStorage *)appearanceStorage barButtonAppearanceStorage];
  v13 = [v12 textAttributesForState:a5];
  if (v22 || v8 || v13)
  {
    v14 = [v13 mutableCopy];
    if (!v14)
    {
      v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    v15 = *off_1E70EC920;
    if (v22)
    {
      [v14 setObject:v22 forKey:v15];
    }

    else
    {
      [v14 removeObjectForKey:v15];
    }

    v16 = *off_1E70EC9B0;
    v17 = [v13 objectForKey:*off_1E70EC9B0];
    if (v17)
    {
      if (!v8)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v17 = objc_alloc_init(off_1E70ECB90);
      [v17 setShadowOffset:{0.0, -1.0}];
      [v17 setShadowColor:0];
      if (!v8)
      {
        goto LABEL_19;
      }
    }

    if (a5 == 1)
    {
      if ([(_UINavigationBarAppearanceStorage *)self->_appearanceStorage reversesShadowOffset])
      {
        v18 = [v12 textAttributeForKey:v16 state:0];
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
    if (!v8)
    {
      [v14 removeObjectForKey:v16];
LABEL_24:
      if (([v14 isEqualToDictionary:v13] & 1) == 0)
      {
        [v12 setTextAttributes:v14 forState:a5];
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

- (void)_setButtonTextShadowOffset:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  appearanceStorage = self->_appearanceStorage;
  if (!appearanceStorage)
  {
    v7 = objc_alloc_init(_UINavigationBarAppearanceStorage);
    v8 = self->_appearanceStorage;
    self->_appearanceStorage = v7;

    appearanceStorage = self->_appearanceStorage;
  }

  v20 = [(_UINavigationBarAppearanceStorage *)appearanceStorage barButtonAppearanceStorage];
  v9 = [v20 textAttributesForState:0];
  v10 = [v20 textAttributesForState:1];
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

  v13 = [(_UINavigationBarAppearanceStorage *)self->_appearanceStorage reversesShadowOffset];
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
  if (!v13)
  {
    v19 = height;
    v18 = width;
  }

  [v17 setShadowOffset:{v18, v19}];
  [v11 setObject:v15 forKey:v14];
  [v12 setObject:v17 forKey:v14];
  if (([v11 isEqualToDictionary:v9] & 1) == 0)
  {
    [v20 setTextAttributes:v11 forState:0];
    if ([v12 isEqual:v10])
    {
LABEL_16:
      [(UINavigationBar *)self _applySPIAppearanceToButtons];
      goto LABEL_17;
    }

LABEL_15:
    [v20 setTextAttributes:v12 forState:1];
    goto LABEL_16;
  }

  if (([v12 isEqual:v10] & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_17:
}

- (void)_setReversesButtonTextShadowOffsetWhenPressed:(BOOL)a3
{
  v3 = a3;
  appearanceStorage = self->_appearanceStorage;
  if (a3)
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

  v20 = [(_UINavigationBarAppearanceStorage *)appearanceStorage barButtonAppearanceStorage];
  v8 = [v20 textAttributesForState:0];
  v9 = [v20 textAttributesForState:1];
  v10 = v9;
  if (v3 || (!v8 ? (v11 = v9 == 0) : (v11 = 0), !v11))
  {
    v12 = [v9 mutableCopy];
    if (!v12)
    {
      v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    [(_UINavigationBarAppearanceStorage *)self->_appearanceStorage setReversesShadowOffset:v3];
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
        if (v3)
        {
          v16 = -v16;
          v17 = -v17;
        }

        [v15 setShadowOffset:{v16, v17, v18, v19}];
        [v12 setObject:v15 forKey:v13];
        if (([v12 isEqual:v10] & 1) == 0)
        {
          [v20 setTextAttributes:v12 forState:1];
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

- (id)_backgroundViewForPalette:(id)a3
{
  v3 = a3;
  v4 = [_UIBarBackground alloc];
  [v3 bounds];
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

- (void)_palette:(id)a3 isAttaching:(BOOL)a4 didComplete:(BOOL)a5
{
  if (a4)
  {
    [(UINavigationBar *)self _updatePalette:a3, a4, a5];
  }
}

- (id)_effectiveDelegateForItem:(id)a3
{
  v4 = a3;
  if ((*&self->_navbarFlags & 0x40) == 0 || (v5 = objc_loadWeakRetained(&self->_delegate), [v5 _effectiveDelegateForNavigationItem:v4], WeakRetained = objc_claimAutoreleasedReturnValue(), v5, !WeakRetained))
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

- (void)_setBackdropViewLayerGroupName:(id)a3
{
  v7 = a3;
  v4 = [(UIView *)self traitOverrides];
  v5 = objc_opt_self();
  if (v7)
  {
    [v4 setObject:v7 forTrait:v5];
  }

  else
  {
    v6 = [v4 containsTrait:v5];

    if (!v6)
    {
      goto LABEL_6;
    }

    v4 = [(UIView *)self traitOverrides];
    v5 = objc_opt_self();
    [v4 removeTrait:v5];
  }

LABEL_6:
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)a3
{
  v4 = a3;
  if ([v4 hasPrefix:@"filters"])
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = UINavigationBar;
    v5 = [(UIView *)&v7 _shouldAnimatePropertyWithKey:v4];
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

    v8 = [(_UINavigationBarAppearanceStorage *)appearanceStorage backIndicatorImage];

    v4 = v9;
    if (v8 != v9)
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

    v8 = [(_UINavigationBarAppearanceStorage *)appearanceStorage backIndicatorTransitionMaskImage];

    v4 = v9;
    if (v8 != v9)
    {
      [(_UINavigationBarAppearanceStorage *)self->_appearanceStorage setBackIndicatorTransitionMaskImage:v9];
      [(_UINavigationBarVisualProvider *)self->_visualProvider changeAppearance];
      v4 = v9;
    }
  }
}

- (double)_backIndicatorLeftMargin
{
  v2 = [(_UINavigationBarAppearanceStorage *)self->_appearanceStorage backIndicatorLeftMargin];
  [v2 doubleValue];
  v4 = v3;

  return v4;
}

- (void)_setBackIndicatorLeftMargin:(double)a3
{
  appearanceStorage = self->_appearanceStorage;
  if (!appearanceStorage)
  {
    v6 = objc_alloc_init(_UINavigationBarAppearanceStorage);
    v7 = self->_appearanceStorage;
    self->_appearanceStorage = v6;

    appearanceStorage = self->_appearanceStorage;
  }

  v8 = [(_UINavigationBarAppearanceStorage *)appearanceStorage backIndicatorLeftMargin];
  [v8 doubleValue];
  v10 = v9;

  if (v10 != a3)
  {
    v11 = self->_appearanceStorage;
    v12 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
    [(_UINavigationBarAppearanceStorage *)v11 setBackIndicatorLeftMargin:v12];

    [(UINavigationBar *)self setNeedsLayout];
  }
}

- (double)_effectiveBackIndicatorLeftMargin
{
  v3 = [(_UINavigationBarAppearanceStorage *)self->_appearanceStorage backIndicatorImage];
  if (v3)
  {
    v4 = v3;
    v5 = [(_UINavigationBarAppearanceStorage *)self->_appearanceStorage backIndicatorTransitionMaskImage];
    if (v5)
    {
      v6 = v5;
      v7 = [(_UINavigationBarAppearanceStorage *)self->_appearanceStorage backIndicatorLeftMargin];

      if (v7)
      {
        v8 = [(_UINavigationBarAppearanceStorage *)self->_appearanceStorage backIndicatorLeftMargin];
        [v8 doubleValue];
        v10 = v9;
        goto LABEL_9;
      }
    }

    else
    {
    }
  }

  v8 = [(UINavigationBar *)self _currentVisualStyle];
  [(UIView *)self _contentMargin];
  v12 = v11;
  [v8 horizontalMarginAdjustment];
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

- (void)setSemanticContentAttribute:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = UINavigationBar;
  [(UIView *)&v5 setSemanticContentAttribute:?];
  [(_UINavigationBarVisualProvider *)self->_visualProvider setSemanticContentAttribute:a3];
}

- (void)_setAccessibilityButtonBackgroundTintColor:(id)a3
{
  v5 = a3;
  if (self->_accessibilityButtonBackgroundTintColor != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_accessibilityButtonBackgroundTintColor, a3);
    [(UINavigationBar *)self _accessibilityButtonShapesParametersDidChange];
    v5 = v6;
  }
}

- (void)_updateAppearancesForNewVisualProvider
{
  [(UINavigationBar *)self _installDefaultAppearance];
  v3 = [(_UINavigationBarVisualProvider *)self->_visualProvider appearanceObserver];
  standardAppearance = self->_standardAppearance;
  if (standardAppearance)
  {
    objc_storeWeak(&standardAppearance->super._changeObserver, v3);
  }

  v5 = [(_UINavigationBarVisualProvider *)self->_visualProvider appearanceObserver];
  compactAppearance = self->_compactAppearance;
  if (compactAppearance)
  {
    objc_storeWeak(&compactAppearance->super._changeObserver, v5);
  }

  v7 = [(_UINavigationBarVisualProvider *)self->_visualProvider appearanceObserver];
  scrollEdgeAppearance = self->_scrollEdgeAppearance;
  if (scrollEdgeAppearance)
  {
    objc_storeWeak(&scrollEdgeAppearance->super._changeObserver, v7);
  }

  v9 = [(_UINavigationBarVisualProvider *)self->_visualProvider appearanceObserver];
  compactScrollEdgeAppearance = self->_compactScrollEdgeAppearance;
  if (compactScrollEdgeAppearance)
  {
    objc_storeWeak(&compactScrollEdgeAppearance->super._changeObserver, v9);
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
  v11 = [(_UINavigationBarVisualProvider *)self->_visualProvider appearanceObserver];
  v12 = self->_compactAppearance;
  if (v12)
  {
    objc_storeWeak(&v12->super._changeObserver, v11);
  }

  if (!_UIBarsApplyChromelessEverywhere() || ![(UINavigationBar *)self isMinibar])
  {
    goto LABEL_17;
  }

  v13 = [(_UINavigationBarVisualProvider *)self->_visualProvider stack];
  v14 = [v13 topEntry];
  v15 = [v14 activeLayout];
  if (v15)
  {
    v16 = v15[36];

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
  v11 = [(_UINavigationBarVisualProvider *)self->_visualProvider appearanceObserver];
  v12 = self->_standardAppearance;
  if (v12)
  {
    objc_storeWeak(&v12->super._changeObserver, v11);
  }

  if (!_UIBarsApplyChromelessEverywhere())
  {
    goto LABEL_16;
  }

  v13 = [(_UINavigationBarVisualProvider *)self->_visualProvider stack];
  v14 = [v13 topEntry];
  v15 = [v14 activeLayout];
  if (v15)
  {
    v16 = v15[36];

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
  v5 = self->_scrollEdgeAppearance;
  v6 = v4;
  v16 = v6;
  if (v5 == v6)
  {

LABEL_7:
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

  v8 = self->_scrollEdgeAppearance;
  if (v8)
  {
    objc_storeWeak(&v8->super._changeObserver, 0);
  }

  v9 = [(UIBarAppearance *)v16 copy];
  v10 = self->_scrollEdgeAppearance;
  self->_scrollEdgeAppearance = v9;

  [(UINavigationBar *)self _installDefaultAppearance];
  v11 = [(_UINavigationBarVisualProvider *)self->_visualProvider appearanceObserver];
  v12 = self->_scrollEdgeAppearance;
  if (v12)
  {
    objc_storeWeak(&v12->super._changeObserver, v11);
  }

  if (!_UIBarsApplyChromelessEverywhere())
  {
    goto LABEL_17;
  }

  v5 = [(_UINavigationBarVisualProvider *)self->_visualProvider stack];
  v13 = [(UINavigationBarAppearance *)v5 topEntry];
  v14 = [v13 activeLayout];
  if (!v14)
  {

    goto LABEL_7;
  }

  v15 = v14[36];

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
  v5 = self->_compactScrollEdgeAppearance;
  v6 = v4;
  v16 = v6;
  if (v5 == v6)
  {

LABEL_7:
LABEL_18:
    *&self->_navbarFlags |= 0x800u;
    [(UINavigationBar *)self _upgradeAppearanceAPI];
    goto LABEL_19;
  }

  if (v6 && v5)
  {
    v7 = [(UIBarAppearance *)v5 isEqual:v6];

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
  v11 = [(_UINavigationBarVisualProvider *)self->_visualProvider appearanceObserver];
  v12 = self->_compactScrollEdgeAppearance;
  if (v12)
  {
    objc_storeWeak(&v12->super._changeObserver, v11);
  }

  if (!_UIBarsApplyChromelessEverywhere() || ![(UINavigationBar *)self isMinibar])
  {
    goto LABEL_18;
  }

  v5 = [(_UINavigationBarVisualProvider *)self->_visualProvider stack];
  v13 = [(UINavigationBarAppearance *)v5 topEntry];
  v14 = [v13 activeLayout];
  if (!v14)
  {

    goto LABEL_7;
  }

  v15 = v14[36];

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
    v7 = [(UINavigationBar *)self _effectiveBarTintColor];
    objc_storeStrong(&self->_barTintColor, barTintColor);
    [(UINavigationBar *)self _effectiveBarTintColorDidChangeWithPreviousColor:v7];

    v6 = v8;
  }
}

- (void)_effectiveBarTintColorDidChangeWithPreviousColor:(id)a3
{
  v6 = a3;
  v4 = [(UINavigationBar *)self _effectiveBarTintColor];
  v5 = [v6 isEqual:v4];

  if ((v5 & 1) == 0)
  {
    [(UINavigationBar *)self _propagateEffectiveBarTintColorWithPreviousColor:v6];
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

  v14 = [v6 _ui_attributesForDictionaryContainingUIStringDrawingKeys];

  v9 = [(_UINavigationBarAppearanceStorage *)self->_appearanceStorage textAttributes];
  v10 = v9;
  if (v9)
  {
    v11 = v14 == 0;
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

  if (v9)
  {
    v12 = v14 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (!v12)
  {
    v13 = [v14 isEqualToDictionary:v9];
    [(_UINavigationBarAppearanceStorage *)self->_appearanceStorage setTextAttributes:v14];
    if (v13)
    {
      goto LABEL_19;
    }

LABEL_18:
    [(_UINavigationBarVisualProvider *)self->_visualProvider changeAppearance];
    goto LABEL_19;
  }

  [(_UINavigationBarAppearanceStorage *)self->_appearanceStorage setTextAttributes:v14];
  if (v14 && !v10)
  {
    goto LABEL_18;
  }

LABEL_19:
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = UINavigationBar;
  [(UIView *)&v11 traitCollectionDidChange:v4];
  v5 = [v4 userInterfaceIdiom];
  v6 = [(UIView *)self traitCollection];
  v7 = [v6 userInterfaceIdiom];

  if (v5 == v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = [objc_opt_class() _visualProviderForNavigationBar:self];
    if (([v8 isMemberOfClass:objc_opt_class()] & 1) == 0)
    {
      v9 = [(UINavigationBar *)self isLocked];
      [(_UINavigationBarVisualProvider *)self->_visualProvider teardown];
      objc_storeStrong(&self->_visualProvider, v8);
      v10 = [(UINavigationBar *)self _isAlwaysHidden];
      [(UINavigationBar *)self _updateOpacity];
      if (!v10)
      {
        -[_UINavigationBarVisualProvider _shim_setUseContentView:](self->_visualProvider, "_shim_setUseContentView:", [objc_opt_class() _supportsCanvasView]);
      }

      [(_UINavigationBarVisualProvider *)self->_visualProvider prepare];
      [(_UINavigationBarVisualProvider *)self->_visualProvider setStack:self->_stack];
      [(_UINavigationBarVisualProvider *)self->_visualProvider updateTopNavigationItemAnimated:0];
      [(_UINavigationBarVisualProvider *)self->_visualProvider updateTopNavigationItemTitleView];
      [(UINavigationBar *)self _updateAppearancesForNewVisualProvider];
      [(UINavigationBar *)self setLocked:v9];
      [(UINavigationBar *)self setNeedsLayout];
      [(UIView *)self layoutIfNeeded];
    }
  }

  [(_UINavigationBarVisualProvider *)self->_visualProvider traitCollectionDidChange:v4];
}

- (void)_traitCollectionDidChangeOnSubtreeInternal:(const _UITraitCollectionChangeDescription *)a3
{
  v5.receiver = self;
  v5.super_class = UINavigationBar;
  [(UIView *)&v5 _traitCollectionDidChangeOnSubtreeInternal:?];
  [(_UINavigationBarVisualProvider *)self->_visualProvider traitCollectionDidChangeOnSubtree:a3->var0];
}

- (id)_traitCollectionForChildEnvironment:(id)a3
{
  v8.receiver = self;
  v8.super_class = UINavigationBar;
  v4 = a3;
  v5 = [(UIView *)&v8 _traitCollectionForChildEnvironment:v4];
  v6 = [(_UINavigationBarVisualProvider *)self->_visualProvider traitCollectionForChild:v4 baseTraitCollection:v5, v8.receiver, v8.super_class];

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

    v11 = [(_UINavigationBarAppearanceStorage *)self->_appearanceStorage shadowImage];

    v12 = v13;
    if (v13 != v11)
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

- (void)_setHidesShadow:(BOOL)a3
{
  v3 = a3;
  appearanceStorage = self->_appearanceStorage;
  if (!appearanceStorage)
  {
    v6 = objc_alloc_init(_UINavigationBarAppearanceStorage);
    v7 = self->_appearanceStorage;
    self->_appearanceStorage = v6;

    appearanceStorage = self->_appearanceStorage;
  }

  if ([(_UINavigationBarAppearanceStorage *)appearanceStorage hidesShadow]!= v3)
  {
    [(_UINavigationBarAppearanceStorage *)self->_appearanceStorage setHidesShadow:v3];
    visualProvider = self->_visualProvider;

    [(_UINavigationBarVisualProvider *)visualProvider changeAppearance];
  }
}

- (void)_setDeferShadowToSearchBar:(BOOL)a3
{
  v3 = a3;
  appearanceStorage = self->_appearanceStorage;
  if (!appearanceStorage)
  {
    v6 = objc_alloc_init(_UINavigationBarAppearanceStorage);
    v7 = self->_appearanceStorage;
    self->_appearanceStorage = v6;

    appearanceStorage = self->_appearanceStorage;
  }

  if ([(_UINavigationBarAppearanceStorage *)appearanceStorage deferShadowToSearchBar]!= v3)
  {
    [(_UINavigationBarAppearanceStorage *)self->_appearanceStorage setDeferShadowToSearchBar:v3];
    visualProvider = self->_visualProvider;
    v9 = 1.0;
    if (v3)
    {
      v9 = 0.0;
    }

    [(_UINavigationBarVisualProvider *)visualProvider _shim_setShadowAlpha:v9];
  }
}

- (void)_setAlwaysUseDefaultMetrics:(BOOL)a3
{
  if (self->_alwaysUseDefaultMetrics != a3)
  {
    self->_alwaysUseDefaultMetrics = a3;
    [(UINavigationBar *)self setNeedsLayout];
  }
}

+ (id)_defaultVisualStyleForOrientation:(int64_t)a3
{
  if (qword_1ED49AAB8 != -1)
  {
    dispatch_once(&qword_1ED49AAB8, &__block_literal_global_64);
  }

  [qword_1ED49AAB0 setMetrics:_UIUseMiniHeightInLandscape((a3 - 3) < 2)];
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
      v4 = [(UIView *)self _screen];
      v5 = v4;
      if (v4)
      {
        v6 = [v4 _userInterfaceIdiom];
      }

      else
      {
        v6 = -1;
      }

      v9 = [_UINavigationBarVisualStyle visualStyleForIdiom:v6];
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
  v3 = [(UINavigationBar *)self _currentVisualStyle];
  [v3 buttonHeight];
  v5 = v4;
  v6 = [(UINavigationBar *)self currentBackButton];
  v7 = [(UINavigationBar *)self isMinibar];
  if ([v6 _wantsAccessibilityButtonShapes])
  {
    _UINavigationButtonAccessibilityBackground(1, v7);
  }

  else
  {
    [v6 _backButtonBackgroundImageForState:0 barMetrics:v7];
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

- (double)defaultHeightForMetrics:(int64_t)a3
{
  v4 = [(UINavigationBar *)self _currentVisualStyle];
  v5 = v4;
  if (v4)
  {
    [v4 barHeightForMetrics:a3];
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
      if (a3)
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

- (CGSize)defaultSizeForOrientation:(int64_t)a3
{
  v5 = [(UINavigationBar *)self _currentVisualStyle];
  if (v5)
  {
    v6 = [(_UINavigationBarVisualProvider *)self->_visualProvider _shim_promptText];
    v7 = [v5 navigationBar:self metricsForOrientation:a3 hasPrompt:v6 != 0];

    v8 = [(UIView *)self _screen];
    [v8 _mainSceneBoundsForInterfaceOrientation:a3];
    v10 = v9;
    [v5 barHeightForMetrics:v7];
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

+ (CGSize)defaultSizeForOrientation:(int64_t)a3
{
  v4 = [a1 _defaultVisualStyleForOrientation:?];
  v5 = [objc_opt_self() mainScreen];
  [v5 _mainSceneBoundsForInterfaceOrientation:a3];
  v7 = v6;
  [v4 barHeight];
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

+ (CGSize)defaultSizeWithPromptForOrientation:(int64_t)a3
{
  v4 = [a1 _defaultVisualStyleForOrientation:?];
  v5 = [objc_opt_self() mainScreen];
  [v5 _mainSceneBoundsForInterfaceOrientation:a3];
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
  [a1 defaultSizeForOrientation:1];
  result.height = v3;
  result.width = v2;
  return result;
}

+ (CGSize)defaultSizeWithPrompt
{
  [a1 defaultSizeWithPromptForOrientation:1];
  result.height = v3;
  result.width = v2;
  return result;
}

+ (id)defaultPromptFont
{
  v2 = [a1 _defaultVisualStyleForOrientation:1];
  v3 = [v2 promptFont];

  return v3;
}

+ (void)_initializeForIdiom:(int64_t)a3
{
  v26[2] = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == a1)
  {
    if (a3 == 2 || a3 == 8)
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
      if (a3 != 3)
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
      v14 = [v13 imageFlippedForRightToLeftLayoutDirection];
      [v5 setBackIndicatorImage:v14];

      v15 = [UIImage _kitImageNamed:@"UINavigationBarTitleTransitionBackIndicatorMask" withTrait:v4];
      v16 = [v15 imageFlippedForRightToLeftLayoutDirection];
      [v5 setBackIndicatorTransitionMaskImage:v16];

      [v5 _setBackIndicatorLeftMargin:12.0];
      v23 = v9;
      v17 = [off_1E70ECC18 systemFontOfSize:17.0];
      v24 = v17;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
      [v6 setTitleTextAttributes:v18 forState:0];
    }
  }
}

+ (Class)_visualProviderClassForNavigationBar:(id)a3
{
  v3 = a3;
  if (([objc_opt_class() _requiresModernVisualProvider] & 1) == 0 && objc_msgSend(objc_opt_class(), "_forceLegacyVisualProvider") || (objc_msgSend(v3, "traitCollection"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "userInterfaceIdiom"), v4, v6 = _UISMCBarsEnabled(), v5 == 3) || (v6 & 1) == 0)
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

+ (id)_visualProviderForNavigationBar:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_msgSend(a1 _visualProviderClassForNavigationBar:{v4)), "initWithNavigationBar:", v4}];

  return v5;
}

- (UINavigationBar)initWithFrame:(CGRect)a3
{
  v9.receiver = self;
  v9.super_class = UINavigationBar;
  v3 = [(UIView *)&v9 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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

- (UINavigationBar)initWithCoder:(id)a3
{
  v4 = a3;
  v48.receiver = self;
  v48.super_class = UINavigationBar;
  v5 = [(UIView *)&v48 initWithCoder:v4];
  if (v5)
  {
    v6 = [objc_opt_class() _visualProviderForNavigationBar:v5];
    visualProvider = v5->_visualProvider;
    v5->_visualProvider = v6;

    v5->_barStyle = 0;
    if ([v4 containsValueForKey:@"UIBarStyle"])
    {
      v5->_barStyle = [v4 decodeIntegerForKey:@"UIBarStyle"];
    }

    if (dyld_program_sdk_at_least())
    {
      if ([v4 containsValueForKey:@"UIBarPrefersLargeTitles"])
      {
        v5->_prefersLargeTitles = [v4 decodeBoolForKey:@"UIBarPrefersLargeTitles"];
      }

      if ([v4 containsValueForKey:@"UIBarBackgroundImages"])
      {
        v8 = [v4 decodeObjectForKey:@"UIBarBackgroundImages"];
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

      if ([v4 containsValueForKey:@"UIBarLargeTitleTextAttributes"])
      {
        v12 = [v4 decodeObjectForKey:@"UIBarLargeTitleTextAttributes"];
        largeTitleTextAttributes = v5->_largeTitleTextAttributes;
        v5->_largeTitleTextAttributes = v12;
      }
    }

    if ([v4 decodeBoolForKey:@"UIIsLocked"])
    {
      v14 = 2;
    }

    else
    {
      v14 = 0;
    }

    *&v5->_navbarFlags = *&v5->_navbarFlags & 0xFFFD | v14;
    v15 = [v4 decodeObjectForKey:@"UIBarTintColor"];
    barTintColor = v5->_barTintColor;
    v5->_barTintColor = v15;

    [(UIView *)v5 setClipsToBounds:0];
    v17 = [v4 decodeObjectForKey:@"UIDelegate"];
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

    if ([v4 containsValueForKey:@"UIShadowImage"])
    {
      v26 = [v4 decodeObjectForKey:@"UIShadowImage"];
      [(UINavigationBar *)v5 setShadowImage:v26];
    }

    if ([v4 containsValueForKey:@"UITitleTextAttributes"])
    {
      v27 = [v4 decodeObjectForKey:@"UITitleTextAttributes"];
      [(UINavigationBar *)v5 setTitleTextAttributes:v27];
    }

    if ([v4 containsValueForKey:@"UIBarPosition"])
    {
      v5->_barPosition = [v4 decodeIntegerForKey:@"UIBarPosition"];
    }

    if ([v4 containsValueForKey:@"UIBarTranslucence"])
    {
      v5->_barTranslucence = [v4 decodeIntegerForKey:@"UIBarTranslucence"];
    }

    if ([v4 containsValueForKey:@"UIBackIndicatorImage"])
    {
      v28 = [v4 decodeObjectForKey:@"UIBackIndicatorImage"];
      [(UINavigationBar *)v5 setBackIndicatorImage:v28];
    }

    if ([v4 containsValueForKey:@"UIBackIndicatorTransitionMask"])
    {
      v29 = [v4 decodeObjectForKey:@"UIBackIndicatorTransitionMask"];
      [(UINavigationBar *)v5 setBackIndicatorTransitionMaskImage:v29];
    }

    v30 = [v4 decodeObjectForKey:@"UINavigationBarStandardAppearance"];
    standardAppearance = v5->_standardAppearance;
    v5->_standardAppearance = v30;

    v32 = [(_UINavigationBarVisualProvider *)v5->_visualProvider appearanceObserver];
    v33 = v5->_standardAppearance;
    if (v33)
    {
      objc_storeWeak(&v33->super._changeObserver, v32);
    }

    if (v5->_standardAppearance)
    {
      v34 = [v4 decodeObjectForKey:@"UINavigationBarCompactAppearance"];
      compactAppearance = v5->_compactAppearance;
      v5->_compactAppearance = v34;

      v36 = [(_UINavigationBarVisualProvider *)v5->_visualProvider appearanceObserver];
      v37 = v5->_compactAppearance;
      if (v37)
      {
        objc_storeWeak(&v37->super._changeObserver, v36);
      }

      v38 = [v4 decodeObjectForKey:@"UINavigationBarScrollEdgeAppearance"];
      scrollEdgeAppearance = v5->_scrollEdgeAppearance;
      v5->_scrollEdgeAppearance = v38;

      v40 = [(_UINavigationBarVisualProvider *)v5->_visualProvider appearanceObserver];
      v41 = v5->_scrollEdgeAppearance;
      if (v41)
      {
        objc_storeWeak(&v41->super._changeObserver, v40);
      }

      v42 = [v4 decodeObjectForKey:@"UINavigationBarCompactScrollEdgeAppearance"];
      compactScrollEdgeAppearance = v5->_compactScrollEdgeAppearance;
      v5->_compactScrollEdgeAppearance = v42;

      v44 = [(_UINavigationBarVisualProvider *)v5->_visualProvider appearanceObserver];
      v45 = v5->_compactScrollEdgeAppearance;
      if (v45)
      {
        objc_storeWeak(&v45->super._changeObserver, v44);
      }

      *&v5->_navbarFlags |= 0x800u;
    }

    [(UINavigationBar *)v5 _commonNavBarInit];
    v46 = [v4 decodeObjectForKey:@"UIItems"];
    [(UINavigationBar *)v5 _setDecodedItems:v46];
  }

  return v5;
}

- (void)_setDecodedItems:(id)a3
{
  v4 = a3;
  stack = self->_stack;
  if (stack)
  {
    if ([(_UINavigationBarItemStack *)stack stackItemsAreEqualTo:v4])
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
    [(_UINavigationBarItemStack *)self->_stack setItems:v4 withTransitionAssistant:0];
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
    v8 = [[_UINavigationBarItemStack alloc] initWithItems:v4];
    v9 = self->_stack;
    self->_stack = v8;

    [(_UINavigationBarVisualProvider *)self->_visualProvider setStack:self->_stack];
  }

  v10 = [(_UINavigationBarItemStack *)self->_stack topItem];
  if (v10)
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

- (void)_populateArchivedSubviews:(id)a3
{
  v5.receiver = self;
  v5.super_class = UINavigationBar;
  v4 = a3;
  [(UIView *)&v5 _populateArchivedSubviews:v4];
  [(_UINavigationBarVisualProvider *)self->_visualProvider updateArchivedSubviews:v4, v5.receiver, v5.super_class];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = UINavigationBar;
  [(UIView *)&v22 encodeWithCoder:v4];
  barStyle = self->_barStyle;
  if (barStyle)
  {
    [v4 encodeInteger:barStyle forKey:@"UIBarStyle"];
  }

  if (dyld_program_sdk_at_least())
  {
    if (self->_prefersLargeTitles)
    {
      [v4 encodeBool:1 forKey:@"UIBarPrefersLargeTitles"];
    }

    v6 = [(_UIBarAppearanceStorage *)self->_appearanceStorage allBackgroundImages];
    if (v6)
    {
      [v4 encodeObject:v6 forKey:@"UIBarBackgroundImages"];
    }

    largeTitleTextAttributes = self->_largeTitleTextAttributes;
    if (largeTitleTextAttributes)
    {
      [v4 encodeObject:largeTitleTextAttributes forKey:@"UIBarLargeTitleTextAttributes"];
    }
  }

  if ((*&self->_navbarFlags & 2) != 0)
  {
    [v4 encodeBool:1 forKey:@"UIIsLocked"];
  }

  barTintColor = self->_barTintColor;
  if (barTintColor)
  {
    [v4 encodeObject:barTintColor forKey:@"UIBarTintColor"];
  }

  v9 = [(_UINavigationBarItemStack *)self->_stack topItem];

  if (v9)
  {
    v10 = [(_UINavigationBarItemStack *)self->_stack items];
    [v4 encodeObject:v10 forKey:@"UIItems"];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    [v4 encodeConditionalObject:WeakRetained forKey:@"UIDelegate"];
  }

  v12 = [(UINavigationBar *)self shadowImage];
  if (v12)
  {
    [v4 encodeObject:v12 forKey:@"UIShadowImage"];
  }

  v13 = [(UINavigationBar *)self titleTextAttributes];
  if (v13)
  {
    [v4 encodeObject:v13 forKey:@"UITitleTextAttributes"];
  }

  barPosition = self->_barPosition;
  if (barPosition)
  {
    [v4 encodeInteger:barPosition forKey:@"UIBarPosition"];
  }

  barTranslucence = self->_barTranslucence;
  if (barTranslucence)
  {
    [v4 encodeInteger:barTranslucence forKey:@"UIBarTranslucence"];
  }

  v16 = [(UINavigationBar *)self backIndicatorImage];

  if (v16)
  {
    [v4 encodeObject:v16 forKey:@"UIBackIndicatorImage"];
  }

  v17 = [(UINavigationBar *)self backIndicatorTransitionMaskImage];

  if (v17)
  {
    [v4 encodeObject:v17 forKey:@"UIBackIndicatorTransitionMask"];
  }

  if ([(_UINavigationBarVisualProvider *)self->_visualProvider appearanceAPIVersion]>= 2)
  {
    standardAppearance = self->_standardAppearance;
    if (standardAppearance)
    {
      [v4 encodeObject:standardAppearance forKey:@"UINavigationBarStandardAppearance"];
    }

    compactAppearance = self->_compactAppearance;
    if (compactAppearance)
    {
      [v4 encodeObject:compactAppearance forKey:@"UINavigationBarCompactAppearance"];
    }

    scrollEdgeAppearance = self->_scrollEdgeAppearance;
    if (scrollEdgeAppearance)
    {
      [v4 encodeObject:scrollEdgeAppearance forKey:@"UINavigationBarScrollEdgeAppearance"];
    }

    compactScrollEdgeAppearance = self->_compactScrollEdgeAppearance;
    if (compactScrollEdgeAppearance)
    {
      [v4 encodeObject:compactScrollEdgeAppearance forKey:@"UINavigationBarCompactScrollEdgeAppearance"];
    }
  }
}

- (void)setLocked:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_navbarFlags = *&self->_navbarFlags & 0xFFFD | v3;
}

- (id)_defaultTitleFontFittingHeight:(double)a3 withScaleAdjustment:(double)a4
{
  if (a4 == 0.0)
  {
    v6 = 1.0;
  }

  else
  {
    v6 = a4;
  }

  v7 = [(_UINavigationBarAppearanceStorage *)self->_appearanceStorage textAttributes];
  v8 = [v7 objectForKey:*off_1E70EC918];

  if (v8)
  {
    [v8 pointSize];
    if (v9 != 0.0)
    {
      goto LABEL_18;
    }

    v10 = [(UINavigationBar *)self _currentVisualStyle];
    [v10 headingFontSize];
    v12 = v11;
    v13 = [v8 fontWithSize:?];

    if (a3 > 0.0 && (-[_UINavigationBarItemStack topItem](self->_stack, "topItem"), v14 = objc_claimAutoreleasedReturnValue(), v15 = [v14 _hasDefaultTitleView], v14, v15) && (objc_msgSend(v13, "lineHeight"), v16 + 2.0 > a3))
    {
      do
      {
        v8 = [v13 fontWithSize:v12];

        v12 = v12 + -1.0;
        [v8 lineHeight];
        v13 = v8;
      }

      while (v17 + 2.0 > a3);
    }

    else
    {
      v8 = v13;
    }

    if (v6 < 1.0)
    {
      [v8 pointSize];
      v22 = [v8 fontWithSize:v6 * v21];

      v8 = v22;
    }

    goto LABEL_16;
  }

  v18 = [(UIView *)self traitCollection];
  v19 = +[_UINavigationBarTitleFontProvider providerForIdiom:](_UINavigationBarTitleFontProvider, "providerForIdiom:", [v18 userInterfaceIdiom]);
  v10 = [v19 defaultInlineTitleFont];

  if (v6 < 1.0)
  {
    [v10 pointSize];
    v8 = [v10 fontWithSize:v6 * v20];
LABEL_16:

    goto LABEL_18;
  }

  v8 = v10;
LABEL_18:

  return v8;
}

- (id)_defaultTitleFontWithScaleAdjustment:(double)a3
{
  [(UIView *)self bounds];

  return [(UINavigationBar *)self _defaultTitleFontFittingHeight:v5 withScaleAdjustment:a3];
}

- (void)_customViewChangedForButtonItem:(id)a3
{
  v25 = a3;
  v4 = [(_UINavigationBarItemStack *)self->_stack topItem];
  v5 = [v25 view];
  v6 = [v4 leftBarButtonItems];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 indexOfObject:v25];
  }

  else
  {
    v8 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v9 = [v4 rightBarButtonItems];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 indexOfObject:v25];
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
      if (v5)
      {
        v14 = v4;
        v15 = v13;
        v16 = v5;
        v17 = 0;
LABEL_14:
        [v14 _replaceCustomLeftRightViewAtIndex:v15 withView:v16 left:v17];
        goto LABEL_18;
      }

      v20 = [v25 createViewForNavigationItem:v4];
      v21 = v4;
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
    if (v5)
    {
      v14 = v4;
      v15 = v19;
      v16 = v5;
      v17 = 1;
      goto LABEL_14;
    }

    v20 = [v25 createViewForNavigationItem:v4];
    v21 = v4;
    v22 = v19;
    v23 = v20;
    v24 = 1;
LABEL_17:
    [v21 _replaceCustomLeftRightViewAtIndex:v22 withView:v23 left:v24];
  }

LABEL_18:
  [v4 updateNavigationBarButtonsAnimated:0];
LABEL_19:
}

- (void)_pushNavigationItemUsingCurrentTransition:(id)a3
{
  v4 = a3;
  currentPushTransition = self->_currentPushTransition;
  v8 = v4;
  if (currentPushTransition)
  {
    v6 = [(UINavigationBar *)self _effectiveDelegateForItem:v4];
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
  v2 = [(_UINavigationBarItemStack *)self->_stack transitionAssistant];
  v3 = [v2 animationIDs];

  return v3;
}

- (void)_pushNavigationItem:(id)a3 transition:(int)a4
{
  v6 = a3;
  self->_currentPushTransition = a4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __50__UINavigationBar__pushNavigationItem_transition___block_invoke;
  v8[3] = &unk_1E70F79E8;
  v8[4] = self;
  v9 = v6;
  v10 = a4;
  v7 = v6;
  [(UINavigationBar *)self _performUpdatesIgnoringLock:v8];
}

- (void)_updateInteractiveTransition:(double)a3
{
  v4 = [(_UINavigationBarItemStack *)self->_stack transitionAssistant];
  [v4 updateInteractiveTransitionPercent:{fmax(a3, 0.0)}];
}

- (void)_finishInteractiveTransition:(double)a3 completionSpeed:(double)a4 completionCurve:(int64_t)a5
{
  v9 = [(_UINavigationBarItemStack *)self->_stack transitionAssistant];
  [v9 finishInteractiveTransitionPercent:a5 completionSpeed:a3 completionCurve:a4];

  stack = self->_stack;

  [(_UINavigationBarItemStack *)stack endInteractiveTransition];
}

- (void)_cancelInteractiveTransition:(double)a3 completionSpeed:(double)a4 completionCurve:(int64_t)a5
{
  v9 = [(_UINavigationBarItemStack *)self->_stack transitionAssistant];
  [v9 cancelInteractiveTransitionPercent:a5 completionSpeed:a3 completionCurve:a4];

  [(_UINavigationBarItemStack *)self->_stack endInteractiveTransition];
  v10 = [(_UINavigationBarItemStack *)self->_stack previousTopItem];
  LODWORD(v9) = [v10 _backgroundHidden];

  if (v9)
  {
    visualProvider = self->_visualProvider;

    [(_UINavigationBarVisualProvider *)visualProvider _shim_setShadowAlpha:0.0];
  }
}

- (void)_completePushOperationAnimated:(BOOL)a3 transitionAssistant:(id)a4
{
  v4 = a3;
  v10 = a4;
  v6 = [(UINavigationBar *)self _effectiveDelegate];
  v7 = objc_opt_respondsToSelector();
  v8 = v7;
  if (!v4)
  {
    goto LABEL_6;
  }

  if ((v7 & 1) == 0)
  {
    [(UINavigationBar *)self _reenableUserInteraction];
  }

  if ([v10 cancelledTransition])
  {
    [(UINavigationBar *)self _cancelInteractiveTransition];
  }

  else
  {
LABEL_6:
    v9 = [(_UINavigationBarItemStack *)self->_stack topItem];
    [(_UINavigationBarItemStack *)self->_stack completeOperation];
    [(UINavigationBar *)self _accessibility_navigationBarContentsDidChange];
    if (objc_opt_respondsToSelector())
    {
      [v6 navigationBar:self didPushItem:v9];
    }
  }

  if ((v4 & v8) == 1)
  {
    [v6 _navigationBarDidEndAnimation:self];
  }
}

- (void)_pushNavigationItem:(id)a3 transitionAssistant:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(UINavigationBar *)self _effectiveDelegateForItem:v7];
  if ((objc_opt_respondsToSelector() & 1) == 0 || [v9 navigationBar:self shouldPushItem:v7])
  {
    if (_UINavigationBarShouldCheckLegacyViolation(self))
    {
      v10 = [v7 searchController];

      if (v10)
      {
        v22 = [MEMORY[0x1E696AAA8] currentHandler];
        [v22 handleFailureInMethod:a2 object:self file:@"UINavigationBar.m" lineNumber:2073 description:@"UISearchController integration not supported when forcing the legacy provider. Remove your +_forceLegacyVisualProvider override."];
      }

      v11 = [v7 titleView];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v23 = [MEMORY[0x1E696AAA8] currentHandler];
        [v23 handleFailureInMethod:a2 object:self file:@"UINavigationBar.m" lineNumber:2075 description:@"_UINavigationBarTitleView not supported when forcing the legacy provider. Remove your +_forceLegacyVisualProvider override."];
      }

      v13 = [v7 _weeTitle];

      if (v13)
      {
        v24 = [MEMORY[0x1E696AAA8] currentHandler];
        [v24 handleFailureInMethod:a2 object:self file:@"UINavigationBar.m" lineNumber:2076 description:@"Wee Title not supported when forcing the legacy provider. Remove your +_forceLegacyVisualProvider override."];
      }
    }

    [v7 _setNavigationBar:self];
    [(_UINavigationBarItemStack *)self->_stack pushItem:v7 withTransitionAssistant:v8];
    if (objc_opt_respondsToSelector())
    {
      [v9 _navigationBarDidUpdateStack:self];
    }

    [(_UINavigationBarVisualProvider *)self->_visualProvider prepareForPush];
    v14 = [(_UINavigationBarItemStack *)self->_stack previousTopItem];
    if (v14 && (v15 = v14, v16 = [(UINavigationBar *)self _isAnimationEnabled], v15, v16))
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
    v20 = [(_UINavigationBarItemStack *)self->_stack transitionAssistant];
    [v20 finishTrackingInteractiveTransition];

    v21 = [(_UINavigationBarItemStack *)self->_stack transitionAssistant];
    [v21 setShouldHideBackButtonDuringTransition:0];
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
  v4 = [(_UINavigationBarItemStack *)self->_stack _shim_popNestedNavigationItem];
  v3 = [v4 _navigationBar];

  if (v3 == self)
  {
    [v4 _setNavigationBar:0];
  }
}

- (id)_popNavigationItemWithTransition:(int)a3
{
  v5 = [(UINavigationBar *)self _effectiveDelegate];
  v6 = [(_UINavigationBarItemStack *)self->_stack topItem];
  if ((objc_opt_respondsToSelector() & 1) != 0 || (objc_opt_respondsToSelector() & 1) == 0 || [v5 navigationBar:self shouldPopItem:v6])
  {
    if (a3)
    {
      v7 = [(UINavigationBar *)self _effectiveDelegate];
      v8 = [_UINavigationBarTransitionAssistant popTransitionAssistantForNavigationBar:self delegate:v7 crossfade:a3 == 6];
    }

    else
    {
      [(UINavigationBar *)self _disableAnimation];
      v8 = 0;
    }

    [(UINavigationBar *)self _popNavigationItemWithTransitionAssistant:v8];
    if (![(UINavigationBar *)self _isAlwaysHidden])
    {
      v9 = [(_UINavigationBarItemStack *)self->_stack topItem];
      [v9 _updateViewsForBarSizeChangeAndApply:0];
      [(_UINavigationBarVisualProvider *)self->_visualProvider updateTopNavigationItemAnimated:[(UINavigationBar *)self _isAnimationEnabled]];
      [(UINavigationBar *)self updatePrompt];
    }

    if (!a3)
    {
      [(UINavigationBar *)self _enableAnimation];
    }
  }

  return v6;
}

- (void)_completePopOperationAnimated:(BOOL)a3 transitionAssistant:(id)a4
{
  v4 = a3;
  v17 = a4;
  v6 = [(UINavigationBar *)self _effectiveDelegate];
  v7 = objc_opt_respondsToSelector();
  v8 = v7;
  if (!v4)
  {
    goto LABEL_6;
  }

  if ((v7 & 1) == 0)
  {
    [(UINavigationBar *)self _reenableUserInteraction];
  }

  if ([v17 cancelledTransition])
  {
    [(UINavigationBar *)self _cancelInteractiveTransition];
  }

  else
  {
LABEL_6:
    v9 = [(_UINavigationBarItemStack *)self->_stack previousTopItem];
    if ([objc_opt_class() _forceLegacyVisualProvider])
    {
      [v9 _removeTitleAndButtonViews];
    }

    v10 = [v9 _navigationBar];
    v11 = v10;
    if (v10 == self || v10 && (-[UINavigationBar items](v10, "items"), v12 = objc_claimAutoreleasedReturnValue(), v13 = [v12 containsObject:v9], v12, (v13 & 1) == 0))
    {
      [v9 _setNavigationBar:0];
    }

    v14 = [v9 _searchControllerIfAllowed];
    v15 = [v14 searchBar];

    v16 = [v15 superview];

    if (v16 == self)
    {
      [v15 removeFromSuperview];
    }

    [(_UINavigationBarItemStack *)self->_stack completeOperation];
    [(UINavigationBar *)self _accessibility_navigationBarContentsDidChange];
    if (objc_opt_respondsToSelector())
    {
      [v6 navigationBar:self didPopItem:v9];
    }
  }

  if ((v4 & v8) == 1)
  {
    [v6 _navigationBarDidEndAnimation:self];
  }
}

- (void)_popNavigationItemWithTransitionAssistant:(id)a3
{
  [(_UINavigationBarItemStack *)self->_stack popItemWithTransitionAssistant:a3];
  v4 = [(_UINavigationBarItemStack *)self->_stack previousTopItem];
  [(_UINavigationBarVisualProvider *)self->_visualProvider prepareForPop];
  v5 = [(UINavigationBar *)self _isAnimationEnabled];
  if (v4)
  {
    v6 = v5;
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
  v9 = [(UINavigationBar *)self _effectiveDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v9 _navigationBarDidUpdateStack:self];
  }

  v10 = [(_UINavigationBarItemStack *)self->_stack transitionAssistant];
  [v10 finishTrackingInteractiveTransition];

  v11 = [(_UINavigationBarItemStack *)self->_stack transitionAssistant];
  [v11 setShouldHideBackButtonDuringTransition:0];
}

- (int)_transitionForOldItems:(id)a3 newItems:(id)a4
{
  v5 = a3;
  v6 = [a4 lastObject];
  v7 = [v5 lastObject];

  if (v6 == v7)
  {
    v8 = 0;
  }

  else if ([v5 containsObject:v6])
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
      v10 = [(UINavigationBar *)self items];
      v11 = [(UINavigationBar *)self _transitionForOldItems:v10 newItems:v12];
    }

    else
    {
      v11 = 0;
    }

    [(UINavigationBar *)self _setItems:v12 transition:v11];
  }
}

- (BOOL)_didVisibleItemsChangeWithNewItems:(id)a3 oldItems:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 count];
  v8 = [v5 count];
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
    v12 = [v6 lastObject];
    v13 = [v5 lastObject];

    v14 = v12 == v13;
    v15 = v12 != v13;
    if (v14 && v7 >= 2)
    {
      v16 = [v6 objectAtIndexedSubscript:(v7 - 2)];
      v17 = [v5 objectAtIndexedSubscript:v9 - 2];
      v15 = v16 != v17;
    }
  }

  else
  {
    v15 = 1;
  }

  return v15;
}

- (void)_setItems:(id)a3 transition:(int)a4 reset:(BOOL)a5
{
  v88 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = v8;
  if (a5)
  {
    v61 = a5;
    v10 = [(_UINavigationBarItemStack *)self->_stack items];

    v11 = 0;
    v12 = 1;
    goto LABEL_10;
  }

  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = MEMORY[0x1E695E0F0];
  }

  if (![(_UINavigationBarItemStack *)self->_stack stackItemsAreEqualTo:v10])
  {
    v61 = a5;
    v11 = [(_UINavigationBarItemStack *)self->_stack items];
    v12 = [(UINavigationBar *)self _didVisibleItemsChangeWithNewItems:v10 oldItems:v11]|| (a4 - 3) < 0xFFFFFFFE;
LABEL_10:
    v62 = v12;
    if (a4 != 2)
    {
      v82 = 0u;
      v83 = 0u;
      v80 = 0u;
      v81 = 0u;
      v13 = v11;
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
    v10 = v10;
    v18 = [v10 countByEnumeratingWithState:&v76 objects:v86 count:16];
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
            objc_enumerationMutation(v10);
          }

          [*(*(&v76 + 1) + 8 * j) _setNavigationBar:self];
        }

        v19 = [v10 countByEnumeratingWithState:&v76 objects:v86 count:16];
      }

      while (v19);
    }

    v22 = [(UINavigationBar *)self _effectiveDelegate];
    if (a4 == 1)
    {
      v23 = [_UINavigationBarTransitionAssistant pushTransitionAssistantForNavigationBar:self delegate:v22 crossfade:0];
      [(_UINavigationBarItemStack *)self->_stack setItems:v10 withTransitionAssistant:v23];
      [(_UINavigationBarVisualProvider *)self->_visualProvider prepareForPush];
      v24 = [(_UINavigationBarItemStack *)self->_stack previousBackItem];
      [v24 _setNavigationBar:self];

      goto LABEL_30;
    }

    if (a4 == 2)
    {
      v23 = [_UINavigationBarTransitionAssistant popTransitionAssistantForNavigationBar:self delegate:v22 crossfade:0];
      [(_UINavigationBarItemStack *)self->_stack setItems:v10 withTransitionAssistant:v23];
      [(_UINavigationBarVisualProvider *)self->_visualProvider prepareForPop];
LABEL_30:

      [(UINavigationBar *)self _barStyle];
      v25 = [(UINavigationBar *)self _isAnimationEnabled];
      if (v25 && (visualProvider = self->_visualProvider) != 0)
      {
        v27 = ![(_UINavigationBarVisualProvider *)visualProvider allowsUserInteractionDuringTransitions];
      }

      else
      {
        v27 = 0;
      }

      if (a4 == 1)
      {
        if (v27)
        {
          [(UIView *)self setUserInteractionEnabled:0];
        }

        if (objc_opt_respondsToSelector())
        {
          [v22 _navigationBarDidUpdateStack:self];
        }

        v28 = self->_visualProvider;
        v64[0] = MEMORY[0x1E69E9820];
        v64[1] = 3221225472;
        v64[2] = __46__UINavigationBar__setItems_transition_reset___block_invoke_2;
        v64[3] = &unk_1E70F7A10;
        v64[4] = self;
        [(_UINavigationBarVisualProvider *)v28 pushAnimated:v25 completion:v64];
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
          [v22 _navigationBarDidUpdateStack:self];
        }

        v31 = self->_visualProvider;
        v63[0] = MEMORY[0x1E69E9820];
        v63[1] = 3221225472;
        v63[2] = __46__UINavigationBar__setItems_transition_reset___block_invoke_3;
        v63[3] = &unk_1E70F7A10;
        v63[4] = self;
        [(_UINavigationBarVisualProvider *)v31 popAnimated:v25 completion:v63];
        if (v30 & 1) == 0 && (objc_opt_respondsToSelector())
        {
          [v22 _navigationBarDidUpdateStack:self];
        }
      }

      v32 = [(_UINavigationBarItemStack *)self->_stack topItem];
      [v32 _updateViewsForBarSizeChangeAndApply:0];
      [(_UINavigationBarVisualProvider *)self->_visualProvider updateTopNavigationItemAnimated:v25];

LABEL_49:
      v33 = [(_UINavigationBarItemStack *)self->_stack transitionAssistant];
      [v33 finishTrackingInteractiveTransition];

      goto LABEL_50;
    }

    [(_UINavigationBarItemStack *)self->_stack setItems:v10 withTransitionAssistant:0];
    [(_UINavigationBarVisualProvider *)self->_visualProvider prepareForStackChange];
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v34 = v11;
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

    v60 = v22;

    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v39 = v10;
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

    v44 = [v34 lastObject];
    v45 = [v44 _searchControllerIfAllowed];
    v46 = [(_UINavigationBarItemStack *)self->_stack topItem];
    v47 = [v46 _searchControllerIfAllowed];
    if (v45 != v47)
    {
      v59 = v11;
      v48 = [(_UINavigationBarItemStack *)self->_stack backItem];
      v49 = [v48 _searchControllerIfAllowed];
      v50 = v49;
      if (v45 == v49)
      {

        v11 = v59;
      }

      else
      {
        [(_UINavigationBarItemStack *)self->_stack items];
        v58 = v45;
        v52 = v51 = v44;
        v57 = [v52 containsObject:v51];

        v44 = v51;
        v45 = v58;

        v11 = v59;
        if (v57)
        {
LABEL_76:

          v55 = [(UINavigationBar *)self _barStyle];
          v22 = v60;
          if (v62)
          {
            v56 = v55;
            [(UINavigationBar *)self _disableAnimation];
            [(UINavigationBar *)self _setBarStyle:v56];
            [(_UINavigationBarVisualProvider *)self->_visualProvider setupTopNavigationItem];
            [(UINavigationBar *)self setNeedsLayout];
            [(UINavigationBar *)self _enableAnimation];
            [(_UINavigationBarItemStack *)self->_stack completeOperation];
            [(UINavigationBar *)self _accessibility_navigationBarContentsDidChange];
            if (!v61 && (objc_opt_respondsToSelector() & 1) != 0)
            {
              [v60 _navigationBarDidUpdateStack:self];
            }
          }

          goto LABEL_49;
        }

        if ([v58 isActive])
        {
          v53 = [(UIView *)self _viewControllerForAncestor];
          v54 = [v53 _splitViewControllerEnforcingClass:1];

          if (!v54 || ([v54 _isExpanding] & 1) == 0)
          {
            v65[0] = MEMORY[0x1E69E9820];
            v65[1] = 3221225472;
            v65[2] = __46__UINavigationBar__setItems_transition_reset___block_invoke;
            v65[3] = &unk_1E70F35B8;
            v66 = v58;
            v67 = v44;
            [UIView performWithoutAnimation:v65];
          }
        }

        v46 = [v58 searchBar];
        v47 = [v46 _viewStackedInNavigationBar];
        [v47 removeFromSuperview];
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

- (void)_setItemsUpToItem:(id)a3 transition:(int)a4
{
  v4 = *&a4;
  v6 = a3;
  if (![(_UINavigationBarItemStack *)self->_stack state])
  {
    v7 = [MEMORY[0x1E695DF70] array];
    stack = self->_stack;
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __48__UINavigationBar__setItemsUpToItem_transition___block_invoke;
    v15 = &unk_1E70F7640;
    v9 = v6;
    v16 = v9;
    v10 = v7;
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

- (void)_addItem:(id)a3 withEffectiveDelegate:(id)a4 transition:(int)a5
{
  v5 = *&a5;
  v8 = a3;
  [(UINavigationBar *)self setLocked:0];
  v7 = [(_UINavigationBarItemStack *)self->_stack topItem];

  if (v7 != v8)
  {
    [(UINavigationBar *)self _pushNavigationItem:v8 transition:v5];
  }

  [(UINavigationBar *)self setLocked:1];
}

- (void)_addItems:(id)a3 withEffectiveDelegate:(id)a4 transition:(int)a5
{
  v20 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = [v7 lastObject];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = v7;
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

- (int64_t)_effectiveMetricsForMetrics:(int64_t)a3
{
  v4 = [(UINavigationBar *)self forceFullHeightInLandscape];
  v5 = 101;
  if (a3 != 102)
  {
    v5 = a3;
  }

  if (a3 == 1)
  {
    v5 = 0;
  }

  if (v4)
  {
    return v5;
  }

  else
  {
    return a3;
  }
}

- (int64_t)effectiveInterfaceOrientation
{
  if (![(UINavigationBar *)self forceFullHeightInLandscape])
  {
    v4 = [(UIView *)self window];
    if (v4)
    {
      v5 = v4;
LABEL_5:
      v6 = [v5 _windowInterfaceOrientation];
      if (!v6)
      {
        v6 = [UIApp _sceneInterfaceOrientationFromWindow:v5];
      }

      v3 = v6;
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

- (void)setRequestedContentSize:(int64_t)a3
{
  v6 = _UINavigationBarShouldCheckLegacyViolation(self);
  if (a3 && v6)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"UINavigationBar.m" lineNumber:2566 description:@"Explicit content size not supported when forcing the legacy provider. Remove your +_forceLegacyVisualProvider override."];
  }

  if (self->_requestedContentSize != a3)
  {
    self->_requestedContentSize = a3;
    visualProvider = self->_visualProvider;

    [(_UINavigationBarVisualProvider *)visualProvider changeLayout];
  }
}

- (void)setPrefersLargeTitles:(BOOL)prefersLargeTitles
{
  v3 = prefersLargeTitles;
  if (_UINavigationBarShouldCheckLegacyViolation(self) && v3)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"UINavigationBar.m" lineNumber:2577 description:@"Large titles not supported when forcing the legacy provider. Remove your +_forceLegacyVisualProvider override."];
  }

  if (self->_prefersLargeTitles != v3)
  {
    self->_prefersLargeTitles = v3;
    visualProvider = self->_visualProvider;

    [(_UINavigationBarVisualProvider *)visualProvider changeLayout];
  }
}

- (void)setBackgroundEffects:(id)a3
{
  v4 = a3;
  backgroundEffects = self->_backgroundEffects;
  if (backgroundEffects != v4)
  {
    v9 = v4;
    v6 = [(NSArray *)backgroundEffects isEqualToArray:v4];
    v4 = v9;
    if (!v6)
    {
      v7 = [(NSArray *)v9 copy];
      v8 = self->_backgroundEffects;
      self->_backgroundEffects = v7;

      [(_UINavigationBarVisualProvider *)self->_visualProvider changeAppearance];
      v4 = v9;
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

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(_UINavigationBarVisualProvider *)self->_visualProvider sizeThatFits:a3.width, a3.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- ($1AB5FA073B851C12C2339EC22442E995)_layoutHeightsForNavigationItem:(id)a3 fittingWidth:(double)a4
{
  v7 = a3;
  objc_storeStrong(&self->_visualProvider->_itemForMeasuring, a3);
  if ([(_UINavigationBarVisualProvider *)self->_visualProvider shouldUseHeightRangeFittingWidth])
  {
    [(_UINavigationBarVisualProvider *)self->_visualProvider layoutHeightsFittingWidth:a4];
    v9 = v8;
    v11 = v10;
    v13 = v12;
  }

  else
  {
    [(UINavigationBar *)self sizeThatFits:a4, 0.0];
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

  v3 = [(UIView *)self window];
  v4 = [v3 screen];

  if (v4)
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

- (void)setInsetsLayoutMarginsFromSafeArea:(BOOL)a3
{
  v3 = a3;
  v5 = [(UIView *)self insetsLayoutMarginsFromSafeArea];
  v6.receiver = self;
  v6.super_class = UINavigationBar;
  [(UIView *)&v6 setInsetsLayoutMarginsFromSafeArea:v3];
  if (self)
  {
    if (v5 != v3)
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

- (void)_setAdditionalSafeAreaInsets:(UIEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.left;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_additionalSafeAreaInsets.top, v3), vceqq_f64(*&self->_additionalSafeAreaInsets.bottom, v4)))) & 1) == 0)
  {
    self->_additionalSafeAreaInsets = a3;
    [(UIView *)self _updateSafeAreaInsets];
  }
}

- (UIEdgeInsets)_safeAreaInsetsForFrame:(CGRect)a3 inSuperview:(id)a4 ignoreViewController:(BOOL)a5
{
  v14.receiver = self;
  v14.super_class = UINavigationBar;
  [(UIView *)&v14 _safeAreaInsetsForFrame:a4 inSuperview:a5 ignoreViewController:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
  v3 = [(_UINavigationBarItemStack *)self->_stack transitionAssistant];
  v4 = [v3 cancelledTransition];

  if (v4)
  {
    if ([(_UINavigationBarItemStack *)self->_stack state]== 1)
    {
      v5 = [(_UINavigationBarItemStack *)self->_stack topItem];
      v6 = [v5 _navigationBar];

      if (v6 == self)
      {
        [v5 _removeTitleAndButtonViews];
        [v5 _removeBarButtonItemViews];
        [v5 _setNavigationBar:0];
      }
    }

    [(_UINavigationBarItemStack *)self->_stack cancelOperation];
    v12 = [(_UINavigationBarItemStack *)self->_stack topItem];
    v7 = [(_UINavigationBarItemStack *)self->_stack backItem];
    v8 = [v7 _navigationBar];
    if (v8)
    {
      v9 = v8;
      v10 = [(UINavigationBar *)self _hasLegacyProvider];

      if (v10)
      {
        v11 = [v7 backButtonView];
        [v11 _setAbbreviatedTitleIndex:0x7FFFFFFFFFFFFFFFLL];
      }
    }

    [v12 updateNavigationBarButtonsAnimated:0];
  }
}

- (void)_reenableUserInteractionWhenReadyWithContext:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_navControllerAnimatingContext, a3);
  if (![(_UINavigationBarItemStack *)self->_stack state])
  {
    [(UINavigationBar *)self _reenableUserInteraction];
  }
}

- (id)hitTest:(CGPoint)a3 forEvent:(__GSEvent *)a4
{
  y = a3.y;
  x = a3.x;
  visualProvider = self->_visualProvider;
  v10.receiver = self;
  v10.super_class = UINavigationBar;
  v7 = [(UIView *)&v10 hitTest:a4 forEvent:?];
  v8 = [(_UINavigationBarVisualProvider *)visualProvider hitTest:v7 defaultViewHit:x, y];

  return v8;
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  visualProvider = self->_visualProvider;
  v10.receiver = self;
  v10.super_class = UINavigationBar;
  v7 = [(UIView *)&v10 hitTest:a4 withEvent:?];
  v8 = [(_UINavigationBarVisualProvider *)visualProvider hitTest:v7 defaultViewHit:x, y];

  return v8;
}

- (void)_evaluateBackIndicatorForHilightedState:(BOOL)a3 ofBarButtonItem:(id)a4 inNavigationItem:(id)a5
{
  v6 = a3;
  v12 = a4;
  v8 = a5;
  if (v12 && v8 && [v12 _showsBackButtonIndicator] && (objc_msgSend(v12, "isHidden") & 1) == 0)
  {
    v9 = [(_UINavigationBarItemStack *)self->_stack topItem];
    v10 = v9;
    if (v9 != v8)
    {

      goto LABEL_12;
    }

    if ([v8 _leftItemsWantBackButton])
    {
      v11 = [(_UINavigationBarItemStack *)self->_stack itemCount];

      if (v11 > 1)
      {
        goto LABEL_12;
      }
    }

    else
    {
    }

    [(UINavigationBar *)self _setBackIndicatorPressed:v6 initialPress:0];
  }

LABEL_12:
}

- (BOOL)_allowInteractionDuringTransition
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if ((objc_opt_respondsToSelector() & 1) != 0 && [WeakRetained enableBackButtonDuringTransition])
  {
    v4 = [(_UINavigationBarItemStack *)self->_stack transitionAssistant];
    v5 = [v4 interactive] ^ 1;
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
    v3 = [WeakRetained _isCurrentTransitionPreemptable];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)_shouldCrossFadeBackgroundVisility
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v3 = [WeakRetained _shouldCrossFadeNavigationBarBackgroundVisibility];
  }

  else
  {
    v3 = 0;
  }

  return v3;
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

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  visualProvider = self->_visualProvider;
  v7 = a4;
  v8 = a3;
  if ([(_UINavigationBarVisualProvider *)visualProvider _shim_wantsCustomTouchHandlingForTouches:v8])
  {
    [(_UINavigationBarVisualProvider *)self->_visualProvider _shim_touchesBegan:v8 withEvent:v7];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = UINavigationBar;
    [(UIResponder *)&v9 touchesBegan:v8 withEvent:v7];
  }
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  visualProvider = self->_visualProvider;
  v7 = a4;
  v8 = a3;
  if ([(_UINavigationBarVisualProvider *)visualProvider _shim_wantsCustomTouchHandlingForTouches:v8])
  {
    [(_UINavigationBarVisualProvider *)self->_visualProvider _shim_touchesMoved:v8 withEvent:v7];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = UINavigationBar;
    [(UIResponder *)&v9 touchesMoved:v8 withEvent:v7];
  }
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  visualProvider = self->_visualProvider;
  v7 = a4;
  v8 = a3;
  if ([(_UINavigationBarVisualProvider *)visualProvider _shim_wantsCustomTouchHandlingForTouches:v8])
  {
    [(_UINavigationBarVisualProvider *)self->_visualProvider _shim_touchesEnded:v8 withEvent:v7];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = UINavigationBar;
    [(UIResponder *)&v9 touchesEnded:v8 withEvent:v7];
  }
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  visualProvider = self->_visualProvider;
  v7 = a4;
  v8 = a3;
  if ([(_UINavigationBarVisualProvider *)visualProvider _shim_wantsCustomTouchHandlingForTouches:v8])
  {
    [(_UINavigationBarVisualProvider *)self->_visualProvider _shim_touchesCancelled:v8 withEvent:v7];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = UINavigationBar;
    [(UIResponder *)&v9 touchesCancelled:v8 withEvent:v7];
  }
}

- (void)_willMoveToWindow:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = UINavigationBar;
  [(UIView *)&v9 _willMoveToWindow:v4];
  if (v4)
  {
    v5 = [v4 screen];
    v6 = [(UINavigationBar *)self _shouldShowBackButtonForScreen:v5];

    if (!v6)
    {
      v7 = [(_UINavigationBarItemStack *)self->_stack backItem];
      v8 = [v7 existingBackButtonView];

      if (v8)
      {
        [v8 removeFromSuperview];
        [(UINavigationBar *)self setNeedsLayout];
      }
    }
  }
}

- (void)_didMoveFromWindow:(id)a3 toWindow:(id)a4
{
  v26.receiver = self;
  v26.super_class = UINavigationBar;
  [(UIView *)&v26 _didMoveFromWindow:a3 toWindow:?];
  if (a4)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      -[UINavigationBar _setBarPosition:](self, "_setBarPosition:", [WeakRetained positionForBar:self]);
    }

    v7 = [a4 screen];
    [v7 scale];
    v9 = v8;
    v10 = [(UIView *)self layer];
    [v10 setRasterizationScale:v9];

    [(UINavigationBar *)self _setNeedsBackgroundViewUpdate];
    [(UINavigationBar *)self _configurePaletteConstraintsIfNecessary];
    v11 = [(_UINavigationBarVisualStyle *)self->_visualStyle idiom];
    if (v11 != [v7 _userInterfaceIdiom])
    {
      visualStyle = self->_visualStyle;
      self->_visualStyle = 0;
    }

    [(_UINavigationBarVisualProvider *)self->_visualProvider _shim_updateBackIndicator];
    v13 = [(_UINavigationBarItemStack *)self->_stack topItem];
    v14 = v13;
    if ((*&self->_navbarFlags & 0x100) != 0)
    {
      v18 = [(UINavigationBar *)self _effectiveDelegate];
      v15 = [v18 _effectiveSearchControllerForSearchBarGivenTopNavigationItem:v14];

      v19 = [(UINavigationBar *)self _effectiveDelegate];
      v20 = [(UIView *)self traitCollection];
      v16 = [v19 _shouldDisplaySearchBarInlineForEffectiveSearchControllerGivenTopNavigationItem:v14 traitCollection:v20];
    }

    else
    {
      v15 = [(_UINavigationBarVisualStyle *)v13 _searchControllerIfAllowed];
      v16 = [(_UINavigationBarVisualStyle *)v14 _hasIntegratedSearchBarInNavigationBar];
    }

    v21 = [v15 searchBar];
    v22 = v21;
    if (v21)
    {
      [v21 _setHostedInlineByNavigationBar:v16];
      if ((v16 & 1) == 0)
      {
        [v22 _setHostedInlineByToolbar:{-[_UINavigationBarVisualStyle _hasIntegratedSearchBarInToolbar](v14, "_hasIntegratedSearchBarInToolbar")}];
      }
    }

    if (dyld_program_sdk_at_least())
    {
      os_variant_has_internal_diagnostics();
      v23 = +[UITraitCollection _currentTraitCollectionIfExists];
      v24 = [(UIView *)self traitCollection];
      [UITraitCollection setCurrentTraitCollection:v24];

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

    v17 = [(UINavigationBar *)self currentBackButton];
    [v17 setPressed:0];

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

- (void)setTranslatesAutoresizingMaskIntoConstraints:(BOOL)a3
{
  v3 = a3;
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
    [(UIView *)&v7 setTranslatesAutoresizingMaskIntoConstraints:v3];
  }
}

- (void)addConstraint:(id)a3
{
  v4 = a3;
  if ([(_UINavigationBarVisualProvider *)self->_visualProvider _shim_throwConstraintExceptions])
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"Cannot modify constraints for UINavigationBar managed by a controller"];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = UINavigationBar;
    [(UIView *)&v5 addConstraint:v4];
  }
}

- (void)removeConstraint:(id)a3
{
  v4 = a3;
  if ([(_UINavigationBarVisualProvider *)self->_visualProvider _shim_throwConstraintExceptions])
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"Cannot modify constraints for UINavigationBar managed by a controller"];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = UINavigationBar;
    [(UIView *)&v5 removeConstraint:v4];
  }
}

- (void)_updateNavigationBarItem:(id)a3 forStyle:(int64_t)a4 previousTintColor:(id)a5
{
  v10 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v10 setControlSize:{-[UINavigationBar isMinibar](self, "isMinibar")}];
    [v10 setBarStyle:a4];
    v7 = [(UINavigationBar *)self _effectiveBarTintColor];
    [v10 setNavigationBarTintColor:v7];

    if ([v10 _wantsAccessibilityButtonShapes])
    {
      [v10 setNeedsLayout];
    }

    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v10 setControlSize:{-[UINavigationBar isMinibar](self, "isMinibar")}];
LABEL_7:
    [v10 setBarStyle:a4];
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
    [v10 setStyle:a4];
  }

  else
  {
    v8 = +[UIDevice currentDevice];
    v9 = [v8 userInterfaceIdiom];

    if ((v9 & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v10 _updateLabelColor];
      }
    }
  }

LABEL_8:
}

- (void)didAddSubview:(id)a3
{
  visualProvider = self->_visualProvider;
  v5 = a3;
  [(_UINavigationBarVisualProvider *)visualProvider barDidAddSubview:v5];
  v6 = [(UINavigationBar *)self _currentBarStyle];
  v7 = [(UINavigationBar *)self _effectiveBarTintColor];
  [(UINavigationBar *)self _updateNavigationBarItem:v5 forStyle:v6 previousTintColor:v7];
}

- (void)_updateNavigationBarItemsForStyle:(int64_t)a3 previousTintColor:(id)a4
{
  if ([(UIView *)self _areAccessibilityButtonShapesEnabled])
  {
    stack = self->_stack;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __71__UINavigationBar__updateNavigationBarItemsForStyle_previousTintColor___block_invoke;
    v7[3] = &__block_descriptor_40_e30_v24__0__UINavigationItem_8_B16l;
    v7[4] = a3;
    [(_UINavigationBarItemStack *)stack iterateItems:v7];
  }
}

void __71__UINavigationBar__updateNavigationBarItemsForStyle_previousTintColor___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 backButtonView];
  [v3 setStyle:*(a1 + 32)];
  [v3 setNeedsLayout];
}

- (void)_updateNavigationBarItemsForStyle:(int64_t)a3
{
  v5 = [(UINavigationBar *)self _effectiveBarTintColor];
  [(UINavigationBar *)self _updateNavigationBarItemsForStyle:a3 previousTintColor:v5];
}

- (void)_setBarStyle:(int64_t)a3
{
  if (self->_barStyle != a3)
  {
    self->_barStyle = a3;
    [(UINavigationBar *)self _setNeedsBackgroundViewUpdate];
    [(_UINavigationBarVisualProvider *)self->_visualProvider changeAppearance];
    v5 = [(UINavigationBar *)self _effectiveBarTintColor];

    if (!v5)
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

- (void)setForceFullHeightInLandscape:(BOOL)a3
{
  navbarFlags = self->_navbarFlags;
  if ((navbarFlags & 1) != a3)
  {
    *&self->_navbarFlags = navbarFlags & 0xFFFE | a3;
    [(UINavigationBar *)self invalidateIntrinsicContentSize];

    [(UINavigationBar *)self setNeedsLayout];
  }
}

- (id)_titleTextColor
{
  v3 = [(UINavigationBar *)self _currentVisualStyle];
  v4 = [(UIView *)self traitCollection];
  v5 = [v3 defaultTitleColorForUserInterfaceStyle:objc_msgSend(v4 barStyle:{"userInterfaceStyle"), self->_barStyle}];

  return v5;
}

- (void)_propagateEffectiveBarTintColorWithPreviousColor:(id)a3
{
  v4 = a3;
  [(UINavigationBar *)self _setNeedsBackgroundViewUpdate];
  [(UINavigationBar *)self _updateNavigationBarItemsForStyle:[(UINavigationBar *)self _currentBarStyle] previousTintColor:v4];

  [(UIView *)self setNeedsDisplay];
}

- (void)_updateTitleViewIfTop:(id)a3
{
  stack = self->_stack;
  v5 = a3;
  v6 = [(_UINavigationBarItemStack *)stack topItem];

  if (v6 == v5)
  {
    visualProvider = self->_visualProvider;

    [(_UINavigationBarVisualProvider *)visualProvider updateTopNavigationItemTitleView];
  }
}

- (id)_currentLeftViews
{
  v3 = [(UINavigationBar *)self topItem];
  v4 = [v3 _customLeftViews];
  v5 = [v4 mutableCopy];

  if (![v5 count])
  {
    if (![(UINavigationBar *)self _hasBackButton])
    {
      goto LABEL_11;
    }

    goto LABEL_6;
  }

  v6 = [(UINavigationBar *)self topItem];
  if (![v6 leftItemsSupplementBackButton])
  {
LABEL_10:

    goto LABEL_11;
  }

  v7 = [(UINavigationBar *)self _hasBackButton];

  if (v7)
  {
LABEL_6:
    if (!v5)
    {
      v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    v8 = [(UINavigationBar *)self backItem];
    v6 = [v8 backButtonView];

    if (v6)
    {
      [v5 insertObject:v6 atIndex:0];
    }

    goto LABEL_10;
  }

LABEL_11:

  return v5;
}

- (UIView)currentLeftView
{
  v3 = [(UINavigationBar *)self currentBackButton];
  v4 = [(UINavigationBar *)self _currentLeftViews];
  if ([v4 count])
  {
    v5 = [(UINavigationBar *)self topItem];
    if ([v5 leftItemsSupplementBackButton])
    {
      v6 = v3;
    }

    else
    {
      v6 = [v4 objectAtIndex:0];
    }

    v7 = v6;
  }

  else
  {
    v7 = v3;
  }

  return v7;
}

- (id)_currentRightViews
{
  v2 = [(UINavigationBar *)self topItem];
  v3 = [v2 _customRightViews];

  return v3;
}

- (UIView)currentRightView
{
  v2 = [(UINavigationBar *)self _currentRightViews];
  if ([v2 count])
  {
    v3 = [v2 objectAtIndex:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_setForceScrollEdgeAppearance:(BOOL)a3
{
  v3 = a3;
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

  [(_UINavigationBarVisualProvider *)self->_visualProvider setForceScrollEdgeAppearance:v3];
}

- (id)_effectiveSearchControllerForNavigationItem:(id)a3
{
  v4 = a3;
  v5 = [v4 _searchControllerIfAllowed];
  if (!v5)
  {
    v6 = [(UINavigationBar *)self topItem];
    v7 = v6;
    if (v6 == v4)
    {
      navbarFlags = self->_navbarFlags;

      if ((navbarFlags & 0x100) == 0)
      {
        v5 = 0;
        goto LABEL_8;
      }

      v7 = [(UINavigationBar *)self _effectiveDelegate];
      v5 = [v7 _effectiveSearchControllerForSearchBarGivenTopNavigationItem:v4];
    }

    else
    {
      v5 = 0;
    }
  }

LABEL_8:

  return v5;
}

- (BOOL)_hasBackButton
{
  v3 = [(_UINavigationBarItemStack *)self->_stack topItem];
  if ([v3 hidesBackButton])
  {
    v4 = 0;
  }

  else
  {
    v5 = [(_UINavigationBarItemStack *)self->_stack backItem];
    if (v5)
    {
      v4 = [(UINavigationBar *)self _shouldShowBackButtonForNavigationItem:v5];
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
  v3 = [(_UINavigationBarItemStack *)self->_stack backItem];
  v4 = [(_UINavigationBarItemStack *)self->_stack topItem];
  v5 = [(UINavigationBar *)self _backButtonForBackItem:v3 topItem:v4];

  return v5;
}

- (id)_backButtonForBackItem:(id)a3 topItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6 && ([v7 hidesBackButton] & 1) == 0 && -[UINavigationBar _shouldShowBackButtonForNavigationItem:](self, "_shouldShowBackButtonForNavigationItem:", v6))
  {
    v9 = [v6 backButtonView];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)_delegateWantsNavigationBarHidden
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v3 = [WeakRetained isNavigationBarHidden];
  }

  else
  {
    v3 = 0;
  }

  return v3;
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
  v3 = [(UINavigationBar *)self _accessibility_navigationController];
  v4 = v3;
  if (v3)
  {
    [v3 _incomingNavigationBarFrame];
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

- (void)_setPrompt:(id)a3
{
  visualProvider = self->_visualProvider;
  v5 = a3;
  [(_UINavigationBarVisualProvider *)visualProvider _shim_setPromptText:v5 animated:[(UINavigationBar *)self _isAnimationEnabled]];
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

- (void)_updateContentIfTopItem:(id)a3 animated:(BOOL)a4
{
  stack = self->_stack;
  v7 = a3;
  v8 = [(_UINavigationBarItemStack *)stack topItem];

  if (v8 == v7)
  {
    if (a4)
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

- (void)_updateBackButtonVisibilityIfTop:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v8 = a3;
  v6 = [(_UINavigationBarItemStack *)self->_stack topItem];

  v7 = v8;
  if (v6 == v8)
  {
    -[_UINavigationBarVisualProvider setBackButtonVisible:animated:](self->_visualProvider, "setBackButtonVisible:animated:", [v8 hidesBackButton] ^ 1, v4);
    v7 = v8;
  }
}

- (void)setButton:(int)a3 enabled:(BOOL)a4
{
  v4 = a4;
  NSLog(&cfstr_ThisMethodIsDe.isa, a2);
  v14 = [(_UINavigationBarItemStack *)self->_stack topItem];
  v7 = [v14 rightBarButtonItem];
  v8 = [v7 view];

  v9 = [v14 leftBarButtonItem];
  v10 = [v9 view];

  if (a3 == 1)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v12 = v10;
    if (isKindOfClass)
    {
LABEL_4:
      [v12 setEnabled:v4];
    }
  }

  else if (!a3)
  {
    objc_opt_class();
    v11 = objc_opt_isKindOfClass();
    v12 = v8;
    if (v11)
    {
      goto LABEL_4;
    }
  }
}

- (void)_getBackgroundImage:(id *)a3 shouldRespectOversizedBackgroundImage:(BOOL *)a4 actualBarMetrics:(int64_t *)a5 actualBarPosition:(int64_t *)a6
{
  v11 = [(UINavigationBar *)self _activeBarMetrics];
  v12 = [(UINavigationBar *)self _barPosition];
  if (dyld_program_sdk_at_least())
  {
    v13 = [(_UIBarAppearanceStorage *)self->_appearanceStorage backgroundImageForBarPosition:v12 barMetrics:v11];
    if (v13)
    {
      goto LABEL_27;
    }

    v13 = [(_UIBarAppearanceStorage *)self->_appearanceStorage backgroundImageForBarPosition:0 barMetrics:v11];
    if (v13)
    {
      goto LABEL_4;
    }

    switch(v11)
    {
      case 0:
LABEL_47:
        v13 = 0;
        goto LABEL_27;
      case 102:
        v24 = 1;
        v13 = [(_UIBarAppearanceStorage *)self->_appearanceStorage backgroundImageForBarPosition:v12 barMetrics:1];
        if (v13)
        {
          goto LABEL_27;
        }

        break;
      case 101:
        v13 = [(_UIBarAppearanceStorage *)self->_appearanceStorage backgroundImageForBarPosition:v12 barMetrics:0];
        if (v13)
        {
          goto LABEL_27;
        }

        v24 = 0;
        break;
      default:
LABEL_48:
        v13 = [(_UIBarAppearanceStorage *)self->_appearanceStorage backgroundImageForBarPosition:v12 barMetrics:0];
        if (!v13)
        {
          v13 = [(_UIBarAppearanceStorage *)self->_appearanceStorage backgroundImageForBarPosition:0 barMetrics:0];
          if (v13)
          {
            v12 = 0;
          }
        }

        goto LABEL_27;
    }

    v13 = [(_UIBarAppearanceStorage *)self->_appearanceStorage backgroundImageForBarPosition:0 barMetrics:v24];
    if (v13)
    {
LABEL_4:
      v12 = 0;
      goto LABEL_27;
    }

    if (v11 == 101)
    {
      goto LABEL_47;
    }

    goto LABEL_48;
  }

  v25 = a6;
  v14 = v11;
  v15 = v12;
  [(UIView *)self bounds];
  v17 = v16 == 54.0 || v16 == 74.0;
  v18 = v16 == 54.0 || v16 <= 32.0;
  v19 = [(UINavigationBar *)self _barPosition];
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

  v13 = [(_UIBarAppearanceStorage *)self->_appearanceStorage backgroundImageForBarPosition:v19 barMetrics:v22];
  if (v19 == 3 && !v13)
  {
    v13 = [(_UIBarAppearanceStorage *)self->_appearanceStorage backgroundImageForBarPosition:0 barMetrics:v22];
  }

  if (v13 == 0 && v17)
  {
    v13 = [(_UIBarAppearanceStorage *)self->_appearanceStorage backgroundImageForBarPosition:v19 barMetrics:v18];
  }

  v12 = v15;
  if (v13)
  {
    v11 = v14;
LABEL_26:
    a6 = v25;
    goto LABEL_27;
  }

  v13 = [(_UIBarAppearanceStorage *)self->_appearanceStorage backgroundImageForBarPosition:0 barMetrics:v22];
  v11 = v14;
  if (v13)
  {
    goto LABEL_26;
  }

  v13 = [(_UIBarAppearanceStorage *)self->_appearanceStorage backgroundImageForBarPosition:v19 barMetrics:0];
  a6 = v25;
  if (!v13)
  {
    v13 = [(_UIBarAppearanceStorage *)self->_appearanceStorage backgroundImageForBarPosition:0 barMetrics:0];
  }

LABEL_27:
  v23 = v13;
  *a3 = v23;
  if (a4)
  {
    *a4 = 0;
  }

  if (a5)
  {
    *a5 = v11;
  }

  if (a6)
  {
    *a6 = v12;
  }
}

- (void)_updatePalette:(id)a3
{
  v22 = a3;
  v5 = [v22 _backgroundView];
  if (([v22 _paletteOverridesPinningBar] & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
      v7 = [v22 _backgroundViewLayout];
      v8 = [(UINavigationBar *)self backgroundEffects];
      if (v8)
      {
        [v7 configureWithEffects:v8];
      }

      else if ([v22 _supportsSpecialSearchBarTransitions] && (-[_UINavigationBarItemStack topItem](self->_stack, "topItem"), v9 = objc_claimAutoreleasedReturnValue(), v3 = objc_msgSend(v9, "_backgroundHidden"), v9, v3))
      {
        [v7 configureAsTransparent];
      }

      else
      {
        barStyle = self->_barStyle;
        v11 = [(UINavigationBar *)self backgroundImageForBarMetrics:[(UINavigationBar *)self _activeBarMetrics]];
        v3 = v11;
        if (v11 && (([v11 size], v13 == *MEMORY[0x1E695F060]) ? (v14 = v12 == *(MEMORY[0x1E695F060] + 8)) : (v14 = 0), v14))
        {
          [v7 configureImage:v3 forceOpaque:-[UINavigationBar isTranslucent](self barStyle:{"isTranslucent") ^ 1, self->_barStyle}];
        }

        else
        {
          v15 = [(UINavigationBar *)self _effectiveBarTintColor];
          [v7 configureEffectForStyle:barStyle backgroundTintColor:v15 forceOpaque:{-[UINavigationBar isTranslucent](self, "isTranslucent") ^ 1}];
        }

        if (barStyle == 3 || [v22 paletteShadowIsHidden])
        {
          [v7 configureWithoutShadow];
        }

        else
        {
          [v7 configureShadowForBarStyle:barStyle];
        }
      }

      v16 = [(UINavigationBar *)self _backdropViewLayerGroupName];
      [v6 setGroupName:v16];

      v17 = [(_UINavigationBarItemStack *)self->_stack topEntry];
      v18 = [v17 activeLayout];

      if (v18)
      {
        v17 = v18[22];
        v3 = [v17 layout];
        [v3 backgroundAlpha];
        v20 = v19;
      }

      else
      {
        v20 = 1.0;
      }

      v21 = [v6 layout];
      [v21 setBackgroundAlpha:v20];

      if (v18)
      {
      }

      [v6 transitionBackgroundViews];
      [v22 _propagateBackgroundToContents];
    }
  }
}

- (void)_accessibilityButtonShapesParametersDidChange
{
  v18 = *MEMORY[0x1E69E9840];
  [(_UINavigationBarVisualProvider *)self->_visualProvider _shim_updateBackIndicator];
  v3 = [(UINavigationBar *)self currentBackButton];
  v4 = [(UINavigationBar *)self _accessibilityButtonBackgroundTintColor];
  if (v3 && [v3 _showsAccessibilityBackgroundWhenEnabled])
  {
    [v3 _setWantsBlendModeForAccessibilityBackgrounds:v4 == 0];
    [v3 _setAccessibilityBackgroundTintColor:v4];
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
  v5 = [(UIView *)self subviews];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [v11 _showsAccessibilityBackgroundWhenEnabled])
        {
          [v11 _setWantsBlendModeForAccessibilityBackgrounds:v4 == 0];
          [v11 _setAccessibilityBackgroundTintColor:v4];
          v8 = 1;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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

- (void)_accessibilityButtonShapesDidChangeNotification:(id)a3
{
  if (!_AXSButtonShapesEnabled())
  {
    [__barButtonAccessibilityBackgroundImages removeAllObjects];
  }

  [(UINavigationBar *)self _accessibilityButtonShapesParametersDidChange];
}

- (void)_didChangeFromIdiom:(int64_t)a3 onScreen:(id)a4 traverseHierarchy:(BOOL)a5
{
  v9.receiver = self;
  v9.super_class = UINavigationBar;
  [(UIView *)&v9 _didChangeFromIdiom:a3 onScreen:a4 traverseHierarchy:a5];
  v7 = [(UIView *)self _screen];
  v8 = [v7 _userInterfaceIdiom];

  if (v8 != a3 && (a3 == 3 || v8 == 3))
  {
    [(UINavigationBar *)self _accessibilityButtonShapesParametersDidChange];
  }
}

- (BOOL)_suppressBackIndicator
{
  v3 = [(UIView *)self _screen];
  if (v3)
  {
    v4 = [(UIView *)self _screen];
    v5 = ![(UINavigationBar *)self _shouldShowBackButtonForScreen:v4];
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (void)_setBarPosition:(int64_t)a3
{
  v3 = 2;
  if (a3)
  {
    v3 = a3;
  }

  if (self->_barPosition != v3)
  {
    self->_barPosition = v3;
    [(_UINavigationBarVisualProvider *)self->_visualProvider changeAppearance];
  }
}

- (void)_barSizeDidChange:(CGSize)a3
{
  [(_UINavigationBarVisualProvider *)self->_visualProvider recordBarSize:a3.width, a3.height];
  [(_UINavigationBarVisualProvider *)self->_visualProvider barSizeChanged];
  visualProvider = self->_visualProvider;

  [(_UINavigationBarVisualProvider *)visualProvider _shim_updateBackgroundViewIgnoringFlag];
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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

- (void)setBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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

- (void)setCenter:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
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
  v2 = [(UINavigationBar *)self _allViews];
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

        [*(*(&v7 + 1) + 8 * v6++) setAlpha:0.0];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)layoutSublayersOfLayer:(id)a3
{
  v4 = a3;
  if ((*&self->_navbarFlags & 0x10) == 0 || (WeakRetained = objc_loadWeakRetained(&self->_delegate), v6 = [WeakRetained _freezeLayoutForOrientationChangeOnDismissal], WeakRetained, (v6 & 1) == 0))
  {
    visualProvider = self->_visualProvider;
    v8 = [(UINavigationBar *)self topItem];
    v9 = [(UINavigationBar *)self backItem];
    [(_UINavigationBarVisualProvider *)visualProvider _shim_updateUserContentGuideForTopItem:v8 backItem:v9];

    v10.receiver = self;
    v10.super_class = UINavigationBar;
    [(UIView *)&v10 layoutSublayersOfLayer:v4];
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

  v9 = [(UINavigationBar *)self _currentVisualStyle];
  if (self->_alwaysUseDefaultMetrics)
  {
    v5 = 0;
  }

  else
  {
    v6 = [(UINavigationBar *)self effectiveInterfaceOrientation];
    v7 = [(_UINavigationBarVisualProvider *)self->_visualProvider _shim_promptText];
    v5 = [v9 navigationBar:self metricsForOrientation:v6 hasPrompt:v7 != 0];
  }

  v8 = [(UINavigationBar *)self _effectiveMetricsForMetrics:v5];
  [(_UINavigationBarAppearanceStorage *)self->_appearanceStorage setActiveBarMetrics:v8];
  [(_UINavigationBarVisualStyle *)self->_visualStyle setMetrics:v8];
}

- (void)_sendNavigationPopForBackBarButtonItem:(id)a3
{
  v12 = a3;
  v4 = [v12 action];
  if (__useCustomBackButtonAction != 1 || v4 == 0)
  {
    v9 = [(UINavigationBar *)self _effectiveDelegate];
    if (objc_opt_respondsToSelector())
    {
      v6 = [(_UINavigationBarItemStack *)self->_stack topItem];
      [v9 _popNavigationBar:self item:v6];
    }

    else
    {
      v10 = [(UINavigationBar *)self isLocked];
      [(UINavigationBar *)self setLocked:0];
      v11 = [(UINavigationBar *)self popNavigationItemAnimated:1];
      [(UINavigationBar *)self setLocked:v10];
    }
  }

  else
  {
    v7 = v4;
    v8 = UIApp;
    v9 = [v12 target];
    [v8 sendAction:v7 to:v9 from:self forEvent:0];
  }
}

- (void)_setEdgesRequiringContentMargin:(unint64_t)a3
{
  if (self->_edgesRequiringContentMargin != a3)
  {
    self->_edgesRequiringContentMargin = a3;
    [(UINavigationBar *)self setNeedsLayout];
  }
}

- (void)_setAdjacentBarEdges:(unint64_t)a3
{
  if (self->_adjacentBarEdges != a3)
  {
    self->_adjacentBarEdges = a3;
    [(UINavigationBar *)self setNeedsLayout];
  }
}

- (BOOL)_canPerformCustomizeBarActionWithSender:(id)a3
{
  if ([(UIView *)self isHidden])
  {
    return 0;
  }

  visualProvider = self->_visualProvider;

  return [(_UINavigationBarVisualProvider *)visualProvider _supportsCustomization];
}

- (void)runToolbarCustomizationPalette:(id)a3
{
  if ([(UINavigationBar *)self _canPerformCustomizeBarActionWithSender:a3])
  {

    [(UINavigationBar *)self _beginCustomizingBar];
  }
}

- (void)_beginRenamingIfPossible
{
  v3 = [(UINavigationBar *)self topItem];
  v4 = [v3 _canRename];

  if (v4)
  {
    visualProvider = self->_visualProvider;

    [(_UINavigationBarVisualProvider *)visualProvider _beginRenaming];
  }
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  v6 = a4;
  if (sel_rename_ == a3)
  {
    v8 = [(UINavigationBar *)self topItem];
    v9 = [v8 _canRename];
  }

  else
  {
    if (sel_runToolbarCustomizationPalette_ == a3)
    {
      v7 = [(UINavigationBar *)self _canPerformCustomizeBarActionWithSender:v6];
    }

    else
    {
      v11.receiver = self;
      v11.super_class = UINavigationBar;
      v7 = [(UIView *)&v11 canPerformAction:a3 withSender:v6];
    }

    v9 = v7;
  }

  return v9;
}

- (id)_accessibility_contentsOfNavigationBar
{
  v3 = objc_alloc_init(_UINavigationBarContents);
  v4 = [(_UINavigationBarItemStack *)self->_stack topItem];
  v5 = [(_UINavigationBarItemStack *)self->_stack backItem];
  [(_UINavigationBarContents *)v3 setTopItem:v4];
  [(_UINavigationBarContents *)v3 setBackItem:v5];
  v6 = [(UINavigationBar *)self _staticNavBarButtonItem];
  [(_UINavigationBarContents *)v3 setStaticBarButtonItem:v6];

  if (v4)
  {
    v7 = [MEMORY[0x1E695DF70] array];
    v8 = [MEMORY[0x1E695DF70] array];
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __57__UINavigationBar__accessibility_contentsOfNavigationBar__block_invoke;
    v19 = &unk_1E70F7A58;
    v20 = v7;
    v21 = v8;
    v9 = v8;
    v10 = v7;
    v11 = _Block_copy(&v16);
    v12 = [v4 leftBarButtonItems];
    [v12 enumerateObjectsUsingBlock:v11];

    v13 = [v4 rightBarButtonItems];
    [v13 enumerateObjectsUsingBlock:v11];

    [(_UINavigationBarContents *)v3 setCancelBarButtonItems:v10];
    [(_UINavigationBarContents *)v3 setOtherBarButtonItems:v9];
  }

  if (v5)
  {
    v14 = [v5 _effectiveBackBarButtonItem];
    [(_UINavigationBarContents *)v3 setBackBarButtonItem:v14];
  }

  if (v4)
  {
    [(_UINavigationBarVisualProvider *)self->_visualProvider provideViewsForContents:v3 topItem:v4 backItem:v5];
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
    v4 = [(_UINavigationBarItemStack *)self->_stack topItem];
    v3 = [v4 _effectiveBackBarButtonItem];
    [(UINavigationBar *)self _sendNavigationPopForBackBarButtonItem:v3];
  }
}

- (BOOL)_accessibilityHUDGestureManager:(id)a3 shouldBeginAtPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  if ([(_UINavigationBarItemStack *)self->_stack state])
  {
    return 0;
  }

  visualProvider = self->_visualProvider;

  return [(_UINavigationBarVisualProvider *)visualProvider _accessibility_shouldBeginHUDGestureAtPoint:x, y];
}

- (BOOL)_accessibilityHUDGestureManager:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [(_UINavigationBarItemStack *)self->_stack topItem];
  v7 = [v6 leftBarButtonItems];
  v8 = v7;
  v9 = MEMORY[0x1E695E0F0];
  if (v7)
  {
    v10 = v7;
  }

  else
  {
    v10 = MEMORY[0x1E695E0F0];
  }

  v11 = v10;

  v12 = [(_UINavigationBarItemStack *)self->_stack topItem];
  v13 = [v12 rightBarButtonItems];
  v14 = v13;
  if (v13)
  {
    v15 = v13;
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
        v22 = [v5 view];
        v23 = [v21 view];
        v24 = [v22 isDescendantOfView:v23];

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

- (void)_accessibilityHUDGestureManager:(id)a3 gestureLiftedAtPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v9 = a3;
  v7 = [(_UINavigationBarVisualProvider *)self->_visualProvider _accessibility_controlToActivateForHUDGestureLiftAtPoint:x, y];
  if (v7)
  {
    v8 = [v9 view];
    [v7 convertPoint:v8 fromView:{x, y}];
    [v7 _activateForAccessibilityHUDLiftAtPoint:?];
  }
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  visualProvider = self->_visualProvider;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __48__UINavigationBar_gestureRecognizerShouldBegin___block_invoke;
  v5[3] = &unk_1E70F7A80;
  v5[4] = self;
  return [(_UINavigationBarVisualProvider *)visualProvider gestureRecognizerShouldBegin:a3 defaultAnswer:v5];
}

id __48__UINavigationBar_gestureRecognizerShouldBegin___block_invoke(uint64_t a1, uint64_t a2)
{
  v3.receiver = *(a1 + 32);
  v3.super_class = UINavigationBar;
  return objc_msgSendSuper2(&v3, sel_gestureRecognizerShouldBegin_, a2);
}

- (id)_systemDefaultFocusGroupIdentifier
{
  v3 = [(UIView *)self _focusBehavior];
  v4 = [v3 focusGroupContainmentBehavior];

  if ((v4 & 0x20) != 0)
  {
    v5 = _UIFocusGroupIdentifierForInstance(self);
  }

  else
  {
    v7.receiver = self;
    v7.super_class = UINavigationBar;
    v5 = [(UIView *)&v7 _systemDefaultFocusGroupIdentifier];
  }

  return v5;
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

- (void)_uikit_applyValueFromTraitStorage:(id)a3 forKeyPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 hasPrefix:@"titleTextAttributes."] && objc_msgSend(v7, "length") >= 0x15)
  {
    v8 = [v7 substringFromIndex:20];
    v9 = [(UINavigationBar *)self titleTextAttributes];
    v10 = [v9 mutableCopy];

    [v10 setValue:v6 forKeyPath:v8];
    [(UINavigationBar *)self setTitleTextAttributes:v10];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = UINavigationBar;
    [&v11 _uikit_applyValueFromTraitStorage:v6 forKeyPath:v7];
  }
}

- (double)_autolayoutSpacingAtEdge:(int)a3 forAttribute:(int64_t)a4 inContainer:(id)a5 isGuide:(BOOL)a6
{
  result = 0.0;
  if (a6)
  {
    v7.receiver = self;
    v7.super_class = UINavigationBar;
    [(UIView *)&v7 _autolayoutSpacingAtEdge:*&a3 forAttribute:a4 inContainer:a5 isGuide:1, 0.0];
  }

  return result;
}

@end