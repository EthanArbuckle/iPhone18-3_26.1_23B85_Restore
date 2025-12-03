@interface PXPhotosDetailsUIViewController
+ (double)dynamicTextScaleFactorForCategory:(int64_t)category;
+ (void)preloadResources;
- (BOOL)_dismissSelfIfSafeAnimated:(BOOL)animated;
- (BOOL)_scrollToBottomAnimated:(BOOL)animated;
- (BOOL)_shouldShowMovieHeader;
- (BOOL)prepareForDismissingForced:(BOOL)forced;
- (BOOL)widgetComposition:(id)composition widget:(id)widget transitionToViewController:(id)controller withTransitionType:(int64_t)type;
- (BOOL)widgetDeviceIsUnlocked:(id)unlocked;
- (CGSize)preferredContentSize;
- (PXActionManager)assetActionManager;
- (PXAssetCollectionActionPerformerDelegate)actionPerformerDelegate;
- (PXAssetSelectionUserActivityController)userActivityController;
- (PXDisplayAsset)presentedKeyAsset;
- (PXPhotosDetailsUIViewController)initWithCoder:(id)coder;
- (PXPhotosDetailsUIViewController)initWithContext:(id)context configuration:(id)configuration;
- (PXPhotosDetailsUIViewController)initWithContext:(id)context options:(unint64_t)options;
- (PXPhotosDetailsUIViewController)initWithNibName:(id)name bundle:(id)bundle;
- (PXPhotosDetailsUIViewControllerDelegate)delegate;
- (UIActivityItemsConfigurationReading)activityItemsConfiguration;
- (UIEdgeInsets)contentEdgeInsets;
- (UIScrollView)ppt_scrollView;
- (double)captionWidgetCurrentContentHeight;
- (double)captionWidgetPreferredHeight;
- (id)_previewViewControllerForLocation:(CGPoint)location;
- (id)_widgetAtLocation:(CGPoint)location inCoordinateSpace:(id)space;
- (id)barsControllerActionsForSelectionContextMenu:(id)menu;
- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location;
- (id)contextMenuInteraction:(id)interaction previewForHighlightingMenuWithConfiguration:(id)configuration;
- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region;
- (id)px_diagnosticsItemProvidersForPoint:(CGPoint)point inCoordinateSpace:(id)space;
- (unint64_t)_optionsForWidget:(id)widget;
- (void)_ensureScrollViewController;
- (void)_handleDeviceDidUnlock;
- (void)_handleSpaceBar:(id)bar;
- (void)_handleWidgetsLoadingDelay;
- (void)_loadComposition;
- (void)_loadWidgets;
- (void)_ppt_informWidgetsLoadedHandlerIfNeeded;
- (void)_ppt_setAllWidgetLoadingCompleteHandler:(id)handler;
- (void)_ppt_setVariationsWidgetLoadingCompleteHandler:(id)handler;
- (void)_setWidgetSpec:(id)spec;
- (void)_updateAllWidgetsSelectionState;
- (void)_updateAllWidgetsSpec;
- (void)_updateBarSpec;
- (void)_updateCompositionSpec;
- (void)_updateStatusBarTitle;
- (void)_updateTitleAndSubtitle;
- (void)_updateWidgetDisablingWithAnimationOptions:(id)options;
- (void)_updateWidgetSpec;
- (void)_updateWidgetsBackground;
- (void)_viewWillLayoutBeforeAppearing;
- (void)contentSizeCategoryDidChange:(id)change;
- (void)contextMenuInteraction:(id)interaction willEndForConfiguration:(id)configuration animator:(id)animator;
- (void)contextMenuInteraction:(id)interaction willPerformPreviewActionForMenuWithConfiguration:(id)configuration animator:(id)animator;
- (void)dealloc;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)informFirstWidgetAvailableVisibleRectInEditMode:(CGRect)mode;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)playMovieWithCompletionHandler:(id)handler;
- (void)ppt_toggleDiscloseWidgets;
- (void)purgeIfPossible;
- (void)requestExitEditModeWithChangeSavingMode:(int64_t)mode;
- (void)scrollViewControllerWillBeginScrolling:(id)scrolling;
- (void)setDelegate:(id)delegate;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)appearing;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)visualSearchLookupWidgetDidTap;
- (void)widget:(id)widget didChangeEditingMode:(BOOL)mode;
- (void)widget:(id)widget performAfterUnlockingDeviceIfNecessary:(id)necessary failurehandler:(id)failurehandler;
- (void)widgetComposition:(id)composition didUpdateCompositionWithDefaultAnimationOptions:(id)options;
- (void)widgetComposition:(id)composition widgetHasLoadedContentDataDidChange:(id)change;
@end

@implementation PXPhotosDetailsUIViewController

- (PXAssetCollectionActionPerformerDelegate)actionPerformerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_actionPerformerDelegate);

  return WeakRetained;
}

- (UIEdgeInsets)contentEdgeInsets
{
  top = self->_contentEdgeInsets.top;
  left = self->_contentEdgeInsets.left;
  bottom = self->_contentEdgeInsets.bottom;
  right = self->_contentEdgeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (PXPhotosDetailsUIViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_ppt_informWidgetsLoadedHandlerIfNeeded
{
  v17 = *MEMORY[0x1E69E9840];
  _ppt_allWidgetLoadingCompleteHandler = [(PXPhotosDetailsUIViewController *)self _ppt_allWidgetLoadingCompleteHandler];
  if (!_ppt_allWidgetLoadingCompleteHandler)
  {
    goto LABEL_16;
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  _widgets = [(PXPhotosDetailsUIViewController *)self _widgets];
  v5 = [_widgets countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (!v5)
  {

LABEL_15:
    _ppt_allWidgetLoadingCompleteHandler[2](_ppt_allWidgetLoadingCompleteHandler);
    [(PXPhotosDetailsUIViewController *)self _ppt_setAllWidgetLoadingCompleteHandler:0];
    goto LABEL_16;
  }

  v6 = v5;
  v7 = *v13;
  hasLoadedContentData = 1;
  do
  {
    for (i = 0; i != v6; ++i)
    {
      if (*v13 != v7)
      {
        objc_enumerationMutation(_widgets);
      }

      v10 = *(*(&v12 + 1) + 8 * i);
      v11 = objc_opt_respondsToSelector();
      if (v11 & hasLoadedContentData)
      {
        hasLoadedContentData = [v10 hasLoadedContentData];
      }

      else
      {
        hasLoadedContentData &= v11 ^ 1;
      }
    }

    v6 = [_widgets countByEnumeratingWithState:&v12 objects:v16 count:16];
  }

  while (v6);

  if (hasLoadedContentData)
  {
    goto LABEL_15;
  }

LABEL_16:
}

- (void)_ppt_setVariationsWidgetLoadingCompleteHandler:(id)handler
{
  v5 = _Block_copy(handler);
  ppt_variationsWidgetLoadingCompleteHandler = self->__ppt_variationsWidgetLoadingCompleteHandler;
  self->__ppt_variationsWidgetLoadingCompleteHandler = v5;

  if (handler)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __82__PXPhotosDetailsUIViewController__ppt_setVariationsWidgetLoadingCompleteHandler___block_invoke;
    block[3] = &unk_1E774C648;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (void)_ppt_setAllWidgetLoadingCompleteHandler:(id)handler
{
  v5 = _Block_copy(handler);
  ppt_allWidgetLoadingCompleteHandler = self->__ppt_allWidgetLoadingCompleteHandler;
  self->__ppt_allWidgetLoadingCompleteHandler = v5;

  if (handler)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __75__PXPhotosDetailsUIViewController__ppt_setAllWidgetLoadingCompleteHandler___block_invoke;
    block[3] = &unk_1E774C648;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (void)ppt_toggleDiscloseWidgets
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  _widgets = [(PXPhotosDetailsUIViewController *)self _widgets];
  v3 = [_widgets countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(_widgets);
        }

        v7 = *(*(&v10 + 1) + 8 * v6);
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
        {
          localizedDisclosureTitle = [v7 localizedDisclosureTitle];
          v9 = [localizedDisclosureTitle length];

          if (v9)
          {
            [v7 userDidSelectDisclosureControl];
          }
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [_widgets countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }
}

- (UIScrollView)ppt_scrollView
{
  _scrollViewController = [(PXPhotosDetailsUIViewController *)self _scrollViewController];
  scrollView = [_scrollViewController scrollView];

  return scrollView;
}

- (BOOL)prepareForDismissingForced:(BOOL)forced
{
  forcedCopy = forced;
  presentedViewController = [(PXPhotosDetailsUIViewController *)self presentedViewController];
  if ((objc_opt_respondsToSelector() & 1) != 0 && ![presentedViewController prepareForDismissingForced:forcedCopy])
  {
    v6 = 0;
  }

  else
  {
    [(PXPhotosDetailsUIViewController *)self dismissViewControllerAnimated:0 completion:0];
    v6 = 1;
  }

  return v6;
}

- (PXActionManager)assetActionManager
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  _widgets = [(PXPhotosDetailsUIViewController *)self _widgets];
  assetActionManager = [_widgets countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (assetActionManager)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != assetActionManager; i = i + 1)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(_widgets);
        }

        v6 = *(*(&v8 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          assetActionManager = [v6 assetActionManager];
          goto LABEL_11;
        }
      }

      assetActionManager = [_widgets countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (assetActionManager)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return assetActionManager;
}

- (UIActivityItemsConfigurationReading)activityItemsConfiguration
{
  boopableItemsProvider = [(PXPhotosDetailsUIViewController *)self boopableItemsProvider];

  if (!boopableItemsProvider)
  {
    v4 = objc_alloc_init(PXBoopableItemsProvider);
    [(PXPhotosDetailsUIViewController *)self setBoopableItemsProvider:v4];

    _viewModel = [(PXPhotosDetailsUIViewController *)self _viewModel];
    selectionManager = [_viewModel selectionManager];
    boopableItemsProvider2 = [(PXPhotosDetailsUIViewController *)self boopableItemsProvider];
    [boopableItemsProvider2 setSelectionManager:selectionManager];
  }

  return [(PXPhotosDetailsUIViewController *)self boopableItemsProvider];
}

- (id)_previewViewControllerForLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  scrollViewController = [(PXPhotosDetailsUIViewController *)self scrollViewController];
  scrollView = [scrollViewController scrollView];

  [scrollView contentOffset];
  v9 = y + v8;
  v10 = [(PXPhotosDetailsUIViewController *)self _widgetAtLocation:scrollView inCoordinateSpace:x, v9];
  v11 = [v10 previewViewControllerAtLocation:scrollView fromSourceView:{x, v9}];

  return v11;
}

- (id)_widgetAtLocation:(CGPoint)location inCoordinateSpace:(id)space
{
  v6 = *MEMORY[0x1E69E9840];
  spaceCopy = space;
  PXPointIsNull();
}

- (void)contextMenuInteraction:(id)interaction willEndForConfiguration:(id)configuration animator:(id)animator
{
  interactionCopy = interaction;
  scrollViewController = [(PXPhotosDetailsUIViewController *)self scrollViewController];
  scrollView = [scrollViewController scrollView];

  [interactionCopy locationInView:scrollView];
  v9 = v8;
  v11 = v10;

  v12 = [(PXPhotosDetailsUIViewController *)self _widgetAtLocation:scrollView inCoordinateSpace:v9, v11];
  if (objc_opt_respondsToSelector())
  {
    _previewViewController = [(PXPhotosDetailsUIViewController *)self _previewViewController];
    [v12 didDismissPreviewViewController:_previewViewController committing:{-[PXPhotosDetailsUIViewController _previewCommitting](self, "_previewCommitting")}];
  }

  [(PXPhotosDetailsUIViewController *)self _setPreviewCommitting:0];
  [(PXPhotosDetailsUIViewController *)self _setPreviewViewController:0];
}

- (void)contextMenuInteraction:(id)interaction willPerformPreviewActionForMenuWithConfiguration:(id)configuration animator:(id)animator
{
  interactionCopy = interaction;
  animatorCopy = animator;
  _viewModel = [(PXPhotosDetailsUIViewController *)self _viewModel];
  isSelecting = [_viewModel isSelecting];

  if ((isSelecting & 1) == 0)
  {
    previewViewController = [animatorCopy previewViewController];
    if (previewViewController)
    {
      [(PXPhotosDetailsUIViewController *)self _setPreviewCommitting:1];
      [animatorCopy setPreferredCommitStyle:1];
      scrollViewController = [(PXPhotosDetailsUIViewController *)self scrollViewController];
      scrollView = [scrollViewController scrollView];

      [interactionCopy locationInView:scrollView];
      v14 = [(PXPhotosDetailsUIViewController *)self _widgetAtLocation:scrollView inCoordinateSpace:?];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __116__PXPhotosDetailsUIViewController_contextMenuInteraction_willPerformPreviewActionForMenuWithConfiguration_animator___block_invoke;
      v16[3] = &unk_1E774C620;
      v17 = v14;
      v18 = previewViewController;
      v15 = v14;
      [animatorCopy addCompletion:v16];
    }
  }
}

- (id)contextMenuInteraction:(id)interaction previewForHighlightingMenuWithConfiguration:(id)configuration
{
  interactionCopy = interaction;
  scrollViewController = [(PXPhotosDetailsUIViewController *)self scrollViewController];
  scrollView = [scrollViewController scrollView];

  [interactionCopy locationInView:scrollView];
  v9 = v8;
  v11 = v10;

  v12 = [(PXPhotosDetailsUIViewController *)self _widgetAtLocation:scrollView inCoordinateSpace:v9, v11];
  v13 = [v12 imageViewBasicTileForPreviewingAtPoint:{v9, v11}];
  view = [v13 view];
  if (view)
  {
    v15 = [objc_alloc(MEMORY[0x1E69DD070]) initWithView:view];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  interactionCopy = interaction;
  scrollViewController = [(PXPhotosDetailsUIViewController *)self scrollViewController];
  scrollView = [scrollViewController scrollView];

  [interactionCopy locationInView:scrollView];
  v11 = v10;
  v13 = v12;

  v14 = [(PXPhotosDetailsUIViewController *)self _widgetAtLocation:scrollView inCoordinateSpace:v11, v13];
  if ((objc_opt_respondsToSelector() & 1) != 0 && ([v14 imageViewBasicTileForPreviewingAtPoint:{v11, v13}], v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "view"), v16 = objc_claimAutoreleasedReturnValue(), v16, v15, v16))
  {
    _viewModel = [(PXPhotosDetailsUIViewController *)self _viewModel];
    v18 = [_viewModel isSelecting] ^ 1;

    v19 = [(PXPhotosDetailsUIViewController *)self _previewViewControllerForLocation:x, y];
    [(PXPhotosDetailsUIViewController *)self _setPreviewViewController:v19];
    v20 = MEMORY[0x1E69DC8D8];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __89__PXPhotosDetailsUIViewController_contextMenuInteraction_configurationForMenuAtLocation___block_invoke;
    v27[3] = &unk_1E7740028;
    v28 = v19;
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __89__PXPhotosDetailsUIViewController_contextMenuInteraction_configurationForMenuAtLocation___block_invoke_2;
    v24[3] = &unk_1E7734F18;
    v26 = v18;
    v25 = v28;
    v21 = v28;
    v22 = [v20 configurationWithIdentifier:0 previewProvider:v27 actionProvider:v24];
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

id __89__PXPhotosDetailsUIViewController_contextMenuInteraction_configurationForMenuAtLocation___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    v1 = [*(a1 + 32) px_previewActionMenus];
    v2 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F1741150 children:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region
{
  requestCopy = request;
  scrollViewController = [(PXPhotosDetailsUIViewController *)self scrollViewController];
  scrollView = [scrollViewController scrollView];

  [requestCopy location];
  v9 = [(PXPhotosDetailsUIViewController *)self _widgetAtLocation:scrollView inCoordinateSpace:?];
  if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    [requestCopy location];
    v10 = [v9 imageViewBasicTileForPreviewingAtPoint:?];
    view = [v10 view];
    if (view)
    {
      cursorInteractionEnabled = [v9 cursorInteractionEnabled];

      if (cursorInteractionEnabled)
      {
        v13 = [MEMORY[0x1E696B098] valueWithNonretainedObject:v10];
        v14 = MEMORY[0x1E69DCDC0];
        view2 = [v10 view];
        [view2 frame];
        view = [v14 regionWithRect:v13 identifier:?];
      }

      else
      {
        view = 0;
      }
    }
  }

  else
  {
    view = 0;
  }

  return view;
}

- (id)px_diagnosticsItemProvidersForPoint:(CGPoint)point inCoordinateSpace:(id)space
{
  y = point.y;
  x = point.x;
  v26 = *MEMORY[0x1E69E9840];
  spaceCopy = space;
  v24.receiver = self;
  v24.super_class = PXPhotosDetailsUIViewController;
  v8 = [(UIViewController *)&v24 px_diagnosticsItemProvidersForPoint:spaceCopy inCoordinateSpace:x, y];
  v9 = [v8 mutableCopy];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  _widgets = [(PXPhotosDetailsUIViewController *)self _widgets];
  v11 = [_widgets countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v21;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(_widgets);
        }

        v15 = *(*(&v20 + 1) + 8 * i);
        if ([v15 conformsToProtocol:&unk_1F192DD60])
        {
          v16 = [v15 px_diagnosticsItemProvidersForPoint:spaceCopy inCoordinateSpace:{x, y}];
          [v9 addObjectsFromArray:v16];
        }
      }

      v12 = [_widgets countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v12);
  }

  if (![v9 count])
  {
    v17 = objc_alloc_init(PXDiagnosticsItemProvider);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __89__PXPhotosDetailsUIViewController_px_diagnosticsItemProvidersForPoint_inCoordinateSpace___block_invoke;
    v19[3] = &unk_1E774BB70;
    v19[4] = self;
    [(PXDiagnosticsItemProvider *)v17 registerItemForIdentifier:@"PXDiagnosticsItemIdentifierAssetCollection" loadHandler:v19];
    [v9 addObject:v17];
  }

  return v9;
}

id __89__PXPhotosDetailsUIViewController_px_diagnosticsItemProvidersForPoint_inCoordinateSpace___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) context];
  v2 = [v1 assetCollections];
  v3 = [v2 firstObject];

  return v3;
}

- (void)playMovieWithCompletionHandler:(id)handler
{
  v10 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v5 = PLMemoriesGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    _headerWidget = [(PXPhotosDetailsUIViewController *)self _headerWidget];
    v8 = 138412290;
    v9 = _headerWidget;
    _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_DEBUG, "Header widget (%@) is about to start playing Memories movie...", &v8, 0xCu);
  }

  _headerWidget2 = [(PXPhotosDetailsUIViewController *)self _headerWidget];
  [_headerWidget2 playMovieWithCompletionHandler:handlerCopy];
}

- (void)scrollViewControllerWillBeginScrolling:(id)scrolling
{
  v8 = +[PXPhotosDetailsSettings sharedInstance];
  if ([v8 allowWidgetsContentLoading])
  {
    v4 = +[PXPhotosDetailsSettings sharedInstance];
    loadAllWidgetsContentOnScroll = [v4 loadAllWidgetsContentOnScroll];

    if (loadAllWidgetsContentOnScroll)
    {
      composition = [(PXPhotosDetailsUIViewController *)self composition];
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __74__PXPhotosDetailsUIViewController_scrollViewControllerWillBeginScrolling___block_invoke;
      v9[3] = &unk_1E774C648;
      v10 = composition;
      v7 = composition;
      [v7 performWidgetLoadingChange:v9];
    }
  }

  else
  {
  }
}

uint64_t __74__PXPhotosDetailsUIViewController_scrollViewControllerWillBeginScrolling___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setMinimumWidgetLoadingPriority:0];
  v2 = *(a1 + 32);

  return [v2 setShouldLoadAllWidgets:1];
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  changeCopy = change;
  observableCopy = observable;
  if (PXSpecManagerObservationContext == context)
  {
    if ((changeCopy & 1) == 0)
    {
      goto LABEL_17;
    }

    v16 = observableCopy;
    [(PXPhotosDetailsUIViewController *)self _invalidateCompositionSpec];
    [(PXPhotosDetailsUIViewController *)self _invalidateWidgetSpec];
    [(PXPhotosDetailsUIViewController *)self _invalidateBarSpec];
    goto LABEL_16;
  }

  if (PXExtendedTraitCollectionObservationContext_71807 == context)
  {
    if ((changeCopy & 0x14A) == 0)
    {
      goto LABEL_17;
    }

    v16 = observableCopy;
    [(PXPhotosDetailsUIViewController *)self _invalidateCompositionSpec];
    goto LABEL_16;
  }

  v16 = observableCopy;
  if (PXViewModelObservationContext_71808 != context)
  {
    if (PXPhotosDetailsContextObservationContext_71810 == context)
    {
      if ((changeCopy & 0x30) == 0)
      {
        goto LABEL_17;
      }

      [(PXPhotosDetailsUIViewController *)self _updateTitleAndSubtitle];
      barsController = [(PXPhotosDetailsUIViewController *)self barsController];
      [barsController updateIfNeeded];
    }

    else
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosDetailsUIViewController.m" lineNumber:1561 description:@"unknown observation context"];
    }

    goto LABEL_16;
  }

  if (changeCopy)
  {
    [(PXPhotosDetailsUIViewController *)self _updateAllWidgetsSelectionState];
    v11 = +[PXBasicTileAnimationOptions defaultAnimationOptions];
    [(PXPhotosDetailsUIViewController *)self _updateWidgetDisablingWithAnimationOptions:v11];

    [(PXPhotosDetailsUIViewController *)self invalidateBoopableItemsProvider];
    observableCopy = v16;
  }

  if ((changeCopy & 4) != 0)
  {
    _viewModel = [(PXPhotosDetailsUIViewController *)self _viewModel];
    selectionManager = [_viewModel selectionManager];
    userActivityController = [(PXPhotosDetailsUIViewController *)self userActivityController];
    [userActivityController setSelectionManager:selectionManager];

    [(PXPhotosDetailsUIViewController *)self invalidateBoopableItemsProvider];
LABEL_16:
    observableCopy = v16;
  }

LABEL_17:
}

- (void)widgetComposition:(id)composition didUpdateCompositionWithDefaultAnimationOptions:(id)options
{
  optionsCopy = options;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = optionsCopy;
  }

  else
  {

    v5 = 0;
  }

  v7 = v5;
  [(PXPhotosDetailsUIViewController *)self _updateWidgetDisablingWithAnimationOptions:v5];
}

- (void)widgetComposition:(id)composition widgetHasLoadedContentDataDidChange:(id)change
{
  if (self->_delegateRespondsTo.compositionDidChange)
  {
    v5 = [(PXPhotosDetailsUIViewController *)self delegate:composition];
    [v5 photosDetailsUIViewControllerCompositionDidChange:self];
  }

  [(PXPhotosDetailsUIViewController *)self _ppt_informWidgetsLoadedHandlerIfNeeded];
}

- (BOOL)widgetComposition:(id)composition widget:(id)widget transitionToViewController:(id)controller withTransitionType:(int64_t)type
{
  compositionCopy = composition;
  widgetCopy = widget;
  controllerCopy = controller;
  if (!type)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosDetailsUIViewController.m" lineNumber:1486 description:@"undefined transition type"];

    goto LABEL_10;
  }

  if (type == 2)
  {
    presentedViewController = [(PXPhotosDetailsUIViewController *)self presentedViewController];

    if (!presentedViewController)
    {
      v15 = 1;
      [(PXPhotosDetailsUIViewController *)self presentViewController:controllerCopy animated:1 completion:0];
      goto LABEL_13;
    }

LABEL_10:
    v15 = 0;
    goto LABEL_13;
  }

  if (type != 1)
  {
    goto LABEL_10;
  }

  navigationController = [(PXPhotosDetailsUIViewController *)self navigationController];
  if (navigationController && [(UIViewController *)self px_canPresentViewControllerAnimated:1])
  {
    v15 = 1;
    [navigationController pushViewController:controllerCopy animated:1];
  }

  else
  {
    v15 = 0;
  }

LABEL_13:
  return v15;
}

- (void)widget:(id)widget didChangeEditingMode:(BOOL)mode
{
  modeCopy = mode;
  scrollViewController = [(PXPhotosDetailsUIViewController *)self scrollViewController];
  scrollView = [scrollViewController scrollView];

  if (modeCopy)
  {
    composition = [(PXPhotosDetailsUIViewController *)self composition];
    [composition invalidateFocusedTilingController];
    v8 = +[PXPhotosDetailsSettings sharedInstance];
    captionWidgetEnableVScrollingInEdit = [v8 captionWidgetEnableVScrollingInEdit];

    [scrollView setScrollEnabled:captionWidgetEnableVScrollingInEdit];
  }

  else
  {
    [scrollView setScrollEnabled:1];
  }

  [(PXPhotosDetailsUIViewController *)self editingDidChange:modeCopy];
}

- (void)widget:(id)widget performAfterUnlockingDeviceIfNecessary:(id)necessary failurehandler:(id)failurehandler
{
  necessaryCopy = necessary;
  failurehandlerCopy = failurehandler;
  _unlockStatus = [(PXPhotosDetailsUIViewController *)self _unlockStatus];
  if (_unlockStatus && (v10 = _unlockStatus, [(PXPhotosDetailsUIViewController *)self _unlockStatus], v11 = objc_claimAutoreleasedReturnValue(), v12 = v11[2](), v11, v10, (v12 & 1) == 0))
  {
    _unlockHandlerWithActionType = [(PXPhotosDetailsUIViewController *)self _unlockHandlerWithActionType];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __96__PXPhotosDetailsUIViewController_widget_performAfterUnlockingDeviceIfNecessary_failurehandler___block_invoke;
    aBlock[3] = &unk_1E7734EF0;
    aBlock[4] = self;
    v17 = necessaryCopy;
    v14 = failurehandlerCopy;
    v18 = v14;
    v15 = _Block_copy(aBlock);
    if (_unlockHandlerWithActionType)
    {
      (_unlockHandlerWithActionType)[2](_unlockHandlerWithActionType, v15, 0);
    }

    else if (v14)
    {
      v14[2](v14);
    }
  }

  else
  {
    necessaryCopy[2](necessaryCopy);
  }
}

uint64_t __96__PXPhotosDetailsUIViewController_widget_performAfterUnlockingDeviceIfNecessary_failurehandler___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    [*(a1 + 32) _handleDeviceDidUnlock];
    result = *(a1 + 40);
  }

  else
  {
    result = *(a1 + 48);
    if (!result)
    {
      return result;
    }
  }

  v4 = *(result + 16);

  return v4();
}

- (BOOL)widgetDeviceIsUnlocked:(id)unlocked
{
  _unlockStatus = [(PXPhotosDetailsUIViewController *)self _unlockStatus];

  if (_unlockStatus)
  {
    _unlockStatus2 = [(PXPhotosDetailsUIViewController *)self _unlockStatus];
    v6 = _unlockStatus2[2]();
  }

  else
  {
    v6 = 1;
  }

  return !+[PXApplicationState isExternalAppAndPhotosIsLocked]& v6;
}

- (void)_updateBarSpec
{
  _specManager = [(PXPhotosDetailsUIViewController *)self _specManager];
  spec = [_specManager spec];
  barSpec = [spec barSpec];

  barsController = [(PXPhotosDetailsUIViewController *)self barsController];
  [barsController setBarSpec:barSpec];
}

- (void)_updateWidgetSpec
{
  _specManager = [(PXPhotosDetailsUIViewController *)self _specManager];
  spec = [_specManager spec];
  widgetSpec = [spec widgetSpec];

  [(PXPhotosDetailsUIViewController *)self _setWidgetSpec:widgetSpec];
}

- (void)_updateCompositionSpec
{
  _specManager = [(PXPhotosDetailsUIViewController *)self _specManager];
  spec = [_specManager spec];
  compositionSpec = [spec compositionSpec];

  composition = [(PXPhotosDetailsUIViewController *)self composition];
  [composition setSpec:compositionSpec];
}

- (void)purgeIfPossible
{
  v30 = *MEMORY[0x1E69E9840];
  if (([(PXPhotosDetailsUIViewController *)self px_isVisible]& 1) == 0 && self->__scrollViewController)
  {
    v3 = PLMemoriesGetLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      scrollView = [(PXUIScrollViewController *)self->__scrollViewController scrollView];
      *buf = 138412546;
      selfCopy = self;
      v28 = 2048;
      v29 = scrollView;
      _os_log_impl(&dword_1A3C1C000, v3, OS_LOG_TYPE_DEFAULT, "Purging contents of:%@ withScrollView:%p", buf, 0x16u);
    }

    _widgets = [(PXPhotosDetailsUIViewController *)self _widgets];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v6 = [_widgets countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v22;
      do
      {
        v9 = 0;
        do
        {
          if (*v22 != v8)
          {
            objc_enumerationMutation(_widgets);
          }

          v10 = *(*(&v21 + 1) + 8 * v9);
          if (objc_opt_respondsToSelector())
          {
            [v10 setWidgetDelegate:0];
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [_widgets countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v7);
    }

    headerWidget = self->__headerWidget;
    self->__headerWidget = 0;

    previewWidget = self->__previewWidget;
    self->__previewWidget = 0;

    widgetOptions = self->__widgetOptions;
    self->__widgetOptions = 0;

    headerAssetWidgetTilingController = self->__headerAssetWidgetTilingController;
    self->__headerAssetWidgetTilingController = 0;

    widgets = self->__widgets;
    self->__widgets = 0;

    contextMenuInteraction = self->__contextMenuInteraction;
    self->__contextMenuInteraction = 0;

    pointerInteraction = self->__pointerInteraction;
    self->__pointerInteraction = 0;

    [(PXWidgetComposition *)self->_composition setShouldUnloadAllWidgets:1];
    composition = self->_composition;
    self->_composition = 0;

    scrollView2 = [(PXUIScrollViewController *)self->__scrollViewController scrollView];
    [scrollView2 removeFromSuperview];

    scrollViewController = self->__scrollViewController;
    self->__scrollViewController = 0;
  }
}

- (id)barsControllerActionsForSelectionContextMenu:(id)menu
{
  _viewModel = [(PXPhotosDetailsUIViewController *)self _viewModel];
  selectionManager = [_viewModel selectionManager];
  selectionSnapshot = [selectionManager selectionSnapshot];

  if ([selectionSnapshot isAnyItemSelected])
  {
    assetActionManager = [(PXPhotosDetailsUIViewController *)self assetActionManager];
    v8 = [off_1E7721468 menuElementsForActionManager:assetActionManager];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (PXAssetSelectionUserActivityController)userActivityController
{
  userActivityController = self->_userActivityController;
  if (!userActivityController)
  {
    v4 = [[PXAssetSelectionUserActivityController alloc] initWithSelectionManager:0];
    v5 = self->_userActivityController;
    self->_userActivityController = v4;

    userActivityController = self->_userActivityController;
  }

  return userActivityController;
}

- (void)informFirstWidgetAvailableVisibleRectInEditMode:(CGRect)mode
{
  height = mode.size.height;
  width = mode.size.width;
  v5 = [(PXPhotosDetailsUIViewController *)self _widgets:mode.origin.x];
  firstObject = [v5 firstObject];

  if (objc_opt_respondsToSelector())
  {
    [firstObject setMaxVisibleSizeInEditMode:{width, height}];
  }
}

- (void)requestExitEditModeWithChangeSavingMode:(int64_t)mode
{
  widgets = self->__widgets;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __75__PXPhotosDetailsUIViewController_requestExitEditModeWithChangeSavingMode___block_invoke;
  v4[3] = &unk_1E7734EC8;
  v4[5] = mode;
  v4[6] = a2;
  v4[4] = self;
  [(NSArray *)widgets enumerateObjectsUsingBlock:v4];
}

void __75__PXPhotosDetailsUIViewController_requestExitEditModeWithChangeSavingMode___block_invoke(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v12 = a2;
  v6 = objc_opt_respondsToSelector();
  v7 = v12;
  if (v6)
  {
    v8 = [v12 isInEditMode];
    v7 = v12;
    if (v8)
    {
      if (objc_opt_respondsToSelector())
      {
        v9 = a1[5];
        if (v9 == 2)
        {
          v10 = 2;
        }

        else
        {
          v10 = v9 == 1;
        }

        [v12 requestExitEditWithChangesSavingMode:v10];
      }

      else
      {
        v11 = [MEMORY[0x1E696AAA8] currentHandler];
        [v11 handleFailureInMethod:a1[6] object:a1[4] file:@"PXPhotosDetailsUIViewController.m" lineNumber:1225 description:@"requestExitEditWithChangesSavingMode: should be supported with isInEditMode"];
      }

      *a4 = 1;
      v7 = v12;
    }
  }
}

- (void)visualSearchLookupWidgetDidTap
{
  px_extendedTraitCollection = [(PXPhotosDetailsUIViewController *)self px_extendedTraitCollection];
  userInterfaceIdiom = [px_extendedTraitCollection userInterfaceIdiom];

  if (userInterfaceIdiom == 5 && self->_delegateRespondsTo.visualLookupTapped)
  {
    delegate = [(PXPhotosDetailsUIViewController *)self delegate];
    [delegate photosDetailsVisualLookupWidgetTapped];
  }
}

- (void)_handleSpaceBar:(id)bar
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(PXPhotosDetailsUIViewController *)self _widgets:bar];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 spaceBarWasPressed];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)_handleDeviceDidUnlock
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  _widgets = [(PXPhotosDetailsUIViewController *)self _widgets];
  v3 = [_widgets countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(_widgets);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 deviceDidBecomeUnlocked];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [_widgets countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (void)_updateWidgetDisablingWithAnimationOptions:(id)options
{
  v83 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  _viewModel = [(PXPhotosDetailsUIViewController *)self _viewModel];
  isSelecting = [_viewModel isSelecting];

  _widgetDisablingDimmingViews = [(PXPhotosDetailsUIViewController *)self _widgetDisablingDimmingViews];
  v7 = _widgetDisablingDimmingViews;
  v53 = _widgetDisablingDimmingViews;
  selfCopy = self;
  if (isSelecting)
  {
    _scrollViewController = [(PXPhotosDetailsUIViewController *)self _scrollViewController];
    _specManager = [(PXPhotosDetailsUIViewController *)self _specManager];
    spec = [_specManager spec];

    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    obj = [(PXPhotosDetailsUIViewController *)self _widgets];
    v11 = [obj countByEnumeratingWithState:&v76 objects:v82 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = 0;
      v55 = *v77;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v77 != v55)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v76 + 1) + 8 * i);
          if ((objc_opt_respondsToSelector() & 1) == 0 || ([v15 supportsSelection] & 1) == 0)
          {
            composition = [(PXPhotosDetailsUIViewController *)self composition];
            [composition frameForWidget:v15];
            v18 = v17;
            v20 = v19;
            v22 = v21;
            v24 = v23;

            scrollView = [_scrollViewController scrollView];
            contentCoordinateSpace = [_scrollViewController contentCoordinateSpace];
            [scrollView convertRect:contentCoordinateSpace fromCoordinateSpace:{v18, v20, v22, v24}];
            v28 = v27;
            v30 = v29;
            v32 = v31;
            v34 = v33;

            v84.origin.x = v28;
            v84.origin.y = v30;
            v84.size.width = v32;
            v84.size.height = v34;
            if (!CGRectIsEmpty(v84))
            {
              if (v13 == [v7 count])
              {
                v35 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v28, v30, v32, v34}];
                [spec dimmingColor];
                v37 = v36 = v7;
                [v35 setBackgroundColor:v37];

                [v35 setOpaque:1];
                [v35 setAlpha:0.0];
                v38 = v36;
                self = selfCopy;
                [v38 addObject:v35];
                [_scrollViewController addSubviewToScrollView:v35];
              }

              else
              {
                v35 = [v7 objectAtIndexedSubscript:v13];
              }

              layer = [v35 layer];
              [layer setZPosition:10000000.0];

              v69[0] = MEMORY[0x1E69E9820];
              v69[1] = 3221225472;
              v69[2] = __78__PXPhotosDetailsUIViewController__updateWidgetDisablingWithAnimationOptions___block_invoke;
              v69[3] = &unk_1E7735358;
              v70 = v35;
              v71 = spec;
              v72 = v28;
              v73 = v30;
              v74 = v32;
              v75 = v34;
              v40 = v35;
              [PXBasicUIViewTileAnimator animateWithOptions:optionsCopy animations:v69 completion:0];
              ++v13;

              v7 = v53;
            }
          }
        }

        v12 = [obj countByEnumeratingWithState:&v76 objects:v82 count:16];
      }

      while (v12);
    }
  }

  else if ([_widgetDisablingDimmingViews count])
  {
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v56 = v53;
    v41 = [v56 countByEnumeratingWithState:&v65 objects:v81 count:16];
    if (v41)
    {
      v42 = v41;
      v43 = *v66;
      do
      {
        for (j = 0; j != v42; ++j)
        {
          if (*v66 != v43)
          {
            objc_enumerationMutation(v56);
          }

          v63 = *(*(&v65 + 1) + 8 * j);
          v64[0] = MEMORY[0x1E69E9820];
          v64[1] = 3221225472;
          v64[2] = __78__PXPhotosDetailsUIViewController__updateWidgetDisablingWithAnimationOptions___block_invoke_2;
          v64[3] = &unk_1E774C648;
          v64[4] = v63;
          v62[0] = MEMORY[0x1E69E9820];
          v62[1] = 3221225472;
          v62[2] = __78__PXPhotosDetailsUIViewController__updateWidgetDisablingWithAnimationOptions___block_invoke_3;
          v62[3] = &unk_1E774B308;
          [PXBasicUIViewTileAnimator animateWithOptions:optionsCopy animations:v64 completion:v62];
        }

        v42 = [v56 countByEnumeratingWithState:&v65 objects:v81 count:16];
      }

      while (v42);
    }

    [v56 removeAllObjects];
  }

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  _widgets = [(PXPhotosDetailsUIViewController *)self _widgets];
  v46 = [_widgets countByEnumeratingWithState:&v58 objects:v80 count:16];
  if (v46)
  {
    v47 = v46;
    v48 = *v59;
    do
    {
      for (k = 0; k != v47; ++k)
      {
        if (*v59 != v48)
        {
          objc_enumerationMutation(_widgets);
        }

        v50 = *(*(&v58 + 1) + 8 * k);
        if (objc_opt_respondsToSelector())
        {
          if (isSelecting)
          {
            if (objc_opt_respondsToSelector())
            {
              supportsSelection = [v50 supportsSelection];
            }

            else
            {
              supportsSelection = 0;
            }
          }

          else
          {
            supportsSelection = 1;
          }

          [v50 setUserInteractionEnabled:supportsSelection];
        }
      }

      v47 = [_widgets countByEnumeratingWithState:&v58 objects:v80 count:16];
    }

    while (v47);
  }
}

uint64_t __78__PXPhotosDetailsUIViewController__updateWidgetDisablingWithAnimationOptions___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  [*(a1 + 40) dimmingAlpha];
  [v2 setAlpha:?];
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  v7 = *(a1 + 72);

  return [v3 setFrame:{v4, v5, v6, v7}];
}

- (void)_updateTitleAndSubtitle
{
  context = [(PXPhotosDetailsUIViewController *)self context];
  localizedTitle = [context localizedTitle];
  defaultHelper = [off_1E77217B8 defaultHelper];
  v5 = [defaultHelper displayableTextForTitle:localizedTitle intent:1];

  localizedSubtitle = [context localizedSubtitle];
  [(PXPhotosDetailsUIViewController *)self setTitle:v5];
  [(UIViewController *)self px_setSubtitle:localizedSubtitle];
  barsController = [(PXPhotosDetailsUIViewController *)self barsController];
  [barsController invalidateBars];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v9.receiver = self;
  v9.super_class = PXPhotosDetailsUIViewController;
  coordinatorCopy = coordinator;
  [(PXPhotosDetailsUIViewController *)&v9 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __86__PXPhotosDetailsUIViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v8[3] = &unk_1E774BC60;
  v8[4] = self;
  [coordinatorCopy animateAlongsideTransition:0 completion:v8];
}

void __86__PXPhotosDetailsUIViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) composition];
  [v1 invalidatePreferredContentHeightForAllWidgets];
}

- (void)traitCollectionDidChange:(id)change
{
  v18 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  v16.receiver = self;
  v16.super_class = PXPhotosDetailsUIViewController;
  [(PXPhotosDetailsUIViewController *)&v16 traitCollectionDidChange:changeCopy];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  _widgets = [(PXPhotosDetailsUIViewController *)self _widgets];
  v6 = [_widgets countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(_widgets);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          traitCollection = [(PXPhotosDetailsUIViewController *)self traitCollection];
          [v10 controllerTraitCollectionDidChangeFrom:changeCopy to:traitCollection];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [_widgets countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v7);
  }
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  v17 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  _widgets = [(PXPhotosDetailsUIViewController *)self _widgets];
  v7 = [_widgets countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(_widgets);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          [v11 environmentDidUpdateFocusInContext:contextCopy];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [_widgets countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (unint64_t)_optionsForWidget:(id)widget
{
  widgetCopy = widget;
  _widgetOptions = [(PXPhotosDetailsUIViewController *)self _widgetOptions];
  v6 = [_widgetOptions objectForKey:widgetCopy];

  unsignedIntegerValue = [v6 unsignedIntegerValue];
  return unsignedIntegerValue;
}

- (void)_updateAllWidgetsSelectionState
{
  v16 = *MEMORY[0x1E69E9840];
  _viewModel = [(PXPhotosDetailsUIViewController *)self _viewModel];
  isSelecting = [_viewModel isSelecting];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  _widgets = [(PXPhotosDetailsUIViewController *)self _widgets];
  v6 = [_widgets countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(_widgets);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 setSelecting:isSelecting];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [_widgets countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)_updateAllWidgetsSpec
{
  v15 = *MEMORY[0x1E69E9840];
  _widgetSpec = [(PXPhotosDetailsUIViewController *)self _widgetSpec];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  _widgets = [(PXPhotosDetailsUIViewController *)self _widgets];
  v5 = [_widgets countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(_widgets);
        }

        v9 = *(*(&v10 + 1) + 8 * v8);
        if (objc_opt_respondsToSelector())
        {
          [v9 setSpec:_widgetSpec];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [_widgets countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)_setWidgetSpec:(id)spec
{
  specCopy = spec;
  if (self->__widgetSpec != specCopy)
  {
    v6 = specCopy;
    objc_storeStrong(&self->__widgetSpec, spec);
    [(PXPhotosDetailsUIViewController *)self _updateAllWidgetsSpec];
    specCopy = v6;
  }
}

- (void)_loadWidgets
{
  if (self->__widgets)
  {
    return;
  }

  v3 = os_log_create(*MEMORY[0x1E69BDDA0], "InfoPanelLoadWidgetsSignpost");
  v4 = os_signpost_id_generate(v3);
  v5 = v3;
  v6 = v5;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "InfoPanelWillLoadWidgets", "", buf, 2u);
  }

  *buf = 0;
  v145 = buf;
  v146 = 0x3032000000;
  v147 = __Block_byref_object_copy__71845;
  v148 = __Block_byref_object_dispose__71846;
  px_oneUpPresentation = [(UIViewController *)self px_oneUpPresentation];
  v142[0] = 0;
  v142[1] = v142;
  v142[2] = 0x2020000000;
  v143 = 0;
  v140[0] = 0;
  v140[1] = v140;
  v140[2] = 0x3032000000;
  v140[3] = __Block_byref_object_copy__71845;
  v140[4] = __Block_byref_object_dispose__71846;
  v141 = 0;
  array = [MEMORY[0x1E695DF70] array];
  strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
  v9 = +[PXPhotosDetailsSettings sharedInstance];
  context = [(PXPhotosDetailsUIViewController *)self context];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __47__PXPhotosDetailsUIViewController__loadWidgets__block_invoke;
  aBlock[3] = &unk_1E7734E58;
  aBlock[4] = self;
  v127 = context;
  v134 = v127;
  v137 = buf;
  v122 = array;
  v135 = v122;
  obj = strongToStrongObjectsMapTable;
  v113 = strongToStrongObjectsMapTable;
  v136 = v113;
  v138 = v142;
  v139 = v140;
  v11 = _Block_copy(aBlock);
  _specManager = [(PXPhotosDetailsUIViewController *)self _specManager];
  spec = [_specManager spec];

  options = [(PXPhotosDetailsUIViewController *)self options];
  showAssetsWidget = [v9 showAssetsWidget];
  if ((options & 2) != 0)
  {
    v15 = 0;
  }

  else
  {
    v15 = showAssetsWidget;
  }

  v121 = v15;
  _shouldShowMovieHeader = 0;
  if (([v9 showHeaderWidget] & ((options & 2) == 0)) == 1 && (options & 8) == 0)
  {
    _shouldShowMovieHeader = [(PXPhotosDetailsUIViewController *)self _shouldShowMovieHeader];
    v131[0] = MEMORY[0x1E69E9820];
    v131[1] = 3221225472;
    v131[2] = __47__PXPhotosDetailsUIViewController__loadWidgets__block_invoke_2;
    v131[3] = &__block_descriptor_33_e41_v16__0___PXMutablePhotosDetailsContext__8l;
    v132 = _shouldShowMovieHeader;
    [v127 performChanges:v131];
  }

  v111 = v6;
  showPlacesWidget = [v9 showPlacesWidget];
  if ((options & 8) != 0)
  {
    v17 = 0;
  }

  else
  {
    v17 = showPlacesWidget;
  }

  v120 = v17;
  v18 = +[PXRootSettings sharedInstance];
  canShowInternalUI = [v18 canShowInternalUI];

  showSharedLibraryWidget = [v9 showSharedLibraryWidget];
  showAlbumAttributionWidget = [v9 showAlbumAttributionWidget];
  if ((options & 0x82) == 2)
  {
    v21 = showAlbumAttributionWidget;
  }

  else
  {
    v21 = 0;
  }

  v116 = v21;
  showAppAttributionWidget = [v9 showAppAttributionWidget];
  showVisualLookUpWidget = [v9 showVisualLookUpWidget];
  showTimeWidget = [v9 showTimeWidget];
  showEXIFWidget = [v9 showEXIFWidget];
  v128 = (options >> 1) & 1;
  if (canShowInternalUI)
  {
    v118 = [v9 showAssetDescriptionWidget] & v128;
  }

  else
  {
    v118 = 0;
  }

  v24 = +[PXContentSyndicationConfigurationProvider deprecated_sharedInstance];
  if ([v24 contentSyndicationIsAvailable])
  {
    v25 = +[PXContentSyndicationSettings sharedInstance];
    v112 = [v25 showSyndicatedContentWidgetForSavedAssets] & v128;
  }

  else
  {
    v112 = 0;
  }

  _widgetSpec = [(PXPhotosDetailsUIViewController *)self _widgetSpec];
  userInterfaceIdiom = [_widgetSpec userInterfaceIdiom];

  if ([spec enableActionsWidget])
  {
    showActionsWidget = [v9 showActionsWidget];
    if ((options & 8) != 0)
    {
      v29 = 0;
    }

    else
    {
      v29 = showActionsWidget;
    }

    v110 = v29;
  }

  else
  {
    v110 = 0;
  }

  v30 = [v9 showCaptionHashtagsWidget] & (options >> 1);
  if (userInterfaceIdiom == 5)
  {
    v31 = 0;
  }

  else
  {
    v31 = v30;
  }

  v108 = +[PXMemoriesRelatedSettings sharedInstance];
  v107 = v4 - 1;
  if ([v108 enableMemoriesLivingOnFeedback])
  {
    v109 = ((options & 8) == 0) & ~[*MEMORY[0x1E69DDA98] isRunningTest];
  }

  else
  {
    v109 = 0;
  }

  v123 = v4;
  v32 = userInterfaceIdiom == 5;
  v33 = v9;
  if (v31)
  {
    v34 = objc_alloc_init(PXPhotosDetailsCaptionHashtagsWidget);
    [(PXPhotosDetailsCaptionHashtagsWidget *)v34 setWidgetEditingDelegate:self];
    v35 = v11[2](v11, v34, 0);
  }

  else if ((options & 2) == 0)
  {
    goto LABEL_40;
  }

  v36 = +[PXLemonadeSettings sharedInstance];
  enablePhototypes = [v36 enablePhototypes];

  if (enablePhototypes)
  {
    v38 = objc_alloc_init(_TtC12PhotosUICore28PhotosDetailsPhototypeWidget);
    v39 = v11[2](v11, v38, 0);
  }

LABEL_40:
  if (userInterfaceIdiom == 5)
  {
    v41 = objc_alloc_init(_TtC12PhotosUICore27PhotosDetailsFilenameWidget);
    v42 = v11[2](v11, v41, 0);

    v40 = [PXPhotosDetailsPeopleWidgetViewModel hasContentAvailableFor:v127];
  }

  else
  {
    v40 = 0;
  }

  v43 = showVisualLookUpWidget & v128;
  if ((showVisualLookUpWidget & v128) == 0 || v40)
  {
    if ((options & 2) == 0)
    {
      goto LABEL_48;
    }
  }

  else
  {
    v44 = objc_alloc_init(_TtC12PhotosUICore31PhotosDetailsVisualLookupWidget);
    v45 = v11[2](v11, v44, 0);
  }

  v46 = objc_alloc_init(_TtC12PhotosUICore31PhotosDetailsShazamEventsWidget);
  v47 = v11[2](v11, v46, 0);

LABEL_48:
  if ((showTimeWidget & v128) != 0)
  {
    people = [v127 people];
    v49 = [people count];

    v50 = objc_alloc_init(_TtC12PhotosUICore23PhotosDetailsTimeWidget);
    if (v49)
    {
      v51 = 0;
    }

    else
    {
      v51 = userInterfaceIdiom == 5;
    }

    v52 = v11[2](v11, v50, v51);
  }

  if (userInterfaceIdiom == 5)
  {
    v53 = [PXPhotosDetailsPeopleWidget alloc];
    peopleTileViewControllerProvider = [(PXPhotosDetailsUIViewController *)self peopleTileViewControllerProvider];
    v55 = [(PXPhotosDetailsPeopleWidget *)v53 initWithPeopleTileViewControllerProvider:peopleTileViewControllerProvider];

    v56 = v11[2](v11, v55, 1);
  }

  v57 = v43 & v40;
  v58 = v33;
  v60 = v122;
  v59 = v123;
  if (v57 == 1)
  {
    v61 = objc_alloc_init(_TtC12PhotosUICore31PhotosDetailsVisualLookupWidget);
    v62 = (v11)[2](v11, v61, userInterfaceIdiom == 5);
  }

  if (v118)
  {
    v63 = objc_alloc_init(_TtC12PhotosUICore35PhotosDetailsAssetDescriptionWidget);
    v64 = (v11)[2](v11, v63, userInterfaceIdiom == 5);
  }

  if ((showEXIFWidget & v128) != 0)
  {
    v65 = objc_alloc_init(_TtC12PhotosUICore23PhotosDetailsEXIFWidget);
    v66 = (v11)[2](v11, v65, userInterfaceIdiom == 5);
  }

  if (_shouldShowMovieHeader)
  {
    v67 = objc_alloc_init(PXPhotosDetailsHeaderTileWidget);
    v68 = (v11)[2](v11, v67, userInterfaceIdiom == 5);
    headerWidget = self->__headerWidget;
    self->__headerWidget = v68;
  }

  if (v121)
  {
    v70 = objc_alloc_init(PXPhotosDetailsAssetsWidget);
    [(PXPhotosDetailsAssetsWidget *)v70 setWidgetOneUpDelegate:self];
    v71 = v11[2](v11, v70, 2);
    previewWidget = self->__previewWidget;
    self->__previewWidget = v71;
  }

  v73 = (options & 2) == 0;
  if (v120)
  {
    v74 = objc_alloc_init(PXUIMapWidget);
    [(PXUIMapWidget *)v74 setShowAddressLink:v128];
    v75 = (v11)[2](v11, v74, userInterfaceIdiom == 5);
    if (userInterfaceIdiom == 5)
    {
      v126 = v58;
      firstAsset = [v127 firstAsset];
      photosDataSource = [v127 photosDataSource];
      firstAssetCollection = [photosDataSource firstAssetCollection];
      v79 = [PXPhotoKitEditLocationActionPerformer canPerformOnAsset:firstAsset inAssetCollection:firstAssetCollection person:0 socialGroup:0];

      v58 = v126;
      v60 = v122;
      v73 = (options & 2) == 0;
      if (v79)
      {
        v80 = objc_alloc_init(_TtC12PhotosUICore29PhotosDetailsNoLocationWidget);
        v81 = v11[2](v11, v80, v32);

        v73 = (options & 2) == 0;
      }
    }

    v59 = v123;
  }

  if ((showSharedLibraryWidget & v128) != 0)
  {
    v82 = objc_alloc_init(_TtC12PhotosUICore32PhotosDetailsSharedLibraryWidget);
    v83 = v11[2](v11, v82, v32);
  }

  if (v116)
  {
    v84 = objc_alloc_init(_TtC12PhotosUICore35PhotosDetailsAlbumAttributionWidget);
    v85 = v11[2](v11, v84, v32);
  }

  if (v112)
  {
    v86 = objc_alloc_init(_TtC12PhotosUICore32PhotosDetailsSharedWithYouWidget);
    v87 = v11[2](v11, v86, v32);
  }

  if ((showAppAttributionWidget & v128) != 0)
  {
    v88 = objc_alloc_init(_TtC12PhotosUICore32PhotosDetailsSavedFromAppsWidget);
    v89 = v11[2](v11, v88, v32);

LABEL_79:
    v90 = objc_alloc_init(_TtC12PhotosUICore34PhotosDetailsAssetProvenanceWidget);
    v91 = v11[2](v11, v90, v32);

    goto LABEL_80;
  }

  if ((options & 2) != 0)
  {
    goto LABEL_79;
  }

LABEL_80:
  if ((options & 0x800) != 0)
  {
    v92 = objc_alloc_init(PXDemoTilingControllerWidget);
    v93 = v11[2](v11, v92, 1);

    v94 = objc_alloc_init(PXDemoViewWidget);
    v95 = v11[2](v11, v94, 1);

    v96 = objc_alloc_init(PXDemoDynamicViewWidget);
    v97 = v11[2](v11, v96, 1);

    v73 = (options & 2) == 0;
  }

  if (v109)
  {
    v98 = objc_alloc_init(PXMemoriesLivingOnFeedbackWidget);
    v99 = v11[2](v11, v98, v32);
  }

  if (v110)
  {
    v100 = objc_alloc_init(PXPhotosDetailsActionsUIWidget);
    [(PXPhotosDetailsActionsUIWidget *)v100 setAllowRevealInMomentAction:(options >> 4) & 1];
    [(PXPhotosDetailsActionsUIWidget *)v100 setAllowCreateMemoryAction:v73];
    [(PXPhotosDetailsActionsUIWidget *)v100 setAllowInternalFileRadarAction:(options >> 6) & 1];
    v101 = v11[2](v11, v100, v32);
  }

  v102 = [v60 copy];
  widgets = self->__widgets;
  self->__widgets = v102;

  [(PXPhotosDetailsUIViewController *)self setEmpty:[(NSArray *)self->__widgets count]== 0];
  [(PXPhotosDetailsUIViewController *)self _updateAllWidgetsSpec];
  [(PXPhotosDetailsUIViewController *)self _updateAllWidgetsSelectionState];
  objc_storeStrong(&self->__widgetOptions, obj);
  _viewModel = [(PXPhotosDetailsUIViewController *)self _viewModel];
  v130[0] = MEMORY[0x1E69E9820];
  v130[1] = 3221225472;
  v130[2] = __47__PXPhotosDetailsUIViewController__loadWidgets__block_invoke_3;
  v130[3] = &unk_1E7734EA0;
  v130[4] = v142;
  v130[5] = v140;
  [_viewModel performChanges:v130];

  v105 = v111;
  v106 = v105;
  if (v107 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v105))
  {
    *v129 = 0;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v106, OS_SIGNPOST_INTERVAL_END, v59, "InfoPanelWillLoadWidgets", "", v129, 2u);
  }

  _Block_object_dispose(v140, 8);
  _Block_object_dispose(v142, 8);
  _Block_object_dispose(buf, 8);
}

id __47__PXPhotosDetailsUIViewController__loadWidgets__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v5 setWidgetUnlockDelegate:*(a1 + 32)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v5 setContext:*(a1 + 40)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v5 setWidgetInteractionDelegate:*(a1 + 32)];
  }

  if ([v5 conformsToProtocol:&unk_1F19C2780] && (objc_opt_respondsToSelector() & 1) != 0 && objc_msgSend(v5, "conformsToProtocol:", &unk_1F1940F78))
  {
    [v5 setOneUpPresentation:*(*(*(a1 + 64) + 8) + 40)];
    [*(*(*(a1 + 64) + 8) + 40) setDelegate:v5];
    v6 = *(*(a1 + 64) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    v8 = [*(a1 + 32) _widgetSpec];
    [v5 setSpec:v8];
  }

  if ((objc_opt_respondsToSelector() & 1) == 0 || [v5 hasContentForCurrentInput])
  {
    [*(a1 + 48) addObject:v5];
    v9 = *(a1 + 56);
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
    [v9 setObject:v10 forKey:v5];
  }

  if (objc_opt_respondsToSelector())
  {
    v11 = *(*(a1 + 72) + 8);
    if (*(v11 + 24))
    {
      v12 = 1;
    }

    else
    {
      v12 = [v5 supportsSelection];
      v11 = *(*(a1 + 72) + 8);
    }

    *(v11 + 24) = v12;
    if (*(*(*(a1 + 72) + 8) + 24) == 1)
    {
      v13 = [v5 selectionManager];
      v14 = *(*(a1 + 80) + 8);
      v15 = *(v14 + 40);
      *(v14 + 40) = v13;
    }
  }

  if (objc_opt_respondsToSelector())
  {
    [v5 setActionPerformerDelegate:*(a1 + 32)];
  }

  return v5;
}

void __47__PXPhotosDetailsUIViewController__loadWidgets__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(*(*(a1 + 32) + 8) + 24);
  v4 = a2;
  [v4 setSupportsSelection:v3];
  [v4 setSelectionManager:*(*(*(a1 + 40) + 8) + 40)];
}

- (BOOL)_shouldShowMovieHeader
{
  context = [(PXPhotosDetailsUIViewController *)self context];
  photosDataSource = [context photosDataSource];
  v4 = [PXPhotosDetailsHeaderTileWidget canShowMovieHeaderForDataSource:photosDataSource];

  return v4;
}

- (void)_loadComposition
{
  if (!self->_composition)
  {
    [(PXPhotosDetailsUIViewController *)self _loadWidgets];
    _widgets = [(PXPhotosDetailsUIViewController *)self _widgets];
    _scrollViewController = [(PXPhotosDetailsUIViewController *)self _scrollViewController];
    if (!_scrollViewController)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosDetailsUIViewController.m" lineNumber:733 description:@"missing scrollViewController"];
    }

    v5 = [[PXWidgetComposition alloc] initWithScrollViewController:_scrollViewController];
    composition = self->_composition;
    self->_composition = v5;

    [(PXPhotosDetailsUIViewController *)self _updateCompositionSpec];
    [(PXWidgetComposition *)self->_composition setDelegate:self];
    [(PXWidgetComposition *)self->_composition setWidgets:_widgets];
    if (![(PXPhotosDetailsUIViewController *)self isEmpty])
    {
      [(PXTilingControllerComposition *)self->_composition setActive:1];
    }

    composition = [(PXPhotosDetailsUIViewController *)self composition];
    _previewWidget = [(PXPhotosDetailsUIViewController *)self _previewWidget];
    v9 = [composition headerTilingControllerForWidget:_previewWidget];
    headerAssetWidgetTilingController = self->__headerAssetWidgetTilingController;
    self->__headerAssetWidgetTilingController = v9;

    if (self->_delegateRespondsTo.compositionDidChange)
    {
      delegate = [(PXPhotosDetailsUIViewController *)self delegate];
      [delegate photosDetailsUIViewControllerCompositionDidChange:self];
    }
  }
}

- (void)_updateWidgetsBackground
{
  context = [(PXPhotosDetailsUIViewController *)self context];
  viewSourceOrigin = [context viewSourceOrigin];

  _widgetSpec = [(PXPhotosDetailsUIViewController *)self _widgetSpec];
  sizeClass = [_widgetSpec sizeClass];

  _widgetSpec2 = [(PXPhotosDetailsUIViewController *)self _widgetSpec];
  userInterfaceIdiom = [_widgetSpec2 userInterfaceIdiom];

  if (viewSourceOrigin == 1 && (sizeClass == 1 || userInterfaceIdiom != 5))
  {
    scrollViewController = [(PXPhotosDetailsUIViewController *)self scrollViewController];
    scrollView = [scrollViewController scrollView];

    widgetsBackgroundView = [(PXPhotosDetailsUIViewController *)self widgetsBackgroundView];

    if (!widgetsBackgroundView)
    {
      v11 = objc_alloc(MEMORY[0x1E69DD250]);
      v12 = [v11 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
      systemGray6Color = [MEMORY[0x1E69DC888] systemGray6Color];
      v14 = [systemGray6Color colorWithAlphaComponent:0.6];
      [v12 setBackgroundColor:v14];

      layer = [v12 layer];
      [layer setZPosition:-15000000.0];

      [scrollView addSubview:v12];
      [(PXPhotosDetailsUIViewController *)self setWidgetsBackgroundView:v12];
    }

    [scrollView contentSize];
    v17 = v16;
    [scrollView frame];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    [(PXPhotosDetailsUIViewController *)self contentEdgeInsets];
    if (v24 > 0.0)
    {
      [(PXPhotosDetailsUIViewController *)self contentEdgeInsets];
      v26 = v25;
      [scrollView adjustedContentInset];
      v21 = v26 - v27;
    }

    [scrollView bounds];
    v29 = v17 + v28 * 1.5;
    widgetsBackgroundView2 = [(PXPhotosDetailsUIViewController *)self widgetsBackgroundView];
    [widgetsBackgroundView2 setFrame:{v19, v21, v23, v29}];
  }
}

- (void)_ensureScrollViewController
{
  if (!self->__scrollViewController)
  {
    if (([(PXPhotosDetailsUIViewController *)self isViewLoaded]& 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosDetailsUIViewController.m" lineNumber:667 description:@"view not loaded"];
    }

    view = [(PXPhotosDetailsUIViewController *)self view];
    v4 = [off_1E7721938 alloc];
    [view bounds];
    v5 = [v4 initWithFrame:?];
    scrollViewController = self->__scrollViewController;
    self->__scrollViewController = v5;

    [(PXUIScrollViewController *)self->__scrollViewController setChildScrollViewAccessibilityIdentifier:@"photos_details_view_scroll_view"];
    [(PXUIScrollViewController *)self->__scrollViewController registerObserver:self];
    [(PXUIScrollViewController *)self->__scrollViewController setIgnoresSafeAreaInsets:1];
    scrollView = [(PXUIScrollViewController *)self->__scrollViewController scrollView];
    [scrollView px_setPocketsEnabled:{-[PXPhotosDetailsUIViewController scrollPocketsEnabled](self, "scrollPocketsEnabled")}];
    context = [(PXPhotosDetailsUIViewController *)self context];
    viewSourceOrigin = [context viewSourceOrigin];

    [scrollView setAutoresizingMask:18];
    [view addSubview:scrollView];
    _specManager = [(PXPhotosDetailsUIViewController *)self _specManager];
    spec = [_specManager spec];
    compositionSpec = [spec compositionSpec];

    if ([compositionSpec orientation])
    {
      if ([compositionSpec orientation] == 1)
      {
        [(PXUIScrollViewController *)self->__scrollViewController setShowsHorizontalScrollIndicator:viewSourceOrigin != 1];
      }
    }

    else
    {
      [(PXUIScrollViewController *)self->__scrollViewController setShowsVerticalScrollIndicator:viewSourceOrigin != 1];
    }

    [(PXPhotosDetailsUIViewController *)self _updateScrollViewControllerContentInset];
  }
}

- (double)captionWidgetCurrentContentHeight
{
  firstObject = [(NSArray *)self->__widgets firstObject];
  objc_opt_class();
  v3 = 0.0;
  if (objc_opt_isKindOfClass())
  {
    [firstObject currentContentHeight];
    v3 = v4;
  }

  return v3;
}

- (double)captionWidgetPreferredHeight
{
  firstObject = [(NSArray *)self->__widgets firstObject];
  objc_opt_class();
  v4 = 0.0;
  if (objc_opt_isKindOfClass())
  {
    view = [(PXPhotosDetailsUIViewController *)self view];
    [view bounds];
    v7 = v6;

    [firstObject preferredContentHeightForWidth:v7];
    v4 = v8;
  }

  return v4;
}

- (void)_handleWidgetsLoadingDelay
{
  if ([(PXPhotosDetailsUIViewController *)self _hasAppeared])
  {
    composition = [(PXPhotosDetailsUIViewController *)self composition];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __61__PXPhotosDetailsUIViewController__handleWidgetsLoadingDelay__block_invoke;
    v5[3] = &unk_1E774C648;
    v6 = composition;
    v4 = composition;
    [v4 performWidgetLoadingChange:v5];
  }
}

void __61__PXPhotosDetailsUIViewController__handleWidgetsLoadingDelay__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setMinimumWidgetLoadingPriority:0];
  v2 = +[PXPhotosDetailsSettings sharedInstance];
  v3 = [v2 loadAllWidgetsContentAfterDelay];

  if (v3)
  {
    v4 = *(a1 + 32);

    [v4 setShouldLoadAllWidgets:1];
  }
}

- (BOOL)_scrollToBottomAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v15[1] = *MEMORY[0x1E69E9840];
  if (![(PXPhotosDetailsUIViewController *)self isViewLoaded])
  {
    return 0;
  }

  scrollViewController = [(PXPhotosDetailsUIViewController *)self scrollViewController];
  scrollView = [scrollViewController scrollView];

  v7 = [scrollView px_isScrolledAtEdge:3];
  if ((v7 & 1) == 0)
  {
    [scrollView px_scrollToEdge:3 animated:animatedCopy];
    v8 = MEMORY[0x1E6991F28];
    v14 = *MEMORY[0x1E6991E20];
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v15[0] = v10;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    [v8 sendEvent:@"com.apple.photos.CPAnalytics.viewScrolledToBottom" withPayload:v11];
  }

  v12 = v7 ^ 1;

  return v12;
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    p_delegateRespondsTo = &self->_delegateRespondsTo;
    p_delegateRespondsTo->requestDismissal = objc_opt_respondsToSelector() & 1;
    p_delegateRespondsTo->compositionDidChange = objc_opt_respondsToSelector() & 1;
    p_delegateRespondsTo->visualLookupTapped = objc_opt_respondsToSelector() & 1;
  }
}

- (BOOL)_dismissSelfIfSafeAnimated:(BOOL)animated
{
  animatedCopy = animated;
  navigationController = [(PXPhotosDetailsUIViewController *)self navigationController];
  v6 = navigationController;
  if (navigationController)
  {
    visibleViewController = [navigationController visibleViewController];

    if (visibleViewController == self)
    {
      v8 = [v6 popViewControllerAnimated:animatedCopy];
LABEL_9:
      v11 = 1;
      goto LABEL_10;
    }
  }

  else
  {
    presentedViewController = [(PXPhotosDetailsUIViewController *)self presentedViewController];

    if (!presentedViewController)
    {
      [(PXPhotosDetailsUIViewController *)self dismissViewControllerAnimated:animatedCopy completion:0];
      goto LABEL_9;
    }
  }

  if (self->_delegateRespondsTo.requestDismissal)
  {
    delegate = [(PXPhotosDetailsUIViewController *)self delegate];
    v11 = [delegate photosDetailsUIViewControllerRequestDismissal:self];
  }

  else
  {
    v11 = 0;
  }

LABEL_10:

  return v11;
}

- (CGSize)preferredContentSize
{
  v12.receiver = self;
  v12.super_class = PXPhotosDetailsUIViewController;
  [(PXPhotosDetailsUIViewController *)&v12 preferredContentSize];
  v4 = v3;
  v6 = v5;
  if (([(PXPhotosDetailsUIViewController *)self options]& 8) != 0)
  {
    view = [(PXPhotosDetailsUIViewController *)self view];
    [view frame];
    v4 = v8;
    v6 = v9;
  }

  v10 = v4;
  v11 = v6;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)_viewWillLayoutBeforeAppearing
{
  v36 = *MEMORY[0x1E69E9840];
  [(PXPhotosDetailsUIViewController *)self _ensureScrollViewController];
  [(PXPhotosDetailsUIViewController *)self _ensureComposition];
  composition = [(PXPhotosDetailsUIViewController *)self composition];
  v4 = PLRelatedGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    selfCopy = self;
    v34 = 2112;
    v35 = composition;
    _os_log_impl(&dword_1A3C1C000, v4, OS_LOG_TYPE_DEBUG, "[%@] _viewWillLayoutBeforeAppearing composition=%@", buf, 0x16u);
  }

  v5 = +[PXPhotosDetailsSettings sharedInstance];
  if ([v5 allowWidgetsContentLoading])
  {
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __65__PXPhotosDetailsUIViewController__viewWillLayoutBeforeAppearing__block_invoke;
    v29[3] = &unk_1E774C648;
    v30 = composition;
    [v30 performWidgetLoadingChange:v29];
    [v5 defaultPriorityWidgetsLoadingDelay];
    v7 = v6;
    objc_initWeak(buf, self);
    v8 = dispatch_time(0, (v7 * 1000000000.0));
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __65__PXPhotosDetailsUIViewController__viewWillLayoutBeforeAppearing__block_invoke_2;
    block[3] = &unk_1E774C318;
    objc_copyWeak(&v28, buf);
    dispatch_after(v8, MEMORY[0x1E69E96A0], block);
    objc_destroyWeak(&v28);
    objc_destroyWeak(buf);
  }

  [(PXPhotosDetailsUIViewController *)self _updateStatusBarTitle];
  barsController = [(PXPhotosDetailsUIViewController *)self barsController];
  [barsController updateIfNeeded];

  v10 = [objc_alloc(MEMORY[0x1E69DC8E0]) initWithDelegate:self];
  [(PXPhotosDetailsUIViewController *)self _setContextMenuInteraction:v10];
  view = [(PXPhotosDetailsUIViewController *)self view];
  [view addInteraction:v10];

  v12 = +[PXCursorInteractionSettings sharedInstance];
  enableDetailsEffect = [v12 enableDetailsEffect];

  if (enableDetailsEffect)
  {
    v14 = [objc_alloc(MEMORY[0x1E69DCDB0]) initWithDelegate:self];
    [(PXPhotosDetailsUIViewController *)self _setPointerInteraction:v14];
    scrollViewController = [(PXPhotosDetailsUIViewController *)self scrollViewController];
    scrollView = [scrollViewController scrollView];

    [scrollView addInteraction:v14];
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  _widgets = [(PXPhotosDetailsUIViewController *)self _widgets];
  v18 = [_widgets countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v24;
    do
    {
      v21 = 0;
      do
      {
        if (*v24 != v20)
        {
          objc_enumerationMutation(_widgets);
        }

        v22 = *(*(&v23 + 1) + 8 * v21);
        if (objc_opt_respondsToSelector())
        {
          [v22 contentViewWillAppear];
        }

        ++v21;
      }

      while (v19 != v21);
      v19 = [_widgets countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v19);
  }
}

uint64_t __65__PXPhotosDetailsUIViewController__viewWillLayoutBeforeAppearing__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setMinimumWidgetLoadingPriority:1];
  v2 = *(a1 + 32);

  return [v2 setShouldLoadVisibleWidgets:1];
}

void __65__PXPhotosDetailsUIViewController__viewWillLayoutBeforeAppearing__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleWidgetsLoadingDelay];
}

- (void)viewWillLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = PXPhotosDetailsUIViewController;
  [(PXPhotosDetailsUIViewController *)&v3 viewWillLayoutSubviews];
  if (![(PXPhotosDetailsUIViewController *)self _hasAppeared]&& [(PXPhotosDetailsUIViewController *)self px_isVisible])
  {
    [(PXPhotosDetailsUIViewController *)self _setHasAppeared:1];
    [(PXPhotosDetailsUIViewController *)self _viewWillLayoutBeforeAppearing];
  }

  [(PXPhotosDetailsUIViewController *)self _updateScrollViewControllerContentInset];
  [(PXPhotosDetailsUIViewController *)self _updateWidgetsBackground];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v22 = *MEMORY[0x1E69E9840];
  v20.receiver = self;
  v20.super_class = PXPhotosDetailsUIViewController;
  [(PXPhotosDetailsUIViewController *)&v20 viewDidDisappear:disappear];
  eventTracker = [(PXPhotosDetailsUIViewController *)self eventTracker];
  [eventTracker logViewControllerDidDisappear:self];

  [(PXPhotosDetailsUIViewController *)self _setHasAppeared:0];
  _contextMenuInteraction = [(PXPhotosDetailsUIViewController *)self _contextMenuInteraction];
  v6 = _contextMenuInteraction;
  if (_contextMenuInteraction)
  {
    view = [_contextMenuInteraction view];
    [view removeInteraction:v6];

    [(PXPhotosDetailsUIViewController *)self _setContextMenuInteraction:0];
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  _widgets = [(PXPhotosDetailsUIViewController *)self _widgets];
  v9 = [_widgets countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      v12 = 0;
      do
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(_widgets);
        }

        v13 = *(*(&v16 + 1) + 8 * v12);
        if (objc_opt_respondsToSelector())
        {
          [v13 contentViewDidDisappear];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [_widgets countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v10);
  }

  siriActionActivity = [(PXPhotosDetailsUIViewController *)self siriActionActivity];
  [siriActionActivity resignCurrent];

  userActivityController = [(PXPhotosDetailsUIViewController *)self userActivityController];
  [userActivityController setActive:0];

  [MEMORY[0x1E69788F0] clearCurrentMemoryForURLNavigation];
}

- (void)viewDidAppear:(BOOL)appear
{
  v70 = *MEMORY[0x1E69E9840];
  v67.receiver = self;
  v67.super_class = PXPhotosDetailsUIViewController;
  [(PXPhotosDetailsUIViewController *)&v67 viewDidAppear:appear];
  context = [(PXPhotosDetailsUIViewController *)self context];
  photosDataSource = [context photosDataSource];
  containerAssetCollection = [photosDataSource containerAssetCollection];

  v7 = +[_PXPhotosDetailsPurger sharedPurger];
  [v7 detailsViewControllerDidAppear:self];
  if ((self->_options & 0xA) == 0)
  {
    [v7 purgeOldViewControllers];
  }

  scrollViewController = [(PXPhotosDetailsUIViewController *)self scrollViewController];
  scrollView = [scrollViewController scrollView];

  if ([scrollView px_isScrolledAtEdge:1])
  {
    view = [(PXPhotosDetailsUIViewController *)self view];
    [view bounds];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    [view safeAreaInsets];
    v20 = v12 + v19;
    v22 = v14 + v21;
    v24 = v16 - (v19 + v23);
    v26 = v18 - (v21 + v25);
    _headerWidget = [(PXPhotosDetailsUIViewController *)self _headerWidget];
    context2 = [(PXPhotosDetailsUIViewController *)self context];
    v29 = [_headerWidget regionOfInterestForContext:context2];
    view2 = [(PXPhotosDetailsUIViewController *)self view];
    [v29 rectInCoordinateSpace:view2];
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v38 = v37;

    v71.origin.x = v20;
    v71.origin.y = v22;
    v71.size.width = v24;
    v71.size.height = v26;
    CGRectGetMaxY(v71);
    v72.origin.x = v32;
    v72.origin.y = v34;
    v72.size.width = v36;
    v72.size.height = v38;
    CGRectGetMaxY(v72);
    PXFloatEqualToFloatWithTolerance();
  }

  if ([MEMORY[0x1E69636A8] px_allowsDonationsForCurrentProcess])
  {
    siriActionActivity = [(PXPhotosDetailsUIViewController *)self siriActionActivity];

    if (siriActionActivity)
    {
      siriActionActivity2 = [(PXPhotosDetailsUIViewController *)self siriActionActivity];
      [siriActionActivity2 becomeCurrent];
LABEL_20:

      goto LABEL_21;
    }

    if ([context viewSourceOrigin] == 5)
    {
      localizedTitle = [containerAssetCollection localizedTitle];
      siriActionActivity2 = localizedTitle;
      if (localizedTitle)
      {
        v42 = [localizedTitle stringByReplacingOccurrencesOfString:@"\n" withString:&stru_1F1741150];
        v43 = MEMORY[0x1E69636A8];
        v65[0] = MEMORY[0x1E69E9820];
        v65[1] = 3221225472;
        v65[2] = __49__PXPhotosDetailsUIViewController_viewDidAppear___block_invoke;
        v65[3] = &unk_1E7740590;
        v66 = v42;
        v62[0] = MEMORY[0x1E69E9820];
        v62[1] = 3221225472;
        v62[2] = __49__PXPhotosDetailsUIViewController_viewDidAppear___block_invoke_2;
        v62[3] = &unk_1E7734E30;
        v63 = containerAssetCollection;
        selfCopy = self;
        firstObject = v42;
        [v43 px_requestActivityWithActivityType:@"com.apple.mobileslideshow.memory" titleProvider:v65 completionBlock:v62];
      }

      else
      {
        firstObject = PLUIGetLog();
        if (os_log_type_enabled(firstObject, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v69 = containerAssetCollection;
          _os_log_impl(&dword_1A3C1C000, firstObject, OS_LOG_TYPE_ERROR, "No localized title found for memory: %@", buf, 0xCu);
        }
      }

      goto LABEL_19;
    }

    if ([context viewSourceOrigin] == 6)
    {
      people = [context people];
      siriActionActivity2 = [people fetchedObjects];

      if ([siriActionActivity2 count] != 1)
      {
        goto LABEL_20;
      }

      firstObject = [siriActionActivity2 firstObject];
      px_localizedName = [firstObject px_localizedName];
      if (!+[PXPeopleUtilities isPersonHiddenFromPeopleHome:](PXPeopleUtilities, "isPersonHiddenFromPeopleHome:", firstObject) && [px_localizedName length])
      {
        v47 = MEMORY[0x1E69636A8];
        v60[0] = MEMORY[0x1E69E9820];
        v60[1] = 3221225472;
        v60[2] = __49__PXPhotosDetailsUIViewController_viewDidAppear___block_invoke_477;
        v60[3] = &unk_1E7740590;
        v61 = px_localizedName;
        v57[0] = MEMORY[0x1E69E9820];
        v57[1] = 3221225472;
        v57[2] = __49__PXPhotosDetailsUIViewController_viewDidAppear___block_invoke_2_481;
        v57[3] = &unk_1E7734E30;
        v58 = firstObject;
        selfCopy2 = self;
        [v47 px_requestActivityWithActivityType:@"com.apple.mobileslideshow.people" titleProvider:v60 completionBlock:v57];
      }

LABEL_19:
      goto LABEL_20;
    }
  }

LABEL_21:
  userActivityController = [(PXPhotosDetailsUIViewController *)self userActivityController];
  [userActivityController setActive:1];

  eventTracker = [(PXPhotosDetailsUIViewController *)self eventTracker];
  [eventTracker logViewControllerDidAppear:self];

  if (![(PXPhotosDetailsUIViewController *)self didAppearOnce])
  {
    [(PXPhotosDetailsUIViewController *)self setDidAppearOnce:1];
    contextHierarchyDepth = [context contextHierarchyDepth];
    if (contextHierarchyDepth)
    {
      v51 = [MEMORY[0x1E6991F28] bucketNameForInteger:contextHierarchyDepth bucketLimits:{1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 12, 15, 20, 30, 50, 0}];
      v52 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"com.apple.photos.CPAnalytics.photosDetailsNavigatedToDepth%@", v51];
      [MEMORY[0x1E6991F28] sendEvent:v52 withPayload:MEMORY[0x1E695E0F8]];
    }
  }

  initiallyPresentedAssetReference = [(PXPhotosDetailsUIViewController *)self initiallyPresentedAssetReference];

  if (initiallyPresentedAssetReference)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __49__PXPhotosDetailsUIViewController_viewDidAppear___block_invoke_3;
    aBlock[3] = &unk_1E774C648;
    aBlock[4] = self;
    v54 = _Block_copy(aBlock);
    presentedViewController = [(PXPhotosDetailsUIViewController *)self presentedViewController];

    if (presentedViewController)
    {
      [(PXPhotosDetailsUIViewController *)self dismissViewControllerAnimated:0 completion:v54];
    }

    else
    {
      v54[2](v54);
    }
  }
}

void __49__PXPhotosDetailsUIViewController_viewDidAppear___block_invoke_2(uint64_t a1, void *a2)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  [v3 setEligibleForSearch:1];
  [v3 _setEligibleForPrediction:1];
  [v3 setEligibleForHandoff:0];
  v6 = @"identifier";
  v4 = [*(a1 + 32) localIdentifier];
  v7[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  [v3 addUserInfoEntriesFromDictionary:v5];

  [v3 px_setPersistentIdentifierFromAssetCollection:*(a1 + 32)];
  [*(a1 + 40) setSiriActionActivity:v3];
  [v3 becomeCurrent];
}

void __49__PXPhotosDetailsUIViewController_viewDidAppear___block_invoke_2_481(uint64_t a1, void *a2)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  [v3 setEligibleForSearch:1];
  [v3 _setEligibleForPrediction:1];
  v6 = @"identifier";
  v4 = [*(a1 + 32) localIdentifier];
  v7[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  [v3 addUserInfoEntriesFromDictionary:v5];

  [*(a1 + 40) setSiriActionActivity:v3];
  [v3 becomeCurrent];
}

void __49__PXPhotosDetailsUIViewController_viewDidAppear___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) _previewWidget];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [*(a1 + 32) _previewWidget];
    v4 = [*(a1 + 32) initiallyPresentedAssetReference];
    [v5 presentOneUpForAssetReference:v4 animated:0];

    [*(a1 + 32) setInitiallyPresentedAssetReference:0];
  }
}

- (void)viewIsAppearing:(BOOL)appearing
{
  v7.receiver = self;
  v7.super_class = PXPhotosDetailsUIViewController;
  [(PXPhotosDetailsUIViewController *)&v7 viewIsAppearing:appearing];
  spec = [(PXFeatureSpecManager *)self->__specManager spec];
  backgroundColor = [spec backgroundColor];
  view = [(PXPhotosDetailsUIViewController *)self view];
  [view setBackgroundColor:backgroundColor];
}

- (void)viewWillAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = PXPhotosDetailsUIViewController;
  [(PXPhotosDetailsUIViewController *)&v5 viewWillAppear:appear];
  view = [(PXPhotosDetailsUIViewController *)self view];
  [view setNeedsLayout];
}

- (void)_updateStatusBarTitle
{
  if ([(PXPhotosDetailsUIViewController *)self shouldUpdateStatusBarTitle])
  {
    barsController = [(PXPhotosDetailsUIViewController *)self barsController];

    if (barsController)
    {
      barsController2 = [(PXPhotosDetailsUIViewController *)self barsController];
      _headerWidget = [(PXPhotosDetailsUIViewController *)self _headerWidget];

      if (_headerWidget)
      {
        _headerWidget2 = [(PXPhotosDetailsUIViewController *)self _headerWidget];
        contentTilingController = [_headerWidget2 contentTilingController];
      }

      else
      {
        contentTilingController = [(PXPhotosDetailsUIViewController *)self _headerAssetWidgetTilingController];
      }

      currentLayout = [contentTilingController currentLayout];
      [currentLayout contentBounds];
      v9 = v8;
      v11 = v10;
      v13 = v12;
      v15 = v14;
      currentLayout2 = [contentTilingController currentLayout];
      if (currentLayout2)
      {
        v17 = currentLayout2;
        v21.origin.x = v9;
        v21.origin.y = v11;
        v21.size.width = v13;
        v21.size.height = v15;
        IsEmpty = CGRectIsEmpty(v21);

        if (!IsEmpty)
        {
          [currentLayout visibleRect];
          [contentTilingController scrollController];
          [objc_claimAutoreleasedReturnValue() contentInset];
          PXEdgeInsetsInsetRect();
        }
      }

      [barsController2 shouldShowTitleView:0 animated:0];
    }
  }
}

- (void)contentSizeCategoryDidChange:(id)change
{
  composition = [(PXPhotosDetailsUIViewController *)self composition];
  [composition invalidateComposition];
}

- (void)viewDidLoad
{
  v14.receiver = self;
  v14.super_class = PXPhotosDetailsUIViewController;
  [(PXPhotosDetailsUIViewController *)&v14 viewDidLoad];
  spec = [(PXFeatureSpecManager *)self->__specManager spec];
  if ((-[PXPhotosDetailsUIViewController options](self, "options") & 4) == 0 && [spec shouldInitializeBarsController])
  {
    [(UIViewController *)self px_enableBarAppearance];
    v4 = objc_alloc(self->__barsControllerClass);
    context = self->_context;
    viewModel = self->__viewModel;
    px_extendedTraitCollection = [(PXPhotosDetailsUIViewController *)self px_extendedTraitCollection];
    v8 = [v4 initWithContext:context viewModel:viewModel extendedTraitCollection:px_extendedTraitCollection];
    barsController = self->_barsController;
    self->_barsController = v8;

    [(PXBarsController *)self->_barsController setDelegate:self];
    [(PXBarsController *)self->_barsController setViewController:self];
    [(PXBarsController *)self->_barsController setActionPerformerDelegate:self];
    [(PXPhotosDetailsUIViewController *)self _updateBarSpec];
  }

  v10 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:@" " modifierFlags:0 action:sel__handleSpaceBar_];
  [(PXPhotosDetailsUIViewController *)self addKeyCommand:v10];

  v11 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:@"." modifierFlags:0 action:sel_favoriteAssets_];
  [(PXPhotosDetailsUIViewController *)self addKeyCommand:v11];

  v12 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:@"\b" modifierFlags:0 action:sel_trashAssets_];
  [(PXPhotosDetailsUIViewController *)self addKeyCommand:v12];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel_contentSizeCategoryDidChange_ name:*MEMORY[0x1E69DDC48] object:0];
}

- (PXDisplayAsset)presentedKeyAsset
{
  _headerWidget = [(PXPhotosDetailsUIViewController *)self _headerWidget];
  presentedKeyAsset = [_headerWidget presentedKeyAsset];

  return presentedKeyAsset;
}

- (void)dealloc
{
  [(PXWidgetComposition *)self->_composition setShouldUnloadAllWidgets:1];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69DDC48] object:0];

  v4.receiver = self;
  v4.super_class = PXPhotosDetailsUIViewController;
  [(PXPhotosDetailsUIViewController *)&v4 dealloc];
}

- (PXPhotosDetailsUIViewController)initWithContext:(id)context options:(unint64_t)options
{
  contextCopy = context;
  v7 = objc_alloc_init(PXPhotosDetailsConfiguration);
  [(PXPhotosDetailsConfiguration *)v7 setOptions:options];
  v8 = [(PXPhotosDetailsUIViewController *)self initWithContext:contextCopy configuration:v7];

  return v8;
}

- (PXPhotosDetailsUIViewController)initWithContext:(id)context configuration:(id)configuration
{
  contextCopy = context;
  configurationCopy = configuration;
  if (!contextCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosDetailsUIViewController.m" lineNumber:195 description:{@"Invalid parameter not satisfying: %@", @"context"}];
  }

  v38.receiver = self;
  v38.super_class = PXPhotosDetailsUIViewController;
  v10 = [(PXPhotosDetailsUIViewController *)&v38 initWithNibName:0 bundle:0];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_context, context);
    [(PXPhotosDetailsContext *)v11->_context registerChangeObserver:v11 context:PXPhotosDetailsContextObservationContext_71810];
    if (configurationCopy)
    {
      options = [configurationCopy options];
    }

    else
    {
      options = 0;
    }

    v11->_options = options;
    v13 = PXViewControllerEventTrackerCreateWithPhotosDetailsContext(v11->_context);
    eventTracker = v11->_eventTracker;
    v11->_eventTracker = v13;

    v15 = *(off_1E7721F98 + 1);
    *&v11->_contentEdgeInsets.top = *off_1E7721F98;
    *&v11->_contentEdgeInsets.bottom = v15;
    array = [MEMORY[0x1E695DF70] array];
    widgetDisablingDimmingViews = v11->__widgetDisablingDimmingViews;
    v11->__widgetDisablingDimmingViews = array;

    navigationItem = [(PXPhotosDetailsUIViewController *)v11 navigationItem];
    [navigationItem setLargeTitleDisplayMode:2];

    [(PXPhotosDetailsUIViewController *)v11 px_enableExtendedTraitCollection];
    px_extendedTraitCollection = [(PXPhotosDetailsUIViewController *)v11 px_extendedTraitCollection];
    [px_extendedTraitCollection registerChangeObserver:v11 context:PXExtendedTraitCollectionObservationContext_71807];
    v20 = [[PXPhotosDetailsSpecManager alloc] initWithExtendedTraitCollection:px_extendedTraitCollection detailsOptions:v11->_options];
    specManager = v11->__specManager;
    v11->__specManager = v20;

    [(PXPhotosDetailsSpecManager *)v11->__specManager registerChangeObserver:v11 context:PXSpecManagerObservationContext];
    v22 = objc_alloc_init(PXPhotosDetailsViewModel);
    viewModel = v11->__viewModel;
    v11->__viewModel = v22;

    [(PXPhotosDetailsViewModel *)v11->__viewModel registerChangeObserver:v11 context:PXViewModelObservationContext_71808];
    context = v11->_context;
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __65__PXPhotosDetailsUIViewController_initWithContext_configuration___block_invoke;
    v35[3] = &unk_1E7734E08;
    v25 = v11;
    v36 = v25;
    v26 = configurationCopy;
    v37 = v26;
    [(PXPhotosDetailsContext *)context performChanges:v35];
    [v25 _updateTitleAndSubtitle];
    barsControllerClass = [v26 barsControllerClass];
    if (!barsControllerClass)
    {
      barsControllerClass = objc_opt_class();
    }

    objc_storeStrong(v25 + 142, barsControllerClass);
    if (([v25[142] isSubclassOfClass:objc_opt_class()] & 1) == 0)
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:v25 file:@"PXPhotosDetailsUIViewController.m" lineNumber:232 description:{@"Invalid parameter not satisfying: %@", @"[__barsControllerClass isSubclassOfClass:[PXPhotosDetailsBarsController class]]"}];
    }

    unlockDeviceStatus = [v26 unlockDeviceStatus];
    v29 = v25[143];
    v25[143] = unlockDeviceStatus;

    unlockDeviceHandlerWithActionType = [v26 unlockDeviceHandlerWithActionType];
    v31 = v25[144];
    v25[144] = unlockDeviceHandlerWithActionType;

    *(v25 + 998) = [v26 scrollPocketsEnabled];
    [v25 px_enableOneUpPresentation];
  }

  return v11;
}

void __65__PXPhotosDetailsUIViewController_initWithContext_configuration___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 1056);
  v4 = a2;
  [v4 setViewModel:v3];
  v5 = [*(a1 + 40) unlockDeviceStatus];
  [v4 setUnlockDeviceStatus:v5];
}

- (PXPhotosDetailsUIViewController)initWithCoder:(id)coder
{
  coderCopy = coder;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosDetailsUIViewController.m" lineNumber:191 description:{@"%s is not available as initializer", "-[PXPhotosDetailsUIViewController initWithCoder:]"}];

  abort();
}

- (PXPhotosDetailsUIViewController)initWithNibName:(id)name bundle:(id)bundle
{
  nameCopy = name;
  bundleCopy = bundle;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosDetailsUIViewController.m" lineNumber:187 description:{@"%s is not available as initializer", "-[PXPhotosDetailsUIViewController initWithNibName:bundle:]"}];

  abort();
}

+ (double)dynamicTextScaleFactorForCategory:(int64_t)category
{
  result = 1.0;
  if ((category - 4) <= 8)
  {
    return dbl_1A53819F8[category - 4];
  }

  return result;
}

+ (void)preloadResources
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__PXPhotosDetailsUIViewController_preloadResources__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (preloadResources_onceToken != -1)
  {
    dispatch_once(&preloadResources_onceToken, block);
  }
}

@end