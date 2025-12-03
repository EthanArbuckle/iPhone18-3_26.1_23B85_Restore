@interface PXFeedViewController
- (BOOL)actionPerformer:(id)performer transitionToViewController:(id)controller transitionType:(int64_t)type;
- (BOOL)handlePrimaryActionOnItemAtIndexPath:(PXSimpleIndexPath *)path inDataSource:(id)source;
- (BOOL)handleSelectActionOnItemAtIndexPath:(PXSimpleIndexPath *)path inDataSource:(id)source;
- (CGSize)sizeThatFits:(CGSize)fits;
- (PXFeedViewController)init;
- (PXFeedViewController)initWithCoder:(id)coder;
- (PXFeedViewController)initWithConfiguration:(id)configuration;
- (PXFeedViewController)initWithNibName:(id)name bundle:(id)bundle;
- (PXFeedViewControllerTabBarTransitionDelegate)tabBarTransitionDelegate;
- (UIScrollView)ppt_scrollView;
- (id)_objectReferenceForDestination:(id)destination;
- (id)_targetedPreviewForObjectReference:(id)reference;
- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location;
- (id)contextMenuInteraction:(id)interaction previewForDismissingMenuWithConfiguration:(id)configuration;
- (id)contextMenuInteraction:(id)interaction previewForHighlightingMenuWithConfiguration:(id)configuration;
- (id)itemPlacementControllerForItemReference:(id)reference;
- (unint64_t)routingOptionsForDestination:(id)destination;
- (void)_checkCanNavigate:(BOOL *)navigate toDestination:(id)destination iterator:(id)iterator;
- (void)_handleCanNavigate:(BOOL)navigate toDestination:(id)destination objectReference:(id)reference completionHandler:(id)handler;
- (void)_handleScrollViewTap:(id)tap;
- (void)_ifDataSourceIsEmptyPopIfSpecAllows;
- (void)_invalidatePlaceholder;
- (void)_setNeedsUpdate;
- (void)_updatePlaceholder;
- (void)a_customTapToRadar:(id)radar;
- (void)collectTapToRadarDiagnosticsIntoContainer:(id)container;
- (void)didEndTransition:(id)transition withEndPoint:(id)point finished:(BOOL)finished;
- (void)navigateToDestination:(id)destination options:(unint64_t)options completionHandler:(id)handler;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)ppt_transitionToFirstItemWithWillPresentHandler:(id)handler completionHandler:(id)completionHandler;
- (void)prepareForTransitionToSelectedTabBarItemSegmentWithCompletion:(id)completion;
- (void)setActionPerformer:(id)performer;
- (void)setIsActive:(BOOL)active;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)willBeginTransition:(id)transition withEndPoint:(id)point anchorItemReference:(id)reference;
@end

@implementation PXFeedViewController

- (PXFeedViewControllerTabBarTransitionDelegate)tabBarTransitionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_tabBarTransitionDelegate);

  return WeakRetained;
}

- (void)collectTapToRadarDiagnosticsIntoContainer:(id)container
{
  containerCopy = container;
  feedView = [(PXFeedViewController *)self feedView];
  [containerCopy addSubprovider:feedView];

  v6 = +[PXStorySettings sharedInstance];
  [containerCopy addSubprovider:v6];
}

- (id)_objectReferenceForDestination:(id)destination
{
  destinationCopy = destination;
  configuration = [(PXFeedViewController *)self configuration];
  v6 = [configuration objectReferenceForDestination:destinationCopy];

  return v6;
}

- (void)_handleCanNavigate:(BOOL)navigate toDestination:(id)destination objectReference:(id)reference completionHandler:(id)handler
{
  navigateCopy = navigate;
  v36 = *MEMORY[0x1E69E9840];
  destinationCopy = destination;
  referenceCopy = reference;
  handlerCopy = handler;
  v13 = PLStoryGetLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    publicDescription = [destinationCopy publicDescription];
    *buf = 67109634;
    v31 = navigateCopy;
    v32 = 2112;
    selfCopy = self;
    v34 = 2114;
    v35 = publicDescription;
    _os_log_impl(&dword_1A3C1C000, v13, OS_LOG_TYPE_INFO, "done waiting for navigation to be possible %i from %@ to %{public}@", buf, 0x1Cu);
  }

  if (navigateCopy)
  {
    actionPerformer = [(PXFeedViewController *)self actionPerformer];
    source = [destinationCopy source];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __91__PXFeedViewController__handleCanNavigate_toDestination_objectReference_completionHandler___block_invoke;
    v28[3] = &unk_1E7741218;
    v23 = handlerCopy;
    v29 = v23;
    v24 = [actionPerformer navigateToObjectReference:referenceCopy originalSource:source fromViewController:self animated:0 willPresentHandler:0 completionHandler:v28];

    if ((v24 & 1) == 0)
    {
      v23[2](v23, 5, 0);
    }

    v25 = PLStoryGetLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      publicDescription2 = [destinationCopy publicDescription];
      *buf = 67109378;
      v31 = v24;
      v32 = 2114;
      selfCopy = publicDescription2;
      _os_log_impl(&dword_1A3C1C000, v25, OS_LOG_TYPE_INFO, "navigation succeeded %i to %{public}@", buf, 0x12u);
    }

    v27 = v29;
  }

  else
  {
    v27 = PXStoryErrorCreateWithCodeDebugFormat(13, @"Couldn't navigate from %@", v15, v16, v17, v18, v19, v20, self);
    (*(handlerCopy + 2))(handlerCopy, 5, v27);
  }
}

- (void)_checkCanNavigate:(BOOL *)navigate toDestination:(id)destination iterator:(id)iterator
{
  v25 = *MEMORY[0x1E69E9840];
  destinationCopy = destination;
  iteratorCopy = iterator;
  if ([(PXFeedViewController *)self px_isVisible])
  {
    presentedViewController = [(PXFeedViewController *)self presentedViewController];
    v12 = presentedViewController == 0;
  }

  else
  {
    v12 = 0;
  }

  *navigate = v12;
  v13 = PLStoryGetLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    publicDescription = [destinationCopy publicDescription];
    *buf = 67109634;
    v20 = v12;
    v21 = 2112;
    selfCopy = self;
    v23 = 2114;
    v24 = publicDescription;
    _os_log_impl(&dword_1A3C1C000, v13, OS_LOG_TYPE_INFO, "checking whether navigation is possible %i from %@ to %{public}@", buf, 0x1Cu);
  }

  if (v12)
  {
    [iteratorCopy stop];
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
    v17 = iteratorCopy;
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

- (void)navigateToDestination:(id)destination options:(unint64_t)options completionHandler:(id)handler
{
  v21 = *MEMORY[0x1E69E9840];
  destinationCopy = destination;
  handlerCopy = handler;
  v9 = PLStoryGetLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    publicDescription = [destinationCopy publicDescription];
    LODWORD(buf) = 138543362;
    *(&buf + 4) = publicDescription;
    _os_log_impl(&dword_1A3C1C000, v9, OS_LOG_TYPE_INFO, "navigating to destination %{public}@", &buf, 0xCu);
  }

  v11 = [(PXFeedViewController *)self _objectReferenceForDestination:destinationCopy];
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
    v12 = destinationCopy;
    v15[5] = v12;
    objc_copyWeak(v15, &location);
    v12;
    v11;
    handlerCopy;
    PXIterateAsynchronously();
  }

  v13 = PLStoryGetLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    publicDescription2 = [destinationCopy publicDescription];
    LODWORD(buf) = 138543362;
    *(&buf + 4) = publicDescription2;
    _os_log_impl(&dword_1A3C1C000, v13, OS_LOG_TYPE_ERROR, "failed to find object reference for %{public}@", &buf, 0xCu);
  }

  (*(handlerCopy + 2))(handlerCopy, 5, 0);
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

- (unint64_t)routingOptionsForDestination:(id)destination
{
  if (!self->_actionPerformerRespondsTo.navigateToObjectReferenceFromViewControllerAnimatedWillPresentHandlerCompletionHandler)
  {
    return 0;
  }

  v3 = [(PXFeedViewController *)self _objectReferenceForDestination:destination];
  v4 = v3 != 0;

  return v4;
}

- (id)_targetedPreviewForObjectReference:(id)reference
{
  referenceCopy = reference;
  if (referenceCopy)
  {
    tungstenView = [(PXFeedView *)self->_feedView tungstenView];
    v6 = [tungstenView regionOfInterestForObjectReference:referenceCopy];

    if (v6)
    {
      view = [(PXFeedViewController *)self view];
      [v6 rectInCoordinateSpace:view];
      v8 = [view resizableSnapshotViewFromRect:1 afterScreenUpdates:? withCapInsets:?];
      v9 = objc_alloc_init(MEMORY[0x1E69DCE28]);
      v10 = MEMORY[0x1E69DC728];
      [v8 bounds];
      v12 = v11;
      v14 = v13;
      v16 = v15;
      v18 = v17;
      imageViewSpec = [v6 imageViewSpec];
      [imageViewSpec cornerRadius];
      v21 = [v10 bezierPathWithRoundedRect:v12 cornerRadius:{v14, v16, v18, v20}];
      [v9 setVisiblePath:v21];

      clearColor = [MEMORY[0x1E69DC888] clearColor];
      [v9 setBackgroundColor:clearColor];

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

- (id)contextMenuInteraction:(id)interaction previewForDismissingMenuWithConfiguration:(id)configuration
{
  v5 = [(PXFeedViewController *)self navigatedObjectReference:interaction];
  v6 = [(PXFeedViewController *)self _targetedPreviewForObjectReference:v5];

  return v6;
}

- (id)contextMenuInteraction:(id)interaction previewForHighlightingMenuWithConfiguration:(id)configuration
{
  v5 = [(PXFeedViewController *)self navigatedObjectReference:interaction];
  v6 = [(PXFeedViewController *)self _targetedPreviewForObjectReference:v5];

  return v6;
}

- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location
{
  if (self->_actionPerformerRespondsTo.contextMenuForObjectReferenceInDataSourceSuggestedActions)
  {
    y = location.y;
    x = location.x;
    tungstenView = [(PXFeedView *)self->_feedView tungstenView];
    v8 = [tungstenView feedHitTestResultAtPoint:{x, y}];

    objectReference = [v8 objectReference];
    if (objectReference)
    {
      objectReference2 = [v8 objectReference];
      [(PXFeedViewController *)self setNavigatedObjectReference:objectReference2];

      viewModel = [(PXFeedViewController *)self viewModel];
      dataSource = [viewModel dataSource];

      v13 = MEMORY[0x1E69DC8D8];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __78__PXFeedViewController_contextMenuInteraction_configurationForMenuAtLocation___block_invoke;
      v17[3] = &unk_1E7741178;
      v17[4] = self;
      v18 = objectReference;
      v19 = dataSource;
      v14 = dataSource;
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

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  changeCopy = change;
  observableCopy = observable;
  if (ViewModelObservationContext_185452 == context)
  {
    if ((changeCopy & 2) == 0)
    {
      goto LABEL_8;
    }

    v11 = observableCopy;
    [(PXFeedViewController *)self _invalidatePlaceholder];
    goto LABEL_7;
  }

  if (DataSourceManagerObservationContext_185453 != context)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXFeedViewController.m" lineNumber:516 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if (changeCopy)
  {
    v11 = observableCopy;
    [(PXFeedViewController *)self _ifDataSourceIsEmptyPopIfSpecAllows];
LABEL_7:
    observableCopy = v11;
  }

LABEL_8:
}

- (void)_ifDataSourceIsEmptyPopIfSpecAllows
{
  viewModel = [(PXFeedViewController *)self viewModel];
  dataSourceManager = [viewModel dataSourceManager];
  dataSource = [dataSourceManager dataSource];
  if ([dataSource containsAnyItems])
  {
  }

  else
  {
    configuration = [(PXFeedViewController *)self configuration];
    allowsPopOnEmptyBehavior = [configuration allowsPopOnEmptyBehavior];

    if (!allowsPopOnEmptyBehavior)
    {
      return;
    }

    viewModel = [(PXFeedViewController *)self navigationController];
    v7 = [viewModel px_popToViewControllerPrecedingViewController:self animated:1];
  }
}

- (void)didEndTransition:(id)transition withEndPoint:(id)point finished:(BOOL)finished
{
  v6 = [(PXFeedViewController *)self onTransitionEnd:transition];
  if (v6)
  {
    v7 = v6;
    [(PXFeedViewController *)self setOnTransitionEnd:0];
    v7[2](v7);
    v6 = v7;
  }
}

- (void)willBeginTransition:(id)transition withEndPoint:(id)point anchorItemReference:(id)reference
{
  v30 = *MEMORY[0x1E69E9840];
  transitionCopy = transition;
  pointCopy = point;
  referenceCopy = reference;
  viewModel = [(PXFeedViewController *)self viewModel];
  dataSourceManager = [viewModel dataSourceManager];

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
  [dataSourceManager performChanges:v26];
  v20 = MEMORY[0x1E69E9820];
  v21 = 3221225472;
  v22 = __77__PXFeedViewController_willBeginTransition_withEndPoint_anchorItemReference___block_invoke_2;
  v23 = &unk_1E7749A28;
  v13 = dataSourceManager;
  v24 = v13;
  v25 = v27;
  [(PXFeedViewController *)self setOnTransitionEnd:&v20];
  if (referenceCopy)
  {
    dataSource = [v13 dataSource];
    v15 = [off_1E77218C0 alloc];
    v16 = *(off_1E7722228 + 1);
    *buf = *off_1E7722228;
    *&buf[16] = v16;
    v17 = [v15 initWithSectionObject:0 itemObject:referenceCopy subitemObject:0 indexPath:buf];
    v18 = [dataSource objectReferenceForObjectReference:v17];

    if (v18)
    {
      feedView = [(PXFeedViewController *)self feedView];
      [feedView scrollObjectReference:v18 toScrollPosition:64];
    }

    else
    {
      feedView = PLStoryGetLog();
      if (os_log_type_enabled(feedView, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        *&buf[4] = referenceCopy;
        *&buf[12] = 2112;
        *&buf[14] = dataSource;
        _os_log_impl(&dword_1A3C1C000, feedView, OS_LOG_TYPE_ERROR, "Transition anchoring failed because %@ couldn't be found in %@", buf, 0x16u);
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

- (id)itemPlacementControllerForItemReference:(id)reference
{
  referenceCopy = reference;
  feedView = [(PXFeedViewController *)self feedView];
  v6 = [feedView itemPlacementControllerForItemReference:referenceCopy];

  return v6;
}

- (BOOL)actionPerformer:(id)performer transitionToViewController:(id)controller transitionType:(int64_t)type
{
  performerCopy = performer;
  controllerCopy = controller;
  popoverPresentationController = [controllerCopy popoverPresentationController];
  if (popoverPresentationController)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      viewModel = [(PXFeedViewController *)self viewModel];
      dataSourceManager = [viewModel dataSourceManager];
      dataSource = [dataSourceManager dataSource];

      assetCollection = [performerCopy assetCollection];
      v14 = [off_1E77218C0 alloc];
      v15 = *(off_1E7722228 + 1);
      v23[0] = *off_1E7722228;
      v23[1] = v15;
      v16 = [v14 initWithSectionObject:0 itemObject:assetCollection subitemObject:0 indexPath:v23];
      v17 = [dataSource objectReferenceForObjectReference:v16];

      feedView = [(PXFeedViewController *)self feedView];
      v19 = feedView;
      if (v17)
      {
        v20 = [feedView regionOfInterestForObjectReference:v17];
        if (v20)
        {
          v21 = v20;
          [popoverPresentationController setSourceView:v19];
          [v21 rectInCoordinateSpace:v19];
          [popoverPresentationController setSourceRect:?];
        }
      }
    }
  }

  [(PXFeedViewController *)self px_presentOverTopmostPresentedViewController:controllerCopy animated:1 completion:0];

  return 1;
}

- (BOOL)handleSelectActionOnItemAtIndexPath:(PXSimpleIndexPath *)path inDataSource:(id)source
{
  v5 = [(PXFeedViewController *)self viewModel:path];
  selectionManager = [v5 selectionManager];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __73__PXFeedViewController_handleSelectActionOnItemAtIndexPath_inDataSource___block_invoke;
  v9[3] = &__block_descriptor_64_e37_v16__0___PXMutableSelectionManager__8l;
  v7 = *&path->item;
  v10 = *&path->dataSourceIdentifier;
  v11 = v7;
  [selectionManager performChanges:v9];

  return 1;
}

uint64_t __73__PXFeedViewController_handleSelectActionOnItemAtIndexPath_inDataSource___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 48);
  v4[0] = *(a1 + 32);
  v4[1] = v2;
  return [a2 setSelectedIndexPath:v4];
}

- (BOOL)handlePrimaryActionOnItemAtIndexPath:(PXSimpleIndexPath *)path inDataSource:(id)source
{
  if (!self->_actionPerformerRespondsTo.handlePrimaryActionOnItemAtIndexPathInDataSourceFromViewController)
  {
    return 0;
  }

  sourceCopy = source;
  actionPerformer = [(PXFeedViewController *)self actionPerformer];
  v8 = *&path->item;
  v11[0] = *&path->dataSourceIdentifier;
  v11[1] = v8;
  v9 = [actionPerformer handlePrimaryActionOnItemAtIndexPath:v11 inDataSource:sourceCopy fromViewController:self];

  return v9;
}

- (void)prepareForTransitionToSelectedTabBarItemSegmentWithCompletion:(id)completion
{
  completionCopy = completion;
  tabBarTransitionDelegate = [(PXFeedViewController *)self tabBarTransitionDelegate];

  if (tabBarTransitionDelegate)
  {
    tabBarTransitionDelegate2 = [(PXFeedViewController *)self tabBarTransitionDelegate];
    tabBarController = [(PXFeedViewController *)self tabBarController];
    [tabBarTransitionDelegate2 prepareForTransitionToSelectedTabBarItemSegmentNumber:{objc_msgSend(tabBarController, "selectedIndex")}];
  }

  completionCopy[2]();
}

- (void)ppt_transitionToFirstItemWithWillPresentHandler:(id)handler completionHandler:(id)completionHandler
{
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  viewModel = [(PXFeedViewController *)self viewModel];
  dataSource = [viewModel dataSource];

  v14 = 0u;
  v15 = 0u;
  if (dataSource)
  {
    [dataSource firstItemIndexPath];
  }

  v13[0] = v14;
  v13[1] = v15;
  v10 = [dataSource objectReferenceAtIndexPath:v13];
  if (!self->_actionPerformerRespondsTo.navigateToObjectReferenceFromViewControllerAnimatedWillPresentHandlerCompletionHandler || (-[PXFeedViewController actionPerformer](self, "actionPerformer"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 navigateToObjectReference:v10 originalSource:@"PPT" fromViewController:self animated:1 willPresentHandler:handlerCopy completionHandler:completionHandlerCopy], v11, (v12 & 1) == 0))
  {
    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, 0);
    }

    if (completionHandlerCopy)
    {
      completionHandlerCopy[2](completionHandlerCopy, 0);
    }
  }
}

- (UIScrollView)ppt_scrollView
{
  feedView = [(PXFeedViewController *)self feedView];
  tungstenView = [feedView tungstenView];
  diagnosticsMainScrollView = [tungstenView diagnosticsMainScrollView];

  return diagnosticsMainScrollView;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  placeholderView = [(PXFeedViewController *)self placeholderView];
  if (placeholderView && (v7 = placeholderView, -[PXFeedViewController viewModel](self, "viewModel"), v8 = objc_claimAutoreleasedReturnValue(), [v8 placeholderFactory], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "supportsDynamicPlaceholderContentSize"), v9, v8, v7, v10))
  {
    view = [(PXFeedViewController *)self view];
    [view layoutIfNeeded];
    LODWORD(v12) = 1148846080;
    LODWORD(v13) = 1112014848;
    [view systemLayoutSizeFittingSize:width withHorizontalFittingPriority:height verticalFittingPriority:{v12, v13}];
    v15 = v14;
    v17 = v16;
  }

  else
  {
    v15 = *off_1E7722230;
    v17 = *(off_1E7722230 + 1);
    feedView = [(PXFeedViewController *)self feedView];
    tungstenView = [feedView tungstenView];

    if (tungstenView)
    {
      feedView2 = [(PXFeedViewController *)self feedView];
      tungstenView2 = [feedView2 tungstenView];

      rootLayout = [tungstenView2 rootLayout];
      [rootLayout contentSize];

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
  placeholderView = [(PXFeedViewController *)self placeholderView];
  viewModel = [(PXFeedViewController *)self viewModel];
  dataSource = [viewModel dataSource];
  containsAnyItems = [dataSource containsAnyItems];

  if (containsAnyItems)
  {
    [placeholderView removeFromSuperview];

    placeholderView = 0;
  }

  else if (!placeholderView)
  {
    placeholderFactory = [viewModel placeholderFactory];
    placeholderView = [placeholderFactory createPlaceholderViewForFeedWithViewModel:viewModel];

    if (placeholderView)
    {
      view = [(PXFeedViewController *)self view];
      [placeholderView setTranslatesAutoresizingMaskIntoConstraints:0];
      [view addSubview:placeholderView];
      spec = [viewModel spec];
      [spec placeholderMargins];
      v11 = v10;
      v13 = v12;
      v15 = v14;
      v17 = v16;

      v26 = MEMORY[0x1E696ACD8];
      leadingAnchor = [view leadingAnchor];
      leadingAnchor2 = [placeholderView leadingAnchor];
      v29 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:-v13];
      v32[0] = v29;
      trailingAnchor = [view trailingAnchor];
      trailingAnchor2 = [placeholderView trailingAnchor];
      v25 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:v17];
      v32[1] = v25;
      topAnchor = [view topAnchor];
      topAnchor2 = [placeholderView topAnchor];
      v19 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:-v11];
      v32[2] = v19;
      bottomAnchor = [view bottomAnchor];
      bottomAnchor2 = [placeholderView bottomAnchor];
      v22 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:v15];
      v32[3] = v22;
      v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:4];
      [v26 activateConstraints:v23];
    }
  }

  [(PXFeedViewController *)self setPlaceholderView:placeholderView];
}

- (void)_invalidatePlaceholder
{
  updater = [(PXFeedViewController *)self updater];
  [updater setNeedsUpdateOf:sel__updatePlaceholder];
}

- (void)_setNeedsUpdate
{
  viewIfLoaded = [(PXFeedViewController *)self viewIfLoaded];
  [viewIfLoaded setNeedsLayout];
}

- (void)_handleScrollViewTap:(id)tap
{
  if ([tap state] == 3)
  {
    viewModel = [(PXFeedViewController *)self viewModel];
    dataSource = [viewModel dataSource];

    viewModel2 = [(PXFeedViewController *)self viewModel];
    selectionSnapshot = [viewModel2 selectionSnapshot];
    selectedIndexPaths = [selectionSnapshot selectedIndexPaths];

    v14 = 0u;
    v15 = 0u;
    identifier = [dataSource identifier];
    if (selectedIndexPaths)
    {
      [selectedIndexPaths firstItemIndexPathForDataSourceIdentifier:identifier];
      if (v14 != *off_1E7721F68 && v15 != 0x7FFFFFFFFFFFFFFFLL && *(&v15 + 1) == 0x7FFFFFFFFFFFFFFFLL)
      {
        actionPerformer = [(PXFeedViewController *)self actionPerformer];
        v13[0] = v14;
        v13[1] = v15;
        [actionPerformer handlePrimaryActionOnItemAtIndexPath:v13 inDataSource:dataSource fromViewController:self];
      }
    }
  }
}

- (void)a_customTapToRadar:(id)radar
{
  v4 = objc_alloc_init(PXRadarConfiguration);
  [(PXRadarConfiguration *)v4 addDiagnosticProvider:self];
  [(PXRadarConfiguration *)v4 setComponent:1];
  [(PXRadarConfiguration *)v4 setKeywordIDs:&unk_1F19112D8];
  [(PXRadarConfiguration *)v4 setAttachmentsIncludeAnyUserAsset:0];
  PXFileRadarWithConfiguration(v4);
}

- (void)setActionPerformer:(id)performer
{
  performerCopy = performer;
  if (self->_actionPerformer != performerCopy)
  {
    v7 = performerCopy;
    objc_storeStrong(&self->_actionPerformer, performer);
    self->_actionPerformerRespondsTo.handlePrimaryActionOnItemAtIndexPathInDataSourceFromViewController = objc_opt_respondsToSelector() & 1;
    self->_actionPerformerRespondsTo.navigateToObjectReferenceFromViewControllerAnimatedWillPresentHandlerCompletionHandler = objc_opt_respondsToSelector() & 1;
    self->_actionPerformerRespondsTo.deleteItemsInSelectionUndoManager = objc_opt_respondsToSelector() & 1;
    v6 = objc_opt_respondsToSelector() & 1;
    performerCopy = v7;
    self->_actionPerformerRespondsTo.contextMenuForObjectReferenceInDataSourceSuggestedActions = v6;
  }
}

- (void)viewDidLayoutSubviews
{
  v4.receiver = self;
  v4.super_class = PXFeedViewController;
  [(PXFeedViewController *)&v4 viewDidLayoutSubviews];
  updater = [(PXFeedViewController *)self updater];
  [updater updateIfNeeded];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = PXFeedViewController;
  [(PXFeedViewController *)&v4 viewWillDisappear:disappear];
  [(PXFeedViewController *)self setIsActive:0];
}

- (void)viewDidAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = PXFeedViewController;
  [(PXFeedViewController *)&v5 viewDidAppear:appear];
  nextViewDidAppearExpectation = [(PXFeedViewController *)self nextViewDidAppearExpectation];
  [nextViewDidAppearExpectation fulfill];

  [(PXFeedViewController *)self setNextViewDidAppearExpectation:0];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = PXFeedViewController;
  [(PXFeedViewController *)&v4 viewWillAppear:appear];
  [(PXFeedViewController *)self setIsActive:1];
}

- (void)setIsActive:(BOOL)active
{
  if (self->_isActive != active)
  {
    activeCopy = active;
    self->_isActive = active;
    feedView = [(PXFeedViewController *)self feedView];
    [feedView setIsActive:activeCopy];

    isActive = self->_isActive;
    chromeController = [(PXFeedViewController *)self chromeController];
    [chromeController setIsActive:isActive];

    LODWORD(isActive) = self->_isActive;
    configuration = [(PXFeedViewController *)self configuration];
    v9 = configuration;
    if (isActive)
    {
      [configuration handleContentSeen];
    }

    else
    {
      [configuration handleContentDismissed];
    }
  }
}

- (void)viewDidLoad
{
  v37.receiver = self;
  v37.super_class = PXFeedViewController;
  [(PXFeedViewController *)&v37 viewDidLoad];
  [(PXFeedViewController *)self px_enableExtendedTraitCollection];
  configuration = [(PXFeedViewController *)self configuration];
  v4 = [PXFeedViewConfiguration alloc];
  px_extendedTraitCollection = [(PXFeedViewController *)self px_extendedTraitCollection];
  v6 = [(PXFeedViewConfiguration *)v4 initWithFeedConfiguration:configuration extendedTraitCollection:px_extendedTraitCollection];

  [(PXFeedViewConfiguration *)v6 setContainerViewController:self];
  view = [(PXFeedViewController *)self view];
  v8 = [PXFeedView alloc];
  [view bounds];
  v9 = [(PXFeedView *)v8 initWithFrame:v6 configuration:?];
  feedView = self->_feedView;
  self->_feedView = v9;

  [(PXFeedView *)self->_feedView setAutoresizingMask:18];
  [view addSubview:self->_feedView];
  viewModel = [(PXFeedView *)self->_feedView viewModel];
  viewModel = self->_viewModel;
  self->_viewModel = viewModel;

  v13 = self->_viewModel;
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __35__PXFeedViewController_viewDidLoad__block_invoke;
  v36[3] = &unk_1E7741100;
  v36[4] = self;
  [(PXFeedViewModel *)v13 performChanges:v36];
  [(PXFeedViewModel *)self->_viewModel registerChangeObserver:self context:ViewModelObservationContext_185452];
  actionPerformer = [(PXFeedConfiguration *)self->_configuration actionPerformer];
  [(PXFeedViewController *)self setActionPerformer:actionPerformer];

  chromeControllerPromise = [configuration chromeControllerPromise];
  if (chromeControllerPromise)
  {
    dataSourceManager = [(PXFeedViewModel *)self->_viewModel dataSourceManager];
    v17 = (chromeControllerPromise)[2](chromeControllerPromise, self, dataSourceManager);
    chromeController = self->_chromeController;
    self->_chromeController = v17;
  }

  navigationItem = [(PXFeedViewController *)self navigationItem];
  [navigationItem setLargeTitleDisplayMode:2];

  hidesBackButton = [configuration hidesBackButton];
  navigationItem2 = [(PXFeedViewController *)self navigationItem];
  [navigationItem2 setHidesBackButton:hidesBackButton];

  v22 = [[PXUITapGestureRecognizer alloc] initWithTarget:self action:sel__handleScrollViewTap_];
  [(PXUITapGestureRecognizer *)v22 setAllowedPressTypes:&unk_1F19112C0];
  [view addGestureRecognizer:v22];
  if (self->_actionPerformerRespondsTo.contextMenuForObjectReferenceInDataSourceSuggestedActions)
  {
    v23 = [objc_alloc(MEMORY[0x1E69DC8E0]) initWithDelegate:self];
    [view addInteraction:v23];
  }

  tungstenView = [(PXFeedView *)self->_feedView tungstenView];
  scrollViewController = [tungstenView scrollViewController];
  scrollView = [scrollViewController scrollView];

  [view layoutIfNeeded];
  [(PXFeedViewController *)self _setObservableScrollView:scrollView forEdges:5];
  v27 = dispatch_time(0, 200000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__PXFeedViewController_viewDidLoad__block_invoke_203;
  block[3] = &unk_1E774C620;
  v34 = scrollView;
  selfCopy = self;
  v28 = scrollView;
  dispatch_after(v27, MEMORY[0x1E69E96A0], block);
  v29 = [[off_1E7721940 alloc] initWithTarget:self needsUpdateSelector:sel__setNeedsUpdate];
  updater = self->_updater;
  self->_updater = v29;

  [(PXUpdater *)self->_updater addUpdateSelector:sel__updatePlaceholder needsUpdate:1];
  viewModel2 = [(PXFeedViewController *)self viewModel];
  dataSourceManager2 = [viewModel2 dataSourceManager];
  [dataSourceManager2 registerChangeObserver:self context:DataSourceManagerObservationContext_185453];
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

- (PXFeedViewController)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v11.receiver = self;
  v11.super_class = PXFeedViewController;
  v6 = [(PXFeedViewController *)&v11 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configuration, configuration);
    viewControllerTitle = [(PXFeedConfiguration *)v7->_configuration viewControllerTitle];
    [(PXFeedViewController *)v7 setTitle:viewControllerTitle];

    actionPerformer = [configurationCopy actionPerformer];
    [(PXFeedViewController *)v7 setActionPerformer:actionPerformer];
  }

  return v7;
}

- (PXFeedViewController)initWithCoder:(id)coder
{
  coderCopy = coder;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXFeedViewController.m" lineNumber:101 description:{@"%s is not available as initializer", "-[PXFeedViewController initWithCoder:]"}];

  abort();
}

- (PXFeedViewController)initWithNibName:(id)name bundle:(id)bundle
{
  nameCopy = name;
  bundleCopy = bundle;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXFeedViewController.m" lineNumber:97 description:{@"%s is not available as initializer", "-[PXFeedViewController initWithNibName:bundle:]"}];

  abort();
}

- (PXFeedViewController)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXFeedViewController.m" lineNumber:93 description:{@"%s is not available as initializer", "-[PXFeedViewController init]"}];

  abort();
}

@end