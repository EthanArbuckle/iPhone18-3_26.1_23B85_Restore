@interface UIStatusBar
+ (BOOL)_isLightContentStyle:(int64_t)a3;
+ (BOOL)_shouldForwardToImplementationClassForStyle:(int64_t)a3;
+ (NSDirectionalEdgeInsets)_regularPadEdgeInsets;
+ (NSDirectionalEdgeInsets)_roundedPadEdgeInsets;
+ (double)_heightForStyle:(int64_t)a3 orientation:(int64_t)a4 forStatusBarFrame:(BOOL)a5 inWindow:(id)a6 isAzulBLinked:(BOOL)a7;
+ (double)_viewControllerAdjustmentForOrientation:(int64_t)a3 inWindow:(id)a4;
+ (id)_newStyleAttributesForRequest:(id)a3;
+ (id)_styleAttributesForRequest:(id)a3;
+ (id)_styleAttributesForStatusBarStyle:(int64_t)a3;
+ (int64_t)lowBatteryLevel;
+ (void)enumerateStatusBarStyleOverridesWithBlock:(id)a3;
+ (void)getData:(id *)a3 forRequestedData:(id *)a4 withOverrides:(id *)a5;
- (BOOL)_isTransparent;
- (BOOL)_rectIntersectsTimeItem:(CGRect)a3;
- (BOOL)_shouldSeekHigherPriorityTouchTarget;
- (BOOL)_shouldUseInProcessProviderDoubleHeightStatusString;
- (BOOL)_touchShouldProduceReturnEvent;
- (BOOL)isDoubleHeight;
- (BOOL)isTranslucent;
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (CGAffineTransform)_slideTransform;
- (CGRect)_backgroundFrameForAttributes:(id)a3;
- (CGRect)frameForOrientation:(int64_t)a3;
- (CGRect)frameForPartWithIdentifier:(id)a3;
- (double)defaultHeight;
- (double)heightForOrientation:(int64_t)a3;
- (id)_currentComposedDataForStyle:(id)a3;
- (id)_currentStyleAttributes;
- (id)_doubleHeightStatusStringForStyle:(int64_t)a3;
- (id)_initWithFrame:(CGRect)a3 showForegroundView:(BOOL)a4 wantsServer:(BOOL)a5 inProcessStateProvider:(id)a6;
- (id)_prepareInterruptedAnimationCompositeViewIncludingForeground:(BOOL)a3;
- (id)_prepareToSetStyle:(id)a3 animation:(int)a4 forced:(BOOL)a5;
- (id)_styleAttributesForRequest:(id)a3;
- (id)currentStyleRequestForStyle:(int64_t)a3;
- (id)enabledPartIdentifiers;
- (id)styleRequest;
- (int64_t)currentStyle;
- (void)_adjustDoubleHeightTextVisibility;
- (void)_beginDisablingRasterizationForReason:(id)a3;
- (void)_clearOverrideHeight;
- (void)_crossfadeToNewBackgroundView;
- (void)_crossfadeToNewForegroundViewWithAlpha:(double)a3;
- (void)_dateTimePreferencesUpdated;
- (void)_didChangeFromIdiom:(int64_t)a3 onScreen:(id)a4 traverseHierarchy:(BOOL)a5;
- (void)_endDisablingRasterizationForReason:(id)a3;
- (void)_finishedSettingStyleWithOldHeight:(double)a3 newHeight:(double)a4 animation:(int)a5;
- (void)_itemViewPerformButtonAction:(id)a3;
- (void)_itemViewShouldBeginDisablingRasterization:(id)a3;
- (void)_itemViewShouldEndDisablingRasterization:(id)a3;
- (void)_performBlockWhileIgnoringForegroundViewChanges:(id)a3;
- (void)_requestStyle:(int64_t)a3 partStyles:(id)a4 animationParameters:(id)a5 forced:(BOOL)a6;
- (void)_setDoubleHeightStatusString:(id)a3;
- (void)_setFrameForStyle:(id)a3;
- (void)_setOverrideHeight:(double)a3;
- (void)_setStyle:(id)a3;
- (void)_setStyle:(id)a3 animation:(int)a4;
- (void)_setVisualAltitude:(double)a3;
- (void)_setVisualAltitudeBias:(CGSize)a3;
- (void)_swapToNewBackgroundView;
- (void)_swapToNewForegroundView;
- (void)_updateBackgroundFrame;
- (void)_updatePersistentAnimationsEnabledForForegroundView:(id)a3;
- (void)_updateShouldRasterize;
- (void)_updateUIWithStyleAttributes:(id)a3 animationParameters:(id)a4 forced:(BOOL)a5;
- (void)animateUnlock;
- (void)dealloc;
- (void)forceUpdateData:(BOOL)a3;
- (void)forceUpdateDoubleHeightStatus;
- (void)forceUpdateToData:(id *)a3 animated:(BOOL)a4;
- (void)jiggleLockIcon;
- (void)layoutSubviews;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)requestStyle:(int64_t)a3 animation:(int)a4 startTime:(double)a5 duration:(double)a6 curve:(int64_t)a7;
- (void)setAction:(id)a3 forPartWithIdentifier:(id)a4;
- (void)setEnabledCenterItems:(id)a3 duration:(double)a4;
- (void)setEnabledPartIdentifiers:(id)a3;
- (void)setForegroundAlpha:(double)a3 animationParameters:(id)a4;
- (void)setForegroundColor:(id)a3 animationParameters:(id)a4;
- (void)setLegibilityStyle:(int64_t)a3 animationParameters:(id)a4;
- (void)setOrientation:(int64_t)a3;
- (void)setPersistentAnimationsEnabled:(BOOL)a3;
- (void)setRegistered:(BOOL)a3;
- (void)setShowsOnlyCenterItems:(BOOL)a3;
- (void)setStyleRequest:(id)a3 animationParameters:(id)a4;
- (void)setSuppressesHiddenSideEffects:(BOOL)a3;
- (void)setTintColor:(id)a3;
- (void)setTintColor:(id)a3 withDuration:(double)a4;
- (void)statusBarServer:(id)a3 didReceiveDoubleHeightStatusString:(id)a4 forStyle:(int64_t)a5;
- (void)statusBarServer:(id)a3 didReceiveGlowAnimationState:(BOOL)a4 forStyle:(int64_t)a5;
- (void)statusBarServer:(id)a3 didReceiveStatusBarData:(id *)a4 withActions:(int)a5;
- (void)statusBarServer:(id)a3 didReceiveStyleOverrides:(unint64_t)a4;
- (void)statusBarStateProvider:(id)a3 didChangeDoubleHeightStatusStringForStyle:(int64_t)a4;
- (void)statusBarStateProvider:(id)a3 didPostStatusBarData:(id *)a4 withActions:(int)a5;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
@end

@implementation UIStatusBar

void ___UIStatusBar_Log_block_invoke()
{
  v0 = os_log_create("com.apple.UIKit", "UIStatusBarLog");
  v1 = _MergedGlobals_9_9;
  _MergedGlobals_9_9 = v0;
}

+ (NSDirectionalEdgeInsets)_roundedPadEdgeInsets
{
  +[_UIStatusBarVisualProvider_RoundedPad edgeInsets];
  result.trailing = v5;
  result.bottom = v4;
  result.leading = v3;
  result.top = v2;
  return result;
}

+ (NSDirectionalEdgeInsets)_regularPadEdgeInsets
{
  +[_UIStatusBarVisualProvider_Pad edgeInsets];
  result.trailing = v5;
  result.bottom = v4;
  result.leading = v3;
  result.top = v2;
  return result;
}

void __58___UIStatusBar_registerSensorActivityIndicator_forScreen___block_invoke()
{
  v0 = [MEMORY[0x1E696AD18] mapTableWithStrongToWeakObjects];
  v1 = qword_1ED49B038;
  qword_1ED49B038 = v0;
}

void __30___UIStatusBar_initWithStyle___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateWithAggregatedData:v3];
}

void __46___UIStatusBar__prepareVisualProviderIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setStatusBar:v3];
  v5 = *(a1 + 40);
  v6 = [v4 identifier];
  [v5 setObject:v4 forKeyedSubscript:v6];
}

void __46___UIStatusBar__prepareVisualProviderIfNeeded__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  [*(*(a1 + 32) + 408) orderedDisplayItemPlacementsInRegionWithIdentifier:a2];
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
        v12 = [*(*(a1 + 32) + 512) objectForKeyedSubscript:v11];
        if (!v12)
        {
          v12 = [_UIStatusBarDisplayItemState stateForDisplayItemWithIdentifier:v11 statusBar:*(a1 + 32)];
          [*(*(a1 + 32) + 512) setObject:v12 forKeyedSubscript:v11];
        }

        [v12 addPlacement:v10 inRegion:v5];
      }

      v7 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }
}

void __35___UIStatusBar_resetVisualProvider__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = MEMORY[0x1E695DFB8];
  v4 = a3;
  v5 = [v3 orderedSet];
  [v4 setDisplayItems:v5];
}

void __78___UIStatusBar__updateDisplayedItemsWithData_styleAttributes_extraAnimations___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 updateWithData:*(a1 + 32) styleAttributes:*(a1 + 40)];
  [*(a1 + 48) addObjectsFromArray:v4];
}

uint64_t __78___UIStatusBar__updateDisplayedItemsWithData_styleAttributes_extraAnimations___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) setNeedsUpdateConstraints];
  v2 = *(a1 + 32);

  return [v2 layoutIfNeeded];
}

void __43___UIStatusBar__fixupDisplayItemAttributes__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if ([v4 isEnabled])
  {
    v3 = [v4 displayItems];
    [v3 enumerateObjectsUsingBlock:&__block_literal_global_113_5];
  }
}

void __43___UIStatusBar__fixupDisplayItemAttributes__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setAlpha:1.0];
  v3 = *(MEMORY[0x1E695EFD0] + 16);
  v4[0] = *MEMORY[0x1E695EFD0];
  v4[1] = v3;
  v4[2] = *(MEMORY[0x1E695EFD0] + 32);
  [v2 setTransform:v4];
}

void __30___UIStatusBar_layoutSubviews__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 _is_needsLayout])
  {
    v2 = [v3 layer];
    [v2 setNeedsLayout];
  }
}

void __30___UIStatusBar_layoutSubviews__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 contentView];
  if (v4)
  {
    v5 = v4;
    (*(*(a1 + 32) + 16))();
    v4 = v5;
  }
}

uint64_t __34___UIStatusBar__updateRegionItems__block_invoke_2(uint64_t a1, void *a2, void *a3)
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

void __41___UIStatusBar__rearrangeOverflowedItems__block_invoke(uint64_t a1, uint64_t a2, void *a3)
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

    v6 = *(*(a1 + 32) + 512);
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

void __66___UIStatusBar_pointerInteraction_regionForRequest_defaultRegion___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
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
        v22 = MEMORY[0x1E69E9820];
        v23 = 3221225472;
        v24 = __66___UIStatusBar_pointerInteraction_regionForRequest_defaultRegion___block_invoke_2;
        v25 = &unk_1E7121B68;
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

void __66___UIStatusBar_pointerInteraction_regionForRequest_defaultRegion___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
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

void __45___UIStatusBar_gestureRecognizerShouldBegin___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
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
        v14 = MEMORY[0x1E69E9820];
        v15 = 3221225472;
        v16 = __45___UIStatusBar_gestureRecognizerShouldBegin___block_invoke_2;
        v17 = &unk_1E7121BB8;
        v10 = *(a1 + 40);
        v18 = *(a1 + 32);
        v19 = v10;
        [v9 enumerateObjectsUsingBlock:&v14];

        WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 536));
        if (WeakRetained)
        {
        }

        else
        {
          v12 = [v6 action];
          v13 = [v12 isEnabled];

          if (v13)
          {
            objc_storeWeak((*(a1 + 32) + 536), v6);
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

void __45___UIStatusBar_gestureRecognizerShouldBegin___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  obj = a2;
  v6 = [obj action];
  if ([v6 isEnabled])
  {
    v7 = [*(a1 + 32) _gestureRecognizer:*(a1 + 40) isInsideActionable:obj];

    if (v7)
    {
      objc_storeWeak((*(a1 + 32) + 536), obj);
      *a4 = 1;
    }
  }

  else
  {
  }
}

void __47___UIStatusBar_setStyle_forPartWithIdentifier___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 styleAttributes];
  [v1 _updateDisplayedItemsWithData:0 styleAttributes:v2 extraAnimations:MEMORY[0x1E695E0F0]];
}

void __42___UIStatusBar_setEnabledPartIdentifiers___block_invoke(uint64_t a1, uint64_t a2, void *a3)
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

void __38___UIStatusBar_dependentDataEntryKeys__block_invoke(uint64_t a1, void *a2)
{
  v6 = [a2 object];
  v3 = [*(a1 + 32) itemWithIdentifier:v6];
  v4 = *(a1 + 40);
  v5 = [v3 dependentEntryKeys];
  [v4 unionSet:v5];
}

void __37___UIStatusBar_itemsDependingOnKeys___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v4 = [v6 dependentEntryKeys];
  v5 = [v4 intersectsSet:*(a1 + 32)];

  if (v5)
  {
    [*(a1 + 40) addObject:v6];
  }
}

void __56___UIStatusBar_itemIdentifiersInRegionsWithIdentifiers___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [_UIStatusBarItem itemIdentifierForDisplayItemIdentifier:a2];
  [*(a1 + 32) addObject:v3];
}

+ (BOOL)_shouldForwardToImplementationClassForStyle:(int64_t)a3
{
  if ((a3 - 400) < 6)
  {
    return 0;
  }

  v4 = objc_opt_class();
  if (v4 != objc_opt_class())
  {
    return 0;
  }

  v5 = [objc_opt_class() _implementationClass];
  return v5 != objc_opt_class();
}

- (id)_initWithFrame:(CGRect)a3 showForegroundView:(BOOL)a4 wantsServer:(BOOL)a5 inProcessStateProvider:(id)a6
{
  v6 = a5;
  v7 = a4;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v13 = a6;
  v23.receiver = self;
  v23.super_class = UIStatusBar;
  v14 = [(UIStatusBar_Base *)&v23 _initWithFrame:v7 showForegroundView:v6 wantsServer:v13 inProcessStateProvider:x, y, width, height];
  v15 = v14;
  if (v14)
  {
    [v14 setOpaque:0];
    v22.receiver = v15;
    v22.super_class = UIStatusBar;
    [(UIStatusBar_Base *)&v22 setOrientation:1];
    v16 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v17 = *(v15 + 575);
    *(v15 + 575) = v16;

    if (v13)
    {
      [v13 getStatusBarData:v15 + 640];
    }

    else
    {
      v18 = +[UIStatusBarServer getStatusBarData];
      if (v18)
      {
        memcpy(v15 + 640, v18, 0xF28uLL);
      }
    }

    [UIStatusBar _setDeviceUserInterfaceLayoutDirection:(v15[3176] >> 1) & 1];
    v15[592] = v7;
    v19 = [MEMORY[0x1E696AD88] defaultCenter];
    [v19 addObserver:v15 selector:sel__itemViewPerformButtonAction_ name:@"UIStatusBarItemViewPerformButtonActionNotification" object:0];
    [v19 addObserver:v15 selector:sel__itemViewShouldBeginDisablingRasterization_ name:@"UIStatusBarItemViewShouldBeginDisablingRasterizationNotification" object:0];
    [v19 addObserver:v15 selector:sel__itemViewShouldEndDisablingRasterization_ name:@"UIStatusBarItemViewShouldEndDisablingRasterizationNotification" object:0];
    if (_UIDeviceNativeUserInterfaceIdiom() == 1)
    {
      v20 = _UIKitUserDefaults();
      [v20 addObserver:v15 forKeyPath:0x1EFB9AA30 options:0 context:0];
      [v20 addObserver:v15 forKeyPath:0x1EFB9AA50 options:0 context:0];
      v15[593] = 1;
    }

    [v15 _evaluateServerRegistration];
    [v15 _updateShouldRasterize];
  }

  return v15;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:@"UIStatusBarItemViewPerformButtonActionNotification" object:0];
  [v3 removeObserver:self name:@"UIStatusBarItemViewShouldBeginDisablingRasterizationNotification" object:0];
  [v3 removeObserver:self name:@"UIStatusBarItemViewShouldEndDisablingRasterizationNotification" object:0];
  if (self->_observingDefaults)
  {
    v4 = _UIKitUserDefaults();
    [v4 removeObserver:self forKeyPath:0x1EFB9AA30];
    [v4 removeObserver:self forKeyPath:0x1EFB9AA50];
  }

  v5.receiver = self;
  v5.super_class = UIStatusBar;
  [(UIStatusBar_Base *)&v5 dealloc];
}

+ (double)_heightForStyle:(int64_t)a3 orientation:(int64_t)a4 forStatusBarFrame:(BOOL)a5 inWindow:(id)a6 isAzulBLinked:(BOOL)a7
{
  v7 = a7;
  v8 = a5;
  v12 = a6;
  if ([a1 _shouldForwardToImplementationClassForStyle:a3])
  {
    [objc_msgSend(objc_opt_class() "_implementationClass")];
    v14 = v13;
  }

  else
  {
    v15 = [a1 _styleAttributesForStatusBarStyle:a3];
    [v15 heightForOrientation:a4];
    v14 = v16;
  }

  return v14;
}

+ (void)enumerateStatusBarStyleOverridesWithBlock:(id)a3
{
  v4 = 1;
  do
  {
    (*(a3 + 2))(a3, v4);
    v5 = v4 >= 0x10000000001;
    v4 *= 2;
  }

  while (!v5);
}

+ (void)getData:(id *)a3 forRequestedData:(id *)a4 withOverrides:(id *)a5
{
  if (!a3 || !a4 || !a5)
  {
    v29 = [MEMORY[0x1E696AAA8] currentHandler];
    [v29 handleFailureInMethod:a2 object:a1 file:@"UIStatusBar.m" lineNumber:218 description:{@"cannot call without valid pointers for data=%p, requestedData=%p and overrides=%p", a3, a4, a5}];
  }

  if (a3 != a4)
  {
    memcpy(a3, a4, sizeof($6C45178016D353444451090973A2A97F));
  }

  p_var36 = &a5->var36;
  v11 = 46;
  v12 = a3;
  do
  {
    if (p_var36[-1].var57[199] == 1)
    {
      v12->var0[0] = p_var36->var0[0];
    }

    v12 = (v12 + 1);
    p_var36 = (p_var36 + 1);
    --v11;
  }

  while (v11);
  v13 = *(a5 + 46);
  if (v13)
  {
    strncpy(a3->var1, a5->var36.var1, 0x40uLL);
    v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a5->var36.var1];
    if (v20)
    {
      v21 = v20;
      v22 = objc_alloc_init(MEMORY[0x1E696AB78]);
      v23 = [MEMORY[0x1E695DF58] currentLocale];
      [v22 setLocale:v23];

      [v22 setDateStyle:0];
      [v22 setTimeStyle:1];
      v24 = [v22 dateFromString:v21];
      if (v24)
      {
        v25 = [v22 copy];
        [v25 setLocalizedDateFormatFromTemplate:@"Jmm"];
        v26 = [v25 stringFromDate:v24];

        v21 = v26;
      }

      strncpy(a3->var2, [v21 UTF8String], 0x40uLL);
    }

    v13 = *(a5 + 46);
    if ((v13 & 2) == 0)
    {
LABEL_12:
      if ((v13 & 4) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_45;
    }
  }

  else if ((v13 & 2) == 0)
  {
    goto LABEL_12;
  }

  strncpy(a3->var3, a5->var36.var3, 0x100uLL);
  v13 = *(a5 + 46);
  if ((v13 & 4) == 0)
  {
LABEL_13:
    if ((v13 & 0x10) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_46;
  }

LABEL_45:
  a3->var4 = a5->var36.var4;
  v13 = *(a5 + 46);
  if ((v13 & 0x10) == 0)
  {
LABEL_14:
    if ((v13 & 8) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_47;
  }

LABEL_46:
  a3->var6 = a5->var36.var6;
  v13 = *(a5 + 46);
  if ((v13 & 8) == 0)
  {
LABEL_15:
    if ((v13 & 0x20) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_47:
  a3->var5 = a5->var36.var5;
  if ((*(a5 + 46) & 0x20) != 0)
  {
LABEL_16:
    a3->var7 = a5->var36.var7;
  }

LABEL_17:
  if ((*(a5 + 56) & 4) != 0)
  {
    strncpy(a3->var44, a5->var36.var44, 0x64uLL);
  }

  v14 = *(a5 + 46);
  if ((v14 & 0x40) != 0)
  {
    strncpy(a3->var8, a5->var36.var8, 0x64uLL);
    v14 = *(a5 + 46);
  }

  if ((v14 & 0x80) != 0)
  {
    strncpy(a3->var9, a5->var36.var9, 0x64uLL);
  }

  v15 = 0;
  v16 = 1;
  do
  {
    v17 = v16;
    if ((*(a5 + 46) >> 8 >> v15))
    {
      strncpy(a3->var12[v15], a5->var36.var12[v15], 0x64uLL);
    }

    v16 = 0;
    v15 = 1;
  }

  while ((v17 & 1) != 0);
  v18 = *(a5 + 46);
  if ((v18 & 0x400) != 0)
  {
    strncpy(a3->var13, a5->var36.var13, 0x400uLL);
    v18 = *(a5 + 46);
    if ((v18 & 0x800) == 0)
    {
LABEL_29:
      if ((v18 & 0x1000) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_30;
    }
  }

  else if ((v18 & 0x800) == 0)
  {
    goto LABEL_29;
  }

  a3->var14 = a5->var36.var14;
  if ((*(a5 + 46) & 0x1000) != 0)
  {
LABEL_30:
    a3->var15 = a5->var36.var15;
  }

LABEL_31:
  if ((*(a5 + 56) & 8) != 0)
  {
    *(a3 + 3149) = *(a3 + 3149) & 0xF7 | *(&a5->var36 + 3149) & 8;
  }

  v19 = *(a5 + 46);
  if ((v19 & 0x2000) != 0)
  {
    a3->var18 = a5->var36.var18;
    v19 = *(a5 + 46);
    if ((v19 & 0x4000) == 0)
    {
LABEL_35:
      if ((v19 & 0x8000) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_54;
    }
  }

  else if ((v19 & 0x4000) == 0)
  {
    goto LABEL_35;
  }

  a3->var19 = a5->var36.var19;
  v19 = *(a5 + 46);
  if ((v19 & 0x8000) == 0)
  {
LABEL_36:
    if ((v19 & 0x10000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_55;
  }

LABEL_54:
  a3->var21 = a5->var36.var21;
  v19 = *(a5 + 46);
  if ((v19 & 0x10000) == 0)
  {
LABEL_37:
    if ((v19 & 0x20000) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_56;
  }

LABEL_55:
  a3->var22 = a5->var36.var22;
  v19 = *(a5 + 46);
  if ((v19 & 0x20000) == 0)
  {
    goto LABEL_59;
  }

LABEL_56:
  var21 = a3->var21;
  if (var21 <= 0xE && ((1 << var21) & 0x7F9F) != 0)
  {
    a3->var0[9] = 0;
    v19 = *(a5 + 46);
  }

LABEL_59:
  if ((v19 & 0x40000) != 0)
  {
    a3->var23 = a5->var36.var23;
    v19 = *(a5 + 46);
    if ((v19 & 0x80000) == 0)
    {
LABEL_61:
      if ((v19 & 0x100000) == 0)
      {
        goto LABEL_62;
      }

      goto LABEL_83;
    }
  }

  else if ((v19 & 0x80000) == 0)
  {
    goto LABEL_61;
  }

  a3->var24 = a5->var36.var24;
  v19 = *(a5 + 46);
  if ((v19 & 0x100000) == 0)
  {
LABEL_62:
    if ((v19 & 0x200000) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_84;
  }

LABEL_83:
  strncpy(a3->var25, a5->var36.var25, 0x96uLL);
  v19 = *(a5 + 46);
  if ((v19 & 0x200000) == 0)
  {
LABEL_63:
    if ((v19 & 0x400000) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_85;
  }

LABEL_84:
  a3->var26 = a5->var36.var26;
  v19 = *(a5 + 46);
  if ((v19 & 0x400000) == 0)
  {
LABEL_64:
    if ((v19 & 0x800000) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_86;
  }

LABEL_85:
  a3->var27 = a5->var36.var27;
  v19 = *(a5 + 46);
  if ((v19 & 0x800000) == 0)
  {
LABEL_65:
    if ((v19 & 0x1000000) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_87;
  }

LABEL_86:
  *(a3 + 2272) = *(a3 + 2272) & 0xFD | *(&a5->var36 + 2272) & 2;
  v19 = *(a5 + 46);
  if ((v19 & 0x1000000) == 0)
  {
LABEL_66:
    if ((v19 & 0x2000000) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_67;
  }

LABEL_87:
  strncpy(a3->var31, a5->var36.var31, 0x100uLL);
  if ((*(a5 + 46) & 0x2000000) != 0)
  {
LABEL_67:
    *(a3 + 2529) = *(a3 + 2529) & 0xFE | *(&a5->var36 + 2529) & 1;
  }

LABEL_68:
  if (a5->var27)
  {
    *(a3 + 2536) = *(a3 + 2536) & 0xFB | *(&a5->var36 + 2536) & 4;
  }

  v28 = *(a5 + 56);
  if (v28)
  {
    *(a3 + 2529) = *(a3 + 2529) & 0xFD | *(&a5->var36 + 2529) & 2;
    v28 = *(a5 + 56);
    if ((v28 & 2) == 0)
    {
LABEL_72:
      if ((v28 & 0x10) == 0)
      {
        goto LABEL_73;
      }

      goto LABEL_91;
    }
  }

  else if ((*(a5 + 56) & 2) == 0)
  {
    goto LABEL_72;
  }

  *(a3 + 2529) = *(a3 + 2529) & 0xFB | *(&a5->var36 + 2529) & 4;
  v28 = *(a5 + 56);
  if ((v28 & 0x10) == 0)
  {
LABEL_73:
    if ((v28 & 0x20) == 0)
    {
      goto LABEL_74;
    }

    goto LABEL_92;
  }

LABEL_91:
  *(a3 + 3160) = *(a3 + 3160) & 0xFB | *(&a5->var36 + 3160) & 4;
  v28 = *(a5 + 56);
  if ((v28 & 0x20) == 0)
  {
LABEL_74:
    if ((v28 & 0x40) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_75;
  }

LABEL_92:
  strncpy(a3->var54, a5->var36.var54, 0x64uLL);
  if ((*(a5 + 56) & 0x40) != 0)
  {
LABEL_75:
    strncpy(a3->var55, a5->var36.var55, 0x64uLL);
  }

LABEL_76:
  if (a5->var0[41])
  {
    *(a3 + 2529) = *(a3 + 2529) & 0x9F | *(&a5->var36 + 2529) & 0x60;
  }

  __strlcpy_chk();

  __strlcpy_chk();
}

+ (int64_t)lowBatteryLevel
{
  if (_UIDeviceNativeUserInterfaceIdiom() == 1)
  {
    return 10;
  }

  else
  {
    return 20;
  }
}

- (void)forceUpdateData:(BOOL)a3
{
  v3 = a3;
  v5 = [(UIStatusBar_Base *)self inProcessStateProvider];

  if (!v5)
  {
    v6 = +[UIStatusBarServer getStatusBarData];

    [(UIStatusBar *)self forceUpdateToData:v6 animated:v3];
  }
}

- (void)forceUpdateToData:(id *)a3 animated:(BOOL)a4
{
  v4 = a4;
  if (a3)
  {
    memcpy(&self->_currentRawData, a3, sizeof(self->_currentRawData));
  }

  [UIStatusBar _setDeviceUserInterfaceLayoutDirection:(*(&self->_currentRawData + 2536) >> 1) & 1];
  foregroundView = self->_foregroundView;
  v7 = [(UIStatusBar *)self _currentComposedData];
  [(UIStatusBarForegroundView *)foregroundView setStatusBarData:v7 actions:0 animated:v4];
}

- (void)forceUpdateDoubleHeightStatus
{
  v3 = [(UIStatusBar *)self _doubleHeightStatusStringForStyle:[(UIStatusBar *)self currentStyle]];
  if (v3)
  {
    v4 = v3;
    [(UIStatusBar *)self _setDoubleHeightStatusString:v3];
    [(UIStatusBar *)self _adjustDoubleHeightTextVisibility];
    v3 = v4;
  }
}

- (void)setShowsOnlyCenterItems:(BOOL)a3
{
  self->_showOnlyCenterItems = a3;
  foregroundView = self->_foregroundView;
  v4 = [(UIStatusBar *)self _currentComposedData];
  [(UIStatusBarForegroundView *)foregroundView setStatusBarData:v4 actions:0 animated:0];
}

- (double)defaultHeight
{
  styleAttributes = self->_styleAttributes;
  if (!styleAttributes)
  {
    return 20.0;
  }

  [(UIStatusBarStyleAttributes *)styleAttributes heightForMetrics:0];
  return result;
}

- (CGRect)frameForOrientation:(int64_t)a3
{
  if (self->_waitingOnCallbackAfterChangingStyleOverridesLocally)
  {
    [(UIStatusBar *)self forceUpdate:1];
    self->_waitingOnCallbackAfterChangingStyleOverridesLocally = 0;
  }

  v9.receiver = self;
  v9.super_class = UIStatusBar;
  [(UIStatusBar_Base *)&v9 frameForOrientation:a3];
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (double)heightForOrientation:(int64_t)a3
{
  if (self->_waitingOnCallbackAfterChangingStyleOverridesLocally)
  {
    [(UIStatusBar *)self forceUpdate:1];
    self->_waitingOnCallbackAfterChangingStyleOverridesLocally = 0;
  }

  v5 = [(UIStatusBar *)self _currentStyleAttributes];
  [v5 heightForOrientation:a3];
  v7 = v6;

  return v7;
}

+ (double)_viewControllerAdjustmentForOrientation:(int64_t)a3 inWindow:(id)a4
{
  v6 = a4;
  if ([a1 _shouldForwardToImplementationClassForStyle:0])
  {
    [objc_msgSend(a1 "_implementationClass")];
    v8 = v7;
  }

  else
  {
    _UIAppStatusBarDefaultHeight();
    v8 = 0.0 - v9;
  }

  return v8;
}

- (int64_t)currentStyle
{
  styleAttributes = self->_styleAttributes;
  if (styleAttributes)
  {
    return [(UIStatusBarStyleAttributes *)styleAttributes style];
  }

  else
  {
    return -1;
  }
}

- (BOOL)isDoubleHeight
{
  v3 = [(UIStatusBar *)self styleRequest];
  v4 = [(UIStatusBar *)self _styleAttributesForRequest:v3];
  v5 = [v4 isDoubleHeight];

  return v5;
}

- (BOOL)isTranslucent
{
  v3 = [(UIStatusBar *)self styleRequest];
  v4 = [(UIStatusBar *)self _styleAttributesForRequest:v3];
  v5 = [v4 isTranslucent];

  return v5;
}

- (void)requestStyle:(int64_t)a3 animation:(int)a4 startTime:(double)a5 duration:(double)a6 curve:(int64_t)a7
{
  v9 = 0;
  if (a4 && a6 > 0.0)
  {
    v13 = *&a4;
    v14 = [[UIStatusBarStyleAnimationParameters alloc] initWithDefaultParameters];
    [(UIStatusBarStyleAnimationParameters *)v14 setStyleAnimation:v13];
    [(UIStatusBarAnimationParameters *)v14 setStartTime:a5];
    [(UIStatusBarAnimationParameters *)v14 setDuration:a6];
    [(UIStatusBarAnimationParameters *)v14 setCurve:a7];
    v9 = v14;
  }

  v15 = v9;
  [(UIStatusBar_Base *)self requestStyle:a3 animationParameters:v9, a7, a5, a6];
}

- (void)_requestStyle:(int64_t)a3 partStyles:(id)a4 animationParameters:(id)a5 forced:(BOOL)a6
{
  v6 = a6;
  v22 = *MEMORY[0x1E69E9840];
  v16 = a3;
  v9 = a5;
  CategoryCachedImpl = __UILogGetCategoryCachedImpl("StatusBar", &qword_1ED499CF8);
  if (*CategoryCachedImpl)
  {
    v14 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218498;
      *&buf[4] = a3;
      v18 = 2112;
      v19 = v9;
      v20 = 1024;
      v21 = v6;
      _os_log_impl(&dword_188A29000, v14, OS_LOG_TYPE_ERROR, "Requesting status bar style %lu. Animation parameters:%@ forced: %d", buf, 0x1Cu);
    }
  }

  v11 = __UILogGetCategoryCachedImpl("StatusBar", &qword_1ED499D00);
  if (*v11)
  {
    v15 = *(v11 + 8);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      *&buf[4] = a3;
      _os_log_impl(&dword_188A29000, v15, OS_LOG_TYPE_ERROR, "Effective status bar style: %lu", buf, 0xCu);
    }
  }

  *buf = 0;
  [(UIStatusBar_Base *)self _getStyle:&v16 andActiveOverride:buf forRequestedStyle:[(UIStatusBar_Base *)self _requestStyle]];
  [(UIStatusBar_Base *)self setActiveStyleOverride:*buf];
  v12 = [(UIStatusBar *)self currentStyleRequestForStyle:v16];
  v13 = [(UIStatusBar *)self _styleAttributesForRequest:v12];
  [(UIStatusBar *)self _updateUIWithStyleAttributes:v13 animationParameters:v9 forced:v6];
}

- (void)_updateUIWithStyleAttributes:(id)a3 animationParameters:(id)a4 forced:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v10 = a4;
  nextTintTransition = self->_nextTintTransition;
  self->_nextTintTransition = 0;

  v12 = [(UIStatusBar_Base *)self manager];
  if (!v12 || (v13 = v12, -[UIStatusBar_Base manager](self, "manager"), v14 = objc_claimAutoreleasedReturnValue(), v15 = [v14 statusBar:self shouldRequestStyleAttributes:v9 animationParameters:v10 forced:v5], v14, v13, v15))
  {
    if ([(UIStatusBar_Base *)self isHidden])
    {
      v16 = [(UIStatusBar_Base *)self suppressesHiddenSideEffects];
      if (!v9 || !v16)
      {
        goto LABEL_25;
      }
    }

    else if (!v9)
    {
      goto LABEL_25;
    }

    v17 = [UIApp _systemNavigationAction];
    v18 = [(UIStatusBarForegroundView *)self->_foregroundView willChangeNavigationItemDisplayWithSystemNavigationAction:v17];
    v19 = [(UIStatusBarStyleAttributes *)v9 backgroundColorWithTintColor:self->_tintColor];
    v20 = v19;
    if (self->_styleAttributes != v9 || v18 || v19 != self->_lastUsedBackgroundColor && ![(UIColor *)v19 isEqual:?])
    {
      v21 = 0.0;
      if (v10)
      {
        v22 = [v10 styleAnimation];
        if (v22)
        {
          [v10 duration];
          v21 = v23;
        }
      }

      else
      {
        v22 = 0;
      }

      v24 = [(UIStatusBar *)self _prepareToSetStyle:v9 animation:v22 forced:v5, v20];
      [(UIStatusBarStyleAttributes *)self->_styleAttributes heightForOrientation:[(UIStatusBar_Base *)self orientation]];
      v26 = v25;
      objc_storeStrong(&self->_styleAttributes, a3);
      [(UIStatusBarStyleAttributes *)self->_styleAttributes heightForOrientation:[(UIStatusBar_Base *)self orientation]];
      v28 = v27;
      v29 = [(UIStatusBarStyleAttributes *)self->_styleAttributes foregroundStyle];
      [v29 scale];
      v31 = v30;
      v32 = [(UIView *)self layer];
      [v32 setRasterizationScale:v31];

      if ([(UIStatusBarStyleAttributes *)self->_styleAttributes supportsRasterization])
      {
        [(UIStatusBar *)self _endDisablingRasterizationForReason:@"style"];
      }

      else
      {
        [(UIStatusBar *)self _beginDisablingRasterizationForReason:@"style"];
      }

      if (v26 != v28)
      {
        v33 = [(UIStatusBar_Base *)self styleDelegate];
        [v33 statusBar:self willAnimateFromHeight:v22 toHeight:v26 duration:v28 animation:v21];
      }

      v34 = self->_foregroundView;
      v35 = v34;
      foregroundViewShouldIgnoreStatusBarDataDuringAnimation = self->_foregroundViewShouldIgnoreStatusBarDataDuringAnimation;
      if (foregroundViewShouldIgnoreStatusBarDataDuringAnimation)
      {
        [(UIStatusBarForegroundView *)v34 startIgnoringData];
      }

      v37 = [(UIStatusBar *)self _doubleHeightStatusStringForStyle:[(UIStatusBarStyleAttributes *)v9 style]];
      [(UIStatusBar *)self _setDoubleHeightStatusString:v37];

      [(UIStatusBar *)self _beginDisablingRasterizationForReason:@"styleChange"];
      [(UIView *)self _setDrawsAsBackdropOverlay:[(UIStatusBarStyleAttributes *)v9 style]== 110];
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __71__UIStatusBar__updateUIWithStyleAttributes_animationParameters_forced___block_invoke;
      aBlock[3] = &unk_1E7122370;
      aBlock[4] = self;
      v53 = v9;
      v55 = v22;
      v38 = v24;
      v54 = v38;
      v39 = _Block_copy(aBlock);
      v44[0] = MEMORY[0x1E69E9820];
      v44[1] = 3221225472;
      v44[2] = __71__UIStatusBar__updateUIWithStyleAttributes_animationParameters_forced___block_invoke_2;
      v44[3] = &unk_1E7122398;
      v51 = foregroundViewShouldIgnoreStatusBarDataDuringAnimation;
      v45 = v35;
      v46 = self;
      v48 = v26;
      v49 = v28;
      v50 = v22;
      v47 = v38;
      v40 = v38;
      v41 = v35;
      v42 = _Block_copy(v44);
      [(UIStatusBar_Base *)self _performAnimations:v39 withParameters:v10 completion:v42];

      v20 = v43;
    }
  }

LABEL_25:
}

void *__71__UIStatusBar__updateUIWithStyleAttributes_animationParameters_forced___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _setStyle:*(a1 + 40) animation:*(a1 + 56)];
  result = *(a1 + 48);
  if (result)
  {

    return [result setAlpha:0.0];
  }

  return result;
}

void *__71__UIStatusBar__updateUIWithStyleAttributes_animationParameters_forced___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 76) == 1)
  {
    [*(a1 + 32) stopIgnoringData:0];
  }

  [*(a1 + 40) _endDisablingRasterizationForReason:@"styleChange"];
  [*(a1 + 40) _finishedSettingStyleWithOldHeight:*(a1 + 72) newHeight:*(a1 + 56) animation:*(a1 + 64)];
  result = *(a1 + 48);
  if (result)
  {
    [result removeFromSuperview];
    v3 = *(a1 + 48);
    v4 = *(*(a1 + 40) + 4520);

    return [v4 removeObject:v3];
  }

  return result;
}

- (BOOL)_shouldUseInProcessProviderDoubleHeightStatusString
{
  v3 = [(UIStatusBar_Base *)self inProcessStateProvider];
  if (v3)
  {
    v4 = [(UIStatusBar_Base *)self inProcessStateProvider];
    v5 = objc_opt_respondsToSelector();
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

- (id)_doubleHeightStatusStringForStyle:(int64_t)a3
{
  if ([(UIStatusBar *)self _shouldUseInProcessProviderDoubleHeightStatusString])
  {
    v5 = [(UIStatusBar_Base *)self inProcessStateProvider];
    v6 = [v5 doubleHeightStatusStringForStyle:a3];
  }

  else
  {
    v6 = [UIStatusBarServer getDoubleHeightStatusStringForStyle:a3];
  }

  return v6;
}

- (void)_setDoubleHeightStatusString:(id)a3
{
  v31 = a3;
  v4 = [v31 copy];
  currentDoubleHeightText = self->_currentDoubleHeightText;
  self->_currentDoubleHeightText = v4;

  foregroundView = self->_foregroundView;
  v7 = [(UIStatusBar *)self _currentComposedData];
  [(UIStatusBarForegroundView *)foregroundView setStatusBarData:v7 actions:0 animated:1];

  newStyleForegroundView = self->_newStyleForegroundView;
  v9 = [(UIStatusBar *)self _currentComposedData];
  [(UIStatusBarForegroundView *)newStyleForegroundView setStatusBarData:v9 actions:0 animated:1];

  v10 = [(UIView *)self traitCollection];
  v11 = [v10 userInterfaceIdiom];

  v12 = v31;
  if (!v11)
  {
    v13 = [v31 length];
    doubleHeightLabel = self->_doubleHeightLabel;
    if (v13)
    {
      if (!doubleHeightLabel)
      {
        v15 = [UIView alloc];
        [(UIView *)self bounds];
        v16 = [(UIView *)v15 initWithFrame:?];
        doubleHeightLabelContainer = self->_doubleHeightLabelContainer;
        self->_doubleHeightLabelContainer = v16;

        [(UIView *)self->_doubleHeightLabelContainer setAutoresizingMask:18];
        [(UIView *)self->_doubleHeightLabelContainer setClipsToBounds:1];
        [(UIView *)self addSubview:self->_doubleHeightLabelContainer];
        [(UIStatusBar *)self defaultHeight];
        v19 = v18;
        [(UIView *)self bounds];
        v21 = v20;
        [(UIStatusBar *)self defaultHeight];
        v23 = [[UILabel alloc] initWithFrame:0.0, v19, v21, v22 + -2.0];
        v24 = self->_doubleHeightLabel;
        self->_doubleHeightLabel = v23;

        v25 = self->_doubleHeightLabel;
        v26 = +[UIColor whiteColor];
        [(UILabel *)v25 setTextColor:v26];

        [(UILabel *)self->_doubleHeightLabel setTextAlignment:1];
        [(UIView *)self->_doubleHeightLabel setAutoresizingMask:34];
        [(UIView *)self->_doubleHeightLabel setBackgroundColor:0];
        [(UIView *)self->_doubleHeightLabel setOpaque:0];
        v27 = self->_doubleHeightLabel;
        v28 = [off_1E70ECC18 systemFontOfSize:13.5];
        [(UILabel *)v27 setFont:v28];

        [(UIView *)self->_doubleHeightLabelContainer addSubview:self->_doubleHeightLabel];
        [(UIStatusBar *)self _adjustDoubleHeightTextVisibility];
        doubleHeightLabel = self->_doubleHeightLabel;
      }

      [(UILabel *)doubleHeightLabel setText:v31];
    }

    else
    {
      [(UIView *)doubleHeightLabel removeFromSuperview];
      v29 = self->_doubleHeightLabel;
      self->_doubleHeightLabel = 0;

      [(UIView *)self->_doubleHeightLabelContainer removeFromSuperview];
      v30 = self->_doubleHeightLabelContainer;
      self->_doubleHeightLabelContainer = 0;
    }

    v12 = v31;
  }
}

- (void)_adjustDoubleHeightTextVisibility
{
  if (self->_doubleHeightLabel)
  {
    newStyleBackgroundView = self->_newStyleBackgroundView;
    if (!newStyleBackgroundView)
    {
      newStyleBackgroundView = self->_backgroundView;
    }

    v13 = [(UIStatusBarBackgroundView *)newStyleBackgroundView style];
    [v13 heightForOrientation:{-[UIStatusBar_Base orientation](self, "orientation")}];
    v5 = v4;
    [(UIStatusBar *)self defaultDoubleHeight];
    doubleHeightLabel = self->_doubleHeightLabel;
    if (v5 == v7)
    {
      [(UIView *)doubleHeightLabel setAlpha:1.0];
      v8 = [v13 isPulsingAnimationEnabled];
    }

    else
    {
      [(UIView *)doubleHeightLabel setAlpha:0.0];
      v8 = 0;
    }

    v9 = [(UIView *)self->_doubleHeightLabel layer];
    [v9 removeAnimationForKey:@"opacity"];
    if (v8)
    {
      v10 = [MEMORY[0x1E6979390] animationWithKeyPath:@"opacity"];
      [v10 setValues:&unk_1EFE2D7F8];
      [v10 setKeyTimes:&unk_1EFE2D810];
      v11 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EB8]];
      [v10 setTimingFunction:v11];

      [v10 setCalculationMode:*MEMORY[0x1E69795A8]];
      [v10 setAutoreverses:1];
      LODWORD(v12) = 2139095040;
      [v10 setRepeatCount:v12];
      [v10 setDuration:2.0];
      [v9 addAnimation:v10 forKey:@"opacity"];
      [(UIStatusBar *)self _beginDisablingRasterizationForReason:@"doubleHeight"];
    }

    else
    {
      [(UIStatusBar *)self _endDisablingRasterizationForReason:@"doubleHeight"];
    }
  }
}

- (CGAffineTransform)_slideTransform
{
  v6 = [(UIView *)self window];
  [v6 bounds];
  CGAffineTransformMakeTranslation(retstr, 0.0, v4);

  return result;
}

- (id)_prepareInterruptedAnimationCompositeViewIncludingForeground:(BOOL)a3
{
  v3 = a3;
  v5 = [(NSMutableArray *)self->_interruptedAnimationCompositeViews lastObject];
  [(UIView *)self->_backgroundView frame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [(UIView *)self->_newStyleBackgroundView frame];
  v46.origin.x = v14;
  v46.origin.y = v15;
  v46.size.width = v16;
  v46.size.height = v17;
  v42.origin.x = v7;
  v42.origin.y = v9;
  v42.size.width = v11;
  v42.size.height = v13;
  v43 = CGRectUnion(v42, v46);
  x = v43.origin.x;
  y = v43.origin.y;
  width = v43.size.width;
  height = v43.size.height;
  [v5 frame];
  v47.origin.x = v22;
  v47.origin.y = v23;
  v47.size.width = v24;
  v47.size.height = v25;
  v44.origin.x = x;
  v44.origin.y = y;
  v44.size.width = width;
  v44.size.height = height;
  v45 = CGRectUnion(v44, v47);
  v26 = [[UIView alloc] initWithFrame:v45.origin.x, v45.origin.y, v45.size.width, v45.size.height];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __76__UIStatusBar__prepareInterruptedAnimationCompositeViewIncludingForeground___block_invoke;
  aBlock[3] = &unk_1E70F5AF0;
  v27 = v26;
  v39 = v27;
  v40 = self;
  v41 = v3;
  v28 = _Block_copy(aBlock);
  if (v5)
  {
    [(UIView *)self insertSubview:v27 aboveSubview:v5];
  }

  else
  {
    [(UIView *)self insertSubview:v27 atIndex:0];
  }

  v29 = [(UIStatusBarBackgroundView *)self->_backgroundView style];
  v30 = [v29 isTranslucent];

  if (v30)
  {
    v28[2](v28);
  }

  [(UIView *)v27 addSubview:self->_newStyleBackgroundView];
  newStyleBackgroundView = self->_newStyleBackgroundView;
  self->_newStyleBackgroundView = 0;

  if (v3)
  {
    [(UIView *)v27 addSubview:self->_newStyleForegroundView];
    newStyleForegroundView = self->_newStyleForegroundView;
    self->_newStyleForegroundView = 0;
  }

  if ((v30 & 1) == 0)
  {
    v28[2](v28);
  }

  interruptedAnimationCompositeViews = self->_interruptedAnimationCompositeViews;
  if (!interruptedAnimationCompositeViews)
  {
    v34 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v35 = self->_interruptedAnimationCompositeViews;
    self->_interruptedAnimationCompositeViews = v34;

    interruptedAnimationCompositeViews = self->_interruptedAnimationCompositeViews;
  }

  [(NSMutableArray *)interruptedAnimationCompositeViews addObject:v27];
  v36 = v27;

  return v27;
}

void __76__UIStatusBar__prepareInterruptedAnimationCompositeViewIncludingForeground___block_invoke(uint64_t a1)
{
  [*(a1 + 32) addSubview:*(*(a1 + 40) + 600)];
  v2 = *(a1 + 40);
  v3 = *(v2 + 600);
  *(v2 + 600) = 0;

  v4 = *(a1 + 40);
  if (*(v4 + 4536) || *(a1 + 48) == 1)
  {
    [*(a1 + 32) addSubview:*(v4 + 608)];
    v5 = *(a1 + 40);
    v6 = *(v5 + 608);
    *(v5 + 608) = 0;
  }
}

- (void)_setVisualAltitude:(double)a3
{
  v4.receiver = self;
  v4.super_class = UIStatusBar;
  [(UIView *)&v4 _setVisualAltitude:a3];
  [(UIStatusBar *)self _updateBackgroundFrame];
}

- (void)_setVisualAltitudeBias:(CGSize)a3
{
  v4.receiver = self;
  v4.super_class = UIStatusBar;
  [(UIView *)&v4 _setVisualAltitudeBias:a3.width, a3.height];
  [(UIStatusBar *)self _updateBackgroundFrame];
}

- (CGRect)_backgroundFrameForAttributes:(id)a3
{
  if ([a3 shouldUseVisualAltitude])
  {
    [(UIView *)self _visualAltitudeSensitiveBoundsWithInfiniteEdges:11];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    [(UIView *)self setClipsToBounds:0];
  }

  else
  {
    [(UIView *)self bounds];
    v5 = v12;
    v7 = v13;
    v9 = v14;
    v11 = v15;
  }

  v16 = v5;
  v17 = v7;
  v18 = v9;
  v19 = v11;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (void)_updateBackgroundFrame
{
  [(UIStatusBar *)self _backgroundFrameForAttributes:self->_styleAttributes];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(UIView *)self->_backgroundView setFrame:?];
  newStyleBackgroundView = self->_newStyleBackgroundView;

  [(UIView *)newStyleBackgroundView setFrame:v4, v6, v8, v10];
}

- (id)_prepareToSetStyle:(id)a3 animation:(int)a4 forced:(BOOL)a5
{
  v45 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = [v8 foregroundStyle];
  if (a5)
  {
    v10 = 1;
  }

  else if (self->_showsForeground)
  {
    newStyleForegroundView = self->_newStyleForegroundView;
    if (!newStyleForegroundView)
    {
      newStyleForegroundView = self->_foregroundView;
    }

    v12 = [(UIStatusBarForegroundView *)newStyleForegroundView foregroundStyle];
    v10 = v12 != v9;
  }

  else
  {
    v10 = 0;
  }

  CategoryCachedImpl = __UILogGetCategoryCachedImpl("StatusBar", &_prepareToSetStyle_animation_forced____s_category);
  if (*CategoryCachedImpl)
  {
    v37 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      *&buf[4] = v10;
      _os_log_impl(&dword_188A29000, v37, OS_LOG_TYPE_ERROR, "Foreground view needs changing: %d", buf, 8u);
    }
  }

  if (a4 == 1 && self->_newStyleBackgroundView)
  {
    v14 = [(UIStatusBar *)self _prepareInterruptedAnimationCompositeViewIncludingForeground:v10];
  }

  else
  {
    v14 = 0;
  }

  [(UIView *)self->_newStyleBackgroundView removeFromSuperview];
  newStyleBackgroundView = self->_newStyleBackgroundView;
  self->_newStyleBackgroundView = 0;

  v16 = [v8 backgroundColorWithTintColor:self->_tintColor];
  lastUsedBackgroundColor = self->_lastUsedBackgroundColor;
  self->_lastUsedBackgroundColor = v16;

  [(UIStatusBar *)self _backgroundFrameForAttributes:v8];
  v22 = [[UIStatusBarBackgroundView alloc] initWithFrame:v8 style:self->_lastUsedBackgroundColor backgroundColor:v18, v19, v20, v21];
  v23 = self->_newStyleBackgroundView;
  self->_newStyleBackgroundView = v22;

  v24 = [(UIStatusBarBackgroundView *)self->_newStyleBackgroundView style];
  v25 = [v24 isTranslucent];

  if (v25)
  {
    [(UIView *)self->_newStyleBackgroundView setAlpha:1.0];
  }

  [(UIView *)self insertSubview:self->_newStyleBackgroundView atIndex:0];
  if (v10)
  {
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __51__UIStatusBar__prepareToSetStyle_animation_forced___block_invoke;
    v39[3] = &unk_1E70F6228;
    v39[4] = self;
    v40 = v9;
    v41 = v8;
    [UIView performWithoutAnimation:v39];
  }

  if ((a4 & 0xFFFFFFFE) == 2)
  {
    [(UIView *)self->_slidingStatusBar removeFromSuperview];
    slidingStatusBar = self->_slidingStatusBar;
    self->_slidingStatusBar = 0;

    [(UIView *)self setClipsToBounds:0];
    if (a4 == 2)
    {
      v27 = v8;
      v43 = 0u;
      v44 = 0u;
      *buf = 0u;
      [(UIStatusBar *)self _slideTransform];
    }

    else
    {
      v27 = self->_styleAttributes;
      v28 = *(MEMORY[0x1E695EFD0] + 16);
      *buf = *MEMORY[0x1E695EFD0];
      v43 = v28;
      v44 = *(MEMORY[0x1E695EFD0] + 32);
    }

    [(UIView *)self bounds];
    v30 = v29;
    [(UIStatusBarStyleAttributes *)v27 heightForOrientation:[(UIStatusBar_Base *)self orientation]];
    v32 = [(UIStatusBar_Base *)[UIStatusBar alloc] initWithFrame:0 showForegroundView:0.0, 0.0, v30, v31];
    v33 = self->_slidingStatusBar;
    self->_slidingStatusBar = v32;

    [(UIStatusBar_Base *)self->_slidingStatusBar requestStyle:[(UIStatusBarStyleAttributes *)v27 style] animated:0];
    v34 = self->_slidingStatusBar;
    v38[0] = *buf;
    v38[1] = v43;
    v38[2] = v44;
    [(UIView *)v34 setTransform:v38];
    [(UIView *)self insertSubview:self->_slidingStatusBar belowSubview:self->_foregroundView];
    if (a4 == 3)
    {
      [(UIStatusBar *)self _setFrameForStyle:v8];
      v35 = -[UIStatusBar _doubleHeightStatusStringForStyle:](self, "_doubleHeightStatusStringForStyle:", [v8 style]);
      [(UIStatusBar *)self _setDoubleHeightStatusString:v35];

      [(UIStatusBar *)self _adjustDoubleHeightTextVisibility];
      [(UIStatusBar *)self _swapToNewBackgroundView];
    }

    else
    {
      [(UIView *)self->_newStyleBackgroundView setAlpha:0.0];
      [(UIView *)self->_newStyleForegroundView setAlpha:0.0];
    }
  }

  else if (a4 == 1)
  {
    if (([v8 shouldUseVisualAltitude] & 1) == 0)
    {
      [(UIView *)self setClipsToBounds:1];
    }

    if ([(UIStatusBarStyleAttributes *)self->_styleAttributes isTranslucent]|| v14)
    {
      [(UIView *)self insertSubview:self->_newStyleBackgroundView aboveSubview:self->_backgroundView];
      [(UIView *)self insertSubview:self->_newStyleForegroundView aboveSubview:self->_newStyleBackgroundView];
      [(UIView *)self->_newStyleBackgroundView setAlpha:0.0];
      [(UIView *)self->_newStyleForegroundView setAlpha:0.0];
    }
  }

  return v14;
}

uint64_t __51__UIStatusBar__prepareToSetStyle_animation_forced___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 4536) removeFromSuperview];
  v2 = [UIStatusBarForegroundView alloc];
  [*(a1 + 32) bounds];
  v7 = -[UIStatusBarForegroundView initWithFrame:foregroundStyle:usesVerticalLayout:](v2, "initWithFrame:foregroundStyle:usesVerticalLayout:", *(a1 + 40), [*(a1 + 48) usesVerticalLayout], v3, v4, v5, v6);
  v8 = *(a1 + 32);
  v9 = *(v8 + 4536);
  *(v8 + 4536) = v7;

  [*(a1 + 32) _updatePersistentAnimationsEnabledForForegroundView:*(*(a1 + 32) + 4536)];
  [*(*(a1 + 32) + 4536) setIdiom:{objc_msgSend(*(a1 + 48), "idiom")}];
  v10 = *(*(a1 + 32) + 4536);
  [*(a1 + 48) foregroundAlpha];
  [v10 setAlpha:?];
  v11 = *(a1 + 32);
  v12 = v11[567];
  v13 = [v11 _currentComposedDataForStyle:*(a1 + 48)];
  [v12 setStatusBarData:v13 actions:0 animated:0];

  v14 = *(a1 + 32);
  v15 = v14[567];
  v16 = v14[566];

  return [v14 insertSubview:v15 aboveSubview:v16];
}

- (void)_setStyle:(id)a3 animation:(int)a4
{
  v6 = a3;
  [v6 foregroundAlpha];
  v8 = v7;
  if (a4 == 3)
  {
    slidingStatusBar = self->_slidingStatusBar;
    [(UIStatusBar *)self _slideTransform];
    v9 = slidingStatusBar;
  }

  else
  {
    if (a4 != 2)
    {
      [(UIStatusBar *)self _setStyle:v6];
      goto LABEL_7;
    }

    v9 = self->_slidingStatusBar;
    v10 = *(MEMORY[0x1E695EFD0] + 16);
    v12 = *MEMORY[0x1E695EFD0];
    v13 = v10;
    v14 = *(MEMORY[0x1E695EFD0] + 32);
  }

  [(UIView *)v9 setTransform:&v12, v12, v13, v14];
  [(UIStatusBar *)self _crossfadeToNewForegroundViewWithAlpha:v8];
LABEL_7:
}

- (void)_finishedSettingStyleWithOldHeight:(double)a3 newHeight:(double)a4 animation:(int)a5
{
  v5 = *&a5;
  [(UIView *)self setClipsToBounds:0];
  if (a3 != a4)
  {
    v9 = [(UIStatusBar_Base *)self styleDelegate];
    [v9 statusBar:self didAnimateFromHeight:v5 toHeight:a3 animation:a4];
  }

  if (v5 != 3)
  {
    if (v5 != 2)
    {
      goto LABEL_7;
    }

    [(UIStatusBar *)self _setStyle:self->_styleAttributes];
  }

  [(UIView *)self->_slidingStatusBar removeFromSuperview];
  slidingStatusBar = self->_slidingStatusBar;
  self->_slidingStatusBar = 0;

LABEL_7:
  [(UIStatusBar *)self _swapToNewBackgroundView];

  [(UIStatusBar *)self _swapToNewForegroundView];
}

- (void)_setFrameForStyle:(id)a3
{
  v4 = a3;
  [(UIView *)self frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [v4 heightForOrientation:{-[UIStatusBar_Base orientation](self, "orientation")}];
  v14 = v13;
  v15 = [v4 usesVerticalLayout];

  if (v15)
  {
    v16 = v14;
  }

  else
  {
    v16 = v10;
  }

  if (v15)
  {
    v17 = v12;
  }

  else
  {
    v17 = v14;
  }

  [(UIView *)self setFrame:v6, v8, v16, v17];
}

- (void)_setStyle:(id)a3
{
  v4 = a3;
  [v4 foregroundAlpha];
  [(UIStatusBar *)self _crossfadeToNewForegroundViewWithAlpha:?];
  [(UIStatusBar *)self _crossfadeToNewBackgroundView];
  -[UIStatusBarBackgroundView setGlowAnimationEnabled:](self->_backgroundView, "setGlowAnimationEnabled:", +[UIStatusBarServer getGlowAnimationStateForStyle:](UIStatusBarServer, "getGlowAnimationStateForStyle:", [v4 style]));
  -[UIStatusBarBackgroundView setGlowAnimationEnabled:](self->_newStyleBackgroundView, "setGlowAnimationEnabled:", +[UIStatusBarServer getGlowAnimationStateForStyle:](UIStatusBarServer, "getGlowAnimationStateForStyle:", [v4 style]));
  [(UIStatusBar *)self _setFrameForStyle:v4];

  [(UIStatusBar *)self _adjustDoubleHeightTextVisibility];
}

- (void)_crossfadeToNewBackgroundView
{
  newStyleBackgroundView = self->_newStyleBackgroundView;
  if (newStyleBackgroundView)
  {
    [(UIView *)newStyleBackgroundView setAlpha:1.0];
    v4 = [(UIStatusBarBackgroundView *)self->_backgroundView style];
    if ([v4 isTranslucent])
    {
      v5 = [(UIStatusBarBackgroundView *)self->_newStyleBackgroundView style];
      v6 = [v5 isTranslucent];

      if (!v6)
      {
        return;
      }
    }

    else
    {
    }

    backgroundView = self->_backgroundView;

    [(UIView *)backgroundView setAlpha:0.0];
  }
}

- (void)_crossfadeToNewForegroundViewWithAlpha:(double)a3
{
  newStyleForegroundView = self->_newStyleForegroundView;
  if (newStyleForegroundView)
  {
    [(UIView *)newStyleForegroundView setAlpha:a3];
    a3 = 0.0;
  }

  foregroundView = self->_foregroundView;

  [(UIView *)foregroundView setAlpha:a3];
}

- (void)_swapToNewBackgroundView
{
  if (self->_newStyleBackgroundView)
  {
    [(UIView *)self->_backgroundView removeFromSuperview];
    objc_storeStrong(&self->_backgroundView, self->_newStyleBackgroundView);
    newStyleBackgroundView = self->_newStyleBackgroundView;
    self->_newStyleBackgroundView = 0;
  }
}

- (void)_swapToNewForegroundView
{
  if (self->_newStyleForegroundView)
  {
    [(UIView *)self->_foregroundView removeFromSuperview];
    objc_storeStrong(&self->_foregroundView, self->_newStyleForegroundView);
    newStyleForegroundView = self->_newStyleForegroundView;
    self->_newStyleForegroundView = 0;
  }
}

- (void)setTintColor:(id)a3
{
  v5 = a3;
  tintColor = self->_tintColor;
  if (tintColor != v5)
  {
    v8 = v5;
    v7 = [(UIColor *)tintColor isEqual:v5];
    v5 = v8;
    if (!v7)
    {
      objc_storeStrong(&self->_tintColor, a3);
      v5 = v8;
    }
  }
}

- (void)setTintColor:(id)a3 withDuration:(double)a4
{
  v7 = a3;
  tintColor = self->_tintColor;
  if (tintColor != v7)
  {
    v17 = v7;
    v9 = [(UIColor *)tintColor isEqual:v7];
    v7 = v17;
    if (!v9)
    {
      objc_storeStrong(&self->_tintColor, a3);
      nextTintTransition = self->_nextTintTransition;
      self->_nextTintTransition = 0;

      v11 = [(UIStatusBar_Base *)self _requestStyle];
      v7 = v17;
      if (!v11)
      {
        v12 = [UIStatusBarStyleAnimationParameters alloc];
        if (a4 == 0.0)
        {
          v15 = [(UIStatusBarAnimationParameters *)v12 initWithEmptyParameters];
          v16 = self->_nextTintTransition;
          self->_nextTintTransition = v15;
        }

        else
        {
          v13 = [(UIStatusBarStyleAnimationParameters *)v12 initWithDefaultParameters];
          v14 = self->_nextTintTransition;
          self->_nextTintTransition = v13;

          if (a4 > 0.0)
          {
            [(UIStatusBarAnimationParameters *)self->_nextTintTransition setDuration:a4];
          }
        }

        [(UIView *)self setNeedsLayout];
        v7 = v17;
      }
    }
  }
}

- (void)layoutSubviews
{
  nextTintTransition = self->_nextTintTransition;
  if (nextTintTransition)
  {
    self->_nextTintTransition = 0;
    v4 = nextTintTransition;

    [(UIStatusBar_Base *)self requestStyle:[(UIStatusBar_Base *)self _requestStyle] animationParameters:v4];
  }
}

- (void)setOrientation:(int64_t)a3
{
  v18.receiver = self;
  v18.super_class = UIStatusBar;
  [(UIStatusBar_Base *)&v18 setOrientation:?];
  [(UIStatusBar *)self _adjustDoubleHeightTextVisibility];
  [(UIStatusBarStyleAttributes *)self->_styleAttributes heightForOrientation:a3];
  v6 = v5;
  [(UIView *)self frame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = [(UIStatusBarStyleAttributes *)self->_styleAttributes usesVerticalLayout];
  if (v15)
  {
    v16 = v6;
  }

  else
  {
    v16 = v12;
  }

  if (v15)
  {
    v17 = v14;
  }

  else
  {
    v17 = v6;
  }

  [(UIView *)self setFrame:v8, v10, v16, v17];
  [(UIStatusBarForegroundView *)self->_foregroundView reflowItemViews:0];
}

- (void)setSuppressesHiddenSideEffects:(BOOL)a3
{
  v3 = a3;
  if ([(UIStatusBar_Base *)self suppressesHiddenSideEffects]!= a3)
  {
    v5.receiver = self;
    v5.super_class = UIStatusBar;
    [(UIStatusBar_Base *)&v5 setSuppressesHiddenSideEffects:v3];
    if ([(UIStatusBar_Base *)self suppressesHiddenSideEffects])
    {
      if ([(UIStatusBar_Base *)self isHidden])
      {
        [(UIStatusBar_Base *)self requestStyle:[(UIStatusBar_Base *)self _requestStyle] animationParameters:0];
      }
    }
  }
}

+ (BOOL)_isLightContentStyle:(int64_t)a3
{
  result = 1;
  if ((a3 - 51) > 0x37 || ((1 << (a3 - 51)) & 0x90000000000001) == 0)
  {
    return (a3 - 301) < 3 || (a3 - 1) < 2;
  }

  return result;
}

+ (id)_newStyleAttributesForRequest:(id)a3
{
  v4 = a3;
  v5 = [v4 style];
  v6 = v5;
  if (v5 > 305)
  {
    if (v5 <= 1003)
    {
      if (v5 <= 1000)
      {
        if ((v5 - 400) <= 5)
        {
          if (((1 << (v5 + 112)) & 0x2D) != 0)
          {
            v8 = [UIStatusBarExternalStyleAttributes alloc];
            +[UIColor blackColor];
          }

          else
          {
            v8 = [UIStatusBarExternalStyleAttributes alloc];
            [UIColor colorWithWhite:0.0 alpha:0.9];
          }
          v9 = ;
          goto LABEL_71;
        }

        if (v5 == 306)
        {
          goto LABEL_58;
        }

        goto LABEL_74;
      }

      if (v5 == 1001)
      {
        v13 = UIStatusBarLockScreenStyleAttributes;
        goto LABEL_69;
      }

      if (v5 != 1002)
      {
        v12 = UIStatusBarLockScreenStyleAttributes;
        goto LABEL_67;
      }

LABEL_41:
      v7 = UIStatusBarLockScreenStyleAttributes;
LABEL_42:
      v8 = [v7 alloc];
      v9 = +[UIColor systemBlueColor];
      goto LABEL_71;
    }

    if (v5 <= 1012)
    {
      if (v5 <= 1005)
      {
        if (v5 != 1004)
        {
          goto LABEL_41;
        }

        goto LABEL_50;
      }

      if (v5 == 1006)
      {
        goto LABEL_50;
      }

      if (v5 != 1012)
      {
        goto LABEL_74;
      }
    }

    else
    {
      if (v5 > 1014)
      {
        if (v5 == 1015)
        {
          goto LABEL_41;
        }

        if (v5 != 1016)
        {
          if (v5 != 1022)
          {
            goto LABEL_74;
          }

          goto LABEL_45;
        }

LABEL_50:
        v10 = UIStatusBarLockScreenStyleAttributes;
        goto LABEL_64;
      }

      if (v5 != 1013)
      {
LABEL_45:
        v14 = UIStatusBarLockScreenStyleAttributes;
LABEL_56:
        v8 = [v14 alloc];
        v9 = +[UIColor grayColor];
        goto LABEL_71;
      }
    }

    v11 = UIStatusBarActionableLockScreenStyleAttributes;
LABEL_49:
    v8 = [v11 alloc];
    v9 = +[UIColor systemGreenColor];
    goto LABEL_71;
  }

  if (v5 > 199)
  {
    switch(v5)
    {
      case 200:
      case 208:
      case 222:
      case 223:
        v11 = UIStatusBarNewUIDoubleHeightStyleAttributes;
        goto LABEL_49;
      case 201:
      case 202:
      case 203:
      case 204:
      case 205:
      case 206:
      case 211:
        v10 = UIStatusBarNewUIDoubleHeightStyleAttributes;
        goto LABEL_64;
      case 207:
      case 214:
      case 224:
        v13 = UIStatusBarNewUIDoubleHeightStyleAttributes;
        goto LABEL_69;
      case 209:
      case 210:
      case 212:
      case 215:
      case 216:
      case 217:
      case 219:
      case 226:
      case 227:
        v7 = UIStatusBarNewUIDoubleHeightStyleAttributes;
        goto LABEL_42;
      case 213:
        v12 = UIStatusBarNewUIDoubleHeightStyleAttributes;
        goto LABEL_67;
      case 218:
      case 225:
        v14 = UIStatusBarNewUIDoubleHeightStyleAttributes;
        goto LABEL_56;
      case 220:
      case 221:
        v8 = [UIStatusBarNewUIDoubleHeightStyleAttributes alloc];
        v9 = +[UIColor systemGrayColor];
        goto LABEL_71;
      default:
        goto LABEL_74;
    }
  }

  if (v5 > 108)
  {
    if (v5 <= 112)
    {
      if (v5 == 109)
      {
        v15 = [UIStatusBarLockScreenStyleAttributes alloc];
        v16 = +[UIColor grayColor];
        goto LABEL_60;
      }

      if (v5 == 111)
      {
        v10 = UIStatusBarNewUIActionableStyleAttributes;
        goto LABEL_64;
      }

      if (v5 != 112)
      {
        goto LABEL_74;
      }

      goto LABEL_40;
    }

    if ((v5 - 113) < 2)
    {
      v13 = UIStatusBarNewUIActionableStyleAttributes;
      goto LABEL_69;
    }

LABEL_74:
    v25 = [UIStatusBarNewUIStyleAttributes alloc];
    if ([a1 _isLightContentStyle:v6])
    {
      +[UIColor whiteColor];
    }

    else
    {
      +[UIColor blackColor];
    }
    v17 = ;
    v18 = v25;
    goto LABEL_78;
  }

  if (v5 > 103)
  {
    if (v5 != 104)
    {
      if (v5 != 105)
      {
        if (v5 != 108)
        {
          goto LABEL_74;
        }

LABEL_58:
        v15 = [UIStatusBarLockScreenStyleAttributes alloc];
        v16 = +[UIColor whiteColor];
LABEL_60:
        v17 = v16;
        v18 = v15;
LABEL_78:
        v19 = [(UIStatusBarNewUIStyleAttributes *)v18 initWithRequest:v4 backgroundColor:0 foregroundColor:v17];
        goto LABEL_72;
      }

      v12 = UIStatusBarNewUIStyleAttributes;
LABEL_67:
      v8 = [v12 alloc];
      v20 = 0.28627451;
      v21 = 0.0901960784;
      v22 = 0.439215686;
LABEL_70:
      v9 = [UIColor colorWithRed:v20 green:v21 blue:v22 alpha:1.0];
      goto LABEL_71;
    }

LABEL_40:
    v13 = UIStatusBarNewUIStyleAttributes;
LABEL_69:
    v8 = [v13 alloc];
    v20 = 0.141176471;
    v21 = 0.517647059;
    v22 = 0.909803922;
    goto LABEL_70;
  }

  if (v5 != -1)
  {
    if (v5 != 101)
    {
      if (v5 != 102)
      {
        goto LABEL_74;
      }

      goto LABEL_40;
    }

    v10 = UIStatusBarNewUIStyleAttributes;
LABEL_64:
    v8 = [v10 alloc];
    v9 = +[UIColor systemRedColor];
LABEL_71:
    v17 = v9;
    v23 = +[UIColor whiteColor];
    v19 = [(UIStatusBarNewUIStyleAttributes *)v8 initWithRequest:v4 backgroundColor:v17 foregroundColor:v23];

LABEL_72:
    goto LABEL_73;
  }

  v19 = 0;
LABEL_73:

  return v19;
}

+ (id)_styleAttributesForRequest:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = _styleAttributesForRequest__styles;
    if (!_styleAttributesForRequest__styles)
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v7 = _styleAttributesForRequest__styles;
      _styleAttributesForRequest__styles = v6;

      v5 = _styleAttributesForRequest__styles;
    }

    v8 = [v5 objectForKeyedSubscript:v4];
    if (!v8)
    {
      v8 = [a1 _newStyleAttributesForRequest:v4];
      if (v8)
      {
        [_styleAttributesForRequest__styles setObject:v8 forKeyedSubscript:v4];
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)_styleAttributesForStatusBarStyle:(int64_t)a3
{
  v4 = [[UIStatusBarStyleRequest alloc] initWithStyle:a3 legibilityStyle:0 foregroundColor:0 overrideHeight:0];
  v5 = [a1 _styleAttributesForRequest:v4];

  return v5;
}

- (id)_styleAttributesForRequest:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() _styleAttributesForRequest:v3];

  return v4;
}

- (BOOL)_touchShouldProduceReturnEvent
{
  if (![(UIStatusBarStyleAttributes *)self->_styleAttributes shouldProduceReturnEvent])
  {
    return 0;
  }

  v3 = +[UIDevice currentDevice];
  v4 = [v3 userInterfaceIdiom] == 1 || (-[UIStatusBar_Base orientation](self, "orientation") - 1) < 2;

  return v4;
}

- (BOOL)_shouldSeekHigherPriorityTouchTarget
{
  v5.receiver = self;
  v5.super_class = UIStatusBar;
  v3 = [(UIStatusBar_Base *)&v5 _shouldSeekHigherPriorityTouchTarget];
  if (v3)
  {
    LOBYTE(v3) = ![(UIStatusBar *)self _touchShouldProduceReturnEvent];
  }

  return v3;
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v22;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v22 != v11)
      {
        objc_enumerationMutation(v8);
      }

      if ([*(*(&v21 + 1) + 8 * v12) type] != 1)
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v10)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v13 = [(UIStatusBarStyleAttributes *)self->_styleAttributes tapButtonType];
    if (v13 == -1)
    {
      if (![(UIStatusBar *)self _touchShouldProduceReturnEvent])
      {
        goto LABEL_20;
      }

      if ([UIApp handleDoubleHeightStatusBarTapWithStyleOverride:{-[UIStatusBar_Base activeStyleOverride](self, "activeStyleOverride")}])
      {
        goto LABEL_19;
      }

      v15 = [[UIHandleStatusBarTapAction alloc] initWithStatusBarStyle:[(UIStatusBar *)self currentStyle] andStatusBarStyleOverride:[(UIStatusBar_Base *)self activeStyleOverride]];
      v16 = [(UIView *)self window];
      v17 = [(UIWindow *)v16 _fbsScene];
      v18 = [MEMORY[0x1E695DFD8] setWithObject:v15];
      [v17 sendActions:v18];
    }

    else
    {
      v14 = v13;
      v15 = [(UIStatusBar_Base *)self styleDelegate];
      if (objc_opt_respondsToSelector())
      {
        [(UIHandleStatusBarTapAction *)v15 statusBar:self didTriggerButtonType:v14 withAction:0];
      }

      if (objc_opt_respondsToSelector())
      {
        [(UIHandleStatusBarTapAction *)v15 statusBar:self didTriggerButtonType:v14 withAction:0 context:0];
      }
    }

LABEL_19:
    v19 = [v8 objectsPassingTest:&__block_literal_global_124_3];

    v8 = v19;
    goto LABEL_20;
  }

LABEL_9:

LABEL_20:
  if ([v8 count])
  {
    v20.receiver = self;
    v20.super_class = UIStatusBar;
    [(_UIScrollsToTopInitiatorView *)&v20 touchesEnded:v8 withEvent:v7];
  }
}

- (void)setEnabledCenterItems:(id)a3 duration:(double)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:&unk_1EFE33160];
  v8 = v7;
  if (v7 && (v9 = [v7 BOOLValue], self->_currentRawData.itemIsEnabled[0] != v9))
  {
    self->_currentRawData.itemIsEnabled[0] = v9;
    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

  v11 = [v6 objectForKeyedSubscript:&unk_1EFE33178];
  v12 = v11;
  if (v11 && (v13 = [v11 BOOLValue], self->_currentRawData.itemIsEnabled[39] != v13))
  {
    self->_currentRawData.itemIsEnabled[39] = v13;
  }

  else if (!v10)
  {
    goto LABEL_17;
  }

  v14 = [(UIStatusBar *)self _currentComposedData];
  if ([(UIStatusBarForegroundView *)self->_newStyleForegroundView ignoringData]|| [(UIStatusBarForegroundView *)self->_foregroundView ignoringData])
  {
    CategoryCachedImpl = __UILogGetCategoryCachedImpl("StatusBar", &qword_1ED499D08);
    if (*CategoryCachedImpl)
    {
      v18 = *(CategoryCachedImpl + 8);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v20 = 138412546;
        v21 = v6;
        v22 = 2048;
        v23 = a4;
        _os_log_impl(&dword_188A29000, v18, OS_LOG_TYPE_ERROR, "Setting center items enabled: %@, duration: %f. Pending the update instead.", &v20, 0x16u);
      }
    }

    [(UIStatusBarForegroundView *)self->_newStyleForegroundView setStatusBarData:v14 actions:64 animated:0];
    [(UIStatusBarForegroundView *)self->_foregroundView setStatusBarData:v14 actions:64 animated:0];
  }

  else
  {
    v16 = +[UIView areAnimationsEnabled];
    [UIView setAnimationsEnabled:1];
    v17 = __UILogGetCategoryCachedImpl("StatusBar", &qword_1ED499D10);
    if (*v17)
    {
      v19 = *(v17 + 8);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = 138412546;
        v21 = v6;
        v22 = 2048;
        v23 = a4;
        _os_log_impl(&dword_188A29000, v19, OS_LOG_TYPE_ERROR, "Crossfade setting center items enabled: %@, duration: %f", &v20, 0x16u);
      }
    }

    [(UIStatusBarForegroundView *)self->_newStyleForegroundView reflowItemViewsCrossfadingCenter:v14 duration:a4];
    [(UIStatusBarForegroundView *)self->_foregroundView reflowItemViewsCrossfadingCenter:v14 duration:a4];
    [UIView setAnimationsEnabled:v16];
  }

LABEL_17:
}

- (void)animateUnlock
{
  [(UIStatusBarForegroundView *)self->_foregroundView animateUnlock];
  newStyleForegroundView = self->_newStyleForegroundView;

  [(UIStatusBarForegroundView *)newStyleForegroundView animateUnlock];
}

- (void)jiggleLockIcon
{
  [(UIStatusBarForegroundView *)self->_foregroundView jiggleLockIcon];
  newStyleForegroundView = self->_newStyleForegroundView;

  [(UIStatusBarForegroundView *)newStyleForegroundView jiggleLockIcon];
}

- (void)_itemViewPerformButtonAction:(id)a3
{
  v14 = a3;
  v4 = [v14 object];
  v5 = [(UIStatusBar_Base *)self styleDelegate];
  if ([v4 isDescendantOfView:self])
  {
    v6 = [v14 userInfo];
    v7 = [v6 objectForKeyedSubscript:@"buttonType"];
    v8 = [v7 integerValue];

    v9 = [v14 userInfo];
    v10 = [v9 objectForKeyedSubscript:@"buttonAction"];
    v11 = [v10 integerValue];

    if (objc_opt_respondsToSelector())
    {
      [v5 statusBar:self didTriggerButtonType:v8 withAction:v11];
    }

    else if (objc_opt_respondsToSelector())
    {
      v12 = [v14 userInfo];
      v13 = [v12 objectForKeyedSubscript:@"buttonContext"];

      [v5 statusBar:self didTriggerButtonType:v8 withAction:v11 context:v13];
    }
  }
}

- (void)setRegistered:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = UIStatusBar;
  [(UIStatusBar_Base *)&v4 setRegistered:a3];
  [(UIStatusBar *)self _updatePersistentAnimationsEnabledForForegroundView:self->_foregroundView];
  [(UIStatusBar *)self _updatePersistentAnimationsEnabledForForegroundView:self->_newStyleForegroundView];
}

- (void)_updatePersistentAnimationsEnabledForForegroundView:(id)a3
{
  v5 = a3;
  if ([(UIStatusBar_Base *)self registered])
  {
    v4 = [(UIStatusBar_Base *)self persistentAnimationsEnabled];
  }

  else
  {
    v4 = 0;
  }

  [v5 setPersistentAnimationsEnabled:v4];
}

- (void)setPersistentAnimationsEnabled:(BOOL)a3
{
  v3 = a3;
  if ([(UIStatusBar_Base *)self persistentAnimationsEnabled]!= a3)
  {
    v5.receiver = self;
    v5.super_class = UIStatusBar;
    [(UIStatusBar_Base *)&v5 setPersistentAnimationsEnabled:v3];
    [(UIStatusBar *)self _updatePersistentAnimationsEnabledForForegroundView:self->_foregroundView];
    [(UIStatusBar *)self _updatePersistentAnimationsEnabledForForegroundView:self->_newStyleForegroundView];
  }
}

- (void)setForegroundColor:(id)a3 animationParameters:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(UIStatusBar_Base *)self foregroundColor];
  v9 = [v8 isEqual:v6];

  if ((v9 & 1) == 0)
  {
    v12.receiver = self;
    v12.super_class = UIStatusBar;
    [(UIStatusBar_Base *)&v12 setForegroundColor:v6 animationParameters:v7];
    v10 = [(UIStatusBar *)self styleRequest];
    v11 = [(UIStatusBar *)self _styleAttributesForRequest:v10];

    [(UIStatusBar *)self _updateUIWithStyleAttributes:v11 animationParameters:v7];
  }
}

- (void)setForegroundAlpha:(double)a3 animationParameters:(id)a4
{
  v6 = a4;
  v7 = [(UIStatusBar *)self styleRequest];
  v8 = [(UIStatusBar *)self _styleAttributesForRequest:v7];
  v9 = [v8 copy];

  [v9 setForegroundAlpha:a3];
  [(UIStatusBar *)self _updateUIWithStyleAttributes:v9 animationParameters:v6];
}

- (void)setLegibilityStyle:(int64_t)a3 animationParameters:(id)a4
{
  v6 = a4;
  if ([(UIStatusBar_Base *)self legibilityStyle]!= a3)
  {
    v9.receiver = self;
    v9.super_class = UIStatusBar;
    [(UIStatusBar_Base *)&v9 setLegibilityStyle:a3 animationParameters:v6];
    v7 = [(UIStatusBar *)self styleRequest];
    v8 = [(UIStatusBar *)self _styleAttributesForRequest:v7];

    [(UIStatusBar *)self _updateUIWithStyleAttributes:v8 animationParameters:v6];
  }
}

- (id)currentStyleRequestForStyle:(int64_t)a3
{
  if (a3 == 110)
  {
    v5 = 0.4;
  }

  else
  {
    v5 = 1.0;
  }

  v6 = [UIStatusBarStyleRequest alloc];
  v7 = [(UIStatusBar_Base *)self legibilityStyle];
  v8 = [(UIStatusBar_Base *)self foregroundColor];
  v9 = [(UIStatusBarStyleRequest *)v6 initWithStyle:a3 legibilityStyle:v7 foregroundColor:v8 foregroundAlpha:self->_overrideHeight overrideHeight:v5];

  return v9;
}

- (id)styleRequest
{
  v3 = [(UIStatusBar *)self currentStyle];

  return [(UIStatusBar *)self currentStyleRequestForStyle:v3];
}

- (void)setStyleRequest:(id)a3 animationParameters:(id)a4
{
  v12.receiver = self;
  v12.super_class = UIStatusBar;
  v6 = a4;
  [(UIStatusBar_Base *)&v12 setStyleRequest:a3 animationParameters:v6];
  if ([(UIStatusBar_Base *)self _requestStyle]== 2000)
  {
    v7 = 0;
LABEL_5:
    [(UIStatusBar_Base *)self _setRequestedStyle:v7];
    goto LABEL_6;
  }

  if ([(UIStatusBar_Base *)self _requestStyle]== 2001)
  {
    v7 = 1;
    goto LABEL_5;
  }

LABEL_6:
  v11 = 0;
  [(UIStatusBar_Base *)self _getStyle:&v11 andActiveOverride:&v10 forRequestedStyle:[(UIStatusBar_Base *)self _requestStyle]];
  [(UIStatusBar_Base *)self setActiveStyleOverride:v10];
  v8 = [(UIStatusBar *)self currentStyleRequestForStyle:v11];
  v9 = [(UIStatusBar *)self _styleAttributesForRequest:v8];
  [(UIStatusBar *)self _updateUIWithStyleAttributes:v9 animationParameters:v6];
}

- (id)_currentStyleAttributes
{
  v3 = self->_styleAttributes;
  if (!v3)
  {
    v4 = [(UIStatusBar *)self currentStyleRequestForStyle:[(UIStatusBar_Base *)self styleForRequestedStyle:[(UIStatusBar_Base *)self _requestStyle]]];
    v3 = [(UIStatusBar *)self _styleAttributesForRequest:v4];
  }

  return v3;
}

- (void)setAction:(id)a3 forPartWithIdentifier:(id)a4
{
  v10 = a3;
  v6 = a4;
  actions = self->_actions;
  if (!actions)
  {
    v8 = [MEMORY[0x1E695DF90] dictionary];
    v9 = self->_actions;
    self->_actions = v8;

    actions = self->_actions;
  }

  [(NSMutableDictionary *)actions setObject:v10 forKeyedSubscript:v6];
}

- (CGRect)frameForPartWithIdentifier:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"batteryPartIdentifier"])
  {
    v5 = 12;
LABEL_5:
    [(UIStatusBarForegroundView *)self->_foregroundView frameForItemOfType:v5];
LABEL_6:
    v10 = v6;
    v11 = v7;
    v12 = v8;
    v13 = v9;
    goto LABEL_7;
  }

  if ([v4 isEqualToString:@"clockPartIdentifier"])
  {
    v5 = 0;
    goto LABEL_5;
  }

  if ([v4 isEqualToString:@"fittingLeadingPartIdentifier"])
  {
    v22 = 0;
LABEL_14:
    [(UIStatusBarForegroundView *)self->_foregroundView frameForAllItemsInRegion:v22];
    goto LABEL_6;
  }

  if ([v4 isEqualToString:@"fittingTrailingPartIdentifier"])
  {
    v22 = 1;
    goto LABEL_14;
  }

  v10 = *MEMORY[0x1E695F058];
  v11 = *(MEMORY[0x1E695F058] + 8);
  v12 = *(MEMORY[0x1E695F058] + 16);
  v13 = *(MEMORY[0x1E695F058] + 24);
LABEL_7:
  v23.origin.x = v10;
  v23.origin.y = v11;
  v23.size.width = v12;
  v23.size.height = v13;
  if (!CGRectIsEmpty(v23))
  {
    [(UIView *)self convertRect:self->_foregroundView fromView:v10, v11, v12, v13];
    v10 = v14;
    v11 = v15;
    v12 = v16;
    v13 = v17;
  }

  v18 = v10;
  v19 = v11;
  v20 = v12;
  v21 = v13;
  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

- (void)setEnabledPartIdentifiers:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (v4)
  {
    v5 = [v4 count] == 0;
  }

  else
  {
    v5 = 0;
  }

  v6 = [(UIView *)self layer];
  [v6 setHidden:v5];
}

- (id)enabledPartIdentifiers
{
  v2 = [(UIView *)self layer];
  v3 = [v2 isHidden];

  if (v3)
  {
    return MEMORY[0x1E695E0F0];
  }

  else
  {
    return 0;
  }
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = UIStatusBar;
  if ([(UIView *)&v11 pointInside:v7 withEvent:x, y])
  {
    v8 = 1;
  }

  else
  {
    foregroundView = self->_foregroundView;
    [(UIView *)foregroundView convertPoint:self fromView:x, y];
    v8 = [(UIStatusBarForegroundView *)foregroundView pointInside:v7 withEvent:?];
  }

  return v8;
}

- (void)_didChangeFromIdiom:(int64_t)a3 onScreen:(id)a4 traverseHierarchy:(BOOL)a5
{
  v8.receiver = self;
  v8.super_class = UIStatusBar;
  [(UIView *)&v8 _didChangeFromIdiom:a3 onScreen:a4 traverseHierarchy:a5];
  foregroundView = self->_foregroundView;
  v7 = [(UIStatusBar *)self _currentComposedData];
  [(UIStatusBarForegroundView *)foregroundView setStatusBarData:v7 actions:0 animated:0];
}

- (void)_updateShouldRasterize
{
  if ([(NSMutableSet *)self->_disableRasterizationReasons count])
  {
    v3 = 0;
  }

  else
  {
    v3 = !self->_disablesRasterization;
  }

  v4 = [(UIView *)self layer];
  v5 = [v4 shouldRasterize];
  v6 = v3;

  if (v6 != v5)
  {
    v7 = [(UIView *)self layer];
    [v7 setShouldRasterize:v6];
  }
}

- (void)_beginDisablingRasterizationForReason:(id)a3
{
  v4 = a3;
  if (([(NSMutableSet *)self->_disableRasterizationReasons containsObject:?]& 1) == 0)
  {
    [(NSMutableSet *)self->_disableRasterizationReasons addObject:v4];
    [(UIStatusBar *)self _updateShouldRasterize];
  }
}

- (void)_endDisablingRasterizationForReason:(id)a3
{
  v4 = a3;
  if ([(NSMutableSet *)self->_disableRasterizationReasons containsObject:?])
  {
    [(NSMutableSet *)self->_disableRasterizationReasons removeObject:v4];
    [(UIStatusBar *)self _updateShouldRasterize];
  }
}

- (void)_itemViewShouldBeginDisablingRasterization:(id)a3
{
  v7 = [a3 object];
  if ([v7 isDescendantOfView:self])
  {
    v4 = MEMORY[0x1E696AD98];
    v5 = [v7 item];
    v6 = [v4 numberWithUnsignedInt:{objc_msgSend(v5, "type")}];

    [(UIStatusBar *)self _beginDisablingRasterizationForReason:v6];
  }
}

- (void)_itemViewShouldEndDisablingRasterization:(id)a3
{
  v7 = [a3 object];
  if ([v7 isDescendantOfView:self])
  {
    v4 = MEMORY[0x1E696AD98];
    v5 = [v7 item];
    v6 = [v4 numberWithUnsignedInt:{objc_msgSend(v5, "type")}];

    [(UIStatusBar *)self _endDisablingRasterizationForReason:v6];
  }
}

- (void)statusBarServer:(id)a3 didReceiveStatusBarData:(id *)a4 withActions:(int)a5
{
  v5 = *&a5;
  v8 = [(UIStatusBar_Base *)self inProcessStateProvider];

  if (v8)
  {
    return;
  }

  if ((_shouldAutomaticallyDetectCenterItemAnimation & 1) == 0)
  {
    if (a4->var0[0] == self->_currentRawData.itemIsEnabled[0])
    {
      v10 = &a4->var0[39];
      if (a4->var0[39] == self->_currentRawData.itemIsEnabled[39])
      {
        v19 = 0;
        v9 = 0;
        goto LABEL_8;
      }
    }

    else
    {
      v19 = [MEMORY[0x1E695DF90] dictionary];
      v12 = [MEMORY[0x1E696AD98] numberWithBool:a4->var0[0]];
      [v19 setObject:v12 forKeyedSubscript:&unk_1EFE33160];

      v10 = &a4->var0[39];
      v13 = a4->var0[39];
      if (v13 == self->_currentRawData.itemIsEnabled[39])
      {
        v9 = 0;
        v11 = 0;
        goto LABEL_15;
      }

      if (v19)
      {
LABEL_14:
        v14 = [MEMORY[0x1E696AD98] numberWithBool:v13];
        [v19 setObject:v14 forKeyedSubscript:&unk_1EFE33178];

        v11 = 0;
        v9 = !*v10;
        goto LABEL_15;
      }
    }

    v19 = [MEMORY[0x1E695DF90] dictionary];
    LOBYTE(v13) = *v10;
    goto LABEL_14;
  }

  if (a4)
  {
    v19 = 0;
    v9 = 0;
LABEL_8:
    v11 = 1;
LABEL_15:
    memcpy(&self->_currentRawData, a4, sizeof(self->_currentRawData));
    [UIStatusBar _setDeviceUserInterfaceLayoutDirection:(*(&self->_currentRawData + 2536) >> 1) & 1];
    if ((v11 & 1) == 0 && (_shouldAutomaticallyDetectCenterItemAnimation & 1) == 0)
    {
      if (v9)
      {
        [(UIStatusBarForegroundView *)self->_foregroundView animateUnlock];
        [(UIStatusBarForegroundView *)self->_newStyleForegroundView animateUnlock];
      }

      [(UIStatusBar *)self setEnabledCenterItems:v19 duration:0.4];
    }

    goto LABEL_20;
  }

  v19 = 0;
LABEL_20:
  foregroundView = self->_foregroundView;
  v16 = [(UIStatusBar *)self _currentComposedData];
  [(UIStatusBarForegroundView *)foregroundView setStatusBarData:v16 actions:v5 animated:1];

  newStyleForegroundView = self->_newStyleForegroundView;
  v18 = [(UIStatusBar *)self _currentComposedData];
  [(UIStatusBarForegroundView *)newStyleForegroundView setStatusBarData:v18 actions:v5 animated:1];
}

- (void)statusBarServer:(id)a3 didReceiveStyleOverrides:(unint64_t)a4
{
  v6 = a3;
  if ([(UIStatusBar_Base *)self styleOverrides]!= a4)
  {
    v7.receiver = self;
    v7.super_class = UIStatusBar;
    [(UIStatusBar_Base *)&v7 statusBarServer:v6 didReceiveStyleOverrides:a4];
    [(UIStatusBar_Base *)self requestStyle:[(UIStatusBar_Base *)self _requestStyle] animated:1];
  }

  self->_waitingOnCallbackAfterChangingStyleOverridesLocally = 0;
}

- (void)statusBarServer:(id)a3 didReceiveGlowAnimationState:(BOOL)a4 forStyle:(int64_t)a5
{
  v5 = a4;
  if ([(UIStatusBar *)self currentStyle]== a5)
  {
    backgroundView = self->_backgroundView;

    [(UIStatusBarBackgroundView *)backgroundView setGlowAnimationEnabled:v5];
  }
}

- (void)statusBarServer:(id)a3 didReceiveDoubleHeightStatusString:(id)a4 forStyle:(int64_t)a5
{
  v7 = a4;
  if ([(UIStatusBar *)self currentStyle]== a5 && ![(UIStatusBar *)self _shouldUseInProcessProviderDoubleHeightStatusString])
  {
    [(UIStatusBar *)self _setDoubleHeightStatusString:v7];
  }
}

- (void)statusBarStateProvider:(id)a3 didPostStatusBarData:(id *)a4 withActions:(int)a5
{
  v5 = *&a5;
  if (a4)
  {
    memcpy(&self->_currentRawData, a4, sizeof(self->_currentRawData));
  }

  [UIStatusBar _setDeviceUserInterfaceLayoutDirection:(*(&self->_currentRawData + 2536) >> 1) & 1];
  foregroundView = self->_foregroundView;
  v8 = [(UIStatusBar *)self _currentComposedData];
  [(UIStatusBarForegroundView *)foregroundView setStatusBarData:v8 actions:v5 animated:1];

  newStyleForegroundView = self->_newStyleForegroundView;
  v10 = [(UIStatusBar *)self _currentComposedData];
  [(UIStatusBarForegroundView *)newStyleForegroundView setStatusBarData:v10 actions:v5 animated:1];
}

- (void)statusBarStateProvider:(id)a3 didChangeDoubleHeightStatusStringForStyle:(int64_t)a4
{
  if ([(UIStatusBar *)self currentStyle]== a4 && [(UIStatusBar *)self _shouldUseInProcessProviderDoubleHeightStatusString])
  {
    v6 = [(UIStatusBar *)self _doubleHeightStatusStringForStyle:a4];
    [(UIStatusBar *)self _setDoubleHeightStatusString:v6];
  }
}

- (BOOL)_isTransparent
{
  v2 = [(UIStatusBarBackgroundView *)self->_backgroundView style];
  v3 = [v2 isTransparent];

  return v3;
}

- (id)_currentComposedDataForStyle:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  memset(__dst, 0, 512);
  if ([(UIStatusBar_Base *)self localDataOverrides])
  {
    [UIStatusBar getData:__dst forRequestedData:&self->_currentRawData withOverrides:[(UIStatusBar_Base *)self localDataOverrides]];
  }

  else
  {
    memcpy(__dst, &self->_currentRawData, sizeof(__dst));
  }

  v5 = [[UIStatusBarComposedData alloc] initWithRawData:__dst];
  v6 = [(UIStatusBar_Base *)self styleDelegate];
  if (objc_opt_respondsToSelector())
  {
    v7 = [v6 statusBarSystemNavigationAction:self];
    [(UIStatusBarComposedData *)v5 setSystemNavigationItem:v7];
  }

  [(UIStatusBarComposedData *)v5 setDoubleHeightStatus:self->_currentDoubleHeightText];
  v22[0] = !self->_showOnlyCenterItems;
  v22[1] = v22[0];
  v22[2] = 1;
  v8 = [v4 idiom];
  v9 = [(UIView *)self _screen];
  v10 = [v9 _capabilities];

  v11 = 46;
  do
  {
    v12 = [(UIStatusBar_Base *)self homeItemsDisabled];
    if (v11 == 46 && v12)
    {
      v13 = 0;
    }

    else
    {
      v13 = [v4 shouldShowInternalItemType:v11 withScreenCapabilities:v10];
    }

    [(UIStatusBarComposedData *)v5 setItem:v11 enabled:v13];
    v14 = [UIStatusBarItem isItemWithTypeExclusive:v11 outBlacklistItems:0 outWhitelistItems:0];
    if (v13 && v14)
    {
      for (i = 0; i != 3; ++i)
      {
        if ([UIStatusBarItem itemType:v11 idiom:v8 appearsInRegion:i])
        {
          v22[i] = 0;
        }
      }
    }

    v11 = (v11 + 1);
  }

  while (v11 != 52);
  v16 = 0;
  do
  {
    if ([UIStatusBarItem itemType:v16 idiom:v8 canBeEnabledForData:v5 style:v4])
    {
      v17 = 0;
      while ((v22[v17] & 1) != 0 || ![UIStatusBarItem itemType:v16 idiom:v8 appearsInRegion:v17])
      {
        if (++v17 == 3)
        {
          v18 = 1;
          goto LABEL_26;
        }
      }
    }

    v18 = 0;
LABEL_26:
    [(UIStatusBarComposedData *)v5 setItem:v16 enabled:v18];
    v16 = (v16 + 1);
  }

  while (v16 != 46);
  v19 = CFPreferencesCopyAppValue(@"StatusBarPrimaryNavigationTitleOverride", @"com.apple.UIKit");
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v19 length])
  {
    strncpy((-[UIStatusBarComposedData rawData](v5, "rawData") + 2537), [v19 UTF8String], 0x100uLL);
  }

  v20 = CFPreferencesCopyAppValue(@"StatusBarSecondaryNavigationURLOverride", @"com.apple.UIKit");
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v20 length])
  {
    strncpy((-[UIStatusBarComposedData rawData](v5, "rawData") + 2793), [v20 UTF8String], 0x100uLL);
  }

  return v5;
}

- (void)_setOverrideHeight:(double)a3
{
  overrideHeight = self->_overrideHeight;
  if (!overrideHeight || ([(NSNumber *)overrideHeight doubleValue], v6 != a3))
  {
    v7 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
    v8 = self->_overrideHeight;
    self->_overrideHeight = v7;
  }
}

- (void)_clearOverrideHeight
{
  overrideHeight = self->_overrideHeight;
  self->_overrideHeight = 0;
}

- (void)_performBlockWhileIgnoringForegroundViewChanges:(id)a3
{
  self->_foregroundViewShouldIgnoreStatusBarDataDuringAnimation = 1;
  if (a3)
  {
    (*(a3 + 2))(a3, a2);
  }

  self->_foregroundViewShouldIgnoreStatusBarDataDuringAnimation = 0;
}

- (BOOL)_rectIntersectsTimeItem:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if ([(UIStatusBarForegroundView *)self->_foregroundView rectIntersectsTimeItem:?])
  {
    return 1;
  }

  newStyleForegroundView = self->_newStyleForegroundView;

  return [(UIStatusBarForegroundView *)newStyleForegroundView rectIntersectsTimeItem:x, y, width, height];
}

- (void)_dateTimePreferencesUpdated
{
  foregroundView = self->_foregroundView;
  v3 = [(UIStatusBar *)self _currentComposedData];
  [(UIStatusBarForegroundView *)foregroundView setStatusBarData:v3 actions:512 animated:0];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = _UIKitUserDefaults();

  if (v13 == v11)
  {
    [(UIStatusBar *)self _dateTimePreferencesUpdated];
  }

  else
  {
    v14.receiver = self;
    v14.super_class = UIStatusBar;
    [(UIStatusBar *)&v14 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
  }
}

uint64_t __51__UIStatusBar_Base__setHidden_animationParameters___block_invoke(uint64_t a1, int a2)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    [v3 setAlpha:*(a1 + 40)];
    v4 = *(a1 + 32);
    v5 = *(a1 + 64);
    v9 = *(a1 + 48);
    v10 = v5;
    v6 = *(a1 + 80);
  }

  else
  {
    [v3 setAlpha:1.0];
    v4 = *(a1 + 32);
    v7 = *(MEMORY[0x1E695EFD0] + 16);
    v9 = *MEMORY[0x1E695EFD0];
    v10 = v7;
    v6 = *(MEMORY[0x1E695EFD0] + 32);
  }

  v11 = v6;
  return [v4 setTransform:&v9];
}

uint64_t __51__UIStatusBar_Base__setHidden_animationParameters___block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 isHidden];
  v3 = 1.0;
  if (v2)
  {
    v3 = 0.0;
  }

  return [v1 setAlpha:v3];
}

uint64_t __65__UIStatusBar_Base__performAnimations_withParameters_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 isCancelled];
  v4 = *(v2 + 16);

  return v4(v2, v3 ^ 1u);
}

uint64_t __91__UIStatusBar_Modern__initWithFrame_showForegroundView_wantsServer_inProcessStateProvider___block_invoke(uint64_t a1)
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

uint64_t __106__UIStatusBar_Modern__requestStyle_partStyles_legibilityStyle_foregroundColor_animationParameters_forced___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 56);
  result = [*(a1 + 32) _requestStyle];
  if (v2 == result)
  {
    [*(a1 + 32) _updateWithData:0 force:0];
    [*(*(a1 + 32) + 592) setStyle:*(a1 + 64)];
    [*(*(a1 + 32) + 592) setForegroundColor:*(a1 + 40)];
    v4 = *(a1 + 48);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __106__UIStatusBar_Modern__requestStyle_partStyles_legibilityStyle_foregroundColor_animationParameters_forced___block_invoke_2;
    v5[3] = &unk_1E710A240;
    v5[4] = *(a1 + 32);
    return [v4 enumerateKeysAndObjectsUsingBlock:v5];
  }

  return result;
}

void __106__UIStatusBar_Modern__requestStyle_partStyles_legibilityStyle_foregroundColor_animationParameters_forced___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  [*(*(a1 + 32) + 592) setStyle:objc_msgSend(a3 forPartWithIdentifier:{"integerValue"), v5}];
}

@end