@interface SBHLibraryCategoryIconViewController
- (BOOL)_canBeLocked;
- (BOOL)gestureRecognizer:(id)recognizer shouldRequireFailureOfGestureRecognizer:(id)gestureRecognizer;
- (BOOL)isDisplayingIcon:(id)icon inLocation:(id)location;
- (BOOL)isDisplayingIcon:(id)icon inLocations:(id)locations;
- (BOOL)isDisplayingIconView:(id)view inLocation:(id)location;
- (CGRect)visibleBounds;
- (SBIconListView)iconListView;
- (SBIconViewProviding)iconViewProvider;
- (id)_createIconListViewWithModel:(id)model;
- (id)_createLockedModel;
- (id)_createLockedView;
- (id)firstIconViewForIcon:(id)icon excludingLocations:(id)locations;
- (id)firstIconViewForIcon:(id)icon inLocations:(id)locations;
- (id)iconViewForIcon:(id)icon location:(id)location;
- (void)_handleTapOnLockedView:(id)view;
- (void)_setLockedIfPossible:(BOOL)possible animated:(BOOL)animated;
- (void)_updateLockedViewForLocked:(BOOL)locked animated:(BOOL)animated;
- (void)categoryDidUpdate:(id)update;
- (void)categoryWillUpdate:(id)update;
- (void)enumerateDisplayedIconViewsForIcon:(id)icon usingBlock:(id)block;
- (void)enumerateDisplayedIconViewsUsingBlock:(id)block;
- (void)folder:(id)folder didAddList:(id)list;
- (void)folder:(id)folder didRemoveLists:(id)lists atIndexes:(id)indexes;
- (void)setContentVisibility:(unint64_t)visibility;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)setIconImageInfo:(SBIconImageInfo *)info;
- (void)updateCategory:(id)category location:(id)location;
- (void)updateFolder:(id)folder location:(id)location;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation SBHLibraryCategoryIconViewController

- (void)viewDidLoad
{
  v19.receiver = self;
  v19.super_class = SBHLibraryCategoryIconViewController;
  [(SBHLibraryCategoryIconViewController *)&v19 viewDidLoad];
  view = [(SBHLibraryCategoryIconViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  folder = [(SBHLibraryCategoryIconViewController *)self folder];
  iconListView = self->_iconListView;
  if (!iconListView)
  {
    v14 = [folder listAtIndex:0];
    v15 = [(SBHLibraryCategoryIconViewController *)self _createIconListViewWithModel:v14];
    v16 = self->_iconListView;
    self->_iconListView = v15;

    view2 = [(SBHLibraryCategoryIconViewController *)self view];
    [view2 addSubview:self->_iconListView];

    iconListView = self->_iconListView;
  }

  [(SBIconListView *)iconListView setFrame:v5, v7, v9, v11];
  view3 = [(SBHLibraryCategoryIconViewController *)self view];
  [view3 sbh_applyAppLibraryPodGlass];

  [(SBHLibraryCategoryIconViewController *)self _setLockedIfPossible:1 animated:0];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = SBHLibraryCategoryIconViewController;
  [(SBHLibraryCategoryIconViewController *)&v4 viewWillAppear:appear];
  [(SBHLibraryCategoryIconViewController *)self _setLockedIfPossible:1 animated:0];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = SBHLibraryCategoryIconViewController;
  [(SBHLibraryCategoryIconViewController *)&v4 viewDidDisappear:disappear];
  [(SBHLibraryCategoryIconViewController *)self _setLockedIfPossible:1 animated:0];
}

- (id)_createIconListViewWithModel:(id)model
{
  modelCopy = model;
  location = [(SBHLibraryCategoryIconViewController *)self location];
  v6 = location;
  v7 = @"SBIconLocationAppLibraryCategoryPod";
  if (location)
  {
    v7 = location;
  }

  v8 = v7;

  v9 = [SBHLibraryCategoryPodIconListView alloc];
  listLayoutProvider = [(SBHLibraryCategoryIconViewController *)self listLayoutProvider];
  iconViewProvider = [(SBHLibraryCategoryIconViewController *)self iconViewProvider];
  v12 = [(SBIconListView *)v9 initWithModel:modelCopy layoutProvider:listLayoutProvider iconLocation:v8 orientation:1 iconViewProvider:iconViewProvider];

  [(SBIconListView *)v12 setUsesGlassGroup:0];
  iconImageCache = [(SBHLibraryCategoryIconViewController *)self iconImageCache];
  [(SBIconListView *)v12 setIconImageCache:iconImageCache];

  folderIconImageCache = [(SBHLibraryCategoryIconViewController *)self folderIconImageCache];
  [(SBIconListView *)v12 setFolderIconImageCache:folderIconImageCache];

  [(SBIconListView *)v12 setIconViewConfigurationOptions:2];
  [(SBIconListView *)v12 setEditing:[(SBHLibraryCategoryIconViewController *)self isEditing]];
  [(SBHLibraryCategoryPodIconListView *)v12 setAutoresizingMask:18];

  return v12;
}

- (void)updateCategory:(id)category location:(id)location
{
  categoryCopy = category;
  preventFolderUpdateAssertion = self->_preventFolderUpdateAssertion;
  locationCopy = location;
  [(BSInvalidatable *)preventFolderUpdateAssertion invalidate];
  v9 = self->_preventFolderUpdateAssertion;
  self->_preventFolderUpdateAssertion = 0;

  [(SBHLibraryCategory *)self->_category removeObserver:self];
  category = self->_category;
  self->_category = categoryCopy;
  v12 = categoryCopy;

  compactPodFolder = [(SBHLibraryCategory *)v12 compactPodFolder];
  [(SBHLibraryCategoryIconViewController *)self updateFolder:compactPodFolder location:locationCopy];

  [(SBHLibraryCategoryIconViewController *)self _setLockedIfPossible:1 animated:0];
  [(SBHLibraryCategory *)v12 addObserver:self];
}

- (void)updateFolder:(id)folder location:(id)location
{
  folderCopy = folder;
  locationCopy = location;
  if (![folderCopy isEqual:self->_folder] || !-[NSString isEqualToString:](self->_location, "isEqualToString:", locationCopy))
  {
    [(SBFolder *)self->_folder removeFolderObserver:self];
    objc_storeStrong(&self->_location, location);
    objc_storeStrong(&self->_folder, folder);
    iconListView = self->_iconListView;
    v9 = [folderCopy listAtIndex:0];
    [(SBIconListView *)iconListView setModel:v9];

    [(SBIconListView *)self->_iconListView setIconLocation:locationCopy];
    [folderCopy addFolderObserver:self];
  }
}

- (SBIconListView)iconListView
{
  view = [(SBHLibraryCategoryIconViewController *)self view];
  iconListView = self->_iconListView;

  return iconListView;
}

- (void)_setLockedIfPossible:(BOOL)possible animated:(BOOL)animated
{
  animatedCopy = animated;
  possibleCopy = possible;
  if (_os_feature_enabled_impl())
  {
    if ([(SBHLibraryCategoryIconViewController *)self isLocked]== possibleCopy || ![(SBHLibraryCategoryIconViewController *)self _canBeLocked])
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
      self->_locked = possibleCopy;

      [(SBHLibraryCategoryIconViewController *)self _updateLockedViewForLocked:possibleCopy animated:animatedCopy];
    }
  }
}

- (BOOL)_canBeLocked
{
  categoryIdentifier = [(SBHLibraryCategory *)self->_category categoryIdentifier];
  predictionCategoryID = [categoryIdentifier predictionCategoryID];

  return predictionCategoryID == 7;
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
  _createLockedModel = [(SBHLibraryCategoryIconViewController *)self _createLockedModel];
  v4 = [(SBHLibraryCategoryIconViewController *)self _createIconListViewWithModel:_createLockedModel];
  [v4 setAutoresizingMask:18];
  view = [(SBHLibraryCategoryIconViewController *)self view];
  [view bounds];
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

- (void)_updateLockedViewForLocked:(BOOL)locked animated:(BOOL)animated
{
  animatedCopy = animated;
  lockedCopy = locked;
  _createLockedView = self->_lockedView;
  view = [(SBHLibraryCategoryIconViewController *)self view];
  v9 = self->_iconListView;
  if (lockedCopy && !_createLockedView)
  {
    _createLockedView = [(SBHLibraryCategoryIconViewController *)self _createLockedView];
    [view addSubview:_createLockedView];
    objc_storeStrong(&self->_lockedView, _createLockedView);
  }

  if (lockedCopy)
  {
    v10 = 1.0;
  }

  else
  {
    v10 = 0.0;
  }

  if (lockedCopy)
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
  v12 = _createLockedView;
  v20 = v12;
  v21 = v9;
  v22 = v10;
  v23 = v11;
  v13 = v9;
  v14 = _Block_copy(&v16);
  v15 = v14;
  if (animatedCopy)
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

- (void)_handleTapOnLockedView:(id)view
{
  viewCopy = view;
  v5 = self->_lockedView;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __63__SBHLibraryCategoryIconViewController__handleTapOnLockedView___block_invoke;
  aBlock[3] = &unk_1E8088C90;
  v6 = v5;
  v11 = v6;
  v7 = _Block_copy(aBlock);
  if ([viewCopy state] == 1)
  {
    [(SBIconListView *)v6 setAlpha:0.5];
  }

  else if ([viewCopy state] == 3)
  {
    [MEMORY[0x1E69DD250] animateWithDuration:327684 delay:v7 options:0 animations:0.2 completion:0.0];
    if (tapInsideView(viewCopy, v6))
    {
      mEMORY[0x1E698B0D8] = [MEMORY[0x1E698B0D8] sharedGuard];
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __63__SBHLibraryCategoryIconViewController__handleTapOnLockedView___block_invoke_2;
      v9[3] = &unk_1E808E538;
      v9[4] = self;
      [mEMORY[0x1E698B0D8] authenticateUnconditionallyWithCompletion:v9];
    }
  }

  else if ([viewCopy state] == 2 && !tapInsideView(viewCopy, v6) || objc_msgSend(viewCopy, "state") == 4 || objc_msgSend(viewCopy, "state") == 5)
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

- (BOOL)gestureRecognizer:(id)recognizer shouldRequireFailureOfGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  gestureRecognizerCopy = gestureRecognizer;
  v8 = 0;
  if (self->_lockedViewLongPress == recognizerCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = 1;
    }
  }

  return v8;
}

- (void)categoryWillUpdate:(id)update
{
  compactPodFolder = [update compactPodFolder];
  lists = [compactPodFolder lists];
  firstObject = [lists firstObject];
  icons = [firstObject icons];
  v8 = objc_opt_self();
  v17 = [icons bs_firstObjectOfClass:v8];

  iconListView = [(SBHLibraryCategoryIconViewController *)self iconListView];
  v10 = [iconListView displayedIconViewForIcon:v17];
  _iconImageView = [v10 _iconImageView];

  v12 = objc_opt_self();
  if (objc_opt_isKindOfClass())
  {
    v13 = _iconImageView;
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

- (void)categoryDidUpdate:(id)update
{
  [(BSInvalidatable *)self->_preventFolderUpdateAssertion invalidate];
  preventFolderUpdateAssertion = self->_preventFolderUpdateAssertion;
  self->_preventFolderUpdateAssertion = 0;
}

- (void)folder:(id)folder didAddList:(id)list
{
  folderCopy = folder;
  bs_isAppearingOrAppeared = [(SBHLibraryCategoryIconViewController *)self bs_isAppearingOrAppeared];
  model = [(SBIconListView *)self->_iconListView model];

  if (!model)
  {
    iconListView = self->_iconListView;
    v8 = [folderCopy listAtIndex:0];
    [(SBIconListView *)iconListView setModel:v8];

    [(SBIconListView *)self->_iconListView layoutIconsIfNeededWithAnimationType:bs_isAppearingOrAppeared - 1 options:0];
  }
}

- (void)folder:(id)folder didRemoveLists:(id)lists atIndexes:(id)indexes
{
  listsCopy = lists;
  bs_isAppearingOrAppeared = [(SBHLibraryCategoryIconViewController *)self bs_isAppearingOrAppeared];
  model = [(SBIconListView *)self->_iconListView model];
  v9 = [listsCopy containsObject:model];

  if (v9)
  {
    [(SBIconListView *)self->_iconListView setModel:0];
    iconListView = self->_iconListView;

    [(SBIconListView *)iconListView layoutIconsIfNeededWithAnimationType:bs_isAppearingOrAppeared - 1 options:0];
  }
}

- (id)iconViewForIcon:(id)icon location:(id)location
{
  iconCopy = icon;
  iconListView = self->_iconListView;
  locationCopy = location;
  iconLocation = [(SBIconListView *)iconListView iconLocation];
  v10 = [iconLocation isEqual:locationCopy];

  if (v10)
  {
    v11 = [(SBIconListView *)self->_iconListView iconViewForIcon:iconCopy];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)firstIconViewForIcon:(id)icon inLocations:(id)locations
{
  iconCopy = icon;
  iconListView = self->_iconListView;
  locationsCopy = locations;
  iconLocation = [(SBIconListView *)iconListView iconLocation];
  v10 = [locationsCopy containsObject:iconLocation];

  if (v10)
  {
    v11 = [(SBIconListView *)self->_iconListView iconViewForIcon:iconCopy];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)firstIconViewForIcon:(id)icon excludingLocations:(id)locations
{
  v6 = MEMORY[0x1E695DFA8];
  iconListView = self->_iconListView;
  locationsCopy = locations;
  iconCopy = icon;
  iconLocation = [(SBIconListView *)iconListView iconLocation];
  v11 = [v6 setWithObject:iconLocation];

  [v11 minusSet:locationsCopy];
  allObjects = [v11 allObjects];
  v13 = [(SBHLibraryCategoryIconViewController *)self firstIconViewForIcon:iconCopy inLocations:allObjects];

  return v13;
}

- (BOOL)isDisplayingIcon:(id)icon inLocation:(id)location
{
  iconCopy = icon;
  iconListView = self->_iconListView;
  locationCopy = location;
  iconLocation = [(SBIconListView *)iconListView iconLocation];
  v10 = [iconLocation isEqual:locationCopy];

  if (v10)
  {
    v11 = [(SBHLibraryCategoryIconViewController *)self isDisplayingIcon:iconCopy];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)isDisplayingIcon:(id)icon inLocations:(id)locations
{
  iconCopy = icon;
  iconListView = self->_iconListView;
  locationsCopy = locations;
  iconLocation = [(SBIconListView *)iconListView iconLocation];
  v10 = [locationsCopy containsObject:iconLocation];

  if (v10)
  {
    v11 = [(SBHLibraryCategoryIconViewController *)self isDisplayingIcon:iconCopy];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)isDisplayingIconView:(id)view inLocation:(id)location
{
  viewCopy = view;
  iconListView = self->_iconListView;
  locationCopy = location;
  iconLocation = [(SBIconListView *)iconListView iconLocation];
  v10 = [iconLocation isEqual:locationCopy];

  if (v10)
  {
    v11 = [(SBIconListView *)self->_iconListView isDisplayingIconView:viewCopy];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)enumerateDisplayedIconViewsForIcon:(id)icon usingBlock:(id)block
{
  iconCopy = icon;
  blockCopy = block;
  iconListView = self->_iconListView;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __86__SBHLibraryCategoryIconViewController_enumerateDisplayedIconViewsForIcon_usingBlock___block_invoke;
  v11[3] = &unk_1E808E560;
  v12 = iconCopy;
  v13 = blockCopy;
  v9 = blockCopy;
  v10 = iconCopy;
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

- (void)enumerateDisplayedIconViewsUsingBlock:(id)block
{
  blockCopy = block;
  iconListView = self->_iconListView;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __78__SBHLibraryCategoryIconViewController_enumerateDisplayedIconViewsUsingBlock___block_invoke;
  v7[3] = &unk_1E8089310;
  v8 = blockCopy;
  v6 = blockCopy;
  [(SBIconListView *)iconListView enumerateIconViewsUsingBlock:v7];
}

- (void)setIconImageInfo:(SBIconImageInfo *)info
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
    view = [(SBHLibraryCategoryIconViewController *)self view];
    [view _setContinuousCornerRadius:v7];
  }
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  if (self->_editing != editing)
  {
    animatedCopy = animated;
    self->_editing = editing;
    [(SBIconListView *)self->_iconListView setEditing:?];
    iconListView = self->_iconListView;

    [(SBIconListView *)iconListView updateEditingStateAnimated:animatedCopy];
  }
}

- (void)setContentVisibility:(unint64_t)visibility
{
  if (self->_contentVisibility != visibility)
  {
    self->_contentVisibility = visibility;
    if (!SBHContentVisibilityIsVisible(visibility))
    {
      [(SBHLibraryCategoryIconViewController *)self _setLockedIfPossible:1 animated:1];
    }

    iconListView = self->_iconListView;

    [(SBIconListView *)iconListView setContentVisibility:visibility];
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