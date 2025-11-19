@interface UIStatusBarForegroundView
- (BOOL)_tryToPlaceItem:(id)a3 inItemArray:(id)a4 layoutManager:(id)a5 roomRemaining:(double *)a6 allowSwap:(BOOL)a7 swappedItem:(id *)a8;
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (BOOL)rectIntersectsBatteryItem:(CGRect)a3;
- (BOOL)rectIntersectsTimeItem:(CGRect)a3;
- (BOOL)willChangeNavigationItemDisplayWithSystemNavigationAction:(id)a3;
- (CGRect)frameForAllItemsInRegion:(int)a3;
- (CGRect)frameForItemOfType:(int)a3;
- (UIStatusBar)statusBar;
- (UIStatusBarForegroundView)initWithFrame:(CGRect)a3 foregroundStyle:(id)a4 usesVerticalLayout:(BOOL)a5;
- (double)leftEdgePadding;
- (double)rightEdgePadding;
- (id)_accessibilityHUDGestureManager:(id)a3 HUDItemForPoint:(CGPoint)a4;
- (id)_computeVisibleItemsPreservingHistory:(BOOL)a3;
- (id)_statusBarItemViewAtPoint:(CGPoint)a3;
- (id)_statusBarWindowForAccessibilityHUD;
- (void)_accessibilityHUDGestureManager:(id)a3 showHUDItem:(id)a4;
- (void)_animateUnlockCompletionBlock:(id)a3;
- (void)_cleanUpAfterDataChange;
- (void)_cleanUpAfterSimpleReflow;
- (void)_dismissAccessibilityHUDForGestureManager:(id)a3;
- (void)_reflowItemViewsCrossfadingCenterWithDuration:(double)a3 timeWasEnabled:(BOOL)a4;
- (void)_reflowItemViewsWithDuration:(double)a3 preserveHistory:(BOOL)a4;
- (void)_setStatusBarData:(id)a3 actions:(int)a4 animated:(BOOL)a5;
- (void)animateUnlock;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)jiggleLockIcon;
- (void)reflowItemViews:(BOOL)a3;
- (void)reflowItemViewsCrossfadingCenter:(id)a3 duration:(double)a4;
- (void)reflowItemViewsForgettingEitherSideItemHistory;
- (void)setBounds:(CGRect)a3;
- (void)setFrame:(CGRect)a3;
- (void)setPersistentAnimationsEnabled:(BOOL)a3;
- (void)setStatusBarData:(id)a3 actions:(int)a4 animated:(BOOL)a5;
- (void)stopIgnoringData:(BOOL)a3;
@end

@implementation UIStatusBarForegroundView

- (UIStatusBarForegroundView)initWithFrame:(CGRect)a3 foregroundStyle:(id)a4 usesVerticalLayout:(BOOL)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v12 = a4;
  v21.receiver = self;
  v21.super_class = UIStatusBarForegroundView;
  v13 = [(UIView *)&v21 initWithFrame:x, y, width, height];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_foregroundStyle, a4);
    v15 = 0;
    v14->_usesVerticalLayout = a5;
    do
    {
      v16 = [[UIStatusBarLayoutManager alloc] initWithRegion:v15 foregroundView:v14 usesVerticalLayout:v14->_usesVerticalLayout];
      v17 = v14->_layoutManagers[v15];
      v14->_layoutManagers[v15] = v16;

      ++v15;
    }

    while (v15 != 3);
    [(UIView *)v14 setAutoresizingMask:18];
    v18 = [[UIAccessibilityHUDGestureManager alloc] initWithView:v14 delegate:v14];
    accessibilityHUDGestureManager = v14->_accessibilityHUDGestureManager;
    v14->_accessibilityHUDGestureManager = v18;
  }

  return v14;
}

- (void)dealloc
{
  v3 = 0;
  layoutManagers = self->_layoutManagers;
  do
  {
    [(UIStatusBarLayoutManager *)layoutManagers[v3] setForegroundView:0];
    v5 = layoutManagers[v3];
    layoutManagers[v3] = 0;

    ++v3;
  }

  while (v3 != 3);
  v6.receiver = self;
  v6.super_class = UIStatusBarForegroundView;
  [(UIView *)&v6 dealloc];
}

- (id)_statusBarItemViewAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = 0;
  layoutManagers = self->_layoutManagers;
  do
  {
    v8 = layoutManagers[v6];
    v9 = [(UIStatusBarLayoutManager *)v8 visibleItemViewAtPoint:self inForegroundView:x, y];

    if (v9)
    {
      v10 = 1;
    }

    else
    {
      v10 = v6 == 2;
    }

    ++v6;
  }

  while (!v10);

  return v9;
}

- (id)_statusBarWindowForAccessibilityHUD
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = [(UIView *)self window];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    CategoryCachedImpl = __UILogGetCategoryCachedImpl("StatusBar", &_statusBarWindowForAccessibilityHUD___s_category);
    if (*CategoryCachedImpl)
    {
      v6 = *(CategoryCachedImpl + 8);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = 138412290;
        v8 = v2;
        _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_ERROR, "status bar wanted to show or hide the accessibility HUD but instead of a status bar window there was %@", &v7, 0xCu);
      }
    }

    v3 = 0;
  }

  return v3;
}

- (id)_accessibilityHUDGestureManager:(id)a3 HUDItemForPoint:(CGPoint)a4
{
  v4 = [(UIStatusBarForegroundView *)self _statusBarItemViewAtPoint:a3, a4.x, a4.y];
  v5 = [v4 accessibilityHUDRepresentation];

  return v5;
}

- (void)_accessibilityHUDGestureManager:(id)a3 showHUDItem:(id)a4
{
  v5 = a4;
  v6 = [(UIView *)self traitCollection];
  [v5 setCustomUserInterfaceStyle:{objc_msgSend(v6, "userInterfaceStyle")}];

  v7 = [(UIStatusBarForegroundView *)self _statusBarWindowForAccessibilityHUD];
  [v7 _showAccessibilityHUDItem:v5 forView:self];
}

- (void)_dismissAccessibilityHUDForGestureManager:(id)a3
{
  v3 = [(UIStatusBarForegroundView *)self _statusBarWindowForAccessibilityHUD];
  [v3 _dismissAccessibilityHUD];
}

- (UIStatusBar)statusBar
{
  v3 = [(UIView *)self superview];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [(UIView *)self superview];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)willChangeNavigationItemDisplayWithSystemNavigationAction:(id)a3
{
  v3 = self->_itemIsEnabled[50];
  v4 = [a3 titleForDestination:0];
  v5 = [v4 length] != 0;

  return v3 != v5;
}

- (void)_setStatusBarData:(id)a3 actions:(int)a4 animated:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  if (a4 || ![(UIStatusBarComposedData *)self->_currentData isEqual:v9])
  {
    objc_storeStrong(&self->_currentData, a3);
    [(UIStatusBarForegroundView *)self startIgnoringData];
    v10 = [(UIStatusBarForegroundView *)self foregroundStyle];
    v11 = [v10 canShowBreadcrumbs];

    if (v11)
    {
      if (*([v9 rawData] + 2537))
      {
        v12 = 1;
      }

      else
      {
        v13 = [v9 systemNavigationItem];
        v14 = [v13 destinations];
        v12 = [v14 containsObject:&unk_1EFE33190];
      }

      [v9 setItem:50 enabled:v12];
      [v9 setItem:51 enabled:0];
    }

    else
    {
      LODWORD(v12) = 0;
    }

    if (_UIDeviceNativeUserInterfaceIdiom() == 1)
    {
      v15 = [v9 isItemEnabled:0] ? 6 : 1;
      [v9 setItem:v15 enabled:0];
      if (MGGetBoolAnswer())
      {
        if (([v9 isItemEnabled:4] & 1) == 0 && (objc_msgSend(v9, "isItemEnabled:", 3) & 1) == 0)
        {
          [v9 setItem:4 enabled:1];
          *([v9 rawData] + 440) = -1;
        }
      }
    }

    v16 = 0;
    itemIsEnabled = self->_itemIsEnabled;
    v32 = self->_itemIsEnabled[0];
    v18 = self->_itemIsEnabled[39];
    do
    {
      itemIsEnabled[v16] = [v9 isItemEnabled:v16];
      ++v16;
    }

    while (v16 != 52);
    v19 = 0;
    if ((a4 & 4) != 0)
    {
      v20 = a4 & 0xFFFFFFFE;
    }

    else
    {
      v20 = a4;
    }

    layoutManagers = self->_layoutManagers;
    do
    {
      LODWORD(v12) = v12 | [(UIStatusBarLayoutManager *)layoutManagers[v19++] prepareEnabledItems:self->_itemIsEnabled withData:v9 actions:v20];
    }

    while (v19 != 3);
    v22 = 0.0;
    if (v5 & (a4 >> 2))
    {
      v22 = 0.5;
    }

    v23 = (v20 >> 6) & 1;
    if (v22 != 0.0)
    {
      v23 = 0;
    }

    if (v23 & v5)
    {
      v24 = 0.25;
    }

    else
    {
      v24 = v22;
    }

    if (v24 <= 0.0 || ((+[UIStatusBarLockItemView lockSlideAnimationDuration], v24 < v25) ? (v26 = !v18) : (v26 = 1), v26 || !self->_itemIsEnabled[39] || v32 == *itemIsEnabled))
    {
      v27 = 0;
    }

    else
    {
      +[UIStatusBarLockItemView lockSlideAnimationDuration];
      v24 = v30;
      v31 = [(UIStatusBarLayoutManager *)self->_layoutManagers[2] itemViewOfType:39];
      v27 = [(UIStatusBarLayoutManager *)self->_layoutManagers[2] itemViewOfType:0];
      [v31 setViewToAnimateAlongside:v27];
      [v31 setAlongsideViewIsBecomingVisible:*itemIsEnabled];
    }

    for (i = 0; i != 3; ++i)
    {
      LODWORD(v12) = v12 | [(UIStatusBarLayoutManager *)layoutManagers[i] updateItemsWithData:v9 actions:v20 animated:v5];
    }

    if (v12)
    {
      if (v5 && v24 > 0.0)
      {
        [v27 setUseCustomFadeAnimation:1];
        v29 = dispatch_time(0, (v24 * 1000000000.0));
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __64__UIStatusBarForegroundView__setStatusBarData_actions_animated___block_invoke;
        block[3] = &unk_1E70F35B8;
        v35 = v27;
        v36 = self;
        dispatch_after(v29, MEMORY[0x1E69E96A0], block);
        v33[0] = MEMORY[0x1E69E9820];
        v33[1] = 3221225472;
        v33[2] = __64__UIStatusBarForegroundView__setStatusBarData_actions_animated___block_invoke_2;
        v33[3] = &unk_1E70F32F0;
        v33[4] = self;
        *&v33[5] = v24;
        [UIView animateWithDuration:32 delay:v33 options:0 animations:v24 completion:0.0];

LABEL_47:
        goto LABEL_48;
      }

      [(UIStatusBarForegroundView *)self _reflowItemViewsWithDuration:1 preserveHistory:v24];
    }

    [(UIStatusBarForegroundView *)self _cleanUpAfterDataChange];
    goto LABEL_47;
  }

LABEL_48:
}

uint64_t __64__UIStatusBarForegroundView__setStatusBarData_actions_animated___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setUseCustomFadeAnimation:0];
  v2 = *(a1 + 40);

  return [v2 _cleanUpAfterDataChange];
}

- (void)setStatusBarData:(id)a3 actions:(int)a4 animated:(BOOL)a5
{
  v5 = a5;
  v52 = *MEMORY[0x1E69E9840];
  v9 = a3;
  CategoryCachedImpl = __UILogGetCategoryCachedImpl("StatusBar", &setStatusBarData_actions_animated____s_category);
  if (*CategoryCachedImpl)
  {
    v31 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v51 = v9;
      _os_log_impl(&dword_188A29000, v31, OS_LOG_TYPE_ERROR, "Received data: %@", buf, 0xCu);
    }
  }

  if ([(UIStatusBarForegroundView *)self ignoringData])
  {
    objc_storeStrong(&self->_pendedData, a3);
    self->_pendedActions |= a4;
    goto LABEL_28;
  }

  if (self->_actionAnimationStack)
  {
    if ((a4 & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v27 = objc_alloc_init(MEMORY[0x1E695DF70]);
  actionAnimationStack = self->_actionAnimationStack;
  self->_actionAnimationStack = v27;

  if ((a4 & 0x80) != 0)
  {
LABEL_6:
    a4 &= 0xFFFFFF3F;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __63__UIStatusBarForegroundView_setStatusBarData_actions_animated___block_invoke;
    aBlock[3] = &unk_1E70F3590;
    aBlock[4] = self;
    v11 = _Block_copy(aBlock);
    v12 = self->_actionAnimationStack;
    v13 = _Block_copy(v11);
    [(NSMutableArray *)v12 addObject:v13];
  }

LABEL_7:
  v14 = [v9 isItemEnabled:2];
  v15 = 0;
  v16 = a4 & 0xFFFFFFCF;
  if ((a4 & 0x10) != 0)
  {
    v17 = v14;
    if (self->_itemIsEnabled[2] != v14 && v5)
    {
      if (!self->_actionAnimationStack)
      {
        v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v20 = self->_actionAnimationStack;
        self->_actionAnimationStack = v19;
      }

      if ((v17 & 1) == 0)
      {
        v46[0] = MEMORY[0x1E69E9820];
        v46[1] = 3221225472;
        v46[2] = __63__UIStatusBarForegroundView_setStatusBarData_actions_animated___block_invoke_3;
        v46[3] = &unk_1E70F5AF0;
        v46[4] = self;
        v47 = v9;
        v48 = v5;
        v21 = _Block_copy(v46);
        v22 = self->_actionAnimationStack;
        v23 = _Block_copy(v21);
        [(NSMutableArray *)v22 addObject:v23];
      }

      v44[0] = MEMORY[0x1E69E9820];
      v44[1] = 3221225472;
      v44[2] = __63__UIStatusBarForegroundView_setStatusBarData_actions_animated___block_invoke_4;
      v44[3] = &unk_1E70F35E0;
      v44[4] = self;
      v45 = v5;
      v24 = _Block_copy(v44);
      v25 = self->_actionAnimationStack;
      v26 = _Block_copy(v24);
      [(NSMutableArray *)v25 addObject:v26];

      if (v17)
      {
        v40[0] = MEMORY[0x1E69E9820];
        v40[1] = 3221225472;
        v40[2] = __63__UIStatusBarForegroundView_setStatusBarData_actions_animated___block_invoke_6;
        v40[3] = &unk_1E7114880;
        v40[4] = self;
        v41 = v9;
        v42 = v16;
        v43 = v5;
        v15 = _Block_copy(v40);
      }

      else
      {
        v29 = [v9 copy];
        [v29 setItem:2 enabled:1];
        v32 = MEMORY[0x1E69E9820];
        v33 = 3221225472;
        v34 = __63__UIStatusBarForegroundView_setStatusBarData_actions_animated___block_invoke_7;
        v35 = &unk_1E7114880;
        v36 = self;
        v37 = v29;
        v38 = v16;
        v39 = v5;
        v30 = v29;
        v15 = _Block_copy(&v32);
      }
    }
  }

  if ([(NSMutableArray *)self->_actionAnimationStack count:v32])
  {
    [(UIStatusBarForegroundView *)self startIgnoringData];
    if (v15)
    {
      v15[2](v15);
    }

    [(UIStatusBarForegroundView *)self stopIgnoringData:v5];
  }

  else
  {
    [(UIStatusBarForegroundView *)self _setStatusBarData:v9 actions:v16 animated:v5];
  }

LABEL_28:
}

uint64_t __63__UIStatusBarForegroundView_setStatusBarData_actions_animated___block_invoke(uint64_t a1)
{
  [*(a1 + 32) startIgnoringData];
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __63__UIStatusBarForegroundView_setStatusBarData_actions_animated___block_invoke_2;
  v4[3] = &unk_1E70F3590;
  v4[4] = v2;
  return [v2 _animateUnlockCompletionBlock:v4];
}

void __63__UIStatusBarForegroundView_setStatusBarData_actions_animated___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) startIgnoringData];
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:0x1EFB97830 object:*(a1 + 32) userInfo:0];

  v3 = dispatch_time(0, 500000000);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __63__UIStatusBarForegroundView_setStatusBarData_actions_animated___block_invoke_5;
  v4[3] = &unk_1E70F35E0;
  v4[4] = *(a1 + 32);
  v5 = *(a1 + 40);
  dispatch_after(v3, MEMORY[0x1E69E96A0], v4);
}

- (void)reflowItemViewsCrossfadingCenter:(id)a3 duration:(double)a4
{
  v6 = a3;
  v7 = 0;
  itemIsEnabled = self->_itemIsEnabled;
  v9 = self->_itemIsEnabled[0];
  v10 = self->_itemIsEnabled[39];
  do
  {
    itemIsEnabled[v7] = [v6 isItemEnabled:v7];
    ++v7;
  }

  while (v7 != 52);
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __71__UIStatusBarForegroundView_reflowItemViewsCrossfadingCenter_duration___block_invoke;
  v16[3] = &unk_1E70FB728;
  v18 = &v19;
  v16[4] = self;
  v11 = v6;
  v17 = v11;
  [UIView performWithoutAnimation:v16];
  if (a4 > 0.0 && v10 && self->_itemIsEnabled[39] && v9 != *itemIsEnabled)
  {
    +[UIStatusBarLockItemView lockSlideAnimationDuration];
    if (v12 > a4)
    {
      +[UIStatusBarLockItemView lockSlideAnimationDuration];
      a4 = v13;
    }

    v14 = [(UIStatusBarLayoutManager *)self->_layoutManagers[2] itemViewOfType:39];
    v15 = [(UIStatusBarLayoutManager *)self->_layoutManagers[2] itemViewOfType:0];
    [v14 setViewToAnimateAlongside:v15];
    [v14 setAlongsideViewIsBecomingVisible:*itemIsEnabled];
  }

  if (*(v20 + 24) == 1)
  {
    [(UIStatusBarForegroundView *)self _reflowItemViewsCrossfadingCenterWithDuration:v9 timeWasEnabled:a4];
  }

  _Block_object_dispose(&v19, 8);
}

uint64_t __71__UIStatusBarForegroundView_reflowItemViewsCrossfadingCenter_duration___block_invoke(void *a1)
{
  v2 = 464;
  v3 = 3;
  v4 = 464;
  do
  {
    *(*(a1[6] + 8) + 24) |= [*(a1[4] + v4) prepareEnabledItems:a1[4] + 409 withData:a1[5] actions:0];
    v4 += 8;
    --v3;
  }

  while (v3);
  v5 = 3;
  do
  {
    result = [*(a1[4] + v2) updateItemsWithData:a1[5] actions:0 animated:0];
    *(*(a1[6] + 8) + 24) |= result;
    v2 += 8;
    --v5;
  }

  while (v5);
  return result;
}

- (void)_reflowItemViewsCrossfadingCenterWithDuration:(double)a3 timeWasEnabled:(BOOL)a4
{
  [(UIStatusBarForegroundView *)self startIgnoringData];
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v6 = [(UIStatusBarForegroundView *)self _computeVisibleItemsPreservingHistory:1];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __90__UIStatusBarForegroundView__reflowItemViewsCrossfadingCenterWithDuration_timeWasEnabled___block_invoke;
  v7[3] = &unk_1E7122618;
  v7[4] = self;
  v7[5] = &v8;
  *&v7[6] = a3;
  [v6 enumerateKeysAndObjectsUsingBlock:v7];
  if ((v9[3] & 1) == 0)
  {
    [(UIStatusBarForegroundView *)self _cleanUpAfterDataChange];
  }

  _Block_object_dispose(&v8, 8);
}

void __90__UIStatusBarForegroundView__reflowItemViewsCrossfadingCenterWithDuration_timeWasEnabled___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 intValue];
  if (v6 == 2)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    v7 = *(*(a1 + 32) + 480);
    v8 = [v7 itemViewOfType:0];
    [v8 setUseCustomFadeAnimation:1];
    v9 = dispatch_time(0, (*(a1 + 48) * 1000000000.0));
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __90__UIStatusBarForegroundView__reflowItemViewsCrossfadingCenterWithDuration_timeWasEnabled___block_invoke_2;
    block[3] = &unk_1E70F35B8;
    v10 = *(a1 + 32);
    v22 = v8;
    v23 = v10;
    v11 = v8;
    dispatch_after(v9, MEMORY[0x1E69E96A0], block);
    v12 = *(a1 + 48);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __90__UIStatusBarForegroundView__reflowItemViewsCrossfadingCenterWithDuration_timeWasEnabled___block_invoke_3;
    v17[3] = &unk_1E70F36D0;
    v18 = v7;
    v19 = v5;
    v20 = *(a1 + 48);
    v13 = v7;
    [UIView animateWithDuration:32 delay:v17 options:0 animations:v12 completion:0.0];
  }

  else
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __90__UIStatusBarForegroundView__reflowItemViewsCrossfadingCenterWithDuration_timeWasEnabled___block_invoke_4;
    v14[3] = &unk_1E70F79E8;
    v14[4] = *(a1 + 32);
    v16 = v6;
    v15 = v5;
    [UIView performWithoutAnimation:v14];
  }
}

uint64_t __90__UIStatusBarForegroundView__reflowItemViewsCrossfadingCenterWithDuration_timeWasEnabled___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setUseCustomFadeAnimation:0];
  v2 = *(a1 + 40);

  return [v2 _cleanUpAfterDataChange];
}

- (void)reflowItemViews:(BOOL)a3
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __45__UIStatusBarForegroundView_reflowItemViews___block_invoke;
  v5[3] = &__block_descriptor_40_e24_v24__0___v___8___v__B_16l;
  v5[4] = 0;
  v3[4] = self;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __45__UIStatusBarForegroundView_reflowItemViews___block_invoke_2;
  v4[3] = &unk_1E70F32F0;
  v4[4] = self;
  v4[5] = 0;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __45__UIStatusBarForegroundView_reflowItemViews___block_invoke_3;
  v3[3] = &unk_1E70F5AC0;
  [UIView conditionallyAnimate:0 withAnimation:v5 layout:v4 completion:v3];
}

- (void)reflowItemViewsForgettingEitherSideItemHistory
{
  [(UIStatusBarForegroundView *)self _reflowItemViewsWithDuration:0 preserveHistory:0.0];

  [(UIStatusBarForegroundView *)self _cleanUpAfterSimpleReflow];
}

- (void)stopIgnoringData:(BOOL)a3
{
  v3 = a3;
  ignoreDataLevel = self->_ignoreDataLevel;
  if (ignoreDataLevel <= 0)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"UIStatusBarForegroundView.m" lineNumber:446 description:@"Stopped ignoring data more times than started"];

    ignoreDataLevel = self->_ignoreDataLevel;
  }

  v6 = ignoreDataLevel - 1;
  self->_ignoreDataLevel = v6;
  if (!v6)
  {
    if ([(NSMutableArray *)self->_actionAnimationStack count])
    {
      [(UIStatusBarForegroundView *)self startIgnoringData];
      v7 = [(NSMutableArray *)self->_actionAnimationStack lastObject];
      v7[2]();

      [(NSMutableArray *)self->_actionAnimationStack removeLastObject];

      [(UIStatusBarForegroundView *)self stopIgnoringData:v3];
    }

    else
    {
      pendedData = self->_pendedData;
      if (pendedData)
      {
        pendedActions = self->_pendedActions;
        self->_pendedData = 0;
        v12 = pendedData;

        self->_pendedActions = 0;
        [(UIStatusBarForegroundView *)self setStatusBarData:v12 actions:pendedActions animated:v3];
      }
    }
  }
}

- (void)_cleanUpAfterSimpleReflow
{
  v2 = 0;
  layoutManagers = self->_layoutManagers;
  do
  {
    [(UIStatusBarLayoutManager *)layoutManagers[v2++] positionInvisibleItems];
  }

  while (v2 != 3);
}

- (void)_cleanUpAfterDataChange
{
  v3 = 0;
  layoutManagers = self->_layoutManagers;
  do
  {
    [(UIStatusBarLayoutManager *)layoutManagers[v3] removeDisabledItems:self->_itemIsEnabled];
    [(UIStatusBarLayoutManager *)layoutManagers[v3] positionInvisibleItems];
    [(UIStatusBarLayoutManager *)layoutManagers[v3++] makeVisibleItemsPerformPendedActions];
  }

  while (v3 != 3);

  [(UIStatusBarForegroundView *)self stopIgnoringData:1];
}

- (void)_reflowItemViewsWithDuration:(double)a3 preserveHistory:(BOOL)a4
{
  v4 = a4;
  v7 = [(UIView *)self window];

  if (v7)
  {
    v8 = [(UIStatusBarForegroundView *)self _computeVisibleItemsPreservingHistory:v4];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __74__UIStatusBarForegroundView__reflowItemViewsWithDuration_preserveHistory___block_invoke;
    v9[3] = &unk_1E7115060;
    v9[4] = self;
    *&v9[5] = a3;
    [v8 enumerateKeysAndObjectsUsingBlock:v9];
  }
}

void __74__UIStatusBarForegroundView__reflowItemViewsWithDuration_preserveHistory___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  [*(*(a1 + 32) + 464 + 8 * objc_msgSend(a2 "intValue"))];
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = UIStatusBarForegroundView;
  [(UIView *)&v3 didMoveToWindow];
  [(UIStatusBarForegroundView *)self reflowItemViews:0];
}

- (id)_computeVisibleItemsPreservingHistory:(BOOL)a3
{
  v191 = *MEMORY[0x1E69E9840];
  context = objc_autoreleasePoolPush();
  v3 = 0;
  v188 = 0;
  v189 = 0;
  v190 = 0;
  do
  {
    v4 = [MEMORY[0x1E695DF70] array];
    v5 = *(&v188 + v3);
    *(&v188 + v3) = v4;

    v180[v3++] = 0;
  }

  while (v3 != 3);
  v6 = [MEMORY[0x1E695DF70] array];
  for (i = 0; i != 52; ++i)
  {
    if (self->_itemIsEnabled[i])
    {
      v8 = [UIStatusBarItem itemWithType:i idiom:[(UIStatusBarForegroundView *)self idiom]];
      if (![v8 appearsOnLeft] || (v9 = objc_msgSend(v8, "appearsOnRight"), v10 = v6, (v9 & 1) == 0))
      {
        v11 = 0;
        while (![v8 appearsInRegion:v11])
        {
          if (++v11 == 3)
          {
            goto LABEL_13;
          }
        }

        v10 = *(&v188 + v11);
      }

      [v10 addObject:v8];
LABEL_13:
    }
  }

  v12 = 0;
  v13 = 0;
  v153 = v6;
  do
  {
    v14 = v13;
    v178 = 0u;
    v179 = 0u;
    v176 = 0u;
    v177 = 0u;
    obj = *(&v188 + v12);
    v15 = [obj countByEnumeratingWithState:&v176 objects:v187 count:16];
    v157 = v12;
    if (!v15)
    {
      v18 = 0;
      v17 = 0;
LABEL_36:

      v13 = v14;
LABEL_37:
      if ([v17 count])
      {
        obja = v13;
        v28 = *(&v188 + v12);
        v29 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v28, "count")}];
        v170 = 0u;
        v171 = 0u;
        v172 = 0u;
        v173 = 0u;
        v30 = v28;
        v31 = [v30 countByEnumeratingWithState:&v170 objects:v186 count:16];
        if (v31)
        {
          v32 = v31;
          v33 = *v171;
          do
          {
            for (j = 0; j != v32; ++j)
            {
              if (*v171 != v33)
              {
                objc_enumerationMutation(v30);
              }

              v35 = *(*(&v170 + 1) + 8 * j);
              v36 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v35, "type")}];
              v37 = [v17 containsObject:v36];

              if (v37)
              {
                [v29 addObject:v35];
              }
            }

            v32 = [v30 countByEnumeratingWithState:&v170 objects:v186 count:16];
          }

          while (v32);
        }

        v12 = v157;
        *(&v188 + v157) = v29;

        v23 = 0;
        v13 = obja;
      }

      else
      {
        v23 = 0;
      }

      goto LABEL_52;
    }

    v16 = v15;
    v17 = 0;
    v18 = 0;
    v19 = *v177;
LABEL_18:
    v20 = 0;
    v21 = v17;
    v22 = v18;
    while (1)
    {
      if (*v177 != v19)
      {
        objc_enumerationMutation(obj);
      }

      v23 = *(*(&v176 + 1) + 8 * v20);
      v24 = objc_opt_class();
      v25 = [v23 type];
      v174 = v21;
      v175 = v22;
      LODWORD(v24) = [v24 isItemWithTypeExclusive:v25 outBlacklistItems:&v175 outWhitelistItems:&v174];
      v18 = v175;

      v17 = v174;
      if (v24)
      {
        break;
      }

      v12 = v157;
      if (v157 == 2 && [v23 type] == 39)
      {
        v26 = [(UIStatusBarLayoutManager *)self->_layoutManagers[2] itemViewOfType:39];
        if ([v26 isExclusive])
        {
          v40 = v23;

          goto LABEL_49;
        }
      }

      else
      {
        if ([v17 count])
        {
          goto LABEL_36;
        }

        if (![v18 count])
        {
          goto LABEL_32;
        }

        v27 = v14;
        if (!v14)
        {
          v27 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:1];
        }

        v26 = [v18 allObjects];
        v14 = v27;
        [v27 addObjectsFromArray:v26];
      }

LABEL_32:
      ++v20;
      v21 = v17;
      v22 = v18;
      if (v16 == v20)
      {
        v16 = [obj countByEnumeratingWithState:&v176 objects:v187 count:16];
        v12 = v157;
        if (v16)
        {
          goto LABEL_18;
        }

        goto LABEL_36;
      }
    }

    v38 = v23;
    v12 = v157;
LABEL_49:

    v13 = v14;
    if (!v23)
    {
      goto LABEL_37;
    }

    v39 = *(&v188 + v12);
    [v39 removeAllObjects];
    [v39 addObject:v23];
    v180[v12] = 1;
LABEL_52:

    ++v12;
  }

  while (v12 != 3);
  if ([v13 count])
  {
    v41 = 0;
    do
    {
      v158 = v41;
      v42 = *(&v188 + v41);
      v43 = [v42 mutableCopy];
      v166 = 0u;
      v167 = 0u;
      v168 = 0u;
      v169 = 0u;
      v44 = v42;
      v45 = [v44 countByEnumeratingWithState:&v166 objects:v185 count:16];
      if (v45)
      {
        v46 = v45;
        v47 = *v167;
        v48 = 1;
        while (2)
        {
          for (k = 0; k != v46; ++k)
          {
            if (*v167 != v47)
            {
              objc_enumerationMutation(v44);
            }

            if (!v48)
            {
              v48 = 0;
              goto LABEL_69;
            }

            v50 = *(*(&v166 + 1) + 8 * k);
            v51 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v50, "type")}];
            v52 = v13;
            v53 = [v13 containsObject:v51];

            if (v53)
            {
              [v43 removeObject:v50];
              v54 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v50, "type")}];
              [v52 removeObject:v54];

              v48 = [v52 count] != 0;
            }

            else
            {
              v48 = 1;
            }

            v13 = v52;
          }

          v46 = [v44 countByEnumeratingWithState:&v166 objects:v185 count:16];
          if (v46)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        v48 = 1;
      }

LABEL_69:

      v55 = *(&v188 + v158);
      *(&v188 + v158) = v43;

      if (v158 > 1)
      {
        break;
      }

      v41 = v158 + 1;
    }

    while (v48);
  }

  layoutManagers = self->_layoutManagers;
  [(UIStatusBarLayoutManager *)self->_layoutManagers[2] rectForItems:v190];
  v58 = v57;
  v60 = v59;
  v62 = v61;
  v64 = v63;
  usesVerticalLayout = self->_usesVerticalLayout;
  [(UIView *)self bounds];
  if (usesVerticalLayout)
  {
    v68 = v67;
  }

  else
  {
    v68 = v66;
  }

  v69 = v58;
  v70 = v60;
  v71 = v62;
  v72 = v64;
  if (self->_usesVerticalLayout)
  {
    MinY = CGRectGetMinY(*&v69);
  }

  else
  {
    MinY = CGRectGetMinX(*&v69);
  }

  v74 = MinY;
  v75 = 0x1E696A000uLL;
  objb = v13;
  v76 = v58;
  v77 = v60;
  v78 = v62;
  v79 = v64;
  if (self->_usesVerticalLayout)
  {
    MaxY = CGRectGetMaxY(*&v76);
  }

  else
  {
    MaxY = CGRectGetMaxX(*&v76);
  }

  v81 = MaxY;
  v184 = 0.0;
  v82 = [(UIStatusBarForegroundView *)self foregroundStyle];
  [v82 leftEdgePadding];
  v84 = v83;

  v85 = [(UIStatusBarForegroundView *)self foregroundStyle];
  [v85 rightEdgePadding];
  v87 = v86;

  v88 = [(UIStatusBarForegroundView *)self foregroundStyle];
  [v88 middlePadding];
  v90 = v89;

  v182 = v74 - v84 - v90 + 1.0;
  v183 = v68 - v81 - v87 - v90 + 1.0;
  if (self->_usesVerticalLayout)
  {
    [(UIStatusBarLayoutManager *)*layoutManagers sizeNeededForItems:v188];
    v92 = v91;
    [(UIStatusBarLayoutManager *)self->_layoutManagers[1] sizeNeededForItems:v189];
    v184 = v68 - v92 - v93 - (v90 + v90);
    v94 = (v92 + v68 - v93) * 0.5;
    v95 = self->_layoutManagers[2];
    *&v94 = v94;
    v96 = [MEMORY[0x1E696AD98] numberWithFloat:v94];
    [(UIStatusBarLayoutManager *)v95 setAssignedStartPosition:v96];
  }

  v97 = 0;
  while (2)
  {
    if (v97 == 2)
    {
      if (!self->_usesVerticalLayout)
      {
        break;
      }

LABEL_87:
      v98 = *(&v188 + v97);
      [(UIStatusBarLayoutManager *)layoutManagers[v97] clearOverlapFromItems:v98];
      [(UIStatusBarLayoutManager *)layoutManagers[v97] sizeNeededForItems:v98];
      v100 = *(&v182 + v97) - v99;
      *(&v182 + v97) = v100;
      if (v100 < 0.0)
      {
        [(UIStatusBarLayoutManager *)layoutManagers[v97] distributeOverlap:v98 amongItems:-v100];
        *(&v182 + v97) = v101 + *(&v182 + v97);
      }

      [v98 sortUsingSelector:sel_comparePriority_];
      while (1)
      {
        v102 = *(&v182 + v97);
        if (v102 >= 0.0)
        {
          break;
        }

        if (![v98 count])
        {
          v102 = *(&v182 + v97);
          break;
        }

        v103 = [v98 objectAtIndex:0];
        [(UIStatusBarLayoutManager *)layoutManagers[v97] sizeNeededForItem:v103];
        *(&v182 + v97) = v104 + *(&v182 + v97);
        [v98 removeObjectAtIndex:0];
      }

      if (v102 > 0.0)
      {
        [(UIStatusBarLayoutManager *)layoutManagers[v97] removeOverlap:v98 fromItems:?];
        *(&v182 + v97) = *(&v182 + v97) - v105;
      }
    }

    else if (!self->_usesVerticalLayout)
    {
      goto LABEL_87;
    }

    if (++v97 != 3)
    {
      continue;
    }

    break;
  }

  v106 = [MEMORY[0x1E695DF70] array];
  v159 = v106;
  if (a3)
  {
    v164 = 0u;
    v165 = 0u;
    v162 = 0u;
    v163 = 0u;
    v107 = v153;
    v108 = [v107 countByEnumeratingWithState:&v162 objects:v181 count:16];
    if (!v108)
    {
      goto LABEL_113;
    }

    v109 = v108;
    v110 = *v163;
    v111 = v180[0];
    v112 = v180[1];
    while (1)
    {
      for (m = 0; m != v109; ++m)
      {
        if (*v163 != v110)
        {
          objc_enumerationMutation(v107);
        }

        v114 = *(*(&v162 + 1) + 8 * m);
        if ((v111 & 1) == 0 && [(UIStatusBarLayoutManager *)*layoutManagers itemIsVisible:*(*(&v162 + 1) + 8 * m)])
        {
          v115 = v188;
          v116 = *layoutManagers;
          v117 = &v182;
          goto LABEL_109;
        }

        if ((v112 & 1) == 0 && [(UIStatusBarLayoutManager *)self->_layoutManagers[1] itemIsVisible:v114])
        {
          v115 = v189;
          v116 = self->_layoutManagers[1];
          v117 = &v183;
LABEL_109:
          if ([(UIStatusBarForegroundView *)self _tryToPlaceItem:v114 inItemArray:v115 layoutManager:v116 roomRemaining:v117 allowSwap:0 swappedItem:0])
          {
            continue;
          }
        }

        [v159 addObject:v114];
      }

      v109 = [v107 countByEnumeratingWithState:&v162 objects:v181 count:16];
      if (!v109)
      {
LABEL_113:

        v118 = v153;
        v75 = 0x1E696A000;
        v119 = v159;
        goto LABEL_115;
      }
    }
  }

  v119 = v106;
  v118 = v153;
  [v106 addObjectsFromArray:v153];
LABEL_115:
  [v119 sortUsingSelector:sel_comparePriority_];
  if ([v119 count])
  {
    while (2)
    {
      v120 = [v119 lastObject];
      [v119 removeLastObject];
      v121 = +[UIStatusBar _deviceUserInterfaceLayoutDirection];
      v122 = 0;
      v123 = v121 != 0;
      v124 = v121 == 0;
      v125 = 1;
      do
      {
        while (1)
        {
          v126 = v125;
          if ((v180[v123] & 1) == 0)
          {
            break;
          }

          v125 = 0;
          v122 = 1;
          v123 = v124;
          if ((v126 & 1) == 0)
          {
            goto LABEL_122;
          }
        }

        v127 = [(UIStatusBarForegroundView *)self _tryToPlaceItem:v120 inItemArray:*(&v188 + v123) layoutManager:layoutManagers[v123] roomRemaining:&v182 + v123 allowSwap:0 swappedItem:0];
        v125 = 0;
        v128 = v122 | v127;
        v122 = 1;
        v123 = v124;
      }

      while ((v128 & 1) == 0);
      if (v127)
      {
        goto LABEL_133;
      }

LABEL_122:
      v129 = v188;
      if (![v188 count] || (v130 = v189, !objc_msgSend(v189, "count")))
      {

        v145 = 0;
        goto LABEL_138;
      }

      v131 = [v129 objectAtIndex:0];
      v132 = [v131 priority];
      v133 = [v130 objectAtIndex:0];
      v134 = [v133 priority];
      v135 = v132 >= v134;
      v136 = v132 < v134;

      v137 = 0;
      v138 = 0;
      do
      {
        v139 = v135;
        if (v180[v139])
        {
          v140 = 0;
        }

        else
        {
          v141 = *(&v188 + v139);
          v142 = layoutManagers[v139];
          v161 = v138;
          v140 = [(UIStatusBarForegroundView *)self _tryToPlaceItem:v120 inItemArray:v141 layoutManager:v142 roomRemaining:&v182 + v139 allowSwap:1 swappedItem:&v161];
          v143 = v161;

          v138 = v143;
        }

        v144 = v137 | v140;
        v137 = 1;
        v135 = v136;
      }

      while ((v144 & 1) == 0);
      v118 = v153;
      v119 = v159;
      if (v138 && [v153 containsObject:v138])
      {
        [v159 addObject:v138];
        [v159 sortUsingSelector:sel_comparePriority_];
      }

      v75 = 0x1E696A000uLL;
LABEL_133:

      if ([v119 count])
      {
        continue;
      }

      break;
    }
  }

  v145 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:3];
  for (n = 0; n != 3; ++n)
  {
    v147 = *(&v188 + n);
    v148 = [*(v75 + 3480) numberWithInt:n];
    [v145 setObject:v147 forKey:v148];
  }

LABEL_138:

  for (ii = 16; ii != -8; ii -= 8)
  {
  }

  objc_autoreleasePoolPop(context);

  return v145;
}

- (BOOL)_tryToPlaceItem:(id)a3 inItemArray:(id)a4 layoutManager:(id)a5 roomRemaining:(double *)a6 allowSwap:(BOOL)a7 swappedItem:(id *)a8
{
  v9 = a7;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  [v15 sizeNeededForItem:v13];
  v17 = v16;
  if (v16 > *a6 && v9)
  {
    v19 = [v14 objectAtIndex:0];
    [v15 sizeNeededForItem:v19];
    v21 = v20;
    v22 = [v13 priority];
    if (v22 <= [v19 priority] || (v23 = v21 + *a6, v17 > v23))
    {

      goto LABEL_11;
    }

    *a6 = v23;
    [v14 removeObjectAtIndex:0];
    if (a8)
    {
      v25 = v19;
      *a8 = v19;
    }

LABEL_15:
    [v14 addObject:v13];
    [v14 sortUsingSelector:sel_comparePriority_];
    *a6 = *a6 - v17;
    v24 = 1;
    goto LABEL_16;
  }

  if (v16 <= *a6)
  {
    goto LABEL_15;
  }

LABEL_11:
  v24 = 0;
LABEL_16:

  return v24;
}

- (double)leftEdgePadding
{
  v2 = [(UIStatusBarForegroundView *)self foregroundStyle];
  [v2 leftEdgePadding];
  v4 = v3;

  return v4;
}

- (double)rightEdgePadding
{
  v2 = [(UIStatusBarForegroundView *)self foregroundStyle];
  [v2 rightEdgePadding];
  v4 = v3;

  return v4;
}

- (void)setPersistentAnimationsEnabled:(BOOL)a3
{
  v3 = a3;
  v4 = 0;
  layoutManagers = self->_layoutManagers;
  do
  {
    [(UIStatusBarLayoutManager *)layoutManagers[v4++] setPersistentAnimationsEnabled:v3];
  }

  while (v4 != 3);
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  usesVerticalLayout = self->_usesVerticalLayout;
  [(UIView *)self frame];
  if (usesVerticalLayout)
  {
    v11 = v10;
  }

  else
  {
    v11 = v9;
  }

  v13.receiver = self;
  v13.super_class = UIStatusBarForegroundView;
  [(UIView *)&v13 setFrame:x, y, width, height];
  if (self->_usesVerticalLayout)
  {
    v12 = height;
  }

  else
  {
    v12 = width;
  }

  if (v11 != v12)
  {
    [(UIStatusBarForegroundView *)self reflowItemViews:0];
  }
}

- (void)setBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  usesVerticalLayout = self->_usesVerticalLayout;
  [(UIView *)self bounds];
  if (usesVerticalLayout)
  {
    v11 = v10;
  }

  else
  {
    v11 = v9;
  }

  v13.receiver = self;
  v13.super_class = UIStatusBarForegroundView;
  [(UIView *)&v13 setBounds:x, y, width, height];
  if (self->_usesVerticalLayout)
  {
    v12 = height;
  }

  else
  {
    v12 = width;
  }

  if (v11 != v12)
  {
    [(UIStatusBarForegroundView *)self reflowItemViews:0];
  }
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v22 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v20.receiver = self;
  v20.super_class = UIStatusBarForegroundView;
  if ([(UIView *)&v20 pointInside:v7 withEvent:x, y])
  {
    v8 = 1;
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v9 = [(UIView *)self subviews];
    v10 = [v9 countByEnumeratingWithState:&v16 objects:v21 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v17;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v17 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v16 + 1) + 8 * i);
          [v14 convertPoint:self fromView:{x, y}];
          if ([v14 pointInside:v7 withEvent:?])
          {
            v8 = 1;
            goto LABEL_13;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v16 objects:v21 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v8 = 0;
LABEL_13:
  }

  return v8;
}

- (void)_animateUnlockCompletionBlock:(id)a3
{
  block = a3;
  v4 = [(UIStatusBarLayoutManager *)self->_layoutManagers[2] itemViewOfType:39];
  if (v4)
  {
    v5 = [(UIStatusBarLayoutManager *)self->_layoutManagers[2] itemViewOfType:0];
    v6 = [v5 snapshotViewAfterScreenUpdates:0];
    [v5 frame];
    [v6 setFrame:?];
    [v4 animateUnlockForegroundView:self timeItemSnapshot:v6 completionBlock:block];
  }

  else if (block)
  {
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (void)animateUnlock
{
  v3 = [(UIStatusBarLayoutManager *)self->_layoutManagers[2] itemViewOfType:39];
  if (v3)
  {
    if ([(UIStatusBarForegroundView *)self ignoringData])
    {
      self->_pendedActions |= 0x80u;
    }

    else
    {
      [(UIStatusBarForegroundView *)self startIgnoringData];
      v4[0] = MEMORY[0x1E69E9820];
      v4[1] = 3221225472;
      v4[2] = __42__UIStatusBarForegroundView_animateUnlock__block_invoke;
      v4[3] = &unk_1E70F3590;
      v4[4] = self;
      [(UIStatusBarForegroundView *)self _animateUnlockCompletionBlock:v4];
    }
  }
}

- (void)jiggleLockIcon
{
  v3 = [(UIStatusBarLayoutManager *)self->_layoutManagers[2] itemViewOfType:39];
  if (v3 && ![(UIStatusBarForegroundView *)self ignoringData])
  {
    [(UIStatusBarForegroundView *)self startIgnoringData];
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __43__UIStatusBarForegroundView_jiggleLockIcon__block_invoke;
    v4[3] = &unk_1E70F3590;
    v4[4] = self;
    [v3 jiggleCompletionBlock:v4];
  }
}

- (CGRect)frameForItemOfType:(int)a3
{
  v3 = *&a3;
  v5 = 0;
  layoutManagers = self->_layoutManagers;
  while (1)
  {
    v7 = [(UIStatusBarLayoutManager *)layoutManagers[v5] itemViewOfType:v3];
    v8 = v7;
    if (v7)
    {
      break;
    }

    if (++v5 == 3)
    {
      v9 = *MEMORY[0x1E695F058];
      v10 = *(MEMORY[0x1E695F058] + 8);
      v11 = *(MEMORY[0x1E695F058] + 16);
      v12 = *(MEMORY[0x1E695F058] + 24);
      goto LABEL_6;
    }
  }

  [v7 bounds];
  [(UIView *)self convertRect:v8 fromView:?];
  v9 = v13;
  v10 = v14;
  v11 = v15;
  v12 = v16;
LABEL_6:

  v17 = v9;
  v18 = v10;
  v19 = v11;
  v20 = v12;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (CGRect)frameForAllItemsInRegion:(int)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = [(UIStatusBarLayoutManager *)self->_layoutManagers[a3] allItemViews];
  x = *MEMORY[0x1E695F050];
  y = *(MEMORY[0x1E695F050] + 8);
  width = *(MEMORY[0x1E695F050] + 16);
  height = *(MEMORY[0x1E695F050] + 24);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v9 = [v4 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v27;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v27 != v11)
        {
          objc_enumerationMutation(v4);
        }

        v13 = *(*(&v26 + 1) + 8 * i);
        [v13 bounds];
        [(UIView *)self convertRect:v13 fromView:?];
        v37.origin.x = v14;
        v37.origin.y = v15;
        v37.size.width = v16;
        v37.size.height = v17;
        v32.origin.x = x;
        v32.origin.y = y;
        v32.size.width = width;
        v32.size.height = height;
        v33 = CGRectUnion(v32, v37);
        x = v33.origin.x;
        y = v33.origin.y;
        width = v33.size.width;
        height = v33.size.height;
      }

      v10 = [v4 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v10);
  }

  v34.origin.x = x;
  v34.origin.y = y;
  v34.size.width = width;
  v34.size.height = height;
  v35 = CGRectStandardize(v34);
  v18 = v35.origin.x;
  v19 = v35.origin.y;
  v20 = v35.size.width;
  v21 = v35.size.height;

  v22 = v18;
  v23 = v19;
  v24 = v20;
  v25 = v21;
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
}

- (BOOL)rectIntersectsTimeItem:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = [(UIStatusBarLayoutManager *)self->_layoutManagers[2] itemViewOfType:0];
  v8 = v7;
  if (v7)
  {
    [v7 frame];
    v16.origin.x = v9;
    v16.origin.y = v10;
    v16.size.width = v11;
    v16.size.height = v12;
    v15.origin.x = x;
    v15.origin.y = y;
    v15.size.width = width;
    v15.size.height = height;
    v13 = CGRectIntersectsRect(v15, v16);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)rectIntersectsBatteryItem:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(UIStatusBarForegroundView *)self frameForItemOfType:12];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = x;
  v16 = y;
  v17 = width;
  v18 = height;

  return CGRectIntersectsRect(*&v15, *&v8);
}

@end