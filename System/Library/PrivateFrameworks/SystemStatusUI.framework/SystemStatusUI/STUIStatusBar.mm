@interface STUIStatusBar
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
- (BOOL)_showSensorActivityIndicatorWithoutPortalView;
- (BOOL)_useAutomaticStyle;
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
- (STUIStatusBar)initWithStyle:(int64_t)style;
- (STUIStatusBarActionable)hoveredActionable;
- (STUIStatusBarActionable)targetActionable;
- (STUIStatusBarAdditionalDataEntriesDelegate)additionalDataDelegate;
- (STUIStatusBarMenuBarProvider)menuBarProvider;
- (STUIStatusBarVisualProvider)visualProvider;
- (UIOffset)offsetForPartWithIdentifier:(id)identifier;
- (UIScreen)_effectiveTargetScreen;
- (double)alphaForPartWithIdentifier:(id)identifier;
- (double)maximumPossibleMenuBarWidth;
- (id)_accessibilityHUDGestureManager:(id)manager HUDItemForPoint:(CGPoint)point;
- (id)_actionablesForPartWithIdentifier:(id)identifier includeInternalItems:(BOOL)items onlyVisible:(BOOL)visible;
- (id)_descriptionBuilderWithMultilinePrefix:(id)prefix forDebug:(BOOL)debug;
- (id)_expandedDescription;
- (id)_expandedDescriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)_itemWithIdentifier:(id)identifier createIfNeeded:(BOOL)needed;
- (id)_rearrangeOverflowedItems;
- (id)_regionsForPartWithIdentifier:(id)identifier includeInternalItems:(BOOL)items;
- (id)_traitCollectionForChildEnvironment:(id)environment;
- (id)actionForPartWithIdentifier:(id)identifier;
- (id)additionalEntriesByRelativePriority;
- (id)dataEntryKeysForItemsWithIdentifiers:(id)identifiers;
- (id)debugDescriptionWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)displayItemIdentifiersInRegionsWithIdentifiers:(id)identifiers;
- (id)displayItemWithIdentifier:(id)identifier;
- (id)imageForAvatarIdentifier:(id)identifier;
- (id)itemIdentifiersInRegionsWithIdentifiers:(id)identifiers;
- (id)itemsDependingOnKeys:(id)keys;
- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region;
- (id)pointerInteraction:(id)interaction styleForRegion:(id)region;
- (id)regionWithIdentifier:(id)identifier;
- (id)styleAttributesForStyle:(int64_t)style;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (id)viewForAdditionalEntryWithIdentifier:(id)identifier;
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
- (void)_setAutomaticStyle:(int64_t)style additionalStylesForRegionIdentifiers:(id)identifiers;
- (void)_setVisualProviderClassName:(id)name;
- (void)_updateActionGestureRecognizerAllowableTouchTypesIfNeeded;
- (void)_updateDisplayedItemsWithData:(id)data styleAttributes:(id)attributes extraAnimations:(id)animations;
- (void)_updateRegionItems;
- (void)_updateStyleAttributes;
- (void)_updateWithAggregatedData:(id)data;
- (void)_updateWithData:(id)data completionHandler:(id)handler;
- (void)dealloc;
- (void)layoutSubviews;
- (void)pointerInteraction:(id)interaction willEnterRegion:(id)region animator:(id)animator;
- (void)reinitializeStatusBar;
- (void)resetVisualProvider;
- (void)resizeSubviewsWithOldSize:(CGSize)size;
- (void)setAction:(id)action forPartWithIdentifier:(id)identifier;
- (void)setAdditionalDataDelegate:(id)delegate;
- (void)setAlpha:(double)alpha forPartWithIdentifier:(id)identifier;
- (void)setAvoidanceFrame:(CGRect)frame animationSettings:(id)settings options:(unint64_t)options;
- (void)setDisabledPartIdentifiers:(id)identifiers;
- (void)setEnabledPartIdentifiers:(id)identifiers;
- (void)setForegroundColor:(id)color;
- (void)setHidden:(BOOL)hidden animationParameters:(id)parameters;
- (void)setMode:(int64_t)mode;
- (void)setOffset:(UIOffset)offset forPartWithIdentifier:(id)identifier;
- (void)setOrientation:(int64_t)orientation;
- (void)setOverlayData:(id)data;
- (void)setStyle:(int64_t)style;
- (void)setStyle:(int64_t)style forPartWithIdentifier:(id)identifier;
- (void)setStyleAttributes:(id)attributes;
- (void)statusBarGesture:(id)gesture;
- (void)updateConstraints;
- (void)updateForcingIterativeOverflow;
- (void)updateMenuBar;
@end

@implementation STUIStatusBar

- (void)_prepareVisualProviderIfNeeded
{
  if (self->_targetScreen || ([(STUIStatusBar *)self window], v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
    if (!self->_visualProvider)
    {
      visualProviderClass = self->_visualProviderClass;
      if (!visualProviderClass)
      {
        _effectiveTargetScreen = [(STUIStatusBar *)self _effectiveTargetScreen];
        visualProviderInfo = [(STUIStatusBar *)self visualProviderInfo];
        v7 = STUIStatusBarGetVisualProviderClassForScreen(_effectiveTargetScreen, visualProviderInfo);
        v8 = self->_visualProviderClass;
        self->_visualProviderClass = v7;

        if ([(objc_class *)self->_visualProviderClass scalesWithScreenNativeScale])
        {
          v9 = 2;
        }

        else
        {
          v9 = 0;
        }

        self->_statusBarFlags = (*&self->_statusBarFlags & 0xFFFFFFFD | v9);
        if (objc_opt_respondsToSelector())
        {
          v10 = 4;
        }

        else
        {
          v10 = 0;
        }

        self->_statusBarFlags = (*&self->_statusBarFlags & 0xFFFFFFFB | v10);
        if ([(objc_class *)self->_visualProviderClass requiresIterativeOverflowLayout])
        {
          v11 = 8;
        }

        else
        {
          v11 = 0;
        }

        self->_statusBarFlags = (*&self->_statusBarFlags & 0xFFFFFFF7 | v11);

        visualProviderClass = self->_visualProviderClass;
      }

      v12 = objc_alloc_init(visualProviderClass);
      visualProvider = self->_visualProvider;
      self->_visualProvider = v12;

      [(STUIStatusBarVisualProvider *)self->_visualProvider setStatusBar:self];
      if (objc_opt_respondsToSelector())
      {
        v14 = 16;
      }

      else
      {
        v14 = 0;
      }

      self->_statusBarFlags = (*&self->_statusBarFlags & 0xFFFFFFEF | v14);
      if (objc_opt_respondsToSelector())
      {
        v15 = 32;
      }

      else
      {
        v15 = 0;
      }

      self->_statusBarFlags = (*&self->_statusBarFlags & 0xFFFFFFDF | v15);
      if (objc_opt_respondsToSelector())
      {
        v16 = 64;
      }

      else
      {
        v16 = 0;
      }

      self->_statusBarFlags = (*&self->_statusBarFlags & 0xFFFFFFBF | v16);
      if (objc_opt_respondsToSelector())
      {
        v17 = 128;
      }

      else
      {
        v17 = 0;
      }

      self->_statusBarFlags = (*&self->_statusBarFlags & 0xFFFFFF7F | v17);
      if (objc_opt_respondsToSelector())
      {
        v18 = 256;
      }

      else
      {
        v18 = 0;
      }

      self->_statusBarFlags = (*&self->_statusBarFlags & 0xFFFFFEFF | v18);
      if (objc_opt_respondsToSelector())
      {
        v19 = 512;
      }

      else
      {
        v19 = 0;
      }

      self->_statusBarFlags = (*&self->_statusBarFlags & 0xFFFFFDFF | v19);
      if (objc_opt_respondsToSelector())
      {
        v20 = 1024;
      }

      else
      {
        v20 = 0;
      }

      self->_statusBarFlags = (*&self->_statusBarFlags & 0xFFFFFBFF | v20);
      if (objc_opt_respondsToSelector())
      {
        v21 = 2048;
      }

      else
      {
        v21 = 0;
      }

      self->_statusBarFlags = (*&self->_statusBarFlags & 0xFFFFF7FF | v21);
      if (objc_opt_respondsToSelector())
      {
        v22 = 4096;
      }

      else
      {
        v22 = 0;
      }

      self->_statusBarFlags = (*&self->_statusBarFlags & 0xFFFFEFFF | v22);
      if (objc_opt_respondsToSelector())
      {
        v23 = 0x2000;
      }

      else
      {
        v23 = 0;
      }

      self->_statusBarFlags = (*&self->_statusBarFlags & 0xFFFFDFFF | v23);
      if (objc_opt_respondsToSelector())
      {
        v24 = 0x4000;
      }

      else
      {
        v24 = 0;
      }

      self->_statusBarFlags = (*&self->_statusBarFlags & 0xFFFFBFFF | v24);
      if (objc_opt_respondsToSelector())
      {
        v25 = 0x8000;
      }

      else
      {
        v25 = 0;
      }

      self->_statusBarFlags = (*&self->_statusBarFlags & 0xFFFF7FFF | v25);
      if (objc_opt_respondsToSelector())
      {
        v26 = 0x10000;
      }

      else
      {
        v26 = 0;
      }

      self->_statusBarFlags = (*&self->_statusBarFlags & 0xFFFEFFFF | v26);
      if (objc_opt_respondsToSelector())
      {
        v27 = 0x20000;
      }

      else
      {
        v27 = 0;
      }

      self->_statusBarFlags = (*&self->_statusBarFlags & 0xFFFDFFFF | v27);
      if (objc_opt_respondsToSelector())
      {
        v28 = 0x40000;
      }

      else
      {
        v28 = 0;
      }

      self->_statusBarFlags = (*&self->_statusBarFlags & 0xFFFBFFFF | v28);
      if (objc_opt_respondsToSelector())
      {
        v29 = 0x80000;
      }

      else
      {
        v29 = 0;
      }

      self->_statusBarFlags = (*&self->_statusBarFlags & 0xFFF7FFFF | v29);
      if (objc_opt_respondsToSelector())
      {
        v30 = 0x100000;
      }

      else
      {
        v30 = 0;
      }

      self->_statusBarFlags = (*&self->_statusBarFlags & 0xFFEFFFFF | v30);
      [(STUIStatusBar *)self _updateActionGestureRecognizerAllowableTouchTypesIfNeeded];
    }

    if (!self->_foregroundView)
    {
      v31 = [STUIStatusBarForegroundView alloc];
      [(STUIStatusBar *)self bounds];
      v32 = [(STUIStatusBarForegroundView *)v31 initWithFrame:?];
      [(STUIStatusBar *)self setForegroundView:v32];

      v33 = [objc_alloc(MEMORY[0x277D75870]) initWithDelegate:self];
      pointerInteraction = self->_pointerInteraction;
      self->_pointerInteraction = v33;

      foregroundView = [(STUIStatusBar *)self foregroundView];
      [foregroundView addInteraction:self->_pointerInteraction];

      [(STUIStatusBar *)self addSubview:self->_foregroundView];
    }

    if (![(NSDictionary *)self->_regions count])
    {
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      v37 = self->_visualProvider;
      containerView = [(STUIStatusBar *)self containerView];
      v39 = [(STUIStatusBarVisualProvider *)v37 setupInContainerView:containerView];

      v48[0] = MEMORY[0x277D85DD0];
      v48[1] = 3221225472;
      v48[2] = __47__STUIStatusBar__prepareVisualProviderIfNeeded__block_invoke;
      v48[3] = &unk_279D393F0;
      v48[4] = self;
      v40 = dictionary;
      v49 = v40;
      [v39 enumerateObjectsUsingBlock:v48];
      objc_storeStrong(&self->_regions, dictionary);
      regions = self->_regions;
      v47[0] = MEMORY[0x277D85DD0];
      v47[1] = 3221225472;
      v47[2] = __47__STUIStatusBar__prepareVisualProviderIfNeeded__block_invoke_2;
      v47[3] = &unk_279D39418;
      v47[4] = self;
      [(NSDictionary *)regions enumerateKeysAndObjectsUsingBlock:v47];
      [STUIStatusBarDisplayItemState setupRelationsBetweenDisplayItemStates:self->_displayItemStates visualProvider:self->_visualProvider];
      if (self->_mode)
      {
        if ((*&self->_statusBarFlags & 0x10) != 0)
        {
          [(STUIStatusBarVisualProvider *)self->_visualProvider modeUpdatedFromMode:0];
        }
      }

      if ((*(&self->_statusBarFlags + 2) & 8) == 0)
      {
        goto LABEL_81;
      }

      v42 = self->_visualProvider;
      selfCopy = self;
      v44 = selfCopy;
      statusBarFlags = self->_statusBarFlags;
      if ((*&statusBarFlags & 0x80000) != 0)
      {
        if ((selfCopy->_style & 0x3F) == 0)
        {
          v46 = 1;
          goto LABEL_80;
        }

        if ((*&statusBarFlags & 0x1000000) != 0)
        {
          v46 = [(STUIStatusBar *)selfCopy mode]!= 1;
          goto LABEL_80;
        }
      }

      v46 = 0;
LABEL_80:

      [(STUIStatusBarVisualProvider *)v42 updateLumaTracking:v46];
LABEL_81:
      [(STUIStatusBar *)self _updateStyleAttributes];
    }
  }
}

- (CGAffineTransform)_effectiveScaleTransform
{
  if ((LOBYTE(self[9].a) & 2) == 0)
  {
    goto LABEL_2;
  }

  selfCopy = self;
  _screen = [(CGAffineTransform *)self _screen];
  [_screen _nativeScale];
  v9 = v8;

  if ((LOBYTE(selfCopy[9].a) & 4) != 0)
  {
    [*&selfCopy[12].ty referenceScreenScale];
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
    v4 = MEMORY[0x277CBF2C0];
    v5 = *(MEMORY[0x277CBF2C0] + 16);
    *&retstr->a = *MEMORY[0x277CBF2C0];
    *&retstr->c = v5;
    *&retstr->tx = *(v4 + 32);
  }

  else
  {

    return CGAffineTransformMakeScale(retstr, v12 / v9, v12 / v9);
  }

  return self;
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

  window = [(STUIStatusBar *)self window];
  screen = [window screen];

  if (!screen)
  {
    traitCollection = [(STUIStatusBar *)self traitCollection];
    userInterfaceIdiom = [traitCollection userInterfaceIdiom];

    if (userInterfaceIdiom == 3)
    {
      [MEMORY[0x277D759A0] _carScreen];
    }

    else
    {
      [MEMORY[0x277D759A0] mainScreen];
    }
    v3 = ;
    goto LABEL_2;
  }

LABEL_4:

  return screen;
}

- (void)_updateActionGestureRecognizerAllowableTouchTypesIfNeeded
{
  visualProvider = self->_visualProvider;
  if (visualProvider)
  {
    if ([(STUIStatusBarVisualProvider *)visualProvider supportsIndirectPointerTouchActions])
    {
      v4 = &unk_287D1B0E0;
    }

    else
    {
      v4 = &unk_287D1B0C8;
    }

    actionGestureRecognizer = self->_actionGestureRecognizer;

    [(UIGestureRecognizer *)actionGestureRecognizer setAllowedTouchTypes:v4];
  }
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

void __47__STUIStatusBar__prepareVisualProviderIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setStatusBar:v3];
  v5 = *(a1 + 40);
  v6 = [v4 identifier];
  [v5 setObject:v4 forKeyedSubscript:v6];
}

void __47__STUIStatusBar__prepareVisualProviderIfNeeded__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  [*(*(a1 + 32) + 424) orderedDisplayItemPlacementsInRegionWithIdentifier:a2];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  obj = v17 = 0u;
  v6 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [v10 identifier];
        v12 = [*(*(a1 + 32) + 560) objectForKeyedSubscript:v11];
        if (!v12)
        {
          v12 = [STUIStatusBarDisplayItemState stateForDisplayItemWithIdentifier:v11 statusBar:*(a1 + 32)];
          [*(*(a1 + 32) + 560) setObject:v12 forKeyedSubscript:v11];
        }

        [v12 addPlacement:v10 inRegion:v5];
      }

      v7 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }
}

- (void)_updateStyleAttributes
{
  selfCopy = self;
  v3 = selfCopy;
  statusBarFlags = selfCopy->_statusBarFlags;
  if ((*&statusBarFlags & 0x80000) == 0)
  {
    goto LABEL_4;
  }

  if ((selfCopy->_style & 0x3F) != 0)
  {
    if ((*&statusBarFlags & 0x1000000) == 0)
    {
LABEL_4:

LABEL_5:
      v5 = &OBJC_IVAR___STUIStatusBar__style;
      goto LABEL_9;
    }

    mode = [(STUIStatusBar *)selfCopy mode];

    if (mode == 1)
    {
      goto LABEL_5;
    }
  }

  else
  {
  }

  v5 = &OBJC_IVAR___STUIStatusBar__automaticStyle;
LABEL_9:
  v7 = *(&v3->super.super.super.isa + *v5);
  if (v7 == 2)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2 * (v7 == 1);
  }

  [(STUIStatusBar *)v3 setOverrideUserInterfaceStyle:v8];
  v9 = [(STUIStatusBar *)v3 styleAttributesForStyle:v7];
  [(STUIStatusBar *)v3 setStyleAttributes:v9];
}

- (STUIStatusBarVisualProvider)visualProvider
{
  [(STUIStatusBar *)self _prepareVisualProviderIfNeeded];
  visualProvider = self->_visualProvider;

  return visualProvider;
}

- (BOOL)areAnimationsEnabled
{
  if (![MEMORY[0x277D75D18] areAnimationsEnabled])
  {
    return 0;
  }

  window = [(STUIStatusBar *)self window];
  if (window)
  {
    window2 = [(STUIStatusBar *)self window];
    _hasContext = [window2 _hasContext];
  }

  else
  {
    _hasContext = 0;
  }

  return _hasContext;
}

- (void)_fixupDisplayItemAttributes
{
  v3 = _statusBarRunningAnimations;
  v4 = [v3 count];

  if (!v4 && ((*(&self->_statusBarFlags + 1) & 4) == 0 || [(STUIStatusBarVisualProvider *)self->_visualProvider canFixupDisplayItemAttributes]))
  {
    regions = self->_regions;

    [(NSDictionary *)regions enumerateKeysAndObjectsUsingBlock:&__block_literal_global_137];
  }
}

- (BOOL)_useAutomaticStyle
{
  selfCopy = self;
  v3 = selfCopy;
  statusBarFlags = selfCopy->_statusBarFlags;
  if ((*&statusBarFlags & 0x80000) != 0)
  {
    if ((selfCopy->_style & 0x3F) == 0)
    {
      v5 = 1;
      goto LABEL_7;
    }

    if ((*&statusBarFlags & 0x1000000) != 0)
    {
      v5 = [(STUIStatusBar *)selfCopy mode]!= 1;
      goto LABEL_7;
    }
  }

  v5 = 0;
LABEL_7:

  return v5;
}

- (void)updateConstraints
{
  v3.receiver = self;
  v3.super_class = STUIStatusBar;
  [(STUIStatusBar *)&v3 updateConstraints];
  if ((*(&self->_statusBarFlags + 2) & 0x40) == 0)
  {
    [(STUIStatusBar *)self _updateRegionItems];
  }
}

- (void)_updateRegionItems
{
  v61 = *MEMORY[0x277D85DE8];
  if (!self->_currentData)
  {
    return;
  }

  selfCopy = self;
  v3 = 560;
  [(NSMutableDictionary *)self->_displayItemStates enumerateKeysAndObjectsUsingBlock:&__block_literal_global_155_0];
  [(NSDictionary *)selfCopy->_regions keysSortedByValueUsingComparator:&__block_literal_global_158];
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
      v6 = objc_alloc_init(MEMORY[0x277CBEB40]);
      v7 = [(STUIStatusBarVisualProvider *)selfCopy->_visualProvider orderedDisplayItemPlacementsInRegionWithIdentifier:v5];
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
              v17 = [STUIStatusBarItem itemIdentifierForDisplayItemIdentifier:identifier];
              v18 = [(STUIStatusBar *)selfCopy itemWithIdentifier:v17];
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
      v25 = [(STUIStatusBarVisualProvider *)selfCopy->_visualProvider region:v41 willSetDisplayItems:v43];
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
    [(STUIStatusBar *)selfCopy _updateRegionItems];
  }

LABEL_35:
  if ((*(&selfCopy->_statusBarFlags + 1) & 0x20) != 0)
  {
    [(STUIStatusBarVisualProvider *)selfCopy->_visualProvider statusBarRegionsUpdated];
  }
}

uint64_t __35__STUIStatusBar__updateRegionItems__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 isEnabled];
  v6 = [v4 isEnabled];

  if ((v5 | v6 ^ 1))
  {
    return v5 & (v6 ^ 1u);
  }

  else
  {
    return -1;
  }
}

- (void)layoutSubviews
{
  v7.receiver = self;
  v7.super_class = STUIStatusBar;
  layoutSubviews = [(STUIStatusBar *)&v7 layoutSubviews];
  __31__STUIStatusBar_layoutSubviews__block_invoke(layoutSubviews, self->_foregroundView);
  regions = self->_regions;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __31__STUIStatusBar_layoutSubviews__block_invoke_2;
  v6[3] = &__block_descriptor_40_e46_v32__0__NSString_8__STUIStatusBarRegion_16_B24lu32l8;
  v6[4] = &__block_literal_global_151;
  [(NSDictionary *)regions enumerateKeysAndObjectsUsingBlock:v6];
  [(UIView *)self->_foregroundView layoutIfNeeded];
  if ((*&self->_statusBarFlags & 0x800008) == 0)
  {
    _rearrangeOverflowedItems = [(STUIStatusBar *)self _rearrangeOverflowedItems];
  }

  [(STUIStatusBar *)self layoutIfNeeded];
}

void __31__STUIStatusBar_layoutSubviews__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 _is_needsLayout])
  {
    v2 = [v3 layer];
    [v2 setNeedsLayout];
  }
}

void __31__STUIStatusBar_layoutSubviews__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [v4 contentView];
  if (v5)
  {
    (*(*(a1 + 32) + 16))();
  }

  v6 = [v4 displayItems];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __31__STUIStatusBar_layoutSubviews__block_invoke_3;
  v7[3] = &__block_descriptor_40_e41_v32__0__STUIStatusBarDisplayItem_8Q16_B24lu32l8;
  v7[4] = *(a1 + 32);
  [v6 enumerateObjectsUsingBlock:v7];
}

- (id)_rearrangeOverflowedItems
{
  [(STUIStatusBar *)self frame];
  if (CGRectIsEmpty(v16))
  {
    v3 = 0;
  }

  else
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x3032000000;
    v12 = __Block_byref_object_copy__5;
    v13 = __Block_byref_object_dispose__5;
    v14 = 0;
    regions = self->_regions;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __42__STUIStatusBar__rearrangeOverflowedItems__block_invoke;
    v8[3] = &unk_279D39460;
    v8[4] = self;
    v8[5] = &v9;
    [(NSDictionary *)regions enumerateKeysAndObjectsUsingBlock:v8];
    v5 = v10[5];
    if (v5)
    {
      [v5 updateToNextEnabledPlacement];
      [(STUIStatusBar *)self setNeedsUpdateConstraints];
      [(STUIStatusBar *)self setNeedsLayout];
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

void __42__STUIStatusBar__rearrangeOverflowedItems__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = a3;
  if ([v11 isEnabled] && (objc_msgSend(v11, "disableItemFrameBasedOverflow") & 1) == 0)
  {
    v4 = [v11 overflowedDisplayItem];
    v5 = v4;
    if (!v4)
    {
LABEL_9:

      goto LABEL_10;
    }

    v6 = *(*(a1 + 32) + 560);
    v7 = [v4 identifier];
    v8 = [v6 objectForKeyedSubscript:v7];

    v9 = *(*(a1 + 40) + 8);
    if (*(v9 + 40))
    {
      v10 = [v8 priority];
      if (v10 >= [*(*(*(a1 + 40) + 8) + 40) priority])
      {
LABEL_8:

        goto LABEL_9;
      }

      v9 = *(*(a1 + 40) + 8);
    }

    objc_storeStrong((v9 + 40), v8);
    goto LABEL_8;
  }

LABEL_10:
}

- (void)reinitializeStatusBar
{
  v66 = *MEMORY[0x277D85DE8];
  [(UIView *)self->_foregroundView removeFromSuperview];
  foregroundView = [(STUIStatusBar *)self foregroundView];
  [foregroundView removeInteraction:self->_pointerInteraction];

  pointerInteraction = self->_pointerInteraction;
  self->_pointerInteraction = 0;

  foregroundView = self->_foregroundView;
  self->_foregroundView = 0;

  visualProvider = self->_visualProvider;
  self->_visualProvider = 0;

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [(STUIStatusBar *)self setItems:dictionary];

  [(STUIStatusBar *)self resetVisualProvider];
  objc_initWeak(&location, self);
  v8 = [STUIStatusBarDataAggregator alloc];
  v59[0] = MEMORY[0x277D85DD0];
  v59[1] = 3221225472;
  v59[2] = __38__STUIStatusBar_reinitializeStatusBar__block_invoke;
  v59[3] = &unk_279D393A0;
  objc_copyWeak(&v60, &location);
  v9 = [(STUIStatusBarDataAggregator *)v8 initWithUpdateBlock:v59];
  dataAggregator = self->_dataAggregator;
  self->_dataAggregator = v9;

  v55 = 0;
  v56 = &v55;
  v57 = 0x2020000000;
  v58 = 0;
  if (self->_enabledPartIdentifiers)
  {
    v11 = MEMORY[0x277CBEB58];
    allKeys = [(NSDictionary *)self->_regions allKeys];
    v13 = [v11 setWithArray:allKeys];

    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    obj = self->_enabledPartIdentifiers;
    v14 = [(NSArray *)obj countByEnumeratingWithState:&v51 objects:v65 count:16];
    if (v14)
    {
      v15 = *v52;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v52 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v51 + 1) + 8 * i);
          v47 = 0u;
          v48 = 0u;
          v49 = 0u;
          v50 = 0u;
          v18 = [(STUIStatusBar *)self _regionsForPartWithIdentifier:v17 includeInternalItems:0];
          v19 = [v18 countByEnumeratingWithState:&v47 objects:v64 count:16];
          if (v19)
          {
            v20 = *v48;
            do
            {
              for (j = 0; j != v19; ++j)
              {
                if (*v48 != v20)
                {
                  objc_enumerationMutation(v18);
                }

                identifier = [*(*(&v47 + 1) + 8 * j) identifier];
                [v13 removeObject:identifier];
              }

              v19 = [v18 countByEnumeratingWithState:&v47 objects:v64 count:16];
            }

            while (v19);
          }
        }

        v14 = [(NSArray *)obj countByEnumeratingWithState:&v51 objects:v65 count:16];
      }

      while (v14);
    }

    regions = self->_regions;
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __38__STUIStatusBar_reinitializeStatusBar__block_invoke_2;
    v44[3] = &unk_279D39460;
    v24 = v13;
    v45 = v24;
    v46 = &v55;
    [(NSDictionary *)regions enumerateKeysAndObjectsUsingBlock:v44];
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v25 = self->_disabledPartIdentifiers;
  v26 = [(NSArray *)v25 countByEnumeratingWithState:&v40 objects:v63 count:16];
  if (v26)
  {
    v27 = *v41;
    do
    {
      for (k = 0; k != v26; ++k)
      {
        if (*v41 != v27)
        {
          objc_enumerationMutation(v25);
        }

        v29 = *(*(&v40 + 1) + 8 * k);
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        v30 = [(STUIStatusBar *)self _actionablesForPartWithIdentifier:v29 includeInternalItems:1 onlyVisible:0];
        v31 = [v30 countByEnumeratingWithState:&v36 objects:v62 count:16];
        if (v31)
        {
          v32 = *v37;
          do
          {
            for (m = 0; m != v31; ++m)
            {
              if (*v37 != v32)
              {
                objc_enumerationMutation(v30);
              }

              [*(*(&v36 + 1) + 8 * m) disableWithToken:2];
              *(v56 + 24) = 1;
            }

            v31 = [v30 countByEnumeratingWithState:&v36 objects:v62 count:16];
          }

          while (v31);
        }
      }

      v26 = [(NSArray *)v25 countByEnumeratingWithState:&v40 objects:v63 count:16];
    }

    while (v26);
  }

  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __38__STUIStatusBar_reinitializeStatusBar__block_invoke_3;
  v35[3] = &unk_279D37FC0;
  v35[4] = self;
  v35[5] = &v55;
  [MEMORY[0x277D75D18] performWithoutAnimation:v35];
  _Block_object_dispose(&v55, 8);
  objc_destroyWeak(&v60);
  objc_destroyWeak(&location);
}

void __38__STUIStatusBar_reinitializeStatusBar__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateWithAggregatedData:v3];
}

- (void)resetVisualProvider
{
  [(NSDictionary *)self->_regions enumerateKeysAndObjectsUsingBlock:&__block_literal_global_118];
  regions = self->_regions;
  self->_regions = MEMORY[0x277CBEC10];

  self->_displayItemStates = [MEMORY[0x277CBEB38] dictionary];

  MEMORY[0x2821F96F8]();
}

void __36__STUIStatusBar_resetVisualProvider__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = MEMORY[0x277CBEB70];
  v4 = a3;
  v5 = [v3 orderedSet];
  [v4 setDisplayItems:v5];
}

uint64_t __38__STUIStatusBar_reinitializeStatusBar__block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) _prepareVisualProviderIfNeeded];
  v2 = *(a1 + 32);
  if (*(*(*(a1 + 40) + 8) + 24) == 1 && (*(v2 + 434) & 2) != 0)
  {
    [*(v2 + 424) statusBarEnabledPartsUpdated];
    v2 = *(a1 + 32);
  }

  v3 = [v2 currentAggregatedData];
  [v2 updateWithData:v3];

  v4 = *(a1 + 32);

  return [v4 layoutIfNeeded];
}

- (unsigned)animationContextId
{
  window = [(STUIStatusBar *)self window];
  _contextId = [window _contextId];

  return _contextId;
}

- (void)dealloc
{
  v3 = +[STUIStatusBarDataBroadcaster sharedInstance];
  [v3 unregisterListener:self];

  v4.receiver = self;
  v4.super_class = STUIStatusBar;
  [(STUIStatusBar *)&v4 dealloc];
}

void __44__STUIStatusBar__fixupDisplayItemAttributes__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if ([v4 isEnabled])
  {
    v3 = [v4 displayItems];
    [v3 enumerateObjectsUsingBlock:&__block_literal_global_140];
  }
}

void __44__STUIStatusBar__fixupDisplayItemAttributes__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setAlpha:1.0];
  v3 = *(MEMORY[0x277CBF2C0] + 16);
  v4[0] = *MEMORY[0x277CBF2C0];
  v4[1] = v3;
  v4[2] = *(MEMORY[0x277CBF2C0] + 32);
  [v2 setTransform:v4];
}

uint64_t __94__STUIStatusBar_Wrapper__initWithFrame_showForegroundView_wantsServer_inProcessStateProvider___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained styleDelegate];
  v3 = v2;
  v4 = 1;
  if (WeakRetained && v2 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v4 = [v3 statusBarShouldDisableRegionActions:WeakRetained] ^ 1;
  }

  return v4;
}

uint64_t __109__STUIStatusBar_Wrapper__requestStyle_partStyles_legibilityStyle_foregroundColor_animationParameters_forced___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 56);
  result = [*(a1 + 32) _requestedResolvedStyle];
  if (v2 == result)
  {
    [*(a1 + 32) _updateWithData:0 force:0];
    [*(*(a1 + 32) + 592) setStyle:*(a1 + 56)];
    [*(*(a1 + 32) + 592) setForegroundColor:*(a1 + 40)];
    v4 = *(a1 + 48);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __109__STUIStatusBar_Wrapper__requestStyle_partStyles_legibilityStyle_foregroundColor_animationParameters_forced___block_invoke_2;
    v5[3] = &unk_279D385D8;
    v5[4] = *(a1 + 32);
    return [v4 enumerateKeysAndObjectsUsingBlock:v5];
  }

  return result;
}

void __109__STUIStatusBar_Wrapper__requestStyle_partStyles_legibilityStyle_foregroundColor_animationParameters_forced___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  [*(*(a1 + 32) + 592) setStyle:objc_msgSend(a3 forPartWithIdentifier:{"integerValue"), v5}];
}

uint64_t ___STUIStatusBar_Log_block_invoke()
{
  v0 = os_log_create("com.apple.SystemStatusUI", "STUIStatusBarLog");
  v1 = _STUIStatusBar_Log___StatusBar_LOG;
  _STUIStatusBar_Log___StatusBar_LOG = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t ___STUIStatusBar_BackgroundActivity_Log_block_invoke()
{
  v0 = os_log_create("com.apple.SystemStatusUI", "BackgroundActivityLog");
  v1 = _STUIStatusBar_BackgroundActivity_Log___StatusBarBackground_LOG;
  _STUIStatusBar_BackgroundActivity_Log___StatusBarBackground_LOG = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

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
  v5 = _MergedGlobals_7;
  screenCopy = screen;
  indicatorCopy = indicator;
  if (v5 != -1)
  {
    dispatch_once(&_MergedGlobals_7, &__block_literal_global_13);
  }

  v8 = qword_280C1E718;
  v9 = sensorActivityScreenIdentifier(screenCopy);

  [v8 setObject:indicatorCopy forKey:v9];
}

uint64_t __59__STUIStatusBar_registerSensorActivityIndicator_forScreen___block_invoke()
{
  v0 = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
  v1 = qword_280C1E718;
  qword_280C1E718 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (id)sensorActivityIndicatorForScreen:(id)screen
{
  v3 = qword_280C1E718;
  v4 = sensorActivityScreenIdentifier(screen);
  v5 = [v3 objectForKey:v4];

  return v5;
}

- (STUIStatusBar)initWithStyle:(int64_t)style
{
  v30[1] = *MEMORY[0x277D85DE8];
  v29.receiver = self;
  v29.super_class = STUIStatusBar;
  v4 = [(STUIStatusBar *)&v29 initWithFrame:0.0, 0.0, 600.0, 50.0];
  v5 = +[STUIStatusBarSettingsDomain rootSettings];
  if ([v5 alwaysAutomaticStyle])
  {
    v6 = 0x1000000;
  }

  else
  {
    v6 = 0;
  }

  v4->_statusBarFlags = (*&v4->_statusBarFlags & 0xFEFFFFFF | v6);

  if ((*&v4->_statusBarFlags & 0x1000000) != 0)
  {
    styleCopy = 0;
  }

  else
  {
    styleCopy = style;
  }

  v4->_style = styleCopy;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [(STUIStatusBar *)v4 setItems:dictionary];

  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  [(STUIStatusBar *)v4 setDisplayItemStates:dictionary2];

  [(STUIStatusBar *)v4 _setHostsLayoutEngine:1];
  v10 = +[STUIStatusBarSettingsDomain rootSettings];
  forcedMode = [v10 forcedMode];

  if (forcedMode != -1)
  {
    v4->_mode = forcedMode;
  }

  objc_initWeak(&location, v4);
  v12 = [STUIStatusBarDataAggregator alloc];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __31__STUIStatusBar_initWithStyle___block_invoke;
  v26[3] = &unk_279D393A0;
  objc_copyWeak(&v27, &location);
  v13 = [(STUIStatusBarDataAggregator *)v12 initWithUpdateBlock:v26];
  dataAggregator = v4->_dataAggregator;
  v4->_dataAggregator = v13;

  v15 = +[STUIStatusBarDataBroadcaster sharedInstance];
  [v15 registerListener:v4];

  v16 = [[STUIStatusBarActionGestureRecognizer alloc] initWithTarget:v4 action:sel_statusBarGesture_];
  actionGestureRecognizer = v4->_actionGestureRecognizer;
  v4->_actionGestureRecognizer = &v16->super;

  [(UIGestureRecognizer *)v4->_actionGestureRecognizer setDelegate:v4];
  [(UIGestureRecognizer *)v4->_actionGestureRecognizer setAllowedPressTypes:&unk_287D1B0B0];
  [(UIGestureRecognizer *)v4->_actionGestureRecognizer setAllowedTouchTypes:&unk_287D1B0C8];
  [(UIGestureRecognizer *)v4->_actionGestureRecognizer setDelaysTouchesBegan:1];
  [(STUIStatusBar *)v4 addGestureRecognizer:v4->_actionGestureRecognizer];
  v18 = [objc_alloc(MEMORY[0x277D750A8]) initWithView:v4 delegate:v4];
  accessibilityHUDGestureManager = v4->_accessibilityHUDGestureManager;
  v4->_accessibilityHUDGestureManager = v18;

  v20 = objc_opt_self();
  v30[0] = v20;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:1];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __31__STUIStatusBar_initWithStyle___block_invoke_71;
  v24[3] = &unk_279D393C8;
  objc_copyWeak(&v25, &location);
  v22 = [(STUIStatusBar *)v4 registerForTraitChanges:v21 withHandler:v24];

  objc_destroyWeak(&v25);
  objc_destroyWeak(&v27);
  objc_destroyWeak(&location);
  return v4;
}

void __31__STUIStatusBar_initWithStyle___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateWithAggregatedData:v3];
}

void __31__STUIStatusBar_initWithStyle___block_invoke_71(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __31__STUIStatusBar_initWithStyle___block_invoke_2;
  v3[3] = &unk_279D37F00;
  v4 = WeakRetained;
  v2 = WeakRetained;
  [v2 _performWithInheritedAnimation:v3];
}

- (id)_expandedDescription
{
  v2 = [(STUIStatusBar *)self _expandedDescriptionBuilderWithMultilinePrefix:0];
  build = [v2 build];

  return build;
}

- (void)_setVisualProviderClassName:(id)name
{
  if (name)
  {
    name = NSClassFromString(name);
  }

  [(STUIStatusBar *)self _setVisualProviderClass:name];
}

- (NSString)_visualProviderClassName
{
  _visualProviderClass = [(STUIStatusBar *)self _visualProviderClass];
  if (_visualProviderClass)
  {
    _visualProviderClass = NSStringFromClass(_visualProviderClass);
  }

  return _visualProviderClass;
}

void __38__STUIStatusBar_reinitializeStatusBar__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = *(a1 + 32);
  v7 = v4;
  v6 = [v4 identifier];
  LODWORD(v5) = [v5 containsObject:v6];

  if (v5)
  {
    [v7 disableWithToken:1];
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

- (void)setMode:(int64_t)mode
{
  v5 = +[STUIStatusBarSettingsDomain rootSettings];
  forcedMode = [v5 forcedMode];

  if (forcedMode == -1)
  {
    mode = self->_mode;
    if (mode != mode)
    {
      self->_mode = mode;
      if (self->_visualProvider)
      {
        v8[0] = MEMORY[0x277D85DD0];
        v8[1] = 3221225472;
        v8[2] = __25__STUIStatusBar_setMode___block_invoke;
        v8[3] = &unk_279D37F00;
        v8[4] = self;
        [(STUIStatusBar *)self _performWithInheritedAnimation:v8];
        if ((*&self->_statusBarFlags & 0x10) != 0)
        {
          [(STUIStatusBarVisualProvider *)self->_visualProvider modeUpdatedFromMode:mode];
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
        [(STUIStatusBarVisualProvider *)visualProvider orientationUpdatedFromOrientation:?];
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
  [(STUIStatusBar *)self _effectiveScaleTransform];
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
      [(STUIStatusBarVisualProvider *)self->_visualProvider avoidanceFrameUpdatedFromFrame:settingsCopy withAnimationSettings:options options:v17, v18, v19, v20];
    }
  }
}

- (id)_traitCollectionForChildEnvironment:(id)environment
{
  traitCollection = [(STUIStatusBar *)self traitCollection];
  effectiveUserInterfaceLayoutDirection = [(STUIStatusBar *)self effectiveUserInterfaceLayoutDirection];
  v6 = objc_opt_self();
  v7 = [traitCollection traitCollectionByReplacingNSIntegerValue:effectiveUserInterfaceLayoutDirection forTrait:v6];

  return v7;
}

- (void)_performWithInheritedAnimation:(id)animation
{
  v3 = MEMORY[0x277CD9FF0];
  animationCopy = animation;
  [v3 begin];
  areAnimationsEnabled = [MEMORY[0x277D75D18] areAnimationsEnabled];
  _isInAnimationBlock = [MEMORY[0x277D75D18] _isInAnimationBlock];
  v7 = MEMORY[0x277CD9FF0];
  if (_isInAnimationBlock)
  {
    [MEMORY[0x277D75D18] _currentAnimationDuration];
    [v7 setAnimationDuration:?];
    v8 = MEMORY[0x277CD9FF0];
    v9 = MEMORY[0x26D6A3930]([MEMORY[0x277D75D18] _currentAnimationCurve]);
    [v8 setAnimationTimingFunction:v9];
  }

  else
  {
    [MEMORY[0x277CD9FF0] setDisableActions:1];
    [MEMORY[0x277D75D18] setAnimationsEnabled:0];
  }

  animationCopy[2](animationCopy);

  [MEMORY[0x277CD9FF0] commit];
  v10 = MEMORY[0x277D75D18];

  [v10 setAnimationsEnabled:areAnimationsEnabled];
}

- (void)setStyle:(int64_t)style
{
  style = self->_style;
  if (style == style)
  {
    return;
  }

  automaticStyle = self->_automaticStyle;
  selfCopy = self;
  v8 = selfCopy;
  statusBarFlags = selfCopy->_statusBarFlags;
  if ((*&statusBarFlags & 0x80000) != 0)
  {
    if ((self->_style & 0x3F) == 0)
    {
      v10 = 1;
      goto LABEL_8;
    }

    if ((*&statusBarFlags & 0x1000000) != 0)
    {
      v10 = [(STUIStatusBar *)selfCopy mode]!= 1;
      goto LABEL_8;
    }
  }

  v10 = 0;
LABEL_8:
  v11 = style >> 6;

  self->_style = style;
  v12 = v8;
  p_isa = &v12->super.super.super.isa;
  v14 = v12->_statusBarFlags;
  if ((*&v14 & 0x80000) == 0)
  {
LABEL_11:

    v15 = 0;
    v16 = v11 != automaticStyle || v10;
    goto LABEL_12;
  }

  if ((self->_style & 0x3F) != 0)
  {
    if ((*&v14 & 0x1000000) == 0)
    {
      goto LABEL_11;
    }

    v15 = [(STUIStatusBar *)v12 mode]!= 1;
  }

  else
  {
    v15 = 1;
  }

  v16 = v11 != automaticStyle || v10 != v15;
  if (v11 == automaticStyle && v10 == v15 || !v15)
  {
LABEL_12:
    v17 = p_isa + 53;
    if (!p_isa[53])
    {
      return;
    }

    if (!v16)
    {
      v18 = 0;
LABEL_31:
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __26__STUIStatusBar_setStyle___block_invoke_2;
      v23[3] = &unk_279D39488;
      v23[4] = p_isa;
      v24 = v18;
      [p_isa _performWithInheritedAnimation:v23];
      if ((p_isa[54] & 0x80) != 0)
      {
        [*v17 styleUpdatedFromStyle:style];
      }

      return;
    }

LABEL_23:
    if ((p_isa[54] & 0x2080000) == 0x80000)
    {
      [MEMORY[0x277D75D18] _currentAnimationDuration];
      if (v19 > 0.0 && v15)
      {
        v21 = v19;
        objc_initWeak(&location, p_isa);
        v22 = dispatch_time(0, (v21 * 1000000000.0));
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __26__STUIStatusBar_setStyle___block_invoke;
        block[3] = &unk_279D391E8;
        objc_copyWeak(&v26, &location);
        dispatch_after(v22, MEMORY[0x277D85CD0], block);
        objc_destroyWeak(&v26);
        objc_destroyWeak(&location);
      }

      else
      {
        [*v17 updateLumaTracking:v15];
      }
    }

    v18 = 1;
    goto LABEL_31;
  }

  if (style <= 0x3F)
  {
    v11 = self->_automaticStyle;
  }

  self->_automaticStyle = v11;
  v17 = p_isa + 53;
  if (p_isa[53])
  {
    v15 = 1;
    goto LABEL_23;
  }
}

void __26__STUIStatusBar_setStyle___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (!WeakRetained)
  {
    goto LABEL_7;
  }

  v6 = WeakRetained;
  v2 = WeakRetained;
  v3 = v2;
  v4 = *(v2 + 108);
  if ((v4 & 0x80000) == 0)
  {
LABEL_5:

LABEL_6:
    WeakRetained = v6;
    goto LABEL_7;
  }

  if ((v2[57] & 0x3F) == 0)
  {

    WeakRetained = v6;
LABEL_12:
    if ((*(v3 + 435) & 2) == 0)
    {
      [v3[53] updateLumaTracking:1];
      goto LABEL_6;
    }

    goto LABEL_7;
  }

  if ((v4 & 0x1000000) == 0)
  {
    goto LABEL_5;
  }

  v5 = [v2 mode];

  WeakRetained = v6;
  if (v5 != 1)
  {
    goto LABEL_12;
  }

LABEL_7:
}

void __26__STUIStatusBar_setStyle___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _updateStyleAttributes];
  if (*(a1 + 40) == 1 && [*(*(a1 + 32) + 544) count])
  {
    v2 = *(a1 + 32);
    v3 = [v2 styleAttributes];
    [v2 _updateDisplayedItemsWithData:0 styleAttributes:v3 extraAnimations:MEMORY[0x277CBEBF8]];
  }
}

- (void)setForegroundColor:(id)color
{
  colorCopy = color;
  if ((BSEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_foregroundColor, color);
    if (self->_visualProvider)
    {
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = __36__STUIStatusBar_setForegroundColor___block_invoke;
      v6[3] = &unk_279D37F00;
      v6[4] = self;
      [(STUIStatusBar *)self _performWithInheritedAnimation:v6];
    }
  }
}

- (void)setHidden:(BOOL)hidden animationParameters:(id)parameters
{
  hiddenCopy = hidden;
  parametersCopy = parameters;
  statusBarFlags = self->_statusBarFlags;
  if (((((*&statusBarFlags & 0x2000000) == 0) ^ hiddenCopy) & 1) == 0)
  {
    if (hiddenCopy)
    {
      v8 = 0x2000000;
    }

    else
    {
      v8 = 0;
    }

    self->_statusBarFlags = (*&statusBarFlags & 0xFDFFFFFF | v8);
    selfCopy = self;
    v10 = selfCopy;
    v11 = self->_statusBarFlags;
    if ((*&v11 & 0x80000) == 0)
    {
      goto LABEL_8;
    }

    if ((selfCopy->_style & 0x3F) != 0)
    {
      if ((*&v11 & 0x1000000) == 0)
      {
LABEL_8:

        goto LABEL_9;
      }

      v12 = [(STUIStatusBar *)selfCopy mode]== 1;
    }

    else
    {
      v12 = 0;
    }

    visualProvider = v10->_visualProvider;
    if (visualProvider && !v12 && (*(&self->_statusBarFlags + 2) & 8) != 0)
    {
      if (hiddenCopy)
      {
        [(STUIStatusBarVisualProvider *)visualProvider updateLumaTracking:0];
      }

      else
      {
        objc_initWeak(&location, v10);
        v14 = *MEMORY[0x277D76620];
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = __47__STUIStatusBar_setHidden_animationParameters___block_invoke;
        v15[3] = &unk_279D391E8;
        objc_copyWeak(&v16, &location);
        [v14 _performBlockAfterCATransactionCommits:v15];
        objc_destroyWeak(&v16);
        objc_destroyWeak(&location);
      }
    }
  }

LABEL_9:
}

void __47__STUIStatusBar_setHidden_animationParameters___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (!WeakRetained)
  {
    goto LABEL_7;
  }

  v6 = WeakRetained;
  v2 = WeakRetained;
  v3 = v2;
  v4 = *(v2 + 108);
  if ((v4 & 0x80000) == 0)
  {
LABEL_5:

LABEL_6:
    WeakRetained = v6;
    goto LABEL_7;
  }

  if ((v2[57] & 0x3F) == 0)
  {

    WeakRetained = v6;
LABEL_12:
    if ((*(v3 + 435) & 2) == 0)
    {
      [v3[53] updateLumaTracking:1];
      goto LABEL_6;
    }

    goto LABEL_7;
  }

  if ((v4 & 0x1000000) == 0)
  {
    goto LABEL_5;
  }

  v5 = [v2 mode];

  WeakRetained = v6;
  if (v5 != 1)
  {
    goto LABEL_12;
  }

LABEL_7:
}

- (void)setStyleAttributes:(id)attributes
{
  attributesCopy = attributes;
  if (([attributesCopy isEqual:self->_styleAttributes] & 1) == 0)
  {
    v4 = [attributesCopy copy];
    styleAttributes = self->_styleAttributes;
    self->_styleAttributes = v4;

    [(STUIStatusBar *)self _updateDisplayedItemsWithData:0 styleAttributes:attributesCopy extraAnimations:MEMORY[0x277CBEBF8]];
  }
}

- (int64_t)_effectiveStyleFromStyle:(int64_t)style
{
  styleCopy = style;
  if (!style)
  {
    traitCollection = [(STUIStatusBar *)self traitCollection];
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
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__5;
  v13 = __Block_byref_object_dispose__5;
  v14 = 0;
  traitCollection = [(STUIStatusBar *)self traitCollection];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __41__STUIStatusBar_styleAttributesForStyle___block_invoke;
  v8[3] = &unk_279D394B0;
  v8[5] = &v9;
  v8[6] = style;
  v8[4] = self;
  [traitCollection performAsCurrentTraitCollection:v8];

  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

void __41__STUIStatusBar_styleAttributesForStyle___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _effectiveStyleFromStyle:*(a1 + 48)];
  v6 = [*(a1 + 32) visualProvider];
  v3 = [v6 styleAttributesForStyle:v2];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (void)setOverlayData:(id)data
{
  dataCopy = data;
  if ([dataCopy isEmpty])
  {

    dataCopy = 0;
  }

  overlayData = [(STUIStatusBar *)self overlayData];

  v5 = dataCopy;
  if (dataCopy != overlayData)
  {
    overlayData2 = [(STUIStatusBarDataAggregator *)self->_dataAggregator overlayData];

    if (overlayData2)
    {
      overlayData3 = [(STUIStatusBarDataAggregator *)self->_dataAggregator overlayData];
      v8 = [overlayData3 dataByApplyingOverlay:self->_currentData];
      v9 = [v8 mutableCopy];

      v10 = dataCopy;
      if (dataCopy)
      {
        if (v9)
        {
          [v9 applyUpdate:dataCopy];
LABEL_12:
          [(STUIStatusBarDataAggregator *)self->_dataAggregator setOverlayData:0];
          [(STUIStatusBarDataAggregator *)self->_dataAggregator updateWithData:v9];
          [(STUIStatusBarDataAggregator *)self->_dataAggregator setOverlayData:dataCopy];

          v5 = dataCopy;
          goto LABEL_13;
        }

LABEL_9:
        dataCopy = v10;
        v9 = [v10 mutableCopy];
        goto LABEL_12;
      }
    }

    else
    {
      v10 = dataCopy;
      if (dataCopy)
      {
        goto LABEL_9;
      }

      v9 = 0;
    }

    dataCopy = v10;
    goto LABEL_12;
  }

LABEL_13:
}

- (void)_updateWithData:(id)data completionHandler:(id)handler
{
  v25 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  handlerCopy = handler;
  [(STUIStatusBar *)self _prepareVisualProviderIfNeeded];
  v8 = _STUIStatusBar_Log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    if ([MEMORY[0x277D75D18] areAnimationsEnabled])
    {
      v9 = @"YES";
    }

    else
    {
      v9 = @"NO";
    }

    delayedEntryKeys = [(STUIStatusBarDataAggregator *)self->_dataAggregator delayedEntryKeys];
    *buf = 134218754;
    selfCopy = self;
    v19 = 2112;
    v20 = dataCopy;
    v21 = 2112;
    v22 = v9;
    v23 = 2112;
    v24 = delayedEntryKeys;
    _os_log_impl(&dword_26C4DD000, v8, OS_LOG_TYPE_INFO, "Status bar %p update with data: %@, animated: %@, delayedKeys: %@", buf, 0x2Au);
  }

  [(STUIStatusBar *)self setUpdateCompletionHandler:handlerCopy];
  currentData = self->_currentData;
  if (currentData)
  {
    [(STMutableStatusBarData *)currentData applyUpdate:dataCopy];
    [(STUIStatusBarDataAggregator *)self->_dataAggregator updateWithData:dataCopy];
  }

  else
  {
    v12 = [dataCopy mutableCopy];
    v13 = self->_currentData;
    self->_currentData = v12;

    v14 = MEMORY[0x277D75D18];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __51__STUIStatusBar__updateWithData_completionHandler___block_invoke;
    v15[3] = &unk_279D38150;
    v15[4] = self;
    v16 = dataCopy;
    [v14 performWithoutAnimation:v15];
  }
}

- (void)_updateWithAggregatedData:(id)data
{
  v20 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v5 = [dataCopy mutableCopy];
  v6 = +[STUIStatusBarDataBroadcaster sharedInstance];
  currentData = [v6 currentData];
  [v5 applyUpdate:currentData];

  if (*(&self->_statusBarFlags + 1))
  {
    v8 = [(STUIStatusBarVisualProvider *)self->_visualProvider willUpdateWithData:v5];
  }

  else
  {
    v8 = MEMORY[0x277CBEBF8];
  }

  currentAggregatedData = self->_currentAggregatedData;
  if (currentAggregatedData)
  {
    [(STMutableStatusBarData *)currentAggregatedData applyUpdate:v5];
  }

  else
  {
    objc_storeStrong(&self->_currentAggregatedData, v5);
  }

  v10 = _STUIStatusBar_Log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    areAnimationsEnabled = [MEMORY[0x277D75D18] areAnimationsEnabled];
    v12 = @"NO";
    *v17 = 134218498;
    *&v17[4] = self;
    *&v17[12] = 2112;
    if (areAnimationsEnabled)
    {
      v12 = @"YES";
    }

    *&v17[14] = dataCopy;
    v18 = 2112;
    v19 = v12;
    _os_log_impl(&dword_26C4DD000, v10, OS_LOG_TYPE_INFO, "Status bar %p now applying update: %@, animated: %@", v17, 0x20u);
  }

  [(STUIStatusBar *)self _updateDisplayedItemsWithData:v5 styleAttributes:0 extraAnimations:v8];
  statusBarFlags = self->_statusBarFlags;
  if ((*&statusBarFlags & 0x200) != 0)
  {
    [(STUIStatusBarVisualProvider *)self->_visualProvider dataUpdated:v5];
    statusBarFlags = self->_statusBarFlags;
  }

  self->_statusBarFlags = (*&statusBarFlags | 1);
  [(UIPointerInteraction *)self->_pointerInteraction invalidate];
  updateCompletionHandler = [(STUIStatusBar *)self updateCompletionHandler];

  if (updateCompletionHandler)
  {
    v15 = _Block_copy(self->_updateCompletionHandler);
    updateCompletionHandler = self->_updateCompletionHandler;
    self->_updateCompletionHandler = 0;

    v15[2](v15);
  }
}

- (void)_updateDisplayedItemsWithData:(id)data styleAttributes:(id)attributes extraAnimations:(id)animations
{
  dataCopy = data;
  attributesCopy = attributes;
  animationsCopy = animations;
  traitCollection = [(STUIStatusBar *)self traitCollection];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __79__STUIStatusBar__updateDisplayedItemsWithData_styleAttributes_extraAnimations___block_invoke;
  v15[3] = &unk_279D39548;
  v15[4] = self;
  v16 = dataCopy;
  v17 = attributesCopy;
  v18 = animationsCopy;
  v12 = animationsCopy;
  v13 = attributesCopy;
  v14 = dataCopy;
  [traitCollection performAsCurrentTraitCollection:v15];
}

void __79__STUIStatusBar__updateDisplayedItemsWithData_styleAttributes_extraAnimations___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 560) enumerateKeysAndObjectsUsingBlock:&__block_literal_global_132];
  v2 = [MEMORY[0x277CBEB18] array];
  *(*(a1 + 32) + 432) |= 0x400000u;
  v3 = *(*(a1 + 32) + 560);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __79__STUIStatusBar__updateDisplayedItemsWithData_styleAttributes_extraAnimations___block_invoke_3;
  v19[3] = &unk_279D394F8;
  v20 = *(a1 + 40);
  v21 = *(a1 + 48);
  v4 = v2;
  v22 = v4;
  [v3 enumerateKeysAndObjectsUsingBlock:v19];
  v5 = *(*(a1 + 32) + 552);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __79__STUIStatusBar__updateDisplayedItemsWithData_styleAttributes_extraAnimations___block_invoke_4;
  v17[3] = &unk_279D39520;
  v18 = *(a1 + 40);
  [v5 enumerateKeysAndObjectsUsingBlock:v17];
  *(*(a1 + 32) + 432) &= ~0x400000u;
  [v4 addObjectsFromArray:*(a1 + 56)];
  v6 = STUIStatusBarGetPriorityComparator();
  v7 = [v4 sortedArrayUsingComparator:v6];

  [*(a1 + 32) _prepareAnimations:v4];
  if ([v4 count])
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __79__STUIStatusBar__updateDisplayedItemsWithData_styleAttributes_extraAnimations___block_invoke_5;
    v16[3] = &unk_279D37F00;
    v16[4] = *(a1 + 32);
    [MEMORY[0x277D75D18] performWithoutAnimation:v16];
    v8 = *(a1 + 32);
    if ((v8[108] & 0x800008) != 0)
    {
      v9 = [v8 _rearrangeOverflowedItems];
      if (v9)
      {
        v10 = v9;
        do
        {
          [v10 prepareForOverflowDataUpdate];
          v11 = [v10 updateWithData:*(a1 + 40) styleAttributes:*(a1 + 48)];
          [*(a1 + 32) _prepareAnimations:v11];
          [v4 addObjectsFromArray:v11];
          v15[0] = MEMORY[0x277D85DD0];
          v15[1] = 3221225472;
          v15[2] = __79__STUIStatusBar__updateDisplayedItemsWithData_styleAttributes_extraAnimations___block_invoke_6;
          v15[3] = &unk_279D37F00;
          v15[4] = *(a1 + 32);
          [MEMORY[0x277D75D18] performWithoutAnimation:v15];

          v12 = [*(a1 + 32) _rearrangeOverflowedItems];

          v10 = v12;
        }

        while (v12);
      }

      v8 = *(a1 + 32);
    }

    [v8 _performAnimations:v4];
    [*(a1 + 32) layoutIfNeeded];
  }

  else
  {
    [*(a1 + 32) setNeedsUpdateConstraints];
    v13 = *(a1 + 32);
    if ((v13[108] & 0x800008) != 0)
    {
      while (1)
      {
        [v13 layoutIfNeeded];
        v14 = [*(a1 + 32) _rearrangeOverflowedItems];

        if (!v14)
        {
          break;
        }

        v13 = *(a1 + 32);
      }
    }

    *(*(a1 + 32) + 432) |= 1u;
  }

  [*(a1 + 32) _fixupDisplayItemAttributes];
}

void __79__STUIStatusBar__updateDisplayedItemsWithData_styleAttributes_extraAnimations___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 updateWithData:*(a1 + 32) styleAttributes:*(a1 + 40)];
  [*(a1 + 48) addObjectsFromArray:v4];
}

uint64_t __79__STUIStatusBar__updateDisplayedItemsWithData_styleAttributes_extraAnimations___block_invoke_5(uint64_t a1)
{
  [*(a1 + 32) setNeedsUpdateConstraints];
  v2 = *(a1 + 32);

  return [v2 layoutIfNeeded];
}

- (void)_prepareAnimations:(id)animations
{
  v34 = *MEMORY[0x277D85DE8];
  animationsCopy = animations;
  [STUIStatusBarAnimation prepareAnimations:animationsCopy forStatusBar:self];
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
          v9 = [MEMORY[0x277CBEB58] set];
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

                v15 = [(STUIStatusBar *)self itemWithIdentifier:*(*(&v24 + 1) + 8 * j)];
                dependentEntryKeys = [v15 dependentEntryKeys];
                [v9 unionSet:dependentEntryKeys];
              }

              v12 = [v10 countByEnumeratingWithState:&v24 objects:v32 count:16];
            }

            while (v12);
          }

          if ([v9 count])
          {
            [(STUIStatusBar *)self _delayUpdatesWithKeys:v9 fromAnimation:v22];
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
    [STUIStatusBarAnimation _addAnimations:v5 toDispatchGroup:v19];
    dispatch_group_notify(v19, MEMORY[0x277D85CD0], v17);
  }
}

- (void)_delayUpdatesWithKeys:(id)keys fromAnimation:(id)animation
{
  v6 = self->_dataAggregator;
  animationCopy = animation;
  v8 = [(STUIStatusBarDataAggregator *)v6 beginDelayingUpdatesForEntryKeys:keys];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __53__STUIStatusBar__delayUpdatesWithKeys_fromAnimation___block_invoke;
  v11[3] = &unk_279D38150;
  v12 = v6;
  v13 = v8;
  v9 = v8;
  v10 = v6;
  [animationCopy addTotalCompletionHandler:v11];
}

- (void)updateForcingIterativeOverflow
{
  *&self->_statusBarFlags |= 0x800000u;
  [(STUIStatusBar *)self updateWithAnimations:MEMORY[0x277CBEBF8]];
  *&self->_statusBarFlags &= ~0x800000u;
}

- (void)_performAnimations:(id)animations
{
  v18 = *MEMORY[0x277D85DE8];
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
        if ([v9 type] == 1 && (objc_msgSend(v9, "displayItemIdentifier"), v10 = objc_claimAutoreleasedReturnValue(), -[STUIStatusBar displayItemWithIdentifier:](self, "displayItemWithIdentifier:", v10), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "visible"), v11, v10, !v12))
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

- (BOOL)_showSensorActivityIndicatorWithoutPortalView
{
  if ((*(&self->_statusBarFlags + 2) & 0x10) != 0)
  {
    return [(STUIStatusBarVisualProvider *)self->_visualProvider showSensorActivityIndicatorWithoutPortalView];
  }

  else
  {
    return 0;
  }
}

- (void)resizeSubviewsWithOldSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v12.receiver = self;
  v12.super_class = STUIStatusBar;
  [(STUIStatusBar *)&v12 resizeSubviewsWithOldSize:?];
  [(STUIStatusBar *)self bounds];
  if (width != v7 || height != v6)
  {
    [(NSMutableDictionary *)self->_displayItemStates enumerateKeysAndObjectsUsingBlock:&__block_literal_global_144];
  }

  [(STUIStatusBar *)self _effectiveScaleTransform];
  foregroundView = self->_foregroundView;
  v11[0] = v11[3];
  v11[1] = v11[4];
  v11[2] = v11[5];
  [(UIView *)foregroundView setTransform:v11];
  [(STUIStatusBar *)self bounds];
  [(UIView *)self->_foregroundView setFrame:?];
  [(STUIStatusBar *)self setNeedsUpdateConstraints];
  statusBarFlags = self->_statusBarFlags;
  self->_statusBarFlags = (*&statusBarFlags | 1);
  if ((*&statusBarFlags & 0x800) != 0)
  {
    [(STUIStatusBarVisualProvider *)self->_visualProvider sizeUpdatedFromSize:width, height];
  }
}

void __31__STUIStatusBar_layoutSubviews__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 view];
  (*(v2 + 16))(v2, v3);
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
    if ([(STUIStatusBar *)self effectiveUserInterfaceLayoutDirection]== 1)
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
  [(STUIStatusBar *)self _frameForActionable:actionable];
  v10 = x;
  v11 = y;

  return CGRectContainsPoint(*&v6, *&v10);
}

- (BOOL)_cursorLocation:(CGPoint)location isInsideHoverableActionable:(id)actionable
{
  y = location.y;
  x = location.x;
  actionableCopy = actionable;
  [(STUIStatusBar *)self _extendedHoverFrameForActionable:actionableCopy];
  v8 = v16.origin.x;
  v9 = v16.origin.y;
  width = v16.size.width;
  height = v16.size.height;
  if (CGRectIsNull(v16))
  {
    v12 = [(STUIStatusBar *)self _cursorLocation:actionableCopy isInsideActionable:x, y];
  }

  else
  {
    v17.origin.x = v8;
    v17.origin.y = v9;
    v17.size.width = width;
    v17.size.height = height;
    v15.x = x;
    v15.y = y;
    v12 = CGRectContainsPoint(v17, v15);
  }

  v13 = v12;

  return v13;
}

- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region
{
  interactionCopy = interaction;
  requestCopy = request;
  regionCopy = region;
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
    v40 = __Block_byref_object_copy__5;
    v41 = __Block_byref_object_dispose__5;
    v42 = 0;
    v31 = 0;
    v32 = &v31;
    v33 = 0x3032000000;
    v34 = __Block_byref_object_copy__5;
    v35 = __Block_byref_object_dispose__5;
    v36 = 0;
    regions = self->_regions;
    v23 = MEMORY[0x277D85DD0];
    v24 = 3221225472;
    v25 = __67__STUIStatusBar_pointerInteraction_regionForRequest_defaultRegion___block_invoke;
    v26 = &unk_279D39638;
    selfCopy = self;
    v28 = requestCopy;
    v29 = &v37;
    v30 = &v31;
    [(NSDictionary *)regions enumerateKeysAndObjectsUsingBlock:&v23];
    if (v38[5])
    {
      [(STUIStatusBar *)self _extendedHoverFrameForActionable:v23, v24, v25, v26, selfCopy];
      x = v44.origin.x;
      y = v44.origin.y;
      width = v44.size.width;
      height = v44.size.height;
      if (CGRectIsNull(v44))
      {
        [(STUIStatusBar *)self _pressFrameForActionable:v38[5]];
        x = v17;
        y = v18;
        width = v19;
        height = v20;
      }

      v21 = [MEMORY[0x277D75880] regionWithRect:v32[5] identifier:{x, y, width, height}];
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

void __67__STUIStatusBar_pointerInteraction_regionForRequest_defaultRegion___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v7 = a3;
  if ([v7 isEnabled])
  {
    v8 = [v7 displayItems];
    if ([v8 count])
    {
      v9 = *(a1 + 32);
      [*(a1 + 40) location];
      v10 = [v9 _cursorLocation:v7 isInsideActionable:?];

      if (v10)
      {
        v11 = [v7 displayItems];
        v22 = MEMORY[0x277D85DD0];
        v23 = 3221225472;
        v24 = __67__STUIStatusBar_pointerInteraction_regionForRequest_defaultRegion___block_invoke_2;
        v25 = &unk_279D39610;
        v12 = *(a1 + 40);
        v26 = *(a1 + 32);
        v27 = v12;
        v28 = *(a1 + 48);
        [v11 enumerateObjectsUsingBlock:&v22];

        if (!*(*(*(a1 + 48) + 8) + 40))
        {
          v13 = [v7 action];
          v14 = [v13 isEnabled];
          if ((v14 & 1) == 0)
          {
            v10 = [v7 hoverAction];
            if (![v10 isEnabled])
            {
              goto LABEL_14;
            }
          }

          v15 = *(a1 + 32);
          [*(a1 + 40) location];
          if ([v15 _cursorLocation:v7 isInsideHoverableActionable:?])
          {
            v16 = [v7 contentView];
            [v16 alpha];
            v18 = v17;

            if ((v14 & 1) == 0)
            {
            }

            if (v18 > 0.0)
            {
              objc_storeStrong((*(*(a1 + 48) + 8) + 40), a3);
              v19 = [v7 identifier];
              v20 = *(*(a1 + 56) + 8);
              v21 = *(v20 + 40);
              *(v20 + 40) = v19;

              *a4 = 1;
            }

            goto LABEL_16;
          }

          if (!v14)
          {
LABEL_14:
          }
        }

LABEL_16:
      }
    }

    else
    {
    }
  }
}

void __67__STUIStatusBar_pointerInteraction_regionForRequest_defaultRegion___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v15 = a2;
  v8 = [v15 action];
  v9 = [v8 isEnabled];
  if ((v9 & 1) == 0)
  {
    v4 = [v15 hoverAction];
    if (([v4 isEnabled] & 1) == 0)
    {

      goto LABEL_9;
    }
  }

  v10 = *(a1 + 32);
  [*(a1 + 40) location];
  v11 = [v10 _cursorLocation:v15 isInsideHoverableActionable:?];
  if ((v9 & 1) == 0)
  {

    if ((v11 & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  if (v11)
  {
LABEL_7:
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
    v12 = [v15 identifier];
    v13 = *(*(a1 + 56) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;

    *a4 = 1;
  }

LABEL_9:
}

- (void)pointerInteraction:(id)interaction willEnterRegion:(id)region animator:(id)animator
{
  identifier = [region identifier];
  v8 = identifier;
  if (identifier)
  {
    v7 = [(STUIStatusBar *)self regionWithIdentifier:identifier];
    if (!v7)
    {
      v7 = [(STUIStatusBar *)self displayItemWithIdentifier:v8];
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

  v7 = objc_loadWeakRetained(&self->_hoveredActionable);
  hoverAction = [v7 hoverAction];
  isEnabled = [hoverAction isEnabled];

  if (hoverView)
  {
    v10 = isEnabled == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    v11 = 0;
    goto LABEL_17;
  }

  v12 = objc_loadWeakRetained(&self->_hoveredActionable);
  [v12 absoluteHoverFrame];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v21 = objc_loadWeakRetained(&self->_hoveredActionable);
  hoverHighlightsAsRegion = [v21 hoverHighlightsAsRegion];

  v47.origin.x = v14;
  v47.origin.y = v16;
  v47.size.width = v18;
  v47.size.height = v20;
  if (!CGRectIsNull(v47))
  {
    v31 = objc_opt_new();
    [(STUIStatusBar *)self convertRect:hoverView toView:v14, v16, v18, v20];
    v32 = [MEMORY[0x277D75208] bezierPathWithRect:?];
    [v31 setVisiblePath:v32];

    v28 = [objc_alloc(MEMORY[0x277D75B90]) initWithView:hoverView parameters:v31];
    if ((hoverHighlightsAsRegion & 1) == 0)
    {
      goto LABEL_9;
    }

LABEL_11:
    v29 = [MEMORY[0x277D75860] effectWithPreview:v28];
    visualProvider = [(STUIStatusBar *)self visualProvider];
    v34 = [visualProvider conformsToProtocol:&unk_287D30370];

    if (v34)
    {
      visualProvider2 = [(STUIStatusBar *)self visualProvider];
      [objc_opt_class() regionCursorInsets];
      v14 = v14 + v36;
      v16 = v16 + v37;
      v18 = v18 - (v36 + v38);
      v20 = v20 - (v37 + v39);

      visualProvider3 = [(STUIStatusBar *)self visualProvider];
      regionCursorIsPill = [objc_opt_class() regionCursorIsPill];

      if ((regionCursorIsPill & 1) == 0)
      {
        visualProvider4 = [(STUIStatusBar *)self visualProvider];
        [objc_opt_class() regionCursorCornerRadius];
        v30 = v43;

        goto LABEL_16;
      }
    }

    else
    {
      v14 = v14 + -8.0;
      v16 = v16 + -2.0;
      v18 = v18 + 16.0;
      v20 = v20 + 4.0;
    }

    v48.origin.x = v14;
    v48.origin.y = v16;
    v48.size.width = v18;
    v48.size.height = v20;
    v30 = CGRectGetHeight(v48) * 0.5;
    goto LABEL_16;
  }

  [hoverView frame];
  v14 = v24;
  v16 = v25;
  v18 = v26;
  v20 = v27;
  v28 = [objc_alloc(MEMORY[0x277D75B90]) initWithView:hoverView];
  if (hoverHighlightsAsRegion)
  {
    goto LABEL_11;
  }

LABEL_9:
  v29 = [MEMORY[0x277D75878] effectWithPreview:v28];
  v30 = 0.0;
LABEL_16:
  v44 = [MEMORY[0x277D75888] shapeWithRoundedRect:v14 cornerRadius:{v16, v18, v20, v30}];
  v11 = [MEMORY[0x277D75890] styleWithEffect:v29 shape:v44];

LABEL_17:

  return v11;
}

- (CGRect)_frameForActionable:(id)actionable
{
  actionableCopy = actionable;
  [actionableCopy actionInsets];
  [(STUIStatusBar *)self _frameForActionable:actionableCopy actionInsets:?];
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
  [(STUIStatusBar *)self _frameForActionable:actionable actionInsets:*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)_frameForActionable:(id)actionable actionInsets:(UIEdgeInsets)insets
{
  actionableCopy = actionable;
  layoutItem = [actionableCopy layoutItem];
  [layoutItem _ui_bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  layoutItem2 = [actionableCopy layoutItem];

  _ui_view = [layoutItem2 _ui_view];
  [_ui_view convertRect:self toView:{v8, v10, v12, v14}];

  [(STUIStatusBar *)self _currentScreenScale];

  UIRectIntegralWithScale();
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (BOOL)_gestureRecognizer:(id)recognizer isInsideActionable:(id)actionable
{
  recognizerCopy = recognizer;
  actionableCopy = actionable;
  v8 = [(STUIStatusBar *)self _gestureRecognizer:recognizerCopy touchInsideActionable:actionableCopy]|| [(STUIStatusBar *)self _gestureRecognizer:recognizerCopy pressInsideActionable:actionableCopy];

  return v8;
}

- (BOOL)_gestureRecognizer:(id)recognizer touchInsideActionable:(id)actionable
{
  actionableCopy = actionable;
  [recognizer locationInView:self];
  v8 = v7;
  v10 = v9;
  [(STUIStatusBar *)self _frameForActionable:actionableCopy];
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
  _focusSystem = [(STUIStatusBar *)self _focusSystem];
  focusedItem = [_focusSystem focusedItem];

  [(STUIStatusBar *)self _pressFrameForActionable:actionableCopy];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  [focusedItem frame];
  v22.origin.x = v16;
  v22.origin.y = v17;
  v22.size.width = v18;
  v22.size.height = v19;
  v21.origin.x = v9;
  v21.origin.y = v11;
  v21.size.width = v13;
  v21.size.height = v15;
  LOBYTE(self) = CGRectContainsRect(v21, v22);

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
    v8 = [(STUIStatusBar *)self _gestureRecognizer:gestureCopy isInsideActionable:WeakRetained];

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
          [(STUIStatusBarVisualProvider *)visualProvider actionable:v13 highlighted:v9 != 0 initialPress:v5 == 1];
        }
      }

      goto LABEL_19;
    }

    hoverAction = [v9 hoverAction];
    if (hoverAction || ([v9 action], (hoverAction = objc_claimAutoreleasedReturnValue()) != 0) || (-[STUIStatusBar action](self, "action"), (hoverAction = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v15 = hoverAction;
      [hoverAction performWithStatusBar:self completionHandler:0];
    }
  }

  if ((*(&self->_statusBarFlags + 1) & 0x40) != 0)
  {
    v16 = self->_visualProvider;
    v17 = objc_loadWeakRetained(&self->_targetActionable);
    [(STUIStatusBarVisualProvider *)v16 actionable:v17 highlighted:0 initialPress:0];
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
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __46__STUIStatusBar_gestureRecognizerShouldBegin___block_invoke;
    v11[3] = &unk_279D39660;
    v11[4] = self;
    v12 = beginCopy;
    [(NSDictionary *)regions enumerateKeysAndObjectsUsingBlock:v11];
  }

  v8 = objc_loadWeakRetained(&self->_targetActionable);
  v9 = v8 != 0;

  return v9;
}

void __46__STUIStatusBar_gestureRecognizerShouldBegin___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = a3;
  if ([v6 isEnabled])
  {
    v7 = [v6 displayItems];
    if ([v7 count])
    {
      v8 = [*(a1 + 32) _gestureRecognizer:*(a1 + 40) isInsideActionable:v6];

      if (v8)
      {
        v9 = [v6 displayItems];
        v14 = MEMORY[0x277D85DD0];
        v15 = 3221225472;
        v16 = __46__STUIStatusBar_gestureRecognizerShouldBegin___block_invoke_2;
        v17 = &unk_279D388F8;
        v10 = *(a1 + 40);
        v18 = *(a1 + 32);
        v19 = v10;
        [v9 enumerateObjectsUsingBlock:&v14];

        WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 584));
        if (WeakRetained)
        {
        }

        else
        {
          v12 = [v6 action];
          v13 = [v12 isEnabled];

          if (v13)
          {
            objc_storeWeak((*(a1 + 32) + 584), v6);
            *a4 = 1;
          }
        }
      }
    }

    else
    {
    }
  }
}

void __46__STUIStatusBar_gestureRecognizerShouldBegin___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  obj = a2;
  v6 = [obj action];
  if ([v6 isEnabled])
  {
    v7 = [*(a1 + 32) _gestureRecognizer:*(a1 + 40) isInsideActionable:obj];

    if (v7)
    {
      objc_storeWeak((*(a1 + 32) + 584), obj);
      *a4 = 1;
    }
  }

  else
  {
  }
}

- (id)_actionablesForPartWithIdentifier:(id)identifier includeInternalItems:(BOOL)items onlyVisible:(BOOL)visible
{
  visibleCopy = visible;
  itemsCopy = items;
  v29 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v9 = [MEMORY[0x277CBEB58] set];
  [(STUIStatusBar *)self _prepareVisualProviderIfNeeded];
  v10 = [MEMORY[0x277CBEB98] set];
  if (itemsCopy)
  {
    v11 = [STUIStatusBarIdentifier displayIdentifierFromStringRepresentation:identifierCopy];
    if (v11)
    {
      v12 = [MEMORY[0x277CBEB98] setWithObject:v11];

      v10 = v12;
    }
  }

  if ((*(&self->_statusBarFlags + 1) & 0x80) != 0)
  {
    v13 = [(STUIStatusBarVisualProvider *)self->_visualProvider displayItemIdentifiersForPartWithIdentifier:identifierCopy];
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

        v20 = [(STUIStatusBar *)self displayItemWithIdentifier:*(*(&v24 + 1) + 8 * i), v24];
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
    v22 = [(STUIStatusBar *)self _regionsForPartWithIdentifier:identifierCopy includeInternalItems:itemsCopy];
    [v9 unionSet:v22];
  }

  return v9;
}

- (id)_regionsForPartWithIdentifier:(id)identifier includeInternalItems:(BOOL)items
{
  v23 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v7 = [MEMORY[0x277CBEB58] set];
  [(STUIStatusBar *)self _prepareVisualProviderIfNeeded];
  if (items)
  {
    [MEMORY[0x277CBEB98] setWithObject:identifierCopy];
  }

  else
  {
    [MEMORY[0x277CBEB98] set];
  }
  v8 = ;
  if (*(&self->_statusBarFlags + 2))
  {
    v9 = [(STUIStatusBarVisualProvider *)self->_visualProvider regionIdentifiersForPartWithIdentifier:identifierCopy];
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
  v17 = *MEMORY[0x277D85DE8];
  actionCopy = action;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = [(STUIStatusBar *)self _actionablesForPartWithIdentifier:identifier includeInternalItems:0 onlyVisible:0, 0];
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
  v3 = [(STUIStatusBar *)self _actionablesForPartWithIdentifier:identifier includeInternalItems:0 onlyVisible:0];
  anyObject = [v3 anyObject];
  action = [anyObject action];

  return action;
}

- (void)setOffset:(UIOffset)offset forPartWithIdentifier:(id)identifier
{
  vertical = offset.vertical;
  horizontal = offset.horizontal;
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [(STUIStatusBar *)self _regionsForPartWithIdentifier:identifier includeInternalItems:0, 0];
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
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = [(STUIStatusBar *)self _regionsForPartWithIdentifier:identifier includeInternalItems:0, 0];
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        if ([v8 offsetable])
        {
          [v8 offset];
          v9 = v11;
          v10 = v12;

          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v9 = *MEMORY[0x277D76DA8];
  v10 = *(MEMORY[0x277D76DA8] + 8);
LABEL_11:
  v13 = v9;
  v14 = v10;
  result.vertical = v14;
  result.horizontal = v13;
  return result;
}

- (void)setAlpha:(double)alpha forPartWithIdentifier:(id)identifier
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(STUIStatusBar *)self _regionsForPartWithIdentifier:identifier includeInternalItems:0, 0];
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
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = [(STUIStatusBar *)self _regionsForPartWithIdentifier:identifier includeInternalItems:0, 0];
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
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [(STUIStatusBar *)self _regionsForPartWithIdentifier:identifier includeInternalItems:0];
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
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __48__STUIStatusBar_setStyle_forPartWithIdentifier___block_invoke;
      v13[3] = &unk_279D37F00;
      v13[4] = self;
      [(STUIStatusBar *)self _performWithInheritedAnimation:v13];
    }
  }

  else
  {
  }
}

void __48__STUIStatusBar_setStyle_forPartWithIdentifier___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 styleAttributes];
  [v1 _updateDisplayedItemsWithData:0 styleAttributes:v2 extraAnimations:MEMORY[0x277CBEBF8]];
}

- (void)_setAutomaticStyle:(int64_t)style additionalStylesForRegionIdentifiers:(id)identifiers
{
  v52 = *MEMORY[0x277D85DE8];
  obj = identifiers;
  identifiersCopy = identifiers;
  automaticStyle = self->_automaticStyle;
  if (automaticStyle != style)
  {
    self->_automaticStyle = style;
  }

  styleCopy = style;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v7 = self->_automaticStyleOutliers;
  v8 = [(NSDictionary *)v7 countByEnumeratingWithState:&v46 objects:v51 count:16];
  if (v8)
  {
    v9 = v8;
    v38 = 0;
    v10 = *v47;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v47 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v46 + 1) + 8 * i);
        v13 = [(NSDictionary *)self->_automaticStyleOutliers objectForKeyedSubscript:v12, obj];
        integerValue = [v13 integerValue];

        v15 = [identifiersCopy objectForKeyedSubscript:v12];
        v16 = v15;
        if (!v15 || [v15 integerValue] != integerValue)
        {
          v17 = [(STUIStatusBar *)self regionWithIdentifier:v12];
          [v17 setAutomaticStyle:4];

          v38 = 1;
        }
      }

      v9 = [(NSDictionary *)v7 countByEnumeratingWithState:&v46 objects:v51 count:16];
    }

    while (v9);
  }

  else
  {
    v38 = 0;
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v18 = identifiersCopy;
  v19 = [v18 countByEnumeratingWithState:&v42 objects:v50 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v43;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v43 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v42 + 1) + 8 * j);
        v24 = [(NSDictionary *)self->_automaticStyleOutliers objectForKeyedSubscript:v23, obj];
        v25 = [v18 objectForKeyedSubscript:v23];
        integerValue2 = [v25 integerValue];

        if (!v24 || integerValue2 != [v24 integerValue])
        {
          v27 = [(STUIStatusBar *)self regionWithIdentifier:v23];
          [v27 setAutomaticStyle:integerValue2];

          v38 = 1;
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v42 objects:v50 count:16];
    }

    while (v20);
  }

  objc_storeStrong(&self->_automaticStyleOutliers, obj);
  if (automaticStyle != styleCopy || (v38 & 1) != 0)
  {
    selfCopy = self;
    v29 = selfCopy;
    statusBarFlags = selfCopy->_statusBarFlags;
    if ((*&statusBarFlags & 0x80000) == 0)
    {
LABEL_30:

      goto LABEL_38;
    }

    if ((selfCopy->_style & 0x3F) != 0)
    {
      if ((*&statusBarFlags & 0x1000000) == 0)
      {
        goto LABEL_30;
      }

      mode = [(STUIStatusBar *)selfCopy mode];

      if (mode == 1)
      {
        goto LABEL_38;
      }
    }

    else
    {
    }

    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __73__STUIStatusBar__setAutomaticStyle_additionalStylesForRegionIdentifiers___block_invoke;
    aBlock[3] = &unk_279D39688;
    v40 = automaticStyle != styleCopy;
    aBlock[4] = v29;
    v41 = v38 & 1;
    v32 = _Block_copy(aBlock);
    if (-[STUIStatusBar areAnimationsEnabled](v29, "areAnimationsEnabled") && ([MEMORY[0x277D75D18] _isInAnimationBlock] & 1) == 0)
    {
      initWithDefaultParameters = [objc_alloc(MEMORY[0x277D75AA0]) initWithDefaultParameters];
      [initWithDefaultParameters duration];
      [initWithDefaultParameters setDuration:v34 * 0.6];
      [MEMORY[0x277D75A80] animateWithParameters:initWithDefaultParameters fromCurrentState:1 animations:v32 completion:0];
    }

    else
    {
      [(STUIStatusBar *)v29 _performWithInheritedAnimation:v32, obj];
    }
  }

LABEL_38:
}

void __73__STUIStatusBar__setAutomaticStyle_additionalStylesForRegionIdentifiers___block_invoke(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    [*(a1 + 32) _updateStyleAttributes];
  }

  if (*(a1 + 41) == 1)
  {
    v2 = *(a1 + 32);
    v3 = [v2 styleAttributes];
    [v2 _updateDisplayedItemsWithData:0 styleAttributes:v3 extraAnimations:MEMORY[0x277CBEBF8]];
  }
}

- (int64_t)styleForPartWithIdentifier:(id)identifier
{
  v3 = [(STUIStatusBar *)self _regionsForPartWithIdentifier:identifier includeInternalItems:0];
  anyObject = [v3 anyObject];
  style = [anyObject style];

  return style;
}

- (void)setEnabledPartIdentifiers:(id)identifiers
{
  v42 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  if (self->_enabledPartIdentifiers != identifiersCopy)
  {
    selfCopy = self;
    objc_storeStrong(&self->_enabledPartIdentifiers, identifiers);
    if (![(NSArray *)identifiersCopy count])
    {
      [(UIPointerInteraction *)self->_pointerInteraction setEnabled:0];
      [(UIPointerInteraction *)self->_pointerInteraction setEnabled:1];
    }

    [(STUIStatusBar *)self _prepareVisualProviderIfNeeded];
    v36 = 0;
    v37 = &v36;
    v38 = 0x2020000000;
    v39 = 0;
    v5 = [MEMORY[0x277CBEB98] set];
    if (identifiersCopy)
    {
      v21 = v5;
      v6 = MEMORY[0x277CBEB58];
      allKeys = [(NSDictionary *)self->_regions allKeys];
      v8 = [v6 setWithArray:allKeys];

      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v9 = identifiersCopy;
      v10 = [(NSArray *)v9 countByEnumeratingWithState:&v32 objects:v41 count:16];
      if (v10)
      {
        v11 = *v33;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v33 != v11)
            {
              objc_enumerationMutation(v9);
            }

            v13 = *(*(&v32 + 1) + 8 * i);
            v28 = 0u;
            v29 = 0u;
            v30 = 0u;
            v31 = 0u;
            v14 = [(STUIStatusBar *)selfCopy _regionsForPartWithIdentifier:v13 includeInternalItems:0];
            v15 = [v14 countByEnumeratingWithState:&v28 objects:v40 count:16];
            if (v15)
            {
              v16 = *v29;
              do
              {
                for (j = 0; j != v15; ++j)
                {
                  if (*v29 != v16)
                  {
                    objc_enumerationMutation(v14);
                  }

                  identifier = [*(*(&v28 + 1) + 8 * j) identifier];
                  [v8 removeObject:identifier];
                }

                v15 = [v14 countByEnumeratingWithState:&v28 objects:v40 count:16];
              }

              while (v15);
            }
          }

          v10 = [(NSArray *)v9 countByEnumeratingWithState:&v32 objects:v41 count:16];
        }

        while (v10);
      }
    }

    else
    {
      v8 = v5;
    }

    regions = selfCopy->_regions;
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __43__STUIStatusBar_setEnabledPartIdentifiers___block_invoke;
    v25[3] = &unk_279D39460;
    v20 = v8;
    v26 = v20;
    v27 = &v36;
    [(NSDictionary *)regions enumerateKeysAndObjectsUsingBlock:v25];
    if (*(v37 + 24) == 1)
    {
      if ((*(&selfCopy->_statusBarFlags + 2) & 2) != 0)
      {
        [(STUIStatusBarVisualProvider *)selfCopy->_visualProvider statusBarEnabledPartsUpdated];
      }

      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __43__STUIStatusBar_setEnabledPartIdentifiers___block_invoke_2;
      v24[3] = &unk_279D37F00;
      v24[4] = selfCopy;
      [(STUIStatusBar *)selfCopy _performWithInheritedAnimation:v24];
    }

    _Block_object_dispose(&v36, 8);
  }
}

void __43__STUIStatusBar_setEnabledPartIdentifiers___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v7 = a3;
  v5 = [v7 identifier];
  LODWORD(v4) = [v4 containsObject:v5];

  v6 = [v7 isEnabled];
  if (v4)
  {
    if (v6)
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
    }

    [v7 disableWithToken:1];
  }

  else
  {
    if ((v6 & 1) == 0)
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
    }

    [v7 enableWithToken:1];
  }
}

- (void)setDisabledPartIdentifiers:(id)identifiers
{
  v53 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  if (self->_disabledPartIdentifiers != identifiersCopy)
  {
    obj = identifiers;
    [(STUIStatusBar *)self _prepareVisualProviderIfNeeded];
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
          v13 = [(STUIStatusBar *)self _actionablesForPartWithIdentifier:v12 includeInternalItems:1 onlyVisible:0];
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
          v25 = [(STUIStatusBar *)self _actionablesForPartWithIdentifier:v24 includeInternalItems:1 onlyVisible:0];
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
        [(STUIStatusBarVisualProvider *)self->_visualProvider statusBarEnabledPartsUpdated];
      }

      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __44__STUIStatusBar_setDisabledPartIdentifiers___block_invoke;
      v32[3] = &unk_279D37F00;
      v32[4] = self;
      [(STUIStatusBar *)self _performWithInheritedAnimation:v32];
    }
  }
}

- (CGRect)frameForPartWithIdentifier:(id)identifier includeInternalItems:(BOOL)items
{
  itemsCopy = items;
  v72 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v7 = MEMORY[0x277CBF398];
  if (*&self->_statusBarFlags)
  {
    [(STUIStatusBar *)self layoutIfNeeded];
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
    v12 = [(STUIStatusBar *)self _actionablesForPartWithIdentifier:identifierCopy includeInternalItems:itemsCopy onlyVisible:1];
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
            [(STUIStatusBarVisualProvider *)self->_visualProvider clockBoundsForLayoutItem:v17];
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
          [(STUIStatusBar *)self convertRect:_ui_view fromView:v23, v24, v25, v26];
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
    v12 = [(STUIStatusBar *)self _actionablesForPartWithIdentifier:identifierCopy includeInternalItems:itemsCopy onlyVisible:1, 0];
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
          [(STUIStatusBar *)self convertRect:_ui_view2 fromView:v42, v44, v46, v48];
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
  [(STUIStatusBar *)self frameForPartWithIdentifier:identifier includeInternalItems:0];
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
  VisualProviderClassForScreen = STUIStatusBarGetVisualProviderClassForScreen(screenCopy, 0);
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
  [(STUIStatusBar *)self _prepareVisualProviderIfNeeded];
  v3 = [MEMORY[0x277CBEB58] set];
  displayItemStates = self->_displayItemStates;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __39__STUIStatusBar_dependentDataEntryKeys__block_invoke;
  v9[3] = &unk_279D38308;
  v9[4] = self;
  v5 = v3;
  v10 = v5;
  [(NSMutableDictionary *)displayItemStates enumerateKeysAndObjectsUsingBlock:v9];
  v6 = v10;
  v7 = v5;

  return v5;
}

void __39__STUIStatusBar_dependentDataEntryKeys__block_invoke(uint64_t a1, void *a2)
{
  v6 = [a2 object];
  v3 = [*(a1 + 32) itemWithIdentifier:v6];
  v4 = *(a1 + 40);
  v5 = [v3 dependentEntryKeys];
  [v4 unionSet:v5];
}

- (CGSize)intrinsicContentSize
{
  [(STUIStatusBar *)self _prepareVisualProviderIfNeeded];
  window = [(STUIStatusBar *)self window];
  v4 = objc_opt_class();
  if (window)
  {
    v5 = [*MEMORY[0x277D76620] _sceneInterfaceOrientationFromWindow:window];
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
    v7 = [STUIStatusBarItem createItemForIdentifier:identifierCopy statusBar:self];
    if ((*(&self->_statusBarFlags + 2) & 4) != 0)
    {
      [(STUIStatusBarVisualProvider *)self->_visualProvider itemCreated:v7];
    }

    [(NSMutableDictionary *)self->_items setObject:v7 forKeyedSubscript:identifierCopy];
  }

  return v7;
}

- (id)displayItemWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [STUIStatusBarItem itemIdentifierForDisplayItemIdentifier:identifierCopy];
  v6 = [(STUIStatusBar *)self _itemWithIdentifier:v5 createIfNeeded:0];

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
  [(STUIStatusBar *)self _prepareVisualProviderIfNeeded];
  v5 = [(NSDictionary *)self->_regions objectForKeyedSubscript:identifierCopy];

  return v5;
}

- (id)itemsDependingOnKeys:(id)keys
{
  keysCopy = keys;
  v5 = [MEMORY[0x277CBEB58] set];
  items = self->_items;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __38__STUIStatusBar_itemsDependingOnKeys___block_invoke;
  v12[3] = &unk_279D396B0;
  v13 = keysCopy;
  v7 = v5;
  v14 = v7;
  v8 = keysCopy;
  [(NSMutableDictionary *)items enumerateKeysAndObjectsUsingBlock:v12];
  v9 = v14;
  v10 = v7;

  return v7;
}

void __38__STUIStatusBar_itemsDependingOnKeys___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v4 = [v6 dependentEntryKeys];
  v5 = [v4 intersectsSet:*(a1 + 32)];

  if (v5)
  {
    [*(a1 + 40) addObject:v6];
  }
}

- (CGRect)frameForDisplayItemWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  [(STUIStatusBar *)self layoutIfNeeded];
  v5 = *MEMORY[0x277CBF3A0];
  v6 = *(MEMORY[0x277CBF3A0] + 8);
  v7 = *(MEMORY[0x277CBF3A0] + 16);
  v8 = *(MEMORY[0x277CBF3A0] + 24);
  items = self->_items;
  v10 = [STUIStatusBarItem itemIdentifierForDisplayItemIdentifier:identifierCopy];
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
          [(STUIStatusBar *)self convertRect:view fromView:?];
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
  v28 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  v5 = [MEMORY[0x277CBEB58] set];
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

        v10 = [(STUIStatusBarVisualProvider *)self->_visualProvider orderedDisplayItemPlacementsInRegionWithIdentifier:*(*(&v22 + 1) + 8 * i)];
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
  v4 = MEMORY[0x277CBEB58];
  identifiersCopy = identifiers;
  v6 = [v4 set];
  v7 = [(STUIStatusBar *)self displayItemIdentifiersInRegionsWithIdentifiers:identifiersCopy];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __57__STUIStatusBar_itemIdentifiersInRegionsWithIdentifiers___block_invoke;
  v10[3] = &unk_279D396D8;
  v8 = v6;
  v11 = v8;
  [v7 enumerateObjectsUsingBlock:v10];

  return v8;
}

void __57__STUIStatusBar_itemIdentifiersInRegionsWithIdentifiers___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [STUIStatusBarItem itemIdentifierForDisplayItemIdentifier:a2];
  [*(a1 + 32) addObject:v3];
}

- (id)dataEntryKeysForItemsWithIdentifiers:(id)identifiers
{
  v19 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  v5 = [MEMORY[0x277CBEB58] set];
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

        v11 = [(STUIStatusBar *)self itemWithIdentifier:*(*(&v14 + 1) + 8 * i), v14];
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
  v4 = [(STUIStatusBar *)self traitCollection:manager];
  v5 = [v4 userInterfaceIdiom] != 3;

  return v5;
}

- (id)_accessibilityHUDGestureManager:(id)manager HUDItemForPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v25 = *MEMORY[0x277D85DE8];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = [(STUIStatusBar *)self regions:manager];
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
  traitCollection = [(STUIStatusBar *)self traitCollection];
  [itemCopy setCustomUserInterfaceStyle:{objc_msgSend(traitCollection, "userInterfaceStyle")}];

  _statusBarWindowForAccessibilityHUD = [(STUIStatusBar *)self _statusBarWindowForAccessibilityHUD];
  [_statusBarWindowForAccessibilityHUD _showAccessibilityHUDItem:itemCopy forView:self];
}

- (void)_dismissAccessibilityHUDForGestureManager:(id)manager
{
  _statusBarWindowForAccessibilityHUD = [(STUIStatusBar *)self _statusBarWindowForAccessibilityHUD];
  [_statusBarWindowForAccessibilityHUD _dismissAccessibilityHUD];
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(STUIStatusBar *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendObject:self->_visualProvider withName:@"visualProvider" skipIfNil:1];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(STUIStatusBar *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)debugDescriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(STUIStatusBar *)self _descriptionBuilderWithMultilinePrefix:prefix forDebug:1];
  build = [v3 build];

  return build;
}

- (id)_descriptionBuilderWithMultilinePrefix:(id)prefix forDebug:(BOOL)debug
{
  debugCopy = debug;
  succinctDescriptionBuilder = [(STUIStatusBar *)self succinctDescriptionBuilder];
  [succinctDescriptionBuilder setUseDebugDescription:debugCopy];

  return succinctDescriptionBuilder;
}

- (id)_expandedDescriptionBuilderWithMultilinePrefix:(id)prefix
{
  v4 = [(STUIStatusBar *)self _descriptionBuilderWithMultilinePrefix:prefix forDebug:1];
  activeMultilinePrefix = [v4 activeMultilinePrefix];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __64__STUIStatusBar__expandedDescriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_279D38150;
  v6 = v4;
  v10 = v6;
  selfCopy = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:activeMultilinePrefix block:v9];

  v7 = v6;
  return v6;
}

void __64__STUIStatusBar__expandedDescriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 activeMultilinePrefix];
  v23 = MEMORY[0x277D85DD0];
  v24 = 3221225472;
  v25 = __64__STUIStatusBar__expandedDescriptionBuilderWithMultilinePrefix___block_invoke_2;
  v26 = &unk_279D38150;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v27 = v4;
  v28 = v5;
  [v2 appendBodySectionWithName:@"layout" multilinePrefix:v3 block:&v23];

  v6 = *(a1 + 32);
  v7 = [*(a1 + 40) enabledPartIdentifiers];
  [v6 appendArraySection:v7 withName:@"enabledPartIdentifiers" skipIfEmpty:1];

  v8 = *(a1 + 32);
  v9 = [*(a1 + 40) disabledPartIdentifiers];
  [v8 appendArraySection:v9 withName:@"disabledPartIdentifiers" skipIfEmpty:1];

  v10 = *(a1 + 32);
  v11 = [*(a1 + 40) styleAttributes];
  v12 = [v10 appendObject:v11 withName:@"styleAttributes"];

  v13 = *(a1 + 32);
  v14 = [*(a1 + 40) regions];
  [v13 appendDictionarySection:v14 withName:@"regions" skipIfEmpty:1];

  v15 = *(a1 + 32);
  v16 = [*(a1 + 40) currentData];
  v17 = [v15 appendObject:v16 withName:@"currentData"];

  v18 = *(a1 + 32);
  v19 = [*(a1 + 40) overlayData];
  v20 = [v18 appendObject:v19 withName:@"overlayData" skipIfNil:1];

  v21 = *(a1 + 32);
  v22 = [*(a1 + 40) displayItemStates];
  [v21 appendDictionarySection:v22 withName:@"displayItemStates" skipIfEmpty:1];
}

void __64__STUIStatusBar__expandedDescriptionBuilderWithMultilinePrefix___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  [*(a1 + 40) frame];
  v3 = [v2 appendRect:@"frame" withName:?];
  v4 = *(a1 + 32);
  [*(a1 + 40) avoidanceFrame];
  v5 = [v4 appendRect:@"avoidanceFrame" withName:?];
  v6 = *(a1 + 32);
  [*(a1 + 40) orientation];
  v7 = BSInterfaceOrientationDescription();
  [v6 appendString:v7 withName:@"orientation"];
}

- (void)setAdditionalDataDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_additionalDataDelegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_additionalDataDelegate, obj);
    if (objc_opt_respondsToSelector())
    {
      v5 = 0x200000;
    }

    else
    {
      v5 = 0;
    }

    self->_statusBarFlags = (*&self->_statusBarFlags & 0xFFDFFFFF | v5);
  }
}

- (id)additionalEntriesByRelativePriority
{
  WeakRetained = objc_loadWeakRetained(&self->_additionalDataDelegate);

  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->_additionalDataDelegate);
    additionalEntriesByRelativePriority = [v4 additionalEntriesByRelativePriority];
  }

  else
  {
    additionalEntriesByRelativePriority = 0;
  }

  return additionalEntriesByRelativePriority;
}

- (id)viewForAdditionalEntryWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  WeakRetained = objc_loadWeakRetained(&self->_additionalDataDelegate);

  if (WeakRetained)
  {
    v6 = objc_loadWeakRetained(&self->_additionalDataDelegate);
    v7 = [v6 viewForAdditionalEntryWithIdentifier:identifierCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)imageForAvatarIdentifier:(id)identifier
{
  identifierCopy = identifier;
  WeakRetained = objc_loadWeakRetained(&self->_additionalDataDelegate);
  if (WeakRetained && (statusBarFlags = self->_statusBarFlags, WeakRetained, (*&statusBarFlags & 0x200000) != 0))
  {
    v8 = objc_loadWeakRetained(&self->_additionalDataDelegate);
    v7 = [v8 imageForAvatarIdentifier:identifierCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)updateMenuBar
{
  v3 = +[(STUIStatusBarItem *)STUIStatusBarMenuBarItem];
  v4 = [STUIStatusBarItem itemIdentifierForDisplayItemIdentifier:v3];
  v6 = [(STUIStatusBar *)self _itemWithIdentifier:v4 createIfNeeded:0];

  v5 = v6;
  if (v6)
  {
    [v6 invalidateMenuBar];
    [(STUIStatusBar *)self _updateDisplayedItemsWithData:0 styleAttributes:self->_styleAttributes extraAnimations:0];
    v5 = v6;
  }
}

- (double)maximumPossibleMenuBarWidth
{
  visualProvider = [(STUIStatusBar *)self visualProvider];
  v3 = 0.0;
  if (objc_opt_respondsToSelector())
  {
    [visualProvider maximumPossibleMenuBarWidth];
    v3 = v4;
  }

  return v3;
}

- (STUIStatusBarAdditionalDataEntriesDelegate)additionalDataDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_additionalDataDelegate);

  return WeakRetained;
}

- (STUIStatusBarMenuBarProvider)menuBarProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_menuBarProvider);

  return WeakRetained;
}

- (STUIStatusBarActionable)targetActionable
{
  WeakRetained = objc_loadWeakRetained(&self->_targetActionable);

  return WeakRetained;
}

- (STUIStatusBarActionable)hoveredActionable
{
  WeakRetained = objc_loadWeakRetained(&self->_hoveredActionable);

  return WeakRetained;
}

@end