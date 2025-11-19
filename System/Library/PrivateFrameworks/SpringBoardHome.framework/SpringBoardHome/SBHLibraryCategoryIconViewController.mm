@interface SBHLibraryCategoryIconViewController
- (BOOL)_canBeLocked;
- (BOOL)gestureRecognizer:(id)a3 shouldRequireFailureOfGestureRecognizer:(id)a4;
- (BOOL)isDisplayingIcon:(id)a3 inLocation:(id)a4;
- (BOOL)isDisplayingIcon:(id)a3 inLocations:(id)a4;
- (BOOL)isDisplayingIconView:(id)a3 inLocation:(id)a4;
- (CGRect)visibleBounds;
- (SBIconListView)iconListView;
- (SBIconViewProviding)iconViewProvider;
- (id)_createIconListViewWithModel:(id)a3;
- (id)_createLockedModel;
- (id)_createLockedView;
- (id)firstIconViewForIcon:(id)a3 excludingLocations:(id)a4;
- (id)firstIconViewForIcon:(id)a3 inLocations:(id)a4;
- (id)iconViewForIcon:(id)a3 location:(id)a4;
- (void)_handleTapOnLockedView:(id)a3;
- (void)_setLockedIfPossible:(BOOL)a3 animated:(BOOL)a4;
- (void)_updateLockedViewForLocked:(BOOL)a3 animated:(BOOL)a4;
- (void)categoryDidUpdate:(id)a3;
- (void)categoryWillUpdate:(id)a3;
- (void)enumerateDisplayedIconViewsForIcon:(id)a3 usingBlock:(id)a4;
- (void)enumerateDisplayedIconViewsUsingBlock:(id)a3;
- (void)folder:(id)a3 didAddList:(id)a4;
- (void)folder:(id)a3 didRemoveLists:(id)a4 atIndexes:(id)a5;
- (void)setContentVisibility:(unint64_t)a3;
- (void)setEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)setIconImageInfo:(SBIconImageInfo *)a3;
- (void)updateCategory:(id)a3 location:(id)a4;
- (void)updateFolder:(id)a3 location:(id)a4;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation SBHLibraryCategoryIconViewController

- (void)viewDidLoad
{
  v19.receiver = self;
  v19.super_class = SBHLibraryCategoryIconViewController;
  [(SBHLibraryCategoryIconViewController *)&v19 viewDidLoad];
  v3 = [(SBHLibraryCategoryIconViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(SBHLibraryCategoryIconViewController *)self folder];
  iconListView = self->_iconListView;
  if (!iconListView)
  {
    v14 = [v12 listAtIndex:0];
    v15 = [(SBHLibraryCategoryIconViewController *)self _createIconListViewWithModel:v14];
    v16 = self->_iconListView;
    self->_iconListView = v15;

    v17 = [(SBHLibraryCategoryIconViewController *)self view];
    [v17 addSubview:self->_iconListView];

    iconListView = self->_iconListView;
  }

  [(SBIconListView *)iconListView setFrame:v5, v7, v9, v11];
  v18 = [(SBHLibraryCategoryIconViewController *)self view];
  [v18 sbh_applyAppLibraryPodGlass];

  [(SBHLibraryCategoryIconViewController *)self _setLockedIfPossible:1 animated:0];
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = SBHLibraryCategoryIconViewController;
  [(SBHLibraryCategoryIconViewController *)&v4 viewWillAppear:a3];
  [(SBHLibraryCategoryIconViewController *)self _setLockedIfPossible:1 animated:0];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = SBHLibraryCategoryIconViewController;
  [(SBHLibraryCategoryIconViewController *)&v4 viewDidDisappear:a3];
  [(SBHLibraryCategoryIconViewController *)self _setLockedIfPossible:1 animated:0];
}

- (id)_createIconListViewWithModel:(id)a3
{
  v4 = a3;
  v5 = [(SBHLibraryCategoryIconViewController *)self location];
  v6 = v5;
  v7 = @"SBIconLocationAppLibraryCategoryPod";
  if (v5)
  {
    v7 = v5;
  }

  v8 = v7;

  v9 = [SBHLibraryCategoryPodIconListView alloc];
  v10 = [(SBHLibraryCategoryIconViewController *)self listLayoutProvider];
  v11 = [(SBHLibraryCategoryIconViewController *)self iconViewProvider];
  v12 = [(SBIconListView *)v9 initWithModel:v4 layoutProvider:v10 iconLocation:v8 orientation:1 iconViewProvider:v11];

  [(SBIconListView *)v12 setUsesGlassGroup:0];
  v13 = [(SBHLibraryCategoryIconViewController *)self iconImageCache];
  [(SBIconListView *)v12 setIconImageCache:v13];

  v14 = [(SBHLibraryCategoryIconViewController *)self folderIconImageCache];
  [(SBIconListView *)v12 setFolderIconImageCache:v14];

  [(SBIconListView *)v12 setIconViewConfigurationOptions:2];
  [(SBIconListView *)v12 setEditing:[(SBHLibraryCategoryIconViewController *)self isEditing]];
  [(SBHLibraryCategoryPodIconListView *)v12 setAutoresizingMask:18];

  return v12;
}

- (void)updateCategory:(id)a3 location:(id)a4
{
  v6 = a3;
  preventFolderUpdateAssertion = self->_preventFolderUpdateAssertion;
  v8 = a4;
  [(BSInvalidatable *)preventFolderUpdateAssertion invalidate];
  v9 = self->_preventFolderUpdateAssertion;
  self->_preventFolderUpdateAssertion = 0;

  [(SBHLibraryCategory *)self->_category removeObserver:self];
  category = self->_category;
  self->_category = v6;
  v12 = v6;

  v11 = [(SBHLibraryCategory *)v12 compactPodFolder];
  [(SBHLibraryCategoryIconViewController *)self updateFolder:v11 location:v8];

  [(SBHLibraryCategoryIconViewController *)self _setLockedIfPossible:1 animated:0];
  [(SBHLibraryCategory *)v12 addObserver:self];
}

- (void)updateFolder:(id)a3 location:(id)a4
{
  v10 = a3;
  v7 = a4;
  if (![v10 isEqual:self->_folder] || !-[NSString isEqualToString:](self->_location, "isEqualToString:", v7))
  {
    [(SBFolder *)self->_folder removeFolderObserver:self];
    objc_storeStrong(&self->_location, a4);
    objc_storeStrong(&self->_folder, a3);
    iconListView = self->_iconListView;
    v9 = [v10 listAtIndex:0];
    [(SBIconListView *)iconListView setModel:v9];

    [(SBIconListView *)self->_iconListView setIconLocation:v7];
    [v10 addFolderObserver:self];
  }
}

- (SBIconListView)iconListView
{
  v3 = [(SBHLibraryCategoryIconViewController *)self view];
  iconListView = self->_iconListView;

  return iconListView;
}

- (void)_setLockedIfPossible:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if (_os_feature_enabled_impl())
  {
    if ([(SBHLibraryCategoryIconViewController *)self isLocked]== v5 || ![(SBHLibraryCategoryIconViewController *)self _canBeLocked])
    {
      if (![(SBHLibraryCategoryIconViewController *)self _canBeLocked])
      {
        self->_locked = 0;
        lockedView = self->_lockedView;
        if (lockedView)
        {
          [(SBIconListView *)lockedView removeFromSuperview];
          v8 = self->_lockedView;
          self->_lockedView = 0;
        }
      }
    }

    else
    {
      self->_locked = v5;

      [(SBHLibraryCategoryIconViewController *)self _updateLockedViewForLocked:v5 animated:v4];
    }
  }
}

- (BOOL)_canBeLocked
{
  v2 = [(SBHLibraryCategory *)self->_category categoryIdentifier];
  v3 = [v2 predictionCategoryID];

  return v3 == 7;
}

- (id)_createLockedModel
{
  v2 = [[SBIconListModel alloc] initWithFolder:0 gridSize:131074];
  v3 = 3;
  do
  {
    v4 = objc_alloc_init(SBHGhostAppIcon);
    v5 = [(SBIconListModel *)v2 addIcon:v4];

    --v3;
  }

  while (v3);
  v6 = [[SBFolder alloc] initWithDisplayName:&stru_1F3D472A8 maxListCount:1 listGridSize:131074];
  v7 = 4;
  do
  {
    v8 = objc_alloc_init(SBHGhostAppIcon);
    v9 = [(SBFolder *)v6 addIcon:v8];

    --v7;
  }

  while (v7);
  v10 = [(SBFolderIcon *)[SBHLibraryAdditionalItemsIndicatorIcon alloc] initWithFolder:v6];
  v11 = [(SBIconListModel *)v2 addIcon:v10];

  return v2;
}

- (id)_createLockedView
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = [(SBHLibraryCategoryIconViewController *)self _createLockedModel];
  v4 = [(SBHLibraryCategoryIconViewController *)self _createIconListViewWithModel:v3];
  [v4 setAutoresizingMask:18];
  v5 = [(SBHLibraryCategoryIconViewController *)self view];
  [v5 bounds];
  [v4 setFrame:?];

  [(SBHLibraryCategoryIconViewController *)self iconImageInfo];
  [v4 _setContinuousCornerRadius:v6];
  [v4 setUserInteractionEnabled:1];
  v7 = [objc_alloc(MEMORY[0x1E69DCC48]) initWithTarget:self action:sel__handleTapOnLockedView_];
  lockedViewLongPress = self->_lockedViewLongPress;
  self->_lockedViewLongPress = v7;

  [(UILongPressGestureRecognizer *)self->_lockedViewLongPress setDelegate:self];
  [(UILongPressGestureRecognizer *)self->_lockedViewLongPress setMinimumPressDuration:0.0];
  v11[0] = self->_lockedViewLongPress;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  [v4 setGestureRecognizers:v9];

  [v4 setAlpha:0.0];

  return v4;
}

- (void)_updateLockedViewForLocked:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = self->_lockedView;
  v8 = [(SBHLibraryCategoryIconViewController *)self view];
  v9 = self->_iconListView;
  if (v5 && !v7)
  {
    v7 = [(SBHLibraryCategoryIconViewController *)self _createLockedView];
    [v8 addSubview:v7];
    objc_storeStrong(&self->_lockedView, v7);
  }

  if (v5)
  {
    v10 = 1.0;
  }

  else
  {
    v10 = 0.0;
  }

  if (v5)
  {
    v11 = 0.0;
  }

  else
  {
    v11 = 1.0;
  }

  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __76__SBHLibraryCategoryIconViewController__updateLockedViewForLocked_animated___block_invoke;
  v19 = &unk_1E808A370;
  v12 = v7;
  v20 = v12;
  v21 = v9;
  v22 = v10;
  v23 = v11;
  v13 = v9;
  v14 = _Block_copy(&v16);
  v15 = v14;
  if (v4)
  {
    [MEMORY[0x1E69DD250] animateWithDuration:0 delay:v14 options:0 animations:0.3 completion:{0.0, v16, v17, v18, v19, v20, v21, *&v22, *&v23}];
  }

  else
  {
    (*(v14 + 2))(v14);
  }
}

uint64_t __76__SBHLibraryCategoryIconViewController__updateLockedViewForLocked_animated___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setAlpha:*(a1 + 48)];
  v2 = *(a1 + 40);
  v3 = *(a1 + 56);

  return [v2 setAlpha:v3];
}

- (void)_handleTapOnLockedView:(id)a3
{
  v4 = a3;
  v5 = self->_lockedView;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __63__SBHLibraryCategoryIconViewController__handleTapOnLockedView___block_invoke;
  aBlock[3] = &unk_1E8088C90;
  v6 = v5;
  v11 = v6;
  v7 = _Block_copy(aBlock);
  if ([v4 state] == 1)
  {
    [(SBIconListView *)v6 setAlpha:0.5];
  }

  else if ([v4 state] == 3)
  {
    [MEMORY[0x1E69DD250] animateWithDuration:327684 delay:v7 options:0 animations:0.2 completion:0.0];
    if (tapInsideView(v4, v6))
    {
      v8 = [MEMORY[0x1E698B0D8] sharedGuard];
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __63__SBHLibraryCategoryIconViewController__handleTapOnLockedView___block_invoke_2;
      v9[3] = &unk_1E808E538;
      v9[4] = self;
      [v8 authenticateUnconditionallyWithCompletion:v9];
    }
  }

  else if ([v4 state] == 2 && !tapInsideView(v4, v6) || objc_msgSend(v4, "state") == 4 || objc_msgSend(v4, "state") == 5)
  {
    [MEMORY[0x1E69DD250] animateWithDuration:327684 delay:v7 options:0 animations:0.2 completion:0.0];
  }
}

void __63__SBHLibraryCategoryIconViewController__handleTapOnLockedView___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__SBHLibraryCategoryIconViewController__handleTapOnLockedView___block_invoke_3;
  block[3] = &unk_1E808D108;
  v9 = a2;
  block[4] = *(a1 + 32);
  v8 = v5;
  v6 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __63__SBHLibraryCategoryIconViewController__handleTapOnLockedView___block_invoke_3(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if (*(a1 + 48) == 1)
  {
    v2 = *(a1 + 32);

    [v2 _setLockedIfPossible:0 animated:1];
  }

  else
  {
    v3 = SBLogProtectedApps();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 40);
      v5 = 138412290;
      v6 = v4;
      _os_log_impl(&dword_1BEB18000, v3, OS_LOG_TYPE_DEFAULT, "Failed to unlock hidden library pod with error:%@", &v5, 0xCu);
    }
  }
}

- (BOOL)gestureRecognizer:(id)a3 shouldRequireFailureOfGestureRecognizer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = 0;
  if (self->_lockedViewLongPress == v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = 1;
    }
  }

  return v8;
}

- (void)categoryWillUpdate:(id)a3
{
  v4 = [a3 compactPodFolder];
  v5 = [v4 lists];
  v6 = [v5 firstObject];
  v7 = [v6 icons];
  v8 = objc_opt_self();
  v17 = [v7 bs_firstObjectOfClass:v8];

  v9 = [(SBHLibraryCategoryIconViewController *)self iconListView];
  v10 = [v9 displayedIconViewForIcon:v17];
  v11 = [v10 _iconImageView];

  v12 = objc_opt_self();
  if (objc_opt_isKindOfClass())
  {
    v13 = v11;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  v15 = [v14 disableImageUpdatesForReason:@"Updating Category"];

  preventFolderUpdateAssertion = self->_preventFolderUpdateAssertion;
  self->_preventFolderUpdateAssertion = v15;
}

- (void)categoryDidUpdate:(id)a3
{
  [(BSInvalidatable *)self->_preventFolderUpdateAssertion invalidate];
  preventFolderUpdateAssertion = self->_preventFolderUpdateAssertion;
  self->_preventFolderUpdateAssertion = 0;
}

- (void)folder:(id)a3 didAddList:(id)a4
{
  v9 = a3;
  v5 = [(SBHLibraryCategoryIconViewController *)self bs_isAppearingOrAppeared];
  v6 = [(SBIconListView *)self->_iconListView model];

  if (!v6)
  {
    iconListView = self->_iconListView;
    v8 = [v9 listAtIndex:0];
    [(SBIconListView *)iconListView setModel:v8];

    [(SBIconListView *)self->_iconListView layoutIconsIfNeededWithAnimationType:v5 - 1 options:0];
  }
}

- (void)folder:(id)a3 didRemoveLists:(id)a4 atIndexes:(id)a5
{
  v6 = a4;
  v7 = [(SBHLibraryCategoryIconViewController *)self bs_isAppearingOrAppeared];
  v8 = [(SBIconListView *)self->_iconListView model];
  v9 = [v6 containsObject:v8];

  if (v9)
  {
    [(SBIconListView *)self->_iconListView setModel:0];
    iconListView = self->_iconListView;

    [(SBIconListView *)iconListView layoutIconsIfNeededWithAnimationType:v7 - 1 options:0];
  }
}

- (id)iconViewForIcon:(id)a3 location:(id)a4
{
  v6 = a3;
  iconListView = self->_iconListView;
  v8 = a4;
  v9 = [(SBIconListView *)iconListView iconLocation];
  v10 = [v9 isEqual:v8];

  if (v10)
  {
    v11 = [(SBIconListView *)self->_iconListView iconViewForIcon:v6];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)firstIconViewForIcon:(id)a3 inLocations:(id)a4
{
  v6 = a3;
  iconListView = self->_iconListView;
  v8 = a4;
  v9 = [(SBIconListView *)iconListView iconLocation];
  v10 = [v8 containsObject:v9];

  if (v10)
  {
    v11 = [(SBIconListView *)self->_iconListView iconViewForIcon:v6];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)firstIconViewForIcon:(id)a3 excludingLocations:(id)a4
{
  v6 = MEMORY[0x1E695DFA8];
  iconListView = self->_iconListView;
  v8 = a4;
  v9 = a3;
  v10 = [(SBIconListView *)iconListView iconLocation];
  v11 = [v6 setWithObject:v10];

  [v11 minusSet:v8];
  v12 = [v11 allObjects];
  v13 = [(SBHLibraryCategoryIconViewController *)self firstIconViewForIcon:v9 inLocations:v12];

  return v13;
}

- (BOOL)isDisplayingIcon:(id)a3 inLocation:(id)a4
{
  v6 = a3;
  iconListView = self->_iconListView;
  v8 = a4;
  v9 = [(SBIconListView *)iconListView iconLocation];
  v10 = [v9 isEqual:v8];

  if (v10)
  {
    v11 = [(SBHLibraryCategoryIconViewController *)self isDisplayingIcon:v6];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)isDisplayingIcon:(id)a3 inLocations:(id)a4
{
  v6 = a3;
  iconListView = self->_iconListView;
  v8 = a4;
  v9 = [(SBIconListView *)iconListView iconLocation];
  v10 = [v8 containsObject:v9];

  if (v10)
  {
    v11 = [(SBHLibraryCategoryIconViewController *)self isDisplayingIcon:v6];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)isDisplayingIconView:(id)a3 inLocation:(id)a4
{
  v6 = a3;
  iconListView = self->_iconListView;
  v8 = a4;
  v9 = [(SBIconListView *)iconListView iconLocation];
  v10 = [v9 isEqual:v8];

  if (v10)
  {
    v11 = [(SBIconListView *)self->_iconListView isDisplayingIconView:v6];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)enumerateDisplayedIconViewsForIcon:(id)a3 usingBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  iconListView = self->_iconListView;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __86__SBHLibraryCategoryIconViewController_enumerateDisplayedIconViewsForIcon_usingBlock___block_invoke;
  v11[3] = &unk_1E808E560;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [(SBIconListView *)iconListView enumerateIconViewsUsingBlock:v11];
}

void __86__SBHLibraryCategoryIconViewController_enumerateDisplayedIconViewsForIcon_usingBlock___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 icon];
  v4 = [v3 isEqual:*(a1 + 32)];

  if (v4)
  {
    (*(*(a1 + 40) + 16))();
  }
}

- (void)enumerateDisplayedIconViewsUsingBlock:(id)a3
{
  v4 = a3;
  iconListView = self->_iconListView;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __78__SBHLibraryCategoryIconViewController_enumerateDisplayedIconViewsUsingBlock___block_invoke;
  v7[3] = &unk_1E8089310;
  v8 = v4;
  v6 = v4;
  [(SBIconListView *)iconListView enumerateIconViewsUsingBlock:v7];
}

- (void)setIconImageInfo:(SBIconImageInfo *)a3
{
  v7 = v6;
  v8 = v5;
  v9 = v4;
  v10 = v3;
  p_iconImageInfo = &self->_iconImageInfo;
  if (!SBIconImageInfoEqualToIconImageInfo(self->_iconImageInfo.size.width, self->_iconImageInfo.size.height, self->_iconImageInfo.scale, self->_iconImageInfo.continuousCornerRadius, v3, v4, v5, v6))
  {
    p_iconImageInfo->size.width = v10;
    p_iconImageInfo->size.height = v9;
    p_iconImageInfo->scale = v8;
    p_iconImageInfo->continuousCornerRadius = v7;
    v13 = [(SBHLibraryCategoryIconViewController *)self view];
    [v13 _setContinuousCornerRadius:v7];
  }
}

- (void)setEditing:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_editing != a3)
  {
    v5 = a4;
    self->_editing = a3;
    [(SBIconListView *)self->_iconListView setEditing:?];
    iconListView = self->_iconListView;

    [(SBIconListView *)iconListView updateEditingStateAnimated:v5];
  }
}

- (void)setContentVisibility:(unint64_t)a3
{
  if (self->_contentVisibility != a3)
  {
    self->_contentVisibility = a3;
    if (!SBHContentVisibilityIsVisible(a3))
    {
      [(SBHLibraryCategoryIconViewController *)self _setLockedIfPossible:1 animated:1];
    }

    iconListView = self->_iconListView;

    [(SBIconListView *)iconListView setContentVisibility:a3];
  }
}

- (CGRect)visibleBounds
{
  [(SBHLibraryCategoryIconViewController *)self iconImageInfo];
  v3 = v2;
  v5 = v4;
  v6 = 0.0;
  v7 = 0.0;
  result.size.height = v5;
  result.size.width = v3;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

- (SBIconViewProviding)iconViewProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_iconViewProvider);

  return WeakRetained;
}

@end