@interface SBIconDragManager
+ (void)enumerateAppDragContextsInDragItems:(id)a3 usingBlock:(id)a4;
+ (void)enumerateMedusaPlatterDragPreviewsInDragItems:(id)a3 usingBlock:(id)a4;
- (BOOL)_isTrackingDrag:(id)a3;
- (BOOL)_isTrackingDragWithIdentifier:(id)a3;
- (BOOL)_shouldPerformRippleAnimationForInsertingDragItem:(id)a3 toIconListView:(id)a4;
- (BOOL)allowsNestedFolders;
- (BOOL)canHandleIconDropSession:(id)a3 inIconListView:(id)a4;
- (BOOL)canMakeIconViewRecipient:(id)a3;
- (BOOL)canSnapToGridBasedOnContentOfListModel:(id)a3 withDragIdentifier:(id)a4;
- (BOOL)canSnapToGridInIconLocation:(id)a3;
- (BOOL)doesIconRepresentRealIconPosition:(id)a3 dragIdentifier:(id)a4;
- (BOOL)doesIconRepresentRealIconPosition:(id)a3 inLocation:(id)a4;
- (BOOL)doesIconViewRepresentRealIconPosition:(id)a3;
- (BOOL)dragsSupportSystemDragsForIconView:(id)a3;
- (BOOL)iconView:(id)a3 canAddDragItemsToSession:(id)a4;
- (BOOL)iconViewCanBeginDrags:(id)a3;
- (BOOL)isDelegateScrolling;
- (BOOL)isEditing;
- (BOOL)isEditingAllowedForListView:(id)a3;
- (BOOL)isEditingForListView:(id)a3;
- (BOOL)isIconContentPossiblyVisibleOverApplication;
- (BOOL)isIconDragging;
- (BOOL)isRootFolderContentVisible;
- (BOOL)isSnapToGridAllowed;
- (BOOL)isSnapToGridEnabledForDragWithIdentifier:(id)a3 iconLocation:(id)a4 listModel:(id)a5 placeholderGridSizeClass:(id)a6;
- (BOOL)isTrackingActiveDragOfIcon:(id)a3;
- (BOOL)isTrackingDragInUserActiveLiftPreviewOriginatingFromIconView:(id)a3;
- (BOOL)isTrackingDragMatchingPredicate:(id)a3;
- (BOOL)isTrackingDragOfIcon:(id)a3;
- (BOOL)isTrackingDragOriginatingFromIconView:(id)a3;
- (BOOL)isTrackingDragOriginatingFromOrDroppingIntoIconView:(id)a3 otherThanDragWithIdentifier:(id)a4;
- (BOOL)isTrackingDragWithGhostTreatmentForIcon:(id)a3;
- (BOOL)isTrackingDropIntoDestinationIconView:(id)a3;
- (BOOL)isTrackingMultipleIconDrags;
- (BOOL)isTrackingMultipleItemIconDrags;
- (BOOL)isTrackingUserActiveDragOriginatingFromIconView:(id)a3;
- (BOOL)movePlaceholderForDraggedIcons:(id)a3 toGridCellIndex:(unint64_t)a4 inListView:(id)a5 forDragWithIdentifier:(id)a6;
- (BOOL)performIconDropInDestinationListIfPossibleWithDraggedIcons:(id)a3 inIconListView:(id)a4 placeholderGridPath:(id)a5 placeholderGridSizeClass:(id)a6 dropSession:(id)a7;
- (BOOL)performIconDropInParentFolderIfPossibleWithDraggedIcons:(id)a3 inIconListView:(id)a4 dropSession:(id)a5;
- (BOOL)performIconDropOnRecipientIconIfPossibleWithDraggedIcons:(id)a3 inIconListView:(id)a4 dropSession:(id)a5;
- (BOOL)removeDragPlaceholdersForDragWithIdentifier:(id)a3 placeholderPath:(id *)a4;
- (BOOL)shouldAllowSpringLoadedInteractionForIconDropSession:(id)a3 onIconView:(id)a4;
- (BOOL)shouldBeginEditingWhenDragBegins;
- (BOOL)shouldCancelDragsWhenEditingEnds;
- (BOOL)shouldDisallowBumpingIconsFromCurrentList;
- (BOOL)shouldMinimizeLayoutDisruptionForIconLocation:(id)a3;
- (BOOL)shouldUseGhostIconForIconView:(id)a3;
- (BOOL)swapTrackedIconWithIdentifier:(id)a3 withIcon:(id)a4;
- (CGPoint)adjustedLocationForDropSession:(id)a3 inView:(id)a4;
- (SBIconDragManager)init;
- (SBIconDragManagerDelegate)delegate;
- (double)additionalDragLiftScaleForIconView:(id)a3;
- (double)defaultIconLayoutAnimationDuration;
- (double)delayAfterAfterLiftPreviewToBeginEditing;
- (id)_applicationBundleIdentifierForDragItem:(id)a3;
- (id)_iconForDragItem:(id)a3 inIconListView:(id)a4;
- (id)_iconIdentifierForDragItem:(id)a3;
- (id)_iconViewForDragItem:(id)a3 inIconListView:(id)a4;
- (id)_windowForDragPreviewsForPlatterView:(id)a3 forWindowScene:(id)a4;
- (id)allDragIdentifiers;
- (id)appDragLocalContextForDragItem:(id)a3;
- (id)createNewFolderFromRecipientIcon:(id)a3 grabbedIcon:(id)a4 inListModel:(id)a5;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)dragItemsForIconView:(id)a3;
- (id)dragPlaceholderGridPathForDragWithIdentifier:(id)a3;
- (id)dragPlaceholderPathForDragWithIdentifier:(id)a3;
- (id)draggedIconForIdentifier:(id)a3;
- (id)draggedIconIdentifiersForDragDropSession:(id)a3;
- (id)draggedIconsForDragDropSession:(id)a3;
- (id)draggedIconsForIdentifiers:(id)a3;
- (id)duplicateIconsIfNecessary:(id)a3 forDropSession:(id)a4;
- (id)firstHiddenIconIdentifierInDrag:(id)a3;
- (id)gridSizeClassDomain;
- (id)iconDragContextForDragDropSession:(id)a3;
- (id)iconDragContextForDragItem:(id)a3;
- (id)iconDragContextForDragSession:(id)a3;
- (id)iconDragContextForDropSession:(id)a3;
- (id)iconDropSessionDidUpdate:(id)a3 inIconListView:(id)a4;
- (id)iconLayoutHider;
- (id)iconListView:(id)a3 customSpringAnimationBehaviorForDroppingItem:(id)a4;
- (id)iconListView:(id)a3 dataDropSessionDidUpdate:(id)a4;
- (id)iconListView:(id)a3 iconViewForDroppingIconDragItem:(id)a4 proposedIconView:(id)a5;
- (id)iconListView:(id)a3 previewForDroppingIconDragItem:(id)a4 proposedPreview:(id)a5;
- (id)iconListViewContainingIcon:(id)a3;
- (id)iconListViewForIndexPath:(id)a3;
- (id)iconView:(id)a3 dragPreviewForItem:(id)a4 session:(id)a5 previewParameters:(id)a6;
- (id)iconViewWillCancelDrag:(id)a3;
- (id)launchActionsForIconView:(id)a3;
- (id)launchURLForIconView:(id)a3;
- (id)leafIconForIdentifier:(id)a3;
- (id)leafIconsInList:(id)a3 matchingApplicationBundleIdentifierOfIcons:(id)a4;
- (id)localizedFolderNameForCombiningIcon:(id)a3 withIcon:(id)a4;
- (id)model;
- (id)rootFolder;
- (id)rootListModel;
- (id)rootListView;
- (id)rootView;
- (id)startForbiddingAccessoryUpdatesInFoldersInIconListView:(id)a3;
- (id)startingIconLocationForIcon:(id)a3 dragIdentifier:(id)a4;
- (id)succinctDescription;
- (id)undoProvider;
- (id)uniqueIdentifierForIconDragSession:(id)a3;
- (id)uniqueIdentifierForIconDropSession:(id)a3;
- (int64_t)_animationTypeForGridSizeClass:(id)a3;
- (int64_t)_animationTypeForGridSizeClass:(id)a3 inIconListView:(id)a4 draggedIconCount:(unint64_t)a5;
- (int64_t)iconView:(id)a3 draggingStartLocationWithProposedStartLocation:(int64_t)a4;
- (int64_t)placeholderMovementForDragHitRegion:(unint64_t)a3 onGridCellIndex:(unint64_t)a4 inListView:(id)a5 forDragWithIdentifier:(id)a6;
- (int64_t)reasonForRejectingDropInSession:(id)a3 inIconListView:(id)a4;
- (unint64_t)countOfTrackedDragsOriginatingFromOrDroppingIntoIconView:(id)a3;
- (unint64_t)folderMutationOptionsForInsertingIcon:(id)a3 intoList:(id)a4 inLocation:(id)a5 isSnapToGridEnabled:(BOOL)a6;
- (unint64_t)folderMutationOptionsForInsertingIcon:(id)a3 intoList:(id)a4 inLocation:(id)a5 withDragIdentifier:(id)a6;
- (unint64_t)iconLayoutHidingOptions;
- (unint64_t)listGridCellInfoOptions;
- (unint64_t)placeholderGridCellIndexForDragPlacement:(int64_t)a3 onGridCellIndex:(unint64_t)a4 icon:(id)a5 inListView:(id)a6 forDragWithIdentifier:(id)a7;
- (unint64_t)placeholderOptionsForListView:(id)a3 forDragWithIdentifier:(id)a4;
- (void)_cleanUpAllDraggingState;
- (void)_handleScaleAdjustmentForDropSession:(id)a3 currentListView:(id)a4;
- (void)_invalidateAutoScrollAssistant;
- (void)_removeDraggedIconsFromLayout:(id)a3 iconLocation:(id)a4 dragIdentifier:(id)a5;
- (void)_startTrackingDragWithIdentifier:(id)a3 session:(id)a4;
- (void)_startTrackingDragWithIdentifier:(id)a3 session:(id)a4 primaryIconView:(id)a5;
- (void)_stopTrackingDragIfPossibleWithIdentifier:(id)a3;
- (void)_stopTrackingDragWithIdentifier:(id)a3;
- (void)_teardownWaitRunloopObserverIfNeeded;
- (void)_updateAutoScrollAssistantForDropSession:(id)a3;
- (void)_updateDragDistanceForDropSession:(id)a3 currentIconListLocation:(CGPoint)a4;
- (void)_updateDragPreviewIconViewForDropSession:(id)a3 inIconListView:(id)a4;
- (void)_updateDragPreviewsForEditingState:(BOOL)a3 animated:(BOOL)a4;
- (void)_updateDragVelocityForDropSession:(id)a3;
- (void)addAppLocalContextsFromDragItems:(id)a3 toDragWithIdentifier:(id)a4;
- (void)addApplicationIconsFromDragItems:(id)a3 session:(id)a4 toDragWithIdentifier:(id)a5;
- (void)addIcons:(id)a3 intoFolderIcon:(id)a4 openFolderOnFinish:(BOOL)a5;
- (void)addPlatterViewToMedusaDragOffscreenWindow:(id)a3 forWindowScene:(id)a4 interfaceOrientation:(int64_t)a5;
- (void)autoScrollAssistant:(id)a3 triggeredAutoScrollInDirection:(int64_t)a4;
- (void)cancelAllDrags;
- (void)cancelEditingAndAllDrags;
- (void)changeStateOfDragWithIdentifier:(id)a3 toState:(int64_t)a4;
- (void)clearAllUndoRegistrations;
- (void)closeFolderControllerContainingListView:(id)a3;
- (void)compactAndLayoutRootIconLists;
- (void)concludeIconDrop:(id)a3;
- (void)configureIconView:(id)a3;
- (void)createIconsFromDragItemsIfNecessary:(id)a3 withDragIdentifier:(id)a4;
- (void)dealloc;
- (void)enumerateIconDragContextsUsingBlock:(id)a3;
- (void)enumerateIconDragIdentifiersUsingBlock:(id)a3;
- (void)folderController:(id)a3 draggedIconShouldDropFromListView:(id)a4;
- (void)folderController:(id)a3 iconListView:(id)a4 springLoadedInteractionForIconDragDidCompleteOnIconView:(id)a5;
- (void)handleIconView:(id)a3 dragSession:(id)a4 didEndWithOperation:(unint64_t)a5;
- (void)handleIconView:(id)a3 dragSession:(id)a4 willEndWithOperation:(unint64_t)a5;
- (void)iconDropSessionDidEnd:(id)a3;
- (void)iconDropSessionDidEnter:(id)a3 inIconListView:(id)a4;
- (void)iconDropSessionDidExit:(id)a3 fromIconListView:(id)a4;
- (void)iconListView:(id)a3 iconDragItem:(id)a4 willAnimateDropWithAnimator:(id)a5;
- (void)iconListView:(id)a3 willConfigureIconView:(id)a4 forIcon:(id)a5;
- (void)iconListView:(id)a3 willUseIconView:(id)a4 forDroppingIconDragItem:(id)a5;
- (void)iconView:(id)a3 dragLiftAnimationDidChangeDirection:(int64_t)a4;
- (void)iconView:(id)a3 item:(id)a4 willAnimateDragCancelWithAnimator:(id)a5;
- (void)iconView:(id)a3 willAddDragItems:(id)a4 toSession:(id)a5;
- (void)iconView:(id)a3 willAnimateDragLiftWithAnimator:(id)a4 session:(id)a5;
- (void)iconView:(id)a3 willUsePreviewForCancelling:(id)a4 targetIconView:(id)a5;
- (void)iconViewWillBeginDrag:(id)a3 session:(id)a4;
- (void)informQuickActionPlatterDidFinishPresentation:(id)a3;
- (void)layoutIconListsWithAnimationType:(int64_t)a3 forceRelayout:(BOOL)a4;
- (void)modifyRootFolderUsingBlock:(id)a3 orRootListModelUsingBlock:(id)a4;
- (void)noteDragItemWasConsumedExternallyForDropSession:(id)a3;
- (void)noteFolderBeganScrolling;
- (void)noteFolderControllerDidClose:(id)a3;
- (void)noteFolderControllerWillOpen;
- (void)noteIconManagerEditingDidChange;
- (void)noteIconTapped;
- (void)noteRootFolderDidMutate;
- (void)pauseTimerDidFire:(id)a3;
- (void)performBeforeRunLoopWaitsUsingBlock:(id)a3;
- (void)performBlocksBeforeRunLoopWait;
- (void)performIconDrop:(id)a3 inIconListView:(id)a4;
- (void)performSpringLoadedInteractionForIconDragOnIconView:(id)a3;
- (void)pruneCancelableSourceFoldersInDestinationListView:(id)a3 withDragIdentifier:(id)a4;
- (void)pushExpandedIcon:(id)a3 location:(id)a4 context:(id)a5 animated:(BOOL)a6 completionHandler:(id)a7;
- (void)pushExpandedIconView:(id)a3 context:(id)a4 animated:(BOOL)a5 completionHandler:(id)a6;
- (void)registerUndoWithUndoManager:(id)a3 preparation:(id)a4 draggedIcons:(id)a5;
- (void)removeEmptyFolders;
- (void)removeEmptyFoldersInFolder:(id)a3;
- (void)removeEmptyFoldersInListModel:(id)a3;
- (void)removeNearestLeafIconsMatchingIcons:(id)a3 inList:(id)a4 dragContext:(id)a5;
- (void)removePlatterViewFromMedusaDragOffscreenWindow:(id)a3;
- (void)resetWatchdogTimerForDragWithIdentifier:(id)a3 timeout:(double)a4;
- (void)scrollToIconListContainingIcon:(id)a3 animated:(BOOL)a4;
- (void)setIndexPath:(id)a3 whenRevertingIconsWithPathPrefix:(id)a4;
- (void)startPlaceholderPauseTimerWithDragLocation:(CGPoint)a3 withDragIdentifier:(id)a4;
- (void)startTrackingDragLocationForEditingFromDropSession:(id)a3 orDragSession:(id)a4;
- (void)stopPlaceholderPauseTimerWithDragLocationWithDragIdentifier:(id)a3;
- (void)stopTrackingDragLocationForEditingForDragWithIdentifier:(id)a3;
- (void)updateDragPauseForDragWithIdentifier:(id)a3;
- (void)updatePlaceholderPositionForDragWithIdentifier:(id)a3;
- (void)updatePlaceholderPositionIfNecessaryForDragWithIdentifier:(id)a3;
- (void)watchdogDragWithIdentifier:(id)a3;
- (void)watchdogTimerDidFire:(id)a3;
- (void)windowSceneDidDisconnect:(id)a3;
@end

@implementation SBIconDragManager

- (BOOL)isIconDragging
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __35__SBIconDragManager_isIconDragging__block_invoke;
  v4[3] = &unk_1E8089A40;
  v4[4] = &v5;
  [(SBIconDragManager *)self enumerateIconDragContextsUsingBlock:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (BOOL)isTrackingMultipleItemIconDrags
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __52__SBIconDragManager_isTrackingMultipleItemIconDrags__block_invoke;
  v4[3] = &unk_1E8089A40;
  v4[4] = &v5;
  [(SBIconDragManager *)self enumerateIconDragContextsUsingBlock:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (void)noteFolderBeganScrolling
{
  v2 = SBLogIconDragging();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_1BEB18000, v2, OS_LOG_TYPE_INFO, "noting folder began scrolling", v3, 2u);
  }
}

- (void)noteIconTapped
{
  v2 = SBLogIconDragging();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_1BEB18000, v2, OS_LOG_TYPE_INFO, "noting icon tapped", v3, 2u);
  }
}

- (SBIconDragManager)init
{
  v9.receiver = self;
  v9.super_class = SBIconDragManager;
  v2 = [(SBIconDragManager *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v2->_createsStacksFromWidgets = 1;
    objc_initWeak(&location, v2);
    v4 = MEMORY[0x1E69E96A0];
    objc_copyWeak(&v7, &location);
    v5 = BSLogAddStateCaptureBlockWithTitle();

    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }

  return v3;
}

__CFString *__25__SBIconDragManager_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained description];
  if (![(__CFString *)v2 length])
  {

    v2 = @"(null description)";
  }

  return v2;
}

- (void)dealloc
{
  [(SBIconDragManager *)self _teardownWaitRunloopObserverIfNeeded];
  v3.receiver = self;
  v3.super_class = SBIconDragManager;
  [(SBIconDragManager *)&v3 dealloc];
}

- (BOOL)isSnapToGridAllowed
{
  v3 = [(SBIconDragManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 allowsSnappingIconsToGridForIconDragManager:self];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)canSnapToGridInIconLocation:(id)a3
{
  v4 = a3;
  v5 = [(SBIconDragManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 iconDragManager:self canSnapIconsToGridInLocation:v4];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (BOOL)canSnapToGridBasedOnContentOfListModel:(id)a3 withDragIdentifier:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([v6 hasFixedIconLocations])
  {
    v8 = 1;
  }

  else
  {
    v9 = [(SBIconDragManager *)self iconDragContextForDragWithIdentifier:v7];
    [v9 draggedIcons];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v10 = v20 = 0u;
    v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v18;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v18 != v13)
          {
            objc_enumerationMutation(v10);
          }

          if ([v6 directlyContainsIcon:{*(*(&v17 + 1) + 8 * i), v17}])
          {

            v8 = 1;
            goto LABEL_13;
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    [v9 currentEnteredIconListViewDragDistance];
    v8 = v15 > 30.0;
LABEL_13:
  }

  return v8;
}

- (BOOL)isSnapToGridEnabledForDragWithIdentifier:(id)a3 iconLocation:(id)a4 listModel:(id)a5 placeholderGridSizeClass:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [(SBIconDragManager *)self iconDragContextForDragWithIdentifier:v13];
  v15 = [v14 isSnapToGridAllowed];
  v16 = [(SBIconDragManager *)self canSnapToGridInIconLocation:v12];

  LOBYTE(v12) = [v11 isInsertionFixedForIconGridSizeClass:v10 options:128];
  LOBYTE(self) = [(SBIconDragManager *)self canSnapToGridBasedOnContentOfListModel:v11 withDragIdentifier:v13];

  return v15 & v16 & v12 & self;
}

- (id)model
{
  v2 = [(SBIconDragManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 iconModel];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)rootFolder
{
  v3 = [(SBIconDragManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 rootFolderForIconDragManager:self];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)rootListModel
{
  v3 = [(SBIconDragManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 rootListModelForIconDragManager:self];
  }

  else
  {
    v5 = [(SBIconDragManager *)self rootListView];
    v4 = [v5 model];
  }

  return v4;
}

- (void)modifyRootFolderUsingBlock:(id)a3 orRootListModelUsingBlock:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(SBIconDragManager *)self rootFolder];
  if (v7)
  {
    v9[2](v9, v7);
  }

  else
  {
    v8 = [(SBIconDragManager *)self rootListModel];
    if (v8)
    {
      v6[2](v6, v8);
    }
  }
}

- (id)leafIconForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(SBIconDragManager *)self model];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 leafIconForIdentifier:v4];
  }

  else
  {
    v8 = [(SBIconDragManager *)self rootFolder];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 iconWithIdentifier:v4];
      if ([v10 isLeafIcon])
      {
        v11 = v10;
      }

      else
      {
        v11 = 0;
      }

      v7 = v11;
    }

    else
    {
      v12 = [(SBIconDragManager *)self rootListModel];
      v10 = v12;
      if (v12)
      {
        v13 = [v12 directlyContainedIconWithIdentifier:v4];
        if ([v13 isLeafIcon])
        {
          v14 = v13;
        }

        else
        {
          v14 = 0;
        }

        v7 = v14;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  return v7;
}

- (id)gridSizeClassDomain
{
  v2 = [(SBIconDragManager *)self model];
  v3 = [v2 gridSizeClassDomain];

  return v3;
}

- (double)defaultIconLayoutAnimationDuration
{
  v3 = [(SBIconDragManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v3 defaultIconLayoutAnimationDurationForIconDragManager:self];
    v5 = v4;
  }

  else
  {
    v5 = 0.225;
  }

  return v5;
}

- (BOOL)isEditing
{
  v2 = [(SBIconDragManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 isEditing];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)isEditingForListView:(id)a3
{
  v4 = a3;
  if ([(SBIconDragManager *)self isEditing])
  {
    v5 = 1;
  }

  else
  {
    v6 = [(SBIconDragManager *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      v5 = [v6 isEditingForIconListView:v4];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)isEditingAllowedForListView:(id)a3
{
  v4 = a3;
  v5 = [(SBIconDragManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 isEditingAllowedForIconListView:v4];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (BOOL)isRootFolderContentVisible
{
  v2 = [(SBIconDragManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 isRootFolderContentVisible];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)isIconContentPossiblyVisibleOverApplication
{
  v2 = [(SBIconDragManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 isIconContentPossiblyVisibleOverApplication];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)rootView
{
  v3 = [(SBIconDragManager *)self delegate];
  v4 = [v3 rootViewForIconDragManager:self];

  return v4;
}

- (id)rootListView
{
  v2 = [(SBIconDragManager *)self rootView];
  v3 = objc_opt_self();
  if (objc_opt_isKindOfClass())
  {
    v4 = v2;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (id)iconListViewForIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(SBIconDragManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 iconListViewForIndexPath:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)iconListViewContainingIcon:(id)a3
{
  v4 = a3;
  v5 = [(SBIconDragManager *)self rootFolder];
  v6 = [v5 indexPathForIcon:v4];

  if (v6)
  {
    [(SBIconDragManager *)self iconListViewForIndexPath:v6];
  }

  else
  {
    [(SBIconDragManager *)self rootListView];
  }
  v7 = ;

  return v7;
}

- (void)layoutIconListsWithAnimationType:(int64_t)a3 forceRelayout:(BOOL)a4
{
  v4 = a4;
  v6 = [(SBIconDragManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v6 layoutIconListsWithAnimationType:a3 forceRelayout:v4];
  }
}

- (void)scrollToIconListContainingIcon:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  v6 = [(SBIconDragManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v6 iconDragManager:self wantsScrollToIconListContainingIcon:v7 animated:v4];
  }
}

- (unint64_t)listGridCellInfoOptions
{
  v3 = [(SBIconDragManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 listGridCellInfoOptionsForIconDragManager:self];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)iconLayoutHider
{
  v3 = [(SBIconDragManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v3 iconLayoutHiderForIconDragManager:self];
  }

  else
  {
    [(SBIconDragManager *)self rootListView];
  }
  v4 = ;

  return v4;
}

- (void)_cleanUpAllDraggingState
{
  v16 = *MEMORY[0x1E69E9840];
  iconDrags = self->_iconDrags;
  self->_iconDrags = 0;

  uniqueIdentifiersPerDropSession = self->_uniqueIdentifiersPerDropSession;
  self->_uniqueIdentifiersPerDropSession = 0;

  uniqueIdentifiersPerDragSession = self->_uniqueIdentifiersPerDragSession;
  self->_uniqueIdentifiersPerDragSession = 0;

  if ([(NSMutableArray *)self->_singleUseDragWindows count])
  {
    NSLog(&cfstr_SingleUseDragW.isa);
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = self->_singleUseDragWindows;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v11 + 1) + 8 * v10++) setHidden:{1, v11}];
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

uint64_t __35__SBIconDragManager_isIconDragging__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 state];
  *(*(*(a1 + 32) + 8) + 24) = result != 0;
  if (*(*(*(a1 + 32) + 8) + 24) == 1)
  {
    *a4 = 1;
  }

  return result;
}

- (BOOL)isTrackingMultipleIconDrags
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __48__SBIconDragManager_isTrackingMultipleIconDrags__block_invoke;
  v4[3] = &unk_1E8089A40;
  v4[4] = &v5;
  [(SBIconDragManager *)self enumerateIconDragContextsUsingBlock:v4];
  v2 = v6[3] > 1;
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __48__SBIconDragManager_isTrackingMultipleIconDrags__block_invoke(uint64_t a1, void *a2)
{
  result = [a2 state];
  if (result)
  {
    ++*(*(*(a1 + 32) + 8) + 24);
  }

  return result;
}

uint64_t __52__SBIconDragManager_isTrackingMultipleItemIconDrags__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 state];
  *(*(*(a1 + 32) + 8) + 24) = result == 4;
  if (*(*(*(a1 + 32) + 8) + 24) == 1)
  {
    *a4 = 1;
  }

  return result;
}

- (BOOL)isTrackingDragOfIcon:(id)a3
{
  v4 = a3;
  v5 = [v4 nodeIdentifier];
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __42__SBIconDragManager_isTrackingDragOfIcon___block_invoke;
  v8[3] = &unk_1E8089A68;
  v10 = &v11;
  v6 = v5;
  v9 = v6;
  [(SBIconDragManager *)self enumerateIconDragContextsUsingBlock:v8];
  LOBYTE(self) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return self;
}

void __42__SBIconDragManager_isTrackingDragOfIcon___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 itemIdentifiers];
  *(*(*(a1 + 40) + 8) + 24) = [v6 containsObject:*(a1 + 32)];

  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    *a4 = 1;
  }
}

- (BOOL)isTrackingActiveDragOfIcon:(id)a3
{
  v4 = a3;
  v5 = [v4 nodeIdentifier];
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __48__SBIconDragManager_isTrackingActiveDragOfIcon___block_invoke;
  v8[3] = &unk_1E8089A68;
  v10 = &v11;
  v6 = v5;
  v9 = v6;
  [(SBIconDragManager *)self enumerateIconDragContextsUsingBlock:v8];
  LOBYTE(self) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return self;
}

void __48__SBIconDragManager_isTrackingActiveDragOfIcon___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  v6 = [v8 itemIdentifiers];
  v7 = [v6 containsObject:*(a1 + 32)];
  if (v7)
  {
    LOBYTE(v7) = [v8 isUserActive];
  }

  *(*(*(a1 + 40) + 8) + 24) = v7;

  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    *a4 = 1;
  }
}

- (BOOL)isTrackingDragOriginatingFromIconView:(id)a3
{
  v4 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __59__SBIconDragManager_isTrackingDragOriginatingFromIconView___block_invoke;
  v7[3] = &unk_1E8089A90;
  v5 = v4;
  v8 = v5;
  v9 = &v10;
  [(SBIconDragManager *)self enumerateIconDragContextsUsingBlock:v7];
  LOBYTE(self) = *(v11 + 24);

  _Block_object_dispose(&v10, 8);
  return self;
}

uint64_t __59__SBIconDragManager_isTrackingDragOriginatingFromIconView___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 hasSourceIconView:*(a1 + 32)];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  return result;
}

- (BOOL)isTrackingUserActiveDragOriginatingFromIconView:(id)a3
{
  v4 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __69__SBIconDragManager_isTrackingUserActiveDragOriginatingFromIconView___block_invoke;
  v7[3] = &unk_1E8089A90;
  v5 = v4;
  v8 = v5;
  v9 = &v10;
  [(SBIconDragManager *)self enumerateIconDragContextsUsingBlock:v7];
  LOBYTE(self) = *(v11 + 24);

  _Block_object_dispose(&v10, 8);
  return self;
}

void __69__SBIconDragManager_isTrackingUserActiveDragOriginatingFromIconView___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 hasSourceIconView:*(a1 + 32)] && objc_msgSend(v3, "isUserActive"))
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

- (BOOL)isTrackingDragInUserActiveLiftPreviewOriginatingFromIconView:(id)a3
{
  v4 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __82__SBIconDragManager_isTrackingDragInUserActiveLiftPreviewOriginatingFromIconView___block_invoke;
  v7[3] = &unk_1E8089A90;
  v5 = v4;
  v8 = v5;
  v9 = &v10;
  [(SBIconDragManager *)self enumerateIconDragContextsUsingBlock:v7];
  LOBYTE(self) = *(v11 + 24);

  _Block_object_dispose(&v10, 8);
  return self;
}

void __82__SBIconDragManager_isTrackingDragInUserActiveLiftPreviewOriginatingFromIconView___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 hasSourceIconView:*(a1 + 32)])
  {
    *(*(*(a1 + 40) + 8) + 24) = [v3 state] == 1;
  }
}

- (BOOL)isTrackingDropIntoDestinationIconView:(id)a3
{
  v4 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __59__SBIconDragManager_isTrackingDropIntoDestinationIconView___block_invoke;
  v7[3] = &unk_1E8089A90;
  v5 = v4;
  v8 = v5;
  v9 = &v10;
  [(SBIconDragManager *)self enumerateIconDragContextsUsingBlock:v7];
  LOBYTE(self) = *(v11 + 24);

  _Block_object_dispose(&v10, 8);
  return self;
}

void __59__SBIconDragManager_isTrackingDropIntoDestinationIconView___block_invoke(uint64_t a1, void *a2)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __59__SBIconDragManager_isTrackingDropIntoDestinationIconView___block_invoke_2;
  v6[3] = &unk_1E8089768;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = v4;
  v8 = v5;
  [a2 enumerateDestinationIconViewsUsingBlock:v6];
}

uint64_t __59__SBIconDragManager_isTrackingDropIntoDestinationIconView___block_invoke_2(uint64_t result, uint64_t a2)
{
  if (*(result + 32) == a2)
  {
    *(*(*(result + 40) + 8) + 24) = 1;
  }

  return result;
}

uint64_t __46__SBIconDragManager_isTrackingWidgetIconDrags__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 draggedIcons];
  v3 = [v2 bs_containsObjectPassingTest:&__block_literal_global_74];

  return v3;
}

uint64_t __46__SBIconDragManager_isTrackingWidgetIconDrags__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 gridSizeClass];
  if (v3 == @"SBHIconGridSizeClassDefault")
  {
    v5 = 0;
  }

  else
  {
    v4 = [v2 gridSizeClass];
    v5 = [v4 isEqualToString:@"SBHIconGridSizeClassDefault"] ^ 1;
  }

  return v5;
}

uint64_t __51__SBIconDragManager_isTrackingWidgetStackIconDrags__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 draggedIcons];
  v3 = [v2 bs_containsObjectPassingTest:&__block_literal_global_78];

  return v3;
}

uint64_t __51__SBIconDragManager_isTrackingWidgetStackIconDrags__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 gridSizeClass];
  if (v3 == @"SBHIconGridSizeClassDefault")
  {
    v5 = 0;
  }

  else
  {
    v4 = [v2 gridSizeClass];
    if ([v4 isEqualToString:@"SBHIconGridSizeClassDefault"])
    {
      v5 = 0;
    }

    else
    {
      v5 = [v2 isWidgetStackIcon];
    }
  }

  return v5;
}

- (BOOL)isTrackingDragMatchingPredicate:(id)a3
{
  v4 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __53__SBIconDragManager_isTrackingDragMatchingPredicate___block_invoke;
  v7[3] = &unk_1E8089AF8;
  v5 = v4;
  v8 = v5;
  v9 = &v10;
  [(SBIconDragManager *)self enumerateIconDragContextsUsingBlock:v7];
  LOBYTE(self) = *(v11 + 24);

  _Block_object_dispose(&v10, 8);
  return self;
}

uint64_t __53__SBIconDragManager_isTrackingDragMatchingPredicate___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = (*(*(a1 + 32) + 16))();
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

- (unint64_t)countOfTrackedDragsOriginatingFromOrDroppingIntoIconView:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __78__SBIconDragManager_countOfTrackedDragsOriginatingFromOrDroppingIntoIconView___block_invoke;
  v8[3] = &unk_1E8089A90;
  v5 = v4;
  v9 = v5;
  v10 = &v11;
  [(SBIconDragManager *)self enumerateIconDragContextsUsingBlock:v8];
  v6 = v12[3];

  _Block_object_dispose(&v11, 8);
  return v6;
}

void __78__SBIconDragManager_countOfTrackedDragsOriginatingFromOrDroppingIntoIconView___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([v3 hasSourceIconView:*(a1 + 32)] & 1) != 0 || objc_msgSend(v3, "hasDestinationIconView:", *(a1 + 32)))
  {
    ++*(*(*(a1 + 40) + 8) + 24);
  }
}

- (BOOL)isTrackingDragOriginatingFromOrDroppingIntoIconView:(id)a3 otherThanDragWithIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __101__SBIconDragManager_isTrackingDragOriginatingFromOrDroppingIntoIconView_otherThanDragWithIdentifier___block_invoke;
  v11[3] = &unk_1E8089B20;
  v8 = v7;
  v12 = v8;
  v9 = v6;
  v13 = v9;
  v14 = &v15;
  [(SBIconDragManager *)self enumerateIconDragContextsUsingBlock:v11];
  LOBYTE(self) = *(v16 + 24);

  _Block_object_dispose(&v15, 8);
  return self;
}

void __101__SBIconDragManager_isTrackingDragOriginatingFromOrDroppingIntoIconView_otherThanDragWithIdentifier___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if (([*(a1 + 32) isEqual:a3] & 1) == 0 && ((objc_msgSend(v7, "hasSourceIconView:", *(a1 + 40)) & 1) != 0 || objc_msgSend(v7, "hasDestinationIconView:", *(a1 + 40))))
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    *a4 = 1;
  }
}

- (BOOL)isTrackingDragWithGhostTreatmentForIcon:(id)a3
{
  v4 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61__SBIconDragManager_isTrackingDragWithGhostTreatmentForIcon___block_invoke;
  v7[3] = &unk_1E8089A90;
  v5 = v4;
  v8 = v5;
  v9 = &v10;
  [(SBIconDragManager *)self enumerateIconDragContextsUsingBlock:v7];
  LOBYTE(self) = *(v11 + 24);

  _Block_object_dispose(&v10, 8);
  return self;
}

uint64_t __61__SBIconDragManager_isTrackingDragWithGhostTreatmentForIcon___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 hasGrabbedIcon:*(a1 + 32)];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

- (void)enumerateIconDragIdentifiersUsingBlock:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(NSMapTable *)self->_iconDrags copy];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v14 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v13 + 1) + 8 * v10);
      v12 = 0;
      v4[2](v4, v11, &v12);
      if (v12)
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (void)enumerateIconDragContextsUsingBlock:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(NSMapTable *)self->_iconDrags copy];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v15 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v14 + 1) + 8 * v10);
      v12 = [v6 objectForKey:v11];
      v13 = 0;
      v4[2](v4, v12, v11, &v13);
      LOBYTE(v11) = v13;

      if (v11)
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (id)allDragIdentifiers
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __39__SBIconDragManager_allDragIdentifiers__block_invoke;
  v6[3] = &unk_1E8089B48;
  v4 = v3;
  v7 = v4;
  [(SBIconDragManager *)self enumerateIconDragIdentifiersUsingBlock:v6];

  return v4;
}

- (id)uniqueIdentifierForIconDropSession:(id)a3
{
  v4 = a3;
  v5 = [v4 localDragSession];
  if (v5 && ([(SBIconDragManager *)self uniqueIdentifierForIconDragSession:v5], (v6 = objc_claimAutoreleasedReturnValue()) != 0) || ([(NSMapTable *)self->_uniqueIdentifiersPerDropSession objectForKey:v4], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = v6;
  }

  else
  {
    v7 = objc_alloc_init(MEMORY[0x1E696AFB0]);
    if (!v7)
    {
      goto LABEL_9;
    }
  }

  v8 = [(NSMapTable *)self->_uniqueIdentifiersPerDropSession objectForKey:v4];

  if (!v8)
  {
    uniqueIdentifiersPerDropSession = self->_uniqueIdentifiersPerDropSession;
    if (!uniqueIdentifiersPerDropSession)
    {
      v10 = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
      v11 = self->_uniqueIdentifiersPerDropSession;
      self->_uniqueIdentifiersPerDropSession = v10;

      uniqueIdentifiersPerDropSession = self->_uniqueIdentifiersPerDropSession;
    }

    [(NSMapTable *)uniqueIdentifiersPerDropSession setObject:v7 forKey:v4];
  }

LABEL_9:

  return v7;
}

- (id)uniqueIdentifierForIconDragSession:(id)a3
{
  v4 = a3;
  v5 = [(NSMapTable *)self->_uniqueIdentifiersPerDragSession objectForKey:v4];
  if (!v5)
  {
    v5 = objc_alloc_init(MEMORY[0x1E696AFB0]);
    uniqueIdentifiersPerDragSession = self->_uniqueIdentifiersPerDragSession;
    if (!uniqueIdentifiersPerDragSession)
    {
      v7 = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
      v8 = self->_uniqueIdentifiersPerDragSession;
      self->_uniqueIdentifiersPerDragSession = v7;

      uniqueIdentifiersPerDragSession = self->_uniqueIdentifiersPerDragSession;
    }

    [(NSMapTable *)uniqueIdentifiersPerDragSession setObject:v5 forKey:v4];
  }

  return v5;
}

- (id)iconDragContextForDropSession:(id)a3
{
  v4 = [(SBIconDragManager *)self uniqueIdentifierForIconDropSession:a3];
  v5 = [(SBIconDragManager *)self iconDragContextForDragWithIdentifier:v4];

  return v5;
}

- (id)iconDragContextForDragSession:(id)a3
{
  v4 = [(SBIconDragManager *)self uniqueIdentifierForIconDragSession:a3];
  v5 = [(SBIconDragManager *)self iconDragContextForDragWithIdentifier:v4];

  return v5;
}

- (id)iconDragContextForDragDropSession:(id)a3
{
  v4 = a3;
  if ([v4 conformsToProtocol:&unk_1F3EB8620])
  {
    v5 = [(SBIconDragManager *)self iconDragContextForDropSession:v4];
LABEL_5:
    v6 = v5;
    goto LABEL_7;
  }

  if ([v4 conformsToProtocol:&unk_1F3EB86F0])
  {
    v5 = [(SBIconDragManager *)self iconDragContextForDragSession:v4];
    goto LABEL_5;
  }

  v6 = 0;
LABEL_7:

  return v6;
}

- (id)iconDragContextForDragItem:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__2;
  v15 = __Block_byref_object_dispose__2;
  v16 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __48__SBIconDragManager_iconDragContextForDragItem___block_invoke;
  v8[3] = &unk_1E8089A90;
  v5 = v4;
  v9 = v5;
  v10 = &v11;
  [(SBIconDragManager *)self enumerateIconDragContextsUsingBlock:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

void __48__SBIconDragManager_iconDragContextForDragItem___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if ([v7 hasDragItem:*(a1 + 32)])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (BOOL)_isTrackingDrag:(id)a3
{
  v3 = [(SBIconDragManager *)self iconDragContextForDropSession:a3];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)_isTrackingDragWithIdentifier:(id)a3
{
  v3 = [(SBIconDragManager *)self iconDragContextForDragWithIdentifier:a3];
  v4 = v3 != 0;

  return v4;
}

- (void)_startTrackingDragWithIdentifier:(id)a3 session:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = SBLogIconDragging();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v16 = 138543362;
    v17 = v6;
    _os_log_impl(&dword_1BEB18000, v8, OS_LOG_TYPE_INFO, "start tracking drag with identifier %{public}@", &v16, 0xCu);
  }

  iconDrags = self->_iconDrags;
  if (!iconDrags)
  {
    v10 = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    v11 = self->_iconDrags;
    self->_iconDrags = v10;

    iconDrags = self->_iconDrags;
  }

  v12 = [(NSMapTable *)iconDrags objectForKey:v6];

  if (!v12)
  {
    v13 = objc_alloc_init(SBIconDragContext);
    [(SBIconDragContext *)v13 setSnapToGridAllowed:[(SBIconDragManager *)self isSnapToGridAllowed]];
    [(NSMapTable *)self->_iconDrags setObject:v13 forKey:v6];
    if (v7)
    {
      v14 = [(SBIconDragManager *)self delegate];
      if ((objc_opt_respondsToSelector() & 1) != 0 && [v14 iconDragManager:self shouldDuplicateIconsInDragSession:v7])
      {
        [(SBIconDragContext *)v13 setDuplicatesSourceIcons:1];
      }
    }

    v15 = [v7 items];
    if (v15)
    {
      [(SBIconDragManager *)self addAppLocalContextsFromDragItems:v15 toDragWithIdentifier:v6];
    }

    [(SBIconDragManager *)self resetWatchdogTimerForDragWithIdentifier:v6 timeout:60.0];
  }
}

- (void)_stopTrackingDragWithIdentifier:(id)a3
{
  v46 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = SBLogIconDragging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [(NSMapTable *)self->_iconDrags objectForKey:v4];
    *buf = 138543618;
    v39 = *&v4;
    v40 = 2112;
    v41 = *&v6;
    _os_log_impl(&dword_1BEB18000, v5, OS_LOG_TYPE_INFO, "stop tracking drag with identifier %{public}@. Context: %@", buf, 0x16u);
  }

  [(SBIconDragManager *)self stopTrackingDragLocationForEditingForDragWithIdentifier:v4];
  v7 = [(SBIconDragManager *)self delegate];
  v8 = [(SBIconDragManager *)self isIconDragging];
  if (v4)
  {
    v9 = [(NSMapTable *)self->_iconDrags objectForKey:v4];
    v10 = [v9 primaryIconView];
    v11 = [v9 lastUserInteractionDate];
    v12 = [v9 hasUserDragged];
    v13 = SBLogIconDragging();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      [v10 lastTouchDownDate];
      v14 = v32 = v8;
      [v14 timeIntervalSinceNow];
      v16 = fabs(v15);
      [v11 timeIntervalSinceNow];
      v18 = fabs(v17);
      v19 = [v10 lastTouchDownDate];
      [v11 timeIntervalSinceDate:v19];
      *buf = 134218752;
      v39 = v16;
      v40 = 2048;
      v41 = v18;
      v42 = 2048;
      v43 = v20;
      v44 = 1024;
      v45 = v12;
      _os_log_impl(&dword_1BEB18000, v13, OS_LOG_TYPE_INFO, "drag ended %fs after icon view touch began. last interaction %fs ago. time between interaction start and end: %fs. user did begin drag: %{BOOL}u", buf, 0x26u);

      v8 = v32;
    }

    [v10 removeObserver:self];
    if (objc_opt_respondsToSelector())
    {
      [v7 iconDragManager:self didEndDragOriginatingFromIconView:v10 userDidBeginDrag:v12 lastUserInteractionDate:v11];
    }

    if (objc_opt_respondsToSelector())
    {
      v21 = objc_alloc_init(SBIconDragResult);
      [(SBIconDragResult *)v21 setDragIdentifier:v4];
      v22 = [v9 draggedIcons];
      -[SBIconDragResult setNumberOfDraggedItems:](v21, "setNumberOfDraggedItems:", [v22 count]);

      -[SBIconDragResult setPerformedDrop:](v21, "setPerformedDrop:", [v9 performedIconDrop]);
      -[SBIconDragResult setDragRejectionReason:](v21, "setDragRejectionReason:", [v9 dragRejectionReason]);
      [v7 iconDragManager:self didEndDragWithResult:v21];
    }

    [v9 enumerateSourceIconViewsUsingBlock:&__block_literal_global_173];
    [v9 enumerateDiscardedSourceIconViewsUsingBlock:&__block_literal_global_176];
    v23 = [v9 grabbedIconViews];
    v24 = [v23 count];

    if (v24)
    {
      [v9 enumerateEnteredIconListViewsUsingBlock:&__block_literal_global_179];
    }

    v25 = [MEMORY[0x1E695DFA8] set];
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __53__SBIconDragManager__stopTrackingDragWithIdentifier___block_invoke_4;
    v35[3] = &unk_1E8089BB0;
    v36 = v9;
    v26 = v25;
    v37 = v26;
    v27 = v9;
    [(SBIconDragManager *)self enumerateIconDragContextsUsingBlock:v35];
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __53__SBIconDragManager__stopTrackingDragWithIdentifier___block_invoke_6;
    v33[3] = &unk_1E8089BD8;
    v34 = v26;
    v28 = v26;
    [v27 enumerateEnteredIconListViewsUsingBlock:v33];
    [v27 enumerateDestinationIconViewsUsingBlock:&__block_literal_global_184];
    [v27 enumerateDragPreviewsUsingBlock:&__block_literal_global_187];
    [v27 resetDraggedIconsHiddenAssertion];
    [v27 resetDragPlaceholder];
    [v27 invalidateIconViewBorrowAssertions];
    v29 = [v27 watchdogTimer];
    [v29 invalidate];

    [v27 setWatchdogTimer:0];
    [(NSMapTable *)self->_iconDrags removeObjectForKey:v4];
  }

  if (v8 && ![(SBIconDragManager *)self isIconDragging])
  {
    v30 = SBLogIconDragging();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1BEB18000, v30, OS_LOG_TYPE_INFO, "all drags have ended, cleaning up", buf, 2u);
    }

    v31 = [(SBIconDragManager *)self model];
    [v31 checkModelConsistencyWithListGridCellInfoOptions:{-[SBIconDragManager listGridCellInfoOptions](self, "listGridCellInfoOptions")}];
    [(SBIconDragManager *)self removeEmptyFolders];
    [(SBIconDragManager *)self _cleanUpAllDraggingState];
    [(SBIconDragManager *)self compactAndLayoutRootIconLists];
    [(SBIconDragManager *)self _invalidateAutoScrollAssistant];
    if (objc_opt_respondsToSelector())
    {
      [v7 iconDragManagerIconDraggingDidChange:self];
    }
  }
}

void __53__SBIconDragManager__stopTrackingDragWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isHighlighted])
  {
    v3 = SBLogIconDragging();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __53__SBIconDragManager__stopTrackingDragWithIdentifier___block_invoke_cold_1();
    }

    [v2 setHighlighted:0];
  }

  if ([v2 isGrabbed])
  {
    v4 = SBLogIconDragging();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __53__SBIconDragManager__stopTrackingDragWithIdentifier___block_invoke_cold_2();
    }

    [v2 setGrabbed:0];
  }
}

void __53__SBIconDragManager__stopTrackingDragWithIdentifier___block_invoke_4(uint64_t a1, void *a2)
{
  if (*(a1 + 32) != a2)
  {
    v7 = v2;
    v8 = v3;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __53__SBIconDragManager__stopTrackingDragWithIdentifier___block_invoke_5;
    v5[3] = &unk_1E8089928;
    v6 = *(a1 + 40);
    [a2 enumerateSourceIconViewsUsingBlock:v5];
  }
}

void __53__SBIconDragManager__stopTrackingDragWithIdentifier___block_invoke_8(uint64_t a1, void *a2)
{
  v2 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v2 cleanUp];
  }
}

- (void)_stopTrackingDragIfPossibleWithIdentifier:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(SBIconDragManager *)self iconDragContextForDragWithIdentifier:v4];
  if ([v5 isWaitingForMessage])
  {
    v6 = SBLogIconDragging();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = [v5 expectedMessages];
      v8 = 138543618;
      v9 = v4;
      v10 = 2112;
      v11 = v7;
      _os_log_impl(&dword_1BEB18000, v6, OS_LOG_TYPE_INFO, "drag with identifier %{public}@ is still waiting for messages: %@", &v8, 0x16u);
    }
  }

  else
  {
    [(SBIconDragManager *)self _stopTrackingDragWithIdentifier:v4];
  }
}

- (void)changeStateOfDragWithIdentifier:(id)a3 toState:(int64_t)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(SBIconDragManager *)self iconDragContextForDragWithIdentifier:v6];
  if ([v7 state] != a4)
  {
    v8 = [(SBIconDragManager *)self isIconDragging];
    v9 = [(SBIconDragManager *)self isTrackingUserActiveIconDrags];
    v10 = SBLogIconDragging();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = SBStringForIconDragContextState(a4);
      *buf = 138543874;
      v16 = v6;
      v17 = 2114;
      v18 = v11;
      v19 = 1024;
      v20 = v8;
      _os_log_impl(&dword_1BEB18000, v10, OS_LOG_TYPE_INFO, "change state of drag with identifier %{public}@ to state '%{public}@' (was dragging before: %{BOOL}u)", buf, 0x1Cu);
    }

    v12 = [v7 isUserActive];
    [v7 setState:a4];
    v13 = [(SBIconDragManager *)self delegate];
    if (v8 != [(SBIconDragManager *)self isIconDragging]&& (objc_opt_respondsToSelector() & 1) != 0)
    {
      [v13 iconDragManagerIconDraggingDidChange:self];
    }

    if (v9 != [(SBIconDragManager *)self isTrackingUserActiveIconDrags]&& (objc_opt_respondsToSelector() & 1) != 0)
    {
      [v13 iconDragManagerUserActiveIconDraggingDidChange:self];
    }

    if (v12)
    {
      if (([v7 isUserActive] & 1) == 0)
      {
        [v7 resetLastUserInteractionDate];
        if (![(SBIconDragManager *)self isEditing])
        {
          if ([v7 hasUserDragged])
          {
            block[0] = MEMORY[0x1E69E9820];
            block[1] = 3221225472;
            block[2] = __61__SBIconDragManager_changeStateOfDragWithIdentifier_toState___block_invoke;
            block[3] = &unk_1E8088C90;
            block[4] = self;
            dispatch_async(MEMORY[0x1E69E96A0], block);
          }
        }
      }
    }

    [(SBIconDragManager *)self resetWatchdogTimerForDragWithIdentifier:v6 timeout:60.0];
  }
}

void __61__SBIconDragManager_changeStateOfDragWithIdentifier_toState___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) rootFolder];
  [v3 compactLists];
  v2 = [*(a1 + 32) model];
  [v2 saveIconStateIfNeeded];
  [v2 clearDesiredIconState];
}

- (void)resetWatchdogTimerForDragWithIdentifier:(id)a3 timeout:(double)a4
{
  v6 = a3;
  v9 = [(SBIconDragManager *)self iconDragContextForDragWithIdentifier:v6];
  v7 = [v9 watchdogTimer];
  [v7 invalidate];

  v8 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:self target:sel_watchdogTimerDidFire_ selector:v6 userInfo:0 repeats:a4];

  [v8 setTolerance:10.0];
  [v9 setWatchdogTimer:v8];
}

- (void)watchdogTimerDidFire:(id)a3
{
  v9 = [a3 userInfo];
  v4 = [(SBIconDragManager *)self iconDragContextForDragWithIdentifier:?];
  v5 = [v4 lastUserInteractionDate];
  v6 = v5;
  if (v5)
  {
    [v5 timeIntervalSinceNow];
    v8 = fabs(v7);
    if (v8 >= 60.0)
    {
      [(SBIconDragManager *)self watchdogDragWithIdentifier:v9];
    }

    else
    {
      [(SBIconDragManager *)self resetWatchdogTimerForDragWithIdentifier:v9 timeout:60.0 - v8];
    }
  }
}

- (void)_startTrackingDragWithIdentifier:(id)a3 session:(id)a4 primaryIconView:(id)a5
{
  v16 = a3;
  v8 = a5;
  v9 = a4;
  v10 = [(SBIconDragManager *)self iconDragContextForDragWithIdentifier:v16];

  [(SBIconDragManager *)self _startTrackingDragWithIdentifier:v16 session:v9];
  if (!v10)
  {
    v11 = [(SBIconDragManager *)self iconDragContextForDragWithIdentifier:v16];
    v12 = [v8 icon];
    [v11 setPrimaryIconView:v8];
    [v11 addSourceIcon:v12];
    [v11 addSourceIconView:v8];
    v13 = [v12 nodeIdentifier];
    [v11 addItemIdentifier:v13];

    v14 = [(SBIconDragManager *)self rootFolder];
    v15 = [v14 gridPathForIcon:v12 listGridCellInfoOptions:{-[SBIconDragManager listGridCellInfoOptions](self, "listGridCellInfoOptions")}];
    [v11 setPrimaryIconGridPath:v15];
  }
}

- (void)addAppLocalContextsFromDragItems:(id)a3 toDragWithIdentifier:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(SBIconDragManager *)self iconDragContextForDragWithIdentifier:a4];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v15 + 1) + 8 * i);
        v14 = [v13 sbh_appDragLocalContext];
        if (v14)
        {
          [v7 setAppDragLocalContext:v14 forDragItem:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }
}

- (void)createIconsFromDragItemsIfNecessary:(id)a3 withDragIdentifier:(id)a4
{
  v67 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v34 = a4;
  v7 = [(SBIconDragManager *)self iconDragContextForDragWithIdentifier:?];
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  obj = v6;
  v8 = [obj countByEnumeratingWithState:&v56 objects:v66 count:16];
  if (!v8)
  {
    v48 = 0;
    goto LABEL_32;
  }

  v9 = v8;
  v48 = 0;
  v10 = *v57;
  v36 = v7;
  v35 = *v57;
  do
  {
    v11 = 0;
    v37 = v9;
    do
    {
      if (*v57 != v10)
      {
        objc_enumerationMutation(obj);
      }

      v12 = [*(*(&v56 + 1) + 8 * v11) sbh_appDragLocalContext];
      v13 = [v12 customIconDataSourceConfigurations];
      v42 = v12;
      v14 = [v12 uniqueIdentifier];
      v15 = [v7 sourceIcons];
      v54[0] = MEMORY[0x1E69E9820];
      v54[1] = 3221225472;
      v54[2] = __76__SBIconDragManager_createIconsFromDragItemsIfNecessary_withDragIdentifier___block_invoke;
      v54[3] = &unk_1E8089C20;
      v40 = v14;
      v55 = v40;
      v16 = [v15 bs_containsObjectPassingTest:v54];

      v41 = v13;
      if ([v13 count] && (v16 & 1) == 0)
      {
        v39 = v11;
        v17 = [[SBWidgetIcon alloc] initWithLeafIdentifier:v40 applicationBundleID:0];

        v18 = [v42 gridSizeClass];
        v46 = v17;
        [(SBIcon *)v17 setGridSizeClass:v18];

        v45 = [v42 activeCustomIconDataSourceUniqueIdentifier];
        v50 = 0u;
        v51 = 0u;
        v52 = 0u;
        v53 = 0u;
        v43 = v41;
        v47 = [v43 countByEnumeratingWithState:&v50 objects:v65 count:16];
        if (!v47)
        {
          v49 = 0;
          goto LABEL_27;
        }

        v49 = 0;
        v44 = *v51;
        while (1)
        {
          for (i = 0; i != v47; ++i)
          {
            if (*v51 != v44)
            {
              objc_enumerationMutation(v43);
            }

            v20 = *(*(&v50 + 1) + 8 * i);
            v21 = [v20 objectForKey:@"kind"];

            if (v21)
            {
              v22 = [v20 objectForKey:@"kind"];
              v23 = [v20 objectForKey:@"uniqueIdentifier"];
              v24 = [v20 objectForKey:@"extensionBundleIdentifier"];
              v25 = [v20 objectForKey:@"containerBundleIdentifier"];
              v26 = [v20 objectForKey:@"supportedGridSizeClasses"];
              v27 = [[SBHWidget alloc] initWithUniqueIdentifier:v23 kind:v22 extensionBundleIdentifier:v24 containerBundleIdentifier:v25 supportedGridSizeClasses:v26];
              v28 = SBLogWidgets();
              if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
              {
                v29 = [(SBHWidget *)v27 extensionBundleIdentifier];
                v30 = [(SBHWidget *)v27 uniqueIdentifier];
                *buf = 138543618;
                v62 = v29;
                v63 = 2114;
                v64 = v30;
                _os_log_impl(&dword_1BEB18000, v28, OS_LOG_TYPE_DEFAULT, "Widget %{public}@ %{public}@ created for drag.", buf, 0x16u);
              }

              v31 = v27;
              if ([v23 isEqualToString:v45])
              {
                v32 = v31;
              }

              else
              {
                v32 = v49;
              }
            }

            else
            {
              v22 = [v20 objectForKey:@"uniqueIdentifier"];
              v23 = [v20 objectForKey:@"elementIdentifier"];
              v31 = [objc_alloc(+[SBHCustomIconElement elementClassWithIdentifier:](SBHCustomIconElement elementClassWithIdentifier:{v23)), "initWithUniqueIdentifier:", v22}];
              if (![v22 isEqualToString:v45])
              {
                goto LABEL_23;
              }

              v31 = v31;
              v32 = v31;
              v24 = v49;
            }

            v49 = v32;
LABEL_23:

            [(SBLeafIcon *)v46 addIconDataSource:v31];
          }

          v47 = [v43 countByEnumeratingWithState:&v50 objects:v65 count:16];
          if (!v47)
          {
LABEL_27:

            [(SBLeafIcon *)v46 setActiveDataSource:v49];
            v48 = v46;
            v7 = v36;
            v9 = v37;
            v10 = v35;
            v11 = v39;
            break;
          }
        }
      }

      ++v11;
    }

    while (v11 != v9);
    v9 = [obj countByEnumeratingWithState:&v56 objects:v66 count:16];
  }

  while (v9);
LABEL_32:

  if ([(SBLeafIcon *)v48 iconDataSourceCount])
  {
    v60 = v48;
    v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v60 count:1];
    [v7 setCreatedWidgetIcons:v33];
  }
}

uint64_t __76__SBIconDragManager_createIconsFromDragItemsIfNecessary_withDragIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueIdentifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (void)addApplicationIconsFromDragItems:(id)a3 session:(id)a4 toDragWithIdentifier:(id)a5
{
  v32 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(SBIconDragManager *)self iconDragContextForDragWithIdentifier:v10];
  v12 = [v11 externallyDraggedIcons];
  v13 = [v12 count];

  if (!v13)
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v14 = v8;
    v15 = [v14 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (!v15)
    {
      v17 = v14;
      goto LABEL_23;
    }

    v16 = v15;
    v24 = v10;
    v25 = v9;
    v26 = v8;
    v17 = 0;
    v18 = *v28;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v28 != v18)
        {
          objc_enumerationMutation(v14);
        }

        v20 = [*(*(&v27 + 1) + 8 * i) sbh_appDragLocalContext];
        v21 = v20;
        if (v20)
        {
          v22 = [v20 uniqueIdentifier];
          if (v22)
          {
            v23 = [(SBIconDragManager *)self leafIconForIdentifier:v22];
            if (v23 && ([v11 hasDraggedIcon:v23] & 1) == 0)
            {
              if ([v21 isSourceLocal])
              {
                [v11 addSourceIcon:v23];
              }

              else
              {
                if (!v17)
                {
                  v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
                }

                [v17 addObject:v23];
              }
            }
          }
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v16);

    v9 = v25;
    v8 = v26;
    v10 = v24;
    if (v17)
    {
      [v11 setExternallyDraggedIcons:v17];
LABEL_23:
    }
  }
}

- (id)appDragLocalContextForDragItem:(id)a3
{
  v4 = a3;
  v5 = [v4 sbh_appDragLocalContext];
  if (!v5)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x3032000000;
    v13 = __Block_byref_object_copy__2;
    v14 = __Block_byref_object_dispose__2;
    v15 = 0;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __52__SBIconDragManager_appDragLocalContextForDragItem___block_invoke;
    v7[3] = &unk_1E8089A68;
    v9 = &v10;
    v8 = v4;
    [(SBIconDragManager *)self enumerateIconDragContextsUsingBlock:v7];
    v5 = v11[5];

    _Block_object_dispose(&v10, 8);
  }

  return v5;
}

void __52__SBIconDragManager_appDragLocalContextForDragItem___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 appDragLocalContextForDragItem:*(a1 + 32)];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  if (*(*(*(a1 + 40) + 8) + 40))
  {
    *a4 = 1;
  }
}

- (id)_iconIdentifierForDragItem:(id)a3
{
  v4 = a3;
  v5 = [v4 itemProvider];
  v6 = [v5 hasItemConformingToTypeIdentifier:*MEMORY[0x1E699A3D0]];

  if (v6)
  {
    v21 = 0;
    v22 = &v21;
    v23 = 0x3032000000;
    v24 = __Block_byref_object_copy__2;
    v25 = __Block_byref_object_dispose__2;
    v26 = 0;
    v7 = [v4 itemProvider];
    v8 = [v7 teamData];
    if (v8)
    {
      v9 = MEMORY[0x1E696ACD0];
      v10 = objc_opt_self();
      v11 = [v9 unarchivedObjectOfClass:v10 fromData:v8 error:0];

      if (v11)
      {
        v15 = MEMORY[0x1E69E9820];
        v16 = 3221225472;
        v17 = __48__SBIconDragManager__iconIdentifierForDragItem___block_invoke;
        v18 = &unk_1E8089A90;
        v11 = v11;
        v19 = v11;
        v20 = &v21;
        [(SBIconDragManager *)self enumerateIconDragContextsUsingBlock:&v15];
      }
    }

    else
    {
      v11 = 0;
    }

    v13 = [v22[5] nodeIdentifier];

    _Block_object_dispose(&v21, 8);
  }

  else
  {
    v12 = [(SBIconDragManager *)self appDragLocalContextForDragItem:v4];
    v13 = [v12 uniqueIdentifier];
  }

  return v13;
}

void __48__SBIconDragManager__iconIdentifierForDragItem___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = [a2 sourceIcons];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        if ([v10 isFileStackIcon])
        {
          v11 = objc_opt_class();
          v12 = v10;
          if (v11)
          {
            if (objc_opt_isKindOfClass())
            {
              v13 = v12;
            }

            else
            {
              v13 = 0;
            }
          }

          else
          {
            v13 = 0;
          }

          v14 = v13;

          v15 = [v14 url];
          v16 = [v15 isEqual:*(a1 + 32)];

          if (v16)
          {
            objc_storeStrong((*(*(a1 + 40) + 8) + 40), v10);
            *a4 = 1;
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }
}

- (id)_applicationBundleIdentifierForDragItem:(id)a3
{
  v3 = [(SBIconDragManager *)self appDragLocalContextForDragItem:a3];
  v4 = [v3 applicationBundleIdentifier];

  return v4;
}

- (id)draggedIconForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(SBIconDragManager *)self leafIconForIdentifier:v4];
  if (v5)
  {
    v6 = v5;
    goto LABEL_13;
  }

  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__2;
  v24 = __Block_byref_object_dispose__2;
  v25 = 0;
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __46__SBIconDragManager_draggedIconForIdentifier___block_invoke;
  v17 = &unk_1E8089A90;
  v7 = v4;
  v18 = v7;
  v19 = &v20;
  [(SBIconDragManager *)self enumerateIconDragContextsUsingBlock:&v14];
  v8 = v21[5];
  if (v8)
  {
    v6 = v8;

    _Block_object_dispose(&v20, 8);
    goto LABEL_13;
  }

  _Block_object_dispose(&v20, 8);
  v9 = [(SBIconDragManager *)self rootFolder:v14];
  v10 = [v9 indexPathForIconWithIdentifier:v7];
  if (!v10)
  {

LABEL_9:
    v12 = [(SBIconDragManager *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      v6 = [v12 iconDragManager:self draggedIconForIdentifier:v7];
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_13;
  }

  v11 = v10;
  v6 = [v9 iconAtIndexPath:v10];

  if (!v6)
  {
    goto LABEL_9;
  }

LABEL_13:

  return v6;
}

void __46__SBIconDragManager_draggedIconForIdentifier___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [a2 draggedIcons];
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        v12 = [v11 nodeIdentifier];
        v13 = [v12 isEqual:*(a1 + 32)];

        if (v13)
        {
          objc_storeStrong((*(*(a1 + 40) + 8) + 40), v11);
          *a4 = 1;
          goto LABEL_11;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

- (id)draggedIconsForIdentifiers:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(SBIconDragManager *)self draggedIconForIdentifier:*(*(&v13 + 1) + 8 * i), v13];
        if (v11)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)dragPlaceholderPathForDragWithIdentifier:(id)a3
{
  v4 = [(SBIconDragManager *)self iconDragContextForDragWithIdentifier:a3];
  v5 = [v4 dragPlaceholderListView];
  v6 = [v5 model];
  v7 = [(SBIconDragManager *)self rootFolder];
  v8 = [v7 indexPathForList:v6];
  v9 = [v4 dragPlaceholder];
  v10 = [v9 effectiveGridCellIndex];
  v11 = [v5 gridCellInfo];
  v12 = [v11 iconIndexForGridCellIndex:v10];

  if (v8)
  {
    v13 = [v8 indexPathByAddingIndex:v12];
  }

  else
  {
    v13 = [MEMORY[0x1E696AC88] indexPathWithIndex:v12];
  }

  return v13;
}

- (id)dragPlaceholderGridPathForDragWithIdentifier:(id)a3
{
  v4 = [(SBIconDragManager *)self iconDragContextForDragWithIdentifier:a3];
  v5 = [v4 dragPlaceholderListView];
  v6 = [v5 model];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 folder];
    v9 = [v4 dragPlaceholder];
    v10 = [v9 effectiveGridCellIndex];
    v11 = [(SBIconDragManager *)self listGridCellInfoOptions];
    v12 = [SBHIconGridPath alloc];
    v13 = [v8 uniqueIdentifier];
    v14 = [v7 uniqueIdentifier];
    v15 = [(SBHIconGridPath *)v12 initWithFolderIdentifier:v13 listIdentifier:v14 gridCellIndex:v10 gridCellInfoOptions:v11];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (BOOL)removeDragPlaceholdersForDragWithIdentifier:(id)a3 placeholderPath:(id *)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(SBIconDragManager *)self iconDragContextForDragWithIdentifier:v6];
  v8 = [(SBIconDragManager *)self dragPlaceholderPathForDragWithIdentifier:v6];
  v9 = SBLogIconDragging();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v12 = 138543618;
    v13 = v6;
    v14 = 2112;
    v15 = v8;
    _os_log_impl(&dword_1BEB18000, v9, OS_LOG_TYPE_INFO, "remove drag placeholder for drag with identifier %{public}@. Placeholder path: %@", &v12, 0x16u);
  }

  [v7 resetDragPlaceholder];
  if (a4)
  {
    v10 = v8;
    *a4 = v8;
  }

  return v8 != 0;
}

- (void)_removeDraggedIconsFromLayout:(id)a3 iconLocation:(id)a4 dragIdentifier:(id)a5
{
  v32 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = [(SBIconDragManager *)self iconDragContextForDragWithIdentifier:a5];
  v22 = MEMORY[0x1E69E9820];
  v23 = 3221225472;
  v24 = __79__SBIconDragManager__removeDraggedIconsFromLayout_iconLocation_dragIdentifier___block_invoke;
  v25 = &unk_1E8089C48;
  v26 = self;
  v11 = v9;
  v27 = v11;
  v12 = [v8 bs_filter:&v22];
  if ([v10 duplicatesSourceIcons])
  {
    v13 = v12;
  }

  else
  {
    v13 = v8;
  }

  v14 = v13;
  v15 = SBLogIconDragging();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v29 = v14;
    v30 = 2114;
    v31 = v11;
    _os_log_impl(&dword_1BEB18000, v15, OS_LOG_TYPE_INFO, "hide dragged icons '%@' (icon location: %{public}@)", buf, 0x16u);
  }

  if ([v14 count])
  {
    v16 = [v10 draggedIconsHiddenAssertion];

    if (!v16)
    {
      v17 = [(SBIconDragManager *)self iconLayoutHider];
      if (!v17)
      {
        v17 = [(SBIconDragManager *)self rootListView];
      }

      v18 = [v17 beginHidingIconsFromLayout:v14 reason:@"drag" options:{-[SBIconDragManager iconLayoutHidingOptions](self, "iconLayoutHidingOptions")}];
      [v10 setDraggedIconsHiddenAssertion:v18];
      v19 = SBLogIconDragging();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v29 = v18;
        _os_log_impl(&dword_1BEB18000, v19, OS_LOG_TYPE_INFO, "made icon hiding assertion %@", buf, 0xCu);
      }

      v20 = [v14 firstObject];
      v21 = [v20 gridSizeClass];
      [v10 setDragPlaceholderGridSizeClass:v21];
    }
  }
}

- (void)removeNearestLeafIconsMatchingIcons:(id)a3 inList:(id)a4 dragContext:(id)a5
{
  v27 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v18 = a5;
  v19 = v8;
  v10 = [(SBIconDragManager *)self leafIconsInList:v9 matchingApplicationBundleIdentifierOfIcons:v8];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v11 = [v10 countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = 0;
    v14 = *v21;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(v10);
        }

        v16 = *(*(&v20 + 1) + 8 * i);
        v17 = SBLogIconDragging();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v25 = v16;
          _os_log_impl(&dword_1BEB18000, v17, OS_LOG_TYPE_INFO, "removing leaf icon %@ because the incoming drag is effectively picking it up", buf, 0xCu);
        }

        [v9 removeIcon:v16];
        if (!v13)
        {
          v13 = objc_alloc_init(MEMORY[0x1E695DFA8]);
        }

        [v13 addObject:v16];
      }

      v12 = [v10 countByEnumeratingWithState:&v20 objects:v26 count:16];
    }

    while (v12);
  }

  else
  {
    v13 = 0;
  }

  [v18 setRemovedMatchingLeafIcons:v13];
}

- (id)leafIconsInList:(id)a3 matchingApplicationBundleIdentifierOfIcons:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        if ([v12 isLeafIcon])
        {
          v13 = [v12 applicationBundleID];
          if (v13)
          {
            v14 = [v5 lastDirectlyContainedLeafIconWithApplicationBundleIdentifier:v13];
            if (v14)
            {
              v15 = v14;
              if (!v9)
              {
                v9 = objc_alloc_init(MEMORY[0x1E695DFA8]);
              }

              [v9 addObject:v15];
            }
          }
        }

        else
        {
          v13 = 0;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)removeEmptyFolders
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __39__SBIconDragManager_removeEmptyFolders__block_invoke;
  v3[3] = &unk_1E8089C70;
  v3[4] = self;
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __39__SBIconDragManager_removeEmptyFolders__block_invoke_2;
  v2[3] = &unk_1E8089C98;
  v2[4] = self;
  [(SBIconDragManager *)self modifyRootFolderUsingBlock:v3 orRootListModelUsingBlock:v2];
}

- (void)removeEmptyFoldersInFolder:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = SBLogIconDragging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v21 = v4;
    _os_log_impl(&dword_1BEB18000, v5, OS_LOG_TYPE_INFO, "remove empty folders in folder: %@", buf, 0xCu);
  }

  v6 = [v4 folderIcons];
  v7 = [(SBIconDragManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v15 + 1) + 8 * i);
          v14 = [v13 folder];
          if ([v14 isEmpty])
          {
            [v7 iconDragManager:self wantsAnimatedRemovalOfIcon:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v10);
    }
  }
}

- (void)removeEmptyFoldersInListModel:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = SBLogIconDragging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v11 = v4;
    _os_log_impl(&dword_1BEB18000, v5, OS_LOG_TYPE_INFO, "remove empty folders in list model: %@", buf, 0xCu);
  }

  v6 = [(SBIconDragManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __51__SBIconDragManager_removeEmptyFoldersInListModel___block_invoke;
    v7[3] = &unk_1E8089CC0;
    v8 = v6;
    v9 = self;
    [v4 enumerateFolderIconsUsingBlock:v7];
  }
}

void __51__SBIconDragManager_removeEmptyFoldersInListModel___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [v4 folder];
  if ([v3 isEmpty])
  {
    [*(a1 + 32) iconDragManager:*(a1 + 40) wantsAnimatedRemovalOfIcon:v4];
  }
}

- (void)pushExpandedIcon:(id)a3 location:(id)a4 context:(id)a5 animated:(BOOL)a6 completionHandler:(id)a7
{
  v8 = a6;
  v16 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a7;
  v15 = [(SBIconDragManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v15 pushExpandedIcon:v16 location:v12 context:v13 animated:v8 completionHandler:v14];
  }

  else if (v14)
  {
    v14[2](v14, 0);
  }
}

- (void)pushExpandedIconView:(id)a3 context:(id)a4 animated:(BOOL)a5 completionHandler:(id)a6
{
  v6 = a5;
  v10 = a6;
  v11 = a4;
  v12 = a3;
  v14 = [v12 icon];
  v13 = [v12 location];

  [(SBIconDragManager *)self pushExpandedIcon:v14 location:v13 context:v11 animated:v6 completionHandler:v10];
}

- (void)addIcons:(id)a3 intoFolderIcon:(id)a4 openFolderOnFinish:(BOOL)a5
{
  v31 = a5;
  v40 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = [v8 folder];
  v32 = [(SBIconDragManager *)self iconListViewContainingIcon:v8];
  v33 = v8;
  v10 = [v32 iconViewForIcon:v8];
  v11 = [v10 superview];
  [v11 bringSubviewToFront:v10];

  v30 = v10;
  [v10 setAllowsEditingAnimation:0];
  v29 = self;
  v12 = [(SBIconDragManager *)self listGridCellInfoOptions];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = v7;
  v13 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = 0;
    v16 = *v36;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v36 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v35 + 1) + 8 * i);
        if (!v15 || ([v9 insertIcon:*(*(&v35 + 1) + 8 * i) afterIcon:v15 options:0 listGridCellInfoOptions:v12], v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v19, "containsObject:", v18), v19, v20))
        {
          if (![v9 containsIcon:v18] || (objc_msgSend(v18, "gridSizeClass"), v21 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "gridPathForFirstFreeSlotOfRangeOfSizeClass:avoidingFirstList:listGridCellInfoOptions:", v21, 0, v12), v22 = objc_claimAutoreleasedReturnValue(), v21, !v22) || (objc_msgSend(v9, "insertIcon:atGridPath:options:", v18, v22, 0), v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend(v23, "containsObject:", v18), v23, v22, v24))
          {
            v25 = [v9 addIcon:v18];
            v26 = [v25 containsObject:v18];

            if (v26)
            {
              continue;
            }
          }
        }

        v27 = v18;

        v15 = v27;
      }

      v14 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v14);
  }

  else
  {
    v15 = 0;
  }

  [v30 setAllowsEditingAnimation:1];
  if (v31)
  {
    v28 = [v30 location];
    [(SBIconDragManager *)v29 pushExpandedIcon:v33 location:v28 context:0 animated:1 completionHandler:0];
  }
}

- (id)localizedFolderNameForCombiningIcon:(id)a3 withIcon:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SBIconDragManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v9 = [v8 iconDragManager:self localizedFolderNameForCombiningIcon:v6 withIcon:v7];
  }

  else
  {
    v10 = [(SBIconDragManager *)self model];
    v9 = [v10 localizedDefaultFolderName];
  }

  return v9;
}

- (id)createNewFolderFromRecipientIcon:(id)a3 grabbedIcon:(id)a4 inListModel:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(SBIconDragManager *)self localizedFolderNameForCombiningIcon:a4 withIcon:v8];
  v11 = [(SBIconDragManager *)self model];
  v12 = [v11 makeFolderWithDisplayName:v10];
  [v12 setCancelable:1];
  v13 = [[SBFolderIcon alloc] initWithFolder:v12];
  v14 = [(SBIconDragManager *)self listGridCellInfoOptions];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __78__SBIconDragManager_createNewFolderFromRecipientIcon_grabbedIcon_inListModel___block_invoke;
  v23[3] = &unk_1E8089CE8;
  v24 = v8;
  v25 = v13;
  v26 = v9;
  v27 = v14;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __78__SBIconDragManager_createNewFolderFromRecipientIcon_grabbedIcon_inListModel___block_invoke_2;
  v19[3] = &unk_1E8089D10;
  v20 = v24;
  v21 = v25;
  v22 = v14;
  v15 = v25;
  v16 = v24;
  v17 = v9;
  [(SBIconDragManager *)self modifyRootFolderUsingBlock:v23 orRootListModelUsingBlock:v19];
  [v11 addIcon:v15];

  return v12;
}

void __78__SBIconDragManager_createNewFolderFromRecipientIcon_grabbedIcon_inListModel___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([v4 containsIcon:*(a1 + 32)])
  {
    [v4 replaceIcon:*(a1 + 32) withIcon:*(a1 + 40)];
  }

  else
  {
    v3 = [*(a1 + 48) addIcon:*(a1 + 40) gridCellInfoOptions:*(a1 + 56) mutationOptions:0];
  }
}

void __78__SBIconDragManager_createNewFolderFromRecipientIcon_grabbedIcon_inListModel___block_invoke_2(void *a1, void *a2)
{
  v5 = a2;
  if ([v5 directlyContainsIcon:a1[4]])
  {
    v3 = [v5 replaceIcon:a1[4] withIcon:a1[5] gridCellInfoOptions:a1[6] mutationOptions:0];
  }

  else
  {
    v4 = [v5 addIcon:a1[5] gridCellInfoOptions:a1[6] mutationOptions:0];
  }
}

- (void)startTrackingDragLocationForEditingFromDropSession:(id)a3 orDragSession:(id)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([(SBIconDragManager *)self isEditing])
  {
    goto LABEL_19;
  }

  v8 = [(SBIconDragManager *)self draggingEditContext];
  if (v8)
  {
    if (v6)
    {
LABEL_4:
      v9 = [(SBIconDragManager *)self uniqueIdentifierForIconDropSession:v6];
      goto LABEL_8;
    }
  }

  else
  {
    v8 = objc_alloc_init(SBIconDraggingEditContext);
    [(SBIconDragManager *)self setDraggingEditContext:v8];
    if (v6)
    {
      goto LABEL_4;
    }
  }

  if (!v7)
  {
    v10 = 0;
    goto LABEL_9;
  }

  v9 = [(SBIconDragManager *)self uniqueIdentifierForIconDragSession:v7];
LABEL_8:
  v10 = v9;
LABEL_9:
  [(SBIconDraggingEditContext *)v8 setDraggingUniqueIdentifier:v10];
  v11 = [(SBIconDragManager *)self rootView];
  v12 = [v11 _screen];
  v13 = [v12 coordinateSpace];

  if (!(v6 | v7))
  {
    v20 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Need either UIDropSession or UIDragSession to track a drag" userInfo:0];
    objc_exception_throw(v20);
  }

  if (v11)
  {
    if (v6)
    {
      v14 = v6;
    }

    else
    {
      v14 = v7;
    }

    [v14 locationInView:v11];
    [v11 convertPoint:v13 toCoordinateSpace:?];
    v16 = v17;
    v15 = v18;
    [(SBIconDraggingEditContext *)v8 setEnteredScreenLocation:?];
  }

  else
  {
    [(SBIconDraggingEditContext *)v8 setEnteredScreenLocationNeedsUpdate:1];
    v15 = 0x7FF8000000000000;
    v16 = 0x7FF8000000000000;
  }

  v19 = SBLogIconDragging();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v21 = 138543874;
    v22 = v10;
    v23 = 2048;
    v24 = v16;
    v25 = 2048;
    v26 = v15;
    _os_log_impl(&dword_1BEB18000, v19, OS_LOG_TYPE_INFO, "start tracking drag location for editing from drag identifier '%{public}@', location: (%f,%f))", &v21, 0x20u);
  }

LABEL_19:
}

- (void)stopTrackingDragLocationForEditingForDragWithIdentifier:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = SBLogIconDragging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v8 = 138543362;
    v9 = v4;
    _os_log_impl(&dword_1BEB18000, v5, OS_LOG_TYPE_INFO, "stop tracking drag location for editing from drag identifier '%{public}@'", &v8, 0xCu);
  }

  v6 = [(SBIconDragManager *)self draggingEditContext];
  v7 = [v6 draggingUniqueIdentifier];

  if (v7 == v4)
  {
    [(SBIconDragManager *)self setDraggingEditContext:0];
  }
}

- (BOOL)swapTrackedIconWithIdentifier:(id)a3 withIcon:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __60__SBIconDragManager_swapTrackedIconWithIdentifier_withIcon___block_invoke;
  v11[3] = &unk_1E8089B20;
  v8 = v6;
  v12 = v8;
  v9 = v7;
  v13 = v9;
  v14 = &v15;
  [(SBIconDragManager *)self enumerateIconDragContextsUsingBlock:v11];
  LOBYTE(self) = *(v16 + 24);

  _Block_object_dispose(&v15, 8);
  return self;
}

void __60__SBIconDragManager_swapTrackedIconWithIdentifier_withIcon___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  if ([v3 hasItemIdentifier:v4])
  {
    v5 = SBLogIconDragging();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [*(a1 + 40) nodeIdentifier];
      v7 = 138412546;
      v8 = v4;
      v9 = 2112;
      v10 = v6;
      _os_log_impl(&dword_1BEB18000, v5, OS_LOG_TYPE_INFO, "swapping dragging icon '%@' for icon '%@'", &v7, 0x16u);
    }

    [v3 swapSourceIconWithIdentifier:v4 withIcon:*(a1 + 40)];
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }
}

- (void)compactAndLayoutRootIconLists
{
  [(SBIconDragManager *)self defaultIconLayoutAnimationDuration];

  [(SBIconDragManager *)self compactAndLayoutRootIconListsWithDuration:?];
}

- (void)setIndexPath:(id)a3 whenRevertingIconsWithPathPrefix:(id)a4
{
  v13 = a3;
  v6 = a4;
  v7 = v13;
  v8 = v6;
  revertingReplacementIndexPaths = self->_revertingReplacementIndexPaths;
  if (v13)
  {
    if (!revertingReplacementIndexPaths)
    {
      v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v11 = self->_revertingReplacementIndexPaths;
      self->_revertingReplacementIndexPaths = v10;

      v7 = v13;
      revertingReplacementIndexPaths = self->_revertingReplacementIndexPaths;
    }

    [(NSMutableDictionary *)revertingReplacementIndexPaths setObject:v7 forKey:v8];
  }

  else
  {
    [(NSMutableDictionary *)revertingReplacementIndexPaths removeObjectForKey:v8];
    if (![(NSMutableDictionary *)self->_revertingReplacementIndexPaths count])
    {
      v12 = self->_revertingReplacementIndexPaths;
      self->_revertingReplacementIndexPaths = 0;
    }
  }
}

- (void)noteFolderControllerWillOpen
{
  v3 = [(SBIconDragManager *)self iconLayoutHidingOptions];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __49__SBIconDragManager_noteFolderControllerWillOpen__block_invoke;
  v4[3] = &__block_descriptor_40_e34_v32__0__SBIconDragContext_8_16_B24l;
  v4[4] = v3;
  [(SBIconDragManager *)self enumerateIconDragContextsUsingBlock:v4];
}

void __49__SBIconDragManager_noteFolderControllerWillOpen__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 draggedIconsHiddenAssertion];
  [v3 setOptions:*(a1 + 32)];
}

- (void)noteFolderControllerDidClose:(id)a3
{
  v4 = [(SBIconDragManager *)self iconLayoutHidingOptions];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __50__SBIconDragManager_noteFolderControllerDidClose___block_invoke;
  v5[3] = &__block_descriptor_40_e34_v32__0__SBIconDragContext_8_16_B24l;
  v5[4] = v4;
  [(SBIconDragManager *)self enumerateIconDragContextsUsingBlock:v5];
  [(SBIconDragManager *)self layoutIconListsWithAnimationType:0 forceRelayout:0];
}

void __50__SBIconDragManager_noteFolderControllerDidClose___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 draggedIconsHiddenAssertion];
  [v3 setOptions:*(a1 + 32)];
}

- (void)cancelEditingAndAllDrags
{
  v3 = SBLogIconDragging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_1BEB18000, v3, OS_LOG_TYPE_INFO, "cancel editing and all drags", v5, 2u);
  }

  v4 = [(SBIconDragManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 setEditing:0];
  }

  [(SBIconDragManager *)self cancelAllDrags];
}

- (void)cancelAllDrags
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [(SBIconDragManager *)self allDragIdentifiers];
  v4 = SBLogIconDragging();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v18 = v3;
    _os_log_impl(&dword_1BEB18000, v4, OS_LOG_TYPE_INFO, "cancel all drags. active drags: %{public}@", buf, 0xCu);
  }

  v5 = [(SBIconDragManager *)self isIconDragging];
  v6 = [(SBIconDragManager *)self isTrackingUserActiveIconDrags];
  if (v5 && !v6)
  {
    v7 = SBLogIconDragging();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1BEB18000, v7, OS_LOG_TYPE_INFO, "will not cancel all drags because a drag exists that is animating into final place", buf, 2u);
    }

LABEL_15:

    goto LABEL_16;
  }

  [objc_opt_class() cancelAllDrags];
  if ([(SBIconDragManager *)self isIconDragging])
  {
    [(SBIconDragManager *)self enumerateIconDragContextsUsingBlock:&__block_literal_global_250];
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v7 = v3;
    v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v13;
      do
      {
        v11 = 0;
        do
        {
          if (*v13 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [(SBIconDragManager *)self _stopTrackingDragWithIdentifier:*(*(&v12 + 1) + 8 * v11++), v12];
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v9);
    }

    goto LABEL_15;
  }

LABEL_16:
}

void __35__SBIconDragManager_cancelAllDrags__block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = [v2 primaryIconView];
  [v3 cancelDrag];
  [v3 cancelDragLift];
  [v2 removeAllMessageExpectations];
  [v2 setRecipientIconView:0];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [v2 appLocalContexts];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v12 + 1) + 8 * v8) portaledPreview];
        if (objc_opt_respondsToSelector())
        {
          v10 = v9;
        }

        else
        {
          v10 = 0;
        }

        v11 = v10;

        if ([v11 dragState] == 3)
        {
          [v11 setDragState:4];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }
}

- (void)noteDragItemWasConsumedExternallyForDropSession:(id)a3
{
  if (a3)
  {
    v3 = [(SBIconDragManager *)self iconDragContextForDragDropSession:?];
    if (v3)
    {
      v4 = v3;
      [v3 setDragItemWasConsumedExternally:1];
      v3 = v4;
    }
  }
}

- (void)watchdogDragWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = SBLogIconDragging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    [(SBIconDragManager *)v4 watchdogDragWithIdentifier:v5];
  }

  v6 = [(SBIconDragManager *)self iconDragContextForDragWithIdentifier:v4];
  v7 = [v6 primaryIconView];
  [v7 cancelDrag];
  [v6 removeAllMessageExpectations];
  [v6 setRecipientIconView:0];
  [(SBIconDragManager *)self _stopTrackingDragWithIdentifier:v4];
}

- (BOOL)shouldUseGhostIconForIconView:(id)a3
{
  v4 = a3;
  v5 = [v4 location];
  if ([v5 isEqualToString:@"SBIconLocationAddWidgetSheet"])
  {
    LOBYTE(v6) = 0;
LABEL_13:

    goto LABEL_14;
  }

  v7 = [v4 location];
  v8 = [v7 isEqualToString:@"SBIconLocationStackConfiguration"];

  if ((v8 & 1) == 0)
  {
    v5 = [(SBIconDragManager *)self delegate];
    if ((objc_opt_respondsToSelector() & 1) != 0 && ![v5 isEditingAllowedForIconView:v4])
    {
      goto LABEL_10;
    }

    v9 = [v4 location];
    if (SBIconLocationGroupContainsLocation(@"SBIconLocationGroupDock", v9) && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v10 = [v5 isIconContentPossiblyVisibleOverApplication];

      if (v10)
      {
LABEL_10:
        LOBYTE(v6) = 1;
        goto LABEL_13;
      }
    }

    else
    {
    }

    v6 = ![(SBIconDragManager *)self doesIconViewRepresentRealIconPosition:v4];
    goto LABEL_13;
  }

  LOBYTE(v6) = 0;
LABEL_14:

  return v6;
}

- (id)startingIconLocationForIcon:(id)a3 dragIdentifier:(id)a4
{
  v6 = a3;
  v7 = [(SBIconDragManager *)self iconDragContextForDragWithIdentifier:a4];
  v8 = [v6 uniqueIdentifier];

  v9 = [v7 appDragLocalContextWithIconIdentifier:v8];
  started = SBHAppDragLocalContextStartLocationFromSBSLocation([v9 startLocation]);
  v11 = SBHIconLocationForSBHAppDragLocalContextStartLocation(started);

  return v11;
}

- (BOOL)doesIconViewRepresentRealIconPosition:(id)a3
{
  v4 = a3;
  v5 = [v4 icon];
  v6 = [v4 location];

  LOBYTE(self) = [(SBIconDragManager *)self doesIconRepresentRealIconPosition:v5 inLocation:v6];
  return self;
}

- (BOOL)doesIconRepresentRealIconPosition:(id)a3 dragIdentifier:(id)a4
{
  v6 = a3;
  v7 = [(SBIconDragManager *)self startingIconLocationForIcon:v6 dragIdentifier:a4];
  LOBYTE(self) = [(SBIconDragManager *)self doesIconRepresentRealIconPosition:v6 inLocation:v7];

  return self;
}

- (BOOL)doesIconRepresentRealIconPosition:(id)a3 inLocation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SBIconDragManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v9 = [v8 iconDragManager:self doesIconRepresentRealIconPosition:v6 inLocation:v7];
  }

  else if (objc_opt_respondsToSelector())
  {
    v9 = [v8 iconDragManager:self doesIconViewRepresentRealIconPosition:0];
  }

  else
  {
    v9 = [(SBIconDragManager *)self doesIconLocationRepresentRealIconPosition:v7];
  }

  v10 = v9;

  return v10;
}

- (BOOL)shouldBeginEditingWhenDragBegins
{
  if ([(SBIconDragManager *)self isRootFolderContentVisible])
  {
    return 1;
  }

  return [(SBIconDragManager *)self isIconContentPossiblyVisibleOverApplication];
}

- (BOOL)shouldCancelDragsWhenEditingEnds
{
  if (__sb__runningInSpringBoard())
  {
    return !SBFEffectiveDeviceClass() || SBFEffectiveDeviceClass() == 1;
  }

  else
  {
    v3 = [MEMORY[0x1E69DC938] currentDevice];
    v2 = [v3 userInterfaceIdiom] == 0;
  }

  return v2;
}

- (double)delayAfterAfterLiftPreviewToBeginEditing
{
  v3 = [(SBIconDragManager *)self isRootFolderContentVisible];
  result = 0.0;
  if (v3)
  {
    v5 = [(SBIconDragManager *)self shouldBeginEditingWhenLiftPreviewBegins];
    result = 1.6;
    if (v5)
    {
      return 0.0;
    }
  }

  return result;
}

- (BOOL)shouldDisallowBumpingIconsFromCurrentList
{
  v2 = [(SBIconDragManager *)self rootFolder];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 maxListCount] == 1;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (BOOL)shouldMinimizeLayoutDisruptionForIconLocation:(id)a3
{
  v4 = a3;
  if (SBIconLocationGroupContainsLocation(@"SBIconLocationGroupRoot", v4))
  {
    v5 = 1;
  }

  else
  {
    v6 = [(SBIconDragManager *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      v5 = [v6 iconDragManager:self shouldMinimizeLayoutDisruptionInLocation:v4];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)canMakeIconViewRecipient:(id)a3
{
  v4 = a3;
  v5 = [(SBIconDragManager *)self isEditing];
  v6 = [(SBIconDragManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = [v6 iconDragManager:self canMakeIconViewDragRecipient:v4];
  }

  return v5;
}

- (void)_handleScaleAdjustmentForDropSession:(id)a3 currentListView:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a4;
  if (v5)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v6 = [a3 items];
    v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v20;
      do
      {
        v10 = 0;
        do
        {
          if (*v20 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [*(*(&v19 + 1) + 8 * v10) sbh_appDragLocalContext];
          v12 = [v11 portaledPreview];
          if (objc_opt_respondsToSelector())
          {
            v13 = v12;
          }

          else
          {
            v13 = 0;
          }

          v14 = v13;

          if (v14)
          {
            v15 = MEMORY[0x1E69DD250];
            v16[0] = MEMORY[0x1E69E9820];
            v16[1] = 3221225472;
            v16[2] = __74__SBIconDragManager__handleScaleAdjustmentForDropSession_currentListView___block_invoke;
            v16[3] = &unk_1E8088F18;
            v17 = v14;
            v18 = v5;
            [v15 _animateUsingSpringInteractive:0 animations:v16 completion:0];
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v8);
    }
  }
}

uint64_t __74__SBIconDragManager__handleScaleAdjustmentForDropSession_currentListView___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  [*(a1 + 40) iconContentScale];

  return [v1 setIconContentScale:?];
}

- (void)addPlatterViewToMedusaDragOffscreenWindow:(id)a3 forWindowScene:(id)a4 interfaceOrientation:(int64_t)a5
{
  v23 = a3;
  v8 = a4;
  v9 = [(SBIconDragManager *)self _windowForDragPreviewsForPlatterView:v23 forWindowScene:v8];
  v10 = v9;
  if (a5)
  {
    [v9 _setWindowInterfaceOrientation:a5];
    if (v8)
    {
      [v8 _referenceBounds];
      v15 = v11;
      v16 = v12;
      v17 = v13;
      Width = v14;
      if ((a5 - 3) <= 1)
      {
        Height = CGRectGetHeight(*&v11);
        v25.origin.x = v15;
        v25.origin.y = v16;
        v25.size.width = v17;
        v25.size.height = Width;
        Width = CGRectGetWidth(v25);
        v17 = Height;
      }

      [v10 setFrame:{v15, v16, v17, Width}];
    }
  }

  [v10 beginTrackingPlatterView:v23];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    singleUseDragWindows = self->_singleUseDragWindows;
    if (!singleUseDragWindows)
    {
      v21 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v22 = self->_singleUseDragWindows;
      self->_singleUseDragWindows = v21;

      singleUseDragWindows = self->_singleUseDragWindows;
    }

    [(NSMutableArray *)singleUseDragWindows addObject:v10];
  }
}

- (void)removePlatterViewFromMedusaDragOffscreenWindow:(id)a3
{
  v4 = a3;
  v5 = [v4 window];
  [v5 stopTrackingPlatterView:v4];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(NSMutableArray *)self->_singleUseDragWindows removeObject:v5];
    [v5 setHidden:1];
  }
}

- (void)windowSceneDidDisconnect:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_singleUseDragWindows;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        v12 = [v11 windowScene];

        if (v12 == v4)
        {
          if (!v8)
          {
            v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
          }

          [v8 addObject:v11];
          [v11 setHidden:1];
        }
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  [(NSMutableArray *)self->_singleUseDragWindows removeObjectsInArray:v8];
}

- (id)_windowForDragPreviewsForPlatterView:(id)a3 forWindowScene:(id)a4
{
  v5 = a4;
  v6 = [(SBIconDragManager *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0 || ([v6 windowForIconDragPreviewsForIconDragManager:self forWindowScene:v5], (v7 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v7 = [[SBDefaultIconDragPreviewWindow alloc] initWithWindowScene:v5];
    v8 = objc_alloc_init(SBDefaultIconDragPreviewViewController);
    [(SBDefaultIconDragPreviewWindow *)v7 setRootViewController:v8];

    [(SBDefaultIconDragPreviewWindow *)v7 setWindowLevel:*MEMORY[0x1E69DE7E0] + -4.0];
    [(SBDefaultIconDragPreviewWindow *)v7 setHidden:0];
    [(SBDefaultIconDragPreviewWindow *)v7 setUserInteractionEnabled:0];
  }

  return v7;
}

- (void)_updateDragPreviewIconViewForDropSession:(id)a3 inIconListView:(id)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([(SBIconDragManager *)self canAcceptDropInSession:v6 inIconListView:v7])
  {
    v8 = [v7 iconViewConfigurationOptions];
    v9 = [v7 iconLocation];
    v18 = v7;
    v20 = [v7 layoutProvider];
    [MEMORY[0x1E6979518] begin];
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v19 = v6;
    obj = [v6 items];
    v10 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v23;
      do
      {
        v13 = 0;
        do
        {
          if (*v23 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = [*(*(&v22 + 1) + 8 * v13) sbh_appDragLocalContext];
          v15 = [v14 portaledPreview];
          if (objc_opt_respondsToSelector())
          {
            v16 = v15;
          }

          else
          {
            v16 = 0;
          }

          v17 = v16;

          if (objc_opt_respondsToSelector())
          {
            [v17 setIconViewListLayoutProvider:v20];
          }

          [v17 updateDestinationIconLocation:v9 allowsLabelArea:(v8 & 2) == 0 animated:1];

          ++v13;
        }

        while (v11 != v13);
        v11 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v11);
    }

    [MEMORY[0x1E6979518] commit];
    v7 = v18;
    v6 = v19;
  }
}

- (void)_updateDragDistanceForDropSession:(id)a3 currentIconListLocation:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v11 = [(SBIconDragManager *)self iconDragContextForDropSession:a3];
  if (![(SBIconDragManager *)self isDelegateScrolling])
  {
    [v11 currentEnteredIconListViewLastLocation];
    v9 = hypot(x - v7, y - v8);
    [v11 currentEnteredIconListViewDragDistance];
    [v11 setCurrentEnteredIconListViewDragDistance:v9 + v10];
  }

  [v11 setCurrentEnteredIconListViewLastLocation:{x, y}];
}

- (id)_iconForDragItem:(id)a3 inIconListView:(id)a4
{
  v5 = a4;
  v6 = [a3 sbh_appDragLocalContext];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 uniqueIdentifier];
    v9 = [v5 model];
    v10 = [v9 folder];
    v11 = [v10 iconWithIdentifier:v8];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)_iconViewForDragItem:(id)a3 inIconListView:(id)a4
{
  v6 = a4;
  v7 = [(SBIconDragManager *)self _iconForDragItem:a3 inIconListView:v6];
  if (v7)
  {
    v8 = [v6 displayedIconViewForIcon:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (void)enumerateAppDragContextsInDragItems:(id)a3 usingBlock:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v14 + 1) + 8 * i) sbh_appDragLocalContext];
        if (v12)
        {
          v13 = 0;
          v6[2](v6, v12, &v13);
          if (v13)
          {

            goto LABEL_12;
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:
}

+ (void)enumerateMedusaPlatterDragPreviewsInDragItems:(id)a3 usingBlock:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __78__SBIconDragManager_enumerateMedusaPlatterDragPreviewsInDragItems_usingBlock___block_invoke;
  v8[3] = &unk_1E8089D78;
  v9 = v6;
  v7 = v6;
  [a1 enumerateAppDragContextsInDragItems:a3 usingBlock:v8];
}

void __78__SBIconDragManager_enumerateMedusaPlatterDragPreviewsInDragItems_usingBlock___block_invoke(uint64_t a1, void *a2)
{
  v5 = [a2 portaledPreview];
  if (objc_opt_respondsToSelector())
  {
    v3 = v5;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  if (v4)
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (id)draggedIconIdentifiersForDragDropSession:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [v4 items];
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(SBIconDragManager *)self _iconIdentifierForDragItem:*(*(&v13 + 1) + 8 * i)];
        if (v11)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)draggedIconsForDragDropSession:(id)a3
{
  v4 = [(SBIconDragManager *)self draggedIconIdentifiersForDragDropSession:a3];
  v5 = [(SBIconDragManager *)self draggedIconsForIdentifiers:v4];

  return v5;
}

- (id)firstHiddenIconIdentifierInDrag:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = [(SBIconDragManager *)self draggedIconIdentifiersForDragDropSession:a3];
  v5 = [(SBIconDragManager *)self model];
  if (v5)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = *v14;
      while (2)
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v13 + 1) + 8 * i);
          v11 = [v5 leafIconForIdentifier:{v10, v13}];
          if (v11 && ![v5 isIconVisible:v11])
          {
            v7 = v10;

            goto LABEL_14;
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)performBeforeRunLoopWaitsUsingBlock:(id)a3
{
  v4 = a3;
  if (!self->_waitRunLoopObserver)
  {
    objc_initWeak(&location, self);
    v5 = *MEMORY[0x1E695E480];
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __57__SBIconDragManager_performBeforeRunLoopWaitsUsingBlock___block_invoke;
    v15 = &unk_1E8089DA0;
    objc_copyWeak(&v16, &location);
    self->_waitRunLoopObserver = CFRunLoopObserverCreateWithHandler(v5, 0xA0uLL, 0, 0, &v12);
    Main = CFRunLoopGetMain();
    CFRunLoopAddObserver(Main, self->_waitRunLoopObserver, *MEMORY[0x1E695E8D0]);
    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  runLoopWaitBlocks = self->_runLoopWaitBlocks;
  if (!runLoopWaitBlocks)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v9 = self->_runLoopWaitBlocks;
    self->_runLoopWaitBlocks = v8;

    runLoopWaitBlocks = self->_runLoopWaitBlocks;
  }

  v10 = [v4 copy];
  v11 = _Block_copy(v10);
  [(NSMutableArray *)runLoopWaitBlocks addObject:v11];
}

void __57__SBIconDragManager_performBeforeRunLoopWaitsUsingBlock___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained performBlocksBeforeRunLoopWait];
}

- (void)_teardownWaitRunloopObserverIfNeeded
{
  waitRunLoopObserver = self->_waitRunLoopObserver;
  if (waitRunLoopObserver)
  {
    CFRunLoopObserverInvalidate(waitRunLoopObserver);
    CFRelease(self->_waitRunLoopObserver);
    self->_waitRunLoopObserver = 0;
  }
}

- (void)performBlocksBeforeRunLoopWait
{
  v15 = *MEMORY[0x1E69E9840];
  [(SBIconDragManager *)self _teardownWaitRunloopObserverIfNeeded];
  v3 = self->_runLoopWaitBlocks;
  runLoopWaitBlocks = self->_runLoopWaitBlocks;
  self->_runLoopWaitBlocks = 0;

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = v3;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        (*(*(*(&v10 + 1) + 8 * v9) + 16))(*(*(&v10 + 1) + 8 * v9));
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (unint64_t)iconLayoutHidingOptions
{
  v3 = [(SBIconDragManager *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) != 0 && ([v3 isAnimatingFolderIconTransitionForIconDragManager:self] & 1) != 0 || (objc_opt_respondsToSelector() & 1) != 0 && objc_msgSend(v3, "isFolderOpenForIconDragManager:", self))
  {
    v4 = 37;
  }

  else
  {
    v4 = 45;
  }

  return v4;
}

- (BOOL)allowsNestedFolders
{
  v3 = [(SBIconDragManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 allowsNestedFoldersForIconDragManager:self];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)configureIconView:(id)a3
{
  v4 = a3;
  v5 = [v4 icon];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __39__SBIconDragManager_configureIconView___block_invoke;
  v8[3] = &unk_1E8089BB0;
  v9 = v5;
  v10 = v4;
  v6 = v4;
  v7 = v5;
  [(SBIconDragManager *)self enumerateIconDragContextsUsingBlock:v8];
}

void __39__SBIconDragManager_configureIconView___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  if ([v6 hasGrabbedIcon:*(a1 + 32)])
  {
    [*(a1 + 40) setGrabbed:1];
    [v6 addGrabbedIconView:*(a1 + 40)];
    *a4 = 1;
  }
}

- (CGPoint)adjustedLocationForDropSession:(id)a3 inView:(id)a4
{
  v6 = a3;
  [v6 locationInView:a4];
  v8 = v7;
  v10 = v9;
  v11 = [(SBIconDragManager *)self iconDragContextForDropSession:v6];

  [v11 initialTouchOffsetFromIconImageCenter];
  v13 = v8 - v12;
  v15 = v10 - v14;

  v16 = v13;
  v17 = v15;
  result.y = v17;
  result.x = v16;
  return result;
}

- (unint64_t)folderMutationOptionsForInsertingIcon:(id)a3 intoList:(id)a4 inLocation:(id)a5 isSnapToGridEnabled:(BOOL)a6
{
  v6 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [v12 gridSizeClass];
  v14 = v13;
  if (v13 == @"SBHIconGridSizeClassDefault")
  {

    v17 = 0;
  }

  else
  {
    v15 = [v12 gridSizeClass];
    v16 = [v15 isEqualToString:@"SBHIconGridSizeClassDefault"];

    v17 = 2;
    if (v16)
    {
      v17 = 0;
    }
  }

  if (v6)
  {
    v18 = v17 | 0xE00;
  }

  else
  {
    v18 = v17;
  }

  v19 = [v11 directlyContainsIcon:v12];

  if (v19)
  {
    v20 = v18 | 4;
  }

  else
  {
    v20 = v18;
  }

  v21 = [(SBIconDragManager *)self shouldMinimizeLayoutDisruptionForIconLocation:v10];

  if (v21)
  {
    return v20 | 0x1000000;
  }

  else
  {
    return v20;
  }
}

- (unint64_t)folderMutationOptionsForInsertingIcon:(id)a3 intoList:(id)a4 inLocation:(id)a5 withDragIdentifier:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [(SBIconDragManager *)self iconDragContextForDragWithIdentifier:a6];
  if ([v13 isSnapToGridAllowed])
  {
    v14 = [(SBIconDragManager *)self canSnapToGridInIconLocation:v12];
  }

  else
  {
    v14 = 0;
  }

  v15 = [(SBIconDragManager *)self folderMutationOptionsForInsertingIcon:v10 intoList:v11 inLocation:v12 isSnapToGridEnabled:v14];

  return v15;
}

- (void)closeFolderControllerContainingListView:(id)a3
{
  v10 = a3;
  v4 = [(SBIconDragManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = v10;
    v6 = v5;
    do
    {
      v7 = objc_opt_self();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        break;
      }

      v9 = [v6 nextResponder];

      v6 = v9;
    }

    while (v9);
    [v4 iconDragManager:self folderController:v6 draggedIconShouldDropFromListView:v5];
  }
}

- (BOOL)isDelegateScrolling
{
  v2 = [(SBIconDragManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 isScrolling];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)pruneCancelableSourceFoldersInDestinationListView:(id)a3 withDragIdentifier:(id)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(SBIconDragManager *)self iconDragContextForDragWithIdentifier:a4];
  v8 = [v7 sourceIcons];
  v9 = [v6 model];
  v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __90__SBIconDragManager_pruneCancelableSourceFoldersInDestinationListView_withDragIdentifier___block_invoke;
  v26[3] = &unk_1E8089CC0;
  v11 = v8;
  v27 = v11;
  v12 = v10;
  v28 = v12;
  [v9 enumerateFolderIconsUsingBlock:v26];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v13 = v12;
  v14 = [v13 countByEnumeratingWithState:&v22 objects:v29 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v23;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v23 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v22 + 1) + 8 * i);
        v19 = [v18 firstObject];
        v20 = [v18 lastObject];
        v21 = [v9 replaceIcon:v19 withIcon:v20 options:0];
      }

      v15 = [v13 countByEnumeratingWithState:&v22 objects:v29 count:16];
    }

    while (v15);
  }
}

void __90__SBIconDragManager_pruneCancelableSourceFoldersInDestinationListView_withDragIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v10[2] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 folder];
  if ([v4 isCancelable])
  {
    v5 = [v4 allIcons];
    v6 = [v5 mutableCopy];

    [v6 removeObjectsInArray:*(a1 + 32)];
    if ([v6 count] == 1)
    {
      v7 = [v6 firstObject];
      v8 = *(a1 + 40);
      v10[0] = v3;
      v10[1] = v7;
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:2];
      [v8 addObject:v9];
    }
  }
}

- (id)undoProvider
{
  v3 = [(SBIconDragManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 undoProviderForIconDragManager:self];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)registerUndoWithUndoManager:(id)a3 preparation:(id)a4 draggedIcons:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = SBLogIconDragging();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *v16 = 0;
    _os_log_impl(&dword_1BEB18000, v11, OS_LOG_TYPE_INFO, "Registering for undo", v16, 2u);
  }

  v12 = [SBHIconManager undoActionNameForDraggedIcons:v9];

  [v10 registerWithUndoManager:v8 actionName:v12 observer:self];
  registeredUndoManagers = self->_registeredUndoManagers;
  if (!registeredUndoManagers)
  {
    v14 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v15 = self->_registeredUndoManagers;
    self->_registeredUndoManagers = v14;

    registeredUndoManagers = self->_registeredUndoManagers;
  }

  [(NSHashTable *)registeredUndoManagers addObject:v8];
}

- (void)clearAllUndoRegistrations
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = [(SBIconDragManager *)self undoProvider];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = self->_registeredUndoManagers;
  v5 = [(NSHashTable *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [v3 removeAllUndoRegistrationsInUndoManager:{*(*(&v9 + 1) + 8 * v8++), v9}];
      }

      while (v6 != v8);
      v6 = [(NSHashTable *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }

  [(NSHashTable *)self->_registeredUndoManagers removeAllObjects];
}

- (BOOL)iconViewCanBeginDrags:(id)a3
{
  v4 = a3;
  if ([(SBIconDragManager *)self isTrackingUserActiveIconDrags])
  {
    v5 = SBLogIconDragging();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v9 = 0;
      _os_log_impl(&dword_1BEB18000, v5, OS_LOG_TYPE_INFO, "disallowing icon drag because there is already a drag in progress", v9, 2u);
    }

    v6 = [(SBIconDragManager *)self delegate];
    v7 = 0;
  }

  else
  {
    v6 = [(SBIconDragManager *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      v7 = [v6 iconDragManager:self canBeginIconDragForIconView:v4];
    }

    else
    {
      v7 = 1;
    }
  }

  return v7;
}

- (id)dragItemsForIconView:(id)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(SBIconDragManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 iconDragManager:self dragItemsForIconView:v4];
  }

  else
  {
    v7 = [v4 icon];
    v8 = SBHIconDragItemWithIconAndIconView(v7, v4, *MEMORY[0x1E69D4390]);
    v10[0] = v8;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  }

  return v6;
}

- (int64_t)iconView:(id)a3 draggingStartLocationWithProposedStartLocation:(int64_t)a4
{
  v6 = a3;
  v7 = [(SBIconDragManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    a4 = [v7 iconDragManager:self draggingStartLocationForIconView:v6 proposedStartLocation:a4];
  }

  return a4;
}

- (double)additionalDragLiftScaleForIconView:(id)a3
{
  v4 = a3;
  v5 = [(SBIconDragManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 iconDragManager:self additionalDragLiftScaleForIconView:v4];
    v7 = v6;
  }

  else
  {
    v7 = 1.1;
  }

  return v7;
}

- (void)iconView:(id)a3 willAnimateDragLiftWithAnimator:(id)a4 session:(id)a5
{
  v56 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = SBLogIconDragging();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v55 = v8;
    _os_log_impl(&dword_1BEB18000, v11, OS_LOG_TYPE_INFO, "icon view will animate drag lift: %@", buf, 0xCu);
  }

  v12 = [v8 icon];
  v40 = [(SBIconDragManager *)self uniqueIdentifierForIconDragSession:v10];
  [SBIconDragManager _startTrackingDragWithIdentifier:"_startTrackingDragWithIdentifier:session:primaryIconView:" session:? primaryIconView:?];
  v13 = [(SBIconDragManager *)self iconDragContextForDragSession:v10];
  [v13 resetLastUserInteractionDate];
  [v13 addMessageExpectationNamed:@"iconViewLiftAnimationComplete"];
  [v8 addObserver:self];
  v38 = [(SBIconDragManager *)self shouldUseGhostIconForIconView:v8];
  if (v38)
  {
    v14 = SBLogIconDragging();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v55 = v8;
      _os_log_impl(&dword_1BEB18000, v14, OS_LOG_TYPE_INFO, "will use ghost icon for icon view: %@", buf, 0xCu);
    }

    [v13 addGrabbedIconView:v8];
    v52[0] = MEMORY[0x1E69E9820];
    v52[1] = 3221225472;
    v52[2] = __70__SBIconDragManager_iconView_willAnimateDragLiftWithAnimator_session___block_invoke;
    v52[3] = &unk_1E8088C90;
    v53 = v8;
    [v9 addAnimations:v52];
  }

  if ([(SBIconDragManager *)self shouldUseIconCenterForDragPositionForIcon:v12])
  {
    v15 = [v13 primaryIconView];

    if (v15 == v8)
    {
      [v10 locationInView:v8];
      v17 = v16;
      v19 = v18;
      [v8 iconImageCenter];
      [v13 setInitialTouchOffsetFromIconImageCenter:{v17 - v20, v19 - v21}];
    }
  }

  v22 = [(SBIconDragManager *)self iconListViewContainingIcon:v12];
  v23 = [v10 items];
  v24 = [v23 firstObject];
  v25 = [v24 sbh_appDragLocalContext];

  v39 = v25;
  v26 = [v25 portaledPreview];
  if (objc_opt_respondsToSelector())
  {
    v27 = v26;
  }

  else
  {
    v27 = 0;
  }

  v28 = v27;

  v49[0] = MEMORY[0x1E69E9820];
  v49[1] = 3221225472;
  v49[2] = __70__SBIconDragManager_iconView_willAnimateDragLiftWithAnimator_session___block_invoke_2;
  v49[3] = &unk_1E8088F18;
  v29 = v28;
  v50 = v29;
  v30 = v8;
  v51 = v30;
  [v9 addAnimations:v49];
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = __70__SBIconDragManager_iconView_willAnimateDragLiftWithAnimator_session___block_invoke_3;
  v41[3] = &unk_1E8089DF0;
  v41[4] = self;
  v31 = v30;
  v42 = v31;
  v32 = v29;
  v43 = v32;
  v48 = v38;
  v33 = v12;
  v44 = v33;
  v34 = v40;
  v45 = v34;
  v35 = v13;
  v46 = v35;
  v36 = v22;
  v47 = v36;
  [v9 addCompletion:v41];
  [(SBIconDragManager *)self changeStateOfDragWithIdentifier:v34 toState:1];
  v37 = [(SBIconDragManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v37 iconDragManager:self iconView:v31 willAnimateDragLiftWithAnimator:v9 session:v10];
  }
}

uint64_t __70__SBIconDragManager_iconView_willAnimateDragLiftWithAnimator_session___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  [*(a1 + 40) iconContentScale];
  [v2 setIconContentScale:?];
  result = [*(a1 + 32) dragState];
  if (!result)
  {
    v4 = *(a1 + 32);

    return [v4 setDragState:1];
  }

  return result;
}

void __70__SBIconDragManager_iconView_willAnimateDragLiftWithAnimator_session___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __70__SBIconDragManager_iconView_willAnimateDragLiftWithAnimator_session___block_invoke_4;
  v17 = &unk_1E8089DC8;
  v4 = *(a1 + 32);
  v18 = *(a1 + 40);
  [v4 enumerateIconDragContextsUsingBlock:&v14];
  v5 = SBLogIconDragging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v21 = a2;
    _os_log_impl(&dword_1BEB18000, v5, OS_LOG_TYPE_INFO, "icon view lift animation did complete at position: %lu", buf, 0xCu);
  }

  if (!a2)
  {
    [*(a1 + 40) setHighlighted:{0, v14, v15, v16, v17}];
    if (*(a1 + 88))
    {
      goto LABEL_12;
    }

    v6 = [*(a1 + 40) location];
    v7 = *(a1 + 32);
    v19 = *(a1 + 56);
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v19 count:1];
    [v7 _removeDraggedIconsFromLayout:v8 iconLocation:v6 dragIdentifier:*(a1 + 64)];

    v9 = [*(a1 + 72) dragPlaceholder];
    if (!v9)
    {
      v10 = [*(a1 + 80) model];
      v11 = [v10 directlyContainsIcon:*(a1 + 56)];

      if (!v11)
      {
LABEL_11:

        goto LABEL_12;
      }

      v12 = *(a1 + 72);
      v13 = [*(a1 + 56) gridSizeClass];
      [v12 setDragPlaceholderGridSizeClass:v13];

      [*(a1 + 72) setDragPlaceholderListView:*(a1 + 80)];
      v9 = [*(a1 + 80) addPlaceholderRepresentingIcon:*(a1 + 56) reason:@"drag" options:{objc_msgSend(*(a1 + 32), "placeholderOptionsForListView:forDragWithIdentifier:", *(a1 + 80), *(a1 + 64))}];
      [*(a1 + 72) setDragPlaceholder:v9];
    }

    goto LABEL_11;
  }

  if (a2 == 1)
  {
    [*(a1 + 48) draggingSourceCancelAnimationCompleted];
  }

LABEL_12:
  [*(a1 + 72) removeMessageExpectationNamed:{@"iconViewLiftAnimationComplete", v14, v15, v16, v17}];
  [*(a1 + 32) _stopTrackingDragIfPossibleWithIdentifier:*(a1 + 64)];
}

void __70__SBIconDragManager_iconView_willAnimateDragLiftWithAnimator_session___block_invoke_4(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([v4 state] == 5)
  {
    v3 = [v4 dragPreviewForIconView:*(a1 + 32)];
    [v3 dropDestinationAnimationCompleted];
  }
}

- (void)iconView:(id)a3 dragLiftAnimationDidChangeDirection:(int64_t)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = SBLogIconDragging();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v22 = v6;
    v23 = 2048;
    v24 = a4;
    _os_log_impl(&dword_1BEB18000, v7, OS_LOG_TYPE_INFO, "icon view drag lift animation did change direction: %@, new position: %li", buf, 0x16u);
  }

  v8 = MEMORY[0x1E69DD250];
  [(SBIconDragManager *)self defaultIconLayoutAnimationDuration];
  v10 = v9;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __66__SBIconDragManager_iconView_dragLiftAnimationDidChangeDirection___block_invoke;
  v18[3] = &unk_1E80897D8;
  v11 = v6;
  v19 = v11;
  v20 = a4 == 1;
  [v8 animateWithDuration:v18 animations:v10];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __66__SBIconDragManager_iconView_dragLiftAnimationDidChangeDirection___block_invoke_2;
  v14[3] = &unk_1E8089E18;
  v12 = v11;
  v15 = v12;
  v16 = self;
  v17 = a4 == 1;
  [(SBIconDragManager *)self enumerateIconDragContextsUsingBlock:v14];
  v13 = [(SBIconDragManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v13 iconDragManager:self iconView:v12 dragLiftAnimationDidChangeDirection:a4];
  }
}

uint64_t __66__SBIconDragManager_iconView_dragLiftAnimationDidChangeDirection___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) setHighlighted:(*(a1 + 40) & 1) == 0];
  if (*(a1 + 40) == 1)
  {
    v3 = *(a1 + 32);

    return [v3 setGrabbed:0];
  }

  return result;
}

void __66__SBIconDragManager_iconView_dragLiftAnimationDidChangeDirection___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if ([v7 hasSourceIconView:*(a1 + 32)])
  {
    [v7 resetLastUserInteractionDate];
    if (*(a1 + 48))
    {
      v6 = 2;
    }

    else
    {
      v6 = 1;
    }

    [*(a1 + 40) changeStateOfDragWithIdentifier:v5 toState:v6];
  }
}

- (void)iconViewWillBeginDrag:(id)a3 session:(id)a4
{
  v32 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = SBLogIconDragging();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v31 = v6;
    _os_log_impl(&dword_1BEB18000, v8, OS_LOG_TYPE_INFO, "icon view will begin drag: %@", buf, 0xCu);
  }

  v9 = [(SBIconDragManager *)self delegate];
  if (![(SBIconDragManager *)self isEditing]&& [(SBIconDragManager *)self shouldBeginEditingWhenDragBegins])
  {
    if (objc_opt_respondsToSelector())
    {
      [v9 setEditing:1 fromIconView:v6];
    }

    else if (objc_opt_respondsToSelector())
    {
      [v9 setEditing:1];
    }
  }

  v10 = [(SBIconDragManager *)self iconDragContextForDragSession:v7];
  [v10 addMessageExpectationNamed:@"iconViewEndSession"];
  v11 = [(SBIconDragManager *)self uniqueIdentifierForIconDragSession:v7];
  if (objc_opt_respondsToSelector())
  {
    v12 = [v7 items];
    [v9 iconDragManager:self willBeginIconDragWithUniqueIdentifier:v11 numberOfDraggedItems:{objc_msgSend(v12, "count")}];
  }

  if (objc_opt_respondsToSelector())
  {
    [v9 iconDragManager:self iconView:v6 willBeginDragSession:v7];
  }

  if (objc_opt_respondsToSelector())
  {
    v13 = [v6 window];
    v14 = [v13 windowScene];
    [v9 dismissLibraryForIconDragManager:self windowScene:v14];
  }

  [(SBIconDragManager *)self changeStateOfDragWithIdentifier:v11 toState:3];
  [(SBIconDragManager *)self startTrackingDragLocationForEditingFromDropSession:0 orDragSession:v7];
  v15 = [v7 items];
  [(SBIconDragManager *)self addAppLocalContextsFromDragItems:v15 toDragWithIdentifier:v11];

  v16 = MEMORY[0x1E69DD250];
  [(SBIconDragManager *)self defaultIconLayoutAnimationDuration];
  v18 = v17;
  v22 = MEMORY[0x1E69E9820];
  v23 = 3221225472;
  v24 = __51__SBIconDragManager_iconViewWillBeginDrag_session___block_invoke;
  v25 = &unk_1E8089E68;
  v26 = self;
  v27 = v7;
  v28 = v6;
  v29 = v10;
  v19 = v10;
  v20 = v6;
  v21 = v7;
  [v16 animateWithDuration:&v22 animations:v18];
  [(SBIconDragManager *)self _updateDragPreviewsForEditingState:[(SBIconDragManager *)self isEditing:v22] animated:0];
}

void __51__SBIconDragManager_iconViewWillBeginDrag_session___block_invoke(uint64_t a1)
{
  v2 = objc_opt_class();
  v3 = [*(a1 + 40) items];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __51__SBIconDragManager_iconViewWillBeginDrag_session___block_invoke_2;
  v6[3] = &unk_1E8089E40;
  v4 = *(a1 + 48);
  v5 = *(a1 + 32);
  v7 = v4;
  v8 = v5;
  v9 = *(a1 + 56);
  [v2 enumerateMedusaPlatterDragPreviewsInDragItems:v3 usingBlock:v6];
}

void __51__SBIconDragManager_iconViewWillBeginDrag_session___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) customIconImageViewController];
  v5 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy__2;
    v18 = __Block_byref_object_dispose__2;
    v19 = 0;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __51__SBIconDragManager_iconViewWillBeginDrag_session___block_invoke_3;
    v10[3] = &unk_1E8089B20;
    v7 = *(a1 + 40);
    v11 = *(a1 + 48);
    v12 = *(a1 + 32);
    v13 = &v14;
    [v7 enumerateIconDragContextsUsingBlock:v10];
    v8 = v15[5];

    _Block_object_dispose(&v14, 8);
    v4 = v8;
  }

  if (v4 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v9 = [*(a1 + 32) borrowIconImageView];
    [*(a1 + 48) setIconViewBorrowAssertion:v9 forIconView:*(a1 + 32)];
    [*(a1 + 48) setBorrowedViewController:v4 forIconView:*(a1 + 32)];
    [v4 removeFromParentViewController];
    [v3 setIconViewCustomIconImageViewController:v4];
  }

  [v3 setDragState:2];
}

uint64_t __51__SBIconDragManager_iconViewWillBeginDrag_session___block_invoke_3(uint64_t result, void *a2, uint64_t a3, _BYTE *a4)
{
  if (*(result + 32) != a2)
  {
    v6 = result;
    v7 = [a2 borrowedViewControllerForIconView:*(result + 40)];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
      objc_storeStrong((*(*(v6 + 48) + 8) + 40), v7);
      v8 = v9;
      *a4 = 1;
    }

    return MEMORY[0x1EEE66BB8](v7, v8);
  }

  return result;
}

- (BOOL)iconView:(id)a3 canAddDragItemsToSession:(id)a4
{
  v41 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 icon];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v9 = [v7 items];
  v10 = [v9 countByEnumeratingWithState:&v34 objects:v40 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v35;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v35 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v34 + 1) + 8 * i) sbh_appDragLocalContext];

        if (!v14)
        {

          goto LABEL_24;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v34 objects:v40 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v39 = *MEMORY[0x1E69D4390];
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v39 count:1];
  v16 = [v7 hasItemsConformingToTypeIdentifiers:v15];

  if ((v16 & 1) == 0)
  {
LABEL_24:
    v19 = [(SBIconDragManager *)self iconDragContextForDragSession:v7];
LABEL_25:
    v27 = [(SBIconDragManager *)self delegate];
    goto LABEL_26;
  }

  v17 = [v8 canBeAddedToMultiItemDrag];
  v18 = [(SBIconDragManager *)self iconDragContextForDragSession:v7];
  v19 = v18;
  if (!v17)
  {
    goto LABEL_25;
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v20 = [v18 draggedIcons];
  v21 = [v20 countByEnumeratingWithState:&v30 objects:v38 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v31;
    while (2)
    {
      for (j = 0; j != v22; ++j)
      {
        if (*v31 != v23)
        {
          objc_enumerationMutation(v20);
        }

        if (([*(*(&v30 + 1) + 8 * j) canBeAddedToMultiItemDrag] & 1) == 0)
        {

          goto LABEL_25;
        }
      }

      v22 = [v20 countByEnumeratingWithState:&v30 objects:v38 count:16];
      if (v22)
      {
        continue;
      }

      break;
    }
  }

  v25 = [v8 nodeIdentifier];
  v26 = [v19 hasItemIdentifier:v25];

  if (v26)
  {
    goto LABEL_25;
  }

  v27 = [(SBIconDragManager *)self delegate];
  if (![(SBIconDragManager *)self isEditing])
  {
LABEL_26:
    v28 = 0;
    goto LABEL_27;
  }

  if (objc_opt_respondsToSelector())
  {
    v28 = [v27 iconDragManager:self canAddDragItemsToSession:v7 fromIconView:v6];
  }

  else
  {
    v28 = 1;
  }

LABEL_27:

  return v28;
}

- (void)iconView:(id)a3 willAddDragItems:(id)a4 toSession:(id)a5
{
  v31 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = SBLogIconDragging();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v28 = v8;
    _os_log_impl(&dword_1BEB18000, v11, OS_LOG_TYPE_INFO, "icon view will add drag items: %@", buf, 0xCu);
  }

  v12 = [v8 icon];
  v13 = [(SBIconDragManager *)self delegate];
  v14 = [(SBIconDragManager *)self iconListViewContainingIcon:v12];
  v15 = [(SBIconDragManager *)self iconDragContextForDragSession:v10];
  if ([(SBIconDragManager *)self doesIconViewRepresentRealIconPosition:v8])
  {
    v16 = [v15 draggedIconsHiddenAssertion];
    v17 = SBLogIconDragging();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v28 = v12;
      v29 = 2112;
      v30 = v16;
      _os_log_impl(&dword_1BEB18000, v17, OS_LOG_TYPE_INFO, "adding icon %@ to icon hiding assertion %@", buf, 0x16u);
    }

    [v16 addIcon:v12];
  }

  [v15 addSourceIcon:v12];
  [v15 addSourceIconView:v8];
  v18 = [v12 nodeIdentifier];
  [v15 addItemIdentifier:v18];

  v19 = [(SBIconDragManager *)self uniqueIdentifierForIconDragSession:v10];
  if (objc_opt_respondsToSelector())
  {
    v20 = [v10 items];
    [v13 iconDragManager:self didAddItemsToIconDragWithUniqueIdentifier:v19 numberOfDraggedItems:{objc_msgSend(v20, "count")}];
  }

  v26 = v8;
  v21 = [v15 state];
  [(SBIconDragManager *)self changeStateOfDragWithIdentifier:v19 toState:4];
  v25 = v14;
  [v14 layoutIconsIfNeededWithAnimationType:0 options:1];
  [(SBIconDragManager *)self layoutIconListsWithAnimationType:0 forceRelayout:0];
  if ([(SBIconDragManager *)self shouldBeginEditingWhenAddingDragItems]&& (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v13 setEditing:1];
  }

  v22 = v9;
  [(SBIconDragManager *)self addAppLocalContextsFromDragItems:v9 toDragWithIdentifier:v19];
  v23 = objc_opt_class();
  v24 = [v10 items];
  [v23 enumerateMedusaPlatterDragPreviewsInDragItems:v24 usingBlock:&__block_literal_global_323];

  [v15 resetLastUserInteractionDate];
  if (v21 != 4 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v13 iconDragManagerMultiItemIconDraggingDidChange:self];
  }
}

- (void)handleIconView:(id)a3 dragSession:(id)a4 willEndWithOperation:(unint64_t)a5
{
  v13 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = SBLogIconDragging();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = 138412546;
    v10 = v7;
    v11 = 2048;
    v12 = a5;
    _os_log_impl(&dword_1BEB18000, v8, OS_LOG_TYPE_INFO, "icon view drag session will end: %@, operation: %lu", &v9, 0x16u);
  }

  if (![(SBIconDragManager *)self isTrackingUserActiveIconDrags])
  {
    [(SBIconDragManager *)self _invalidateAutoScrollAssistant];
  }
}

- (void)handleIconView:(id)a3 dragSession:(id)a4 didEndWithOperation:(unint64_t)a5
{
  v22 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = SBLogIconDragging();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v19 = v8;
    v20 = 2048;
    v21 = a5;
    _os_log_impl(&dword_1BEB18000, v10, OS_LOG_TYPE_INFO, "icon view drag session did end: %@, operation: %lu", buf, 0x16u);
  }

  v11 = [(SBIconDragManager *)self iconDragContextForDragSession:v9];
  if ([v11 hasMessageExpectationNamed:@"iconViewEndSession"])
  {
    [v8 setHighlighted:0];
    v12 = objc_opt_class();
    v13 = [v9 items];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __68__SBIconDragManager_handleIconView_dragSession_didEndWithOperation___block_invoke;
    v17[3] = &__block_descriptor_40_e33_v24__0___SBIconDragPreview__8_B16l;
    v17[4] = a5;
    [v12 enumerateMedusaPlatterDragPreviewsInDragItems:v13 usingBlock:v17];

    v14 = [(SBIconDragManager *)self uniqueIdentifierForIconDragSession:v9];
    v15 = [(SBIconDragManager *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      v16 = [v9 items];
      [v15 iconDragManager:self didEndIconDragWithUniqueIdentifier:v14 numberOfDraggedItems:{objc_msgSend(v16, "count")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v15 iconDragManager:self iconView:v8 didEndDragSession:v9 withOperation:a5];
    }

    [v11 removeMessageExpectationNamed:@"iconViewEndSession"];
    if (([v11 performedIconDrop] & 1) == 0 && (objc_msgSend(v11, "isCancelled") & 1) == 0)
    {
      [v8 setGrabbed:0];
    }

    [(SBIconDragManager *)self _stopTrackingDragIfPossibleWithIdentifier:v14];
  }

  else
  {
    v14 = SBLogIconDragging();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1BEB18000, v14, OS_LOG_TYPE_INFO, "already received iconView:dragSession:didEndWithOperation: so exiting early", buf, 2u);
    }
  }
}

- (id)iconViewWillCancelDrag:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = SBLogIconDragging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v32 = v4;
    _os_log_impl(&dword_1BEB18000, v5, OS_LOG_TYPE_INFO, "icon view will cancel drag: %@", buf, 0xCu);
  }

  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __44__SBIconDragManager_iconViewWillCancelDrag___block_invoke;
  v29[3] = &unk_1E8089DC8;
  v6 = v4;
  v30 = v6;
  [(SBIconDragManager *)self enumerateIconDragContextsUsingBlock:v29];
  v7 = [(SBIconDragManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v8 = [v7 iconViewQueryableForIconDragManager:self];
  }

  else
  {
    v8 = 0;
  }

  v9 = [v6 icon];
  v10 = [v6 location];
  v11 = [v8 iconViewForIcon:v9 location:v10];
  if (v11)
  {
    v12 = v11;
    goto LABEL_8;
  }

  v13 = objc_opt_class();
  v14 = v9;
  if (v13)
  {
    if (objc_opt_isKindOfClass())
    {
      v15 = v14;
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

  v16 = v15;

  if (v16)
  {
    v9 = [v16 referencedIcon];

    v12 = [v8 iconViewForIcon:v9 location:v10];

    if (v12)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v9 = v14;
  }

  v12 = [(SBIconDragManager *)self iconListViewContainingIcon:v9];
  if (![v12 restoreDraggedIconView:v6])
  {
    goto LABEL_22;
  }

  v17 = v6;

  if (!v17)
  {
LABEL_23:
    v12 = 0;
    goto LABEL_24;
  }

  v12 = v17;
LABEL_8:
  if ((SBIconViewQueryingDisplayingIcon(v8, v9, 17) & 1) == 0)
  {
LABEL_22:

    goto LABEL_23;
  }

LABEL_24:
  if (![(SBIconDragManager *)self isIconDragging])
  {

    v12 = 0;
  }

  v18 = [v12 markAsDropping];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __44__SBIconDragManager_iconViewWillCancelDrag___block_invoke_2;
  v25[3] = &unk_1E8089ED0;
  v26 = v18;
  v27 = v6;
  v19 = v12;
  v28 = v19;
  v20 = v6;
  v21 = v18;
  [(SBIconDragManager *)self enumerateIconDragContextsUsingBlock:v25];
  v22 = v28;
  v23 = v19;

  return v19;
}

void __44__SBIconDragManager_iconViewWillCancelDrag___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 hasSourceIconView:*(a1 + 32)])
  {
    [v3 setCancelled:1];
  }
}

void __44__SBIconDragManager_iconViewWillCancelDrag___block_invoke_2(void *a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (a1[4] && a1[5] && [v6 hasSourceIconView:?])
  {
    [v6 addIconViewDroppingAssertion:a1[4] forIconView:a1[6]];
  }
}

- (void)iconView:(id)a3 willUsePreviewForCancelling:(id)a4 targetIconView:(id)a5
{
  v19 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a5;
  v9 = SBLogIconDragging();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v16 = v7;
    v17 = 2112;
    v18 = v8;
    _os_log_impl(&dword_1BEB18000, v9, OS_LOG_TYPE_INFO, "icon view will cancel drag using target icon view: %@ %@", buf, 0x16u);
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __73__SBIconDragManager_iconView_willUsePreviewForCancelling_targetIconView___block_invoke;
  v12[3] = &unk_1E8089BB0;
  v13 = v7;
  v14 = v8;
  v10 = v8;
  v11 = v7;
  [(SBIconDragManager *)self enumerateIconDragContextsUsingBlock:v12];
}

void __73__SBIconDragManager_iconView_willUsePreviewForCancelling_targetIconView___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 hasSourceIconView:*(a1 + 32)])
  {
    [v3 setTargetIconView:*(a1 + 40) forCancellingIconView:*(a1 + 32)];
  }
}

- (void)iconView:(id)a3 item:(id)a4 willAnimateDragCancelWithAnimator:(id)a5
{
  v41 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = SBLogIconDragging();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v40 = v8;
    _os_log_impl(&dword_1BEB18000, v11, OS_LOG_TYPE_INFO, "icon view will animate drag cancel: %@", buf, 0xCu);
  }

  v12 = [v9 sbh_appDragLocalContext];
  v13 = [v12 portaledPreview];
  if (objc_opt_respondsToSelector())
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;

  if (v15)
  {
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __69__SBIconDragManager_iconView_item_willAnimateDragCancelWithAnimator___block_invoke;
    v35[3] = &unk_1E8088F88;
    v36 = v12;
    v37 = v15;
    v38 = v8;
    [v10 addAnimations:v35];
  }

  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __69__SBIconDragManager_iconView_item_willAnimateDragCancelWithAnimator___block_invoke_2;
  v33[3] = &unk_1E8089000;
  v16 = v15;
  v34 = v16;
  [v10 addCompletion:v33];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __69__SBIconDragManager_iconView_item_willAnimateDragCancelWithAnimator___block_invoke_3;
  v29[3] = &unk_1E8089ED0;
  v17 = v8;
  v30 = v17;
  v18 = v10;
  v31 = v18;
  v32 = self;
  [(SBIconDragManager *)self enumerateIconDragContextsUsingBlock:v29];
  [(SBIconDragManager *)self layoutIconListsWithAnimationType:0 forceRelayout:0];
  v22 = MEMORY[0x1E69E9820];
  v23 = 3221225472;
  v24 = __69__SBIconDragManager_iconView_item_willAnimateDragCancelWithAnimator___block_invoke_6;
  v25 = &unk_1E8089EF8;
  v26 = self;
  v19 = v17;
  v27 = v19;
  v20 = v9;
  v28 = v20;
  [v18 addCompletion:&v22];
  v21 = [(SBIconDragManager *)self delegate:v22];
  if (objc_opt_respondsToSelector())
  {
    [v21 iconDragManager:self iconView:v19 item:v20 willAnimateDragCancelWithAnimator:v18];
  }
}

uint64_t __69__SBIconDragManager_iconView_item_willAnimateDragCancelWithAnimator___block_invoke(id *a1)
{
  if ([a1[4] cancelsViaScaleAndFade])
  {
    v2 = 4;
  }

  else
  {
    v2 = 3;
  }

  v3 = a1[5];
  [a1[6] iconContentScale];
  [v3 setIconContentScale:?];
  [a1[5] setIconAllowsLabelArea:{objc_msgSend(a1[6], "allowsLabelArea")}];
  v4 = a1[5];

  return [v4 setDragState:v2];
}

uint64_t __69__SBIconDragManager_iconView_item_willAnimateDragCancelWithAnimator___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) draggingSourceCancelAnimationCompleted];
  if (objc_opt_respondsToSelector())
  {
    [*(a1 + 32) setIcon:0];
  }

  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 setIconViewCustomIconImageViewController:0];
  }

  return result;
}

void __69__SBIconDragManager_iconView_item_willAnimateDragCancelWithAnimator___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v5 hasSourceIconView:*(a1 + 32)])
  {
    v7 = [v5 targetIconViewForCancellingIconView:*(a1 + 32)];
    v8 = v7;
    if (v7)
    {
      v9 = [v7 markAsDropping];
      v10 = *(a1 + 40);
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __69__SBIconDragManager_iconView_item_willAnimateDragCancelWithAnimator___block_invoke_4;
      v19[3] = &unk_1E8089000;
      v20 = v9;
      v11 = v9;
      [v10 addCompletion:v19];
    }

    [v5 resetDraggedIconsHiddenAssertion];
    [v5 resetDragPlaceholder];
    [v5 resetLastUserInteractionDate];
    [*(a1 + 48) changeStateOfDragWithIdentifier:v6 toState:5];
    v12 = *(a1 + 40);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __69__SBIconDragManager_iconView_item_willAnimateDragCancelWithAnimator___block_invoke_5;
    v15[3] = &unk_1E8089EF8;
    v13 = v5;
    v14 = *(a1 + 48);
    v16 = v13;
    v17 = v14;
    v18 = v6;
    [v12 addCompletion:v15];
  }
}

uint64_t __69__SBIconDragManager_iconView_item_willAnimateDragCancelWithAnimator___block_invoke_5(uint64_t a1)
{
  [*(a1 + 32) invalidateIconViewBorrowAssertions];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);

  return [v2 changeStateOfDragWithIdentifier:v3 toState:6];
}

void __69__SBIconDragManager_iconView_item_willAnimateDragCancelWithAnimator___block_invoke_6(uint64_t a1)
{
  if ([*(a1 + 32) countOfTrackedDragsOriginatingFromOrDroppingIntoIconView:*(a1 + 40)] <= 1)
  {
    [*(a1 + 40) cleanUpAfterDropAnimation];
  }

  v2 = [*(a1 + 32) iconDragContextForDragItem:*(a1 + 48)];
  [v2 clearAllDropAssertions];
}

- (id)iconView:(id)a3 dragPreviewForItem:(id)a4 session:(id)a5 previewParameters:(id)a6
{
  v34 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = SBLogIconDragging();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v31 = v10;
    v32 = 2112;
    v33 = v11;
    _os_log_impl(&dword_1BEB18000, v14, OS_LOG_TYPE_INFO, "icon view '%@' drag preview for item '%@'", buf, 0x16u);
  }

  v15 = [(SBIconDragManager *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) != 0 && ([v15 iconDragManager:self dragPreviewForIconView:v10], (v16 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v17 = MEMORY[0x1E69DD250];
    v22 = MEMORY[0x1E69E9820];
    v23 = 3221225472;
    v24 = __75__SBIconDragManager_iconView_dragPreviewForItem_session_previewParameters___block_invoke;
    v25 = &unk_1E8089E68;
    v18 = v16;
    v26 = v18;
    v27 = v10;
    v28 = self;
    v29 = v12;
    [v17 performWithoutAnimation:&v22];
    v19 = [v11 sbh_appDragLocalContext];
    [v19 setPortaledPreview:v18];
    v20 = [objc_alloc(MEMORY[0x1E69DD068]) initWithView:v18 parameters:v13];
    [v20 set_springboardPlatterStyle:1];

    if (v20)
    {
      goto LABEL_12;
    }
  }

  else if (objc_opt_respondsToSelector())
  {
    v20 = [v15 iconDragManager:self targetedDragPreviewForIconView:v10 item:v11 session:v12 previewParameters:v13];
    v18 = 0;
    if (v20)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v18 = 0;
  }

  v20 = [v10 defaultDragPreviewWithParameters:v13];
LABEL_12:

  return v20;
}

void __75__SBIconDragManager_iconView_dragPreviewForItem_session_previewParameters___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setUserInteractionEnabled:0];
  [*(a1 + 32) setIconAllowsLabelArea:{objc_msgSend(*(a1 + 40), "allowsLabelArea")}];
  v2 = [*(a1 + 48) uniqueIdentifierForIconDragSession:*(a1 + 56)];
  if ([*(a1 + 48) _isTrackingDragWithIdentifier:v2])
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  [*(a1 + 32) setDragState:v3];
  [*(a1 + 40) iconImageCenter];
  v5 = v4;
  v7 = v6;
  v8 = *(a1 + 40);
  v9 = [v8 window];
  [v8 convertPoint:v9 toView:{v5, v7}];
  v11 = v10;
  v13 = v12;

  [*(a1 + 32) setCenter:{v11, v13}];
  v14 = [*(a1 + 40) window];
  v15 = [v14 _windowInterfaceOrientation];
  v16 = *(a1 + 48);
  v17 = *(a1 + 32);
  v18 = [*(a1 + 40) window];
  v19 = [v18 windowScene];
  [v16 addPlatterViewToMedusaDragOffscreenWindow:v17 forWindowScene:v19 interfaceOrientation:v15];

  v20 = *(a1 + 32);
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __75__SBIconDragManager_iconView_dragPreviewForItem_session_previewParameters___block_invoke_2;
  v22[3] = &unk_1E8089F20;
  v22[4] = *(a1 + 48);
  [v20 setCleanUpHandler:v22];
  [*(a1 + 48) _startTrackingDragWithIdentifier:v2 session:*(a1 + 56) primaryIconView:*(a1 + 40)];
  v21 = [*(a1 + 48) iconDragContextForDragWithIdentifier:v2];
  [v21 resetLastUserInteractionDate];
  [v21 setDragPreview:*(a1 + 32) forIconView:*(a1 + 40)];
}

void __75__SBIconDragManager_iconView_dragPreviewForItem_session_previewParameters___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_class();
  v7 = v3;
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v7;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  [*(a1 + 32) removePlatterViewFromMedusaDragOffscreenWindow:v6];
}

- (void)_updateDragPreviewsForEditingState:(BOOL)a3 animated:(BOOL)a4
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __65__SBIconDragManager__updateDragPreviewsForEditingState_animated___block_invoke;
  v4[3] = &__block_descriptor_34_e34_v32__0__SBIconDragContext_8_16_B24l;
  v5 = a3;
  v6 = a4;
  [(SBIconDragManager *)self enumerateIconDragContextsUsingBlock:v4];
}

uint64_t __65__SBIconDragManager__updateDragPreviewsForEditingState_animated___block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __65__SBIconDragManager__updateDragPreviewsForEditingState_animated___block_invoke_2;
  v3[3] = &__block_descriptor_34_e54_v32__0__UIView_SBIconDragPreview__8__SBIconView_16_B24l;
  v4 = *(a1 + 32);
  return [a2 enumerateDragPreviewsUsingBlock:v3];
}

void __65__SBIconDragManager__updateDragPreviewsForEditingState_animated___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 dragState] != 1)
  {
    [v3 setIconIsEditing:*(a1 + 32) animated:*(a1 + 33)];
  }
}

- (BOOL)dragsSupportSystemDragsForIconView:(id)a3
{
  v4 = a3;
  v5 = [(SBIconDragManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 iconDragManager:self dragsSupportSystemDragsForIconView:v4];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (id)launchActionsForIconView:(id)a3
{
  v4 = a3;
  v5 = [(SBIconDragManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 iconDragManager:self launchActionsForIconView:v4];
  }

  else
  {
    [MEMORY[0x1E695DFD8] set];
  }
  v6 = ;

  return v6;
}

- (id)launchURLForIconView:(id)a3
{
  v4 = a3;
  v5 = [(SBIconDragManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 iconDragManager:self launchURLForIconView:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)canHandleIconDropSession:(id)a3 inIconListView:(id)a4
{
  v33[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v7 iconDragTypeIdentifier];
  v9 = v8;
  if (!v8)
  {
    goto LABEL_18;
  }

  v33[0] = v8;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:1];
  if ([v6 hasItemsConformingToTypeIdentifiers:v10])
  {

    v11 = *MEMORY[0x1E699A3D0];
  }

  else
  {
    v11 = *MEMORY[0x1E699A3D0];
    v32 = *MEMORY[0x1E699A3D0];
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v32 count:1];
    v13 = [v6 hasItemsConformingToTypeIdentifiers:v12];

    if (!v13)
    {
      goto LABEL_18;
    }
  }

  v31 = v11;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v31 count:1];
  v15 = [v6 hasItemsConformingToTypeIdentifiers:v14];

  if (!v15)
  {
    goto LABEL_8;
  }

  v16 = [v6 items];
  v17 = [v16 firstObject];

  v18 = [v17 itemProvider];
  v19 = [v18 teamData];
  if (!v19)
  {

    goto LABEL_18;
  }

  v20 = MEMORY[0x1E696ACD0];
  v21 = objc_opt_self();
  v22 = [v20 unarchivedObjectOfClass:v21 fromData:v19 error:0];

  if (!v22)
  {
LABEL_18:
    v29 = 0;
    goto LABEL_19;
  }

LABEL_8:
  if (![(SBIconDragManager *)self isEditingForListView:v7])
  {
    v23 = [v6 localDragSession];
    if (v23 && [(SBIconDragManager *)self _isTrackingDrag:v6])
    {
      v24 = [(SBIconDragManager *)self isIconContentPossiblyVisibleOverApplication];

      if (!v24)
      {
        goto LABEL_18;
      }
    }

    else
    {
    }
  }

  if (([v7 isDragSpringloadingEnabled] & 1) == 0)
  {
    v25 = [(SBIconDragManager *)self iconDragContextForDropSession:v6];
    v26 = [v25 draggedIcons];
    v27 = [v7 model];
    v28 = [v27 isAllowedToContainIcons:v26];

    if (!v28)
    {
      goto LABEL_18;
    }
  }

  v29 = 1;
LABEL_19:

  return v29;
}

- (int64_t)reasonForRejectingDropInSession:(id)a3 inIconListView:(id)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(SBIconDragManager *)self delegate];
  if ([(SBIconDragManager *)self isEditingAllowedForListView:v7])
  {
    if (objc_opt_respondsToSelector() & 1) == 0 || ([v8 iconDragManager:self canAcceptDropInSession:v6 inIconListView:v7])
    {
      v9 = [(SBIconDragManager *)self iconDragContextForDropSession:v6];
      v10 = [v9 draggedIcons];
      v11 = [(SBIconDragManager *)self duplicateIconsIfNecessary:v10 forDropSession:v6];

      v12 = [v9 recipientIconView];
      v23 = [(SBIconDragManager *)self draggedIconIdentifiersForDragDropSession:v6];
      v13 = [v7 model];
      v14 = [v13 folder];
      if (v12)
      {
        v15 = 0;
      }

      else
      {
        v15 = v13;
      }

      v16 = v15;
      v24 = v11;
      v22 = v16;
      if (v14 && ([v14 canAddIcons:v11 startingAtList:v16] & 1) == 0)
      {
        v17 = SBLogIconDragging();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          v20 = v23;
          *buf = 134217984;
          v26 = [v23 count];
          _os_log_impl(&dword_1BEB18000, v17, OS_LOG_TYPE_INFO, "rejecting drop session because folder can't accommodate all items in drag (%lu)", buf, 0xCu);
          v19 = 5;
          goto LABEL_15;
        }

        v19 = 5;
      }

      else
      {
        v17 = [(SBIconDragManager *)self firstHiddenIconIdentifierInDrag:v6];
        if (v17)
        {
          v18 = SBLogIconDragging();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v26 = v17;
            _os_log_impl(&dword_1BEB18000, v18, OS_LOG_TYPE_INFO, "rejecting drop session entirely because it contains an icon which is not visible (%@)", buf, 0xCu);
          }

          v19 = 7;
        }

        else if ([(SBIconDragManager *)self isEditingForListView:v7])
        {
          if (v14 && ([v14 isAllowedToContainIcons:v11] & 1) == 0)
          {
            v18 = SBLogIconDragging();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_1BEB18000, v18, OS_LOG_TYPE_INFO, "rejecting drop session because folder isn't allowed to contain some or all of the items in drag", buf, 2u);
            }

            v19 = 5;
          }

          else if ([v13 isAllowedToContainIcons:v11])
          {
            if (([v14 isRootFolder] & 1) != 0 || !-[NSObject hasFolderDraggedIcons](v9, "hasFolderDraggedIcons") || -[SBIconDragManager allowsNestedFolders](self, "allowsNestedFolders"))
            {
              v19 = 0;
              goto LABEL_14;
            }

            v18 = SBLogIconDragging();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_1BEB18000, v18, OS_LOG_TYPE_INFO, "rejecting drop session because the drag has a folder and we aren't allowed to nest folders", buf, 2u);
            }

            v19 = 8;
          }

          else
          {
            v18 = SBLogIconDragging();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_1BEB18000, v18, OS_LOG_TYPE_INFO, "rejecting drop session because destination list isn't allowed to contain some or all of the items in drag", buf, 2u);
            }

            v19 = 6;
          }
        }

        else
        {
          v18 = SBLogIconDragging();
          v19 = 1;
          if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            v19 = 1;
            _os_log_impl(&dword_1BEB18000, v18, OS_LOG_TYPE_INFO, "rejecting drop session entirely because editing mode is not active", buf, 2u);
          }
        }
      }

LABEL_14:
      v20 = v23;
LABEL_15:

      goto LABEL_22;
    }

    v9 = SBLogIconDragging();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1BEB18000, v9, OS_LOG_TYPE_INFO, "rejecting drop session because icon manager delegate doesn't allow it", buf, 2u);
    }

    v19 = 4;
  }

  else
  {
    v9 = SBLogIconDragging();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v19 = 2;
      _os_log_impl(&dword_1BEB18000, v9, OS_LOG_TYPE_INFO, "rejecting drop session because editing is not allowed", buf, 2u);
    }

    else
    {
      v19 = 2;
    }
  }

LABEL_22:

  return v19;
}

- (void)iconDropSessionDidEnter:(id)a3 inIconListView:(id)a4
{
  v45 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(SBIconDragManager *)self draggedIconIdentifiersForDragDropSession:v6];
  v9 = [(SBIconDragManager *)self uniqueIdentifierForIconDropSession:v6];
  v10 = SBLogIconDragging();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 138543874;
    v40 = v9;
    v41 = 2112;
    v42 = v8;
    v43 = 2048;
    v44 = v7;
    _os_log_impl(&dword_1BEB18000, v10, OS_LOG_TYPE_INFO, "drop session did enter with identifier: %{public}@, dragged identifiers: %@, icon list view: %p", buf, 0x20u);
  }

  v11 = [(SBIconDragManager *)self _isTrackingDrag:v6];
  [(SBIconDragManager *)self _startTrackingDragWithIdentifier:v9 session:v6];
  v12 = [(SBIconDragManager *)self iconDragContextForDragWithIdentifier:v9];
  [v12 setItemIdentifiers:v8];
  [v12 setDragItemWasConsumedExternally:0];
  if (!v11)
  {
    [v12 setExternalDrag:1];
  }

  v13 = [(SBIconDragManager *)self delegate];
  if (![(SBIconDragManager *)self isEditing]&& (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v13 setEditing:1 fromIconListView:v7];
  }

  if (v6)
  {
    [v7 addDragObserver:self forDropSession:v6];
  }

  if (([v12 hasEnteredIconListView:v7] & 1) == 0)
  {
    [v12 addMessageExpectationNamed:@"dropSessionDidEnd"];
    [v12 addEnteredIconListView:v7];
    v14 = [v6 items];
    [(SBIconDragManager *)self addAppLocalContextsFromDragItems:v14 toDragWithIdentifier:v9];

    v15 = [v6 items];
    [(SBIconDragManager *)self createIconsFromDragItemsIfNecessary:v15 withDragIdentifier:v9];

    v16 = [v6 items];
    [(SBIconDragManager *)self addApplicationIconsFromDragItems:v16 session:v6 toDragWithIdentifier:v9];

    v17 = [v6 items];
    if ([v17 count] <= 1)
    {
      v18 = 3;
    }

    else
    {
      v18 = 4;
    }

    [(SBIconDragManager *)self changeStateOfDragWithIdentifier:v9 toState:v18];
  }

  [v12 setCurrentEnteredIconListView:v7];
  [(SBIconDragManager *)self adjustedLocationForDropSession:v6 inView:v7];
  [v12 setCurrentEnteredIconListViewLastLocation:?];
  [v12 setCurrentEnteredIconListViewDragDistance:0.0];
  if (!v11 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v30 = v9;
    v32 = v7;
    v29 = v13;
    v31 = self;
    v19 = [v13 iconViewDelegateForExternalDragForIconDragManager:self];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v33 = v6;
    v20 = [v6 items];
    v21 = [v20 countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v35;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v35 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = [*(*(&v34 + 1) + 8 * i) sbh_appDragLocalContext];
          v26 = [v25 portaledPreview];
          if (objc_opt_respondsToSelector())
          {
            v27 = v26;
          }

          else
          {
            v27 = 0;
          }

          v28 = v27;

          if (objc_opt_respondsToSelector())
          {
            [v28 setIconViewDelegate:v19];
          }
        }

        v22 = [v20 countByEnumeratingWithState:&v34 objects:v38 count:16];
      }

      while (v22);
    }

    v7 = v32;
    v6 = v33;
    self = v31;
    v9 = v30;
    v13 = v29;
  }

  [(SBIconDragManager *)self _updateDragPreviewIconViewForDropSession:v6 inIconListView:v7];
  [(SBIconDragManager *)self _updateAutoScrollAssistantForDropSession:v6];
  [(SBIconDragManager *)self _updateDragVelocityForDropSession:v6];
  if (([v12 notifiedDelegateForDropSession] & 1) == 0)
  {
    if (v6 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [v13 iconDragManager:self iconDropSessionDidEnter:v6];
    }

    [v12 setNotifiedDelegateForDropSession:1];
  }

  if (objc_opt_respondsToSelector())
  {
    [v13 iconDragManager:self iconDropSession:v6 didEnterIconListView:v7];
  }

  [v12 resetLastUserInteractionDate];
}

- (void)informQuickActionPlatterDidFinishPresentation:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = __Block_byref_object_copy__2;
    v17 = __Block_byref_object_dispose__2;
    v18 = 0;
    v7 = MEMORY[0x1E69E9820];
    v8 = 3221225472;
    v9 = __67__SBIconDragManager_informQuickActionPlatterDidFinishPresentation___block_invoke;
    v10 = &unk_1E8089A90;
    v11 = v4;
    v12 = &v13;
    [(SBIconDragManager *)self enumerateIconDragContextsUsingBlock:&v7];
    v6 = v14[5];
    if (v6)
    {
      [(SBIconDragManager *)self changeStateOfDragWithIdentifier:v6 toState:0, v7, v8, v9, v10];
    }

    _Block_object_dispose(&v13, 8);
  }
}

void __67__SBIconDragManager_informQuickActionPlatterDidFinishPresentation___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v10 = a3;
  v8 = [a2 primaryIconView];
  v9 = [v8 isEqual:*(a1 + 32)];

  if (v9)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
    *a4 = 1;
  }
}

- (id)iconDropSessionDidUpdate:(id)a3 inIconListView:(id)a4
{
  v59 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  [(SBIconDragManager *)self adjustedLocationForDropSession:v6 inView:v7];
  v9 = v8;
  v11 = v10;
  v12 = [(SBIconDragManager *)self uniqueIdentifierForIconDropSession:v6];
  v13 = SBLogIconDragging();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 138544130;
    v52 = *&v12;
    v53 = 2048;
    v54 = *&v7;
    v55 = 2048;
    v56 = v9;
    v57 = 2048;
    v58 = v11;
    _os_log_impl(&dword_1BEB18000, v13, OS_LOG_TYPE_INFO, "drop session did update: identifier %{public}@, icon list view: %p, location in list view: (%f,%f)", buf, 0x2Au);
  }

  [(SBIconDragManager *)self _handleScaleAdjustmentForDropSession:v6 currentListView:v7];
  [(SBIconDragManager *)self _updateDragPreviewIconViewForDropSession:v6 inIconListView:v7];
  v14 = [(SBIconDragManager *)self iconDragContextForDropSession:v6];
  [v14 resetLastUserInteractionDate];
  [(SBIconDragManager *)self _updateDragDistanceForDropSession:v6 currentIconListLocation:v9, v11];
  [(SBIconDragManager *)self _updateDragVelocityForDropSession:v6];
  [v7 bounds];
  v61.x = v9;
  v61.y = v11;
  [v14 setWasLastUpdateContainedInDestinationIconListView:{CGRectContainsPoint(v62, v61)}];
  v15 = [v7 iconAtPoint:1 movingInBoundsIfNeeded:{v9, v11}];
  v16 = [v7 dragHitRegionForPoint:v15 icon:{v9, v11}];
  v49 = [v14 recipientIconView];
  v17 = [v49 icon];
  v18 = v17;
  v50 = v12;
  if (v7 && v17)
  {
    v19 = [v15 uniqueIdentifier];
    v20 = [v18 uniqueIdentifier];
    v21 = [v19 isEqual:v20];

    if ((v16 & 1) == 0 && (v21 & 1) == 0)
    {
      v22 = SBLogIconDragging();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v23 = "clearing recipient icon because we got a None drag hit region";
LABEL_23:
        v26 = v22;
        v27 = 2;
        goto LABEL_24;
      }

      goto LABEL_25;
    }

    if ((v21 & 1) == 0)
    {
      v22 = SBLogIconDragging();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v23 = "clearing recipient icon because we the icons don't match";
        goto LABEL_23;
      }

LABEL_25:

      [v14 setRecipientIconView:0];
      v12 = v50;
      goto LABEL_26;
    }

    v12 = v50;
    if ((v16 & 3) == 1)
    {
      if ((v24 = [v14 recipientIconEntryRegion], v25 = v24, (v24 & 0x10) != 0) && (v16 & 0x20) != 0 || (v24 & 0x20) != 0 && (v16 & 0x10) != 0 || (v24 & 4) != 0 && (v16 & 8) != 0 || (v24 & 8) != 0 && (v16 & 4) != 0)
      {
        v22 = SBLogIconDragging();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          *buf = 134218240;
          v52 = *&v16;
          v53 = 2048;
          v54 = *&v25;
          v23 = "clearing recipient icon because the current hit region (%li) is on the opposite side of the entry region (%li)";
          v26 = v22;
          v27 = 22;
LABEL_24:
          _os_log_impl(&dword_1BEB18000, v26, OS_LOG_TYPE_INFO, v23, buf, v27);
          goto LABEL_25;
        }

        goto LABEL_25;
      }
    }
  }

LABEL_26:
  v28 = [v14 recipientIconView];

  if (v15 && !v28)
  {
    [v14 setCandidateRecipientIcon:v15];
    [v14 setRecipientIconEntryRegion:v16];
  }

  if (![(SBIconDragManager *)self isEditing])
  {
    v29 = [(SBIconDragManager *)self draggingEditContext];
    v30 = [v29 draggingUniqueIdentifier];

    if (v30 == v12)
    {
      v31 = [v7 _screen];
      v32 = [v31 coordinateSpace];
      [v7 convertPoint:v32 toCoordinateSpace:{v9, v11}];
      v34 = v33;
      v36 = v35;

      if ([v29 enteredScreenLocationNeedsUpdate])
      {
        v37 = SBLogIconDragging();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
        {
          *buf = 134218240;
          v52 = v34;
          v53 = 2048;
          v54 = v36;
          _os_log_impl(&dword_1BEB18000, v37, OS_LOG_TYPE_INFO, "updating screen location for edit tracking to (%f,%f)", buf, 0x16u);
        }

        [v29 setEnteredScreenLocation:{v34, v36}];
        [v29 setEnteredScreenLocationNeedsUpdate:0];
      }
    }
  }

  v38 = [(SBIconDragManager *)self reasonForRejectingDropInSession:v6 inIconListView:v7];
  [v14 setDragRejectionReason:v38];
  if (v15)
  {
    [(SBIconDragManager *)self updatePlaceholderPositionIfNecessaryForDragWithIdentifier:v12];
  }

  else
  {
    [(SBIconDragManager *)self updatePlaceholderPositionForDragWithIdentifier:v12];
  }

  v39 = 2 * (v38 == 0);
  if (v38)
  {
    v40 = 0;
  }

  else if ([v14 duplicatesSourceIcons])
  {
    v41 = [v14 removedMatchingLeafIcons];

    if (v41)
    {
      v40 = 2;
    }

    else
    {
      v40 = 3;
    }
  }

  else
  {
    v40 = 2;
  }

  v42 = [objc_alloc(MEMORY[0x1E69DC9C0]) initWithDropOperation:v39];
  [v42 setPrefersFullSizePreview:1];
  [v42 _setPreferredBadgeStyle:v40];
  v43 = [(SBIconDragManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v44 = [v14 draggedIcons];
    v45 = [MEMORY[0x1E695DFD8] setWithArray:v44];
    v46 = [v43 iconDragManager:self iconDropSessionDidUpdate:v6 inIconListView:v7 draggedIcons:v45 proposedDropProposal:v42];

    if (v46 != v42)
    {
      v47 = SBLogIconDragging();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v52 = *&v42;
        v53 = 2112;
        v54 = *&v46;
        _os_log_impl(&dword_1BEB18000, v47, OS_LOG_TYPE_INFO, "the delegate told us to adjust the drop proposal from %@ to %@", buf, 0x16u);
      }
    }
  }

  else
  {
    v46 = v42;
  }

  return v46;
}

- (void)updatePlaceholderPositionIfNecessaryForDragWithIdentifier:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(SBIconDragManager *)self placeholderRepositioningDelay];
  if (v5 <= 0.0)
  {
LABEL_10:
    [(SBIconDragManager *)self updatePlaceholderPositionForDragWithIdentifier:v4];
    goto LABEL_11;
  }

  v6 = [(SBIconDragManager *)self iconDragContextForDragWithIdentifier:v4];
  [v6 dragVelocity];
  v8 = v7;
  v10 = v9;
  v11 = fabs(v9);
  if (fabs(v7) < 30.0 && v11 < 30.0)
  {
    v13 = SBLogIconDragging();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = 134218496;
      v15 = v8;
      v16 = 2048;
      v17 = v10;
      v18 = 2048;
      v19 = 0x403E000000000000;
      _os_log_impl(&dword_1BEB18000, v13, OS_LOG_TYPE_INFO, "moving placeholder immediately because drag velocity (%f,%f) has fallen below threshold %f", &v14, 0x20u);
    }

    goto LABEL_10;
  }

  [(SBIconDragManager *)self updateDragPauseForDragWithIdentifier:v4];
LABEL_11:
}

- (void)updateDragPauseForDragWithIdentifier:(id)a3
{
  v12 = a3;
  [(SBIconDragManager *)self placeholderRepositioningDelay];
  if (v4 <= 0.0)
  {
    [(SBIconDragManager *)self updatePlaceholderPositionForDragWithIdentifier:v12];
  }

  else
  {
    v5 = [(SBIconDragManager *)self iconDragContextForDragWithIdentifier:v12];
    [v5 currentEnteredIconListViewLastLocation];
    v7 = v6;
    v9 = v8;
    v10 = [v5 pauseTimer];
    if (!v10 || ([v5 pauseLocation], UIDistanceBetweenPoints(), v11 > 20.0))
    {
      [(SBIconDragManager *)self startPlaceholderPauseTimerWithDragLocation:v12 withDragIdentifier:v7, v9];
    }
  }
}

- (void)_updateDragVelocityForDropSession:(id)a3
{
  v9 = a3;
  v4 = [(SBIconDragManager *)self iconDragContextForDropSession:?];
  v5 = [(SBIconDragManager *)self rootView];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 _screen];
    v8 = [v7 coordinateSpace];
    [v9 locationInView:v6];
    [v6 convertPoint:v8 toCoordinateSpace:?];
    [v4 addDragScreenLocation:?];
  }
}

- (void)updatePlaceholderPositionForDragWithIdentifier:(id)a3
{
  v69 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(SBIconDragManager *)self iconDragContextForDragWithIdentifier:v4];
  if ([v5 dragRejectionReason])
  {
    v6 = SBLogIconDragging();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v64 = v4;
      _os_log_impl(&dword_1BEB18000, v6, OS_LOG_TYPE_INFO, "ignoring pause of drag session '%@' because we cannot accept the drop", buf, 0xCu);
    }

    goto LABEL_67;
  }

  if ([(SBIconDragManager *)self isIconDragging])
  {
    [(SBIconDragManager *)self stopPlaceholderPauseTimerWithDragLocationWithDragIdentifier:v4];
    [v5 currentEnteredIconListViewLastLocation];
    v8 = v7;
    v10 = v9;
    v11 = SBLogIconDragging();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      v64 = v4;
      v65 = 2048;
      v66 = v8;
      v67 = 2048;
      v68 = v10;
      _os_log_impl(&dword_1BEB18000, v11, OS_LOG_TYPE_INFO, "drag session '%@' did pause at location (%f,%f)", buf, 0x20u);
    }

    v6 = [(SBIconDragManager *)self delegate];
    if ((objc_opt_respondsToSelector() & 1) != 0 && [v6 isTrackingScroll])
    {
      v12 = SBLogIconDragging();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v64 = v4;
        v13 = "ignoring pause of drag session '%@' because scroll view is tracking";
LABEL_17:
        _os_log_impl(&dword_1BEB18000, v12, OS_LOG_TYPE_INFO, v13, buf, 0xCu);
        goto LABEL_66;
      }

      goto LABEL_66;
    }

    if ((objc_opt_respondsToSelector() & 1) != 0 && [v6 isAnimatingFolderIconTransitionForIconDragManager:self])
    {
      v12 = SBLogIconDragging();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v64 = v4;
        v13 = "ignoring pause of drag session '%@' because there is an animated transition inflight";
        goto LABEL_17;
      }

LABEL_66:

      goto LABEL_67;
    }

    v12 = [v5 currentEnteredIconListView];
    v14 = [v12 gridCellInfo];
    v15 = [v5 dragPlaceholderGridSizeClass];
    v16 = [v12 displayedModel];
    v61 = v15;
    v59 = v16;
    if ([(SBIconDragManager *)self prioritizesDirectIconPlacement])
    {
      if (v15)
      {
        v17 = [v16 gridSizeForGridSizeClass:v15];
      }

      else
      {
        v17 = 65537;
      }

      v18 = SBIconCoordinateMakeWithGridCellIndex(-[NSObject closestGridRangeForIconOfSize:centeredAtPoint:](v12, "closestGridRangeForIconOfSize:centeredAtPoint:", v17, v8, v10), [v14 gridSize]);
    }

    else
    {
      v18 = [v12 coordinateAtPoint:v8, v10];
    }

    v20 = v18;
    v21 = v19;
    v60 = v14;
    v57 = [v14 gridCellIndexForCoordinate:{v18, v19}];
    v62 = [v5 draggedIcons];
    v22 = [v5 draggedIconsHiddenAssertion];

    v55 = v22;
    if (!v22)
    {
      v23 = [v62 firstObject];
      v24 = [(SBIconDragManager *)self startingIconLocationForIcon:v23 dragIdentifier:v4];
      [(SBIconDragManager *)self _removeDraggedIconsFromLayout:v62 iconLocation:v24 dragIdentifier:v4];
    }

    v25 = [v12 iconAtPoint:1 movingInBoundsIfNeeded:v8, v10];
    v26 = SBLogIconDragging();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v27 = SBHStringForIconCoordinate(v20, v21);
      *buf = 138412546;
      v64 = v25;
      v65 = 2112;
      v66 = *&v27;
      _os_log_impl(&dword_1BEB18000, v26, OS_LOG_TYPE_INFO, "paused over icon = %@, coordinate = %@", buf, 0x16u);
    }

    v28 = [v12 iconViewForIcon:v25];
    if ([v28 isGrabbed])
    {
      v29 = SBLogIconDragging();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1BEB18000, v29, OS_LOG_TYPE_INFO, "icon under paused drag is already grabbed -- bailing", buf, 2u);
      }

      goto LABEL_65;
    }

    v56 = v25;
    v30 = [v12 dragHitRegionForPoint:v25 icon:v8, v10];
    v31 = SBLogIconDragging();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      v32 = SBStringForIconListDragHitRegion(v30);
      *buf = 138412546;
      v64 = v32;
      v65 = 2048;
      v66 = *&v30;
      _os_log_impl(&dword_1BEB18000, v31, OS_LOG_TYPE_INFO, "drag hit region: %@ (%lx)", buf, 0x16u);
    }

    v33 = v30;
    v34 = [(SBIconDragManager *)self placeholderMovementForDragHitRegion:v30 onGridCellIndex:v57 inListView:v12 forDragWithIdentifier:v4];
    v35 = [v5 recipientIconView];
    v36 = [v35 icon];

    if (v56)
    {
      v37 = [v36 isEqual:?];
    }

    else
    {
      v37 = 0;
    }

    v29 = v36;
    v38 = v33;
    v54 = v29;
    if (v34 == 2 || (v37 & 1) != 0)
    {
      v25 = v56;
      if (v34 == 2)
      {
        v58 = v56;
        v52 = v28;
        v51 = [v5 recipientIconView];
        v43 = SBLogIconDragging();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v64 = v58;
          _os_log_impl(&dword_1BEB18000, v43, OS_LOG_TYPE_INFO, "Updating recipient icon to %@", buf, 0xCu);
        }

        [v5 setRecipientIconView:v52];
        if (v52 != v51)
        {
          v44 = [v5 candidateRecipientIcon];
          if (v44 != v58 || ![v5 recipientIconEntryRegion])
          {
            [v5 setRecipientIconEntryRegion:v38];
          }
        }

        [v5 setCandidateRecipientIcon:0];
      }

      if (v55)
      {
        goto LABEL_64;
      }
    }

    else
    {
      v39 = v28;
      v25 = v56;
      v40 = [(SBIconDragManager *)self placeholderGridCellIndexForDragPlacement:v34 onGridCellIndex:v57 icon:v56 inListView:v12 forDragWithIdentifier:v4];
      if (objc_opt_respondsToSelector())
      {
        v41 = [v6 iconDragManager:self willMoveDragPlaceholderToGridCellIndex:v40 inIconListView:v12 draggedIcons:v62];
        if (v41 != v40)
        {
          v42 = SBLogIconDragging();
          if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
          {
            *buf = 134218240;
            v64 = v40;
            v65 = 2048;
            v66 = *&v41;
            _os_log_impl(&dword_1BEB18000, v42, OS_LOG_TYPE_INFO, "the delegate told us to adjust the spot of the placeholder from %lu to %lu", buf, 0x16u);
          }
        }

        if (v41 == 0x7FFFFFFFFFFFFFFFLL)
        {
          [v5 resetDragPlaceholder];
          v41 = 0x7FFFFFFFFFFFFFFFLL;
        }
      }

      else
      {
        v41 = v40;
      }

      v45 = [(SBIconDragManager *)self movePlaceholderForDraggedIcons:v62 toGridCellIndex:v41 inListView:v12 forDragWithIdentifier:v4];
      v28 = v39;
      v29 = v54;
      if (!v45)
      {
        goto LABEL_64;
      }
    }

    v53 = v28;
    v46 = SBLogIconDragging();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1BEB18000, v46, OS_LOG_TYPE_INFO, "Laying out list view after moving placeholders", buf, 2u);
    }

    v47 = [(SBIconDragManager *)self _animationTypeForGridSizeClass:v61];
    v48 = [v12 iconLocation];
    if (SBIconLocationGroupContainsLocation(@"SBIconLocationGroupTodayView", v48))
    {
      v49 = 1;
    }

    else
    {
      v50 = [v12 iconLocation];
      v49 = [v50 isEqualToString:@"SBIconLocationStackConfiguration"];
    }

    v29 = v54;

    [v12 layoutIconsIfNeededWithAnimationType:v47 options:v49];
    v28 = v53;
LABEL_64:
    [(SBIconDragManager *)self resetWatchdogTimerForDragWithIdentifier:v4 timeout:60.0];
LABEL_65:

    goto LABEL_66;
  }

  v6 = SBLogIconDragging();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [(SBIconDragManager *)self updatePlaceholderPositionForDragWithIdentifier:v4, v6];
  }

LABEL_67:
}

- (int64_t)placeholderMovementForDragHitRegion:(unint64_t)a3 onGridCellIndex:(unint64_t)a4 inListView:(id)a5 forDragWithIdentifier:(id)a6
{
  v90 = *MEMORY[0x1E69E9840];
  v10 = a5;
  v11 = a6;
  v69 = self;
  v12 = [(SBIconDragManager *)self iconDragContextForDragWithIdentifier:v11];
  v13 = [v10 gridCellInfo];
  v14 = [v10 displayedModel];
  v15 = [v13 gridSize];
  v80 = [v10 userInterfaceLayoutDirection];
  v81 = v10;
  v77 = a4;
  v76 = v15;
  if (a4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v78 = 0;
    v16 = 0;
  }

  else
  {
    v17 = SBIconCoordinateMakeWithGridCellIndex(a4, v15);
    v16 = [v10 iconAtCoordinate:{v17, v18}];
    if (v16)
    {
      v78 = [v10 displayedIconViewForIcon:v16];
      v79 = 1;
      goto LABEL_7;
    }

    v78 = 0;
  }

  v79 = 0;
LABEL_7:
  v19 = objc_opt_self();
  v20 = v16;
  isKindOfClass = objc_opt_isKindOfClass();

  v22 = [v12 dragPlaceholder];
  v23 = [v22 effectiveGridCellIndex];
  v24 = [v12 dragPlaceholderGridSizeClass];
  v71 = v24;
  if (v24)
  {
    v25 = [v14 gridSizeForGridSizeClass:v24];
  }

  else
  {
    v25 = 65537;
  }

  v72 = v22;
  v83 = v12;
  v82 = [v12 dragPlaceholderListView];

  v26 = 0x7FFFFFFFFFFFFFFFLL;
  v74 = v13;
  v75 = v11;
  v73 = v14;
  if (v77 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v27 = 0;
    v28 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v28 = [v13 gridRangeForGridCellIndex:?];
    v27 = v29;
    SBHIconGridRangeAnchoredEdges(v28, v29, 0, v76, v76);
  }

  v30 = v82 != v81 || v23 == 0x7FFFFFFFFFFFFFFFLL;
  v31 = v79;
  if (v30)
  {
    v31 = 0;
  }

  v32 = 0x7FFFFFFFFFFFFFFFLL;
  if (v31 == 1)
  {
    v26 = SBHIconGridDistanceBetweenGridRanges(v28, v27, v23, v25, v76);
    v32 = v33;
  }

  if ((a3 >> 1) & 1 | isKindOfClass & 1)
  {
    v34 = a3 & 2;
    v35 = v20;
  }

  else
  {
    v35 = v20;
    if ((a3 & 4) == 0)
    {
      if ((a3 & 8) != 0)
      {
        v34 = 6;
        goto LABEL_28;
      }

      if ((a3 & 0x30) == 0)
      {
        v34 = ((a3 << 63) >> 63) & 7;
        goto LABEL_28;
      }
    }

    v34 = 7;
  }

LABEL_28:
  v36 = a3 & 0x3C;
  v37 = v80 == 1;
  v38 = v36 != 16 || v80 == 1;
  if (!v38 && !v32 && v26 == -1)
  {
    goto LABEL_53;
  }

  if (v36 != 32)
  {
    v37 = 1;
  }

  if (!v37 && !v32 && v26 == 1 || v36 == 16 && v80 == 1 && !v32 && v26 == 1 || v36 == 32 && v80 == 1 && !v32 && v26 == -1 || v36 == 4 && v32 == -1 && !v26 || v36 == 8 && v32 == 1 && !v26)
  {
LABEL_53:
    v39 = SBLogIconDragging();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1BEB18000, v39, OS_LOG_TYPE_INFO, "moving drag placeholder movement to 'overlapping' due to proximity to placeholder", buf, 2u);
    }

    v34 = 2;
  }

  v40 = [v83 recipientIconView];
  v41 = v40;
  v70 = v35;
  if (v34 == 2)
  {
    v42 = [v40 icon];
    v43 = [v42 uniqueIdentifier];
    v44 = [v35 uniqueIdentifier];
    v45 = [v43 isEqual:v44];

    if (v45)
    {
      v34 = 2;
    }

    else
    {
      v52 = v79 ^ 1;
      if (!v78)
      {
        v52 = 1;
      }

      if (v52)
      {
        v34 = 7;
        v47 = v74;
        v46 = v75;
        v48 = v73;
        v49 = v78;
        goto LABEL_89;
      }

      if ([(SBIconDragManager *)v69 canMakeIconViewRecipient:?])
      {
        [v83 draggedIcons];
        v84 = 0u;
        v85 = 0u;
        v86 = 0u;
        v53 = v87 = 0u;
        v54 = [v53 countByEnumeratingWithState:&v84 objects:v89 count:16];
        v49 = v78;
        if (v54)
        {
          v55 = v54;
          v56 = *v85;
          while (2)
          {
            for (i = 0; i != v55; ++i)
            {
              if (*v85 != v56)
              {
                objc_enumerationMutation(v53);
              }

              if (*(*(&v84 + 1) + 8 * i) && ![v78 canReceiveGrabbedIcon:?])
              {

                v47 = v74;
                if (isKindOfClass & 1 | (v32 == 0) || (v58 = [v74 gridRangeForGridCellIndex:v77], v60 = v59, v61 = SBHIconGridRangeRelativeCellIndexForCellIndex(v58, v59, v77, v76), !SBHIconGridRangeRelativeColumnForRelativeCellIndex(v58, v60, v61)))
                {
                  if (isKindOfClass)
                  {
                    v34 = 0;
                  }

                  else
                  {
                    v34 = 7;
                  }
                }

                else
                {
                  v34 = 7;
                }

                v46 = v75;
                goto LABEL_88;
              }
            }

            v55 = [v53 countByEnumeratingWithState:&v84 objects:v89 count:16];
            if (v55)
            {
              continue;
            }

            break;
          }
        }

        v34 = 2;
        v47 = v74;
        v46 = v75;
LABEL_88:
        v48 = v73;
        goto LABEL_89;
      }

      v34 = 7;
    }

    v47 = v74;
    v46 = v75;
    v48 = v73;
    v49 = v78;
LABEL_89:

    goto LABEL_90;
  }

  if (!v40)
  {
    v47 = v74;
    v46 = v75;
    v48 = v73;
    v49 = v78;
LABEL_90:
    v51 = v81;
    goto LABEL_91;
  }

  v50 = SBLogIconDragging();
  v47 = v74;
  v46 = v75;
  v48 = v73;
  v49 = v78;
  v51 = v81;
  if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1BEB18000, v50, OS_LOG_TYPE_INFO, "Clearing recipient icon", buf, 2u);
  }

  [v83 setRecipientIconView:0];
LABEL_91:
  if (v34)
  {
    v62 = 1;
  }

  else
  {
    v62 = v82 == v51;
  }

  if (v62)
  {
    v63 = v34;
  }

  else
  {
    v63 = 7;
  }

  if (v63 == 2)
  {
    v65 = v71;
    v64 = v72;
  }

  else
  {
    v66 = [v51 iconLocation];
    v67 = [v51 model];
    v65 = v71;
    if ([(SBIconDragManager *)v69 isSnapToGridEnabledForDragWithIdentifier:v46 iconLocation:v66 listModel:v67 placeholderGridSizeClass:v71])
    {
      v63 = 7;
    }

    v64 = v72;
  }

  return v63;
}

- (unint64_t)placeholderGridCellIndexForDragPlacement:(int64_t)a3 onGridCellIndex:(unint64_t)a4 icon:(id)a5 inListView:(id)a6 forDragWithIdentifier:(id)a7
{
  v41 = *MEMORY[0x1E69E9840];
  v12 = a5;
  v13 = a6;
  v14 = [(SBIconDragManager *)self iconDragContextForDragWithIdentifier:a7];
  v15 = [v14 dragPlaceholder];
  v16 = [v15 effectiveGridCellIndex];
  v17 = v16;
  v18 = [v14 dragPlaceholderGridSizeClass];
  if (a3)
  {
    v37 = v12;
    v19 = [v13 model];
    v39 = [v13 gridCellInfo];
    v36 = [v13 gridSizeForCurrentOrientation];
    v38 = [v13 gridCellInfoOptions];
    if (v18)
    {
      v20 = objc_alloc_init(SBIcon);
    }

    else
    {
      v35 = v15;
      v21 = [v14 draggedIcons];
      v22 = [v21 firstObject];
      v18 = [v22 gridSizeClass];

      v20 = objc_alloc_init(SBIcon);
      if (!v18)
      {
        v15 = v35;
LABEL_9:
        if ([v19 isValidGridCellIndex:a4 options:v38])
        {
          v17 = [v19 bestGridCellIndexForInsertingIcon:v20 atGridCellIndex:a4 gridCellInfo:v39];
        }

        if (v17 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v23 = v16;
        }

        else
        {
          v23 = v17;
        }

        if (a3 == 6)
        {
          v27 = SBLogIconDragging();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            *&buf[4] = v37;
            _os_log_impl(&dword_1BEB18000, v27, OS_LOG_TYPE_INFO, "moving placeholder below %@", buf, 0xCu);
          }

          *buf = v23;
          *&buf[8] = 65537;
          v25 = v36;
          v26 = 0;
        }

        else
        {
          if (a3 != 3)
          {
LABEL_23:
            v17 = 0x7FFFFFFFFFFFFFFFLL;
            if (v23 != 0x7FFFFFFFFFFFFFFFLL)
            {
              v28 = [v13 iconGridSizeForClass:v18];
              if (([v19 isValidGridRange:v23 options:v28, v38]& 1) != 0)
              {
                v17 = v23;
              }

              else
              {
                v29 = SBHIconGridRangeFitInsideIconGridRange(0, v36, v23, v28, v36);
                if (v29 == 0x7FFFFFFFFFFFFFFFLL)
                {
                  v30 = SBLogIconDragging();
                  if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
                  {
                    v31 = SBHStringForIconGridRange(v23, v28);
                    SBHStringForIconGridSize([v19 gridSize]);
                    v33 = v32 = v15;
                    *buf = 138543618;
                    *&buf[4] = v31;
                    *&buf[12] = 2114;
                    *&buf[14] = v33;
                    _os_log_impl(&dword_1BEB18000, v30, OS_LOG_TYPE_INFO, "not moving placeholder to grid range %{public}@ because it doesn't fit in %{public}@", buf, 0x16u);

                    v15 = v32;
                  }

                  v17 = 0x7FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v17 = [v19 bestGridCellIndexForInsertingIcon:v20 atGridCellIndex:v29 gridCellInfo:v39];
                }
              }
            }

            v12 = v37;
            goto LABEL_33;
          }

          v24 = SBLogIconDragging();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            *&buf[4] = v37;
            _os_log_impl(&dword_1BEB18000, v24, OS_LOG_TYPE_INFO, "moving placeholder after %@", buf, 0xCu);
          }

          *buf = v23;
          *&buf[8] = 65537;
          v25 = v36;
          v26 = 3;
        }

        SBHIconGridRangeOffset(buf, v26, 1, v25);
        v23 = *buf;
        goto LABEL_23;
      }

      v15 = v35;
    }

    [(SBIcon *)v20 setGridSizeClass:v18];
    goto LABEL_9;
  }

  v19 = SBLogIconDragging();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1BEB18000, v19, OS_LOG_TYPE_INFO, "not moving placeholder because placeholder movement is unchanged", buf, 2u);
  }

LABEL_33:

  return v17;
}

- (unint64_t)placeholderOptionsForListView:(id)a3 forDragWithIdentifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 iconLocation];
  v9 = [(SBIconDragManager *)self shouldMinimizeLayoutDisruptionForIconLocation:v8];
  if ([(SBIconDragManager *)self shouldDisallowBumpingIconsFromCurrentList])
  {
    v10 = v9 | 8;
  }

  else
  {
    v10 = v9;
  }

  v11 = [(SBIconDragManager *)self iconDragContextForDragWithIdentifier:v6];
  v12 = [v7 model];

  v13 = [v11 dragPlaceholderGridSizeClass];
  v14 = [(SBIconDragManager *)self isSnapToGridEnabledForDragWithIdentifier:v6 iconLocation:v8 listModel:v12 placeholderGridSizeClass:v13];

  if (v14)
  {
    v15 = v10 | 0x14;
  }

  else
  {
    v15 = v10;
  }

  return v15;
}

- (BOOL)movePlaceholderForDraggedIcons:(id)a3 toGridCellIndex:(unint64_t)a4 inListView:(id)a5 forDragWithIdentifier:(id)a6
{
  v44 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = [(SBIconDragManager *)self iconDragContextForDragWithIdentifier:v12];
  v14 = [v13 dragPlaceholder];
  v39 = [v13 dragPlaceholderGridSizeClass];
  v15 = [v13 dragPlaceholderListView];
  v16 = [v11 model];
  v17 = [(SBIconDragManager *)self placeholderOptionsForListView:v11 forDragWithIdentifier:v12];
  if (a4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v18 = v15;
    v19 = SBLogIconDragging();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1BEB18000, v19, OS_LOG_TYPE_INFO, "not moving placeholder because no new grid cell index could be found", buf, 2u);
    }

    v20 = 0;
    v21 = v39;
    goto LABEL_30;
  }

  v37 = v15;
  v38 = v16;
  v22 = v10;
  if (v15 == v11)
  {
    v28 = [v13 dragPlaceholder];

    if (v28)
    {
      [v14 setGridCellIndex:a4];
      v20 = 1;
      v10 = v22;
LABEL_21:
      v16 = v38;
      v21 = v39;
      v18 = v37;
      goto LABEL_30;
    }
  }

  [v13 resetDragPlaceholder];

  if (![v11 allowsAddingIconCount:1])
  {
    v27 = SBLogIconDragging();
    v10 = v22;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1BEB18000, v27, OS_LOG_TYPE_INFO, "not creating placeholder because list view cannot add another icon", buf, 2u);
    }

    v20 = 0;
    v14 = 0;
    goto LABEL_21;
  }

  v10 = v22;
  v35 = [v22 bs_compactMap:&__block_literal_global_375];
  v23 = [v35 componentsJoinedByString:{@", "}];
  v24 = @"drag";
  if (v23)
  {
    v24 = v23;
  }

  v36 = v24;
  if ([v22 count] != 1)
  {
    goto LABEL_23;
  }

  v25 = [v22 firstObject];
  if (!v25)
  {
LABEL_24:
    v34 = v25;
    v29 = SBLogIconDragging();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      v30 = [(SBIconDragManager *)self gridSizeClassDomain];
      v31 = [v30 descriptionForGridSizeClass:v39];
      *buf = 134218242;
      v41 = a4;
      v42 = 2114;
      v43 = v31;
      _os_log_impl(&dword_1BEB18000, v29, OS_LOG_TYPE_INFO, "creating new drag placeholder at grid cell index %lu size class '%{public}@'", buf, 0x16u);

      v10 = v22;
    }

    v21 = v39;
    v14 = [v11 addPlaceholderAtGridCellIndex:a4 gridSizeClass:v39 reason:v36 options:v17];
    v16 = v38;
    goto LABEL_27;
  }

  if (![(SBIconDragManager *)self doesIconRepresentRealIconPosition:v25 dragIdentifier:v12])
  {

LABEL_23:
    v25 = 0;
    goto LABEL_24;
  }

  if (![v38 directlyContainsIcon:v25])
  {
    goto LABEL_24;
  }

  v26 = SBLogIconDragging();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v41 = v25;
    _os_log_impl(&dword_1BEB18000, v26, OS_LOG_TYPE_INFO, "creating new drag placeholder representing icon %@", buf, 0xCu);
  }

  v34 = v25;
  v14 = [v11 addPlaceholderAtGridCellIndex:a4 representingIcon:v25 reason:v36 options:v17];
  v16 = v38;
  v21 = v39;
LABEL_27:
  v32 = SBLogIconDragging();
  v18 = v37;
  if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v41 = v14;
    _os_log_impl(&dword_1BEB18000, v32, OS_LOG_TYPE_INFO, "created new drag placeholder %@", buf, 0xCu);
  }

  [v13 setDragPlaceholder:v14];
  [v13 setDragPlaceholderListView:v11];
  [v13 setDragPlaceholderGridSizeClass:v21];

  v20 = 1;
LABEL_30:
  [v14 setOptions:{v17, v34}];

  return v20;
}

- (void)startPlaceholderPauseTimerWithDragLocation:(CGPoint)a3 withDragIdentifier:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v11 = [(SBIconDragManager *)self iconDragContextForDragWithIdentifier:v7];
  [(SBIconDragManager *)self placeholderRepositioningDelay];
  v9 = v8;
  [(SBIconDragManager *)self stopPlaceholderPauseTimerWithDragLocationWithDragIdentifier:v7];
  v10 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:self target:sel_pauseTimerDidFire_ selector:v7 userInfo:0 repeats:v9];

  [v11 setPauseTimer:v10];
  [v11 setPauseLocation:{x, y}];
}

- (void)pauseTimerDidFire:(id)a3
{
  v4 = a3;
  v7 = [v4 userInfo];
  v5 = [(SBIconDragManager *)self iconDragContextForDragWithIdentifier:?];
  v6 = [v5 pauseTimer];

  if (v6 == v4)
  {
    [v5 setPauseTimer:0];
  }

  [(SBIconDragManager *)self updatePlaceholderPositionForDragWithIdentifier:v7];
}

- (void)stopPlaceholderPauseTimerWithDragLocationWithDragIdentifier:(id)a3
{
  v4 = [(SBIconDragManager *)self iconDragContextForDragWithIdentifier:a3];
  v3 = [v4 pauseTimer];
  [v3 invalidate];
  [v4 setPauseTimer:0];
}

- (void)iconDropSessionDidExit:(id)a3 fromIconListView:(id)a4
{
  v32 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(SBIconDragManager *)self uniqueIdentifierForIconDropSession:v6];
  v9 = SBLogIconDragging();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 138543618;
    v29 = v8;
    v30 = 2048;
    v31 = v7;
    _os_log_impl(&dword_1BEB18000, v9, OS_LOG_TYPE_INFO, "drop session did exit: %{public}@, icon list view: %p", buf, 0x16u);
  }

  [(SBIconDragManager *)self stopTrackingDragLocationForEditingForDragWithIdentifier:v8];
  v10 = [(SBIconDragManager *)self iconDragContextForDragWithIdentifier:v8];
  v11 = [v10 dragPlaceholderGridSizeClass];
  v12 = [(SBIconDragManager *)self _animationTypeForGridSizeClass:v11];
  v13 = [v10 currentEnteredIconListView];

  if (v13 == v7)
  {
    [(SBIconDragManager *)self _updateDragPreviewIconViewForDropSession:v6 inIconListView:v7];
    [v10 setCurrentEnteredIconListView:0];
    [v10 setCurrentEnteredIconListViewLastLocation:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
    [v10 setCurrentEnteredIconListViewDragDistance:0.0];
    v14 = [v10 pauseTimer];
    [v14 invalidate];

    [v10 setPauseTimer:0];
  }

  v15 = [v10 dragPlaceholderListView];

  if (v15 == v7)
  {
    [v10 resetDragPlaceholder];
  }

  if (![(SBIconDragManager *)self isEditing])
  {
    [v10 resetDraggedIconsHiddenAssertion];
  }

  [v10 resetLastUserInteractionDate];
  [v10 setRecipientIconView:0];
  v16 = [v10 grabbedIconViews];
  v17 = [v16 count];

  if (v17)
  {
    v18 = MEMORY[0x1E69DD250];
    [(SBIconDragManager *)self defaultIconLayoutAnimationDuration];
    v20 = v19;
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __61__SBIconDragManager_iconDropSessionDidExit_fromIconListView___block_invoke;
    v26[3] = &unk_1E8088C90;
    v27 = v7;
    [v18 animateWithDuration:v26 animations:v20];
  }

  v21 = [v10 primaryIconView];
  v22 = [v21 draggingStartLocation];

  if (v22 == 10)
  {
    [(SBIconDragManager *)self _invalidateAutoScrollAssistant];
  }

  v23 = [(SBIconDragManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v23 iconDragManager:self iconDropSession:v6 didExitIconListView:v7];
  }

  v24 = [v7 iconLocation];
  v25 = SBIconLocationGroupContainsLocation(@"SBIconLocationGroupTodayView", v24);

  [v7 layoutIconsIfNeededWithAnimationType:v12 options:v25];
}

- (void)performIconDrop:(id)a3 inIconListView:(id)a4
{
  v52 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(SBIconDragManager *)self uniqueIdentifierForIconDropSession:v6];
  v9 = SBLogIconDragging();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 138543618;
    v49 = v8;
    v50 = 2048;
    v51 = v7;
    _os_log_impl(&dword_1BEB18000, v9, OS_LOG_TYPE_INFO, "perform icon drop with identifier: %{public}@, icon list view: %p", buf, 0x16u);
  }

  v10 = [(SBIconDragManager *)self iconDragContextForDragWithIdentifier:v8];
  v11 = [(SBIconDragManager *)self reasonForRejectingDropInSession:v6 inIconListView:v7];
  [v10 setDragRejectionReason:v11];
  if (v11)
  {
    v12 = SBHStringForDragRejectionReason(v11);
    v13 = SBLogIconDragging();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v49 = v12;
      _os_log_impl(&dword_1BEB18000, v13, OS_LOG_TYPE_INFO, "bailing on icon drop for reason: %{public}@", buf, 0xCu);
    }
  }

  else
  {
    v12 = [(SBIconDragManager *)self draggedIconsForDragDropSession:v6];
    v13 = [(SBIconDragManager *)self rootFolder];
    v14 = [(SBIconDragManager *)self rootListModel];
    v15 = v14;
    if (v13 | v14)
    {
      v35 = v14;
      v17 = [(SBIconDragManager *)self delegate];
      if (objc_opt_respondsToSelector())
      {
        [v17 iconDragManager:self willPerformIconDrop:v6 withIcons:v12 inIconListView:v7];
      }

      v39 = [v10 dragPlaceholderGridSizeClass];
      v36 = [(SBIconDragManager *)self dragPlaceholderGridPathForDragWithIdentifier:v8];
      [v10 resetDragPlaceholder];
      [v10 resetDraggedIconsHiddenAssertion];
      v18 = [(SBIconDragManager *)self startForbiddingAccessoryUpdatesInFoldersInIconListView:v7];
      v40 = [(SBIconDragManager *)self duplicateIconsIfNecessary:v12 forDropSession:v6];

      v19 = SBLogIconDragging();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v49 = v40;
        v50 = 2114;
        v51 = v36;
        _os_log_impl(&dword_1BEB18000, v19, OS_LOG_TYPE_INFO, "dropped icons: %@, placeholder path: %{public}@", buf, 0x16u);
      }

      if ([(SBIconDragManager *)self isUndoEnabled])
      {
        v20 = [v7 undoManager];
        v21 = [(SBIconDragManager *)self undoProvider];
        v38 = [v21 prepareForUndo];
      }

      else
      {
        v38 = 0;
        v20 = 0;
      }

      [(SBIconDragManager *)self beginModifyingRootFolder];
      v22 = [(SBIconDragManager *)self performIconDropOnRecipientIconIfPossibleWithDraggedIcons:v40 inIconListView:v7 dropSession:v6]|| [(SBIconDragManager *)self performIconDropInParentFolderIfPossibleWithDraggedIcons:v40 inIconListView:v7 dropSession:v6]|| [(SBIconDragManager *)self performIconDropInDestinationListIfPossibleWithDraggedIcons:v40 inIconListView:v7 placeholderGridPath:v36 placeholderGridSizeClass:v39 dropSession:v6];
      v34 = v17;
      [(SBIconDragManager *)self endModifyingRootFolder];
      if (v22 && v20 && v38)
      {
        [(SBIconDragManager *)self registerUndoWithUndoManager:v20 preparation:v38 draggedIcons:v40];
      }

      v33 = v20;
      v37 = [v10 droppedIcons];
      v32 = [v37 count];
      v31 = [(SBIconDragManager *)self _animationTypeForGridSizeClass:v39 inIconListView:v7 draggedIconCount:?];
      if (v31 != 3)
      {
        v45[0] = MEMORY[0x1E69E9820];
        v45[1] = 3221225472;
        v45[2] = __52__SBIconDragManager_performIconDrop_inIconListView___block_invoke;
        v45[3] = &unk_1E8089928;
        v46 = v10;
        [v46 enumerateDestinationIconViewsUsingBlock:v45];
      }

      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v23 = v18;
      v24 = [v23 countByEnumeratingWithState:&v41 objects:v47 count:16];
      if (v24)
      {
        v25 = v24;
        v26 = *v42;
        do
        {
          for (i = 0; i != v25; ++i)
          {
            if (*v42 != v26)
            {
              objc_enumerationMutation(v23);
            }

            [*(*(&v41 + 1) + 8 * i) invalidate];
          }

          v25 = [v23 countByEnumeratingWithState:&v41 objects:v47 count:16];
        }

        while (v25);
      }

      v28 = SBLogIconDragging();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1BEB18000, v28, OS_LOG_TYPE_INFO, "laying out icon lists now", buf, 2u);
      }

      [(SBIconDragManager *)self layoutIconListsWithAnimationType:v31 forceRelayout:0];
      v16 = v34;
      if (v32)
      {
        v29 = [v37 firstObject];
        [(SBIconDragManager *)self scrollToIconListContainingIcon:v29 animated:1];
      }

      [v10 setPerformedIconDrop:{1, v31}];
      [v10 addMessageExpectationNamed:@"concludeDrop"];
      [v10 resetLastUserInteractionDate];
      [(SBIconDragManager *)self changeStateOfDragWithIdentifier:v8 toState:5];
      v30 = SBLogIconDragging();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1BEB18000, v30, OS_LOG_TYPE_INFO, "will wait for conclude drag", buf, 2u);
      }

      if (objc_opt_respondsToSelector())
      {
        [v34 iconDragManager:self didPerformIconDrop:v6 withIcons:v37 inIconListView:v7];
      }

      v15 = v35;
      v12 = v40;
    }

    else
    {
      v16 = SBLogIconDragging();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [SBIconDragManager performIconDrop:inIconListView:];
      }
    }
  }
}

void __52__SBIconDragManager_performIconDrop_inIconListView___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [v4 markAsDropping];
  if (v4 && v3)
  {
    [*(a1 + 32) addIconViewDroppingAssertion:v3 forIconView:v4];
  }
}

- (id)startForbiddingAccessoryUpdatesInFoldersInIconListView:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5 = [v3 model];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __76__SBIconDragManager_startForbiddingAccessoryUpdatesInFoldersInIconListView___block_invoke;
  v11[3] = &unk_1E8089CC0;
  v12 = v3;
  v6 = v4;
  v13 = v6;
  v7 = v3;
  [v5 enumerateFolderIconsUsingBlock:v11];

  v8 = v13;
  v9 = v6;

  return v6;
}

void __76__SBIconDragManager_startForbiddingAccessoryUpdatesInFoldersInIconListView___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) displayedIconViewForIcon:a2];
  v3 = [v4 startForbiddingAccessoryUpdatesWithReason:@"drop" animated:0];
  if (v3)
  {
    [*(a1 + 40) addObject:v3];
  }
}

- (id)duplicateIconsIfNecessary:(id)a3 forDropSession:(id)a4
{
  v56[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(SBIconDragManager *)self iconDragContextForDropSession:v7];
  if (([v8 duplicatesSourceIcons] & 1) == 0)
  {
    v56[0] = *MEMORY[0x1E699A3D0];
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v56 count:1];
    v10 = [v7 hasItemsConformingToTypeIdentifiers:v9];

    if ((v10 & 1) == 0)
    {
      v12 = v6;
      goto LABEL_12;
    }
  }

  v11 = [v8 createdApplicationIcons];

  if (v11)
  {
    v12 = [v8 draggedIcons];
LABEL_12:
    v46 = v12;
    goto LABEL_36;
  }

  v44 = v8;
  if (![v6 count])
  {
    v55 = *MEMORY[0x1E699A3D0];
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v55 count:1];
    v14 = [v7 hasItemsConformingToTypeIdentifiers:v13];

    if (v8)
    {
      if (v14)
      {
        v15 = [v7 items];
        v16 = [v15 firstObject];

        v17 = [v16 itemProvider];
        v18 = [v17 teamData];
        if (v18 && (v19 = MEMORY[0x1E696ACD0], objc_opt_self(), v20 = objc_claimAutoreleasedReturnValue(), [v19 unarchivedObjectOfClass:v20 fromData:v18 error:0], v21 = objc_claimAutoreleasedReturnValue(), v20, v21))
        {
          v22 = [[SBHFileStackIcon alloc] initWithUniqueLeafIdentifier];
          [(SBHFileStackIcon *)v22 setUrl:v21];
          [v8 addSourceIcon:v22];
          v23 = [(SBIconDragManager *)self _iconIdentifierForDragItem:v16];
          [v44 addItemIdentifier:v23];
        }

        else
        {
          v21 = SBLogIconDragging();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            [SBIconDragManager duplicateIconsIfNecessary:forDropSession:];
          }
        }
      }
    }
  }

  v45 = [(SBIconDragManager *)self model];
  v24 = [(SBIconDragManager *)self rootFolder];
  v46 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v43 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v42 = v6;
  obj = v6;
  v25 = [obj countByEnumeratingWithState:&v48 objects:v54 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v49;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v49 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v29 = *(*(&v48 + 1) + 8 * i);
        v30 = [v24 containsIcon:v29];
        if ([v29 isApplicationIcon])
        {
          v31 = v30 == 0;
        }

        else
        {
          v31 = 1;
        }

        if (!v31)
        {
          v32 = v29;
          v33 = [v32 applicationBundleID];
          v34 = [v45 addAdditionalIconMatchingIcon:v32];
          v35 = SBLogIconDragging();
          v36 = os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT);
          if (v34)
          {
            if (v36)
            {
              *buf = 138543362;
              v53 = v33;
              _os_log_impl(&dword_1BEB18000, v35, OS_LOG_TYPE_DEFAULT, "adding additional matching icon for '%{public}@'", buf, 0xCu);
            }

            [v46 addObject:v34];
            v37 = [v32 uniqueIdentifier];
            [v44 setAdditionalMatchingIcon:v34 forDroppedIconIdentifier:v37];
            [v43 addObject:v34];
            v38 = [v34 uniqueIdentifier];
            v39 = [v44 appDragLocalContextWithIconIdentifier:v37];
            [v39 setDroppedIconIdentifier:v38];
          }

          else
          {
            if (v36)
            {
              *buf = 138543362;
              v53 = v33;
              _os_log_impl(&dword_1BEB18000, v35, OS_LOG_TYPE_DEFAULT, "could not add additional matching icon for '%{public}@'", buf, 0xCu);
            }

            [v46 addObject:v32];
          }
        }
      }

      v26 = [obj countByEnumeratingWithState:&v48 objects:v54 count:16];
    }

    while (v26);
  }

  v8 = v44;
  [v44 setCreatedApplicationIcons:v43];

  v7 = v41;
  v6 = v42;
LABEL_36:

  return v46;
}

- (BOOL)performIconDropOnRecipientIconIfPossibleWithDraggedIcons:(id)a3 inIconListView:(id)a4 dropSession:(id)a5
{
  v76 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = [(SBIconDragManager *)self iconDragContextForDropSession:a5];
  v11 = [v10 recipientIconView];
  v12 = [v11 icon];
  v13 = v12;
  if (!v12)
  {
    goto LABEL_5;
  }

  if (![v12 isFolderIcon] || (objc_msgSend(v13, "folder"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "isFull"), v14, !v15))
  {
    v17 = [(SBIconDragManager *)self model];
    v57 = v11;
    if ([v13 isFolderIcon])
    {
      v18 = v13;
      v19 = v8;
    }

    else
    {
      if (![v13 isLeafIcon])
      {
        v36 = 0;
        v18 = 0;
        v21 = 0;
        v16 = 0;
LABEL_53:

        v11 = v57;
        goto LABEL_54;
      }

      v55 = v9;
      if ([v13 isWidgetIcon] && -[SBIconDragManager createsStacksFromWidgets](self, "createsStacksFromWidgets"))
      {
        v52 = v8;
        v20 = v8;
        v21 = v13;
        [v21 addDataSourcesFromWidgetIcons:v20];
        v68 = 0u;
        v69 = 0u;
        v66 = 0u;
        v67 = 0u;
        v22 = v20;
        v23 = [v22 countByEnumeratingWithState:&v66 objects:v75 count:16];
        if (v23)
        {
          v24 = v23;
          v25 = *v67;
          do
          {
            for (i = 0; i != v24; ++i)
            {
              if (*v67 != v25)
              {
                objc_enumerationMutation(v22);
              }

              [v17 removeIcon:{*(*(&v66 + 1) + 8 * i), v52}];
            }

            v24 = [v22 countByEnumeratingWithState:&v66 objects:v75 count:16];
          }

          while (v24);
        }

        v27 = SBLogIconDragging();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v74 = v21;
          _os_log_impl(&dword_1BEB18000, v27, OS_LOG_TYPE_INFO, "created new stack for drop: %@", buf, 0xCu);
        }

        v8 = v52;
        if (!v22)
        {
          v36 = 0;
          v18 = 0;
          v16 = 0;
          v9 = v55;
          goto LABEL_53;
        }

        v28 = [v55 iconViewForIcon:v21];
        if (!v28)
        {
          v18 = 0;
          v9 = v55;
          goto LABEL_51;
        }

        v53 = [v55 pauseLayoutForIconView:v28 forReason:@"PauseLayoutForDropAnimation"];
        [v10 setDestinationStackIconViewPauseLayoutAssertion:?];
        v64 = 0u;
        v65 = 0u;
        v62 = 0u;
        v63 = 0u;
        v29 = v22;
        v30 = [v29 countByEnumeratingWithState:&v62 objects:v72 count:16];
        if (v30)
        {
          v31 = v30;
          v32 = *v63;
          do
          {
            for (j = 0; j != v31; ++j)
            {
              if (*v63 != v32)
              {
                objc_enumerationMutation(v29);
              }

              v34 = [*(*(&v62 + 1) + 8 * j) uniqueIdentifier];
              [v10 setDestinationStackIconView:v28 forIconWithIdentifier:v34];
            }

            v31 = [v29 countByEnumeratingWithState:&v62 objects:v72 count:16];
          }

          while (v31);
        }

        v18 = 0;
        v8 = v52;
        v35 = v53;
        v9 = v55;
LABEL_50:

LABEL_51:
        v16 = 1;
LABEL_52:
        v36 = v8;
        goto LABEL_53;
      }

      v37 = v8;
      v38 = [v9 model];
      v39 = [v37 firstObject];
      v40 = [(SBIconDragManager *)self createNewFolderFromRecipientIcon:v13 grabbedIcon:v39 inListModel:v38];

      v41 = [v40 icon];
      v42 = SBLogIconDragging();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v74 = v40;
        _os_log_impl(&dword_1BEB18000, v42, OS_LOG_TYPE_INFO, "created new folder for drop: %@", buf, 0xCu);
      }

      v9 = v55;
      v18 = v41;
    }

    v16 = 0;
    v21 = 0;
    if (!v8 || !v18)
    {
      goto LABEL_52;
    }

    v54 = v18;
    v28 = [v9 iconViewForIcon:v18];
    if ([v13 isLeafIcon])
    {
      v71 = v13;
      v43 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v71 count:1];
      [(SBIconDragManager *)self addIcons:v43 intoFolderIcon:v54 openFolderOnFinish:0];

      [v28 layoutIfNeeded];
    }

    if (v28)
    {
      v56 = v9;
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v51 = v8;
      v44 = v8;
      v45 = [v44 countByEnumeratingWithState:&v58 objects:v70 count:16];
      if (v45)
      {
        v46 = v45;
        v47 = *v59;
        do
        {
          for (k = 0; k != v46; ++k)
          {
            if (*v59 != v47)
            {
              objc_enumerationMutation(v44);
            }

            v49 = [*(*(&v58 + 1) + 8 * k) uniqueIdentifier];
            [v10 setDestinationFolderIconView:v28 forIconWithIdentifier:v49];
          }

          v46 = [v44 countByEnumeratingWithState:&v58 objects:v70 count:16];
        }

        while (v46);
      }

      v8 = v51;
      v9 = v56;
    }

    v18 = v54;
    [(SBIconDragManager *)self addIcons:v8 intoFolderIcon:v54 openFolderOnFinish:0, v51];
    v35 = SBLogIconDragging();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v74 = v54;
      _os_log_impl(&dword_1BEB18000, v35, OS_LOG_TYPE_INFO, "adding dropped icons into folder icon %@", buf, 0xCu);
    }

    v21 = 0;
    goto LABEL_50;
  }

  [v10 setRecipientIconView:0];
LABEL_5:
  v16 = 0;
LABEL_54:

  return v16;
}

- (BOOL)performIconDropInParentFolderIfPossibleWithDraggedIcons:(id)a3 inIconListView:(id)a4 dropSession:(id)a5
{
  v45 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v39 = [(SBIconDragManager *)self uniqueIdentifierForIconDropSession:a5];
  v10 = [(SBIconDragManager *)self iconDragContextForDragWithIdentifier:?];
  v11 = [v9 iconLocation];
  if ([v11 isEqualToString:@"SBIconLocationFolder"] && (objc_msgSend(v10, "wasLastUpdateContainedInDestinationIconListView") & 1) == 0)
  {
    v13 = [v9 model];
    v14 = [v13 folder];
    v15 = [v14 parentFolder];
    v16 = [v15 icon];
    v17 = [v15 indexOfListContainingIcon:v16];
    v34 = v11;
    v32 = v14;
    v33 = v13;
    v38 = v15;
    v30 = v16;
    if (v17 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v18 = 0;
    }

    else
    {
      v18 = [v15 listAtIndex:{v17, v16, v14, v13}];
    }

    v35 = v9;
    v19 = [v9 iconLocation];
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v36 = v8;
    obj = v8;
    v20 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v41;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v41 != v22)
          {
            objc_enumerationMutation(obj);
          }

          v24 = *(*(&v40 + 1) + 8 * i);
          v25 = [v24 gridSizeClass];
          v26 = [(SBIconDragManager *)self folderMutationOptionsForInsertingIcon:v24 intoList:v18 inLocation:v19 isSnapToGridEnabled:[(SBIconDragManager *)self isSnapToGridEnabledForDragWithIdentifier:v39 iconLocation:@"SBIconLocationRoot" listModel:v18 placeholderGridSizeClass:v25]];
          if (v17 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v27 = [v38 addIcon:v24 options:v26];
          }

          else
          {
            v28 = [v38 addIcon:v24 toListAtIndex:v17 options:v26];
          }
        }

        v21 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
      }

      while (v21);
    }

    v9 = v35;
    [(SBIconDragManager *)self closeFolderControllerContainingListView:v35];

    v12 = 1;
    v8 = v36;
    v11 = v34;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)performIconDropInDestinationListIfPossibleWithDraggedIcons:(id)a3 inIconListView:(id)a4 placeholderGridPath:(id)a5 placeholderGridSizeClass:(id)a6 dropSession:(id)a7
{
  v109 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v75 = a4;
  v76 = a5;
  v72 = a6;
  v82 = self;
  v70 = a7;
  v74 = [(SBIconDragManager *)self uniqueIdentifierForIconDropSession:?];
  v83 = [(SBIconDragManager *)self iconDragContextForDragWithIdentifier:v74];
  v13 = [v75 model];
  v77 = [v13 folder];
  v14 = [(SBIconDragManager *)self rootFolder];
  v78 = [(SBIconDragManager *)self rootListModel];
  v15 = [(SBIconDragManager *)self listGridCellInfoOptions];
  v71 = [v77 isCancelable];
  [v77 setCancelable:0];
  [(SBIconDragManager *)self pruneCancelableSourceFoldersInDestinationListView:v75 withDragIdentifier:v74];
  if (v76)
  {
    v16 = [v75 iconGridSizeForClass:v72];
    if (v14)
    {
      v17 = [v14 listAtGridPath:v76];
    }

    else
    {
      v17 = v78;
    }

    v19 = v17;
    v20 = [v76 gridCellIndex];
    v21 = [v76 gridCellInfoOptions];
    v22 = SBLogIconDragging();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *buf = 138543618;
      *&buf[4] = v76;
      *&buf[12] = 2112;
      *&buf[14] = v19;
      _os_log_impl(&dword_1BEB18000, v22, OS_LOG_TYPE_INFO, "list model for placeholder at path %{public}@: %@", buf, 0x16u);
    }

    v23 = v16;
    if (([v19 isValidGridRange:v20 options:{v16, v21}] & 1) == 0)
    {
      v24 = SBLogIconDragging();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v25 = SBHStringForIconGridRange(v20, v23);
        v26 = SBHStringForIconGridSize([v19 gridSize]);
        *buf = 138543618;
        *&buf[4] = v25;
        *&buf[12] = 2114;
        *&buf[14] = v26;
        _os_log_impl(&dword_1BEB18000, v24, OS_LOG_TYPE_INFO, "discarding placeholder path because the targeted grid range is not valid. %{public}@ vs. %{public}@", buf, 0x16u);
      }

      v76 = 0;
    }

    if (v19 == v13)
    {
      v18 = [v13 directlyContainsIcons:v12];
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = [v13 directlyContainsIcons:v12];
    v76 = 0;
  }

  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  obj = v12;
  v27 = [obj countByEnumeratingWithState:&v96 objects:v108 count:16];
  if (v27)
  {
    v28 = *v97;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v97 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v30 = *(*(&v96 + 1) + 8 * i);
        v31 = [v14 indexPathForIcon:v30];
        if (v31)
        {
          [v83 setInitialIndexPath:v31 forIcon:v30];
        }
      }

      v27 = [obj countByEnumeratingWithState:&v96 objects:v108 count:16];
    }

    while (v27);
  }

  if ([v77 canAddIcons:obj startingAtList:v13] & 1) != 0 || ((v18 | objc_msgSend(v14, "canAddIcons:", obj) ^ 1))
  {
    v32 = v13;
  }

  else
  {
    v33 = SBLogIconDragging();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      *&buf[4] = v77;
      _os_log_impl(&dword_1BEB18000, v33, OS_LOG_TYPE_INFO, "discarding drop destination folder '%@' because it can't accommodate all the dragged icons", buf, 0xCu);
    }

    v34 = v14;
    v32 = 0;
    v76 = 0;
    v77 = v34;
  }

  v73 = v32;
  v35 = [v77 canAddIcons:obj startingAtList:?];
  if ((v18 | v35 | [v78 isAllowedToContainIcons:obj]))
  {
    v69 = [v75 iconLocation];
    if ([v83 isSnapToGridAllowed])
    {
      v36 = [(SBIconDragManager *)v82 canSnapToGridInIconLocation:v69];
    }

    else
    {
      v36 = 0;
    }

    v68 = [obj firstObject];
    v37 = [SBFolder listModelMutationOptionsForFolderMutationOptions:[(SBIconDragManager *)v82 folderMutationOptionsForInsertingIcon:v68 intoList:v73 inLocation:v69 isSnapToGridEnabled:v36]];
    v38 = v76;
    if (!v38)
    {
      v39 = [v68 gridSizeClass];
      v40 = [v73 firstFreeGridCellIndexOfRangeOfSizeClass:v39 gridCellInfoOptions:v15];
      if (v40 != 0x7FFFFFFFFFFFFFFFLL && (!v14 ? (v41 = -[SBHIconGridPath initWithFolderIdentifier:listIdentifier:gridCellIndex:gridCellInfoOptions:]([SBHIconGridPath alloc], "initWithFolderIdentifier:listIdentifier:gridCellIndex:gridCellInfoOptions:", 0, &stru_1F3D472A8, v40, v15)) : ([v14 gridPathWithList:v73 gridCellIndex:v40 listGridCellInfoOptions:v15], v41 = objc_claimAutoreleasedReturnValue()), (v42 = v41) != 0) || (objc_msgSend(v77, "gridPathForFirstFreeSlotOfRangeOfSizeClass:startingAtList:listGridCellInfoOptions:", v39, v73, v15), (v42 = objc_claimAutoreleasedReturnValue()) != 0))
      {

        v38 = v42;
      }

      else
      {
        v66 = [v14 gridPathForFirstFreeSlotOfRangeOfSizeClass:v39 startingAtList:v73 listGridCellInfoOptions:v15];

        v38 = v66;
        if (!v66)
        {
          v67 = 0;
LABEL_47:
          v94 = 0u;
          v95 = 0u;
          v92 = 0u;
          v93 = 0u;
          v45 = obj;
          v46 = [v45 countByEnumeratingWithState:&v92 objects:v107 count:16];
          if (!v46)
          {
            goto LABEL_59;
          }

          v47 = *v93;
          while (1)
          {
            for (j = 0; j != v46; ++j)
            {
              if (*v93 != v47)
              {
                objc_enumerationMutation(v45);
              }

              v49 = *(*(&v92 + 1) + 8 * j);
              if (!v14)
              {
                if (![v78 directlyContainsIcon:*(*(&v92 + 1) + 8 * j)])
                {
                  continue;
                }

LABEL_56:
                [v83 addDroppedIcon:v49];
                continue;
              }

              if ([v14 containsIcon:*(*(&v92 + 1) + 8 * j)])
              {
                goto LABEL_56;
              }
            }

            v46 = [v45 countByEnumeratingWithState:&v92 objects:v107 count:16];
            if (!v46)
            {
LABEL_59:

              [v73 setOverflowSlotCount:0];
              [v83 droppedIcons];
              v90 = 0u;
              v91 = 0u;
              v88 = 0u;
              v79 = v89 = 0u;
              v50 = [v79 countByEnumeratingWithState:&v88 objects:v106 count:16];
              if (!v50)
              {
                goto LABEL_82;
              }

              v80 = *v89;
              while (1)
              {
                v51 = 0;
                do
                {
                  if (*v89 != v80)
                  {
                    objc_enumerationMutation(v79);
                  }

                  v52 = *(*(&v88 + 1) + 8 * v51);
                  v53 = [(SBIconDragManager *)v82 iconListViewContainingIcon:v52];
                  *buf = 0;
                  *&buf[8] = buf;
                  *&buf[16] = 0x3032000000;
                  v103 = __Block_byref_object_copy__2;
                  v104 = __Block_byref_object_dispose__2;
                  v105 = 0;
                  v84[0] = MEMORY[0x1E69E9820];
                  v84[1] = 3221225472;
                  v84[2] = __152__SBIconDragManager_performIconDropInDestinationListIfPossibleWithDraggedIcons_inIconListView_placeholderGridPath_placeholderGridSizeClass_dropSession___block_invoke;
                  v84[3] = &unk_1E8089FC8;
                  v84[4] = v52;
                  v87 = buf;
                  v54 = v53;
                  v85 = v54;
                  v55 = v83;
                  v86 = v55;
                  [v55 enumerateSourceIconViewsUsingBlock:v84];
                  [v54 clearDraggedIconViews];
                  v56 = *(*&buf[8] + 40);
                  if (!v56)
                  {
                    v58 = 0;
                    v57 = 0;
                    goto LABEL_71;
                  }

                  v57 = [v55 iconViewBorrowAssertionForIconView:?];

                  if (*(*&buf[8] + 40))
                  {
                    v58 = [v55 borrowedViewControllerForIconView:?];
                    if (!v57)
                    {
                      v56 = 0;
                      goto LABEL_71;
                    }

LABEL_70:
                    v57 = [v54 addOverridingLayoutDelegate:v82 reason:@"drop animation"];
                    v56 = 1;
                    goto LABEL_71;
                  }

                  v58 = 0;
                  if (v57)
                  {
                    goto LABEL_70;
                  }

                  v56 = 0;
                  v57 = 0;
LABEL_71:
                  [v55 setWaitingToSetPlaceholderViewController:v56];
                  v59 = [v54 iconViewForIcon:v52];
                  if (v58)
                  {
                    [v55 setBorrowedViewController:v58 forIconView:v59];
                  }

                  [v57 invalidate];
                  [v55 setWaitingToSetPlaceholderViewController:0];
                  if (v59)
                  {
                    [v55 addDestinationIconView:v59];
                    [v59 setAllowsCursorInteraction:0];
                  }

                  else
                  {
                    v60 = SBLogIconDragging();
                    if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
                    {
                      v61 = [v52 nodeIdentifier];
                      *v100 = 138412290;
                      v101 = v61;
                      _os_log_impl(&dword_1BEB18000, v60, OS_LOG_TYPE_INFO, "did not find a destination icon view for icon '%@'", v100, 0xCu);
                    }
                  }

                  _Block_object_dispose(buf, 8);
                  ++v51;
                }

                while (v50 != v51);
                v62 = [v79 countByEnumeratingWithState:&v88 objects:v106 count:16];
                v50 = v62;
                if (!v62)
                {
LABEL_82:

                  goto LABEL_83;
                }
              }
            }
          }
        }
      }
    }

    v67 = v38;
    if (v14)
    {
      v43 = [v14 insertIcons:obj atGridPath:? options:?];
    }

    else if (v78)
    {
      v44 = [v78 insertIcons:obj atGridCellIndex:objc_msgSend(v38 gridCellInfoOptions:"gridCellIndex") mutationOptions:{v15, v37}];
    }

    goto LABEL_47;
  }

LABEL_83:
  [v77 setCancelable:v71];
  v63 = [v83 droppedIcons];
  v64 = [v63 count] != 0;

  return v64;
}

void __152__SBIconDragManager_performIconDropInDestinationListIfPossibleWithDraggedIcons_inIconListView_placeholderGridPath_placeholderGridSizeClass_dropSession___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v4 = [v6 icon];
  v5 = [v4 isEqual:*(a1 + 32)];

  if (v5)
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a2);
  }

  if ([*(a1 + 40) isDisplayingIconView:v6])
  {
    [*(a1 + 40) forgetIconView:v6];
    [v6 setHidden:1];
    [*(a1 + 48) addDiscardedSourceIconView:v6];
    [v6 setDelegate:0];
  }
}

- (void)concludeIconDrop:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(SBIconDragManager *)self uniqueIdentifierForIconDropSession:v4];
  v6 = [(SBIconDragManager *)self iconDragContextForDragWithIdentifier:v5];
  v7 = SBLogIconDragging();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v24 = v5;
    _os_log_impl(&dword_1BEB18000, v7, OS_LOG_TYPE_INFO, "conclude icon drop: %{public}@", buf, 0xCu);
  }

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __38__SBIconDragManager_concludeIconDrop___block_invoke;
  v20[3] = &unk_1E8089FF0;
  v20[4] = self;
  v8 = v5;
  v21 = v8;
  [v6 enumerateDestinationIconViewsUsingBlock:v20];
  [v6 enumerateSourceIconViewsUsingBlock:&__block_literal_global_401];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = [v6 itemIdentifiers];
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      v13 = 0;
      do
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [v6 destinationStackIconViewForIconWithIdentifier:*(*(&v16 + 1) + 8 * v13)];
        [v14 cleanUpAfterDropAnimation];
        [v14 setShowsImageAndLabelDuringDrop:0];

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v16 objects:v22 count:16];
    }

    while (v11);
  }

  [v6 enumerateDestinationIconViewsUsingBlock:&__block_literal_global_403];
  [v6 clearAllDropAssertions];
  [v6 removeMessageExpectationNamed:@"concludeDrop"];
  v15 = [(SBIconDragManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v15 iconDragManager:self iconDropSessionDidConclude:v4];
  }

  [(SBIconDragManager *)self _stopTrackingDragIfPossibleWithIdentifier:v8];
}

void __38__SBIconDragManager_concludeIconDrop___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([*(a1 + 32) isTrackingDragOriginatingFromOrDroppingIntoIconView:? otherThanDragWithIdentifier:?] & 1) == 0)
  {
    [v3 cleanUpAfterDropAnimation];
  }
}

void __38__SBIconDragManager_concludeIconDrop___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setOverrideCustomIconImageViewController:0];
  [v2 setAllowsCursorInteraction:1];
}

- (void)iconDropSessionDidEnd:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(SBIconDragManager *)self draggedIconIdentifiersForDragDropSession:v4];
  v6 = [(SBIconDragManager *)self uniqueIdentifierForIconDropSession:v4];

  v7 = SBLogIconDragging();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v9 = 138543618;
    v10 = v6;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&dword_1BEB18000, v7, OS_LOG_TYPE_INFO, "icon drop session did end: %{public}@, dragged identifiers: %@", &v9, 0x16u);
  }

  v8 = [(SBIconDragManager *)self iconDragContextForDragWithIdentifier:v6];
  if (v8)
  {
    if ([(SBIconDragManager *)self removeDragPlaceholdersForDragWithIdentifier:v6])
    {
      [(SBIconDragManager *)self compactAndLayoutRootIconLists];
    }

    [v8 setRecipientIconView:0];
    [v8 removeMessageExpectationNamed:@"dropSessionDidEnd"];
    [(SBIconDragManager *)self _stopTrackingDragIfPossibleWithIdentifier:v6];
  }
}

- (id)iconListView:(id)a3 iconViewForDroppingIconDragItem:(id)a4 proposedIconView:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = [(SBIconDragManager *)self _iconIdentifierForDragItem:v10];
  v12 = [(SBIconDragManager *)self iconDragContextForDragItem:v10];

  v13 = [v12 additionalMatchingIconForDroppedIconIdentifier:v11];
  v14 = v9;
  if (v13)
  {
    v14 = [v8 iconViewForIcon:v13];
  }

  return v14;
}

- (void)iconListView:(id)a3 willUseIconView:(id)a4 forDroppingIconDragItem:(id)a5
{
  v10 = a4;
  v7 = a5;
  v8 = [v10 markAsDropping];
  if (v10 && v8)
  {
    v9 = [(SBIconDragManager *)self iconDragContextForDragItem:v7];
    [v9 addIconViewDroppingAssertion:v8 forIconView:v10];
  }
}

- (id)iconListView:(id)a3 previewForDroppingIconDragItem:(id)a4 proposedPreview:(id)a5
{
  v65 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(SBIconDragManager *)self _iconIdentifierForDragItem:v9];
  v51 = 0;
  v52 = &v51;
  v53 = 0x3032000000;
  v54 = __Block_byref_object_copy__2;
  v55 = __Block_byref_object_dispose__2;
  v12 = v10;
  v56 = v12;
  v41 = MEMORY[0x1E69E9820];
  v42 = 3221225472;
  v43 = __81__SBIconDragManager_iconListView_previewForDroppingIconDragItem_proposedPreview___block_invoke;
  v44 = &unk_1E808A018;
  v13 = v11;
  v45 = v13;
  v46 = self;
  v14 = v8;
  v47 = v14;
  v50 = &v51;
  v15 = v9;
  v48 = v15;
  v16 = v12;
  v49 = v16;
  [(SBIconDragManager *)self enumerateIconDragContextsUsingBlock:&v41];
  if (v52[5] == v16)
  {
    v17 = [v15 sbh_appDragLocalContext];
    v18 = v17;
    if (v17)
    {
      v19 = [v17 isSourceLocal] ^ 1;
    }

    else
    {
      v19 = 0;
    }

    v20 = [v15 itemProvider];
    v21 = (v19 | [v20 hasItemConformingToTypeIdentifier:*MEMORY[0x1E699A3D0]]) == 0;

    if (!v21)
    {
      v22 = [v14 model];
      v23 = [v22 lastDirectlyContainedLeafIconWithApplicationBundleIdentifier:v13];
      if (v23 || ([v22 directlyContainedIconWithIdentifier:v13], (v23 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v24 = [v14 makeIconView];
        [v14 configureIconView:v24 forIcon:v23];
        [v24 setEditing:0];
        [v24 iconImageInfo];
        v26 = v25;
        v28 = v27;
        v30 = v29;
        v31 = objc_alloc_init(MEMORY[0x1E69DCE28]);
        v32 = [MEMORY[0x1E69DC728] bezierPathWithRoundedRect:0.0 cornerRadius:{0.0, v26, v28, v30}];
        [v31 setVisiblePath:v32];

        v33 = objc_alloc(MEMORY[0x1E69DCE38]);
        [v14 centerForIcon:v23];
        v34 = [v33 initWithContainer:v14 center:?];
        v35 = [objc_alloc(MEMORY[0x1E69DD068]) initWithView:v24 parameters:v31 target:v34];
        v36 = v52[5];
        v52[5] = v35;
      }
    }
  }

  v37 = SBLogIconDragging();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
  {
    v38 = v52[5];
    *buf = 134218754;
    v58 = v14;
    v59 = 2112;
    v60 = v38;
    v61 = 2112;
    v62 = v15;
    v63 = 2112;
    v64 = v13;
    _os_log_impl(&dword_1BEB18000, v37, OS_LOG_TYPE_INFO, "icon list view: %p, will use preview %@ for drop of item %@ (%@)", buf, 0x2Au);
  }

  v39 = v52[5];
  _Block_object_dispose(&v51, 8);

  return v39;
}

void __81__SBIconDragManager_iconListView_previewForDroppingIconDragItem_proposedPreview___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 hasItemIdentifier:*(a1 + 32)])
  {
    v4 = [v3 destinationFolderIconViewForIconWithIdentifier:*(a1 + 32)];
    if (v4 || ([v3 itemIdentifiers], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "count"), v7 = objc_msgSend(*(a1 + 40), "maximumAllowedIconDroppingAnimationsForListView:", *(a1 + 48)), v5, v6 <= v7))
    {
      [v3 addDropAnimatingDragItem:*(a1 + 56)];
    }

    else
    {
      v8 = *(*(a1 + 72) + 8);
      v9 = *(v8 + 40);
      *(v8 + 40) = 0;
    }

    v10 = [v3 destinationStackIconViewForIconWithIdentifier:*(a1 + 32)];
    v11 = v10;
    if (v10)
    {
      [v10 center];
      v13 = v12;
      v15 = v14;
      [*(a1 + 48) iconContentScale];
      memset(&v25, 0, sizeof(v25));
      CGAffineTransformMakeScale(&v25, v16, v16);
      v17 = [v11 markAsDropping];
      [v11 setShowsImageAndLabelDuringDrop:1];
      v18 = [v11 dropContainerView];
      v19 = objc_alloc(MEMORY[0x1E69DC9A8]);
      [v18 convertPoint:*(a1 + 48) fromView:{v13, v15}];
      v24 = v25;
      v20 = [v19 initWithContainer:v18 center:&v24 transform:?];
      v21 = [*(a1 + 64) retargetedPreviewWithTarget:v20];
      v22 = *(*(a1 + 72) + 8);
      v23 = *(v22 + 40);
      *(v22 + 40) = v21;

      [*(*(*(a1 + 72) + 8) + 40) set_springboardPlatterStyle:1];
      if (v17)
      {
        [v3 addIconViewDroppingAssertion:v17 forIconView:v11];
      }
    }
  }
}

- (void)iconListView:(id)a3 iconDragItem:(id)a4 willAnimateDropWithAnimator:(id)a5
{
  v50 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(SBIconDragManager *)self _iconIdentifierForDragItem:v9];
  v12 = SBLogIconDragging();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 134218498;
    v45 = v8;
    v46 = 2112;
    v47 = v9;
    v48 = 2112;
    v49 = v11;
    _os_log_impl(&dword_1BEB18000, v12, OS_LOG_TYPE_INFO, "icon list view: %p, will animate drop of item %@ (%@)", buf, 0x20u);
  }

  v13 = [v9 sbh_appDragLocalContext];
  v14 = [v13 portaledPreview];
  if (objc_opt_respondsToSelector())
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;

  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __75__SBIconDragManager_iconListView_iconDragItem_willAnimateDropWithAnimator___block_invoke;
  v37[3] = &unk_1E808A068;
  v17 = v10;
  v38 = v17;
  v39 = self;
  v18 = v9;
  v40 = v18;
  v19 = v11;
  v41 = v19;
  v20 = v16;
  v42 = v20;
  v21 = v8;
  v43 = v21;
  [(SBIconDragManager *)self enumerateIconDragContextsUsingBlock:v37];
  v22 = [(SBIconDragManager *)self _iconViewForDragItem:v18 inIconListView:v21];
  if (v20)
  {
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __75__SBIconDragManager_iconListView_iconDragItem_willAnimateDropWithAnimator___block_invoke_8;
    v34[3] = &unk_1E8088F18;
    v23 = v20;
    v35 = v23;
    v36 = v21;
    [v17 addAnimations:v34];
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __75__SBIconDragManager_iconListView_iconDragItem_willAnimateDropWithAnimator___block_invoke_9;
    v32[3] = &unk_1E8089000;
    v33 = v23;
    [v17 addCompletion:v32];
  }

  if (v22)
  {
    v24 = [v22 superview];
    [v24 bringSubviewToFront:v22];

    if ([(SBIconDragManager *)self _shouldPerformRippleAnimationForInsertingDragItem:v18 toIconListView:v21])
    {
      v25 = [(SBIconDragManager *)self delegate];
      v26 = [v22 icon];
      if ([v26 isWidgetIcon] && (objc_opt_respondsToSelector() & 1) != 0)
      {
        v28 = [v25 widgetInsertionRippleIconAnimatorForIcon:v26 iconListView:v21 withReferenceIconView:0];
        [v28 animateWithCompletion:0];
      }
    }

    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __75__SBIconDragManager_iconListView_iconDragItem_willAnimateDropWithAnimator___block_invoke_10;
    v29[3] = &unk_1E8089EF8;
    v29[4] = self;
    v30 = v22;
    v31 = v18;
    [v17 addCompletion:v29];
  }

  v27 = [(SBIconDragManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v27 iconDragManager:self iconListView:v21 item:v18 willAnimateDropWithAnimator:v17];
  }
}

void __75__SBIconDragManager_iconListView_iconDragItem_willAnimateDropWithAnimator___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __75__SBIconDragManager_iconListView_iconDragItem_willAnimateDropWithAnimator___block_invoke_2;
  v35[3] = &unk_1E808A040;
  v7 = *(a1 + 32);
  v35[4] = *(a1 + 40);
  v8 = v6;
  v36 = v8;
  [v7 addCompletion:v35];
  if ([v5 isAnimatingDropForDragItem:*(a1 + 48)])
  {
    v9 = [v5 destinationFolderIconViewForIconWithIdentifier:*(a1 + 56)];
    if (v9)
    {
      v10 = *(a1 + 32);
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __75__SBIconDragManager_iconListView_iconDragItem_willAnimateDropWithAnimator___block_invoke_3;
      v33[3] = &unk_1E8088C90;
      v34 = *(a1 + 64);
      [v10 addAnimations:v33];
      v11 = *(a1 + 32);
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __75__SBIconDragManager_iconListView_iconDragItem_willAnimateDropWithAnimator___block_invoke_4;
      v30[3] = &unk_1E808A040;
      v31 = v5;
      v32 = v9;
      [v11 addCompletion:v30];
    }

    v12 = [v5 destinationStackIconViewForIconWithIdentifier:*(a1 + 56)];
    if (v12)
    {
      v13 = [v5 destinationStackIconViewPauseLayoutAssertion];
      [v13 invalidate];

      [v5 setDestinationStackIconViewPauseLayoutAssertion:0];
      v14 = [*(a1 + 72) iconLocation];
      v15 = SBIconLocationGroupContainsLocation(@"SBIconLocationGroupTodayView", v14);

      [*(a1 + 72) layoutIconsIfNeededWithAnimationType:0 options:v15];
      v16 = *(a1 + 32);
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __75__SBIconDragManager_iconListView_iconDragItem_willAnimateDropWithAnimator___block_invoke_5;
      v28[3] = &unk_1E8088C90;
      v29 = *(a1 + 64);
      [v16 addAnimations:v28];
      v17 = *(a1 + 32);
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __75__SBIconDragManager_iconListView_iconDragItem_willAnimateDropWithAnimator___block_invoke_6;
      v25[3] = &unk_1E808A040;
      v26 = v12;
      v27 = v5;
      [v17 addCompletion:v25];
    }

    v18 = [*(a1 + 64) delayCleanUpForReason:@"DropAnimation"];
    v19 = *(a1 + 32);
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __75__SBIconDragManager_iconListView_iconDragItem_willAnimateDropWithAnimator___block_invoke_7;
    v21[3] = &unk_1E8089EF8;
    v22 = v18;
    v23 = *(a1 + 64);
    v24 = v5;
    v20 = v18;
    [v19 addCompletion:v21];
  }
}

uint64_t __75__SBIconDragManager_iconListView_iconDragItem_willAnimateDropWithAnimator___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) setIconAllowsLabelArea:0];
  [*(a1 + 32) setIconAllowsAccessory:0];
  [*(a1 + 32) setIconCanShowCloseBox:0];
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 setIconCanShowResizeHandle:0];
  }

  return result;
}

uint64_t __75__SBIconDragManager_iconListView_iconDragItem_willAnimateDropWithAnimator___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) clearDropAssertionsForIconView:*(a1 + 40)];
  v2 = *(a1 + 40);

  return [v2 scrollToFirstGapAnimated:1];
}

uint64_t __75__SBIconDragManager_iconListView_iconDragItem_willAnimateDropWithAnimator___block_invoke_6(uint64_t a1)
{
  [*(a1 + 32) cleanUpAfterDropAnimation];
  [*(a1 + 32) setShowsImageAndLabelDuringDrop:0];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);

  return [v2 clearDropAssertionsForIconView:v3];
}

uint64_t __75__SBIconDragManager_iconListView_iconDragItem_willAnimateDropWithAnimator___block_invoke_7(uint64_t a1)
{
  [*(a1 + 32) invalidate];
  if (objc_opt_respondsToSelector())
  {
    [*(a1 + 40) setIconViewDelegate:0];
  }

  if (objc_opt_respondsToSelector())
  {
    [*(a1 + 40) setIconViewCustomIconImageViewController:0];
  }

  v2 = *(a1 + 48);

  return [v2 invalidateIconViewBorrowAssertions];
}

uint64_t __75__SBIconDragManager_iconListView_iconDragItem_willAnimateDropWithAnimator___block_invoke_8(uint64_t a1)
{
  v2 = *(a1 + 32);
  [*(a1 + 40) iconContentScale];
  [v2 setIconContentScale:?];
  v3 = *(a1 + 32);

  return [v3 setDragState:3];
}

uint64_t __75__SBIconDragManager_iconListView_iconDragItem_willAnimateDropWithAnimator___block_invoke_9(uint64_t a1)
{
  [*(a1 + 32) dropDestinationAnimationCompleted];
  if (objc_opt_respondsToSelector())
  {
    [*(a1 + 32) setIcon:0];
  }

  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 setIconViewCustomIconImageViewController:0];
  }

  return result;
}

void __75__SBIconDragManager_iconListView_iconDragItem_willAnimateDropWithAnimator___block_invoke_10(uint64_t a1)
{
  if ([*(a1 + 32) countOfTrackedDragsOriginatingFromOrDroppingIntoIconView:*(a1 + 40)] <= 1)
  {
    [*(a1 + 40) cleanUpAfterDropAnimation];
  }

  v2 = [*(a1 + 32) iconDragContextForDragItem:*(a1 + 48)];
  [v2 clearAllDropAssertions];
}

- (int64_t)_animationTypeForGridSizeClass:(id)a3
{
  v4 = a3;
  v5 = [(SBIconDragManager *)self delegate];
  v6 = ((objc_opt_respondsToSelector() & 1) == 0 || [v5 shouldNonDefaultGridSizeClassesUseClusterAnimationForIconDragManager:self]) && @"SBHIconGridSizeClassDefault" != v4 && !-[__CFString isEqualToString:](v4, "isEqualToString:");

  return v6;
}

- (int64_t)_animationTypeForGridSizeClass:(id)a3 inIconListView:(id)a4 draggedIconCount:(unint64_t)a5
{
  v8 = a4;
  v9 = [(SBIconDragManager *)self _animationTypeForGridSizeClass:a3];
  v10 = [(SBIconDragManager *)self maximumAllowedIconDroppingAnimationsForListView:v8];

  if (v10 >= a5)
  {
    return v9;
  }

  else
  {
    return 3;
  }
}

- (BOOL)shouldAllowSpringLoadedInteractionForIconDropSession:(id)a3 onIconView:(id)a4
{
  v34[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v34[0] = *MEMORY[0x1E69D4390];
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:1];
  v9 = [v6 hasItemsConformingToTypeIdentifiers:v8];

  if (v9 && ![(SBIconDragManager *)self isEditing])
  {
    LOBYTE(v18) = 0;
    goto LABEL_15;
  }

  v10 = [v7 icon];
  v11 = [(SBIconDragManager *)self iconDragContextForDropSession:v6];
  v12 = [v10 gridSizeClass];
  if ([v10 isWidgetStackIcon] && -[SBIconDragManager isTrackingWidgetIconDrags](self, "isTrackingWidgetIconDrags") && !-[SBIconDragManager isTrackingWidgetStackIconDrags](self, "isTrackingWidgetStackIconDrags") && -[SBIconDragManager createsStacksFromWidgets](self, "createsStacksFromWidgets"))
  {
    v13 = [v11 draggedIconGridSizeClass];
    if (v13 == v12)
    {
      LOBYTE(v18) = 1;
      goto LABEL_50;
    }

    v14 = [v11 draggedIconGridSizeClass];
    v15 = [v14 isEqualToString:v12];

    if (v15)
    {
      goto LABEL_31;
    }
  }

  v16 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass & 1) != 0 || ([v10 isFileStackIcon] & 1) != 0 || (objc_msgSend(v7, "isGrabbed"))
  {
    goto LABEL_12;
  }

  if ((v9 & 1) == 0)
  {
    if ([v10 isWidgetIcon])
    {
      v13 = [v10 activeDataSource];
      v23 = SBHContainerBundleIdentifierForDataSource(v13);
      if (v23)
      {
        v24 = [(SBIconDragManager *)self model];
        v25 = [v24 applicationIconForBundleIdentifier:v23];
        if (v25)
        {
          LOBYTE(v18) = [v24 isIconVisible:v25];
        }

        else
        {
          LOBYTE(v18) = 0;
        }
      }

      else
      {
        LOBYTE(v18) = 0;
      }

      goto LABEL_50;
    }

    if ([v10 isApplicationIcon])
    {
LABEL_31:
      LOBYTE(v18) = 1;
      goto LABEL_13;
    }
  }

  v20 = [v7 location];
  if (!SBIconLocationGroupContainsLocation(@"SBIconLocationGroupDock", v20) || ([v10 isFolderIcon] & 1) != 0 || -[SBIconDragManager isEditing](self, "isEditing"))
  {

    goto LABEL_21;
  }

  if ((v9 & 1) == 0)
  {
LABEL_21:
    if ([v10 isFolderIcon])
    {
      v21 = [v10 folder];
      v22 = [v21 isFull];

      if (v22)
      {
        goto LABEL_12;
      }
    }

    if (![(SBIconDragManager *)self allowsNestedFolders])
    {
      if ([v11 hasFolderDraggedIcons])
      {
        goto LABEL_12;
      }

      v26 = [(SBIconDragManager *)self rootFolder];
      v27 = [v26 indexPathForIcon:v10];
      if (v27)
      {
        v28 = [v26 folderContainingIndexPath:v27 relativeIndexPath:0];
      }

      else
      {
        v28 = 0;
      }

      v33 = [v28 isEqual:v26];

      if (!v33)
      {
        goto LABEL_12;
      }
    }

    v13 = [(SBIconDragManager *)self firstHiddenIconIdentifierInDrag:v6];
    if (v13)
    {
      goto LABEL_25;
    }

    v29 = [v10 gridSizeClass];
    v30 = v29;
    if (v29 == @"SBHIconGridSizeClassDefault")
    {
    }

    else
    {
      v31 = [v10 gridSizeClass];
      v32 = [v31 isEqualToString:@"SBHIconGridSizeClassDefault"];

      if (!v32)
      {
LABEL_25:
        LOBYTE(v18) = 0;
LABEL_50:

        goto LABEL_13;
      }
    }

    v18 = [v11 hasNonDefaultSizedDraggedIcons] ^ 1;
    goto LABEL_50;
  }

LABEL_12:
  LOBYTE(v18) = 0;
LABEL_13:

LABEL_15:
  return v18;
}

- (void)performSpringLoadedInteractionForIconDragOnIconView:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = SBLogIconDragging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v21 = v4;
    _os_log_impl(&dword_1BEB18000, v5, OS_LOG_TYPE_INFO, "performing springload on icon view: %@", buf, 0xCu);
  }

  v6 = [v4 icon];
  if ([v6 isFolderIcon])
  {
    [(SBIconDragManager *)self pushExpandedIconView:v4 context:0 animated:1 completionHandler:0];
  }

  else if ([v6 isWidgetStackIcon] && -[SBIconDragManager createsStacksFromWidgets](self, "createsStacksFromWidgets"))
  {
    [v4 presentStackConfigurationCard];
  }

  else if ([v6 isLeafIcon])
  {
    iconDrags = self->_iconDrags;
    v8 = v6;
    v9 = [(NSMapTable *)iconDrags objectEnumerator];
    v10 = [v9 nextObject];

    v11 = [v10 itemIdentifiers];
    v12 = [v11 firstObject];
    v13 = [(SBIconDragManager *)self draggedIconForIdentifier:v12];

    v14 = [v10 currentEnteredIconListView];
    v15 = [v14 model];

    v16 = [(SBIconDragManager *)self createNewFolderFromRecipientIcon:v8 grabbedIcon:v13 inListModel:v15];
    v19 = v8;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v19 count:1];

    v18 = [v16 icon];
    [(SBIconDragManager *)self addIcons:v17 intoFolderIcon:v18 openFolderOnFinish:1];
  }
}

- (id)iconListView:(id)a3 customSpringAnimationBehaviorForDroppingItem:(id)a4
{
  if ([(SBIconDragManager *)self _shouldPerformRippleAnimationForInsertingDragItem:a4 toIconListView:a3])
  {
    v4 = +[SBHHomeScreenDomain rootSettings];
    v5 = [v4 widgetSettings];

    v6 = [v5 dropInsertionAnimationSettings];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)_shouldPerformRippleAnimationForInsertingDragItem:(id)a3 toIconListView:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (UIAccessibilityIsReduceMotionEnabled() || (-[SBIconDragManager appDragLocalContextForDragItem:](self, "appDragLocalContextForDragItem:", v6), v8 = objc_claimAutoreleasedReturnValue(), started = SBHAppDragLocalContextStartLocationFromSBSLocation([v8 startLocation]), v8, started == 2))
  {
    LOBYTE(v10) = 0;
  }

  else if (started == 3)
  {
    LOBYTE(v10) = 1;
  }

  else
  {
    v12 = [(SBIconDragManager *)self _iconForDragItem:v6 inIconListView:v7];
    v13 = v12;
    if (v12 && ![v12 isWidgetIcon])
    {
      LOBYTE(v10) = 0;
    }

    else
    {
      v14 = [(SBIconDragManager *)self _iconIdentifierForDragItem:v6];
      v25 = 0;
      v26 = &v25;
      v27 = 0x3032000000;
      v28 = __Block_byref_object_copy__2;
      v29 = __Block_byref_object_dispose__2;
      v30 = 0;
      v19 = MEMORY[0x1E69E9820];
      v20 = 3221225472;
      v21 = __86__SBIconDragManager__shouldPerformRippleAnimationForInsertingDragItem_toIconListView___block_invoke;
      v22 = &unk_1E8089A90;
      v15 = v14;
      v23 = v15;
      v24 = &v25;
      [(SBIconDragManager *)self enumerateIconDragContextsUsingBlock:&v19];
      v16 = [(SBIconDragManager *)self rootFolder:v19];
      v17 = [v16 isIconAtIndexPathInTodayList:v26[5]];

      if (v17)
      {
        v18 = [v7 iconLocation];
        v10 = SBIconLocationGroupContainsLocation(@"SBIconLocationGroupTodayView", v18) ^ 1;
      }

      else
      {
        LOBYTE(v10) = 0;
      }

      _Block_object_dispose(&v25, 8);
    }
  }

  return v10;
}

void __86__SBIconDragManager__shouldPerformRippleAnimationForInsertingDragItem_toIconListView___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  if ([v9 hasItemIdentifier:*(a1 + 32)])
  {
    v6 = [v9 initialIndexPathForIconWithIdentifier:*(a1 + 32)];
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    *a4 = 1;
  }
}

- (void)_updateAutoScrollAssistantForDropSession:(id)a3
{
  v4 = a3;
  autoScrollAssistant = self->_autoScrollAssistant;
  v11 = v4;
  if (!autoScrollAssistant)
  {
    v6 = [(SBIconDragManager *)self rootView];
    v7 = [(SBIconDragManager *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      v8 = [v7 rootFolderControllerForIconDragManager:self];
    }

    else
    {
      v8 = 0;
    }

    v9 = -[SBHIconDragAutoScrollAssistant initWithDelegate:referenceView:vertical:]([SBHIconDragAutoScrollAssistant alloc], "initWithDelegate:referenceView:vertical:", self, v6, [v8 isVertical]);
    v10 = self->_autoScrollAssistant;
    self->_autoScrollAssistant = v9;

    autoScrollAssistant = self->_autoScrollAssistant;
    v4 = v11;
  }

  [(SBHIconDragAutoScrollAssistant *)autoScrollAssistant setActiveDropSession:v4];
}

- (void)_invalidateAutoScrollAssistant
{
  autoScrollAssistant = self->_autoScrollAssistant;
  if (autoScrollAssistant)
  {
    [(SBHIconDragAutoScrollAssistant *)autoScrollAssistant invalidate];
    v4 = self->_autoScrollAssistant;
    self->_autoScrollAssistant = 0;

    autoScrollAssistant = self->_autoScrollAssistant;
  }

  self->_autoScrollAssistant = 0;
}

- (void)autoScrollAssistant:(id)a3 triggeredAutoScrollInDirection:(int64_t)a4
{
  v6 = a3;
  v7 = [(SBIconDragManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v7 iconDragManager:self wantsAutoScrollInDirection:a4];
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v8 = [v7 rootFolderControllerForIconDragManager:self];
    }

    else
    {
      v8 = 0;
    }

    v9 = [v8 contentView];
    v10 = [v9 window];
    v11 = [v10 windowScene];

    if (v8 && ([v8 isScrolling] & 1) == 0 && -[SBIconDragManager isRootFolderContentVisible](self, "isRootFolderContentVisible"))
    {
      if (a4 == 2)
      {
        if ([v7 isOverlayTodayViewVisible])
        {
          v22 = 0;
          v23 = &v22;
          v24 = 0x2020000000;
          v25 = 1;
          if ([(SBIconDragManager *)self isTrackingWidgetIconDrags])
          {
            v15 = [v8 currentIconListModel];
            v19[0] = MEMORY[0x1E69E9820];
            v19[1] = 3221225472;
            v19[2] = __72__SBIconDragManager_autoScrollAssistant_triggeredAutoScrollInDirection___block_invoke;
            v19[3] = &unk_1E8089A90;
            v16 = v15;
            v20 = v16;
            v21 = &v22;
            [(SBIconDragManager *)self enumerateIconDragContextsUsingBlock:v19];
          }

          if (*(v23 + 24) == 1 && (objc_opt_respondsToSelector() & 1) != 0)
          {
            [v7 dismissTodayOverlayForIconDragManager:self];
          }

          _Block_object_dispose(&v22, 8);
        }

        else
        {
          v18 = [v8 currentPageIndex];
          if (v18 == [v8 lastIconPageIndex] && !-[SBIconDragManager isTrackingWidgetIconDrags](self, "isTrackingWidgetIconDrags") && (objc_opt_respondsToSelector() & 1) != 0)
          {
            [v7 presentLibraryForIconDragManager:self windowScene:v11];
          }
        }
      }

      else if (a4 == 1)
      {
        if ([v7 isMainDisplayLibraryViewVisible])
        {
          if (objc_opt_respondsToSelector())
          {
            v12 = [v8 contentView];
            v13 = [v12 window];
            v14 = [v13 windowScene];
            [v7 dismissLibraryForIconDragManager:self windowScene:v14];
          }
        }

        else
        {
          v17 = [v8 currentPageIndex];
          if (v17 == [v8 firstIconPageIndex] && -[SBIconDragManager isTrackingWidgetIconDrags](self, "isTrackingWidgetIconDrags") && (objc_opt_respondsToSelector() & 1) != 0)
          {
            [v7 presentTodayOverlayForIconDragManager:self];
          }
        }
      }
    }
  }
}

void __72__SBIconDragManager_autoScrollAssistant_triggeredAutoScrollInDirection___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __72__SBIconDragManager_autoScrollAssistant_triggeredAutoScrollInDirection___block_invoke_2;
  v9[3] = &unk_1E8089768;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v10 = v7;
  v11 = v8;
  [a2 enumerateSourceIconViewsUsingBlock:v9];
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    *a4 = 1;
  }
}

void __72__SBIconDragManager_autoScrollAssistant_triggeredAutoScrollInDirection___block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = *(a1 + 32);
  v6 = [a2 icon];
  LOBYTE(v5) = [v5 isAllowedToContainIcon:v6];

  if ((v5 & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a3 = 1;
  }
}

- (void)noteIconManagerEditingDidChange
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = [(SBIconDragManager *)self isEditing];
  v4 = SBLogIconDragging();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6[0] = 67109120;
    v6[1] = v3;
    _os_log_impl(&dword_1BEB18000, v4, OS_LOG_TYPE_INFO, "icon controller is now editing: %{BOOL}u", v6, 8u);
  }

  [(SBIconDragManager *)self _updateDragPreviewsForEditingState:v3 animated:1];
  if (!v3)
  {
    v5 = [(SBIconDragManager *)self draggingEditContext];
    [v5 setEnteredScreenLocationNeedsUpdate:1];

    if ([(SBIconDragManager *)self shouldCancelDragsWhenEditingEnds])
    {
      [(SBIconDragManager *)self cancelAllDrags];
    }
  }
}

- (void)noteRootFolderDidMutate
{
  if (![(SBIconDragManager *)self isModifyingRootFolder])
  {
    v3 = SBLogIconDragging();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_1BEB18000, v3, OS_LOG_TYPE_INFO, "clearing all undo registrations because the root folder was mutated by someone else", v4, 2u);
    }

    [(SBIconDragManager *)self clearAllUndoRegistrations];
  }
}

- (id)iconListView:(id)a3 dataDropSessionDidUpdate:(id)a4
{
  v4 = [objc_alloc(MEMORY[0x1E69DC9C0]) initWithDropOperation:0];

  return v4;
}

- (void)folderController:(id)a3 draggedIconShouldDropFromListView:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(SBIconDragManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v7 iconDragManager:self folderController:v8 draggedIconShouldDropFromListView:v6];
  }
}

- (void)folderController:(id)a3 iconListView:(id)a4 springLoadedInteractionForIconDragDidCompleteOnIconView:(id)a5
{
  v7 = a5;
  [(SBIconDragManager *)self performSpringLoadedInteractionForIconDragOnIconView:?];
  v6 = [(SBIconDragManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v6 iconDragManager:self didSpringLoadIconView:v7];
  }
}

- (void)iconListView:(id)a3 willConfigureIconView:(id)a4 forIcon:(id)a5
{
  v6 = a4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __64__SBIconDragManager_iconListView_willConfigureIconView_forIcon___block_invoke;
  v8[3] = &unk_1E8089DC8;
  v9 = v6;
  v7 = v6;
  [(SBIconDragManager *)self enumerateIconDragContextsUsingBlock:v8];
}

void __64__SBIconDragManager_iconListView_willConfigureIconView_forIcon___block_invoke(uint64_t a1, void *a2)
{
  if ([a2 isWaitingToSetPlaceholderViewController])
  {
    v3 = objc_alloc_init(SBIconDragPlaceholderIconViewController);
    [*(a1 + 32) setOverrideCustomIconImageViewController:v3];
  }
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBIconDragManager *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [MEMORY[0x1E698E680] builderWithObject:self];
  v5 = [v4 appendObject:self->_iconDrags withName:@"iconDrags"];
  v6 = [v4 appendObject:self->_revertingReplacementIndexPaths withName:@"revertingReplacementIndexPaths" skipIfNil:1];

  return v4;
}

- (id)succinctDescription
{
  v2 = [(SBIconDragManager *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (SBIconDragManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)watchdogDragWithIdentifier:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_fault_impl(&dword_1BEB18000, a2, OS_LOG_TYPE_FAULT, "Error: watchdog for user icon drag fired. Will abort and try to clean up. %{public}@", &v2, 0xCu);
}

- (void)updatePlaceholderPositionForDragWithIdentifier:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 8);
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_1BEB18000, log, OS_LOG_TYPE_ERROR, "ERROR: We have no grabbed icon! Tracked drags: %@, this drag: %@", &v4, 0x16u);
}

@end