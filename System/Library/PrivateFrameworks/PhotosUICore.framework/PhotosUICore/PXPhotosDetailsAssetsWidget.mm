@interface PXPhotosDetailsAssetsWidget
+ (void)_refreshSortDescriptorsInPhotosDataSource:(id)a3 withPeople:(id)a4;
- (BOOL)_addAssetReferencesToDrag:(id)a3;
- (BOOL)_canDragAssetReferences:(id)a3;
- (BOOL)_canDragOut;
- (BOOL)_isLocationWithinCurrentLayoutBounds:(CGPoint)a3;
- (BOOL)actionPerformer:(id)a3 dismissViewController:(id)a4 completionHandler:(id)a5;
- (BOOL)actionPerformer:(id)a3 presentViewController:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldBeRequiredToFailByGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (BOOL)shouldEnablePlaybackForController:(id)a3;
- (BOOL)swipeSelectionManager:(id)a3 shouldBeginSelectionAtLocation:(CGPoint)a4;
- (CGPoint)_visibleOriginScrollTarget;
- (CGPoint)tilingController:(id)a3 initialVisibleOriginForLayout:(id)a4;
- (CGPoint)tilingController:(id)a3 targetVisibleOriginForLayout:(id)a4 proposedVisibleOrigin:(CGPoint)a5;
- (CGRect)engineDrivenLayout:(id)a3 contentsRectForItemAtIndexPath:(PXSimpleIndexPath *)a4 forAspectRatio:(double)a5;
- (CGSize)minimumItemSizeForPlaybackInController:(id)a3;
- (NSString)localizedSubtitle;
- (NSString)localizedTitle;
- (PXAssetActionManager)assetActionManager;
- (PXPhotosDetailsAssetsSpecManager)_specManager;
- (PXPhotosDetailsAssetsWidget)init;
- (PXPhotosDetailsAssetsWidgetOneUpDelegate)widgetOneUpDelegate;
- (PXSectionedSelectionManager)selectionManager;
- (PXSimpleIndexPath)_assetIndexPathAtLocation:(SEL)a3 padding:(CGPoint)a4;
- (PXSimpleIndexPath)swipeSelectionManager:(SEL)a3 itemIndexPathAtLocation:(id)a4;
- (PXSimpleIndexPath)swipeSelectionManager:(SEL)a3 itemIndexPathClosestAboveLocation:(id)a4;
- (PXSimpleIndexPath)swipeSelectionManager:(SEL)a3 itemIndexPathClosestLeadingLocation:(id)a4;
- (PXTilingController)contentTilingController;
- (PXWidgetDelegate)widgetDelegate;
- (double)engineDrivenLayout:(id)a3 aspectRatioForItemAtIndexPath:(PXSimpleIndexPath *)a4;
- (double)engineDrivenLayout:(id)a3 zPositionForItemAtIndexPath:(PXSimpleIndexPath *)a4;
- (id)_assetActionManagerForAssetsReference:(id)a3;
- (id)_assetReferenceAtPoint:(CGPoint)a3 padding:(UIEdgeInsets)a4;
- (id)_createNewLayout;
- (id)_curationButtonTitle;
- (id)_dragItemForAssetReference:(id)a3;
- (id)_extendedTraitCollection;
- (id)_imageTileForDragItem:(id)a3;
- (id)_regionOfInterestForAssetReference:(id)a3;
- (id)_subtitle;
- (id)_title;
- (id)assetsScene:(id)a3 layoutForDataSource:(id)a4;
- (id)assetsScene:(id)a3 tileIdentifierConverterForChange:(id)a4;
- (id)bestCursorTileForLiftingAtPoint:(CGPoint)a3 inCoordinateSpace:(id)a4;
- (id)dataSourceManager;
- (id)dragInteraction:(id)a3 itemsForAddingToSession:(id)a4 withTouchAtPoint:(CGPoint)a5;
- (id)dragInteraction:(id)a3 itemsForBeginningSession:(id)a4;
- (id)dragInteraction:(id)a3 previewForCancellingItem:(id)a4 withDefault:(id)a5;
- (id)dragInteraction:(id)a3 previewForLiftingItem:(id)a4 session:(id)a5;
- (id)dragInteraction:(id)a3 sessionForAddingItems:(id)a4 withTouchAtPoint:(CGPoint)a5;
- (id)genericPreviewViewController;
- (id)imageViewBasicTileForPreviewingAtPoint:(CGPoint)a3;
- (id)oneUpPresentation:(id)a3 currentImageForAssetReference:(id)a4;
- (id)oneUpPresentationActionManagerForPreviewing:(id)a3;
- (id)presentationEnvironmentForActionPerformer:(id)a3;
- (id)previewViewControllerAtLocation:(CGPoint)a3 fromSourceView:(id)a4;
- (id)tilingController:(id)a3 tileIdentifierConverterForChange:(id)a4;
- (id)tilingController:(id)a3 transitionAnimationCoordinatorForChange:(id)a4;
- (id)undoManagerForActionPerformer:(id)a3;
- (int64_t)contentLayoutStyle;
- (int64_t)oneUpPresentationOrigin:(id)a3;
- (void)_configureLayout:(id)a3;
- (void)_fallBackByTogglingCurationIfNeeded;
- (void)_handleTapOnAssetReference:(id)a3 autoPlayVideo:(BOOL)a4 activity:(unint64_t)a5;
- (void)_handleTapOnFocusedAssetReferenceWithActivity:(unint64_t)a3;
- (void)_invalidateLayoutGenerator;
- (void)_loadTilingController;
- (void)_logAssetCountsIfNecessary;
- (void)_performTilingChangeWithoutAnimationTransition:(id)a3;
- (void)_presentConfidentialityWarning;
- (void)_setCurate:(BOOL)a3;
- (void)_setCurrentDataSourceStressTest:(id)a3;
- (void)_setDraggingAssetReferences:(id)a3;
- (void)_setFocusedAssetReference:(id)a3;
- (void)_setHasLoadedContentData:(BOOL)a3;
- (void)_setHiddenAssetReferences:(id)a3;
- (void)_setHighlightedAssetReference:(id)a3;
- (void)_setLoadCoordinationToken:(id)a3;
- (void)_setPhotosDataSource:(id)a3;
- (void)_setShowCurationButton:(BOOL)a3;
- (void)_toggleCuration;
- (void)_updateDraggingAssetReferencesWithDataSource:(id)a3;
- (void)_updateFocusedAssetReference;
- (void)_updateHasLoadedContentData;
- (void)_updateLayoutEngineIfNeeded;
- (void)_updateShowCurationButton;
- (void)_updateTilingLayoutIfNeeded;
- (void)_userDidSelectCurationButton;
- (void)assetsScene:(id)a3 didTransitionToDataSource:(id)a4;
- (void)checkInTile:(void *)a3 withIdentifier:(PXTileIdentifier *)a4;
- (void)checkOutTileForIdentifier:(PXTileIdentifier *)a3 layout:(id)a4;
- (void)commitPreviewViewController:(id)a3;
- (void)contentViewDidDisappear;
- (void)contentViewWillAppear;
- (void)dealloc;
- (void)didDismissPreviewViewController:(id)a3 committing:(BOOL)a4;
- (void)dragInteraction:(id)a3 item:(id)a4 willAnimateCancelWithAnimator:(id)a5;
- (void)dragInteraction:(id)a3 session:(id)a4 didEndWithOperation:(unint64_t)a5;
- (void)dragInteraction:(id)a3 sessionWillBegin:(id)a4;
- (void)dragInteraction:(id)a3 willAnimateLiftWithAnimator:(id)a4 session:(id)a5;
- (void)handlePinch:(id)a3;
- (void)handleTap:(id)a3;
- (void)handleTouch:(id)a3;
- (void)loadContentData;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)oneUpPresentation:(id)a3 scrollAssetReferenceToVisible:(id)a4;
- (void)oneUpPresentation:(id)a3 setHiddenAssetReferences:(id)a4;
- (void)playButtonTileWasTapped:(id)a3;
- (void)presentOneUpForAssetReference:(id)a3 animated:(BOOL)a4;
- (void)scrollViewControllerContentBoundsDidChange:(id)a3;
- (void)scrollViewControllerDidScroll:(id)a3;
- (void)setContext:(id)a3;
- (void)setSelecting:(BOOL)a3;
- (void)swipeSelectionManagerAutomaticallyTransitionToMultiSelectMode:(id)a3;
- (void)userDidSelectSubtitle;
@end

@implementation PXPhotosDetailsAssetsWidget

- (CGPoint)_visibleOriginScrollTarget
{
  x = self->__visibleOriginScrollTarget.x;
  y = self->__visibleOriginScrollTarget.y;
  result.y = y;
  result.x = x;
  return result;
}

- (PXPhotosDetailsAssetsWidgetOneUpDelegate)widgetOneUpDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_widgetOneUpDelegate);

  return WeakRetained;
}

- (PXWidgetDelegate)widgetDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_widgetDelegate);

  return WeakRetained;
}

- (id)presentationEnvironmentForActionPerformer:(id)a3
{
  v4 = [(PXPhotosDetailsAssetsWidget *)self widgetDelegate];
  v5 = [v4 widgetViewControllerHostingWidget:self];

  v6 = [off_1E7721960 defaultPresenterWithViewController:v5];

  return v6;
}

- (id)undoManagerForActionPerformer:(id)a3
{
  v4 = [(PXPhotosDetailsAssetsWidget *)self widgetDelegate];
  v5 = [v4 widgetUndoManager:self];

  return v5;
}

- (BOOL)actionPerformer:(id)a3 dismissViewController:(id)a4 completionHandler:(id)a5
{
  v6 = a5;
  v7 = [(PXPhotosDetailsAssetsWidget *)self widgetDelegate];
  v8 = [v7 widgetViewControllerHostingWidget:self];

  v9 = [v8 presentedViewController];

  if (v9)
  {
    [v8 dismissViewControllerAnimated:1 completion:v6];
  }

  return v9 != 0;
}

- (BOOL)actionPerformer:(id)a3 presentViewController:(id)a4
{
  v5 = a4;
  v6 = [(PXPhotosDetailsAssetsWidget *)self widgetDelegate];
  LOBYTE(self) = [v6 widget:self transitionToViewController:v5 withTransitionType:2];

  return self;
}

- (id)dragInteraction:(id)a3 sessionForAddingItems:(id)a4 withTouchAtPoint:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  v24 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = PLDragAndDropGetLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v26.x = x;
    v26.y = y;
    v12 = NSStringFromCGPoint(v26);
    v18 = 138412802;
    v19 = v9;
    v20 = 2112;
    v21 = v10;
    v22 = 2112;
    v23 = v12;
    _os_log_impl(&dword_1A3C1C000, v11, OS_LOG_TYPE_DEBUG, "dragInteraction: %@ sessionForAddingItems: %@ withTouchAtPoint: %@", &v18, 0x20u);
  }

  v13 = [(PXPhotosDetailsAssetsWidget *)self dragSession];
  v14 = [v10 containsObject:v13];

  if (v14)
  {
    v15 = [(PXPhotosDetailsAssetsWidget *)self dragSession];
LABEL_7:
    v16 = v15;
    goto LABEL_9;
  }

  if ([v10 count] == 1)
  {
    v15 = [v10 lastObject];
    goto LABEL_7;
  }

  v16 = 0;
LABEL_9:

  return v16;
}

- (void)dragInteraction:(id)a3 item:(id)a4 willAnimateCancelWithAnimator:(id)a5
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __82__PXPhotosDetailsAssetsWidget_dragInteraction_item_willAnimateCancelWithAnimator___block_invoke;
  v5[3] = &unk_1E7748D18;
  v5[4] = self;
  [a5 addCompletion:{v5, a4}];
}

uint64_t __82__PXPhotosDetailsAssetsWidget_dragInteraction_item_willAnimateCancelWithAnimator___block_invoke(uint64_t result, uint64_t a2)
{
  if (!a2)
  {
    return [*(result + 32) _setDraggingAssetReferences:0];
  }

  return result;
}

- (void)dragInteraction:(id)a3 willAnimateLiftWithAnimator:(id)a4 session:(id)a5
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __83__PXPhotosDetailsAssetsWidget_dragInteraction_willAnimateLiftWithAnimator_session___block_invoke;
  v5[3] = &unk_1E7748D18;
  v5[4] = self;
  [a4 addCompletion:v5];
}

uint64_t __83__PXPhotosDetailsAssetsWidget_dragInteraction_willAnimateLiftWithAnimator_session___block_invoke(uint64_t result, uint64_t a2)
{
  if (a2 == 1)
  {
    return [*(result + 32) _setDraggingAssetReferences:0];
  }

  return result;
}

- (void)dragInteraction:(id)a3 session:(id)a4 didEndWithOperation:(unint64_t)a5
{
  v17 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = PLDragAndDropGetLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = 138412802;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2048;
    v16 = a5;
    _os_log_impl(&dword_1A3C1C000, v10, OS_LOG_TYPE_DEBUG, "dragInteraction: %@ session: %@ didEndWithOperation: %lu", &v11, 0x20u);
  }

  [(PXPhotosDetailsAssetsWidget *)self setDragSession:0];
  [(PXPhotosDetailsAssetsWidget *)self _setDraggingAssetReferences:0];
}

- (void)dragInteraction:(id)a3 sessionWillBegin:(id)a4
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = PLDragAndDropGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412546;
    v10 = v6;
    v11 = 2112;
    v12 = v7;
    _os_log_impl(&dword_1A3C1C000, v8, OS_LOG_TYPE_DEBUG, "dragInteraction: %@ sessionWillBegin: %@", &v9, 0x16u);
  }

  [(PXPhotosDetailsAssetsWidget *)self setDragSession:v7];
  [(PXPhotosDetailsAssetsWidget *)self _setHighlightedAssetReference:0];
}

- (id)dragInteraction:(id)a3 previewForCancellingItem:(id)a4 withDefault:(id)a5
{
  v18 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = PLDragAndDropGetLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v14 = 138412546;
    v15 = v8;
    v16 = 2112;
    v17 = v9;
    _os_log_impl(&dword_1A3C1C000, v11, OS_LOG_TYPE_DEBUG, "dragInteraction: %@ previewForCancellingItem: %@", &v14, 0x16u);
  }

  v12 = [(PXPhotosDetailsAssetsWidget *)self _imageTileForDragItem:v10];

  if (v12)
  {
    [v12 view];
    [objc_claimAutoreleasedReturnValue() frame];
    PXRectGetCenter();
  }

  return 0;
}

- (id)dragInteraction:(id)a3 previewForLiftingItem:(id)a4 session:(id)a5
{
  v38 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = PLDragAndDropGetLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v32 = 138412802;
    v33 = v8;
    v34 = 2112;
    v35 = v9;
    v36 = 2112;
    v37 = v10;
    _os_log_impl(&dword_1A3C1C000, v11, OS_LOG_TYPE_DEBUG, "dragInteraction: %@ previewForLiftingItem: %@ session: %@", &v32, 0x20u);
  }

  v12 = [(PXPhotosDetailsAssetsWidget *)self _imageTileForDragItem:v9];
  if ([v12 conformsToProtocol:&unk_1F1A50488])
  {
    v13 = objc_alloc(MEMORY[0x1E69DCAE0]);
    v14 = [v12 view];
    [v14 frame];
    v15 = [v13 initWithFrame:?];

    v16 = [v12 image];
    [v15 setImage:v16];

    v17 = [v12 view];
    [v15 setContentMode:{objc_msgSend(v17, "contentMode")}];

    v18 = [v12 view];
    [v15 setClipsToBounds:{objc_msgSend(v18, "clipsToBounds")}];

    v19 = [v12 view];
    v20 = [v19 layer];
    [v20 contentsRect];
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v29 = [v15 layer];
    [v29 setContentsRect:{v22, v24, v26, v28}];

    v30 = [v15 layer];
    [v30 setZPosition:3.40282347e38];

    [v12 view];
    [objc_claimAutoreleasedReturnValue() frame];
    PXRectGetCenter();
  }

  return 0;
}

- (id)dragInteraction:(id)a3 itemsForAddingToSession:(id)a4 withTouchAtPoint:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  v34 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = PLDragAndDropGetLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v36.x = x;
    v36.y = y;
    v12 = NSStringFromCGPoint(v36);
    *buf = 138412802;
    *&buf[4] = v9;
    *&buf[12] = 2112;
    *&buf[14] = v10;
    *&buf[22] = 2112;
    *&buf[24] = v12;
    _os_log_impl(&dword_1A3C1C000, v11, OS_LOG_TYPE_DEBUG, "dragInteraction: %@ itemsForAddingToSession: %@ withTouchAtPoint: %@", buf, 0x20u);
  }

  v13 = [(PXPhotosDetailsAssetsWidget *)self _assetsScene];
  v14 = [v13 scrollViewController];
  v15 = [v14 scrollView];
  v16 = [v13 scrollViewController];
  v17 = [v16 contentCoordinateSpace];

  [v17 convertPoint:v15 fromCoordinateSpace:{x, y}];
  memset(buf, 0, 32);
  [PXPhotosDetailsAssetsWidget _assetIndexPathAtLocation:"_assetIndexPathAtLocation:padding:" padding:?];
  if (*buf == *off_1E7721F68)
  {
    v18 = 0;
  }

  else
  {
    v30 = v9;
    v19 = [(PXPhotosDetailsAssetsWidget *)self _dataSourceManager];
    v20 = [v19 dataSource];

    v31[0] = *buf;
    v31[1] = *&buf[16];
    v21 = [v20 assetReferenceAtItemIndexPath:v31];
    v22 = [(PXPhotosDetailsAssetsWidget *)self _draggingAssetReferences];
    v23 = [v22 containsObject:v21];

    if (v23)
    {
      v18 = 0;
      v9 = v30;
    }

    else
    {
      v24 = [(PXPhotosDetailsAssetsWidget *)self _dragItemForAssetReference:v21];
      if (v24 && ([MEMORY[0x1E695DFD8] setWithObject:v21], v25 = objc_claimAutoreleasedReturnValue(), v26 = -[PXPhotosDetailsAssetsWidget _addAssetReferencesToDrag:](self, "_addAssetReferencesToDrag:", v25), v25, v26))
      {
        v32 = v24;
        v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v32 count:1];
      }

      else
      {
        v18 = 0;
      }

      v9 = v30;
    }
  }

  v27 = MEMORY[0x1E695E0F0];
  if (v18)
  {
    v27 = v18;
  }

  v28 = v27;

  return v28;
}

- (id)dragInteraction:(id)a3 itemsForBeginningSession:(id)a4
{
  v51 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = PLDragAndDropGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    *&buf[4] = v6;
    *&buf[12] = 2112;
    *&buf[14] = v7;
    _os_log_impl(&dword_1A3C1C000, v8, OS_LOG_TYPE_DEBUG, "dragInteraction: %@ itemsForBeginningSession: %@", buf, 0x16u);
  }

  if ([(PXPhotosDetailsAssetsWidget *)self _canDragOut])
  {
    v9 = [(PXPhotosDetailsAssetsWidget *)self _assetsScene];
    v10 = [v9 scrollViewController];
    v11 = [v10 scrollView];
    [v7 locationInView:v11];
    v13 = v12;
    v15 = v14;
    v16 = [v9 scrollViewController];
    v17 = [v16 contentCoordinateSpace];

    [v17 convertPoint:v11 fromCoordinateSpace:{v13, v15}];
    memset(buf, 0, sizeof(buf));
    [PXPhotosDetailsAssetsWidget _assetIndexPathAtLocation:"_assetIndexPathAtLocation:padding:" padding:?];
    if (*buf == *off_1E7721F68)
    {
      v18 = MEMORY[0x1E695E0F0];
    }

    else
    {
      v20 = [(PXPhotosDetailsAssetsWidget *)self _dataSourceManager];
      v21 = [v20 dataSource];

      v47 = *buf;
      v48 = *&buf[16];
      v41 = v21;
      v22 = [v21 assetReferenceAtItemIndexPath:&v47];
      v23 = [(PXPhotosDetailsAssetsWidget *)self _draggingAssetReferences];
      v24 = [v23 containsObject:v22];

      if (v24)
      {
        v18 = MEMORY[0x1E695E0F0];
      }

      else
      {
        v25 = [v9 selectionManager];
        v26 = [v25 selectionSnapshot];
        v47 = *buf;
        v48 = *&buf[16];
        v40 = v22;
        if ([v26 isIndexPathSelected:&v47])
        {
          v37 = v25;
          v38 = v26;
          v27 = [v26 selectedIndexPaths];
          v28 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(v27, "count")}];
          v29 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v27, "count")}];
          v42[0] = MEMORY[0x1E69E9820];
          v42[1] = 3221225472;
          v42[2] = __72__PXPhotosDetailsAssetsWidget_dragInteraction_itemsForBeginningSession___block_invoke;
          v42[3] = &unk_1E773D670;
          v43 = v41;
          v44 = self;
          v30 = v29;
          v45 = v30;
          v31 = v28;
          v46 = v31;
          [v27 enumerateItemIndexPathsUsingBlock:v42];
          if ([(PXPhotosDetailsAssetsWidget *)self _addAssetReferencesToDrag:v31])
          {
            v18 = v30;
          }

          else
          {
            v18 = MEMORY[0x1E695E0F0];
          }

          v25 = v37;
          v26 = v38;
        }

        else
        {
          v32 = [(PXPhotosDetailsAssetsWidget *)self _dragItemForAssetReference:v22];
          if (v32)
          {
            v33 = v22;
            v27 = v32;
            v39 = v26;
            v34 = [MEMORY[0x1E695DFD8] setWithObject:v33];
            v35 = [(PXPhotosDetailsAssetsWidget *)self _addAssetReferencesToDrag:v34];

            if (v35)
            {
              v49 = v27;
              v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v49 count:1];
            }

            else
            {
              v18 = MEMORY[0x1E695E0F0];
            }

            v26 = v39;
          }

          else
          {
            v27 = 0;
            v18 = MEMORY[0x1E695E0F0];
          }
        }

        v22 = v40;
      }
    }

    v19 = v18;
  }

  else
  {
    v19 = MEMORY[0x1E695E0F0];
  }

  return v19;
}

void __72__PXPhotosDetailsAssetsWidget_dragInteraction_itemsForBeginningSession___block_invoke(uint64_t a1, _OWORD *a2)
{
  v3 = *(a1 + 32);
  v4 = a2[1];
  v7[0] = *a2;
  v7[1] = v4;
  v5 = [v3 assetReferenceAtItemIndexPath:v7];
  v6 = [*(a1 + 40) _dragItemForAssetReference:v5];
  if (v6)
  {
    [*(a1 + 48) addObject:v6];
    [*(a1 + 56) addObject:v5];
  }
}

- (void)_presentConfidentialityWarning
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E69DC648];
  v4 = PXLocalizedStringFromTable(@"PXOK", @"PhotosUICore");
  v5 = [v3 actionWithTitle:v4 style:0 handler:0];

  v9[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  v7 = [PXSharingConfidentialityController confidentialityAlertWithActions:v6];

  v8 = [(PXPhotosDetailsAssetsWidget *)self widgetDelegate];
  [v8 widget:self transitionToViewController:v7 withTransitionType:2];
}

- (BOOL)_canDragAssetReferences:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (+[PXSharingConfidentialityController confidentialityCheckRequired])
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v13;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = [*(*(&v12 + 1) + 8 * i) asset];
          if ([v9 conformsToProtocol:&unk_1F1AE4C40] && +[PXSharingConfidentialityController confidentialWarningRequiredForAsset:](PXSharingConfidentialityController, "confidentialWarningRequiredForAsset:", v9))
          {

            v10 = 0;
            goto LABEL_14;
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    v10 = 1;
LABEL_14:
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

- (void)_updateDraggingAssetReferencesWithDataSource:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = MEMORY[0x1E695DFA8];
  v6 = [(PXPhotosDetailsAssetsWidget *)self _draggingAssetReferences];
  v7 = [v5 setWithCapacity:{objc_msgSend(v6, "count")}];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = [(PXPhotosDetailsAssetsWidget *)self _draggingAssetReferences];
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [v4 assetReferenceForAssetReference:*(*(&v14 + 1) + 8 * v12)];
        if (v13)
        {
          [v7 addObject:v13];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  [(PXPhotosDetailsAssetsWidget *)self _setDraggingAssetReferences:v7];
}

- (BOOL)_addAssetReferencesToDrag:(id)a3
{
  v4 = a3;
  v5 = [(PXPhotosDetailsAssetsWidget *)self _canDragAssetReferences:v4];
  if (v5)
  {
    v6 = [(PXPhotosDetailsAssetsWidget *)self _draggingAssetReferences];
    if (v6)
    {
      v7 = v6;
      v8 = [v6 setByAddingObjectsFromSet:v4];
    }

    else
    {
      v8 = v4;
    }

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __57__PXPhotosDetailsAssetsWidget__addAssetReferencesToDrag___block_invoke;
    v11[3] = &unk_1E774C620;
    v11[4] = self;
    v12 = v8;
    v9 = v8;
    [(PXPhotosDetailsAssetsWidget *)self _performTilingChangeWithoutAnimationTransition:v11];
  }

  else
  {
    [(PXPhotosDetailsAssetsWidget *)self _presentConfidentialityWarning];
  }

  return v5;
}

- (id)_dragItemForAssetReference:(id)a3
{
  v3 = a3;
  v4 = [v3 asset];
  v5 = PXDragAndDropItemProviderForDisplayAsset(v4);

  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E69DC990]) initWithItemProvider:v5];
    v7 = [[off_1E7721538 alloc] initWithAssetReference:v3];
    [v6 setLocalObject:v7];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_imageTileForDragItem:(id)a3
{
  v4 = [a3 localObject];
  v5 = [(PXPhotosDetailsAssetsWidget *)self _dataSourceManager];
  v6 = [v5 dataSource];

  v42 = 0u;
  v43 = 0u;
  v7 = [v4 assetReference];
  v8 = [v6 assetReferenceForAssetReference:v7];
  v9 = v8;
  if (v8)
  {
    [v8 indexPath];
  }

  else
  {
    v42 = 0u;
    v43 = 0u;
  }

  if (v42 == *off_1E7721F68)
  {
    v10 = 0;
  }

  else
  {
    v11 = [(PXPhotosDetailsAssetsWidget *)self _assetsScene];
    v12 = [v11 tilingController];

    v13 = [v12 currentLayout];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (v14 = v42, v15 = v43, v40 = 0u, v41 = 0u, v38 = 0u, v39 = 0u, v36 = 0u, v37 = 0u, v34 = 0u, v35 = 0u, v32 = 0u, v33 = 0u, memset(&v31, 0, sizeof(v31)), v25 = xmmword_1A5380D20, v26 = v42, v27 = v43, v28 = 0u, v29 = 0u, v30 = 0, [v13 getGeometry:&v31 group:0 userData:0 forTileWithIdentifier:&v25]) && (objc_msgSend(v13, "visibleRect"), v45.origin.x = v16, v45.origin.y = v17, v45.size.width = v18, v45.size.height = v19, CGRectIntersectsRect(v31, v45)))
    {
      v24 = 0;
      v20 = [(PXPhotosDetailsAssetsWidget *)self _assetsScene];
      v21 = [v20 tilingController];
      v25 = xmmword_1A5380D20;
      v26 = v14;
      v27 = v15;
      v28 = 0u;
      v29 = 0u;
      v30 = 0;
      v22 = [v21 getTile:&v24 geometry:0 group:0 userData:0 forTileWithIdentifier:&v25];

      v10 = 0;
      if (v22)
      {
        v10 = v24;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (BOOL)_canDragOut
{
  v2 = +[PXDragAndDropSettings sharedInstance];
  v3 = [v2 dragOutEnabled];

  return v3;
}

- (BOOL)gestureRecognizer:(id)a3 shouldBeRequiredToFailByGestureRecognizer:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PXPhotosDetailsAssetsWidget *)self _pinchGesture];

  if (v8 == v7)
  {
    v10 = [(PXPhotosDetailsAssetsWidget *)self _swipeSelectionManager];
    v11 = [v10 gesturesForFailureRequirements];
    v9 = [v11 containsObject:v6];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PXPhotosDetailsAssetsWidget *)self _touchGesture];

  if (v8 == v7)
  {
    v10 = 1;
  }

  else
  {
    v9 = [(PXPhotosDetailsAssetsWidget *)self _touchGesture];
    v10 = v9 == v6;
  }

  return v10;
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  if ([(PXPhotosDetailsAssetsWidget *)self isUserInteractionEnabled])
  {
    v5 = [(PXPhotosDetailsAssetsWidget *)self _assetsScene];
    v6 = [v5 scrollViewController];
    v7 = [v6 contentCoordinateSpace];

    [v4 px_locationInCoordinateSpace:v7];
    v8 = [(PXPhotosDetailsAssetsWidget *)self _isLocationWithinCurrentLayoutBounds:?];
    v9 = [(PXPhotosDetailsAssetsWidget *)self _pinchGesture];

    v10 = v9 == v4;
    v11 = v9 != v4 && v8;
    if (v10 && v8)
    {
      v12 = [(PXPhotosDetailsAssetsWidget *)self _pinchGesture];
      [v12 velocity];
      v11 = v13 > 0.0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (CGSize)minimumItemSizeForPlaybackInController:(id)a3
{
  v3 = [(PXPhotosDetailsAssetsWidget *)self _layoutEngine];
  v4 = [v3 layoutGenerator];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v4 minHeroItemsSize];
    v6 = v5;
    v8 = v7;
  }

  else
  {
    v6 = *off_1E7722230;
    v8 = *(off_1E7722230 + 1);
  }

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (BOOL)shouldEnablePlaybackForController:(id)a3
{
  v4 = [(PXPhotosDetailsAssetsWidget *)self _curate];
  if (v4)
  {
    LOBYTE(v4) = ![(PXPhotosDetailsAssetsWidget *)self isSelecting];
  }

  return v4;
}

- (PXSimpleIndexPath)swipeSelectionManager:(SEL)a3 itemIndexPathClosestAboveLocation:(id)a4
{
  y = a5.y;
  x = a5.x;
  v9 = a4;
  v10 = [(PXPhotosDetailsAssetsWidget *)self _assetsScene];
  v11 = [v10 scrollViewController];
  v12 = [v11 contentCoordinateSpace];
  v13 = [v9 scrollView];
  [v12 convertPoint:v13 fromCoordinateSpace:{x, y}];

  v14 = [v9 scrollView];

  [v14 frame];
  *&retstr->dataSourceIdentifier = 0u;
  *&retstr->item = 0u;
  PXEdgeInsetsMake();
}

- (PXSimpleIndexPath)swipeSelectionManager:(SEL)a3 itemIndexPathClosestLeadingLocation:(id)a4
{
  y = a5.y;
  x = a5.x;
  v9 = a4;
  v10 = [(PXPhotosDetailsAssetsWidget *)self _assetsScene];
  v11 = [v10 scrollViewController];
  v12 = [v11 contentCoordinateSpace];
  v13 = [v9 scrollView];
  [v12 convertPoint:v13 fromCoordinateSpace:{x, y}];

  v14 = [v9 scrollView];

  [v14 frame];
  *&retstr->dataSourceIdentifier = 0u;
  *&retstr->item = 0u;
  PXEdgeInsetsMake();
}

- (PXSimpleIndexPath)swipeSelectionManager:(SEL)a3 itemIndexPathAtLocation:(id)a4
{
  y = a5.y;
  x = a5.x;
  v9 = a4;
  v10 = [(PXPhotosDetailsAssetsWidget *)self _assetsScene];
  v11 = [v10 scrollViewController];
  v12 = [v11 contentCoordinateSpace];
  v13 = [v9 scrollView];

  [v12 convertPoint:v13 fromCoordinateSpace:{x, y}];
  v15 = v14;
  v17 = v16;

  *&retstr->dataSourceIdentifier = 0u;
  *&retstr->item = 0u;
  v18 = *off_1E7721FA0;
  v19 = *(off_1E7721FA0 + 1);
  v20 = *(off_1E7721FA0 + 2);
  v21 = *(off_1E7721FA0 + 3);

  return [(PXPhotosDetailsAssetsWidget *)self _assetIndexPathAtLocation:v15 padding:v17, v18, v19, v20, v21];
}

- (BOOL)swipeSelectionManager:(id)a3 shouldBeginSelectionAtLocation:(CGPoint)a4
{
  v4 = [(PXPhotosDetailsAssetsWidget *)self dragSession:a3];

  return v4 == 0;
}

- (void)swipeSelectionManagerAutomaticallyTransitionToMultiSelectMode:(id)a3
{
  v3 = [(PXPhotosDetailsAssetsWidget *)self context];
  v4 = [v3 viewModel];

  [v4 performChanges:&__block_literal_global_393_146099];
}

- (void)scrollViewControllerContentBoundsDidChange:(id)a3
{
  v3 = [(PXPhotosDetailsAssetsWidget *)self _inlinePlaybackController];
  [v3 visibleRectDidChange];
}

- (void)scrollViewControllerDidScroll:(id)a3
{
  v4 = [(PXPhotosDetailsAssetsWidget *)self oneUpPresentation];
  [v4 invalidatePresentingGeometry];

  v5 = [(PXPhotosDetailsAssetsWidget *)self _inlinePlaybackController];
  [v5 visibleRectDidChange];
}

- (void)oneUpPresentation:(id)a3 setHiddenAssetReferences:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [(PXPhotosDetailsAssetsWidget *)self _dataSourceManager];
  v7 = [v6 dataSource];

  v8 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v5, "count")}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = v5;
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      v13 = 0;
      do
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [v7 assetReferenceForAssetReference:*(*(&v18 + 1) + 8 * v13)];
        if (v14)
        {
          [v8 addObject:v14];
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __74__PXPhotosDetailsAssetsWidget_oneUpPresentation_setHiddenAssetReferences___block_invoke;
  v16[3] = &unk_1E774C620;
  v16[4] = self;
  v17 = v8;
  v15 = v8;
  [(PXPhotosDetailsAssetsWidget *)self _performTilingChangeWithoutAnimationTransition:v16];
}

- (void)oneUpPresentation:(id)a3 scrollAssetReferenceToVisible:(id)a4
{
  v5 = a4;
  v6 = [(PXPhotosDetailsAssetsWidget *)self _assetsScene];
  v7 = [v6 tilingController];

  v8 = [v7 scrollController];
  [v8 updateIfNeeded];

  v9 = [v7 currentLayout];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [v7 currentLayout];
  }

  else
  {
    v10 = 0;
  }

  memset(v21, 0, sizeof(v21));
  v11 = [v10 dataSource];
  v12 = v11;
  if (v11)
  {
    [v11 indexPathForAssetReference:v5];
  }

  else
  {
    memset(v21, 0, sizeof(v21));
  }

  if (*&v21[0] != *off_1E7721F68)
  {
    memset(v20, 0, sizeof(v20));
    v13 = xmmword_1A5380D20;
    v14 = *&v21[0];
    v15 = *(v21 + 8);
    v16 = *(&v21[1] + 1);
    v17 = 0u;
    v18 = 0u;
    v19 = 0;
    if ([v10 getGeometry:v20 group:0 userData:0 forTileWithIdentifier:&v13])
    {
      PXEdgeInsetsMake();
    }
  }
}

void __79__PXPhotosDetailsAssetsWidget_oneUpPresentation_scrollAssetReferenceToVisible___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) widgetDelegate];
  [v2 widgetRequestFocus:*(a1 + 32)];

  v3 = objc_alloc_init(PXTilingLayoutInvalidationContext);
  [(PXTilingLayoutInvalidationContext *)v3 invalidateVisibleRect];
  [*(a1 + 40) invalidateLayoutWithContext:v3];
}

- (id)oneUpPresentation:(id)a3 currentImageForAssetReference:(id)a4
{
  v5 = a4;
  memset(v27, 0, sizeof(v27));
  v6 = [(PXPhotosDetailsAssetsWidget *)self _assetsScene];
  v7 = [v6 currentLayout];
  v8 = [v7 dataSource];
  v9 = v8;
  if (v8)
  {
    [v8 indexPathForAssetReference:v5];
  }

  else
  {
    memset(v27, 0, sizeof(v27));
  }

  v10 = *&v27[0];
  if (*&v27[0] == *off_1E7721F68)
  {
    v11 = 0;
  }

  else
  {
    v18 = *(v27 + 8);
    v12 = *(&v27[1] + 1);
    v26 = 0;
    v13 = [(PXPhotosDetailsAssetsWidget *)self _assetsScene];
    v14 = [v13 tilingController];
    v19 = xmmword_1A5380D20;
    v20 = v10;
    v21 = v18;
    v22 = v12;
    v23 = 0u;
    v24 = 0u;
    v25 = 0;
    v15 = [v14 getTile:&v26 geometry:0 group:0 userData:0 forTileWithIdentifier:&v19];

    v11 = 0;
    if (v15)
    {
      v16 = v26;
      if ([v16 conformsToProtocol:&unk_1F1A50488])
      {
        v11 = [v16 image];
      }

      else
      {
        v11 = 0;
      }
    }
  }

  return v11;
}

- (id)oneUpPresentationActionManagerForPreviewing:(id)a3
{
  v4 = [(PXPhotosDetailsAssetsWidget *)self _navigatedAssetReference];
  v5 = [(PXPhotosDetailsAssetsWidget *)self _assetActionManagerForAssetsReference:v4];

  return v5;
}

- (int64_t)oneUpPresentationOrigin:(id)a3
{
  v4 = [(PXPhotosDetailsAssetsWidget *)self context];
  v5 = [v4 viewSourceOrigin];
  v6 = [(PXPhotosDetailsAssetsWidget *)self _curate];
  if (v5 <= 5)
  {
    v7 = 18;
    if (!v6)
    {
      v7 = 19;
    }

    v13 = 20;
    if (!v6)
    {
      v13 = 21;
    }

    if (v5 != 5)
    {
      v13 = 0;
    }

    if (v5 != 4)
    {
      v7 = v13;
    }

    v10 = 14;
    if (!v6)
    {
      v10 = 15;
    }

    v14 = 16;
    if (!v6)
    {
      v14 = 17;
    }

    if (v5 != 3)
    {
      v14 = 0;
    }

    if (v5 != 2)
    {
      v10 = v14;
    }

    v12 = v5 <= 3;
  }

  else
  {
    v7 = 28;
    if (!v6)
    {
      v7 = 29;
    }

    v8 = 22;
    if (!v6)
    {
      v8 = 23;
    }

    v9 = 31;
    if (v5 != 10)
    {
      v9 = 0;
    }

    if (v5 != 9)
    {
      v8 = v9;
    }

    if (v5 != 8)
    {
      v7 = v8;
    }

    v10 = 24;
    if (!v6)
    {
      v10 = 25;
    }

    v11 = 26;
    if (!v6)
    {
      v11 = 27;
    }

    if (v5 != 7)
    {
      v11 = 0;
    }

    if (v5 != 6)
    {
      v10 = v11;
    }

    v12 = v5 <= 7;
  }

  if (v12)
  {
    v15 = v10;
  }

  else
  {
    v15 = v7;
  }

  return v15;
}

- (void)playButtonTileWasTapped:(id)a3
{
  v4 = a3;
  v19 = 0;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  v5 = [(PXPhotosDetailsAssetsWidget *)self _tilingController];
  v6 = v5;
  if (v5)
  {
    [v5 tileIdentifierForTile:v4];
  }

  else
  {
    v19 = 0;
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v14 = 0u;
  }

  v7 = [(PXPhotosDetailsAssetsWidget *)self _dataSourceManager];
  v8 = [v7 dataSource];
  v9 = [v8 identifier];

  if ((v14 - 3) <= 2 && v15 != 0x7FFFFFFFFFFFFFFFLL && v15 == v9)
  {
    v10 = [(PXPhotosDetailsAssetsWidget *)self _dataSourceManager];
    v11 = [v10 dataSource];
    v13[0] = v15;
    v13[1] = v16;
    v12 = [v11 assetReferenceAtItemIndexPath:v13];

    if (v12)
    {
      [(PXPhotosDetailsAssetsWidget *)self _handleTapOnAssetReference:v12 autoPlayVideo:1 activity:0];
    }
  }
}

- (void)_handleTapOnFocusedAssetReferenceWithActivity:(unint64_t)a3
{
  v5 = [(PXPhotosDetailsAssetsWidget *)self _focusedAssetReference];
  if (v5)
  {
    v6 = v5;
    [(PXPhotosDetailsAssetsWidget *)self _handleTapOnAssetReference:v5 autoPlayVideo:0 activity:a3];
    v5 = v6;
  }
}

- (void)_handleTapOnAssetReference:(id)a3 autoPlayVideo:(BOOL)a4 activity:(unint64_t)a5
{
  v6 = a4;
  v8 = a3;
  if ([(PXPhotosDetailsAssetsWidget *)self isSelecting])
  {
    v25 = 0u;
    v26 = 0u;
    if (v8)
    {
      [v8 indexPath];
    }

    v9 = [(PXPhotosDetailsAssetsWidget *)self _assetsScene];
    v10 = [v9 selectionManager];

    v11 = [v10 selectionSnapshot];
    v24[0] = v25;
    v24[1] = v26;
    v12 = [v11 isIndexPathSelected:v24];

    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __81__PXPhotosDetailsAssetsWidget__handleTapOnAssetReference_autoPlayVideo_activity___block_invoke;
    v20[3] = &__block_descriptor_65_e37_v16__0___PXMutableSelectionManager__8l;
    v21 = v25;
    v22 = v26;
    v23 = v12;
    [v10 performChanges:v20];
  }

  else
  {
    v13 = [(PXPhotosDetailsAssetsWidget *)self oneUpPresentation];
    if (([v13 isContextMenuInteractionActive] & 1) == 0)
    {
      WeakRetained = objc_loadWeakRetained(&self->_widgetOneUpDelegate);
      if (!WeakRetained || (v15 = WeakRetained, v16 = objc_loadWeakRetained(&self->_widgetOneUpDelegate), v17 = [v16 photosDetailsAssetWidget:self shouldPresentOneUpForAssetReference:v8], v16, v15, v17))
      {
        [(PXPhotosDetailsAssetsWidget *)self _setNavigatedAssetReference:v8 autoPlayVideo:v6];
        v18 = [(PXPhotosDetailsAssetsWidget *)self oneUpPresentation];
        v19[0] = MEMORY[0x1E69E9820];
        v19[1] = 3221225472;
        v19[2] = __81__PXPhotosDetailsAssetsWidget__handleTapOnAssetReference_autoPlayVideo_activity___block_invoke_2;
        v19[3] = &__block_descriptor_40_e44_v16__0___PXOneUpPresentationConfiguration__8l;
        v19[4] = a5;
        [v18 startWithConfigurationHandler:v19];
      }
    }
  }
}

void __81__PXPhotosDetailsAssetsWidget__handleTapOnAssetReference_autoPlayVideo_activity___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 dataSource];
  v5 = [v4 identifier];
  v6 = *(a1 + 32);

  if (v5 == v6)
  {
    v7 = *(a1 + 64);
    v8 = *(a1 + 48);
    v9[0] = *(a1 + 32);
    v9[1] = v8;
    [v3 setSelectedState:(v7 & 1) == 0 forIndexPath:v9];
  }
}

- (void)presentOneUpForAssetReference:(id)a3 animated:(BOOL)a4
{
  v6 = a3;
  if ([(PXPhotosDetailsAssetsWidget *)self _curate])
  {
    [(PXPhotosDetailsAssetsWidget *)self _toggleCuration];
  }

  v17 = 0u;
  v18 = 0u;
  v7 = [(PXPhotosDetailsAssetsWidget *)self _dataSourceManager];
  v8 = [v7 dataSource];
  v9 = v8;
  if (v8)
  {
    [v8 indexPathForAssetReference:v6];
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
  }

  if (v17 != *off_1E7721F68)
  {
    WeakRetained = objc_loadWeakRetained(&self->_widgetOneUpDelegate);
    if (!WeakRetained || (v11 = WeakRetained, v12 = objc_loadWeakRetained(&self->_widgetOneUpDelegate), v13 = [v12 photosDetailsAssetWidget:self shouldPresentOneUpForAssetReference:v6], v12, v11, v13))
    {
      [(PXPhotosDetailsAssetsWidget *)self _setNavigatedAssetReference:v6 autoPlayVideo:0];
      v14 = [(PXPhotosDetailsAssetsWidget *)self oneUpPresentation];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __70__PXPhotosDetailsAssetsWidget_presentOneUpForAssetReference_animated___block_invoke;
      v15[3] = &__block_descriptor_33_e44_v16__0___PXOneUpPresentationConfiguration__8l;
      v16 = a4;
      [v14 startWithConfigurationHandler:v15];
    }
  }
}

- (void)handleTouch:(id)a3
{
  v13 = a3;
  v4 = [v13 state];
  v5 = [(PXPhotosDetailsAssetsWidget *)self widgetDelegate];
  v6 = [v5 widgetScrollViewControllerHostingWidget:self];

  v7 = [v6 scrollView];
  v8 = v7;
  if ((v4 - 3) >= 3)
  {
    if (v4 == 1 && ([v7 isDragging] & 1) == 0 && !-[PXPhotosDetailsAssetsWidget _canDragOut](self, "_canDragOut"))
    {
      v9 = [(PXPhotosDetailsAssetsWidget *)self _assetsScene];
      v10 = [v9 scrollViewController];
      v11 = [v10 contentCoordinateSpace];

      [v13 px_locationInCoordinateSpace:v11];
      v12 = [PXPhotosDetailsAssetsWidget _assetReferenceAtPoint:"_assetReferenceAtPoint:padding:" padding:?];
      [(PXPhotosDetailsAssetsWidget *)self _setHighlightedAssetReference:v12];
    }
  }

  else
  {
    [(PXPhotosDetailsAssetsWidget *)self _setHighlightedAssetReference:0];
  }
}

- (void)handlePinch:(id)a3
{
  v19 = a3;
  v4 = [(PXPhotosDetailsAssetsWidget *)self oneUpPresentation];
  v5 = [v4 handlePresentingPinchGestureRecognizer:v19];

  if ((v5 & 1) == 0 && !-[PXPhotosDetailsAssetsWidget isSelecting](self, "isSelecting") && ([v19 state] == 1 || objc_msgSend(v19, "state") == 2))
  {
    v6 = [(PXPhotosDetailsAssetsWidget *)self _assetsScene];
    v7 = [v6 scrollViewController];
    v8 = [v7 contentCoordinateSpace];
    [v19 px_locationInCoordinateSpace:v8];
    v10 = v9;
    v12 = v11;

    v13 = [(PXPhotosDetailsAssetsWidget *)self _assetReferenceAtPoint:v10 padding:v12, *off_1E7721FA0, *(off_1E7721FA0 + 1), *(off_1E7721FA0 + 2), *(off_1E7721FA0 + 3)];
    if (v13)
    {
      WeakRetained = objc_loadWeakRetained(&self->_widgetOneUpDelegate);
      if (!WeakRetained || (v15 = WeakRetained, v16 = objc_loadWeakRetained(&self->_widgetOneUpDelegate), v17 = [v16 photosDetailsAssetWidget:self shouldPresentOneUpForAssetReference:v13], v16, v15, v17))
      {
        [(PXPhotosDetailsAssetsWidget *)self _setNavigatedAssetReference:v13 autoPlayVideo:0];
        v18 = [(PXPhotosDetailsAssetsWidget *)self oneUpPresentation];
        [v18 startWithConfigurationHandler:&__block_literal_global_380];
      }
    }
  }
}

- (void)handleTap:(id)a3
{
  v13 = a3;
  v4 = [(PXPhotosDetailsAssetsWidget *)self dragSession];

  if ([v13 state] == 3 && !v4)
  {
    v5 = [(PXPhotosDetailsAssetsWidget *)self _assetsScene];
    v6 = [v5 scrollViewController];
    v7 = [v6 contentCoordinateSpace];
    [v13 px_locationInCoordinateSpace:v7];
    v9 = v8;
    v11 = v10;

    v12 = [(PXPhotosDetailsAssetsWidget *)self _assetReferenceAtPoint:v9 padding:v11, *off_1E7721FA0, *(off_1E7721FA0 + 1), *(off_1E7721FA0 + 2), *(off_1E7721FA0 + 3)];
    if (v12)
    {
      [(PXPhotosDetailsAssetsWidget *)self _handleTapOnAssetReference:v12 autoPlayVideo:0 activity:0];
    }
  }
}

- (id)tilingController:(id)a3 transitionAnimationCoordinatorForChange:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(PXPhotosDetailsAssetsWidget *)self _transitionWithoutAnimation])
  {
    v8 = 0;
  }

  else
  {
    v9 = [v7 fromLayout];
    v10 = [v9 dataSource];

    v11 = [v7 toLayout];
    v12 = [v11 dataSource];

    v13 = [v10 photosDataSource];
    v14 = [v13 wantsCurationForFirstAssetCollection];

    v15 = [v12 photosDataSource];
    v16 = [v15 wantsCurationForFirstAssetCollection];

    if (v10 == v12 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || v14 == v16 || (-[PXPhotosDetailsAssetsWidget _dataSourceManager](self, "_dataSourceManager"), v17 = objc_claimAutoreleasedReturnValue(), [v17 changeHistory], v18 = objc_claimAutoreleasedReturnValue(), +[PXAssetsTileTransitionCoordinator transitionCoordinatorForChange:changeHistory:](PXAssetsTileTransitionCoordinator, "transitionCoordinatorForChange:changeHistory:", v7, v18), v8 = objc_claimAutoreleasedReturnValue(), v18, v17, objc_msgSend(v8, "setTreatRemovalsAsDeletes:", 0), !v8))
    {
      v19 = [(PXPhotosDetailsAssetsWidget *)self _assetsScene];
      v8 = [v19 tilingController:v6 transitionAnimationCoordinatorForChange:v7];
    }
  }

  return v8;
}

- (id)tilingController:(id)a3 tileIdentifierConverterForChange:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PXPhotosDetailsAssetsWidget *)self _assetsScene];
  v9 = [v8 tilingController:v7 tileIdentifierConverterForChange:v6];

  return v9;
}

- (CGPoint)tilingController:(id)a3 targetVisibleOriginForLayout:(id)a4 proposedVisibleOrigin:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  v9 = a4;
  v10 = a3;
  v11 = [(PXPhotosDetailsAssetsWidget *)self _assetsScene];
  [v11 tilingController:v10 targetVisibleOriginForLayout:v9 proposedVisibleOrigin:{x, y}];
  v13 = v12;
  v15 = v14;

  v16 = v13;
  v17 = v15;
  result.y = v17;
  result.x = v16;
  return result;
}

- (CGPoint)tilingController:(id)a3 initialVisibleOriginForLayout:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(PXPhotosDetailsAssetsWidget *)self _currentDataSourceStressTest];
  v10 = [v9 isRunning];

  if (!v10)
  {
    v30 = a2;
    v15 = [v7 currentLayout];
    v16 = v8;
    v17 = [v15 dataSource];
    v18 = [v16 dataSource];
    v19 = [v17 photosDataSource];
    v20 = [v19 wantsCurationForFirstAssetCollection];

    v21 = [v18 photosDataSource];
    v22 = [v21 wantsCurationForFirstAssetCollection];

    v23 = [v17 photosDataSource];
    v32 = [v23 sortDescriptors];

    v24 = [v18 photosDataSource];
    v31 = [v24 sortDescriptors];

    if (v17 == v18 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || v20 == v22 && (v32 == v31 || ([v32 isEqual:v31] & 1) != 0))
    {
      [(PXPhotosDetailsAssetsWidget *)self _visibleOriginScrollTarget];
      PXPointIsNull();
    }

    v27 = [(PXPhotosDetailsAssetsWidget *)self widgetDelegate];
    v28 = [v27 widgetDefaultContentViewAnchoringTypeForDisclosureHeightChange:self];

    if (v28)
    {
      [v15 contentBounds];
      CGRectGetMinX(v34);
      [v15 contentBounds];
      PXRectEdgeValue();
    }

    v29 = [MEMORY[0x1E696AAA8] currentHandler];
    [v29 handleFailureInMethod:v30 object:self file:@"PXPhotosDetailsAssetsWidget.m" lineNumber:1444 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  [v8 contentBounds];
  v12 = v11;
  v14 = v13 + -100.0;

  v25 = v12;
  v26 = v14;
  result.y = v26;
  result.x = v25;
  return result;
}

- (void)checkInTile:(void *)a3 withIdentifier:(PXTileIdentifier *)a4
{
  v7 = [(PXPhotosDetailsAssetsWidget *)self _inlinePlaybackController];
  v8 = *&a4->index[5];
  v18 = *&a4->index[3];
  v19 = v8;
  v20 = *&a4->index[7];
  v21 = a4->index[9];
  v9 = *&a4->index[1];
  v16 = *&a4->length;
  v17 = v9;
  [v7 checkInTile:a3 withIdentifier:&v16];

  v10 = [(PXPhotosDetailsAssetsWidget *)self _assetsScene];
  v11 = *&a4->index[5];
  v18 = *&a4->index[3];
  v19 = v11;
  v20 = *&a4->index[7];
  v21 = a4->index[9];
  v12 = *&a4->index[1];
  v16 = *&a4->length;
  v17 = v12;
  if ([v10 providesTileForIdentifier:&v16])
  {
    v13 = *&a4->index[5];
    v18 = *&a4->index[3];
    v19 = v13;
    v20 = *&a4->index[7];
    v21 = a4->index[9];
    v14 = *&a4->index[1];
    v16 = *&a4->length;
    v17 = v14;
    [v10 checkInTile:a3 withIdentifier:&v16];
  }

  else
  {
    v15 = [v10 viewTileReusePool];
    [v15 checkInReusableObject:a3];

    [(NSMutableSet *)self->_tilesInUse removeObject:a3];
  }
}

- (void)checkOutTileForIdentifier:(PXTileIdentifier *)a3 layout:(id)a4
{
  v7 = a4;
  v8 = [(PXPhotosDetailsAssetsWidget *)self _assetsScene];
  v9 = *&a3->index[5];
  v27 = *&a3->index[3];
  v28 = v9;
  v29 = *&a3->index[7];
  v30 = a3->index[9];
  v10 = *&a3->index[1];
  v25 = *&a3->length;
  v26 = v10;
  if (![v8 providesTileForIdentifier:&v25])
  {
    if (a3->length == 1)
    {
      v14 = a3->index[0];
      if (v14 == 32100)
      {
        v15 = 1500;
      }

      else
      {
        if (v14 != 32101)
        {
          goto LABEL_15;
        }

        v15 = 1501;
      }

      v16 = [v8 viewTileReusePool];
      v13 = [v16 checkOutReusableObjectWithReuseIdentifier:v15];

      [(NSMutableSet *)self->_tilesInUse addObject:v13];
      if (v13)
      {
        goto LABEL_16;
      }
    }

LABEL_15:
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    v18 = *&a3->index[5];
    v27 = *&a3->index[3];
    v28 = v18;
    v29 = *&a3->index[7];
    v30 = a3->index[9];
    v19 = *&a3->index[1];
    v25 = *&a3->length;
    v26 = v19;
    v20 = PXTileIdentifierDescription(&v25);
    [v17 handleFailureInMethod:a2 object:self file:@"PXPhotosDetailsAssetsWidget.m" lineNumber:1399 description:{@"%@ couldn't check out tile for identifier:%@, layout:%@", self, v20, v7}];

    v13 = 0;
    goto LABEL_16;
  }

  v11 = *&a3->index[5];
  v27 = *&a3->index[3];
  v28 = v11;
  v29 = *&a3->index[7];
  v30 = a3->index[9];
  v12 = *&a3->index[1];
  v25 = *&a3->length;
  v26 = v12;
  v13 = [v8 checkOutTileForIdentifier:&v25 layout:v7];
  if (a3->length - 3 <= 2 && a3->index[1] != 0x7FFFFFFFFFFFFFFFLL && a3->index[0] == 6332437)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v13 setDelegate:self];
    }
  }

  if (!v13)
  {
    goto LABEL_15;
  }

LABEL_16:
  v21 = [(PXPhotosDetailsAssetsWidget *)self _inlinePlaybackController];
  v22 = *&a3->index[5];
  v27 = *&a3->index[3];
  v28 = v22;
  v29 = *&a3->index[7];
  v30 = a3->index[9];
  v23 = *&a3->index[1];
  v25 = *&a3->length;
  v26 = v23;
  [v21 checkOutTile:v13 withIdentifier:&v25];

  return v13;
}

- (id)assetsScene:(id)a3 tileIdentifierConverterForChange:(id)a4
{
  v14[2] = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = a3;
  v7 = [v6 tilingController];
  v8 = [v6 tilingController:v7 tileIdentifierConverterForChange:v5];

  v9 = objc_alloc_init(_PXAssetsWidgetTileIdentifierConverter);
  v10 = [PXComposedTileIdentifierConverter alloc];
  v14[0] = v8;
  v14[1] = v9;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
  v12 = [(PXComposedTileIdentifierConverter *)v10 initWithTileIdentifierConverters:v11];

  return v12;
}

- (id)assetsScene:(id)a3 layoutForDataSource:(id)a4
{
  v44 = *MEMORY[0x1E69E9840];
  v6 = a4;
  [(PXPhotosDetailsAssetsWidget *)self _updateLayoutEngineIfNeeded];
  v7 = MEMORY[0x1E695DFA8];
  v8 = [(PXPhotosDetailsAssetsWidget *)self _hiddenAssetReferences];
  v9 = [v7 setWithCapacity:{objc_msgSend(v8, "count")}];

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v10 = [(PXPhotosDetailsAssetsWidget *)self _hiddenAssetReferences];
  v11 = [v10 countByEnumeratingWithState:&v39 objects:v43 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v40;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v40 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [v6 assetReferenceForAssetReference:*(*(&v39 + 1) + 8 * i)];
        if (v15)
        {
          [v9 addObject:v15];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v39 objects:v43 count:16];
    }

    while (v12);
  }

  [(PXPhotosDetailsAssetsWidget *)self _setHiddenAssetReferences:v9];
  v16 = [(PXPhotosDetailsAssetsWidget *)self _layoutEngine];
  v17 = [v16 dataSourceSnapshot];
  v18 = [v17 identifier];

  v19 = [(PXPhotosDetailsAssetsWidget *)self _dataSourceManager];
  v20 = [v19 changeHistory];
  v21 = [v20 changeDetailsFromDataSourceIdentifier:v18 toDataSourceIdentifier:{objc_msgSend(v6, "identifier")}];

  if ([v21 count] == 1)
  {
    v22 = [v21 firstObject];
  }

  else
  {
    v22 = 0;
  }

  v23 = [(PXPhotosDetailsAssetsWidget *)self _layoutEngine];
  v33 = MEMORY[0x1E69E9820];
  v34 = 3221225472;
  v35 = __63__PXPhotosDetailsAssetsWidget_assetsScene_layoutForDataSource___block_invoke;
  v36 = &unk_1E77440B8;
  v24 = v6;
  v37 = v24;
  v25 = v22;
  v38 = v25;
  v26 = [v23 performChangesAndWait:&v33];

  v27 = [(PXPhotosDetailsAssetsWidget *)self _createNewLayout];
  v28 = [v27 dataSource];
  v29 = [v28 isEqual:v24];

  if ((v29 & 1) == 0)
  {
    v31 = [MEMORY[0x1E696AAA8] currentHandler];
    v32 = [v27 dataSource];
    [v31 handleFailureInMethod:a2 object:self file:@"PXPhotosDetailsAssetsWidget.m" lineNumber:1354 description:{@"Should be getting a layout with the updated correct data source from the layout engine %@ != %@", v24, v32, v33, v34, v35, v36, v37}];
  }

  return v27;
}

- (void)assetsScene:(id)a3 didTransitionToDataSource:(id)a4
{
  v5 = a4;
  [(PXPhotosDetailsAssetsWidget *)self _updateHasLoadedContentData];
  [(PXPhotosDetailsAssetsWidget *)self _updateShowCurationButton];
  [(PXPhotosDetailsAssetsWidget *)self _updateFocusedAssetReference];
  [(PXPhotosDetailsAssetsWidget *)self _updateDraggingAssetReferencesWithDataSource:v5];

  [(PXPhotosDetailsAssetsWidget *)self _logAssetCountsIfNecessary];
  v6 = [(PXPhotosDetailsAssetsWidget *)self widgetDelegate];
  [v6 widget:self animateChanges:0 withAnimationOptions:0];

  objc_initWeak(&location, self);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __69__PXPhotosDetailsAssetsWidget_assetsScene_didTransitionToDataSource___block_invoke;
  v7[3] = &unk_1E774C318;
  objc_copyWeak(&v8, &location);
  dispatch_async(MEMORY[0x1E69E96A0], v7);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __69__PXPhotosDetailsAssetsWidget_assetsScene_didTransitionToDataSource___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _fallBackByTogglingCurationIfNeeded];
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v6 = a4;
  v9 = a3;
  if (PXSpecManagerObservationContext_146128 != a5)
  {
    if (PXStressTestObservationContext != a5)
    {
      if (PXPhotosDetailsContextObservationContext_146129 != a5)
      {
        v10 = [MEMORY[0x1E696AAA8] currentHandler];
        [v10 handleFailureInMethod:a2 object:self file:@"PXPhotosDetailsAssetsWidget.m" lineNumber:1303 description:@"unknown observation context"];
LABEL_22:

        goto LABEL_23;
      }

      if ((v6 & 0x30) != 0)
      {
        v11 = [(PXPhotosDetailsAssetsWidget *)self widgetDelegate];
        [v11 widgetLocalizedTitleDidChange:self];
      }

      if ((v6 & 8) != 0)
      {
        v12 = PLPeopleGetLog();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *v19 = 0;
          _os_log_impl(&dword_1A3C1C000, v12, OS_LOG_TYPE_DEFAULT, "PXPhotosDetailsAssetsWidget: People changed, will refresh Data Source", v19, 2u);
        }

        v10 = [(PXPhotosDetailsAssetsWidget *)self _photosDataSource];
        v13 = objc_opt_class();
        v14 = [(PXPhotosDetailsAssetsWidget *)self context];
        v15 = [v14 people];
        [v13 _refreshSortDescriptorsInPhotosDataSource:v10 withPeople:v15];

        v16 = [v10 firstAssetCollection];
        if (v16)
        {
          [v10 setWantsCuration:-[PXPhotosDetailsAssetsWidget _curate](self forAssetCollection:{"_curate"), v16}];
        }

        goto LABEL_22;
      }

      goto LABEL_23;
    }

    if (v6)
    {
      v17 = [(PXPhotosDetailsAssetsWidget *)self widgetDelegate];
      [v17 widgetLocalizedSubtitleDidChange:self];

      if ((v6 & 2) == 0)
      {
LABEL_9:
        if ((v6 & 4) == 0)
        {
          goto LABEL_23;
        }

        goto LABEL_21;
      }
    }

    else if ((v6 & 2) == 0)
    {
      goto LABEL_9;
    }

    v18 = [(PXPhotosDetailsAssetsWidget *)self _assetsScene];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __60__PXPhotosDetailsAssetsWidget_observable_didChange_context___block_invoke;
    v20[3] = &unk_1E774C648;
    v20[4] = self;
    [v18 performChanges:v20];

    if ((v6 & 4) == 0)
    {
      goto LABEL_23;
    }

LABEL_21:
    v10 = [(PXPhotosDetailsAssetsWidget *)self widgetDelegate];
    [v10 widgetLocalizedTitleDidChange:self];
    goto LABEL_22;
  }

  if (v6)
  {
    [(PXPhotosDetailsAssetsWidget *)self _invalidateLayoutGenerator];
    [(PXPhotosDetailsAssetsWidget *)self _updateLayoutEngineIfNeeded];
    [(PXPhotosDetailsAssetsWidget *)self _updateTilingLayoutIfNeeded];
    v10 = [(PXPhotosDetailsAssetsWidget *)self widgetDelegate];
    [v10 widgetInvalidateContentLayoutStyle:self];
    goto LABEL_22;
  }

LABEL_23:
}

void __60__PXPhotosDetailsAssetsWidget_observable_didChange_context___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) _dataSourceManager];
  v2 = [*(a1 + 32) _currentDataSourceStressTest];
  v3 = [v2 dataSource];
  [v4 setPhotosDataSource:v3];
}

- (CGRect)engineDrivenLayout:(id)a3 contentsRectForItemAtIndexPath:(PXSimpleIndexPath *)a4 forAspectRatio:(double)a5
{
  v7 = [a3 dataSource];
  if ([v7 numberOfItemsInSection:a4->section] >> 3 > 0x270)
  {
    v13 = *off_1E77221F8;
    v15 = *(off_1E77221F8 + 1);
    v17 = *(off_1E77221F8 + 2);
    v19 = *(off_1E77221F8 + 3);
  }

  else
  {
    v8 = *&a4->item;
    v24 = *&a4->dataSourceIdentifier;
    v25 = v8;
    v9 = [v7 assetAtItemIndexPath:&v24];
    v10.f64[0] = NAN;
    v10.f64[1] = NAN;
    v24 = *&a4->dataSourceIdentifier;
    v25 = vnegq_f64(v10);
    v11 = [v7 assetCollectionAtSectionIndexPath:&v24];
    [v9 bestCropRectForAspectRatio:0 verticalContentMode:objc_msgSend(v11 cropMode:{"px_shouldUseFacesRectForSmartCropping"), a5}];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
  }

  v20 = v13;
  v21 = v15;
  v22 = v17;
  v23 = v19;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- (double)engineDrivenLayout:(id)a3 zPositionForItemAtIndexPath:(PXSimpleIndexPath *)a4
{
  v5 = a3;
  v6 = [v5 dataSource];
  v7 = [v6 photosDataSource];

  v8 = *&a4->item;
  v17 = *&a4->dataSourceIdentifier;
  v18 = v8;
  if ([v7 isAssetAtIndexPathPartOfCuratedSet:&v17])
  {
    v9 = 1000000.0;
  }

  else
  {
    v9 = 0.0;
  }

  item = a4->item;
  v11 = (100 * item);
  if (v5)
  {
    [v5 focusedIndexPath];
    item = a4->item;
    v12 = *(&v17 + 1);
    v13 = v17;
    v14 = v18;
  }

  else
  {
    v14 = 0;
    v12 = 0;
    v13 = 0;
    v17 = 0u;
    v18 = 0u;
  }

  v15 = v9 + v11;
  if (a4->dataSourceIdentifier == v13 && a4->section == v12 && item == v14 && a4->subitem == *(&v18 + 1))
  {
    v15 = v15 + 2000000.0;
  }

  return v15;
}

- (double)engineDrivenLayout:(id)a3 aspectRatioForItemAtIndexPath:(PXSimpleIndexPath *)a4
{
  v5 = [a3 dataSource];
  v6 = [v5 photosDataSource];
  v7 = *&a4->item;
  v12[0] = *&a4->dataSourceIdentifier;
  v12[1] = v7;
  v8 = [v6 assetAtSimpleIndexPath:v12];

  [v8 aspectRatio];
  v10 = v9;

  return v10;
}

- (void)commitPreviewViewController:(id)a3
{
  v4 = a3;
  v5 = [(PXPhotosDetailsAssetsWidget *)self oneUpPresentation];
  [v5 commitPreviewViewController:v4];
}

- (void)didDismissPreviewViewController:(id)a3 committing:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(PXPhotosDetailsAssetsWidget *)self oneUpPresentation];
  [v7 didDismissPreviewViewController:v6 committing:v4];
}

- (id)genericPreviewViewController
{
  v3 = [(PXPhotosDetailsAssetsWidget *)self context];
  v4 = [v3 viewModel];

  v5 = [v4 selectionManager];
  v6 = [v5 selectionSnapshot];

  if ([v6 isAnyItemSelected])
  {
    v13 = 0u;
    v14 = 0u;
    if (v6)
    {
      [v6 firstSelectedIndexPath];
    }

    v7 = [v6 dataSource];
    v12[0] = v13;
    v12[1] = v14;
    v8 = [v7 objectReferenceAtIndexPath:v12];

    [(PXPhotosDetailsAssetsWidget *)self _setNavigatedAssetReference:v8 autoPlayVideo:0];
    v9 = [(PXPhotosDetailsAssetsWidget *)self oneUpPresentation];
    v10 = [v9 previewViewControllerAllowingActions:1];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)previewViewControllerAtLocation:(CGPoint)a3 fromSourceView:(id)a4
{
  v5 = [(PXPhotosDetailsAssetsWidget *)self _assetReferenceAtPoint:a4 padding:a3.x, a3.y, *off_1E7721FA8, *(off_1E7721FA8 + 1), *(off_1E7721FA8 + 2), *(off_1E7721FA8 + 3)];
  if (v5)
  {
    [(PXPhotosDetailsAssetsWidget *)self _setNavigatedAssetReference:v5 autoPlayVideo:0];
    v6 = [(PXPhotosDetailsAssetsWidget *)self oneUpPresentation];
    v7 = [v6 previewViewControllerAllowingActions:1];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)imageViewBasicTileForPreviewingAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(PXPhotosDetailsAssetsWidget *)self _assetsScene];
  v7 = [v6 scrollViewController];

  v8 = [v7 scrollView];
  v9 = [v7 contentCoordinateSpace];
  [v9 convertPoint:v8 fromCoordinateSpace:{x, y}];
  v42 = 0u;
  v43 = 0u;
  [PXPhotosDetailsAssetsWidget _assetIndexPathAtLocation:"_assetIndexPathAtLocation:padding:" padding:?];
  if (*off_1E7721F68)
  {
    v11 = [(PXPhotosDetailsAssetsWidget *)self _assetsScene];
    v12 = [v11 tilingController];

    v13 = [v12 currentLayout];
    v14 = v42;
    v15 = v43;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    memset(&v31, 0, sizeof(v31));
    v25 = xmmword_1A5380D20;
    v26 = v42;
    v27 = v43;
    v28 = 0u;
    v29 = 0u;
    v30 = 0;
    if ([v13 getGeometry:&v31 group:0 userData:0 forTileWithIdentifier:&v25] && (objc_msgSend(v13, "visibleRect"), v45.origin.x = v16, v45.origin.y = v17, v45.size.width = v18, v45.size.height = v19, CGRectIntersectsRect(v31, v45)))
    {
      v24 = 0;
      v20 = [(PXPhotosDetailsAssetsWidget *)self _assetsScene];
      v21 = [v20 tilingController];
      v25 = xmmword_1A5380D20;
      v26 = v14;
      v27 = v15;
      v28 = 0u;
      v29 = 0u;
      v30 = 0;
      v22 = [v21 getTile:&v24 geometry:0 group:0 userData:0 forTileWithIdentifier:&v25];

      v10 = 0;
      if (v22)
      {
        v10 = v24;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)bestCursorTileForLiftingAtPoint:(CGPoint)a3 inCoordinateSpace:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = [(PXPhotosDetailsAssetsWidget *)self _assetsScene];
  v8 = [v7 tilingController];

  v25 = 0;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v20 = 0u;
  if (v8 && ([v8 hitTestTileAtPoint:&__block_literal_global_360_146134 padding:x passingTest:{y, *off_1E7721FA8, *(off_1E7721FA8 + 1), *(off_1E7721FA8 + 2), *(off_1E7721FA8 + 3)}], v20))
  {
    v9 = [v8 currentLayout];
    memset(v19, 0, sizeof(v19));
    v15 = v22;
    v16 = v23;
    v17 = v24;
    v18 = v25;
    v13 = v20;
    v14 = v21;
    v10 = 0;
    if ([v9 getGeometry:v19 group:0 userData:0 forTileWithIdentifier:&v13])
    {
      v12 = 0;
      v15 = v22;
      v16 = v23;
      v17 = v24;
      v18 = v25;
      v13 = v20;
      v14 = v21;
      v10 = 0;
      if ([v8 getTile:&v12 geometry:0 group:0 userData:0 forTileWithIdentifier:&v13])
      {
        v10 = v12;
      }
    }
  }

  else
  {
    v10 = [(PXPhotosDetailsAssetsWidget *)self imageViewBasicTileForPreviewingAtPoint:x, y];
  }

  return v10;
}

- (PXAssetActionManager)assetActionManager
{
  v3 = [(PXPhotosDetailsAssetsWidget *)self _focusedAssetReference];
  v4 = [(PXPhotosDetailsAssetsWidget *)self _assetActionManagerForAssetsReference:v3];

  return v4;
}

- (void)contentViewDidDisappear
{
  v3 = [(PXPhotosDetailsAssetsWidget *)self _assetsScene];
  [v3 setAnimatesContent:0];

  v4 = [(PXPhotosDetailsAssetsWidget *)self _inlinePlaybackController];
  [v4 setIsContentViewVisible:0];

  v5 = [(PXPhotosDetailsAssetsWidget *)self eventTracker];
  [v5 logContentViewDidDisappear];
}

- (void)contentViewWillAppear
{
  v3 = [(PXPhotosDetailsAssetsWidget *)self _assetsScene];
  [v3 setAnimatesContent:1];

  v4 = [(PXPhotosDetailsAssetsWidget *)self _inlinePlaybackController];
  [v4 setIsContentViewVisible:1];

  v5 = [(PXPhotosDetailsAssetsWidget *)self eventTracker];
  [v5 logContentViewWillAppear];
}

- (void)_setHasLoadedContentData:(BOOL)a3
{
  if (self->_hasLoadedContentData != a3)
  {
    self->_hasLoadedContentData = a3;
    v5 = [(PXPhotosDetailsAssetsWidget *)self widgetDelegate];
    [v5 widgetHasLoadedContentDataDidChange:self];
  }
}

- (void)setSelecting:(BOOL)a3
{
  if (self->_selecting != a3)
  {
    self->_selecting = a3;
    if (!a3)
    {
      v5 = [(PXPhotosDetailsAssetsWidget *)self _assetsScene];
      v6 = [v5 selectionManager];
      [v6 performChanges:&__block_literal_global_358];
    }

    v7 = [(PXPhotosDetailsAssetsWidget *)self _inlinePlaybackController];
    [v7 updatePlaybackEnabled];

    [(PXPhotosDetailsAssetsWidget *)self _updateShowCurationButton];
    v8 = [(PXPhotosDetailsAssetsWidget *)self widgetDelegate];
    [v8 widgetLocalizedSubtitleDidChange:self];

    v9 = [(PXPhotosDetailsAssetsWidget *)self widgetDelegate];
    [v9 widgetLocalizedDisclosureTitleDidChange:self];
  }
}

- (void)userDidSelectSubtitle
{
  v3 = +[PXPhotosDetailsSettings sharedInstance];
  v4 = [v3 allowEditorialLayoutStressTest];

  if (v4)
  {
    v5 = [(PXPhotosDetailsAssetsWidget *)self _currentDataSourceStressTest];
    if (!v5)
    {
      v6 = objc_alloc_init(PXPhotosDataSourceStressTest);
      [(PXPhotosDataSourceStressTest *)v6 setMaximumAssetCount:6];
      [(PXPhotosDetailsAssetsWidget *)self _setCurrentDataSourceStressTest:v6];
      v5 = v6;
    }

    v7 = v5;
    [v5 setRunning:{objc_msgSend(v5, "isRunning") ^ 1}];
  }

  else
  {

    [(PXPhotosDetailsAssetsWidget *)self _userDidSelectCurationButton];
  }
}

- (void)_toggleCuration
{
  v3 = ![(PXPhotosDetailsAssetsWidget *)self _curate];
  v4 = [(PXPhotosDetailsAssetsWidget *)self _assetsScene];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __46__PXPhotosDetailsAssetsWidget__toggleCuration__block_invoke;
  v5[3] = &unk_1E7749428;
  v5[4] = self;
  v6 = v3;
  [v4 performChanges:v5];
}

uint64_t __46__PXPhotosDetailsAssetsWidget__toggleCuration__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _curate];
  if (*(a1 + 40) != result)
  {
    [*(a1 + 32) _logAssetCountsIfNecessary];
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);

    return [v3 _setCurate:v4];
  }

  return result;
}

- (void)_userDidSelectCurationButton
{
  [(PXPhotosDetailsAssetsWidget *)self _toggleCuration];
  if ([(PXPhotosDetailsAssetsWidget *)self _curate])
  {
    v3 = @"com.apple.photos.CPAnalytics.photosDetailsSummaryButtonSelected";
  }

  else
  {
    v3 = @"com.apple.photos.CPAnalytics.photosDetailsShowMoreButtonSelected";
  }

  v4 = MEMORY[0x1E695E0F8];
  v5 = MEMORY[0x1E6991F28];

  [v5 sendEvent:v3 withPayload:v4];
}

- (NSString)localizedSubtitle
{
  if ([(PXPhotosDetailsAssetsWidget *)self _showCurationButton])
  {
    v3 = [(PXPhotosDetailsAssetsWidget *)self _curationButtonTitle];
    goto LABEL_9;
  }

  v4 = [(PXPhotosDetailsAssetsWidget *)self _specManager];
  v5 = [v4 spec];

  v6 = [(PXPhotosDetailsAssetsWidget *)self context];
  if ([v6 shouldShowMovieHeader])
  {

LABEL_7:
    v3 = 0;
    goto LABEL_8;
  }

  v7 = [v5 shouldShowTitle];

  if (!v7)
  {
    goto LABEL_7;
  }

  v3 = [(PXPhotosDetailsAssetsWidget *)self _subtitle];
LABEL_8:

LABEL_9:
  v8 = +[PXPhotosDetailsSettings sharedInstance];
  v9 = [v8 allowEditorialLayoutStressTest];

  if (v9)
  {
    v10 = [(PXPhotosDetailsAssetsWidget *)self _currentDataSourceStressTest];
    v11 = [v10 isRunning];
    v12 = @"Start Test";
    if (v11)
    {
      v12 = @"Pause Test";
    }

    v13 = v12;

    v3 = v13;
  }

  return v3;
}

- (NSString)localizedTitle
{
  v3 = [(PXPhotosDetailsAssetsWidget *)self _specManager];
  v4 = [v3 spec];

  if (![v4 shouldShowTitle])
  {
    goto LABEL_15;
  }

  v5 = [(PXPhotosDetailsAssetsWidget *)self context];
  v6 = [v5 shouldShowHeaderTitle];

  if (!v6)
  {
    goto LABEL_15;
  }

  v7 = [(PXPhotosDetailsAssetsWidget *)self context];
  if ([v7 shouldShowMovieHeader])
  {
    v8 = [v4 userInterfaceIdiom];

    if (v8 == 3)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  v9 = [(PXPhotosDetailsAssetsWidget *)self context];
  v10 = [v9 shouldShowMovieHeader];

  if (v10)
  {
    v11 = +[PXPhotosDetailsSettings sharedInstance];
    v12 = [v11 allowEditorialLayoutStressTest];

    if (!v12)
    {
LABEL_15:
      v13 = 0;
      goto LABEL_16;
    }

    v13 = PXLocalizedStringFromTable(@"PXPhotosDetailsAssetsWidgetTitle", @"PhotosUICore");
    v14 = [(PXPhotosDetailsAssetsWidget *)self _currentDataSourceStressTest];
    v15 = v14;
    if (v14)
    {
      if (v13)
      {
        v16 = v13;
      }

      else
      {
        v16 = @"Photos";
      }

      v17 = -[__CFString stringByAppendingFormat:](v16, "stringByAppendingFormat:", @" (#%lu)", [v14 dataSourceIndex]);

      v13 = v17;
    }
  }

  else
  {
    v13 = [(PXPhotosDetailsAssetsWidget *)self _title];
  }

LABEL_16:

  return v13;
}

- (id)_curationButtonTitle
{
  if ([(PXPhotosDetailsAssetsWidget *)self _curate])
  {
    v2 = @"PXPhotosDetailsAssetsWidgetShowMoreButton";
  }

  else
  {
    v2 = @"PXPhotosDetailsAssetsWidgetShowSummaryButton";
  }

  v3 = PXLocalizedStringFromTable(v2, @"PhotosUICore");

  return v3;
}

- (id)_subtitle
{
  v2 = [(PXPhotosDetailsAssetsWidget *)self context];
  v3 = [v2 localizedSubtitle];

  return v3;
}

- (id)_title
{
  v2 = [(PXPhotosDetailsAssetsWidget *)self context];
  v3 = [v2 localizedTitle];

  v4 = [off_1E77217B8 defaultHelper];
  v5 = [v4 displayableTextForTitle:v3 intent:1];

  return v5;
}

- (int64_t)contentLayoutStyle
{
  v2 = [(PXPhotosDetailsAssetsWidget *)self _specManager];
  v3 = [v2 spec];

  v4 = [v3 shouldInsetAllPhotoDetailsContent] ^ 1;
  return v4;
}

- (PXTilingController)contentTilingController
{
  [(PXPhotosDetailsAssetsWidget *)self _loadTilingController];

  return [(PXPhotosDetailsAssetsWidget *)self _tilingController];
}

- (void)loadContentData
{
  v3 = [MEMORY[0x1E695DF00] date];
  loadStartDate = self->_loadStartDate;
  self->_loadStartDate = v3;

  v5 = [(PXPhotosDetailsAssetsWidget *)self _photosDataSource];
  [v5 startBackgroundFetchIfNeeded];
}

- (id)_extendedTraitCollection
{
  v3 = [(PXPhotosDetailsAssetsWidget *)self widgetDelegate];
  v4 = [v3 widgetViewControllerHostingWidget:self];

  v5 = [v4 px_extendedTraitCollection];

  return v5;
}

- (void)_setPhotosDataSource:(id)a3
{
  v17 = a3;
  v5 = [(PXPhotosDataSource *)self->__photosDataSource isEqual:v17];
  v6 = v17;
  if ((v5 & 1) == 0)
  {
    v7 = v17;
    if (!v17)
    {
      v16 = [MEMORY[0x1E696AAA8] currentHandler];
      [v16 handleFailureInMethod:a2 object:self file:@"PXPhotosDetailsAssetsWidget.m" lineNumber:862 description:{@"Invalid parameter not satisfying: %@", @"photosDataSource != nil"}];

      v7 = 0;
    }

    v8 = -[PXPhotosDataSource initWithPhotosDataSource:options:]([PXPhotosDataSource alloc], "initWithPhotosDataSource:options:", v17, [v7 options] | 0x10);
    v9 = objc_opt_class();
    v10 = [(PXPhotosDetailsAssetsWidget *)self context];
    v11 = [v10 people];
    [v9 _refreshSortDescriptorsInPhotosDataSource:v8 withPeople:v11];

    v12 = [(PXPhotosDataSource *)v8 firstAssetCollection];
    if (v12)
    {
      [(PXPhotosDataSource *)v8 setWantsCuration:[(PXPhotosDetailsAssetsWidget *)self _curate] forAssetCollection:v12];
      if ([(PXPhotosDataSource *)v8 isCuratedAssetsEmptyForAssetCollection:v12])
      {
        self->__curate = 0;
        [(PXPhotosDataSource *)v8 setWantsCuration:0 forAssetCollection:v12];
      }
    }

    else
    {
      self->__curate = 0;
    }

    photosDataSource = self->__photosDataSource;
    self->__photosDataSource = v8;
    v14 = v8;

    v15 = [(PXPhotosDetailsAssetsWidget *)self _dataSourceManager];
    [v15 setPhotosDataSource:v14];

    v6 = v17;
  }
}

- (void)_setLoadCoordinationToken:(id)a3
{
  v5 = a3;
  loadCoordinationToken = self->__loadCoordinationToken;
  if (loadCoordinationToken != v5)
  {
    v7 = v5;
    [(PXPhotosDetailsLoadCoordinationToken *)loadCoordinationToken complete];
    objc_storeStrong(&self->__loadCoordinationToken, a3);
    v5 = v7;
  }
}

- (PXSectionedSelectionManager)selectionManager
{
  if (!self->_selectionManager)
  {
    v3 = [(PXPhotosDetailsAssetsWidget *)self dataSourceManager];

    if (v3)
    {
      v4 = [off_1E77218C8 alloc];
      v5 = [(PXPhotosDetailsAssetsWidget *)self dataSourceManager];
      v6 = [v4 initWithDataSourceManager:v5];
      selectionManager = self->_selectionManager;
      self->_selectionManager = v6;
    }
  }

  v8 = self->_selectionManager;

  return v8;
}

- (id)dataSourceManager
{
  if (!self->_dataSourceManager)
  {
    v3 = [(PXPhotosDetailsAssetsWidget *)self _photosDataSource];

    if (v3)
    {
      v4 = [PXPhotoKitAssetsDataSourceManager alloc];
      v5 = [(PXPhotosDetailsAssetsWidget *)self _photosDataSource];
      v6 = [(PXPhotoKitAssetsDataSourceManager *)v4 initWithPhotosDataSource:v5];
      dataSourceManager = self->_dataSourceManager;
      self->_dataSourceManager = v6;
    }
  }

  v8 = self->_dataSourceManager;

  return v8;
}

- (void)setContext:(id)a3
{
  v5 = a3;
  context = self->_context;
  if (context != v5)
  {
    v10 = v5;
    [(PXPhotosDetailsContext *)context unregisterChangeObserver:self context:PXPhotosDetailsContextObservationContext_146129];
    objc_storeStrong(&self->_context, a3);
    [(PXPhotosDetailsContext *)self->_context registerChangeObserver:self context:PXPhotosDetailsContextObservationContext_146129];
    v7 = [PXPhotosDetailsLoadCoordinator loadCoordinatorForContext:v10];
    v8 = [v7 tokenForCuratedFetch];

    [(PXPhotosDetailsAssetsWidget *)self _setLoadCoordinationToken:v8];
    v9 = [(PXPhotosDetailsContext *)v10 photosDataSource];
    [(PXPhotosDetailsAssetsWidget *)self _setPhotosDataSource:v9];

    [(PXPhotosDetailsAssetsWidget *)self _updateShowCurationButton];
    v5 = v10;
  }
}

- (id)_assetActionManagerForAssetsReference:(id)a3
{
  v4 = a3;
  v5 = [(PXPhotosDetailsAssetsWidget *)self _assetsScene];
  v6 = [v5 dataSourceManager];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [(PXPhotosDetailsAssetsWidget *)self _assetsScene];
    v8 = [v7 dataSourceManager];
  }

  else
  {
    v8 = 0;
  }

  v9 = [(PXPhotosDetailsAssetsWidget *)self context];
  v10 = [v9 viewModel];

  v11 = [v10 selectionManager];
  if (([v10 isSelecting] & 1) == 0)
  {
    v20 = 0u;
    v21 = 0u;
    if (v4)
    {
      [v4 indexPath];
    }

    v19[0] = v20;
    v19[1] = v21;
    v12 = [off_1E7721768 indexPathSetWithIndexPath:v19];
    v13 = [[off_1E77218C8 alloc] initWithDataSourceManager:v8];

    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __69__PXPhotosDetailsAssetsWidget__assetActionManagerForAssetsReference___block_invoke;
    v17[3] = &unk_1E7744008;
    v18 = v12;
    v14 = v12;
    [v13 performChanges:v17];

    v11 = v13;
  }

  v15 = [[PXPhotoKitAssetActionManager alloc] initWithSelectionManager:v11];
  [(PXActionManager *)v15 setPerformerDelegate:self];

  return v15;
}

- (void)_fallBackByTogglingCurationIfNeeded
{
  v5 = [(PXPhotosDetailsAssetsWidget *)self _photosDataSource];
  v3 = [v5 firstAssetCollection];
  v4 = [v5 isCuratedAssetsEmptyForAssetCollection:v3];
  if ((v4 & 1) != 0 || ([v5 wantsCurationForAssetCollection:v3] & 1) == 0 && objc_msgSend(v5, "isEmpty"))
  {
    [(PXPhotosDetailsAssetsWidget *)self _setCurate:v4 ^ 1u];
  }
}

- (id)_regionOfInterestForAssetReference:(id)a3
{
  v4 = a3;
  v5 = *MEMORY[0x1E695F050];
  v6 = *(MEMORY[0x1E695F050] + 8);
  v7 = *(MEMORY[0x1E695F050] + 16);
  v8 = *(MEMORY[0x1E695F050] + 24);
  v9 = [(PXPhotosDetailsAssetsWidget *)self _assetsScene];
  v10 = [v9 tilingController];

  v11 = [v10 scrollController];
  [v11 updateIfNeeded];

  v72 = 0u;
  v73 = 0u;
  v12 = [(PXPhotosDetailsAssetsWidget *)self _dataSourceManager];
  v13 = [v12 dataSource];
  v14 = v13;
  if (v13)
  {
    [v13 indexPathForAssetReference:v4];
  }

  else
  {
    v72 = 0u;
    v73 = 0u;
  }

  v15 = *off_1E77221F8;
  v16 = *(off_1E77221F8 + 1);
  v17 = *(off_1E77221F8 + 2);
  v18 = *(off_1E77221F8 + 3);

  v19 = v72;
  if (v72 != *off_1E7721F68)
  {
    v20 = *(&v72 + 1);
    v21 = v73;
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v48 = xmmword_1A5380D20;
    v49 = v72;
    v50 = v73;
    v51 = 0u;
    v52 = 0u;
    *&v53 = 0;
    if ([v10 getTile:0 geometry:&v60 group:0 userData:0 forTileWithIdentifier:&v48])
    {
      v6 = *(&v60 + 1);
      v5 = *&v60;
      v8 = *(&v61 + 1);
      v7 = *&v61;
      v15 = *(&v69 + 1);
      v17 = *(&v70 + 1);
      v16 = *&v70;
      v18 = *&v71;
    }

    v75.origin.x = v5;
    v75.origin.y = v6;
    v75.size.width = v7;
    v75.size.height = v8;
    if (CGRectIsNull(v75))
    {
      v40 = v4;
      v22 = [(PXPhotosDetailsAssetsWidget *)self _assetsScene];
      v23 = [v22 currentLayout];

      v24 = v72;
      v25 = [v23 dataSource];
      v26 = [v25 identifier];

      if (v24 == v26)
      {
        v58 = 0u;
        v59 = 0u;
        v56 = 0u;
        v57 = 0u;
        v54 = 0u;
        v55 = 0u;
        v52 = 0u;
        v53 = 0u;
        v50 = 0u;
        v51 = 0u;
        v48 = 0u;
        v49 = 0u;
        v41 = xmmword_1A5380D20;
        v42 = v19;
        v43 = v20;
        v44 = v21;
        v45 = 0u;
        v46 = 0u;
        v47 = 0;
        if ([v23 getGeometry:&v48 group:0 userData:0 forTileWithIdentifier:&v41])
        {
          v27 = +[PXTilingCoordinateSpaceConverter defaultConverter];
          v28 = [v23 coordinateSpaceIdentifier];
          v29 = [v10 contentCoordinateSpaceIdentifier];
          [v27 convertRect:v28 fromCoordinateSpaceIdentifier:v29 toCoordinateSpaceIdentifier:{v48, v49}];
          v5 = v30;
          v6 = v31;
          v7 = v32;
          v8 = v33;
        }
      }

      v4 = v40;
    }
  }

  v76.origin.x = v5;
  v76.origin.y = v6;
  v76.size.width = v7;
  v76.size.height = v8;
  if (CGRectIsNull(v76))
  {
    v34 = 0;
  }

  else
  {
    v35 = [off_1E7721860 alloc];
    v36 = [(PXPhotosDetailsAssetsWidget *)self _assetsScene];
    v37 = [v36 scrollViewController];
    v38 = [v37 contentCoordinateSpace];
    v34 = [v35 initWithRect:v38 inCoordinateSpace:{v5, v6, v7, v8}];

    [v34 setImageContentsRect:{v15, v16, v17, v18}];
  }

  return v34;
}

- (void)_setCurrentDataSourceStressTest:(id)a3
{
  v5 = a3;
  currentDataSourceStressTest = self->__currentDataSourceStressTest;
  if (currentDataSourceStressTest != v5)
  {
    v8 = v5;
    [(PXPhotosDataSourceStressTest *)currentDataSourceStressTest unregisterChangeObserver:self context:PXStressTestObservationContext];
    objc_storeStrong(&self->__currentDataSourceStressTest, a3);
    [(PXPhotosDataSourceStressTest *)self->__currentDataSourceStressTest registerChangeObserver:self context:PXStressTestObservationContext];
    v7 = [(PXPhotosDetailsAssetsWidget *)self widgetDelegate];
    [v7 widgetLocalizedDisclosureTitleDidChange:self];

    v5 = v8;
  }
}

- (void)_performTilingChangeWithoutAnimationTransition:(id)a3
{
  v4 = a3;
  v5 = [(PXPhotosDetailsAssetsWidget *)self _transitionWithoutAnimation];
  [(PXPhotosDetailsAssetsWidget *)self _setTransitionWithoutAnimation:1];
  v4[2](v4);

  v6 = [(PXPhotosDetailsAssetsWidget *)self _assetsScene];
  v7 = [v6 tilingController];
  v8 = [v7 scrollController];
  [v8 updateIfNeeded];

  [(PXPhotosDetailsAssetsWidget *)self _setTransitionWithoutAnimation:v5];
}

- (BOOL)_isLocationWithinCurrentLayoutBounds:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(PXPhotosDetailsAssetsWidget *)self _assetsScene];
  v7 = [v6 currentLayout];

  if (v7)
  {
    v8 = +[PXTilingCoordinateSpaceConverter defaultConverter];
    v9 = [(PXPhotosDetailsAssetsWidget *)self contentTilingController];
    [v8 convertPoint:objc_msgSend(v9 fromCoordinateSpaceIdentifier:"contentCoordinateSpaceIdentifier") toCoordinateSpaceIdentifier:{objc_msgSend(v7, "coordinateSpaceIdentifier"), x, y}];

    [v7 contentBounds];
    [v7 contentInset];
    PXEdgeInsetsInsetRect();
  }

  return 0;
}

- (id)_assetReferenceAtPoint:(CGPoint)a3 padding:(UIEdgeInsets)a4
{
  v10 = 0u;
  v11 = 0u;
  [(PXPhotosDetailsAssetsWidget *)self _assetIndexPathAtLocation:a3.x padding:a3.y, a4.top, a4.left, a4.bottom, a4.right];
  if (*off_1E7721F68)
  {
    v6 = [(PXPhotosDetailsAssetsWidget *)self _dataSourceManager];
    v7 = [v6 dataSource];
    v9[0] = v10;
    v9[1] = v11;
    v5 = [v7 assetReferenceAtItemIndexPath:v9];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (PXSimpleIndexPath)_assetIndexPathAtLocation:(SEL)a3 padding:(CGPoint)a4
{
  right = a5.right;
  bottom = a5.bottom;
  left = a5.left;
  top = a5.top;
  y = a4.y;
  x = a4.x;
  v13 = *(off_1E7722228 + 1);
  *&retstr->dataSourceIdentifier = *off_1E7722228;
  *&retstr->item = v13;
  v14 = [(PXPhotosDetailsAssetsWidget *)self _dataSourceManager];
  v15 = [v14 dataSource];
  v16 = [v15 identifier];

  v28 = 0;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v23 = 0u;
  v17 = [(PXPhotosDetailsAssetsWidget *)self _assetsScene];
  v18 = [v17 tilingController];
  v19 = v18;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __65__PXPhotosDetailsAssetsWidget__assetIndexPathAtLocation_padding___block_invoke;
  v22[3] = &__block_descriptor_40_e355_B504__0_PXTileIdentifier_Q_10Q__8_v96_PXTileGeometry__CGRect__CGPoint_dd__CGSize_dd___CGPoint_dd__CGSize_dd__CGAffineTransform_dddddd_ddB_CGSize_dd__CGRect__CGPoint_dd__CGSize_dd___v_104_PXTileGeometry__CGRect__CGPoint_dd__CGSize_dd___CGPoint_dd__CGSize_dd__CGAffineTransform_dddddd_ddB_CGSize_dd__CGRect__CGPoint_dd__CGSize_dd___v_296Q488___NSObject__496l;
  v22[4] = v16;
  if (v18)
  {
    [v18 hitTestTileAtPoint:v22 padding:x passingTest:{y, top, left, bottom, right}];
  }

  else
  {
    v28 = 0;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v23 = 0u;
  }

  if (v23 == __PAIR128__(6432423, 5))
  {
    v21 = v25;
    *&retstr->dataSourceIdentifier = v24;
    *&retstr->item = v21;
  }

  return result;
}

- (void)_logAssetCountsIfNecessary
{
  v30[1] = *MEMORY[0x1E69E9840];
  if (![(PXPhotosDetailsAssetsWidget *)self didLogCuratedAssetCount])
  {
    v3 = [(PXPhotosDetailsAssetsWidget *)self _photosDataSource];
    v4 = [v3 numberOfSections];

    if (v4 >= 1)
    {
      v5 = 0;
      v6 = 0;
      v7 = 0;
      do
      {
        v8 = [(PXPhotosDetailsAssetsWidget *)self _photosDataSource];
        v9 = [v8 curatedAssetsInSection:v7];

        v5 += [v9 count];
        v6 |= v9 != 0;

        ++v7;
        v10 = [(PXPhotosDetailsAssetsWidget *)self _photosDataSource];
        v11 = [v10 numberOfSections];
      }

      while (v7 < v11);
      if (v6)
      {
        v12 = MEMORY[0x1E6991F28];
        v29 = *MEMORY[0x1E6991E30];
        v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v5];
        v30[0] = v13;
        v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:&v29 count:1];
        [v12 sendEvent:@"com.apple.photos.CPAnalytics.photosDetailsSummaryAssetsCounted" withPayload:v14];

        [(PXPhotosDetailsAssetsWidget *)self setDidLogCuratedAssetCount:1];
      }
    }
  }

  if (![(PXPhotosDetailsAssetsWidget *)self didLogUncuratedAssetCount])
  {
    v15 = [(PXPhotosDetailsAssetsWidget *)self _photosDataSource];
    v16 = [v15 numberOfSections];

    if (v16 >= 1)
    {
      v17 = 0;
      v18 = 0;
      v19 = 0;
      do
      {
        v20 = [(PXPhotosDetailsAssetsWidget *)self _photosDataSource];
        v21 = [v20 uncuratedAssetsInSection:v17];

        v19 += [v21 count];
        v18 |= v21 != 0;

        ++v17;
        v22 = [(PXPhotosDetailsAssetsWidget *)self _photosDataSource];
        v23 = [v22 numberOfSections];
      }

      while (v17 < v23);
      if (v18)
      {
        v24 = MEMORY[0x1E6991F28];
        v27 = *MEMORY[0x1E6991E30];
        v25 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v19];
        v28 = v25;
        v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
        [v24 sendEvent:@"com.apple.photos.CPAnalytics.photosDetailsAllAssetsCounted" withPayload:v26];

        [(PXPhotosDetailsAssetsWidget *)self setDidLogUncuratedAssetCount:1];
      }
    }
  }
}

- (void)_setShowCurationButton:(BOOL)a3
{
  if (self->__showCurationButton != a3)
  {
    self->__showCurationButton = a3;
    v5 = [(PXPhotosDetailsAssetsWidget *)self widgetDelegate];
    [v5 widgetLocalizedSubtitleDidChange:self];
  }
}

- (void)_updateShowCurationButton
{
  v3 = [(PXPhotosDetailsAssetsWidget *)self _dataSourceManager];
  v7 = [v3 photosDataSource];

  v4 = [v7 firstAssetCollection];
  if (-[PXPhotosDetailsAssetsWidget isSelecting](self, "isSelecting") && (!-[PXPhotosDetailsAssetsWidget isSelecting](self, "isSelecting") || !-[PXPhotosDetailsAssetsWidget _curate](self, "_curate")) || v4 && ([v7 isCuratedAssetsFutilelyForAssetCollection:v4] & 1) != 0 || (objc_msgSend(v7, "isCuratedAssetsEmptyForAssetCollection:", v4) & 1) != 0)
  {
    v5 = 0;
  }

  else
  {
    v6 = [(PXPhotosDetailsAssetsWidget *)self spec];
    v5 = ([v6 detailsOptions] & 8) == 0;
  }

  [(PXPhotosDetailsAssetsWidget *)self _setShowCurationButton:v5];
}

- (void)_setCurate:(BOOL)a3
{
  if (self->__curate != a3)
  {
    v4 = a3;
    self->__curate = a3;
    [(PXPhotosDetailsAssetsWidget *)self _invalidateLayoutGenerator];
    v6 = [(PXPhotosDetailsAssetsWidget *)self eventTracker];
    [v6 setIsDisplayingCuratedContent:v4];

    v7 = [(PXPhotosDetailsAssetsWidget *)self _dataSourceManager];
    v12 = [v7 photosDataSource];

    v8 = [v12 firstAssetCollection];
    if (v8)
    {
      [v12 setWantsCuration:v4 forAssetCollection:v8];
    }

    [(PXPhotosDetailsAssetsWidget *)self _updateShowCurationButton];
    v9 = [(PXPhotosDetailsAssetsWidget *)self widgetDelegate];
    [v9 widgetLocalizedSubtitleDidChange:self];

    v10 = [(PXPhotosDetailsAssetsWidget *)self widgetDelegate];
    [v10 widget:self animateChanges:0 withAnimationOptions:0];

    [(PXPhotosDetailsAssetsWidget *)self _updateLayoutEngineIfNeeded];
    v11 = [(PXPhotosDetailsAssetsWidget *)self _inlinePlaybackController];
    [v11 updatePlaybackEnabled];
  }
}

- (void)_updateFocusedAssetReference
{
  v3 = [(PXPhotosDetailsAssetsWidget *)self _assetsScene];
  v4 = [v3 scrollViewController];

  v5 = MEMORY[0x1E69DCA38];
  v6 = [v4 scrollView];
  v7 = [v5 focusSystemForEnvironment:v6];
  v8 = [v7 focusedItem];

  v9 = [v8 parentFocusEnvironment];
  v10 = [v9 focusItemContainer];
  v11 = [v10 coordinateSpace];

  if (v11)
  {
    [v8 frame];
    PXRectGetCenter();
  }

  [(PXPhotosDetailsAssetsWidget *)self _setFocusedAssetReference:0];
}

- (void)_setFocusedAssetReference:(id)a3
{
  v5 = a3;
  if (self->__focusedAssetReference != v5)
  {
    v8 = v5;
    objc_storeStrong(&self->__focusedAssetReference, a3);
    v6 = [(PXPhotosDetailsAssetsWidget *)self _assetsScene];
    v7 = [v6 targetLayout];
    [(PXPhotosDetailsAssetsWidget *)self _configureLayout:v7];

    v5 = v8;
  }
}

- (void)_setHighlightedAssetReference:(id)a3
{
  v5 = a3;
  if (self->__highlightedAssetReference != v5)
  {
    v8 = v5;
    objc_storeStrong(&self->__highlightedAssetReference, a3);
    v6 = [(PXPhotosDetailsAssetsWidget *)self _assetsScene];
    v7 = [v6 targetLayout];
    [(PXPhotosDetailsAssetsWidget *)self _configureLayout:v7];

    v5 = v8;
  }
}

- (void)_setHiddenAssetReferences:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v8 = v4;
    if ([(NSSet *)v4 count])
    {
      v5 = v8;
      goto LABEL_6;
    }
  }

  v5 = 0;
LABEL_6:
  if (self->__hiddenAssetReferences != v5)
  {
    v9 = v5;
    objc_storeStrong(&self->__hiddenAssetReferences, v5);
    v6 = [(PXPhotosDetailsAssetsWidget *)self _assetsScene];
    v7 = [v6 targetLayout];
    [(PXPhotosDetailsAssetsWidget *)self _configureLayout:v7];

    v5 = v9;
  }
}

- (void)_setDraggingAssetReferences:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v8 = v4;
    if ([(NSSet *)v4 count])
    {
      v5 = v8;
      goto LABEL_6;
    }
  }

  v5 = 0;
LABEL_6:
  if (self->__draggingAssetReferences != v5)
  {
    v9 = v5;
    objc_storeStrong(&self->__draggingAssetReferences, v5);
    v6 = [(PXPhotosDetailsAssetsWidget *)self _assetsScene];
    v7 = [v6 targetLayout];
    [(PXPhotosDetailsAssetsWidget *)self _configureLayout:v7];

    v5 = v9;
  }
}

- (void)_updateHasLoadedContentData
{
  v3 = [(PXPhotosDetailsAssetsWidget *)self _tilingController];
  v5 = [v3 targetLayout];

  v4 = [v5 placeholderMode];
  [(PXPhotosDetailsAssetsWidget *)self _setHasLoadedContentData:v4 != 1];
  if (v4 != 1)
  {
    [(PXPhotosDetailsAssetsWidget *)self _setLoadCoordinationToken:0];
  }
}

- (void)_updateTilingLayoutIfNeeded
{
  v4 = [(PXPhotosDetailsAssetsWidget *)self _layoutEngine];
  if (v4)
  {
    v18 = v4;
    v5 = [v4 layoutSnapshot];
    if (!v5)
    {
      v17 = [MEMORY[0x1E696AAA8] currentHandler];
      [v17 handleFailureInMethod:a2 object:self file:@"PXPhotosDetailsAssetsWidget.m" lineNumber:502 description:@"The layout engine should always return a layoutSnapshot."];
    }

    v6 = [(PXPhotosDetailsAssetsWidget *)self _tilingController];
    v7 = [v6 targetLayout];

    v8 = [v7 layoutSnapshot];
    if (v8 && (v9 = v8, [v7 layoutSnapshot], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "dataSourceSnapshot"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "identifier"), objc_msgSend(v5, "dataSourceSnapshot"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "identifier"), v13, v11, v10, v9, v12 != v14))
    {
      v15 = [(PXPhotosDetailsAssetsWidget *)self _createNewLayout];

      v16 = [(PXPhotosDetailsAssetsWidget *)self _tilingController];
      [v16 transitionToLayout:v15];

      v7 = v15;
    }

    else
    {
      [(PXPhotosDetailsAssetsWidget *)self _configureLayout:v7];
    }

    v4 = v18;
  }
}

- (void)_configureLayout:(id)a3
{
  v71 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [(PXPhotosDetailsAssetsWidget *)self _layoutEngine];
  v7 = [v6 layoutSnapshot];

  v55 = v7;
  if (!v7)
  {
    v48 = [MEMORY[0x1E696AAA8] currentHandler];
    [v48 handleFailureInMethod:a2 object:self file:@"PXPhotosDetailsAssetsWidget.m" lineNumber:417 description:@"The layout engine should always return a layoutSnapshot."];
  }

  v8 = [(PXPhotosDetailsAssetsWidget *)self _hiddenAssetReferences];
  v54 = v8;
  if ([v8 count])
  {
    v9 = objc_alloc_init(off_1E77217C8);
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v10 = v8;
    v11 = [v10 countByEnumeratingWithState:&v64 objects:v70 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v65;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v65 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v64 + 1) + 8 * i);
          v62 = 0u;
          v63 = 0u;
          v16 = [v5 dataSource];
          v17 = v16;
          if (v16)
          {
            [v16 indexPathForAssetReference:v15];
          }

          else
          {
            v62 = 0u;
            v63 = 0u;
          }

          v60 = v62;
          v61 = v63;
          [v9 addIndexPath:&v60];
        }

        v12 = [v10 countByEnumeratingWithState:&v64 objects:v70 count:16];
      }

      while (v12);
    }
  }

  else
  {
    v9 = 0;
  }

  v18 = [(PXPhotosDetailsAssetsWidget *)self _draggingAssetReferences];
  v53 = v18;
  if ([v18 count])
  {
    v19 = objc_alloc_init(off_1E77217C8);
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v20 = v18;
    v21 = [v20 countByEnumeratingWithState:&v56 objects:v69 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v57;
      do
      {
        for (j = 0; j != v22; ++j)
        {
          if (*v57 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v56 + 1) + 8 * j);
          v62 = 0u;
          v63 = 0u;
          v26 = [v5 dataSource];
          v27 = v26;
          if (v26)
          {
            [v26 indexPathForAssetReference:v25];
          }

          else
          {
            v62 = 0u;
            v63 = 0u;
          }

          v60 = v62;
          v61 = v63;
          [v19 addIndexPath:&v60];
        }

        v22 = [v20 countByEnumeratingWithState:&v56 objects:v69 count:16];
      }

      while (v22);
    }
  }

  else
  {
    v19 = 0;
  }

  v28 = [(PXPhotosDetailsAssetsWidget *)self _highlightedAssetReference];
  v49 = *(off_1E7722228 + 1);
  v51 = *off_1E7722228;
  v62 = *off_1E7722228;
  v63 = v49;
  if (v28)
  {
    v29 = [v5 dataSource];
    v30 = v29;
    if (v29)
    {
      [v29 indexPathForAssetReference:v28];
    }

    else
    {
      v60 = 0u;
      v61 = 0u;
    }

    v62 = v60;
    v63 = v61;
  }

  v31 = [(PXPhotosDetailsAssetsWidget *)self _focusedAssetReference];
  v60 = v51;
  v61 = v50;
  if (v31)
  {
    v32 = [v5 dataSource];
    v33 = v32;
    if (v32)
    {
      [v32 indexPathForAssetReference:v31];
    }

    else
    {
      memset(buf, 0, 32);
    }

    v60 = *buf;
    v61 = *&buf[16];
  }

  v52 = v28;
  v34 = [v5 dataSource];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v35 = [v34 photosDataSource];
    v36 = [v35 wantsCurationForFirstAssetCollection];
    if ([v35 numberOfSections] < 1 || (objc_msgSend(v35, "assetsInSection:", 0), v37 = objc_claimAutoreleasedReturnValue(), v37, v37))
    {
      v38 = [v35 isEmpty];
      v39 = 2;
      if (v36)
      {
        v39 = 0;
      }

      if (v38)
      {
        v40 = v39;
      }

      else
      {
        v40 = 0;
      }
    }

    else
    {
      v40 = 1;
    }
  }

  else
  {
    LOBYTE(v36) = 0;
    v40 = 0;
  }

  [v5 setSelectionBadgeOptions:1025];
  v41 = [(PXPhotosDetailsAssetsWidget *)self _specManager];
  v42 = [v41 spec];

  if (v36)
  {
    v43 = 1;
    v44 = 1;
  }

  else
  {
    v44 = [v42 gridContentMode];
    v43 = 3;
  }

  if (![v42 enableBadges])
  {
    v43 = 0;
  }

  [v5 setContentMode:v44];
  [v5 setBadgeOptions:v43];
  [v5 setLayoutSnapshot:v55];
  [v5 setHiddenIndexPaths:v9];
  [v5 setPlaceholderMode:v40];
  *buf = v62;
  *&buf[16] = v63;
  [v5 setHighlightedIndexPath:buf];
  [v5 setDraggingIndexPaths:v19];
  *buf = v60;
  *&buf[16] = v61;
  [v5 setFocusedIndexPath:buf];
  [v5 setSpec:v42];
  if (v40 != 1 && self->_loadStartDate)
  {
    v45 = PLRelatedGetLog();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      [(NSDate *)self->_loadStartDate timeIntervalSinceNow];
      *buf = 138412546;
      *&buf[4] = self;
      *&buf[12] = 2048;
      *&buf[14] = -v46;
      _os_log_impl(&dword_1A3C1C000, v45, OS_LOG_TYPE_DEFAULT, "[%@] initial data souce loaded in %fs", buf, 0x16u);
    }

    loadStartDate = self->_loadStartDate;
    self->_loadStartDate = 0;
  }
}

- (id)_createNewLayout
{
  [(PXPhotosDetailsAssetsWidget *)self _updateLayoutEngineIfNeeded];
  v4 = [(PXPhotosDetailsAssetsWidget *)self _layoutEngine];
  v5 = [v4 layoutSnapshot];

  if (!v5)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"PXPhotosDetailsAssetsWidget.m" lineNumber:405 description:@"The layout engine should always return a layoutSnapshot."];
  }

  v6 = [(PXEngineDrivenAssetsTilingLayout *)[PXPhotosDetailsAssetsTilingLayout alloc] initWithLayoutEngineSnapshot:v5];
  [(PXEngineDrivenAssetsTilingLayout *)v6 setDelegate:self];
  [(PXPhotosDetailsAssetsWidget *)self _configureLayout:v6];

  return v6;
}

- (void)_updateLayoutEngineIfNeeded
{
  v3 = [(PXPhotosDetailsAssetsWidget *)self _specManager];
  v4 = [v3 spec];

  v5 = [(PXPhotosDetailsAssetsWidget *)self _specManager];
  v6 = [v5 extendedTraitCollection];

  if (v4 && v6)
  {
    [v6 layoutReferenceSize];
    [v4 contentGuideInsets];
    PXSizeIsNull();
  }
}

- (void)_invalidateLayoutGenerator
{
  [(PXPhotosDetailsAssetsWidget *)self _setLayoutGenerator:0];

  [(PXPhotosDetailsAssetsWidget *)self _setLayoutEngine:0];
}

- (void)_loadTilingController
{
  if (!self->__tilingController)
  {
    v4 = [MEMORY[0x1E695DFA8] set];
    tilesInUse = self->_tilesInUse;
    self->_tilesInUse = v4;

    v6 = [PXPhotoKitUIMediaProvider alloc];
    v7 = objc_alloc_init(MEMORY[0x1E6978718]);
    v8 = [(PXPhotoKitUIMediaProvider *)v6 initWithImageManager:v7];
    mediaProvider = self->__mediaProvider;
    self->__mediaProvider = v8;

    v10 = objc_alloc_init(PXBasicUIViewTileAnimator);
    tileAnimator = self->__tileAnimator;
    self->__tileAnimator = v10;

    v12 = [(PXPhotosDetailsAssetsWidget *)self _specManager];
    v13 = [(PXPhotosDetailsAssetsWidget *)self widgetDelegate];
    v52 = [v13 widgetScrollViewControllerHostingWidget:self];

    [v52 registerObserver:self];
    v51 = [(PXPhotosDetailsAssetsWidget *)self _createNewLayout];
    v14 = [[PXTilingController alloc] initWithLayout:v51];
    tilingController = self->__tilingController;
    self->__tilingController = v14;

    [(PXTilingController *)self->__tilingController setScrollController:v52];
    [(PXTilingController *)self->__tilingController setTileAnimator:self->__tileAnimator];
    v16 = [[PXPhotosDetailsInlinePlaybackController alloc] initWithTilingController:self->__tilingController];
    inlinePlaybackController = self->__inlinePlaybackController;
    self->__inlinePlaybackController = v16;

    [(PXPhotosDetailsInlinePlaybackController *)self->__inlinePlaybackController setDelegate:self];
    v18 = [PXUIAssetsScene alloc];
    v20 = self->__mediaProvider;
    v19 = self->__tilingController;
    v21 = [(PXPhotosDetailsAssetsWidget *)self _dataSourceManager];
    v22 = [(PXPhotosDetailsAssetsWidget *)self _selectionManager];
    v23 = [(PXUIAssetsScene *)v18 initWithTilingController:v19 mediaProvider:v20 dataSourceManager:v21 selectionManager:v22 delegate:self];
    assetsScene = self->__assetsScene;
    self->__assetsScene = v23;

    [(PXTilingController *)self->__tilingController setTileSource:self];
    [(PXTilingController *)self->__tilingController setTransitionDelegate:self];
    [(PXTilingController *)self->__tilingController setScrollDelegate:self];
    [(PXAssetsScene *)self->__assetsScene setDelegate:self];
    [(PXAssetsScene *)self->__assetsScene setAutoplayTilesWaitForInput:1];
    v25 = [(PXPhotosDetailsAssetsWidget *)self _specManager];
    v26 = [v25 spec];

    if (v26 && [v26 userInterfaceIdiom] == 5)
    {
      [v26 defaultCornerRadius];
      [(PXUIAssetsScene *)self->__assetsScene setContentTileCornerRadius:?];
    }

    v27 = [(PXAssetsScene *)self->__assetsScene viewTileReusePool];
    [v27 registerReusableObjectForReuseIdentifier:1501 creationHandler:&__block_literal_global_146213];

    v28 = [(PXAssetsScene *)self->__assetsScene viewTileReusePool];
    [v28 registerReusableObjectForReuseIdentifier:1500 creationHandler:&__block_literal_global_260_146214];

    WeakRetained = objc_loadWeakRetained(&self->_widgetDelegate);
    v30 = [WeakRetained widgetViewHostingGestureRecognizers:self];

    v50 = v26;
    v31 = [[PXUITapGestureRecognizer alloc] initWithTarget:self action:sel_handleTap_];
    [(PXUITapGestureRecognizer *)v31 setDelegate:self];
    tapGesture = self->__tapGesture;
    self->__tapGesture = v31;
    v49 = v31;

    [v30 addGestureRecognizer:v49];
    v33 = [[PXUITapGestureRecognizer alloc] initWithTarget:self action:sel_handlePress_];
    [(PXUITapGestureRecognizer *)v33 setAllowedPressTypes:&unk_1F1911008];
    [(PXUITapGestureRecognizer *)v33 setDelegate:self];
    pressGesture = self->__pressGesture;
    self->__pressGesture = v33;
    v35 = v33;

    [v30 addGestureRecognizer:v35];
    v36 = [objc_alloc(MEMORY[0x1E69DCD80]) initWithTarget:self action:sel_handlePinch_];
    [(UIPinchGestureRecognizer *)v36 setDelegate:self];
    pinchGesture = self->__pinchGesture;
    self->__pinchGesture = v36;
    v38 = v36;

    [v30 addGestureRecognizer:v38];
    v39 = [[off_1E7721918 alloc] initWithTarget:self action:sel_handleTouch_];
    [v39 setDelegate:self];
    [v39 setMinimumTouchDuration:*off_1E7722260];
    [v39 setMaximumTouchMovement:*off_1E7722258];
    touchGesture = self->__touchGesture;
    self->__touchGesture = v39;
    v41 = v39;

    [v52 addGestureRecognizer:v41];
    v42 = [objc_alloc(MEMORY[0x1E69DC988]) initWithDelegate:self];
    [v30 addInteraction:v42];
    [v42 setEnabled:1];
    v43 = [v52 scrollView];
    v44 = [off_1E77218F0 alloc];
    v45 = [(PXPhotosDetailsAssetsWidget *)self _assetsScene];
    v46 = [v45 selectionManager];
    v47 = [v44 initWithSelectionManager:v46 scrollView:v43];

    [v47 setDelegate:self];
    swipeSelectionManager = self->__swipeSelectionManager;
    self->__swipeSelectionManager = v47;

    [(PXPhotosDetailsAssetsWidget *)self _updateHasLoadedContentData];
    [(PXPhotosDetailsAssetsWidget *)self _updateShowCurationButton];
  }
}

PXPlaceholderView *__52__PXPhotosDetailsAssetsWidget__loadTilingController__block_invoke_2()
{
  v0 = [PXPlaceholderView alloc];
  v1 = [(PXPlaceholderView *)v0 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  [(PXPlaceholderView *)v1 setShouldShowIndicatorView:1];

  return v1;
}

_PXContentUnavailableView *__52__PXPhotosDetailsAssetsWidget__loadTilingController__block_invoke()
{
  v0 = [_PXContentUnavailableView alloc];
  v1 = PXLocalizedStringFromTable(@"PXPhotosDetailsAssetsWidgetContentUnavailableTitle", @"PhotosUICore");
  v2 = [(_UIContentUnavailableView *)v0 initWithFrame:v1 title:0 style:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];

  [(_PXContentUnavailableView *)v2 sizeToFit];

  return v2;
}

- (PXPhotosDetailsAssetsSpecManager)_specManager
{
  specManager = self->__specManager;
  if (!specManager)
  {
    v4 = [(PXPhotosDetailsAssetsWidget *)self _extendedTraitCollection];
    v5 = [(PXPhotosDetailsAssetsWidget *)self spec];
    v6 = -[PXPhotosDetailsAssetsSpecManager initWithExtendedTraitCollection:detailsOptions:]([PXPhotosDetailsAssetsSpecManager alloc], "initWithExtendedTraitCollection:detailsOptions:", v4, [v5 detailsOptions]);
    v7 = self->__specManager;
    self->__specManager = v6;

    [(PXPhotosDetailsAssetsSpecManager *)self->__specManager registerChangeObserver:self context:PXSpecManagerObservationContext_146128];
    specManager = self->__specManager;
  }

  return specManager;
}

- (void)dealloc
{
  [(PXPhotosDataSourceStressTest *)self->__currentDataSourceStressTest setRunning:0];
  v3.receiver = self;
  v3.super_class = PXPhotosDetailsAssetsWidget;
  [(PXPhotosDetailsAssetsWidget *)&v3 dealloc];
}

- (PXPhotosDetailsAssetsWidget)init
{
  v7.receiver = self;
  v7.super_class = PXPhotosDetailsAssetsWidget;
  v2 = [(PXPhotosDetailsAssetsWidget *)&v7 init];
  v3 = v2;
  if (v2)
  {
    *(v2 + 27) = 257;
    *(v2 + 280) = *off_1E77221E8;
    v4 = objc_alloc_init(_PXPhotosDetailsAssetsWidgetEventTracker);
    eventTracker = v3->_eventTracker;
    v3->_eventTracker = v4;

    [(PXPhotosDetailsAssetsWidgetEventTracker *)v3->_eventTracker setIsDisplayingCuratedContent:v3->__curate];
    +[PXUIAssetsScene preloadResources];
  }

  return v3;
}

+ (void)_refreshSortDescriptorsInPhotosDataSource:(id)a3 withPeople:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if ([v6 count] == 1)
  {
    v7 = [v6 firstObject];
    v8 = +[PXPeopleUtilities sortDescriptorsWithPersonAssetSortOrder:](PXPeopleUtilities, "sortDescriptorsWithPersonAssetSortOrder:", [v7 assetSortOrder]);
    v9 = [v5 sortDescriptors];
    v10 = v9;
    if (v9 == v8)
    {
    }

    else
    {
      v11 = [v9 isEqual:v8];

      if ((v11 & 1) == 0)
      {
        v12 = PLPeopleGetLog();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = [v7 uuid];
          v14 = 138543618;
          v15 = v13;
          v16 = 2112;
          v17 = v8;
          _os_log_impl(&dword_1A3C1C000, v12, OS_LOG_TYPE_DEFAULT, "PXPhotosDetailsAssetsWidget: Sort descriptors for person set on Person: %{public}@. New Sort Descriptors: %@.", &v14, 0x16u);
        }

        [v5 setSortDescriptors:v8];
      }
    }
  }
}

@end