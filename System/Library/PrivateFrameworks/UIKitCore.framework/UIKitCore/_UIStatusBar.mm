@interface _UIStatusBar
+ (CGSize)intrinsicContentSizeForTargetScreen:(id)screen orientation:(int64_t)orientation onLockScreen:(BOOL)lockScreen;
+ (CGSize)intrinsicContentSizeForTargetScreen:(id)screen orientation:(int64_t)orientation onLockScreen:(BOOL)lockScreen isAzulBLinked:(BOOL)linked;
+ (double)_effectiveScaleForVisualProviderClass:(Class)class targetScreen:(id)screen;
+ (id)sensorActivityIndicatorForScreen:(id)screen;
+ (id)stringForStatusBarStyle:(int64_t)style;
+ (void)registerSensorActivityIndicator:(id)indicator forScreen:(id)screen;
- (BOOL)_accessibilityHUDGestureManager:(id)manager shouldBeginAtPoint:(CGPoint)point;
- (BOOL)_cursorLocation:(CGPoint)location isInsideActionable:(id)actionable;
- (BOOL)_cursorLocation:(CGPoint)location isInsideHoverableActionable:(id)actionable;
- (BOOL)_gestureRecognizer:(id)recognizer isInsideActionable:(id)actionable;
- (BOOL)_gestureRecognizer:(id)recognizer pressInsideActionable:(id)actionable;
- (BOOL)_gestureRecognizer:(id)recognizer touchInsideActionable:(id)actionable;
- (BOOL)areAnimationsEnabled;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (CGAffineTransform)_effectiveScaleTransform;
- (CGRect)_extendedHoverFrameForActionable:(id)actionable;
- (CGRect)_frameForActionable:(id)actionable;
- (CGRect)_frameForActionable:(id)actionable actionInsets:(UIEdgeInsets)insets;
- (CGRect)_pressFrameForActionable:(id)actionable;
- (CGRect)avoidanceFrame;
- (CGRect)frameForDisplayItemWithIdentifier:(id)identifier;
- (CGRect)frameForPartWithIdentifier:(id)identifier;
- (CGRect)frameForPartWithIdentifier:(id)identifier includeInternalItems:(BOOL)items;
- (CGSize)intrinsicContentSize;
- (NSSet)dependentDataEntryKeys;
- (NSString)_visualProviderClassName;
- (NSString)description;
- (UIOffset)offsetForPartWithIdentifier:(id)identifier;
- (UIScreen)_effectiveTargetScreen;
- (_UIStatusBar)initWithStyle:(int64_t)style;
- (_UIStatusBarActionable)hoveredActionable;
- (_UIStatusBarActionable)targetActionable;
- (_UIStatusBarVisualProvider)visualProvider;
- (double)alphaForPartWithIdentifier:(id)identifier;
- (id)_accessibilityHUDGestureManager:(id)manager HUDItemForPoint:(CGPoint)point;
- (id)_actionablesForPartWithIdentifier:(id)identifier includeInternalItems:(BOOL)items onlyVisible:(BOOL)visible;
- (id)_itemWithIdentifier:(id)identifier createIfNeeded:(BOOL)needed;
- (id)_rearrangeOverflowedItems;
- (id)_regionsForPartWithIdentifier:(id)identifier includeInternalItems:(BOOL)items;
- (id)_traitCollectionForChildEnvironment:(id)environment;
- (id)actionForPartWithIdentifier:(id)identifier;
- (id)dataEntryKeysForItemsWithIdentifiers:(id)identifiers;
- (id)displayItemIdentifiersInRegionsWithIdentifiers:(id)identifiers;
- (id)displayItemWithIdentifier:(id)identifier;
- (id)itemIdentifiersInRegionsWithIdentifiers:(id)identifiers;
- (id)itemsDependingOnKeys:(id)keys;
- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region;
- (id)pointerInteraction:(id)interaction styleForRegion:(id)region;
- (id)regionWithIdentifier:(id)identifier;
- (id)styleAttributesForStyle:(int64_t)style;
- (int64_t)_effectiveStyleFromStyle:(int64_t)style;
- (int64_t)styleForPartWithIdentifier:(id)identifier;
- (unsigned)animationContextId;
- (void)_accessibilityHUDGestureManager:(id)manager showHUDItem:(id)item;
- (void)_delayUpdatesWithKeys:(id)keys fromAnimation:(id)animation;
- (void)_dismissAccessibilityHUDForGestureManager:(id)manager;
- (void)_fixupDisplayItemAttributes;
- (void)_performAnimations:(id)animations;
- (void)_performWithInheritedAnimation:(id)animation;
- (void)_prepareAnimations:(id)animations;
- (void)_prepareVisualProviderIfNeeded;
- (void)_setVisualProviderClassName:(id)name;
- (void)_updateActionGestureRecognizerAllowableTouchTypesIfNeeded;
- (void)_updateDisplayedItemsWithData:(id)data styleAttributes:(id)attributes extraAnimations:(id)animations;
- (void)_updateRegionItems;
- (void)_updateStyleAttributes;
- (void)_updateWithAggregatedData:(id)data;
- (void)_updateWithData:(id)data completionHandler:(id)handler;
- (void)layoutSubviews;
- (void)pointerInteraction:(id)interaction willEnterRegion:(id)region animator:(id)animator;
- (void)resetVisualProvider;
- (void)resizeSubviewsWithOldSize:(CGSize)size;
- (void)setAction:(id)action forPartWithIdentifier:(id)identifier;
- (void)setAlpha:(double)alpha forPartWithIdentifier:(id)identifier;
- (void)setAvoidanceFrame:(CGRect)frame animationSettings:(id)settings options:(unint64_t)options;
- (void)setDisabledPartIdentifiers:(id)identifiers;
- (void)setEnabledPartIdentifiers:(id)identifiers;
- (void)setForegroundColor:(id)color;
- (void)setMode:(int64_t)mode;
- (void)setOffset:(UIOffset)offset forPartWithIdentifier:(id)identifier;
- (void)setOrientation:(int64_t)orientation;
- (void)setOverlayData:(id)data;
- (void)setSemanticContentAttribute:(int64_t)attribute;
- (void)setStyle:(int64_t)style;
- (void)setStyle:(int64_t)style forPartWithIdentifier:(id)identifier;
- (void)setStyleAttributes:(id)attributes;
- (void)statusBarGesture:(id)gesture;
- (void)traitCollectionDidChange:(id)change;
- (void)updateConstraints;
- (void)updateForcingIterativeOverflow;
@end

@implementation _UIStatusBar

+ (id)stringForStatusBarStyle:(int64_t)style
{
  v3 = @"_UIStatusBarResolvedStyleInherited";
  v4 = @"_UIStatusBarResolvedStyleAutomaticWithLightBias";
  v5 = @"_UIStatusBarResolvedStyleAutomaticWithDarkBias";
  if (style != 128)
  {
    v5 = 0;
  }

  if (style != 64)
  {
    v4 = v5;
  }

  if (style != 4)
  {
    v3 = v4;
  }

  v6 = @"_UIStatusBarResolvedStyleDarkContent";
  if (style != 2)
  {
    v6 = 0;
  }

  if (style == 1)
  {
    v6 = @"_UIStatusBarResolvedStyleLightContent";
  }

  if (!style)
  {
    v6 = @"_UIStatusBarResolvedStyleDefault";
  }

  if (style <= 3)
  {
    return v6;
  }

  else
  {
    return v3;
  }
}

+ (void)registerSensorActivityIndicator:(id)indicator forScreen:(id)screen
{
  v5 = _MergedGlobals_23_5;
  screenCopy = screen;
  indicatorCopy = indicator;
  if (v5 != -1)
  {
    dispatch_once(&_MergedGlobals_23_5, &__block_literal_global_529);
  }

  v8 = qword_1ED49B038;
  v9 = sensorActivityScreenIdentifier(screenCopy);

  [v8 setObject:indicatorCopy forKey:v9];
}

+ (id)sensorActivityIndicatorForScreen:(id)screen
{
  v3 = qword_1ED49B038;
  v4 = sensorActivityScreenIdentifier(screen);
  v5 = [v3 objectForKey:v4];

  return v5;
}

- (_UIStatusBar)initWithStyle:(int64_t)style
{
  v23.receiver = self;
  v23.super_class = _UIStatusBar;
  v4 = [(UIView *)&v23 initWithFrame:0.0, 0.0, 600.0, 50.0];
  v4->_style = style;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [(_UIStatusBar *)v4 setItems:dictionary];

  dictionary2 = [MEMORY[0x1E695DF90] dictionary];
  [(_UIStatusBar *)v4 setDisplayItemStates:dictionary2];

  [(UIView *)v4 _setHostsLayoutEngine:1];
  v7 = _UIGetUIStatusBarForcedMode();
  if (v7 != -1)
  {
    v4->_mode = v7;
  }

  objc_initWeak(&location, v4);
  v8 = [_UIStatusBarDataAggregator alloc];
  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __30___UIStatusBar_initWithStyle___block_invoke;
  v20 = &unk_1E71219B8;
  objc_copyWeak(&v21, &location);
  v9 = [(_UIStatusBarDataAggregator *)v8 initWithUpdateBlock:&v17];
  dataAggregator = v4->_dataAggregator;
  v4->_dataAggregator = v9;

  v11 = [_UIStatusBarActionGestureRecognizer alloc];
  v12 = [(UIGestureRecognizer *)v11 initWithTarget:v4 action:sel_statusBarGesture_, v17, v18, v19, v20];
  actionGestureRecognizer = v4->_actionGestureRecognizer;
  v4->_actionGestureRecognizer = v12;

  [(UIGestureRecognizer *)v4->_actionGestureRecognizer setDelegate:v4];
  [(UIGestureRecognizer *)v4->_actionGestureRecognizer setAllowedPressTypes:&unk_1EFE2D7B0];
  [(UIGestureRecognizer *)v4->_actionGestureRecognizer setAllowedTouchTypes:&unk_1EFE2D7C8];
  [(UIView *)v4 addGestureRecognizer:v4->_actionGestureRecognizer];
  v14 = [[UIAccessibilityHUDGestureManager alloc] initWithView:v4 delegate:v4];
  accessibilityHUDGestureManager = v4->_accessibilityHUDGestureManager;
  v4->_accessibilityHUDGestureManager = v14;

  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);
  return v4;
}

- (NSString)description
{
  v8[1] = *MEMORY[0x1E69E9840];
  visualProvider = self->_visualProvider;
  if (visualProvider)
  {
    v7 = @"visualProvider";
    v8[0] = visualProvider;
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
    v5 = [UIDescriptionBuilder descriptionForObject:self namesAndObjects:v4];
  }

  else
  {
    v5 = [UIDescriptionBuilder descriptionForObject:self namesAndObjects:0];
  }

  return v5;
}

- (void)_setVisualProviderClassName:(id)name
{
  nameCopy = name;
  v8 = nameCopy;
  if (nameCopy)
  {
    v6 = NSClassFromString(nameCopy);
    if (v6)
    {
      goto LABEL_5;
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIStatusBar.m" lineNumber:226 description:{@"No visual provider class with name %@", v8}];
  }

  v6 = 0;
LABEL_5:
  [(_UIStatusBar *)self _setVisualProviderClass:v6];
}

- (NSString)_visualProviderClassName
{
  _visualProviderClass = [(_UIStatusBar *)self _visualProviderClass];
  if (_visualProviderClass)
  {
    _visualProviderClass = NSStringFromClass(_visualProviderClass);
  }

  return _visualProviderClass;
}

- (_UIStatusBarVisualProvider)visualProvider
{
  [(_UIStatusBar *)self _prepareVisualProviderIfNeeded];
  visualProvider = self->_visualProvider;

  return visualProvider;
}

- (UIScreen)_effectiveTargetScreen
{
  v3 = self->_targetScreen;
  if (v3)
  {
LABEL_2:
    screen = v3;
    goto LABEL_4;
  }

  window = [(UIView *)self window];
  screen = [window screen];

  if (!screen)
  {
    traitCollection = [(UIView *)self traitCollection];
    userInterfaceIdiom = [traitCollection userInterfaceIdiom];

    if (userInterfaceIdiom == 3)
    {
      +[UIScreen _carScreen];
    }

    else
    {
      [objc_opt_self() mainScreen];
    }
    v3 = ;
    goto LABEL_2;
  }

LABEL_4:

  return screen;
}

- (void)_prepareVisualProviderIfNeeded
{
  if (!self->_visualProvider)
  {
    visualProviderClass = self->_visualProviderClass;
    if (!visualProviderClass)
    {
      _effectiveTargetScreen = [(_UIStatusBar *)self _effectiveTargetScreen];
      visualProviderInfo = [(_UIStatusBar *)self visualProviderInfo];
      v6 = _UIStatusBarGetVisualProviderClassForScreen(_effectiveTargetScreen, visualProviderInfo);
      v7 = self->_visualProviderClass;
      self->_visualProviderClass = v6;

      if ([(objc_class *)self->_visualProviderClass scalesWithScreenNativeScale])
      {
        v8 = 2;
      }

      else
      {
        v8 = 0;
      }

      self->_statusBarFlags = (*&self->_statusBarFlags & 0xFFFFFFFD | v8);
      if (objc_opt_respondsToSelector())
      {
        v9 = 4;
      }

      else
      {
        v9 = 0;
      }

      self->_statusBarFlags = (*&self->_statusBarFlags & 0xFFFFFFFB | v9);
      if ([(objc_class *)self->_visualProviderClass requiresIterativeOverflowLayout])
      {
        v10 = 8;
      }

      else
      {
        v10 = 0;
      }

      self->_statusBarFlags = (*&self->_statusBarFlags & 0xFFFFFFF7 | v10);

      visualProviderClass = self->_visualProviderClass;
    }

    v11 = objc_alloc_init(visualProviderClass);
    visualProvider = self->_visualProvider;
    self->_visualProvider = v11;

    [(_UIStatusBarVisualProvider *)self->_visualProvider setStatusBar:self];
    if (objc_opt_respondsToSelector())
    {
      v13 = 16;
    }

    else
    {
      v13 = 0;
    }

    self->_statusBarFlags = (*&self->_statusBarFlags & 0xFFFFFFEF | v13);
    if (objc_opt_respondsToSelector())
    {
      v14 = 32;
    }

    else
    {
      v14 = 0;
    }

    self->_statusBarFlags = (*&self->_statusBarFlags & 0xFFFFFFDF | v14);
    if (objc_opt_respondsToSelector())
    {
      v15 = 64;
    }

    else
    {
      v15 = 0;
    }

    self->_statusBarFlags = (*&self->_statusBarFlags & 0xFFFFFFBF | v15);
    if (objc_opt_respondsToSelector())
    {
      v16 = 128;
    }

    else
    {
      v16 = 0;
    }

    self->_statusBarFlags = (*&self->_statusBarFlags & 0xFFFFFF7F | v16);
    if (objc_opt_respondsToSelector())
    {
      v17 = 256;
    }

    else
    {
      v17 = 0;
    }

    self->_statusBarFlags = (*&self->_statusBarFlags & 0xFFFFFEFF | v17);
    if (objc_opt_respondsToSelector())
    {
      v18 = 512;
    }

    else
    {
      v18 = 0;
    }

    self->_statusBarFlags = (*&self->_statusBarFlags & 0xFFFFFDFF | v18);
    if (objc_opt_respondsToSelector())
    {
      v19 = 1024;
    }

    else
    {
      v19 = 0;
    }

    self->_statusBarFlags = (*&self->_statusBarFlags & 0xFFFFFBFF | v19);
    if (objc_opt_respondsToSelector())
    {
      v20 = 2048;
    }

    else
    {
      v20 = 0;
    }

    self->_statusBarFlags = (*&self->_statusBarFlags & 0xFFFFF7FF | v20);
    if (objc_opt_respondsToSelector())
    {
      v21 = 4096;
    }

    else
    {
      v21 = 0;
    }

    self->_statusBarFlags = (*&self->_statusBarFlags & 0xFFFFEFFF | v21);
    if (objc_opt_respondsToSelector())
    {
      v22 = 0x2000;
    }

    else
    {
      v22 = 0;
    }

    self->_statusBarFlags = (*&self->_statusBarFlags & 0xFFFFDFFF | v22);
    if (objc_opt_respondsToSelector())
    {
      v23 = 0x4000;
    }

    else
    {
      v23 = 0;
    }

    self->_statusBarFlags = (*&self->_statusBarFlags & 0xFFFFBFFF | v23);
    if (objc_opt_respondsToSelector())
    {
      v24 = 0x8000;
    }

    else
    {
      v24 = 0;
    }

    self->_statusBarFlags = (*&self->_statusBarFlags & 0xFFFF7FFF | v24);
    if (objc_opt_respondsToSelector())
    {
      v25 = 0x10000;
    }

    else
    {
      v25 = 0;
    }

    self->_statusBarFlags = (*&self->_statusBarFlags & 0xFFFEFFFF | v25);
    if (objc_opt_respondsToSelector())
    {
      v26 = 0x20000;
    }

    else
    {
      v26 = 0;
    }

    self->_statusBarFlags = (*&self->_statusBarFlags & 0xFFFDFFFF | v26);
    if (objc_opt_respondsToSelector())
    {
      v27 = 0x40000;
    }

    else
    {
      v27 = 0;
    }

    self->_statusBarFlags = (*&self->_statusBarFlags & 0xFFFBFFFF | v27);
    [(_UIStatusBar *)self _updateActionGestureRecognizerAllowableTouchTypesIfNeeded];
  }

  if (!self->_foregroundView)
  {
    v28 = [_UIStatusBarForegroundView alloc];
    [(UIView *)self bounds];
    v29 = [(UIView *)v28 initWithFrame:?];
    [(_UIStatusBar *)self setForegroundView:v29];

    v30 = [[UIPointerInteraction alloc] initWithDelegate:self];
    pointerInteraction = self->_pointerInteraction;
    self->_pointerInteraction = v30;

    foregroundView = [(_UIStatusBar *)self foregroundView];
    [foregroundView addInteraction:self->_pointerInteraction];

    [(UIView *)self addSubview:self->_foregroundView];
  }

  if (![(NSDictionary *)self->_regions count])
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v34 = self->_visualProvider;
    containerView = [(_UIStatusBar *)self containerView];
    v36 = [(_UIStatusBarVisualProvider *)v34 setupInContainerView:containerView];

    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __46___UIStatusBar__prepareVisualProviderIfNeeded__block_invoke;
    v40[3] = &unk_1E71219E0;
    v40[4] = self;
    v37 = dictionary;
    v41 = v37;
    [v36 enumerateObjectsUsingBlock:v40];
    objc_storeStrong(&self->_regions, dictionary);
    regions = self->_regions;
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __46___UIStatusBar__prepareVisualProviderIfNeeded__block_invoke_2;
    v39[3] = &unk_1E7121A08;
    v39[4] = self;
    [(NSDictionary *)regions enumerateKeysAndObjectsUsingBlock:v39];
    [_UIStatusBarDisplayItemState setupRelationsBetweenDisplayItemStates:self->_displayItemStates visualProvider:self->_visualProvider];
    if (self->_mode)
    {
      if ((*&self->_statusBarFlags & 0x10) != 0)
      {
        [(_UIStatusBarVisualProvider *)self->_visualProvider modeUpdatedFromMode:0];
      }
    }

    [(_UIStatusBar *)self _updateStyleAttributes];
  }
}

- (void)resetVisualProvider
{
  [(NSDictionary *)self->_regions enumerateKeysAndObjectsUsingBlock:&__block_literal_global_79_1];
  regions = self->_regions;
  self->_regions = MEMORY[0x1E695E0F8];

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  displayItemStates = self->_displayItemStates;
  self->_displayItemStates = dictionary;
}

- (void)setMode:(int64_t)mode
{
  if (_UIGetUIStatusBarForcedMode() == -1)
  {
    mode = self->_mode;
    if (mode != mode)
    {
      self->_mode = mode;
      if (self->_visualProvider)
      {
        v6[0] = MEMORY[0x1E69E9820];
        v6[1] = 3221225472;
        v6[2] = __24___UIStatusBar_setMode___block_invoke;
        v6[3] = &unk_1E70F3590;
        v6[4] = self;
        [(_UIStatusBar *)self _performWithInheritedAnimation:v6];
        if ((*&self->_statusBarFlags & 0x10) != 0)
        {
          [(_UIStatusBarVisualProvider *)self->_visualProvider modeUpdatedFromMode:mode];
        }
      }
    }

    *&self->_statusBarFlags |= 1u;
  }
}

- (void)setOrientation:(int64_t)orientation
{
  if (self->_orientation != orientation)
  {
    self->_orientation = orientation;
    visualProvider = self->_visualProvider;
    if (visualProvider)
    {
      if ((*&self->_statusBarFlags & 0x20) != 0)
      {
        [(_UIStatusBarVisualProvider *)visualProvider orientationUpdatedFromOrientation:?];
      }
    }
  }

  *&self->_statusBarFlags |= 1u;
}

- (void)setAvoidanceFrame:(CGRect)frame animationSettings:(id)settings options:(unint64_t)options
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  settingsCopy = settings;
  [(_UIStatusBar *)self _effectiveScaleTransform];
  v22.origin.x = x;
  v22.origin.y = y;
  v22.size.width = width;
  v22.size.height = height;
  v23 = CGRectApplyAffineTransform(v22, &v21);
  v12 = v23.origin.x;
  v13 = v23.origin.y;
  v14 = v23.size.width;
  v15 = v23.size.height;
  p_avoidanceFrame = &self->_avoidanceFrame;
  if (!CGRectEqualToRect(v23, self->_avoidanceFrame))
  {
    v17 = p_avoidanceFrame->origin.x;
    v18 = self->_avoidanceFrame.origin.y;
    v19 = self->_avoidanceFrame.size.width;
    v20 = self->_avoidanceFrame.size.height;
    p_avoidanceFrame->origin.x = v12;
    self->_avoidanceFrame.origin.y = v13;
    self->_avoidanceFrame.size.width = v14;
    self->_avoidanceFrame.size.height = v15;
    if ((*&self->_statusBarFlags & 0x40) != 0)
    {
      [(_UIStatusBarVisualProvider *)self->_visualProvider avoidanceFrameUpdatedFromFrame:settingsCopy withAnimationSettings:options options:v17, v18, v19, v20];
    }
  }
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v13.receiver = self;
  v13.super_class = _UIStatusBar;
  [(UIView *)&v13 traitCollectionDidChange:changeCopy];
  if (self->_visualProvider)
  {
    traitCollection = [(UIView *)self traitCollection];
    userInterfaceStyle = [traitCollection userInterfaceStyle];
    if (userInterfaceStyle != [changeCopy userInterfaceStyle] || (v7 = objc_msgSend(traitCollection, "userInterfaceIdiom"), v7 != objc_msgSend(changeCopy, "userInterfaceIdiom")) || (v8 = objc_msgSend(traitCollection, "layoutDirection"), v8 != objc_msgSend(changeCopy, "layoutDirection")) || (objc_msgSend(traitCollection, "displayScale"), v10 = v9, objc_msgSend(changeCopy, "displayScale"), v10 != v11))
    {
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __41___UIStatusBar_traitCollectionDidChange___block_invoke;
      v12[3] = &unk_1E70F3590;
      v12[4] = self;
      [(_UIStatusBar *)self _performWithInheritedAnimation:v12];
    }
  }
}

- (void)setSemanticContentAttribute:(int64_t)attribute
{
  if ([(UIView *)self semanticContentAttribute]!= attribute)
  {
    v7.receiver = self;
    v7.super_class = _UIStatusBar;
    [(UIView *)&v7 setSemanticContentAttribute:attribute];
    if (self)
    {
      _UIViewInvalidateTraitCollectionAndSchedulePropagation(self, 1, v5, v6);
    }
  }
}

- (id)_traitCollectionForChildEnvironment:(id)environment
{
  v7.receiver = self;
  v7.super_class = _UIStatusBar;
  v4 = [(UIView *)&v7 _traitCollectionForChildEnvironment:environment];
  v5 = [v4 _traitCollectionByReplacingNSIntegerValue:-[UIView effectiveUserInterfaceLayoutDirection](self forTraitToken:{"effectiveUserInterfaceLayoutDirection"), 0x1EFE323C8}];

  return v5;
}

- (void)_performWithInheritedAnimation:(id)animation
{
  v3 = MEMORY[0x1E6979518];
  animationCopy = animation;
  [v3 begin];
  v5 = +[UIView areAnimationsEnabled];
  v6 = +[UIView _isInAnimationBlock];
  v7 = MEMORY[0x1E6979518];
  if (v6)
  {
    +[UIView _currentAnimationDuration];
    [v7 setAnimationDuration:?];
    v8 = MEMORY[0x1E6979518];
    v9 = +[UIView _currentAnimationCurve];
    v14 = _UIGetAnimationCurveSpline(v9, v10, v11, v12, v13);
    [v8 setAnimationTimingFunction:v14];
  }

  else
  {
    [MEMORY[0x1E6979518] setDisableActions:1];
    [UIView setAnimationsEnabled:0];
  }

  animationCopy[2](animationCopy);

  [MEMORY[0x1E6979518] commit];

  [UIView setAnimationsEnabled:v5];
}

- (void)setStyle:(int64_t)style
{
  style = self->_style;
  if (style != style)
  {
    self->_style = style;
    if (self->_visualProvider)
    {
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 3221225472;
      v5[2] = __25___UIStatusBar_setStyle___block_invoke;
      v5[3] = &unk_1E70F3590;
      v5[4] = self;
      [(_UIStatusBar *)self _performWithInheritedAnimation:v5];
      if ((*&self->_statusBarFlags & 0x80) != 0)
      {
        [(_UIStatusBarVisualProvider *)self->_visualProvider styleUpdatedFromStyle:style];
      }
    }
  }
}

- (void)setForegroundColor:(id)color
{
  colorCopy = color;
  foregroundColor = self->_foregroundColor;
  v7 = colorCopy;
  v8 = foregroundColor;
  v9 = v8;
  if (v8 == v7)
  {
  }

  else
  {
    if (v7 && v8)
    {
      v10 = [(UIColor *)v7 isEqual:v8];

      if (v10)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }

    objc_storeStrong(&self->_foregroundColor, color);
    if (self->_visualProvider)
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __35___UIStatusBar_setForegroundColor___block_invoke;
      v11[3] = &unk_1E70F3590;
      v11[4] = self;
      [(_UIStatusBar *)self _performWithInheritedAnimation:v11];
    }
  }

LABEL_10:
}

- (void)setStyleAttributes:(id)attributes
{
  attributesCopy = attributes;
  if (([attributesCopy isEqual:self->_styleAttributes] & 1) == 0)
  {
    v5 = [attributesCopy copy];
    styleAttributes = self->_styleAttributes;
    self->_styleAttributes = v5;

    traitCollection = [(_UIStatusBarStyleAttributes *)self->_styleAttributes traitCollection];

    if (!traitCollection)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"_UIStatusBar.m" lineNumber:555 description:@"Style attributes should have a traitCollection"];
    }

    [(_UIStatusBar *)self _updateDisplayedItemsWithData:0 styleAttributes:attributesCopy extraAnimations:MEMORY[0x1E695E0F0]];
  }
}

- (int64_t)_effectiveStyleFromStyle:(int64_t)style
{
  styleCopy = style;
  if (!style)
  {
    traitCollection = [(UIView *)self traitCollection];
    if ([traitCollection userInterfaceStyle] == 2)
    {
      styleCopy = 1;
    }

    else
    {
      styleCopy = 2;
    }
  }

  return styleCopy;
}

- (id)styleAttributesForStyle:(int64_t)style
{
  if (os_variant_has_internal_diagnostics())
  {
    if (!self)
    {
      v10 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v10, OS_LOG_TYPE_FAULT, "Attempted to begin using the effective theme of a nil view.", buf, 2u);
      }
    }
  }

  else if (!self)
  {
    v11 = *(__UILogGetCategoryCachedImpl("Assert", &styleAttributesForStyle____s_category) + 8);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *v12 = 0;
      _os_log_impl(&dword_188A29000, v11, OS_LOG_TYPE_ERROR, "Attempted to begin using the effective theme of a nil view.", v12, 2u);
    }
  }

  v5 = +[UITraitCollection _currentTraitCollectionIfExists];
  traitCollection = [(UIView *)self traitCollection];
  [UITraitCollection setCurrentTraitCollection:traitCollection];

  v7 = _UISetCurrentFallbackEnvironment(self);
  v8 = [(_UIStatusBarVisualProvider *)self->_visualProvider styleAttributesForStyle:[(_UIStatusBar *)self _effectiveStyleFromStyle:style]];
  _UIRestorePreviousFallbackEnvironment(v7);
  [UITraitCollection setCurrentTraitCollection:v5];

  return v8;
}

- (void)_updateStyleAttributes
{
  style = self->_style;
  if (style == 2)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2 * (style == 1);
  }

  [(UIView *)self setOverrideUserInterfaceStyle:v4];
  v5 = [(_UIStatusBar *)self styleAttributesForStyle:self->_style];
  [(_UIStatusBar *)self setStyleAttributes:v5];
}

- (void)setOverlayData:(id)data
{
  dataCopy = data;
  if ([dataCopy isEmpty])
  {

    dataCopy = 0;
  }

  overlayData = [(_UIStatusBar *)self overlayData];

  v5 = dataCopy;
  if (dataCopy != overlayData)
  {
    overlayData2 = [(_UIStatusBarDataAggregator *)self->_dataAggregator overlayData];

    if (overlayData2)
    {
      overlayData3 = [(_UIStatusBarDataAggregator *)self->_dataAggregator overlayData];
      v8 = [overlayData3 dataByApplyingOverlay:self->_currentData];

      v9 = dataCopy;
      if (dataCopy)
      {
        if (v8)
        {
          [v8 applyUpdate:dataCopy];
LABEL_12:
          [(_UIStatusBarDataAggregator *)self->_dataAggregator setOverlayData:0];
          [(_UIStatusBarDataAggregator *)self->_dataAggregator updateWithData:v8];
          [(_UIStatusBarDataAggregator *)self->_dataAggregator setOverlayData:dataCopy];

          v5 = dataCopy;
          goto LABEL_13;
        }

LABEL_9:
        dataCopy = v9;
        v8 = v9;
        goto LABEL_12;
      }
    }

    else
    {
      v9 = dataCopy;
      if (dataCopy)
      {
        goto LABEL_9;
      }

      v8 = 0;
    }

    dataCopy = v9;
    goto LABEL_12;
  }

LABEL_13:
}

- (void)_updateWithData:(id)data completionHandler:(id)handler
{
  v26 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  handlerCopy = handler;
  [(_UIStatusBar *)self _prepareVisualProviderIfNeeded];
  CategoryCachedImpl = __UILogGetCategoryCachedImpl("StatusBar", &_updateWithData_completionHandler____s_category);
  if (*CategoryCachedImpl)
  {
    v12 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = v12;
      if (+[UIView areAnimationsEnabled])
      {
        v14 = @"YES";
      }

      else
      {
        v14 = @"NO";
      }

      delayedEntryKeys = [(_UIStatusBarDataAggregator *)self->_dataAggregator delayedEntryKeys];
      *buf = 134218754;
      selfCopy = self;
      v20 = 2112;
      v21 = dataCopy;
      v22 = 2112;
      v23 = v14;
      v24 = 2112;
      v25 = delayedEntryKeys;
      _os_log_impl(&dword_188A29000, v13, OS_LOG_TYPE_ERROR, "Status bar %p update with data: %@, animated: %@, delayedKeys: %@", buf, 0x2Au);
    }
  }

  [(_UIStatusBar *)self setUpdateCompletionHandler:handlerCopy];
  currentData = self->_currentData;
  if (currentData)
  {
    [(_UIStatusBarData *)currentData applyUpdate:dataCopy];
    [(_UIStatusBarDataAggregator *)self->_dataAggregator updateWithData:dataCopy];
  }

  else
  {
    v10 = [dataCopy copy];
    v11 = self->_currentData;
    self->_currentData = v10;

    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __50___UIStatusBar__updateWithData_completionHandler___block_invoke;
    v16[3] = &unk_1E70F35B8;
    v16[4] = self;
    v17 = dataCopy;
    [UIView performWithoutAnimation:v16];
  }
}

- (void)_updateWithAggregatedData:(id)data
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = [data copy];
  if (*(&self->_statusBarFlags + 1))
  {
    v5 = [(_UIStatusBarVisualProvider *)self->_visualProvider willUpdateWithData:v4];
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  currentAggregatedData = self->_currentAggregatedData;
  if (currentAggregatedData)
  {
    [(_UIStatusBarData *)currentAggregatedData applyUpdate:v4];
  }

  else
  {
    objc_storeStrong(&self->_currentAggregatedData, v4);
  }

  CategoryCachedImpl = __UILogGetCategoryCachedImpl("StatusBar", &_updateWithAggregatedData____s_category);
  if (*CategoryCachedImpl)
  {
    v12 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = v12;
      v14 = +[UIView areAnimationsEnabled];
      v15 = @"NO";
      *v16 = 134218498;
      *&v16[4] = self;
      *&v16[12] = 2112;
      if (v14)
      {
        v15 = @"YES";
      }

      *&v16[14] = v4;
      v17 = 2112;
      v18 = v15;
      _os_log_impl(&dword_188A29000, v13, OS_LOG_TYPE_ERROR, "Status bar %p now applying update: %@, animated: %@", v16, 0x20u);
    }
  }

  [(_UIStatusBar *)self _updateDisplayedItemsWithData:v4 styleAttributes:0 extraAnimations:v5, *v16];
  statusBarFlags = self->_statusBarFlags;
  if ((*&statusBarFlags & 0x200) != 0)
  {
    [(_UIStatusBarVisualProvider *)self->_visualProvider dataUpdated:v4];
    statusBarFlags = self->_statusBarFlags;
  }

  self->_statusBarFlags = (*&statusBarFlags | 1);
  [(UIPointerInteraction *)self->_pointerInteraction invalidate];
  updateCompletionHandler = [(_UIStatusBar *)self updateCompletionHandler];

  if (updateCompletionHandler)
  {
    v10 = _Block_copy(self->_updateCompletionHandler);
    updateCompletionHandler = self->_updateCompletionHandler;
    self->_updateCompletionHandler = 0;

    v10[2](v10);
  }
}

- (void)_updateDisplayedItemsWithData:(id)data styleAttributes:(id)attributes extraAnimations:(id)animations
{
  dataCopy = data;
  attributesCopy = attributes;
  animationsCopy = animations;
  if (os_variant_has_internal_diagnostics())
  {
    if (!self)
    {
      v26 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v26, OS_LOG_TYPE_FAULT, "Attempted to begin using the effective theme of a nil view.", buf, 2u);
      }
    }
  }

  else if (!self)
  {
    v27 = *(__UILogGetCategoryCachedImpl("Assert", &_updateDisplayedItemsWithData_styleAttributes_extraAnimations____s_category) + 8);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_188A29000, v27, OS_LOG_TYPE_ERROR, "Attempted to begin using the effective theme of a nil view.", buf, 2u);
    }
  }

  v28 = +[UITraitCollection _currentTraitCollectionIfExists];
  traitCollection = [(UIView *)self traitCollection];
  [UITraitCollection setCurrentTraitCollection:traitCollection];

  v11 = _UISetCurrentFallbackEnvironment(self);
  [(NSMutableDictionary *)self->_displayItemStates enumerateKeysAndObjectsUsingBlock:&__block_literal_global_104_0];
  array = [MEMORY[0x1E695DF70] array];
  *&self->_statusBarFlags |= 0x80000u;
  displayItemStates = self->_displayItemStates;
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __78___UIStatusBar__updateDisplayedItemsWithData_styleAttributes_extraAnimations___block_invoke_2;
  v34[3] = &unk_1E7121A70;
  v14 = dataCopy;
  v35 = v14;
  v15 = attributesCopy;
  v36 = v15;
  v16 = array;
  v37 = v16;
  [(NSMutableDictionary *)displayItemStates enumerateKeysAndObjectsUsingBlock:v34];
  items = self->_items;
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __78___UIStatusBar__updateDisplayedItemsWithData_styleAttributes_extraAnimations___block_invoke_3;
  v32[3] = &unk_1E7121A98;
  v18 = v14;
  v33 = v18;
  [(NSMutableDictionary *)items enumerateKeysAndObjectsUsingBlock:v32];
  *&self->_statusBarFlags &= ~0x80000u;
  [v16 addObjectsFromArray:animationsCopy];
  v19 = _UIStatusBarGetPriorityComparator();
  v20 = [v16 sortedArrayUsingComparator:v19];

  [(_UIStatusBar *)self _prepareAnimations:v16];
  if ([v16 count])
  {
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __78___UIStatusBar__updateDisplayedItemsWithData_styleAttributes_extraAnimations___block_invoke_4;
    v31[3] = &unk_1E70F3590;
    v31[4] = self;
    [UIView performWithoutAnimation:v31];
    if ((*&self->_statusBarFlags & 0x100008) != 0)
    {
      _rearrangeOverflowedItems = [(_UIStatusBar *)self _rearrangeOverflowedItems];
      if (_rearrangeOverflowedItems)
      {
        v22 = _rearrangeOverflowedItems;
        do
        {
          [v22 prepareForOverflowDataUpdate];
          v23 = [v22 updateWithData:v18 styleAttributes:v15];
          [(_UIStatusBar *)self _prepareAnimations:v23];
          [v16 addObjectsFromArray:v23];
          v30[0] = MEMORY[0x1E69E9820];
          v30[1] = 3221225472;
          v30[2] = __78___UIStatusBar__updateDisplayedItemsWithData_styleAttributes_extraAnimations___block_invoke_5;
          v30[3] = &unk_1E70F3590;
          v30[4] = self;
          [UIView performWithoutAnimation:v30];

          _rearrangeOverflowedItems2 = [(_UIStatusBar *)self _rearrangeOverflowedItems];

          v22 = _rearrangeOverflowedItems2;
        }

        while (_rearrangeOverflowedItems2);
      }
    }

    [(_UIStatusBar *)self _performAnimations:v16];
    [(UIView *)self layoutIfNeeded];
  }

  else
  {
    [(UIView *)self setNeedsUpdateConstraints];
    if ((*&self->_statusBarFlags & 0x100008) != 0)
    {
      do
      {
        [(UIView *)self layoutIfNeeded];
        _rearrangeOverflowedItems3 = [(_UIStatusBar *)self _rearrangeOverflowedItems];
      }

      while (_rearrangeOverflowedItems3);
    }

    *&self->_statusBarFlags |= 1u;
  }

  [(_UIStatusBar *)self _fixupDisplayItemAttributes];
  _UIRestorePreviousFallbackEnvironment(v11);
  [UITraitCollection setCurrentTraitCollection:v28];
}

- (void)_prepareAnimations:(id)animations
{
  v34 = *MEMORY[0x1E69E9840];
  animationsCopy = animations;
  [_UIStatusBarAnimation prepareAnimations:animationsCopy forStatusBar:self];
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v5 = animationsCopy;
  v23 = [v5 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v23)
  {
    obj = v5;
    v21 = *v29;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v29 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v28 + 1) + 8 * i);
        effectiveDelayedItemIdentifiers = [v7 effectiveDelayedItemIdentifiers];
        if ([effectiveDelayedItemIdentifiers count])
        {
          v22 = v7;
          v9 = [MEMORY[0x1E695DFA8] set];
          v24 = 0u;
          v25 = 0u;
          v26 = 0u;
          v27 = 0u;
          v10 = effectiveDelayedItemIdentifiers;
          v11 = [v10 countByEnumeratingWithState:&v24 objects:v32 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v25;
            do
            {
              for (j = 0; j != v12; ++j)
              {
                if (*v25 != v13)
                {
                  objc_enumerationMutation(v10);
                }

                v15 = [(_UIStatusBar *)self itemWithIdentifier:*(*(&v24 + 1) + 8 * j)];
                dependentEntryKeys = [v15 dependentEntryKeys];
                [v9 unionSet:dependentEntryKeys];
              }

              v12 = [v10 countByEnumeratingWithState:&v24 objects:v32 count:16];
            }

            while (v12);
          }

          if ([v9 count])
          {
            [(_UIStatusBar *)self _delayUpdatesWithKeys:v9 fromAnimation:v22];
          }
        }
      }

      v5 = obj;
      v23 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v23);
  }

  if (self->_updateCompletionHandler && [v5 count])
  {
    v17 = _Block_copy(self->_updateCompletionHandler);
    updateCompletionHandler = self->_updateCompletionHandler;
    self->_updateCompletionHandler = 0;

    v19 = dispatch_group_create();
    [_UIStatusBarAnimation _addAnimations:v5 toDispatchGroup:v19];
    dispatch_group_notify(v19, MEMORY[0x1E69E96A0], v17);
  }
}

- (void)_delayUpdatesWithKeys:(id)keys fromAnimation:(id)animation
{
  keysCopy = keys;
  dataAggregator = self->_dataAggregator;
  animationCopy = animation;
  [(_UIStatusBarDataAggregator *)dataAggregator beginDelayingUpdatesForEntryKeys:keysCopy];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __52___UIStatusBar__delayUpdatesWithKeys_fromAnimation___block_invoke;
  v10[3] = &unk_1E70F35B8;
  v10[4] = self;
  v11 = keysCopy;
  v9 = keysCopy;
  [animationCopy addTotalCompletionHandler:v10];
}

- (void)updateForcingIterativeOverflow
{
  *&self->_statusBarFlags |= 0x100000u;
  [(_UIStatusBar *)self updateWithAnimations:MEMORY[0x1E695E0F0]];
  *&self->_statusBarFlags &= ~0x100000u;
}

- (void)_performAnimations:(id)animations
{
  v18 = *MEMORY[0x1E69E9840];
  animationsCopy = animations;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [animationsCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(animationsCopy);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if ([v9 type] == 1 && (objc_msgSend(v9, "displayItemIdentifier"), v10 = objc_claimAutoreleasedReturnValue(), -[_UIStatusBar displayItemWithIdentifier:](self, "displayItemWithIdentifier:", v10), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "visible"), v11, v10, !v12))
        {
          [v9 cancel];
        }

        else
        {
          [v9 performForStatusBar:self];
        }
      }

      v6 = [animationsCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }
}

- (void)_fixupDisplayItemAttributes
{
  v3 = _statusBarRunningAnimations;
  v4 = [v3 count];

  if (!v4 && ((*(&self->_statusBarFlags + 1) & 4) == 0 || [(_UIStatusBarVisualProvider *)self->_visualProvider canFixupDisplayItemAttributes]))
  {
    regions = self->_regions;

    [(NSDictionary *)regions enumerateKeysAndObjectsUsingBlock:&__block_literal_global_110_1];
  }
}

+ (double)_effectiveScaleForVisualProviderClass:(Class)class targetScreen:(id)screen
{
  screenCopy = screen;
  v6 = 1.0;
  if ([(objc_class *)class scalesWithScreenNativeScale])
  {
    [screenCopy _nativeScale];
    v8 = v7;
    if (objc_opt_respondsToSelector())
    {
      [(objc_class *)class referenceScreenScale];
    }

    else
    {
      [screenCopy _scale];
    }

    if (v8 != 0.0 && vabdd_f64(v9, v8) > 0.00000011920929)
    {
      v6 = v9 / v8;
    }
  }

  return v6;
}

- (CGAffineTransform)_effectiveScaleTransform
{
  if ((LOBYTE(self[8].tx) & 2) == 0)
  {
    goto LABEL_2;
  }

  selfCopy = self;
  _screen = [(CGAffineTransform *)self _screen];
  [_screen _nativeScale];
  v9 = v8;

  if ((LOBYTE(selfCopy[8].tx) & 4) != 0)
  {
    [*&selfCopy[11].ty referenceScreenScale];
    v12 = v13;
  }

  else
  {
    _screen2 = [(CGAffineTransform *)selfCopy _screen];
    [_screen2 _scale];
    v12 = v11;
  }

  self = [(CGAffineTransform *)selfCopy mode];
  if (self == 1 || v9 == 0.0 || vabdd_f64(v12, v9) <= 0.00000011920929)
  {
LABEL_2:
    v4 = MEMORY[0x1E695EFD0];
    v5 = *(MEMORY[0x1E695EFD0] + 16);
    *&retstr->a = *MEMORY[0x1E695EFD0];
    *&retstr->c = v5;
    *&retstr->tx = *(v4 + 32);
  }

  else
  {

    return CGAffineTransformMakeScale(retstr, v12 / v9, v12 / v9);
  }

  return self;
}

- (void)resizeSubviewsWithOldSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v12.receiver = self;
  v12.super_class = _UIStatusBar;
  [(UIView *)&v12 resizeSubviewsWithOldSize:?];
  [(UIView *)self bounds];
  if (width != v7 || height != v6)
  {
    [(NSMutableDictionary *)self->_displayItemStates enumerateKeysAndObjectsUsingBlock:&__block_literal_global_117_1];
  }

  [(_UIStatusBar *)self _effectiveScaleTransform];
  foregroundView = self->_foregroundView;
  v11[0] = v11[3];
  v11[1] = v11[4];
  v11[2] = v11[5];
  [(UIView *)foregroundView setTransform:v11];
  [(UIView *)self bounds];
  [(UIView *)self->_foregroundView setFrame:?];
  [(UIView *)self setNeedsUpdateConstraints];
  statusBarFlags = self->_statusBarFlags;
  self->_statusBarFlags = (*&statusBarFlags | 1);
  if ((*&statusBarFlags & 0x800) != 0)
  {
    [(_UIStatusBarVisualProvider *)self->_visualProvider sizeUpdatedFromSize:width, height];
  }
}

- (void)updateConstraints
{
  v3.receiver = self;
  v3.super_class = _UIStatusBar;
  [(UIView *)&v3 updateConstraints];
  if ((*(&self->_statusBarFlags + 2) & 8) == 0)
  {
    [(_UIStatusBar *)self _updateRegionItems];
  }
}

- (void)layoutSubviews
{
  v7.receiver = self;
  v7.super_class = _UIStatusBar;
  layoutSubviews = [(UIView *)&v7 layoutSubviews];
  __30___UIStatusBar_layoutSubviews__block_invoke(layoutSubviews, self->_foregroundView);
  regions = self->_regions;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __30___UIStatusBar_layoutSubviews__block_invoke_2;
  v6[3] = &__block_descriptor_40_e45_v32__0__NSString_8___UIStatusBarRegion_16_B24lu32l8;
  v6[4] = &__block_literal_global_124_2;
  [(NSDictionary *)regions enumerateKeysAndObjectsUsingBlock:v6];
  [(UIView *)self->_foregroundView layoutIfNeeded];
  if ((*&self->_statusBarFlags & 0x100008) == 0)
  {
    _rearrangeOverflowedItems = [(_UIStatusBar *)self _rearrangeOverflowedItems];
  }

  [(UIView *)self layoutIfNeeded];
}

- (void)_updateRegionItems
{
  v61 = *MEMORY[0x1E69E9840];
  if (!self->_currentData)
  {
    return;
  }

  selfCopy = self;
  v3 = 512;
  [(NSMutableDictionary *)self->_displayItemStates enumerateKeysAndObjectsUsingBlock:&__block_literal_global_127_0];
  [(NSDictionary *)selfCopy->_regions keysSortedByValueUsingComparator:&__block_literal_global_130_2];
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  obj = v57 = 0u;
  v40 = [obj countByEnumeratingWithState:&v54 objects:v60 count:16];
  if (!v40)
  {
    goto LABEL_35;
  }

  v38 = 0;
  v39 = *v55;
  v45 = selfCopy;
  do
  {
    for (i = 0; i != v40; i = v23 + 1)
    {
      if (*v55 != v39)
      {
        objc_enumerationMutation(obj);
      }

      v42 = i;
      v5 = *(*(&v54 + 1) + 8 * i);
      v41 = [(NSDictionary *)selfCopy->_regions objectForKeyedSubscript:v5];
      v6 = objc_alloc_init(MEMORY[0x1E695DFA0]);
      v7 = [(_UIStatusBarVisualProvider *)selfCopy->_visualProvider orderedDisplayItemPlacementsInRegionWithIdentifier:v5];
      v50 = 0u;
      v51 = 0u;
      v52 = 0u;
      v53 = 0u;
      v44 = v7;
      v8 = [v7 countByEnumeratingWithState:&v50 objects:v59 count:16];
      v43 = v6;
      if (v8)
      {
        v9 = v8;
        v10 = *v51;
        do
        {
          for (j = 0; j != v9; ++j)
          {
            if (*v51 != v10)
            {
              objc_enumerationMutation(v44);
            }

            v12 = *(*(&v50 + 1) + 8 * j);
            identifier = [v12 identifier];
            v14 = v3;
            v15 = [*(&selfCopy->super.super.super.isa + v3) objectForKeyedSubscript:identifier];
            v16 = [v15 isCurrentPlacement:v12];

            if (v16)
            {
              v17 = [_UIStatusBarItem itemIdentifierForDisplayItemIdentifier:identifier];
              v18 = [(_UIStatusBar *)selfCopy itemWithIdentifier:v17];
              identifier2 = [v12 identifier];
              v20 = [v18 displayItemForIdentifier:identifier2];

              v6 = v43;
              [v20 setPlacement:v12];
              [v43 addObject:v20];

              selfCopy = v45;
            }

            v3 = v14;
          }

          v9 = [v44 countByEnumeratingWithState:&v50 objects:v59 count:16];
        }

        while (v9);
      }

      displayItems = [v41 displayItems];
      v22 = [v6 isEqual:displayItems];

      if (v22)
      {
        v23 = v42;
LABEL_19:
        v24 = v43;
        goto LABEL_23;
      }

      v23 = v42;
      if ((*(&selfCopy->_statusBarFlags + 1) & 0x10) == 0)
      {
        goto LABEL_19;
      }

      v24 = v43;
      v25 = [(_UIStatusBarVisualProvider *)selfCopy->_visualProvider region:v41 willSetDisplayItems:v43];
      v26 = v25;
      if (v25 != v43)
      {
        v27 = [v25 mutableCopy];

        v24 = v27;
      }

LABEL_23:
      [v41 setDisplayItems:v24];
      displayItems2 = [v41 displayItems];
      [v24 minusOrderedSet:displayItems2];

      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v29 = v24;
      v30 = [v29 countByEnumeratingWithState:&v46 objects:v58 count:16];
      if (v30)
      {
        v31 = v30;
        v32 = *v47;
        do
        {
          for (k = 0; k != v31; ++k)
          {
            if (*v47 != v32)
            {
              objc_enumerationMutation(v29);
            }

            v34 = *(&v45->super.super.super.isa + v3);
            identifier3 = [*(*(&v46 + 1) + 8 * k) identifier];
            v36 = [v34 objectForKeyedSubscript:identifier3];
            [v36 updateToNextEnabledPlacement];
          }

          v31 = [v29 countByEnumeratingWithState:&v46 objects:v58 count:16];
        }

        while (v31);
        v38 = 1;
        selfCopy = v45;
      }
    }

    v40 = [obj countByEnumeratingWithState:&v54 objects:v60 count:16];
  }

  while (v40);
  if (v38)
  {
    [(_UIStatusBar *)selfCopy _updateRegionItems];
  }

LABEL_35:
  if ((*(&selfCopy->_statusBarFlags + 1) & 0x20) != 0)
  {
    [(_UIStatusBarVisualProvider *)selfCopy->_visualProvider statusBarRegionsUpdated];
  }
}

- (id)_rearrangeOverflowedItems
{
  [(UIView *)self frame];
  if (CGRectIsEmpty(v16))
  {
    v3 = 0;
  }

  else
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x3032000000;
    v12 = __Block_byref_object_copy__184;
    v13 = __Block_byref_object_dispose__184;
    v14 = 0;
    regions = self->_regions;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __41___UIStatusBar__rearrangeOverflowedItems__block_invoke;
    v8[3] = &unk_1E7121B40;
    v8[4] = self;
    v8[5] = &v9;
    [(NSDictionary *)regions enumerateKeysAndObjectsUsingBlock:v8];
    v5 = v10[5];
    if (v5)
    {
      [v5 updateToNextEnabledPlacement];
      [(UIView *)self setNeedsUpdateConstraints];
      [(UIView *)self setNeedsLayout];
      v6 = v10[5];
    }

    else
    {
      v6 = 0;
    }

    v3 = v6;
    _Block_object_dispose(&v9, 8);
  }

  return v3;
}

- (CGRect)_extendedHoverFrameForActionable:(id)actionable
{
  actionableCopy = actionable;
  [actionableCopy absoluteHoverFrame];
  x = v22.origin.x;
  y = v22.origin.y;
  width = v22.size.width;
  height = v22.size.height;
  if (!CGRectIsNull(v22))
  {
    [actionableCopy extendedHoverInsets];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    if ([(UIView *)self effectiveUserInterfaceLayoutDirection]== UIUserInterfaceLayoutDirectionRightToLeft)
    {
      v17 = v16;
    }

    else
    {
      v17 = v12;
    }

    x = x + v17;
    y = y + v10;
    width = width - (v16 + v12);
    height = height - (v10 + v14);
  }

  v18 = x;
  v19 = y;
  v20 = width;
  v21 = height;
  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

- (BOOL)_cursorLocation:(CGPoint)location isInsideActionable:(id)actionable
{
  y = location.y;
  x = location.x;
  [(_UIStatusBar *)self _frameForActionable:actionable];
  v10 = x;
  v11 = y;

  return CGRectContainsPoint(*&v6, *&v10);
}

- (BOOL)_cursorLocation:(CGPoint)location isInsideHoverableActionable:(id)actionable
{
  y = location.y;
  x = location.x;
  actionableCopy = actionable;
  hoverView = [actionableCopy hoverView];
  [(_UIStatusBar *)self _extendedHoverFrameForActionable:actionableCopy];
  v9 = v17.origin.x;
  v10 = v17.origin.y;
  width = v17.size.width;
  height = v17.size.height;
  if (CGRectIsNull(v17))
  {
    v13 = [(_UIStatusBar *)self _cursorLocation:actionableCopy isInsideActionable:x, y];
  }

  else
  {
    v18.origin.x = v9;
    v18.origin.y = v10;
    v18.size.width = width;
    v18.size.height = height;
    v16.x = x;
    v16.y = y;
    v13 = CGRectContainsPoint(v18, v16);
  }

  v14 = v13;

  return v14;
}

- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region
{
  interactionCopy = interaction;
  requestCopy = request;
  regionCopy = region;
  regionActionValidationBlock = self->_regionActionValidationBlock;
  if (regionActionValidationBlock && !regionActionValidationBlock[2]())
  {
    height = 0;
  }

  else
  {
    v37 = 0;
    v38 = &v37;
    v39 = 0x3032000000;
    v40 = __Block_byref_object_copy__184;
    v41 = __Block_byref_object_dispose__184;
    v42 = 0;
    v31 = 0;
    v32 = &v31;
    v33 = 0x3032000000;
    v34 = __Block_byref_object_copy__184;
    v35 = __Block_byref_object_dispose__184;
    v36 = 0;
    regions = self->_regions;
    v23 = MEMORY[0x1E69E9820];
    v24 = 3221225472;
    v25 = __66___UIStatusBar_pointerInteraction_regionForRequest_defaultRegion___block_invoke;
    v26 = &unk_1E7121B90;
    selfCopy = self;
    v28 = requestCopy;
    v29 = &v37;
    v30 = &v31;
    [(NSDictionary *)regions enumerateKeysAndObjectsUsingBlock:&v23];
    if (v38[5])
    {
      [(_UIStatusBar *)self _extendedHoverFrameForActionable:v23, v24, v25, v26, selfCopy];
      x = v44.origin.x;
      y = v44.origin.y;
      width = v44.size.width;
      height = v44.size.height;
      if (CGRectIsNull(v44))
      {
        [(_UIStatusBar *)self _pressFrameForActionable:v38[5]];
        x = v17;
        y = v18;
        width = v19;
        height = v20;
      }

      height = [UIPointerRegion regionWithRect:v32[5] identifier:x, y, width, height];
    }

    else
    {
      height = 0;
    }

    _Block_object_dispose(&v31, 8);
    _Block_object_dispose(&v37, 8);
  }

  return height;
}

- (void)pointerInteraction:(id)interaction willEnterRegion:(id)region animator:(id)animator
{
  identifier = [region identifier];
  v8 = identifier;
  if (identifier)
  {
    v7 = [(_UIStatusBar *)self regionWithIdentifier:identifier];
    if (!v7)
    {
      v7 = [(_UIStatusBar *)self displayItemWithIdentifier:v8];
    }

    objc_storeWeak(&self->_hoveredActionable, v7);
  }

  else
  {
    objc_storeWeak(&self->_hoveredActionable, 0);
  }
}

- (id)pointerInteraction:(id)interaction styleForRegion:(id)region
{
  WeakRetained = objc_loadWeakRetained(&self->_hoveredActionable);
  hoverView = [WeakRetained hoverView];

  if (!hoverView)
  {
    v25 = 0;
    goto LABEL_13;
  }

  v7 = objc_loadWeakRetained(&self->_hoveredActionable);
  [v7 absoluteHoverFrame];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v16 = objc_loadWeakRetained(&self->_hoveredActionable);
  hoverHighlightsAsRegion = [v16 hoverHighlightsAsRegion];

  v42.origin.x = v9;
  v42.origin.y = v11;
  v42.size.width = v13;
  v42.size.height = v15;
  if (!CGRectIsNull(v42))
  {
    v26 = objc_opt_new();
    [(UIView *)self convertRect:hoverView toView:v9, v11, v13, v15];
    v27 = [UIBezierPath bezierPathWithRect:?];
    [v26 setVisiblePath:v27];

    v22 = [[UITargetedPreview alloc] initWithView:hoverView parameters:v26];
    if ((hoverHighlightsAsRegion & 1) == 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    v23 = [(UIPointerEffect *)UIPointerHighlightEffect effectWithPreview:v22];
    visualProvider = [(_UIStatusBar *)self visualProvider];
    v29 = [visualProvider conformsToProtocol:&unk_1F00A20A0];

    if (v29)
    {
      visualProvider2 = [(_UIStatusBar *)self visualProvider];
      [objc_opt_class() regionCursorInsets];
      v9 = v9 + v31;
      v11 = v11 + v32;
      v13 = v13 - (v31 + v33);
      v15 = v15 - (v32 + v34);

      visualProvider3 = [(_UIStatusBar *)self visualProvider];
      regionCursorIsPill = [objc_opt_class() regionCursorIsPill];

      if ((regionCursorIsPill & 1) == 0)
      {
        visualProvider4 = [(_UIStatusBar *)self visualProvider];
        [objc_opt_class() regionCursorCornerRadius];
        v24 = v38;

        goto LABEL_12;
      }
    }

    else
    {
      v9 = v9 + -8.0;
      v11 = v11 + -2.0;
      v13 = v13 + 16.0;
      v15 = v15 + 4.0;
    }

    v43.origin.x = v9;
    v43.origin.y = v11;
    v43.size.width = v13;
    v43.size.height = v15;
    v24 = CGRectGetHeight(v43) * 0.5;
    goto LABEL_12;
  }

  [hoverView frame];
  v9 = v18;
  v11 = v19;
  v13 = v20;
  v15 = v21;
  v22 = [[UITargetedPreview alloc] initWithView:hoverView];
  if (hoverHighlightsAsRegion)
  {
    goto LABEL_7;
  }

LABEL_4:
  v23 = [(UIPointerEffect *)UIPointerLiftEffect effectWithPreview:v22];
  v24 = 0.0;
LABEL_12:
  v39 = [UIPointerShape shapeWithRoundedRect:v9 cornerRadius:v11, v13, v15, v24];
  v25 = [UIPointerStyle styleWithEffect:v23 shape:v39];

LABEL_13:

  return v25;
}

- (CGRect)_frameForActionable:(id)actionable
{
  actionableCopy = actionable;
  [actionableCopy actionInsets];
  [(_UIStatusBar *)self _frameForActionable:actionableCopy actionInsets:?];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (CGRect)_pressFrameForActionable:(id)actionable
{
  [(_UIStatusBar *)self _frameForActionable:actionable actionInsets:0.0, 0.0, 0.0, 0.0];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)_frameForActionable:(id)actionable actionInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  actionableCopy = actionable;
  layoutItem = [actionableCopy layoutItem];
  [layoutItem _ui_bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  layoutItem2 = [actionableCopy layoutItem];

  _ui_view = [layoutItem2 _ui_view];
  [_ui_view convertRect:self toView:{v12, v14, v16, v18}];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;

  [(UIView *)self _currentScreenScale];

  v30 = UIRectIntegralWithScale(left + v22, top + v24, v26 - (left + right), v28 - (top + bottom), v29);
  result.size.height = v33;
  result.size.width = v32;
  result.origin.y = v31;
  result.origin.x = v30;
  return result;
}

- (void)_updateActionGestureRecognizerAllowableTouchTypesIfNeeded
{
  visualProvider = self->_visualProvider;
  if (visualProvider)
  {
    if ([(_UIStatusBarVisualProvider *)visualProvider supportsIndirectPointerTouchActions])
    {
      v4 = &unk_1EFE2D7E0;
    }

    else
    {
      v4 = &unk_1EFE2D7C8;
    }

    actionGestureRecognizer = self->_actionGestureRecognizer;

    [(UIGestureRecognizer *)actionGestureRecognizer setAllowedTouchTypes:v4];
  }
}

- (BOOL)_gestureRecognizer:(id)recognizer isInsideActionable:(id)actionable
{
  recognizerCopy = recognizer;
  actionableCopy = actionable;
  v8 = [(_UIStatusBar *)self _gestureRecognizer:recognizerCopy touchInsideActionable:actionableCopy]|| [(_UIStatusBar *)self _gestureRecognizer:recognizerCopy pressInsideActionable:actionableCopy];

  return v8;
}

- (BOOL)_gestureRecognizer:(id)recognizer touchInsideActionable:(id)actionable
{
  actionableCopy = actionable;
  [recognizer locationInView:self];
  v8 = v7;
  v10 = v9;
  [(_UIStatusBar *)self _frameForActionable:actionableCopy];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v19 = v12;
  v20 = v14;
  v21 = v16;
  v22 = v18;
  v23 = v8;
  v24 = v10;

  return CGRectContainsPoint(*&v19, *&v23);
}

- (BOOL)_gestureRecognizer:(id)recognizer pressInsideActionable:(id)actionable
{
  actionableCopy = actionable;
  _focusSystem = [(UIView *)self _focusSystem];
  focusedItem = [_focusSystem focusedItem];

  focusItemContainer = [focusedItem focusItemContainer];
  [(_UIStatusBar *)self _pressFrameForActionable:actionableCopy];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  [focusedItem frame];
  v23.origin.x = v17;
  v23.origin.y = v18;
  v23.size.width = v19;
  v23.size.height = v20;
  v22.origin.x = v10;
  v22.origin.y = v12;
  v22.size.width = v14;
  v22.size.height = v16;
  LOBYTE(self) = CGRectContainsRect(v22, v23);

  return self;
}

- (void)statusBarGesture:(id)gesture
{
  gestureCopy = gesture;
  state = [gestureCopy state];
  v5 = state;
  v6 = state - 1;
  if ((state - 1) > 2)
  {
    if ((state - 3) > 2)
    {
      v9 = 0;
      goto LABEL_19;
    }

    v9 = 0;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_targetActionable);
    v8 = [(_UIStatusBar *)self _gestureRecognizer:gestureCopy isInsideActionable:WeakRetained];

    if (v8)
    {
      v9 = objc_loadWeakRetained(&self->_targetActionable);
    }

    else
    {
      v9 = 0;
    }

    if (v6 <= 1)
    {
      v10 = objc_loadWeakRetained(&self->_targetActionable);
      if (v10)
      {
        statusBarFlags = self->_statusBarFlags;

        if ((*&statusBarFlags & 0x4000) != 0)
        {
          visualProvider = self->_visualProvider;
          v13 = objc_loadWeakRetained(&self->_targetActionable);
          [(_UIStatusBarVisualProvider *)visualProvider actionable:v13 highlighted:v9 != 0 initialPress:v5 == 1];
        }
      }

      goto LABEL_19;
    }

    hoverAction = [v9 hoverAction];
    if (hoverAction || ([v9 action], (hoverAction = objc_claimAutoreleasedReturnValue()) != 0) || (-[_UIStatusBar action](self, "action"), (hoverAction = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v15 = hoverAction;
      [hoverAction performWithStatusBar:self completionHandler:0];
    }
  }

  if ((*(&self->_statusBarFlags + 1) & 0x40) != 0)
  {
    v16 = self->_visualProvider;
    v17 = objc_loadWeakRetained(&self->_targetActionable);
    [(_UIStatusBarVisualProvider *)v16 actionable:v17 highlighted:0 initialPress:0];
  }

  objc_storeWeak(&self->_targetActionable, 0);
LABEL_19:
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  WeakRetained = objc_loadWeakRetained(&self->_hoveredActionable);

  if (WeakRetained)
  {
    v6 = objc_loadWeakRetained(&self->_hoveredActionable);
    objc_storeWeak(&self->_targetActionable, v6);
  }

  else
  {
    regions = self->_regions;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __45___UIStatusBar_gestureRecognizerShouldBegin___block_invoke;
    v11[3] = &unk_1E7121BE0;
    v11[4] = self;
    v12 = beginCopy;
    [(NSDictionary *)regions enumerateKeysAndObjectsUsingBlock:v11];
  }

  v8 = objc_loadWeakRetained(&self->_targetActionable);
  v9 = v8 != 0;

  return v9;
}

- (id)_actionablesForPartWithIdentifier:(id)identifier includeInternalItems:(BOOL)items onlyVisible:(BOOL)visible
{
  visibleCopy = visible;
  itemsCopy = items;
  v29 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v9 = [MEMORY[0x1E695DFA8] set];
  [(_UIStatusBar *)self _prepareVisualProviderIfNeeded];
  v10 = [MEMORY[0x1E695DFD8] set];
  if (itemsCopy)
  {
    v11 = [_UIStatusBarIdentifier displayIdentifierFromStringRepresentation:identifierCopy];
    if (v11)
    {
      v12 = [MEMORY[0x1E695DFD8] setWithObject:v11];

      v10 = v12;
    }
  }

  if ((*(&self->_statusBarFlags + 1) & 0x80) != 0)
  {
    v13 = [(_UIStatusBarVisualProvider *)self->_visualProvider displayItemIdentifiersForPartWithIdentifier:identifierCopy];
    v14 = [v10 setByAddingObjectsFromSet:v13];

    v10 = v14;
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v15 = v10;
  v16 = [v15 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v25;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v25 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = [(_UIStatusBar *)self displayItemWithIdentifier:*(*(&v24 + 1) + 8 * i), v24];
        v21 = v20;
        if (v20 && (!visibleCopy || [v20 visible]))
        {
          [v9 addObject:v21];
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v17);
  }

  if (![v9 count])
  {
    v22 = [(_UIStatusBar *)self _regionsForPartWithIdentifier:identifierCopy includeInternalItems:itemsCopy];
    [v9 unionSet:v22];
  }

  return v9;
}

- (id)_regionsForPartWithIdentifier:(id)identifier includeInternalItems:(BOOL)items
{
  v23 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v7 = [MEMORY[0x1E695DFA8] set];
  [(_UIStatusBar *)self _prepareVisualProviderIfNeeded];
  if (items)
  {
    [MEMORY[0x1E695DFD8] setWithObject:identifierCopy];
  }

  else
  {
    [MEMORY[0x1E695DFD8] set];
  }
  v8 = ;
  if (*(&self->_statusBarFlags + 2))
  {
    v9 = [(_UIStatusBarVisualProvider *)self->_visualProvider regionIdentifiersForPartWithIdentifier:identifierCopy];
    v10 = [v8 setByAddingObjectsFromSet:v9];

    v8 = v10;
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = v8;
  v12 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v19;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [(NSDictionary *)self->_regions objectForKeyedSubscript:*(*(&v18 + 1) + 8 * i), v18];
        if (v16)
        {
          [v7 addObject:v16];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v13);
  }

  return v7;
}

- (void)setAction:(id)action forPartWithIdentifier:(id)identifier
{
  v17 = *MEMORY[0x1E69E9840];
  actionCopy = action;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = [(_UIStatusBar *)self _actionablesForPartWithIdentifier:identifier includeInternalItems:0 onlyVisible:0, 0];
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v12 + 1) + 8 * v11++) setAction:actionCopy];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (id)actionForPartWithIdentifier:(id)identifier
{
  v3 = [(_UIStatusBar *)self _actionablesForPartWithIdentifier:identifier includeInternalItems:0 onlyVisible:0];
  anyObject = [v3 anyObject];
  action = [anyObject action];

  return action;
}

- (void)setOffset:(UIOffset)offset forPartWithIdentifier:(id)identifier
{
  vertical = offset.vertical;
  horizontal = offset.horizontal;
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [(_UIStatusBar *)self _regionsForPartWithIdentifier:identifier includeInternalItems:0, 0];
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
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

        [*(*(&v11 + 1) + 8 * v10++) setOffset:{horizontal, vertical}];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (UIOffset)offsetForPartWithIdentifier:(id)identifier
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = [(_UIStatusBar *)self _regionsForPartWithIdentifier:identifier includeInternalItems:0, 0];
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  v5 = 0.0;
  if (v4)
  {
    v6 = v4;
    v7 = *v16;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        if ([v9 offsetable])
        {
          [v9 offset];
          v5 = v11;
          v10 = v12;
          goto LABEL_11;
        }
      }

      v6 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0.0;
LABEL_11:

  v13 = v5;
  v14 = v10;
  result.vertical = v14;
  result.horizontal = v13;
  return result;
}

- (void)setAlpha:(double)alpha forPartWithIdentifier:(id)identifier
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(_UIStatusBar *)self _regionsForPartWithIdentifier:identifier includeInternalItems:0, 0];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        contentView = [*(*(&v11 + 1) + 8 * v9) contentView];
        [contentView setAlpha:alpha];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (double)alphaForPartWithIdentifier:(id)identifier
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = [(_UIStatusBar *)self _regionsForPartWithIdentifier:identifier includeInternalItems:0, 0];
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  v5 = 1.0;
  if (v4)
  {
    v6 = v4;
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        contentView = [v9 contentView];

        if (contentView)
        {
          contentView2 = [v9 contentView];
          [contentView2 alpha];
          v5 = v12;

          goto LABEL_11;
        }
      }

      v6 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v5;
}

- (void)setStyle:(int64_t)style forPartWithIdentifier:(id)identifier
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [(_UIStatusBar *)self _regionsForPartWithIdentifier:identifier includeInternalItems:0];
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        if ([v12 style] != style)
        {
          [v12 setStyle:style];
          v9 = 1;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);

    if (v9)
    {
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __47___UIStatusBar_setStyle_forPartWithIdentifier___block_invoke;
      v13[3] = &unk_1E70F3590;
      v13[4] = self;
      [(_UIStatusBar *)self _performWithInheritedAnimation:v13];
    }
  }

  else
  {
  }
}

- (int64_t)styleForPartWithIdentifier:(id)identifier
{
  v3 = [(_UIStatusBar *)self _regionsForPartWithIdentifier:identifier includeInternalItems:0];
  anyObject = [v3 anyObject];
  style = [anyObject style];

  return style;
}

- (void)setEnabledPartIdentifiers:(id)identifiers
{
  v41 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  if (self->_enabledPartIdentifiers != identifiersCopy)
  {
    objc_storeStrong(&self->_enabledPartIdentifiers, identifiers);
    [(_UIStatusBar *)self _prepareVisualProviderIfNeeded];
    v35 = 0;
    v36 = &v35;
    v37 = 0x2020000000;
    v38 = 0;
    v5 = [MEMORY[0x1E695DFD8] set];
    if (identifiersCopy)
    {
      v20 = v5;
      v6 = MEMORY[0x1E695DFA8];
      allKeys = [(NSDictionary *)self->_regions allKeys];
      v8 = [v6 setWithArray:allKeys];

      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      obj = identifiersCopy;
      v9 = [(NSArray *)obj countByEnumeratingWithState:&v31 objects:v40 count:16];
      if (v9)
      {
        v10 = *v32;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v32 != v10)
            {
              objc_enumerationMutation(obj);
            }

            v12 = *(*(&v31 + 1) + 8 * i);
            v27 = 0u;
            v28 = 0u;
            v29 = 0u;
            v30 = 0u;
            v13 = [(_UIStatusBar *)self _regionsForPartWithIdentifier:v12 includeInternalItems:0];
            v14 = [v13 countByEnumeratingWithState:&v27 objects:v39 count:16];
            if (v14)
            {
              v15 = *v28;
              do
              {
                for (j = 0; j != v14; ++j)
                {
                  if (*v28 != v15)
                  {
                    objc_enumerationMutation(v13);
                  }

                  identifier = [*(*(&v27 + 1) + 8 * j) identifier];
                  [v8 removeObject:identifier];
                }

                v14 = [v13 countByEnumeratingWithState:&v27 objects:v39 count:16];
              }

              while (v14);
            }
          }

          v9 = [(NSArray *)obj countByEnumeratingWithState:&v31 objects:v40 count:16];
        }

        while (v9);
      }
    }

    else
    {
      v8 = v5;
    }

    regions = self->_regions;
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __42___UIStatusBar_setEnabledPartIdentifiers___block_invoke;
    v24[3] = &unk_1E7121B40;
    v19 = v8;
    v25 = v19;
    v26 = &v35;
    [(NSDictionary *)regions enumerateKeysAndObjectsUsingBlock:v24];
    if (*(v36 + 24) == 1)
    {
      if ((*(&self->_statusBarFlags + 2) & 2) != 0)
      {
        [(_UIStatusBarVisualProvider *)self->_visualProvider statusBarEnabledPartsUpdated];
      }

      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __42___UIStatusBar_setEnabledPartIdentifiers___block_invoke_2;
      v23[3] = &unk_1E70F3590;
      v23[4] = self;
      [(_UIStatusBar *)self _performWithInheritedAnimation:v23];
    }

    _Block_object_dispose(&v35, 8);
  }
}

- (void)setDisabledPartIdentifiers:(id)identifiers
{
  v53 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  if (self->_disabledPartIdentifiers != identifiersCopy)
  {
    obj = identifiers;
    [(_UIStatusBar *)self _prepareVisualProviderIfNeeded];
    v31 = identifiersCopy;
    v6 = [(NSArray *)self->_disabledPartIdentifiers arrayByExcludingObjectsInArray:identifiersCopy];
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v45 objects:v52 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = *v46;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v46 != v10)
          {
            objc_enumerationMutation(v6);
          }

          v12 = *(*(&v45 + 1) + 8 * i);
          v41 = 0u;
          v42 = 0u;
          v43 = 0u;
          v44 = 0u;
          v13 = [(_UIStatusBar *)self _actionablesForPartWithIdentifier:v12 includeInternalItems:1 onlyVisible:0];
          v14 = [v13 countByEnumeratingWithState:&v41 objects:v51 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v42;
            do
            {
              for (j = 0; j != v15; ++j)
              {
                if (*v42 != v16)
                {
                  objc_enumerationMutation(v13);
                }

                [*(*(&v41 + 1) + 8 * j) enableWithToken:2];
              }

              v15 = [v13 countByEnumeratingWithState:&v41 objects:v51 count:16];
            }

            while (v15);
            v9 = 1;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v45 objects:v52 count:16];
      }

      while (v8);
    }

    else
    {
      v9 = 0;
    }

    v18 = [(NSArray *)v31 arrayByExcludingObjectsInArray:self->_disabledPartIdentifiers];
    objc_storeStrong(&self->_disabledPartIdentifiers, obj);
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v19 = v18;
    v20 = [v19 countByEnumeratingWithState:&v37 objects:v50 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v38;
      do
      {
        for (k = 0; k != v21; ++k)
        {
          if (*v38 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v37 + 1) + 8 * k);
          v33 = 0u;
          v34 = 0u;
          v35 = 0u;
          v36 = 0u;
          v25 = [(_UIStatusBar *)self _actionablesForPartWithIdentifier:v24 includeInternalItems:1 onlyVisible:0];
          v26 = [v25 countByEnumeratingWithState:&v33 objects:v49 count:16];
          if (v26)
          {
            v27 = v26;
            v28 = *v34;
            do
            {
              for (m = 0; m != v27; ++m)
              {
                if (*v34 != v28)
                {
                  objc_enumerationMutation(v25);
                }

                [*(*(&v33 + 1) + 8 * m) disableWithToken:2];
              }

              v27 = [v25 countByEnumeratingWithState:&v33 objects:v49 count:16];
            }

            while (v27);
            v9 = 1;
          }
        }

        v21 = [v19 countByEnumeratingWithState:&v37 objects:v50 count:16];
      }

      while (v21);
    }

    identifiersCopy = v31;
    if (v9)
    {
      if ((*(&self->_statusBarFlags + 2) & 2) != 0)
      {
        [(_UIStatusBarVisualProvider *)self->_visualProvider statusBarEnabledPartsUpdated];
      }

      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __43___UIStatusBar_setDisabledPartIdentifiers___block_invoke;
      v32[3] = &unk_1E70F3590;
      v32[4] = self;
      [(_UIStatusBar *)self _performWithInheritedAnimation:v32];
    }
  }
}

- (CGRect)frameForPartWithIdentifier:(id)identifier includeInternalItems:(BOOL)items
{
  itemsCopy = items;
  v72 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v7 = MEMORY[0x1E695F050];
  if (*&self->_statusBarFlags)
  {
    [(UIView *)self layoutIfNeeded];
    *&self->_statusBarFlags &= ~1u;
  }

  x = *v7;
  y = v7[1];
  width = v7[2];
  height = v7[3];
  if ([identifierCopy isEqualToString:@"clockPartIdentifier"] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v12 = [(_UIStatusBar *)self _actionablesForPartWithIdentifier:identifierCopy includeInternalItems:itemsCopy onlyVisible:1];
    v13 = [v12 countByEnumeratingWithState:&v66 objects:v71 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v67;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v67 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v66 + 1) + 8 * i);
          layoutItem = [v17 layoutItem];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [(_UIStatusBarVisualProvider *)self->_visualProvider clockBoundsForLayoutItem:v17];
          }

          else
          {
            [layoutItem _ui_bounds];
          }

          v23 = v19;
          v24 = v20;
          v25 = v21;
          v26 = v22;
          _ui_view = [layoutItem _ui_view];
          [(UIView *)self convertRect:_ui_view fromView:v23, v24, v25, v26];
          v29 = v28;
          v31 = v30;
          v33 = v32;
          v35 = v34;

          v73.origin.x = x;
          v73.origin.y = y;
          v73.size.width = width;
          v73.size.height = height;
          v78.origin.x = v29;
          v78.origin.y = v31;
          v78.size.width = v33;
          v78.size.height = v35;
          v74 = CGRectUnion(v73, v78);
          x = v74.origin.x;
          y = v74.origin.y;
          width = v74.size.width;
          height = v74.size.height;
        }

        v14 = [v12 countByEnumeratingWithState:&v66 objects:v71 count:16];
      }

      while (v14);
    }
  }

  else
  {
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v12 = [(_UIStatusBar *)self _actionablesForPartWithIdentifier:identifierCopy includeInternalItems:itemsCopy onlyVisible:1, 0];
    v36 = [v12 countByEnumeratingWithState:&v62 objects:v70 count:16];
    if (v36)
    {
      v37 = v36;
      v38 = *v63;
      do
      {
        for (j = 0; j != v37; ++j)
        {
          if (*v63 != v38)
          {
            objc_enumerationMutation(v12);
          }

          layoutItem2 = [*(*(&v62 + 1) + 8 * j) layoutItem];
          [layoutItem2 _ui_bounds];
          v42 = v41;
          v44 = v43;
          v46 = v45;
          v48 = v47;
          _ui_view2 = [layoutItem2 _ui_view];
          [(UIView *)self convertRect:_ui_view2 fromView:v42, v44, v46, v48];
          v51 = v50;
          v53 = v52;
          v55 = v54;
          v57 = v56;

          v75.origin.x = x;
          v75.origin.y = y;
          v75.size.width = width;
          v75.size.height = height;
          v79.origin.x = v51;
          v79.origin.y = v53;
          v79.size.width = v55;
          v79.size.height = v57;
          v76 = CGRectUnion(v75, v79);
          x = v76.origin.x;
          y = v76.origin.y;
          width = v76.size.width;
          height = v76.size.height;
        }

        v37 = [v12 countByEnumeratingWithState:&v62 objects:v70 count:16];
      }

      while (v37);
    }
  }

  v58 = x;
  v59 = y;
  v60 = width;
  v61 = height;
  result.size.height = v61;
  result.size.width = v60;
  result.origin.y = v59;
  result.origin.x = v58;
  return result;
}

- (CGRect)frameForPartWithIdentifier:(id)identifier
{
  [(_UIStatusBar *)self frameForPartWithIdentifier:identifier includeInternalItems:0];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

+ (CGSize)intrinsicContentSizeForTargetScreen:(id)screen orientation:(int64_t)orientation onLockScreen:(BOOL)lockScreen
{
  [self intrinsicContentSizeForTargetScreen:screen orientation:orientation onLockScreen:lockScreen isAzulBLinked:1];
  result.height = v6;
  result.width = v5;
  return result;
}

+ (CGSize)intrinsicContentSizeForTargetScreen:(id)screen orientation:(int64_t)orientation onLockScreen:(BOOL)lockScreen isAzulBLinked:(BOOL)linked
{
  linkedCopy = linked;
  lockScreenCopy = lockScreen;
  screenCopy = screen;
  VisualProviderClassForScreen = _UIStatusBarGetVisualProviderClassForScreen(screenCopy, 0);
  if (lockScreenCopy && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [VisualProviderClassForScreen intrinsicLockScreenContentSizeForOrientation:orientation];
  }

  else
  {
    [VisualProviderClassForScreen intrinsicContentSizeForOrientation:orientation];
  }

  v14 = v12;
  v15 = v13;
  if (linkedCopy)
  {
    [self _effectiveScaleForVisualProviderClass:VisualProviderClassForScreen targetScreen:screenCopy];
    v15 = round(v15 * v16);
  }

  v17 = v14;
  v18 = v15;
  result.height = v18;
  result.width = v17;
  return result;
}

- (NSSet)dependentDataEntryKeys
{
  [(_UIStatusBar *)self _prepareVisualProviderIfNeeded];
  v3 = [MEMORY[0x1E695DFA8] set];
  displayItemStates = self->_displayItemStates;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __38___UIStatusBar_dependentDataEntryKeys__block_invoke;
  v9[3] = &unk_1E7121C08;
  v9[4] = self;
  v5 = v3;
  v10 = v5;
  [(NSMutableDictionary *)displayItemStates enumerateKeysAndObjectsUsingBlock:v9];
  v6 = v10;
  v7 = v5;

  return v5;
}

- (unsigned)animationContextId
{
  window = [(UIView *)self window];
  _contextId = [window _contextId];

  return _contextId;
}

- (BOOL)areAnimationsEnabled
{
  if (!+[UIView areAnimationsEnabled])
  {
    return 0;
  }

  window = [(UIView *)self window];
  if (window)
  {
    window2 = [(UIView *)self window];
    _hasContext = [window2 _hasContext];
  }

  else
  {
    _hasContext = 0;
  }

  return _hasContext;
}

- (CGSize)intrinsicContentSize
{
  [(_UIStatusBar *)self _prepareVisualProviderIfNeeded];
  window = [(UIView *)self window];
  v4 = objc_opt_class();
  if (window)
  {
    v5 = [UIApp _sceneInterfaceOrientationFromWindow:window];
  }

  else
  {
    v5 = 0;
  }

  [v4 intrinsicContentSizeForOrientation:v5];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (id)_itemWithIdentifier:(id)identifier createIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  identifierCopy = identifier;
  v7 = [(NSMutableDictionary *)self->_items objectForKeyedSubscript:identifierCopy];
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = !neededCopy;
  }

  if (!v8)
  {
    v7 = [_UIStatusBarItem createItemForIdentifier:identifierCopy statusBar:self];
    if ((*(&self->_statusBarFlags + 2) & 4) != 0)
    {
      [(_UIStatusBarVisualProvider *)self->_visualProvider itemCreated:v7];
    }

    [(NSMutableDictionary *)self->_items setObject:v7 forKeyedSubscript:identifierCopy];
  }

  return v7;
}

- (id)displayItemWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [_UIStatusBarItem itemIdentifierForDisplayItemIdentifier:identifierCopy];
  v6 = [(_UIStatusBar *)self _itemWithIdentifier:v5 createIfNeeded:0];

  if (v6)
  {
    v7 = [v6 displayItemForIdentifier:identifierCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)regionWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  [(_UIStatusBar *)self _prepareVisualProviderIfNeeded];
  v5 = [(NSDictionary *)self->_regions objectForKeyedSubscript:identifierCopy];

  return v5;
}

- (id)itemsDependingOnKeys:(id)keys
{
  keysCopy = keys;
  v5 = [MEMORY[0x1E695DFA8] set];
  items = self->_items;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __37___UIStatusBar_itemsDependingOnKeys___block_invoke;
  v12[3] = &unk_1E7121C30;
  v13 = keysCopy;
  v7 = v5;
  v14 = v7;
  v8 = keysCopy;
  [(NSMutableDictionary *)items enumerateKeysAndObjectsUsingBlock:v12];
  v9 = v14;
  v10 = v7;

  return v7;
}

- (CGRect)frameForDisplayItemWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  [(UIView *)self layoutIfNeeded];
  v5 = *MEMORY[0x1E695F058];
  v6 = *(MEMORY[0x1E695F058] + 8);
  v7 = *(MEMORY[0x1E695F058] + 16);
  v8 = *(MEMORY[0x1E695F058] + 24);
  items = self->_items;
  v10 = [_UIStatusBarItem itemIdentifierForDisplayItemIdentifier:identifierCopy];
  v11 = [(NSMutableDictionary *)items objectForKeyedSubscript:v10];

  if (v11)
  {
    v12 = [v11 displayItemForIdentifier:identifierCopy];
    v13 = v12;
    if (v12)
    {
      view = [v12 view];
      [view alpha];
      if (v15 > 0.0)
      {
        window = [view window];

        if (window)
        {
          [view bounds];
          [(UIView *)self convertRect:view fromView:?];
          v5 = v17;
          v6 = v18;
          v7 = v19;
          v8 = v20;
        }
      }
    }
  }

  v21 = v5;
  v22 = v6;
  v23 = v7;
  v24 = v8;
  result.size.height = v24;
  result.size.width = v23;
  result.origin.y = v22;
  result.origin.x = v21;
  return result;
}

- (id)displayItemIdentifiersInRegionsWithIdentifiers:(id)identifiers
{
  v28 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  v5 = [MEMORY[0x1E695DFA8] set];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = identifiersCopy;
  v6 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v23;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = [(_UIStatusBarVisualProvider *)self->_visualProvider orderedDisplayItemPlacementsInRegionWithIdentifier:*(*(&v22 + 1) + 8 * i)];
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v11 = [v10 countByEnumeratingWithState:&v18 objects:v26 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v19;
          do
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v19 != v13)
              {
                objc_enumerationMutation(v10);
              }

              identifier = [*(*(&v18 + 1) + 8 * j) identifier];
              [v5 addObject:identifier];
            }

            v12 = [v10 countByEnumeratingWithState:&v18 objects:v26 count:16];
          }

          while (v12);
        }
      }

      v7 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v7);
  }

  return v5;
}

- (id)itemIdentifiersInRegionsWithIdentifiers:(id)identifiers
{
  v4 = MEMORY[0x1E695DFA8];
  identifiersCopy = identifiers;
  v6 = [v4 set];
  v7 = [(_UIStatusBar *)self displayItemIdentifiersInRegionsWithIdentifiers:identifiersCopy];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __56___UIStatusBar_itemIdentifiersInRegionsWithIdentifiers___block_invoke;
  v10[3] = &unk_1E7121C58;
  v8 = v6;
  v11 = v8;
  [v7 enumerateObjectsUsingBlock:v10];

  return v8;
}

- (id)dataEntryKeysForItemsWithIdentifiers:(id)identifiers
{
  v19 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  v5 = [MEMORY[0x1E695DFA8] set];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = identifiersCopy;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
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

        v11 = [(_UIStatusBar *)self itemWithIdentifier:*(*(&v14 + 1) + 8 * i), v14];
        dependentEntryKeys = [v11 dependentEntryKeys];
        [v5 unionSet:dependentEntryKeys];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  return v5;
}

- (BOOL)_accessibilityHUDGestureManager:(id)manager shouldBeginAtPoint:(CGPoint)point
{
  v4 = [(UIView *)self traitCollection:manager];
  v5 = [v4 userInterfaceIdiom] != 3;

  return v5;
}

- (id)_accessibilityHUDGestureManager:(id)manager HUDItemForPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v25 = *MEMORY[0x1E69E9840];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = [(_UIStatusBar *)self regions:manager];
  allValues = [v6 allValues];

  v8 = [allValues countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(allValues);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        if ([v12 isEnabled])
        {
          v13 = [v12 displayItemForHUDAtLocation:{x, y}];
          v14 = v13;
          if (v13)
          {
            view = [v13 view];
            v16 = objc_opt_respondsToSelector();

            if (v16)
            {
              goto LABEL_13;
            }
          }
        }
      }

      v9 = [allValues countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }

  v14 = 0;
LABEL_13:

  view2 = [v14 view];
  accessibilityHUDRepresentation = [view2 accessibilityHUDRepresentation];

  return accessibilityHUDRepresentation;
}

- (void)_accessibilityHUDGestureManager:(id)manager showHUDItem:(id)item
{
  itemCopy = item;
  traitCollection = [(UIView *)self traitCollection];
  [itemCopy setCustomUserInterfaceStyle:{objc_msgSend(traitCollection, "userInterfaceStyle")}];

  _statusBarWindowForAccessibilityHUD = [(_UIStatusBar *)self _statusBarWindowForAccessibilityHUD];
  [_statusBarWindowForAccessibilityHUD _showAccessibilityHUDItem:itemCopy forView:self];
}

- (void)_dismissAccessibilityHUDForGestureManager:(id)manager
{
  _statusBarWindowForAccessibilityHUD = [(_UIStatusBar *)self _statusBarWindowForAccessibilityHUD];
  [_statusBarWindowForAccessibilityHUD _dismissAccessibilityHUD];
}

- (CGRect)avoidanceFrame
{
  x = self->_avoidanceFrame.origin.x;
  y = self->_avoidanceFrame.origin.y;
  width = self->_avoidanceFrame.size.width;
  height = self->_avoidanceFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (_UIStatusBarActionable)targetActionable
{
  WeakRetained = objc_loadWeakRetained(&self->_targetActionable);

  return WeakRetained;
}

- (_UIStatusBarActionable)hoveredActionable
{
  WeakRetained = objc_loadWeakRetained(&self->_hoveredActionable);

  return WeakRetained;
}

@end