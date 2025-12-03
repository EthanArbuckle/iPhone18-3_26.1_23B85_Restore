@interface SBHIconViewContextMenuStateController
+ (SBHIconViewContextMenuStateController)sharedInstance;
- (SBHIconViewContextMenuStateController)init;
- (void)_firePendingIconAnimationBlocks;
- (void)containerViewDidScrollHiddenIconViewAway:(id)away;
- (void)dismissAppIconForceTouchControllers:(id)controllers;
- (void)earlyTerminateAnyContextMenuAnimations;
- (void)iconViewDidAnimateContextMenu:(id)menu;
- (void)iconViewWillAnimateContextMenu:(id)menu;
- (void)iconViewWillDismissContextMenu:(id)menu;
- (void)iconViewWillPresentContextMenu:(id)menu;
- (void)noteFolderControllerWillClose:(id)close;
- (void)performAfterContextMenuAnimationsHaveCompleted:(id)completed;
- (void)registerIconView:(id)view;
- (void)unregisterIconView:(id)view;
@end

@implementation SBHIconViewContextMenuStateController

+ (SBHIconViewContextMenuStateController)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[SBHIconViewContextMenuStateController sharedInstance];
  }

  v3 = sharedInstance_sharedInstance;

  return v3;
}

- (void)_firePendingIconAnimationBlocks
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [(NSMutableArray *)self->_pendingIconAnimationCompletionBlocks copy];
  array = [MEMORY[0x1E695DF70] array];
  pendingIconAnimationCompletionBlocks = self->_pendingIconAnimationCompletionBlocks;
  self->_pendingIconAnimationCompletionBlocks = array;

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = v3;
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

        (*(*(*(&v11 + 1) + 8 * v10) + 16))(*(*(&v11 + 1) + 8 * v10));
        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (SBHIconViewContextMenuStateController)init
{
  v15.receiver = self;
  v15.super_class = SBHIconViewContextMenuStateController;
  v2 = [(SBHIconViewContextMenuStateController *)&v15 init];
  if (v2)
  {
    v3 = objc_opt_new();
    presentedWidgetsBundleIdentifiers = v2->_presentedWidgetsBundleIdentifiers;
    v2->_presentedWidgetsBundleIdentifiers = v3;

    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    iconViewsPresentingContextMenues = v2->_iconViewsPresentingContextMenues;
    v2->_iconViewsPresentingContextMenues = weakObjectsHashTable;

    weakObjectsHashTable2 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    iconViewsAnimatingContextMenues = v2->_iconViewsAnimatingContextMenues;
    v2->_iconViewsAnimatingContextMenues = weakObjectsHashTable2;

    weakObjectsHashTable3 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    iconViews = v2->_iconViews;
    v2->_iconViews = weakObjectsHashTable3;

    array = [MEMORY[0x1E695DF70] array];
    pendingIconAnimationCompletionBlocks = v2->_pendingIconAnimationCompletionBlocks;
    v2->_pendingIconAnimationCompletionBlocks = array;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel_containerViewDidScrollHiddenIconViewAway_ name:@"SBHScrollableContainerDidScrollHiddenIconViewOutsideClippingBoundsNotification" object:0];
  }

  return v2;
}

uint64_t __55__SBHIconViewContextMenuStateController_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance = objc_alloc_init(SBHIconViewContextMenuStateController);

  return MEMORY[0x1EEE66BB8]();
}

- (void)registerIconView:(id)view
{
  viewCopy = view;
  iconViews = self->_iconViews;
  v9 = viewCopy;
  if (!iconViews)
  {
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v7 = self->_iconViews;
    self->_iconViews = weakObjectsHashTable;

    goto LABEL_5;
  }

  if (![(NSHashTable *)iconViews containsObject:?])
  {
LABEL_5:
    [(NSHashTable *)self->_iconViews addObject:v9];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:self selector:sel_iconViewWillPresentContextMenu_ name:@"SBIconViewWillPresentContextMenuNotification" object:v9];
    [defaultCenter addObserver:self selector:sel_iconViewWillDismissContextMenu_ name:@"SBIconViewWillDismissContextMenuNotification" object:v9];
    [defaultCenter addObserver:self selector:sel_iconViewWillAnimateContextMenu_ name:@"SBIconViewWillAnimateContextMenuNotification" object:v9];
    [defaultCenter addObserver:self selector:sel_iconViewDidAnimateContextMenu_ name:@"SBIconViewDidAnimateContextMenuNotification" object:v9];
  }
}

- (void)unregisterIconView:(id)view
{
  iconViews = self->_iconViews;
  viewCopy = view;
  [(NSHashTable *)iconViews removeObject:viewCopy];
  [(NSHashTable *)self->_iconViewsPresentingContextMenues removeObject:viewCopy];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:@"SBIconViewWillPresentContextMenuNotification" object:viewCopy];
  [defaultCenter removeObserver:self name:@"SBIconViewWillDismissContextMenuNotification" object:viewCopy];
  [defaultCenter removeObserver:self name:@"SBIconViewWillAnimateContextMenuNotification" object:viewCopy];
  [defaultCenter removeObserver:self name:@"SBIconViewDidAnimateContextMenuNotification" object:viewCopy];
}

- (void)iconViewWillPresentContextMenu:(id)menu
{
  menuCopy = menu;
  userInfo = [menuCopy userInfo];
  v8 = [userInfo objectForKey:@"presentedWidgetBundleIdentifier"];

  [(NSMutableSet *)self->_presentedWidgetsBundleIdentifiers bs_safeAddObject:v8];
  iconViewsPresentingContextMenues = self->_iconViewsPresentingContextMenues;
  object = [menuCopy object];

  [(NSHashTable *)iconViewsPresentingContextMenues addObject:object];
}

- (void)iconViewWillDismissContextMenu:(id)menu
{
  menuCopy = menu;
  userInfo = [menuCopy userInfo];
  v5 = [userInfo objectForKey:@"presentedWidgetBundleIdentifier"];

  if (v5)
  {
    [(NSMutableSet *)self->_presentedWidgetsBundleIdentifiers removeObject:v5];
  }

  iconViewsPresentingContextMenues = self->_iconViewsPresentingContextMenues;
  object = [menuCopy object];
  [(NSHashTable *)iconViewsPresentingContextMenues removeObject:object];
}

- (void)iconViewWillAnimateContextMenu:(id)menu
{
  iconViewsAnimatingContextMenues = self->_iconViewsAnimatingContextMenues;
  object = [menu object];
  [(NSHashTable *)iconViewsAnimatingContextMenues addObject:object];
}

- (void)iconViewDidAnimateContextMenu:(id)menu
{
  iconViewsAnimatingContextMenues = self->_iconViewsAnimatingContextMenues;
  object = [menu object];
  [(NSHashTable *)iconViewsAnimatingContextMenues removeObject:object];

  if (![(NSHashTable *)self->_iconViewsAnimatingContextMenues count])
  {

    [(SBHIconViewContextMenuStateController *)self _firePendingIconAnimationBlocks];
  }
}

- (void)containerViewDidScrollHiddenIconViewAway:(id)away
{
  userInfo = [away userInfo];
  v5 = [userInfo objectForKey:@"SBHHiddenIconViewUserInfoKey"];

  if ([(NSHashTable *)self->_iconViewsAnimatingContextMenues containsObject:v5])
  {
    [v5 earlyTerminateContextMenuDismissAnimation];
  }

  else if ([(NSHashTable *)self->_iconViewsPresentingContextMenues containsObject:v5])
  {
    [(SBHIconViewContextMenuStateController *)self dismissAppIconForceTouchControllers:0];
  }
}

- (void)dismissAppIconForceTouchControllers:(id)controllers
{
  v52 = *MEMORY[0x1E69E9840];
  controllersCopy = controllers;
  v47[0] = 0;
  v47[1] = v47;
  v47[2] = 0x2020000000;
  v48 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __77__SBHIconViewContextMenuStateController_dismissAppIconForceTouchControllers___block_invoke;
  aBlock[3] = &unk_1E80898B0;
  v46 = v47;
  aBlock[4] = self;
  v25 = controllersCopy;
  v45 = v25;
  v26 = _Block_copy(aBlock);
  v27 = objc_opt_new();
  v5 = MEMORY[0x1E695DFD8];
  allObjects = [(NSHashTable *)self->_iconViewsAnimatingContextMenues allObjects];
  v7 = [v5 setWithArray:allObjects];
  [v27 unionSet:v7];

  v8 = MEMORY[0x1E695DFD8];
  allObjects2 = [(NSHashTable *)self->_iconViewsPresentingContextMenues allObjects];
  v10 = [v8 setWithArray:allObjects2];
  [v27 unionSet:v10];

  v28 = [v27 mutableCopy];
  if ([v28 count])
  {
    v11 = SBLogIcon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v51 = v27;
      _os_log_impl(&dword_1BEB18000, v11, OS_LOG_TYPE_DEFAULT, "Starting mass dismissal of all presented icon view context menues: %{public}@", buf, 0xCu);
    }

    v12 = dispatch_group_create();
    for (i = [v27 count]; i; --i)
    {
      dispatch_group_enter(v12);
    }

    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v14 = [v27 copy];
    v15 = [v14 countByEnumeratingWithState:&v40 objects:v49 count:16];
    if (v15)
    {
      v16 = *v41;
      v17 = MEMORY[0x1E69E9820];
      do
      {
        for (j = 0; j != v15; ++j)
        {
          if (*v41 != v16)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v40 + 1) + 8 * j);
          v20 = SBLogIcon();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v51 = v19;
            _os_log_impl(&dword_1BEB18000, v20, OS_LOG_TYPE_DEFAULT, "Dismissing icon force touch controller for icon view: %{public}@", buf, 0xCu);
          }

          v37[0] = v17;
          v37[1] = 3221225472;
          v37[2] = __77__SBHIconViewContextMenuStateController_dismissAppIconForceTouchControllers___block_invoke_22;
          v37[3] = &unk_1E8088F88;
          v37[4] = v19;
          v38 = v28;
          v39 = v12;
          [v19 dismissContextMenuWithCompletion:v37];
        }

        v15 = [v14 countByEnumeratingWithState:&v40 objects:v49 count:16];
      }

      while (v15);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __77__SBHIconViewContextMenuStateController_dismissAppIconForceTouchControllers___block_invoke_23;
    block[3] = &unk_1E80898D8;
    v21 = v26;
    v36 = v21;
    v22 = v27;
    v35 = v22;
    v23 = MEMORY[0x1E69E96A0];
    dispatch_group_notify(v12, MEMORY[0x1E69E96A0], block);
    v24 = dispatch_time(0, 1000000000);
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __77__SBHIconViewContextMenuStateController_dismissAppIconForceTouchControllers___block_invoke_2;
    v29[3] = &unk_1E8089900;
    v33 = v47;
    v30 = v28;
    v32 = v21;
    v31 = v22;
    dispatch_after(v24, v23, v29);
  }

  else
  {
    (*(v26 + 2))(v26, MEMORY[0x1E695E0F0]);
    v12 = SBLogIcon();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v51 = v27;
      _os_log_impl(&dword_1BEB18000, v12, OS_LOG_TYPE_DEFAULT, "No need for mass dismissal of all presented icon view context menues: %{public}@", buf, 0xCu);
    }
  }

  _Block_object_dispose(v47, 8);
}

void __77__SBHIconViewContextMenuStateController_dismissAppIconForceTouchControllers___block_invoke(uint64_t a1, void *a2)
{
  v20[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  v5 = *(*(a1 + 48) + 8);
  if ((*(v5 + 24) & 1) == 0)
  {
    *(v5 + 24) = 1;
    if ([v3 count])
    {
      v6 = [MEMORY[0x1E696AD88] defaultCenter];
      v19 = @"iconViews";
      v20[0] = v4;
      v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
      [v6 postNotificationName:@"SBHIconViewContextMenuStateControllerDidDismissAllIconForceTouchControllersNotification" object:0 userInfo:v7];
    }

    [*(a1 + 32) _firePendingIconAnimationBlocks];
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v8 = v4;
    v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v15;
      do
      {
        v12 = 0;
        do
        {
          if (*v15 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [*(*(&v14 + 1) + 8 * v12++) earlyTerminateContextMenuDismissAnimation];
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v10);
    }

    v13 = *(a1 + 40);
    if (v13)
    {
      (*(v13 + 16))();
    }
  }
}

void __77__SBHIconViewContextMenuStateController_dismissAppIconForceTouchControllers___block_invoke_22(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = SBLogIcon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = 138543362;
    v5 = v3;
    _os_log_impl(&dword_1BEB18000, v2, OS_LOG_TYPE_DEFAULT, "Dismissed icon force touch controller for icon view: %{public}@", &v4, 0xCu);
  }

  [*(a1 + 40) removeObject:*(a1 + 32)];
  dispatch_group_leave(*(a1 + 48));
}

void __77__SBHIconViewContextMenuStateController_dismissAppIconForceTouchControllers___block_invoke_23(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) allObjects];
  (*(v1 + 16))(v1, v2);
}

void __77__SBHIconViewContextMenuStateController_dismissAppIconForceTouchControllers___block_invoke_2(uint64_t a1)
{
  if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
  {
    v2 = SBLogIcon();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __77__SBHIconViewContextMenuStateController_dismissAppIconForceTouchControllers___block_invoke_2_cold_1(a1, v2);
    }

    v3 = *(a1 + 48);
    v4 = [*(a1 + 40) allObjects];
    (*(v3 + 16))(v3, v4);
  }
}

- (void)performAfterContextMenuAnimationsHaveCompleted:(id)completed
{
  aBlock = completed;
  if ([(SBHIconViewContextMenuStateController *)self areAnyIconViewContextMenusAnimating])
  {
    pendingIconAnimationCompletionBlocks = self->_pendingIconAnimationCompletionBlocks;
    v5 = _Block_copy(aBlock);

    [(NSMutableArray *)pendingIconAnimationCompletionBlocks addObject:v5];
    aBlock = v5;
  }

  else
  {
    aBlock[2]();
  }
}

- (void)earlyTerminateAnyContextMenuAnimations
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = [(NSHashTable *)self->_iconViewsAnimatingContextMenues copy];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = v2;
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
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

        [*(*(&v8 + 1) + 8 * v7++) earlyTerminateContextMenuDismissAnimation];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)noteFolderControllerWillClose:(id)close
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __71__SBHIconViewContextMenuStateController_noteFolderControllerWillClose___block_invoke;
  v3[3] = &unk_1E8089928;
  v3[4] = self;
  [close enumerateDisplayedIconViewsUsingBlock:v3];
}

void __71__SBHIconViewContextMenuStateController_noteFolderControllerWillClose___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 32);
  v6 = a2;
  if ([v3 containsObject:?])
  {
    [v6 earlyTerminateContextMenuDismissAnimation];
  }

  else
  {
    v4 = [*(*(a1 + 32) + 24) containsObject:v6];

    if (v4)
    {
      v5 = *(a1 + 32);

      [v5 dismissAppIconForceTouchControllers:0];
    }
  }
}

void __77__SBHIconViewContextMenuStateController_dismissAppIconForceTouchControllers___block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = 138543362;
  v4 = v2;
  _os_log_error_impl(&dword_1BEB18000, a2, OS_LOG_TYPE_ERROR, "Dismissal of icon force touch controller for icons '%{public}@' failed.", &v3, 0xCu);
}

@end