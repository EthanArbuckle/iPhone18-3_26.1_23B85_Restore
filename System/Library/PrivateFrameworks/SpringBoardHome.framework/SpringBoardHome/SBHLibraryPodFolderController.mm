@interface SBHLibraryPodFolderController
- (BOOL)_ourFolderContainsFolder:(id)folder;
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (BOOL)isDisplayingIcon:(id)icon;
- (BOOL)isDisplayingIcon:(id)icon inLocation:(id)location;
- (BOOL)isDisplayingIcon:(id)icon inLocations:(id)locations;
- (BOOL)isDisplayingIconView:(id)view;
- (BOOL)isDisplayingIconView:(id)view inLocation:(id)location;
- (BOOL)isPresentingIconLocation:(id)location;
- (BOOL)shouldOpenFolderIcon:(id)icon;
- (BSUIScrollViewDelegate)librarySearchControllerScrollViewDelegate;
- (Class)controllerClassForFolder:(id)folder;
- (NSSet)presentedIconLocations;
- (SBHLibraryPodFolderController)initWithConfiguration:(id)configuration;
- (SBHLibraryPodFolderControllerDelegate)podFolderControllerDelegate;
- (SBIconListView)currentIconListView;
- (UIView)containerView;
- (id)_nestingViewControllerForPushing;
- (id)contentScrollView;
- (id)firstIconViewForIcon:(id)icon;
- (id)firstIconViewForIcon:(id)icon excludingLocations:(id)locations;
- (id)firstIconViewForIcon:(id)icon inLocations:(id)locations;
- (id)firstNonSuggestionsOrRecentsIconViewForIcon:(id)icon;
- (id)folderIconViewForIcon:(id)icon folderRelativeIconIndexPath:(id *)path;
- (id)iconViewForIcon:(id)icon location:(id)location options:(unint64_t)options;
- (void)_reloadAppIcons;
- (void)categoriesDataSource:(id)source shouldAnimateLayoutForCategories:(id)categories;
- (void)categoriesDataSourceNeedsAnimatedReload:(id)reload;
- (void)configureInnerFolderControllerConfiguration:(id)configuration;
- (void)enumerateDisplayedIconViewsForIcon:(id)icon usingBlock:(id)block;
- (void)enumerateDisplayedIconViewsUsingBlock:(id)block;
- (void)enumerateNonSuggestionsOrRecentsViewControllersUsingBlock:(id)block;
- (void)enumerateViewControllersUsingBlock:(id)block;
- (void)handleTapGesture:(id)gesture;
- (void)iconListView:(id)view didAddIconView:(id)iconView;
- (void)iconListView:(id)view didRemoveIconView:(id)iconView;
- (void)iconViewDidHandleTap:(id)tap;
- (void)pushNestedViewController:(id)controller animated:(BOOL)animated withCompletion:(id)completion;
- (void)setContentAlpha:(double)alpha;
- (void)setLibraryCategoryMap:(id)map;
- (void)setLibrarySearchControllerScrollViewDelegate:(id)delegate;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation SBHLibraryPodFolderController

- (SBHLibraryPodFolderController)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = configurationCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v18.receiver = self;
  v18.super_class = SBHLibraryPodFolderController;
  v7 = [(SBFolderController *)&v18 initWithConfiguration:configurationCopy];
  if (v7)
  {
    iconLocation = [objc_opt_class() iconLocation];
    v9 = [iconLocation isEqualToString:@"SBIconLocationAppLibrary"];

    if (v9)
    {
      v10 = [SBHLibraryCategoriesFolderDataSource alloc];
      categoriesFolder = [v6 categoriesFolder];
      v12 = [(SBHLibraryCategoriesFolderDataSource *)v10 initWithCategoriesFolder:categoriesFolder];
      dataSource = v7->_dataSource;
      v7->_dataSource = v12;

      [(SBHLibraryCategoriesFolderDataSource *)v7->_dataSource addObserver:v7];
      categoriesFolder2 = [(SBHLibraryCategoriesFolderDataSource *)v7->_dataSource categoriesFolder];
      [(SBFolderController *)v7 setFolder:categoriesFolder2];
    }

    mEMORY[0x1E698AEB0] = [MEMORY[0x1E698AEB0] sharedInstance];
    loggingClient = v7->_loggingClient;
    v7->_loggingClient = mEMORY[0x1E698AEB0];
  }

  return v7;
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = SBHLibraryPodFolderController;
  [(SBFolderController *)&v7 viewDidLoad];
  podFolderView = [(SBHLibraryPodFolderController *)self podFolderView];
  v4 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel_handleTapGesture_];
  tapToDismissRecognizer = self->_tapToDismissRecognizer;
  self->_tapToDismissRecognizer = v4;

  [(UITapGestureRecognizer *)self->_tapToDismissRecognizer setAllowableMovement:10.0];
  [(UITapGestureRecognizer *)self->_tapToDismissRecognizer setDelegate:self];
  scalingView = [podFolderView scalingView];
  [scalingView addGestureRecognizer:self->_tapToDismissRecognizer];
}

- (id)contentScrollView
{
  podFolderView = [(SBHLibraryPodFolderController *)self podFolderView];
  podScrollView = [podFolderView podScrollView];

  return podScrollView;
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = SBHLibraryPodFolderController;
  [(SBFolderController *)&v4 viewWillAppear:appear];
  [(SBHLibraryPodFolderController *)self _updateContentOverlayInsetsForSelfAndChildren];
  [(SBHLibraryPodFolderController *)self _reloadAppIcons];
}

- (void)handleTapGesture:(id)gesture
{
  gestureCopy = gesture;
  tapToDismissRecognizer = [(SBHLibraryPodFolderController *)self tapToDismissRecognizer];

  v5 = gestureCopy;
  if (tapToDismissRecognizer == gestureCopy)
  {
    v6 = [gestureCopy state] == 3;
    v5 = gestureCopy;
    if (v6)
    {
      podFolderControllerDelegate = [(SBHLibraryPodFolderController *)self podFolderControllerDelegate];
      [podFolderControllerDelegate libraryPodFolderControllerRequestsDismissal:self];

      v5 = gestureCopy;
    }
  }
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  gestureRecognizerCopy = gestureRecognizer;
  recognizerCopy = recognizer;
  tapToDismissRecognizer = [(SBHLibraryPodFolderController *)self tapToDismissRecognizer];

  if (tapToDismissRecognizer == recognizerCopy)
  {
    contentScrollView = [(SBHLibraryPodFolderController *)self contentScrollView];
    panGestureRecognizer = [contentScrollView panGestureRecognizer];
    v9 = panGestureRecognizer == gestureRecognizerCopy;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  v28 = *MEMORY[0x1E69E9840];
  recognizerCopy = recognizer;
  touchCopy = touch;
  tapToDismissRecognizer = [(SBHLibraryPodFolderController *)self tapToDismissRecognizer];

  v8 = 1;
  if (tapToDismissRecognizer == recognizerCopy)
  {
    v23 = 0;
    v24 = &v23;
    v25 = 0x2020000000;
    v26 = 1;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    iconListViews = [(SBFolderController *)self iconListViews];
    v10 = [iconListViews countByEnumeratingWithState:&v19 objects:v27 count:16];
    if (v10)
    {
      v11 = *v20;
      do
      {
        v12 = 0;
        do
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(iconListViews);
          }

          v13 = *(*(&v19 + 1) + 8 * v12);
          v16[0] = MEMORY[0x1E69E9820];
          v16[1] = 3221225472;
          v16[2] = __70__SBHLibraryPodFolderController_gestureRecognizer_shouldReceiveTouch___block_invoke;
          v16[3] = &unk_1E808AE98;
          v17 = touchCopy;
          v18 = &v23;
          [v13 enumerateIconViewsUsingBlock:v16];

          ++v12;
        }

        while (v10 != v12);
        v10 = [iconListViews countByEnumeratingWithState:&v19 objects:v27 count:16];
      }

      while (v10);
    }

    v8 = *(v24 + 24);
    _Block_object_dispose(&v23, 8);
  }

  return v8 & 1;
}

BOOL __70__SBHLibraryPodFolderController_gestureRecognizer_shouldReceiveTouch___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = *(a1 + 32);
  v7 = a2;
  [v6 locationInView:v7];
  v9 = v8;
  v11 = v10;
  [v7 bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v22.origin.x = v13;
  v22.origin.y = v15;
  v22.size.width = v17;
  v22.size.height = v19;
  v21.x = v9;
  v21.y = v11;
  result = CGRectContainsPoint(v22, v21);
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a4 = 1;
  }

  return result;
}

- (BOOL)shouldOpenFolderIcon:(id)icon
{
  iconCopy = icon;
  folder = [iconCopy folder];
  v6 = [(SBHLibraryPodFolderController *)self _ourFolderContainsFolder:folder];

  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SBHLibraryPodFolderController;
    v7 = [(SBFolderController *)&v9 shouldOpenFolderIcon:iconCopy];
  }

  return v7;
}

- (void)configureInnerFolderControllerConfiguration:(id)configuration
{
  configurationCopy = configuration;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = configurationCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (v6)
  {
    categoriesFolder = [(SBHLibraryCategoriesFolderDataSource *)self->_dataSource categoriesFolder];
    [v6 setCategoriesFolder:categoriesFolder];
  }

  v14.receiver = self;
  v14.super_class = SBHLibraryPodFolderController;
  [(SBFolderController *)&v14 configureInnerFolderControllerConfiguration:configurationCopy];
  objc_opt_class();
  folder = [configurationCopy folder];
  icon = [folder icon];
  v10 = SBFSafeCast();

  if (v10)
  {
    category = [v10 category];
    expandedPodFolder = [category expandedPodFolder];
    [configurationCopy setFolder:expandedPodFolder];

    expandedPodFolder2 = [category expandedPodFolder];
    [expandedPodFolder2 setIcon:v10];
  }
}

- (Class)controllerClassForFolder:(id)folder
{
  folderCopy = folder;
  v11.receiver = self;
  v11.super_class = SBHLibraryPodFolderController;
  v5 = [(SBFolderController *)&v11 controllerClassForFolder:folderCopy];
  if ([(objc_class *)v5 isEqual:objc_opt_class()])
  {
    folder = [(SBFolderController *)self folder];
    if (([folderCopy isEqual:folder] & 1) == 0)
    {
      rootFolder = [folderCopy rootFolder];
      v8 = [rootFolder isEqual:folder];

      if (v8)
      {
        v5 = objc_opt_class();
      }
    }
  }

  v9 = v5;

  return v5;
}

- (void)pushNestedViewController:(id)controller animated:(BOOL)animated withCompletion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  controllerCopy = controller;
  _nestingViewControllerForPushing = [(SBHLibraryPodFolderController *)self _nestingViewControllerForPushing];
  v11 = _nestingViewControllerForPushing;
  if (_nestingViewControllerForPushing == self)
  {
    v12.receiver = self;
    v12.super_class = SBHLibraryPodFolderController;
    [(SBNestingViewController *)&v12 pushNestedViewController:controllerCopy animated:animatedCopy withCompletion:completionCopy];
  }

  else
  {
    [(SBHLibraryPodFolderController *)_nestingViewControllerForPushing pushNestedViewController:controllerCopy animated:animatedCopy withCompletion:completionCopy];
  }
}

- (UIView)containerView
{
  _nestingViewControllerForPushing = [(SBHLibraryPodFolderController *)self _nestingViewControllerForPushing];
  view = [_nestingViewControllerForPushing view];

  return view;
}

- (SBIconListView)currentIconListView
{
  v37 = *MEMORY[0x1E69E9840];
  _nestingViewControllerForPushing = [(SBHLibraryPodFolderController *)self _nestingViewControllerForPushing];
  deepestNestedDescendantViewController = [_nestingViewControllerForPushing deepestNestedDescendantViewController];

  if (deepestNestedDescendantViewController)
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    folderView = [(SBFolderController *)self folderView];
    iconListViews = [folderView iconListViews];

    obj = iconListViews;
    v25 = [iconListViews countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v25)
    {
      v24 = *v32;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v32 != v24)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v31 + 1) + 8 * i);
          v27 = 0u;
          v28 = 0u;
          v29 = 0u;
          v30 = 0u;
          v26 = v8;
          icons = [v8 icons];
          v10 = [icons countByEnumeratingWithState:&v27 objects:v35 count:16];
          if (v10)
          {
            v11 = v10;
            v12 = *v28;
LABEL_9:
            v13 = 0;
            while (1)
            {
              if (*v28 != v12)
              {
                objc_enumerationMutation(icons);
              }

              v14 = *(*(&v27 + 1) + 8 * v13);
              category = [v14 category];
              expandedPodFolder = [category expandedPodFolder];
              folder = [deepestNestedDescendantViewController folder];

              if (expandedPodFolder == folder)
              {
                break;
              }

              if (v11 == ++v13)
              {
                v11 = [icons countByEnumeratingWithState:&v27 objects:v35 count:16];
                if (v11)
                {
                  goto LABEL_9;
                }

                goto LABEL_15;
              }
            }

            v18 = [v26 iconViewForIcon:v14];
            customIconImageViewController = [v18 customIconImageViewController];
            iconListView = [customIconImageViewController iconListView];

            if (iconListView)
            {
              goto LABEL_20;
            }
          }

          else
          {
LABEL_15:
          }
        }

        v25 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v25);
    }

    iconListView = 0;
LABEL_20:
  }

  else
  {
    podFolderView = [(SBHLibraryPodFolderController *)self podFolderView];
    iconListView = [podFolderView currentIconListView];
  }

  return iconListView;
}

- (void)setContentAlpha:(double)alpha
{
  view = [(SBHLibraryPodFolderController *)self view];
  [view setAlpha:alpha];
}

- (void)setLibraryCategoryMap:(id)map
{
  mapCopy = map;
  if (![(SBHLibraryCategoryMap *)self->_libraryCategoryMap isEqualToCategoryMap:?])
  {
    v4 = [mapCopy copy];
    libraryCategoryMap = self->_libraryCategoryMap;
    self->_libraryCategoryMap = v4;

    [(SBHLibraryPodFolderController *)self _reloadAppIcons];
  }
}

void __60__SBHLibraryPodFolderController_dismissDisplayedContextMenu__block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v4 = a2;
  if ([v4 isShowingContextMenu])
  {
    [v4 dismissContextMenuWithCompletion:0];
    *a3 = 1;
  }
}

- (id)folderIconViewForIcon:(id)icon folderRelativeIconIndexPath:(id *)path
{
  v53 = *MEMORY[0x1E69E9840];
  iconCopy = icon;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  folderView = [(SBFolderController *)self folderView];
  iconListViews = [folderView iconListViews];

  v32 = [iconListViews countByEnumeratingWithState:&v47 objects:v52 count:16];
  v8 = 0;
  if (!v32)
  {
    v25 = 0;
    goto LABEL_30;
  }

  v9 = *v48;
  v34 = iconListViews;
  pathCopy = path;
  v31 = *v48;
  do
  {
    v10 = 0;
    do
    {
      if (*v48 != v9)
      {
        objc_enumerationMutation(iconListViews);
      }

      v33 = v10;
      v11 = *(*(&v47 + 1) + 8 * v10);
      v43 = 0u;
      v44 = 0u;
      v45 = 0u;
      v46 = 0u;
      obj = [v11 icons];
      v40 = [obj countByEnumeratingWithState:&v43 objects:v51 count:16];
      if (v40)
      {
        v12 = *v44;
        v36 = *v44;
        v37 = v11;
        do
        {
          v13 = 0;
          do
          {
            if (*v44 != v12)
            {
              objc_enumerationMutation(obj);
            }

            v14 = *(*(&v43 + 1) + 8 * v13);
            category = [v14 category];
            v16 = [v11 displayedIconViewForIcon:v14];
            v17 = v16;
            if (!v16)
            {
              goto LABEL_19;
            }

            customIconImageViewController = [v16 customIconImageViewController];
            iconListView = [customIconImageViewController iconListView];
            model = [iconListView model];
            folder = [model folder];

            v21 = [folder indexPathForIcon:iconCopy];
            if (v21)
            {
              v42 = v8;
              additionalItemsIndicatorIcon = [folder folderContainingIndexPath:v21 relativeIndexPath:&v42];
              v23 = v42;

              icon = [additionalItemsIndicatorIcon icon];
              v25 = [iconListView displayedIconViewForIcon:icon];

              v8 = v23;
              goto LABEL_14;
            }

            if (![category overflowBehavior])
            {
              expandedPodFolder = [category expandedPodFolder];
              v27 = [expandedPodFolder containsIcon:iconCopy];

              if (v27)
              {
                additionalItemsIndicatorIcon = [category additionalItemsIndicatorIcon];
                v25 = [iconListView displayedIconViewForIcon:additionalItemsIndicatorIcon];
LABEL_14:
              }

              else
              {
                v25 = 0;
              }

              v12 = v36;
              v11 = v37;
              goto LABEL_18;
            }

            v25 = 0;
LABEL_18:

            if (v25)
            {

              iconListViews = v34;
              path = pathCopy;
              goto LABEL_30;
            }

LABEL_19:

            ++v13;
          }

          while (v40 != v13);
          v28 = [obj countByEnumeratingWithState:&v43 objects:v51 count:16];
          v40 = v28;
        }

        while (v28);
      }

      v10 = v33 + 1;
      iconListViews = v34;
      path = pathCopy;
      v9 = v31;
    }

    while (v33 + 1 != v32);
    v25 = 0;
    v32 = [v34 countByEnumeratingWithState:&v47 objects:v52 count:16];
  }

  while (v32);
LABEL_30:

  if (path)
  {
    v29 = v8;
    *path = v8;
  }

  return v25;
}

- (void)iconListView:(id)view didAddIconView:(id)iconView
{
  iconViewCopy = iconView;
  v12.receiver = self;
  v12.super_class = SBHLibraryPodFolderController;
  [(SBFolderController *)&v12 iconListView:view didAddIconView:iconViewCopy];
  v7 = objc_opt_self();
  customIconImageViewController = [iconViewCopy customIconImageViewController];
  v9 = SBFSafeCast();

  if (v9)
  {
    iconListView = [v9 iconListView];
    [iconListView addLayoutObserver:self];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __61__SBHLibraryPodFolderController_iconListView_didAddIconView___block_invoke;
    v11[3] = &unk_1E808AEC0;
    v11[4] = self;
    [iconListView enumerateIconViewsUsingBlock:v11];
  }

  else
  {
    [iconViewCopy addObserver:self];
  }
}

- (void)iconListView:(id)view didRemoveIconView:(id)iconView
{
  v7.receiver = self;
  v7.super_class = SBHLibraryPodFolderController;
  iconViewCopy = iconView;
  [(SBFolderController *)&v7 iconListView:view didRemoveIconView:iconViewCopy];
  [iconViewCopy removeObserver:{self, v7.receiver, v7.super_class}];
}

- (void)iconViewDidHandleTap:(id)tap
{
  v46 = *MEMORY[0x1E69E9840];
  tapCopy = tap;
  v44.receiver = self;
  v44.super_class = SBHLibraryPodFolderController;
  [(SBFolderController *)&v44 iconViewDidHandleTap:tapCopy];
  icon = [tapCopy icon];
  folder = [(SBFolderController *)self folder];
  iconLocation = [objc_opt_class() iconLocation];
  if (([folder containsIcon:icon] & 1) == 0)
  {
    v38 = iconLocation;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    categoryIdentifiers = [(SBHLibraryCategoriesFolderDataSource *)self->_dataSource categoryIdentifiers];
    v9 = [categoryIdentifiers countByEnumeratingWithState:&v40 objects:v45 count:16];
    if (v9)
    {
      v10 = v9;
      v34 = folder;
      v36 = tapCopy;
      v11 = *v41;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v41 != v11)
          {
            objc_enumerationMutation(categoryIdentifiers);
          }

          v13 = [(SBHLibraryCategoriesFolderDataSource *)self->_dataSource categoryForIdentifier:*(*(&v40 + 1) + 8 * i)];
          compactPodFolder = [v13 compactPodFolder];
          v15 = [compactPodFolder containsIcon:icon];

          if (v15)
          {
            compactPodFolder2 = [v13 compactPodFolder];

            iconLocation = @"SBIconLocationAppLibraryCategoryPod";
            folder = compactPodFolder2;
            tapCopy = v36;
            goto LABEL_13;
          }
        }

        v10 = [categoryIdentifiers countByEnumeratingWithState:&v40 objects:v45 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }

      folder = v34;
      tapCopy = v36;
    }

LABEL_13:
  }

  if ([icon isLaunchEnabled] && objc_msgSend(icon, "isLeafIcon") && objc_msgSend(folder, "isLibraryCategoryFolder"))
  {
    loggingClient = [(SBHLibraryPodFolderController *)self loggingClient];
    v17 = self->_libraryCategoryMap;
    libraryCategoryIdentifier = [folder libraryCategoryIdentifier];
    leafIdentifier = [icon leafIdentifier];
    predictionCategoryID = [libraryCategoryIdentifier predictionCategoryID];
    predictionCategoryIndex = [libraryCategoryIdentifier predictionCategoryIndex];
    v37 = libraryCategoryIdentifier;
    v21 = [(SBHLibraryCategoryMap *)v17 sortedApplicationIdentifiersForCategoryIdentifier:libraryCategoryIdentifier];
    v22 = [v21 indexOfObject:leafIdentifier];

    date = [MEMORY[0x1E695DF00] date];
    v39 = v17;
    metadata = [(SBHLibraryCategoryMap *)v17 metadata];
    v25 = [metadata objectForKey:@"response"];

    if ([(__CFString *)iconLocation isEqual:@"SBIconLocationAppLibraryCategoryPodRecents"])
    {
      v26 = loggingClient;
      [loggingClient logLaunchFromCategoryPreviewWithDate:date categoryID:4 categoryIndex:predictionCategoryIndex bundleID:leafIdentifier bundleIndex:v22 appDirectoryResponse:v25];
LABEL_19:
      v27 = v26;
LABEL_25:

      goto LABEL_26;
    }

    v32 = v22;
    v26 = loggingClient;
    if ([(__CFString *)iconLocation isEqual:@"SBIconLocationAppLibraryCategoryPodSuggestions"])
    {
      v27 = loggingClient;
      v28 = loggingClient;
      v29 = date;
      v30 = 3;
    }

    else
    {
      v27 = loggingClient;
      if (![(__CFString *)iconLocation isEqual:@"SBIconLocationAppLibraryCategoryPod"])
      {
        if ([(__CFString *)iconLocation isEqual:@"SBIconLocationAppLibraryCategoryPodExpanded"])
        {
          [loggingClient logLaunchFromExpandedCategoryWithDate:date categoryID:predictionCategoryID categoryIndex:predictionCategoryIndex bundleID:leafIdentifier bundleIndex:v32 appDirectoryResponse:v25];
          goto LABEL_25;
        }

        v31 = SBLogProactiveAppLibrary();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          [(SBHLibraryPodFolderController *)leafIdentifier iconViewDidHandleTap:iconLocation, v31];
        }

        goto LABEL_19;
      }

      v28 = loggingClient;
      v29 = date;
      v30 = predictionCategoryID;
    }

    [v28 logLaunchFromCategoryPreviewWithDate:v29 categoryID:v30 categoryIndex:predictionCategoryIndex bundleID:leafIdentifier bundleIndex:v32 appDirectoryResponse:v25];
    goto LABEL_25;
  }

LABEL_26:
}

- (BOOL)isPresentingIconLocation:(id)location
{
  locationCopy = location;
  presentedIconLocations = [(SBHLibraryPodFolderController *)self presentedIconLocations];
  v6 = [presentedIconLocations containsObject:locationCopy];

  return v6;
}

- (NSSet)presentedIconLocations
{
  v9.receiver = self;
  v9.super_class = SBHLibraryPodFolderController;
  presentedIconLocations = [(SBFolderController *)&v9 presentedIconLocations];
  v4 = [presentedIconLocations mutableCopy];

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __55__SBHLibraryPodFolderController_presentedIconLocations__block_invoke;
  v7[3] = &unk_1E808AEE8;
  v5 = v4;
  v8 = v5;
  [(SBHLibraryPodFolderController *)self enumerateViewControllersUsingBlock:v7];

  return v5;
}

void __55__SBHLibraryPodFolderController_presentedIconLocations__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 presentedIconLocations];
  [v2 unionSet:v3];
}

- (id)iconViewForIcon:(id)icon location:(id)location options:(unint64_t)options
{
  iconCopy = icon;
  locationCopy = location;
  folder = [(SBFolderController *)self folder];
  isRootFolder = [folder isRootFolder];

  if (isRootFolder)
  {
    v12 = 0;
    if (iconCopy && locationCopy)
    {
      v18 = 0;
      v19 = &v18;
      v20 = 0x3032000000;
      v21 = __Block_byref_object_copy__5;
      v22 = __Block_byref_object_dispose__5;
      v23 = 0;
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __66__SBHLibraryPodFolderController_iconViewForIcon_location_options___block_invoke;
      v14[3] = &unk_1E808AF10;
      v15 = iconCopy;
      v16 = locationCopy;
      v17 = &v18;
      [(SBHLibraryPodFolderController *)self enumerateViewControllersUsingBlock:v14];
      v12 = v19[5];

      _Block_object_dispose(&v18, 8);
    }
  }

  else
  {
    v24.receiver = self;
    v24.super_class = SBHLibraryPodFolderController;
    v12 = [(SBFolderController *)&v24 iconViewForIcon:iconCopy location:locationCopy options:options];
  }

  return v12;
}

uint64_t __66__SBHLibraryPodFolderController_iconViewForIcon_location_options___block_invoke(void *a1, void *a2, _BYTE *a3)
{
  v5 = [a2 iconViewForIcon:a1[4] location:a1[5]];
  if (v5)
  {
    *a3 = 1;
  }

  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  return MEMORY[0x1EEE66BB8](v5, v7);
}

- (id)firstIconViewForIcon:(id)icon inLocations:(id)locations
{
  iconCopy = icon;
  locationsCopy = locations;
  folder = [(SBFolderController *)self folder];
  isRootFolder = [folder isRootFolder];

  if (isRootFolder)
  {
    v10 = 0;
    if (iconCopy && locationsCopy)
    {
      v16 = 0;
      v17 = &v16;
      v18 = 0x3032000000;
      v19 = __Block_byref_object_copy__5;
      v20 = __Block_byref_object_dispose__5;
      v21 = 0;
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __66__SBHLibraryPodFolderController_firstIconViewForIcon_inLocations___block_invoke;
      v12[3] = &unk_1E808AF10;
      v13 = iconCopy;
      v14 = locationsCopy;
      v15 = &v16;
      [(SBHLibraryPodFolderController *)self enumerateViewControllersUsingBlock:v12];
      v10 = v17[5];

      _Block_object_dispose(&v16, 8);
    }
  }

  else
  {
    v22.receiver = self;
    v22.super_class = SBHLibraryPodFolderController;
    v10 = [(SBFolderController *)&v22 firstIconViewForIcon:iconCopy inLocations:locationsCopy];
  }

  return v10;
}

uint64_t __66__SBHLibraryPodFolderController_firstIconViewForIcon_inLocations___block_invoke(void *a1, void *a2, _BYTE *a3)
{
  v5 = [a2 firstIconViewForIcon:a1[4] inLocations:a1[5]];
  if (v5)
  {
    *a3 = 1;
  }

  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  return MEMORY[0x1EEE66BB8](v5, v7);
}

- (id)firstIconViewForIcon:(id)icon
{
  iconCopy = icon;
  folder = [(SBFolderController *)self folder];
  isRootFolder = [folder isRootFolder];

  if (isRootFolder)
  {
    if (iconCopy)
    {
      v12 = 0;
      v13 = &v12;
      v14 = 0x3032000000;
      v15 = __Block_byref_object_copy__5;
      v16 = __Block_byref_object_dispose__5;
      v17 = 0;
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __54__SBHLibraryPodFolderController_firstIconViewForIcon___block_invoke;
      v9[3] = &unk_1E808AF38;
      v10 = iconCopy;
      v11 = &v12;
      [(SBHLibraryPodFolderController *)self enumerateViewControllersUsingBlock:v9];
      v7 = v13[5];

      _Block_object_dispose(&v12, 8);
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v18.receiver = self;
    v18.super_class = SBHLibraryPodFolderController;
    v7 = [(SBFolderController *)&v18 firstIconViewForIcon:iconCopy];
  }

  return v7;
}

uint64_t __54__SBHLibraryPodFolderController_firstIconViewForIcon___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = [a2 firstIconViewForIcon:*(a1 + 32)];
  if (v5)
  {
    *a3 = 1;
  }

  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  return MEMORY[0x1EEE66BB8](v5, v7);
}

- (id)firstNonSuggestionsOrRecentsIconViewForIcon:(id)icon
{
  iconCopy = icon;
  folder = [(SBFolderController *)self folder];
  isRootFolder = [folder isRootFolder];

  if (isRootFolder)
  {
    if (iconCopy)
    {
      v12 = 0;
      v13 = &v12;
      v14 = 0x3032000000;
      v15 = __Block_byref_object_copy__5;
      v16 = __Block_byref_object_dispose__5;
      v17 = 0;
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __77__SBHLibraryPodFolderController_firstNonSuggestionsOrRecentsIconViewForIcon___block_invoke;
      v9[3] = &unk_1E808AF38;
      v10 = iconCopy;
      v11 = &v12;
      [(SBHLibraryPodFolderController *)self enumerateNonSuggestionsOrRecentsViewControllersUsingBlock:v9];
      v7 = v13[5];

      _Block_object_dispose(&v12, 8);
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v18.receiver = self;
    v18.super_class = SBHLibraryPodFolderController;
    v7 = [(SBFolderController *)&v18 firstIconViewForIcon:iconCopy];
  }

  return v7;
}

uint64_t __77__SBHLibraryPodFolderController_firstNonSuggestionsOrRecentsIconViewForIcon___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = [a2 firstIconViewForIcon:*(a1 + 32)];
  if (v5)
  {
    *a3 = 1;
  }

  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  return MEMORY[0x1EEE66BB8](v5, v7);
}

- (BOOL)isDisplayingIcon:(id)icon inLocation:(id)location
{
  iconCopy = icon;
  locationCopy = location;
  folder = [(SBFolderController *)self folder];
  isRootFolder = [folder isRootFolder];

  if (isRootFolder)
  {
    v10 = 0;
    if (iconCopy && locationCopy)
    {
      v16 = 0;
      v17 = &v16;
      v18 = 0x2020000000;
      v19 = 0;
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __61__SBHLibraryPodFolderController_isDisplayingIcon_inLocation___block_invoke;
      v12[3] = &unk_1E808AF10;
      v13 = iconCopy;
      v14 = locationCopy;
      v15 = &v16;
      [(SBHLibraryPodFolderController *)self enumerateViewControllersUsingBlock:v12];
      v10 = *(v17 + 24);

      _Block_object_dispose(&v16, 8);
    }
  }

  else
  {
    v20.receiver = self;
    v20.super_class = SBHLibraryPodFolderController;
    v10 = [(SBFolderController *)&v20 isDisplayingIcon:iconCopy inLocation:locationCopy];
  }

  return v10 & 1;
}

uint64_t __61__SBHLibraryPodFolderController_isDisplayingIcon_inLocation___block_invoke(void *a1, void *a2, _BYTE *a3)
{
  result = [a2 isDisplayingIcon:a1[4] inLocation:a1[5]];
  if (result)
  {
    *(*(a1[6] + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

- (BOOL)isDisplayingIcon:(id)icon inLocations:(id)locations
{
  iconCopy = icon;
  locationsCopy = locations;
  folder = [(SBFolderController *)self folder];
  isRootFolder = [folder isRootFolder];

  if (isRootFolder)
  {
    v10 = 0;
    if (iconCopy && locationsCopy)
    {
      v16 = 0;
      v17 = &v16;
      v18 = 0x2020000000;
      v19 = 0;
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __62__SBHLibraryPodFolderController_isDisplayingIcon_inLocations___block_invoke;
      v12[3] = &unk_1E808AF10;
      v13 = iconCopy;
      v14 = locationsCopy;
      v15 = &v16;
      [(SBHLibraryPodFolderController *)self enumerateViewControllersUsingBlock:v12];
      v10 = *(v17 + 24);

      _Block_object_dispose(&v16, 8);
    }
  }

  else
  {
    v20.receiver = self;
    v20.super_class = SBHLibraryPodFolderController;
    v10 = [(SBFolderController *)&v20 isDisplayingIcon:iconCopy inLocations:locationsCopy];
  }

  return v10 & 1;
}

uint64_t __62__SBHLibraryPodFolderController_isDisplayingIcon_inLocations___block_invoke(void *a1, void *a2, _BYTE *a3)
{
  result = [a2 isDisplayingIcon:a1[4] inLocations:a1[5]];
  if (result)
  {
    *(*(a1[6] + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

- (BOOL)isDisplayingIcon:(id)icon
{
  iconCopy = icon;
  folder = [(SBFolderController *)self folder];
  isRootFolder = [folder isRootFolder];

  if (isRootFolder)
  {
    if (iconCopy)
    {
      v12 = 0;
      v13 = &v12;
      v14 = 0x2020000000;
      v15 = 0;
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __50__SBHLibraryPodFolderController_isDisplayingIcon___block_invoke;
      v9[3] = &unk_1E808AF38;
      v10 = iconCopy;
      v11 = &v12;
      [(SBHLibraryPodFolderController *)self enumerateViewControllersUsingBlock:v9];
      v7 = *(v13 + 24);

      _Block_object_dispose(&v12, 8);
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v16.receiver = self;
    v16.super_class = SBHLibraryPodFolderController;
    v7 = [(SBFolderController *)&v16 isDisplayingIcon:iconCopy];
  }

  return v7 & 1;
}

uint64_t __50__SBHLibraryPodFolderController_isDisplayingIcon___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  result = [a2 isDisplayingIcon:*(a1 + 32)];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

- (BOOL)isDisplayingIconView:(id)view
{
  viewCopy = view;
  folder = [(SBFolderController *)self folder];
  isRootFolder = [folder isRootFolder];

  if (isRootFolder)
  {
    if (viewCopy)
    {
      v12 = 0;
      v13 = &v12;
      v14 = 0x2020000000;
      v15 = 0;
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __54__SBHLibraryPodFolderController_isDisplayingIconView___block_invoke;
      v9[3] = &unk_1E808AF38;
      v10 = viewCopy;
      v11 = &v12;
      [(SBHLibraryPodFolderController *)self enumerateViewControllersUsingBlock:v9];
      v7 = *(v13 + 24);

      _Block_object_dispose(&v12, 8);
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v16.receiver = self;
    v16.super_class = SBHLibraryPodFolderController;
    v7 = [(SBFolderController *)&v16 isDisplayingIconView:viewCopy];
  }

  return v7 & 1;
}

uint64_t __54__SBHLibraryPodFolderController_isDisplayingIconView___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  result = [a2 isDisplayingIconView:*(a1 + 32)];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

- (BOOL)isDisplayingIconView:(id)view inLocation:(id)location
{
  viewCopy = view;
  locationCopy = location;
  folder = [(SBFolderController *)self folder];
  isRootFolder = [folder isRootFolder];

  if (isRootFolder)
  {
    v10 = 0;
    if (viewCopy && locationCopy)
    {
      v16 = 0;
      v17 = &v16;
      v18 = 0x2020000000;
      v19 = 0;
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __65__SBHLibraryPodFolderController_isDisplayingIconView_inLocation___block_invoke;
      v12[3] = &unk_1E808AF10;
      v13 = viewCopy;
      v14 = locationCopy;
      v15 = &v16;
      [(SBHLibraryPodFolderController *)self enumerateViewControllersUsingBlock:v12];
      v10 = *(v17 + 24);

      _Block_object_dispose(&v16, 8);
    }
  }

  else
  {
    v20.receiver = self;
    v20.super_class = SBHLibraryPodFolderController;
    v10 = [(SBFolderController *)&v20 isDisplayingIconView:viewCopy inLocation:locationCopy];
  }

  return v10 & 1;
}

uint64_t __65__SBHLibraryPodFolderController_isDisplayingIconView_inLocation___block_invoke(void *a1, void *a2, _BYTE *a3)
{
  result = [a2 isDisplayingIconView:a1[4] inLocation:a1[5]];
  if (result)
  {
    *(*(a1[6] + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

- (void)enumerateDisplayedIconViewsForIcon:(id)icon usingBlock:(id)block
{
  iconCopy = icon;
  blockCopy = block;
  folder = [(SBFolderController *)self folder];
  isRootFolder = [folder isRootFolder];

  if (isRootFolder)
  {
    if (iconCopy && blockCopy)
    {
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __79__SBHLibraryPodFolderController_enumerateDisplayedIconViewsForIcon_usingBlock___block_invoke;
      v10[3] = &unk_1E808AF60;
      v11 = iconCopy;
      v12 = blockCopy;
      [(SBHLibraryPodFolderController *)self enumerateViewControllersUsingBlock:v10];
    }
  }

  else
  {
    v13.receiver = self;
    v13.super_class = SBHLibraryPodFolderController;
    [(SBFolderController *)&v13 enumerateDisplayedIconViewsForIcon:iconCopy usingBlock:blockCopy];
  }
}

- (void)enumerateDisplayedIconViewsUsingBlock:(id)block
{
  v36 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  folder = [(SBFolderController *)self folder];
  isRootFolder = [folder isRootFolder];

  if (isRootFolder)
  {
    if (blockCopy)
    {
      v32 = 0;
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      folderView = [(SBFolderController *)self folderView];
      iconListViews = [folderView iconListViews];

      v20 = [iconListViews countByEnumeratingWithState:&v28 objects:v35 count:16];
      if (v20)
      {
        v9 = *v29;
        v21 = iconListViews;
        v19 = *v29;
        do
        {
          v10 = 0;
          do
          {
            if (*v29 != v9)
            {
              objc_enumerationMutation(iconListViews);
            }

            v11 = *(*(&v28 + 1) + 8 * v10);
            v24 = 0u;
            v25 = 0u;
            v26 = 0u;
            v27 = 0u;
            icons = [v11 icons];
            v13 = [icons countByEnumeratingWithState:&v24 objects:v34 count:16];
            if (v13)
            {
              v14 = v13;
              v15 = *v25;
              while (2)
              {
                v16 = 0;
                do
                {
                  if (*v25 != v15)
                  {
                    objc_enumerationMutation(icons);
                  }

                  v17 = [v11 displayedIconViewForIcon:*(*(&v24 + 1) + 8 * v16)];
                  if (v17)
                  {
                    blockCopy[2](blockCopy, v17, &v32);
                    if (v32)
                    {

                      v18 = v21;
                      goto LABEL_22;
                    }
                  }

                  ++v16;
                }

                while (v14 != v16);
                v14 = [icons countByEnumeratingWithState:&v24 objects:v34 count:16];
                if (v14)
                {
                  continue;
                }

                break;
              }
            }

            ++v10;
            iconListViews = v21;
            v9 = v19;
          }

          while (v10 != v20);
          v20 = [v21 countByEnumeratingWithState:&v28 objects:v35 count:16];
        }

        while (v20);
      }

      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __71__SBHLibraryPodFolderController_enumerateDisplayedIconViewsUsingBlock___block_invoke;
      v22[3] = &unk_1E808AF88;
      v23 = blockCopy;
      [(SBHLibraryPodFolderController *)self enumerateViewControllersUsingBlock:v22];
      v18 = v23;
LABEL_22:
    }
  }

  else
  {
    v33.receiver = self;
    v33.super_class = SBHLibraryPodFolderController;
    [(SBFolderController *)&v33 enumerateDisplayedIconViewsUsingBlock:blockCopy];
  }
}

- (id)firstIconViewForIcon:(id)icon excludingLocations:(id)locations
{
  iconCopy = icon;
  locationsCopy = locations;
  folder = [(SBFolderController *)self folder];
  isRootFolder = [folder isRootFolder];

  if (isRootFolder)
  {
    if (iconCopy && [locationsCopy count])
    {
      v16 = 0;
      v17 = &v16;
      v18 = 0x3032000000;
      v19 = __Block_byref_object_copy__5;
      v20 = __Block_byref_object_dispose__5;
      v21 = 0;
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __73__SBHLibraryPodFolderController_firstIconViewForIcon_excludingLocations___block_invoke;
      v12[3] = &unk_1E808AF10;
      v13 = iconCopy;
      v14 = locationsCopy;
      v15 = &v16;
      [(SBHLibraryPodFolderController *)self enumerateViewControllersUsingBlock:v12];
      v10 = v17[5];

      _Block_object_dispose(&v16, 8);
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v22.receiver = self;
    v22.super_class = SBHLibraryPodFolderController;
    v10 = [(SBFolderController *)&v22 firstIconViewForIcon:iconCopy excludingLocations:locationsCopy];
  }

  return v10;
}

uint64_t __73__SBHLibraryPodFolderController_firstIconViewForIcon_excludingLocations___block_invoke(void *a1, void *a2, _BYTE *a3)
{
  v5 = [a2 firstIconViewForIcon:a1[4] excludingLocations:a1[5]];
  v6 = v5;
  if (v5)
  {
    v8 = v5;
    objc_storeStrong((*(a1[6] + 8) + 40), v5);
    v6 = v8;
    *a3 = 1;
  }

  return MEMORY[0x1EEE66BB8](v5, v6);
}

- (void)setLibrarySearchControllerScrollViewDelegate:(id)delegate
{
  delegateCopy = delegate;
  podFolderView = [(SBHLibraryPodFolderController *)self podFolderView];
  [podFolderView setLibrarySearchControllerScrollViewDelegate:delegateCopy];
}

- (BSUIScrollViewDelegate)librarySearchControllerScrollViewDelegate
{
  podFolderView = [(SBHLibraryPodFolderController *)self podFolderView];
  librarySearchControllerScrollViewDelegate = [podFolderView librarySearchControllerScrollViewDelegate];

  return librarySearchControllerScrollViewDelegate;
}

- (BOOL)_ourFolderContainsFolder:(id)folder
{
  dataSource = self->_dataSource;
  folderCopy = folder;
  categoriesFolder = [(SBHLibraryCategoriesFolderDataSource *)dataSource categoriesFolder];
  rootFolder = [folderCopy rootFolder];

  LOBYTE(folderCopy) = [categoriesFolder isEqual:rootFolder];
  return folderCopy;
}

- (void)enumerateViewControllersUsingBlock:(id)block
{
  v34 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  v31 = 0;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  folderView = [(SBFolderController *)self folderView];
  iconListViews = [folderView iconListViews];

  v20 = [iconListViews countByEnumeratingWithState:&v27 objects:v33 count:16];
  if (v20)
  {
    v7 = *v28;
    v22 = iconListViews;
    v19 = *v28;
    do
    {
      v8 = 0;
      do
      {
        if (*v28 != v7)
        {
          objc_enumerationMutation(iconListViews);
        }

        v21 = v8;
        v9 = *(*(&v27 + 1) + 8 * v8);
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        icons = [v9 icons];
        v11 = [icons countByEnumeratingWithState:&v23 objects:v32 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v24;
          while (2)
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v24 != v13)
              {
                objc_enumerationMutation(icons);
              }

              v15 = [v9 displayedIconViewForIcon:*(*(&v23 + 1) + 8 * i)];
              v16 = v15;
              if (v15)
              {
                customIconImageViewController = [v15 customIconImageViewController];
                blockCopy[2](blockCopy, customIconImageViewController, &v31);
                v18 = v31;

                if (v18)
                {

                  iconListViews = v22;
                  goto LABEL_19;
                }
              }
            }

            v12 = [icons countByEnumeratingWithState:&v23 objects:v32 count:16];
            if (v12)
            {
              continue;
            }

            break;
          }
        }

        v8 = v21 + 1;
        iconListViews = v22;
        v7 = v19;
      }

      while (v21 + 1 != v20);
      v20 = [v22 countByEnumeratingWithState:&v27 objects:v33 count:16];
    }

    while (v20);
  }

LABEL_19:
}

- (void)enumerateNonSuggestionsOrRecentsViewControllersUsingBlock:(id)block
{
  v37 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  v34 = 0;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  folderView = [(SBFolderController *)self folderView];
  iconListViews = [folderView iconListViews];

  v23 = [iconListViews countByEnumeratingWithState:&v30 objects:v36 count:16];
  if (v23)
  {
    v7 = *v31;
    v25 = iconListViews;
    v22 = *v31;
    do
    {
      v8 = 0;
      do
      {
        if (*v31 != v7)
        {
          objc_enumerationMutation(iconListViews);
        }

        v24 = v8;
        v9 = *(*(&v30 + 1) + 8 * v8);
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        icons = [v9 icons];
        v11 = [icons countByEnumeratingWithState:&v26 objects:v35 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v27;
          while (2)
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v27 != v13)
              {
                objc_enumerationMutation(icons);
              }

              v15 = *(*(&v26 + 1) + 8 * i);
              if ([v15 isCategoryIcon])
              {
                category = [v15 category];
                categoryIdentifier = [category categoryIdentifier];
                predictionCategoryID = [categoryIdentifier predictionCategoryID];

                if ((predictionCategoryID - 3) < 2)
                {
                  continue;
                }
              }

              v19 = [v9 displayedIconViewForIcon:v15];
              customIconImageViewController = [v19 customIconImageViewController];
              blockCopy[2](blockCopy, customIconImageViewController, &v34);
              v21 = v34;

              if (v21)
              {

                iconListViews = v25;
                goto LABEL_20;
              }
            }

            v12 = [icons countByEnumeratingWithState:&v26 objects:v35 count:16];
            if (v12)
            {
              continue;
            }

            break;
          }
        }

        v8 = v24 + 1;
        iconListViews = v25;
        v7 = v22;
      }

      while (v24 + 1 != v23);
      v23 = [v25 countByEnumeratingWithState:&v30 objects:v36 count:16];
    }

    while (v23);
  }

LABEL_20:
}

- (id)_nestingViewControllerForPushing
{
  selfCopy = self;
  v3 = selfCopy;
  if (selfCopy)
  {
    v4 = selfCopy;
    v5 = selfCopy;
    do
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || (v6 = v5, v4, [v6 parentNestingViewController], parentViewController = objc_claimAutoreleasedReturnValue(), v4 = v6, !parentViewController))
      {
        parentViewController = [v5 parentViewController];
      }

      v5 = parentViewController;
    }

    while (parentViewController);
  }

  else
  {
    v4 = 0;
  }

  podFolderControllerDelegate = [(SBHLibraryPodFolderController *)v3 podFolderControllerDelegate];
  if (objc_opt_respondsToSelector())
  {
    v9 = [podFolderControllerDelegate libraryPodFolderController:v3 nestingViewControllerForPushingWithProposedController:v4];

    v4 = v9;
  }

  return v4;
}

- (void)categoriesDataSourceNeedsAnimatedReload:(id)reload
{
  reloadCopy = reload;
  podFolderControllerDelegate = [(SBHLibraryPodFolderController *)self podFolderControllerDelegate];
  categoryIdentifiersCount = [reloadCopy categoryIdentifiersCount];

  [podFolderControllerDelegate libraryPodFolderController:self willLayoutDisplayedCategories:categoryIdentifiersCount];
  if ([(SBHLibraryPodFolderController *)self _isViewControllerVisible])
  {
    folderView = [(SBFolderController *)self folderView];
    [folderView layoutIconListsWithAnimationType:0 forceRelayout:1];
  }
}

- (void)categoriesDataSource:(id)source shouldAnimateLayoutForCategories:(id)categories
{
  categoriesCopy = categories;
  sourceCopy = source;
  podFolderControllerDelegate = [(SBHLibraryPodFolderController *)self podFolderControllerDelegate];
  categoryIdentifiersCount = [sourceCopy categoryIdentifiersCount];

  [podFolderControllerDelegate libraryPodFolderController:self willLayoutDisplayedCategories:categoryIdentifiersCount];
  bs_isAppearingOrAppeared = [(SBHLibraryPodFolderController *)self bs_isAppearingOrAppeared];
  if (((bs_isAppearingOrAppeared ^ 1) & 1) == 0)
  {
    [MEMORY[0x1E6979518] begin];
  }

  folderView = [(SBFolderController *)self folderView];
  if ([categoriesCopy count])
  {
    iconListViews = [folderView iconListViews];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __87__SBHLibraryPodFolderController_categoriesDataSource_shouldAnimateLayoutForCategories___block_invoke;
    v13[3] = &unk_1E808AFB0;
    v14 = categoriesCopy;
    v15 = ((bs_isAppearingOrAppeared ^ 1u) << 63) >> 63;
    [iconListViews enumerateObjectsUsingBlock:v13];
  }

  if (bs_isAppearingOrAppeared)
  {
    [MEMORY[0x1E6979518] commit];
  }
}

void __87__SBHLibraryPodFolderController_categoriesDataSource_shouldAnimateLayoutForCategories___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = [v3 icons];
  v4 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    do
    {
      v7 = 0;
      do
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = [v3 displayedIconViewForIcon:*(*(&v16 + 1) + 8 * v7)];
        v9 = v8;
        if (v8)
        {
          v10 = [v8 icon];
          v11 = [v10 category];
          v12 = [v11 categoryIdentifier];

          if ([*(a1 + 32) containsObject:v12])
          {
            v13 = [v9 customIconImageViewController];
            v14 = [v13 iconListView];
            [v14 setNeedsLayout];
            [v14 layoutIconsIfNeededWithAnimationType:*(a1 + 40) options:0];
          }
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }
}

- (void)_reloadAppIcons
{
  dataSource = self->_dataSource;
  libraryCategoryMap = [(SBHLibraryPodFolderController *)self libraryCategoryMap];
  v3 = [(SBHLibraryCategoriesFolderDataSource *)dataSource reloadDataWithCategoryMap:libraryCategoryMap];
}

- (SBHLibraryPodFolderControllerDelegate)podFolderControllerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_podFolderControllerDelegate);

  return WeakRetained;
}

- (void)iconViewDidHandleTap:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_error_impl(&dword_1BEB18000, log, OS_LOG_TYPE_ERROR, "Launch of %{public}@ from %{public}@ not logged", &v3, 0x16u);
}

@end