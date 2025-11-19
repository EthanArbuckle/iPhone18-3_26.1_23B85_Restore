@interface _UIStatusBar
+ (CGSize)intrinsicContentSizeForTargetScreen:(id)a3 orientation:(int64_t)a4 onLockScreen:(BOOL)a5;
+ (CGSize)intrinsicContentSizeForTargetScreen:(id)a3 orientation:(int64_t)a4 onLockScreen:(BOOL)a5 isAzulBLinked:(BOOL)a6;
+ (double)_effectiveScaleForVisualProviderClass:(Class)a3 targetScreen:(id)a4;
+ (id)sensorActivityIndicatorForScreen:(id)a3;
+ (id)stringForStatusBarStyle:(int64_t)a3;
+ (void)registerSensorActivityIndicator:(id)a3 forScreen:(id)a4;
- (BOOL)_accessibilityHUDGestureManager:(id)a3 shouldBeginAtPoint:(CGPoint)a4;
- (BOOL)_cursorLocation:(CGPoint)a3 isInsideActionable:(id)a4;
- (BOOL)_cursorLocation:(CGPoint)a3 isInsideHoverableActionable:(id)a4;
- (BOOL)_gestureRecognizer:(id)a3 isInsideActionable:(id)a4;
- (BOOL)_gestureRecognizer:(id)a3 pressInsideActionable:(id)a4;
- (BOOL)_gestureRecognizer:(id)a3 touchInsideActionable:(id)a4;
- (BOOL)areAnimationsEnabled;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (CGAffineTransform)_effectiveScaleTransform;
- (CGRect)_extendedHoverFrameForActionable:(id)a3;
- (CGRect)_frameForActionable:(id)a3;
- (CGRect)_frameForActionable:(id)a3 actionInsets:(UIEdgeInsets)a4;
- (CGRect)_pressFrameForActionable:(id)a3;
- (CGRect)avoidanceFrame;
- (CGRect)frameForDisplayItemWithIdentifier:(id)a3;
- (CGRect)frameForPartWithIdentifier:(id)a3;
- (CGRect)frameForPartWithIdentifier:(id)a3 includeInternalItems:(BOOL)a4;
- (CGSize)intrinsicContentSize;
- (NSSet)dependentDataEntryKeys;
- (NSString)_visualProviderClassName;
- (NSString)description;
- (UIOffset)offsetForPartWithIdentifier:(id)a3;
- (UIScreen)_effectiveTargetScreen;
- (_UIStatusBar)initWithStyle:(int64_t)a3;
- (_UIStatusBarActionable)hoveredActionable;
- (_UIStatusBarActionable)targetActionable;
- (_UIStatusBarVisualProvider)visualProvider;
- (double)alphaForPartWithIdentifier:(id)a3;
- (id)_accessibilityHUDGestureManager:(id)a3 HUDItemForPoint:(CGPoint)a4;
- (id)_actionablesForPartWithIdentifier:(id)a3 includeInternalItems:(BOOL)a4 onlyVisible:(BOOL)a5;
- (id)_itemWithIdentifier:(id)a3 createIfNeeded:(BOOL)a4;
- (id)_rearrangeOverflowedItems;
- (id)_regionsForPartWithIdentifier:(id)a3 includeInternalItems:(BOOL)a4;
- (id)_traitCollectionForChildEnvironment:(id)a3;
- (id)actionForPartWithIdentifier:(id)a3;
- (id)dataEntryKeysForItemsWithIdentifiers:(id)a3;
- (id)displayItemIdentifiersInRegionsWithIdentifiers:(id)a3;
- (id)displayItemWithIdentifier:(id)a3;
- (id)itemIdentifiersInRegionsWithIdentifiers:(id)a3;
- (id)itemsDependingOnKeys:(id)a3;
- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5;
- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4;
- (id)regionWithIdentifier:(id)a3;
- (id)styleAttributesForStyle:(int64_t)a3;
- (int64_t)_effectiveStyleFromStyle:(int64_t)a3;
- (int64_t)styleForPartWithIdentifier:(id)a3;
- (unsigned)animationContextId;
- (void)_accessibilityHUDGestureManager:(id)a3 showHUDItem:(id)a4;
- (void)_delayUpdatesWithKeys:(id)a3 fromAnimation:(id)a4;
- (void)_dismissAccessibilityHUDForGestureManager:(id)a3;
- (void)_fixupDisplayItemAttributes;
- (void)_performAnimations:(id)a3;
- (void)_performWithInheritedAnimation:(id)a3;
- (void)_prepareAnimations:(id)a3;
- (void)_prepareVisualProviderIfNeeded;
- (void)_setVisualProviderClassName:(id)a3;
- (void)_updateActionGestureRecognizerAllowableTouchTypesIfNeeded;
- (void)_updateDisplayedItemsWithData:(id)a3 styleAttributes:(id)a4 extraAnimations:(id)a5;
- (void)_updateRegionItems;
- (void)_updateStyleAttributes;
- (void)_updateWithAggregatedData:(id)a3;
- (void)_updateWithData:(id)a3 completionHandler:(id)a4;
- (void)layoutSubviews;
- (void)pointerInteraction:(id)a3 willEnterRegion:(id)a4 animator:(id)a5;
- (void)resetVisualProvider;
- (void)resizeSubviewsWithOldSize:(CGSize)a3;
- (void)setAction:(id)a3 forPartWithIdentifier:(id)a4;
- (void)setAlpha:(double)a3 forPartWithIdentifier:(id)a4;
- (void)setAvoidanceFrame:(CGRect)a3 animationSettings:(id)a4 options:(unint64_t)a5;
- (void)setDisabledPartIdentifiers:(id)a3;
- (void)setEnabledPartIdentifiers:(id)a3;
- (void)setForegroundColor:(id)a3;
- (void)setMode:(int64_t)a3;
- (void)setOffset:(UIOffset)a3 forPartWithIdentifier:(id)a4;
- (void)setOrientation:(int64_t)a3;
- (void)setOverlayData:(id)a3;
- (void)setSemanticContentAttribute:(int64_t)a3;
- (void)setStyle:(int64_t)a3;
- (void)setStyle:(int64_t)a3 forPartWithIdentifier:(id)a4;
- (void)setStyleAttributes:(id)a3;
- (void)statusBarGesture:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateConstraints;
- (void)updateForcingIterativeOverflow;
@end

@implementation _UIStatusBar

+ (id)stringForStatusBarStyle:(int64_t)a3
{
  v3 = @"_UIStatusBarResolvedStyleInherited";
  v4 = @"_UIStatusBarResolvedStyleAutomaticWithLightBias";
  v5 = @"_UIStatusBarResolvedStyleAutomaticWithDarkBias";
  if (a3 != 128)
  {
    v5 = 0;
  }

  if (a3 != 64)
  {
    v4 = v5;
  }

  if (a3 != 4)
  {
    v3 = v4;
  }

  v6 = @"_UIStatusBarResolvedStyleDarkContent";
  if (a3 != 2)
  {
    v6 = 0;
  }

  if (a3 == 1)
  {
    v6 = @"_UIStatusBarResolvedStyleLightContent";
  }

  if (!a3)
  {
    v6 = @"_UIStatusBarResolvedStyleDefault";
  }

  if (a3 <= 3)
  {
    return v6;
  }

  else
  {
    return v3;
  }
}

+ (void)registerSensorActivityIndicator:(id)a3 forScreen:(id)a4
{
  v5 = _MergedGlobals_23_5;
  v6 = a4;
  v7 = a3;
  if (v5 != -1)
  {
    dispatch_once(&_MergedGlobals_23_5, &__block_literal_global_529);
  }

  v8 = qword_1ED49B038;
  v9 = sensorActivityScreenIdentifier(v6);

  [v8 setObject:v7 forKey:v9];
}

+ (id)sensorActivityIndicatorForScreen:(id)a3
{
  v3 = qword_1ED49B038;
  v4 = sensorActivityScreenIdentifier(a3);
  v5 = [v3 objectForKey:v4];

  return v5;
}

- (_UIStatusBar)initWithStyle:(int64_t)a3
{
  v23.receiver = self;
  v23.super_class = _UIStatusBar;
  v4 = [(UIView *)&v23 initWithFrame:0.0, 0.0, 600.0, 50.0];
  v4->_style = a3;
  v5 = [MEMORY[0x1E695DF90] dictionary];
  [(_UIStatusBar *)v4 setItems:v5];

  v6 = [MEMORY[0x1E695DF90] dictionary];
  [(_UIStatusBar *)v4 setDisplayItemStates:v6];

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

- (void)_setVisualProviderClassName:(id)a3
{
  v5 = a3;
  v8 = v5;
  if (v5)
  {
    v6 = NSClassFromString(v5);
    if (v6)
    {
      goto LABEL_5;
    }

    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"_UIStatusBar.m" lineNumber:226 description:{@"No visual provider class with name %@", v8}];
  }

  v6 = 0;
LABEL_5:
  [(_UIStatusBar *)self _setVisualProviderClass:v6];
}

- (NSString)_visualProviderClassName
{
  v2 = [(_UIStatusBar *)self _visualProviderClass];
  if (v2)
  {
    v2 = NSStringFromClass(v2);
  }

  return v2;
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
    v4 = v3;
    goto LABEL_4;
  }

  v5 = [(UIView *)self window];
  v4 = [v5 screen];

  if (!v4)
  {
    v7 = [(UIView *)self traitCollection];
    v8 = [v7 userInterfaceIdiom];

    if (v8 == 3)
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

  return v4;
}

- (void)_prepareVisualProviderIfNeeded
{
  if (!self->_visualProvider)
  {
    visualProviderClass = self->_visualProviderClass;
    if (!visualProviderClass)
    {
      v4 = [(_UIStatusBar *)self _effectiveTargetScreen];
      v5 = [(_UIStatusBar *)self visualProviderInfo];
      v6 = _UIStatusBarGetVisualProviderClassForScreen(v4, v5);
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

    v32 = [(_UIStatusBar *)self foregroundView];
    [v32 addInteraction:self->_pointerInteraction];

    [(UIView *)self addSubview:self->_foregroundView];
  }

  if (![(NSDictionary *)self->_regions count])
  {
    v33 = [MEMORY[0x1E695DF90] dictionary];
    v34 = self->_visualProvider;
    v35 = [(_UIStatusBar *)self containerView];
    v36 = [(_UIStatusBarVisualProvider *)v34 setupInContainerView:v35];

    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __46___UIStatusBar__prepareVisualProviderIfNeeded__block_invoke;
    v40[3] = &unk_1E71219E0;
    v40[4] = self;
    v37 = v33;
    v41 = v37;
    [v36 enumerateObjectsUsingBlock:v40];
    objc_storeStrong(&self->_regions, v33);
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

  v4 = [MEMORY[0x1E695DF90] dictionary];
  displayItemStates = self->_displayItemStates;
  self->_displayItemStates = v4;
}

- (void)setMode:(int64_t)a3
{
  if (_UIGetUIStatusBarForcedMode() == -1)
  {
    mode = self->_mode;
    if (mode != a3)
    {
      self->_mode = a3;
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

- (void)setOrientation:(int64_t)a3
{
  if (self->_orientation != a3)
  {
    self->_orientation = a3;
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

- (void)setAvoidanceFrame:(CGRect)a3 animationSettings:(id)a4 options:(unint64_t)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v11 = a4;
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
      [(_UIStatusBarVisualProvider *)self->_visualProvider avoidanceFrameUpdatedFromFrame:v11 withAnimationSettings:a5 options:v17, v18, v19, v20];
    }
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = _UIStatusBar;
  [(UIView *)&v13 traitCollectionDidChange:v4];
  if (self->_visualProvider)
  {
    v5 = [(UIView *)self traitCollection];
    v6 = [v5 userInterfaceStyle];
    if (v6 != [v4 userInterfaceStyle] || (v7 = objc_msgSend(v5, "userInterfaceIdiom"), v7 != objc_msgSend(v4, "userInterfaceIdiom")) || (v8 = objc_msgSend(v5, "layoutDirection"), v8 != objc_msgSend(v4, "layoutDirection")) || (objc_msgSend(v5, "displayScale"), v10 = v9, objc_msgSend(v4, "displayScale"), v10 != v11))
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

- (void)setSemanticContentAttribute:(int64_t)a3
{
  if ([(UIView *)self semanticContentAttribute]!= a3)
  {
    v7.receiver = self;
    v7.super_class = _UIStatusBar;
    [(UIView *)&v7 setSemanticContentAttribute:a3];
    if (self)
    {
      _UIViewInvalidateTraitCollectionAndSchedulePropagation(self, 1, v5, v6);
    }
  }
}

- (id)_traitCollectionForChildEnvironment:(id)a3
{
  v7.receiver = self;
  v7.super_class = _UIStatusBar;
  v4 = [(UIView *)&v7 _traitCollectionForChildEnvironment:a3];
  v5 = [v4 _traitCollectionByReplacingNSIntegerValue:-[UIView effectiveUserInterfaceLayoutDirection](self forTraitToken:{"effectiveUserInterfaceLayoutDirection"), 0x1EFE323C8}];

  return v5;
}

- (void)_performWithInheritedAnimation:(id)a3
{
  v3 = MEMORY[0x1E6979518];
  v4 = a3;
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

  v4[2](v4);

  [MEMORY[0x1E6979518] commit];

  [UIView setAnimationsEnabled:v5];
}

- (void)setStyle:(int64_t)a3
{
  style = self->_style;
  if (style != a3)
  {
    self->_style = a3;
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

- (void)setForegroundColor:(id)a3
{
  v5 = a3;
  foregroundColor = self->_foregroundColor;
  v7 = v5;
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

    objc_storeStrong(&self->_foregroundColor, a3);
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

- (void)setStyleAttributes:(id)a3
{
  v9 = a3;
  if (([v9 isEqual:self->_styleAttributes] & 1) == 0)
  {
    v5 = [v9 copy];
    styleAttributes = self->_styleAttributes;
    self->_styleAttributes = v5;

    v7 = [(_UIStatusBarStyleAttributes *)self->_styleAttributes traitCollection];

    if (!v7)
    {
      v8 = [MEMORY[0x1E696AAA8] currentHandler];
      [v8 handleFailureInMethod:a2 object:self file:@"_UIStatusBar.m" lineNumber:555 description:@"Style attributes should have a traitCollection"];
    }

    [(_UIStatusBar *)self _updateDisplayedItemsWithData:0 styleAttributes:v9 extraAnimations:MEMORY[0x1E695E0F0]];
  }
}

- (int64_t)_effectiveStyleFromStyle:(int64_t)a3
{
  v3 = a3;
  if (!a3)
  {
    v4 = [(UIView *)self traitCollection];
    if ([v4 userInterfaceStyle] == 2)
    {
      v3 = 1;
    }

    else
    {
      v3 = 2;
    }
  }

  return v3;
}

- (id)styleAttributesForStyle:(int64_t)a3
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
  v6 = [(UIView *)self traitCollection];
  [UITraitCollection setCurrentTraitCollection:v6];

  v7 = _UISetCurrentFallbackEnvironment(self);
  v8 = [(_UIStatusBarVisualProvider *)self->_visualProvider styleAttributesForStyle:[(_UIStatusBar *)self _effectiveStyleFromStyle:a3]];
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

- (void)setOverlayData:(id)a3
{
  v10 = a3;
  if ([v10 isEmpty])
  {

    v10 = 0;
  }

  v4 = [(_UIStatusBar *)self overlayData];

  v5 = v10;
  if (v10 != v4)
  {
    v6 = [(_UIStatusBarDataAggregator *)self->_dataAggregator overlayData];

    if (v6)
    {
      v7 = [(_UIStatusBarDataAggregator *)self->_dataAggregator overlayData];
      v8 = [v7 dataByApplyingOverlay:self->_currentData];

      v9 = v10;
      if (v10)
      {
        if (v8)
        {
          [v8 applyUpdate:v10];
LABEL_12:
          [(_UIStatusBarDataAggregator *)self->_dataAggregator setOverlayData:0];
          [(_UIStatusBarDataAggregator *)self->_dataAggregator updateWithData:v8];
          [(_UIStatusBarDataAggregator *)self->_dataAggregator setOverlayData:v10];

          v5 = v10;
          goto LABEL_13;
        }

LABEL_9:
        v10 = v9;
        v8 = v9;
        goto LABEL_12;
      }
    }

    else
    {
      v9 = v10;
      if (v10)
      {
        goto LABEL_9;
      }

      v8 = 0;
    }

    v10 = v9;
    goto LABEL_12;
  }

LABEL_13:
}

- (void)_updateWithData:(id)a3 completionHandler:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
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

      v15 = [(_UIStatusBarDataAggregator *)self->_dataAggregator delayedEntryKeys];
      *buf = 134218754;
      v19 = self;
      v20 = 2112;
      v21 = v6;
      v22 = 2112;
      v23 = v14;
      v24 = 2112;
      v25 = v15;
      _os_log_impl(&dword_188A29000, v13, OS_LOG_TYPE_ERROR, "Status bar %p update with data: %@, animated: %@, delayedKeys: %@", buf, 0x2Au);
    }
  }

  [(_UIStatusBar *)self setUpdateCompletionHandler:v7];
  currentData = self->_currentData;
  if (currentData)
  {
    [(_UIStatusBarData *)currentData applyUpdate:v6];
    [(_UIStatusBarDataAggregator *)self->_dataAggregator updateWithData:v6];
  }

  else
  {
    v10 = [v6 copy];
    v11 = self->_currentData;
    self->_currentData = v10;

    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __50___UIStatusBar__updateWithData_completionHandler___block_invoke;
    v16[3] = &unk_1E70F35B8;
    v16[4] = self;
    v17 = v6;
    [UIView performWithoutAnimation:v16];
  }
}

- (void)_updateWithAggregatedData:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = [a3 copy];
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
  v9 = [(_UIStatusBar *)self updateCompletionHandler];

  if (v9)
  {
    v10 = _Block_copy(self->_updateCompletionHandler);
    updateCompletionHandler = self->_updateCompletionHandler;
    self->_updateCompletionHandler = 0;

    v10[2](v10);
  }
}

- (void)_updateDisplayedItemsWithData:(id)a3 styleAttributes:(id)a4 extraAnimations:(id)a5
{
  v8 = a3;
  v9 = a4;
  v29 = a5;
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
  v10 = [(UIView *)self traitCollection];
  [UITraitCollection setCurrentTraitCollection:v10];

  v11 = _UISetCurrentFallbackEnvironment(self);
  [(NSMutableDictionary *)self->_displayItemStates enumerateKeysAndObjectsUsingBlock:&__block_literal_global_104_0];
  v12 = [MEMORY[0x1E695DF70] array];
  *&self->_statusBarFlags |= 0x80000u;
  displayItemStates = self->_displayItemStates;
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __78___UIStatusBar__updateDisplayedItemsWithData_styleAttributes_extraAnimations___block_invoke_2;
  v34[3] = &unk_1E7121A70;
  v14 = v8;
  v35 = v14;
  v15 = v9;
  v36 = v15;
  v16 = v12;
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
  [v16 addObjectsFromArray:v29];
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
      v21 = [(_UIStatusBar *)self _rearrangeOverflowedItems];
      if (v21)
      {
        v22 = v21;
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

          v24 = [(_UIStatusBar *)self _rearrangeOverflowedItems];

          v22 = v24;
        }

        while (v24);
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
        v25 = [(_UIStatusBar *)self _rearrangeOverflowedItems];
      }

      while (v25);
    }

    *&self->_statusBarFlags |= 1u;
  }

  [(_UIStatusBar *)self _fixupDisplayItemAttributes];
  _UIRestorePreviousFallbackEnvironment(v11);
  [UITraitCollection setCurrentTraitCollection:v28];
}

- (void)_prepareAnimations:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [_UIStatusBarAnimation prepareAnimations:v4 forStatusBar:self];
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v5 = v4;
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
        v8 = [v7 effectiveDelayedItemIdentifiers];
        if ([v8 count])
        {
          v22 = v7;
          v9 = [MEMORY[0x1E695DFA8] set];
          v24 = 0u;
          v25 = 0u;
          v26 = 0u;
          v27 = 0u;
          v10 = v8;
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
                v16 = [v15 dependentEntryKeys];
                [v9 unionSet:v16];
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

- (void)_delayUpdatesWithKeys:(id)a3 fromAnimation:(id)a4
{
  v6 = a3;
  dataAggregator = self->_dataAggregator;
  v8 = a4;
  [(_UIStatusBarDataAggregator *)dataAggregator beginDelayingUpdatesForEntryKeys:v6];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __52___UIStatusBar__delayUpdatesWithKeys_fromAnimation___block_invoke;
  v10[3] = &unk_1E70F35B8;
  v10[4] = self;
  v11 = v6;
  v9 = v6;
  [v8 addTotalCompletionHandler:v10];
}

- (void)updateForcingIterativeOverflow
{
  *&self->_statusBarFlags |= 0x100000u;
  [(_UIStatusBar *)self updateWithAnimations:MEMORY[0x1E695E0F0]];
  *&self->_statusBarFlags &= ~0x100000u;
}

- (void)_performAnimations:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v4);
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

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
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

+ (double)_effectiveScaleForVisualProviderClass:(Class)a3 targetScreen:(id)a4
{
  v5 = a4;
  v6 = 1.0;
  if ([(objc_class *)a3 scalesWithScreenNativeScale])
  {
    [v5 _nativeScale];
    v8 = v7;
    if (objc_opt_respondsToSelector())
    {
      [(objc_class *)a3 referenceScreenScale];
    }

    else
    {
      [v5 _scale];
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

  v6 = self;
  v7 = [(CGAffineTransform *)self _screen];
  [v7 _nativeScale];
  v9 = v8;

  if ((LOBYTE(v6[8].tx) & 4) != 0)
  {
    [*&v6[11].ty referenceScreenScale];
    v12 = v13;
  }

  else
  {
    v10 = [(CGAffineTransform *)v6 _screen];
    [v10 _scale];
    v12 = v11;
  }

  self = [(CGAffineTransform *)v6 mode];
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

- (void)resizeSubviewsWithOldSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
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
  v3 = [(UIView *)&v7 layoutSubviews];
  __30___UIStatusBar_layoutSubviews__block_invoke(v3, self->_foregroundView);
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
    v5 = [(_UIStatusBar *)self _rearrangeOverflowedItems];
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

  v2 = self;
  v3 = 512;
  [(NSMutableDictionary *)self->_displayItemStates enumerateKeysAndObjectsUsingBlock:&__block_literal_global_127_0];
  [(NSDictionary *)v2->_regions keysSortedByValueUsingComparator:&__block_literal_global_130_2];
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
  v45 = v2;
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
      v41 = [(NSDictionary *)v2->_regions objectForKeyedSubscript:v5];
      v6 = objc_alloc_init(MEMORY[0x1E695DFA0]);
      v7 = [(_UIStatusBarVisualProvider *)v2->_visualProvider orderedDisplayItemPlacementsInRegionWithIdentifier:v5];
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
            v13 = [v12 identifier];
            v14 = v3;
            v15 = [*(&v2->super.super.super.isa + v3) objectForKeyedSubscript:v13];
            v16 = [v15 isCurrentPlacement:v12];

            if (v16)
            {
              v17 = [_UIStatusBarItem itemIdentifierForDisplayItemIdentifier:v13];
              v18 = [(_UIStatusBar *)v2 itemWithIdentifier:v17];
              v19 = [v12 identifier];
              v20 = [v18 displayItemForIdentifier:v19];

              v6 = v43;
              [v20 setPlacement:v12];
              [v43 addObject:v20];

              v2 = v45;
            }

            v3 = v14;
          }

          v9 = [v44 countByEnumeratingWithState:&v50 objects:v59 count:16];
        }

        while (v9);
      }

      v21 = [v41 displayItems];
      v22 = [v6 isEqual:v21];

      if (v22)
      {
        v23 = v42;
LABEL_19:
        v24 = v43;
        goto LABEL_23;
      }

      v23 = v42;
      if ((*(&v2->_statusBarFlags + 1) & 0x10) == 0)
      {
        goto LABEL_19;
      }

      v24 = v43;
      v25 = [(_UIStatusBarVisualProvider *)v2->_visualProvider region:v41 willSetDisplayItems:v43];
      v26 = v25;
      if (v25 != v43)
      {
        v27 = [v25 mutableCopy];

        v24 = v27;
      }

LABEL_23:
      [v41 setDisplayItems:v24];
      v28 = [v41 displayItems];
      [v24 minusOrderedSet:v28];

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
            v35 = [*(*(&v46 + 1) + 8 * k) identifier];
            v36 = [v34 objectForKeyedSubscript:v35];
            [v36 updateToNextEnabledPlacement];
          }

          v31 = [v29 countByEnumeratingWithState:&v46 objects:v58 count:16];
        }

        while (v31);
        v38 = 1;
        v2 = v45;
      }
    }

    v40 = [obj countByEnumeratingWithState:&v54 objects:v60 count:16];
  }

  while (v40);
  if (v38)
  {
    [(_UIStatusBar *)v2 _updateRegionItems];
  }

LABEL_35:
  if ((*(&v2->_statusBarFlags + 1) & 0x20) != 0)
  {
    [(_UIStatusBarVisualProvider *)v2->_visualProvider statusBarRegionsUpdated];
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

- (CGRect)_extendedHoverFrameForActionable:(id)a3
{
  v4 = a3;
  [v4 absoluteHoverFrame];
  x = v22.origin.x;
  y = v22.origin.y;
  width = v22.size.width;
  height = v22.size.height;
  if (!CGRectIsNull(v22))
  {
    [v4 extendedHoverInsets];
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

- (BOOL)_cursorLocation:(CGPoint)a3 isInsideActionable:(id)a4
{
  y = a3.y;
  x = a3.x;
  [(_UIStatusBar *)self _frameForActionable:a4];
  v10 = x;
  v11 = y;

  return CGRectContainsPoint(*&v6, *&v10);
}

- (BOOL)_cursorLocation:(CGPoint)a3 isInsideHoverableActionable:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [v7 hoverView];
  [(_UIStatusBar *)self _extendedHoverFrameForActionable:v7];
  v9 = v17.origin.x;
  v10 = v17.origin.y;
  width = v17.size.width;
  height = v17.size.height;
  if (CGRectIsNull(v17))
  {
    v13 = [(_UIStatusBar *)self _cursorLocation:v7 isInsideActionable:x, y];
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

- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  regionActionValidationBlock = self->_regionActionValidationBlock;
  if (regionActionValidationBlock && !regionActionValidationBlock[2]())
  {
    v21 = 0;
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
    v27 = self;
    v28 = v9;
    v29 = &v37;
    v30 = &v31;
    [(NSDictionary *)regions enumerateKeysAndObjectsUsingBlock:&v23];
    if (v38[5])
    {
      [(_UIStatusBar *)self _extendedHoverFrameForActionable:v23, v24, v25, v26, v27];
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

      v21 = [UIPointerRegion regionWithRect:v32[5] identifier:x, y, width, height];
    }

    else
    {
      v21 = 0;
    }

    _Block_object_dispose(&v31, 8);
    _Block_object_dispose(&v37, 8);
  }

  return v21;
}

- (void)pointerInteraction:(id)a3 willEnterRegion:(id)a4 animator:(id)a5
{
  v6 = [a4 identifier];
  v8 = v6;
  if (v6)
  {
    v7 = [(_UIStatusBar *)self regionWithIdentifier:v6];
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

- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4
{
  WeakRetained = objc_loadWeakRetained(&self->_hoveredActionable);
  v6 = [WeakRetained hoverView];

  if (!v6)
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
  v17 = [v16 hoverHighlightsAsRegion];

  v42.origin.x = v9;
  v42.origin.y = v11;
  v42.size.width = v13;
  v42.size.height = v15;
  if (!CGRectIsNull(v42))
  {
    v26 = objc_opt_new();
    [(UIView *)self convertRect:v6 toView:v9, v11, v13, v15];
    v27 = [UIBezierPath bezierPathWithRect:?];
    [v26 setVisiblePath:v27];

    v22 = [[UITargetedPreview alloc] initWithView:v6 parameters:v26];
    if ((v17 & 1) == 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    v23 = [(UIPointerEffect *)UIPointerHighlightEffect effectWithPreview:v22];
    v28 = [(_UIStatusBar *)self visualProvider];
    v29 = [v28 conformsToProtocol:&unk_1F00A20A0];

    if (v29)
    {
      v30 = [(_UIStatusBar *)self visualProvider];
      [objc_opt_class() regionCursorInsets];
      v9 = v9 + v31;
      v11 = v11 + v32;
      v13 = v13 - (v31 + v33);
      v15 = v15 - (v32 + v34);

      v35 = [(_UIStatusBar *)self visualProvider];
      v36 = [objc_opt_class() regionCursorIsPill];

      if ((v36 & 1) == 0)
      {
        v37 = [(_UIStatusBar *)self visualProvider];
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

  [v6 frame];
  v9 = v18;
  v11 = v19;
  v13 = v20;
  v15 = v21;
  v22 = [[UITargetedPreview alloc] initWithView:v6];
  if (v17)
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

- (CGRect)_frameForActionable:(id)a3
{
  v4 = a3;
  [v4 actionInsets];
  [(_UIStatusBar *)self _frameForActionable:v4 actionInsets:?];
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

- (CGRect)_pressFrameForActionable:(id)a3
{
  [(_UIStatusBar *)self _frameForActionable:a3 actionInsets:0.0, 0.0, 0.0, 0.0];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)_frameForActionable:(id)a3 actionInsets:(UIEdgeInsets)a4
{
  right = a4.right;
  bottom = a4.bottom;
  left = a4.left;
  top = a4.top;
  v9 = a3;
  v10 = [v9 layoutItem];
  [v10 _ui_bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v19 = [v9 layoutItem];

  v20 = [v19 _ui_view];
  [v20 convertRect:self toView:{v12, v14, v16, v18}];
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

- (BOOL)_gestureRecognizer:(id)a3 isInsideActionable:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(_UIStatusBar *)self _gestureRecognizer:v6 touchInsideActionable:v7]|| [(_UIStatusBar *)self _gestureRecognizer:v6 pressInsideActionable:v7];

  return v8;
}

- (BOOL)_gestureRecognizer:(id)a3 touchInsideActionable:(id)a4
{
  v6 = a4;
  [a3 locationInView:self];
  v8 = v7;
  v10 = v9;
  [(_UIStatusBar *)self _frameForActionable:v6];
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

- (BOOL)_gestureRecognizer:(id)a3 pressInsideActionable:(id)a4
{
  v5 = a4;
  v6 = [(UIView *)self _focusSystem];
  v7 = [v6 focusedItem];

  v8 = [v7 focusItemContainer];
  [(_UIStatusBar *)self _pressFrameForActionable:v5];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  [v7 frame];
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

- (void)statusBarGesture:(id)a3
{
  v18 = a3;
  v4 = [v18 state];
  v5 = v4;
  v6 = v4 - 1;
  if ((v4 - 1) > 2)
  {
    if ((v4 - 3) > 2)
    {
      v9 = 0;
      goto LABEL_19;
    }

    v9 = 0;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_targetActionable);
    v8 = [(_UIStatusBar *)self _gestureRecognizer:v18 isInsideActionable:WeakRetained];

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

    v14 = [v9 hoverAction];
    if (v14 || ([v9 action], (v14 = objc_claimAutoreleasedReturnValue()) != 0) || (-[_UIStatusBar action](self, "action"), (v14 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v15 = v14;
      [v14 performWithStatusBar:self completionHandler:0];
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

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
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
    v12 = v4;
    [(NSDictionary *)regions enumerateKeysAndObjectsUsingBlock:v11];
  }

  v8 = objc_loadWeakRetained(&self->_targetActionable);
  v9 = v8 != 0;

  return v9;
}

- (id)_actionablesForPartWithIdentifier:(id)a3 includeInternalItems:(BOOL)a4 onlyVisible:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v29 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = [MEMORY[0x1E695DFA8] set];
  [(_UIStatusBar *)self _prepareVisualProviderIfNeeded];
  v10 = [MEMORY[0x1E695DFD8] set];
  if (v6)
  {
    v11 = [_UIStatusBarIdentifier displayIdentifierFromStringRepresentation:v8];
    if (v11)
    {
      v12 = [MEMORY[0x1E695DFD8] setWithObject:v11];

      v10 = v12;
    }
  }

  if ((*(&self->_statusBarFlags + 1) & 0x80) != 0)
  {
    v13 = [(_UIStatusBarVisualProvider *)self->_visualProvider displayItemIdentifiersForPartWithIdentifier:v8];
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
        if (v20 && (!v5 || [v20 visible]))
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
    v22 = [(_UIStatusBar *)self _regionsForPartWithIdentifier:v8 includeInternalItems:v6];
    [v9 unionSet:v22];
  }

  return v9;
}

- (id)_regionsForPartWithIdentifier:(id)a3 includeInternalItems:(BOOL)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [MEMORY[0x1E695DFA8] set];
  [(_UIStatusBar *)self _prepareVisualProviderIfNeeded];
  if (a4)
  {
    [MEMORY[0x1E695DFD8] setWithObject:v6];
  }

  else
  {
    [MEMORY[0x1E695DFD8] set];
  }
  v8 = ;
  if (*(&self->_statusBarFlags + 2))
  {
    v9 = [(_UIStatusBarVisualProvider *)self->_visualProvider regionIdentifiersForPartWithIdentifier:v6];
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

- (void)setAction:(id)a3 forPartWithIdentifier:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = [(_UIStatusBar *)self _actionablesForPartWithIdentifier:a4 includeInternalItems:0 onlyVisible:0, 0];
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

        [*(*(&v12 + 1) + 8 * v11++) setAction:v6];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (id)actionForPartWithIdentifier:(id)a3
{
  v3 = [(_UIStatusBar *)self _actionablesForPartWithIdentifier:a3 includeInternalItems:0 onlyVisible:0];
  v4 = [v3 anyObject];
  v5 = [v4 action];

  return v5;
}

- (void)setOffset:(UIOffset)a3 forPartWithIdentifier:(id)a4
{
  vertical = a3.vertical;
  horizontal = a3.horizontal;
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [(_UIStatusBar *)self _regionsForPartWithIdentifier:a4 includeInternalItems:0, 0];
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

- (UIOffset)offsetForPartWithIdentifier:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = [(_UIStatusBar *)self _regionsForPartWithIdentifier:a3 includeInternalItems:0, 0];
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

- (void)setAlpha:(double)a3 forPartWithIdentifier:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(_UIStatusBar *)self _regionsForPartWithIdentifier:a4 includeInternalItems:0, 0];
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

        v10 = [*(*(&v11 + 1) + 8 * v9) contentView];
        [v10 setAlpha:a3];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (double)alphaForPartWithIdentifier:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = [(_UIStatusBar *)self _regionsForPartWithIdentifier:a3 includeInternalItems:0, 0];
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
        v10 = [v9 contentView];

        if (v10)
        {
          v11 = [v9 contentView];
          [v11 alpha];
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

- (void)setStyle:(int64_t)a3 forPartWithIdentifier:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [(_UIStatusBar *)self _regionsForPartWithIdentifier:a4 includeInternalItems:0];
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
        if ([v12 style] != a3)
        {
          [v12 setStyle:a3];
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

- (int64_t)styleForPartWithIdentifier:(id)a3
{
  v3 = [(_UIStatusBar *)self _regionsForPartWithIdentifier:a3 includeInternalItems:0];
  v4 = [v3 anyObject];
  v5 = [v4 style];

  return v5;
}

- (void)setEnabledPartIdentifiers:(id)a3
{
  v41 = *MEMORY[0x1E69E9840];
  v21 = a3;
  if (self->_enabledPartIdentifiers != v21)
  {
    objc_storeStrong(&self->_enabledPartIdentifiers, a3);
    [(_UIStatusBar *)self _prepareVisualProviderIfNeeded];
    v35 = 0;
    v36 = &v35;
    v37 = 0x2020000000;
    v38 = 0;
    v5 = [MEMORY[0x1E695DFD8] set];
    if (v21)
    {
      v20 = v5;
      v6 = MEMORY[0x1E695DFA8];
      v7 = [(NSDictionary *)self->_regions allKeys];
      v8 = [v6 setWithArray:v7];

      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      obj = v21;
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

                  v17 = [*(*(&v27 + 1) + 8 * j) identifier];
                  [v8 removeObject:v17];
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

- (void)setDisabledPartIdentifiers:(id)a3
{
  v53 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (self->_disabledPartIdentifiers != v5)
  {
    obj = a3;
    [(_UIStatusBar *)self _prepareVisualProviderIfNeeded];
    v31 = v5;
    v6 = [(NSArray *)self->_disabledPartIdentifiers arrayByExcludingObjectsInArray:v5];
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

    v5 = v31;
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

- (CGRect)frameForPartWithIdentifier:(id)a3 includeInternalItems:(BOOL)a4
{
  v4 = a4;
  v72 = *MEMORY[0x1E69E9840];
  v6 = a3;
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
  if ([v6 isEqualToString:@"clockPartIdentifier"] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v12 = [(_UIStatusBar *)self _actionablesForPartWithIdentifier:v6 includeInternalItems:v4 onlyVisible:1];
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
          v18 = [v17 layoutItem];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [(_UIStatusBarVisualProvider *)self->_visualProvider clockBoundsForLayoutItem:v17];
          }

          else
          {
            [v18 _ui_bounds];
          }

          v23 = v19;
          v24 = v20;
          v25 = v21;
          v26 = v22;
          v27 = [v18 _ui_view];
          [(UIView *)self convertRect:v27 fromView:v23, v24, v25, v26];
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
    v12 = [(_UIStatusBar *)self _actionablesForPartWithIdentifier:v6 includeInternalItems:v4 onlyVisible:1, 0];
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

          v40 = [*(*(&v62 + 1) + 8 * j) layoutItem];
          [v40 _ui_bounds];
          v42 = v41;
          v44 = v43;
          v46 = v45;
          v48 = v47;
          v49 = [v40 _ui_view];
          [(UIView *)self convertRect:v49 fromView:v42, v44, v46, v48];
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

- (CGRect)frameForPartWithIdentifier:(id)a3
{
  [(_UIStatusBar *)self frameForPartWithIdentifier:a3 includeInternalItems:0];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

+ (CGSize)intrinsicContentSizeForTargetScreen:(id)a3 orientation:(int64_t)a4 onLockScreen:(BOOL)a5
{
  [a1 intrinsicContentSizeForTargetScreen:a3 orientation:a4 onLockScreen:a5 isAzulBLinked:1];
  result.height = v6;
  result.width = v5;
  return result;
}

+ (CGSize)intrinsicContentSizeForTargetScreen:(id)a3 orientation:(int64_t)a4 onLockScreen:(BOOL)a5 isAzulBLinked:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v10 = a3;
  VisualProviderClassForScreen = _UIStatusBarGetVisualProviderClassForScreen(v10, 0);
  if (v7 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [VisualProviderClassForScreen intrinsicLockScreenContentSizeForOrientation:a4];
  }

  else
  {
    [VisualProviderClassForScreen intrinsicContentSizeForOrientation:a4];
  }

  v14 = v12;
  v15 = v13;
  if (v6)
  {
    [a1 _effectiveScaleForVisualProviderClass:VisualProviderClassForScreen targetScreen:v10];
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
  v2 = [(UIView *)self window];
  v3 = [v2 _contextId];

  return v3;
}

- (BOOL)areAnimationsEnabled
{
  if (!+[UIView areAnimationsEnabled])
  {
    return 0;
  }

  v3 = [(UIView *)self window];
  if (v3)
  {
    v4 = [(UIView *)self window];
    v5 = [v4 _hasContext];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (CGSize)intrinsicContentSize
{
  [(_UIStatusBar *)self _prepareVisualProviderIfNeeded];
  v3 = [(UIView *)self window];
  v4 = objc_opt_class();
  if (v3)
  {
    v5 = [UIApp _sceneInterfaceOrientationFromWindow:v3];
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

- (id)_itemWithIdentifier:(id)a3 createIfNeeded:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(NSMutableDictionary *)self->_items objectForKeyedSubscript:v6];
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = !v4;
  }

  if (!v8)
  {
    v7 = [_UIStatusBarItem createItemForIdentifier:v6 statusBar:self];
    if ((*(&self->_statusBarFlags + 2) & 4) != 0)
    {
      [(_UIStatusBarVisualProvider *)self->_visualProvider itemCreated:v7];
    }

    [(NSMutableDictionary *)self->_items setObject:v7 forKeyedSubscript:v6];
  }

  return v7;
}

- (id)displayItemWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [_UIStatusBarItem itemIdentifierForDisplayItemIdentifier:v4];
  v6 = [(_UIStatusBar *)self _itemWithIdentifier:v5 createIfNeeded:0];

  if (v6)
  {
    v7 = [v6 displayItemForIdentifier:v4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)regionWithIdentifier:(id)a3
{
  v4 = a3;
  [(_UIStatusBar *)self _prepareVisualProviderIfNeeded];
  v5 = [(NSDictionary *)self->_regions objectForKeyedSubscript:v4];

  return v5;
}

- (id)itemsDependingOnKeys:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E695DFA8] set];
  items = self->_items;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __37___UIStatusBar_itemsDependingOnKeys___block_invoke;
  v12[3] = &unk_1E7121C30;
  v13 = v4;
  v7 = v5;
  v14 = v7;
  v8 = v4;
  [(NSMutableDictionary *)items enumerateKeysAndObjectsUsingBlock:v12];
  v9 = v14;
  v10 = v7;

  return v7;
}

- (CGRect)frameForDisplayItemWithIdentifier:(id)a3
{
  v4 = a3;
  [(UIView *)self layoutIfNeeded];
  v5 = *MEMORY[0x1E695F058];
  v6 = *(MEMORY[0x1E695F058] + 8);
  v7 = *(MEMORY[0x1E695F058] + 16);
  v8 = *(MEMORY[0x1E695F058] + 24);
  items = self->_items;
  v10 = [_UIStatusBarItem itemIdentifierForDisplayItemIdentifier:v4];
  v11 = [(NSMutableDictionary *)items objectForKeyedSubscript:v10];

  if (v11)
  {
    v12 = [v11 displayItemForIdentifier:v4];
    v13 = v12;
    if (v12)
    {
      v14 = [v12 view];
      [v14 alpha];
      if (v15 > 0.0)
      {
        v16 = [v14 window];

        if (v16)
        {
          [v14 bounds];
          [(UIView *)self convertRect:v14 fromView:?];
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

- (id)displayItemIdentifiersInRegionsWithIdentifiers:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DFA8] set];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = v4;
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

              v15 = [*(*(&v18 + 1) + 8 * j) identifier];
              [v5 addObject:v15];
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

- (id)itemIdentifiersInRegionsWithIdentifiers:(id)a3
{
  v4 = MEMORY[0x1E695DFA8];
  v5 = a3;
  v6 = [v4 set];
  v7 = [(_UIStatusBar *)self displayItemIdentifiersInRegionsWithIdentifiers:v5];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __56___UIStatusBar_itemIdentifiersInRegionsWithIdentifiers___block_invoke;
  v10[3] = &unk_1E7121C58;
  v8 = v6;
  v11 = v8;
  [v7 enumerateObjectsUsingBlock:v10];

  return v8;
}

- (id)dataEntryKeysForItemsWithIdentifiers:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DFA8] set];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v4;
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
        v12 = [v11 dependentEntryKeys];
        [v5 unionSet:v12];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  return v5;
}

- (BOOL)_accessibilityHUDGestureManager:(id)a3 shouldBeginAtPoint:(CGPoint)a4
{
  v4 = [(UIView *)self traitCollection:a3];
  v5 = [v4 userInterfaceIdiom] != 3;

  return v5;
}

- (id)_accessibilityHUDGestureManager:(id)a3 HUDItemForPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v25 = *MEMORY[0x1E69E9840];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = [(_UIStatusBar *)self regions:a3];
  v7 = [v6 allValues];

  v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
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
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        if ([v12 isEnabled])
        {
          v13 = [v12 displayItemForHUDAtLocation:{x, y}];
          v14 = v13;
          if (v13)
          {
            v15 = [v13 view];
            v16 = objc_opt_respondsToSelector();

            if (v16)
            {
              goto LABEL_13;
            }
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }

  v14 = 0;
LABEL_13:

  v17 = [v14 view];
  v18 = [v17 accessibilityHUDRepresentation];

  return v18;
}

- (void)_accessibilityHUDGestureManager:(id)a3 showHUDItem:(id)a4
{
  v5 = a4;
  v6 = [(UIView *)self traitCollection];
  [v5 setCustomUserInterfaceStyle:{objc_msgSend(v6, "userInterfaceStyle")}];

  v7 = [(_UIStatusBar *)self _statusBarWindowForAccessibilityHUD];
  [v7 _showAccessibilityHUDItem:v5 forView:self];
}

- (void)_dismissAccessibilityHUDForGestureManager:(id)a3
{
  v3 = [(_UIStatusBar *)self _statusBarWindowForAccessibilityHUD];
  [v3 _dismissAccessibilityHUD];
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