@interface UITabBar
+ (Class)_visualProviderClassForTabBar:(id)a3;
+ (id)_visualProviderForTabBar:(id)a3;
+ (void)_initializeForIdiom:(int64_t)a3;
- (BOOL)_isEligibleForFocusInteraction;
- (BOOL)_isEligibleForFocusOcclusion;
- (BOOL)_isMinimized;
- (BOOL)_isPhotosApp;
- (BOOL)_shouldDecodeSubviews;
- (BOOL)_subclassImplementsDrawRect;
- (BOOL)_useVibrantItems;
- (BOOL)canBecomeFocused;
- (BOOL)endCustomizingAnimated:(BOOL)animated;
- (BOOL)isTranslucent;
- (BOOL)shouldUpdateFocusInContext:(id)a3;
- (CGRect)_frameForHostedAccessoryView;
- (CGSize)_intrinsicSizeWithinSize:(CGSize)a3;
- (CGSize)sizeThatFits:(CGSize)a3;
- (NSString)_backdropViewLayerGroupName;
- (NSString)description;
- (UITabBar)initWithCoder:(id)a3;
- (UITabBar)initWithFrame:(CGRect)a3;
- (UITabBarAppearance)standardAppearance;
- (UITabBarItem)selectedItem;
- (UIView)_externalViewForSafeAreaInsets;
- (double)_autolayoutSpacingAtEdge:(int)a3 forAttribute:(int64_t)a4 inContainer:(id)a5 isGuide:(BOOL)a6;
- (double)_frameForHostedElement:(uint64_t)a3 options:;
- (double)_scaleFactorForItems:(id)a3 spacing:(double)a4 dimension:(double)a5 maxWidth:(double)a6;
- (double)_shadowAlpha;
- (double)_totalDimensionForItems:(id)a3 spacing:(double)a4 dimension:(double)a5 scaleFactor:(double)a6;
- (id)_defaultUnselectedTintColorForDefaultTV;
- (id)_effectiveUnselectedLabelTintColor;
- (id)_effectiveUnselectedTabTintColorConsideringView:(id)a3;
- (id)_effectiveUnselectedTintColor;
- (id)_glassGroupContainer;
- (id)_hostedElementsLayoutHandler;
- (id)_normalInheritedTintColor;
- (id)_resolvedPresentationSourceItemForItem:(id *)a1;
- (id)_systemDefaultFocusGroupIdentifier;
- (id)_traitCollectionForChildEnvironment:(id)a3;
- (id)_viewsForMorphingToTarget:(id *)a1;
- (id)delegate;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)preferredFocusEnvironments;
- (int64_t)_effectiveBarOrientation;
- (int64_t)_expectedInterfaceOrientation;
- (int64_t)_focusedIndex;
- (int64_t)_imageStyle;
- (uint64_t)_currentMorphTarget;
- (uint64_t)_hostedElements;
- (uint64_t)_minimizeBehavior;
- (uint64_t)_morphAnimationsForHostedElementsDidEnd;
- (uint64_t)_performWhileIgnoringLock:(uint64_t)result;
- (uint64_t)_selectCollapseTabIfPossible;
- (uint64_t)_setCurrentMorphTarget:(uint64_t)result;
- (uint64_t)_setHostedElements:(uint64_t)result;
- (uint64_t)_setHostedElementsLayoutHandler:(uint64_t)result;
- (uint64_t)_updateMorphTargetBlock;
- (unint64_t)_edgesPropagatingSafeAreaInsetsToSubviews;
- (void)_accessibilityButtonShapesParametersDidChange;
- (void)_adjustButtonSelection:(id)a3;
- (void)_buttonDown:(id)a3;
- (void)_buttonDownDelayed:(id)a3;
- (void)_buttonUp:(id)a3;
- (void)_configureTabBarReplacingItem:(id)a3 withNewItem:(id)a4 swapping:(BOOL)a5;
- (void)_customizeWithAvailableItems:(id)a3;
- (void)_didChangeFromIdiom:(int64_t)a3 onScreen:(id)a4 traverseHierarchy:(BOOL)a5;
- (void)_didMoveFromWindow:(id)a3 toWindow:(id)a4;
- (void)_didSelectButtonForItem:(id)a3;
- (void)_dismissCustomizeSheet:(BOOL)a3;
- (void)_doCommonTabBarInit;
- (void)_doCommonTabBarPreInit;
- (void)_handleCurrentMorphTargetChange;
- (void)_installDefaultAppearance;
- (void)_makeCurrentButtonFirstResponder;
- (void)_populateArchivedSubviews:(id)a3;
- (void)_sendAction:(id)a3 withEvent:(id)a4;
- (void)_setBackdropViewLayerGroupName:(id)a3;
- (void)_setBackgroundNeedsUpdate:(BOOL)a3;
- (void)_setBarMetrics:(int64_t)a3;
- (void)_setBarOrientation:(int64_t)a3;
- (void)_setDisableBlurTinting:(BOOL)a3;
- (void)_setDisplayStyle:(int64_t)a3;
- (void)_setFocusedItemHightlightShouldBeVisible:(BOOL)a3;
- (void)_setGlassGroupContainer:(uint64_t)a1;
- (void)_setHiddenAwaitingFocus:(BOOL)a3;
- (void)_setHidesShadow:(BOOL)a3;
- (void)_setImageStyle:(int64_t)a3;
- (void)_setLabelFont:(id)a3;
- (void)_setLabelShadowColor:(id)a3;
- (void)_setLabelShadowOffset:(CGSize)a3;
- (void)_setLabelTextColor:(id)a3 selectedTextColor:(id)a4;
- (void)_setMinimized:(BOOL)a3;
- (void)_setMinimizedStateDidChangeHandler:(id)a3;
- (void)_setPendingFocusAction:(BOOL)a3;
- (void)_setScrollsItems:(BOOL)a3;
- (void)_setShadowAlpha:(double)a3;
- (void)_setShowsHighlightedState:(BOOL)a3;
- (void)_setSpringLoaded:(BOOL)a3 force:(BOOL)a4;
- (void)_setSuspendBackgroundUpdates:(BOOL)a3;
- (void)_setTabBarSizing:(int64_t)a3;
- (void)_setUpdateMorphTargetBlock:(void *)a1;
- (void)_setVibrantLabels:(BOOL)a3;
- (void)_updateTabBarItemView:(id)a3;
- (void)addConstraint:(id)a3;
- (void)beginCustomizingItems:(NSArray *)items;
- (void)dealloc;
- (void)dismissCustomizeSheet:(BOOL)a3;
- (void)encodeWithCoder:(id)a3;
- (void)layoutSubviews;
- (void)removeConstraint:(id)a3;
- (void)setAlpha:(double)a3;
- (void)setBackgroundEffects:(id)a3;
- (void)setBackgroundImage:(UIImage *)backgroundImage;
- (void)setBarStyle:(UIBarStyle)barStyle;
- (void)setBarTintColor:(UIColor *)barTintColor;
- (void)setBounds:(CGRect)a3;
- (void)setDelegate:(id)delegate;
- (void)setFrame:(CGRect)a3;
- (void)setHidden:(BOOL)a3;
- (void)setItems:(NSArray *)items animated:(BOOL)animated;
- (void)setLocked:(BOOL)a3;
- (void)setScrollEdgeAppearance:(UITabBarAppearance *)scrollEdgeAppearance;
- (void)setSelectedItem:(UITabBarItem *)selectedItem;
- (void)setSelectionIndicatorImage:(UIImage *)selectionIndicatorImage;
- (void)setSemanticContentAttribute:(int64_t)a3;
- (void)setShadowImage:(UIImage *)shadowImage;
- (void)setStandardAppearance:(UITabBarAppearance *)standardAppearance;
- (void)setTintColor:(UIColor *)tintColor;
- (void)setTranslatesAutoresizingMaskIntoConstraints:(BOOL)a3;
- (void)setTranslucent:(BOOL)translucent;
- (void)setUnselectedItemTintColor:(UIColor *)unselectedItemTintColor;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateProperties;
@end

@implementation UITabBar

- (void)_doCommonTabBarPreInit
{
  v3 = dyld_program_sdk_at_least();
  self->_displayStyle = 0;
  if (v3)
  {
    v4 = [MEMORY[0x1E695E000] standardUserDefaults];
    v5 = [v4 BOOLForKey:@"UseTabBarLegacyTVStyle"];

    if (v5)
    {
      self->_displayStyle = 0;
    }
  }

  v6 = [objc_opt_class() _visualProviderForTabBar:self];
  visualProvider = self->_visualProvider;
  self->_visualProvider = v6;
}

- (BOOL)_subclassImplementsDrawRect
{
  if (!__drawRectUITabBarIMP)
  {
    __drawRectUITabBarIMP = [UITabBar instanceMethodForSelector:sel_drawRect_];
  }

  v3 = [(UITabBar *)self methodForSelector:sel_drawRect_];
  if (v3)
  {
    v4 = v3 == __drawRectUITabBarIMP;
  }

  else
  {
    v4 = 1;
  }

  return !v4;
}

- (void)_doCommonTabBarInit
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v4 = 0x20000;
  }

  else
  {
    v4 = 0;
  }

  self->_tabBarFlags = (*&self->_tabBarFlags & 0xFFFDFFFF | v4);

  if (self->_standardAppearance)
  {
    goto LABEL_7;
  }

  if (_UIBarAppearanceAPIVersion() >= 2)
  {
    [(UITabBar *)self _installDefaultAppearance];
LABEL_7:
    [(_UITabBarVisualProvider *)self->_visualProvider setUseModernAppearance:1];
  }

  if ((dyld_program_sdk_at_least() & 1) == 0)
  {
    v5 = [(UIView *)self _screen];
    v6 = [v5 _userInterfaceIdiom];

    if (v6 == 1)
    {
      self->_barMetrics = 2;
    }
  }

  v7 = [MEMORY[0x1E696AD88] defaultCenter];
  [v7 addObserver:self selector:sel__accessibilityButtonShapesEnabledDidChangeNotification_ name:@"UIAccessibilityButtonShapesEnabledStatusDidChangeNotification" object:0];

  [(UIView *)self _setSafeAreaCornerAdaptation:3];
  [(_UITabBarVisualProvider *)self->_visualProvider prepare];
  v8 = objc_opt_new();
  [(UIView *)self addLayoutGuide:v8];
  focusGuide = self->_focusGuide;
  self->_focusGuide = v8;
}

- (void)layoutSubviews
{
  [(_UITabBarVisualProvider *)self->_visualProvider layoutSubviews];
  v4.receiver = self;
  v4.super_class = UITabBar;
  [(UIView *)&v4 layoutSubviews];
  focusGuide = self->_focusGuide;
  [(UIView *)self bounds];
  [(UILayoutGuide *)focusGuide _setManualLayoutFrame:?];
}

- (BOOL)isTranslucent
{
  v8 = 1;
  v2 = (*&self->_tabBarFlags >> 7) & 7;
  if (v2)
  {
    return v2 == 1;
  }

  else if ([(UIView *)self _currentUserInterfaceIdiom]== 3)
  {
    return 1;
  }

  else
  {
    v5 = [(_UITabBarAppearanceStorage *)self->_appearanceStorage backgroundImage];
    v6 = v5;
    if (v5)
    {
      [v5 _isInvisibleAndGetIsTranslucent:&v8];
    }

    return v8;
  }
}

- (void)_installDefaultAppearance
{
  if (!self->_standardAppearance)
  {
    v3 = objc_opt_new();
    standardAppearance = self->_standardAppearance;
    self->_standardAppearance = v3;

    v5 = [(_UITabBarVisualProvider *)self->_visualProvider appearanceObserver];
    v6 = self->_standardAppearance;
    if (v6)
    {
      v7 = v5;
      objc_storeWeak(&v6->super._changeObserver, v5);
      v5 = v7;
    }
  }
}

- (id)_glassGroupContainer
{
  if (WeakRetained)
  {
    WeakRetained = objc_loadWeakRetained(WeakRetained + 75);
    v1 = vars8;
  }

  return WeakRetained;
}

- (int64_t)_effectiveBarOrientation
{
  if (self->_barOrientation)
  {
    return self->_barOrientation;
  }

  else
  {
    return 4;
  }
}

- (UIView)_externalViewForSafeAreaInsets
{
  v3 = [(UITabBar *)self _expectedSuperviewFollowingAnimation];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(UIView *)self superview];
  }

  v6 = v5;

  return v6;
}

- (unint64_t)_edgesPropagatingSafeAreaInsetsToSubviews
{
  v3.receiver = self;
  v3.super_class = UITabBar;
  return [(UIView *)&v3 _edgesPropagatingSafeAreaInsetsToSubviews];
}

- (uint64_t)_minimizeBehavior
{
  if (result)
  {
    return *(result + 584);
  }

  return result;
}

- (UITabBarItem)selectedItem
{
  WeakRetained = objc_loadWeakRetained(&self->_selectedItem);

  return WeakRetained;
}

- (UITabBarAppearance)standardAppearance
{
  standardAppearance = self->_standardAppearance;
  if (!standardAppearance)
  {
    [(UITabBar *)self _installDefaultAppearance];
    standardAppearance = self->_standardAppearance;
  }

  return standardAppearance;
}

- (id)_normalInheritedTintColor
{
  v3 = [(_UITabBarVisualProvider *)self->_visualProvider defaultTintColor];
  if ([(UIView *)self _definesTintColor]|| !v3)
  {
    v7.receiver = self;
    v7.super_class = UITabBar;
    v4 = [(UIView *)&v7 _normalInheritedTintColor];
  }

  else
  {
    v4 = v3;
  }

  v5 = v4;

  return v5;
}

- (id)_effectiveUnselectedLabelTintColor
{
  v2 = [(UITabBar *)self unselectedItemTintColor];
  if (!v2)
  {
    if (_UISolariumEnabled())
    {
      if (+[_UITraitMonochromaticTreatment _glassMonochromaticTreatment])
      {
        +[UIColor labelColor];
      }

      else
      {
        +[UIColor secondaryLabelColor];
      }
      v2 = ;
    }

    else
    {
      v2 = [UIColor colorWithWhite:0.57254902 alpha:1.0];
    }
  }

  return v2;
}

- (id)_effectiveUnselectedTintColor
{
  v2 = [(UITabBar *)self unselectedItemTintColor];
  if (!v2)
  {
    v2 = [UIColor colorWithWhite:0.57254902 alpha:0.85];
  }

  return v2;
}

- (id)_hostedElementsLayoutHandler
{
  if (a1)
  {
    a1 = [a1[59] hostedElementsLayoutHandler];
    v1 = vars8;
  }

  return a1;
}

- (BOOL)_isPhotosApp
{
  if (qword_1ED49B0E8 != -1)
  {
    dispatch_once(&qword_1ED49B0E8, &__block_literal_global_352);
  }

  return _MergedGlobals_21_1;
}

void __24__UITabBar__isPhotosApp__block_invoke()
{
  v0 = _UIMainBundleIdentifier();
  _MergedGlobals_21_1 = [v0 isEqualToString:@"com.apple.mobileslideshow"];
}

- (BOOL)_isMinimized
{
  if ([(UITabBar *)self _isPhotosApp])
  {
    if (self)
    {
      return [(_UITabBarVisualProvider *)self->_visualProvider currentMorphTarget]== 2;
    }
  }

  else
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    [v5 handleFailureInMethod:a2 object:self file:@"UITabBar.m" lineNumber:2796 description:@"This can only be called by an approved app."];

    if (self)
    {
      return [(_UITabBarVisualProvider *)self->_visualProvider currentMorphTarget]== 2;
    }
  }

  return 0;
}

- (int64_t)_expectedInterfaceOrientation
{
  v3 = [(UIView *)self window];
  if (!v3)
  {
    if ((*(&self->_tabBarFlags + 2) & 2) != 0)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v4 = [WeakRetained _tabBarWindowForInterfaceOrientation:self];

      if (v4)
      {
        goto LABEL_3;
      }
    }

    else
    {
      v4 = 0;
    }

    v6 = 1;
    goto LABEL_10;
  }

  v4 = v3;
LABEL_3:
  v5 = [v4 _windowInterfaceOrientation];
  if (!v5)
  {
    v5 = [UIApp _sceneInterfaceOrientationFromWindow:v4];
  }

  v6 = v5;
LABEL_10:

  return v6;
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (int64_t)_imageStyle
{
  if (self->_imageStyle)
  {
    return self->_imageStyle;
  }

  else
  {
    return 2;
  }
}

- (BOOL)_useVibrantItems
{
  if (!dyld_program_sdk_at_least() || ![(UITabBar *)self isTranslucent])
  {
    return 0;
  }

  v3 = [(UITabBar *)self barTintColor];
  v4 = [(UITabBar *)self unselectedItemTintColor];
  if (v3 && ([v3 alphaComponent], v5 != 0.0) || v4 && (objc_msgSend(v4, "alphaComponent"), v6 != 0.0))
  {
    v8 = 0;
  }

  else
  {
    v7 = [(UIView *)self traitCollection];
    v8 = [v7 userInterfaceIdiom] != 3;
  }

  return v8;
}

- (void)dealloc
{
  [(_UITabBarVisualProvider *)self->_visualProvider teardown];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:@"UIAccessibilityButtonShapesEnabledStatusDidChangeNotification" object:0];

  v4.receiver = self;
  v4.super_class = UITabBar;
  [(UIView *)&v4 dealloc];
}

- (NSString)description
{
  v6.receiver = self;
  v6.super_class = UITabBar;
  v3 = [(UIView *)&v6 description];
  v4 = [v3 mutableCopy];

  if (self->_standardAppearance)
  {
    [v4 appendFormat:@" standardAppearance=%p", self->_standardAppearance];
  }

  if (self->_scrollEdgeAppearance)
  {
    [v4 appendFormat:@" scrollEdgeAppearance=%p", self->_scrollEdgeAppearance];
  }

  return v4;
}

- (void)_setLabelFont:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  appearanceStorage = self->_appearanceStorage;
  if (!appearanceStorage)
  {
    v6 = objc_alloc_init(_UITabBarAppearanceStorage);
    v7 = self->_appearanceStorage;
    self->_appearanceStorage = v6;

    appearanceStorage = self->_appearanceStorage;
  }

  v8 = [(_UITabBarAppearanceStorage *)appearanceStorage tabItemAppearanceStorage];
  v9 = *off_1E70EC918;
  [v8 setTextAttribute:v4 forKey:*off_1E70EC918 state:0];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = self->_items;
  v11 = [(NSArray *)v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      v14 = 0;
      do
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [*(*(&v15 + 1) + 8 * v14++) _setTitleTextAttributeValue:v4 forAttributeKey:v9 state:{0, v15}];
      }

      while (v12 != v14);
      v12 = [(NSArray *)v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v12);
  }
}

- (void)_setLabelTextColor:(id)a3 selectedTextColor:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  appearanceStorage = self->_appearanceStorage;
  if (!appearanceStorage)
  {
    v9 = objc_alloc_init(_UITabBarAppearanceStorage);
    v10 = self->_appearanceStorage;
    self->_appearanceStorage = v9;

    appearanceStorage = self->_appearanceStorage;
  }

  v11 = [(_UITabBarAppearanceStorage *)appearanceStorage tabItemAppearanceStorage];
  v12 = *off_1E70EC920;
  [v11 setTextAttribute:v6 forKey:*off_1E70EC920 state:0];
  [v11 setTextAttribute:v7 forKey:v12 state:4];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v13 = self->_items;
  v14 = [(NSArray *)v13 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v20;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v20 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v19 + 1) + 8 * i);
        [v18 _setTitleTextAttributeValue:v6 forAttributeKey:v12 state:{0, v19}];
        [v18 _setTitleTextAttributeValue:v7 forAttributeKey:v12 state:4];
      }

      v15 = [(NSArray *)v13 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v15);
  }
}

- (void)_setLabelShadowColor:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  appearanceStorage = self->_appearanceStorage;
  if (!appearanceStorage)
  {
    v6 = objc_alloc_init(_UITabBarAppearanceStorage);
    v7 = self->_appearanceStorage;
    self->_appearanceStorage = v6;

    appearanceStorage = self->_appearanceStorage;
  }

  v8 = [(_UITabBarAppearanceStorage *)appearanceStorage tabItemAppearanceStorage];
  v9 = *off_1E70EC9B0;
  v10 = [v8 textAttributeForKey:*off_1E70EC9B0 state:0];

  if (!v10)
  {
    v10 = objc_alloc_init(off_1E70ECB90);
  }

  [v10 setShadowColor:v4];
  v11 = [(_UITabBarAppearanceStorage *)self->_appearanceStorage tabItemAppearanceStorage];
  [v11 setTextAttribute:v10 forKey:v9 state:0];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v12 = self->_items;
  v13 = [(NSArray *)v12 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v18;
    do
    {
      v16 = 0;
      do
      {
        if (*v18 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [*(*(&v17 + 1) + 8 * v16++) _setTitleTextAttributeValue:v10 forAttributeKey:v9 state:{0, v17}];
      }

      while (v14 != v16);
      v14 = [(NSArray *)v12 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v14);
  }
}

- (void)_setLabelShadowOffset:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v23 = *MEMORY[0x1E69E9840];
  appearanceStorage = self->_appearanceStorage;
  if (!appearanceStorage)
  {
    v7 = objc_alloc_init(_UITabBarAppearanceStorage);
    v8 = self->_appearanceStorage;
    self->_appearanceStorage = v7;

    appearanceStorage = self->_appearanceStorage;
  }

  v9 = [(_UITabBarAppearanceStorage *)appearanceStorage tabItemAppearanceStorage];
  v10 = *off_1E70EC9B0;
  v11 = [v9 textAttributeForKey:*off_1E70EC9B0 state:0];

  if (!v11)
  {
    v11 = objc_alloc_init(off_1E70ECB90);
  }

  [v11 setShadowOffset:{width, height}];
  v12 = [(_UITabBarAppearanceStorage *)self->_appearanceStorage tabItemAppearanceStorage];
  [v12 setTextAttribute:v11 forKey:v10 state:0];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v13 = self->_items;
  v14 = [(NSArray *)v13 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v19;
    do
    {
      v17 = 0;
      do
      {
        if (*v19 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [*(*(&v18 + 1) + 8 * v17++) _setTitleTextAttributeValue:v11 forAttributeKey:v10 state:{0, v18}];
      }

      while (v15 != v17);
      v15 = [(NSArray *)v13 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v15);
  }
}

- (void)_setVibrantLabels:(BOOL)a3
{
  if (((((*&self->_tabBarFlags & 0x2000) == 0) ^ a3) & 1) == 0)
  {
    if (a3)
    {
      v3 = 0x2000;
    }

    else
    {
      v3 = 0;
    }

    self->_tabBarFlags = (*&self->_tabBarFlags & 0xFFFFDFFF | v3);
  }
}

- (void)_setDisableBlurTinting:(BOOL)a3
{
  if (((((*&self->_tabBarFlags & 0x4000) == 0) ^ a3) & 1) == 0)
  {
    if (a3)
    {
      v3 = 0x4000;
    }

    else
    {
      v3 = 0;
    }

    self->_tabBarFlags = (*&self->_tabBarFlags & 0xFFFFBFFF | v3);
    [(UITabBar *)self _setBackgroundNeedsUpdate:1];
  }
}

- (void)_setHidesShadow:(BOOL)a3
{
  self->_hidesShadow = a3;
  v4 = [(_UITabBarVisualProvider *)self->_visualProvider _shim_shadowView];
  [v4 setHidden:self->_hidesShadow];
}

- (double)_shadowAlpha
{
  v2 = [(_UITabBarVisualProvider *)self->_visualProvider _shim_shadowView];
  [v2 alpha];
  v4 = v3;

  return v4;
}

- (void)_setShadowAlpha:(double)a3
{
  v4 = [(_UITabBarVisualProvider *)self->_visualProvider _shim_shadowView];
  [v4 setAlpha:a3];
}

- (void)_setSuspendBackgroundUpdates:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x40000;
  }

  else
  {
    v3 = 0;
  }

  self->_tabBarFlags = (*&self->_tabBarFlags & 0xFFFBFFFF | v3);
  if (!a3)
  {
    [(UIView *)self setNeedsLayout];
  }
}

- (void)_setBackgroundNeedsUpdate:(BOOL)a3
{
  tabBarFlags = self->_tabBarFlags;
  if ((*&tabBarFlags & 0x40000) == 0)
  {
    if (a3)
    {
      v4 = 1024;
    }

    else
    {
      v4 = 0;
    }

    self->_tabBarFlags = (*&tabBarFlags & 0xFFFBFBFF | v4);
    if (a3)
    {
      [(UIView *)self setNeedsLayout];
    }
  }
}

- (void)setTranslucent:(BOOL)translucent
{
  tabBarFlags = self->_tabBarFlags;
  if (translucent)
  {
    v4 = 128;
  }

  else
  {
    v4 = 256;
  }

  self->_tabBarFlags = (*&tabBarFlags & 0xFFFFFC7F | v4);
  if (((*&tabBarFlags >> 7) & 7) != v4 >> 7)
  {
    [(UITabBar *)self _setBackgroundNeedsUpdate:1];
  }
}

- (void)setBarStyle:(UIBarStyle)barStyle
{
  if (barStyle >= UIBarStyleBlackTranslucent)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Bar style not supported by UITabBar. Supported bar styles are UIBarStyleDefault and UIBarStyleBlack"];
  }

  tabBarFlags = self->_tabBarFlags;
  if (((tabBarFlags >> 4) & 7) != barStyle)
  {
    self->_tabBarFlags = (tabBarFlags & 0xFFFFFF8F | (16 * (barStyle & 7)));

    [(UITabBar *)self _setBackgroundNeedsUpdate:1];
  }
}

- (void)_setTabBarSizing:(int64_t)a3
{
  v5 = [(UIView *)self _screen];
  v6 = [v5 _userInterfaceIdiom];

  self->_tabBarSizing = a3;
  barMetrics = self->_barMetrics;
  if (a3 == 2)
  {
    v8 = 2;
  }

  else if ((v6 - 2) > 6)
  {
    v8 = 0;
  }

  else
  {
    v8 = qword_18A678940[v6 - 2];
  }

  self->_barMetrics = v8;
  if (barMetrics != v8)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained tabBarSizingDidChange:self];
    }
  }
}

- (id)_effectiveUnselectedTabTintColorConsideringView:(id)a3
{
  v4 = a3;
  v5 = [(_UITabBarAppearanceStorage *)self->_appearanceStorage unselectedImageTintColor];
  if (!v5)
  {
    v5 = [UITabBar _unselectedTabTintColorForView:v4];
  }

  return v5;
}

- (NSString)_backdropViewLayerGroupName
{
  v2 = [(UIView *)self traitCollection];
  v3 = objc_opt_self();
  v4 = [v2 objectForTrait:v3];

  return v4;
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

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  v5 = obj;
  if (WeakRetained != obj)
  {
    if ([(UITabBar *)self isLocked])
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"Changing the delegate of a tab bar managed by a tab bar controller is not allowed."];
    }

    else
    {
      v6 = objc_storeWeak(&self->_delegate, obj);
      if (objc_opt_respondsToSelector())
      {
        v7 = 0x20000;
      }

      else
      {
        v7 = 0;
      }

      self->_tabBarFlags = (*&self->_tabBarFlags & 0xFFFDFFFF | v7);
    }

    v5 = obj;
  }
}

+ (void)_initializeForIdiom:(int64_t)a3
{
  v40[1] = *MEMORY[0x1E69E9840];
  if (a3 == 2 || a3 == 8)
  {
    if (objc_opt_class() != a1)
    {
      return;
    }

    v28 = _UIAppearanceContainerForUserInterfaceIdiom();
    v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v28 count:1];
    v4 = [(UIView *)UITabBar appearanceWhenContainedInInstancesOfClasses:v3];
    [v4 _setBarMetrics:3];
    [v4 _setScrollsItems:1];
    [v4 setItemPositioning:2];
    [v4 setItemSpacing:70.0];
    goto LABEL_10;
  }

  if (a3 == 3 && objc_opt_class() == a1)
  {
    v40[0] = _UIAppearanceContainerForUserInterfaceIdiom();
    v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:1];
    v4 = [(UIView *)UITabBar appearanceWhenContainedInInstancesOfClasses:v3];
    v5 = objc_alloc_init(UIImage);
    [v4 setBackgroundImage:v5];

    if ((_UISolariumEnabled() & 1) == 0)
    {
      v6 = +[UIColor _externalBarBackgroundColor];
      v7 = [v6 colorWithAlphaComponent:0.8];
      [v4 setBackgroundColor:v7];

      v8 = [UIColorEffect colorEffectSaturate:1.5];
      v9 = [UIBlurEffect effectWithBlurRadius:10.0];
      v39[0] = v8;
      v39[1] = v9;
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:2];
      [v4 setBackgroundEffects:v10];
    }

    [v4 _setBarMetrics:1];
    [v4 _setImageStyle:1];
    [v4 _setShowsHighlightedState:1];
    v11 = [(UIView *)UITabBarButton appearanceWhenContainedInInstancesOfClasses:v3];
    v12 = +[UIColor _carSystemSecondaryColor];
    [v11 _setContentTintColor:v12 forState:0];

    v13 = +[UIColor _carSystemFocusSecondaryColor];
    [v11 _setContentTintColor:v13 forState:1];

    v14 = +[UIColor _carSystemFocusSecondaryColor];
    [v11 _setContentTintColor:v14 forState:8];

    v15 = +[UIColor _carSystemFocusLabelColor];
    [v11 _setContentTintColor:v15 forState:5];

    v16 = [(UIBarItem *)UITabBarItem appearanceWhenContainedInInstancesOfClasses:v3];
    v37 = *off_1E70EC920;
    v17 = v37;
    v18 = +[UIColor _carSystemSecondaryColor];
    v38 = v18;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
    [v16 setTitleTextAttributes:v19 forState:0];

    v35 = v17;
    v20 = +[UIColor _carSystemFocusColor];
    v36 = v20;
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
    [v16 setTitleTextAttributes:v21 forState:4];

    v33 = v17;
    v22 = +[UIColor _carSystemFocusSecondaryColor];
    v34 = v22;
    v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
    [v16 setTitleTextAttributes:v23 forState:8];

    v31 = v17;
    v24 = +[UIColor _carSystemFocusSecondaryColor];
    v32 = v24;
    v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
    [v16 setTitleTextAttributes:v25 forState:1];

    v29 = v17;
    v26 = +[UIColor _carSystemFocusLabelColor];
    v30 = v26;
    v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
    [v16 setTitleTextAttributes:v27 forState:5];

LABEL_10:
  }
}

+ (Class)_visualProviderClassForTabBar:(id)a3
{
  v3 = [a3 traitCollection];
  v4 = [v3 userInterfaceIdiom];

  if (_UISolariumEnabled())
  {
    v5 = [_UITabBarVisualProviderFactory visualProviderClassForIdiom:v4];
  }

  else
  {
    v5 = objc_opt_class();
  }

  return v5;
}

+ (id)_visualProviderForTabBar:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_msgSend(a1 _visualProviderClassForTabBar:{v4)), "initWithTabBar:", v4}];

  return v5;
}

- (UITabBar)initWithCoder:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = UITabBar;
  v5 = [(UIView *)&v25 initWithCoder:v4];
  v6 = v5;
  if (v5)
  {
    [(UITabBar *)v5 _doCommonTabBarPreInit];
    v7 = [v4 decodeObjectForKey:@"UIDelegate"];
    objc_storeWeak(&v6->_delegate, v7);

    v8 = [(UITabBar *)v6 isLocked];
    [(UITabBar *)v6 setLocked:0];
    [(UIView *)v6 setClipsToBounds:0];
    v9 = [v4 decodeObjectForKey:@"UISelectionIndicatorImage"];
    [(UITabBar *)v6 setSelectionIndicatorImage:v9];

    if ([v4 containsValueForKey:@"UISpringLoaded"])
    {
      if ([v4 decodeBoolForKey:@"UISpringLoaded"])
      {
        v10 = 0x10000;
      }

      else
      {
        v10 = 0;
      }

      v6->_tabBarFlags = (*&v6->_tabBarFlags & 0xFFFEFFFF | v10);
    }

    v11 = [v4 decodeObjectForKey:@"UIItems"];
    if (v11)
    {
      if (v8)
      {
        objc_storeStrong(&v6->_items, v11);
      }

      else
      {
        [(UITabBar *)v6 setItems:v11 animated:0];
      }
    }

    v12 = [v4 decodeObjectForKey:@"UISelectedItem"];
    [(UITabBar *)v6 setSelectedItem:v12];
    [(UITabBar *)v6 setLocked:v8];
    v13 = [v4 decodeObjectForKey:@"UIBarTintColor"];
    [(UITabBar *)v6 setBarTintColor:v13];

    v14 = [v4 decodeObjectForKey:@"UIBarUnselectedImageTintColor"];
    [(UITabBar *)v6 setUnselectedItemTintColor:v14];

    v15 = [v4 decodeObjectForKey:@"UISelectedImageTintColor"];
    if (v15)
    {
      [(UITabBar *)v6 setSelectedImageTintColor:v15];
    }

    v16 = [v4 decodeObjectForKey:@"UIShadowImage"];
    [(UITabBar *)v6 setShadowImage:v16];

    v17 = [v4 decodeObjectForKey:@"UIBackgroundImage"];
    if (v17)
    {
      [(UITabBar *)v6 setBackgroundImage:v17];
    }

    else
    {
      [(UITabBar *)v6 _setBackgroundNeedsUpdate:1];
    }

    v18 = [v4 decodeObjectForKey:@"UITabBarStandardAppearance"];
    standardAppearance = v6->_standardAppearance;
    v6->_standardAppearance = v18;

    v20 = [v4 decodeObjectForKey:@"UITabBarScrollEdgeAppearance"];
    scrollEdgeAppearance = v6->_scrollEdgeAppearance;
    v6->_scrollEdgeAppearance = v20;

    if ([v4 containsValueForKey:@"UITabBarItemPositioning"])
    {
      v6->_itemPositioning = [v4 decodeIntegerForKey:@"UITabBarItemPositioning"];
    }

    if ([v4 containsValueForKey:@"UITabBarItemWidth"])
    {
      [v4 decodeDoubleForKey:@"UITabBarItemWidth"];
      v6->_itemDimension = v22;
    }

    if ([v4 containsValueForKey:@"UITabBarItemSpacing"])
    {
      [v4 decodeDoubleForKey:@"UITabBarItemSpacing"];
      v6->_itemSpacing = v23;
    }

    if ([v4 containsValueForKey:@"UIBarTranslucence"])
    {
      v6->_tabBarFlags = (*&v6->_tabBarFlags & 0xFFFFFC7F | (([v4 decodeIntegerForKey:@"UIBarTranslucence"] & 7) << 7));
    }

    if ([v4 containsValueForKey:@"UIBarStyle"])
    {
      v6->_tabBarFlags = (*&v6->_tabBarFlags & 0xFFFFFF8F | (16 * ([v4 decodeIntegerForKey:@"UIBarStyle"] & 7)));
    }
  }

  [(UITabBar *)v6 _doCommonTabBarInit];

  return v6;
}

- (UITabBar)initWithFrame:(CGRect)a3
{
  v5.receiver = self;
  v5.super_class = UITabBar;
  v3 = [(UIView *)&v5 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(UITabBar *)v3 _doCommonTabBarPreInit];
  [(UITabBar *)v3 _setBackgroundNeedsUpdate:1];
  [(UITabBar *)v3 _doCommonTabBarInit];
  return v3;
}

- (BOOL)_shouldDecodeSubviews
{
  v2 = [objc_opt_class() _visualProviderClassForTabBar:self];

  return [v2 shouldDecodeSubviews];
}

- (void)_populateArchivedSubviews:(id)a3
{
  v5.receiver = self;
  v5.super_class = UITabBar;
  v4 = a3;
  [(UIView *)&v5 _populateArchivedSubviews:v4];
  [(_UITabBarVisualProvider *)self->_visualProvider updateArchivedSubviews:v4, v5.receiver, v5.super_class];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = UITabBar;
  [(UIView *)&v24 encodeWithCoder:v4];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    [v4 encodeConditionalObject:WeakRetained forKey:@"UIDelegate"];
  }

  items = self->_items;
  if (items)
  {
    [v4 encodeObject:items forKey:@"UIItems"];
  }

  v7 = objc_loadWeakRetained(&self->_selectedItem);

  if (v7)
  {
    v8 = objc_loadWeakRetained(&self->_selectedItem);
    [v4 encodeObject:v8 forKey:@"UISelectedItem"];
  }

  v9 = [(_UITabBarAppearanceStorage *)self->_appearanceStorage barTintColor];

  if (v9)
  {
    v10 = [(_UITabBarAppearanceStorage *)self->_appearanceStorage barTintColor];
    [v4 encodeObject:v10 forKey:@"UIBarTintColor"];
  }

  v11 = [(_UITabBarAppearanceStorage *)self->_appearanceStorage unselectedImageTintColor];

  if (v11)
  {
    v12 = [(_UITabBarAppearanceStorage *)self->_appearanceStorage unselectedImageTintColor];
    [v4 encodeObject:v12 forKey:@"UIBarUnselectedImageTintColor"];
  }

  v13 = [(_UITabBarAppearanceStorage *)self->_appearanceStorage selectedImageTintColor];

  if (v13)
  {
    v14 = [(_UITabBarAppearanceStorage *)self->_appearanceStorage selectedImageTintColor];
    [v4 encodeObject:v14 forKey:@"UISelectedImageTintColor"];
  }

  v15 = [(_UITabBarAppearanceStorage *)self->_appearanceStorage selectionIndicatorImage];
  if (v15)
  {
    [v4 encodeObject:v15 forKey:@"UISelectionIndicatorImage"];
  }

  v16 = [(_UITabBarAppearanceStorage *)self->_appearanceStorage shadowImage];

  if (v16)
  {
    [v4 encodeObject:v16 forKey:@"UIShadowImage"];
  }

  v17 = [(_UITabBarAppearanceStorage *)self->_appearanceStorage backgroundImage];

  if (v17)
  {
    [v4 encodeObject:v17 forKey:@"UIBackgroundImage"];
  }

  itemPositioning = self->_itemPositioning;
  if (itemPositioning)
  {
    [v4 encodeInteger:itemPositioning forKey:@"UITabBarItemPositioning"];
  }

  if (self->_itemDimension > 0.0)
  {
    [v4 encodeDouble:@"UITabBarItemWidth" forKey:?];
  }

  if (self->_itemSpacing > 0.0)
  {
    [v4 encodeDouble:@"UITabBarItemSpacing" forKey:?];
  }

  tabBarFlags = self->_tabBarFlags;
  v20 = (tabBarFlags >> 7) & 7;
  if (v20)
  {
    [v4 encodeInteger:v20 forKey:@"UIBarTranslucence"];
    LODWORD(tabBarFlags) = self->_tabBarFlags;
  }

  v21 = (tabBarFlags >> 4) & 7;
  if (v21)
  {
    [v4 encodeInteger:v21 forKey:@"UIBarStyle"];
    LODWORD(tabBarFlags) = self->_tabBarFlags;
  }

  if ((tabBarFlags & 0x10000) != 0)
  {
    [v4 encodeBool:1 forKey:@"UISpringLoaded"];
  }

  if ([(_UITabBarVisualProvider *)self->_visualProvider useModernAppearance])
  {
    standardAppearance = self->_standardAppearance;
    if (standardAppearance)
    {
      [v4 encodeObject:standardAppearance forKey:@"UITabBarStandardAppearance"];
    }

    scrollEdgeAppearance = self->_scrollEdgeAppearance;
    if (scrollEdgeAppearance)
    {
      [v4 encodeObject:scrollEdgeAppearance forKey:@"UITabBarScrollEdgeAppearance"];
    }
  }
}

- (void)setLocked:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  self->_tabBarFlags = (*&self->_tabBarFlags & 0xFFFFFFF7 | v3);
}

- (void)_accessibilityButtonShapesParametersDidChange
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [(UITabBar *)self items];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [(UITabBarItem *)*(*(&v8 + 1) + 8 * i) _tabBarButton];
        if ([v7 _isSelected])
        {
          [v7 _showSelectedIndicator:1 changeSelection:0];

          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

- (void)setSelectedItem:(UITabBarItem *)selectedItem
{
  obj = selectedItem;
  if ([(UITabBar *)self isLocked])
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"Directly modifying a tab bar managed by a tab bar controller is not allowed."];
    goto LABEL_10;
  }

  WeakRetained = objc_loadWeakRetained(&self->_selectedItem);
  v5 = WeakRetained;
  if (obj)
  {
    if ([(NSArray *)self->_items containsObject:obj])
    {
      v6 = v5 == obj;
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      goto LABEL_9;
    }
  }

  else if (!WeakRetained)
  {
    goto LABEL_9;
  }

  objc_storeWeak(&self->_selectedItem, obj);
  [(_UITabBarVisualProvider *)self->_visualProvider changeSelectedItem:obj fromItem:v5];
LABEL_9:

LABEL_10:
}

- (void)_didSelectButtonForItem:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_items;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        if (v10 == v4)
        {
          WeakRetained = objc_loadWeakRetained(&self->_delegate);
          if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
          {
            [WeakRetained tabBar:self didSelectItem:{v10, v12}];
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [WeakRetained _tabBarDidChangeSelectionToItem:v4];
          }

          else
          {
            [(UITabBar *)self setSelectedItem:v10];
          }

          goto LABEL_17;
        }
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_17:
}

- (void)_sendAction:(id)a3 withEvent:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = self->_items;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        v14 = [(UITabBarItem *)v13 _tabBarButton];

        if (v14 == v6)
        {
          WeakRetained = objc_loadWeakRetained(&self->_delegate);
          if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
          {
            [WeakRetained tabBar:self didSelectItem:{v13, v19}];
          }

          if ([v13 action])
          {
            v16 = UIApp;
            v17 = [v13 action];
            v18 = [v13 target];
            [v16 sendAction:v17 toTarget:v18 fromSender:v13 forEvent:v7];
          }

          goto LABEL_16;
        }
      }

      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_16:
}

- (void)setItems:(NSArray *)items animated:(BOOL)animated
{
  v4 = animated;
  v47 = *MEMORY[0x1E69E9840];
  v6 = items;
  if ([(UITabBar *)self isLocked])
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"Directly modifying a tab bar managed by a tab bar controller is not allowed."];
  }

  else if (self->_items != v6)
  {
    v7 = [(_UITabBarAppearanceStorage *)self->_appearanceStorage _tabItemAppearanceStorage];
    v8 = v7;
    if (v7)
    {
      v43[0] = MEMORY[0x1E69E9820];
      v43[1] = 3221225472;
      v43[2] = __30__UITabBar_setItems_animated___block_invoke;
      v43[3] = &unk_1E70F8CE8;
      v44 = v7;
      [(NSArray *)v6 enumerateObjectsUsingBlock:v43];
    }

    v34 = v4;
    v33 = v8;
    WeakRetained = objc_loadWeakRetained(&self->_selectedItem);
    if ([(NSArray *)v6 containsObject:WeakRetained])
    {
      v9 = objc_loadWeakRetained(&self->_selectedItem);
      objc_storeWeak(&self->_selectedItem, v9);
    }

    else
    {
      objc_storeWeak(&self->_selectedItem, 0);
    }

    v31 = [(NSArray *)self->_items mutableCopy];
    [v31 removeObjectsInArray:v6];
    v10 = [(NSArray *)v6 copy];
    v11 = self->_items;
    self->_items = v10;

    [(UITabBar *)self _setSpringLoaded:HIWORD(*&self->_tabBarFlags) & 1 force:0];
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v12 = self->_items;
    v13 = [(NSArray *)v12 countByEnumeratingWithState:&v39 objects:v46 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v40;
      while (2)
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v40 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v39 + 1) + 8 * i);
          v18 = [(UIView *)self traitCollection];
          v19 = [v18 userInterfaceIdiom];

          if (v19 == 6 && v17)
          {
            objc_storeWeak(v17 + 35, self);
          }

          if ([v17 _usesModernAppearance])
          {
            [(UITabBar *)self _useModernAppearance];
            goto LABEL_22;
          }
        }

        v14 = [(NSArray *)v12 countByEnumeratingWithState:&v39 objects:v46 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }
    }

LABEL_22:

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v20 = v31;
    v21 = [v20 countByEnumeratingWithState:&v35 objects:v45 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v36;
      do
      {
        for (j = 0; j != v22; ++j)
        {
          if (*v36 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v35 + 1) + 8 * j);
          v26 = [(UIView *)self traitCollection];
          v27 = [v26 userInterfaceIdiom];

          if (v27 == 6 && v25)
          {
            objc_storeWeak((v25 + 280), 0);
          }
        }

        v22 = [v20 countByEnumeratingWithState:&v35 objects:v45 count:16];
      }

      while (v22);
    }

    visualProvider = self->_visualProvider;
    v29 = self->_items;
    v30 = objc_loadWeakRetained(&self->_selectedItem);
    [(_UITabBarVisualProvider *)visualProvider changeItemsTo:v29 removingItems:v20 selectedItem:v30 oldSelectedItem:WeakRetained animate:v34];
  }
}

void __30__UITabBar_setItems_animated___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 textAttributesForState:0];
  [v4 setTitleTextAttributes:v5 forState:0];

  v6 = [*(a1 + 32) textAttributesForState:4];
  [v4 setTitleTextAttributes:v6 forState:4];
}

- (void)setTranslatesAutoresizingMaskIntoConstraints:(BOOL)a3
{
  v3 = a3;
  if ([(UITabBar *)self isLocked])
  {
    v5 = MEMORY[0x1E695DF30];
    v6 = *MEMORY[0x1E695D930];

    [v5 raise:v6 format:@"Cannot choose layout method for UITabBar managed by a controller"];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = UITabBar;
    [(UIView *)&v7 setTranslatesAutoresizingMaskIntoConstraints:v3];
  }
}

- (void)addConstraint:(id)a3
{
  v4 = a3;
  if ([(UITabBar *)self isLocked])
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"Cannot modify constraints for UITabBar managed by a controller"];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = UITabBar;
    [(UIView *)&v5 addConstraint:v4];
  }
}

- (void)removeConstraint:(id)a3
{
  v4 = a3;
  if ([(UITabBar *)self isLocked])
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"Cannot modify constraints for UITabBar managed by a controller"];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = UITabBar;
    [(UIView *)&v5 removeConstraint:v4];
  }
}

- (void)_setBarOrientation:(int64_t)a3
{
  if ((a3 - 1) >= 4)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[UITabBar _setBarOrientation:]"];
    [v5 handleFailureInFunction:v6 file:@"UITabBar.m" lineNumber:1675 description:{@"Invalid parameter not satisfying: %@", @"UIDeviceOrientationIsValidInterfaceOrientation(orientation)"}];
  }

  v7 = [(UITabBar *)self _effectiveBarOrientation];
  self->_barOrientation = a3;
  if (v7 != [(UITabBar *)self _effectiveBarOrientation])
  {

    [(UIView *)self setNeedsLayout];
  }
}

- (CGSize)_intrinsicSizeWithinSize:(CGSize)a3
{
  [(_UITabBarVisualProvider *)self->_visualProvider intrinsicContentSizeGivenSize:a3.width, a3.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(UITabBar *)self _intrinsicSizeWithinSize:a3.width, a3.height];
  v5 = v4;
  v7 = v6;
  v8 = [(UIView *)self superview];
  if (v8)
  {
    [(UIView *)self superview];
  }

  else
  {
    [(UIView *)self _screen];
  }
  v9 = ;
  [v9 bounds];
  v11 = v10;
  v13 = v12;

  v14 = [(UITabBar *)self _effectiveBarOrientation];
  if ((v14 - 1) >= 2)
  {
    v15 = v7;
  }

  else
  {
    v15 = v13;
  }

  if ((v14 - 1) >= 2)
  {
    v16 = v11;
  }

  else
  {
    v16 = v5;
  }

  result.height = v15;
  result.width = v16;
  return result;
}

- (void)updateProperties
{
  v3.receiver = self;
  v3.super_class = UITabBar;
  [(UIView *)&v3 updateProperties];
  [(_UITabBarVisualProvider *)self->_visualProvider updateProperties];
}

- (void)traitCollectionDidChange:(id)a3
{
  v5.receiver = self;
  v5.super_class = UITabBar;
  v4 = a3;
  [(UIView *)&v5 traitCollectionDidChange:v4];
  [(_UITabBarVisualProvider *)self->_visualProvider traitCollectionDidChange:v4, v5.receiver, v5.super_class];
}

- (id)_traitCollectionForChildEnvironment:(id)a3
{
  v8.receiver = self;
  v8.super_class = UITabBar;
  v4 = a3;
  v5 = [(UIView *)&v8 _traitCollectionForChildEnvironment:v4];
  v6 = [(_UITabBarVisualProvider *)self->_visualProvider traitCollectionForChild:v4 baseTraitCollection:v5, v8.receiver, v8.super_class];

  return v6;
}

- (void)setSemanticContentAttribute:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = UITabBar;
  [(UIView *)&v5 setSemanticContentAttribute:?];
  [(_UITabBarVisualProvider *)self->_visualProvider setSemanticContentAttribute:a3];
}

- (void)beginCustomizingItems:(NSArray *)items
{
  v8 = items;
  if ([(UITabBar *)self isLocked])
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"Directly modifying a tab bar managed by a tab bar controller is not allowed."];
  }

  else if (!self->_customizeView)
  {
    v4 = [(NSArray *)v8 copy];
    customizationItems = self->_customizationItems;
    self->_customizationItems = v4;

    [(UITabBar *)self _customizeWithAvailableItems:self->_customizationItems];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v7 = [(UITabBar *)self items];
      [WeakRetained tabBar:self willBeginCustomizingItems:v7];
    }

    [(_UITabBarVisualProvider *)self->_visualProvider willBeginCustomizingItems];
  }
}

- (BOOL)endCustomizingAnimated:(BOOL)animated
{
  v3 = animated;
  if ([(UITabBar *)self isLocked])
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"Directly modifying a tab bar managed by a tab bar controller is not allowed."];
    LOBYTE(v5) = 0;
  }

  else
  {
    [(UITabBar *)self _dismissCustomizeSheet:v3];
    return (*&self->_tabBarFlags >> 1) & 1;
  }

  return v5;
}

- (void)_didChangeFromIdiom:(int64_t)a3 onScreen:(id)a4 traverseHierarchy:(BOOL)a5
{
  v19.receiver = self;
  v19.super_class = UITabBar;
  [(UIView *)&v19 _didChangeFromIdiom:a3 onScreen:a4 traverseHierarchy:a5];
  if (dyld_program_sdk_at_least())
  {
    [(UIView *)self frame];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    [(UITabBar *)self sizeThatFits:v11, v13];
    if (v15 != v14)
    {
      [(UITabBar *)self setFrame:v8, v10, v12, v15];
      v16 = [(UIView *)self superview];
      [v16 setNeedsLayout];
    }

    v17 = [(UIView *)self _screen];
    v18 = [v17 _userInterfaceIdiom];

    if (v18 != a3 && (a3 == 3 || v18 == 3))
    {
      [(UITabBar *)self _accessibilityButtonShapesParametersDidChange];
    }
  }
}

- (void)_makeCurrentButtonFirstResponder
{
  v3 = [(UITabBar *)self selectedItem];
  v2 = [(UITabBarItem *)v3 _tabBarButton];
  [v2 becomeFirstResponder];
}

- (id)preferredFocusEnvironments
{
  v3 = [(_UITabBarVisualProvider *)self->_visualProvider preferredFocusEnvironments];
  if (!v3)
  {
    v4 = [(UITabBar *)self preferredFocusedView];
    v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:{v4, 0}];
  }

  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  v6 = v5;

  return v5;
}

- (void)_setSpringLoaded:(BOOL)a3 force:(BOOL)a4
{
  v4 = a3;
  v17 = *MEMORY[0x1E69E9840];
  if (a3 || a4)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = self->_items;
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v12 + 1) + 8 * i) setSpringLoaded:{v4, v12}];
        }

        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }
  }

  if (v4)
  {
    v11 = 0x10000;
  }

  else
  {
    v11 = 0;
  }

  self->_tabBarFlags = (*&self->_tabBarFlags & 0xFFFEFFFF | v11);
}

- (void)setStandardAppearance:(UITabBarAppearance *)standardAppearance
{
  v4 = standardAppearance;
  v5 = self->_standardAppearance;
  v6 = v4;
  v20 = v6;
  if (v5 == v6)
  {

    goto LABEL_21;
  }

  if (!v6 || !v5)
  {

LABEL_8:
    v5 = self->_standardAppearance;
    v8 = self->_standardAppearance;
    if (v8)
    {
      objc_storeWeak(&v8->super._changeObserver, 0);
    }

    v9 = [(UIBarAppearance *)v20 copy];
    v10 = self->_standardAppearance;
    self->_standardAppearance = v9;

    [(UITabBar *)self _installDefaultAppearance];
    v11 = [(_UITabBarVisualProvider *)self->_visualProvider appearanceObserver];
    v12 = self->_standardAppearance;
    if (v12)
    {
      objc_storeWeak(&v12->super._changeObserver, v11);
    }

    [(_UITabBarVisualProvider *)self->_visualProvider backgroundTransitionProgress];
    if (v13 >= 1.0)
    {
      goto LABEL_21;
    }

    v14 = [(UIBarAppearance *)self->_standardAppearance _backgroundData];
    v15 = [(UIBarAppearance *)v5 _backgroundData];
    v16 = v14;
    v17 = v15;
    v18 = v17;
    if (v16 == v17)
    {
    }

    else
    {
      if (v16 && v17)
      {
        v19 = [v16 isEqual:v17];

        if (v19)
        {
          goto LABEL_21;
        }
      }

      else
      {
      }

      [(UITabBar *)self _setBackgroundNeedsUpdate:1];
    }

LABEL_21:

    goto LABEL_22;
  }

  v7 = [(UIBarAppearance *)v5 isEqual:v6];

  if (!v7)
  {
    goto LABEL_8;
  }

LABEL_22:
  [(UITabBar *)self _useModernAppearance];
}

- (void)setScrollEdgeAppearance:(UITabBarAppearance *)scrollEdgeAppearance
{
  v4 = scrollEdgeAppearance;
  v5 = self->_scrollEdgeAppearance;
  v6 = v4;
  v20 = v6;
  if (v5 == v6)
  {

    goto LABEL_21;
  }

  if (!v6 || !v5)
  {

LABEL_8:
    v5 = self->_scrollEdgeAppearance;
    v8 = self->_scrollEdgeAppearance;
    if (v8)
    {
      objc_storeWeak(&v8->super._changeObserver, 0);
    }

    v9 = [(UIBarAppearance *)v20 copy];
    v10 = self->_scrollEdgeAppearance;
    self->_scrollEdgeAppearance = v9;

    [(UITabBar *)self _installDefaultAppearance];
    v11 = [(_UITabBarVisualProvider *)self->_visualProvider appearanceObserver];
    v12 = self->_scrollEdgeAppearance;
    if (v12)
    {
      objc_storeWeak(&v12->super._changeObserver, v11);
    }

    [(_UITabBarVisualProvider *)self->_visualProvider backgroundTransitionProgress];
    if (v13 <= 0.0)
    {
      goto LABEL_21;
    }

    v14 = [(UIBarAppearance *)self->_scrollEdgeAppearance _backgroundData];
    v15 = [(UIBarAppearance *)v5 _backgroundData];
    v16 = v14;
    v17 = v15;
    v18 = v17;
    if (v16 == v17)
    {
    }

    else
    {
      if (v16 && v17)
      {
        v19 = [v16 isEqual:v17];

        if (v19)
        {
          goto LABEL_21;
        }
      }

      else
      {
      }

      [(UITabBar *)self _setBackgroundNeedsUpdate:1];
    }

LABEL_21:

    goto LABEL_22;
  }

  v7 = [(UIBarAppearance *)v5 isEqual:v6];

  if (!v7)
  {
    goto LABEL_8;
  }

LABEL_22:
  [(UITabBar *)self _useModernAppearance];
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

      [(UITabBar *)self _setBackgroundNeedsUpdate:1];
      v4 = v9;
    }
  }
}

- (void)setBackgroundImage:(UIImage *)backgroundImage
{
  v4 = backgroundImage;
  appearanceStorage = self->_appearanceStorage;
  if (v4)
  {
    v6 = v4;
    v12 = v4;
    if (!appearanceStorage)
    {
      v7 = objc_alloc_init(_UITabBarAppearanceStorage);
      v8 = self->_appearanceStorage;
      self->_appearanceStorage = v7;

      v6 = v12;
    }

    if ([(UIImage *)v6 _isResizable]|| ([(UIImage *)v12 size], v9 <= 1.0))
    {
      v4 = v12;
    }

    else
    {
      v10 = [(UIImage *)v12 resizableImageWithCapInsets:0.0, 0.0, 0.0, 0.0];

      v4 = v10;
    }
  }

  else if (!appearanceStorage)
  {
    goto LABEL_11;
  }

  v13 = v4;
  v11 = [(_UITabBarAppearanceStorage *)self->_appearanceStorage backgroundImage];

  v4 = v13;
  if (v13 != v11)
  {
    [(_UITabBarAppearanceStorage *)self->_appearanceStorage setBackgroundImage:v13];
    [(UITabBar *)self _setBackgroundNeedsUpdate:1];
    v4 = v13;
  }

LABEL_11:
}

- (void)_setDisplayStyle:(int64_t)a3
{
  if (self->_displayStyle != a3)
  {
    [(_UITabBarVisualProvider *)self->_visualProvider teardown];
    visualProvider = self->_visualProvider;
    self->_visualProvider = 0;

    self->_displayStyle = a3;
    v6 = [UITabBar _visualProviderForTabBar:self];
    v7 = self->_visualProvider;
    self->_visualProvider = v6;

    v8 = self->_visualProvider;

    [(_UITabBarVisualProvider *)v8 prepare];
  }
}

- (void)setShadowImage:(UIImage *)shadowImage
{
  v4 = shadowImage;
  appearanceStorage = self->_appearanceStorage;
  if (v4)
  {
    v6 = v4;
    v12 = v4;
    if (!appearanceStorage)
    {
      v7 = objc_alloc_init(_UITabBarAppearanceStorage);
      v8 = self->_appearanceStorage;
      self->_appearanceStorage = v7;

      v6 = v12;
    }

    if ([(UIImage *)v6 _isResizable]|| ([(UIImage *)v12 size], v9 <= 1.0))
    {
      v4 = v12;
    }

    else
    {
      v10 = [(UIImage *)v12 resizableImageWithCapInsets:0.0, 0.0, 0.0, 0.0];

      v4 = v10;
    }
  }

  else if (!appearanceStorage)
  {
    goto LABEL_11;
  }

  v13 = v4;
  v11 = [(_UITabBarAppearanceStorage *)self->_appearanceStorage shadowImage];

  v4 = v13;
  if (v13 != v11)
  {
    [(_UITabBarAppearanceStorage *)self->_appearanceStorage setShadowImage:v13];
    [(UITabBar *)self _setBackgroundNeedsUpdate:1];
    v4 = v13;
  }

LABEL_11:
}

- (void)setSelectionIndicatorImage:(UIImage *)selectionIndicatorImage
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = selectionIndicatorImage;
  appearanceStorage = self->_appearanceStorage;
  if (v4)
  {
    if (!appearanceStorage)
    {
      v6 = objc_alloc_init(_UITabBarAppearanceStorage);
      v7 = self->_appearanceStorage;
      self->_appearanceStorage = v6;

      appearanceStorage = self->_appearanceStorage;
    }
  }

  else if (!appearanceStorage)
  {
    goto LABEL_16;
  }

  v8 = [(_UITabBarAppearanceStorage *)appearanceStorage selectionIndicatorImage];

  if (v8 != v4)
  {
    [(_UITabBarAppearanceStorage *)self->_appearanceStorage setSelectionIndicatorImage:v4];
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v9 = [(UIView *)self subviews];
    v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v16;
      do
      {
        v13 = 0;
        do
        {
          if (*v16 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v15 + 1) + 8 * v13);
          if (objc_opt_respondsToSelector())
          {
            [v14 _setCustomSelectedIndicatorImage:v4];
          }

          ++v13;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v11);
    }
  }

LABEL_16:
}

- (void)setTintColor:(UIColor *)tintColor
{
  v3.receiver = self;
  v3.super_class = UITabBar;
  [(UIView *)&v3 setTintColor:tintColor];
}

- (void)setBarTintColor:(UIColor *)barTintColor
{
  v4 = barTintColor;
  appearanceStorage = self->_appearanceStorage;
  v9 = v4;
  if (v4)
  {
    if (!appearanceStorage)
    {
      v6 = objc_alloc_init(_UITabBarAppearanceStorage);
      v7 = self->_appearanceStorage;
      self->_appearanceStorage = v6;

      appearanceStorage = self->_appearanceStorage;
    }
  }

  else if (!appearanceStorage)
  {
    goto LABEL_7;
  }

  v8 = [(_UITabBarAppearanceStorage *)appearanceStorage barTintColor];

  v4 = v9;
  if (v8 != v9)
  {
    [(_UITabBarAppearanceStorage *)self->_appearanceStorage setBarTintColor:v9];
    [(UITabBar *)self _effectiveBarTintColorDidChange];
    v4 = v9;
  }

LABEL_7:
}

- (id)_defaultUnselectedTintColorForDefaultTV
{
  if (_AXSEnhanceBackgroundContrastEnabled())
  {
    +[UIColor whiteColor];
  }

  else
  {
    +[UIColor labelColor];
  }
  v2 = ;

  return v2;
}

- (void)setUnselectedItemTintColor:(UIColor *)unselectedItemTintColor
{
  v4 = unselectedItemTintColor;
  appearanceStorage = self->_appearanceStorage;
  v9 = v4;
  if (v4)
  {
    if (!appearanceStorage)
    {
      v6 = objc_alloc_init(_UITabBarAppearanceStorage);
      v7 = self->_appearanceStorage;
      self->_appearanceStorage = v6;

      appearanceStorage = self->_appearanceStorage;
    }
  }

  else if (!appearanceStorage)
  {
    goto LABEL_7;
  }

  v8 = [(_UITabBarAppearanceStorage *)appearanceStorage unselectedImageTintColor];

  v4 = v9;
  if (v8 != v9)
  {
    [(_UITabBarAppearanceStorage *)self->_appearanceStorage setUnselectedImageTintColor:v9];
    [(_UITabBarVisualProvider *)self->_visualProvider updateUnselectedItemTintColor];
    v4 = v9;
  }

LABEL_7:
}

- (void)_setBarMetrics:(int64_t)a3
{
  if (self->_barMetrics != a3)
  {
    self->_barMetrics = a3;
    [(UIView *)self invalidateIntrinsicContentSize];
    [(UIView *)self setNeedsLayout];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained tabBarSizingDidChange:self];
    }
  }
}

- (void)_setImageStyle:(int64_t)a3
{
  if (self->_imageStyle != a3)
  {
    self->_imageStyle = a3;
    [(UIView *)self setNeedsLayout];
  }
}

- (void)_setShowsHighlightedState:(BOOL)a3
{
  v3 = a3;
  v15 = *MEMORY[0x1E69E9840];
  self->_showsHighlightedState = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = self->_items;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [(UITabBarItem *)*(*(&v10 + 1) + 8 * v8) _tabBarButton];
        [v9 _setShowsHighlightedState:{v3, v10}];

        ++v8;
      }

      while (v6 != v8);
      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)_setScrollsItems:(BOOL)a3
{
  if (self->_scrollsItems != a3)
  {
    self->_scrollsItems = a3;
    [(UIView *)self setNeedsLayout];
  }
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
    v7.super_class = UITabBar;
    v5 = [(UIView *)&v7 _systemDefaultFocusGroupIdentifier];
  }

  return v5;
}

- (BOOL)_isEligibleForFocusInteraction
{
  v4.receiver = self;
  v4.super_class = UITabBar;
  return [(UIView *)&v4 _isEligibleForFocusInteraction]|| [(UITabBar *)self _isHiddenAwaitingFocus];
}

- (BOOL)_isEligibleForFocusOcclusion
{
  v4.receiver = self;
  v4.super_class = UITabBar;
  return [(UIView *)&v4 _isEligibleForFocusOcclusion]|| [(UITabBar *)self _isHiddenAwaitingFocus];
}

- (BOOL)canBecomeFocused
{
  v3 = [(UIView *)self _focusBehavior];
  v4 = [v3 tabBarCanBecomeFocused];

  if (v4)
  {
    return ![(UIView *)self _isFocusedOrAncestorOfFocusedView];
  }

  else
  {
    return 0;
  }
}

- (BOOL)shouldUpdateFocusInContext:(id)a3
{
  v4 = a3;
  if ([(_UITabBarVisualProvider *)self->_visualProvider shouldUpdateFocusInContext:v4])
  {
    v7.receiver = self;
    v7.super_class = UITabBar;
    v5 = [(UIView *)&v7 shouldUpdateFocusInContext:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_setHiddenAwaitingFocus:(BOOL)a3
{
  if (a3)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  self->_tabBarFlags = (*&self->_tabBarFlags & 0xFFFFF7FF | v3);
}

- (void)setHidden:(BOOL)a3
{
  v3 = a3;
  v5 = [(UIView *)self isHidden];
  v10.receiver = self;
  v10.super_class = UITabBar;
  [(UIView *)&v10 setHidden:v3];
  if (v5 != v3)
  {
    if ([(UITabBar *)self isLocked])
    {
      [(UIView *)self alpha];
      if (v6 != 0.0)
      {
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        v8 = objc_opt_respondsToSelector();

        if (v8)
        {
          v9 = objc_loadWeakRetained(&self->_delegate);
          [v9 _tabBarVisibilityDidChange];
        }
      }
    }
  }
}

- (void)setAlpha:(double)a3
{
  [(UIView *)self alpha];
  v6 = v5;
  v10.receiver = self;
  v10.super_class = UITabBar;
  [(UIView *)&v10 setAlpha:a3];
  if (![(UIView *)self isHidden]&& (a3 == 0.0 && v6 != 0.0 || a3 != 0.0 && v6 == 0.0))
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      v9 = objc_loadWeakRetained(&self->_delegate);
      [v9 _tabBarVisibilityDidChange];
    }
  }
}

- (void)_setFocusedItemHightlightShouldBeVisible:(BOOL)a3
{
  if (((((*&self->_tabBarFlags & 0x1000) == 0) ^ a3) & 1) == 0)
  {
    if (a3)
    {
      v3 = 4096;
    }

    else
    {
      v3 = 0;
    }

    self->_tabBarFlags = (*&self->_tabBarFlags & 0xFFFFEFFF | v3);
    [(_UITabBarVisualProvider *)self->_visualProvider _shim_updateFocusHighlightVisibility];
  }
}

- (void)_setPendingFocusAction:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x8000;
  }

  else
  {
    v3 = 0;
  }

  self->_tabBarFlags = (*&self->_tabBarFlags & 0xFFFF7FFF | v3);
}

- (int64_t)_focusedIndex
{
  v3 = [(UITabBar *)self items];
  v4 = [(UITabBar *)self _focusedTabBarItem];
  v5 = [v3 indexOfObject:v4];

  return v5;
}

- (void)dismissCustomizeSheet:(BOOL)a3
{
  if (self->_customizeView)
  {
    [(UITabBar *)self _dismissCustomizeSheet:a3];
  }
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  if (self->_customizeView)
  {
    if ([(UIView *)self pointInside:a4 withEvent:a3.x, a3.y])
    {
      v5 = self;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = UITabBar;
    v6 = [(UIView *)&v8 hitTest:a4 withEvent:a3.x, a3.y];
    if (v6 == self && [(_UITabBarVisualProvider *)self->_visualProvider shouldPassthroughTouches])
    {

      v6 = 0;
    }
  }

  return v6;
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  if (self->_customizeView)
  {
    customizeView = self->_customizeView;

    [(UITabBarCustomizeView *)customizeView tabBarTouchesBegan:a3 withEvent:a4];
  }

  else
  {
    v8 = v4;
    v9 = v5;
    v7.receiver = self;
    v7.super_class = UITabBar;
    [(UIResponder *)&v7 touchesBegan:a3 withEvent:a4];
  }
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  if (self->_customizeView)
  {
    customizeView = self->_customizeView;

    [(UITabBarCustomizeView *)customizeView tabBarTouchesMoved:a3 withEvent:a4];
  }

  else
  {
    v8 = v4;
    v9 = v5;
    v7.receiver = self;
    v7.super_class = UITabBar;
    [(UIResponder *)&v7 touchesMoved:a3 withEvent:a4];
  }
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  if (self->_customizeView)
  {
    customizeView = self->_customizeView;

    [(UITabBarCustomizeView *)customizeView tabBarTouchesEnded:a3 withEvent:a4];
  }

  else
  {
    v8 = v4;
    v9 = v5;
    v7.receiver = self;
    v7.super_class = UITabBar;
    [(UIResponder *)&v7 touchesEnded:a3 withEvent:a4];
  }
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  if (self->_customizeView)
  {
    customizeView = self->_customizeView;

    [(UITabBarCustomizeView *)customizeView tabBarTouchesCancelled:a3 withEvent:a4];
  }

  else
  {
    v8 = v4;
    v9 = v5;
    v7.receiver = self;
    v7.super_class = UITabBar;
    [(UIResponder *)&v7 touchesCancelled:a3 withEvent:a4];
  }
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(UIView *)self bounds];
  v9 = v8;
  v11 = v10;
  [(UIView *)self frame];
  v13 = v12;
  v15 = v14;
  v17.receiver = self;
  v17.super_class = UITabBar;
  [(UIView *)&v17 setFrame:x, y, width, height];
  if (width != v13 || height != v15)
  {
    [(_UITabBarVisualProvider *)self->_visualProvider tabBarSizeChanged:v9, v11];
    [(UIView *)self setNeedsLayout];
    [(UIView *)self setNeedsDisplay];
  }
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
  v13.receiver = self;
  v13.super_class = UITabBar;
  [(UIView *)&v13 setBounds:x, y, width, height];
  if (v9 != width || v11 != height)
  {
    [(_UITabBarVisualProvider *)self->_visualProvider tabBarSizeChanged:v9, v11];
    [(UIView *)self setNeedsLayout];
  }
}

- (void)_didMoveFromWindow:(id)a3 toWindow:(id)a4
{
  v6 = a4;
  v11.receiver = self;
  v11.super_class = UITabBar;
  [(UIView *)&v11 _didMoveFromWindow:a3 toWindow:v6];
  if (v6 && ![(UIView *)self _canDrawContent])
  {
    v7 = [v6 screen];
    [v7 scale];
    v9 = v8;
    v10 = [(UIView *)self layer];
    [v10 setRasterizationScale:v9];
  }
}

- (void)_buttonDown:(id)a3
{
  v4 = a3;
  *&self->_tabBarFlags &= ~4u;
  if ((dyld_program_sdk_at_least() & 1) == 0)
  {
    [(UITabBar *)self performSelector:sel__buttonDownDelayed_ withObject:v4 afterDelay:0.2];
  }
}

- (void)_buttonDownDelayed:(id)a3
{
  *&self->_tabBarFlags |= 4u;
  v4 = a3;
  [(UITabBar *)self _adjustButtonSelection:v4];
  [v4 sendActionsForControlEvents:0x40000000];
}

- (void)_buttonUp:(id)a3
{
  v4 = a3;
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel__buttonDownDelayed_ object:?];
  if ((*&self->_tabBarFlags & 4) == 0)
  {
    [(UITabBar *)self _adjustButtonSelection:v4];
    [v4 sendActionsForControlEvents:0x40000000];
  }

  if ([v4 isFirstResponder])
  {
    [v4 resignFirstResponder];
  }
}

- (void)_adjustButtonSelection:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_items;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [(UITabBarItem *)v10 _tabBarButton];

        if (v11 == v4)
        {
          v12 = [(UITabBar *)self isLocked];
          [(UITabBar *)self setLocked:0];
          tabBarFlags = self->_tabBarFlags;
          if (v12)
          {
            self->_tabBarFlags = (*&tabBarFlags | 0x40000);
          }

          [(UITabBar *)self setSelectedItem:v10];
          self->_tabBarFlags = (*&self->_tabBarFlags & 0xFFFBFFFF | (((*&tabBarFlags >> 18) & 1) << 18));
          [(UITabBar *)self setLocked:v12];
          goto LABEL_13;
        }
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:
}

- (void)_dismissCustomizeSheet:(BOOL)a3
{
  v3 = a3;
  customizationItems = self->_customizationItems;
  if (customizationItems)
  {
    self->_customizationItems = 0;
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __35__UITabBar__dismissCustomizeSheet___block_invoke;
  aBlock[3] = &unk_1E70F5AC0;
  aBlock[4] = self;
  v6 = _Block_copy(aBlock);
  if (v3)
  {
    [(UIView *)self->_customizeView frame];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13 + v11;
    [(UIView *)self->_customizeView _setSafeAreaInsetsFrozen:1 updateForUnfreeze:0];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __35__UITabBar__dismissCustomizeSheet___block_invoke_2;
    v17[3] = &unk_1E70F3B20;
    v17[4] = self;
    v17[5] = v8;
    *&v17[6] = v14;
    v17[7] = v10;
    *&v17[8] = v12;
    [UIView animateWithDuration:v17 animations:v6 completion:0.33];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v16 = [(UITabBar *)self items];
    [WeakRetained tabBar:self willEndCustomizingItems:v16 changed:(*&self->_tabBarFlags >> 1) & 1];
  }

  [(_UITabBarVisualProvider *)self->_visualProvider didEndCustomizingItems];
  if (!v3)
  {
    v6[2](v6, 1);
  }
}

void __35__UITabBar__dismissCustomizeSheet___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 416));
  if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v2 = *(a1 + 32);
    v3 = [v2 items];
    [WeakRetained tabBar:v2 didEndCustomizingItems:v3 changed:(*(*(a1 + 32) + 456) >> 1) & 1];
  }

  [*(*(a1 + 32) + 408) removeFromSuperview];
  v4 = *(a1 + 32);
  v5 = *(v4 + 408);
  *(v4 + 408) = 0;
}

uint64_t __35__UITabBar__dismissCustomizeSheet___block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 408) setFrame:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
  [*(*(a1 + 32) + 408) setIsBeingDismissed];
  v2 = *(*(a1 + 32) + 408);

  return [v2 tintTabBarItemsForEdit:0];
}

- (void)_customizeWithAvailableItems:(id)a3
{
  v4 = a3;
  if (!self->_customizeView)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained tabBar:self willDisplayItemsForCustomization:v4];
    }

    v6 = objc_loadWeakRetained(&self->__glassGroupContainer);
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = self;
    }

    v9 = v8;

    v10 = [(UIView *)v9 superview];
    [v10 bounds];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v19 = [(UIView *)self window];
    v20 = [v19 windowScene];
    v21 = [v20 _interfaceOrientation];

    v22 = [(UIView *)self window];
    v23 = __UIStatusBarManagerForWindow(v22);
    v24 = [v23 isStatusBarHidden];

    v25 = [(UIView *)self _screen];
    v26 = v25;
    if (v24)
    {
      [v25 bounds];
    }

    else
    {
      [v25 _applicationFrameForInterfaceOrientation:v21];
    }

    v29 = v27;
    v30 = v28;

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if ((v21 - 3) >= 2)
    {
      v32 = v29;
    }

    else
    {
      v32 = v30;
    }

    if ((v21 - 3) >= 2)
    {
      v33 = v30;
    }

    else
    {
      v33 = v29;
    }

    if (isKindOfClass)
    {
      v34 = v18;
    }

    else
    {
      v16 = v32;
      v34 = v33;
    }

    v35 = v14 + v18;
    v36 = [(UIView *)self semanticContentAttribute:v32];
    v37 = [[UITabBarCustomizeView alloc] initWithFrame:v12, v35, v16, v34];
    customizeView = self->_customizeView;
    self->_customizeView = v37;

    v53 = v9;
    [v10 _addSubview:self->_customizeView positioned:-3 relativeTo:v9];
    v39 = self->_customizeView;
    v40 = +[UIColor systemBackgroundColor];
    [(UIView *)v39 setBackgroundColor:v40];

    [(UIView *)self->_customizeView setSemanticContentAttribute:v36];
    v41 = [UINavigationBar alloc];
    v42 = [(UIView *)self window];
    v43 = __UIStatusBarManagerForWindow(v42);
    [v43 statusBarHeight];
    v45 = v44;

    [UINavigationBar defaultSizeForOrientation:v21];
    v47 = [(UINavigationBar *)v41 initWithFrame:0.0, v45, v16, v46];
    [(UIView *)v47 setAutoresizingMask:2];
    [(UINavigationBar *)v47 _setBarPosition:3];
    [(UINavigationBar *)v47 setSemanticContentAttribute:v36];
    v48 = [[UINavigationItem alloc] initWithTitle:&stru_1EFB14550];
    v49 = [UIBarButtonItem alloc];
    v50 = _UINSLocalizedStringWithDefaultValue(@"Done", @"Done");
    v51 = [(UIBarButtonItem *)v49 initWithTitle:v50 style:2 target:self action:sel__customizeDoneButtonAction_];
    [(UINavigationItem *)v48 setRightBarButtonItem:v51];

    [(UINavigationBar *)v47 pushNavigationItem:v48 animated:0];
    [(UITabBarCustomizeView *)self->_customizeView setNavigationBar:v47];
    [(UIView *)self->_customizeView addSubview:v47];
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained tabBar:self willShowCustomizationSheet:self->_customizeView withNavigationBar:v47];
    }

    [(UITabBarCustomizeView *)self->_customizeView setTabBar:self currentItems:self->_items availableItems:v4];
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained tabBar:self didDisplayItemsForCustomization:v4];
    }

    v57[0] = MEMORY[0x1E69E9820];
    v57[1] = 3221225472;
    v57[2] = __41__UITabBar__customizeWithAvailableItems___block_invoke;
    v57[3] = &unk_1E70F3B20;
    v57[4] = self;
    *&v57[5] = v12;
    *&v57[6] = v35 - v34;
    *&v57[7] = v16;
    *&v57[8] = v34;
    v54[0] = MEMORY[0x1E69E9820];
    v54[1] = 3221225472;
    v54[2] = __41__UITabBar__customizeWithAvailableItems___block_invoke_2;
    v54[3] = &unk_1E70F3C60;
    v55 = WeakRetained;
    v56 = self;
    v52 = WeakRetained;
    [UIView animateWithDuration:v57 animations:v54 completion:0.33];
    *&self->_tabBarFlags &= ~2u;
  }
}

uint64_t __41__UITabBar__customizeWithAvailableItems___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 408) setFrame:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
  v2 = *(*(a1 + 32) + 408);

  return [v2 tintTabBarItemsForEdit:1];
}

void __41__UITabBar__customizeWithAvailableItems___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 32) && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v3 = *(a1 + 32);
    v2 = *(a1 + 40);
    v4 = [v2 items];
    [v3 tabBar:v2 didBeginCustomizingItems:v4];
  }
}

- (void)_configureTabBarReplacingItem:(id)a3 withNewItem:(id)a4 swapping:(BOOL)a5
{
  v5 = a5;
  v7 = [(_UITabBarVisualProvider *)self->_visualProvider exchangeItem:a3 withItem:a4];
  items = self->_items;
  self->_items = v7;

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __63__UITabBar__configureTabBarReplacingItem_withNewItem_swapping___block_invoke;
  aBlock[3] = &unk_1E70F3590;
  aBlock[4] = self;
  v9 = _Block_copy(aBlock);
  v10 = v9;
  if (v5)
  {
    [UIView animateWithDuration:v9 animations:0.2];
  }

  else
  {
    (*(v9 + 2))(v9);
  }

  *&self->_tabBarFlags |= 2u;
}

- (double)_scaleFactorForItems:(id)a3 spacing:(double)a4 dimension:(double)a5 maxWidth:(double)a6
{
  [(UITabBar *)self _totalDimensionForItems:a3 spacing:a4 dimension:a5 scaleFactor:1.0];
  v8 = v7 <= a6;
  result = 0.9;
  if (v8)
  {
    return 1.0;
  }

  return result;
}

- (double)_totalDimensionForItems:(id)a3 spacing:(double)a4 dimension:(double)a5 scaleFactor:(double)a6
{
  v29 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v25;
    v13 = 0.0;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v25 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v24 + 1) + 8 * i);
        v16 = [(UITabBarItem *)v15 _tabBarButton];
        v17 = [(UITabBarItem *)v15 _tabBarButton];
        [v17 frame];
        [v16 sizeThatFits:{v18, v19}];
        v21 = v20;

        v22 = v21 * a6;
        if (v21 * a6 <= 0.0)
        {
          v22 = a5;
        }

        v13 = v13 + v22 + a4;
      }

      v11 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v11);
  }

  else
  {
    v13 = 0.0;
  }

  return v13;
}

- (void)_updateTabBarItemView:(id)a3
{
  v4 = a3;
  if ([(NSArray *)self->_items containsObject:?])
  {
    [(_UITabBarVisualProvider *)self->_visualProvider _shim_updateTabBarItemView:v4];
  }
}

- (uint64_t)_performWhileIgnoringLock:(uint64_t)result
{
  if (result)
  {
    v2 = result;
    v3 = a2;
    v4 = [v2 isLocked];
    [v2 setLocked:0];
    v3[2](v3);

    return [v2 setLocked:v4];
  }

  return result;
}

- (uint64_t)_hostedElements
{
  if (result)
  {
    return [*(result + 472) hostedElements];
  }

  return result;
}

- (uint64_t)_setHostedElements:(uint64_t)result
{
  if (result)
  {
    return [*(result + 472) setHostedElements:a2];
  }

  return result;
}

- (uint64_t)_setHostedElementsLayoutHandler:(uint64_t)result
{
  if (result)
  {
    return [*(result + 472) setHostedElementsLayoutHandler:a2];
  }

  return result;
}

- (double)_frameForHostedElement:(uint64_t)a3 options:
{
  if (!a1)
  {
    return 0.0;
  }

  [*(a1 + 472) frameForHostedElement:a2 options:a3];
  return result;
}

- (id)_viewsForMorphingToTarget:(id *)a1
{
  if (a1)
  {
    a1 = [a1[59] viewsForMorphingToTarget:a2];
    v2 = vars8;
  }

  return a1;
}

- (uint64_t)_currentMorphTarget
{
  if (result)
  {
    return [*(result + 472) currentMorphTarget];
  }

  return result;
}

- (uint64_t)_setCurrentMorphTarget:(uint64_t)result
{
  if (result)
  {
    v2 = result;
    [*(result + 472) setCurrentMorphTarget:a2];

    return [v2 _handleCurrentMorphTargetChange];
  }

  return result;
}

- (uint64_t)_selectCollapseTabIfPossible
{
  if (result)
  {
    return [*(result + 472) selectCollapseTabIfPossible];
  }

  return result;
}

- (uint64_t)_morphAnimationsForHostedElementsDidEnd
{
  if (result)
  {
    return [*(result + 472) morphAnimationsForHostedElementsDidEnd];
  }

  return result;
}

- (void)_setGlassGroupContainer:(uint64_t)a1
{
  obj = a2;
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 600));
    if (WeakRetained != obj)
    {
      objc_storeWeak((a1 + 600), obj);
      [*(a1 + 472) glassGroupContainerDidChange:WeakRetained];
    }
  }
}

- (id)_resolvedPresentationSourceItemForItem:(id *)a1
{
  if (a1)
  {
    a1 = [a1[59] resolvedPresentationSourceItemForItem:a2];
    v2 = vars8;
  }

  return a1;
}

- (void)_setMinimized:(BOOL)a3
{
  v3 = a3;
  if (![(UITabBar *)self _isPhotosApp])
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"UITabBar.m" lineNumber:2808 description:@"This can only be called by an approved app."];
  }

  if ([(UITabBar *)self _isMinimized]!= v3)
  {
    visualProvider = self->_visualProvider;

    [(_UITabBarVisualProvider *)visualProvider setMinimized:v3];
  }
}

- (void)_handleCurrentMorphTargetChange
{
  v3 = [(UITabBar *)self _minimizedStateDidChangeHandler];
  if (v3)
  {
    v4 = v3;
    v4[2](v4, [(UITabBar *)self _isMinimized]);
    v3 = v4;
  }
}

- (void)_setMinimizedStateDidChangeHandler:(id)a3
{
  v8 = a3;
  if (![(UITabBar *)self _isPhotosApp])
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"UITabBar.m" lineNumber:2827 description:@"This can only be called by an approved app."];
  }

  v5 = [v8 copy];
  minimizedStateDidChangeHandler = self->_minimizedStateDidChangeHandler;
  self->_minimizedStateDidChangeHandler = v5;
}

- (CGRect)_frameForHostedAccessoryView
{
  if (![(UITabBar *)self _isPhotosApp])
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"UITabBar.m" lineNumber:2833 description:@"This can only be called by an approved app."];

    if (self)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = 0.0;
    v6 = 0.0;
    v5 = 0.0;
    v4 = 0.0;
    goto LABEL_6;
  }

  if (!self)
  {
    goto LABEL_5;
  }

LABEL_3:
  [(_UITabBarVisualProvider *)self->_visualProvider frameForHostedElement:2 options:0];
LABEL_6:
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (uint64_t)_updateMorphTargetBlock
{
  if (result)
  {
    return *(result + 592);
  }

  return result;
}

- (void)_setUpdateMorphTargetBlock:(void *)a1
{
  if (a1)
  {
    objc_setProperty_nonatomic_copy(a1, newValue, newValue, 592);
  }
}

- (double)_autolayoutSpacingAtEdge:(int)a3 forAttribute:(int64_t)a4 inContainer:(id)a5 isGuide:(BOOL)a6
{
  result = 0.0;
  if (a6)
  {
    v7.receiver = self;
    v7.super_class = UITabBar;
    [(UIView *)&v7 _autolayoutSpacingAtEdge:*&a3 forAttribute:a4 inContainer:a5 isGuide:1, 0.0];
  }

  return result;
}

@end