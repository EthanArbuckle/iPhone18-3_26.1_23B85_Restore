@interface PXFeedViewController
- (BOOL)actionPerformer:(id)a3 transitionToViewController:(id)a4 transitionType:(int64_t)a5;
- (BOOL)handlePrimaryActionOnItemAtIndexPath:(PXSimpleIndexPath *)a3 inDataSource:(id)a4;
- (BOOL)handleSelectActionOnItemAtIndexPath:(PXSimpleIndexPath *)a3 inDataSource:(id)a4;
- (CGSize)sizeThatFits:(CGSize)a3;
- (PXFeedViewController)init;
- (PXFeedViewController)initWithCoder:(id)a3;
- (PXFeedViewController)initWithConfiguration:(id)a3;
- (PXFeedViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (PXFeedViewControllerTabBarTransitionDelegate)tabBarTransitionDelegate;
- (UIScrollView)ppt_scrollView;
- (id)_objectReferenceForDestination:(id)a3;
- (id)_targetedPreviewForObjectReference:(id)a3;
- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4;
- (id)contextMenuInteraction:(id)a3 previewForDismissingMenuWithConfiguration:(id)a4;
- (id)contextMenuInteraction:(id)a3 previewForHighlightingMenuWithConfiguration:(id)a4;
- (id)itemPlacementControllerForItemReference:(id)a3;
- (unint64_t)routingOptionsForDestination:(id)a3;
- (void)_checkCanNavigate:(BOOL *)a3 toDestination:(id)a4 iterator:(id)a5;
- (void)_handleCanNavigate:(BOOL)a3 toDestination:(id)a4 objectReference:(id)a5 completionHandler:(id)a6;
- (void)_handleScrollViewTap:(id)a3;
- (void)_ifDataSourceIsEmptyPopIfSpecAllows;
- (void)_invalidatePlaceholder;
- (void)_setNeedsUpdate;
- (void)_updatePlaceholder;
- (void)a_customTapToRadar:(id)a3;
- (void)collectTapToRadarDiagnosticsIntoContainer:(id)a3;
- (void)didEndTransition:(id)a3 withEndPoint:(id)a4 finished:(BOOL)a5;
- (void)navigateToDestination:(id)a3 options:(unint64_t)a4 completionHandler:(id)a5;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)ppt_transitionToFirstItemWithWillPresentHandler:(id)a3 completionHandler:(id)a4;
- (void)prepareForTransitionToSelectedTabBarItemSegmentWithCompletion:(id)a3;
- (void)setActionPerformer:(id)a3;
- (void)setIsActive:(BOOL)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)willBeginTransition:(id)a3 withEndPoint:(id)a4 anchorItemReference:(id)a5;
@end

@implementation PXFeedViewController

- (PXFeedViewControllerTabBarTransitionDelegate)tabBarTransitionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_tabBarTransitionDelegate);

  return WeakRetained;
}

- (void)collectTapToRadarDiagnosticsIntoContainer:(id)a3
{
  v4 = a3;
  v5 = [(PXFeedViewController *)self feedView];
  [v4 addSubprovider:v5];

  v6 = +[PXStorySettings sharedInstance];
  [v4 addSubprovider:v6];
}

- (id)_objectReferenceForDestination:(id)a3
{
  v4 = a3;
  v5 = [(PXFeedViewController *)self configuration];
  v6 = [v5 objectReferenceForDestination:v4];

  return v6;
}

- (void)_handleCanNavigate:(BOOL)a3 toDestination:(id)a4 objectReference:(id)a5 completionHandler:(id)a6
{
  v8 = a3;
  v36 = *MEMORY[0x1E69E9840];
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = PLStoryGetLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = [v10 publicDescription];
    *buf = 67109634;
    v31 = v8;
    v32 = 2112;
    v33 = self;
    v34 = 2114;
    v35 = v14;
    _os_log_impl(&dword_1A3C1C000, v13, OS_LOG_TYPE_INFO, "done waiting for navigation to be possible %i from %@ to %{public}@", buf, 0x1Cu);
  }

  if (v8)
  {
    v21 = [(PXFeedViewController *)self actionPerformer];
    v22 = [v10 source];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __91__PXFeedViewController__handleCanNavigate_toDestination_objectReference_completionHandler___block_invoke;
    v28[3] = &unk_1E7741218;
    v23 = v12;
    v29 = v23;
    v24 = [v21 navigateToObjectReference:v11 originalSource:v22 fromViewController:self animated:0 willPresentHandler:0 completionHandler:v28];

    if ((v24 & 1) == 0)
    {
      v23[2](v23, 5, 0);
    }

    v25 = PLStoryGetLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      v26 = [v10 publicDescription];
      *buf = 67109378;
      v31 = v24;
      v32 = 2114;
      v33 = v26;
      _os_log_impl(&dword_1A3C1C000, v25, OS_LOG_TYPE_INFO, "navigation succeeded %i to %{public}@", buf, 0x12u);
    }

    v27 = v29;
  }

  else
  {
    v27 = PXStoryErrorCreateWithCodeDebugFormat(13, @"Couldn't navigate from %@", v15, v16, v17, v18, v19, v20, self);
    (*(v12 + 2))(v12, 5, v27);
  }
}

- (void)_checkCanNavigate:(BOOL *)a3 toDestination:(id)a4 iterator:(id)a5
{
  v25 = *MEMORY[0x1E69E9840];
  v9 = a4;
  v10 = a5;
  if ([(PXFeedViewController *)self px_isVisible])
  {
    v11 = [(PXFeedViewController *)self presentedViewController];
    v12 = v11 == 0;
  }

  else
  {
    v12 = 0;
  }

  *a3 = v12;
  v13 = PLStoryGetLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = [v9 publicDescription];
    *buf = 67109634;
    v20 = v12;
    v21 = 2112;
    v22 = self;
    v23 = 2114;
    v24 = v14;
    _os_log_impl(&dword_1A3C1C000, v13, OS_LOG_TYPE_INFO, "checking whether navigation is possible %i from %@ to %{public}@", buf, 0x1Cu);
  }

  if (v12)
  {
    [v10 stop];
  }

  else
  {
    v15 = [[PXExpectation alloc] initWithLabelFormat:@"%@'s next viewDidAppear", self];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __65__PXFeedViewController__checkCanNavigate_toDestination_iterator___block_invoke;
    v16[3] = &unk_1E77411F0;
    v18 = a2;
    v16[4] = self;
    v17 = v10;
    [(PXExpectation *)v15 performWhenFulfilled:v16 timeout:3.0];
    [(PXFeedViewController *)self setNextViewDidAppearExpectation:v15];
  }
}

uint64_t __65__PXFeedViewController__checkCanNavigate_toDestination_iterator___block_invoke(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    PXAssertGetLog();
  }

  return [*(a1 + 40) next];
}

- (void)navigateToDestination:(id)a3 options:(unint64_t)a4 completionHandler:(id)a5
{
  v21 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a5;
  v9 = PLStoryGetLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = [v7 publicDescription];
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v10;
    _os_log_impl(&dword_1A3C1C000, v9, OS_LOG_TYPE_INFO, "navigating to destination %{public}@", &buf, 0xCu);
  }

  v11 = [(PXFeedViewController *)self _objectReferenceForDestination:v7];
  if (v11)
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v19 = 0x2020000000;
    v20 = 0;
    objc_initWeak(&location, self);
    v15[1] = MEMORY[0x1E69E9820];
    v15[2] = 3221225472;
    v15[3] = __72__PXFeedViewController_navigateToDestination_options_completionHandler___block_invoke;
    v15[4] = &unk_1E77411A0;
    objc_copyWeak(&v16, &location);
    v15[6] = &buf;
    v12 = v7;
    v15[5] = v12;
    objc_copyWeak(v15, &location);
    v12;
    v11;
    v8;
    PXIterateAsynchronously();
  }

  v13 = PLStoryGetLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v14 = [v7 publicDescription];
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v14;
    _os_log_impl(&dword_1A3C1C000, v13, OS_LOG_TYPE_ERROR, "failed to find object reference for %{public}@", &buf, 0xCu);
  }

  (*(v8 + 2))(v8, 5, 0);
}

void __72__PXFeedViewController_navigateToDestination_options_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _checkCanNavigate:*(*(a1 + 40) + 8) + 24 toDestination:*(a1 + 32) iterator:v3];
}

void __72__PXFeedViewController_navigateToDestination_options_completionHandler___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  [WeakRetained _handleCanNavigate:*(*(*(a1 + 56) + 8) + 24) toDestination:*(a1 + 32) objectReference:*(a1 + 40) completionHandler:*(a1 + 48)];
}

- (unint64_t)routingOptionsForDestination:(id)a3
{
  if (!self->_actionPerformerRespondsTo.navigateToObjectReferenceFromViewControllerAnimatedWillPresentHandlerCompletionHandler)
  {
    return 0;
  }

  v3 = [(PXFeedViewController *)self _objectReferenceForDestination:a3];
  v4 = v3 != 0;

  return v4;
}

- (id)_targetedPreviewForObjectReference:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(PXFeedView *)self->_feedView tungstenView];
    v6 = [v5 regionOfInterestForObjectReference:v4];

    if (v6)
    {
      v7 = [(PXFeedViewController *)self view];
      [v6 rectInCoordinateSpace:v7];
      v8 = [v7 resizableSnapshotViewFromRect:1 afterScreenUpdates:? withCapInsets:?];
      v9 = objc_alloc_init(MEMORY[0x1E69DCE28]);
      v10 = MEMORY[0x1E69DC728];
      [v8 bounds];
      v12 = v11;
      v14 = v13;
      v16 = v15;
      v18 = v17;
      v19 = [v6 imageViewSpec];
      [v19 cornerRadius];
      v21 = [v10 bezierPathWithRoundedRect:v12 cornerRadius:{v14, v16, v18, v20}];
      [v9 setVisiblePath:v21];

      v22 = [MEMORY[0x1E69DC888] clearColor];
      [v9 setBackgroundColor:v22];

      v23 = objc_alloc(MEMORY[0x1E69DCE38]);
      PXRectGetCenter();
    }
  }

  else
  {
    v6 = 0;
  }

  return 0;
}

- (id)contextMenuInteraction:(id)a3 previewForDismissingMenuWithConfiguration:(id)a4
{
  v5 = [(PXFeedViewController *)self navigatedObjectReference:a3];
  v6 = [(PXFeedViewController *)self _targetedPreviewForObjectReference:v5];

  return v6;
}

- (id)contextMenuInteraction:(id)a3 previewForHighlightingMenuWithConfiguration:(id)a4
{
  v5 = [(PXFeedViewController *)self navigatedObjectReference:a3];
  v6 = [(PXFeedViewController *)self _targetedPreviewForObjectReference:v5];

  return v6;
}

- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4
{
  if (self->_actionPerformerRespondsTo.contextMenuForObjectReferenceInDataSourceSuggestedActions)
  {
    y = a4.y;
    x = a4.x;
    v7 = [(PXFeedView *)self->_feedView tungstenView];
    v8 = [v7 feedHitTestResultAtPoint:{x, y}];

    v9 = [v8 objectReference];
    if (v9)
    {
      v10 = [v8 objectReference];
      [(PXFeedViewController *)self setNavigatedObjectReference:v10];

      v11 = [(PXFeedViewController *)self viewModel];
      v12 = [v11 dataSource];

      v13 = MEMORY[0x1E69DC8D8];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __78__PXFeedViewController_contextMenuInteraction_configurationForMenuAtLocation___block_invoke;
      v17[3] = &unk_1E7741178;
      v17[4] = self;
      v18 = v9;
      v19 = v12;
      v14 = v12;
      v15 = [v13 configurationWithIdentifier:0 previewProvider:0 actionProvider:v17];
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

id __78__PXFeedViewController_contextMenuInteraction_configurationForMenuAtLocation___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  v5 = [v3 actionPerformer];
  v6 = [v5 contextMenuForObjectReference:a1[5] inDataSource:a1[6] suggestedActions:v4 fromViewController:a1[4]];

  return v6;
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v6 = a4;
  v9 = a3;
  if (ViewModelObservationContext_185452 == a5)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_8;
    }

    v11 = v9;
    [(PXFeedViewController *)self _invalidatePlaceholder];
    goto LABEL_7;
  }

  if (DataSourceManagerObservationContext_185453 != a5)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PXFeedViewController.m" lineNumber:516 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if (v6)
  {
    v11 = v9;
    [(PXFeedViewController *)self _ifDataSourceIsEmptyPopIfSpecAllows];
LABEL_7:
    v9 = v11;
  }

LABEL_8:
}

- (void)_ifDataSourceIsEmptyPopIfSpecAllows
{
  v8 = [(PXFeedViewController *)self viewModel];
  v3 = [v8 dataSourceManager];
  v4 = [v3 dataSource];
  if ([v4 containsAnyItems])
  {
  }

  else
  {
    v5 = [(PXFeedViewController *)self configuration];
    v6 = [v5 allowsPopOnEmptyBehavior];

    if (!v6)
    {
      return;
    }

    v8 = [(PXFeedViewController *)self navigationController];
    v7 = [v8 px_popToViewControllerPrecedingViewController:self animated:1];
  }
}

- (void)didEndTransition:(id)a3 withEndPoint:(id)a4 finished:(BOOL)a5
{
  v6 = [(PXFeedViewController *)self onTransitionEnd:a3];
  if (v6)
  {
    v7 = v6;
    [(PXFeedViewController *)self setOnTransitionEnd:0];
    v7[2](v7);
    v6 = v7;
  }
}

- (void)willBeginTransition:(id)a3 withEndPoint:(id)a4 anchorItemReference:(id)a5
{
  v30 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(PXFeedViewController *)self viewModel];
  v12 = [v11 dataSourceManager];

  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x3032000000;
  v27[3] = __Block_byref_object_copy__185461;
  v27[4] = __Block_byref_object_dispose__185462;
  v28 = 0;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __77__PXFeedViewController_willBeginTransition_withEndPoint_anchorItemReference___block_invoke;
  v26[3] = &unk_1E7741128;
  v26[4] = self;
  v26[5] = v27;
  [v12 performChanges:v26];
  v20 = MEMORY[0x1E69E9820];
  v21 = 3221225472;
  v22 = __77__PXFeedViewController_willBeginTransition_withEndPoint_anchorItemReference___block_invoke_2;
  v23 = &unk_1E7749A28;
  v13 = v12;
  v24 = v13;
  v25 = v27;
  [(PXFeedViewController *)self setOnTransitionEnd:&v20];
  if (v10)
  {
    v14 = [v13 dataSource];
    v15 = [off_1E77218C0 alloc];
    v16 = *(off_1E7722228 + 1);
    *buf = *off_1E7722228;
    *&buf[16] = v16;
    v17 = [v15 initWithSectionObject:0 itemObject:v10 subitemObject:0 indexPath:buf];
    v18 = [v14 objectReferenceForObjectReference:v17];

    if (v18)
    {
      v19 = [(PXFeedViewController *)self feedView];
      [v19 scrollObjectReference:v18 toScrollPosition:64];
    }

    else
    {
      v19 = PLStoryGetLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        *&buf[4] = v10;
        *&buf[12] = 2112;
        *&buf[14] = v14;
        _os_log_impl(&dword_1A3C1C000, v19, OS_LOG_TYPE_ERROR, "Transition anchoring failed because %@ couldn't be found in %@", buf, 0x16u);
      }
    }
  }

  _Block_object_dispose(v27, 8);
}

void __77__PXFeedViewController_willBeginTransition_withEndPoint_anchorItemReference___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_class();
  v8 = NSStringFromClass(v4);
  v5 = [v3 pauseChangeDeliveryWithTimeout:v8 identifier:3.0];

  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

uint64_t __77__PXFeedViewController_willBeginTransition_withEndPoint_anchorItemReference___block_invoke_2(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __77__PXFeedViewController_willBeginTransition_withEndPoint_anchorItemReference___block_invoke_3;
  v3[3] = &unk_1E7741150;
  v1 = *(a1 + 32);
  v3[4] = *(a1 + 40);
  return [v1 performChanges:v3];
}

- (id)itemPlacementControllerForItemReference:(id)a3
{
  v4 = a3;
  v5 = [(PXFeedViewController *)self feedView];
  v6 = [v5 itemPlacementControllerForItemReference:v4];

  return v6;
}

- (BOOL)actionPerformer:(id)a3 transitionToViewController:(id)a4 transitionType:(int64_t)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [v8 popoverPresentationController];
  if (v9)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [(PXFeedViewController *)self viewModel];
      v11 = [v10 dataSourceManager];
      v12 = [v11 dataSource];

      v13 = [v7 assetCollection];
      v14 = [off_1E77218C0 alloc];
      v15 = *(off_1E7722228 + 1);
      v23[0] = *off_1E7722228;
      v23[1] = v15;
      v16 = [v14 initWithSectionObject:0 itemObject:v13 subitemObject:0 indexPath:v23];
      v17 = [v12 objectReferenceForObjectReference:v16];

      v18 = [(PXFeedViewController *)self feedView];
      v19 = v18;
      if (v17)
      {
        v20 = [v18 regionOfInterestForObjectReference:v17];
        if (v20)
        {
          v21 = v20;
          [v9 setSourceView:v19];
          [v21 rectInCoordinateSpace:v19];
          [v9 setSourceRect:?];
        }
      }
    }
  }

  [(PXFeedViewController *)self px_presentOverTopmostPresentedViewController:v8 animated:1 completion:0];

  return 1;
}

- (BOOL)handleSelectActionOnItemAtIndexPath:(PXSimpleIndexPath *)a3 inDataSource:(id)a4
{
  v5 = [(PXFeedViewController *)self viewModel:a3];
  v6 = [v5 selectionManager];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __73__PXFeedViewController_handleSelectActionOnItemAtIndexPath_inDataSource___block_invoke;
  v9[3] = &__block_descriptor_64_e37_v16__0___PXMutableSelectionManager__8l;
  v7 = *&a3->item;
  v10 = *&a3->dataSourceIdentifier;
  v11 = v7;
  [v6 performChanges:v9];

  return 1;
}

uint64_t __73__PXFeedViewController_handleSelectActionOnItemAtIndexPath_inDataSource___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 48);
  v4[0] = *(a1 + 32);
  v4[1] = v2;
  return [a2 setSelectedIndexPath:v4];
}

- (BOOL)handlePrimaryActionOnItemAtIndexPath:(PXSimpleIndexPath *)a3 inDataSource:(id)a4
{
  if (!self->_actionPerformerRespondsTo.handlePrimaryActionOnItemAtIndexPathInDataSourceFromViewController)
  {
    return 0;
  }

  v6 = a4;
  v7 = [(PXFeedViewController *)self actionPerformer];
  v8 = *&a3->item;
  v11[0] = *&a3->dataSourceIdentifier;
  v11[1] = v8;
  v9 = [v7 handlePrimaryActionOnItemAtIndexPath:v11 inDataSource:v6 fromViewController:self];

  return v9;
}

- (void)prepareForTransitionToSelectedTabBarItemSegmentWithCompletion:(id)a3
{
  v7 = a3;
  v4 = [(PXFeedViewController *)self tabBarTransitionDelegate];

  if (v4)
  {
    v5 = [(PXFeedViewController *)self tabBarTransitionDelegate];
    v6 = [(PXFeedViewController *)self tabBarController];
    [v5 prepareForTransitionToSelectedTabBarItemSegmentNumber:{objc_msgSend(v6, "selectedIndex")}];
  }

  v7[2]();
}

- (void)ppt_transitionToFirstItemWithWillPresentHandler:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PXFeedViewController *)self viewModel];
  v9 = [v8 dataSource];

  v14 = 0u;
  v15 = 0u;
  if (v9)
  {
    [v9 firstItemIndexPath];
  }

  v13[0] = v14;
  v13[1] = v15;
  v10 = [v9 objectReferenceAtIndexPath:v13];
  if (!self->_actionPerformerRespondsTo.navigateToObjectReferenceFromViewControllerAnimatedWillPresentHandlerCompletionHandler || (-[PXFeedViewController actionPerformer](self, "actionPerformer"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 navigateToObjectReference:v10 originalSource:@"PPT" fromViewController:self animated:1 willPresentHandler:v6 completionHandler:v7], v11, (v12 & 1) == 0))
  {
    if (v6)
    {
      v6[2](v6, 0);
    }

    if (v7)
    {
      v7[2](v7, 0);
    }
  }
}

- (UIScrollView)ppt_scrollView
{
  v2 = [(PXFeedViewController *)self feedView];
  v3 = [v2 tungstenView];
  v4 = [v3 diagnosticsMainScrollView];

  return v4;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(PXFeedViewController *)self placeholderView];
  if (v6 && (v7 = v6, -[PXFeedViewController viewModel](self, "viewModel"), v8 = objc_claimAutoreleasedReturnValue(), [v8 placeholderFactory], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "supportsDynamicPlaceholderContentSize"), v9, v8, v7, v10))
  {
    v11 = [(PXFeedViewController *)self view];
    [v11 layoutIfNeeded];
    LODWORD(v12) = 1148846080;
    LODWORD(v13) = 1112014848;
    [v11 systemLayoutSizeFittingSize:width withHorizontalFittingPriority:height verticalFittingPriority:{v12, v13}];
    v15 = v14;
    v17 = v16;
  }

  else
  {
    v15 = *off_1E7722230;
    v17 = *(off_1E7722230 + 1);
    v18 = [(PXFeedViewController *)self feedView];
    v19 = [v18 tungstenView];

    if (v19)
    {
      v20 = [(PXFeedViewController *)self feedView];
      v21 = [v20 tungstenView];

      v22 = [v21 rootLayout];
      [v22 contentSize];

      PXSizeIsEmpty();
    }
  }

  v23 = v15;
  v24 = v17;
  result.height = v24;
  result.width = v23;
  return result;
}

- (void)_updatePlaceholder
{
  v32[4] = *MEMORY[0x1E69E9840];
  v3 = [(PXFeedViewController *)self placeholderView];
  v4 = [(PXFeedViewController *)self viewModel];
  v5 = [v4 dataSource];
  v6 = [v5 containsAnyItems];

  if (v6)
  {
    [v3 removeFromSuperview];

    v3 = 0;
  }

  else if (!v3)
  {
    v7 = [v4 placeholderFactory];
    v3 = [v7 createPlaceholderViewForFeedWithViewModel:v4];

    if (v3)
    {
      v8 = [(PXFeedViewController *)self view];
      [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
      [v8 addSubview:v3];
      v9 = [v4 spec];
      [v9 placeholderMargins];
      v11 = v10;
      v13 = v12;
      v15 = v14;
      v17 = v16;

      v26 = MEMORY[0x1E696ACD8];
      v31 = [v8 leadingAnchor];
      v30 = [v3 leadingAnchor];
      v29 = [v31 constraintEqualToAnchor:v30 constant:-v13];
      v32[0] = v29;
      v28 = [v8 trailingAnchor];
      v27 = [v3 trailingAnchor];
      v25 = [v28 constraintEqualToAnchor:v27 constant:v17];
      v32[1] = v25;
      v24 = [v8 topAnchor];
      v18 = [v3 topAnchor];
      v19 = [v24 constraintEqualToAnchor:v18 constant:-v11];
      v32[2] = v19;
      v20 = [v8 bottomAnchor];
      v21 = [v3 bottomAnchor];
      v22 = [v20 constraintEqualToAnchor:v21 constant:v15];
      v32[3] = v22;
      v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:4];
      [v26 activateConstraints:v23];
    }
  }

  [(PXFeedViewController *)self setPlaceholderView:v3];
}

- (void)_invalidatePlaceholder
{
  v2 = [(PXFeedViewController *)self updater];
  [v2 setNeedsUpdateOf:sel__updatePlaceholder];
}

- (void)_setNeedsUpdate
{
  v2 = [(PXFeedViewController *)self viewIfLoaded];
  [v2 setNeedsLayout];
}

- (void)_handleScrollViewTap:(id)a3
{
  if ([a3 state] == 3)
  {
    v4 = [(PXFeedViewController *)self viewModel];
    v5 = [v4 dataSource];

    v6 = [(PXFeedViewController *)self viewModel];
    v7 = [v6 selectionSnapshot];
    v8 = [v7 selectedIndexPaths];

    v14 = 0u;
    v15 = 0u;
    v9 = [v5 identifier];
    if (v8)
    {
      [v8 firstItemIndexPathForDataSourceIdentifier:v9];
      if (v14 != *off_1E7721F68 && v15 != 0x7FFFFFFFFFFFFFFFLL && *(&v15 + 1) == 0x7FFFFFFFFFFFFFFFLL)
      {
        v12 = [(PXFeedViewController *)self actionPerformer];
        v13[0] = v14;
        v13[1] = v15;
        [v12 handlePrimaryActionOnItemAtIndexPath:v13 inDataSource:v5 fromViewController:self];
      }
    }
  }
}

- (void)a_customTapToRadar:(id)a3
{
  v4 = objc_alloc_init(PXRadarConfiguration);
  [(PXRadarConfiguration *)v4 addDiagnosticProvider:self];
  [(PXRadarConfiguration *)v4 setComponent:1];
  [(PXRadarConfiguration *)v4 setKeywordIDs:&unk_1F19112D8];
  [(PXRadarConfiguration *)v4 setAttachmentsIncludeAnyUserAsset:0];
  PXFileRadarWithConfiguration(v4);
}

- (void)setActionPerformer:(id)a3
{
  v5 = a3;
  if (self->_actionPerformer != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_actionPerformer, a3);
    self->_actionPerformerRespondsTo.handlePrimaryActionOnItemAtIndexPathInDataSourceFromViewController = objc_opt_respondsToSelector() & 1;
    self->_actionPerformerRespondsTo.navigateToObjectReferenceFromViewControllerAnimatedWillPresentHandlerCompletionHandler = objc_opt_respondsToSelector() & 1;
    self->_actionPerformerRespondsTo.deleteItemsInSelectionUndoManager = objc_opt_respondsToSelector() & 1;
    v6 = objc_opt_respondsToSelector() & 1;
    v5 = v7;
    self->_actionPerformerRespondsTo.contextMenuForObjectReferenceInDataSourceSuggestedActions = v6;
  }
}

- (void)viewDidLayoutSubviews
{
  v4.receiver = self;
  v4.super_class = PXFeedViewController;
  [(PXFeedViewController *)&v4 viewDidLayoutSubviews];
  v3 = [(PXFeedViewController *)self updater];
  [v3 updateIfNeeded];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PXFeedViewController;
  [(PXFeedViewController *)&v4 viewWillDisappear:a3];
  [(PXFeedViewController *)self setIsActive:0];
}

- (void)viewDidAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = PXFeedViewController;
  [(PXFeedViewController *)&v5 viewDidAppear:a3];
  v4 = [(PXFeedViewController *)self nextViewDidAppearExpectation];
  [v4 fulfill];

  [(PXFeedViewController *)self setNextViewDidAppearExpectation:0];
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PXFeedViewController;
  [(PXFeedViewController *)&v4 viewWillAppear:a3];
  [(PXFeedViewController *)self setIsActive:1];
}

- (void)setIsActive:(BOOL)a3
{
  if (self->_isActive != a3)
  {
    v3 = a3;
    self->_isActive = a3;
    v5 = [(PXFeedViewController *)self feedView];
    [v5 setIsActive:v3];

    isActive = self->_isActive;
    v7 = [(PXFeedViewController *)self chromeController];
    [v7 setIsActive:isActive];

    LODWORD(isActive) = self->_isActive;
    v8 = [(PXFeedViewController *)self configuration];
    v9 = v8;
    if (isActive)
    {
      [v8 handleContentSeen];
    }

    else
    {
      [v8 handleContentDismissed];
    }
  }
}

- (void)viewDidLoad
{
  v37.receiver = self;
  v37.super_class = PXFeedViewController;
  [(PXFeedViewController *)&v37 viewDidLoad];
  [(PXFeedViewController *)self px_enableExtendedTraitCollection];
  v3 = [(PXFeedViewController *)self configuration];
  v4 = [PXFeedViewConfiguration alloc];
  v5 = [(PXFeedViewController *)self px_extendedTraitCollection];
  v6 = [(PXFeedViewConfiguration *)v4 initWithFeedConfiguration:v3 extendedTraitCollection:v5];

  [(PXFeedViewConfiguration *)v6 setContainerViewController:self];
  v7 = [(PXFeedViewController *)self view];
  v8 = [PXFeedView alloc];
  [v7 bounds];
  v9 = [(PXFeedView *)v8 initWithFrame:v6 configuration:?];
  feedView = self->_feedView;
  self->_feedView = v9;

  [(PXFeedView *)self->_feedView setAutoresizingMask:18];
  [v7 addSubview:self->_feedView];
  v11 = [(PXFeedView *)self->_feedView viewModel];
  viewModel = self->_viewModel;
  self->_viewModel = v11;

  v13 = self->_viewModel;
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __35__PXFeedViewController_viewDidLoad__block_invoke;
  v36[3] = &unk_1E7741100;
  v36[4] = self;
  [(PXFeedViewModel *)v13 performChanges:v36];
  [(PXFeedViewModel *)self->_viewModel registerChangeObserver:self context:ViewModelObservationContext_185452];
  v14 = [(PXFeedConfiguration *)self->_configuration actionPerformer];
  [(PXFeedViewController *)self setActionPerformer:v14];

  v15 = [v3 chromeControllerPromise];
  if (v15)
  {
    v16 = [(PXFeedViewModel *)self->_viewModel dataSourceManager];
    v17 = (v15)[2](v15, self, v16);
    chromeController = self->_chromeController;
    self->_chromeController = v17;
  }

  v19 = [(PXFeedViewController *)self navigationItem];
  [v19 setLargeTitleDisplayMode:2];

  v20 = [v3 hidesBackButton];
  v21 = [(PXFeedViewController *)self navigationItem];
  [v21 setHidesBackButton:v20];

  v22 = [[PXUITapGestureRecognizer alloc] initWithTarget:self action:sel__handleScrollViewTap_];
  [(PXUITapGestureRecognizer *)v22 setAllowedPressTypes:&unk_1F19112C0];
  [v7 addGestureRecognizer:v22];
  if (self->_actionPerformerRespondsTo.contextMenuForObjectReferenceInDataSourceSuggestedActions)
  {
    v23 = [objc_alloc(MEMORY[0x1E69DC8E0]) initWithDelegate:self];
    [v7 addInteraction:v23];
  }

  v24 = [(PXFeedView *)self->_feedView tungstenView];
  v25 = [v24 scrollViewController];
  v26 = [v25 scrollView];

  [v7 layoutIfNeeded];
  [(PXFeedViewController *)self _setObservableScrollView:v26 forEdges:5];
  v27 = dispatch_time(0, 200000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__PXFeedViewController_viewDidLoad__block_invoke_203;
  block[3] = &unk_1E774C620;
  v34 = v26;
  v35 = self;
  v28 = v26;
  dispatch_after(v27, MEMORY[0x1E69E96A0], block);
  v29 = [[off_1E7721940 alloc] initWithTarget:self needsUpdateSelector:sel__setNeedsUpdate];
  updater = self->_updater;
  self->_updater = v29;

  [(PXUpdater *)self->_updater addUpdateSelector:sel__updatePlaceholder needsUpdate:1];
  v31 = [(PXFeedViewController *)self viewModel];
  v32 = [v31 dataSourceManager];
  [v32 registerChangeObserver:self context:DataSourceManagerObservationContext_185453];
}

void __35__PXFeedViewController_viewDidLoad__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setActionPerformer:v3];
  [v4 setAssetCollectionActionPerformerDelegate:*(a1 + 32)];
  [v4 setPresentingViewController:*(a1 + 32)];
}

void __35__PXFeedViewController_viewDidLoad__block_invoke_203(uint64_t a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = __Block_byref_object_copy__185461;
  v8 = __Block_byref_object_dispose__185462;
  v9 = *(a1 + 32);
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __35__PXFeedViewController_viewDidLoad__block_invoke_204;
  v3[3] = &unk_1E7744C58;
  v3[4] = &v4;
  [v2 px_enumerateDescendantSubviewsUsingBlock:v3];
  [*(a1 + 40) _setObservableScrollView:v5[5] forEdges:5];
  _Block_object_dispose(&v4, 8);
}

void __35__PXFeedViewController_viewDidLoad__block_invoke_204(uint64_t a1, void *a2, _BYTE *a3)
{
  v6 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a3 = 1;
  }
}

- (PXFeedViewController)initWithConfiguration:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = PXFeedViewController;
  v6 = [(PXFeedViewController *)&v11 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configuration, a3);
    v8 = [(PXFeedConfiguration *)v7->_configuration viewControllerTitle];
    [(PXFeedViewController *)v7 setTitle:v8];

    v9 = [v5 actionPerformer];
    [(PXFeedViewController *)v7 setActionPerformer:v9];
  }

  return v7;
}

- (PXFeedViewController)initWithCoder:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"PXFeedViewController.m" lineNumber:101 description:{@"%s is not available as initializer", "-[PXFeedViewController initWithCoder:]"}];

  abort();
}

- (PXFeedViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [MEMORY[0x1E696AAA8] currentHandler];
  [v9 handleFailureInMethod:a2 object:self file:@"PXFeedViewController.m" lineNumber:97 description:{@"%s is not available as initializer", "-[PXFeedViewController initWithNibName:bundle:]"}];

  abort();
}

- (PXFeedViewController)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXFeedViewController.m" lineNumber:93 description:{@"%s is not available as initializer", "-[PXFeedViewController init]"}];

  abort();
}

@end