@interface PXPhotosDetailsUIViewController
+ (double)dynamicTextScaleFactorForCategory:(int64_t)a3;
+ (void)preloadResources;
- (BOOL)_dismissSelfIfSafeAnimated:(BOOL)a3;
- (BOOL)_scrollToBottomAnimated:(BOOL)a3;
- (BOOL)_shouldShowMovieHeader;
- (BOOL)prepareForDismissingForced:(BOOL)a3;
- (BOOL)widgetComposition:(id)a3 widget:(id)a4 transitionToViewController:(id)a5 withTransitionType:(int64_t)a6;
- (BOOL)widgetDeviceIsUnlocked:(id)a3;
- (CGSize)preferredContentSize;
- (PXActionManager)assetActionManager;
- (PXAssetCollectionActionPerformerDelegate)actionPerformerDelegate;
- (PXAssetSelectionUserActivityController)userActivityController;
- (PXDisplayAsset)presentedKeyAsset;
- (PXPhotosDetailsUIViewController)initWithCoder:(id)a3;
- (PXPhotosDetailsUIViewController)initWithContext:(id)a3 configuration:(id)a4;
- (PXPhotosDetailsUIViewController)initWithContext:(id)a3 options:(unint64_t)a4;
- (PXPhotosDetailsUIViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (PXPhotosDetailsUIViewControllerDelegate)delegate;
- (UIActivityItemsConfigurationReading)activityItemsConfiguration;
- (UIEdgeInsets)contentEdgeInsets;
- (UIScrollView)ppt_scrollView;
- (double)captionWidgetCurrentContentHeight;
- (double)captionWidgetPreferredHeight;
- (id)_previewViewControllerForLocation:(CGPoint)a3;
- (id)_widgetAtLocation:(CGPoint)a3 inCoordinateSpace:(id)a4;
- (id)barsControllerActionsForSelectionContextMenu:(id)a3;
- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4;
- (id)contextMenuInteraction:(id)a3 previewForHighlightingMenuWithConfiguration:(id)a4;
- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5;
- (id)px_diagnosticsItemProvidersForPoint:(CGPoint)a3 inCoordinateSpace:(id)a4;
- (unint64_t)_optionsForWidget:(id)a3;
- (void)_ensureScrollViewController;
- (void)_handleDeviceDidUnlock;
- (void)_handleSpaceBar:(id)a3;
- (void)_handleWidgetsLoadingDelay;
- (void)_loadComposition;
- (void)_loadWidgets;
- (void)_ppt_informWidgetsLoadedHandlerIfNeeded;
- (void)_ppt_setAllWidgetLoadingCompleteHandler:(id)a3;
- (void)_ppt_setVariationsWidgetLoadingCompleteHandler:(id)a3;
- (void)_setWidgetSpec:(id)a3;
- (void)_updateAllWidgetsSelectionState;
- (void)_updateAllWidgetsSpec;
- (void)_updateBarSpec;
- (void)_updateCompositionSpec;
- (void)_updateStatusBarTitle;
- (void)_updateTitleAndSubtitle;
- (void)_updateWidgetDisablingWithAnimationOptions:(id)a3;
- (void)_updateWidgetSpec;
- (void)_updateWidgetsBackground;
- (void)_viewWillLayoutBeforeAppearing;
- (void)contentSizeCategoryDidChange:(id)a3;
- (void)contextMenuInteraction:(id)a3 willEndForConfiguration:(id)a4 animator:(id)a5;
- (void)contextMenuInteraction:(id)a3 willPerformPreviewActionForMenuWithConfiguration:(id)a4 animator:(id)a5;
- (void)dealloc;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)informFirstWidgetAvailableVisibleRectInEditMode:(CGRect)a3;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)playMovieWithCompletionHandler:(id)a3;
- (void)ppt_toggleDiscloseWidgets;
- (void)purgeIfPossible;
- (void)requestExitEditModeWithChangeSavingMode:(int64_t)a3;
- (void)scrollViewControllerWillBeginScrolling:(id)a3;
- (void)setDelegate:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)visualSearchLookupWidgetDidTap;
- (void)widget:(id)a3 didChangeEditingMode:(BOOL)a4;
- (void)widget:(id)a3 performAfterUnlockingDeviceIfNecessary:(id)a4 failurehandler:(id)a5;
- (void)widgetComposition:(id)a3 didUpdateCompositionWithDefaultAnimationOptions:(id)a4;
- (void)widgetComposition:(id)a3 widgetHasLoadedContentDataDidChange:(id)a4;
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
  v3 = [(PXPhotosDetailsUIViewController *)self _ppt_allWidgetLoadingCompleteHandler];
  if (!v3)
  {
    goto LABEL_16;
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [(PXPhotosDetailsUIViewController *)self _widgets];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (!v5)
  {

LABEL_15:
    v3[2](v3);
    [(PXPhotosDetailsUIViewController *)self _ppt_setAllWidgetLoadingCompleteHandler:0];
    goto LABEL_16;
  }

  v6 = v5;
  v7 = *v13;
  v8 = 1;
  do
  {
    for (i = 0; i != v6; ++i)
    {
      if (*v13 != v7)
      {
        objc_enumerationMutation(v4);
      }

      v10 = *(*(&v12 + 1) + 8 * i);
      v11 = objc_opt_respondsToSelector();
      if (v11 & v8)
      {
        v8 = [v10 hasLoadedContentData];
      }

      else
      {
        v8 &= v11 ^ 1;
      }
    }

    v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  }

  while (v6);

  if (v8)
  {
    goto LABEL_15;
  }

LABEL_16:
}

- (void)_ppt_setVariationsWidgetLoadingCompleteHandler:(id)a3
{
  v5 = _Block_copy(a3);
  ppt_variationsWidgetLoadingCompleteHandler = self->__ppt_variationsWidgetLoadingCompleteHandler;
  self->__ppt_variationsWidgetLoadingCompleteHandler = v5;

  if (a3)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __82__PXPhotosDetailsUIViewController__ppt_setVariationsWidgetLoadingCompleteHandler___block_invoke;
    block[3] = &unk_1E774C648;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (void)_ppt_setAllWidgetLoadingCompleteHandler:(id)a3
{
  v5 = _Block_copy(a3);
  ppt_allWidgetLoadingCompleteHandler = self->__ppt_allWidgetLoadingCompleteHandler;
  self->__ppt_allWidgetLoadingCompleteHandler = v5;

  if (a3)
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
  v2 = [(PXPhotosDetailsUIViewController *)self _widgets];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * v6);
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
        {
          v8 = [v7 localizedDisclosureTitle];
          v9 = [v8 length];

          if (v9)
          {
            [v7 userDidSelectDisclosureControl];
          }
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }
}

- (UIScrollView)ppt_scrollView
{
  v2 = [(PXPhotosDetailsUIViewController *)self _scrollViewController];
  v3 = [v2 scrollView];

  return v3;
}

- (BOOL)prepareForDismissingForced:(BOOL)a3
{
  v3 = a3;
  v5 = [(PXPhotosDetailsUIViewController *)self presentedViewController];
  if ((objc_opt_respondsToSelector() & 1) != 0 && ![v5 prepareForDismissingForced:v3])
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
  v2 = [(PXPhotosDetailsUIViewController *)self _widgets];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v8 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          v3 = [v6 assetActionManager];
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (UIActivityItemsConfigurationReading)activityItemsConfiguration
{
  v3 = [(PXPhotosDetailsUIViewController *)self boopableItemsProvider];

  if (!v3)
  {
    v4 = objc_alloc_init(PXBoopableItemsProvider);
    [(PXPhotosDetailsUIViewController *)self setBoopableItemsProvider:v4];

    v5 = [(PXPhotosDetailsUIViewController *)self _viewModel];
    v6 = [v5 selectionManager];
    v7 = [(PXPhotosDetailsUIViewController *)self boopableItemsProvider];
    [v7 setSelectionManager:v6];
  }

  return [(PXPhotosDetailsUIViewController *)self boopableItemsProvider];
}

- (id)_previewViewControllerForLocation:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(PXPhotosDetailsUIViewController *)self scrollViewController];
  v7 = [v6 scrollView];

  [v7 contentOffset];
  v9 = y + v8;
  v10 = [(PXPhotosDetailsUIViewController *)self _widgetAtLocation:v7 inCoordinateSpace:x, v9];
  v11 = [v10 previewViewControllerAtLocation:v7 fromSourceView:{x, v9}];

  return v11;
}

- (id)_widgetAtLocation:(CGPoint)a3 inCoordinateSpace:(id)a4
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = a4;
  PXPointIsNull();
}

- (void)contextMenuInteraction:(id)a3 willEndForConfiguration:(id)a4 animator:(id)a5
{
  v6 = a3;
  v7 = [(PXPhotosDetailsUIViewController *)self scrollViewController];
  v14 = [v7 scrollView];

  [v6 locationInView:v14];
  v9 = v8;
  v11 = v10;

  v12 = [(PXPhotosDetailsUIViewController *)self _widgetAtLocation:v14 inCoordinateSpace:v9, v11];
  if (objc_opt_respondsToSelector())
  {
    v13 = [(PXPhotosDetailsUIViewController *)self _previewViewController];
    [v12 didDismissPreviewViewController:v13 committing:{-[PXPhotosDetailsUIViewController _previewCommitting](self, "_previewCommitting")}];
  }

  [(PXPhotosDetailsUIViewController *)self _setPreviewCommitting:0];
  [(PXPhotosDetailsUIViewController *)self _setPreviewViewController:0];
}

- (void)contextMenuInteraction:(id)a3 willPerformPreviewActionForMenuWithConfiguration:(id)a4 animator:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [(PXPhotosDetailsUIViewController *)self _viewModel];
  v10 = [v9 isSelecting];

  if ((v10 & 1) == 0)
  {
    v11 = [v8 previewViewController];
    if (v11)
    {
      [(PXPhotosDetailsUIViewController *)self _setPreviewCommitting:1];
      [v8 setPreferredCommitStyle:1];
      v12 = [(PXPhotosDetailsUIViewController *)self scrollViewController];
      v13 = [v12 scrollView];

      [v7 locationInView:v13];
      v14 = [(PXPhotosDetailsUIViewController *)self _widgetAtLocation:v13 inCoordinateSpace:?];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __116__PXPhotosDetailsUIViewController_contextMenuInteraction_willPerformPreviewActionForMenuWithConfiguration_animator___block_invoke;
      v16[3] = &unk_1E774C620;
      v17 = v14;
      v18 = v11;
      v15 = v14;
      [v8 addCompletion:v16];
    }
  }
}

- (id)contextMenuInteraction:(id)a3 previewForHighlightingMenuWithConfiguration:(id)a4
{
  v5 = a3;
  v6 = [(PXPhotosDetailsUIViewController *)self scrollViewController];
  v7 = [v6 scrollView];

  [v5 locationInView:v7];
  v9 = v8;
  v11 = v10;

  v12 = [(PXPhotosDetailsUIViewController *)self _widgetAtLocation:v7 inCoordinateSpace:v9, v11];
  v13 = [v12 imageViewBasicTileForPreviewingAtPoint:{v9, v11}];
  v14 = [v13 view];
  if (v14)
  {
    v15 = [objc_alloc(MEMORY[0x1E69DD070]) initWithView:v14];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = a3;
  v8 = [(PXPhotosDetailsUIViewController *)self scrollViewController];
  v9 = [v8 scrollView];

  [v7 locationInView:v9];
  v11 = v10;
  v13 = v12;

  v14 = [(PXPhotosDetailsUIViewController *)self _widgetAtLocation:v9 inCoordinateSpace:v11, v13];
  if ((objc_opt_respondsToSelector() & 1) != 0 && ([v14 imageViewBasicTileForPreviewingAtPoint:{v11, v13}], v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "view"), v16 = objc_claimAutoreleasedReturnValue(), v16, v15, v16))
  {
    v17 = [(PXPhotosDetailsUIViewController *)self _viewModel];
    v18 = [v17 isSelecting] ^ 1;

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

- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5
{
  v6 = a4;
  v7 = [(PXPhotosDetailsUIViewController *)self scrollViewController];
  v8 = [v7 scrollView];

  [v6 location];
  v9 = [(PXPhotosDetailsUIViewController *)self _widgetAtLocation:v8 inCoordinateSpace:?];
  if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    [v6 location];
    v10 = [v9 imageViewBasicTileForPreviewingAtPoint:?];
    v11 = [v10 view];
    if (v11)
    {
      v12 = [v9 cursorInteractionEnabled];

      if (v12)
      {
        v13 = [MEMORY[0x1E696B098] valueWithNonretainedObject:v10];
        v14 = MEMORY[0x1E69DCDC0];
        v15 = [v10 view];
        [v15 frame];
        v11 = [v14 regionWithRect:v13 identifier:?];
      }

      else
      {
        v11 = 0;
      }
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)px_diagnosticsItemProvidersForPoint:(CGPoint)a3 inCoordinateSpace:(id)a4
{
  y = a3.y;
  x = a3.x;
  v26 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v24.receiver = self;
  v24.super_class = PXPhotosDetailsUIViewController;
  v8 = [(UIViewController *)&v24 px_diagnosticsItemProvidersForPoint:v7 inCoordinateSpace:x, y];
  v9 = [v8 mutableCopy];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = [(PXPhotosDetailsUIViewController *)self _widgets];
  v11 = [v10 countByEnumeratingWithState:&v20 objects:v25 count:16];
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
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v20 + 1) + 8 * i);
        if ([v15 conformsToProtocol:&unk_1F192DD60])
        {
          v16 = [v15 px_diagnosticsItemProvidersForPoint:v7 inCoordinateSpace:{x, y}];
          [v9 addObjectsFromArray:v16];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v20 objects:v25 count:16];
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

- (void)playMovieWithCompletionHandler:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = PLMemoriesGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = [(PXPhotosDetailsUIViewController *)self _headerWidget];
    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_DEBUG, "Header widget (%@) is about to start playing Memories movie...", &v8, 0xCu);
  }

  v7 = [(PXPhotosDetailsUIViewController *)self _headerWidget];
  [v7 playMovieWithCompletionHandler:v4];
}

- (void)scrollViewControllerWillBeginScrolling:(id)a3
{
  v8 = +[PXPhotosDetailsSettings sharedInstance];
  if ([v8 allowWidgetsContentLoading])
  {
    v4 = +[PXPhotosDetailsSettings sharedInstance];
    v5 = [v4 loadAllWidgetsContentOnScroll];

    if (v5)
    {
      v6 = [(PXPhotosDetailsUIViewController *)self composition];
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __74__PXPhotosDetailsUIViewController_scrollViewControllerWillBeginScrolling___block_invoke;
      v9[3] = &unk_1E774C648;
      v10 = v6;
      v7 = v6;
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

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v6 = a4;
  v9 = a3;
  if (PXSpecManagerObservationContext == a5)
  {
    if ((v6 & 1) == 0)
    {
      goto LABEL_17;
    }

    v16 = v9;
    [(PXPhotosDetailsUIViewController *)self _invalidateCompositionSpec];
    [(PXPhotosDetailsUIViewController *)self _invalidateWidgetSpec];
    [(PXPhotosDetailsUIViewController *)self _invalidateBarSpec];
    goto LABEL_16;
  }

  if (PXExtendedTraitCollectionObservationContext_71807 == a5)
  {
    if ((v6 & 0x14A) == 0)
    {
      goto LABEL_17;
    }

    v16 = v9;
    [(PXPhotosDetailsUIViewController *)self _invalidateCompositionSpec];
    goto LABEL_16;
  }

  v16 = v9;
  if (PXViewModelObservationContext_71808 != a5)
  {
    if (PXPhotosDetailsContextObservationContext_71810 == a5)
    {
      if ((v6 & 0x30) == 0)
      {
        goto LABEL_17;
      }

      [(PXPhotosDetailsUIViewController *)self _updateTitleAndSubtitle];
      v15 = [(PXPhotosDetailsUIViewController *)self barsController];
      [v15 updateIfNeeded];
    }

    else
    {
      v10 = [MEMORY[0x1E696AAA8] currentHandler];
      [v10 handleFailureInMethod:a2 object:self file:@"PXPhotosDetailsUIViewController.m" lineNumber:1561 description:@"unknown observation context"];
    }

    goto LABEL_16;
  }

  if (v6)
  {
    [(PXPhotosDetailsUIViewController *)self _updateAllWidgetsSelectionState];
    v11 = +[PXBasicTileAnimationOptions defaultAnimationOptions];
    [(PXPhotosDetailsUIViewController *)self _updateWidgetDisablingWithAnimationOptions:v11];

    [(PXPhotosDetailsUIViewController *)self invalidateBoopableItemsProvider];
    v9 = v16;
  }

  if ((v6 & 4) != 0)
  {
    v12 = [(PXPhotosDetailsUIViewController *)self _viewModel];
    v13 = [v12 selectionManager];
    v14 = [(PXPhotosDetailsUIViewController *)self userActivityController];
    [v14 setSelectionManager:v13];

    [(PXPhotosDetailsUIViewController *)self invalidateBoopableItemsProvider];
LABEL_16:
    v9 = v16;
  }

LABEL_17:
}

- (void)widgetComposition:(id)a3 didUpdateCompositionWithDefaultAnimationOptions:(id)a4
{
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v6;
  }

  else
  {

    v5 = 0;
  }

  v7 = v5;
  [(PXPhotosDetailsUIViewController *)self _updateWidgetDisablingWithAnimationOptions:v5];
}

- (void)widgetComposition:(id)a3 widgetHasLoadedContentDataDidChange:(id)a4
{
  if (self->_delegateRespondsTo.compositionDidChange)
  {
    v5 = [(PXPhotosDetailsUIViewController *)self delegate:a3];
    [v5 photosDetailsUIViewControllerCompositionDidChange:self];
  }

  [(PXPhotosDetailsUIViewController *)self _ppt_informWidgetsLoadedHandlerIfNeeded];
}

- (BOOL)widgetComposition:(id)a3 widget:(id)a4 transitionToViewController:(id)a5 withTransitionType:(int64_t)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  if (!a6)
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"PXPhotosDetailsUIViewController.m" lineNumber:1486 description:@"undefined transition type"];

    goto LABEL_10;
  }

  if (a6 == 2)
  {
    v16 = [(PXPhotosDetailsUIViewController *)self presentedViewController];

    if (!v16)
    {
      v15 = 1;
      [(PXPhotosDetailsUIViewController *)self presentViewController:v13 animated:1 completion:0];
      goto LABEL_13;
    }

LABEL_10:
    v15 = 0;
    goto LABEL_13;
  }

  if (a6 != 1)
  {
    goto LABEL_10;
  }

  v14 = [(PXPhotosDetailsUIViewController *)self navigationController];
  if (v14 && [(UIViewController *)self px_canPresentViewControllerAnimated:1])
  {
    v15 = 1;
    [v14 pushViewController:v13 animated:1];
  }

  else
  {
    v15 = 0;
  }

LABEL_13:
  return v15;
}

- (void)widget:(id)a3 didChangeEditingMode:(BOOL)a4
{
  v4 = a4;
  v6 = [(PXPhotosDetailsUIViewController *)self scrollViewController];
  v10 = [v6 scrollView];

  if (v4)
  {
    v7 = [(PXPhotosDetailsUIViewController *)self composition];
    [v7 invalidateFocusedTilingController];
    v8 = +[PXPhotosDetailsSettings sharedInstance];
    v9 = [v8 captionWidgetEnableVScrollingInEdit];

    [v10 setScrollEnabled:v9];
  }

  else
  {
    [v10 setScrollEnabled:1];
  }

  [(PXPhotosDetailsUIViewController *)self editingDidChange:v4];
}

- (void)widget:(id)a3 performAfterUnlockingDeviceIfNecessary:(id)a4 failurehandler:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [(PXPhotosDetailsUIViewController *)self _unlockStatus];
  if (v9 && (v10 = v9, [(PXPhotosDetailsUIViewController *)self _unlockStatus], v11 = objc_claimAutoreleasedReturnValue(), v12 = v11[2](), v11, v10, (v12 & 1) == 0))
  {
    v13 = [(PXPhotosDetailsUIViewController *)self _unlockHandlerWithActionType];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __96__PXPhotosDetailsUIViewController_widget_performAfterUnlockingDeviceIfNecessary_failurehandler___block_invoke;
    aBlock[3] = &unk_1E7734EF0;
    aBlock[4] = self;
    v17 = v7;
    v14 = v8;
    v18 = v14;
    v15 = _Block_copy(aBlock);
    if (v13)
    {
      (v13)[2](v13, v15, 0);
    }

    else if (v14)
    {
      v14[2](v14);
    }
  }

  else
  {
    v7[2](v7);
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

- (BOOL)widgetDeviceIsUnlocked:(id)a3
{
  v4 = [(PXPhotosDetailsUIViewController *)self _unlockStatus];

  if (v4)
  {
    v5 = [(PXPhotosDetailsUIViewController *)self _unlockStatus];
    v6 = v5[2]();
  }

  else
  {
    v6 = 1;
  }

  return !+[PXApplicationState isExternalAppAndPhotosIsLocked]& v6;
}

- (void)_updateBarSpec
{
  v3 = [(PXPhotosDetailsUIViewController *)self _specManager];
  v4 = [v3 spec];
  v6 = [v4 barSpec];

  v5 = [(PXPhotosDetailsUIViewController *)self barsController];
  [v5 setBarSpec:v6];
}

- (void)_updateWidgetSpec
{
  v3 = [(PXPhotosDetailsUIViewController *)self _specManager];
  v4 = [v3 spec];
  v5 = [v4 widgetSpec];

  [(PXPhotosDetailsUIViewController *)self _setWidgetSpec:v5];
}

- (void)_updateCompositionSpec
{
  v3 = [(PXPhotosDetailsUIViewController *)self _specManager];
  v4 = [v3 spec];
  v6 = [v4 compositionSpec];

  v5 = [(PXPhotosDetailsUIViewController *)self composition];
  [v5 setSpec:v6];
}

- (void)purgeIfPossible
{
  v30 = *MEMORY[0x1E69E9840];
  if (([(PXPhotosDetailsUIViewController *)self px_isVisible]& 1) == 0 && self->__scrollViewController)
  {
    v3 = PLMemoriesGetLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [(PXUIScrollViewController *)self->__scrollViewController scrollView];
      *buf = 138412546;
      v27 = self;
      v28 = 2048;
      v29 = v4;
      _os_log_impl(&dword_1A3C1C000, v3, OS_LOG_TYPE_DEFAULT, "Purging contents of:%@ withScrollView:%p", buf, 0x16u);
    }

    v5 = [(PXPhotosDetailsUIViewController *)self _widgets];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
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
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v21 + 1) + 8 * v9);
          if (objc_opt_respondsToSelector())
          {
            [v10 setWidgetDelegate:0];
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
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

    v19 = [(PXUIScrollViewController *)self->__scrollViewController scrollView];
    [v19 removeFromSuperview];

    scrollViewController = self->__scrollViewController;
    self->__scrollViewController = 0;
  }
}

- (id)barsControllerActionsForSelectionContextMenu:(id)a3
{
  v4 = [(PXPhotosDetailsUIViewController *)self _viewModel];
  v5 = [v4 selectionManager];
  v6 = [v5 selectionSnapshot];

  if ([v6 isAnyItemSelected])
  {
    v7 = [(PXPhotosDetailsUIViewController *)self assetActionManager];
    v8 = [off_1E7721468 menuElementsForActionManager:v7];
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

- (void)informFirstWidgetAvailableVisibleRectInEditMode:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  v5 = [(PXPhotosDetailsUIViewController *)self _widgets:a3.origin.x];
  v6 = [v5 firstObject];

  if (objc_opt_respondsToSelector())
  {
    [v6 setMaxVisibleSizeInEditMode:{width, height}];
  }
}

- (void)requestExitEditModeWithChangeSavingMode:(int64_t)a3
{
  widgets = self->__widgets;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __75__PXPhotosDetailsUIViewController_requestExitEditModeWithChangeSavingMode___block_invoke;
  v4[3] = &unk_1E7734EC8;
  v4[5] = a3;
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
  v3 = [(PXPhotosDetailsUIViewController *)self px_extendedTraitCollection];
  v4 = [v3 userInterfaceIdiom];

  if (v4 == 5 && self->_delegateRespondsTo.visualLookupTapped)
  {
    v5 = [(PXPhotosDetailsUIViewController *)self delegate];
    [v5 photosDetailsVisualLookupWidgetTapped];
  }
}

- (void)_handleSpaceBar:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(PXPhotosDetailsUIViewController *)self _widgets:a3];
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
  v2 = [(PXPhotosDetailsUIViewController *)self _widgets];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
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
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 deviceDidBecomeUnlocked];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (void)_updateWidgetDisablingWithAnimationOptions:(id)a3
{
  v83 = *MEMORY[0x1E69E9840];
  v57 = a3;
  v4 = [(PXPhotosDetailsUIViewController *)self _viewModel];
  v5 = [v4 isSelecting];

  v6 = [(PXPhotosDetailsUIViewController *)self _widgetDisablingDimmingViews];
  v7 = v6;
  v53 = v6;
  v52 = self;
  if (v5)
  {
    v8 = [(PXPhotosDetailsUIViewController *)self _scrollViewController];
    v9 = [(PXPhotosDetailsUIViewController *)self _specManager];
    v10 = [v9 spec];

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
            v16 = [(PXPhotosDetailsUIViewController *)self composition];
            [v16 frameForWidget:v15];
            v18 = v17;
            v20 = v19;
            v22 = v21;
            v24 = v23;

            v25 = [v8 scrollView];
            v26 = [v8 contentCoordinateSpace];
            [v25 convertRect:v26 fromCoordinateSpace:{v18, v20, v22, v24}];
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
                [v10 dimmingColor];
                v37 = v36 = v7;
                [v35 setBackgroundColor:v37];

                [v35 setOpaque:1];
                [v35 setAlpha:0.0];
                v38 = v36;
                self = v52;
                [v38 addObject:v35];
                [v8 addSubviewToScrollView:v35];
              }

              else
              {
                v35 = [v7 objectAtIndexedSubscript:v13];
              }

              v39 = [v35 layer];
              [v39 setZPosition:10000000.0];

              v69[0] = MEMORY[0x1E69E9820];
              v69[1] = 3221225472;
              v69[2] = __78__PXPhotosDetailsUIViewController__updateWidgetDisablingWithAnimationOptions___block_invoke;
              v69[3] = &unk_1E7735358;
              v70 = v35;
              v71 = v10;
              v72 = v28;
              v73 = v30;
              v74 = v32;
              v75 = v34;
              v40 = v35;
              [PXBasicUIViewTileAnimator animateWithOptions:v57 animations:v69 completion:0];
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

  else if ([v6 count])
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
          [PXBasicUIViewTileAnimator animateWithOptions:v57 animations:v64 completion:v62];
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
  v45 = [(PXPhotosDetailsUIViewController *)self _widgets];
  v46 = [v45 countByEnumeratingWithState:&v58 objects:v80 count:16];
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
          objc_enumerationMutation(v45);
        }

        v50 = *(*(&v58 + 1) + 8 * k);
        if (objc_opt_respondsToSelector())
        {
          if (v5)
          {
            if (objc_opt_respondsToSelector())
            {
              v51 = [v50 supportsSelection];
            }

            else
            {
              v51 = 0;
            }
          }

          else
          {
            v51 = 1;
          }

          [v50 setUserInteractionEnabled:v51];
        }
      }

      v47 = [v45 countByEnumeratingWithState:&v58 objects:v80 count:16];
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
  v8 = [(PXPhotosDetailsUIViewController *)self context];
  v3 = [v8 localizedTitle];
  v4 = [off_1E77217B8 defaultHelper];
  v5 = [v4 displayableTextForTitle:v3 intent:1];

  v6 = [v8 localizedSubtitle];
  [(PXPhotosDetailsUIViewController *)self setTitle:v5];
  [(UIViewController *)self px_setSubtitle:v6];
  v7 = [(PXPhotosDetailsUIViewController *)self barsController];
  [v7 invalidateBars];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v9.receiver = self;
  v9.super_class = PXPhotosDetailsUIViewController;
  v7 = a4;
  [(PXPhotosDetailsUIViewController *)&v9 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __86__PXPhotosDetailsUIViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v8[3] = &unk_1E774BC60;
  v8[4] = self;
  [v7 animateAlongsideTransition:0 completion:v8];
}

void __86__PXPhotosDetailsUIViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) composition];
  [v1 invalidatePreferredContentHeightForAllWidgets];
}

- (void)traitCollectionDidChange:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v16.receiver = self;
  v16.super_class = PXPhotosDetailsUIViewController;
  [(PXPhotosDetailsUIViewController *)&v16 traitCollectionDidChange:v4];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(PXPhotosDetailsUIViewController *)self _widgets];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v17 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          v11 = [(PXPhotosDetailsUIViewController *)self traitCollection];
          [v10 controllerTraitCollectionDidChangeFrom:v4 to:v11];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v7);
  }
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [(PXPhotosDetailsUIViewController *)self _widgets];
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          [v11 environmentDidUpdateFocusInContext:v5];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (unint64_t)_optionsForWidget:(id)a3
{
  v4 = a3;
  v5 = [(PXPhotosDetailsUIViewController *)self _widgetOptions];
  v6 = [v5 objectForKey:v4];

  v7 = [v6 unsignedIntegerValue];
  return v7;
}

- (void)_updateAllWidgetsSelectionState
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [(PXPhotosDetailsUIViewController *)self _viewModel];
  v4 = [v3 isSelecting];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [(PXPhotosDetailsUIViewController *)self _widgets];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 setSelecting:v4];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)_updateAllWidgetsSpec
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = [(PXPhotosDetailsUIViewController *)self _widgetSpec];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [(PXPhotosDetailsUIViewController *)self _widgets];
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v10 + 1) + 8 * v8);
        if (objc_opt_respondsToSelector())
        {
          [v9 setSpec:v3];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)_setWidgetSpec:(id)a3
{
  v5 = a3;
  if (self->__widgetSpec != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->__widgetSpec, a3);
    [(PXPhotosDetailsUIViewController *)self _updateAllWidgetsSpec];
    v5 = v6;
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
  v149 = [(UIViewController *)self px_oneUpPresentation];
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
  v7 = [MEMORY[0x1E695DF70] array];
  v8 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
  v9 = +[PXPhotosDetailsSettings sharedInstance];
  v10 = [(PXPhotosDetailsUIViewController *)self context];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __47__PXPhotosDetailsUIViewController__loadWidgets__block_invoke;
  aBlock[3] = &unk_1E7734E58;
  aBlock[4] = self;
  v127 = v10;
  v134 = v127;
  v137 = buf;
  v122 = v7;
  v135 = v122;
  obj = v8;
  v113 = v8;
  v136 = v113;
  v138 = v142;
  v139 = v140;
  v11 = _Block_copy(aBlock);
  v12 = [(PXPhotosDetailsUIViewController *)self _specManager];
  v124 = [v12 spec];

  v13 = [(PXPhotosDetailsUIViewController *)self options];
  v14 = [v9 showAssetsWidget];
  if ((v13 & 2) != 0)
  {
    v15 = 0;
  }

  else
  {
    v15 = v14;
  }

  v121 = v15;
  v125 = 0;
  if (([v9 showHeaderWidget] & ((v13 & 2) == 0)) == 1 && (v13 & 8) == 0)
  {
    v125 = [(PXPhotosDetailsUIViewController *)self _shouldShowMovieHeader];
    v131[0] = MEMORY[0x1E69E9820];
    v131[1] = 3221225472;
    v131[2] = __47__PXPhotosDetailsUIViewController__loadWidgets__block_invoke_2;
    v131[3] = &__block_descriptor_33_e41_v16__0___PXMutablePhotosDetailsContext__8l;
    v132 = v125;
    [v127 performChanges:v131];
  }

  v111 = v6;
  v16 = [v9 showPlacesWidget];
  if ((v13 & 8) != 0)
  {
    v17 = 0;
  }

  else
  {
    v17 = v16;
  }

  v120 = v17;
  v18 = +[PXRootSettings sharedInstance];
  v19 = [v18 canShowInternalUI];

  v117 = [v9 showSharedLibraryWidget];
  v20 = [v9 showAlbumAttributionWidget];
  if ((v13 & 0x82) == 2)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  v116 = v21;
  v115 = [v9 showAppAttributionWidget];
  v22 = [v9 showVisualLookUpWidget];
  v23 = [v9 showTimeWidget];
  v119 = [v9 showEXIFWidget];
  v128 = (v13 >> 1) & 1;
  if (v19)
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

  v26 = [(PXPhotosDetailsUIViewController *)self _widgetSpec];
  v27 = [v26 userInterfaceIdiom];

  if ([v124 enableActionsWidget])
  {
    v28 = [v9 showActionsWidget];
    if ((v13 & 8) != 0)
    {
      v29 = 0;
    }

    else
    {
      v29 = v28;
    }

    v110 = v29;
  }

  else
  {
    v110 = 0;
  }

  v30 = [v9 showCaptionHashtagsWidget] & (v13 >> 1);
  if (v27 == 5)
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
    v109 = ((v13 & 8) == 0) & ~[*MEMORY[0x1E69DDA98] isRunningTest];
  }

  else
  {
    v109 = 0;
  }

  v123 = v4;
  v32 = v27 == 5;
  v33 = v9;
  if (v31)
  {
    v34 = objc_alloc_init(PXPhotosDetailsCaptionHashtagsWidget);
    [(PXPhotosDetailsCaptionHashtagsWidget *)v34 setWidgetEditingDelegate:self];
    v35 = v11[2](v11, v34, 0);
  }

  else if ((v13 & 2) == 0)
  {
    goto LABEL_40;
  }

  v36 = +[PXLemonadeSettings sharedInstance];
  v37 = [v36 enablePhototypes];

  if (v37)
  {
    v38 = objc_alloc_init(_TtC12PhotosUICore28PhotosDetailsPhototypeWidget);
    v39 = v11[2](v11, v38, 0);
  }

LABEL_40:
  if (v27 == 5)
  {
    v41 = objc_alloc_init(_TtC12PhotosUICore27PhotosDetailsFilenameWidget);
    v42 = v11[2](v11, v41, 0);

    v40 = [PXPhotosDetailsPeopleWidgetViewModel hasContentAvailableFor:v127];
  }

  else
  {
    v40 = 0;
  }

  v43 = v22 & v128;
  if ((v22 & v128) == 0 || v40)
  {
    if ((v13 & 2) == 0)
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
  if ((v23 & v128) != 0)
  {
    v48 = [v127 people];
    v49 = [v48 count];

    v50 = objc_alloc_init(_TtC12PhotosUICore23PhotosDetailsTimeWidget);
    if (v49)
    {
      v51 = 0;
    }

    else
    {
      v51 = v27 == 5;
    }

    v52 = v11[2](v11, v50, v51);
  }

  if (v27 == 5)
  {
    v53 = [PXPhotosDetailsPeopleWidget alloc];
    v54 = [(PXPhotosDetailsUIViewController *)self peopleTileViewControllerProvider];
    v55 = [(PXPhotosDetailsPeopleWidget *)v53 initWithPeopleTileViewControllerProvider:v54];

    v56 = v11[2](v11, v55, 1);
  }

  v57 = v43 & v40;
  v58 = v33;
  v60 = v122;
  v59 = v123;
  if (v57 == 1)
  {
    v61 = objc_alloc_init(_TtC12PhotosUICore31PhotosDetailsVisualLookupWidget);
    v62 = (v11)[2](v11, v61, v27 == 5);
  }

  if (v118)
  {
    v63 = objc_alloc_init(_TtC12PhotosUICore35PhotosDetailsAssetDescriptionWidget);
    v64 = (v11)[2](v11, v63, v27 == 5);
  }

  if ((v119 & v128) != 0)
  {
    v65 = objc_alloc_init(_TtC12PhotosUICore23PhotosDetailsEXIFWidget);
    v66 = (v11)[2](v11, v65, v27 == 5);
  }

  if (v125)
  {
    v67 = objc_alloc_init(PXPhotosDetailsHeaderTileWidget);
    v68 = (v11)[2](v11, v67, v27 == 5);
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

  v73 = (v13 & 2) == 0;
  if (v120)
  {
    v74 = objc_alloc_init(PXUIMapWidget);
    [(PXUIMapWidget *)v74 setShowAddressLink:v128];
    v75 = (v11)[2](v11, v74, v27 == 5);
    if (v27 == 5)
    {
      v126 = v58;
      v76 = [v127 firstAsset];
      v77 = [v127 photosDataSource];
      v78 = [v77 firstAssetCollection];
      v79 = [PXPhotoKitEditLocationActionPerformer canPerformOnAsset:v76 inAssetCollection:v78 person:0 socialGroup:0];

      v58 = v126;
      v60 = v122;
      v73 = (v13 & 2) == 0;
      if (v79)
      {
        v80 = objc_alloc_init(_TtC12PhotosUICore29PhotosDetailsNoLocationWidget);
        v81 = v11[2](v11, v80, v32);

        v73 = (v13 & 2) == 0;
      }
    }

    v59 = v123;
  }

  if ((v117 & v128) != 0)
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

  if ((v115 & v128) != 0)
  {
    v88 = objc_alloc_init(_TtC12PhotosUICore32PhotosDetailsSavedFromAppsWidget);
    v89 = v11[2](v11, v88, v32);

LABEL_79:
    v90 = objc_alloc_init(_TtC12PhotosUICore34PhotosDetailsAssetProvenanceWidget);
    v91 = v11[2](v11, v90, v32);

    goto LABEL_80;
  }

  if ((v13 & 2) != 0)
  {
    goto LABEL_79;
  }

LABEL_80:
  if ((v13 & 0x800) != 0)
  {
    v92 = objc_alloc_init(PXDemoTilingControllerWidget);
    v93 = v11[2](v11, v92, 1);

    v94 = objc_alloc_init(PXDemoViewWidget);
    v95 = v11[2](v11, v94, 1);

    v96 = objc_alloc_init(PXDemoDynamicViewWidget);
    v97 = v11[2](v11, v96, 1);

    v73 = (v13 & 2) == 0;
  }

  if (v109)
  {
    v98 = objc_alloc_init(PXMemoriesLivingOnFeedbackWidget);
    v99 = v11[2](v11, v98, v32);
  }

  if (v110)
  {
    v100 = objc_alloc_init(PXPhotosDetailsActionsUIWidget);
    [(PXPhotosDetailsActionsUIWidget *)v100 setAllowRevealInMomentAction:(v13 >> 4) & 1];
    [(PXPhotosDetailsActionsUIWidget *)v100 setAllowCreateMemoryAction:v73];
    [(PXPhotosDetailsActionsUIWidget *)v100 setAllowInternalFileRadarAction:(v13 >> 6) & 1];
    v101 = v11[2](v11, v100, v32);
  }

  v102 = [v60 copy];
  widgets = self->__widgets;
  self->__widgets = v102;

  [(PXPhotosDetailsUIViewController *)self setEmpty:[(NSArray *)self->__widgets count]== 0];
  [(PXPhotosDetailsUIViewController *)self _updateAllWidgetsSpec];
  [(PXPhotosDetailsUIViewController *)self _updateAllWidgetsSelectionState];
  objc_storeStrong(&self->__widgetOptions, obj);
  v104 = [(PXPhotosDetailsUIViewController *)self _viewModel];
  v130[0] = MEMORY[0x1E69E9820];
  v130[1] = 3221225472;
  v130[2] = __47__PXPhotosDetailsUIViewController__loadWidgets__block_invoke_3;
  v130[3] = &unk_1E7734EA0;
  v130[4] = v142;
  v130[5] = v140;
  [v104 performChanges:v130];

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
  v2 = [(PXPhotosDetailsUIViewController *)self context];
  v3 = [v2 photosDataSource];
  v4 = [PXPhotosDetailsHeaderTileWidget canShowMovieHeaderForDataSource:v3];

  return v4;
}

- (void)_loadComposition
{
  if (!self->_composition)
  {
    [(PXPhotosDetailsUIViewController *)self _loadWidgets];
    v13 = [(PXPhotosDetailsUIViewController *)self _widgets];
    v4 = [(PXPhotosDetailsUIViewController *)self _scrollViewController];
    if (!v4)
    {
      v12 = [MEMORY[0x1E696AAA8] currentHandler];
      [v12 handleFailureInMethod:a2 object:self file:@"PXPhotosDetailsUIViewController.m" lineNumber:733 description:@"missing scrollViewController"];
    }

    v5 = [[PXWidgetComposition alloc] initWithScrollViewController:v4];
    composition = self->_composition;
    self->_composition = v5;

    [(PXPhotosDetailsUIViewController *)self _updateCompositionSpec];
    [(PXWidgetComposition *)self->_composition setDelegate:self];
    [(PXWidgetComposition *)self->_composition setWidgets:v13];
    if (![(PXPhotosDetailsUIViewController *)self isEmpty])
    {
      [(PXTilingControllerComposition *)self->_composition setActive:1];
    }

    v7 = [(PXPhotosDetailsUIViewController *)self composition];
    v8 = [(PXPhotosDetailsUIViewController *)self _previewWidget];
    v9 = [v7 headerTilingControllerForWidget:v8];
    headerAssetWidgetTilingController = self->__headerAssetWidgetTilingController;
    self->__headerAssetWidgetTilingController = v9;

    if (self->_delegateRespondsTo.compositionDidChange)
    {
      v11 = [(PXPhotosDetailsUIViewController *)self delegate];
      [v11 photosDetailsUIViewControllerCompositionDidChange:self];
    }
  }
}

- (void)_updateWidgetsBackground
{
  v3 = [(PXPhotosDetailsUIViewController *)self context];
  v4 = [v3 viewSourceOrigin];

  v5 = [(PXPhotosDetailsUIViewController *)self _widgetSpec];
  v6 = [v5 sizeClass];

  v7 = [(PXPhotosDetailsUIViewController *)self _widgetSpec];
  v8 = [v7 userInterfaceIdiom];

  if (v4 == 1 && (v6 == 1 || v8 != 5))
  {
    v9 = [(PXPhotosDetailsUIViewController *)self scrollViewController];
    v31 = [v9 scrollView];

    v10 = [(PXPhotosDetailsUIViewController *)self widgetsBackgroundView];

    if (!v10)
    {
      v11 = objc_alloc(MEMORY[0x1E69DD250]);
      v12 = [v11 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
      v13 = [MEMORY[0x1E69DC888] systemGray6Color];
      v14 = [v13 colorWithAlphaComponent:0.6];
      [v12 setBackgroundColor:v14];

      v15 = [v12 layer];
      [v15 setZPosition:-15000000.0];

      [v31 addSubview:v12];
      [(PXPhotosDetailsUIViewController *)self setWidgetsBackgroundView:v12];
    }

    [v31 contentSize];
    v17 = v16;
    [v31 frame];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    [(PXPhotosDetailsUIViewController *)self contentEdgeInsets];
    if (v24 > 0.0)
    {
      [(PXPhotosDetailsUIViewController *)self contentEdgeInsets];
      v26 = v25;
      [v31 adjustedContentInset];
      v21 = v26 - v27;
    }

    [v31 bounds];
    v29 = v17 + v28 * 1.5;
    v30 = [(PXPhotosDetailsUIViewController *)self widgetsBackgroundView];
    [v30 setFrame:{v19, v21, v23, v29}];
  }
}

- (void)_ensureScrollViewController
{
  if (!self->__scrollViewController)
  {
    if (([(PXPhotosDetailsUIViewController *)self isViewLoaded]& 1) == 0)
    {
      v13 = [MEMORY[0x1E696AAA8] currentHandler];
      [v13 handleFailureInMethod:a2 object:self file:@"PXPhotosDetailsUIViewController.m" lineNumber:667 description:@"view not loaded"];
    }

    v14 = [(PXPhotosDetailsUIViewController *)self view];
    v4 = [off_1E7721938 alloc];
    [v14 bounds];
    v5 = [v4 initWithFrame:?];
    scrollViewController = self->__scrollViewController;
    self->__scrollViewController = v5;

    [(PXUIScrollViewController *)self->__scrollViewController setChildScrollViewAccessibilityIdentifier:@"photos_details_view_scroll_view"];
    [(PXUIScrollViewController *)self->__scrollViewController registerObserver:self];
    [(PXUIScrollViewController *)self->__scrollViewController setIgnoresSafeAreaInsets:1];
    v7 = [(PXUIScrollViewController *)self->__scrollViewController scrollView];
    [v7 px_setPocketsEnabled:{-[PXPhotosDetailsUIViewController scrollPocketsEnabled](self, "scrollPocketsEnabled")}];
    v8 = [(PXPhotosDetailsUIViewController *)self context];
    v9 = [v8 viewSourceOrigin];

    [v7 setAutoresizingMask:18];
    [v14 addSubview:v7];
    v10 = [(PXPhotosDetailsUIViewController *)self _specManager];
    v11 = [v10 spec];
    v12 = [v11 compositionSpec];

    if ([v12 orientation])
    {
      if ([v12 orientation] == 1)
      {
        [(PXUIScrollViewController *)self->__scrollViewController setShowsHorizontalScrollIndicator:v9 != 1];
      }
    }

    else
    {
      [(PXUIScrollViewController *)self->__scrollViewController setShowsVerticalScrollIndicator:v9 != 1];
    }

    [(PXPhotosDetailsUIViewController *)self _updateScrollViewControllerContentInset];
  }
}

- (double)captionWidgetCurrentContentHeight
{
  v2 = [(NSArray *)self->__widgets firstObject];
  objc_opt_class();
  v3 = 0.0;
  if (objc_opt_isKindOfClass())
  {
    [v2 currentContentHeight];
    v3 = v4;
  }

  return v3;
}

- (double)captionWidgetPreferredHeight
{
  v3 = [(NSArray *)self->__widgets firstObject];
  objc_opt_class();
  v4 = 0.0;
  if (objc_opt_isKindOfClass())
  {
    v5 = [(PXPhotosDetailsUIViewController *)self view];
    [v5 bounds];
    v7 = v6;

    [v3 preferredContentHeightForWidth:v7];
    v4 = v8;
  }

  return v4;
}

- (void)_handleWidgetsLoadingDelay
{
  if ([(PXPhotosDetailsUIViewController *)self _hasAppeared])
  {
    v3 = [(PXPhotosDetailsUIViewController *)self composition];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __61__PXPhotosDetailsUIViewController__handleWidgetsLoadingDelay__block_invoke;
    v5[3] = &unk_1E774C648;
    v6 = v3;
    v4 = v3;
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

- (BOOL)_scrollToBottomAnimated:(BOOL)a3
{
  v3 = a3;
  v15[1] = *MEMORY[0x1E69E9840];
  if (![(PXPhotosDetailsUIViewController *)self isViewLoaded])
  {
    return 0;
  }

  v5 = [(PXPhotosDetailsUIViewController *)self scrollViewController];
  v6 = [v5 scrollView];

  v7 = [v6 px_isScrolledAtEdge:3];
  if ((v7 & 1) == 0)
  {
    [v6 px_scrollToEdge:3 animated:v3];
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

- (void)setDelegate:(id)a3
{
  obj = a3;
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

- (BOOL)_dismissSelfIfSafeAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(PXPhotosDetailsUIViewController *)self navigationController];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 visibleViewController];

    if (v7 == self)
    {
      v8 = [v6 popViewControllerAnimated:v3];
LABEL_9:
      v11 = 1;
      goto LABEL_10;
    }
  }

  else
  {
    v9 = [(PXPhotosDetailsUIViewController *)self presentedViewController];

    if (!v9)
    {
      [(PXPhotosDetailsUIViewController *)self dismissViewControllerAnimated:v3 completion:0];
      goto LABEL_9;
    }
  }

  if (self->_delegateRespondsTo.requestDismissal)
  {
    v10 = [(PXPhotosDetailsUIViewController *)self delegate];
    v11 = [v10 photosDetailsUIViewControllerRequestDismissal:self];
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
    v7 = [(PXPhotosDetailsUIViewController *)self view];
    [v7 frame];
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
  v3 = [(PXPhotosDetailsUIViewController *)self composition];
  v4 = PLRelatedGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v33 = self;
    v34 = 2112;
    v35 = v3;
    _os_log_impl(&dword_1A3C1C000, v4, OS_LOG_TYPE_DEBUG, "[%@] _viewWillLayoutBeforeAppearing composition=%@", buf, 0x16u);
  }

  v5 = +[PXPhotosDetailsSettings sharedInstance];
  if ([v5 allowWidgetsContentLoading])
  {
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __65__PXPhotosDetailsUIViewController__viewWillLayoutBeforeAppearing__block_invoke;
    v29[3] = &unk_1E774C648;
    v30 = v3;
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
  v9 = [(PXPhotosDetailsUIViewController *)self barsController];
  [v9 updateIfNeeded];

  v10 = [objc_alloc(MEMORY[0x1E69DC8E0]) initWithDelegate:self];
  [(PXPhotosDetailsUIViewController *)self _setContextMenuInteraction:v10];
  v11 = [(PXPhotosDetailsUIViewController *)self view];
  [v11 addInteraction:v10];

  v12 = +[PXCursorInteractionSettings sharedInstance];
  v13 = [v12 enableDetailsEffect];

  if (v13)
  {
    v14 = [objc_alloc(MEMORY[0x1E69DCDB0]) initWithDelegate:self];
    [(PXPhotosDetailsUIViewController *)self _setPointerInteraction:v14];
    v15 = [(PXPhotosDetailsUIViewController *)self scrollViewController];
    v16 = [v15 scrollView];

    [v16 addInteraction:v14];
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v17 = [(PXPhotosDetailsUIViewController *)self _widgets];
  v18 = [v17 countByEnumeratingWithState:&v23 objects:v31 count:16];
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
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v23 + 1) + 8 * v21);
        if (objc_opt_respondsToSelector())
        {
          [v22 contentViewWillAppear];
        }

        ++v21;
      }

      while (v19 != v21);
      v19 = [v17 countByEnumeratingWithState:&v23 objects:v31 count:16];
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

- (void)viewDidDisappear:(BOOL)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v20.receiver = self;
  v20.super_class = PXPhotosDetailsUIViewController;
  [(PXPhotosDetailsUIViewController *)&v20 viewDidDisappear:a3];
  v4 = [(PXPhotosDetailsUIViewController *)self eventTracker];
  [v4 logViewControllerDidDisappear:self];

  [(PXPhotosDetailsUIViewController *)self _setHasAppeared:0];
  v5 = [(PXPhotosDetailsUIViewController *)self _contextMenuInteraction];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 view];
    [v7 removeInteraction:v6];

    [(PXPhotosDetailsUIViewController *)self _setContextMenuInteraction:0];
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [(PXPhotosDetailsUIViewController *)self _widgets];
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v21 count:16];
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
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v16 + 1) + 8 * v12);
        if (objc_opt_respondsToSelector())
        {
          [v13 contentViewDidDisappear];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v10);
  }

  v14 = [(PXPhotosDetailsUIViewController *)self siriActionActivity];
  [v14 resignCurrent];

  v15 = [(PXPhotosDetailsUIViewController *)self userActivityController];
  [v15 setActive:0];

  [MEMORY[0x1E69788F0] clearCurrentMemoryForURLNavigation];
}

- (void)viewDidAppear:(BOOL)a3
{
  v70 = *MEMORY[0x1E69E9840];
  v67.receiver = self;
  v67.super_class = PXPhotosDetailsUIViewController;
  [(PXPhotosDetailsUIViewController *)&v67 viewDidAppear:a3];
  v4 = [(PXPhotosDetailsUIViewController *)self context];
  v5 = [v4 photosDataSource];
  v6 = [v5 containerAssetCollection];

  v7 = +[_PXPhotosDetailsPurger sharedPurger];
  [v7 detailsViewControllerDidAppear:self];
  if ((self->_options & 0xA) == 0)
  {
    [v7 purgeOldViewControllers];
  }

  v8 = [(PXPhotosDetailsUIViewController *)self scrollViewController];
  v9 = [v8 scrollView];

  if ([v9 px_isScrolledAtEdge:1])
  {
    v10 = [(PXPhotosDetailsUIViewController *)self view];
    [v10 bounds];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    [v10 safeAreaInsets];
    v20 = v12 + v19;
    v22 = v14 + v21;
    v24 = v16 - (v19 + v23);
    v26 = v18 - (v21 + v25);
    v27 = [(PXPhotosDetailsUIViewController *)self _headerWidget];
    v28 = [(PXPhotosDetailsUIViewController *)self context];
    v29 = [v27 regionOfInterestForContext:v28];
    v30 = [(PXPhotosDetailsUIViewController *)self view];
    [v29 rectInCoordinateSpace:v30];
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
    v39 = [(PXPhotosDetailsUIViewController *)self siriActionActivity];

    if (v39)
    {
      v40 = [(PXPhotosDetailsUIViewController *)self siriActionActivity];
      [v40 becomeCurrent];
LABEL_20:

      goto LABEL_21;
    }

    if ([v4 viewSourceOrigin] == 5)
    {
      v41 = [v6 localizedTitle];
      v40 = v41;
      if (v41)
      {
        v42 = [v41 stringByReplacingOccurrencesOfString:@"\n" withString:&stru_1F1741150];
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
        v63 = v6;
        v64 = self;
        v44 = v42;
        [v43 px_requestActivityWithActivityType:@"com.apple.mobileslideshow.memory" titleProvider:v65 completionBlock:v62];
      }

      else
      {
        v44 = PLUIGetLog();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v69 = v6;
          _os_log_impl(&dword_1A3C1C000, v44, OS_LOG_TYPE_ERROR, "No localized title found for memory: %@", buf, 0xCu);
        }
      }

      goto LABEL_19;
    }

    if ([v4 viewSourceOrigin] == 6)
    {
      v45 = [v4 people];
      v40 = [v45 fetchedObjects];

      if ([v40 count] != 1)
      {
        goto LABEL_20;
      }

      v44 = [v40 firstObject];
      v46 = [v44 px_localizedName];
      if (!+[PXPeopleUtilities isPersonHiddenFromPeopleHome:](PXPeopleUtilities, "isPersonHiddenFromPeopleHome:", v44) && [v46 length])
      {
        v47 = MEMORY[0x1E69636A8];
        v60[0] = MEMORY[0x1E69E9820];
        v60[1] = 3221225472;
        v60[2] = __49__PXPhotosDetailsUIViewController_viewDidAppear___block_invoke_477;
        v60[3] = &unk_1E7740590;
        v61 = v46;
        v57[0] = MEMORY[0x1E69E9820];
        v57[1] = 3221225472;
        v57[2] = __49__PXPhotosDetailsUIViewController_viewDidAppear___block_invoke_2_481;
        v57[3] = &unk_1E7734E30;
        v58 = v44;
        v59 = self;
        [v47 px_requestActivityWithActivityType:@"com.apple.mobileslideshow.people" titleProvider:v60 completionBlock:v57];
      }

LABEL_19:
      goto LABEL_20;
    }
  }

LABEL_21:
  v48 = [(PXPhotosDetailsUIViewController *)self userActivityController];
  [v48 setActive:1];

  v49 = [(PXPhotosDetailsUIViewController *)self eventTracker];
  [v49 logViewControllerDidAppear:self];

  if (![(PXPhotosDetailsUIViewController *)self didAppearOnce])
  {
    [(PXPhotosDetailsUIViewController *)self setDidAppearOnce:1];
    v50 = [v4 contextHierarchyDepth];
    if (v50)
    {
      v51 = [MEMORY[0x1E6991F28] bucketNameForInteger:v50 bucketLimits:{1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 12, 15, 20, 30, 50, 0}];
      v52 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"com.apple.photos.CPAnalytics.photosDetailsNavigatedToDepth%@", v51];
      [MEMORY[0x1E6991F28] sendEvent:v52 withPayload:MEMORY[0x1E695E0F8]];
    }
  }

  v53 = [(PXPhotosDetailsUIViewController *)self initiallyPresentedAssetReference];

  if (v53)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __49__PXPhotosDetailsUIViewController_viewDidAppear___block_invoke_3;
    aBlock[3] = &unk_1E774C648;
    aBlock[4] = self;
    v54 = _Block_copy(aBlock);
    v55 = [(PXPhotosDetailsUIViewController *)self presentedViewController];

    if (v55)
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

- (void)viewIsAppearing:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = PXPhotosDetailsUIViewController;
  [(PXPhotosDetailsUIViewController *)&v7 viewIsAppearing:a3];
  v4 = [(PXFeatureSpecManager *)self->__specManager spec];
  v5 = [v4 backgroundColor];
  v6 = [(PXPhotosDetailsUIViewController *)self view];
  [v6 setBackgroundColor:v5];
}

- (void)viewWillAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = PXPhotosDetailsUIViewController;
  [(PXPhotosDetailsUIViewController *)&v5 viewWillAppear:a3];
  v4 = [(PXPhotosDetailsUIViewController *)self view];
  [v4 setNeedsLayout];
}

- (void)_updateStatusBarTitle
{
  if ([(PXPhotosDetailsUIViewController *)self shouldUpdateStatusBarTitle])
  {
    v3 = [(PXPhotosDetailsUIViewController *)self barsController];

    if (v3)
    {
      v19 = [(PXPhotosDetailsUIViewController *)self barsController];
      v4 = [(PXPhotosDetailsUIViewController *)self _headerWidget];

      if (v4)
      {
        v5 = [(PXPhotosDetailsUIViewController *)self _headerWidget];
        v6 = [v5 contentTilingController];
      }

      else
      {
        v6 = [(PXPhotosDetailsUIViewController *)self _headerAssetWidgetTilingController];
      }

      v7 = [v6 currentLayout];
      [v7 contentBounds];
      v9 = v8;
      v11 = v10;
      v13 = v12;
      v15 = v14;
      v16 = [v6 currentLayout];
      if (v16)
      {
        v17 = v16;
        v21.origin.x = v9;
        v21.origin.y = v11;
        v21.size.width = v13;
        v21.size.height = v15;
        IsEmpty = CGRectIsEmpty(v21);

        if (!IsEmpty)
        {
          [v7 visibleRect];
          [v6 scrollController];
          [objc_claimAutoreleasedReturnValue() contentInset];
          PXEdgeInsetsInsetRect();
        }
      }

      [v19 shouldShowTitleView:0 animated:0];
    }
  }
}

- (void)contentSizeCategoryDidChange:(id)a3
{
  v3 = [(PXPhotosDetailsUIViewController *)self composition];
  [v3 invalidateComposition];
}

- (void)viewDidLoad
{
  v14.receiver = self;
  v14.super_class = PXPhotosDetailsUIViewController;
  [(PXPhotosDetailsUIViewController *)&v14 viewDidLoad];
  v3 = [(PXFeatureSpecManager *)self->__specManager spec];
  if ((-[PXPhotosDetailsUIViewController options](self, "options") & 4) == 0 && [v3 shouldInitializeBarsController])
  {
    [(UIViewController *)self px_enableBarAppearance];
    v4 = objc_alloc(self->__barsControllerClass);
    context = self->_context;
    viewModel = self->__viewModel;
    v7 = [(PXPhotosDetailsUIViewController *)self px_extendedTraitCollection];
    v8 = [v4 initWithContext:context viewModel:viewModel extendedTraitCollection:v7];
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

  v13 = [MEMORY[0x1E696AD88] defaultCenter];
  [v13 addObserver:self selector:sel_contentSizeCategoryDidChange_ name:*MEMORY[0x1E69DDC48] object:0];
}

- (PXDisplayAsset)presentedKeyAsset
{
  v2 = [(PXPhotosDetailsUIViewController *)self _headerWidget];
  v3 = [v2 presentedKeyAsset];

  return v3;
}

- (void)dealloc
{
  [(PXWidgetComposition *)self->_composition setShouldUnloadAllWidgets:1];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x1E69DDC48] object:0];

  v4.receiver = self;
  v4.super_class = PXPhotosDetailsUIViewController;
  [(PXPhotosDetailsUIViewController *)&v4 dealloc];
}

- (PXPhotosDetailsUIViewController)initWithContext:(id)a3 options:(unint64_t)a4
{
  v6 = a3;
  v7 = objc_alloc_init(PXPhotosDetailsConfiguration);
  [(PXPhotosDetailsConfiguration *)v7 setOptions:a4];
  v8 = [(PXPhotosDetailsUIViewController *)self initWithContext:v6 configuration:v7];

  return v8;
}

- (PXPhotosDetailsUIViewController)initWithContext:(id)a3 configuration:(id)a4
{
  v8 = a3;
  v9 = a4;
  if (!v8)
  {
    v33 = [MEMORY[0x1E696AAA8] currentHandler];
    [v33 handleFailureInMethod:a2 object:self file:@"PXPhotosDetailsUIViewController.m" lineNumber:195 description:{@"Invalid parameter not satisfying: %@", @"context"}];
  }

  v38.receiver = self;
  v38.super_class = PXPhotosDetailsUIViewController;
  v10 = [(PXPhotosDetailsUIViewController *)&v38 initWithNibName:0 bundle:0];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_context, a3);
    [(PXPhotosDetailsContext *)v11->_context registerChangeObserver:v11 context:PXPhotosDetailsContextObservationContext_71810];
    if (v9)
    {
      v12 = [v9 options];
    }

    else
    {
      v12 = 0;
    }

    v11->_options = v12;
    v13 = PXViewControllerEventTrackerCreateWithPhotosDetailsContext(v11->_context);
    eventTracker = v11->_eventTracker;
    v11->_eventTracker = v13;

    v15 = *(off_1E7721F98 + 1);
    *&v11->_contentEdgeInsets.top = *off_1E7721F98;
    *&v11->_contentEdgeInsets.bottom = v15;
    v16 = [MEMORY[0x1E695DF70] array];
    widgetDisablingDimmingViews = v11->__widgetDisablingDimmingViews;
    v11->__widgetDisablingDimmingViews = v16;

    v18 = [(PXPhotosDetailsUIViewController *)v11 navigationItem];
    [v18 setLargeTitleDisplayMode:2];

    [(PXPhotosDetailsUIViewController *)v11 px_enableExtendedTraitCollection];
    v19 = [(PXPhotosDetailsUIViewController *)v11 px_extendedTraitCollection];
    [v19 registerChangeObserver:v11 context:PXExtendedTraitCollectionObservationContext_71807];
    v20 = [[PXPhotosDetailsSpecManager alloc] initWithExtendedTraitCollection:v19 detailsOptions:v11->_options];
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
    v26 = v9;
    v37 = v26;
    [(PXPhotosDetailsContext *)context performChanges:v35];
    [v25 _updateTitleAndSubtitle];
    v27 = [v26 barsControllerClass];
    if (!v27)
    {
      v27 = objc_opt_class();
    }

    objc_storeStrong(v25 + 142, v27);
    if (([v25[142] isSubclassOfClass:objc_opt_class()] & 1) == 0)
    {
      v34 = [MEMORY[0x1E696AAA8] currentHandler];
      [v34 handleFailureInMethod:a2 object:v25 file:@"PXPhotosDetailsUIViewController.m" lineNumber:232 description:{@"Invalid parameter not satisfying: %@", @"[__barsControllerClass isSubclassOfClass:[PXPhotosDetailsBarsController class]]"}];
    }

    v28 = [v26 unlockDeviceStatus];
    v29 = v25[143];
    v25[143] = v28;

    v30 = [v26 unlockDeviceHandlerWithActionType];
    v31 = v25[144];
    v25[144] = v30;

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

- (PXPhotosDetailsUIViewController)initWithCoder:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"PXPhotosDetailsUIViewController.m" lineNumber:191 description:{@"%s is not available as initializer", "-[PXPhotosDetailsUIViewController initWithCoder:]"}];

  abort();
}

- (PXPhotosDetailsUIViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [MEMORY[0x1E696AAA8] currentHandler];
  [v9 handleFailureInMethod:a2 object:self file:@"PXPhotosDetailsUIViewController.m" lineNumber:187 description:{@"%s is not available as initializer", "-[PXPhotosDetailsUIViewController initWithNibName:bundle:]"}];

  abort();
}

+ (double)dynamicTextScaleFactorForCategory:(int64_t)a3
{
  result = 1.0;
  if ((a3 - 4) <= 8)
  {
    return dbl_1A53819F8[a3 - 4];
  }

  return result;
}

+ (void)preloadResources
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__PXPhotosDetailsUIViewController_preloadResources__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (preloadResources_onceToken != -1)
  {
    dispatch_once(&preloadResources_onceToken, block);
  }
}

@end