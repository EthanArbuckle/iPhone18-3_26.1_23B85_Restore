@interface SBHFocusModeFeatureIntroductionItem
- (BOOL)shouldDisplayFeatureIntroductionAtLocations:(unint64_t)locations;
- (CGRect)focusModePopoverViewFolderScrollAccessoryFrame:(id)frame;
- (SBHFocusModeFeatureIntroductionItem)initWithIconManager:(id)manager;
- (SBHIconManager)iconManager;
- (id)focusModePopoverViewActiveFocusMode:(id)mode;
- (void)_removeActiveFocusModeRequiringIntroduction;
- (void)_tearDownFocusModePopoverView:(id)view;
- (void)displayFeatureIntroductionAtLocations:(unint64_t)locations presentCompletion:(id)completion dismissCompletion:(id)dismissCompletion;
- (void)focusModePopoverView:(id)view closeButtonTappedForIconListView:(id)listView;
- (void)focusModePopoverView:(id)view editPageButtonTappedForIconListView:(id)listView;
- (void)tearDown;
@end

@implementation SBHFocusModeFeatureIntroductionItem

- (SBHFocusModeFeatureIntroductionItem)initWithIconManager:(id)manager
{
  managerCopy = manager;
  v10.receiver = self;
  v10.super_class = SBHFocusModeFeatureIntroductionItem;
  v5 = [(SBHFocusModeFeatureIntroductionItem *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_iconManager, managerCopy);
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

  focusModePopoverViews = [(SBHFocusModeFeatureIntroductionItem *)self focusModePopoverViews];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = [focusModePopoverViews countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(focusModePopoverViews);
        }

        [*(*(&v11 + 1) + 8 * v10++) removeFromSuperview];
      }

      while (v8 != v10);
      v8 = [focusModePopoverViews countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)_tearDownFocusModePopoverView:(id)view
{
  viewCopy = view;
  focusModePopoverViews = [(SBHFocusModeFeatureIntroductionItem *)self focusModePopoverViews];
  [focusModePopoverViews removeObject:viewCopy];
  [viewCopy removeFromSuperview];
}

- (void)_removeActiveFocusModeRequiringIntroduction
{
  iconManager = [(SBHFocusModeFeatureIntroductionItem *)self iconManager];
  focusModeManager = [iconManager focusModeManager];
  activeFocusMode = [focusModeManager activeFocusMode];
  identifier = [activeFocusMode identifier];
  [focusModeManager removeFocusModeRequiringIntroduction:identifier];
}

- (BOOL)shouldDisplayFeatureIntroductionAtLocations:(unint64_t)locations
{
  focusModePopoverViews = [(SBHFocusModeFeatureIntroductionItem *)self focusModePopoverViews];
  v6 = [focusModePopoverViews count];

  if (v6)
  {
    LOBYTE(v7) = 0;
  }

  else
  {
    iconManager = [(SBHFocusModeFeatureIntroductionItem *)self iconManager];
    isDockPinnedForRotation = [iconManager isDockPinnedForRotation];
    interfaceOrientation = [iconManager interfaceOrientation];
    if (!isDockPinnedForRotation || interfaceOrientation == 1)
    {
      v7 = (locations >> 2) & 1;
    }

    else
    {
      LOBYTE(v7) = 0;
    }
  }

  return v7;
}

- (void)displayFeatureIntroductionAtLocations:(unint64_t)locations presentCompletion:(id)completion dismissCompletion:(id)dismissCompletion
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

  iconManager = [(SBHFocusModeFeatureIntroductionItem *)self iconManager];
  rootFolderController = [iconManager rootFolderController];
  contentView = [rootFolderController contentView];
  v12 = objc_opt_class();
  v13 = contentView;
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

  focusModeManager = [iconManager focusModeManager];
  activeFocusMode = [focusModeManager activeFocusMode];
  if (([activeFocusMode isSleepFocus] & 1) == 0)
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

- (void)focusModePopoverView:(id)view closeButtonTappedForIconListView:(id)listView
{
  viewCopy = view;
  [(SBHFocusModeFeatureIntroductionItem *)self _removeActiveFocusModeRequiringIntroduction];
  [(SBHFocusModeFeatureIntroductionItem *)self _tearDownFocusModePopoverView:viewCopy];
}

- (void)focusModePopoverView:(id)view editPageButtonTappedForIconListView:(id)listView
{
  listViewCopy = listView;
  viewCopy = view;
  [(SBHFocusModeFeatureIntroductionItem *)self _removeActiveFocusModeRequiringIntroduction];
  iconManager = [(SBHFocusModeFeatureIntroductionItem *)self iconManager];
  [iconManager setEditing:1 fromIconListView:listViewCopy];

  [(SBHFocusModeFeatureIntroductionItem *)self _tearDownFocusModePopoverView:viewCopy];
}

- (id)focusModePopoverViewActiveFocusMode:(id)mode
{
  iconManager = [(SBHFocusModeFeatureIntroductionItem *)self iconManager];
  focusModeManager = [iconManager focusModeManager];
  activeFocusMode = [focusModeManager activeFocusMode];

  return activeFocusMode;
}

- (CGRect)focusModePopoverViewFolderScrollAccessoryFrame:(id)frame
{
  iconManager = [(SBHFocusModeFeatureIntroductionItem *)self iconManager];
  rootFolderController = [iconManager rootFolderController];
  contentView = [rootFolderController contentView];
  v6 = objc_opt_class();
  v7 = contentView;
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

  scrollAccessoryView = [v9 scrollAccessoryView];

  [scrollAccessoryView frame];
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