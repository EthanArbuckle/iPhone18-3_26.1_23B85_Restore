@interface UITabBar
+ (Class)_visualProviderClassForTabBar:(id)bar;
+ (id)_visualProviderForTabBar:(id)bar;
+ (void)_initializeForIdiom:(int64_t)idiom;
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
- (BOOL)shouldUpdateFocusInContext:(id)context;
- (CGRect)_frameForHostedAccessoryView;
- (CGSize)_intrinsicSizeWithinSize:(CGSize)size;
- (CGSize)sizeThatFits:(CGSize)fits;
- (NSString)_backdropViewLayerGroupName;
- (NSString)description;
- (UITabBar)initWithCoder:(id)coder;
- (UITabBar)initWithFrame:(CGRect)frame;
- (UITabBarAppearance)standardAppearance;
- (UITabBarItem)selectedItem;
- (UIView)_externalViewForSafeAreaInsets;
- (double)_autolayoutSpacingAtEdge:(int)edge forAttribute:(int64_t)attribute inContainer:(id)container isGuide:(BOOL)guide;
- (double)_frameForHostedElement:(uint64_t)element options:;
- (double)_scaleFactorForItems:(id)items spacing:(double)spacing dimension:(double)dimension maxWidth:(double)width;
- (double)_shadowAlpha;
- (double)_totalDimensionForItems:(id)items spacing:(double)spacing dimension:(double)dimension scaleFactor:(double)factor;
- (id)_defaultUnselectedTintColorForDefaultTV;
- (id)_effectiveUnselectedLabelTintColor;
- (id)_effectiveUnselectedTabTintColorConsideringView:(id)view;
- (id)_effectiveUnselectedTintColor;
- (id)_glassGroupContainer;
- (id)_hostedElementsLayoutHandler;
- (id)_normalInheritedTintColor;
- (id)_resolvedPresentationSourceItemForItem:(id *)item;
- (id)_systemDefaultFocusGroupIdentifier;
- (id)_traitCollectionForChildEnvironment:(id)environment;
- (id)_viewsForMorphingToTarget:(id *)target;
- (id)delegate;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
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
- (void)_adjustButtonSelection:(id)selection;
- (void)_buttonDown:(id)down;
- (void)_buttonDownDelayed:(id)delayed;
- (void)_buttonUp:(id)up;
- (void)_configureTabBarReplacingItem:(id)item withNewItem:(id)newItem swapping:(BOOL)swapping;
- (void)_customizeWithAvailableItems:(id)items;
- (void)_didChangeFromIdiom:(int64_t)idiom onScreen:(id)screen traverseHierarchy:(BOOL)hierarchy;
- (void)_didMoveFromWindow:(id)window toWindow:(id)toWindow;
- (void)_didSelectButtonForItem:(id)item;
- (void)_dismissCustomizeSheet:(BOOL)sheet;
- (void)_doCommonTabBarInit;
- (void)_doCommonTabBarPreInit;
- (void)_handleCurrentMorphTargetChange;
- (void)_installDefaultAppearance;
- (void)_makeCurrentButtonFirstResponder;
- (void)_populateArchivedSubviews:(id)subviews;
- (void)_sendAction:(id)action withEvent:(id)event;
- (void)_setBackdropViewLayerGroupName:(id)name;
- (void)_setBackgroundNeedsUpdate:(BOOL)update;
- (void)_setBarMetrics:(int64_t)metrics;
- (void)_setBarOrientation:(int64_t)orientation;
- (void)_setDisableBlurTinting:(BOOL)tinting;
- (void)_setDisplayStyle:(int64_t)style;
- (void)_setFocusedItemHightlightShouldBeVisible:(BOOL)visible;
- (void)_setGlassGroupContainer:(uint64_t)container;
- (void)_setHiddenAwaitingFocus:(BOOL)focus;
- (void)_setHidesShadow:(BOOL)shadow;
- (void)_setImageStyle:(int64_t)style;
- (void)_setLabelFont:(id)font;
- (void)_setLabelShadowColor:(id)color;
- (void)_setLabelShadowOffset:(CGSize)offset;
- (void)_setLabelTextColor:(id)color selectedTextColor:(id)textColor;
- (void)_setMinimized:(BOOL)minimized;
- (void)_setMinimizedStateDidChangeHandler:(id)handler;
- (void)_setPendingFocusAction:(BOOL)action;
- (void)_setScrollsItems:(BOOL)items;
- (void)_setShadowAlpha:(double)alpha;
- (void)_setShowsHighlightedState:(BOOL)state;
- (void)_setSpringLoaded:(BOOL)loaded force:(BOOL)force;
- (void)_setSuspendBackgroundUpdates:(BOOL)updates;
- (void)_setTabBarSizing:(int64_t)sizing;
- (void)_setUpdateMorphTargetBlock:(void *)block;
- (void)_setVibrantLabels:(BOOL)labels;
- (void)_updateTabBarItemView:(id)view;
- (void)addConstraint:(id)constraint;
- (void)beginCustomizingItems:(NSArray *)items;
- (void)dealloc;
- (void)dismissCustomizeSheet:(BOOL)sheet;
- (void)encodeWithCoder:(id)coder;
- (void)layoutSubviews;
- (void)removeConstraint:(id)constraint;
- (void)setAlpha:(double)alpha;
- (void)setBackgroundEffects:(id)effects;
- (void)setBackgroundImage:(UIImage *)backgroundImage;
- (void)setBarStyle:(UIBarStyle)barStyle;
- (void)setBarTintColor:(UIColor *)barTintColor;
- (void)setBounds:(CGRect)bounds;
- (void)setDelegate:(id)delegate;
- (void)setFrame:(CGRect)frame;
- (void)setHidden:(BOOL)hidden;
- (void)setItems:(NSArray *)items animated:(BOOL)animated;
- (void)setLocked:(BOOL)locked;
- (void)setScrollEdgeAppearance:(UITabBarAppearance *)scrollEdgeAppearance;
- (void)setSelectedItem:(UITabBarItem *)selectedItem;
- (void)setSelectionIndicatorImage:(UIImage *)selectionIndicatorImage;
- (void)setSemanticContentAttribute:(int64_t)attribute;
- (void)setShadowImage:(UIImage *)shadowImage;
- (void)setStandardAppearance:(UITabBarAppearance *)standardAppearance;
- (void)setTintColor:(UIColor *)tintColor;
- (void)setTranslatesAutoresizingMaskIntoConstraints:(BOOL)constraints;
- (void)setTranslucent:(BOOL)translucent;
- (void)setUnselectedItemTintColor:(UIColor *)unselectedItemTintColor;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
- (void)traitCollectionDidChange:(id)change;
- (void)updateProperties;
@end

@implementation UITabBar

- (void)_doCommonTabBarPreInit
{
  v3 = dyld_program_sdk_at_least();
  self->_displayStyle = 0;
  if (v3)
  {
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    v5 = [standardUserDefaults BOOLForKey:@"UseTabBarLegacyTVStyle"];

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
    _screen = [(UIView *)self _screen];
    _userInterfaceIdiom = [_screen _userInterfaceIdiom];

    if (_userInterfaceIdiom == 1)
    {
      self->_barMetrics = 2;
    }
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__accessibilityButtonShapesEnabledDidChangeNotification_ name:@"UIAccessibilityButtonShapesEnabledStatusDidChangeNotification" object:0];

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
    backgroundImage = [(_UITabBarAppearanceStorage *)self->_appearanceStorage backgroundImage];
    v6 = backgroundImage;
    if (backgroundImage)
    {
      [backgroundImage _isInvisibleAndGetIsTranslucent:&v8];
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

    appearanceObserver = [(_UITabBarVisualProvider *)self->_visualProvider appearanceObserver];
    v6 = self->_standardAppearance;
    if (v6)
    {
      v7 = appearanceObserver;
      objc_storeWeak(&v6->super._changeObserver, appearanceObserver);
      appearanceObserver = v7;
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
  _expectedSuperviewFollowingAnimation = [(UITabBar *)self _expectedSuperviewFollowingAnimation];
  v4 = _expectedSuperviewFollowingAnimation;
  if (_expectedSuperviewFollowingAnimation)
  {
    superview = _expectedSuperviewFollowingAnimation;
  }

  else
  {
    superview = [(UIView *)self superview];
  }

  v6 = superview;

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
  defaultTintColor = [(_UITabBarVisualProvider *)self->_visualProvider defaultTintColor];
  if ([(UIView *)self _definesTintColor]|| !defaultTintColor)
  {
    v7.receiver = self;
    v7.super_class = UITabBar;
    _normalInheritedTintColor = [(UIView *)&v7 _normalInheritedTintColor];
  }

  else
  {
    _normalInheritedTintColor = defaultTintColor;
  }

  v5 = _normalInheritedTintColor;

  return v5;
}

- (id)_effectiveUnselectedLabelTintColor
{
  unselectedItemTintColor = [(UITabBar *)self unselectedItemTintColor];
  if (!unselectedItemTintColor)
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
      unselectedItemTintColor = ;
    }

    else
    {
      unselectedItemTintColor = [UIColor colorWithWhite:0.57254902 alpha:1.0];
    }
  }

  return unselectedItemTintColor;
}

- (id)_effectiveUnselectedTintColor
{
  unselectedItemTintColor = [(UITabBar *)self unselectedItemTintColor];
  if (!unselectedItemTintColor)
  {
    unselectedItemTintColor = [UIColor colorWithWhite:0.57254902 alpha:0.85];
  }

  return unselectedItemTintColor;
}

- (id)_hostedElementsLayoutHandler
{
  if (self)
  {
    self = [self[59] hostedElementsLayoutHandler];
    v1 = vars8;
  }

  return self;
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
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UITabBar.m" lineNumber:2796 description:@"This can only be called by an approved app."];

    if (self)
    {
      return [(_UITabBarVisualProvider *)self->_visualProvider currentMorphTarget]== 2;
    }
  }

  return 0;
}

- (int64_t)_expectedInterfaceOrientation
{
  window = [(UIView *)self window];
  if (!window)
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

  v4 = window;
LABEL_3:
  _windowInterfaceOrientation = [v4 _windowInterfaceOrientation];
  if (!_windowInterfaceOrientation)
  {
    _windowInterfaceOrientation = [UIApp _sceneInterfaceOrientationFromWindow:v4];
  }

  v6 = _windowInterfaceOrientation;
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

  barTintColor = [(UITabBar *)self barTintColor];
  unselectedItemTintColor = [(UITabBar *)self unselectedItemTintColor];
  if (barTintColor && ([barTintColor alphaComponent], v5 != 0.0) || unselectedItemTintColor && (objc_msgSend(unselectedItemTintColor, "alphaComponent"), v6 != 0.0))
  {
    v8 = 0;
  }

  else
  {
    traitCollection = [(UIView *)self traitCollection];
    v8 = [traitCollection userInterfaceIdiom] != 3;
  }

  return v8;
}

- (void)dealloc
{
  [(_UITabBarVisualProvider *)self->_visualProvider teardown];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:@"UIAccessibilityButtonShapesEnabledStatusDidChangeNotification" object:0];

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

- (void)_setLabelFont:(id)font
{
  v20 = *MEMORY[0x1E69E9840];
  fontCopy = font;
  appearanceStorage = self->_appearanceStorage;
  if (!appearanceStorage)
  {
    v6 = objc_alloc_init(_UITabBarAppearanceStorage);
    v7 = self->_appearanceStorage;
    self->_appearanceStorage = v6;

    appearanceStorage = self->_appearanceStorage;
  }

  tabItemAppearanceStorage = [(_UITabBarAppearanceStorage *)appearanceStorage tabItemAppearanceStorage];
  v9 = *off_1E70EC918;
  [tabItemAppearanceStorage setTextAttribute:fontCopy forKey:*off_1E70EC918 state:0];

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

        [*(*(&v15 + 1) + 8 * v14++) _setTitleTextAttributeValue:fontCopy forAttributeKey:v9 state:{0, v15}];
      }

      while (v12 != v14);
      v12 = [(NSArray *)v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v12);
  }
}

- (void)_setLabelTextColor:(id)color selectedTextColor:(id)textColor
{
  v24 = *MEMORY[0x1E69E9840];
  colorCopy = color;
  textColorCopy = textColor;
  appearanceStorage = self->_appearanceStorage;
  if (!appearanceStorage)
  {
    v9 = objc_alloc_init(_UITabBarAppearanceStorage);
    v10 = self->_appearanceStorage;
    self->_appearanceStorage = v9;

    appearanceStorage = self->_appearanceStorage;
  }

  tabItemAppearanceStorage = [(_UITabBarAppearanceStorage *)appearanceStorage tabItemAppearanceStorage];
  v12 = *off_1E70EC920;
  [tabItemAppearanceStorage setTextAttribute:colorCopy forKey:*off_1E70EC920 state:0];
  [tabItemAppearanceStorage setTextAttribute:textColorCopy forKey:v12 state:4];
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
        [v18 _setTitleTextAttributeValue:colorCopy forAttributeKey:v12 state:{0, v19}];
        [v18 _setTitleTextAttributeValue:textColorCopy forAttributeKey:v12 state:4];
      }

      v15 = [(NSArray *)v13 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v15);
  }
}

- (void)_setLabelShadowColor:(id)color
{
  v22 = *MEMORY[0x1E69E9840];
  colorCopy = color;
  appearanceStorage = self->_appearanceStorage;
  if (!appearanceStorage)
  {
    v6 = objc_alloc_init(_UITabBarAppearanceStorage);
    v7 = self->_appearanceStorage;
    self->_appearanceStorage = v6;

    appearanceStorage = self->_appearanceStorage;
  }

  tabItemAppearanceStorage = [(_UITabBarAppearanceStorage *)appearanceStorage tabItemAppearanceStorage];
  v9 = *off_1E70EC9B0;
  v10 = [tabItemAppearanceStorage textAttributeForKey:*off_1E70EC9B0 state:0];

  if (!v10)
  {
    v10 = objc_alloc_init(off_1E70ECB90);
  }

  [v10 setShadowColor:colorCopy];
  tabItemAppearanceStorage2 = [(_UITabBarAppearanceStorage *)self->_appearanceStorage tabItemAppearanceStorage];
  [tabItemAppearanceStorage2 setTextAttribute:v10 forKey:v9 state:0];

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

- (void)_setLabelShadowOffset:(CGSize)offset
{
  height = offset.height;
  width = offset.width;
  v23 = *MEMORY[0x1E69E9840];
  appearanceStorage = self->_appearanceStorage;
  if (!appearanceStorage)
  {
    v7 = objc_alloc_init(_UITabBarAppearanceStorage);
    v8 = self->_appearanceStorage;
    self->_appearanceStorage = v7;

    appearanceStorage = self->_appearanceStorage;
  }

  tabItemAppearanceStorage = [(_UITabBarAppearanceStorage *)appearanceStorage tabItemAppearanceStorage];
  v10 = *off_1E70EC9B0;
  v11 = [tabItemAppearanceStorage textAttributeForKey:*off_1E70EC9B0 state:0];

  if (!v11)
  {
    v11 = objc_alloc_init(off_1E70ECB90);
  }

  [v11 setShadowOffset:{width, height}];
  tabItemAppearanceStorage2 = [(_UITabBarAppearanceStorage *)self->_appearanceStorage tabItemAppearanceStorage];
  [tabItemAppearanceStorage2 setTextAttribute:v11 forKey:v10 state:0];

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

- (void)_setVibrantLabels:(BOOL)labels
{
  if (((((*&self->_tabBarFlags & 0x2000) == 0) ^ labels) & 1) == 0)
  {
    if (labels)
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

- (void)_setDisableBlurTinting:(BOOL)tinting
{
  if (((((*&self->_tabBarFlags & 0x4000) == 0) ^ tinting) & 1) == 0)
  {
    if (tinting)
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

- (void)_setHidesShadow:(BOOL)shadow
{
  self->_hidesShadow = shadow;
  _shim_shadowView = [(_UITabBarVisualProvider *)self->_visualProvider _shim_shadowView];
  [_shim_shadowView setHidden:self->_hidesShadow];
}

- (double)_shadowAlpha
{
  _shim_shadowView = [(_UITabBarVisualProvider *)self->_visualProvider _shim_shadowView];
  [_shim_shadowView alpha];
  v4 = v3;

  return v4;
}

- (void)_setShadowAlpha:(double)alpha
{
  _shim_shadowView = [(_UITabBarVisualProvider *)self->_visualProvider _shim_shadowView];
  [_shim_shadowView setAlpha:alpha];
}

- (void)_setSuspendBackgroundUpdates:(BOOL)updates
{
  if (updates)
  {
    v3 = 0x40000;
  }

  else
  {
    v3 = 0;
  }

  self->_tabBarFlags = (*&self->_tabBarFlags & 0xFFFBFFFF | v3);
  if (!updates)
  {
    [(UIView *)self setNeedsLayout];
  }
}

- (void)_setBackgroundNeedsUpdate:(BOOL)update
{
  tabBarFlags = self->_tabBarFlags;
  if ((*&tabBarFlags & 0x40000) == 0)
  {
    if (update)
    {
      v4 = 1024;
    }

    else
    {
      v4 = 0;
    }

    self->_tabBarFlags = (*&tabBarFlags & 0xFFFBFBFF | v4);
    if (update)
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

- (void)_setTabBarSizing:(int64_t)sizing
{
  _screen = [(UIView *)self _screen];
  _userInterfaceIdiom = [_screen _userInterfaceIdiom];

  self->_tabBarSizing = sizing;
  barMetrics = self->_barMetrics;
  if (sizing == 2)
  {
    v8 = 2;
  }

  else if ((_userInterfaceIdiom - 2) > 6)
  {
    v8 = 0;
  }

  else
  {
    v8 = qword_18A678940[_userInterfaceIdiom - 2];
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

- (id)_effectiveUnselectedTabTintColorConsideringView:(id)view
{
  viewCopy = view;
  unselectedImageTintColor = [(_UITabBarAppearanceStorage *)self->_appearanceStorage unselectedImageTintColor];
  if (!unselectedImageTintColor)
  {
    unselectedImageTintColor = [UITabBar _unselectedTabTintColorForView:viewCopy];
  }

  return unselectedImageTintColor;
}

- (NSString)_backdropViewLayerGroupName
{
  traitCollection = [(UIView *)self traitCollection];
  v3 = objc_opt_self();
  v4 = [traitCollection objectForTrait:v3];

  return v4;
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

+ (void)_initializeForIdiom:(int64_t)idiom
{
  v40[1] = *MEMORY[0x1E69E9840];
  if (idiom == 2 || idiom == 8)
  {
    if (objc_opt_class() != self)
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

  if (idiom == 3 && objc_opt_class() == self)
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

+ (Class)_visualProviderClassForTabBar:(id)bar
{
  traitCollection = [bar traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (_UISolariumEnabled())
  {
    v5 = [_UITabBarVisualProviderFactory visualProviderClassForIdiom:userInterfaceIdiom];
  }

  else
  {
    v5 = objc_opt_class();
  }

  return v5;
}

+ (id)_visualProviderForTabBar:(id)bar
{
  barCopy = bar;
  v5 = [objc_alloc(objc_msgSend(self _visualProviderClassForTabBar:{barCopy)), "initWithTabBar:", barCopy}];

  return v5;
}

- (UITabBar)initWithCoder:(id)coder
{
  coderCopy = coder;
  v25.receiver = self;
  v25.super_class = UITabBar;
  v5 = [(UIView *)&v25 initWithCoder:coderCopy];
  v6 = v5;
  if (v5)
  {
    [(UITabBar *)v5 _doCommonTabBarPreInit];
    v7 = [coderCopy decodeObjectForKey:@"UIDelegate"];
    objc_storeWeak(&v6->_delegate, v7);

    isLocked = [(UITabBar *)v6 isLocked];
    [(UITabBar *)v6 setLocked:0];
    [(UIView *)v6 setClipsToBounds:0];
    v9 = [coderCopy decodeObjectForKey:@"UISelectionIndicatorImage"];
    [(UITabBar *)v6 setSelectionIndicatorImage:v9];

    if ([coderCopy containsValueForKey:@"UISpringLoaded"])
    {
      if ([coderCopy decodeBoolForKey:@"UISpringLoaded"])
      {
        v10 = 0x10000;
      }

      else
      {
        v10 = 0;
      }

      v6->_tabBarFlags = (*&v6->_tabBarFlags & 0xFFFEFFFF | v10);
    }

    v11 = [coderCopy decodeObjectForKey:@"UIItems"];
    if (v11)
    {
      if (isLocked)
      {
        objc_storeStrong(&v6->_items, v11);
      }

      else
      {
        [(UITabBar *)v6 setItems:v11 animated:0];
      }
    }

    v12 = [coderCopy decodeObjectForKey:@"UISelectedItem"];
    [(UITabBar *)v6 setSelectedItem:v12];
    [(UITabBar *)v6 setLocked:isLocked];
    v13 = [coderCopy decodeObjectForKey:@"UIBarTintColor"];
    [(UITabBar *)v6 setBarTintColor:v13];

    v14 = [coderCopy decodeObjectForKey:@"UIBarUnselectedImageTintColor"];
    [(UITabBar *)v6 setUnselectedItemTintColor:v14];

    v15 = [coderCopy decodeObjectForKey:@"UISelectedImageTintColor"];
    if (v15)
    {
      [(UITabBar *)v6 setSelectedImageTintColor:v15];
    }

    v16 = [coderCopy decodeObjectForKey:@"UIShadowImage"];
    [(UITabBar *)v6 setShadowImage:v16];

    v17 = [coderCopy decodeObjectForKey:@"UIBackgroundImage"];
    if (v17)
    {
      [(UITabBar *)v6 setBackgroundImage:v17];
    }

    else
    {
      [(UITabBar *)v6 _setBackgroundNeedsUpdate:1];
    }

    v18 = [coderCopy decodeObjectForKey:@"UITabBarStandardAppearance"];
    standardAppearance = v6->_standardAppearance;
    v6->_standardAppearance = v18;

    v20 = [coderCopy decodeObjectForKey:@"UITabBarScrollEdgeAppearance"];
    scrollEdgeAppearance = v6->_scrollEdgeAppearance;
    v6->_scrollEdgeAppearance = v20;

    if ([coderCopy containsValueForKey:@"UITabBarItemPositioning"])
    {
      v6->_itemPositioning = [coderCopy decodeIntegerForKey:@"UITabBarItemPositioning"];
    }

    if ([coderCopy containsValueForKey:@"UITabBarItemWidth"])
    {
      [coderCopy decodeDoubleForKey:@"UITabBarItemWidth"];
      v6->_itemDimension = v22;
    }

    if ([coderCopy containsValueForKey:@"UITabBarItemSpacing"])
    {
      [coderCopy decodeDoubleForKey:@"UITabBarItemSpacing"];
      v6->_itemSpacing = v23;
    }

    if ([coderCopy containsValueForKey:@"UIBarTranslucence"])
    {
      v6->_tabBarFlags = (*&v6->_tabBarFlags & 0xFFFFFC7F | (([coderCopy decodeIntegerForKey:@"UIBarTranslucence"] & 7) << 7));
    }

    if ([coderCopy containsValueForKey:@"UIBarStyle"])
    {
      v6->_tabBarFlags = (*&v6->_tabBarFlags & 0xFFFFFF8F | (16 * ([coderCopy decodeIntegerForKey:@"UIBarStyle"] & 7)));
    }
  }

  [(UITabBar *)v6 _doCommonTabBarInit];

  return v6;
}

- (UITabBar)initWithFrame:(CGRect)frame
{
  v5.receiver = self;
  v5.super_class = UITabBar;
  v3 = [(UIView *)&v5 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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

- (void)_populateArchivedSubviews:(id)subviews
{
  v5.receiver = self;
  v5.super_class = UITabBar;
  subviewsCopy = subviews;
  [(UIView *)&v5 _populateArchivedSubviews:subviewsCopy];
  [(_UITabBarVisualProvider *)self->_visualProvider updateArchivedSubviews:subviewsCopy, v5.receiver, v5.super_class];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v24.receiver = self;
  v24.super_class = UITabBar;
  [(UIView *)&v24 encodeWithCoder:coderCopy];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    [coderCopy encodeConditionalObject:WeakRetained forKey:@"UIDelegate"];
  }

  items = self->_items;
  if (items)
  {
    [coderCopy encodeObject:items forKey:@"UIItems"];
  }

  v7 = objc_loadWeakRetained(&self->_selectedItem);

  if (v7)
  {
    v8 = objc_loadWeakRetained(&self->_selectedItem);
    [coderCopy encodeObject:v8 forKey:@"UISelectedItem"];
  }

  barTintColor = [(_UITabBarAppearanceStorage *)self->_appearanceStorage barTintColor];

  if (barTintColor)
  {
    barTintColor2 = [(_UITabBarAppearanceStorage *)self->_appearanceStorage barTintColor];
    [coderCopy encodeObject:barTintColor2 forKey:@"UIBarTintColor"];
  }

  unselectedImageTintColor = [(_UITabBarAppearanceStorage *)self->_appearanceStorage unselectedImageTintColor];

  if (unselectedImageTintColor)
  {
    unselectedImageTintColor2 = [(_UITabBarAppearanceStorage *)self->_appearanceStorage unselectedImageTintColor];
    [coderCopy encodeObject:unselectedImageTintColor2 forKey:@"UIBarUnselectedImageTintColor"];
  }

  selectedImageTintColor = [(_UITabBarAppearanceStorage *)self->_appearanceStorage selectedImageTintColor];

  if (selectedImageTintColor)
  {
    selectedImageTintColor2 = [(_UITabBarAppearanceStorage *)self->_appearanceStorage selectedImageTintColor];
    [coderCopy encodeObject:selectedImageTintColor2 forKey:@"UISelectedImageTintColor"];
  }

  selectionIndicatorImage = [(_UITabBarAppearanceStorage *)self->_appearanceStorage selectionIndicatorImage];
  if (selectionIndicatorImage)
  {
    [coderCopy encodeObject:selectionIndicatorImage forKey:@"UISelectionIndicatorImage"];
  }

  shadowImage = [(_UITabBarAppearanceStorage *)self->_appearanceStorage shadowImage];

  if (shadowImage)
  {
    [coderCopy encodeObject:shadowImage forKey:@"UIShadowImage"];
  }

  backgroundImage = [(_UITabBarAppearanceStorage *)self->_appearanceStorage backgroundImage];

  if (backgroundImage)
  {
    [coderCopy encodeObject:backgroundImage forKey:@"UIBackgroundImage"];
  }

  itemPositioning = self->_itemPositioning;
  if (itemPositioning)
  {
    [coderCopy encodeInteger:itemPositioning forKey:@"UITabBarItemPositioning"];
  }

  if (self->_itemDimension > 0.0)
  {
    [coderCopy encodeDouble:@"UITabBarItemWidth" forKey:?];
  }

  if (self->_itemSpacing > 0.0)
  {
    [coderCopy encodeDouble:@"UITabBarItemSpacing" forKey:?];
  }

  tabBarFlags = self->_tabBarFlags;
  v20 = (tabBarFlags >> 7) & 7;
  if (v20)
  {
    [coderCopy encodeInteger:v20 forKey:@"UIBarTranslucence"];
    LODWORD(tabBarFlags) = self->_tabBarFlags;
  }

  v21 = (tabBarFlags >> 4) & 7;
  if (v21)
  {
    [coderCopy encodeInteger:v21 forKey:@"UIBarStyle"];
    LODWORD(tabBarFlags) = self->_tabBarFlags;
  }

  if ((tabBarFlags & 0x10000) != 0)
  {
    [coderCopy encodeBool:1 forKey:@"UISpringLoaded"];
  }

  if ([(_UITabBarVisualProvider *)self->_visualProvider useModernAppearance])
  {
    standardAppearance = self->_standardAppearance;
    if (standardAppearance)
    {
      [coderCopy encodeObject:standardAppearance forKey:@"UITabBarStandardAppearance"];
    }

    scrollEdgeAppearance = self->_scrollEdgeAppearance;
    if (scrollEdgeAppearance)
    {
      [coderCopy encodeObject:scrollEdgeAppearance forKey:@"UITabBarScrollEdgeAppearance"];
    }
  }
}

- (void)setLocked:(BOOL)locked
{
  if (locked)
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
  items = [(UITabBar *)self items];
  v3 = [items countByEnumeratingWithState:&v8 objects:v12 count:16];
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
          objc_enumerationMutation(items);
        }

        _tabBarButton = [(UITabBarItem *)*(*(&v8 + 1) + 8 * i) _tabBarButton];
        if ([_tabBarButton _isSelected])
        {
          [_tabBarButton _showSelectedIndicator:1 changeSelection:0];

          goto LABEL_11;
        }
      }

      v4 = [items countByEnumeratingWithState:&v8 objects:v12 count:16];
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

- (void)_didSelectButtonForItem:(id)item
{
  v17 = *MEMORY[0x1E69E9840];
  itemCopy = item;
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
        if (v10 == itemCopy)
        {
          WeakRetained = objc_loadWeakRetained(&self->_delegate);
          if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
          {
            [WeakRetained tabBar:self didSelectItem:{v10, v12}];
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [WeakRetained _tabBarDidChangeSelectionToItem:itemCopy];
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

- (void)_sendAction:(id)action withEvent:(id)event
{
  v24 = *MEMORY[0x1E69E9840];
  actionCopy = action;
  eventCopy = event;
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
        _tabBarButton = [(UITabBarItem *)v13 _tabBarButton];

        if (_tabBarButton == actionCopy)
        {
          WeakRetained = objc_loadWeakRetained(&self->_delegate);
          if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
          {
            [WeakRetained tabBar:self didSelectItem:{v13, v19}];
          }

          if ([v13 action])
          {
            v16 = UIApp;
            action = [v13 action];
            target = [v13 target];
            [v16 sendAction:action toTarget:target fromSender:v13 forEvent:eventCopy];
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
    _tabItemAppearanceStorage = [(_UITabBarAppearanceStorage *)self->_appearanceStorage _tabItemAppearanceStorage];
    v8 = _tabItemAppearanceStorage;
    if (_tabItemAppearanceStorage)
    {
      v43[0] = MEMORY[0x1E69E9820];
      v43[1] = 3221225472;
      v43[2] = __30__UITabBar_setItems_animated___block_invoke;
      v43[3] = &unk_1E70F8CE8;
      v44 = _tabItemAppearanceStorage;
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
          traitCollection = [(UIView *)self traitCollection];
          userInterfaceIdiom = [traitCollection userInterfaceIdiom];

          if (userInterfaceIdiom == 6 && v17)
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
          traitCollection2 = [(UIView *)self traitCollection];
          userInterfaceIdiom2 = [traitCollection2 userInterfaceIdiom];

          if (userInterfaceIdiom2 == 6 && v25)
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

- (void)setTranslatesAutoresizingMaskIntoConstraints:(BOOL)constraints
{
  constraintsCopy = constraints;
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
    [(UIView *)&v7 setTranslatesAutoresizingMaskIntoConstraints:constraintsCopy];
  }
}

- (void)addConstraint:(id)constraint
{
  constraintCopy = constraint;
  if ([(UITabBar *)self isLocked])
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"Cannot modify constraints for UITabBar managed by a controller"];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = UITabBar;
    [(UIView *)&v5 addConstraint:constraintCopy];
  }
}

- (void)removeConstraint:(id)constraint
{
  constraintCopy = constraint;
  if ([(UITabBar *)self isLocked])
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"Cannot modify constraints for UITabBar managed by a controller"];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = UITabBar;
    [(UIView *)&v5 removeConstraint:constraintCopy];
  }
}

- (void)_setBarOrientation:(int64_t)orientation
{
  if ((orientation - 1) >= 4)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[UITabBar _setBarOrientation:]"];
    [currentHandler handleFailureInFunction:v6 file:@"UITabBar.m" lineNumber:1675 description:{@"Invalid parameter not satisfying: %@", @"UIDeviceOrientationIsValidInterfaceOrientation(orientation)"}];
  }

  _effectiveBarOrientation = [(UITabBar *)self _effectiveBarOrientation];
  self->_barOrientation = orientation;
  if (_effectiveBarOrientation != [(UITabBar *)self _effectiveBarOrientation])
  {

    [(UIView *)self setNeedsLayout];
  }
}

- (CGSize)_intrinsicSizeWithinSize:(CGSize)size
{
  [(_UITabBarVisualProvider *)self->_visualProvider intrinsicContentSizeGivenSize:size.width, size.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(UITabBar *)self _intrinsicSizeWithinSize:fits.width, fits.height];
  v5 = v4;
  v7 = v6;
  superview = [(UIView *)self superview];
  if (superview)
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

  _effectiveBarOrientation = [(UITabBar *)self _effectiveBarOrientation];
  if ((_effectiveBarOrientation - 1) >= 2)
  {
    v15 = v7;
  }

  else
  {
    v15 = v13;
  }

  if ((_effectiveBarOrientation - 1) >= 2)
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

- (void)traitCollectionDidChange:(id)change
{
  v5.receiver = self;
  v5.super_class = UITabBar;
  changeCopy = change;
  [(UIView *)&v5 traitCollectionDidChange:changeCopy];
  [(_UITabBarVisualProvider *)self->_visualProvider traitCollectionDidChange:changeCopy, v5.receiver, v5.super_class];
}

- (id)_traitCollectionForChildEnvironment:(id)environment
{
  v8.receiver = self;
  v8.super_class = UITabBar;
  environmentCopy = environment;
  v5 = [(UIView *)&v8 _traitCollectionForChildEnvironment:environmentCopy];
  v6 = [(_UITabBarVisualProvider *)self->_visualProvider traitCollectionForChild:environmentCopy baseTraitCollection:v5, v8.receiver, v8.super_class];

  return v6;
}

- (void)setSemanticContentAttribute:(int64_t)attribute
{
  v5.receiver = self;
  v5.super_class = UITabBar;
  [(UIView *)&v5 setSemanticContentAttribute:?];
  [(_UITabBarVisualProvider *)self->_visualProvider setSemanticContentAttribute:attribute];
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
      items = [(UITabBar *)self items];
      [WeakRetained tabBar:self willBeginCustomizingItems:items];
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

- (void)_didChangeFromIdiom:(int64_t)idiom onScreen:(id)screen traverseHierarchy:(BOOL)hierarchy
{
  v19.receiver = self;
  v19.super_class = UITabBar;
  [(UIView *)&v19 _didChangeFromIdiom:idiom onScreen:screen traverseHierarchy:hierarchy];
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
      superview = [(UIView *)self superview];
      [superview setNeedsLayout];
    }

    _screen = [(UIView *)self _screen];
    _userInterfaceIdiom = [_screen _userInterfaceIdiom];

    if (_userInterfaceIdiom != idiom && (idiom == 3 || _userInterfaceIdiom == 3))
    {
      [(UITabBar *)self _accessibilityButtonShapesParametersDidChange];
    }
  }
}

- (void)_makeCurrentButtonFirstResponder
{
  selectedItem = [(UITabBar *)self selectedItem];
  _tabBarButton = [(UITabBarItem *)selectedItem _tabBarButton];
  [_tabBarButton becomeFirstResponder];
}

- (id)preferredFocusEnvironments
{
  preferredFocusEnvironments = [(_UITabBarVisualProvider *)self->_visualProvider preferredFocusEnvironments];
  if (!preferredFocusEnvironments)
  {
    preferredFocusedView = [(UITabBar *)self preferredFocusedView];
    preferredFocusEnvironments = [MEMORY[0x1E695DEC8] arrayWithObjects:{preferredFocusedView, 0}];
  }

  if (preferredFocusEnvironments)
  {
    v5 = preferredFocusEnvironments;
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  v6 = v5;

  return v5;
}

- (void)_setSpringLoaded:(BOOL)loaded force:(BOOL)force
{
  loadedCopy = loaded;
  v17 = *MEMORY[0x1E69E9840];
  if (loaded || force)
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

          [*(*(&v12 + 1) + 8 * i) setSpringLoaded:{loadedCopy, v12}];
        }

        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }
  }

  if (loadedCopy)
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
    appearanceObserver = [(_UITabBarVisualProvider *)self->_visualProvider appearanceObserver];
    v12 = self->_standardAppearance;
    if (v12)
    {
      objc_storeWeak(&v12->super._changeObserver, appearanceObserver);
    }

    [(_UITabBarVisualProvider *)self->_visualProvider backgroundTransitionProgress];
    if (v13 >= 1.0)
    {
      goto LABEL_21;
    }

    _backgroundData = [(UIBarAppearance *)self->_standardAppearance _backgroundData];
    _backgroundData2 = [(UIBarAppearance *)v5 _backgroundData];
    v16 = _backgroundData;
    v17 = _backgroundData2;
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
    appearanceObserver = [(_UITabBarVisualProvider *)self->_visualProvider appearanceObserver];
    v12 = self->_scrollEdgeAppearance;
    if (v12)
    {
      objc_storeWeak(&v12->super._changeObserver, appearanceObserver);
    }

    [(_UITabBarVisualProvider *)self->_visualProvider backgroundTransitionProgress];
    if (v13 <= 0.0)
    {
      goto LABEL_21;
    }

    _backgroundData = [(UIBarAppearance *)self->_scrollEdgeAppearance _backgroundData];
    _backgroundData2 = [(UIBarAppearance *)v5 _backgroundData];
    v16 = _backgroundData;
    v17 = _backgroundData2;
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

      [(UITabBar *)self _setBackgroundNeedsUpdate:1];
      effectsCopy = v9;
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
  backgroundImage = [(_UITabBarAppearanceStorage *)self->_appearanceStorage backgroundImage];

  v4 = v13;
  if (v13 != backgroundImage)
  {
    [(_UITabBarAppearanceStorage *)self->_appearanceStorage setBackgroundImage:v13];
    [(UITabBar *)self _setBackgroundNeedsUpdate:1];
    v4 = v13;
  }

LABEL_11:
}

- (void)_setDisplayStyle:(int64_t)style
{
  if (self->_displayStyle != style)
  {
    [(_UITabBarVisualProvider *)self->_visualProvider teardown];
    visualProvider = self->_visualProvider;
    self->_visualProvider = 0;

    self->_displayStyle = style;
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
  shadowImage = [(_UITabBarAppearanceStorage *)self->_appearanceStorage shadowImage];

  v4 = v13;
  if (v13 != shadowImage)
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

  selectionIndicatorImage = [(_UITabBarAppearanceStorage *)appearanceStorage selectionIndicatorImage];

  if (selectionIndicatorImage != v4)
  {
    [(_UITabBarAppearanceStorage *)self->_appearanceStorage setSelectionIndicatorImage:v4];
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    subviews = [(UIView *)self subviews];
    v10 = [subviews countByEnumeratingWithState:&v15 objects:v19 count:16];
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
            objc_enumerationMutation(subviews);
          }

          v14 = *(*(&v15 + 1) + 8 * v13);
          if (objc_opt_respondsToSelector())
          {
            [v14 _setCustomSelectedIndicatorImage:v4];
          }

          ++v13;
        }

        while (v11 != v13);
        v11 = [subviews countByEnumeratingWithState:&v15 objects:v19 count:16];
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

  barTintColor = [(_UITabBarAppearanceStorage *)appearanceStorage barTintColor];

  v4 = v9;
  if (barTintColor != v9)
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

  unselectedImageTintColor = [(_UITabBarAppearanceStorage *)appearanceStorage unselectedImageTintColor];

  v4 = v9;
  if (unselectedImageTintColor != v9)
  {
    [(_UITabBarAppearanceStorage *)self->_appearanceStorage setUnselectedImageTintColor:v9];
    [(_UITabBarVisualProvider *)self->_visualProvider updateUnselectedItemTintColor];
    v4 = v9;
  }

LABEL_7:
}

- (void)_setBarMetrics:(int64_t)metrics
{
  if (self->_barMetrics != metrics)
  {
    self->_barMetrics = metrics;
    [(UIView *)self invalidateIntrinsicContentSize];
    [(UIView *)self setNeedsLayout];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained tabBarSizingDidChange:self];
    }
  }
}

- (void)_setImageStyle:(int64_t)style
{
  if (self->_imageStyle != style)
  {
    self->_imageStyle = style;
    [(UIView *)self setNeedsLayout];
  }
}

- (void)_setShowsHighlightedState:(BOOL)state
{
  stateCopy = state;
  v15 = *MEMORY[0x1E69E9840];
  self->_showsHighlightedState = state;
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

        _tabBarButton = [(UITabBarItem *)*(*(&v10 + 1) + 8 * v8) _tabBarButton];
        [_tabBarButton _setShowsHighlightedState:{stateCopy, v10}];

        ++v8;
      }

      while (v6 != v8);
      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)_setScrollsItems:(BOOL)items
{
  if (self->_scrollsItems != items)
  {
    self->_scrollsItems = items;
    [(UIView *)self setNeedsLayout];
  }
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
    v7.super_class = UITabBar;
    _systemDefaultFocusGroupIdentifier = [(UIView *)&v7 _systemDefaultFocusGroupIdentifier];
  }

  return _systemDefaultFocusGroupIdentifier;
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
  _focusBehavior = [(UIView *)self _focusBehavior];
  tabBarCanBecomeFocused = [_focusBehavior tabBarCanBecomeFocused];

  if (tabBarCanBecomeFocused)
  {
    return ![(UIView *)self _isFocusedOrAncestorOfFocusedView];
  }

  else
  {
    return 0;
  }
}

- (BOOL)shouldUpdateFocusInContext:(id)context
{
  contextCopy = context;
  if ([(_UITabBarVisualProvider *)self->_visualProvider shouldUpdateFocusInContext:contextCopy])
  {
    v7.receiver = self;
    v7.super_class = UITabBar;
    v5 = [(UIView *)&v7 shouldUpdateFocusInContext:contextCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_setHiddenAwaitingFocus:(BOOL)focus
{
  if (focus)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  self->_tabBarFlags = (*&self->_tabBarFlags & 0xFFFFF7FF | v3);
}

- (void)setHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  isHidden = [(UIView *)self isHidden];
  v10.receiver = self;
  v10.super_class = UITabBar;
  [(UIView *)&v10 setHidden:hiddenCopy];
  if (isHidden != hiddenCopy)
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

- (void)setAlpha:(double)alpha
{
  [(UIView *)self alpha];
  v6 = v5;
  v10.receiver = self;
  v10.super_class = UITabBar;
  [(UIView *)&v10 setAlpha:alpha];
  if (![(UIView *)self isHidden]&& (alpha == 0.0 && v6 != 0.0 || alpha != 0.0 && v6 == 0.0))
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

- (void)_setFocusedItemHightlightShouldBeVisible:(BOOL)visible
{
  if (((((*&self->_tabBarFlags & 0x1000) == 0) ^ visible) & 1) == 0)
  {
    if (visible)
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

- (void)_setPendingFocusAction:(BOOL)action
{
  if (action)
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
  items = [(UITabBar *)self items];
  _focusedTabBarItem = [(UITabBar *)self _focusedTabBarItem];
  v5 = [items indexOfObject:_focusedTabBarItem];

  return v5;
}

- (void)dismissCustomizeSheet:(BOOL)sheet
{
  if (self->_customizeView)
  {
    [(UITabBar *)self _dismissCustomizeSheet:sheet];
  }
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  if (self->_customizeView)
  {
    if ([(UIView *)self pointInside:event withEvent:test.x, test.y])
    {
      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }

    v6 = selfCopy;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = UITabBar;
    v6 = [(UIView *)&v8 hitTest:event withEvent:test.x, test.y];
    if (v6 == self && [(_UITabBarVisualProvider *)self->_visualProvider shouldPassthroughTouches])
    {

      v6 = 0;
    }
  }

  return v6;
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  if (self->_customizeView)
  {
    customizeView = self->_customizeView;

    [(UITabBarCustomizeView *)customizeView tabBarTouchesBegan:began withEvent:event];
  }

  else
  {
    v8 = v4;
    v9 = v5;
    v7.receiver = self;
    v7.super_class = UITabBar;
    [(UIResponder *)&v7 touchesBegan:began withEvent:event];
  }
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  if (self->_customizeView)
  {
    customizeView = self->_customizeView;

    [(UITabBarCustomizeView *)customizeView tabBarTouchesMoved:moved withEvent:event];
  }

  else
  {
    v8 = v4;
    v9 = v5;
    v7.receiver = self;
    v7.super_class = UITabBar;
    [(UIResponder *)&v7 touchesMoved:moved withEvent:event];
  }
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  if (self->_customizeView)
  {
    customizeView = self->_customizeView;

    [(UITabBarCustomizeView *)customizeView tabBarTouchesEnded:ended withEvent:event];
  }

  else
  {
    v8 = v4;
    v9 = v5;
    v7.receiver = self;
    v7.super_class = UITabBar;
    [(UIResponder *)&v7 touchesEnded:ended withEvent:event];
  }
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  if (self->_customizeView)
  {
    customizeView = self->_customizeView;

    [(UITabBarCustomizeView *)customizeView tabBarTouchesCancelled:cancelled withEvent:event];
  }

  else
  {
    v8 = v4;
    v9 = v5;
    v7.receiver = self;
    v7.super_class = UITabBar;
    [(UIResponder *)&v7 touchesCancelled:cancelled withEvent:event];
  }
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
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

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
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

- (void)_didMoveFromWindow:(id)window toWindow:(id)toWindow
{
  toWindowCopy = toWindow;
  v11.receiver = self;
  v11.super_class = UITabBar;
  [(UIView *)&v11 _didMoveFromWindow:window toWindow:toWindowCopy];
  if (toWindowCopy && ![(UIView *)self _canDrawContent])
  {
    screen = [toWindowCopy screen];
    [screen scale];
    v9 = v8;
    layer = [(UIView *)self layer];
    [layer setRasterizationScale:v9];
  }
}

- (void)_buttonDown:(id)down
{
  downCopy = down;
  *&self->_tabBarFlags &= ~4u;
  if ((dyld_program_sdk_at_least() & 1) == 0)
  {
    [(UITabBar *)self performSelector:sel__buttonDownDelayed_ withObject:downCopy afterDelay:0.2];
  }
}

- (void)_buttonDownDelayed:(id)delayed
{
  *&self->_tabBarFlags |= 4u;
  delayedCopy = delayed;
  [(UITabBar *)self _adjustButtonSelection:delayedCopy];
  [delayedCopy sendActionsForControlEvents:0x40000000];
}

- (void)_buttonUp:(id)up
{
  upCopy = up;
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel__buttonDownDelayed_ object:?];
  if ((*&self->_tabBarFlags & 4) == 0)
  {
    [(UITabBar *)self _adjustButtonSelection:upCopy];
    [upCopy sendActionsForControlEvents:0x40000000];
  }

  if ([upCopy isFirstResponder])
  {
    [upCopy resignFirstResponder];
  }
}

- (void)_adjustButtonSelection:(id)selection
{
  v19 = *MEMORY[0x1E69E9840];
  selectionCopy = selection;
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
        _tabBarButton = [(UITabBarItem *)v10 _tabBarButton];

        if (_tabBarButton == selectionCopy)
        {
          isLocked = [(UITabBar *)self isLocked];
          [(UITabBar *)self setLocked:0];
          tabBarFlags = self->_tabBarFlags;
          if (isLocked)
          {
            self->_tabBarFlags = (*&tabBarFlags | 0x40000);
          }

          [(UITabBar *)self setSelectedItem:v10];
          self->_tabBarFlags = (*&self->_tabBarFlags & 0xFFFBFFFF | (((*&tabBarFlags >> 18) & 1) << 18));
          [(UITabBar *)self setLocked:isLocked];
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

- (void)_dismissCustomizeSheet:(BOOL)sheet
{
  sheetCopy = sheet;
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
  if (sheetCopy)
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
    items = [(UITabBar *)self items];
    [WeakRetained tabBar:self willEndCustomizingItems:items changed:(*&self->_tabBarFlags >> 1) & 1];
  }

  [(_UITabBarVisualProvider *)self->_visualProvider didEndCustomizingItems];
  if (!sheetCopy)
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

- (void)_customizeWithAvailableItems:(id)items
{
  itemsCopy = items;
  if (!self->_customizeView)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained tabBar:self willDisplayItemsForCustomization:itemsCopy];
    }

    v6 = objc_loadWeakRetained(&self->__glassGroupContainer);
    v7 = v6;
    if (v6)
    {
      selfCopy = v6;
    }

    else
    {
      selfCopy = self;
    }

    v9 = selfCopy;

    superview = [(UIView *)v9 superview];
    [superview bounds];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    window = [(UIView *)self window];
    windowScene = [window windowScene];
    _interfaceOrientation = [windowScene _interfaceOrientation];

    window2 = [(UIView *)self window];
    v23 = __UIStatusBarManagerForWindow(window2);
    isStatusBarHidden = [v23 isStatusBarHidden];

    _screen = [(UIView *)self _screen];
    v26 = _screen;
    if (isStatusBarHidden)
    {
      [_screen bounds];
    }

    else
    {
      [_screen _applicationFrameForInterfaceOrientation:_interfaceOrientation];
    }

    v29 = v27;
    v30 = v28;

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if ((_interfaceOrientation - 3) >= 2)
    {
      v32 = v29;
    }

    else
    {
      v32 = v30;
    }

    if ((_interfaceOrientation - 3) >= 2)
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
    [superview _addSubview:self->_customizeView positioned:-3 relativeTo:v9];
    v39 = self->_customizeView;
    v40 = +[UIColor systemBackgroundColor];
    [(UIView *)v39 setBackgroundColor:v40];

    [(UIView *)self->_customizeView setSemanticContentAttribute:v36];
    v41 = [UINavigationBar alloc];
    window3 = [(UIView *)self window];
    v43 = __UIStatusBarManagerForWindow(window3);
    [v43 statusBarHeight];
    v45 = v44;

    [UINavigationBar defaultSizeForOrientation:_interfaceOrientation];
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

    [(UITabBarCustomizeView *)self->_customizeView setTabBar:self currentItems:self->_items availableItems:itemsCopy];
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained tabBar:self didDisplayItemsForCustomization:itemsCopy];
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
    selfCopy2 = self;
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

- (void)_configureTabBarReplacingItem:(id)item withNewItem:(id)newItem swapping:(BOOL)swapping
{
  swappingCopy = swapping;
  v7 = [(_UITabBarVisualProvider *)self->_visualProvider exchangeItem:item withItem:newItem];
  items = self->_items;
  self->_items = v7;

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __63__UITabBar__configureTabBarReplacingItem_withNewItem_swapping___block_invoke;
  aBlock[3] = &unk_1E70F3590;
  aBlock[4] = self;
  v9 = _Block_copy(aBlock);
  v10 = v9;
  if (swappingCopy)
  {
    [UIView animateWithDuration:v9 animations:0.2];
  }

  else
  {
    (*(v9 + 2))(v9);
  }

  *&self->_tabBarFlags |= 2u;
}

- (double)_scaleFactorForItems:(id)items spacing:(double)spacing dimension:(double)dimension maxWidth:(double)width
{
  [(UITabBar *)self _totalDimensionForItems:items spacing:spacing dimension:dimension scaleFactor:1.0];
  v8 = v7 <= width;
  result = 0.9;
  if (v8)
  {
    return 1.0;
  }

  return result;
}

- (double)_totalDimensionForItems:(id)items spacing:(double)spacing dimension:(double)dimension scaleFactor:(double)factor
{
  v29 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v10 = [itemsCopy countByEnumeratingWithState:&v24 objects:v28 count:16];
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
          objc_enumerationMutation(itemsCopy);
        }

        v15 = *(*(&v24 + 1) + 8 * i);
        _tabBarButton = [(UITabBarItem *)v15 _tabBarButton];
        _tabBarButton2 = [(UITabBarItem *)v15 _tabBarButton];
        [_tabBarButton2 frame];
        [_tabBarButton sizeThatFits:{v18, v19}];
        v21 = v20;

        dimensionCopy = v21 * factor;
        if (v21 * factor <= 0.0)
        {
          dimensionCopy = dimension;
        }

        v13 = v13 + dimensionCopy + spacing;
      }

      v11 = [itemsCopy countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v11);
  }

  else
  {
    v13 = 0.0;
  }

  return v13;
}

- (void)_updateTabBarItemView:(id)view
{
  viewCopy = view;
  if ([(NSArray *)self->_items containsObject:?])
  {
    [(_UITabBarVisualProvider *)self->_visualProvider _shim_updateTabBarItemView:viewCopy];
  }
}

- (uint64_t)_performWhileIgnoringLock:(uint64_t)result
{
  if (result)
  {
    v2 = result;
    v3 = a2;
    isLocked = [v2 isLocked];
    [v2 setLocked:0];
    v3[2](v3);

    return [v2 setLocked:isLocked];
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

- (double)_frameForHostedElement:(uint64_t)element options:
{
  if (!self)
  {
    return 0.0;
  }

  [*(self + 472) frameForHostedElement:a2 options:element];
  return result;
}

- (id)_viewsForMorphingToTarget:(id *)target
{
  if (target)
  {
    target = [target[59] viewsForMorphingToTarget:a2];
    v2 = vars8;
  }

  return target;
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

- (void)_setGlassGroupContainer:(uint64_t)container
{
  obj = a2;
  if (container)
  {
    WeakRetained = objc_loadWeakRetained((container + 600));
    if (WeakRetained != obj)
    {
      objc_storeWeak((container + 600), obj);
      [*(container + 472) glassGroupContainerDidChange:WeakRetained];
    }
  }
}

- (id)_resolvedPresentationSourceItemForItem:(id *)item
{
  if (item)
  {
    item = [item[59] resolvedPresentationSourceItemForItem:a2];
    v2 = vars8;
  }

  return item;
}

- (void)_setMinimized:(BOOL)minimized
{
  minimizedCopy = minimized;
  if (![(UITabBar *)self _isPhotosApp])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UITabBar.m" lineNumber:2808 description:@"This can only be called by an approved app."];
  }

  if ([(UITabBar *)self _isMinimized]!= minimizedCopy)
  {
    visualProvider = self->_visualProvider;

    [(_UITabBarVisualProvider *)visualProvider setMinimized:minimizedCopy];
  }
}

- (void)_handleCurrentMorphTargetChange
{
  _minimizedStateDidChangeHandler = [(UITabBar *)self _minimizedStateDidChangeHandler];
  if (_minimizedStateDidChangeHandler)
  {
    v4 = _minimizedStateDidChangeHandler;
    v4[2](v4, [(UITabBar *)self _isMinimized]);
    _minimizedStateDidChangeHandler = v4;
  }
}

- (void)_setMinimizedStateDidChangeHandler:(id)handler
{
  handlerCopy = handler;
  if (![(UITabBar *)self _isPhotosApp])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UITabBar.m" lineNumber:2827 description:@"This can only be called by an approved app."];
  }

  v5 = [handlerCopy copy];
  minimizedStateDidChangeHandler = self->_minimizedStateDidChangeHandler;
  self->_minimizedStateDidChangeHandler = v5;
}

- (CGRect)_frameForHostedAccessoryView
{
  if (![(UITabBar *)self _isPhotosApp])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UITabBar.m" lineNumber:2833 description:@"This can only be called by an approved app."];

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

- (void)_setUpdateMorphTargetBlock:(void *)block
{
  if (block)
  {
    objc_setProperty_nonatomic_copy(block, newValue, newValue, 592);
  }
}

- (double)_autolayoutSpacingAtEdge:(int)edge forAttribute:(int64_t)attribute inContainer:(id)container isGuide:(BOOL)guide
{
  result = 0.0;
  if (guide)
  {
    v7.receiver = self;
    v7.super_class = UITabBar;
    [(UIView *)&v7 _autolayoutSpacingAtEdge:*&edge forAttribute:attribute inContainer:container isGuide:1, 0.0];
  }

  return result;
}

@end