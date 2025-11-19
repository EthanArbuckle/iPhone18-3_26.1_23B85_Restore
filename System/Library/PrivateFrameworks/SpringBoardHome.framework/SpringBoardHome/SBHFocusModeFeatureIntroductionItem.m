@interface SBHFocusModeFeatureIntroductionItem
- (BOOL)shouldDisplayFeatureIntroductionAtLocations:(unint64_t)a3;
- (CGRect)focusModePopoverViewFolderScrollAccessoryFrame:(id)a3;
- (SBHFocusModeFeatureIntroductionItem)initWithIconManager:(id)a3;
- (SBHIconManager)iconManager;
- (id)focusModePopoverViewActiveFocusMode:(id)a3;
- (void)_removeActiveFocusModeRequiringIntroduction;
- (void)_tearDownFocusModePopoverView:(id)a3;
- (void)displayFeatureIntroductionAtLocations:(unint64_t)a3 presentCompletion:(id)a4 dismissCompletion:(id)a5;
- (void)focusModePopoverView:(id)a3 closeButtonTappedForIconListView:(id)a4;
- (void)focusModePopoverView:(id)a3 editPageButtonTappedForIconListView:(id)a4;
- (void)tearDown;
@end

@implementation SBHFocusModeFeatureIntroductionItem

- (SBHFocusModeFeatureIntroductionItem)initWithIconManager:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = SBHFocusModeFeatureIntroductionItem;
  v5 = [(SBHFocusModeFeatureIntroductionItem *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_iconManager, v4);
    v7 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    focusModePopoverViews = v6->_focusModePopoverViews;
    v6->_focusModePopoverViews = v7;
  }

  return v6;
}

- (void)tearDown
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = SBLogFocusModes();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    *buf = 138412290;
    v17 = v5;
    _os_log_impl(&dword_1BEB18000, v3, OS_LOG_TYPE_DEFAULT, "[%@] Tear down", buf, 0xCu);
  }

  v6 = [(SBHFocusModeFeatureIntroductionItem *)self focusModePopoverViews];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
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

        [*(*(&v11 + 1) + 8 * v10++) removeFromSuperview];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)_tearDownFocusModePopoverView:(id)a3
{
  v4 = a3;
  v5 = [(SBHFocusModeFeatureIntroductionItem *)self focusModePopoverViews];
  [v5 removeObject:v4];
  [v4 removeFromSuperview];
}

- (void)_removeActiveFocusModeRequiringIntroduction
{
  v5 = [(SBHFocusModeFeatureIntroductionItem *)self iconManager];
  v2 = [v5 focusModeManager];
  v3 = [v2 activeFocusMode];
  v4 = [v3 identifier];
  [v2 removeFocusModeRequiringIntroduction:v4];
}

- (BOOL)shouldDisplayFeatureIntroductionAtLocations:(unint64_t)a3
{
  v5 = [(SBHFocusModeFeatureIntroductionItem *)self focusModePopoverViews];
  v6 = [v5 count];

  if (v6)
  {
    LOBYTE(v7) = 0;
  }

  else
  {
    v8 = [(SBHFocusModeFeatureIntroductionItem *)self iconManager];
    v9 = [v8 isDockPinnedForRotation];
    v10 = [v8 interfaceOrientation];
    if (!v9 || v10 == 1)
    {
      v7 = (a3 >> 2) & 1;
    }

    else
    {
      LOBYTE(v7) = 0;
    }
  }

  return v7;
}

- (void)displayFeatureIntroductionAtLocations:(unint64_t)a3 presentCompletion:(id)a4 dismissCompletion:(id)a5
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = SBLogFocusModes();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    *buf = 138412290;
    v20 = v8;
    _os_log_impl(&dword_1BEB18000, v6, OS_LOG_TYPE_DEFAULT, "[%@] Determining if any popovers should be shown for lists revealed by active Focus mode...", buf, 0xCu);
  }

  v9 = [(SBHFocusModeFeatureIntroductionItem *)self iconManager];
  v10 = [v9 rootFolderController];
  v11 = [v10 contentView];
  v12 = objc_opt_class();
  v13 = v11;
  if (v12)
  {
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __113__SBHFocusModeFeatureIntroductionItem_displayFeatureIntroductionAtLocations_presentCompletion_dismissCompletion___block_invoke;
  v18[3] = &unk_1E8089BD8;
  v18[4] = self;
  [v15 enumerateIconListViewsWithOptions:2 usingBlock:v18];

  v16 = [v9 focusModeManager];
  v17 = [v16 activeFocusMode];
  if (([v17 isSleepFocus] & 1) == 0)
  {
    [(SBHFocusModeFeatureIntroductionItem *)self _removeActiveFocusModeRequiringIntroduction];
  }
}

void __113__SBHFocusModeFeatureIntroductionItem_displayFeatureIntroductionAtLocations_presentCompletion_dismissCompletion___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 model];
  if (([v4 isHidden] & 1) == 0 && objc_msgSend(v4, "isHiddenByUser"))
  {
    v5 = [[SBHFocusModePopoverView alloc] initWithDelegate:*(a1 + 32) iconListView:v3];
    v6 = [*(a1 + 32) focusModePopoverViews];
    [v6 addObject:v5];

    v7 = SBLogFocusModes();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v10 = 138412290;
      v11 = v9;
      _os_log_impl(&dword_1BEB18000, v7, OS_LOG_TYPE_DEFAULT, "[%@] Displaying popover", &v10, 0xCu);
    }
  }
}

- (void)focusModePopoverView:(id)a3 closeButtonTappedForIconListView:(id)a4
{
  v5 = a3;
  [(SBHFocusModeFeatureIntroductionItem *)self _removeActiveFocusModeRequiringIntroduction];
  [(SBHFocusModeFeatureIntroductionItem *)self _tearDownFocusModePopoverView:v5];
}

- (void)focusModePopoverView:(id)a3 editPageButtonTappedForIconListView:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(SBHFocusModeFeatureIntroductionItem *)self _removeActiveFocusModeRequiringIntroduction];
  v8 = [(SBHFocusModeFeatureIntroductionItem *)self iconManager];
  [v8 setEditing:1 fromIconListView:v6];

  [(SBHFocusModeFeatureIntroductionItem *)self _tearDownFocusModePopoverView:v7];
}

- (id)focusModePopoverViewActiveFocusMode:(id)a3
{
  v3 = [(SBHFocusModeFeatureIntroductionItem *)self iconManager];
  v4 = [v3 focusModeManager];
  v5 = [v4 activeFocusMode];

  return v5;
}

- (CGRect)focusModePopoverViewFolderScrollAccessoryFrame:(id)a3
{
  v3 = [(SBHFocusModeFeatureIntroductionItem *)self iconManager];
  v4 = [v3 rootFolderController];
  v5 = [v4 contentView];
  v6 = objc_opt_class();
  v7 = v5;
  if (v6)
  {
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  v10 = [v9 scrollAccessoryView];

  [v10 frame];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v19 = v12;
  v20 = v14;
  v21 = v16;
  v22 = v18;
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

- (SBHIconManager)iconManager
{
  WeakRetained = objc_loadWeakRetained(&self->_iconManager);

  return WeakRetained;
}

@end