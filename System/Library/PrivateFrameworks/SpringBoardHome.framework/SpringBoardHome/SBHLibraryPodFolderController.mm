@interface SBHLibraryPodFolderController
- (BOOL)_ourFolderContainsFolder:(id)a3;
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (BOOL)isDisplayingIcon:(id)a3;
- (BOOL)isDisplayingIcon:(id)a3 inLocation:(id)a4;
- (BOOL)isDisplayingIcon:(id)a3 inLocations:(id)a4;
- (BOOL)isDisplayingIconView:(id)a3;
- (BOOL)isDisplayingIconView:(id)a3 inLocation:(id)a4;
- (BOOL)isPresentingIconLocation:(id)a3;
- (BOOL)shouldOpenFolderIcon:(id)a3;
- (BSUIScrollViewDelegate)librarySearchControllerScrollViewDelegate;
- (Class)controllerClassForFolder:(id)a3;
- (NSSet)presentedIconLocations;
- (SBHLibraryPodFolderController)initWithConfiguration:(id)a3;
- (SBHLibraryPodFolderControllerDelegate)podFolderControllerDelegate;
- (SBIconListView)currentIconListView;
- (UIView)containerView;
- (id)_nestingViewControllerForPushing;
- (id)contentScrollView;
- (id)firstIconViewForIcon:(id)a3;
- (id)firstIconViewForIcon:(id)a3 excludingLocations:(id)a4;
- (id)firstIconViewForIcon:(id)a3 inLocations:(id)a4;
- (id)firstNonSuggestionsOrRecentsIconViewForIcon:(id)a3;
- (id)folderIconViewForIcon:(id)a3 folderRelativeIconIndexPath:(id *)a4;
- (id)iconViewForIcon:(id)a3 location:(id)a4 options:(unint64_t)a5;
- (void)_reloadAppIcons;
- (void)categoriesDataSource:(id)a3 shouldAnimateLayoutForCategories:(id)a4;
- (void)categoriesDataSourceNeedsAnimatedReload:(id)a3;
- (void)configureInnerFolderControllerConfiguration:(id)a3;
- (void)enumerateDisplayedIconViewsForIcon:(id)a3 usingBlock:(id)a4;
- (void)enumerateDisplayedIconViewsUsingBlock:(id)a3;
- (void)enumerateNonSuggestionsOrRecentsViewControllersUsingBlock:(id)a3;
- (void)enumerateViewControllersUsingBlock:(id)a3;
- (void)handleTapGesture:(id)a3;
- (void)iconListView:(id)a3 didAddIconView:(id)a4;
- (void)iconListView:(id)a3 didRemoveIconView:(id)a4;
- (void)iconViewDidHandleTap:(id)a3;
- (void)pushNestedViewController:(id)a3 animated:(BOOL)a4 withCompletion:(id)a5;
- (void)setContentAlpha:(double)a3;
- (void)setLibraryCategoryMap:(id)a3;
- (void)setLibrarySearchControllerScrollViewDelegate:(id)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation SBHLibraryPodFolderController

- (SBHLibraryPodFolderController)initWithConfiguration:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v18.receiver = self;
  v18.super_class = SBHLibraryPodFolderController;
  v7 = [(SBFolderController *)&v18 initWithConfiguration:v4];
  if (v7)
  {
    v8 = [objc_opt_class() iconLocation];
    v9 = [v8 isEqualToString:@"SBIconLocationAppLibrary"];

    if (v9)
    {
      v10 = [SBHLibraryCategoriesFolderDataSource alloc];
      v11 = [v6 categoriesFolder];
      v12 = [(SBHLibraryCategoriesFolderDataSource *)v10 initWithCategoriesFolder:v11];
      dataSource = v7->_dataSource;
      v7->_dataSource = v12;

      [(SBHLibraryCategoriesFolderDataSource *)v7->_dataSource addObserver:v7];
      v14 = [(SBHLibraryCategoriesFolderDataSource *)v7->_dataSource categoriesFolder];
      [(SBFolderController *)v7 setFolder:v14];
    }

    v15 = [MEMORY[0x1E698AEB0] sharedInstance];
    loggingClient = v7->_loggingClient;
    v7->_loggingClient = v15;
  }

  return v7;
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = SBHLibraryPodFolderController;
  [(SBFolderController *)&v7 viewDidLoad];
  v3 = [(SBHLibraryPodFolderController *)self podFolderView];
  v4 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel_handleTapGesture_];
  tapToDismissRecognizer = self->_tapToDismissRecognizer;
  self->_tapToDismissRecognizer = v4;

  [(UITapGestureRecognizer *)self->_tapToDismissRecognizer setAllowableMovement:10.0];
  [(UITapGestureRecognizer *)self->_tapToDismissRecognizer setDelegate:self];
  v6 = [v3 scalingView];
  [v6 addGestureRecognizer:self->_tapToDismissRecognizer];
}

- (id)contentScrollView
{
  v2 = [(SBHLibraryPodFolderController *)self podFolderView];
  v3 = [v2 podScrollView];

  return v3;
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = SBHLibraryPodFolderController;
  [(SBFolderController *)&v4 viewWillAppear:a3];
  [(SBHLibraryPodFolderController *)self _updateContentOverlayInsetsForSelfAndChildren];
  [(SBHLibraryPodFolderController *)self _reloadAppIcons];
}

- (void)handleTapGesture:(id)a3
{
  v8 = a3;
  v4 = [(SBHLibraryPodFolderController *)self tapToDismissRecognizer];

  v5 = v8;
  if (v4 == v8)
  {
    v6 = [v8 state] == 3;
    v5 = v8;
    if (v6)
    {
      v7 = [(SBHLibraryPodFolderController *)self podFolderControllerDelegate];
      [v7 libraryPodFolderControllerRequestsDismissal:self];

      v5 = v8;
    }
  }
}

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SBHLibraryPodFolderController *)self tapToDismissRecognizer];

  if (v8 == v7)
  {
    v10 = [(SBHLibraryPodFolderController *)self contentScrollView];
    v11 = [v10 panGestureRecognizer];
    v9 = v11 == v6;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v15 = a3;
  v6 = a4;
  v7 = [(SBHLibraryPodFolderController *)self tapToDismissRecognizer];

  v8 = 1;
  if (v7 == v15)
  {
    v23 = 0;
    v24 = &v23;
    v25 = 0x2020000000;
    v26 = 1;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v9 = [(SBFolderController *)self iconListViews];
    v10 = [v9 countByEnumeratingWithState:&v19 objects:v27 count:16];
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
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v19 + 1) + 8 * v12);
          v16[0] = MEMORY[0x1E69E9820];
          v16[1] = 3221225472;
          v16[2] = __70__SBHLibraryPodFolderController_gestureRecognizer_shouldReceiveTouch___block_invoke;
          v16[3] = &unk_1E808AE98;
          v17 = v6;
          v18 = &v23;
          [v13 enumerateIconViewsUsingBlock:v16];

          ++v12;
        }

        while (v10 != v12);
        v10 = [v9 countByEnumeratingWithState:&v19 objects:v27 count:16];
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

- (BOOL)shouldOpenFolderIcon:(id)a3
{
  v4 = a3;
  v5 = [v4 folder];
  v6 = [(SBHLibraryPodFolderController *)self _ourFolderContainsFolder:v5];

  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SBHLibraryPodFolderController;
    v7 = [(SBFolderController *)&v9 shouldOpenFolderIcon:v4];
  }

  return v7;
}

- (void)configureInnerFolderControllerConfiguration:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (v6)
  {
    v7 = [(SBHLibraryCategoriesFolderDataSource *)self->_dataSource categoriesFolder];
    [v6 setCategoriesFolder:v7];
  }

  v14.receiver = self;
  v14.super_class = SBHLibraryPodFolderController;
  [(SBFolderController *)&v14 configureInnerFolderControllerConfiguration:v4];
  objc_opt_class();
  v8 = [v4 folder];
  v9 = [v8 icon];
  v10 = SBFSafeCast();

  if (v10)
  {
    v11 = [v10 category];
    v12 = [v11 expandedPodFolder];
    [v4 setFolder:v12];

    v13 = [v11 expandedPodFolder];
    [v13 setIcon:v10];
  }
}

- (Class)controllerClassForFolder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = SBHLibraryPodFolderController;
  v5 = [(SBFolderController *)&v11 controllerClassForFolder:v4];
  if ([(objc_class *)v5 isEqual:objc_opt_class()])
  {
    v6 = [(SBFolderController *)self folder];
    if (([v4 isEqual:v6] & 1) == 0)
    {
      v7 = [v4 rootFolder];
      v8 = [v7 isEqual:v6];

      if (v8)
      {
        v5 = objc_opt_class();
      }
    }
  }

  v9 = v5;

  return v5;
}

- (void)pushNestedViewController:(id)a3 animated:(BOOL)a4 withCompletion:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = a3;
  v10 = [(SBHLibraryPodFolderController *)self _nestingViewControllerForPushing];
  v11 = v10;
  if (v10 == self)
  {
    v12.receiver = self;
    v12.super_class = SBHLibraryPodFolderController;
    [(SBNestingViewController *)&v12 pushNestedViewController:v9 animated:v5 withCompletion:v8];
  }

  else
  {
    [(SBHLibraryPodFolderController *)v10 pushNestedViewController:v9 animated:v5 withCompletion:v8];
  }
}

- (UIView)containerView
{
  v2 = [(SBHLibraryPodFolderController *)self _nestingViewControllerForPushing];
  v3 = [v2 view];

  return v3;
}

- (SBIconListView)currentIconListView
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = [(SBHLibraryPodFolderController *)self _nestingViewControllerForPushing];
  v4 = [v3 deepestNestedDescendantViewController];

  if (v4)
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v5 = [(SBFolderController *)self folderView];
    v6 = [v5 iconListViews];

    obj = v6;
    v25 = [v6 countByEnumeratingWithState:&v31 objects:v36 count:16];
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
          v9 = [v8 icons];
          v10 = [v9 countByEnumeratingWithState:&v27 objects:v35 count:16];
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
                objc_enumerationMutation(v9);
              }

              v14 = *(*(&v27 + 1) + 8 * v13);
              v15 = [v14 category];
              v16 = [v15 expandedPodFolder];
              v17 = [v4 folder];

              if (v16 == v17)
              {
                break;
              }

              if (v11 == ++v13)
              {
                v11 = [v9 countByEnumeratingWithState:&v27 objects:v35 count:16];
                if (v11)
                {
                  goto LABEL_9;
                }

                goto LABEL_15;
              }
            }

            v18 = [v26 iconViewForIcon:v14];
            v19 = [v18 customIconImageViewController];
            v20 = [v19 iconListView];

            if (v20)
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

    v20 = 0;
LABEL_20:
  }

  else
  {
    v21 = [(SBHLibraryPodFolderController *)self podFolderView];
    v20 = [v21 currentIconListView];
  }

  return v20;
}

- (void)setContentAlpha:(double)a3
{
  v4 = [(SBHLibraryPodFolderController *)self view];
  [v4 setAlpha:a3];
}

- (void)setLibraryCategoryMap:(id)a3
{
  v6 = a3;
  if (![(SBHLibraryCategoryMap *)self->_libraryCategoryMap isEqualToCategoryMap:?])
  {
    v4 = [v6 copy];
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

- (id)folderIconViewForIcon:(id)a3 folderRelativeIconIndexPath:(id *)a4
{
  v53 = *MEMORY[0x1E69E9840];
  v39 = a3;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v6 = [(SBFolderController *)self folderView];
  v7 = [v6 iconListViews];

  v32 = [v7 countByEnumeratingWithState:&v47 objects:v52 count:16];
  v8 = 0;
  if (!v32)
  {
    v25 = 0;
    goto LABEL_30;
  }

  v9 = *v48;
  v34 = v7;
  v35 = a4;
  v31 = *v48;
  do
  {
    v10 = 0;
    do
    {
      if (*v48 != v9)
      {
        objc_enumerationMutation(v7);
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
            v15 = [v14 category];
            v16 = [v11 displayedIconViewForIcon:v14];
            v17 = v16;
            if (!v16)
            {
              goto LABEL_19;
            }

            v41 = [v16 customIconImageViewController];
            v18 = [v41 iconListView];
            v19 = [v18 model];
            v20 = [v19 folder];

            v21 = [v20 indexPathForIcon:v39];
            if (v21)
            {
              v42 = v8;
              v22 = [v20 folderContainingIndexPath:v21 relativeIndexPath:&v42];
              v23 = v42;

              v24 = [v22 icon];
              v25 = [v18 displayedIconViewForIcon:v24];

              v8 = v23;
              goto LABEL_14;
            }

            if (![v15 overflowBehavior])
            {
              v26 = [v15 expandedPodFolder];
              v27 = [v26 containsIcon:v39];

              if (v27)
              {
                v22 = [v15 additionalItemsIndicatorIcon];
                v25 = [v18 displayedIconViewForIcon:v22];
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

              v7 = v34;
              a4 = v35;
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
      v7 = v34;
      a4 = v35;
      v9 = v31;
    }

    while (v33 + 1 != v32);
    v25 = 0;
    v32 = [v34 countByEnumeratingWithState:&v47 objects:v52 count:16];
  }

  while (v32);
LABEL_30:

  if (a4)
  {
    v29 = v8;
    *a4 = v8;
  }

  return v25;
}

- (void)iconListView:(id)a3 didAddIconView:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = SBHLibraryPodFolderController;
  [(SBFolderController *)&v12 iconListView:a3 didAddIconView:v6];
  v7 = objc_opt_self();
  v8 = [v6 customIconImageViewController];
  v9 = SBFSafeCast();

  if (v9)
  {
    v10 = [v9 iconListView];
    [v10 addLayoutObserver:self];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __61__SBHLibraryPodFolderController_iconListView_didAddIconView___block_invoke;
    v11[3] = &unk_1E808AEC0;
    v11[4] = self;
    [v10 enumerateIconViewsUsingBlock:v11];
  }

  else
  {
    [v6 addObserver:self];
  }
}

- (void)iconListView:(id)a3 didRemoveIconView:(id)a4
{
  v7.receiver = self;
  v7.super_class = SBHLibraryPodFolderController;
  v6 = a4;
  [(SBFolderController *)&v7 iconListView:a3 didRemoveIconView:v6];
  [v6 removeObserver:{self, v7.receiver, v7.super_class}];
}

- (void)iconViewDidHandleTap:(id)a3
{
  v46 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v44.receiver = self;
  v44.super_class = SBHLibraryPodFolderController;
  [(SBFolderController *)&v44 iconViewDidHandleTap:v4];
  v5 = [v4 icon];
  v6 = [(SBFolderController *)self folder];
  v7 = [objc_opt_class() iconLocation];
  if (([v6 containsIcon:v5] & 1) == 0)
  {
    v38 = v7;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v8 = [(SBHLibraryCategoriesFolderDataSource *)self->_dataSource categoryIdentifiers];
    v9 = [v8 countByEnumeratingWithState:&v40 objects:v45 count:16];
    if (v9)
    {
      v10 = v9;
      v34 = v6;
      v36 = v4;
      v11 = *v41;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v41 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [(SBHLibraryCategoriesFolderDataSource *)self->_dataSource categoryForIdentifier:*(*(&v40 + 1) + 8 * i)];
          v14 = [v13 compactPodFolder];
          v15 = [v14 containsIcon:v5];

          if (v15)
          {
            v16 = [v13 compactPodFolder];

            v7 = @"SBIconLocationAppLibraryCategoryPod";
            v6 = v16;
            v4 = v36;
            goto LABEL_13;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v40 objects:v45 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }

      v6 = v34;
      v4 = v36;
    }

LABEL_13:
  }

  if ([v5 isLaunchEnabled] && objc_msgSend(v5, "isLeafIcon") && objc_msgSend(v6, "isLibraryCategoryFolder"))
  {
    v35 = [(SBHLibraryPodFolderController *)self loggingClient];
    v17 = self->_libraryCategoryMap;
    v18 = [v6 libraryCategoryIdentifier];
    v19 = [v5 leafIdentifier];
    v33 = [v18 predictionCategoryID];
    v20 = [v18 predictionCategoryIndex];
    v37 = v18;
    v21 = [(SBHLibraryCategoryMap *)v17 sortedApplicationIdentifiersForCategoryIdentifier:v18];
    v22 = [v21 indexOfObject:v19];

    v23 = [MEMORY[0x1E695DF00] date];
    v39 = v17;
    v24 = [(SBHLibraryCategoryMap *)v17 metadata];
    v25 = [v24 objectForKey:@"response"];

    if ([(__CFString *)v7 isEqual:@"SBIconLocationAppLibraryCategoryPodRecents"])
    {
      v26 = v35;
      [v35 logLaunchFromCategoryPreviewWithDate:v23 categoryID:4 categoryIndex:v20 bundleID:v19 bundleIndex:v22 appDirectoryResponse:v25];
LABEL_19:
      v27 = v26;
LABEL_25:

      goto LABEL_26;
    }

    v32 = v22;
    v26 = v35;
    if ([(__CFString *)v7 isEqual:@"SBIconLocationAppLibraryCategoryPodSuggestions"])
    {
      v27 = v35;
      v28 = v35;
      v29 = v23;
      v30 = 3;
    }

    else
    {
      v27 = v35;
      if (![(__CFString *)v7 isEqual:@"SBIconLocationAppLibraryCategoryPod"])
      {
        if ([(__CFString *)v7 isEqual:@"SBIconLocationAppLibraryCategoryPodExpanded"])
        {
          [v35 logLaunchFromExpandedCategoryWithDate:v23 categoryID:v33 categoryIndex:v20 bundleID:v19 bundleIndex:v32 appDirectoryResponse:v25];
          goto LABEL_25;
        }

        v31 = SBLogProactiveAppLibrary();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          [(SBHLibraryPodFolderController *)v19 iconViewDidHandleTap:v7, v31];
        }

        goto LABEL_19;
      }

      v28 = v35;
      v29 = v23;
      v30 = v33;
    }

    [v28 logLaunchFromCategoryPreviewWithDate:v29 categoryID:v30 categoryIndex:v20 bundleID:v19 bundleIndex:v32 appDirectoryResponse:v25];
    goto LABEL_25;
  }

LABEL_26:
}

- (BOOL)isPresentingIconLocation:(id)a3
{
  v4 = a3;
  v5 = [(SBHLibraryPodFolderController *)self presentedIconLocations];
  v6 = [v5 containsObject:v4];

  return v6;
}

- (NSSet)presentedIconLocations
{
  v9.receiver = self;
  v9.super_class = SBHLibraryPodFolderController;
  v3 = [(SBFolderController *)&v9 presentedIconLocations];
  v4 = [v3 mutableCopy];

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

- (id)iconViewForIcon:(id)a3 location:(id)a4 options:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(SBFolderController *)self folder];
  v11 = [v10 isRootFolder];

  if (v11)
  {
    v12 = 0;
    if (v8 && v9)
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
      v15 = v8;
      v16 = v9;
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
    v12 = [(SBFolderController *)&v24 iconViewForIcon:v8 location:v9 options:a5];
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

- (id)firstIconViewForIcon:(id)a3 inLocations:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SBFolderController *)self folder];
  v9 = [v8 isRootFolder];

  if (v9)
  {
    v10 = 0;
    if (v6 && v7)
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
      v13 = v6;
      v14 = v7;
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
    v10 = [(SBFolderController *)&v22 firstIconViewForIcon:v6 inLocations:v7];
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

- (id)firstIconViewForIcon:(id)a3
{
  v4 = a3;
  v5 = [(SBFolderController *)self folder];
  v6 = [v5 isRootFolder];

  if (v6)
  {
    if (v4)
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
      v10 = v4;
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
    v7 = [(SBFolderController *)&v18 firstIconViewForIcon:v4];
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

- (id)firstNonSuggestionsOrRecentsIconViewForIcon:(id)a3
{
  v4 = a3;
  v5 = [(SBFolderController *)self folder];
  v6 = [v5 isRootFolder];

  if (v6)
  {
    if (v4)
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
      v10 = v4;
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
    v7 = [(SBFolderController *)&v18 firstIconViewForIcon:v4];
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

- (BOOL)isDisplayingIcon:(id)a3 inLocation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SBFolderController *)self folder];
  v9 = [v8 isRootFolder];

  if (v9)
  {
    v10 = 0;
    if (v6 && v7)
    {
      v16 = 0;
      v17 = &v16;
      v18 = 0x2020000000;
      v19 = 0;
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __61__SBHLibraryPodFolderController_isDisplayingIcon_inLocation___block_invoke;
      v12[3] = &unk_1E808AF10;
      v13 = v6;
      v14 = v7;
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
    v10 = [(SBFolderController *)&v20 isDisplayingIcon:v6 inLocation:v7];
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

- (BOOL)isDisplayingIcon:(id)a3 inLocations:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SBFolderController *)self folder];
  v9 = [v8 isRootFolder];

  if (v9)
  {
    v10 = 0;
    if (v6 && v7)
    {
      v16 = 0;
      v17 = &v16;
      v18 = 0x2020000000;
      v19 = 0;
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __62__SBHLibraryPodFolderController_isDisplayingIcon_inLocations___block_invoke;
      v12[3] = &unk_1E808AF10;
      v13 = v6;
      v14 = v7;
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
    v10 = [(SBFolderController *)&v20 isDisplayingIcon:v6 inLocations:v7];
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

- (BOOL)isDisplayingIcon:(id)a3
{
  v4 = a3;
  v5 = [(SBFolderController *)self folder];
  v6 = [v5 isRootFolder];

  if (v6)
  {
    if (v4)
    {
      v12 = 0;
      v13 = &v12;
      v14 = 0x2020000000;
      v15 = 0;
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __50__SBHLibraryPodFolderController_isDisplayingIcon___block_invoke;
      v9[3] = &unk_1E808AF38;
      v10 = v4;
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
    v7 = [(SBFolderController *)&v16 isDisplayingIcon:v4];
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

- (BOOL)isDisplayingIconView:(id)a3
{
  v4 = a3;
  v5 = [(SBFolderController *)self folder];
  v6 = [v5 isRootFolder];

  if (v6)
  {
    if (v4)
    {
      v12 = 0;
      v13 = &v12;
      v14 = 0x2020000000;
      v15 = 0;
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __54__SBHLibraryPodFolderController_isDisplayingIconView___block_invoke;
      v9[3] = &unk_1E808AF38;
      v10 = v4;
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
    v7 = [(SBFolderController *)&v16 isDisplayingIconView:v4];
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

- (BOOL)isDisplayingIconView:(id)a3 inLocation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SBFolderController *)self folder];
  v9 = [v8 isRootFolder];

  if (v9)
  {
    v10 = 0;
    if (v6 && v7)
    {
      v16 = 0;
      v17 = &v16;
      v18 = 0x2020000000;
      v19 = 0;
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __65__SBHLibraryPodFolderController_isDisplayingIconView_inLocation___block_invoke;
      v12[3] = &unk_1E808AF10;
      v13 = v6;
      v14 = v7;
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
    v10 = [(SBFolderController *)&v20 isDisplayingIconView:v6 inLocation:v7];
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

- (void)enumerateDisplayedIconViewsForIcon:(id)a3 usingBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SBFolderController *)self folder];
  v9 = [v8 isRootFolder];

  if (v9)
  {
    if (v6 && v7)
    {
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __79__SBHLibraryPodFolderController_enumerateDisplayedIconViewsForIcon_usingBlock___block_invoke;
      v10[3] = &unk_1E808AF60;
      v11 = v6;
      v12 = v7;
      [(SBHLibraryPodFolderController *)self enumerateViewControllersUsingBlock:v10];
    }
  }

  else
  {
    v13.receiver = self;
    v13.super_class = SBHLibraryPodFolderController;
    [(SBFolderController *)&v13 enumerateDisplayedIconViewsForIcon:v6 usingBlock:v7];
  }
}

- (void)enumerateDisplayedIconViewsUsingBlock:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(SBFolderController *)self folder];
  v6 = [v5 isRootFolder];

  if (v6)
  {
    if (v4)
    {
      v32 = 0;
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v7 = [(SBFolderController *)self folderView];
      v8 = [v7 iconListViews];

      v20 = [v8 countByEnumeratingWithState:&v28 objects:v35 count:16];
      if (v20)
      {
        v9 = *v29;
        v21 = v8;
        v19 = *v29;
        do
        {
          v10 = 0;
          do
          {
            if (*v29 != v9)
            {
              objc_enumerationMutation(v8);
            }

            v11 = *(*(&v28 + 1) + 8 * v10);
            v24 = 0u;
            v25 = 0u;
            v26 = 0u;
            v27 = 0u;
            v12 = [v11 icons];
            v13 = [v12 countByEnumeratingWithState:&v24 objects:v34 count:16];
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
                    objc_enumerationMutation(v12);
                  }

                  v17 = [v11 displayedIconViewForIcon:*(*(&v24 + 1) + 8 * v16)];
                  if (v17)
                  {
                    v4[2](v4, v17, &v32);
                    if (v32)
                    {

                      v18 = v21;
                      goto LABEL_22;
                    }
                  }

                  ++v16;
                }

                while (v14 != v16);
                v14 = [v12 countByEnumeratingWithState:&v24 objects:v34 count:16];
                if (v14)
                {
                  continue;
                }

                break;
              }
            }

            ++v10;
            v8 = v21;
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
      v23 = v4;
      [(SBHLibraryPodFolderController *)self enumerateViewControllersUsingBlock:v22];
      v18 = v23;
LABEL_22:
    }
  }

  else
  {
    v33.receiver = self;
    v33.super_class = SBHLibraryPodFolderController;
    [(SBFolderController *)&v33 enumerateDisplayedIconViewsUsingBlock:v4];
  }
}

- (id)firstIconViewForIcon:(id)a3 excludingLocations:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SBFolderController *)self folder];
  v9 = [v8 isRootFolder];

  if (v9)
  {
    if (v6 && [v7 count])
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
      v13 = v6;
      v14 = v7;
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
    v10 = [(SBFolderController *)&v22 firstIconViewForIcon:v6 excludingLocations:v7];
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

- (void)setLibrarySearchControllerScrollViewDelegate:(id)a3
{
  v4 = a3;
  v5 = [(SBHLibraryPodFolderController *)self podFolderView];
  [v5 setLibrarySearchControllerScrollViewDelegate:v4];
}

- (BSUIScrollViewDelegate)librarySearchControllerScrollViewDelegate
{
  v2 = [(SBHLibraryPodFolderController *)self podFolderView];
  v3 = [v2 librarySearchControllerScrollViewDelegate];

  return v3;
}

- (BOOL)_ourFolderContainsFolder:(id)a3
{
  dataSource = self->_dataSource;
  v4 = a3;
  v5 = [(SBHLibraryCategoriesFolderDataSource *)dataSource categoriesFolder];
  v6 = [v4 rootFolder];

  LOBYTE(v4) = [v5 isEqual:v6];
  return v4;
}

- (void)enumerateViewControllersUsingBlock:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v31 = 0;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v5 = [(SBFolderController *)self folderView];
  v6 = [v5 iconListViews];

  v20 = [v6 countByEnumeratingWithState:&v27 objects:v33 count:16];
  if (v20)
  {
    v7 = *v28;
    v22 = v6;
    v19 = *v28;
    do
    {
      v8 = 0;
      do
      {
        if (*v28 != v7)
        {
          objc_enumerationMutation(v6);
        }

        v21 = v8;
        v9 = *(*(&v27 + 1) + 8 * v8);
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v10 = [v9 icons];
        v11 = [v10 countByEnumeratingWithState:&v23 objects:v32 count:16];
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
                objc_enumerationMutation(v10);
              }

              v15 = [v9 displayedIconViewForIcon:*(*(&v23 + 1) + 8 * i)];
              v16 = v15;
              if (v15)
              {
                v17 = [v15 customIconImageViewController];
                v4[2](v4, v17, &v31);
                v18 = v31;

                if (v18)
                {

                  v6 = v22;
                  goto LABEL_19;
                }
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v23 objects:v32 count:16];
            if (v12)
            {
              continue;
            }

            break;
          }
        }

        v8 = v21 + 1;
        v6 = v22;
        v7 = v19;
      }

      while (v21 + 1 != v20);
      v20 = [v22 countByEnumeratingWithState:&v27 objects:v33 count:16];
    }

    while (v20);
  }

LABEL_19:
}

- (void)enumerateNonSuggestionsOrRecentsViewControllersUsingBlock:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v34 = 0;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v5 = [(SBFolderController *)self folderView];
  v6 = [v5 iconListViews];

  v23 = [v6 countByEnumeratingWithState:&v30 objects:v36 count:16];
  if (v23)
  {
    v7 = *v31;
    v25 = v6;
    v22 = *v31;
    do
    {
      v8 = 0;
      do
      {
        if (*v31 != v7)
        {
          objc_enumerationMutation(v6);
        }

        v24 = v8;
        v9 = *(*(&v30 + 1) + 8 * v8);
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v10 = [v9 icons];
        v11 = [v10 countByEnumeratingWithState:&v26 objects:v35 count:16];
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
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v26 + 1) + 8 * i);
              if ([v15 isCategoryIcon])
              {
                v16 = [v15 category];
                v17 = [v16 categoryIdentifier];
                v18 = [v17 predictionCategoryID];

                if ((v18 - 3) < 2)
                {
                  continue;
                }
              }

              v19 = [v9 displayedIconViewForIcon:v15];
              v20 = [v19 customIconImageViewController];
              v4[2](v4, v20, &v34);
              v21 = v34;

              if (v21)
              {

                v6 = v25;
                goto LABEL_20;
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v26 objects:v35 count:16];
            if (v12)
            {
              continue;
            }

            break;
          }
        }

        v8 = v24 + 1;
        v6 = v25;
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
  v2 = self;
  v3 = v2;
  if (v2)
  {
    v4 = v2;
    v5 = v2;
    do
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || (v6 = v5, v4, [v6 parentNestingViewController], v7 = objc_claimAutoreleasedReturnValue(), v4 = v6, !v7))
      {
        v7 = [v5 parentViewController];
      }

      v5 = v7;
    }

    while (v7);
  }

  else
  {
    v4 = 0;
  }

  v8 = [(SBHLibraryPodFolderController *)v3 podFolderControllerDelegate];
  if (objc_opt_respondsToSelector())
  {
    v9 = [v8 libraryPodFolderController:v3 nestingViewControllerForPushingWithProposedController:v4];

    v4 = v9;
  }

  return v4;
}

- (void)categoriesDataSourceNeedsAnimatedReload:(id)a3
{
  v4 = a3;
  v5 = [(SBHLibraryPodFolderController *)self podFolderControllerDelegate];
  v6 = [v4 categoryIdentifiersCount];

  [v5 libraryPodFolderController:self willLayoutDisplayedCategories:v6];
  if ([(SBHLibraryPodFolderController *)self _isViewControllerVisible])
  {
    v7 = [(SBFolderController *)self folderView];
    [v7 layoutIconListsWithAnimationType:0 forceRelayout:1];
  }
}

- (void)categoriesDataSource:(id)a3 shouldAnimateLayoutForCategories:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SBHLibraryPodFolderController *)self podFolderControllerDelegate];
  v9 = [v7 categoryIdentifiersCount];

  [v8 libraryPodFolderController:self willLayoutDisplayedCategories:v9];
  v10 = [(SBHLibraryPodFolderController *)self bs_isAppearingOrAppeared];
  if (((v10 ^ 1) & 1) == 0)
  {
    [MEMORY[0x1E6979518] begin];
  }

  v11 = [(SBFolderController *)self folderView];
  if ([v6 count])
  {
    v12 = [v11 iconListViews];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __87__SBHLibraryPodFolderController_categoriesDataSource_shouldAnimateLayoutForCategories___block_invoke;
    v13[3] = &unk_1E808AFB0;
    v14 = v6;
    v15 = ((v10 ^ 1u) << 63) >> 63;
    [v12 enumerateObjectsUsingBlock:v13];
  }

  if (v10)
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
  v4 = [(SBHLibraryPodFolderController *)self libraryCategoryMap];
  v3 = [(SBHLibraryCategoriesFolderDataSource *)dataSource reloadDataWithCategoryMap:v4];
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