@interface PXPhotosDetailsAssetsWidget
+ (void)_refreshSortDescriptorsInPhotosDataSource:(id)source withPeople:(id)people;
- (BOOL)_addAssetReferencesToDrag:(id)drag;
- (BOOL)_canDragAssetReferences:(id)references;
- (BOOL)_canDragOut;
- (BOOL)_isLocationWithinCurrentLayoutBounds:(CGPoint)bounds;
- (BOOL)actionPerformer:(id)performer dismissViewController:(id)controller completionHandler:(id)handler;
- (BOOL)actionPerformer:(id)performer presentViewController:(id)controller;
- (BOOL)gestureRecognizer:(id)recognizer shouldBeRequiredToFailByGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (BOOL)shouldEnablePlaybackForController:(id)controller;
- (BOOL)swipeSelectionManager:(id)manager shouldBeginSelectionAtLocation:(CGPoint)location;
- (CGPoint)_visibleOriginScrollTarget;
- (CGPoint)tilingController:(id)controller initialVisibleOriginForLayout:(id)layout;
- (CGPoint)tilingController:(id)controller targetVisibleOriginForLayout:(id)layout proposedVisibleOrigin:(CGPoint)origin;
- (CGRect)engineDrivenLayout:(id)layout contentsRectForItemAtIndexPath:(PXSimpleIndexPath *)path forAspectRatio:(double)ratio;
- (CGSize)minimumItemSizeForPlaybackInController:(id)controller;
- (NSString)localizedSubtitle;
- (NSString)localizedTitle;
- (PXAssetActionManager)assetActionManager;
- (PXPhotosDetailsAssetsSpecManager)_specManager;
- (PXPhotosDetailsAssetsWidget)init;
- (PXPhotosDetailsAssetsWidgetOneUpDelegate)widgetOneUpDelegate;
- (PXSectionedSelectionManager)selectionManager;
- (PXSimpleIndexPath)_assetIndexPathAtLocation:(SEL)location padding:(CGPoint)padding;
- (PXSimpleIndexPath)swipeSelectionManager:(SEL)manager itemIndexPathAtLocation:(id)location;
- (PXSimpleIndexPath)swipeSelectionManager:(SEL)manager itemIndexPathClosestAboveLocation:(id)location;
- (PXSimpleIndexPath)swipeSelectionManager:(SEL)manager itemIndexPathClosestLeadingLocation:(id)location;
- (PXTilingController)contentTilingController;
- (PXWidgetDelegate)widgetDelegate;
- (double)engineDrivenLayout:(id)layout aspectRatioForItemAtIndexPath:(PXSimpleIndexPath *)path;
- (double)engineDrivenLayout:(id)layout zPositionForItemAtIndexPath:(PXSimpleIndexPath *)path;
- (id)_assetActionManagerForAssetsReference:(id)reference;
- (id)_assetReferenceAtPoint:(CGPoint)point padding:(UIEdgeInsets)padding;
- (id)_createNewLayout;
- (id)_curationButtonTitle;
- (id)_dragItemForAssetReference:(id)reference;
- (id)_extendedTraitCollection;
- (id)_imageTileForDragItem:(id)item;
- (id)_regionOfInterestForAssetReference:(id)reference;
- (id)_subtitle;
- (id)_title;
- (id)assetsScene:(id)scene layoutForDataSource:(id)source;
- (id)assetsScene:(id)scene tileIdentifierConverterForChange:(id)change;
- (id)bestCursorTileForLiftingAtPoint:(CGPoint)point inCoordinateSpace:(id)space;
- (id)dataSourceManager;
- (id)dragInteraction:(id)interaction itemsForAddingToSession:(id)session withTouchAtPoint:(CGPoint)point;
- (id)dragInteraction:(id)interaction itemsForBeginningSession:(id)session;
- (id)dragInteraction:(id)interaction previewForCancellingItem:(id)item withDefault:(id)default;
- (id)dragInteraction:(id)interaction previewForLiftingItem:(id)item session:(id)session;
- (id)dragInteraction:(id)interaction sessionForAddingItems:(id)items withTouchAtPoint:(CGPoint)point;
- (id)genericPreviewViewController;
- (id)imageViewBasicTileForPreviewingAtPoint:(CGPoint)point;
- (id)oneUpPresentation:(id)presentation currentImageForAssetReference:(id)reference;
- (id)oneUpPresentationActionManagerForPreviewing:(id)previewing;
- (id)presentationEnvironmentForActionPerformer:(id)performer;
- (id)previewViewControllerAtLocation:(CGPoint)location fromSourceView:(id)view;
- (id)tilingController:(id)controller tileIdentifierConverterForChange:(id)change;
- (id)tilingController:(id)controller transitionAnimationCoordinatorForChange:(id)change;
- (id)undoManagerForActionPerformer:(id)performer;
- (int64_t)contentLayoutStyle;
- (int64_t)oneUpPresentationOrigin:(id)origin;
- (void)_configureLayout:(id)layout;
- (void)_fallBackByTogglingCurationIfNeeded;
- (void)_handleTapOnAssetReference:(id)reference autoPlayVideo:(BOOL)video activity:(unint64_t)activity;
- (void)_handleTapOnFocusedAssetReferenceWithActivity:(unint64_t)activity;
- (void)_invalidateLayoutGenerator;
- (void)_loadTilingController;
- (void)_logAssetCountsIfNecessary;
- (void)_performTilingChangeWithoutAnimationTransition:(id)transition;
- (void)_presentConfidentialityWarning;
- (void)_setCurate:(BOOL)curate;
- (void)_setCurrentDataSourceStressTest:(id)test;
- (void)_setDraggingAssetReferences:(id)references;
- (void)_setFocusedAssetReference:(id)reference;
- (void)_setHasLoadedContentData:(BOOL)data;
- (void)_setHiddenAssetReferences:(id)references;
- (void)_setHighlightedAssetReference:(id)reference;
- (void)_setLoadCoordinationToken:(id)token;
- (void)_setPhotosDataSource:(id)source;
- (void)_setShowCurationButton:(BOOL)button;
- (void)_toggleCuration;
- (void)_updateDraggingAssetReferencesWithDataSource:(id)source;
- (void)_updateFocusedAssetReference;
- (void)_updateHasLoadedContentData;
- (void)_updateLayoutEngineIfNeeded;
- (void)_updateShowCurationButton;
- (void)_updateTilingLayoutIfNeeded;
- (void)_userDidSelectCurationButton;
- (void)assetsScene:(id)scene didTransitionToDataSource:(id)source;
- (void)checkInTile:(void *)tile withIdentifier:(PXTileIdentifier *)identifier;
- (void)checkOutTileForIdentifier:(PXTileIdentifier *)identifier layout:(id)layout;
- (void)commitPreviewViewController:(id)controller;
- (void)contentViewDidDisappear;
- (void)contentViewWillAppear;
- (void)dealloc;
- (void)didDismissPreviewViewController:(id)controller committing:(BOOL)committing;
- (void)dragInteraction:(id)interaction item:(id)item willAnimateCancelWithAnimator:(id)animator;
- (void)dragInteraction:(id)interaction session:(id)session didEndWithOperation:(unint64_t)operation;
- (void)dragInteraction:(id)interaction sessionWillBegin:(id)begin;
- (void)dragInteraction:(id)interaction willAnimateLiftWithAnimator:(id)animator session:(id)session;
- (void)handlePinch:(id)pinch;
- (void)handleTap:(id)tap;
- (void)handleTouch:(id)touch;
- (void)loadContentData;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)oneUpPresentation:(id)presentation scrollAssetReferenceToVisible:(id)visible;
- (void)oneUpPresentation:(id)presentation setHiddenAssetReferences:(id)references;
- (void)playButtonTileWasTapped:(id)tapped;
- (void)presentOneUpForAssetReference:(id)reference animated:(BOOL)animated;
- (void)scrollViewControllerContentBoundsDidChange:(id)change;
- (void)scrollViewControllerDidScroll:(id)scroll;
- (void)setContext:(id)context;
- (void)setSelecting:(BOOL)selecting;
- (void)swipeSelectionManagerAutomaticallyTransitionToMultiSelectMode:(id)mode;
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

- (id)presentationEnvironmentForActionPerformer:(id)performer
{
  widgetDelegate = [(PXPhotosDetailsAssetsWidget *)self widgetDelegate];
  v5 = [widgetDelegate widgetViewControllerHostingWidget:self];

  v6 = [off_1E7721960 defaultPresenterWithViewController:v5];

  return v6;
}

- (id)undoManagerForActionPerformer:(id)performer
{
  widgetDelegate = [(PXPhotosDetailsAssetsWidget *)self widgetDelegate];
  v5 = [widgetDelegate widgetUndoManager:self];

  return v5;
}

- (BOOL)actionPerformer:(id)performer dismissViewController:(id)controller completionHandler:(id)handler
{
  handlerCopy = handler;
  widgetDelegate = [(PXPhotosDetailsAssetsWidget *)self widgetDelegate];
  v8 = [widgetDelegate widgetViewControllerHostingWidget:self];

  presentedViewController = [v8 presentedViewController];

  if (presentedViewController)
  {
    [v8 dismissViewControllerAnimated:1 completion:handlerCopy];
  }

  return presentedViewController != 0;
}

- (BOOL)actionPerformer:(id)performer presentViewController:(id)controller
{
  controllerCopy = controller;
  widgetDelegate = [(PXPhotosDetailsAssetsWidget *)self widgetDelegate];
  LOBYTE(self) = [widgetDelegate widget:self transitionToViewController:controllerCopy withTransitionType:2];

  return self;
}

- (id)dragInteraction:(id)interaction sessionForAddingItems:(id)items withTouchAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v24 = *MEMORY[0x1E69E9840];
  interactionCopy = interaction;
  itemsCopy = items;
  v11 = PLDragAndDropGetLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v26.x = x;
    v26.y = y;
    v12 = NSStringFromCGPoint(v26);
    v18 = 138412802;
    v19 = interactionCopy;
    v20 = 2112;
    v21 = itemsCopy;
    v22 = 2112;
    v23 = v12;
    _os_log_impl(&dword_1A3C1C000, v11, OS_LOG_TYPE_DEBUG, "dragInteraction: %@ sessionForAddingItems: %@ withTouchAtPoint: %@", &v18, 0x20u);
  }

  dragSession = [(PXPhotosDetailsAssetsWidget *)self dragSession];
  v14 = [itemsCopy containsObject:dragSession];

  if (v14)
  {
    dragSession2 = [(PXPhotosDetailsAssetsWidget *)self dragSession];
LABEL_7:
    v16 = dragSession2;
    goto LABEL_9;
  }

  if ([itemsCopy count] == 1)
  {
    dragSession2 = [itemsCopy lastObject];
    goto LABEL_7;
  }

  v16 = 0;
LABEL_9:

  return v16;
}

- (void)dragInteraction:(id)interaction item:(id)item willAnimateCancelWithAnimator:(id)animator
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __82__PXPhotosDetailsAssetsWidget_dragInteraction_item_willAnimateCancelWithAnimator___block_invoke;
  v5[3] = &unk_1E7748D18;
  v5[4] = self;
  [animator addCompletion:{v5, item}];
}

uint64_t __82__PXPhotosDetailsAssetsWidget_dragInteraction_item_willAnimateCancelWithAnimator___block_invoke(uint64_t result, uint64_t a2)
{
  if (!a2)
  {
    return [*(result + 32) _setDraggingAssetReferences:0];
  }

  return result;
}

- (void)dragInteraction:(id)interaction willAnimateLiftWithAnimator:(id)animator session:(id)session
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __83__PXPhotosDetailsAssetsWidget_dragInteraction_willAnimateLiftWithAnimator_session___block_invoke;
  v5[3] = &unk_1E7748D18;
  v5[4] = self;
  [animator addCompletion:v5];
}

uint64_t __83__PXPhotosDetailsAssetsWidget_dragInteraction_willAnimateLiftWithAnimator_session___block_invoke(uint64_t result, uint64_t a2)
{
  if (a2 == 1)
  {
    return [*(result + 32) _setDraggingAssetReferences:0];
  }

  return result;
}

- (void)dragInteraction:(id)interaction session:(id)session didEndWithOperation:(unint64_t)operation
{
  v17 = *MEMORY[0x1E69E9840];
  interactionCopy = interaction;
  sessionCopy = session;
  v10 = PLDragAndDropGetLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = 138412802;
    v12 = interactionCopy;
    v13 = 2112;
    v14 = sessionCopy;
    v15 = 2048;
    operationCopy = operation;
    _os_log_impl(&dword_1A3C1C000, v10, OS_LOG_TYPE_DEBUG, "dragInteraction: %@ session: %@ didEndWithOperation: %lu", &v11, 0x20u);
  }

  [(PXPhotosDetailsAssetsWidget *)self setDragSession:0];
  [(PXPhotosDetailsAssetsWidget *)self _setDraggingAssetReferences:0];
}

- (void)dragInteraction:(id)interaction sessionWillBegin:(id)begin
{
  v13 = *MEMORY[0x1E69E9840];
  interactionCopy = interaction;
  beginCopy = begin;
  v8 = PLDragAndDropGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412546;
    v10 = interactionCopy;
    v11 = 2112;
    v12 = beginCopy;
    _os_log_impl(&dword_1A3C1C000, v8, OS_LOG_TYPE_DEBUG, "dragInteraction: %@ sessionWillBegin: %@", &v9, 0x16u);
  }

  [(PXPhotosDetailsAssetsWidget *)self setDragSession:beginCopy];
  [(PXPhotosDetailsAssetsWidget *)self _setHighlightedAssetReference:0];
}

- (id)dragInteraction:(id)interaction previewForCancellingItem:(id)item withDefault:(id)default
{
  v18 = *MEMORY[0x1E69E9840];
  interactionCopy = interaction;
  defaultCopy = default;
  itemCopy = item;
  v11 = PLDragAndDropGetLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v14 = 138412546;
    v15 = interactionCopy;
    v16 = 2112;
    v17 = defaultCopy;
    _os_log_impl(&dword_1A3C1C000, v11, OS_LOG_TYPE_DEBUG, "dragInteraction: %@ previewForCancellingItem: %@", &v14, 0x16u);
  }

  v12 = [(PXPhotosDetailsAssetsWidget *)self _imageTileForDragItem:itemCopy];

  if (v12)
  {
    [v12 view];
    [objc_claimAutoreleasedReturnValue() frame];
    PXRectGetCenter();
  }

  return 0;
}

- (id)dragInteraction:(id)interaction previewForLiftingItem:(id)item session:(id)session
{
  v38 = *MEMORY[0x1E69E9840];
  interactionCopy = interaction;
  itemCopy = item;
  sessionCopy = session;
  v11 = PLDragAndDropGetLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v32 = 138412802;
    v33 = interactionCopy;
    v34 = 2112;
    v35 = itemCopy;
    v36 = 2112;
    v37 = sessionCopy;
    _os_log_impl(&dword_1A3C1C000, v11, OS_LOG_TYPE_DEBUG, "dragInteraction: %@ previewForLiftingItem: %@ session: %@", &v32, 0x20u);
  }

  v12 = [(PXPhotosDetailsAssetsWidget *)self _imageTileForDragItem:itemCopy];
  if ([v12 conformsToProtocol:&unk_1F1A50488])
  {
    v13 = objc_alloc(MEMORY[0x1E69DCAE0]);
    view = [v12 view];
    [view frame];
    v15 = [v13 initWithFrame:?];

    image = [v12 image];
    [v15 setImage:image];

    view2 = [v12 view];
    [v15 setContentMode:{objc_msgSend(view2, "contentMode")}];

    view3 = [v12 view];
    [v15 setClipsToBounds:{objc_msgSend(view3, "clipsToBounds")}];

    view4 = [v12 view];
    layer = [view4 layer];
    [layer contentsRect];
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;
    layer2 = [v15 layer];
    [layer2 setContentsRect:{v22, v24, v26, v28}];

    layer3 = [v15 layer];
    [layer3 setZPosition:3.40282347e38];

    [v12 view];
    [objc_claimAutoreleasedReturnValue() frame];
    PXRectGetCenter();
  }

  return 0;
}

- (id)dragInteraction:(id)interaction itemsForAddingToSession:(id)session withTouchAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v34 = *MEMORY[0x1E69E9840];
  interactionCopy = interaction;
  sessionCopy = session;
  v11 = PLDragAndDropGetLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v36.x = x;
    v36.y = y;
    v12 = NSStringFromCGPoint(v36);
    *buf = 138412802;
    *&buf[4] = interactionCopy;
    *&buf[12] = 2112;
    *&buf[14] = sessionCopy;
    *&buf[22] = 2112;
    *&buf[24] = v12;
    _os_log_impl(&dword_1A3C1C000, v11, OS_LOG_TYPE_DEBUG, "dragInteraction: %@ itemsForAddingToSession: %@ withTouchAtPoint: %@", buf, 0x20u);
  }

  _assetsScene = [(PXPhotosDetailsAssetsWidget *)self _assetsScene];
  scrollViewController = [_assetsScene scrollViewController];
  scrollView = [scrollViewController scrollView];
  scrollViewController2 = [_assetsScene scrollViewController];
  contentCoordinateSpace = [scrollViewController2 contentCoordinateSpace];

  [contentCoordinateSpace convertPoint:scrollView fromCoordinateSpace:{x, y}];
  memset(buf, 0, 32);
  [PXPhotosDetailsAssetsWidget _assetIndexPathAtLocation:"_assetIndexPathAtLocation:padding:" padding:?];
  if (*buf == *off_1E7721F68)
  {
    v18 = 0;
  }

  else
  {
    v30 = interactionCopy;
    _dataSourceManager = [(PXPhotosDetailsAssetsWidget *)self _dataSourceManager];
    dataSource = [_dataSourceManager dataSource];

    v31[0] = *buf;
    v31[1] = *&buf[16];
    v21 = [dataSource assetReferenceAtItemIndexPath:v31];
    _draggingAssetReferences = [(PXPhotosDetailsAssetsWidget *)self _draggingAssetReferences];
    v23 = [_draggingAssetReferences containsObject:v21];

    if (v23)
    {
      v18 = 0;
      interactionCopy = v30;
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

      interactionCopy = v30;
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

- (id)dragInteraction:(id)interaction itemsForBeginningSession:(id)session
{
  v51 = *MEMORY[0x1E69E9840];
  interactionCopy = interaction;
  sessionCopy = session;
  v8 = PLDragAndDropGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    *&buf[4] = interactionCopy;
    *&buf[12] = 2112;
    *&buf[14] = sessionCopy;
    _os_log_impl(&dword_1A3C1C000, v8, OS_LOG_TYPE_DEBUG, "dragInteraction: %@ itemsForBeginningSession: %@", buf, 0x16u);
  }

  if ([(PXPhotosDetailsAssetsWidget *)self _canDragOut])
  {
    _assetsScene = [(PXPhotosDetailsAssetsWidget *)self _assetsScene];
    scrollViewController = [_assetsScene scrollViewController];
    scrollView = [scrollViewController scrollView];
    [sessionCopy locationInView:scrollView];
    v13 = v12;
    v15 = v14;
    scrollViewController2 = [_assetsScene scrollViewController];
    contentCoordinateSpace = [scrollViewController2 contentCoordinateSpace];

    [contentCoordinateSpace convertPoint:scrollView fromCoordinateSpace:{v13, v15}];
    memset(buf, 0, sizeof(buf));
    [PXPhotosDetailsAssetsWidget _assetIndexPathAtLocation:"_assetIndexPathAtLocation:padding:" padding:?];
    if (*buf == *off_1E7721F68)
    {
      v18 = MEMORY[0x1E695E0F0];
    }

    else
    {
      _dataSourceManager = [(PXPhotosDetailsAssetsWidget *)self _dataSourceManager];
      dataSource = [_dataSourceManager dataSource];

      v47 = *buf;
      v48 = *&buf[16];
      v41 = dataSource;
      v22 = [dataSource assetReferenceAtItemIndexPath:&v47];
      _draggingAssetReferences = [(PXPhotosDetailsAssetsWidget *)self _draggingAssetReferences];
      v24 = [_draggingAssetReferences containsObject:v22];

      if (v24)
      {
        v18 = MEMORY[0x1E695E0F0];
      }

      else
      {
        selectionManager = [_assetsScene selectionManager];
        selectionSnapshot = [selectionManager selectionSnapshot];
        v47 = *buf;
        v48 = *&buf[16];
        v40 = v22;
        if ([selectionSnapshot isIndexPathSelected:&v47])
        {
          v37 = selectionManager;
          v38 = selectionSnapshot;
          selectedIndexPaths = [selectionSnapshot selectedIndexPaths];
          v28 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(selectedIndexPaths, "count")}];
          v29 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(selectedIndexPaths, "count")}];
          v42[0] = MEMORY[0x1E69E9820];
          v42[1] = 3221225472;
          v42[2] = __72__PXPhotosDetailsAssetsWidget_dragInteraction_itemsForBeginningSession___block_invoke;
          v42[3] = &unk_1E773D670;
          v43 = v41;
          selfCopy = self;
          v30 = v29;
          v45 = v30;
          v31 = v28;
          v46 = v31;
          [selectedIndexPaths enumerateItemIndexPathsUsingBlock:v42];
          if ([(PXPhotosDetailsAssetsWidget *)self _addAssetReferencesToDrag:v31])
          {
            v18 = v30;
          }

          else
          {
            v18 = MEMORY[0x1E695E0F0];
          }

          selectionManager = v37;
          selectionSnapshot = v38;
        }

        else
        {
          v32 = [(PXPhotosDetailsAssetsWidget *)self _dragItemForAssetReference:v22];
          if (v32)
          {
            v33 = v22;
            selectedIndexPaths = v32;
            v39 = selectionSnapshot;
            v34 = [MEMORY[0x1E695DFD8] setWithObject:v33];
            v35 = [(PXPhotosDetailsAssetsWidget *)self _addAssetReferencesToDrag:v34];

            if (v35)
            {
              v49 = selectedIndexPaths;
              v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v49 count:1];
            }

            else
            {
              v18 = MEMORY[0x1E695E0F0];
            }

            selectionSnapshot = v39;
          }

          else
          {
            selectedIndexPaths = 0;
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

  widgetDelegate = [(PXPhotosDetailsAssetsWidget *)self widgetDelegate];
  [widgetDelegate widget:self transitionToViewController:v7 withTransitionType:2];
}

- (BOOL)_canDragAssetReferences:(id)references
{
  v17 = *MEMORY[0x1E69E9840];
  referencesCopy = references;
  if (+[PXSharingConfidentialityController confidentialityCheckRequired])
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = referencesCopy;
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

          asset = [*(*(&v12 + 1) + 8 * i) asset];
          if ([asset conformsToProtocol:&unk_1F1AE4C40] && +[PXSharingConfidentialityController confidentialWarningRequiredForAsset:](PXSharingConfidentialityController, "confidentialWarningRequiredForAsset:", asset))
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

- (void)_updateDraggingAssetReferencesWithDataSource:(id)source
{
  v19 = *MEMORY[0x1E69E9840];
  sourceCopy = source;
  v5 = MEMORY[0x1E695DFA8];
  _draggingAssetReferences = [(PXPhotosDetailsAssetsWidget *)self _draggingAssetReferences];
  v7 = [v5 setWithCapacity:{objc_msgSend(_draggingAssetReferences, "count")}];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  _draggingAssetReferences2 = [(PXPhotosDetailsAssetsWidget *)self _draggingAssetReferences];
  v9 = [_draggingAssetReferences2 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(_draggingAssetReferences2);
        }

        v13 = [sourceCopy assetReferenceForAssetReference:*(*(&v14 + 1) + 8 * v12)];
        if (v13)
        {
          [v7 addObject:v13];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [_draggingAssetReferences2 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  [(PXPhotosDetailsAssetsWidget *)self _setDraggingAssetReferences:v7];
}

- (BOOL)_addAssetReferencesToDrag:(id)drag
{
  dragCopy = drag;
  v5 = [(PXPhotosDetailsAssetsWidget *)self _canDragAssetReferences:dragCopy];
  if (v5)
  {
    _draggingAssetReferences = [(PXPhotosDetailsAssetsWidget *)self _draggingAssetReferences];
    if (_draggingAssetReferences)
    {
      v7 = _draggingAssetReferences;
      v8 = [_draggingAssetReferences setByAddingObjectsFromSet:dragCopy];
    }

    else
    {
      v8 = dragCopy;
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

- (id)_dragItemForAssetReference:(id)reference
{
  referenceCopy = reference;
  asset = [referenceCopy asset];
  v5 = PXDragAndDropItemProviderForDisplayAsset(asset);

  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E69DC990]) initWithItemProvider:v5];
    v7 = [[off_1E7721538 alloc] initWithAssetReference:referenceCopy];
    [v6 setLocalObject:v7];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_imageTileForDragItem:(id)item
{
  localObject = [item localObject];
  _dataSourceManager = [(PXPhotosDetailsAssetsWidget *)self _dataSourceManager];
  dataSource = [_dataSourceManager dataSource];

  v42 = 0u;
  v43 = 0u;
  assetReference = [localObject assetReference];
  v8 = [dataSource assetReferenceForAssetReference:assetReference];
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
    _assetsScene = [(PXPhotosDetailsAssetsWidget *)self _assetsScene];
    tilingController = [_assetsScene tilingController];

    currentLayout = [tilingController currentLayout];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (v14 = v42, v15 = v43, v40 = 0u, v41 = 0u, v38 = 0u, v39 = 0u, v36 = 0u, v37 = 0u, v34 = 0u, v35 = 0u, v32 = 0u, v33 = 0u, memset(&v31, 0, sizeof(v31)), v25 = xmmword_1A5380D20, v26 = v42, v27 = v43, v28 = 0u, v29 = 0u, v30 = 0, [currentLayout getGeometry:&v31 group:0 userData:0 forTileWithIdentifier:&v25]) && (objc_msgSend(currentLayout, "visibleRect"), v45.origin.x = v16, v45.origin.y = v17, v45.size.width = v18, v45.size.height = v19, CGRectIntersectsRect(v31, v45)))
    {
      v24 = 0;
      _assetsScene2 = [(PXPhotosDetailsAssetsWidget *)self _assetsScene];
      tilingController2 = [_assetsScene2 tilingController];
      v25 = xmmword_1A5380D20;
      v26 = v14;
      v27 = v15;
      v28 = 0u;
      v29 = 0u;
      v30 = 0;
      v22 = [tilingController2 getTile:&v24 geometry:0 group:0 userData:0 forTileWithIdentifier:&v25];

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
  dragOutEnabled = [v2 dragOutEnabled];

  return dragOutEnabled;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldBeRequiredToFailByGestureRecognizer:(id)gestureRecognizer
{
  gestureRecognizerCopy = gestureRecognizer;
  recognizerCopy = recognizer;
  _pinchGesture = [(PXPhotosDetailsAssetsWidget *)self _pinchGesture];

  if (_pinchGesture == recognizerCopy)
  {
    _swipeSelectionManager = [(PXPhotosDetailsAssetsWidget *)self _swipeSelectionManager];
    gesturesForFailureRequirements = [_swipeSelectionManager gesturesForFailureRequirements];
    v9 = [gesturesForFailureRequirements containsObject:gestureRecognizerCopy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  gestureRecognizerCopy = gestureRecognizer;
  recognizerCopy = recognizer;
  _touchGesture = [(PXPhotosDetailsAssetsWidget *)self _touchGesture];

  if (_touchGesture == recognizerCopy)
  {
    v10 = 1;
  }

  else
  {
    _touchGesture2 = [(PXPhotosDetailsAssetsWidget *)self _touchGesture];
    v10 = _touchGesture2 == gestureRecognizerCopy;
  }

  return v10;
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  if ([(PXPhotosDetailsAssetsWidget *)self isUserInteractionEnabled])
  {
    _assetsScene = [(PXPhotosDetailsAssetsWidget *)self _assetsScene];
    scrollViewController = [_assetsScene scrollViewController];
    contentCoordinateSpace = [scrollViewController contentCoordinateSpace];

    [beginCopy px_locationInCoordinateSpace:contentCoordinateSpace];
    v8 = [(PXPhotosDetailsAssetsWidget *)self _isLocationWithinCurrentLayoutBounds:?];
    _pinchGesture = [(PXPhotosDetailsAssetsWidget *)self _pinchGesture];

    v10 = _pinchGesture == beginCopy;
    v11 = _pinchGesture != beginCopy && v8;
    if (v10 && v8)
    {
      _pinchGesture2 = [(PXPhotosDetailsAssetsWidget *)self _pinchGesture];
      [_pinchGesture2 velocity];
      v11 = v13 > 0.0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (CGSize)minimumItemSizeForPlaybackInController:(id)controller
{
  _layoutEngine = [(PXPhotosDetailsAssetsWidget *)self _layoutEngine];
  layoutGenerator = [_layoutEngine layoutGenerator];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [layoutGenerator minHeroItemsSize];
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

- (BOOL)shouldEnablePlaybackForController:(id)controller
{
  _curate = [(PXPhotosDetailsAssetsWidget *)self _curate];
  if (_curate)
  {
    LOBYTE(_curate) = ![(PXPhotosDetailsAssetsWidget *)self isSelecting];
  }

  return _curate;
}

- (PXSimpleIndexPath)swipeSelectionManager:(SEL)manager itemIndexPathClosestAboveLocation:(id)location
{
  y = a5.y;
  x = a5.x;
  locationCopy = location;
  _assetsScene = [(PXPhotosDetailsAssetsWidget *)self _assetsScene];
  scrollViewController = [_assetsScene scrollViewController];
  contentCoordinateSpace = [scrollViewController contentCoordinateSpace];
  scrollView = [locationCopy scrollView];
  [contentCoordinateSpace convertPoint:scrollView fromCoordinateSpace:{x, y}];

  scrollView2 = [locationCopy scrollView];

  [scrollView2 frame];
  *&retstr->dataSourceIdentifier = 0u;
  *&retstr->item = 0u;
  PXEdgeInsetsMake();
}

- (PXSimpleIndexPath)swipeSelectionManager:(SEL)manager itemIndexPathClosestLeadingLocation:(id)location
{
  y = a5.y;
  x = a5.x;
  locationCopy = location;
  _assetsScene = [(PXPhotosDetailsAssetsWidget *)self _assetsScene];
  scrollViewController = [_assetsScene scrollViewController];
  contentCoordinateSpace = [scrollViewController contentCoordinateSpace];
  scrollView = [locationCopy scrollView];
  [contentCoordinateSpace convertPoint:scrollView fromCoordinateSpace:{x, y}];

  scrollView2 = [locationCopy scrollView];

  [scrollView2 frame];
  *&retstr->dataSourceIdentifier = 0u;
  *&retstr->item = 0u;
  PXEdgeInsetsMake();
}

- (PXSimpleIndexPath)swipeSelectionManager:(SEL)manager itemIndexPathAtLocation:(id)location
{
  y = a5.y;
  x = a5.x;
  locationCopy = location;
  _assetsScene = [(PXPhotosDetailsAssetsWidget *)self _assetsScene];
  scrollViewController = [_assetsScene scrollViewController];
  contentCoordinateSpace = [scrollViewController contentCoordinateSpace];
  scrollView = [locationCopy scrollView];

  [contentCoordinateSpace convertPoint:scrollView fromCoordinateSpace:{x, y}];
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

- (BOOL)swipeSelectionManager:(id)manager shouldBeginSelectionAtLocation:(CGPoint)location
{
  v4 = [(PXPhotosDetailsAssetsWidget *)self dragSession:manager];

  return v4 == 0;
}

- (void)swipeSelectionManagerAutomaticallyTransitionToMultiSelectMode:(id)mode
{
  context = [(PXPhotosDetailsAssetsWidget *)self context];
  viewModel = [context viewModel];

  [viewModel performChanges:&__block_literal_global_393_146099];
}

- (void)scrollViewControllerContentBoundsDidChange:(id)change
{
  _inlinePlaybackController = [(PXPhotosDetailsAssetsWidget *)self _inlinePlaybackController];
  [_inlinePlaybackController visibleRectDidChange];
}

- (void)scrollViewControllerDidScroll:(id)scroll
{
  oneUpPresentation = [(PXPhotosDetailsAssetsWidget *)self oneUpPresentation];
  [oneUpPresentation invalidatePresentingGeometry];

  _inlinePlaybackController = [(PXPhotosDetailsAssetsWidget *)self _inlinePlaybackController];
  [_inlinePlaybackController visibleRectDidChange];
}

- (void)oneUpPresentation:(id)presentation setHiddenAssetReferences:(id)references
{
  v23 = *MEMORY[0x1E69E9840];
  referencesCopy = references;
  _dataSourceManager = [(PXPhotosDetailsAssetsWidget *)self _dataSourceManager];
  dataSource = [_dataSourceManager dataSource];

  v8 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(referencesCopy, "count")}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = referencesCopy;
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

        v14 = [dataSource assetReferenceForAssetReference:*(*(&v18 + 1) + 8 * v13)];
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

- (void)oneUpPresentation:(id)presentation scrollAssetReferenceToVisible:(id)visible
{
  visibleCopy = visible;
  _assetsScene = [(PXPhotosDetailsAssetsWidget *)self _assetsScene];
  tilingController = [_assetsScene tilingController];

  scrollController = [tilingController scrollController];
  [scrollController updateIfNeeded];

  currentLayout = [tilingController currentLayout];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    currentLayout2 = [tilingController currentLayout];
  }

  else
  {
    currentLayout2 = 0;
  }

  memset(v21, 0, sizeof(v21));
  dataSource = [currentLayout2 dataSource];
  v12 = dataSource;
  if (dataSource)
  {
    [dataSource indexPathForAssetReference:visibleCopy];
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
    if ([currentLayout2 getGeometry:v20 group:0 userData:0 forTileWithIdentifier:&v13])
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

- (id)oneUpPresentation:(id)presentation currentImageForAssetReference:(id)reference
{
  referenceCopy = reference;
  memset(v27, 0, sizeof(v27));
  _assetsScene = [(PXPhotosDetailsAssetsWidget *)self _assetsScene];
  currentLayout = [_assetsScene currentLayout];
  dataSource = [currentLayout dataSource];
  v9 = dataSource;
  if (dataSource)
  {
    [dataSource indexPathForAssetReference:referenceCopy];
  }

  else
  {
    memset(v27, 0, sizeof(v27));
  }

  v10 = *&v27[0];
  if (*&v27[0] == *off_1E7721F68)
  {
    image = 0;
  }

  else
  {
    v18 = *(v27 + 8);
    v12 = *(&v27[1] + 1);
    v26 = 0;
    _assetsScene2 = [(PXPhotosDetailsAssetsWidget *)self _assetsScene];
    tilingController = [_assetsScene2 tilingController];
    v19 = xmmword_1A5380D20;
    v20 = v10;
    v21 = v18;
    v22 = v12;
    v23 = 0u;
    v24 = 0u;
    v25 = 0;
    v15 = [tilingController getTile:&v26 geometry:0 group:0 userData:0 forTileWithIdentifier:&v19];

    image = 0;
    if (v15)
    {
      v16 = v26;
      if ([v16 conformsToProtocol:&unk_1F1A50488])
      {
        image = [v16 image];
      }

      else
      {
        image = 0;
      }
    }
  }

  return image;
}

- (id)oneUpPresentationActionManagerForPreviewing:(id)previewing
{
  _navigatedAssetReference = [(PXPhotosDetailsAssetsWidget *)self _navigatedAssetReference];
  v5 = [(PXPhotosDetailsAssetsWidget *)self _assetActionManagerForAssetsReference:_navigatedAssetReference];

  return v5;
}

- (int64_t)oneUpPresentationOrigin:(id)origin
{
  context = [(PXPhotosDetailsAssetsWidget *)self context];
  viewSourceOrigin = [context viewSourceOrigin];
  _curate = [(PXPhotosDetailsAssetsWidget *)self _curate];
  if (viewSourceOrigin <= 5)
  {
    v7 = 18;
    if (!_curate)
    {
      v7 = 19;
    }

    v13 = 20;
    if (!_curate)
    {
      v13 = 21;
    }

    if (viewSourceOrigin != 5)
    {
      v13 = 0;
    }

    if (viewSourceOrigin != 4)
    {
      v7 = v13;
    }

    v10 = 14;
    if (!_curate)
    {
      v10 = 15;
    }

    v14 = 16;
    if (!_curate)
    {
      v14 = 17;
    }

    if (viewSourceOrigin != 3)
    {
      v14 = 0;
    }

    if (viewSourceOrigin != 2)
    {
      v10 = v14;
    }

    v12 = viewSourceOrigin <= 3;
  }

  else
  {
    v7 = 28;
    if (!_curate)
    {
      v7 = 29;
    }

    v8 = 22;
    if (!_curate)
    {
      v8 = 23;
    }

    v9 = 31;
    if (viewSourceOrigin != 10)
    {
      v9 = 0;
    }

    if (viewSourceOrigin != 9)
    {
      v8 = v9;
    }

    if (viewSourceOrigin != 8)
    {
      v7 = v8;
    }

    v10 = 24;
    if (!_curate)
    {
      v10 = 25;
    }

    v11 = 26;
    if (!_curate)
    {
      v11 = 27;
    }

    if (viewSourceOrigin != 7)
    {
      v11 = 0;
    }

    if (viewSourceOrigin != 6)
    {
      v10 = v11;
    }

    v12 = viewSourceOrigin <= 7;
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

- (void)playButtonTileWasTapped:(id)tapped
{
  tappedCopy = tapped;
  v19 = 0;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  _tilingController = [(PXPhotosDetailsAssetsWidget *)self _tilingController];
  v6 = _tilingController;
  if (_tilingController)
  {
    [_tilingController tileIdentifierForTile:tappedCopy];
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

  _dataSourceManager = [(PXPhotosDetailsAssetsWidget *)self _dataSourceManager];
  dataSource = [_dataSourceManager dataSource];
  identifier = [dataSource identifier];

  if ((v14 - 3) <= 2 && v15 != 0x7FFFFFFFFFFFFFFFLL && v15 == identifier)
  {
    _dataSourceManager2 = [(PXPhotosDetailsAssetsWidget *)self _dataSourceManager];
    dataSource2 = [_dataSourceManager2 dataSource];
    v13[0] = v15;
    v13[1] = v16;
    v12 = [dataSource2 assetReferenceAtItemIndexPath:v13];

    if (v12)
    {
      [(PXPhotosDetailsAssetsWidget *)self _handleTapOnAssetReference:v12 autoPlayVideo:1 activity:0];
    }
  }
}

- (void)_handleTapOnFocusedAssetReferenceWithActivity:(unint64_t)activity
{
  _focusedAssetReference = [(PXPhotosDetailsAssetsWidget *)self _focusedAssetReference];
  if (_focusedAssetReference)
  {
    v6 = _focusedAssetReference;
    [(PXPhotosDetailsAssetsWidget *)self _handleTapOnAssetReference:_focusedAssetReference autoPlayVideo:0 activity:activity];
    _focusedAssetReference = v6;
  }
}

- (void)_handleTapOnAssetReference:(id)reference autoPlayVideo:(BOOL)video activity:(unint64_t)activity
{
  videoCopy = video;
  referenceCopy = reference;
  if ([(PXPhotosDetailsAssetsWidget *)self isSelecting])
  {
    v25 = 0u;
    v26 = 0u;
    if (referenceCopy)
    {
      [referenceCopy indexPath];
    }

    _assetsScene = [(PXPhotosDetailsAssetsWidget *)self _assetsScene];
    selectionManager = [_assetsScene selectionManager];

    selectionSnapshot = [selectionManager selectionSnapshot];
    v24[0] = v25;
    v24[1] = v26;
    v12 = [selectionSnapshot isIndexPathSelected:v24];

    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __81__PXPhotosDetailsAssetsWidget__handleTapOnAssetReference_autoPlayVideo_activity___block_invoke;
    v20[3] = &__block_descriptor_65_e37_v16__0___PXMutableSelectionManager__8l;
    v21 = v25;
    v22 = v26;
    v23 = v12;
    [selectionManager performChanges:v20];
  }

  else
  {
    oneUpPresentation = [(PXPhotosDetailsAssetsWidget *)self oneUpPresentation];
    if (([oneUpPresentation isContextMenuInteractionActive] & 1) == 0)
    {
      WeakRetained = objc_loadWeakRetained(&self->_widgetOneUpDelegate);
      if (!WeakRetained || (v15 = WeakRetained, v16 = objc_loadWeakRetained(&self->_widgetOneUpDelegate), v17 = [v16 photosDetailsAssetWidget:self shouldPresentOneUpForAssetReference:referenceCopy], v16, v15, v17))
      {
        [(PXPhotosDetailsAssetsWidget *)self _setNavigatedAssetReference:referenceCopy autoPlayVideo:videoCopy];
        oneUpPresentation2 = [(PXPhotosDetailsAssetsWidget *)self oneUpPresentation];
        v19[0] = MEMORY[0x1E69E9820];
        v19[1] = 3221225472;
        v19[2] = __81__PXPhotosDetailsAssetsWidget__handleTapOnAssetReference_autoPlayVideo_activity___block_invoke_2;
        v19[3] = &__block_descriptor_40_e44_v16__0___PXOneUpPresentationConfiguration__8l;
        v19[4] = activity;
        [oneUpPresentation2 startWithConfigurationHandler:v19];
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

- (void)presentOneUpForAssetReference:(id)reference animated:(BOOL)animated
{
  referenceCopy = reference;
  if ([(PXPhotosDetailsAssetsWidget *)self _curate])
  {
    [(PXPhotosDetailsAssetsWidget *)self _toggleCuration];
  }

  v17 = 0u;
  v18 = 0u;
  _dataSourceManager = [(PXPhotosDetailsAssetsWidget *)self _dataSourceManager];
  dataSource = [_dataSourceManager dataSource];
  v9 = dataSource;
  if (dataSource)
  {
    [dataSource indexPathForAssetReference:referenceCopy];
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
  }

  if (v17 != *off_1E7721F68)
  {
    WeakRetained = objc_loadWeakRetained(&self->_widgetOneUpDelegate);
    if (!WeakRetained || (v11 = WeakRetained, v12 = objc_loadWeakRetained(&self->_widgetOneUpDelegate), v13 = [v12 photosDetailsAssetWidget:self shouldPresentOneUpForAssetReference:referenceCopy], v12, v11, v13))
    {
      [(PXPhotosDetailsAssetsWidget *)self _setNavigatedAssetReference:referenceCopy autoPlayVideo:0];
      oneUpPresentation = [(PXPhotosDetailsAssetsWidget *)self oneUpPresentation];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __70__PXPhotosDetailsAssetsWidget_presentOneUpForAssetReference_animated___block_invoke;
      v15[3] = &__block_descriptor_33_e44_v16__0___PXOneUpPresentationConfiguration__8l;
      animatedCopy = animated;
      [oneUpPresentation startWithConfigurationHandler:v15];
    }
  }
}

- (void)handleTouch:(id)touch
{
  touchCopy = touch;
  state = [touchCopy state];
  widgetDelegate = [(PXPhotosDetailsAssetsWidget *)self widgetDelegate];
  v6 = [widgetDelegate widgetScrollViewControllerHostingWidget:self];

  scrollView = [v6 scrollView];
  v8 = scrollView;
  if ((state - 3) >= 3)
  {
    if (state == 1 && ([scrollView isDragging] & 1) == 0 && !-[PXPhotosDetailsAssetsWidget _canDragOut](self, "_canDragOut"))
    {
      _assetsScene = [(PXPhotosDetailsAssetsWidget *)self _assetsScene];
      scrollViewController = [_assetsScene scrollViewController];
      contentCoordinateSpace = [scrollViewController contentCoordinateSpace];

      [touchCopy px_locationInCoordinateSpace:contentCoordinateSpace];
      v12 = [PXPhotosDetailsAssetsWidget _assetReferenceAtPoint:"_assetReferenceAtPoint:padding:" padding:?];
      [(PXPhotosDetailsAssetsWidget *)self _setHighlightedAssetReference:v12];
    }
  }

  else
  {
    [(PXPhotosDetailsAssetsWidget *)self _setHighlightedAssetReference:0];
  }
}

- (void)handlePinch:(id)pinch
{
  pinchCopy = pinch;
  oneUpPresentation = [(PXPhotosDetailsAssetsWidget *)self oneUpPresentation];
  v5 = [oneUpPresentation handlePresentingPinchGestureRecognizer:pinchCopy];

  if ((v5 & 1) == 0 && !-[PXPhotosDetailsAssetsWidget isSelecting](self, "isSelecting") && ([pinchCopy state] == 1 || objc_msgSend(pinchCopy, "state") == 2))
  {
    _assetsScene = [(PXPhotosDetailsAssetsWidget *)self _assetsScene];
    scrollViewController = [_assetsScene scrollViewController];
    contentCoordinateSpace = [scrollViewController contentCoordinateSpace];
    [pinchCopy px_locationInCoordinateSpace:contentCoordinateSpace];
    v10 = v9;
    v12 = v11;

    v13 = [(PXPhotosDetailsAssetsWidget *)self _assetReferenceAtPoint:v10 padding:v12, *off_1E7721FA0, *(off_1E7721FA0 + 1), *(off_1E7721FA0 + 2), *(off_1E7721FA0 + 3)];
    if (v13)
    {
      WeakRetained = objc_loadWeakRetained(&self->_widgetOneUpDelegate);
      if (!WeakRetained || (v15 = WeakRetained, v16 = objc_loadWeakRetained(&self->_widgetOneUpDelegate), v17 = [v16 photosDetailsAssetWidget:self shouldPresentOneUpForAssetReference:v13], v16, v15, v17))
      {
        [(PXPhotosDetailsAssetsWidget *)self _setNavigatedAssetReference:v13 autoPlayVideo:0];
        oneUpPresentation2 = [(PXPhotosDetailsAssetsWidget *)self oneUpPresentation];
        [oneUpPresentation2 startWithConfigurationHandler:&__block_literal_global_380];
      }
    }
  }
}

- (void)handleTap:(id)tap
{
  tapCopy = tap;
  dragSession = [(PXPhotosDetailsAssetsWidget *)self dragSession];

  if ([tapCopy state] == 3 && !dragSession)
  {
    _assetsScene = [(PXPhotosDetailsAssetsWidget *)self _assetsScene];
    scrollViewController = [_assetsScene scrollViewController];
    contentCoordinateSpace = [scrollViewController contentCoordinateSpace];
    [tapCopy px_locationInCoordinateSpace:contentCoordinateSpace];
    v9 = v8;
    v11 = v10;

    v12 = [(PXPhotosDetailsAssetsWidget *)self _assetReferenceAtPoint:v9 padding:v11, *off_1E7721FA0, *(off_1E7721FA0 + 1), *(off_1E7721FA0 + 2), *(off_1E7721FA0 + 3)];
    if (v12)
    {
      [(PXPhotosDetailsAssetsWidget *)self _handleTapOnAssetReference:v12 autoPlayVideo:0 activity:0];
    }
  }
}

- (id)tilingController:(id)controller transitionAnimationCoordinatorForChange:(id)change
{
  controllerCopy = controller;
  changeCopy = change;
  if ([(PXPhotosDetailsAssetsWidget *)self _transitionWithoutAnimation])
  {
    v8 = 0;
  }

  else
  {
    fromLayout = [changeCopy fromLayout];
    dataSource = [fromLayout dataSource];

    toLayout = [changeCopy toLayout];
    dataSource2 = [toLayout dataSource];

    photosDataSource = [dataSource photosDataSource];
    wantsCurationForFirstAssetCollection = [photosDataSource wantsCurationForFirstAssetCollection];

    photosDataSource2 = [dataSource2 photosDataSource];
    wantsCurationForFirstAssetCollection2 = [photosDataSource2 wantsCurationForFirstAssetCollection];

    if (dataSource == dataSource2 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || wantsCurationForFirstAssetCollection == wantsCurationForFirstAssetCollection2 || (-[PXPhotosDetailsAssetsWidget _dataSourceManager](self, "_dataSourceManager"), v17 = objc_claimAutoreleasedReturnValue(), [v17 changeHistory], v18 = objc_claimAutoreleasedReturnValue(), +[PXAssetsTileTransitionCoordinator transitionCoordinatorForChange:changeHistory:](PXAssetsTileTransitionCoordinator, "transitionCoordinatorForChange:changeHistory:", changeCopy, v18), v8 = objc_claimAutoreleasedReturnValue(), v18, v17, objc_msgSend(v8, "setTreatRemovalsAsDeletes:", 0), !v8))
    {
      _assetsScene = [(PXPhotosDetailsAssetsWidget *)self _assetsScene];
      v8 = [_assetsScene tilingController:controllerCopy transitionAnimationCoordinatorForChange:changeCopy];
    }
  }

  return v8;
}

- (id)tilingController:(id)controller tileIdentifierConverterForChange:(id)change
{
  changeCopy = change;
  controllerCopy = controller;
  _assetsScene = [(PXPhotosDetailsAssetsWidget *)self _assetsScene];
  v9 = [_assetsScene tilingController:controllerCopy tileIdentifierConverterForChange:changeCopy];

  return v9;
}

- (CGPoint)tilingController:(id)controller targetVisibleOriginForLayout:(id)layout proposedVisibleOrigin:(CGPoint)origin
{
  y = origin.y;
  x = origin.x;
  layoutCopy = layout;
  controllerCopy = controller;
  _assetsScene = [(PXPhotosDetailsAssetsWidget *)self _assetsScene];
  [_assetsScene tilingController:controllerCopy targetVisibleOriginForLayout:layoutCopy proposedVisibleOrigin:{x, y}];
  v13 = v12;
  v15 = v14;

  v16 = v13;
  v17 = v15;
  result.y = v17;
  result.x = v16;
  return result;
}

- (CGPoint)tilingController:(id)controller initialVisibleOriginForLayout:(id)layout
{
  controllerCopy = controller;
  layoutCopy = layout;
  _currentDataSourceStressTest = [(PXPhotosDetailsAssetsWidget *)self _currentDataSourceStressTest];
  isRunning = [_currentDataSourceStressTest isRunning];

  if (!isRunning)
  {
    v30 = a2;
    currentLayout = [controllerCopy currentLayout];
    v16 = layoutCopy;
    dataSource = [currentLayout dataSource];
    dataSource2 = [v16 dataSource];
    photosDataSource = [dataSource photosDataSource];
    wantsCurationForFirstAssetCollection = [photosDataSource wantsCurationForFirstAssetCollection];

    photosDataSource2 = [dataSource2 photosDataSource];
    wantsCurationForFirstAssetCollection2 = [photosDataSource2 wantsCurationForFirstAssetCollection];

    photosDataSource3 = [dataSource photosDataSource];
    sortDescriptors = [photosDataSource3 sortDescriptors];

    photosDataSource4 = [dataSource2 photosDataSource];
    sortDescriptors2 = [photosDataSource4 sortDescriptors];

    if (dataSource == dataSource2 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || wantsCurationForFirstAssetCollection == wantsCurationForFirstAssetCollection2 && (sortDescriptors == sortDescriptors2 || ([sortDescriptors isEqual:sortDescriptors2] & 1) != 0))
    {
      [(PXPhotosDetailsAssetsWidget *)self _visibleOriginScrollTarget];
      PXPointIsNull();
    }

    widgetDelegate = [(PXPhotosDetailsAssetsWidget *)self widgetDelegate];
    v28 = [widgetDelegate widgetDefaultContentViewAnchoringTypeForDisclosureHeightChange:self];

    if (v28)
    {
      [currentLayout contentBounds];
      CGRectGetMinX(v34);
      [currentLayout contentBounds];
      PXRectEdgeValue();
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:v30 object:self file:@"PXPhotosDetailsAssetsWidget.m" lineNumber:1444 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  [layoutCopy contentBounds];
  v12 = v11;
  v14 = v13 + -100.0;

  v25 = v12;
  v26 = v14;
  result.y = v26;
  result.x = v25;
  return result;
}

- (void)checkInTile:(void *)tile withIdentifier:(PXTileIdentifier *)identifier
{
  _inlinePlaybackController = [(PXPhotosDetailsAssetsWidget *)self _inlinePlaybackController];
  v8 = *&identifier->index[5];
  v18 = *&identifier->index[3];
  v19 = v8;
  v20 = *&identifier->index[7];
  v21 = identifier->index[9];
  v9 = *&identifier->index[1];
  v16 = *&identifier->length;
  v17 = v9;
  [_inlinePlaybackController checkInTile:tile withIdentifier:&v16];

  _assetsScene = [(PXPhotosDetailsAssetsWidget *)self _assetsScene];
  v11 = *&identifier->index[5];
  v18 = *&identifier->index[3];
  v19 = v11;
  v20 = *&identifier->index[7];
  v21 = identifier->index[9];
  v12 = *&identifier->index[1];
  v16 = *&identifier->length;
  v17 = v12;
  if ([_assetsScene providesTileForIdentifier:&v16])
  {
    v13 = *&identifier->index[5];
    v18 = *&identifier->index[3];
    v19 = v13;
    v20 = *&identifier->index[7];
    v21 = identifier->index[9];
    v14 = *&identifier->index[1];
    v16 = *&identifier->length;
    v17 = v14;
    [_assetsScene checkInTile:tile withIdentifier:&v16];
  }

  else
  {
    viewTileReusePool = [_assetsScene viewTileReusePool];
    [viewTileReusePool checkInReusableObject:tile];

    [(NSMutableSet *)self->_tilesInUse removeObject:tile];
  }
}

- (void)checkOutTileForIdentifier:(PXTileIdentifier *)identifier layout:(id)layout
{
  layoutCopy = layout;
  _assetsScene = [(PXPhotosDetailsAssetsWidget *)self _assetsScene];
  v9 = *&identifier->index[5];
  v27 = *&identifier->index[3];
  v28 = v9;
  v29 = *&identifier->index[7];
  v30 = identifier->index[9];
  v10 = *&identifier->index[1];
  v25 = *&identifier->length;
  v26 = v10;
  if (![_assetsScene providesTileForIdentifier:&v25])
  {
    if (identifier->length == 1)
    {
      v14 = identifier->index[0];
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

      viewTileReusePool = [_assetsScene viewTileReusePool];
      v13 = [viewTileReusePool checkOutReusableObjectWithReuseIdentifier:v15];

      [(NSMutableSet *)self->_tilesInUse addObject:v13];
      if (v13)
      {
        goto LABEL_16;
      }
    }

LABEL_15:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v18 = *&identifier->index[5];
    v27 = *&identifier->index[3];
    v28 = v18;
    v29 = *&identifier->index[7];
    v30 = identifier->index[9];
    v19 = *&identifier->index[1];
    v25 = *&identifier->length;
    v26 = v19;
    v20 = PXTileIdentifierDescription(&v25);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosDetailsAssetsWidget.m" lineNumber:1399 description:{@"%@ couldn't check out tile for identifier:%@, layout:%@", self, v20, layoutCopy}];

    v13 = 0;
    goto LABEL_16;
  }

  v11 = *&identifier->index[5];
  v27 = *&identifier->index[3];
  v28 = v11;
  v29 = *&identifier->index[7];
  v30 = identifier->index[9];
  v12 = *&identifier->index[1];
  v25 = *&identifier->length;
  v26 = v12;
  v13 = [_assetsScene checkOutTileForIdentifier:&v25 layout:layoutCopy];
  if (identifier->length - 3 <= 2 && identifier->index[1] != 0x7FFFFFFFFFFFFFFFLL && identifier->index[0] == 6332437)
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
  _inlinePlaybackController = [(PXPhotosDetailsAssetsWidget *)self _inlinePlaybackController];
  v22 = *&identifier->index[5];
  v27 = *&identifier->index[3];
  v28 = v22;
  v29 = *&identifier->index[7];
  v30 = identifier->index[9];
  v23 = *&identifier->index[1];
  v25 = *&identifier->length;
  v26 = v23;
  [_inlinePlaybackController checkOutTile:v13 withIdentifier:&v25];

  return v13;
}

- (id)assetsScene:(id)scene tileIdentifierConverterForChange:(id)change
{
  v14[2] = *MEMORY[0x1E69E9840];
  changeCopy = change;
  sceneCopy = scene;
  tilingController = [sceneCopy tilingController];
  v8 = [sceneCopy tilingController:tilingController tileIdentifierConverterForChange:changeCopy];

  v9 = objc_alloc_init(_PXAssetsWidgetTileIdentifierConverter);
  v10 = [PXComposedTileIdentifierConverter alloc];
  v14[0] = v8;
  v14[1] = v9;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
  v12 = [(PXComposedTileIdentifierConverter *)v10 initWithTileIdentifierConverters:v11];

  return v12;
}

- (id)assetsScene:(id)scene layoutForDataSource:(id)source
{
  v44 = *MEMORY[0x1E69E9840];
  sourceCopy = source;
  [(PXPhotosDetailsAssetsWidget *)self _updateLayoutEngineIfNeeded];
  v7 = MEMORY[0x1E695DFA8];
  _hiddenAssetReferences = [(PXPhotosDetailsAssetsWidget *)self _hiddenAssetReferences];
  v9 = [v7 setWithCapacity:{objc_msgSend(_hiddenAssetReferences, "count")}];

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  _hiddenAssetReferences2 = [(PXPhotosDetailsAssetsWidget *)self _hiddenAssetReferences];
  v11 = [_hiddenAssetReferences2 countByEnumeratingWithState:&v39 objects:v43 count:16];
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
          objc_enumerationMutation(_hiddenAssetReferences2);
        }

        v15 = [sourceCopy assetReferenceForAssetReference:*(*(&v39 + 1) + 8 * i)];
        if (v15)
        {
          [v9 addObject:v15];
        }
      }

      v12 = [_hiddenAssetReferences2 countByEnumeratingWithState:&v39 objects:v43 count:16];
    }

    while (v12);
  }

  [(PXPhotosDetailsAssetsWidget *)self _setHiddenAssetReferences:v9];
  _layoutEngine = [(PXPhotosDetailsAssetsWidget *)self _layoutEngine];
  dataSourceSnapshot = [_layoutEngine dataSourceSnapshot];
  identifier = [dataSourceSnapshot identifier];

  _dataSourceManager = [(PXPhotosDetailsAssetsWidget *)self _dataSourceManager];
  changeHistory = [_dataSourceManager changeHistory];
  v21 = [changeHistory changeDetailsFromDataSourceIdentifier:identifier toDataSourceIdentifier:{objc_msgSend(sourceCopy, "identifier")}];

  if ([v21 count] == 1)
  {
    firstObject = [v21 firstObject];
  }

  else
  {
    firstObject = 0;
  }

  _layoutEngine2 = [(PXPhotosDetailsAssetsWidget *)self _layoutEngine];
  v33 = MEMORY[0x1E69E9820];
  v34 = 3221225472;
  v35 = __63__PXPhotosDetailsAssetsWidget_assetsScene_layoutForDataSource___block_invoke;
  v36 = &unk_1E77440B8;
  v24 = sourceCopy;
  v37 = v24;
  v25 = firstObject;
  v38 = v25;
  v26 = [_layoutEngine2 performChangesAndWait:&v33];

  _createNewLayout = [(PXPhotosDetailsAssetsWidget *)self _createNewLayout];
  dataSource = [_createNewLayout dataSource];
  v29 = [dataSource isEqual:v24];

  if ((v29 & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    dataSource2 = [_createNewLayout dataSource];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosDetailsAssetsWidget.m" lineNumber:1354 description:{@"Should be getting a layout with the updated correct data source from the layout engine %@ != %@", v24, dataSource2, v33, v34, v35, v36, v37}];
  }

  return _createNewLayout;
}

- (void)assetsScene:(id)scene didTransitionToDataSource:(id)source
{
  sourceCopy = source;
  [(PXPhotosDetailsAssetsWidget *)self _updateHasLoadedContentData];
  [(PXPhotosDetailsAssetsWidget *)self _updateShowCurationButton];
  [(PXPhotosDetailsAssetsWidget *)self _updateFocusedAssetReference];
  [(PXPhotosDetailsAssetsWidget *)self _updateDraggingAssetReferencesWithDataSource:sourceCopy];

  [(PXPhotosDetailsAssetsWidget *)self _logAssetCountsIfNecessary];
  widgetDelegate = [(PXPhotosDetailsAssetsWidget *)self widgetDelegate];
  [widgetDelegate widget:self animateChanges:0 withAnimationOptions:0];

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

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  changeCopy = change;
  observableCopy = observable;
  if (PXSpecManagerObservationContext_146128 != context)
  {
    if (PXStressTestObservationContext != context)
    {
      if (PXPhotosDetailsContextObservationContext_146129 != context)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosDetailsAssetsWidget.m" lineNumber:1303 description:@"unknown observation context"];
LABEL_22:

        goto LABEL_23;
      }

      if ((changeCopy & 0x30) != 0)
      {
        widgetDelegate = [(PXPhotosDetailsAssetsWidget *)self widgetDelegate];
        [widgetDelegate widgetLocalizedTitleDidChange:self];
      }

      if ((changeCopy & 8) != 0)
      {
        v12 = PLPeopleGetLog();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *v19 = 0;
          _os_log_impl(&dword_1A3C1C000, v12, OS_LOG_TYPE_DEFAULT, "PXPhotosDetailsAssetsWidget: People changed, will refresh Data Source", v19, 2u);
        }

        currentHandler = [(PXPhotosDetailsAssetsWidget *)self _photosDataSource];
        v13 = objc_opt_class();
        context = [(PXPhotosDetailsAssetsWidget *)self context];
        people = [context people];
        [v13 _refreshSortDescriptorsInPhotosDataSource:currentHandler withPeople:people];

        firstAssetCollection = [currentHandler firstAssetCollection];
        if (firstAssetCollection)
        {
          [currentHandler setWantsCuration:-[PXPhotosDetailsAssetsWidget _curate](self forAssetCollection:{"_curate"), firstAssetCollection}];
        }

        goto LABEL_22;
      }

      goto LABEL_23;
    }

    if (changeCopy)
    {
      widgetDelegate2 = [(PXPhotosDetailsAssetsWidget *)self widgetDelegate];
      [widgetDelegate2 widgetLocalizedSubtitleDidChange:self];

      if ((changeCopy & 2) == 0)
      {
LABEL_9:
        if ((changeCopy & 4) == 0)
        {
          goto LABEL_23;
        }

        goto LABEL_21;
      }
    }

    else if ((changeCopy & 2) == 0)
    {
      goto LABEL_9;
    }

    _assetsScene = [(PXPhotosDetailsAssetsWidget *)self _assetsScene];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __60__PXPhotosDetailsAssetsWidget_observable_didChange_context___block_invoke;
    v20[3] = &unk_1E774C648;
    v20[4] = self;
    [_assetsScene performChanges:v20];

    if ((changeCopy & 4) == 0)
    {
      goto LABEL_23;
    }

LABEL_21:
    currentHandler = [(PXPhotosDetailsAssetsWidget *)self widgetDelegate];
    [currentHandler widgetLocalizedTitleDidChange:self];
    goto LABEL_22;
  }

  if (changeCopy)
  {
    [(PXPhotosDetailsAssetsWidget *)self _invalidateLayoutGenerator];
    [(PXPhotosDetailsAssetsWidget *)self _updateLayoutEngineIfNeeded];
    [(PXPhotosDetailsAssetsWidget *)self _updateTilingLayoutIfNeeded];
    currentHandler = [(PXPhotosDetailsAssetsWidget *)self widgetDelegate];
    [currentHandler widgetInvalidateContentLayoutStyle:self];
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

- (CGRect)engineDrivenLayout:(id)layout contentsRectForItemAtIndexPath:(PXSimpleIndexPath *)path forAspectRatio:(double)ratio
{
  dataSource = [layout dataSource];
  if ([dataSource numberOfItemsInSection:path->section] >> 3 > 0x270)
  {
    v13 = *off_1E77221F8;
    v15 = *(off_1E77221F8 + 1);
    v17 = *(off_1E77221F8 + 2);
    v19 = *(off_1E77221F8 + 3);
  }

  else
  {
    v8 = *&path->item;
    v24 = *&path->dataSourceIdentifier;
    v25 = v8;
    v9 = [dataSource assetAtItemIndexPath:&v24];
    v10.f64[0] = NAN;
    v10.f64[1] = NAN;
    v24 = *&path->dataSourceIdentifier;
    v25 = vnegq_f64(v10);
    v11 = [dataSource assetCollectionAtSectionIndexPath:&v24];
    [v9 bestCropRectForAspectRatio:0 verticalContentMode:objc_msgSend(v11 cropMode:{"px_shouldUseFacesRectForSmartCropping"), ratio}];
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

- (double)engineDrivenLayout:(id)layout zPositionForItemAtIndexPath:(PXSimpleIndexPath *)path
{
  layoutCopy = layout;
  dataSource = [layoutCopy dataSource];
  photosDataSource = [dataSource photosDataSource];

  v8 = *&path->item;
  v17 = *&path->dataSourceIdentifier;
  v18 = v8;
  if ([photosDataSource isAssetAtIndexPathPartOfCuratedSet:&v17])
  {
    v9 = 1000000.0;
  }

  else
  {
    v9 = 0.0;
  }

  item = path->item;
  v11 = (100 * item);
  if (layoutCopy)
  {
    [layoutCopy focusedIndexPath];
    item = path->item;
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
  if (path->dataSourceIdentifier == v13 && path->section == v12 && item == v14 && path->subitem == *(&v18 + 1))
  {
    v15 = v15 + 2000000.0;
  }

  return v15;
}

- (double)engineDrivenLayout:(id)layout aspectRatioForItemAtIndexPath:(PXSimpleIndexPath *)path
{
  dataSource = [layout dataSource];
  photosDataSource = [dataSource photosDataSource];
  v7 = *&path->item;
  v12[0] = *&path->dataSourceIdentifier;
  v12[1] = v7;
  v8 = [photosDataSource assetAtSimpleIndexPath:v12];

  [v8 aspectRatio];
  v10 = v9;

  return v10;
}

- (void)commitPreviewViewController:(id)controller
{
  controllerCopy = controller;
  oneUpPresentation = [(PXPhotosDetailsAssetsWidget *)self oneUpPresentation];
  [oneUpPresentation commitPreviewViewController:controllerCopy];
}

- (void)didDismissPreviewViewController:(id)controller committing:(BOOL)committing
{
  committingCopy = committing;
  controllerCopy = controller;
  oneUpPresentation = [(PXPhotosDetailsAssetsWidget *)self oneUpPresentation];
  [oneUpPresentation didDismissPreviewViewController:controllerCopy committing:committingCopy];
}

- (id)genericPreviewViewController
{
  context = [(PXPhotosDetailsAssetsWidget *)self context];
  viewModel = [context viewModel];

  selectionManager = [viewModel selectionManager];
  selectionSnapshot = [selectionManager selectionSnapshot];

  if ([selectionSnapshot isAnyItemSelected])
  {
    v13 = 0u;
    v14 = 0u;
    if (selectionSnapshot)
    {
      [selectionSnapshot firstSelectedIndexPath];
    }

    dataSource = [selectionSnapshot dataSource];
    v12[0] = v13;
    v12[1] = v14;
    v8 = [dataSource objectReferenceAtIndexPath:v12];

    [(PXPhotosDetailsAssetsWidget *)self _setNavigatedAssetReference:v8 autoPlayVideo:0];
    oneUpPresentation = [(PXPhotosDetailsAssetsWidget *)self oneUpPresentation];
    v10 = [oneUpPresentation previewViewControllerAllowingActions:1];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)previewViewControllerAtLocation:(CGPoint)location fromSourceView:(id)view
{
  v5 = [(PXPhotosDetailsAssetsWidget *)self _assetReferenceAtPoint:view padding:location.x, location.y, *off_1E7721FA8, *(off_1E7721FA8 + 1), *(off_1E7721FA8 + 2), *(off_1E7721FA8 + 3)];
  if (v5)
  {
    [(PXPhotosDetailsAssetsWidget *)self _setNavigatedAssetReference:v5 autoPlayVideo:0];
    oneUpPresentation = [(PXPhotosDetailsAssetsWidget *)self oneUpPresentation];
    v7 = [oneUpPresentation previewViewControllerAllowingActions:1];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)imageViewBasicTileForPreviewingAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  _assetsScene = [(PXPhotosDetailsAssetsWidget *)self _assetsScene];
  scrollViewController = [_assetsScene scrollViewController];

  scrollView = [scrollViewController scrollView];
  contentCoordinateSpace = [scrollViewController contentCoordinateSpace];
  [contentCoordinateSpace convertPoint:scrollView fromCoordinateSpace:{x, y}];
  v42 = 0u;
  v43 = 0u;
  [PXPhotosDetailsAssetsWidget _assetIndexPathAtLocation:"_assetIndexPathAtLocation:padding:" padding:?];
  if (*off_1E7721F68)
  {
    _assetsScene2 = [(PXPhotosDetailsAssetsWidget *)self _assetsScene];
    tilingController = [_assetsScene2 tilingController];

    currentLayout = [tilingController currentLayout];
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
    if ([currentLayout getGeometry:&v31 group:0 userData:0 forTileWithIdentifier:&v25] && (objc_msgSend(currentLayout, "visibleRect"), v45.origin.x = v16, v45.origin.y = v17, v45.size.width = v18, v45.size.height = v19, CGRectIntersectsRect(v31, v45)))
    {
      v24 = 0;
      _assetsScene3 = [(PXPhotosDetailsAssetsWidget *)self _assetsScene];
      tilingController2 = [_assetsScene3 tilingController];
      v25 = xmmword_1A5380D20;
      v26 = v14;
      v27 = v15;
      v28 = 0u;
      v29 = 0u;
      v30 = 0;
      v22 = [tilingController2 getTile:&v24 geometry:0 group:0 userData:0 forTileWithIdentifier:&v25];

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

- (id)bestCursorTileForLiftingAtPoint:(CGPoint)point inCoordinateSpace:(id)space
{
  y = point.y;
  x = point.x;
  _assetsScene = [(PXPhotosDetailsAssetsWidget *)self _assetsScene];
  tilingController = [_assetsScene tilingController];

  v25 = 0;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v20 = 0u;
  if (tilingController && ([tilingController hitTestTileAtPoint:&__block_literal_global_360_146134 padding:x passingTest:{y, *off_1E7721FA8, *(off_1E7721FA8 + 1), *(off_1E7721FA8 + 2), *(off_1E7721FA8 + 3)}], v20))
  {
    currentLayout = [tilingController currentLayout];
    memset(v19, 0, sizeof(v19));
    v15 = v22;
    v16 = v23;
    v17 = v24;
    v18 = v25;
    v13 = v20;
    v14 = v21;
    v10 = 0;
    if ([currentLayout getGeometry:v19 group:0 userData:0 forTileWithIdentifier:&v13])
    {
      v12 = 0;
      v15 = v22;
      v16 = v23;
      v17 = v24;
      v18 = v25;
      v13 = v20;
      v14 = v21;
      v10 = 0;
      if ([tilingController getTile:&v12 geometry:0 group:0 userData:0 forTileWithIdentifier:&v13])
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
  _focusedAssetReference = [(PXPhotosDetailsAssetsWidget *)self _focusedAssetReference];
  v4 = [(PXPhotosDetailsAssetsWidget *)self _assetActionManagerForAssetsReference:_focusedAssetReference];

  return v4;
}

- (void)contentViewDidDisappear
{
  _assetsScene = [(PXPhotosDetailsAssetsWidget *)self _assetsScene];
  [_assetsScene setAnimatesContent:0];

  _inlinePlaybackController = [(PXPhotosDetailsAssetsWidget *)self _inlinePlaybackController];
  [_inlinePlaybackController setIsContentViewVisible:0];

  eventTracker = [(PXPhotosDetailsAssetsWidget *)self eventTracker];
  [eventTracker logContentViewDidDisappear];
}

- (void)contentViewWillAppear
{
  _assetsScene = [(PXPhotosDetailsAssetsWidget *)self _assetsScene];
  [_assetsScene setAnimatesContent:1];

  _inlinePlaybackController = [(PXPhotosDetailsAssetsWidget *)self _inlinePlaybackController];
  [_inlinePlaybackController setIsContentViewVisible:1];

  eventTracker = [(PXPhotosDetailsAssetsWidget *)self eventTracker];
  [eventTracker logContentViewWillAppear];
}

- (void)_setHasLoadedContentData:(BOOL)data
{
  if (self->_hasLoadedContentData != data)
  {
    self->_hasLoadedContentData = data;
    widgetDelegate = [(PXPhotosDetailsAssetsWidget *)self widgetDelegate];
    [widgetDelegate widgetHasLoadedContentDataDidChange:self];
  }
}

- (void)setSelecting:(BOOL)selecting
{
  if (self->_selecting != selecting)
  {
    self->_selecting = selecting;
    if (!selecting)
    {
      _assetsScene = [(PXPhotosDetailsAssetsWidget *)self _assetsScene];
      selectionManager = [_assetsScene selectionManager];
      [selectionManager performChanges:&__block_literal_global_358];
    }

    _inlinePlaybackController = [(PXPhotosDetailsAssetsWidget *)self _inlinePlaybackController];
    [_inlinePlaybackController updatePlaybackEnabled];

    [(PXPhotosDetailsAssetsWidget *)self _updateShowCurationButton];
    widgetDelegate = [(PXPhotosDetailsAssetsWidget *)self widgetDelegate];
    [widgetDelegate widgetLocalizedSubtitleDidChange:self];

    widgetDelegate2 = [(PXPhotosDetailsAssetsWidget *)self widgetDelegate];
    [widgetDelegate2 widgetLocalizedDisclosureTitleDidChange:self];
  }
}

- (void)userDidSelectSubtitle
{
  v3 = +[PXPhotosDetailsSettings sharedInstance];
  allowEditorialLayoutStressTest = [v3 allowEditorialLayoutStressTest];

  if (allowEditorialLayoutStressTest)
  {
    _currentDataSourceStressTest = [(PXPhotosDetailsAssetsWidget *)self _currentDataSourceStressTest];
    if (!_currentDataSourceStressTest)
    {
      v6 = objc_alloc_init(PXPhotosDataSourceStressTest);
      [(PXPhotosDataSourceStressTest *)v6 setMaximumAssetCount:6];
      [(PXPhotosDetailsAssetsWidget *)self _setCurrentDataSourceStressTest:v6];
      _currentDataSourceStressTest = v6;
    }

    v7 = _currentDataSourceStressTest;
    [_currentDataSourceStressTest setRunning:{objc_msgSend(_currentDataSourceStressTest, "isRunning") ^ 1}];
  }

  else
  {

    [(PXPhotosDetailsAssetsWidget *)self _userDidSelectCurationButton];
  }
}

- (void)_toggleCuration
{
  v3 = ![(PXPhotosDetailsAssetsWidget *)self _curate];
  _assetsScene = [(PXPhotosDetailsAssetsWidget *)self _assetsScene];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __46__PXPhotosDetailsAssetsWidget__toggleCuration__block_invoke;
  v5[3] = &unk_1E7749428;
  v5[4] = self;
  v6 = v3;
  [_assetsScene performChanges:v5];
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
    _curationButtonTitle = [(PXPhotosDetailsAssetsWidget *)self _curationButtonTitle];
    goto LABEL_9;
  }

  _specManager = [(PXPhotosDetailsAssetsWidget *)self _specManager];
  spec = [_specManager spec];

  context = [(PXPhotosDetailsAssetsWidget *)self context];
  if ([context shouldShowMovieHeader])
  {

LABEL_7:
    _curationButtonTitle = 0;
    goto LABEL_8;
  }

  shouldShowTitle = [spec shouldShowTitle];

  if (!shouldShowTitle)
  {
    goto LABEL_7;
  }

  _curationButtonTitle = [(PXPhotosDetailsAssetsWidget *)self _subtitle];
LABEL_8:

LABEL_9:
  v8 = +[PXPhotosDetailsSettings sharedInstance];
  allowEditorialLayoutStressTest = [v8 allowEditorialLayoutStressTest];

  if (allowEditorialLayoutStressTest)
  {
    _currentDataSourceStressTest = [(PXPhotosDetailsAssetsWidget *)self _currentDataSourceStressTest];
    isRunning = [_currentDataSourceStressTest isRunning];
    v12 = @"Start Test";
    if (isRunning)
    {
      v12 = @"Pause Test";
    }

    v13 = v12;

    _curationButtonTitle = v13;
  }

  return _curationButtonTitle;
}

- (NSString)localizedTitle
{
  _specManager = [(PXPhotosDetailsAssetsWidget *)self _specManager];
  spec = [_specManager spec];

  if (![spec shouldShowTitle])
  {
    goto LABEL_15;
  }

  context = [(PXPhotosDetailsAssetsWidget *)self context];
  shouldShowHeaderTitle = [context shouldShowHeaderTitle];

  if (!shouldShowHeaderTitle)
  {
    goto LABEL_15;
  }

  context2 = [(PXPhotosDetailsAssetsWidget *)self context];
  if ([context2 shouldShowMovieHeader])
  {
    userInterfaceIdiom = [spec userInterfaceIdiom];

    if (userInterfaceIdiom == 3)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  context3 = [(PXPhotosDetailsAssetsWidget *)self context];
  shouldShowMovieHeader = [context3 shouldShowMovieHeader];

  if (shouldShowMovieHeader)
  {
    v11 = +[PXPhotosDetailsSettings sharedInstance];
    allowEditorialLayoutStressTest = [v11 allowEditorialLayoutStressTest];

    if (!allowEditorialLayoutStressTest)
    {
LABEL_15:
      _title = 0;
      goto LABEL_16;
    }

    _title = PXLocalizedStringFromTable(@"PXPhotosDetailsAssetsWidgetTitle", @"PhotosUICore");
    _currentDataSourceStressTest = [(PXPhotosDetailsAssetsWidget *)self _currentDataSourceStressTest];
    v15 = _currentDataSourceStressTest;
    if (_currentDataSourceStressTest)
    {
      if (_title)
      {
        v16 = _title;
      }

      else
      {
        v16 = @"Photos";
      }

      v17 = -[__CFString stringByAppendingFormat:](v16, "stringByAppendingFormat:", @" (#%lu)", [_currentDataSourceStressTest dataSourceIndex]);

      _title = v17;
    }
  }

  else
  {
    _title = [(PXPhotosDetailsAssetsWidget *)self _title];
  }

LABEL_16:

  return _title;
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
  context = [(PXPhotosDetailsAssetsWidget *)self context];
  localizedSubtitle = [context localizedSubtitle];

  return localizedSubtitle;
}

- (id)_title
{
  context = [(PXPhotosDetailsAssetsWidget *)self context];
  localizedTitle = [context localizedTitle];

  defaultHelper = [off_1E77217B8 defaultHelper];
  v5 = [defaultHelper displayableTextForTitle:localizedTitle intent:1];

  return v5;
}

- (int64_t)contentLayoutStyle
{
  _specManager = [(PXPhotosDetailsAssetsWidget *)self _specManager];
  spec = [_specManager spec];

  v4 = [spec shouldInsetAllPhotoDetailsContent] ^ 1;
  return v4;
}

- (PXTilingController)contentTilingController
{
  [(PXPhotosDetailsAssetsWidget *)self _loadTilingController];

  return [(PXPhotosDetailsAssetsWidget *)self _tilingController];
}

- (void)loadContentData
{
  date = [MEMORY[0x1E695DF00] date];
  loadStartDate = self->_loadStartDate;
  self->_loadStartDate = date;

  _photosDataSource = [(PXPhotosDetailsAssetsWidget *)self _photosDataSource];
  [_photosDataSource startBackgroundFetchIfNeeded];
}

- (id)_extendedTraitCollection
{
  widgetDelegate = [(PXPhotosDetailsAssetsWidget *)self widgetDelegate];
  v4 = [widgetDelegate widgetViewControllerHostingWidget:self];

  px_extendedTraitCollection = [v4 px_extendedTraitCollection];

  return px_extendedTraitCollection;
}

- (void)_setPhotosDataSource:(id)source
{
  sourceCopy = source;
  v5 = [(PXPhotosDataSource *)self->__photosDataSource isEqual:sourceCopy];
  v6 = sourceCopy;
  if ((v5 & 1) == 0)
  {
    v7 = sourceCopy;
    if (!sourceCopy)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosDetailsAssetsWidget.m" lineNumber:862 description:{@"Invalid parameter not satisfying: %@", @"photosDataSource != nil"}];

      v7 = 0;
    }

    v8 = -[PXPhotosDataSource initWithPhotosDataSource:options:]([PXPhotosDataSource alloc], "initWithPhotosDataSource:options:", sourceCopy, [v7 options] | 0x10);
    v9 = objc_opt_class();
    context = [(PXPhotosDetailsAssetsWidget *)self context];
    people = [context people];
    [v9 _refreshSortDescriptorsInPhotosDataSource:v8 withPeople:people];

    firstAssetCollection = [(PXPhotosDataSource *)v8 firstAssetCollection];
    if (firstAssetCollection)
    {
      [(PXPhotosDataSource *)v8 setWantsCuration:[(PXPhotosDetailsAssetsWidget *)self _curate] forAssetCollection:firstAssetCollection];
      if ([(PXPhotosDataSource *)v8 isCuratedAssetsEmptyForAssetCollection:firstAssetCollection])
      {
        self->__curate = 0;
        [(PXPhotosDataSource *)v8 setWantsCuration:0 forAssetCollection:firstAssetCollection];
      }
    }

    else
    {
      self->__curate = 0;
    }

    photosDataSource = self->__photosDataSource;
    self->__photosDataSource = v8;
    v14 = v8;

    _dataSourceManager = [(PXPhotosDetailsAssetsWidget *)self _dataSourceManager];
    [_dataSourceManager setPhotosDataSource:v14];

    v6 = sourceCopy;
  }
}

- (void)_setLoadCoordinationToken:(id)token
{
  tokenCopy = token;
  loadCoordinationToken = self->__loadCoordinationToken;
  if (loadCoordinationToken != tokenCopy)
  {
    v7 = tokenCopy;
    [(PXPhotosDetailsLoadCoordinationToken *)loadCoordinationToken complete];
    objc_storeStrong(&self->__loadCoordinationToken, token);
    tokenCopy = v7;
  }
}

- (PXSectionedSelectionManager)selectionManager
{
  if (!self->_selectionManager)
  {
    dataSourceManager = [(PXPhotosDetailsAssetsWidget *)self dataSourceManager];

    if (dataSourceManager)
    {
      v4 = [off_1E77218C8 alloc];
      dataSourceManager2 = [(PXPhotosDetailsAssetsWidget *)self dataSourceManager];
      v6 = [v4 initWithDataSourceManager:dataSourceManager2];
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
    _photosDataSource = [(PXPhotosDetailsAssetsWidget *)self _photosDataSource];

    if (_photosDataSource)
    {
      v4 = [PXPhotoKitAssetsDataSourceManager alloc];
      _photosDataSource2 = [(PXPhotosDetailsAssetsWidget *)self _photosDataSource];
      v6 = [(PXPhotoKitAssetsDataSourceManager *)v4 initWithPhotosDataSource:_photosDataSource2];
      dataSourceManager = self->_dataSourceManager;
      self->_dataSourceManager = v6;
    }
  }

  v8 = self->_dataSourceManager;

  return v8;
}

- (void)setContext:(id)context
{
  contextCopy = context;
  context = self->_context;
  if (context != contextCopy)
  {
    v10 = contextCopy;
    [(PXPhotosDetailsContext *)context unregisterChangeObserver:self context:PXPhotosDetailsContextObservationContext_146129];
    objc_storeStrong(&self->_context, context);
    [(PXPhotosDetailsContext *)self->_context registerChangeObserver:self context:PXPhotosDetailsContextObservationContext_146129];
    v7 = [PXPhotosDetailsLoadCoordinator loadCoordinatorForContext:v10];
    tokenForCuratedFetch = [v7 tokenForCuratedFetch];

    [(PXPhotosDetailsAssetsWidget *)self _setLoadCoordinationToken:tokenForCuratedFetch];
    photosDataSource = [(PXPhotosDetailsContext *)v10 photosDataSource];
    [(PXPhotosDetailsAssetsWidget *)self _setPhotosDataSource:photosDataSource];

    [(PXPhotosDetailsAssetsWidget *)self _updateShowCurationButton];
    contextCopy = v10;
  }
}

- (id)_assetActionManagerForAssetsReference:(id)reference
{
  referenceCopy = reference;
  _assetsScene = [(PXPhotosDetailsAssetsWidget *)self _assetsScene];
  dataSourceManager = [_assetsScene dataSourceManager];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    _assetsScene2 = [(PXPhotosDetailsAssetsWidget *)self _assetsScene];
    dataSourceManager2 = [_assetsScene2 dataSourceManager];
  }

  else
  {
    dataSourceManager2 = 0;
  }

  context = [(PXPhotosDetailsAssetsWidget *)self context];
  viewModel = [context viewModel];

  selectionManager = [viewModel selectionManager];
  if (([viewModel isSelecting] & 1) == 0)
  {
    v20 = 0u;
    v21 = 0u;
    if (referenceCopy)
    {
      [referenceCopy indexPath];
    }

    v19[0] = v20;
    v19[1] = v21;
    v12 = [off_1E7721768 indexPathSetWithIndexPath:v19];
    v13 = [[off_1E77218C8 alloc] initWithDataSourceManager:dataSourceManager2];

    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __69__PXPhotosDetailsAssetsWidget__assetActionManagerForAssetsReference___block_invoke;
    v17[3] = &unk_1E7744008;
    v18 = v12;
    v14 = v12;
    [v13 performChanges:v17];

    selectionManager = v13;
  }

  v15 = [[PXPhotoKitAssetActionManager alloc] initWithSelectionManager:selectionManager];
  [(PXActionManager *)v15 setPerformerDelegate:self];

  return v15;
}

- (void)_fallBackByTogglingCurationIfNeeded
{
  _photosDataSource = [(PXPhotosDetailsAssetsWidget *)self _photosDataSource];
  firstAssetCollection = [_photosDataSource firstAssetCollection];
  v4 = [_photosDataSource isCuratedAssetsEmptyForAssetCollection:firstAssetCollection];
  if ((v4 & 1) != 0 || ([_photosDataSource wantsCurationForAssetCollection:firstAssetCollection] & 1) == 0 && objc_msgSend(_photosDataSource, "isEmpty"))
  {
    [(PXPhotosDetailsAssetsWidget *)self _setCurate:v4 ^ 1u];
  }
}

- (id)_regionOfInterestForAssetReference:(id)reference
{
  referenceCopy = reference;
  v5 = *MEMORY[0x1E695F050];
  v6 = *(MEMORY[0x1E695F050] + 8);
  v7 = *(MEMORY[0x1E695F050] + 16);
  v8 = *(MEMORY[0x1E695F050] + 24);
  _assetsScene = [(PXPhotosDetailsAssetsWidget *)self _assetsScene];
  tilingController = [_assetsScene tilingController];

  scrollController = [tilingController scrollController];
  [scrollController updateIfNeeded];

  v72 = 0u;
  v73 = 0u;
  _dataSourceManager = [(PXPhotosDetailsAssetsWidget *)self _dataSourceManager];
  dataSource = [_dataSourceManager dataSource];
  v14 = dataSource;
  if (dataSource)
  {
    [dataSource indexPathForAssetReference:referenceCopy];
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
    if ([tilingController getTile:0 geometry:&v60 group:0 userData:0 forTileWithIdentifier:&v48])
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
      v40 = referenceCopy;
      _assetsScene2 = [(PXPhotosDetailsAssetsWidget *)self _assetsScene];
      currentLayout = [_assetsScene2 currentLayout];

      v24 = v72;
      dataSource2 = [currentLayout dataSource];
      identifier = [dataSource2 identifier];

      if (v24 == identifier)
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
        if ([currentLayout getGeometry:&v48 group:0 userData:0 forTileWithIdentifier:&v41])
        {
          v27 = +[PXTilingCoordinateSpaceConverter defaultConverter];
          coordinateSpaceIdentifier = [currentLayout coordinateSpaceIdentifier];
          contentCoordinateSpaceIdentifier = [tilingController contentCoordinateSpaceIdentifier];
          [v27 convertRect:coordinateSpaceIdentifier fromCoordinateSpaceIdentifier:contentCoordinateSpaceIdentifier toCoordinateSpaceIdentifier:{v48, v49}];
          v5 = v30;
          v6 = v31;
          v7 = v32;
          v8 = v33;
        }
      }

      referenceCopy = v40;
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
    _assetsScene3 = [(PXPhotosDetailsAssetsWidget *)self _assetsScene];
    scrollViewController = [_assetsScene3 scrollViewController];
    contentCoordinateSpace = [scrollViewController contentCoordinateSpace];
    v34 = [v35 initWithRect:contentCoordinateSpace inCoordinateSpace:{v5, v6, v7, v8}];

    [v34 setImageContentsRect:{v15, v16, v17, v18}];
  }

  return v34;
}

- (void)_setCurrentDataSourceStressTest:(id)test
{
  testCopy = test;
  currentDataSourceStressTest = self->__currentDataSourceStressTest;
  if (currentDataSourceStressTest != testCopy)
  {
    v8 = testCopy;
    [(PXPhotosDataSourceStressTest *)currentDataSourceStressTest unregisterChangeObserver:self context:PXStressTestObservationContext];
    objc_storeStrong(&self->__currentDataSourceStressTest, test);
    [(PXPhotosDataSourceStressTest *)self->__currentDataSourceStressTest registerChangeObserver:self context:PXStressTestObservationContext];
    widgetDelegate = [(PXPhotosDetailsAssetsWidget *)self widgetDelegate];
    [widgetDelegate widgetLocalizedDisclosureTitleDidChange:self];

    testCopy = v8;
  }
}

- (void)_performTilingChangeWithoutAnimationTransition:(id)transition
{
  transitionCopy = transition;
  _transitionWithoutAnimation = [(PXPhotosDetailsAssetsWidget *)self _transitionWithoutAnimation];
  [(PXPhotosDetailsAssetsWidget *)self _setTransitionWithoutAnimation:1];
  transitionCopy[2](transitionCopy);

  _assetsScene = [(PXPhotosDetailsAssetsWidget *)self _assetsScene];
  tilingController = [_assetsScene tilingController];
  scrollController = [tilingController scrollController];
  [scrollController updateIfNeeded];

  [(PXPhotosDetailsAssetsWidget *)self _setTransitionWithoutAnimation:_transitionWithoutAnimation];
}

- (BOOL)_isLocationWithinCurrentLayoutBounds:(CGPoint)bounds
{
  y = bounds.y;
  x = bounds.x;
  _assetsScene = [(PXPhotosDetailsAssetsWidget *)self _assetsScene];
  currentLayout = [_assetsScene currentLayout];

  if (currentLayout)
  {
    v8 = +[PXTilingCoordinateSpaceConverter defaultConverter];
    contentTilingController = [(PXPhotosDetailsAssetsWidget *)self contentTilingController];
    [v8 convertPoint:objc_msgSend(contentTilingController fromCoordinateSpaceIdentifier:"contentCoordinateSpaceIdentifier") toCoordinateSpaceIdentifier:{objc_msgSend(currentLayout, "coordinateSpaceIdentifier"), x, y}];

    [currentLayout contentBounds];
    [currentLayout contentInset];
    PXEdgeInsetsInsetRect();
  }

  return 0;
}

- (id)_assetReferenceAtPoint:(CGPoint)point padding:(UIEdgeInsets)padding
{
  v10 = 0u;
  v11 = 0u;
  [(PXPhotosDetailsAssetsWidget *)self _assetIndexPathAtLocation:point.x padding:point.y, padding.top, padding.left, padding.bottom, padding.right];
  if (*off_1E7721F68)
  {
    _dataSourceManager = [(PXPhotosDetailsAssetsWidget *)self _dataSourceManager];
    dataSource = [_dataSourceManager dataSource];
    v9[0] = v10;
    v9[1] = v11;
    v5 = [dataSource assetReferenceAtItemIndexPath:v9];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (PXSimpleIndexPath)_assetIndexPathAtLocation:(SEL)location padding:(CGPoint)padding
{
  right = a5.right;
  bottom = a5.bottom;
  left = a5.left;
  top = a5.top;
  y = padding.y;
  x = padding.x;
  v13 = *(off_1E7722228 + 1);
  *&retstr->dataSourceIdentifier = *off_1E7722228;
  *&retstr->item = v13;
  _dataSourceManager = [(PXPhotosDetailsAssetsWidget *)self _dataSourceManager];
  dataSource = [_dataSourceManager dataSource];
  identifier = [dataSource identifier];

  v28 = 0;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v23 = 0u;
  _assetsScene = [(PXPhotosDetailsAssetsWidget *)self _assetsScene];
  tilingController = [_assetsScene tilingController];
  v19 = tilingController;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __65__PXPhotosDetailsAssetsWidget__assetIndexPathAtLocation_padding___block_invoke;
  v22[3] = &__block_descriptor_40_e355_B504__0_PXTileIdentifier_Q_10Q__8_v96_PXTileGeometry__CGRect__CGPoint_dd__CGSize_dd___CGPoint_dd__CGSize_dd__CGAffineTransform_dddddd_ddB_CGSize_dd__CGRect__CGPoint_dd__CGSize_dd___v_104_PXTileGeometry__CGRect__CGPoint_dd__CGSize_dd___CGPoint_dd__CGSize_dd__CGAffineTransform_dddddd_ddB_CGSize_dd__CGRect__CGPoint_dd__CGSize_dd___v_296Q488___NSObject__496l;
  v22[4] = identifier;
  if (tilingController)
  {
    [tilingController hitTestTileAtPoint:v22 padding:x passingTest:{y, top, left, bottom, right}];
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
    _photosDataSource = [(PXPhotosDetailsAssetsWidget *)self _photosDataSource];
    numberOfSections = [_photosDataSource numberOfSections];

    if (numberOfSections >= 1)
    {
      v5 = 0;
      v6 = 0;
      v7 = 0;
      do
      {
        _photosDataSource2 = [(PXPhotosDetailsAssetsWidget *)self _photosDataSource];
        v9 = [_photosDataSource2 curatedAssetsInSection:v7];

        v5 += [v9 count];
        v6 |= v9 != 0;

        ++v7;
        _photosDataSource3 = [(PXPhotosDetailsAssetsWidget *)self _photosDataSource];
        numberOfSections2 = [_photosDataSource3 numberOfSections];
      }

      while (v7 < numberOfSections2);
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
    _photosDataSource4 = [(PXPhotosDetailsAssetsWidget *)self _photosDataSource];
    numberOfSections3 = [_photosDataSource4 numberOfSections];

    if (numberOfSections3 >= 1)
    {
      v17 = 0;
      v18 = 0;
      v19 = 0;
      do
      {
        _photosDataSource5 = [(PXPhotosDetailsAssetsWidget *)self _photosDataSource];
        v21 = [_photosDataSource5 uncuratedAssetsInSection:v17];

        v19 += [v21 count];
        v18 |= v21 != 0;

        ++v17;
        _photosDataSource6 = [(PXPhotosDetailsAssetsWidget *)self _photosDataSource];
        numberOfSections4 = [_photosDataSource6 numberOfSections];
      }

      while (v17 < numberOfSections4);
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

- (void)_setShowCurationButton:(BOOL)button
{
  if (self->__showCurationButton != button)
  {
    self->__showCurationButton = button;
    widgetDelegate = [(PXPhotosDetailsAssetsWidget *)self widgetDelegate];
    [widgetDelegate widgetLocalizedSubtitleDidChange:self];
  }
}

- (void)_updateShowCurationButton
{
  _dataSourceManager = [(PXPhotosDetailsAssetsWidget *)self _dataSourceManager];
  photosDataSource = [_dataSourceManager photosDataSource];

  firstAssetCollection = [photosDataSource firstAssetCollection];
  if (-[PXPhotosDetailsAssetsWidget isSelecting](self, "isSelecting") && (!-[PXPhotosDetailsAssetsWidget isSelecting](self, "isSelecting") || !-[PXPhotosDetailsAssetsWidget _curate](self, "_curate")) || firstAssetCollection && ([photosDataSource isCuratedAssetsFutilelyForAssetCollection:firstAssetCollection] & 1) != 0 || (objc_msgSend(photosDataSource, "isCuratedAssetsEmptyForAssetCollection:", firstAssetCollection) & 1) != 0)
  {
    v5 = 0;
  }

  else
  {
    spec = [(PXPhotosDetailsAssetsWidget *)self spec];
    v5 = ([spec detailsOptions] & 8) == 0;
  }

  [(PXPhotosDetailsAssetsWidget *)self _setShowCurationButton:v5];
}

- (void)_setCurate:(BOOL)curate
{
  if (self->__curate != curate)
  {
    curateCopy = curate;
    self->__curate = curate;
    [(PXPhotosDetailsAssetsWidget *)self _invalidateLayoutGenerator];
    eventTracker = [(PXPhotosDetailsAssetsWidget *)self eventTracker];
    [eventTracker setIsDisplayingCuratedContent:curateCopy];

    _dataSourceManager = [(PXPhotosDetailsAssetsWidget *)self _dataSourceManager];
    photosDataSource = [_dataSourceManager photosDataSource];

    firstAssetCollection = [photosDataSource firstAssetCollection];
    if (firstAssetCollection)
    {
      [photosDataSource setWantsCuration:curateCopy forAssetCollection:firstAssetCollection];
    }

    [(PXPhotosDetailsAssetsWidget *)self _updateShowCurationButton];
    widgetDelegate = [(PXPhotosDetailsAssetsWidget *)self widgetDelegate];
    [widgetDelegate widgetLocalizedSubtitleDidChange:self];

    widgetDelegate2 = [(PXPhotosDetailsAssetsWidget *)self widgetDelegate];
    [widgetDelegate2 widget:self animateChanges:0 withAnimationOptions:0];

    [(PXPhotosDetailsAssetsWidget *)self _updateLayoutEngineIfNeeded];
    _inlinePlaybackController = [(PXPhotosDetailsAssetsWidget *)self _inlinePlaybackController];
    [_inlinePlaybackController updatePlaybackEnabled];
  }
}

- (void)_updateFocusedAssetReference
{
  _assetsScene = [(PXPhotosDetailsAssetsWidget *)self _assetsScene];
  scrollViewController = [_assetsScene scrollViewController];

  v5 = MEMORY[0x1E69DCA38];
  scrollView = [scrollViewController scrollView];
  v7 = [v5 focusSystemForEnvironment:scrollView];
  focusedItem = [v7 focusedItem];

  parentFocusEnvironment = [focusedItem parentFocusEnvironment];
  focusItemContainer = [parentFocusEnvironment focusItemContainer];
  coordinateSpace = [focusItemContainer coordinateSpace];

  if (coordinateSpace)
  {
    [focusedItem frame];
    PXRectGetCenter();
  }

  [(PXPhotosDetailsAssetsWidget *)self _setFocusedAssetReference:0];
}

- (void)_setFocusedAssetReference:(id)reference
{
  referenceCopy = reference;
  if (self->__focusedAssetReference != referenceCopy)
  {
    v8 = referenceCopy;
    objc_storeStrong(&self->__focusedAssetReference, reference);
    _assetsScene = [(PXPhotosDetailsAssetsWidget *)self _assetsScene];
    targetLayout = [_assetsScene targetLayout];
    [(PXPhotosDetailsAssetsWidget *)self _configureLayout:targetLayout];

    referenceCopy = v8;
  }
}

- (void)_setHighlightedAssetReference:(id)reference
{
  referenceCopy = reference;
  if (self->__highlightedAssetReference != referenceCopy)
  {
    v8 = referenceCopy;
    objc_storeStrong(&self->__highlightedAssetReference, reference);
    _assetsScene = [(PXPhotosDetailsAssetsWidget *)self _assetsScene];
    targetLayout = [_assetsScene targetLayout];
    [(PXPhotosDetailsAssetsWidget *)self _configureLayout:targetLayout];

    referenceCopy = v8;
  }
}

- (void)_setHiddenAssetReferences:(id)references
{
  referencesCopy = references;
  if (referencesCopy)
  {
    v8 = referencesCopy;
    if ([(NSSet *)referencesCopy count])
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
    _assetsScene = [(PXPhotosDetailsAssetsWidget *)self _assetsScene];
    targetLayout = [_assetsScene targetLayout];
    [(PXPhotosDetailsAssetsWidget *)self _configureLayout:targetLayout];

    v5 = v9;
  }
}

- (void)_setDraggingAssetReferences:(id)references
{
  referencesCopy = references;
  if (referencesCopy)
  {
    v8 = referencesCopy;
    if ([(NSSet *)referencesCopy count])
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
    _assetsScene = [(PXPhotosDetailsAssetsWidget *)self _assetsScene];
    targetLayout = [_assetsScene targetLayout];
    [(PXPhotosDetailsAssetsWidget *)self _configureLayout:targetLayout];

    v5 = v9;
  }
}

- (void)_updateHasLoadedContentData
{
  _tilingController = [(PXPhotosDetailsAssetsWidget *)self _tilingController];
  targetLayout = [_tilingController targetLayout];

  placeholderMode = [targetLayout placeholderMode];
  [(PXPhotosDetailsAssetsWidget *)self _setHasLoadedContentData:placeholderMode != 1];
  if (placeholderMode != 1)
  {
    [(PXPhotosDetailsAssetsWidget *)self _setLoadCoordinationToken:0];
  }
}

- (void)_updateTilingLayoutIfNeeded
{
  _layoutEngine = [(PXPhotosDetailsAssetsWidget *)self _layoutEngine];
  if (_layoutEngine)
  {
    v18 = _layoutEngine;
    layoutSnapshot = [_layoutEngine layoutSnapshot];
    if (!layoutSnapshot)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosDetailsAssetsWidget.m" lineNumber:502 description:@"The layout engine should always return a layoutSnapshot."];
    }

    _tilingController = [(PXPhotosDetailsAssetsWidget *)self _tilingController];
    targetLayout = [_tilingController targetLayout];

    layoutSnapshot2 = [targetLayout layoutSnapshot];
    if (layoutSnapshot2 && (v9 = layoutSnapshot2, [targetLayout layoutSnapshot], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "dataSourceSnapshot"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "identifier"), objc_msgSend(layoutSnapshot, "dataSourceSnapshot"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "identifier"), v13, v11, v10, v9, v12 != v14))
    {
      _createNewLayout = [(PXPhotosDetailsAssetsWidget *)self _createNewLayout];

      _tilingController2 = [(PXPhotosDetailsAssetsWidget *)self _tilingController];
      [_tilingController2 transitionToLayout:_createNewLayout];

      targetLayout = _createNewLayout;
    }

    else
    {
      [(PXPhotosDetailsAssetsWidget *)self _configureLayout:targetLayout];
    }

    _layoutEngine = v18;
  }
}

- (void)_configureLayout:(id)layout
{
  v71 = *MEMORY[0x1E69E9840];
  layoutCopy = layout;
  _layoutEngine = [(PXPhotosDetailsAssetsWidget *)self _layoutEngine];
  layoutSnapshot = [_layoutEngine layoutSnapshot];

  v55 = layoutSnapshot;
  if (!layoutSnapshot)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosDetailsAssetsWidget.m" lineNumber:417 description:@"The layout engine should always return a layoutSnapshot."];
  }

  _hiddenAssetReferences = [(PXPhotosDetailsAssetsWidget *)self _hiddenAssetReferences];
  v54 = _hiddenAssetReferences;
  if ([_hiddenAssetReferences count])
  {
    v9 = objc_alloc_init(off_1E77217C8);
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v10 = _hiddenAssetReferences;
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
          dataSource = [layoutCopy dataSource];
          v17 = dataSource;
          if (dataSource)
          {
            [dataSource indexPathForAssetReference:v15];
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

  _draggingAssetReferences = [(PXPhotosDetailsAssetsWidget *)self _draggingAssetReferences];
  v53 = _draggingAssetReferences;
  if ([_draggingAssetReferences count])
  {
    v19 = objc_alloc_init(off_1E77217C8);
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v20 = _draggingAssetReferences;
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
          dataSource2 = [layoutCopy dataSource];
          v27 = dataSource2;
          if (dataSource2)
          {
            [dataSource2 indexPathForAssetReference:v25];
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

  _highlightedAssetReference = [(PXPhotosDetailsAssetsWidget *)self _highlightedAssetReference];
  v49 = *(off_1E7722228 + 1);
  v51 = *off_1E7722228;
  v62 = *off_1E7722228;
  v63 = v49;
  if (_highlightedAssetReference)
  {
    dataSource3 = [layoutCopy dataSource];
    v30 = dataSource3;
    if (dataSource3)
    {
      [dataSource3 indexPathForAssetReference:_highlightedAssetReference];
    }

    else
    {
      v60 = 0u;
      v61 = 0u;
    }

    v62 = v60;
    v63 = v61;
  }

  _focusedAssetReference = [(PXPhotosDetailsAssetsWidget *)self _focusedAssetReference];
  v60 = v51;
  v61 = v50;
  if (_focusedAssetReference)
  {
    dataSource4 = [layoutCopy dataSource];
    v33 = dataSource4;
    if (dataSource4)
    {
      [dataSource4 indexPathForAssetReference:_focusedAssetReference];
    }

    else
    {
      memset(buf, 0, 32);
    }

    v60 = *buf;
    v61 = *&buf[16];
  }

  v52 = _highlightedAssetReference;
  dataSource5 = [layoutCopy dataSource];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    photosDataSource = [dataSource5 photosDataSource];
    wantsCurationForFirstAssetCollection = [photosDataSource wantsCurationForFirstAssetCollection];
    if ([photosDataSource numberOfSections] < 1 || (objc_msgSend(photosDataSource, "assetsInSection:", 0), v37 = objc_claimAutoreleasedReturnValue(), v37, v37))
    {
      isEmpty = [photosDataSource isEmpty];
      v39 = 2;
      if (wantsCurationForFirstAssetCollection)
      {
        v39 = 0;
      }

      if (isEmpty)
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
    LOBYTE(wantsCurationForFirstAssetCollection) = 0;
    v40 = 0;
  }

  [layoutCopy setSelectionBadgeOptions:1025];
  _specManager = [(PXPhotosDetailsAssetsWidget *)self _specManager];
  spec = [_specManager spec];

  if (wantsCurationForFirstAssetCollection)
  {
    v43 = 1;
    gridContentMode = 1;
  }

  else
  {
    gridContentMode = [spec gridContentMode];
    v43 = 3;
  }

  if (![spec enableBadges])
  {
    v43 = 0;
  }

  [layoutCopy setContentMode:gridContentMode];
  [layoutCopy setBadgeOptions:v43];
  [layoutCopy setLayoutSnapshot:v55];
  [layoutCopy setHiddenIndexPaths:v9];
  [layoutCopy setPlaceholderMode:v40];
  *buf = v62;
  *&buf[16] = v63;
  [layoutCopy setHighlightedIndexPath:buf];
  [layoutCopy setDraggingIndexPaths:v19];
  *buf = v60;
  *&buf[16] = v61;
  [layoutCopy setFocusedIndexPath:buf];
  [layoutCopy setSpec:spec];
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
  _layoutEngine = [(PXPhotosDetailsAssetsWidget *)self _layoutEngine];
  layoutSnapshot = [_layoutEngine layoutSnapshot];

  if (!layoutSnapshot)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosDetailsAssetsWidget.m" lineNumber:405 description:@"The layout engine should always return a layoutSnapshot."];
  }

  v6 = [(PXEngineDrivenAssetsTilingLayout *)[PXPhotosDetailsAssetsTilingLayout alloc] initWithLayoutEngineSnapshot:layoutSnapshot];
  [(PXEngineDrivenAssetsTilingLayout *)v6 setDelegate:self];
  [(PXPhotosDetailsAssetsWidget *)self _configureLayout:v6];

  return v6;
}

- (void)_updateLayoutEngineIfNeeded
{
  _specManager = [(PXPhotosDetailsAssetsWidget *)self _specManager];
  spec = [_specManager spec];

  _specManager2 = [(PXPhotosDetailsAssetsWidget *)self _specManager];
  extendedTraitCollection = [_specManager2 extendedTraitCollection];

  if (spec && extendedTraitCollection)
  {
    [extendedTraitCollection layoutReferenceSize];
    [spec contentGuideInsets];
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

    _specManager = [(PXPhotosDetailsAssetsWidget *)self _specManager];
    widgetDelegate = [(PXPhotosDetailsAssetsWidget *)self widgetDelegate];
    v52 = [widgetDelegate widgetScrollViewControllerHostingWidget:self];

    [v52 registerObserver:self];
    _createNewLayout = [(PXPhotosDetailsAssetsWidget *)self _createNewLayout];
    v14 = [[PXTilingController alloc] initWithLayout:_createNewLayout];
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
    _dataSourceManager = [(PXPhotosDetailsAssetsWidget *)self _dataSourceManager];
    _selectionManager = [(PXPhotosDetailsAssetsWidget *)self _selectionManager];
    v23 = [(PXUIAssetsScene *)v18 initWithTilingController:v19 mediaProvider:v20 dataSourceManager:_dataSourceManager selectionManager:_selectionManager delegate:self];
    assetsScene = self->__assetsScene;
    self->__assetsScene = v23;

    [(PXTilingController *)self->__tilingController setTileSource:self];
    [(PXTilingController *)self->__tilingController setTransitionDelegate:self];
    [(PXTilingController *)self->__tilingController setScrollDelegate:self];
    [(PXAssetsScene *)self->__assetsScene setDelegate:self];
    [(PXAssetsScene *)self->__assetsScene setAutoplayTilesWaitForInput:1];
    _specManager2 = [(PXPhotosDetailsAssetsWidget *)self _specManager];
    spec = [_specManager2 spec];

    if (spec && [spec userInterfaceIdiom] == 5)
    {
      [spec defaultCornerRadius];
      [(PXUIAssetsScene *)self->__assetsScene setContentTileCornerRadius:?];
    }

    viewTileReusePool = [(PXAssetsScene *)self->__assetsScene viewTileReusePool];
    [viewTileReusePool registerReusableObjectForReuseIdentifier:1501 creationHandler:&__block_literal_global_146213];

    viewTileReusePool2 = [(PXAssetsScene *)self->__assetsScene viewTileReusePool];
    [viewTileReusePool2 registerReusableObjectForReuseIdentifier:1500 creationHandler:&__block_literal_global_260_146214];

    WeakRetained = objc_loadWeakRetained(&self->_widgetDelegate);
    v30 = [WeakRetained widgetViewHostingGestureRecognizers:self];

    v50 = spec;
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
    scrollView = [v52 scrollView];
    v44 = [off_1E77218F0 alloc];
    _assetsScene = [(PXPhotosDetailsAssetsWidget *)self _assetsScene];
    selectionManager = [_assetsScene selectionManager];
    v47 = [v44 initWithSelectionManager:selectionManager scrollView:scrollView];

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
    _extendedTraitCollection = [(PXPhotosDetailsAssetsWidget *)self _extendedTraitCollection];
    spec = [(PXPhotosDetailsAssetsWidget *)self spec];
    v6 = -[PXPhotosDetailsAssetsSpecManager initWithExtendedTraitCollection:detailsOptions:]([PXPhotosDetailsAssetsSpecManager alloc], "initWithExtendedTraitCollection:detailsOptions:", _extendedTraitCollection, [spec detailsOptions]);
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

+ (void)_refreshSortDescriptorsInPhotosDataSource:(id)source withPeople:(id)people
{
  v18 = *MEMORY[0x1E69E9840];
  sourceCopy = source;
  peopleCopy = people;
  if ([peopleCopy count] == 1)
  {
    firstObject = [peopleCopy firstObject];
    v8 = +[PXPeopleUtilities sortDescriptorsWithPersonAssetSortOrder:](PXPeopleUtilities, "sortDescriptorsWithPersonAssetSortOrder:", [firstObject assetSortOrder]);
    sortDescriptors = [sourceCopy sortDescriptors];
    v10 = sortDescriptors;
    if (sortDescriptors == v8)
    {
    }

    else
    {
      v11 = [sortDescriptors isEqual:v8];

      if ((v11 & 1) == 0)
      {
        v12 = PLPeopleGetLog();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          uuid = [firstObject uuid];
          v14 = 138543618;
          v15 = uuid;
          v16 = 2112;
          v17 = v8;
          _os_log_impl(&dword_1A3C1C000, v12, OS_LOG_TYPE_DEFAULT, "PXPhotosDetailsAssetsWidget: Sort descriptors for person set on Person: %{public}@. New Sort Descriptors: %@.", &v14, 0x16u);
        }

        [sourceCopy setSortDescriptors:v8];
      }
    }
  }
}

@end